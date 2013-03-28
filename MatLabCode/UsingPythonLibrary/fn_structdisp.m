function fn_structdisp(Xname,step)
fid = 1;

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
rec_structdisp(Xname,X,fid,step)

%---------------------------------
function rec_structdisp(Xname,X,fid,step)
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
      subfnWriteCollectionTypeEntity(Xname,fid,step)
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
     end
    
    return
end

for i=1:nsub
    a = Y{i};
    if isstruct(a) || isobject(a)
        if length(a)==1
            rec_structdisp(subnames{i},a,fid,step)
        else
            for k=1:length(a)
                rec_structdisp([subnames{i} '(' num2str(k) ')'],a(k),fid,step)
            end
        end
    elseif iscell(a)
        if size(a,1)<=CELLMAXROWS && size(a,2)<=CELLMAXCOLS && numel(a)<=CELLMAXELEMS
            rec_structdisp(subnames{i},a,fid,step)
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
    fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',entityPath,entity);

function subfnWriteCollectionTypeEntity(entity,fid,step)
    entity = sprintf('matlabbatch{%d}%s',step,entity);
    fDOT = findstr(entity,'.');
    entityPath = sprintf('%s',entity(1:fDOT(end)-1));
    entityName = entity(fDOT(end)+1:end);
    fprintf(fid,'g.entity(''%s'',{''prov:type'':''bundle'',''prov:label'':''%s'',''spm:structpath'':''%s''})\n',entity,entityName,entityPath);
    fprintf(fid,'g.wasDerivedFrom(''%s'',''%s'')\n',entityPath,entity);

function subfnWriteImageEntity
