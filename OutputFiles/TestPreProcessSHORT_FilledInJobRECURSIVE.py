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
g.entity('matlabbatch1.spm',{'prov:type':'bundle','prov:label':'spm','spm:structpath':'matlabbatch1'})
g.used('matlabbatch1','matlabbatch1.spm')
g.entity('matlabbatch1.spm.spatial',{'prov:type':'bundle','prov:label':'spatial','spm:structpath':'matlabbatch1.spm'})
g.used('matlabbatch1.spm','matlabbatch1.spm.spatial')
g.entity('matlabbatch1.spm.spatial.preproc',{'prov:type':'bundle','prov:label':'preproc','spm:structpath':'matlabbatch1.spm.spatial'})
g.used('matlabbatch1.spm.spatial','matlabbatch1.spm.spatial.preproc')
g.entity('matlabbatch1.spm.spatial.preproc.data',{'prov:type':'bundle','prov:label':'data','spm:structpath':'matlabbatch1.spm.spatial.preproc'})
g.used('matlabbatch1.spm.spatial.preproc','matlabbatch1.spm.spatial.preproc.data')
g.entity('matlabbatch1.spm.spatial.preproc.output',{'prov:type':'bundle','prov:label':'output','spm:structpath':'matlabbatch1.spm.spatial.preproc'})
g.used('matlabbatch1.spm.spatial.preproc','matlabbatch1.spm.spatial.preproc.output')
g.entity('matlabbatch1.spm.spatial.preproc.output.GM',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'GM','prov:value':'[ 1 1 1]'})
g.used('matlabbatch1.spm.spatial.preproc.output','matlabbatch1.spm.spatial.preproc.output.GM')
g.entity('matlabbatch1.spm.spatial.preproc.output.WM',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'WM','prov:value':'[ 1 1 1]'})
g.used('matlabbatch1.spm.spatial.preproc.output','matlabbatch1.spm.spatial.preproc.output.WM')
g.entity('matlabbatch1.spm.spatial.preproc.output.CSF',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'CSF','prov:value':'[ 1 1 1]'})
g.used('matlabbatch1.spm.spatial.preproc.output','matlabbatch1.spm.spatial.preproc.output.CSF')
g.entity('matlabbatch1.spm.spatial.preproc.output.biascor',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'biascor','prov:value':'1'})
g.used('matlabbatch1.spm.spatial.preproc.output','matlabbatch1.spm.spatial.preproc.output.biascor')
g.entity('matlabbatch1.spm.spatial.preproc.output.cleanup',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'cleanup','prov:value':'0'})
g.used('matlabbatch1.spm.spatial.preproc.output','matlabbatch1.spm.spatial.preproc.output.cleanup')
g.entity('matlabbatch1.spm.spatial.preproc.opts',{'prov:type':'bundle','prov:label':'opts','spm:structpath':'matlabbatch1.spm.spatial.preproc'})
g.used('matlabbatch1.spm.spatial.preproc','matlabbatch1.spm.spatial.preproc.opts')
g.entity('matlabbatch1.spm.spatial.preproc.opts.tpm',{'prov:type':'bundle','prov:label':'tpm','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.tpm')
g.entity('matlabbatch1.spm.spatial.preproc.opts.ngaus',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts','prov:label':'ngaus','prov:value':'[ 2; 2; 2; 4]'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.ngaus')
g.entity('matlabbatch1.spm.spatial.preproc.opts.regtype',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts','prov:label':'regtype','prov:value':'mni'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.regtype')
g.entity('matlabbatch1.spm.spatial.preproc.opts.warpreg',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts','prov:label':'warpreg','prov:value':'1'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.warpreg')
g.entity('matlabbatch1.spm.spatial.preproc.opts.warpco',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts','prov:label':'warpco','prov:value':'25'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.warpco')
g.entity('matlabbatch1.spm.spatial.preproc.opts.biasreg',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts','prov:label':'biasreg','prov:value':'0.0001'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.biasreg')
g.entity('matlabbatch1.spm.spatial.preproc.opts.biasfwhm',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts','prov:label':'biasfwhm','prov:value':'60'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.biasfwhm')
g.entity('matlabbatch1.spm.spatial.preproc.opts.samp',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts','prov:label':'samp','prov:value':'3'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.samp')
g.entity('matlabbatch1.spm.spatial.preproc.opts.msk',{'prov:type':'bundle','prov:label':'msk','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts'})
g.used('matlabbatch1.spm.spatial.preproc.opts','matlabbatch1.spm.spatial.preproc.opts.msk')
g.used('matlabbatch','matlabbatch1.spm')
g.entity('matlabbatch2.spm',{'prov:type':'bundle','prov:label':'spm','spm:structpath':'matlabbatch2'})
g.used('matlabbatch2','matlabbatch2.spm')
g.entity('matlabbatch2.spm.temporal',{'prov:type':'bundle','prov:label':'temporal','spm:structpath':'matlabbatch2.spm'})
g.used('matlabbatch2.spm','matlabbatch2.spm.temporal')
g.entity('matlabbatch2.spm.temporal.st',{'prov:type':'bundle','prov:label':'st','spm:structpath':'matlabbatch2.spm.temporal'})
g.used('matlabbatch2.spm.temporal','matlabbatch2.spm.temporal.st')
g.entity('matlabbatch2.spm.temporal.st.scans',{'prov:type':'bundle','prov:label':'scans','spm:structpath':'matlabbatch2.spm.temporal.st'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.scans')
g.entity('matlabbatch2.spm.temporal.st.nslices',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'nslices','prov:value':'41'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.nslices')
g.entity('matlabbatch2.spm.temporal.st.tr',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'tr','prov:value':'2'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.tr')
g.entity('matlabbatch2.spm.temporal.st.ta',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'ta','prov:value':'1.9512'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.ta')
g.entity('matlabbatch2.spm.temporal.st.refslice',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'refslice','prov:value':'20'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.refslice')
g.entity('matlabbatch2.spm.temporal.st.prefix',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'prefix','prov:value':'a'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.prefix')
g.used('matlabbatch','matlabbatch2.spm')
g.entity('matlabbatch3.spm',{'prov:type':'bundle','prov:label':'spm','spm:structpath':'matlabbatch3'})
g.used('matlabbatch3','matlabbatch3.spm')
g.entity('matlabbatch3.spm.spatial',{'prov:type':'bundle','prov:label':'spatial','spm:structpath':'matlabbatch3.spm'})
g.used('matlabbatch3.spm','matlabbatch3.spm.spatial')
g.entity('matlabbatch3.spm.spatial.realign',{'prov:type':'bundle','prov:label':'realign','spm:structpath':'matlabbatch3.spm.spatial'})
g.used('matlabbatch3.spm.spatial','matlabbatch3.spm.spatial.realign')
g.entity('matlabbatch3.spm.spatial.realign.estwrite',{'prov:type':'bundle','prov:label':'estwrite','spm:structpath':'matlabbatch3.spm.spatial.realign'})
g.used('matlabbatch3.spm.spatial.realign','matlabbatch3.spm.spatial.realign.estwrite')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.data',{'prov:type':'bundle','prov:label':'data','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite'})
g.used('matlabbatch3.spm.spatial.realign.estwrite','matlabbatch3.spm.spatial.realign.estwrite.data')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions',{'prov:type':'bundle','prov:label':'eoptions','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite'})
g.used('matlabbatch3.spm.spatial.realign.estwrite','matlabbatch3.spm.spatial.realign.estwrite.eoptions')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions.quality',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.eoptions','prov:label':'quality','prov:value':'0.9'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.eoptions','matlabbatch3.spm.spatial.realign.estwrite.eoptions.quality')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions.sep',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.eoptions','prov:label':'sep','prov:value':'4'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.eoptions','matlabbatch3.spm.spatial.realign.estwrite.eoptions.sep')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions.fwhm',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.eoptions','prov:label':'fwhm','prov:value':'5'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.eoptions','matlabbatch3.spm.spatial.realign.estwrite.eoptions.fwhm')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions.rtm',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.eoptions','prov:label':'rtm','prov:value':'1'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.eoptions','matlabbatch3.spm.spatial.realign.estwrite.eoptions.rtm')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions.interp',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.eoptions','prov:label':'interp','prov:value':'2'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.eoptions','matlabbatch3.spm.spatial.realign.estwrite.eoptions.interp')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions.wrap',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.eoptions','prov:label':'wrap','prov:value':'[ 0 0 0]'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.eoptions','matlabbatch3.spm.spatial.realign.estwrite.eoptions.wrap')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.eoptions.weight',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.eoptions','prov:label':'weight','prov:value':''})
g.used('matlabbatch3.spm.spatial.realign.estwrite.eoptions','matlabbatch3.spm.spatial.realign.estwrite.eoptions.weight')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.roptions',{'prov:type':'bundle','prov:label':'roptions','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite'})
g.used('matlabbatch3.spm.spatial.realign.estwrite','matlabbatch3.spm.spatial.realign.estwrite.roptions')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.roptions.which',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.roptions','prov:label':'which','prov:value':'[ 0 1]'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.roptions','matlabbatch3.spm.spatial.realign.estwrite.roptions.which')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.roptions.interp',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.roptions','prov:label':'interp','prov:value':'4'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.roptions','matlabbatch3.spm.spatial.realign.estwrite.roptions.interp')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.roptions.wrap',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.roptions','prov:label':'wrap','prov:value':'[ 0 0 0]'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.roptions','matlabbatch3.spm.spatial.realign.estwrite.roptions.wrap')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.roptions.mask',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.roptions','prov:label':'mask','prov:value':'1'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.roptions','matlabbatch3.spm.spatial.realign.estwrite.roptions.mask')
g.entity('matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.roptions','prov:label':'prefix','prov:value':'r'})
g.used('matlabbatch3.spm.spatial.realign.estwrite.roptions','matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix')
g.used('matlabbatch','matlabbatch3.spm')
g.wasInfluencedBy('matlabbatch3.spm','matlabbatch2.spm')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c1T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c1T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc1T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc1T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc1T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc1T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c2T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c2T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc2T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc2T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc2T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc2T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c3T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/c3T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc3T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mwc3T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc3T1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/wc3T1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii',{'prov:label':'matlabbatch1matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/T1/mT1_P00004218_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii',{'prov:label':'matlabbatch2matlabbatch2matlabbatch2.spm.temporal.st.prefix','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10]','spm:structpath':'matlabbatch2matlabbatch2matlabbatch2.spm.temporal.st.prefix'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii','matlabbatch2matlabbatch2.spm.temporal.st.prefix')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii',{'prov:label':'matlabbatch2matlabbatch2matlabbatch2.spm.temporal.st.prefix','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10]','spm:structpath':'matlabbatch2matlabbatch2matlabbatch2.spm.temporal.st.prefix'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii','matlabbatch2matlabbatch2.spm.temporal.st.prefix')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/raECF_r1_P00004218_S0001.nii',{'prov:label':'matlabbatch3matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10]','spm:structpath':'matlabbatch3matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/raECF_r1_P00004218_S0001.nii','matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/raECF_r2_P00004218_S0001.nii',{'prov:label':'matlabbatch3matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10]','spm:structpath':'matlabbatch3matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix'})
g.wasDerivedFrom('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/raECF_r2_P00004218_S0001.nii','matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii',{'prov:label':'matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.data','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10]','spm:structpath':'matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.data'})
g.used('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r1/aECF_r1_P00004218_S0001.nii','matlabbatch3.spm.spatial.realign.estwrite.data')
g.entity('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii',{'prov:label':'matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.data','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10]','spm:structpath':'matlabbatch3matlabbatch3.spm.spatial.realign.estwrite.data'})
g.used('/share/data/studies/CogRes/Subjects/P00004218/S0001/ECF_r2/aECF_r2_P00004218_S0001.nii','matlabbatch3.spm.spatial.realign.estwrite.data')
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/TestPreProcessSHORT_FilledInJobRECURSIVE.provn', 'wt') as fp:fp.writelines(g.get_provn())
