clear mex
clear functions
clear all
% Load up the libraries needed
if not(libisloaded('libprov'))
    loadlibrary('/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/src/libprov.so','/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/src/provenance.h')
end
%libfunctionsview libprov

if not(libisloaded('libneuroprov'))
    loadlibrary('/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/src/libneuroprov.so','/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/src/neuroprovenance.h')
end
%libfunctionsview libneuroprov

if not(libisloaded('shrlibsample'))
    addpath /usr/local/matlab/extern/examples/shrlib/
    loadlibrary shrlibsample shrlibsample.h
end
%libfunctionsview shrlibsample



% Locate the FILLED IN SPM job
JobFile = '/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/SPMJobs/SegmentONLYJob_FilledInJob.m'
JobFile = '/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/SPMJobs/TestPreProcessSHORT_FilledInJob.m'

SPM8toProv(JobFile)

