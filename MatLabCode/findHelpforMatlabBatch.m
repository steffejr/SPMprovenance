function findHelpforMatlabBatch(matlabbatch)

N = length(matlabbatch);
% find the level 3 fieldnames
for i = 1:N
    % This all works for preproc/segment. But it doesn;t work so well for
    % realign because realign has a top level choice of
    % estimate/reslice/estreslice. Then under this there are the parameters
    % and choices. It would be nice to NOT have special conditions based
    % on what choice wa made.
    Level2 = fieldnames(matlabbatch{i}.spm);
    %fieldnames(['matlabbatch{' num2str(i) '}.spm.' Level2{1}])
    S = getfield(matlabbatch{i}.spm,Level2{1});
    Level3 = fieldnames(S);
    % Once the level 3 field name is found load up the configuration file
    % for this command
    ConfigFileName = ['spm_cfg_' Level3{1}];
    ConfigStruct = eval(ConfigFileName);
    NConfigSteps = length(ConfigStruct.val);
    for j = 1:NConfigSteps
        NConfigSubSteps = length(ConfigStruct.val{j}.val);
        % This is the name of this substep in the matlab batch
        SubStepName = ConfigStruct.val{j}.tag;
        if NConfigSubSteps
            % Then there are substeps where the user selects an option and
            % these options need to be decoded
            % First check to see which option the user selected and then
            % try to decode it.
            S2 = getfield(S,Level3{1},SubStepName);
            for k = 1:NConfigSubSteps
                SubStepHelp = ConfigStruct.val{j}.val{k}.help{:};
                UserChoice = getfield(S2,ConfigStruct.val{j}.val{k}.tag)
                % Check to see if the user has a list of choices for this
                % step. If so extract the choice made by the user and teh
                % description for that choice.
                try getfield(ConfigStruct.val{j}.val{k},'values');
                    for m = 1:length(ConfigStruct.val{j}.val{k}.values)
                        if strcmp(UserChoice,ConfigStruct.val{j}.val{k}.values{m}) | (UserChoice==ConfigStruct.val{j}.val{k}.values{m})
                        %    strcmp(UserChoice,ConfigStruct.val{j}.val{k}.values{m})
                            UserChoiceLabel = ConfigStruct.val{j}.val{k}.labels{m}
                            UserChoiceHelp = ConfigStruct.val{j}.val{k}.help{1}
                        end
                    end
                end
            end
        end
    end
end