BaseDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles';
InFile = 'TestPreProcessSHORT_FilledInJobRECURSIVE.provn';

D = textread(fullfile(BaseDir,InFile),'%s','delimiter','\n');


%% rebuild the matlabbatch structure from the PROVN file
N = length(D);
StructName = 'matlabbatch';
eval(sprintf('%s={};',StructName));


for i = 1:N
    temp = D{i};
    % find entities
    SearchWord = 'entity';
    
    if ~isempty(strfind(temp,SearchWord)==1)
        %       fprintf(1,'%s\n',temp);
        % check to see if the entities are part of the structure
        temp = temp(length(SearchWord)+2:end-1);
        findStr = strfind(temp,StructName)==1;
        if findStr(1) == 1
            %fprintf(1,'%s\n',temp);
            % check to see if the line is NOT a substructure
            if length(temp) == (length(StructName)+1)
                % find which step this is
                step = str2num(temp(length(StructName)+1:end));
                eval(sprintf('%s{%d}={};',StructName,step));
                fprintf(1,'%s\n',temp);
                % find structure name path
            elseif length(temp)>(length(StructName)+1)
                % find the step again
                findDots = findstr(temp,'.');
                step = str2num(temp(length(StructName)+1:findDots(1)-1));
                findComma = findstr(temp,',');
                subStructPath = temp(length(StructName)+2:findComma(1)-1);
                % find the prov:value
                findProvValue = findstr(temp,'prov:value');
                % Then find the open/close quotes right after it
                if ~isempty(findProvValue)
                    findProvValueQuotes = findstr(temp(findProvValue:end),'"');
                    subStructValue = temp(findProvValue+findProvValueQuotes(1):...
                        findProvValue+findProvValueQuotes(2)-2);
                    subStructValue = str2num(subStructValue);
                    eval(sprintf('%s{%d}%s=%s;',StructName,step,subStructPath,'subStructValue'))
                    % else
                    % fprintf(1,'%s\n',temp);
                end
            end
        else
           % fprintf(1,'FOUND an IMAGE: %s\n',temp);
            % Found an image
            % check to see if it is of the "prefix" type meaning that it is
            % a derived image.
            % prefix is labeled under prov:label
            % find the label
            findProvLabel = findstr(temp,'prov:label');
            
            if ~isempty(findProvLabel)
                findProvLabelQuotes = findstr(temp(findProvLabel:end),'"');
                subStructLabel = temp(findProvLabel+findProvLabelQuotes(1):...
                    findProvLabel+findProvLabelQuotes(2)-2);
                if isempty(strfind(subStructLabel,'prefix'))
                    % find the step
                    findDots = findstr(subStructLabel,'.');
                    step = str2num(subStructLabel(length(StructName)+1:findDots(1)-1));
                    subStructPath = subStructLabel(findDots(1):end);
                    % find the value
                    findProvValue = findstr(temp,'prov:value');
                    findProvValueQuotes = findstr(temp(findProvValue:end),'"');
                    subStructValue = str2num(temp(findProvValue+findProvValueQuotes(1):...
                        findProvValue+findProvValueQuotes(2)-2));
                    % find the image name
                    findCommas = findstr(temp,',');
                    subStructImageName = temp(1:findCommas(1)-1);
                    % Create a structure of the image names and append
                    % the image locations in teh 4D file to the end of
                    % the names
                    dataArray = cell(length(subStructValue),1);
                    for k = 1:length(subStructValue)
                        dataArray{k}=sprintf('%s,%d\n',subStructImageName,subStructValue(k));
                    end
                    Str = sprintf('%s{%d}%s=%s;',StructName,step,subStructPath,'dataArray');
                    fprintf(1,'%s\n',Str);
                    eval(Str)
                    % also check to see if it is an output image from the preproc
                    % step since that is also a derived image
                    fprintf(1,'%s\n',temp);
                end
            end
        end
        
    end
end