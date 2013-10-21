%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 4252 $)
%-----------------------------------------------------------------------
matlabbatch{1}.spm.spatial.preproc.data = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/T1/spm8/T1_P00002021_S0001.nii,1'};
matlabbatch{1}.spm.spatial.preproc.output.GM = [1 1 1];
matlabbatch{1}.spm.spatial.preproc.output.WM = [1 1 1];
matlabbatch{1}.spm.spatial.preproc.output.CSF = [1 1 1];
matlabbatch{1}.spm.spatial.preproc.output.biascor = 1;
matlabbatch{1}.spm.spatial.preproc.output.cleanup = 0;
matlabbatch{1}.spm.spatial.preproc.opts.tpm = {
                                               '/Users/jason/Desktop/JasonApps/spm8/tpm/csf.nii,1'
                                               '/Users/jason/Desktop/JasonApps/spm8/tpm/grey.nii,1'
                                               '/Users/jason/Desktop/JasonApps/spm8/tpm/white.nii,1'
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
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.shortphase = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/FieldMapiLS/spm8/x1_FieldMapiLS_P00002021_S0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.shortmag = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/FieldMapiLS/spm8/x2_FieldMapiLS_P00002021_S0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.longphase = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/FieldMapiLS/spm8/x3_FieldMapiLS_P00002021_S0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.longmag = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/FieldMapiLS/spm8/x4_FieldMapiLS_P00002021_S0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.et = [2.3 4.6];
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.maskbrain = 0;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.blipdir = -1;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.tert = 20;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.epifm = 1;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.ajm = 0;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.uflags.method = 'Mark3D';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.uflags.fwhm = 10;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.uflags.pad = 0;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.uflags.ws = 1;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.mflags.template = {'/Users/jason/Desktop/JasonApps/spm8/templates/T1.nii'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.mflags.fwhm = 5;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.mflags.nerode = 2;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.mflags.ndilate = 4;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.mflags.thresh = 0.5;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.defaults.defaultsval.mflags.reg = 0.02;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.session(1).epi = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.session(2).epi = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.session(3).epi = {'/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.matchvdm = 1;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.sessname = 'session';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.writeunwarped = 1;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1) = cfg_dep;
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).tname = 'Select anatomical image for comparison';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).tgt_spec{1}(1).value = 'image';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).sname = 'Segment: Bias Corr Images';
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.anat(1).src_output = substruct('()',{1}, '.','biascorr', '()',{':'});
matlabbatch{2}.spm.tools.fieldmap.phasemag.subj.matchanat = 1;
%%
matlabbatch{3}.spm.spatial.realignunwarp.data(1).scans = {
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,1'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,2'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,3'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,4'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,5'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,6'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,7'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,8'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,9'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,10'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,11'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,12'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,13'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,14'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,15'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,16'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,17'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,18'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,19'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,20'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,21'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,22'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,23'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,24'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,25'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,26'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,27'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,28'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,29'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,30'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,31'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,32'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,33'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,34'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,35'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,36'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,37'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,38'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,39'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,40'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,41'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,42'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,43'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,44'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,45'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,46'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,47'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,48'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,49'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,50'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,51'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,52'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,53'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,54'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,55'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,56'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,57'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,58'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,59'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,60'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,61'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,62'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,63'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,64'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,65'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,66'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,67'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,68'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,69'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,70'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,71'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,72'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,73'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,74'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,75'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,76'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,77'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,78'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,79'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,80'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,81'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,82'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,83'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,84'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,85'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,86'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,87'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,88'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,89'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,90'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,91'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,92'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,93'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,94'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,95'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,96'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,97'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,98'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,99'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,100'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,101'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,102'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,103'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,104'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,105'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,106'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,107'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,108'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,109'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,110'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,111'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,112'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,113'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,114'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,115'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,116'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,117'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,118'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,119'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,120'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,121'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,122'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,123'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,124'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,125'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,126'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,127'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,128'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,129'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,130'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,131'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,132'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,133'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,134'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,135'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,136'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,137'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,138'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,139'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,140'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,141'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,142'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,143'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,144'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,145'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,146'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,147'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,148'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,149'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,150'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,151'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,152'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,153'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,154'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,155'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,156'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,157'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,158'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,159'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,160'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,161'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,162'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,163'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,164'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,165'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,166'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,167'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,168'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,169'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,170'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,171'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,172'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,173'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,174'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,175'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,176'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,177'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,178'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,179'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,180'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,181'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,182'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,183'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,184'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,185'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,186'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,187'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,188'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,189'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,190'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,191'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,192'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,193'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,194'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,195'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,196'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,197'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,198'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,199'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,200'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,201'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,202'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,203'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,204'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,205'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,206'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,207'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,208'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,209'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,210'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,211'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,212'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,213'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,214'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,215'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,216'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,217'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,218'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,219'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,220'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,221'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,222'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,223'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,224'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,225'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,226'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,227'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,228'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,229'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,230'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,231'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,232'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,233'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,234'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,235'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,236'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,237'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,238'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,239'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r1/spm8/iLS_r1_P00002021_S0001.nii,240'
                                                          };
