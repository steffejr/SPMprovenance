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
    
    for j = 1:length(Parameters)
        % create an entity for each of these parameter structures
        fprintf(fid,'g.entity(''%s_%d'')\n',Parameters{j},i);
        % asscoiate these with their activities.
        fprintf(fid,'g.used(''%s'',''%s_%d'')\n',ProcessInput,Parameters{j},i);
        
        D = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput, Parameters{j}));
        % determine if this is the output for the segment tool
        if ~isempty(strmatch(Parameters{j},'output') & strmatch(Levels{end},'preproc'))
            InputFile = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput, Parameters{1}));
            %InputFile = eval([ProcessInput '.' Parameters{1}]);
            OutputStruct = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput, Parameters{j}));
        %    OutputFiles = subfnFindSegmentOutputs(InputFile,OutputStruct);
            [OutputFiles OutputLabels] = subfnFindSegmentOutputs(InputFile,OutputStruct);
            
            for kk = 1:length(OutputFiles)
                fprintf(fid,'g.entity(''%s'')\n',OutputFiles{kk});
     %           output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',OutputFiles{kk},OutputLabels{kk});
     %           ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Ptr = output_id;
                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Files = OutputFiles{kk};
                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Indices = OutputLabels{kk};
                fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',ProcessInput,OutputFiles{kk});
            end
        end
        
        % if D is a cell assume it is image data
        if iscell(D)
            % but is this a cell of cells or just a cell of images
            for k = 1:length(D)
                % Check to see if D is a 4-D nifti file
                flag = 0;
                if iscell(D{k})
                    
                    [UniqueImages ListOfIndices] = subfnFindUniqueFiles(D{k});
                    % Once unique images are found, check to see if
                    % these images are output images from any other
                    % processes
                    for mm = 1:length(UniqueImages)
                        for jj = 1:length(ListOfOutPutImages)
                            for kk = 1:length(ListOfOutPutImages{jj})
                                ListOfOutPutImages{jj}{kk}.Files;
                                % see if the filename is the same
                                if strcmp(UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Files)
                                    % then check to see if the indices
                                    % are the same
                                    if ~isempty(true(ListOfIndices{1} == str2num(ListOfOutPutImages{jj}{kk}.Indices)))
                                        fprintf(1,'Found a dependency: %s\n\t%s,Pointer: %s\n',ProcessInput,UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Ptr);
                                    end
                                    
                                end
                            end
                        end
                    end
                    
                    OutStr = subfnConvertFieldToString(ListOfIndices{m});
                    % Create the entity which is this image
                    fprintf(fid,'g.entity(''%s'')\n',UniqueImages{m});
%                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
%                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Files = UniqueImages{m};
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = ListOfIndices{m};
                    % assign the image to the activity that uses it.
                    fprintf(fid,'g.used(''%s'',''%s'')\n',ProcessInput,UniqueImages{m});
                    % Single image
                else
                    flag = 1;
                    break 
                end
            end
         
            if flag == 1
                % Find the unique image names and the indices if it is a
                % 4-D image.
                [UniqueImages ListOfIndices] = subfnFindUniqueFiles(D);
                
                for mm = 1:length(UniqueImages)
                    for jj = 1:length(ListOfOutPutImages)
                        for kk = 1:length(ListOfOutPutImages{jj})
                            ListOfOutPutImages{jj}{kk}.Files;
                            % see if the filename is the same
                            if strcmp(UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Files)
                                % then check to see if the indices
                                % are the same
                                fprintf(1,'Found a dependency: %s\n\t%s\n',ProcessInput,UniqueImages{mm});
                            end
                        end
                    end
                end
                % Add the image to the PROV structure and to the list of
                % input images
                for m = 1:length(UniqueImages)
                    OutStr = subfnConvertFieldToString(ListOfIndices{m});
                    fprintf(fid,'g.entity(''%s'')\n',UniqueImages{m});
%                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
%                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Files = UniqueImages{m};
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = ListOfIndices{m};
                end
            end
        end
        
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

% [PathName, FileName, Ext] = fileparts(Outfile);
% (sprintf('/Users/jason/Documents/ProvenanceTools/ProvToolbox/toolbox/target/appassembler/bin/provconvert -infile %s -outfile %s',fullfile(PathName,[FileName '.provn']),fullfile(PathName,[FileName '.svg'])));


