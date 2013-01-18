print "Hello from the TestProvToolbox function"

import os
import sys
from socket import gethostname
sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")
import prov.model as prov


g = prov.ProvBundle()
ag1=g.agent('JASON')
a1=g.activity('GoPlay')
e1=g.entity('Ball')
g.wasDerivedFrom(e1,e1)
g.wasAssociatedWith(a1,ag1)
g.actedOnBehalfOf(ag1,ag1)
g.wasAttributedTo(e1,ag1)
g.used(a1,e1)
g.wasGeneratedBy(e1,a1)
g.wasInformedBy(a1,a1)


with open('/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles/JasonTest.provn', 'wt') as fp:
    fp.writelines(g.get_provn())
