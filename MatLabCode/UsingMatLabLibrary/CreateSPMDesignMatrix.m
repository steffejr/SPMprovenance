Pick Contrast
Height Threshold
Cluster Threshold
Go forward to write out the summary information
Go backward to get at the design matrix
%%
p = spm_provenance;
p.entity('SPM',{'nscan',SPM.nscan,'swd',SPM.swd,'FWHM',SPM.xVol.FWHM,...
    'R',SPM.xVol.R,'S',SPM.xVol.S,...
    'DIM',SPM.xVol.DIM});
p.activity('Estimate');
p.used('Estimate', 'SPM');

NSess = length(SPM.Sess)
for i = 1:NSess
    SessionName = sprintf('Sess_%d',i);
    % each session is an entity
    % each regressor in a session is an entity
    p.entity(SessionName,{'col',SPM.Sess(i).col,'HParam',SPM.xX.K(i).HParam})
    p.wasDerivedFrom(SessionName,'SPM')
    Nreg = length(SPM.Sess(i).U);
    for j = 1:Nreg
        RegName = sprintf('%s_%d',SPM.Sess(i).U(j).name{1},i);
        
        p.entity(RegName,{'ons',SPM.Sess(i).U(j).ons,'dur',SPM.Sess(i).U(j).dur,...
            'Sess',i});
        p.wasDerivedFrom(RegName,SessionName);
    end
end


p.serialize

%%
p.serialize('pdf');
    