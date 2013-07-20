%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 4252 $)
%-----------------------------------------------------------------------
%%
matlabbatch{1}.spm.spatial.realign.estwrite.data = {
                                                    {
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,1'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,2'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,3'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,4'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,5'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,6'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,7'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,8'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,9'
                                                    '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,10'
                                                    }
                                                    }';
%%
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.sep = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.which = [0 1];
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
%%
matlabbatch{2}.spm.spatial.smooth.data = {
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,1'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,2'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,3'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,4'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,5'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,6'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,7'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,8'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,9'
                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,10'
                                          };
%%
matlabbatch{2}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{2}.spm.spatial.smooth.dtype = 0;
matlabbatch{2}.spm.spatial.smooth.im = 0;
matlabbatch{2}.spm.spatial.smooth.prefix = 's';
