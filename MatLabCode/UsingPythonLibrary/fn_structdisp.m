function [ListOfInPutImages,ListOfOutPutImages] = fn_structdisp(Xname,step,fid,ListOfInPutImages,ListOfOutPutImages)


% function fn_structdisp Xname
% function fn_structdisp(X)
%---
% Recursively display the content of a structure and its sub-structures
%
% Input:
% - Xname/X     one can give as argument either the structure to display or
%               or a string (the name in the current workspace of the
%               structure to display)
%
% A few parameters can be adjusted inside the m file to determine when
% arrays and cell should be displayed completely or not

% Thomas Deneux
% Copyright 2005-2012

if ischar(Xname)
    X = evalin('caller',Xname);
else
    X = Xname;
    Xname = inputname(1);
end

if ~isstruct(X), error('argument should be a structure or the name of a structure'), end
[ListOfInPutImages,ListOfOutPutImages]=rec_structdisp(Xname,X,fid,step,ListOfInPutImages,ListOfOutPutImages);

%---------------------------------
function [ListOfInPutImages,ListOfOutPutImages]=rec_structdisp(Xname,X,fid,step,ListOfInPutImages,ListOfOutPutImages)
%---

%-- PARAMETERS (Edit this) --%

ARRAYMAXROWS = 10;
ARRAYMAXCOLS = 10;
ARRAYMAXELEMS = 30;
CELLMAXROWS = 1000;
CELLMAXCOLS = 10;
CELLMAXELEMS = 30;
CELLRECURSIVE = false;

%----- PARAMETERS END -------%

%disp([Xname ':'])
fprintf(1,'STRUCT >> %s\n',Xname);
if length(findstr(Xname,'.'))>0
    [ListOfOutPutImages] = subfnWriteCollectionTypeEntity(X,Xname,fid,step,ListOfInPutImages,ListOfOutPutImages);
end
%disp(X)
%fprintf('\b')

if isstruct(X) || isobject(X)
    F = fieldnames(X);
    nsub = length(F);
    Y = cell(1,nsub);
    subnames = cell(1,nsub);
    for i=1:nsub
        f = F{i};
        Y{i} = X.(f);
        subnames{i} = [Xname '.' f];
    end
    fprintf(1,'***** CASE 1\n');
elseif CELLRECURSIVE && iscell(X)
    nsub = numel(X);
    s = size(X);
    Y = X(:);
    subnames = cell(1,nsub);
    for i=1:nsub
        inds = s;
        globind = i-1;
        for k=1:length(s)
            inds(k) = 1+mod(globind,s(k));
            globind = floor(globind/s(k));
        end
        subnames{i} = [Xname '{' num2str(inds,'%i,')];
        subnames{i}(end) = '}';
    end
    fprintf(1,'***** CASE 2\n');
else
    % for i = 1:length(X)
        % This needs to check to see if this is a cell array of lists of
        % images
        if iscell(X{1})
            fprintf(1,'CELL >>> %s\n',X{1}{1});
        else
            fprintf(1,'CELL >>> %s\n',X{1});
        end
        InputFiles = X;
%         [FileName Index] = subfnWriteImageEntity(InputFiles,step,fid,Xname);
        [ListOfInPutImages, ListOfOutPutImages] = subfnWriteImageEntity(InputFiles,step,fid,Xname,ListOfInPutImages, ListOfOutPutImages);
%         % These are input images
%          for j = 1:length(FileName)
%              ListOfInPutImages{step}{length(ListOfInPutImages{step})+1}.Files = FileName{j};
%              ListOfInPutImages{step}{length(ListOfInPutImages{step})}.Indices = Index{j};
%          end

        fprintf(1,'***** CASE 3\n');
        %% NEED TO ADD THE OUTPUT AND USED BY FIELDS
    % end
    return
end

for i=1:nsub
    a = Y{i};
    if isstruct(a) || isobject(a)
        if length(a)==1
            [ListOfInPutImages,ListOfOutPutImages]=rec_structdisp(subnames{i},a,fid,step,ListOfInPutImages,ListOfOutPutImages);
        else
            for k=1:length(a)
                [ListOfInPutImages,ListOfOutPutImages]=rec_structdisp([subnames{i} '(' num2str(k) ')'],a(k),fid,step,ListOfInPutImages,ListOfOutPutImages);
            end
        end
    elseif iscell(a)
        if size(a,1)<=CELLMAXROWS && size(a,2)<=CELLMAXCOLS && numel(a)<=CELLMAXELEMS
            [ListOfInPutImages,ListOfOutPutImages]=rec_structdisp(subnames{i},a,fid,step,ListOfInPutImages,ListOfOutPutImages);
        end
    elseif size(a,1)<=ARRAYMAXROWS && size(a,2)<=ARRAYMAXCOLS && numel(a)<=ARRAYMAXELEMS
        %disp([subnames{i} ':'])
        %fprintf(1,'VALUE >>>%s: %s\n',subnames{i},num2str(a));
        %ListOfOutPutImages = subfnWriteKeyValuePair(ParameterValue,entity,fid,step,ListOfInPutImages,ListOfOutPutImages)
        ListOfOutPutImages = subfnWriteKeyValuePair(a,subnames{i},fid,step,ListOfInPutImages,ListOfOutPutImages);
        %fprintf(1,'Y(%d)=%s\n',i,num2str(a));
    end
