function Exp = importTestsForPPMV(fileName)
% Reader file that parses an Excel file

% [Time Input1 Input2 ... OutputN]

if ~exist('fileName','var')
    fileName = uigetfile('*.xlsx');
end

[~,sheets] = xlsfinfo(fileName);

numEvents = numel(sheets);

for i = 1:numEvents
    [num,txt,~] = xlsread(fileName,i);
    testTable = array2table(num,'VariableNames',txt);
    Exp{i} = testTable;
    
    % Save Test/Exp Name
    Exp{i}.Properties.Description = sheets{i};
end

% if ~exist([fileName(1:end-5) '.mat'],'file')
%     save([fileName(1:end-5) '.mat'],'Exp');
% end
