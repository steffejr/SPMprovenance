% create the root node
docNode = com.mathworks.xml.XMLUtils.createDocument...
    ('opmGraph');
docRootNode = docNode.getDocumentElement;
% The first node is the annotation
AnnotElement = docNode.createElement('annotation');
% ince it is created then append it to the root node
docRootNode.appendChild(AnnotElement);
% This first level node has sub-nodes
% create them
CreatedElement = docNode.createElement('created-by');
CreatedElement.setAttribute('value','jasoncode');
VersionElement = docNode.createElement('version');
VersionElement.setAttribute('value','0.01');
% Then append them
AnnotElement.appendChild(CreatedElement);
AnnotElement.appendChild(VersionElement);

AccountsElement = docNode.createElement('accounts');
docRootNode.appendChild(AccountsElement);
CreatedElement = docNode.createElement('account');
CreatedElement.setAttribute('id','jason');
AccountsElement.appendChild(CreatedElement);

% read from the matlabbatch the processes
processesElement = docNode.createElement('processes');
docRootNode.appendChild(processesElement);
N = length(matlabbatch);
for i = 2:N
    processElement = docNode.createElement('process');
    % get the name of each step
    MainName = fieldnames(matlabbatch{i});
    StepName = fieldnames(eval(['matlabbatch{i}.' MainName{1}]));
    SubStepName = fieldnames(eval(['matlabbatch{' num2str(i) '}.' MainName{1} '.' StepName{1}]));
    processID = [MainName{1} '.' StepName{1} '.' SubStepName{1}];
    processElement.setAttribute('id',processID);
    processesElement.appendChild(processElement);
    %
    %
    % I am going to focus on the smooth step because it is vert simple
    CreatedElement = docNode.createElement('account');
    CreatedElement.setAttribute('ref','jason');
    processElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('label');
    CreatedElement.setAttribute('value',processID);
    processElement.appendChild(CreatedElement);
    % create annotation for the PROCESS
    AnotElement = docNode.createElement('annotation');
    processElement.appendChild(AnotElement);
    CreatedElement = docNode.createElement('interface');
    CreatedElement.setAttribute('value','PROGRAM NAME');
    CreatedElement.setAttribute('version','PROGRAM VERSION');
    AnotElement.appendChild(CreatedElement);
    % add inputs
    ParamNames = fieldnames(eval(['matlabbatch{' num2str(i) '}.' MainName{1} '.' StepName{1} '.' SubStepName{1}] ))
    InputElement = docNode.createElement('inputs');
    AnotElement.appendChild(InputElement);
    for j = 1:length(ParamNames)
        
        CreatedElement = docNode.createElement('param');
        CreatedElement.setAttribute('id',ParamNames{j});
        InputElement.appendChild(CreatedElement);
        if i == 6
            ParamValue = eval(['matlabbatch{' num2str(i) '}.' MainName{1} '.' StepName{1} '.' SubStepName{1} '.' ParamNames{j}])
            % check to see what type the parameter value is
            if isnumeric(ParamValue)
                ParamValue = num2str(ParamValue);
            elseif iscell(ParamValue)
                ParamValue = 'CELL ARRAY WHICH I DONT KNOW HOW TO DEAL WITH YET'
            end
            CreatedElement.appendChild(docNode.createTextNode(char(ParamValue)));
        end
    end
    % runtime info
    RunTimeElement = docNode.createElement('runtime');
    AnotElement.appendChild(RunTimeElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','cmdline');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','cwd');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','datetime');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','duration');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','environ');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','hostname');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','merged');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','returncode');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','stderr');
    RunTimeElement.appendChild(CreatedElement);
    CreatedElement = docNode.createElement('key');
    CreatedElement.setAttribute('name','stdout');
    RunTimeElement.appendChild(CreatedElement);
end
% CreatedElement = docNode.createElement('param');
% CreatedElement.setAttribute('id','fwhm');
% InputElement.appendChild(CreatedElement);
% CreatedElement = docNode.createElement('param');
% CreatedElement.setAttribute('id','dtype');
% InputElement.appendChild(CreatedElement);
% CreatedElement = docNode.createElement('param');
% CreatedElement.setAttribute('id','im');
% InputElement.appendChild(CreatedElement);
% CreatedElement = docNode.createElement('param');
% CreatedElement.setAttribute('id','prefix');
% CreatedElement.appendChild(docNode.createTextNode('s'));
% InputElement.appendChild(CreatedElement);



% create a temp file and display the XML
xmlFileName = [tempname,'.xml'];
xmlwrite(xmlFileName,docNode);
type(xmlFileName);
