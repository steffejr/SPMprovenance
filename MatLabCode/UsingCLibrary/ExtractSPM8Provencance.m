% Once an SPM8 batch job is created and saved to disk as a MAT file
% Select the batch job
P = spm_select(1,'mat','Select the job to run');
% load the job
load(P);
[PathName FileName] = fileparts(P);
% it is assumed that the batch job is stored in the variable name
% matlabbatch
% initiate the job and create the JOB_ID
[job_id, mod_job_idlist] = cfg_util('initjob',matlabbatch);

JobAsMFile = fullfile(PathName,[FileName,'InputJob.m'])
cfg_util('savejob',job_id,JobAsMFile)
% pass the job id to the RUN command. This will actually implement the job
% steps
cfg_util('run',job_id)
% Once the job is run the this step extracts the filled in job file.
% Therefore, all dependecies are resolved.
FilledInJobAsMFile = fullfile(PathName,[FileName, '_FilledInJob.m']);
cfg_util('savejobrun',job_id,FilledInJobAsMFile)

% Now that the batch job is filled in, convert to XML



