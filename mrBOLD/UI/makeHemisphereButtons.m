function view = makeHemisphereButtons(view)
%
% view = makeHemisphereButtons(view)
%
% Installs push buttons that set curSlice.
%
% djh, 1/97

% Left button Callback:
%   selectButton(view.ui.sliceButtons,1);
%   view=refreshScreen(view);
% The hemisphere buttons pass a '2' in the recompute field of refreshView.
% This lets refreshView deal with the image rotation slider bar.
callbackStr = ...
    ['selectButton(',view.name,'.ui.sliceButtons,1); ',...
	view.name,'=refreshScreen(',view.name,',2);'];
view.ui.sliceButtons(1) = ...
    uicontrol('Style','radiobutton',...
    'String','Left',...
	'BackgroundColor', get(gcf, 'Color'), ...
    'Units','normalized',...
    'Position',[.1 .01 .1 .05],...
    'Callback', callbackStr);

% Right button Callback:
%   selectButton(view.ui.sliceButtons,1);
%   view=refreshScreen(view);
callbackStr = ...
    ['selectButton(',view.name,'.ui.sliceButtons,2); ',...
	view.name,'=refreshScreen(',view.name,',2);'];
view.ui.sliceButtons(2) = ...
    uicontrol('Style','radiobutton',...
    'String','Right',...
    'Units','normalized',...
	'BackgroundColor', get(gcf, 'Color'), ...
    'Position',[.25 .01 .1 .05],...
    'Callback', callbackStr);
return;
