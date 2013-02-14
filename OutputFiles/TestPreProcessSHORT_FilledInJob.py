import os
import sys
import datetime
from socket import gethostname
sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")
import prov.model as prov
from prov.model import Namespace, PROV
EX=Namespace("ex","http://www.example.com/")
g = prov.ProvBundle()
g.entity('matlabbatch')
g.activity('spm.spatial.preproc')
g.used('matlabbatch','spm.spatial.preproc')
g.entity('data_1')
g.used('spm.spatial.preproc','data_1')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/T1_P00004218_S0001.nii')
g.entity('output_1')
g.used('spm.spatial.preproc','output_1')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c1T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c1T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc1T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc1T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc1T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc1T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c2T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c2T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc2T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc2T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc2T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc2T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c3T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c3T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc3T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc3T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc3T1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc3T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii')
g.wasDerivedFrom('spm.spatial.preproc','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii')
g.entity('opts_1')
g.used('spm.spatial.preproc','opts_1')
g.activity('spm.temporal.st')
g.used('matlabbatch','spm.temporal.st')
g.entity('scans_2')
g.used('spm.temporal.st','scans_2')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii')
g.used('spm.temporal.st','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii')
g.used('spm.temporal.st','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii')
g.entity('nslices_2')
g.used('spm.temporal.st','nslices_2')
g.entity('tr_2')
g.used('spm.temporal.st','tr_2')
g.entity('ta_2')
g.used('spm.temporal.st','ta_2')
g.entity('so_2')
g.used('spm.temporal.st','so_2')
g.entity('refslice_2')
g.used('spm.temporal.st','refslice_2')
g.entity('prefix_2')
g.used('spm.temporal.st','prefix_2')
g.activity('spm.spatial.realign.estwrite')
g.used('matlabbatch','spm.spatial.realign.estwrite')
g.entity('data_3')
g.used('spm.spatial.realign.estwrite','data_3')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii')
g.used('spm.spatial.realign.estwrite','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii')
g.used('spm.spatial.realign.estwrite','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii')
g.entity('eoptions_3')
g.used('spm.spatial.realign.estwrite','eoptions_3')
g.entity('roptions_3')
g.used('spm.spatial.realign.estwrite','roptions_3')
g.activity('spm.spatial.coreg.estimate')
g.used('matlabbatch','spm.spatial.coreg.estimate')
g.entity('ref_4')
g.used('spm.spatial.coreg.estimate','ref_4')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii')
g.entity('source_4')
g.used('spm.spatial.coreg.estimate','source_4')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/meanaECF_r1_P00004218_S0001.nii')
g.entity('other_4')
g.used('spm.spatial.coreg.estimate','other_4')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii')
g.entity('eoptions_4')
g.used('spm.spatial.coreg.estimate','eoptions_4')
g.activity('spm.spatial.normalise.write')
g.used('matlabbatch','spm.spatial.normalise.write')
g.entity('subj_5')
g.used('spm.spatial.normalise.write','subj_5')
g.entity('roptions_5')
g.used('spm.spatial.normalise.write','roptions_5')
g.activity('spm.spatial.smooth')
g.used('matlabbatch','spm.spatial.smooth')
g.entity('data_6')
g.used('spm.spatial.smooth','data_6')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/waECF_r1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/wmeanaECF_r1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/waECF_r2_P00004218_S0001.nii')
g.entity('fwhm_6')
g.used('spm.spatial.smooth','fwhm_6')
g.entity('dtype_6')
g.used('spm.spatial.smooth','dtype_6')
g.entity('im_6')
g.used('spm.spatial.smooth','im_6')
g.entity('prefix_6')
g.used('spm.spatial.smooth','prefix_6')
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/TestPreProcessSHORT_FilledInJob.provn', 'wt') as fp:fp.writelines(g.get_provn())