%%
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1) = cfg_dep;
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).tname = 'Phase map (vdm* file)';
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(1).value = 'image';
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(2).value = 'e';
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).sname = 'Phase and Magnitude Data: Voxel displacement map (Subj 1, Session 1)';
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.spatial.realignunwarp.data(1).pmscan(1).src_output = substruct('()',{1}, '.','vdmfile', '{}',{1});
%%
matlabbatch{3}.spm.spatial.realignunwarp.data(2).scans = {
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,1'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,2'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,3'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,4'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,5'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,6'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,7'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,8'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,9'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,10'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,11'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,12'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,13'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,14'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,15'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,16'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,17'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,18'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,19'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,20'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,21'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,22'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,23'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,24'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,25'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,26'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,27'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,28'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,29'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,30'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,31'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,32'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,33'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,34'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,35'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,36'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,37'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,38'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,39'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,40'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,41'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,42'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,43'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,44'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,45'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,46'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,47'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,48'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,49'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,50'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,51'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,52'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,53'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,54'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,55'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,56'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,57'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,58'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,59'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,60'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,61'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,62'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,63'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,64'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,65'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,66'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,67'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,68'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,69'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,70'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,71'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,72'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,73'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,74'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,75'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,76'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,77'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,78'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,79'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,80'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,81'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,82'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,83'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,84'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,85'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,86'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,87'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,88'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,89'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,90'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,91'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,92'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,93'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,94'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,95'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,96'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,97'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,98'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,99'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,100'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,101'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,102'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,103'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,104'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,105'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,106'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,107'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,108'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,109'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,110'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,111'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,112'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,113'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,114'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,115'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,116'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,117'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,118'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,119'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,120'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,121'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,122'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,123'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,124'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,125'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,126'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,127'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,128'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,129'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,130'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,131'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,132'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,133'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,134'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,135'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,136'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,137'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,138'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,139'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,140'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,141'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,142'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,143'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,144'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,145'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,146'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,147'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,148'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,149'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,150'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,151'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,152'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,153'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,154'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,155'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,156'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,157'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,158'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,159'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,160'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,161'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,162'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,163'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,164'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,165'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,166'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,167'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,168'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,169'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,170'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,171'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,172'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,173'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,174'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,175'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,176'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,177'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,178'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,179'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,180'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,181'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,182'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,183'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,184'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,185'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,186'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,187'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,188'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,189'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,190'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,191'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,192'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,193'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,194'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,195'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,196'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,197'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,198'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,199'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,200'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,201'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,202'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,203'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,204'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,205'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,206'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,207'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,208'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,209'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,210'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,211'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,212'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,213'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,214'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,215'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,216'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,217'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,218'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,219'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,220'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,221'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,222'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,223'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,224'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,225'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,226'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,227'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,228'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,229'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,230'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,231'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,232'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,233'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,234'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,235'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,236'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,237'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,238'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,239'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r2/spm8/iLS_r2_P00002021_S0001.nii,240'
                                                          };
