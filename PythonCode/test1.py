import os
import sys
from socket import gethostname
sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")
import prov.model as prov

from prov.model import ProvBundle, Namespace, Literal, PROV, XSD, Identifier
import datetime

ex = Namespace('ex', 'http://example/')

g = ProvBundle()
g.add_namespace("dcterms","http://purl.org/dc/terms/")

g.entity(ex['article'], {'dcterms:title': "Crime rises in cities"})
g.entity(ex['dataSet1'])
g.entity(ex['dataSet2'])
g.entity(ex['regionList'])
g.entity(ex['composition'])
g.entity(ex['chart1'])
g.entity(ex['chart2'])

g.activity(ex['compile'])
g.activity(ex['compose'])
g.activity(ex['illustrate'])

g.used('ex:compose', 'ex:dataSet1', other_attributes={'prov:role' : "ex:dataToCompose"})
g.used('ex:compose', 'ex:regionList', other_attributes={'prov:role' : "ex:regionsToAggregateBy"})
g.wasGeneratedBy('ex:composition', 'ex:compose')

g.used('ex:illustrate', 'ex:composition')
g.wasGeneratedBy('ex:chart1', 'ex:illustrate')

g.agent('ex:derek', {'prov:type': "prov:Person", 'foaf:givenName': "Derek", 'foaf:mbox': "<mailto:derek@example.org>"})
g.wasAssociatedWith('ex:compose', 'ex:derek')
g.wasAssociatedWith('ex:illustrate', 'ex:derek')

g.agent('ex:chartgen', {'prov:type': "prov:Organization", 'foaf:name' : "Chart Generators Inc"})
g.actedOnBehalfOf('ex:derek', 'ex:chartgen', 'ex:compose')
g.wasAttributedTo('ex:chart1', 'ex:derek')

g.wasRevisionOf('ex:dataSet2', 'ex:dataSet1')
g.wasDerivedFrom('ex:chart2', 'ex:dataSet2')

with open('/Users/jason/Documents/ProvenanceTools/JasonTest3.provn', 'wt') as fp:
    fp.writelines(g.get_provn())
