function id =  subfnEntity(fid,id,varargin)
% usage: id = subfnEntity(fid,id,varargin')
% 
% fid: the file identifier of the output
% id: the identification of this entity
% varargin: optional key/value pairs
% 
% written by: Jason steffener, 07/19/2013
% 

if nargin < 2
    error('usage: id = subfnEntity(fid,id,varargin)');
end

Narg = length(varargin);
entityStr = sprintf('entity(%s',id);
if Narg > 0
    if mod(Narg,2) ~= 0
        error('arguments need to be entered as key/value pairs')
    else
%        write the open brackets 
        entityStr = sprintf('%s,\n\t[',entityStr);
        for i = 1:2:Narg
            entityStr = sprintf('%s %s="%s",\n\t',entityStr,num2str(varargin{i}),num2str(varargin{i+1}));
        end
%        remove the last comma
        entityStr = entityStr(1:end-3);
%        write the closing bracket
        entityStr = sprintf('%s])\n\n',entityStr);
    end
else
    entityStr = sprintf('%s)\n\n',entityStr);
end
fprintf(fid,'%s',entityStr);