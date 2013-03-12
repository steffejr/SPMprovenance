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
[inPathName inFileName] = fileparts(Infile);
cd(inPathName)
eval(inFileName)
% Create the outout file
Outfile = fullfile(OutDir,[inFileName '.py']);
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
    %%%% PREPROC %%%%
    % Check to see if this is the preproc segment routine
    switch Levels{end}
        case 'preproc'
            %if strmatch(Levels{end},'preproc')
            % segment has three pieces
            % INPUT
            InputFile = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput,'data'));
            
            entityName = ['preproc' ':' 'data'];
            fprintf(fid,'g.entity(''%s'',{''prov:type'':''bundle'',''spm:structpath'':''matlabbatch{%d}.%s.%s''})\n',entityName,i,ProcessInput,'data');
            fprintf(fid,'g.used(''%s'',''%s'')\n',ProcessInput,entityName);
            for m = 1:length(InputFile)
                % add a string which indexes the 3D image in a 4D image
                Commas = findstr(InputFile{m},',');
                if ~isempty(Commas)
                    tempFile = InputFile{m}(1:findstr(InputFile{m},',')-1);
                    Index = InputFile{m}(findstr(InputFile{m},',')+1:end);
                else
                    tempFile = InputFile{m};
                    Index = '';
                end
                entityName = sprintf('preproc:%s',tempFile);
                fprintf(fid,'g.entity(''%s'',{''prov:type'':''spm:image'',''prov:value'':''%s''})\n',entityName,Index);
                fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n','data',entityName);
            end
            ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Files = InputFile{1};
            ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = Index;
          
            
            %%%% opts/PARAMETERS %%%%
            Parameters = fieldnames(eval(['matlabbatch{' num2str(i) '}.' ProcessInput '.opts']));
            % Create a preproc options entity and make all parameters part of
            % it
            entityName = sprintf('preproc:%s','opts');
            fprintf(fid,'g.entity(''%s'',{''prov:type'':''bundle'',''spm:structpath'':''matlabbatch{%d}.%s.%s''})\n',entityName,i,ProcessInput,'opts');
            fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',ProcessInput,entityName);
            for kk = 1:length(Parameters)
                ParameterValue = eval(sprintf('matlabbatch{%d}.%s.%s.%s', i, ProcessInput, 'opts',Parameters{kk}))
                % Check to see if the parameter is itself a structure
                if iscell(ParameterValue)
                    % create an entity with the parameter name. This entity is
                    % actually a collection of parameter values
                    fprintf(fid, 'g.entity(''%s'')\n',Parameters{kk});
                    fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n','opts',Parameters{kk});
                    for m = 1:length(ParameterValue)
                        entityName = sprintf('preproc:%s',ParameterValue{m});
                        structPath = sprintf('matlabbatch{%d}.%s.%s.%s',i,ProcessInput,'opts',Parameters{kk});
                        fprintf(fid, 'g.entity(''%s'',{''prov:type''spm:image'',''spm:structpath'':''%s'')\n',entityName,structPath);
                        fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',Parameters{kk},entityName);
                    end
                else
                    OutStr = subfnConvertFieldToString(ParameterValue);
                    entityName = sprintf('preproc:%s',Parameters{kk});
                    
                    fprintf(fid,'g.entity(''%s'',{''prov:type'':''spm:parameter'',''spm:structpath'':''matlabbatch{%d}.%s.opts.%s'',''prov:value'':''%s''})\n',entityName,i,ProcessInput,Parameters{kk},OutStr);
                    fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n','opts',entityName);
                end
            end
            
            %%%% OUTPUT %%%%
            OutputStruct = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput, 'output'));
            [OutputFiles OutputLabels] = subfnFindSegmentOutputs(InputFile,OutputStruct);
            % create the output entity
            fprintf(fid,'g.entity(''%s'')\n','output');
            fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',ProcessInput,'output');
            for kk = 1:length(OutputFiles)
                fprintf(fid,'g.entity(''%s'')\n',OutputFiles{kk});
                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Files = OutputFiles{kk};
                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Indices = 1;
                fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n','output',OutputFiles{kk});
            end
        case 'st' % Slice timing
            
            % INPUT
              InputFiles = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput,'scans'));
              fprintf(fid,'g.entity(''%s'')\n','scans');
              fprintf(fid,'g.used(''%s'',''%s'')\n',ProcessInput,'scans');
              for kk = 1:length(InputFiles)
                  
                  % for a list of images in a 4D image find the indices
                  
                  Index = '';
                  for m = 1:length(InputFiles{kk})
                      % add a string which indexes the 3D image in a 4D image
                      Commas = findstr(InputFiles{kk}{m},',');
                      
                      if ~isempty(Commas)
                          tempFile = InputFiles{kk}{m}(1:findstr(InputFiles{kk}{m},',')-1);
                          Index = [Index InputFiles{kk}{m}(findstr(InputFiles{kk}{m},',')+1:end) ';'];
                      else
                          tempFile = InputFile{m};
                          Index = '';
                      end
                  end
                  fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s''})\n',tempFile,Index);
                  fprintf(fid,'g.used(''%s'',''%s'')\n','scans',tempFile);
                  FileName = InputFiles{kk}{1}(1:findstr(InputFiles{kk}{1},',')-1);
                  ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Files = FileName;
                  ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = Index;
              end
            % PARAMETERS
            Parameters = fieldnames(eval(['matlabbatch{' num2str(i) '}.' ProcessInput]));
            for kk = 1:length(Parameters)-1
                if ~strcmp(Parameters{kk},'scans')
                    ParameterValue = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput,Parameters{kk}));
                    OutStr = subfnConvertFieldToString(ParameterValue)
                    fprintf(fid,'g.entity(''%s'',{''prov:type'':''parameter'',''prov:value'':''%s''})\n',Parameters{kk},OutStr);
                    fprintf(fid,'g.used(''%s'',''%s'')\n',ProcessInput,Parameters{kk});
                end
            end
                    
                    
            % OUTPUT
             Prefix = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput,'prefix'));
            fprintf(fid,'g.entity(''%s'')\n','st_output');
            fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',ProcessInput,'st_ouput')
            for kk = 1:length(ListOfInPutImages{i})-1
                [PathName FileName Ext] = fileparts(ListOfInPutImages{i}{kk}.Files);
                ListOfOutPutImages{i}{kk}.Files = fullfile(PathName,[Prefix FileName Ext]);
                ListOfOutPutImages{i}{kk}.Indices = ListOfInPutImages{i}{kk}.Indices;
                fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s''})\n',ListOfOutPutImages{i}{kk}.Files,ListOfOutPutImages{i}{kk}.Indices);
                fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n','st_ouput',ListOfOutPutImages{i}{kk}.Files)
            end
                   
            %         %%%%%%%%%%%%%%%%%%
            %         % for each activity find out what the parameters are for it
            %         Parameters = fieldnames(eval(['matlabbatch{' num2str(i) '}.' ProcessInput]));
            %
            %         for j = 1:length(Parameters)
            %             % Check each of these parameters to see if they themselves are
            %             % structures
            %
            %             if isstruct(eval(['matlabbatch{' num2str(i) '}.' ProcessInput '.' Parameters{j}]))
            %                 % check to see if this is a structure of parameters for the
            %                 % segment program
            %
            %
            %                 % create an entity for each of these parameter structures
            %                 fprintf(fid,'g.entity(''%s_%d'')\n',Parameters{j},i);
            %                 % asscoiate these with their activities.
            %                 fprintf(fid,'g.used(''%s'',''%s_%d'')\n',ProcessInput,Parameters{j},i);
            %
            %                 D = eval(sprintf('matlabbatch{%d}.%s.%s', i, ProcessInput, Parameters{j}));
            %
            %
            %                 % if D is a cell assume it is image data
            %                 if iscell(D)
            %                     % but is this a cell of cells or just a cell of images
            %                     for k = 1:length(D)
            %                         % Check to see if D is a 4-D nifti file
            %                         flag = 0;
            %                         if iscell(D{k})
            %
            %                             [UniqueImages ListOfIndices] = subfnFindUniqueFiles(D{k});
            %                             % Once unique images are found, check to see if
            %                             % these images are output images from any other
            %                             % processes
            %                             for mm = 1:length(UniqueImages)
            %                                 for jj = 1:length(ListOfOutPutImages)
            %                                     for kk = 1:length(ListOfOutPutImages{jj})
            %                                         ListOfOutPutImages{jj}{kk}.Files;
            %                                         % see if the filename is the same
            %                                         if strcmp(UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Files)
            %                                             % then check to see if the indices
            %                                             % are the same
            %                                             if ~isempty(true(ListOfIndices{1} == str2num(ListOfOutPutImages{jj}{kk}.Indices)))
            %                                                 fprintf(1,'Found a dependency: %s\n\t%s,Pointer: %s\n',ProcessInput,UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Ptr);
            %                                             end
            %
            %                                         end
            %                                     end
            %                                 end
            %                             end
            %
            %                             OutStr = subfnConvertFieldToString(ListOfIndices{m});
            %                             % Create the entity which is this image
            %                             fprintf(fid,'g.entity(''%s'')\n',UniqueImages{m});
            %                             %                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
            %                             %                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
            %                             ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Files = UniqueImages{m};
            %                             ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = ListOfIndices{m};
            %                             % assign the image to the activity that uses it.
            %                             fprintf(fid,'g.used(''%s'',''%s'')\n',ProcessInput,UniqueImages{m});
            %                             % Single image
            %                         else
            %                             flag = 1;
            %                             break
            %                         end
            %                     end
            %
            %                     if flag == 1
            %                         % Find the unique image names and the indices if it is a
            %                         % 4-D image.
            %                         [UniqueImages ListOfIndices] = subfnFindUniqueFiles(D);
            %
            %                         for mm = 1:length(UniqueImages)
            %                             for jj = 1:length(ListOfOutPutImages)
            %                                 for kk = 1:length(ListOfOutPutImages{jj})
            %                                     ListOfOutPutImages{jj}{kk}.Files;
            %                                     % see if the filename is the same
            %                                     if strcmp(UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Files)
            %                                         % then check to see if the indices
            %                                         % are the same
            %                                         fprintf(1,'Found a dependency: %s\n\t%s\n',ProcessInput,UniqueImages{mm});
            %                                     end
            %                                 end
            %                             end
            %                         end
            %                         % Add the image to the PROV structure and to the list of
            %                         % input images
            %                         for m = 1:length(UniqueImages)
            %                             OutStr = subfnConvertFieldToString(ListOfIndices{m});
            %                             fprintf(fid,'g.entity(''%s'')\n',UniqueImages{m});
            %                             %                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
            %                             %                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
            %                             ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Files = UniqueImages{m};
            %                             ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = ListOfIndices{m};
            %                         end
            %                     end
            %                 end
            %
            %             end
    end
end

% withinthe python script
% write the provenance to a file
PROVNoutfile = fullfile(OutDir,[inFileName '.provn']);
SVGOutFile = fullfile(OutDir,[inFileName '.svg']);
fprintf(fid,'with open(''%s'', ''wt'') as fp:fp.writelines(g.get_provn())\n',PROVNoutfile)
% close the file
fclose(fid)
% run it through python
python(Outfile)

% [PathName, FileName, Ext] = fileparts(Outfile);
% (sprintf('/Users/jason/Documents/ProvenanceTools/ProvToolbox/toolbox/target/appassembler/bin/provconvert -infile %s -outfile %s',fullfile(PathName,[FileName '.provn']),fullfile(PathName,[FileName '.svg'])));


