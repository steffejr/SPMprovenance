import os
import sys
import datetime
from socket import gethostname
sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")
import prov.model as prov
from prov.model import Namespace, PROV
EX=Namespace("ex","http://www.example.com/")
# create the proveance
g = prov.ProvBundle()
# Create the first activity
act1=g.activity('nidm:bet2',datetime.datetime(2013,7,6,5,4,3),None,{PROV["type"]:EX["TestNameFile"]})
# create an entite to be used by this activity
in1=g.entity('InputImage1',{'prov:type':'neuroimage','prov:TR':'3.93'})
# create the outout from the first entity
out1=g.entity('OutputImage1')
# link the input and output to the activity
g.wasGeneratedBy(out1,act1)
g.used(act1,in1)
# create the entity that will be the collection of parameters
collect1=g.entity('parameters',{'prov:type':'prov:Collection','prov:type':'collection','prov:label':'bet_param'})
# create the parameters as entities
bet_param1=g.entity('bet:g',{'prov:type':'parameter','prov:value':'0.5'})
bet_param2=g.entity('bet:d',{'prov:type':'parameter','prov:value':'0.25'})
# link the parameters to the collection
g.hadMember(collect1,bet_param1)
g.hadMember(collect1,bet_param2)
# link the collection to the entity
g.used(act1,collect1)

# write the provenance to a file
with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/JasonTest1.provn', 'wt') as fp:
    fp.writelines(g.get_provn())