%%
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1) = cfg_dep;
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).tname = 'Phase map (vdm* file)';
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(1).value = 'image';
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(2).value = 'e';
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).sname = 'Phase and Magnitude Data: Voxel displacement map (Subj 1, Session 2)';
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.spatial.realignunwarp.data(2).pmscan(1).src_output = substruct('()',{1}, '.','vdmfile', '{}',{2});
%%
matlabbatch{3}.spm.spatial.realignunwarp.data(3).scans = {
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
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,11'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,12'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,13'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,14'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,15'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,16'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,17'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,18'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,19'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,20'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,21'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,22'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,23'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,24'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,25'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,26'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,27'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,28'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,29'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,30'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,31'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,32'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,33'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,34'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,35'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,36'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,37'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,38'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,39'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,40'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,41'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,42'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,43'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,44'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,45'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,46'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,47'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,48'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,49'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,50'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,51'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,52'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,53'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,54'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,55'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,56'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,57'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,58'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,59'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,60'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,61'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,62'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,63'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,64'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,65'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,66'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,67'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,68'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,69'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,70'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,71'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,72'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,73'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,74'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,75'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,76'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,77'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,78'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,79'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,80'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,81'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,82'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,83'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,84'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,85'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,86'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,87'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,88'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,89'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,90'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,91'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,92'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,93'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,94'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,95'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,96'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,97'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,98'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,99'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,100'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,101'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,102'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,103'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,104'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,105'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,106'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,107'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,108'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,109'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,110'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,111'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,112'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,113'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,114'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,115'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,116'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,117'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,118'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,119'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,120'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,121'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,122'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,123'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,124'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,125'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,126'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,127'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,128'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,129'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,130'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,131'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,132'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,133'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,134'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,135'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,136'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,137'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,138'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,139'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,140'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,141'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,142'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,143'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,144'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,145'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,146'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,147'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,148'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,149'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,150'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,151'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,152'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,153'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,154'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,155'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,156'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,157'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,158'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,159'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,160'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,161'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,162'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,163'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,164'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,165'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,166'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,167'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,168'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,169'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,170'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,171'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,172'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,173'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,174'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,175'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,176'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,177'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,178'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,179'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,180'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,181'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,182'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,183'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,184'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,185'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,186'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,187'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,188'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,189'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,190'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,191'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,192'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,193'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,194'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,195'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,196'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,197'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,198'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,199'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,200'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,201'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,202'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,203'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,204'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,205'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,206'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,207'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,208'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,209'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,210'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,211'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,212'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,213'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,214'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,215'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,216'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,217'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,218'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,219'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,220'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,221'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,222'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,223'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,224'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,225'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,226'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,227'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,228'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,229'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,230'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,231'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,232'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,233'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,234'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,235'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,236'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,237'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,238'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,239'
                                                          '/Users/jason/Documents/MyData/iLS/iLS/Subjects/P00002021/S0001/iLS_r3/spm8/iLS_r3_P00002021_S0001.nii,240'
                                                          };
