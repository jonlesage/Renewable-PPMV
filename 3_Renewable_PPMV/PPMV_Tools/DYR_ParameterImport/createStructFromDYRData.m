%% Generator
function createStructFromDYRData (dyrcellData)

paramsToIgnore = {'IBUS','ID','Type'};

switch (dyrcellData{2})
    case 'GENROU'
        blockParams = {'IBUS','Type','ID','Tdp','Tdpp','Tqo','Tqpp',...
            'H','F','Xd','Xq','Xdp','Xqp','Xdpp','Xqpp','Xl','S1','S12'};
        blockType = 'gen';
        
    case 'GENSAL'
        blockParams = {'IBUS','Type','ID','Tdp','Tdpp','Tqo','H','F',...
            'Xd','Xq','Xdp','Xdpp','Xl','S1','S12'};
        blockType = 'gen';

    case 'EXAC1'
        blockParams = {'IBUS','Type','ID','Tr','Tb','Tc','Ka','Ta',...
            'VRmax','VRmin','Te','Kf','Tf','Kc','Kd','Ke','Ve1',...
            'SeVe1','Ve2','SeVe2'};
        blockType = 'avr';
        
    case 'IEEEG1'
        blockParams = {'IBUS','Type','ID','Mode','K','T1','T2','T3',...
            'U0','Uc','Pmax','Pmin','T4','K1','K2','T5','K3','K4',...
            'T6','K5','K6','T7','K7','K8'};
        blockType = 'gov';
        
    case 'DEGOV1'
        blockParams = {'IBUS','Type','ID','Mode','T1','T2','T3','K',...
            'T4','T5','T6','Td','Tmax','Tmin','R','Te'};
        blockType = 'gov';
end

% Add Block Parameters to MATLAB Workspace
for i = 1:numel(blockParams)
    if sum(strcmp(blockParams{i},paramsToIgnore)) < 1
        evalin('base',[blockType blockParams{i} ' = ' ...
            num2str(dyrcellData{i}) ';']);
    end
end

end