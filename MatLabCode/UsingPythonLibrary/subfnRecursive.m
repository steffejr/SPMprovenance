function calledBy = subfnRecursive(inStruct,calledBy)
% The aim of this is to create a recursive function to burrow down a
% structure and write out the pieces
%if isstruct(inStruct)
Flag = 1;
fieldNames = fieldnames(inStruct);
for i = 1:length(fieldNames)
    %fprintf(1,'OutPath: %s\n',calledBy);
    if isstruct(getfield(inStruct,fieldNames{i}))
        fprintf(1,'Field name: %s\n',fieldNames{i});
        Dots = findstr(calledBy,'.');
        if ~isempty(Dots) & Flag
           calledBy = calledBy(1:Dots(end)-1);
        end
        calledBy = sprintf('%s.%s',calledBy,fieldNames{i})
        subfnRecursive(getfield(inStruct,fieldNames{i}),calledBy);
        
    elseif iscell(getfield(inStruct,fieldNames{i}))
        fprintf(1,'Field name: %s\n',fieldNames{i});
        fprintf(1,'Found cell\n');
    else
        
     
        Flag = 0;
        fprintf(1,'Found: %s.%s: %s\n',calledBy,fieldNames{i},num2str(getfield(inStruct,fieldNames{i})));
      %  fprintf(1,'Called BY %s\n',calledBy);
    end
end
