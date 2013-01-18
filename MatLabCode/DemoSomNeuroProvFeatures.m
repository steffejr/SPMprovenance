OutDir = '/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/XMLFiles';
OutName = 'test3';
OutFile = fullfile(OutDir,[OutName '.xml']);
% Create the top level container
p_prov = calllib('libneuroprov','newProvenanceObject','OutName');

ProcessInput = 'ProcessName1';
p_proc1 = calllib('libneuroprov','newProcess',p_prov,datestr(now),datestr(now),ProcessInput);
% Create new process
ProcessInput = 'ProcessName2';
p_proc2 = calllib('libneuroprov','newProcess',p_prov,datestr(now),datestr(now),ProcessInput);
% These both create entities
% This one creates a "used"

name = 'XXXXX'
value = '123456'
type = 'abcdef'
calllib('libneuroprov','newProcessInput',p_prov,p_proc1,[name '_input1'],value,type);
% This one creates a "wasGeneratedBy"
[outval outputPtr1 outputPtr2] = calllib('libneuroprov','newProcessOutput',p_prov,p_proc1,[name '_output'],value,type);

% In order to use an output from one process as input to another use the
% addInput command. Note that this takes the prvo Ptr and the process Ptr
% but also the output string from the newProcessPut call
calllib('libneuroprov','addInput',p_prov,p_proc2,outval)

type = 'type';
name = 'name';
value = 'value';
OutStr = 'KeyValueStr';
Parameters = 'KeyValue';
id = calllib('libneuroprov','addKeyValuePair',p_prov,p_proc1,Parameters,OutStr);

calllib('libprov','addAttribute', id, 'type', 'output:file','three','four','five');

% calllib('libneuroprov','newProcessInput',p_prov,p_proc1,[name '_input2'],value,type);

calllib('libneuroprov','printProvenance',p_prov,OutFile)



%calllib('libneuroprov','addDependency',p_prov,p_proc,outputPtr)
%


