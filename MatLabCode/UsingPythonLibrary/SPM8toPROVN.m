% Convert filled in SPM8 batch job to prov using the python prov toolbox
% https://github.com/satra/prov
%
% This script aims to write the python code using MatLab and the info in
% the SPM job.
% At the MatLab will call python and execute the written code.
% The output will be a PROVN file which can be converted to XML or SVG.

PythonCode='/Users/jason/Documents/ProvenanceTools/SPMprovenance/MatLabCode/UsingPythonLibrary';
addpath(PythonCode)

Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestPreProcessSHORT_FilledInJob.m';
OutDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles';
% load the input job
[PathName FileName] = fileparts(Infile);
cd(PathName)
eval(FileName)
% Create the outout file
Outfile = fullfile(OutDir,[FileName '.py']);
% open the output file
fid = fopen(Outfile,'w');
% fid = 1
% initialize the file and create the provenance structure
fprintf(fid,'import os\n');
fprintf(fid,'import sys\n');
fprintf(fid,'import datetime\n');
fprintf(fid,'from socket import gethostname\n');
fprintf(fid,'sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")\n');
fprintf(fid,'import prov.model as prov\n');
fprintf(fid,'from prov.model import Namespace, PROV\n');
fprintf(fid,'EX=Namespace("ex","http://www.example.com/")\n');
% create the proveance
fprintf(fid,'g = prov.ProvBundle()\n');


Nsteps = length(matlabbatch);
% create an entity which each step is a member of
fprintf(fid,'g.entity(''%s'')\n','matlabbatch');
% create the different steps o fthe batch stream
for i = 1:Nsteps
     ListOfInPutImages{i} = {};
    ListOfOutPutImages{i} = {};
    % Set the flags for determining if output needs to be written
    WhichFlag = 0;
    PrefixFlag = 0;
    % Find out how many levels there are. This is important because not all
    % steps are described at the same level in the batch file.
    Levels = {};
    count = 1;
    Levels{1} = char(fieldnames(matlabbatch{i})); % This typically equals spm
    Flag = 1;
    while Flag
        Str = ['matlabbatch{' num2str(i) '}' ];
        for j = 1:count
            Str = [Str '.' char(Levels{j})];
        end
        count = count + 1;
        temp = (fieldnames(eval([Str])));
        if length(temp) > 1
            Flag = 0;
        else
            Levels{count} = char(temp);
        end
    end
    
    ProcessInput = Levels{1};
    for j = 2:length(Levels)
        ProcessInput = sprintf('%s.%s',ProcessInput,Levels{j});
    end
    % Create the activity
    fprintf(fid,'g.activity(''%s'')\n',ProcessInput);
    % make this activity a member of the batch entity
    fprintf(fid,'g.used(''%s'',''%s'')\n','matlabbatch',ProcessInput);
    %%%%%%%%%%%%%%%%%%
    % for each activity find out what the parameters are for it
     Parameters = fieldnames(eval(['matlabbatch{' num2str(i) '}.' ProcessInput]));
    
    for j = 1:2%length(Parameters)
        % create an entity for each of these parameter structures
        fprintf(fid,'g.entity(''%s_%d'')\n',Parameters{j},i);
        % asscoiate these with their activities.
        fprintf(fid,'g.used(''%s'',''%s_%d'')\n',ProcessInput,Parameters{j},i)
    end
end
% withinthe python script
% write the provenance to a file
PROVNoutfile = fullfile(OutDir,[FileName '.provn']);
SVGOutFile = fullfile(OutDir,[FileName '.svg']); 
fprintf(fid,'with open(''%s'', ''wt'') as fp:fp.writelines(g.get_provn())\n',PROVNoutfile)
% close the file
fclose(fid)
% run it through python
python(Outfile)


