function id =  subfnActivity(fid,id,starttime,stoptime,varargin)
% usage: id = subfnActivity(fid,id,varargin)
%
% fid: the file identifier of the output
% id: the identification of this entity
% starttime: time this activity started
% stoptime: time this activity ended
% varargin: optional arguements specified as key/value pairs.
%

% written by: Jason steffener, 07/19/2013
%

if nargin < 2
    error('usage: id = subfnActivity(fid,id,varargin)');
end

activityStr = sprintf('activity(%s,',id);

if exist('starttime')
    if length(time)
        activityStr = sprintf('%s%s,',activityStr,starttime);
    end
else
    activityStr = sprintf('%s%s,',activityStr,'-');
end
if exist('stoptime')
    if length(time)
        activityStr = sprintf('%s%s',activityStr,stoptime);
    end
else
    activityStr = sprintf('%s%s',activityStr,'-');
end

Narg = length(varargin);

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
fprintf(fid,'%s',activityStr);