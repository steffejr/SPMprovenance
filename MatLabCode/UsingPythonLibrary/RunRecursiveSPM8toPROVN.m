clear
PythonCode='/Users/jason/Documents/ProvenanceTools/SPMprovenance/MatLabCode/UsingPythonLibrary';
addpath(PythonCode)
Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestPreProcessSHORT_FilledInJob.m';
% Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSliceTime.m';
% Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestRealign.m';
% Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestCoReg.m';
% Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestNormalize.m';
% Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSmooth.m';
Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSegmentSliceTimeRealign.m';
Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSegmentSliceTimeRealignCoregNorm.m';
%Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSegmentSliceTimeRealignCoregNormSmooth.m';

Infile = '/Users/jason/Documents/MyData/TestSPMProv/OneSubject/PreProcJob_FilledInJob.m';
%InFile = spm_select(1)

%Infile = '/Users/jason/Documents/ProvenanceTools/ProvenanceLibrary/SPMJobs/SegmentONLYJob_FilledInJob.m';
OutDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles';
% load the input job
[inPathName inFileName] = fileparts(Infile);
cd(inPathName)
eval(inFileName)

clear ListOfInPutImages ListOfOutPutImages
Nsteps = length(matlabbatch);
ListOfInPutImages{Nsteps} = {};
ListOfOutPutImages{Nsteps} = {};
%fid = 1;


Outfile = fullfile(OutDir,[inFileName 'RECURSIVE.py']);
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
fprintf(fid,'g.entity(''%s'')\n','matlabbatch');
for i = 1:Nsteps
    % Add the top level entity for this step and link it to the matlab
    % structure
    fprintf(fid,'g.entity(''%s%d'')\n','matlabbatch',i);
    fprintf(fid,'g.used(''%s'',''%s%d'')\n','matlabbatch','matlabbatch',i);
    [ListOfInPutImages,ListOfOutPutImages] = subfnStructToPython(matlabbatch{i},i,fid,ListOfInPutImages,ListOfOutPutImages);
    % after each step make sure to link it to the master entity
    stepName = fieldnames(matlabbatch{i});
    %fprintf(fid,'g.used(''%s'',''matlabbatch%d.%s'')\n','matlabbatch',i,stepName{1});
     if i > 2
         fprintf(fid,'g.wasInfluencedBy(''matlabbatch%d.%s'',''matlabbatch%d.%s'')\n',i,stepName{1},i-1,stepName{1});
     end
end
%% After all the processing steps have been searched the parameters are all 
% written and the images have been identified and written to two structures
% Now write these images to the PROVN file
% All output images are entities, but not all inputs are entities

for i = 1:length(ListOfOutPutImages)
    for j = 1:length(ListOfOutPutImages{i})
        fprintf(1,'%s\n',ListOfOutPutImages{i}{j}.Files);
        OutStr = subfnConvertFieldToString(ListOfOutPutImages{i}{j}.Indices);
        fprintf(fid,'g.entity(''%s'',{''prov:label'':''%s'',''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''%s''})\n',ListOfOutPutImages{i}{j}.Files,ListOfOutPutImages{i}{j}.Entity,OutStr,ListOfOutPutImages{i}{j}.Entity);
       fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',ListOfOutPutImages{i}{j}.Files,ListOfOutPutImages{i}{j}.Entity);
    end
end
%% WRITE THE INPUT IMAGES
%fid =1


for i = 1:length(ListOfInPutImages)
    for j = 1:length(ListOfInPutImages{i})
        fprintf(1,'%s\n',ListOfInPutImages{i}{j}.Files);
        MatchImage = subfnFindMatch(ListOfInPutImages,ListOfOutPutImages,ListOfInPutImages{i}{j}.Files);
        % Check to see if this input image was the output of a previous
        % step.
        if ~isempty(MatchImage)
            fprintf(1,'MATCH\n');
            OutStr = subfnConvertFieldToString(ListOfInPutImages{i}{j}.Indices);
            fprintf(fid,'g.entity(''%s'',{''prov:label'':''%s'',''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''%s''})\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity,OutStr,ListOfInPutImages{i}{j}.Entity);
            fprintf(fid,'g.used(''%s'',''%s'')\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity);
        else
            
            OutStr = subfnConvertFieldToString(ListOfInPutImages{i}{j}.Indices);
            fprintf(fid,'g.entity(''%s'',{''prov:label'':''%s'',''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''%s''})\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity,OutStr,ListOfInPutImages{i}{j}.Entity);
            fprintf(fid,'g.used(''%s'',''%s'')\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity);

        end
    end
end

%%
PROVNoutfile = fullfile(OutDir,[inFileName 'RECURSIVE.provn']);
SVGOutFile = fullfile(OutDir,[inFileName '.svg']);
fprintf(fid,'with open(''%s'', ''wt'') as fp:fp.writelines(g.get_provn())\n',PROVNoutfile);
% close the file
fclose(fid);
% run it through python
python(Outfile);

