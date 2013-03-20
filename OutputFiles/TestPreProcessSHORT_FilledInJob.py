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
g.activity('spm.temporal.st')
g.used('matlabbatch','spm.temporal.st')
g.entity('scans',{'prov:type':'spm:structure','spm:structpath':'matlabbatch{2}.spm.temporal.st.scans'})
g.used('spm.temporal.st','scans')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii',{'prov:type':'ImageIndex','prov:value':'1;2;3;4;5;6;7;8;9;10;','spm:structpath':'matlabbatch{2}.spm.temporal.st.scans{1}'})
g.used('scans','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/ECF_r1_P00004218_S0001.nii')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii',{'prov:type':'ImageIndex','prov:value':'1;2;3;4;5;6;7;8;9;10;','spm:structpath':'matlabbatch{2}.spm.temporal.st.scans{2}'})
g.used('scans','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/ECF_r2_P00004218_S0001.nii')
g.entity('nslices_34998',{'prov:type':'parameter','prov:value':'41','spm:structpath':'matlabbatch{2}.spm.temporal.st.nslices'})
g.used('spm.temporal.st','nslices_34998')
g.entity('tr_19660',{'prov:type':'parameter','prov:value':'2','spm:structpath':'matlabbatch{2}.spm.temporal.st.tr'})
g.used('spm.temporal.st','tr_19660')
g.entity('ta_25108',{'prov:type':'parameter','prov:value':'1.9512','spm:structpath':'matlabbatch{2}.spm.temporal.st.ta'})
g.used('spm.temporal.st','ta_25108')
g.entity('so_61604',{'prov:type':'parameter','prov:value':'[ 1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40]','spm:structpath':'matlabbatch{2}.spm.temporal.st.so'})
g.used('spm.temporal.st','so_61604')
g.entity('refslice_47329',{'prov:type':'parameter','prov:value':'20','spm:structpath':'matlabbatch{2}.spm.temporal.st.refslice'})
g.used('spm.temporal.st','refslice_47329')
g.entity('prefix_35166',{'prov:type':'parameter','prov:value':'a','spm:structpath':'matlabbatch{2}.spm.temporal.st.prefix'})
g.used('spm.temporal.st','prefix_35166')
g.entity('output_83083',{'prov:type':'spm:structure'})
g.wasDerivedFrom('spm.temporal.st','ouput_83083')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii',{'prov:type':'ImageIndex','prov:value':'1;2;3;4;5;6;7;8;9;10;'})
g.wasDerivedFrom('ouput_83083','/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii')
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/TestPreProcessSHORT_FilledInJob.provn', 'wt') as fp:fp.writelines(g.get_provn())
