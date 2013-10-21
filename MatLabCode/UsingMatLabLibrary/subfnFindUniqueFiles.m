function [UniqueImages ListOfIndices] = subfnFindUniqueFiles(Input)
% find if any of the images in
if ischar(Input)
    
    findComma = findstr(Input,',');
    if length(findComma)
        InputNoIndex = Input(1:findComma-1);
        Index = str2num(Input(findComma+1:end));
    else
        InputNoIndex = Input;
        Index = 1;
        
    end
    ListOfIndices = {1};
    UniqueImages{1} = InputNoIndex;
else
    
    N = length(Input);
    InputNoIndex = {};
    Index = zeros(1,N);
    for i = 1:N
        findComma = findstr(Input{i},',');
        if length(findComma)
            InputNoIndex{i} = Input{i}(1:findComma-1);
            Index(i) = str2num(Input{i}(findComma+1:end));
        else
            InputNoIndex{i} = Input{i};
            Index(i) = 1;
        end
    end
    
    [UniqueImages I J] = unique(InputNoIndex);
    ListOfIndices = {};
    for i = 1:length(UniqueImages)
        ListOfIndices{i} = Index(find(J==i));
    end
end

