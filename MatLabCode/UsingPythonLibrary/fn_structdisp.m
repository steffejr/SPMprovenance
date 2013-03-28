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
CELLMAXROWS = 10;
CELLMAXCOLS = 10;
CELLMAXELEMS = 30;
CELLRECURSIVE = false;

%----- PARAMETERS END -------%

%disp([Xname ':'])
fprintf(1,'STRUCT >> %s\n',Xname);
if length(findstr(Xname,'.'))>0
    subfnWriteCollectionTypeEntity(X,Xname,fid,step,ListOfInPutImages);
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
else
    for i = 1:length(X)
        % This needs to check to see if this is a cell array of lists of
        % images
        if iscell(X{1})
            fprintf(1,'CELL >>> %s\n',X{i}{1});
        else
            fprintf(1,'CELL >>> %s\n',X{i});
        end
        InputFiles = X;
        [ListOfInPutImages] = subfnWriteImageEntity(InputFiles,ListOfInPutImages,step,fid,Xname);
        
        %% NEED TO ADD THE OUTPUT AND USED BY FIELDS
    end
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
        subfnWriteKeyValuePair(a,subnames{i},fid,step)
        %fprintf(1,'Y(%d)=%s\n',i,num2str(a));
    end
end



function subfnWriteKeyValuePair(ParameterValue,entity,fid,step)
entity = sprintf('matlabbatch{%d}%s',step,entity);
entityValue = subfnConvertFieldToString(ParameterValue);
% Split this into the entity and the full path
fDOT = findstr(entity,'.');
entityPath = sprintf('%s',entity(1:fDOT(end)-1));
entityName = entity(fDOT(end)+1:end);
fprintf(fid,'g.entity(''%s'',{''prov:type'':''spm:parameter'',''spm:structpath'':''%s'',''prov:label'':''%s'',''prov:value'':''%s''})\n',entity,entityPath,entityName,entityValue);
% fprintf(fid,'g.entity(''%s'',{''prov:type'':''spm:parameter'',''spm:structpath'':'''',''prov:value'':''%s''})\n',entityName,i,ProcessInput,Parameters{kk},OutStr);
fprintf(fid,'g.used(''%s'',''%s'')\n',entityPath,entity);




function subfnWriteCollectionTypeEntity(X,entity,fid,step,ListOfInPutImages)
% This is a special catch for the preproc step to figure out what the
% output files are
if strcmp(entity,'.spm.spatial.preproc.output')
    [OutputFiles OutputLabels] = subfnFindSegmentOutputs(ListOfInPutImages{step}{1}.Files,X);
    [ListOfInPutImages] = subfnWriteImageEntity(OutputFiles,ListOfInPutImages,step,fid,entity);
end
entity = sprintf('matlabbatch{%d}%s',step,entity);
fDOT = findstr(entity,'.');
entityPath = sprintf('%s',entity(1:fDOT(end)-1));
entityName = entity(fDOT(end)+1:end);
fprintf(fid,'g.entity(''%s'',{''prov:type'':''bundle'',''prov:label'':''%s'',''spm:structpath'':''%s''})\n',entity,entityName,entityPath);
fprintf(fid,'g.used(''%s'',''%s'')\n',entityPath,entity);



function [ListOfInPutImages] = subfnWriteImageEntity(InputFiles,ListOfInPutImages,step,fid,Xname)
for kk = 1:length(InputFiles)
    if iscell(InputFiles{kk})
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
        FileName = tempFile;
        fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''matlabbatch{%d}%s''})\n',FileName,Index,step,Xname);
        ListOfInPutImages{step}{length(ListOfInPutImages{step})+1}.Files = FileName;
        ListOfInPutImages{step}{length(ListOfInPutImages{step})}.Indices = Index;
    else
        Index = '';
        Commas = findstr(InputFiles{kk},',');
        if ~isempty(Commas)
            tempFile = InputFiles{kk}(1:findstr(InputFiles{kk},',')-1);
            Index = [Index InputFiles{kk}(findstr(InputFiles{kk},',')+1:end) ';'];
        else
            tempFile = InputFiles{kk};
            Index = '';
        end
        FileName = tempFile;
        fprintf(fid,'g.entity(''%s'',{''prov:type'':''ImageIndex'',''prov:value'':''%s'',''spm:structpath'':''matlabbatch{%d}%s''})\n',FileName,Index,step,Xname);
        % fprintf(fid,'g.used(''%s'',''%s'')\n','scans',tempFile);
        ListOfInPutImages{step}{length(ListOfInPutImages{step})+1}.Files = FileName;
        ListOfInPutImages{step}{length(ListOfInPutImages{step})}.Indices = Index;
    end
end

