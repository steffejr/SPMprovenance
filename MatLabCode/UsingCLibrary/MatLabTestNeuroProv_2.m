%%
% Create some provenance 
p_prov = calllib('libneuroprov','newProvenanceObject','BET');

% First, create Process 1
ProcessType = 'ni:brain_extraction';
StartTime = datestr(now);
EndTime = datestr(now);
p_proc1 = calllib('libneuroprov','newProcess',p_prov,StartTime,EndTime,ProcessType);

% Create input to the process
InputType = 'Input NIFTI Image #1';
InputName = 'FileName';
InputValue = 'N/A';
input_id1 = calllib('libneuroprov','newProcessInput',p_prov,p_proc1,InputName,InputValue,InputType);

% Create input to the process
InputType = 'Input NIFTI Image #2';
InputName = 'FileName';
InputValue = 'N/A';
input_id2 = calllib('libneuroprov','newProcessInput',p_prov,p_proc1,InputName,InputValue,InputType);

% Create output from the process
OutputType = 'Output NIFTI Image #3';
OutputName = 'FileName';
OutputValue = 'N/A';
[output_id1] = calllib('libneuroprov','newProcessOutput',p_prov,p_proc1,OutputName,OutputValue,OutputType);

% Add a key value pair for the process
% Use this for specifying parameters.
calllib('libneuroprov','addKeyValuePair',p_prov,p_proc1,'Value1','1234');
% free up the process
calllib('libneuroprov','freeProcess',p_proc1);


% Create a second Process
ProcessType = 'Process 2';
StartTime = datestr(now);
EndTime = datestr(now);
p_proc2 = calllib('libneuroprov','newProcess',p_prov,StartTime,EndTime,ProcessType);

% Add the output of Process 1 as an input to Process 2
calllib('libneuroprov','addInput',p_prov,p_proc2,output_id1);

% Create output from Process 2
OutputType = 'Output NIFTI Image #4';
OutputName = 'FileName';
OutputValue = 'N/A';
[output_id2] = calllib('libneuroprov','newProcessOutput',p_prov,p_proc2,OutputName,OutputValue,OutputType);

% Print out the provenance to XML
calllib('libneuroprov','printProvenance',p_prov, 'MATLABtestneuroprov3b.xml');
calllib('libneuroprov','delProvenanceObject',p_prov);

fprintf(1,'=== DONE ===\n');
