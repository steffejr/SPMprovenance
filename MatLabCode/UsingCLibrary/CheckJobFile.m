function CheckJobFile(varargin)
% Take any number of arguments, but the first is supposed to be the name of
% a spm matlabbatch job. This is created when the batch is saved using the
% command "Save Batch and Script'
InFile = varargin{1};
%InFile = '/export/data/data9/jason/SPM_Provenance/SmoothScript_Unfilled_job.m'
InFile = fullfile(pwd,[InFile '.m']);
[PathName FileName Ext] = fileparts(InFile);
OutFile = fullfile(PathName, [FileName '_FILLED' Ext]);
OUTfid = fopen(OutFile,'w');
INfid = fopen(InFile,'r');

% Search for Lines with undefined entries
count = 0;
while 1
    Line = fgetl(INfid);
    if ~ischar(Line), break, end
    if strfind(Line, '<UNDEFINED>')
        count = count + 1;
        % Parse the Line
        %Command = sprintf(1,'%s\n',Line(1:strfind(Line,'=')-1));
    end
end
frewind(INfid);
if (nargin - 1) > count
    fprintf(1,'The correct number of files are entered\n');
    count = 0;
    while 1
        Line = fgetl(INfid);
        if ~ischar(Line), break, end
        if strfind(Line, '<UNDEFINED>')
            count = count + 1;
            % Check the input to see if it is 4D
            V = spm_vol(varargin{count + 1});
            if length(V)>1
                % Then this is a 4D image file
            end
            % Parse the Line
            Command = sprintf('%s={''%s''}\n',[Line(1:strfind(Line,'=')-1)],varargin{count + 1});
            Line = [Command];
        end
        eval(Line)
        fprintf(OUTfid, '%s\n',Line);
    end
end
fclose(INfid);
fclose(OUTfid);
spm_jobman('run_nogui',matlabbatch);