SM = spm_cfg_smooth
for i = 1:length(SM.val)
    SM.val{i}.help{1}
end
InVal = 0;
for i = 1:length(SM.val{3}.values)
    if (InVal==SM.val{3}.values{i})
        break
    end
end
SM.val{3}.labels{i}

if isempty(SM.val{1}.val)
    % then just print the help
else
    % then print the help along with the descriptions regarding the choice
    % made by the user.
    
% for the segment step    
    for i =1:length( SM.val{2}.val{1}.values)
        if VAL==SM.val{2}.val{1}.values{i}
            break
        end
    end