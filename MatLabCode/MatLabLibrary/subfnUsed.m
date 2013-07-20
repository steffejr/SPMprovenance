function id = subfnUsed(fid,a1,e1,id,time,varargin)
% usage: id = subfnUsed(fid,id,a1,e1,time,varargin)
%
% fid: the file identifier of the output
% id: the identification of this using activity
% a1: the activity 
% e1: the entity used by the activity
% time: the time or marker that the activity used the entity
% varargin: if optional arguements are passed the first two are the start
% and stop time of this activity.
% After these are specified then the other attributes are key/value pairs.
%

% written by: Jason steffener, 07/20/2013
%

if nargin < 3
    error('usage: id = subfnUsed(fid,id,a1,e1,time,varargin)');
end

UsedStr = sprintf('%s(','used');

%s,%s','UsedStr',e2,e1);
Narg = length(varargin);
% if there is an id givn, write that first
if exist('id')
    if length(id) > 0
        UsedStr = sprintf('%s%s,',UsedStr,id);
    end
else
    id = '';
end
% write the entities
UsedStr = sprintf('%s%s,',UsedStr,e1);
% write the activity
UsedStr = sprintf('%s%s,',UsedStr,a1);
% write the time or marker
if exist('time')
    if length(time)
        UsedStr = sprintf('%s%s,',UsedStr,time);
    end
else
    UsedStr = sprintf('%s%s,',UsedStr,'-');
end
% remove the last comma
UsedStr = UsedStr(1:end-1);
if Narg > 0
    if mod(Narg,2) ~= 0
        error('arguments need to be entered as key/value pairs')
    else
        % write the open brackets
        UsedStr = sprintf('%s, [',UsedStr);
        for i = 1:2:Narg
            UsedStr = sprintf('%s %s="%s",',UsedStr,num2str(varargin{i}),num2str(varargin{i+1}));
        end
        % remove the last comma
        UsedStr = UsedStr(1:end-1);
        % write the closing bracket
        UsedStr = sprintf('%s])\n',UsedStr);
                
    end
else
    UsedStr = sprintf('%s)\n',UsedStr);
end
fprintf(fid,'%s',UsedStr);

