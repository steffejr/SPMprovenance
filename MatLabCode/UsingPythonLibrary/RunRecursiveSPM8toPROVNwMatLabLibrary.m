clear
PythonCode='/Users/jason/Documents/ProvenanceTools/SPMprovenance/MatLabCode/UsingPythonLibrary';
addpath(PythonCode)
InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestPreProcessSHORT_FilledInJob.m';
% InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSliceTime.m';
% InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestRealign.m';
% InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestCoReg.m';
% InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestNormalize.m';
% InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSmooth.m';
InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSegmentSliceTimeRealign.m';
InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSegmentSliceTimeRealignCoregNorm.m';
%InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestSegmentSliceTimeRealignCoregNormSmooth.m';

InFile = '/Users/jason/Documents/MyData/TestSPMProv/OneSubject/PreProcJob_FilledInJob.m';
%InFile = spm_select(1)

%InFile = '/Users/jason/Documents/ProvenanceTools/ProvenanceLibrary/SPMJobs/SegmentONLYJob_FilledInJob.m';

%InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/FMP_P00002021_S0001_FilledInJob.m';%
InFile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/iLS_PreProcss_NoFieldMap_FilledInJob.m';
OutDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles';
% load the input job
[inPathName InFileName] = fileparts(InFile);
cd(inPathName)
eval(InFileName)

clear ListOfInPutImages ListOfOutPutImages
Nsteps = length(matlabbatch);
ListOfInPutImages{Nsteps} = {};
ListOfOutPutImages{Nsteps} = {};
%fid = 1;


Outfile = fullfile(OutDir,[InFileName 'MatLabLibrary.provn']);
% open the output file
fid = fopen(Outfile,'w');
fprintf(fid,'document\n');
% fid = 1
% initialize the file and create the provenance structure

% create the proveance
subfnEntity(fid,'matlabbatch')

for i = 1:Nsteps
    % Add the top level entity for this step and link it to the matlab
    % structure
    subfnEntity(fid,sprintf('matlabbatch%d',i));
    subfnUsed(fid,'matlabbatch',sprintf('matlabbatch%d',i));
    %fprintf(fid,'g.used(''%s'',''%s%d'')\n','matlabbatch','matlabbatch',i);
    [ListOfInPutImages,ListOfOutPutImages] = subfnStructToPROVN(matlabbatch{i},i,fid,ListOfInPutImages,ListOfOutPutImages);
    % after each step make sure to link it to the master entity
    stepName = fieldnames(matlabbatch{i});
    %fprintf(fid,'g.used(''%s'',''matlabbatch%d.%s'')\n','matlabbatch',i,stepName{1});
     if i > 2
    %     fprintf(fid,'g.wasInfluencedBy(''matlabbatch%d.%s'',''matlabbatch%d.%s'')\n',i,stepName{1},i-1,stepName{1});
     end
end
% After all the processing steps have been searched the parameters are all 
% written and the images have been identified and written to two structures
% Now write these images to the PROVN file
% All output images are entities, but not all inputs are entities

for i = 1:length(ListOfOutPutImages)
    for j = 1:length(ListOfOutPutImages{i})
        fprintf(1,'%s\n',ListOfOutPutImages{i}{j}.Files);
        OutStr = subfnConvertFieldToString(ListOfOutPutImages{i}{j}.Indices);
        subfnEntity(fid,ListOfOutPutImages{i}{j}.Files,'prov:label',ListOfOutPutImages{i}{j}.Entity,'prov:type','ImageIndex','prov:value',OutStr,'spm:structpath',ListOfOutPutImages{i}{j}.Entity);
        %fprintf(fid,'g.entity(''%s'',{''prov:label'':''%s'',''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''%s''})\n',ListOfOutPutImages{i}{j}.Files,ListOfOutPutImages{i}{j}.Entity,OutStr,ListOfOutPutImages{i}{j}.Entity);
        subfnwasDerivedFrom(fid,ListOfOutPutImages{i}{j}.Files,ListOfOutPutImages{i}{j}.Entity);
        %fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',ListOfOutPutImages{i}{j}.Files,ListOfOutPutImages{i}{j}.Entity);
    end
end
% WRITE THE INPUT IMAGES
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
     %       fprintf(fid,'g.entity(''%s'',{''prov:label'':''%s'',''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''%s''})\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity,OutStr,ListOfInPutImages{i}{j}.Entity);
     %       fprintf(fid,'g.used(''%s'',''%s'')\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity);
        else
            
            OutStr = subfnConvertFieldToString(ListOfInPutImages{i}{j}.Indices);
     %       fprintf(fid,'g.entity(''%s'',{''prov:label'':''%s'',''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''%s''})\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity,OutStr,ListOfInPutImages{i}{j}.Entity);
     %       fprintf(fid,'g.used(''%s'',''%s'')\n',ListOfInPutImages{i}{j}.Files,ListOfInPutImages{i}{j}.Entity);

        end
    end
end
fprintf(fid,'endDocument\n');
fclose(fid);


%%
% PROVNoutfile = fullfile(OutDir,[InFileName 'RECURSIVE.provn']);
% SVGOutFile = fullfile(OutDir,[InFileName '.svg']);
% fprintf(fid,'with open(''%s'', ''wt'') as fp:fp.writelines(g.get_provn())\n',PROVNoutfile);
% % close the file
% fclose(fid);
% % run it through python
% python(Outfile);

