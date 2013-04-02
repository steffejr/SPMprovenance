PythonCode='/Users/jason/Documents/ProvenanceTools/SPMprovenance/MatLabCode/UsingPythonLibrary';
addpath(PythonCode)

Infile = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/InputFiles/TestPreProcessSHORT_FilledInJob.m';
OutDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles';
% load the input job
[inPathName inFileName] = fileparts(Infile);
cd(inPathName)
eval(inFileName)

clear ListOfInPutImages ListOfOutPutImages
Nsteps = length(matlabbatch);
ListOfInPutImages{Nsteps} = {};
ListOfOutPutImages{Nsteps} = {};
%fid = 1;


Outfile = fullfile(OutDir,[inFileName 'RECURSIVE.py']);
% open the output file
fid = fopen(Outfile,'w');
% fid = 1
% initialize the file and create the provenance structure
fprintf(fid,'import os\n');
fprintf(fid,'import sys\n');
fprintf(fid,'import datetime\n');
fprintf(fid,'from socket import gethostname\n');
fprintf(fid,'sys.path.append("/Users/jason/Documents/ProvenanceTools/prov")\n');
fprintf(fid,'import prov.model as prov\n');
fprintf(fid,'from prov.model import Namespace, PROV\n');
fprintf(fid,'EX=Namespace("ex","http://www.example.com/")\n');
% create the proveance
fprintf(fid,'g = prov.ProvBundle()\n');
fprintf(fid,'g.entity(''%s'')\n','matlabbatch');
for i = 1:Nsteps
    [ListOfInPutImages,ListOfOutPutImages] = fn_structdisp(matlabbatch{i},i,fid,ListOfInPutImages,ListOfOutPutImages);
    % after each step make sure to link it to the master entity
    stepName = fieldnames(matlabbatch{i});
    fprintf(fid,'g.used(''%s'',''matlabbatch%d.%s'')\n','matlabbatch',i,stepName{1});
end
PROVNoutfile = fullfile(OutDir,[inFileName 'RECURSIVE.provn']);
SVGOutFile = fullfile(OutDir,[inFileName '.svg']);
fprintf(fid,'with open(''%s'', ''wt'') as fp:fp.writelines(g.get_provn())\n',PROVNoutfile)
% close the file
fclose(fid)
% run it through python
python(Outfile)

