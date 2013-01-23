import os
import sys
import datetime
from socket import gethostname
sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")
import prov.model as prov
from prov.model import Namespace, PROV
EX=Namespace("ex","http://www.example.com/")

g = prov.ProvBundle()
#act1=g.activity('bet',other_attributes={'prov:g':'0.35','prov:d':'0.5'})
act1=g.activity('nidm:bet2',datetime.datetime(2013,7,6,5,4,3),None,{PROV["type"]:EX["TestNameFile"],PROV["parameter"]:"g=5",PROV["g"]:'0.4'})
act2=g.activity('SpatialNormalization')

in1=g.entity('InputImage1',{'prov:type':'neuroimage','prov:TR':'3.93'})
out1=g.entity('OutputImage1')
g.wasGeneratedBy(out1,act1)
g.used(act1,in1)
g.used(act2,out1)




with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/JasonTest1.provn', 'wt') as fp:
    fp.writelines(g.get_provn())


# What we need to know is how to assign types to different entities. These would be to specifiy that an entity is an image, a parameter, a verctor, etc. Then we need to determine how to assign parameters to activities. Should teh parameters be entities on their own?
# We can simply set all parameters to be entities and say that an activity used them