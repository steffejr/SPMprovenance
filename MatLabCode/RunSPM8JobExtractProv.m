function RunSPM8JobExtractProv(InFile)

% load the job
load(InFile);
[PathName FileName] = fileparts(InFile);
% it is assumed that the batch job is stored in the variable name
% matlabbatch
% initiate the job and create the JOB_ID
[job_id, mod_job_idlist] = cfg_util('initjob',matlabbatch);

JobAsMFile = fullfile(PathName,[FileName,'InputJob.m'])
cfg_util('savejob',job_id,JobAsMFile)
% pass the job id to the RUN command. This will actually implement the job
% steps.
% The output_list is a cell array containing the output arguments from each
%                 module in the job. The format and contents of these
%                 outputs is defined in the configuration of each module
%                 see help spm_jobman
                
output_list = spm_jobman('run',matlabbatch);
% Save the output_list cell array
eval(sprintf('save %s output_list',fullfile(PathName,[FileName '_output_list'])));

% Once the job is run the this step extracts the filled in job file.
% Therefore, all dependecies are resolved.
FilledInJobAsMFile = fullfile(PathName,[FileName, '_FilledInJob.m']);
cfg_util('savejobrun',job_id,FilledInJobAsMFile)

% Now that the batch job is filled in, convert to XML



