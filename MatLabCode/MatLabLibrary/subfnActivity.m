function id =  subfnActivity(fid,id,varargin)
% usage: id = subfnActivity(fid,id,varargin)
%
% fid: the file identifier of the output
% id: the identification of this entity
% varargin: if optional arguements are passed the first two are the start
% and stop time of this activity.
% After these are specified then the other attributes are key/value pairs.
%

% written by: Jason steffener, 07/19/2013
%

if nargin < 2
    error('usage: id = subfnActivity(fid,id,varargin)');
end

Narg = length(varargin);
activityStr = sprintf('activity(%s',id);
if Narg > 0
    if mod(Narg,2) ~= 0
        error('arguments need to be entered as key/value pairs')
    else
        % write the start and stop times
        activityStr = sprintf('%s,%s,%s',activityStr,num2str(varargin{1}),num2str(varargin{2}));
        if Narg > 2
            % write the open brackets
            activityStr = sprintf('%s, [',activityStr);
            for i = 3:2:Narg
                activityStr = sprintf('%s %s="%s",',activityStr,num2str(varargin{i}),num2str(varargin{i+1}));
            end
            % remove the last comma
            activityStr = activityStr(1:end-1);
            % write the closing bracket
            activityStr = sprintf('%s])\n',activityStr);
        else
            % no attributes to write so close the parentheses
            activityStr = sprintf('%s)\n',activityStr);
        end
    end
else
    activityStr = sprintf('%s)\n',activityStr);
end
fprintf(fid,'%s',activityStr)