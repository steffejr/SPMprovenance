PythonCode='/Users/jason/Documents/ProvenanceTools/SPMprovenance/MatLabCode/UsingPythonLibrary';
addpath(PythonCode)

Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestPreProcessSHORT_FilledInJob.m';
OutDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles';
% load the input job
[inPathName inFileName] = fileparts(Infile);
cd(inPathName)
eval(inFileName)


Nsteps = length(matlabbatch);
ListOfInPutImages{Nsteps} = {};
ListOfOutPutImages{Nsteps} = {};
fid = 1;
for i = 1:Nsteps
    [ListOfInPutImages,ListOfOutPutImages] = fn_structdisp(matlabbatch{i},i,fid,ListOfInPutImages,ListOfOutPutImages);
end