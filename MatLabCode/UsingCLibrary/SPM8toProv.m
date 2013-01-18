function SPM8toProv(JobFile)
% Notes:
% Every time an input entity is to be created check the list of files in
% the output to see if it already exists. Then do not create a new entity
% but just a dependency
%
% Add attribute to the parameters to provide descriptions from the CFG
% files.


OutDir = '/share/data/users/js2746_Jason/SPM_Provenance/ProvenanceLibrary/XMLFiles';
OutName = 'SPMProv_051612_SHORTv5';
OutFile = fullfile(OutDir,[OutName '.xml']);
% Create the top level container
p_prov = calllib('libneuroprov','newProvenanceObject','OutName');
% create an agent
%calllib('libprov','newAgent',p_prov);

% Execute the job file so that it creates the matlabbatch
[PathName FileName] = fileparts(JobFile);
cd(PathName)
eval(FileName);
% now there is the variable matlabbatch in the work space


Nsteps = length(matlabbatch);
% Use this list to keep track of the outputs so that if an input has the
% same names as an output then it can be used as a dependency.
ListOfInPutImages = {};
ListOfOutPutImages = {};

for i = 1:Nsteps
    ListOfInPutImages{i} = {};
    ListOfOutPutImages{i} = {};
    % Set the flags for determining if output needs to be written
    WhichFlag = 0;
    PrefixFlag = 0;
    % Find out how many levels there are. This is important because not all
    % steps are described at the same level in the batch file.
    Levels = {};
    count = 1;
    Levels{1} = char(fieldnames(matlabbatch{i})); % This typically equals spm
    Flag = 1;
    while Flag
        Str = ['matlabbatch{' num2str(i) '}' ];
        for j = 1:count
            Str = [Str '.' char(Levels{j})];
        end
        count = count + 1;
        temp = (fieldnames(eval([Str])));
        if length(temp) > 1
            Flag = 0;
        else
            Levels{count} = char(temp);
        end
    end
    % Get the help info
    
    ProcessInput = ['matlabbatch{' num2str(i) '}'];
    for j = 1:length(Levels)
        ProcessInput = sprintf('%s.%s',ProcessInput,Levels{j});
    end
    p_proc = calllib('libneuroprov','newProcess',p_prov,datestr(now),datestr(now),ProcessInput);
    % Now figure out which are imput images, input parameters and output
    % images
    
    Parameters = fieldnames(eval(ProcessInput));
    
    for j = 1:length(Parameters)
        D = eval([ProcessInput '.' Parameters{j}]);
        % determine if this is the output for the segment tool
        if ~isempty(strmatch(Parameters{j},'output') & strmatch(Levels{end},'preproc'))
            InputFile = eval([ProcessInput '.' Parameters{1}]);
            OutputStruct = eval([ProcessInput '.' Parameters{j}]);
        %    OutputFiles = subfnFindSegmentOutputs(InputFile,OutputStruct);
            [OutputFiles OutputLabels] = subfnFindSegmentOutputs(InputFile,OutputStruct);
            
            for kk = 1:length(OutputFiles)
                output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',OutputFiles{kk},OutputLabels{kk});
                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Ptr = output_id;
                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Files = OutputFiles{kk};
                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Indices = OutputLabels{kk};
                
            end
        end
        % if D is a cell assume it is image data
        if iscell(D)
            % but is this a cell of cells or just a cell of images
            for k = 1:length(D)
                % Check to see if D is a 4-D nifti file
                flag = 0;
                if iscell(D{k})
                    
                    [UniqueImages ListOfIndices] = subfnFindUniqueFiles(D{k});
                    % Once unique images are found, check to see if
                    % these images are output images from any other
                    % processes
                    for mm = 1:length(UniqueImages)
                        for jj = 1:length(ListOfOutPutImages)
                            for kk = 1:length(ListOfOutPutImages{jj})
                                ListOfOutPutImages{jj}{kk}.Files;
                                % see if the filename is the same
                                if strcmp(UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Files)
                                    % then check to see if the indices
                                    % are the same
                                    if ~isempty(true(ListOfIndices{1} == str2num(ListOfOutPutImages{jj}{kk}.Indices)))
                                        fprintf(1,'Found a dependency: %s\n\t%s,Pointer: %s\n',ProcessInput,UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Ptr);
                                    end
                                    
                                end
                            end
                        end
                    end
                    
                    OutStr = subfnConvertFieldToString(ListOfIndices{m});
                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Files = UniqueImages{m};
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = ListOfIndices{m};
                
                    
                    % Single image
                    
                else
                    flag = 1;
                    break 
                end
            end
            if flag == 1
                [UniqueImages ListOfIndices] = subfnFindUniqueFiles(D);
                for mm = 1:length(UniqueImages)
                    for jj = 1:length(ListOfOutPutImages)
                        for kk = 1:length(ListOfOutPutImages{jj})
                            ListOfOutPutImages{jj}{kk}.Files;
                            % see if the filename is the same
                            if strcmp(UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Files)
                                % then check to see if the indices
                                % are the same
                                fprintf(1,'Found a dependency: %s\n\t%s,Pointer: %s\n',ProcessInput,UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Ptr);
                            end
                        end
                    end
                end
                for m = 1:length(UniqueImages)
                    OutStr = subfnConvertFieldToString(ListOfIndices{m});
                    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Files = UniqueImages{m};
                    ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = ListOfIndices{m};
                end
            end
            %input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI:singleImage',D{k},'N/A');
            
            
            %[UniqueImages ListOfIndices] = subfnFindUniqueFiles(D)
            %for m = 1:length(UniqueImages)
            %    OutStr = subfnConvertFieldToString(ListOfIndices{m})
            %    input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI:singleImage',UniqueImages{m},OutStr);
            %end
            
        % Structure of images or some parameters
        elseif isstruct(D)
            Dfieldnames = fieldnames(D);
            for k = 1:length(Dfieldnames)
                Efield = getfield(D,Dfieldnames{k});
                if iscell(Efield)
                    % Therefore this is most likely images.
                    %ImageDescription = SM.val{j}.val{k}.name;
                    % Check the help to see if there is a description for
                    % this input image
                    
                    try 
                        ProcessName = Levels{3};
