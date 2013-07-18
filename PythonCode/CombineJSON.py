import json
import os
from pprint import pprint
BaseDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles'
File = 'TestSegmentSliceTimeRealignCoregNormSmoothRECURSIVE.json'

fid = open(os.path.join(BaseDir,File),'r')
data = json.load(fid)

pprint(data)
