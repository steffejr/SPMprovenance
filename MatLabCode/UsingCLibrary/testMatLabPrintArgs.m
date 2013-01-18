function testMatLabPrintArgs(varargin)
% Take a series of arguments
% assume that the first one is the Job file
% Create  log file also
fid = fopen(fullfile(pwd,'ProgramLog.txt'),'w')
% Read in the job file
P = varargin{1}
fid = fopen(P,'r');
frewind(fid)
Line = fgetl(fid);
% Search for Lines with undefined entries and fitst count them
while Line 
if strfind(Line, '<UNDEFINED>')



fprintf(fid,'%d\n',nargin);
 for i = 1 : nargin
     fprintf(fid,'%s\n',varargin{i})
 end
 fclose(fid)
    