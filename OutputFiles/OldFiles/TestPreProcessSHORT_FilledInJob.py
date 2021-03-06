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
g.entity('preproc:data',{'prov:type':'bundle','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.data'})
g.used('spm.spatial.preproc','preproc:data')
g.entity('preproc:/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/T1_P00004218_S0001.nii',{'prov:type':'spm:image','prov:value':'1'})
g.wasDerivedFrom('data','preproc:/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/T1_P00004218_S0001.nii')
g.entity('preproc:opts',{'prov:type':'bundle','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts'})
g.wasDerivedFrom('spm.spatial.preproc','preproc:opts')
g.entity('tpm')
g.wasDerivedFrom('opts','tpm')
g.entity('preproc:/share/data/data5/spm8/tpm/grey.nii',{'prov:type':'spm:image','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.tpm'})
g.wasDerivedFrom('tpm','preproc:/share/data/data5/spm8/tpm/grey.nii')
g.entity('preproc:/share/data/data5/spm8/tpm/white.nii',{'prov:type':'spm:image','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.tpm'})
g.wasDerivedFrom('tpm','preproc:/share/data/data5/spm8/tpm/white.nii')
g.entity('preproc:/share/data/data5/spm8/tpm/csf.nii',{'prov:type':'spm:image','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.tpm'})
g.wasDerivedFrom('tpm','preproc:/share/data/data5/spm8/tpm/csf.nii')
g.entity('preproc:ngaus',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.ngaus','prov:value':'[ 2; 2; 2; 4]'})
g.wasDerivedFrom('opts','preproc:ngaus')
g.entity('preproc:regtype',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.regtype','prov:value':'mni'})
g.wasDerivedFrom('opts','preproc:regtype')
g.entity('preproc:warpreg',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.warpreg','prov:value':'1'})
g.wasDerivedFrom('opts','preproc:warpreg')
g.entity('preproc:warpco',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.warpco','prov:value':'25'})
g.wasDerivedFrom('opts','preproc:warpco')
g.entity('preproc:biasreg',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.biasreg','prov:value':'0.0001'})
g.wasDerivedFrom('opts','preproc:biasreg')
g.entity('preproc:biasfwhm',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.biasfwhm','prov:value':'60'})
g.wasDerivedFrom('opts','preproc:biasfwhm')
g.entity('preproc:samp',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.samp','prov:value':'3'})
g.wasDerivedFrom('opts','preproc:samp')
g.entity('msk')
g.wasDerivedFrom('opts','msk')
g.entity('preproc:',{'prov:type':'spm:image','spm:structpath':'matlabbatch{1}.spm.spatial.preproc.opts.msk'})
g.wasDerivedFrom('msk','preproc:')
g.entity('output')
g.wasDerivedFrom('spm.spatial.preproc','output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c1T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c1T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc1T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc1T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc1T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc1T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c2T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c2T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc2T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc2T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc2T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc2T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c3T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c3T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc3T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc3T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc3T1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc3T1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii')
g.wasDerivedFrom('output','/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii')
g.activity('spm.temporal.st')
g.used('matlabbatch','spm.temporal.st')
g.entity('scans',{'prov:type':'spm:structure','spm:structpath':'matlabbatch{2}.spm.temporal.st.scans'})
g.used('spm.temporal.st','scans')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii',{'prov:type':'ImageIndex','prov:value':'1;2;3;4;5;6;7;8;9;10;','spm:structpath':'matlabbatch{2}.spm.temporal.st.scans{1}'})
g.used('scans','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii',{'prov:type':'ImageIndex','prov:value':'1;2;3;4;5;6;7;8;9;10;','spm:structpath':'matlabbatch{2}.spm.temporal.st.scans{2}'})
g.used('scans','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii')
g.entity('nslices_81472',{'prov:label':'JASON','prov:type':'parameter','prov:value':'41','spm:structpath':'matlabbatch{2}.spm.temporal.st.nslices'})
g.used('spm.temporal.st','nslices_81472')
g.entity('tr_90579',{'prov:label':'JASON','prov:type':'parameter','prov:value':'2','spm:structpath':'matlabbatch{2}.spm.temporal.st.tr'})
g.used('spm.temporal.st','tr_90579')
g.entity('ta_12699',{'prov:label':'JASON','prov:type':'parameter','prov:value':'1.9512','spm:structpath':'matlabbatch{2}.spm.temporal.st.ta'})
g.used('spm.temporal.st','ta_12699')
g.entity('so_91338',{'prov:label':'JASON','prov:type':'parameter','prov:value':'[ 1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40]','spm:structpath':'matlabbatch{2}.spm.temporal.st.so'})
g.used('spm.temporal.st','so_91338')
g.entity('refslice_63236',{'prov:label':'JASON','prov:type':'parameter','prov:value':'20','spm:structpath':'matlabbatch{2}.spm.temporal.st.refslice'})
g.used('spm.temporal.st','refslice_63236')
g.entity('prefix_9754',{'prov:label':'JASON','prov:type':'parameter','prov:value':'a','spm:structpath':'matlabbatch{2}.spm.temporal.st.prefix'})
g.used('spm.temporal.st','prefix_9754')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii',{'prov:type':'ImageIndex','prov:value':'1;2;3;4;5;6;7;8;9;10;'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii','spm.temporal.st')
g.activity('spm.spatial.realign.estwrite')
g.used('matlabbatch','spm.spatial.realign.estwrite')
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/TestPreProcessSHORT_FilledInJob.provn', 'wt') as fp:fp.writelines(g.get_provn())
