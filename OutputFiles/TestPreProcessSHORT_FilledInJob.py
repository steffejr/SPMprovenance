import os
import sys
import datetime
from socket import gethostname
sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")
import prov.model as prov
from prov.model import Namespace, PROV
EX=Namespace("ex","http://www.example.com/")
g = prov.ProvBundle()
g.activity('.spm.spatial.preproc')
g.activity('.spm.temporal.st')
g.activity('.spm.spatial.realign.estwrite')
g.activity('.spm.spatial.coreg.estimate')
g.activity('.spm.spatial.normalise.write')
g.activity('.spm.spatial.smooth')
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/TestPreProcessSHORT_FilledInJob.provn', 'wt') as fp:fp.writelines(g.get_provn())
