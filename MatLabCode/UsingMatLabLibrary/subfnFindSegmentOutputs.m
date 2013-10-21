function [OutputFiles OutputLabels] = subfnFindSegmentOutputs(InputFile,OutputStruct)

OutputFiles = {};
OutputLabels = {};
[PathName, FileName, Ext] = fileparts(char(InputFile));
% Strip the ,# from the Ext 
Ext = Ext(1:4);

SM = spm_cfg_preproc;
prefix = {'c' 'mwc' 'wc'};
labels = {'Modulated Normalised' 'Unmodulated Normalised' 'Native Space'};

Outfieldnames = fieldnames(OutputStruct);
OutputIndex = 2;

for j = 1:3
    v = getfield(OutputStruct,Outfieldnames{j});
    for i = 1:length(SM.val{OutputIndex}.val{j}.values)
%         for i = 1:8
%             fprintf(1,'%d\t',SM.val{OutputIndex}.val{j}.values{i})
%             fprintf(1,'%s\n',SM.val{OutputIndex}.val{j}.labels{i})
%         end
        if sum(SM.val{OutputIndex}.val{j}.values{i} == v) == length(v)
            index = i;
            TissueName = SM.val{OutputIndex}.val{j}.name;
            TissueTag = SM.val{OutputIndex}.val{j}.tag;
            FindCurrentSelections = find(v);
            OutputPrefix = prefix(FindCurrentSelections);
            OutLabels = labels(FindCurrentSelections);
            for k = 1:length(OutputPrefix)
                OutName = fullfile(PathName,[OutputPrefix{k} num2str(j) FileName Ext]);
                OutputFiles{length(OutputFiles)+1} = OutName;
                OutputLabels{length(OutputLabels)+1} = [TissueName ': ' OutLabels{k}];
               % fprintf(1,'%s\n',OutName);
            end
        end
    end
end
% Check for bias correction

v = getfield(OutputStruct,Outfieldnames{4});
prefix = {'m'};
if (SM.val{OutputIndex}.val{4}.values{1} == v)
    OutName = fullfile(PathName,[prefix{1}  FileName Ext]);
    OutputFiles{length(OutputFiles)+1} = OutName;
    OutputLabels{length(OutputLabels)+1} = SM.val{OutputIndex}.val{4}.name;
    %fprintf(1,'%s\n',OutName);
end
