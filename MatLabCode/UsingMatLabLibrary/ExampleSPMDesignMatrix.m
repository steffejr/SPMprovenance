
InDir = '/Users/jason/Dropbox/SteffenerColumbia/Scripts/ProvenanceTools/SPMprovenance/InputFiles';
load(fullfile(InDir,'SPM'));
FieldNames = fieldnames(SPM);
OutDir = '/Users/jason/Dropbox/SteffenerColumbia/Scripts/ProvenanceTools/SPMprovenance/OutputFiles';
fid = fopen(fullfile(OutDir,'TestSPMDesign.provn'),'w');

% initialize the top-level entity
TopLevelString = sprintf('e1 = subfnEntity(fid,''SPM'',');
% create the activity
a1 = subfnActivity(fid,'Estimate');
% how many fields
NFields = length(FieldNames);
% create a holder for the entity names for use with linkages
eList = {};
count = 1;
for i = 1:NFields
    % get a field from SPM
    CurrentField = getfield(SPM,FieldNames{i});
    if isstruct(CurrentField) & length(CurrentField)==1
        FirstLevelFields = fieldnames(CurrentField);
        Attributes = cell(length(FirstLevelFields),2);
        AttributeList = ',';
        for j = 1:length(FirstLevelFields)
            %Attributes{j,1} = FirstLevelFields{j};
            %Attributes{j,2} = 'value';
            CurrentValue = getfield(getfield(SPM,FieldNames{i}),FirstLevelFields{j});
            if isnumeric(CurrentValue) && prod(size(CurrentValue))<17
                AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},subfnConvertFieldToString(CurrentValue));
            elseif isstruct(CurrentValue)
                AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},'TBD-STRUCT');
            elseif ischar(CurrentValue) && prod(size(CurrentValue))<100
                AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},CurrentValue);
            else
                AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},'TBD');
            end
        end
        % remove last comma
        AttributeList = AttributeList(1:end-1);
        Str = sprintf('subfnEntity(fid,''%s''%s)',FieldNames{i},AttributeList);
        eList{count} = eval(Str);
        count = count + 1;
    elseif isstruct(CurrentField) & length(CurrentField) > 1
        for k = 1:length(CurrentField)
            FirstLevelFields = fieldnames(CurrentField(k));
            Attributes = cell(length(FirstLevelFields),2);
            AttributeList = ',';
            for j = 1:length(FirstLevelFields)
                %Attributes{j,1} = FirstLevelFields{j};
                %Attributes{j,2} = 'value';
                CurrentStructure = getfield(SPM,FieldNames{i})
                CurrentValue = getfield(CurrentStructure(k),FirstLevelFields{j});
                if isnumeric(CurrentValue) && prod(size(CurrentValue))<17
                    AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},subfnConvertFieldToString(CurrentValue));
                elseif isstruct(CurrentValue)
                    AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},'TBD-STRUCT');
                elseif ischar(CurrentValue) && prod(size(CurrentValue))<100
                    AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},CurrentValue);
                else
                    AttributeList = sprintf('%s''%s'',''%s'',',AttributeList,FirstLevelFields{j},'TBD');
                end
            end
            % remove last comma
            AttributeList = AttributeList(1:end-1);
            Str = sprintf('subfnEntity(fid,''%s_%d''%s)',FieldNames{i},k,AttributeList);
            eList{count} = eval(Str);
            count = count + 1;
        end
    else
        CurrentValue = getfield(SPM,FieldNames{i});
        TopLevelString = sprintf('%s''%s'',''%s'',',TopLevelString,FieldNames{i},subfnConvertFieldToString(CurrentValue));
%        AttributeList ='';
%        Str = sprintf('subfnEntity(fid,''%s''%s)',FieldNames{i},AttributeList);
%        eList{i} = eval(Str);
    end
end
TopLevelString = [TopLevelString(1:end-1) ');'];
eval(TopLevelString);
for i = 1:length(eList)
    d1 = subfnwasDerivedFrom(fid,e1,eList{i},'',a1);
end
id = subfnUsed(fid,a1,e1);
fclose(fid)