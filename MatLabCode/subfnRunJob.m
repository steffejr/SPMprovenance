function subfnRunJob(File)

eval(File)
spm_jobman('run_nogui',matlabbatch);