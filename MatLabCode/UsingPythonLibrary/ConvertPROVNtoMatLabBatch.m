BaseDir = '/Users/jason/Documents/ProvenanceTools/SPMprovenance/OutputFiles';
InFile = 'TestPreProcessSHORT_FilledInJobRECURSIVE.provn';
% InFile = 'SegmentONLYJob_FilledInJobRECURSIVE.provn';
% InFile = 'TestSliceTimeRECURSIVE.provn';
% InFile = 'TestRealignRECURSIVE.provn';
% InFile = 'TestCoRegRECURSIVE.provn';
% InFile = 'TestNormalizeRECURSIVE.provn';
% InFile = 'TestSmoothRECURSIVE.provn';
InFile = 'TestSegmentSliceTimeRealignCoregNormRECURSIVE.provn';
InFile = 'TestSegmentSliceTimeRealignCoregNormSmoothRECURSIVE.provn';
InFile = 'PreProcJob_FilledInJobRECURSIVE.provn';
D = textread(fullfile(BaseDir,InFile),'%s','delimiter','\n');

%% rebuild the matlabbatch structure from the PROVN file
N = length(D);
StructName = 'matlabbatch';
eval(sprintf('%s={};',StructName));


for i = 1:N
    temp = D{i};
    % find entities
    SearchWord = 'entity';
    % This looks through the PROVN file for entities
    if ~isempty(strfind(temp,SearchWord)==1)
        %       fprintf(1,'%s\n',temp);
        % check to see if the entities are part of the structure
     %   fprintf(1,'ENTITY: %s\n',temp)
        temp = temp(length(SearchWord)+2:end-1);
        findStr = strfind(temp,StructName)==1;
        if findStr(1) == 1
            %fprintf(1,'%s\n',temp);
            % check to see if the line is NOT a substructure
            if length(temp) == (length(StructName)+1)
                % find which step this is
                step = str2num(temp(length(StructName)+1:end));
                Str = sprintf('%s{%d}={};',StructName,step);
                eval(Str);
                fprintf(1,'CHUNK 1: %s\n',Str);
                %fprintf(1,'%s\n',temp);
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
                    Str = sprintf('%s{%d}%s=%s;',StructName,step,subStructPath,'subStructValue');
                    eval(Str)
                    fprintf(1,'CHUNK 2: %s\n',Str);
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
                        % make sure to only add the numeric suffix to image
                        % files
                        [PathName FileName Ext] = fileparts(deblank(subStructImageName));
                        if ~strmatch(Ext,'.mat')
                            dataArray{k}=deblank(sprintf('%s,%d\n',deblank(subStructImageName),subStructValue(k)));
                        else
                            dataArray{k}=deblank(sprintf('%s\n',deblank(subStructImageName)));
                        end
                    end
                    % Check to see if this is the preproc step. If so then
                    % do not write the output images to the matlabbatch
                    % structure because they are interpretted images and
                    % not explicitly defined.
                    if findstr(subStructPath,'preproc.output')
                        fprintf(1,'FOUND PREPROC OUTPUT\n');
                    else
                        % The definition of the data here is put into
                        % brackets. This works for the following steps:
                        % slice timing, realignment
                        % but not for 
                        % coregistration
                        if ~isempty(strfind(subStructPath,'spatial.preproc'))||...
                                ~isempty(strfind(subStructPath,'spatial.coreg'))||...
                                ~isempty(strfind(subStructPath,'spatial.normalise'))||...
                                ~isempty(strfind(subStructPath,'spatial.smooth'))
                            % notice the absence of teh brackets after the
                            % equal sign
                            Str = sprintf('%s{%d}%s=%s;',StructName,step,subStructPath,'dataArray');
                            fprintf(1,'CHUNK 3: %s\n',Str);
                            eval(Str)
                        else
                            Str = sprintf('%s{%d}%s={%s};',StructName,step,subStructPath,'dataArray');
                            fprintf(1,'CHUNK 3: %s\n',Str);
                            eval(Str)
                        end
                    end
                end
            end
        end
        
    end
end