%                          if length(Levels)>3
%                              for mm = 4:length(Levels)
%                                  ProcessName = [ProcessName '_' Levels{mm}];
%                              end
%                          end
                       SM = eval(['spm_cfg_' ProcessName]);
                       ImageDescription  = SM.val{j}.val{k}.name;
                    catch me
                        ImageDescription = 'N/A';
                    end
                    % Add image
                    %for m = 1:length(Efield)
                    [UniqueImages ListOfIndices] = subfnFindUniqueFiles(Efield);
                    for mm = 1:length(UniqueImages)
                        for jj = 1:length(ListOfOutPutImages)
                            for kk = 1:length(ListOfOutPutImages{jj})
                                ListOfOutPutImages{jj}{kk}.Files;
                                % see if the filename is the same
                                if strcmp(UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Files)
                                    % then check to see if the indices
                                    % are the same
                                    fprintf(1,'Found a dependency: %s\n\t%s,Pointer: %s\n',ProcessInput,UniqueImages{mm},ListOfOutPutImages{jj}{kk}.Ptr);
                                end
                            end
                        end
                    end
                    for m = 1:length(UniqueImages)
                        OutStr = subfnConvertFieldToString(ListOfIndices{m});
                            input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',UniqueImages{m},OutStr);
                            ListOfInPutImages{i}{length(ListOfInPutImages{i})+1}.Ptr = input_id;
                            ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Files = UniqueImages{m};
                            ListOfInPutImages{i}{length(ListOfInPutImages{i})}.Indices = ListOfIndices{m};
                        end
                       %input_id = calllib('libneuroprov','newProcessInput',p_prov,p_proc,'Input NIFTI',Efield{m},ImageDescription); 
                    %end
                else
                    OutStr = subfnConvertFieldToString(Efield);
                    % Check to see if the parameter is called prefix. If so then
                    % create outputs based on the inputs, but also check to see if
                    % there is a field called which.
                    % Now if there IS a field called which then do not
                    % write all the images based on the PREFIX field.
                    if strcmp(Dfieldnames{k},'which')
                        fprintf(1,'FOUND WHICH\n');
                        WhichFlag = 1;
                        ProcessName = Levels{3};

                        SM = eval(['spm_cfg_' ProcessName]);
                        % double check that we have the correct Config Info
                        if strcmp(SM.values{j}.val{j}.val{k}.tag,'which')
                            for kk = 1:length(SM.values{j}.val{j}.val{k}.values)
                                if sum(SM.values{j}.val{j}.val{k}.values{kk} == Efield)==length(Efield)
                                    ImagesToCreate = deblank(SM.values{j}.val{j}.val{k}.labels{kk});
                                end
                            end
                        end
                        
                        switch ImagesToCreate
 %% NEED TO FINISH HERE                                                           
                            case ' Mean Image Only'
                                [PathName FileName Ext] = fileparts(ListOfInPutImages{i}{1}.Files);
                                % Note that this is a special case because
                                % only the mean image is created
                                OutStrFileName = '1';
                                outname = fullfile(PathName,['mean' FileName Ext]);
                                output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',outname, '1');
                                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Ptr = output_id;
                                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Files = outname;
                                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Indices = OutStrFileName;
                            case ' All Images (1..n)'  
                                for mm = 1:length(ListOfInPutImages{i})
                                    output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',ListOfInPutImages{i}{mm}.Files, ListOfInPutImages{i}{mm}.Indices);
                                end

                            case 'Images 2..n'  
                                for mm = 1:length(ListOfInPutImages{i})
                                    output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',ListOfInPutImages{i}{mm}.Files, ListOfInPutImages{i}{mm}.Indices(2:end));
                                end
                            case ' All Images + Mean Image'
                                for mm = 1:length(ListOfInPutImages{i})
                                    output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',ListOfInPutImages{i}{mm}.Files, ListOfInPutImages{i}{mm}.Indices);
                                end
                                [PathName FileName Ext] = fileparts(ListOfInPutImages{i}{1}.Files);
                                output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',fullfile(PathName,['mean' FileName Ext]), '1');
                        end