%%
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1) = cfg_dep;
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).tname = 'Phase map (vdm* file)';
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).tgt_spec{1}(1).value = 'image';
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).tgt_spec{1}(2).value = 'e';
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).sname = 'Phase and Magnitude Data: Voxel displacement map (Subj 1, Session 3)';
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.spatial.realignunwarp.data(3).pmscan(1).src_output = substruct('()',{1}, '.','vdmfile', '{}',{3});
matlabbatch{3}.spm.spatial.realignunwarp.eoptions.quality = 0.9;
matlabbatch{3}.spm.spatial.realignunwarp.eoptions.sep = 4;
matlabbatch{3}.spm.spatial.realignunwarp.eoptions.fwhm = 5;
matlabbatch{3}.spm.spatial.realignunwarp.eoptions.rtm = 1;
matlabbatch{3}.spm.spatial.realignunwarp.eoptions.einterp = 2;
matlabbatch{3}.spm.spatial.realignunwarp.eoptions.ewrap = [0 0 0];
matlabbatch{3}.spm.spatial.realignunwarp.eoptions.weight = '';
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.basfcn = [12 12];
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.regorder = 1;
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.lambda = 100000;
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.jm = 0;
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.fot = [4 5];
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.sot = [];
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.uwfwhm = 4;
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.rem = 1;
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.noi = 5;
matlabbatch{3}.spm.spatial.realignunwarp.uweoptions.expround = 'Average';
matlabbatch{3}.spm.spatial.realignunwarp.uwroptions.uwwhich = [2 1];
matlabbatch{3}.spm.spatial.realignunwarp.uwroptions.rinterp = 4;
matlabbatch{3}.spm.spatial.realignunwarp.uwroptions.wrap = [0 0 0];
matlabbatch{3}.spm.spatial.realignunwarp.uwroptions.mask = 0;
matlabbatch{3}.spm.spatial.realignunwarp.uwroptions.prefix = 'u';
matlabbatch{4}.spm.temporal.st.scans{1}(1) = cfg_dep;
matlabbatch{4}.spm.temporal.st.scans{1}(1).tname = 'Session';
matlabbatch{4}.spm.temporal.st.scans{1}(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{4}.spm.temporal.st.scans{1}(1).tgt_spec{1}(1).value = 'image';
matlabbatch{4}.spm.temporal.st.scans{1}(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{4}.spm.temporal.st.scans{1}(1).tgt_spec{1}(2).value = 'e';
matlabbatch{4}.spm.temporal.st.scans{1}(1).sname = 'Realign & Unwarp: Unwarped Images (Sess 1)';
matlabbatch{4}.spm.temporal.st.scans{1}(1).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{4}.spm.temporal.st.scans{1}(1).src_output = substruct('.','sess', '()',{1}, '.','uwrfiles');
matlabbatch{4}.spm.temporal.st.scans{2}(1) = cfg_dep;
matlabbatch{4}.spm.temporal.st.scans{2}(1).tname = 'Session';
matlabbatch{4}.spm.temporal.st.scans{2}(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{4}.spm.temporal.st.scans{2}(1).tgt_spec{1}(1).value = 'image';
matlabbatch{4}.spm.temporal.st.scans{2}(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{4}.spm.temporal.st.scans{2}(1).tgt_spec{1}(2).value = 'e';
matlabbatch{4}.spm.temporal.st.scans{2}(1).sname = 'Realign & Unwarp: Unwarped Images (Sess 2)';
matlabbatch{4}.spm.temporal.st.scans{2}(1).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{4}.spm.temporal.st.scans{2}(1).src_output = substruct('.','sess', '()',{2}, '.','uwrfiles');
matlabbatch{4}.spm.temporal.st.scans{3}(1) = cfg_dep;
matlabbatch{4}.spm.temporal.st.scans{3}(1).tname = 'Session';
matlabbatch{4}.spm.temporal.st.scans{3}(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{4}.spm.temporal.st.scans{3}(1).tgt_spec{1}(1).value = 'image';
matlabbatch{4}.spm.temporal.st.scans{3}(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{4}.spm.temporal.st.scans{3}(1).tgt_spec{1}(2).value = 'e';
matlabbatch{4}.spm.temporal.st.scans{3}(1).sname = 'Realign & Unwarp: Unwarped Images (Sess 3)';
matlabbatch{4}.spm.temporal.st.scans{3}(1).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{4}.spm.temporal.st.scans{3}(1).src_output = substruct('.','sess', '()',{3}, '.','uwrfiles');
matlabbatch{4}.spm.temporal.st.nslices = 38;
matlabbatch{4}.spm.temporal.st.tr = 2;
matlabbatch{4}.spm.temporal.st.ta = 1.94736842105263;
matlabbatch{4}.spm.temporal.st.so = [1 7 13 19 25 31 37 2 8 14 20 26 32 38 3 9 15 21 27 33 4 10 16 22 28 34 5 11 17 23 29 35 6 12 18 24 30 36];
matlabbatch{4}.spm.temporal.st.refslice = 19;
matlabbatch{4}.spm.temporal.st.prefix = 'a';
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1) = cfg_dep;
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).tname = 'Reference Image';
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(1).value = 'image';
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).sname = 'Segment: Bias Corr Images';
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.spatial.coreg.estimate.ref(1).src_output = substruct('()',{1}, '.','biascorr', '()',{':'});
matlabbatch{5}.spm.spatial.coreg.estimate.source(1) = cfg_dep;
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).tname = 'Source Image';
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(1).value = 'image';
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).sname = 'Realign & Unwarp: Unwarped Mean Image';
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.spatial.coreg.estimate.source(1).src_output = substruct('.','meanuwr');
matlabbatch{5}.spm.spatial.coreg.estimate.other(1) = cfg_dep;
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).tname = 'Other Images';
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).tgt_spec{1}(1).value = 'image';
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).sname = 'Slice Timing: Slice Timing Corr. Images (Sess 1)';
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).src_exbranch = substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.spatial.coreg.estimate.other(1).src_output = substruct('()',{1}, '.','files');
matlabbatch{5}.spm.spatial.coreg.estimate.other(2) = cfg_dep;
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).tname = 'Other Images';
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).tgt_spec{1}(1).value = 'image';
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).sname = 'Slice Timing: Slice Timing Corr. Images (Sess 2)';
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).src_exbranch = substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.spatial.coreg.estimate.other(2).src_output = substruct('()',{2}, '.','files');
matlabbatch{5}.spm.spatial.coreg.estimate.other(3) = cfg_dep;
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).tname = 'Other Images';
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).tgt_spec{1}(1).value = 'image';
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).sname = 'Slice Timing: Slice Timing Corr. Images (Sess 3)';
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).src_exbranch = substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.spatial.coreg.estimate.other(3).src_output = substruct('()',{3}, '.','files');
matlabbatch{5}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{5}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{5}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{5}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tname = 'Parameter File';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).sname = 'Segment: Norm Params Subj->MNI';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).src_output = substruct('()',{1}, '.','snfile', '()',{':'});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tname = 'Images to Write';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(1).value = 'image';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).sname = 'Segment: Bias Corr Images';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).src_output = substruct('()',{1}, '.','biascorr', '()',{':'});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tname = 'Images to Write';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(1).value = 'image';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).sname = 'Coregister: Estimate: Coregistered Images';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).src_exbranch = substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).src_output = substruct('.','cfiles');
matlabbatch{6}.spm.spatial.normalise.write.roptions.preserve = 0;
matlabbatch{6}.spm.spatial.normalise.write.roptions.bb = [-78 -112 -50
                                                          78 76 85];
