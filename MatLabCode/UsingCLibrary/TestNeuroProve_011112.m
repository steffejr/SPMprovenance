% filename TestNeuroProv_011112
if not(libisloaded('libprov'))
    loadlibrary('/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/libprov.so','/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/provenance.h')
end
libfunctionsview libprov
if not(libisloaded('libneuroprov'))
    loadlibrary('/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/libneuroprov.so','/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/neuroprovenance.h')
end
%libfunctionsview libneuroprov

if not(libisloaded('shrlibsample'))
    addpath /usr/local/matlab/extern/examples/shrlib/
    loadlibrary shrlibsample shrlibsample.h
end
%libfunctionsview shrlibsample


p_prov = calllib('libneuroprov','newProvenanceObject','BET')
p_proc = calllib('libneuroprov','newProcess',p_prov,datestr(now),datestr(now),...
    'ni:brain_extraction')

% I understand AddCommandLine

argv = '/Users/satra/Dropbox/WORK/PROJECTS/INCF/ProvenanceLibrary/src/testneuroprov         -c 2 '
% Parse the argv by whitespace
% This approach is robust to multiple spaces and tabs/spaces between
% commands and arguments. Using the regular expression is not.
argv_parse = strread(argv,'%s','delimiter',' ');

% The following does work:
p = libpointer('stringPtrPtr',argv_parse)
calllib('libneuroprov','addCommandLine',p_prov,p_proc,length(argv_parse),p)
% I am not sure why. I am not familiar with pointers and expecially not
% with passing pointers with MatLab
%
version = '1.0.0'
calllib('libneuroprov','addKeyValuePair',p_prov,p_proc,'program',argv_parse{1});
calllib('libneuroprov','addKeyValuePair',p_prov,p_proc,'version',version);

% Add all input parameters. if you use getopt this can be refined further
% In Satra's code the 'ni_input' is not explicitly defined, the value NULL
% is passed. OK, if you pass [] then this is interpretted as a NULL pointer
for i = 2:length(argv_parse)
    arg = sprintf('arg%d',i-1);
    calllib('libneuroprov','newProcessInput',p_prov,p_proc,arg,argv_parse{i},[]);
end

% Add environment variables
% get the environment variables
[a env] = unix('env');
Senv=strread(env,'%s','delimiter','\n');
% for i = 1:length(Senv)
%     Fequal = findstr(Senv{i},'=');
%     % check to make sure that this envornment variable is set to something.
%     % If not thean ignore it.
%     if Fequal < length(Senv{i})
%         VariableName = Senv{i}(1:Fequal-1);
%         VariableValue = Senv{i}(Fequal+1:end);
%         calllib('libneuroprov','add_attribute',p_record, id, VariableName, VariableValue);
%     end
% end
envp = libpointer('stringPtrPtr',Senv(1:5))
calllib('libneuroprov','addAllEnvironVariables',p_prov, p_proc, envp);


calllib('libneuroprov','printProvenance',p_prov,'TESTFILE.xml')



% %% Add the environment information 
% id = calllib('libneuroprov','newEntity',p_record);
% calllib('libneuroprov','add_attribute',p_record, id, 'type', 'environment');
% [a env] = unix('env');
% Senv=strread(env,'%s','delimiter','\n');
% for i = 1:length(Senv)
%     Fequal = findstr(Senv{i},'=');
%     % check to make sure that this envornment variable is set to something.
%     % If not thean ignore it.
%     if Fequal < length(Senv{i})
%         VariableName = Senv{i}(1:Fequal-1);
%         VariableValue = Senv{i}(Fequal+1:end);
%         calllib('libneuroprov','add_attribute',p_record, id, VariableName, VariableValue);
%     end
% end
% 
% id = calllib('libneuroprov','newEntity',p_record);
% calllib('libneuroprov','add_attribute',p_record, id, 'type', 'runtime');
% %// add runtime info such as walltime, cputime, host,
% 
% 
% id = calllib('libneuroprov','newEntity',p_record);
% calllib('libneuroprov','add_attribute',p_record, id, 'type', 'output:file');
% calllib('libneuroprov','add_attribute',p_record, id, 'warped_file', '/full/path/to/file');
% calllib('libneuroprov','newGeneratedByRecord',p_record, id, act_id, 'NULL')
% 
% id = calllib('libneuroprov','newEntity',p_record);
% calllib('libneuroprov','add_attribute',p_record, id, 'type', 'output:stat');
% calllib('libneuroprov','add_attribute',p_record, id, 'pearson_correlation_coefficient', '.234');
% calllib('libneuroprov','newGeneratedByRecord',p_record, id, act_id, 'NULL');
% 
% calllib('libneuroprov','print_provenance',p_prov, 'NULL');
% calllib('libneuroprov','print_provenance',p_prov, 'testprov_011112.xml');
% calllib('libneuroprov','delProvenanceFactory',p_prov);
% 
