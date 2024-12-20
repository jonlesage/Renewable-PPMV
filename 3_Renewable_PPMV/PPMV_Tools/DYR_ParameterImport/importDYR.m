% clear all, clc;
function importDYR

[fileName, pathName] = uigetfile('*.dyr');
str = fileread(fullfile(pathName, fileName));
str = strrep(str,"'",'');
str = strtrim(str);
strnew = strsplit(str,'/');
strnew = strnew(cellfun(@(x)~isempty(x),strnew));
for i=1:numel(strnew)
    cellWithValues = regexp(strnew{i},'\s+','split');
    strcell{i} = cellWithValues(cellfun(@(x)~isempty(x),cellWithValues));
end
for i = 1:(numel(strcell))
    createStructFromDYRData(strcell{i})
end

end
