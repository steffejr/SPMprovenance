%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 4252 $)
%-----------------------------------------------------------------------
matlabbatch{1}.spm.spatial.preproc.data = {'/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/T1_P00004218_S0001.nii,1'};
matlabbatch{1}.spm.spatial.preproc.output.GM = [1 1 1];
matlabbatch{1}.spm.spatial.preproc.output.WM = [1 1 1];
matlabbatch{1}.spm.spatial.preproc.output.CSF = [1 1 1];
matlabbatch{1}.spm.spatial.preproc.output.biascor = 1;
matlabbatch{1}.spm.spatial.preproc.output.cleanup = 0;
matlabbatch{1}.spm.spatial.preproc.opts.tpm = {
                                               '/share/data/data5/spm8/tpm/grey.nii'
                                               '/share/data/data5/spm8/tpm/white.nii'
                                               '/share/data/data5/spm8/tpm/csf.nii'
                                               };
matlabbatch{1}.spm.spatial.preproc.opts.ngaus = [2
                                                 2
                                                 2
                                                 4];
matlabbatch{1}.spm.spatial.preproc.opts.regtype = 'mni';
matlabbatch{1}.spm.spatial.preproc.opts.warpreg = 1;
matlabbatch{1}.spm.spatial.preproc.opts.warpco = 25;
matlabbatch{1}.spm.spatial.preproc.opts.biasreg = 0.0001;
matlabbatch{1}.spm.spatial.preproc.opts.biasfwhm = 60;
matlabbatch{1}.spm.spatial.preproc.opts.samp = 3;
matlabbatch{1}.spm.spatial.preproc.opts.msk = {''};
%%
matlabbatch{2}.spm.temporal.st.scans = {
                                        {
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,1'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,2'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,3'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,4'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,5'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,6'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,7'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,8'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,9'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii,10'
                                        }
                                        {
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,1'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,2'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,3'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,4'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,5'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,6'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,7'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,8'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,9'
                                        '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii,10'
                                        }
                                        }';
%%
matlabbatch{2}.spm.temporal.st.nslices = 41;
matlabbatch{2}.spm.temporal.st.tr = 2;
matlabbatch{2}.spm.temporal.st.ta = 1.95121951219512;
matlabbatch{2}.spm.temporal.st.so = [1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40];
matlabbatch{2}.spm.temporal.st.refslice = 20;
matlabbatch{2}.spm.temporal.st.prefix = 'a';
%%
matlabbatch{3}.spm.spatial.realign.estwrite.data = {
                                                    {
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,1'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,2'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,3'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,4'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,5'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,6'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,7'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,8'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,9'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,10'
                                                    }
                                                    {
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,1'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,2'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,3'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,4'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,5'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,6'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,7'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,8'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,9'
                                                    '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,10'
                                                    }
                                                    }';
%%
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.sep = 4;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{3}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.which = [0 1];
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{3}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
matlabbatch{4}.spm.spatial.coreg.estimate.ref = {'/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii'};
matlabbatch{4}.spm.spatial.coreg.estimate.source = {'/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/meanaECF_r1_P00004218_S0001.nii,1'};
%%
matlabbatch{4}.spm.spatial.coreg.estimate.other = {
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,1'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,2'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,3'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,4'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,5'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,6'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,7'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,8'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,9'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,10'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,1'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,2'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,3'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,4'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,5'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,6'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,7'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,8'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,9'
                                                   '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,10'
                                                   };
%%
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{4}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{5}.spm.spatial.normalise.write.subj.matname = {'/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/T1_P00004218_S0001_seg_sn.mat'};
%%
matlabbatch{5}.spm.spatial.normalise.write.subj.resample = {
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/meanaECF_r1_P00004218_S0001.nii,1'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,1'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,2'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,3'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,4'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,5'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,6'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,7'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,8'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,9'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii,10'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,1'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,2'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,3'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,4'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,5'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,6'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,7'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,8'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,9'
                                                            '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii,10'
                                                            };
%%
matlabbatch{5}.spm.spatial.normalise.write.roptions.preserve = 0;
matlabbatch{5}.spm.spatial.normalise.write.roptions.bb = [-78 -112 -50
                                                          78 76 85];
matlabbatch{5}.spm.spatial.normalise.write.roptions.vox = [2 2 2];
matlabbatch{5}.spm.spatial.normalise.write.roptions.interp = 1;
matlabbatch{5}.spm.spatial.normalise.write.roptions.wrap = [0 0 0];
matlabbatch{5}.spm.spatial.normalise.write.roptions.prefix = 'w';
%%
matlabbatch{6}.spm.spatial.smooth.data = {
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/wmeanaECF_r1_P00004218_S0001.nii,1'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,1'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,2'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,3'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,4'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,5'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,6'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,7'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,8'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,9'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii,10'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,1'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,2'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,3'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,4'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,5'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,6'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,7'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,8'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,9'
                                          '/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii,10'
                                          };
%%
matlabbatch{6}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{6}.spm.spatial.smooth.dtype = 0;
matlabbatch{6}.spm.spatial.smooth.im = 0;
matlabbatch{6}.spm.spatial.smooth.prefix = 's';
