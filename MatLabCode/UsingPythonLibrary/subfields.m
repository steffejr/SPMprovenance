function sf = subfields(ThisStruct)
   sf = fieldnames(ThisStruct);
   for fnum = 1:length(sf)
     if isstruct(ThisStruct.(sf{fnum}))
       cn = subfields(ThisStruct.(sf{fnum}));
       sf(fnum) = cellstr( horzcat(repmat([sf{fnum} '.'], length(cn), 1), char(cn)));
     end
   end
end