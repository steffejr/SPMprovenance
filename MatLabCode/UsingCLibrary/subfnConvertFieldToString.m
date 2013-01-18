function OutStr = subfnConvertFieldToString(Efield)
% Some numerical parameters are actually vectors or
% matrices
if isnumeric(Efield)
    if length(Efield)>1
        [MM NN] = size(Efield);
        OutStr = '[';
        for mm = 1:MM
            for nn = 1:NN
                OutStr = [OutStr ' ' num2str(Efield(mm,nn))];
            end
            OutStr = [OutStr ';'];
        end
        % remove the last semicolon
        OutStr = OutStr(1:end-1);
        OutStr = [OutStr ']'];
    else
        OutStr = num2str(Efield);
    end
else
    OutStr = Efield;
end