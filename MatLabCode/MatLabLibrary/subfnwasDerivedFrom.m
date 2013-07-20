function id = subfnwasDerivedFrom(fid,e1,e2,id,a,g2,u1,varargin)
% usage: id = subfnwasDerivedFrom(fid,e1,e2,id,a,g2,u1,vargargin)
% e2 is the REQUIRED identifier for the entity being derived,
% e1 is the REQUIRED identifier of the entity from which e2 is derived
% id is the OPTIONAL derivation identifier,
% a  is the OPTIONAL identifier of the wasDerivedFrom which used/generated the entities
% g2 is the OPTIONAL identifier of the generation
% u1 is the OPTIONAL identifier of the usage
% varargin is a list of OPTIONAL key/value attributes
%
% if any parameters are left out they need to be entered as ''

if nargin < 3
    error('usage: id = subfnwasDerivedFrom(fid,e1,e2,id,a,g2,u1,vargargin)');
end

% written by: Jason steffener, 07/19/2013
%

wasDerivedFromStr = sprintf('%s(','wasDerivedFrom');

%s,%s','wasDerivedFromStr',e2,e1);
Narg = length(varargin);
% if there is an id given, write that first
if exist('id')
    if length(id) > 0
        wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,id);
    end
else
    id = '';
end
% write the entities
wasDerivedFromStr = sprintf('%s%s,%s,',wasDerivedFromStr,e2,e1);

if exist('a')
    if length(a)
        wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,a);
    else
        wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,'-');
    end
else
    wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,'-');
    
end
if exist('g2')
    if length(g2)
        wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,g2);
    else
        wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,'-');
    end
else
    wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,'-');
end
if exist('u1')
    if length(u1)
        wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,u1);
    else
        wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,'-');
    end
else
    wasDerivedFromStr = sprintf('%s%s,',wasDerivedFromStr,'-');
end
% remove the last comma
wasDerivedFromStr = wasDerivedFromStr(1:end-1);
if Narg > 0
    if mod(Narg,2) ~= 0
        error('arguments need to be entered as key/value pairs')
    else
        % write the open brackets
        wasDerivedFromStr = sprintf('%s, [',wasDerivedFromStr);
        for i = 1:2:Narg
            wasDerivedFromStr = sprintf('%s %s="%s",',wasDerivedFromStr,num2str(varargin{i}),num2str(varargin{i+1}));
        end
        % remove the last comma
        wasDerivedFromStr = wasDerivedFromStr(1:end-1);
        % write the closing bracket
        wasDerivedFromStr = sprintf('%s])\n',wasDerivedFromStr);
                
    end
else
    wasDerivedFromStr = sprintf('%s)\n',wasDerivedFromStr);
end
fprintf(fid,'%s',wasDerivedFromStr);