matlabbatch{6}.spm.spatial.normalise.write.roptions.vox = [2 2 2];
matlabbatch{6}.spm.spatial.normalise.write.roptions.interp = 1;
matlabbatch{6}.spm.spatial.normalise.write.roptions.wrap = [0 0 0];
matlabbatch{6}.spm.spatial.normalise.write.roptions.prefix = 'w';
matlabbatch{7}.spm.spatial.smooth.data(1) = cfg_dep;
matlabbatch{7}.spm.spatial.smooth.data(1).tname = 'Images to Smooth';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(1).value = 'image';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(2).value = 'e';
matlabbatch{7}.spm.spatial.smooth.data(1).sname = 'Segment: Bias Corr Images';
matlabbatch{7}.spm.spatial.smooth.data(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{7}.spm.spatial.smooth.data(1).src_output = substruct('()',{1}, '.','biascorr', '()',{':'});
matlabbatch{7}.spm.spatial.smooth.data(2) = cfg_dep;
matlabbatch{7}.spm.spatial.smooth.data(2).tname = 'Images to Smooth';
matlabbatch{7}.spm.spatial.smooth.data(2).tgt_spec{1}(1).name = 'filter';
matlabbatch{7}.spm.spatial.smooth.data(2).tgt_spec{1}(1).value = 'image';
matlabbatch{7}.spm.spatial.smooth.data(2).tgt_spec{1}(2).name = 'strtype';
matlabbatch{7}.spm.spatial.smooth.data(2).tgt_spec{1}(2).value = 'e';
matlabbatch{7}.spm.spatial.smooth.data(2).sname = 'Normalise: Write: Normalised Images (Subj 1)';
matlabbatch{7}.spm.spatial.smooth.data(2).src_exbranch = substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{7}.spm.spatial.smooth.data(2).src_output = substruct('()',{1}, '.','files');
matlabbatch{7}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{7}.spm.spatial.smooth.dtype = 16;
matlabbatch{7}.spm.spatial.smooth.im = 0;
matlabbatch{7}.spm.spatial.smooth.prefix = 's';
