p = spm_provenance;
fn = fieldnames(SPM);
p.entity('SPM',{'nscan',SPM.nscan,'SPMid',SPM.SPMid,'swd',SPM.swd});
p.activity('Estimate');
p.used('Estimate', 'SPM');
for i=1:numel(fn)
   if isstruct(SPM.(fn{i}))
       fni = fieldnames(SPM.(fn{i}));
       attr = {};
       for j=1:numel(fni)
           val = SPM.(fn{i}).(fni{j});
           if ~((ischar(val) && numel(val) < 17) || ...
                (isnumeric(val) && numel(val) < 17))
               val = 'TBD';
           end
           attr = [attr {fni{j} val}];
       end
       p.entity(fn{i},attr);
       p.wasDerivedFrom(fn{i},'SPM');
   end
end
p.serialize
p.serialize('pdf');