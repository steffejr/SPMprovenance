function MatchImage = subfnFindMatch(ListOfInPutImages,ListOfOutPutImages,SearchImage)
MatchImage = {};

% Check to see if this input image is already in the
% ListOfInputImages
% for kk = 1:length(ListOfInPutImages)
%     try
%     if ~isempty(ListOfInPutImages{kk})
%         for jj = 1:length(ListOfInPutImages{kk})
%             if strcmp(SearchImage,ListOfInPutImages{kk}{jj}.Files)
%                 fprintf(1,'HELLO -- FOUND INPUT MATCH: %s \n',SearchImage);
%                 MatchImage = SearchImage;
%             end
%         end
%     end
%     catch
%         fprintf(1,'IN: %s, jj=%d, kk=%d\n',SearchImage,jj,kk);
%     end
% end
for kk = 1:length(ListOfOutPutImages)
    if ~isempty(ListOfOutPutImages{kk})
        try
            for jj = 1:length(ListOfOutPutImages{kk})
                
                if strcmp(SearchImage,ListOfOutPutImages{kk}{jj}.Files)
                    %fprintf(1,'HELLO -- FOUND OUTPUT MATCH: %s\n',SearchImage);
                    MatchImage.Files = SearchImage;
                    MatchImage.Entity = ListOfOutPutImages{kk}{jj}.Entity;
                    % Find step
                    fDOT = findstr(ListOfOutPutImages{kk}{jj}.Entity,'.');
                    step = ListOfOutPutImages{kk}{jj}.Entity(length('matlabbatch')+1:fDOT(1)-1);
                    %step = ListOfOutPutImages{kk}{jj}.Entity(fDOT
                    MatchImage.step = str2num(step);
                end
            end
        catch
            fprintf(1,'OUT: %s, jj=%d, kk=%d\n',SearchImage,jj,kk);
        end
    end
    
end

