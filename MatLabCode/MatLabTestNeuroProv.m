% Load up the libraries needed
if not(libisloaded('libprov'))
    loadlibrary('/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/libprov.so','/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/provenance.h')
end
libfunctionsview libprov
if not(libisloaded('libneuroprov'))
    loadlibrary('/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/libneuroprov.so','/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/neuroprovenance.h')
end
libfunctionsview libneuroprov

if not(libisloaded('shrlibsample'))
    addpath /usr/local/matlab/extern/examples/shrlib/
    loadlibrary shrlibsample shrlibsample.h
end
%libfunctionsview shrlibsample

%%
p_prov = calllib('libneuroprov','newProvenanceObject','BET')

ProcessType = 'ni:brain_extraction';
StartTime = datestr(now);
pause(1)
EndTime = datestr(now);
p_proc = calllib('libneuroprov','newProcess',p_prov,StartTime,EndTime,ProcessType);

InputType = 'Input NIFTI Image #1';
InputName = 'FileName';
InputValue = '???';
input_id1 = calllib('libneuroprov','newProcessInput',p_prov,p_proc,InputName,InputValue,InputType)

InputType = 'Input NIFTI Image #2';
InputName = 'FileName';
InputValue = '???';
input_id2 = calllib('libneuroprov','newProcessInput',p_prov,p_proc,InputName,InputValue,InputType)


OutputType = 'Output NIFTI Image #3';
OutputName = 'FileName';
OutputValue = '???';
output_id1 = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,OutputName,OutputValue,OutputType)

calllib('libneuroprov','freeProcess',p_proc);


% Process Two
ProcessType = 'Process 2';
StartTime = datestr(now);
pause(1)
EndTime = datestr(now);
p_proc = calllib('libneuroprov','newProcess',p_prov,StartTime,EndTime,ProcessType);

InputType = 'Input NIFTI Image #4';
InputName = 'FileName';
InputValue = '???';
input_id1 = calllib('libneuroprov','newProcessInput',p_prov,,InputName,InputValue,InputType)


calllib('libneuroprov','printProvenance',p_prov, 'MATLABtestneuroprov2.xml');
calllib('libneuroprov','delProvenanceObject',p_prov);

