import os
import sys
import datetime
from socket import gethostname
sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")
import prov.model as prov
from prov.model import Namespace, PROV
EX=Namespace("ex","http://www.example.com/")
g = prov.ProvBundle()
g.activity('matlabbatch{1}.spm.spatial.preproc')
g.activity('matlabbatch{2}.spm.temporal.st')
g.activity('matlabbatch{3}.spm.spatial.realign.estwrite')
g.activity('matlabbatch{4}.spm.spatial.coreg.estimate')
g.activity('matlabbatch{5}.spm.spatial.normalise.write')
g.activity('matlabbatch{6}.spm.spatial.smooth')
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/TestPreProcessSHORT_FilledInJob.provn', 'wt') as fp:fp.writelines(g.get_provn())
