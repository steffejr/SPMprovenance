%% RUN ONE OF THESE COMMANDS ONCE PER MATLAB SESSION
%loadlibrary('/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-a0968c7/src/libprov.so','/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-a0968c7/src/provenance.h')
%loadlibrary('/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-4000b21/src/libprov.so','/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-4000b21/src/provenance.h')

loadlibrary('/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-cb1478d/src/libprov.so','/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-cb1478d/src/provenance.h')
loadlibrary('/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-cb1478d/src/libneuroprov.so','/share/data/data9/jason/SPM_Provenance/INCF-ProvenanceLibrary-cb1478d/src/neuroprovenance.h')
%libfunctionsview libprov
libfunctionsview libneuroprov

p_prov = calllib('libneuroprov','newProvenanceObject','1')
p_record = calllib('libneuroprov','newRecord',p_prov)

ProgramName = 'Test_ProvCode_011112.m'
version = '1.0.0';
cmdline = 'Command_Line_Test';

%% Add program information
    act_id = calllib('libneuroprov','newActivity',p_record, 'NULL', '11/30/11 00:13:20.650432 EST', '11/30/11 00:13:20.650550 EST');
    calllib('libneuroprov','add_attribute',p_record, act_id, 'type', 'program');
    calllib('libneuroprov','add_attribute',p_record, act_id, 'name', ProgramName);
    calllib('libneuroprov','add_attribute',p_record, act_id, 'version', version);
    calllib('libneuroprov','add_attribute',p_record, act_id, 'cmdline', cmdline);


%% add all input parameters. If you use getopt this can be refined further
% I am unclear on wjhat the inputs are so I left this part out.

%% Add the environment information 
id = calllib('libprov','newEntity',p_record);
calllib('libprov','add_attribute',p_record, id, 'type', 'environment');
[a env] = unix('env');
Senv=strread(env,'%s','delimiter','\n');
for i = 1:length(Senv)
    Fequal = findstr(Senv{i},'=');
    % check to make sure that this envornment variable is set to something.
    % If not thean ignore it.
    if Fequal < length(Senv{i})
        VariableName = Senv{i}(1:Fequal-1);
        VariableValue = Senv{i}(Fequal+1:end);
        calllib('libprov','add_attribute',p_record, id, VariableName, VariableValue);
    end
end

id = calllib('libprov','newEntity',p_record);
calllib('libprov','add_attribute',p_record, id, 'type', 'runtime');
%// add runtime info such as walltime, cputime, host,


id = calllib('libprov','newEntity',p_record);
calllib('libprov','add_attribute',p_record, id, 'type', 'output:file');
calllib('libprov','add_attribute',p_record, id, 'warped_file', '/full/path/to/file');
calllib('libprov','newGeneratedByRecord',p_record, id, act_id, 'NULL')

id = calllib('libprov','newEntity',p_record);
calllib('libprov','add_attribute',p_record, id, 'type', 'output:stat');
calllib('libprov','add_attribute',p_record, id, 'pearson_correlation_coefficient', '.234');
calllib('libprov','newGeneratedByRecord',p_record, id, act_id, 'NULL');

calllib('libprov','print_provenance',p_prov, 'NULL');
calllib('libprov','print_provenance',p_prov, 'testprov_011112.xml');
calllib('libprov','delProvenanceFactory',p_prov);

