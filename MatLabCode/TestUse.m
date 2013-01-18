% filename TestNeuroProv_011112
if not(libisloaded('libprov'))
    loadlibrary('/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/libprov.so','/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/provenance.h')
end
libfunctionsview libprov
if not(libisloaded('libneuroprov'))
    loadlibrary('/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/libneuroprov.so','/share/data/data9/jason/SPM_Provenance/ProvenanceLibrary/src/neuroprovenance.h')
end
libfunctionsview libneuroprov

if not(libisloaded('shrlibsample'))
    addpath /usr/local/matlab/extern/examples/shrlib/
    loadlibrary shrlibsample shrlibsample.h
end
%libfunctionsview shrlibsample

% Create the top level container
p_prov = calllib('libneuroprov','newProvenanceObject','TestSPM')

calllib('libprov','newAgent',p_prov)

p_proc = calllib('libneuroprov','newProcess',p_prov,datestr(now),datestr(now),...
    'ni:brain_extraction')

calllib('libneuroprov','newProcessInput',p_prov,p_proc,'name1','value1',[])
calllib('libneuroprov','newProcessInput',p_prov,p_proc,'name2','value2',[])
calllib('libneuroprov','printProvenance',p_prov,'TESTFILE_020812.xml')