end



function ListOfOutPutImages = subfnWriteKeyValuePair(ParameterValue,entity,fid,step,ListOfInPutImages,ListOfOutPutImages)
entity = sprintf('matlabbatch{%d}%s',step,entity);
entityValue = subfnConvertFieldToString(ParameterValue);
% Split this into the entity and the full path
fDOT = findstr(entity,'.');
entityPath = sprintf('%s',entity(1:fDOT(end)-1));
entityName = entity(fDOT(end)+1:end);
fprintf(fid,'g.entity(''%s'',{''prov:type'':''spm:parameter'',''spm:structpath'':''%s'',''prov:label'':''%s'',''prov:value'':''%s''})\n',entity,entityPath,entityName,entityValue);
% fprintf(fid,'g.entity(''%s'',{''prov:type'':''spm:parameter'',''spm:structpath'':'''',''prov:value'':''%s''})\n',entityName,i,ProcessInput,Parameters{kk},OutStr);
fprintf(fid,'g.used(''%s'',''%s'')\n',entityPath,entity);
% Special case for when the parameter is the PREFIX. In this case output
% images need to be created
if strcmp(entityName,'prefix')
     fprintf(1,' === PREFIX ===\n');
     PrefixedOutputFiles = {};
     for j = 1:length(ListOfInPutImages{step})
         [PathName FileName Ext] = fileparts(ListOfInPutImages{step}{j}.Files);
         
         if ~strcmp(Ext,'.mat')
             ListOfOutPutImages{step}{length(ListOfOutPutImages{step})+1}.Files = fullfile(PathName, [entityValue FileName Ext]);
             
%             fprintf(1,'%s\n',fullfile(PathName, [entityValue FileName Ext]));
         end
     end
     fprintf(1,' === END PREFIX ===\n');
    
end



function [ListOfOutPutImages] = subfnWriteCollectionTypeEntity(X,entity,fid,step,ListOfInPutImages,ListOfOutPutImages)
% This is a special catch for the preproc step to figure out what the
% output files are
%fprintf(1,'===COLLECTION===\n');
if strcmp(entity,'.spm.spatial.preproc.output')
    [OutputFiles OutputLabels] = subfnFindSegmentOutputs(ListOfInPutImages{step}{1}.Files,X);
    for kk = 1:length(OutputFiles)
        % fprintf(fid,'g.entity(''%s'')\n',OutputFiles{kk});
        ListOfOutPutImages{step}{length(ListOfOutPutImages{step})+1}.Files = OutputFiles{kk};
        ListOfOutPutImages{step}{length(ListOfOutPutImages{step})}.Indices = 1;
        % fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n','output',OutputFiles{kk});
    end

    [ListOfInPutImages, ListOfOutPutImages] = subfnWriteImageEntity(OutputFiles,step,fid,entity,ListOfInPutImages, ListOfOutPutImages)
    %[ListOfInPutImages] = subfnWriteImageEntity(ListOfOutPutImages{step},step,fid,entity);
end
entity = sprintf('matlabbatch{%d}%s',step,entity);
fDOT = findstr(entity,'.');
entityPath = sprintf('%s',entity(1:fDOT(end)-1));
entityName = entity(fDOT(end)+1:end);
fprintf(fid,'g.entity(''%s'',{''prov:type'':''bundle'',''prov:label'':''%s'',''spm:structpath'':''%s''})\n',entity,entityName,entityPath);
fprintf(fid,'g.used(''%s'',''%s'')\n',entityPath,entity);
%fprintf(1,'===END COLLECTION===\n');


function [ListOfInPutImages, ListOfOutPutImages] = subfnWriteImageEntity(InputFiles,step,fid,Xname,ListOfInPutImages, ListOfOutPutImages)
% This is ugly code and may benefit from a recursive call to itself for
% each entry into a structure of structures of image names.
if iscell(InputFiles{1})
    for i = 1:length(InputFiles)
        [UniqueImages ListOfIndices] = subfnFindUniqueFiles(InputFiles{i});
        
        for mm = 1:length(UniqueImages)
            for kk = 1:length(ListOfOutPutImages{step})
                % see if the filename is the same
                if strcmp(UniqueImages{mm},ListOfOutPutImages{step}{kk}.Files)
                    % then check to see if the indices
                    % are the same
                    %            fprintf(1,'Found a dependency: %s\n\t%s\n',ProcessInput,UniqueImages{mm});
                end
            end
        end
        
        % Add the image to the PROV structure and to the list of
        % input images
        for m = 1:length(UniqueImages)
            OutStr = subfnConvertFieldToString(ListOfIndices{m});
            fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''matlabbatch{%d}%s''})\n',UniqueImages{m},OutStr,step,Xname);
            
            %                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
            %                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
            ListOfInPutImages{step}{length(ListOfInPutImages{step})+1}.Files = UniqueImages{m};
            ListOfInPutImages{step}{length(ListOfInPutImages{step})}.Indices = ListOfIndices{m};
        end
    end
else
    [UniqueImages ListOfIndices] = subfnFindUniqueFiles(InputFiles);
    for mm = 1:length(UniqueImages)
        for kk = 1:length(ListOfOutPutImages{step})
            % see if the filename is the same
            if strcmp(UniqueImages{mm},ListOfOutPutImages{step}{kk}.Files)
                % then check to see if the indices
                % are the same
                %            fprintf(1,'Found a dependency: %s\n\t%s\n',ProcessInput,UniqueImages{mm});
            end
        end
    end
    
    % Add the image to the PROV structure and to the list of
    % input images
    for m = 1:length(UniqueImages)
        OutStr = subfnConvertFieldToString(ListOfIndices{m});
        fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''matlabbatch{%d}%s''})\n',UniqueImages{m},OutStr,step,Xname);
        
        %                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
        %                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
        ListOfInPutImages{step}{length(ListOfInPutImages{step})+1}.Files = UniqueImages{m};
        ListOfInPutImages{step}{length(ListOfInPutImages{step})}.Indices = ListOfIndices{m};
    end
end
            
% [UniqueImages ListOfIndices] = subfnFindUniqueFiles(InputFiles)
% 
% for kk = 1:length(UniqueImages)
%     fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''matlabbatch{%d}%s''})\n',UniqueImages{kk},ListOfIndices{kk},step,Xname);
% end
% 
% Index = cell(length(InputFiles),1);
% FileName = cell(length(InputFiles),1);
% 
% for kk = 1:length(InputFiles)
%     if iscell(InputFiles{kk})
%         Index{kk} = '';
%         for m = 1:length(InputFiles{kk})
%             % add a string which indexes the 3D image in a 4D image
%             Commas = findstr(InputFiles{kk}{m},',');
%             
%             if ~isempty(Commas)
%                 tempFile = InputFiles{kk}{m}(1:findstr(InputFiles{kk}{m},',')-1);
%                 Index{kk} = [Index{kk} InputFiles{kk}{m}(findstr(InputFiles{kk}{m},',')+1:end) ';'];
%             else
%                 tempFile = InputFile{m};
%                 Index{kk} = '';
%             end
%         end
%         FileName{kk} = tempFile;
%         fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''matlabbatch{%d}%s''})\n',FileName{kk},Index{kk},step,Xname);
% %        ListOfInPutImages{step}{length(ListOfInPutImages{step})+1}.Files = FileName;
% %        ListOfInPutImages{step}{length(ListOfInPutImages{step})}.Indices = Index;
%     else
%         Index{kk} = '';
%         Commas = findstr(InputFiles{kk},',');
%         if ~isempty(Commas)
%             tempFile = InputFiles{kk}(1:findstr(InputFiles{kk},',')-1);
%             Index{kk} = [Index{kk} InputFiles{kk}(findstr(InputFiles{kk},',')+1:end) ';'];
%         else
%             tempFile = InputFiles{kk};
%             Index{kk} = '';
%         end
%         FileName{kk} = tempFile;
%         fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''matlabbatch{%d}%s''})\n',FileName{kk},Index{kk},step,Xname);
%         % fprintf(fid,'g.used(''%s'',''%s'')\n','scans',tempFile);
% %        ListOfInPutImages{step}{length(ListOfInPutImages{step})+1}.Files = FileName;
% %        ListOfInPutImages{step}{length(ListOfInPutImages{step})}.Indices = Index;
%     end
% end

