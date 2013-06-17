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
g.entity('matlabbatch1')
g.used('matlabbatch','matlabbatch1')
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
g.entity('matlabbatch1.spm.spatial.preproc.output.GM',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'GM','prov:value':'[ 1 1 0]'})
g.used('matlabbatch1.spm.spatial.preproc.output','matlabbatch1.spm.spatial.preproc.output.GM')
g.entity('matlabbatch1.spm.spatial.preproc.output.WM',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'WM','prov:value':'[ 1 1 0]'})
g.used('matlabbatch1.spm.spatial.preproc.output','matlabbatch1.spm.spatial.preproc.output.WM')
g.entity('matlabbatch1.spm.spatial.preproc.output.CSF',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch1.spm.spatial.preproc.output','prov:label':'CSF','prov:value':'[ 1 1 0]'})
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
g.entity('matlabbatch2')
g.used('matlabbatch','matlabbatch2')
g.entity('matlabbatch2.spm',{'prov:type':'bundle','prov:label':'spm','spm:structpath':'matlabbatch2'})
g.used('matlabbatch2','matlabbatch2.spm')
g.entity('matlabbatch2.spm.temporal',{'prov:type':'bundle','prov:label':'temporal','spm:structpath':'matlabbatch2.spm'})
g.used('matlabbatch2.spm','matlabbatch2.spm.temporal')
g.entity('matlabbatch2.spm.temporal.st',{'prov:type':'bundle','prov:label':'st','spm:structpath':'matlabbatch2.spm.temporal'})
g.used('matlabbatch2.spm.temporal','matlabbatch2.spm.temporal.st')
g.entity('matlabbatch2.spm.temporal.st.scans',{'prov:type':'bundle','prov:label':'scans','spm:structpath':'matlabbatch2.spm.temporal.st'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.scans')
g.entity('matlabbatch2.spm.temporal.st.nslices',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'nslices','prov:value':'38'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.nslices')
g.entity('matlabbatch2.spm.temporal.st.tr',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'tr','prov:value':'2'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.tr')
g.entity('matlabbatch2.spm.temporal.st.ta',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'ta','prov:value':'1.9474'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.ta')
g.entity('matlabbatch2.spm.temporal.st.so',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'so','prov:value':'[ 1 7 13 19 25 31 37 2 8 14 20 26 32 38 3 9 15 21 27 33 4 10 16 22 28 34 5 11 17 23 29 35 6 12 18 24 30 36]'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.so')
g.entity('matlabbatch2.spm.temporal.st.refslice',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'refslice','prov:value':'19'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.refslice')
g.entity('matlabbatch2.spm.temporal.st.prefix',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch2.spm.temporal.st','prov:label':'prefix','prov:value':'a'})
g.used('matlabbatch2.spm.temporal.st','matlabbatch2.spm.temporal.st.prefix')
g.entity('matlabbatch3')
g.used('matlabbatch','matlabbatch3')
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
g.wasInfluencedBy('matlabbatch3.spm','matlabbatch2.spm')
g.entity('matlabbatch4')
g.used('matlabbatch','matlabbatch4')
g.entity('matlabbatch4.spm',{'prov:type':'bundle','prov:label':'spm','spm:structpath':'matlabbatch4'})
g.used('matlabbatch4','matlabbatch4.spm')
g.entity('matlabbatch4.spm.spatial',{'prov:type':'bundle','prov:label':'spatial','spm:structpath':'matlabbatch4.spm'})
g.used('matlabbatch4.spm','matlabbatch4.spm.spatial')
g.entity('matlabbatch4.spm.spatial.coreg',{'prov:type':'bundle','prov:label':'coreg','spm:structpath':'matlabbatch4.spm.spatial'})
g.used('matlabbatch4.spm.spatial','matlabbatch4.spm.spatial.coreg')
g.entity('matlabbatch4.spm.spatial.coreg.estimate',{'prov:type':'bundle','prov:label':'estimate','spm:structpath':'matlabbatch4.spm.spatial.coreg'})
g.used('matlabbatch4.spm.spatial.coreg','matlabbatch4.spm.spatial.coreg.estimate')
g.entity('matlabbatch4.spm.spatial.coreg.estimate.ref',{'prov:type':'bundle','prov:label':'ref','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate'})
g.used('matlabbatch4.spm.spatial.coreg.estimate','matlabbatch4.spm.spatial.coreg.estimate.ref')
g.entity('matlabbatch4.spm.spatial.coreg.estimate.source',{'prov:type':'bundle','prov:label':'source','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate'})
g.used('matlabbatch4.spm.spatial.coreg.estimate','matlabbatch4.spm.spatial.coreg.estimate.source')
g.entity('matlabbatch4.spm.spatial.coreg.estimate.eoptions',{'prov:type':'bundle','prov:label':'eoptions','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate'})
g.used('matlabbatch4.spm.spatial.coreg.estimate','matlabbatch4.spm.spatial.coreg.estimate.eoptions')
g.entity('matlabbatch4.spm.spatial.coreg.estimate.eoptions.cost_fun',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate.eoptions','prov:label':'cost_fun','prov:value':'nmi'})
g.used('matlabbatch4.spm.spatial.coreg.estimate.eoptions','matlabbatch4.spm.spatial.coreg.estimate.eoptions.cost_fun')
g.entity('matlabbatch4.spm.spatial.coreg.estimate.eoptions.sep',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate.eoptions','prov:label':'sep','prov:value':'[ 4 2]'})
g.used('matlabbatch4.spm.spatial.coreg.estimate.eoptions','matlabbatch4.spm.spatial.coreg.estimate.eoptions.sep')
g.entity('matlabbatch4.spm.spatial.coreg.estimate.eoptions.tol',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate.eoptions','prov:label':'tol','prov:value':'[ 0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001]'})
g.used('matlabbatch4.spm.spatial.coreg.estimate.eoptions','matlabbatch4.spm.spatial.coreg.estimate.eoptions.tol')
g.entity('matlabbatch4.spm.spatial.coreg.estimate.eoptions.fwhm',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate.eoptions','prov:label':'fwhm','prov:value':'[ 7 7]'})
g.used('matlabbatch4.spm.spatial.coreg.estimate.eoptions','matlabbatch4.spm.spatial.coreg.estimate.eoptions.fwhm')
g.wasInfluencedBy('matlabbatch4.spm','matlabbatch3.spm')
g.entity('matlabbatch5')
g.used('matlabbatch','matlabbatch5')
g.entity('matlabbatch5.spm',{'prov:type':'bundle','prov:label':'spm','spm:structpath':'matlabbatch5'})
g.used('matlabbatch5','matlabbatch5.spm')
g.entity('matlabbatch5.spm.spatial',{'prov:type':'bundle','prov:label':'spatial','spm:structpath':'matlabbatch5.spm'})
g.used('matlabbatch5.spm','matlabbatch5.spm.spatial')
g.entity('matlabbatch5.spm.spatial.normalise',{'prov:type':'bundle','prov:label':'normalise','spm:structpath':'matlabbatch5.spm.spatial'})
g.used('matlabbatch5.spm.spatial','matlabbatch5.spm.spatial.normalise')
g.entity('matlabbatch5.spm.spatial.normalise.write',{'prov:type':'bundle','prov:label':'write','spm:structpath':'matlabbatch5.spm.spatial.normalise'})
g.used('matlabbatch5.spm.spatial.normalise','matlabbatch5.spm.spatial.normalise.write')
g.entity('matlabbatch5.spm.spatial.normalise.write.subj',{'prov:type':'bundle','prov:label':'subj','spm:structpath':'matlabbatch5.spm.spatial.normalise.write'})
g.used('matlabbatch5.spm.spatial.normalise.write','matlabbatch5.spm.spatial.normalise.write.subj')
g.entity('matlabbatch5.spm.spatial.normalise.write.subj.matname',{'prov:type':'bundle','prov:label':'matname','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.subj'})
g.used('matlabbatch5.spm.spatial.normalise.write.subj','matlabbatch5.spm.spatial.normalise.write.subj.matname')
g.entity('matlabbatch5.spm.spatial.normalise.write.roptions',{'prov:type':'bundle','prov:label':'roptions','spm:structpath':'matlabbatch5.spm.spatial.normalise.write'})
g.used('matlabbatch5.spm.spatial.normalise.write','matlabbatch5.spm.spatial.normalise.write.roptions')
g.entity('matlabbatch5.spm.spatial.normalise.write.roptions.preserve',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.roptions','prov:label':'preserve','prov:value':'0'})
g.used('matlabbatch5.spm.spatial.normalise.write.roptions','matlabbatch5.spm.spatial.normalise.write.roptions.preserve')
g.entity('matlabbatch5.spm.spatial.normalise.write.roptions.bb',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.roptions','prov:label':'bb','prov:value':'[ -78 -112 -50; 78 76 85]'})
g.used('matlabbatch5.spm.spatial.normalise.write.roptions','matlabbatch5.spm.spatial.normalise.write.roptions.bb')
g.entity('matlabbatch5.spm.spatial.normalise.write.roptions.vox',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.roptions','prov:label':'vox','prov:value':'[ 2 2 2]'})
g.used('matlabbatch5.spm.spatial.normalise.write.roptions','matlabbatch5.spm.spatial.normalise.write.roptions.vox')
g.entity('matlabbatch5.spm.spatial.normalise.write.roptions.interp',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.roptions','prov:label':'interp','prov:value':'1'})
g.used('matlabbatch5.spm.spatial.normalise.write.roptions','matlabbatch5.spm.spatial.normalise.write.roptions.interp')
g.entity('matlabbatch5.spm.spatial.normalise.write.roptions.wrap',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.roptions','prov:label':'wrap','prov:value':'[ 0 0 0]'})
g.used('matlabbatch5.spm.spatial.normalise.write.roptions','matlabbatch5.spm.spatial.normalise.write.roptions.wrap')
g.entity('matlabbatch5.spm.spatial.normalise.write.roptions.prefix',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.roptions','prov:label':'prefix','prov:value':'w'})
g.used('matlabbatch5.spm.spatial.normalise.write.roptions','matlabbatch5.spm.spatial.normalise.write.roptions.prefix')
g.wasInfluencedBy('matlabbatch5.spm','matlabbatch4.spm')
g.entity('matlabbatch6')
g.used('matlabbatch','matlabbatch6')
g.entity('matlabbatch6.spm',{'prov:type':'bundle','prov:label':'spm','spm:structpath':'matlabbatch6'})
g.used('matlabbatch6','matlabbatch6.spm')
g.entity('matlabbatch6.spm.spatial',{'prov:type':'bundle','prov:label':'spatial','spm:structpath':'matlabbatch6.spm'})
g.used('matlabbatch6.spm','matlabbatch6.spm.spatial')
g.entity('matlabbatch6.spm.spatial.smooth',{'prov:type':'bundle','prov:label':'smooth','spm:structpath':'matlabbatch6.spm.spatial'})
g.used('matlabbatch6.spm.spatial','matlabbatch6.spm.spatial.smooth')
g.entity('matlabbatch6.spm.spatial.smooth.fwhm',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch6.spm.spatial.smooth','prov:label':'fwhm','prov:value':'[ 8 8 8]'})
g.used('matlabbatch6.spm.spatial.smooth','matlabbatch6.spm.spatial.smooth.fwhm')
g.entity('matlabbatch6.spm.spatial.smooth.dtype',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch6.spm.spatial.smooth','prov:label':'dtype','prov:value':'0'})
g.used('matlabbatch6.spm.spatial.smooth','matlabbatch6.spm.spatial.smooth.dtype')
g.entity('matlabbatch6.spm.spatial.smooth.im',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch6.spm.spatial.smooth','prov:label':'im','prov:value':'0'})
g.used('matlabbatch6.spm.spatial.smooth','matlabbatch6.spm.spatial.smooth.im')
g.entity('matlabbatch6.spm.spatial.smooth.prefix',{'prov:type':'spm:parameter','spm:structpath':'matlabbatch6.spm.spatial.smooth','prov:label':'prefix','prov:value':'s'})
g.used('matlabbatch6.spm.spatial.smooth','matlabbatch6.spm.spatial.smooth.prefix')
g.wasInfluencedBy('matlabbatch6.spm','matlabbatch5.spm')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/c1T1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/c1T1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mwc1T1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mwc1T1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/c2T1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/c2T1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mwc2T1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mwc2T1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/c3T1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/c3T1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mwc3T1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mwc3T1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mT1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.output','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.output'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mT1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.output')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/aiLS_r1_P00002021_S0001.nii',{'prov:label':'matlabbatch2.spm.temporal.st.prefix','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240]','spm:structpath':'matlabbatch2.spm.temporal.st.prefix'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/aiLS_r1_P00002021_S0001.nii','matlabbatch2.spm.temporal.st.prefix')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/raiLS_r1_P00002021_S0001.nii',{'prov:label':'matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240]','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/raiLS_r1_P00002021_S0001.nii','matlabbatch3.spm.spatial.realign.estwrite.roptions.prefix')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/T1_P00002021_S0001_seg_sn.mat',{'prov:label':'matlabbatch5.spm.spatial.normalise.write.roptions.prefix','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.roptions.prefix'})
g.wasDerivedFrom('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/T1_P00002021_S0001_seg_sn.mat','matlabbatch5.spm.spatial.normalise.write.roptions.prefix')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/T1_P00002021_S0001.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.data','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.data'})
g.used('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/T1_P00002021_S0001.nii','matlabbatch1.spm.spatial.preproc.data')
g.entity('/Users/jason/Desktop/JasonApps/spm8/tpm/csf.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.opts.tpm','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts.tpm'})
g.used('/Users/jason/Desktop/JasonApps/spm8/tpm/csf.nii','matlabbatch1.spm.spatial.preproc.opts.tpm')
g.entity('/Users/jason/Desktop/JasonApps/spm8/tpm/grey.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.opts.tpm','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts.tpm'})
g.used('/Users/jason/Desktop/JasonApps/spm8/tpm/grey.nii','matlabbatch1.spm.spatial.preproc.opts.tpm')
g.entity('/Users/jason/Desktop/JasonApps/spm8/tpm/white.nii',{'prov:label':'matlabbatch1.spm.spatial.preproc.opts.tpm','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts.tpm'})
g.used('/Users/jason/Desktop/JasonApps/spm8/tpm/white.nii','matlabbatch1.spm.spatial.preproc.opts.tpm')
g.entity('',{'prov:label':'matlabbatch1.spm.spatial.preproc.opts.msk','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch1.spm.spatial.preproc.opts.msk'})
g.used('','matlabbatch1.spm.spatial.preproc.opts.msk')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/iLS_r1_P00002021_S0001.nii',{'prov:label':'matlabbatch2.spm.temporal.st.scans','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240]','spm:structpath':'matlabbatch2.spm.temporal.st.scans'})
g.used('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/iLS_r1_P00002021_S0001.nii','matlabbatch2.spm.temporal.st.scans')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/aiLS_r1_P00002021_S0001.nii',{'prov:label':'matlabbatch3.spm.spatial.realign.estwrite.data','prov:type':'ImageIndex','prov:value':'[ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240]','spm:structpath':'matlabbatch3.spm.spatial.realign.estwrite.data'})
g.used('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/aiLS_r1_P00002021_S0001.nii','matlabbatch3.spm.spatial.realign.estwrite.data')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mT1_P00002021_S0001.nii',{'prov:label':'matlabbatch4.spm.spatial.coreg.estimate.ref','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate.ref'})
g.used('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/mT1_P00002021_S0001.nii','matlabbatch4.spm.spatial.coreg.estimate.ref')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/meanaiLS_r1_P00002021_S0001.nii',{'prov:label':'matlabbatch4.spm.spatial.coreg.estimate.source','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch4.spm.spatial.coreg.estimate.source'})
g.used('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/iLS_r1/meanaiLS_r1_P00002021_S0001.nii','matlabbatch4.spm.spatial.coreg.estimate.source')
g.entity('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/T1_P00002021_S0001_seg_sn.mat',{'prov:label':'matlabbatch5.spm.spatial.normalise.write.subj.matname','prov:type':'ImageIndex','prov:value':'1','spm:structpath':'matlabbatch5.spm.spatial.normalise.write.subj.matname'})
g.used('/Users/jason/Documents/MyData/TestSPMProv/OneSubject/T1/T1_P00002021_S0001_seg_sn.mat','matlabbatch5.spm.spatial.normalise.write.subj.matname')
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/PreProcJob_FilledInJobRECURSIVE.provn', 'wt') as fp:fp.writelines(g.get_provn())