% Through HERE
%%
                    end
                    
                    if strcmp(Dfieldnames{k},'prefix')
                        if ~WhichFlag
                            fprintf(1,'FOUND PREFIX: %s\t%s\n',Dfieldnames{k});
                            PrefixFlag = 1;
                            for mm = 1:length(ListOfInPutImages{i})
                                [PathName FileName Ext] = fileparts(ListOfInPutImages{i}{mm}.Files);
                                OutStrFileName = subfnConvertFieldToString(ListOfInPutImages{i}{mm}.Indices);
                                output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',fullfile(PathName,[OutStr FileName Ext]), OutStrFileName);
                                
                                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Ptr = output_id;
                                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Files = fullfile(PathName,[OutStr FileName Ext]);
                                ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Indices = OutStrFileName;
                            end
                        end
                    end
                    %calllib('libneuroprov','addKeyValuePair',p_prov,p_proc,Dfieldnames{k},OutStr);
                    calllib('libneuroprov','newProcessInput',p_prov,p_proc,Dfieldnames{k},OutStr,'parameter');
                end
            end
            % Single parameter
        elseif isnumeric(D)
            OutStr = subfnConvertFieldToString(D);
            % Check to see if the parameter is called prefix. If so then
            % create outputs based on the inputs, but also check to see if
            % there is a field called which
            if strcmp(Parameters{j},'which')
                fprintf(1,'FOUND WHICH\n');
                WhichFlag = 1;

            end
            if strcmp(Dfieldnames{k},'prefix')
                fprintf(1,'FOUND PREFIX\n');
                PrefixFlag = 1;
                for mm = 1:length(ListOfInPutImages{i})
                    [PathName FileName Ext] = fileparts(ListOfInPutImages{i}{mm}.Files);
                    OutStrFileName = subfnConvertFieldToString(ListOfInPutImages{i}{mm}.Indices);
                    output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',fullfile(PathName,[OutStr FileName Ext]), OutStrFileName);
                    ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Ptr = output_id;
                    ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Files = fullfile(PathName,[OutStr FileName Ext]);
                    ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Indices = OutStrFileName;
                    
                end
            end
           % calllib('libneuroprov','addKeyValuePair',p_prov,p_proc,Parameters{j},OutStr);
            calllib('libneuroprov','newProcessInput',p_prov,p_proc,Parameters{j},OutStr,'parameter');
        elseif ischar(D)
            OutStr = D;
            % Check to see if the parameter is called prefix. If so then
            % create outputs based on the inputs, but also check to see if
            % there is a field called which
            if strcmp(Parameters{j},'which')
                fprintf(1,'FOUND WHICH\n');
                WhichFlag = 1;
                
            end
            if strcmp(Parameters{j},'prefix')
                fprintf(1,'FOUND PREFIX\n');
                PrefixFlag = 1;
                for mm = 1:length(ListOfInPutImages{i})
                    [PathName FileName Ext] = fileparts(ListOfInPutImages{i}{mm}.Files);
                    OutStrFileName = subfnConvertFieldToString(ListOfInPutImages{i}{mm}.Indices);
                    output_id = calllib('libneuroprov','newProcessOutput',p_prov,p_proc,'Output NIFTI',fullfile(PathName,[OutStr FileName Ext]), OutStrFileName);
                    ListOfOutPutImages{i}{length(ListOfOutPutImages{i})+1}.Ptr = output_id;
                    ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Files = fullfile(PathName,[OutStr FileName Ext]);
                    ListOfOutPutImages{i}{length(ListOfOutPutImages{i})}.Indices = OutStrFileName;
                    
                    
                end
            end
            %calllib('libneuroprov','addKeyValuePair',p_prov,p_proc,Parameters{j},OutStr);
            % instead of using key value pairs for parameters use process
            % inputs instead
            calllib('libneuroprov','newProcessInput',p_prov,p_proc,Parameters{j},OutStr,'parameter');
            
        end
    end
end
% Write to an XML file
calllib('libneuroprov','printProvenance',p_prov,OutFile)

