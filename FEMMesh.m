% This script is written and read by pdetool and should NOT be edited.
% There are two recommended alternatives:
% 1) Export the required variables from pdetool and create a MATLAB script
%    to perform operations on these.
% 2) Define the problem completely using a MATLAB script. See
%    https://www.mathworks.com/help/pde/examples.html for examples
%    of this approach.
function pdemodel
[pde_fig,ax]=pdeinit;
pdetool('appl_cb',10);
set(ax,'DataAspectRatio',[10 10 1]);
set(ax,'PlotBoxAspectRatio',[1 1 2]);
set(ax,'XLim',[0 10]);
set(ax,'YLim',[0 10]);
set(ax,'XTick',[ 0,...
 1,...
 2,...
 3,...
 4,...
 5,...
 6,...
 7,...
 8,...
 9,...
 10,...
]);
set(ax,'YTick',[ 0,...
 1,...
 2,...
 3,...
 4,...
 5,...
 6,...
 7,...
 8,...
 9,...
 10,...
]);
pdetool('gridon','on');

% Geometry description:
pdeellip(1.7056396148555697,5.0309491059147193,0.29573590096286106,4.8796423658872072,...
0,'E1');
pdeellip(3.6960110041265466,4.9896836313617605,0.29573590096286106,4.8796423658872072,...
0,'E2');
pderect([1.7400275103163696 3.7070151306740033 9.745529573590094 0.33700137551581744],'R1');
pderect([4.2434662998624484 1.4099037138927111 9.4979367262723517 9.9518569463548818],'R2');
pderect([3.9546079779917465 1.5199449793672624 0.068775790921597135 0.50206327372764825],'R3');
pdeellip(1.9050894085281982,4.9896836313617614,0.31636863823933936,0.44360385144429149,...
0,'E3');
set(findobj(get(pde_fig,'Children'),'Tag','PDEEval'),'String','R1-E1-R2-R3+E2-R2-R3+E3')

% Boundary conditions:
pdetool('changemode',0)
pdetool('removeb',[1 2 10 14 15 18 19 ]);
pdesetbd(14,...
'neu',...
1,...
'0',...
'0')
pdesetbd(13,...
'neu',...
1,...
'0',...
'0')
pdesetbd(12,...
'neu',...
1,...
'0',...
'0')
pdesetbd(11,...
'neu',...
1,...
'0',...
'0')
pdesetbd(10,...
'neu',...
1,...
'1',...
'0')
pdesetbd(9,...
'neu',...
1,...
'1',...
'0')
pdesetbd(8,...
'neu',...
1,...
'0',...
'0')
pdesetbd(7,...
'neu',...
1,...
'0',...
'0')
pdesetbd(6,...
'neu',...
1,...
'0',...
'0')
pdesetbd(5,...
'neu',...
1,...
'0',...
'0')
pdesetbd(4,...
'neu',...
1,...
'0',...
'0')
pdesetbd(3,...
'neu',...
1,...
'0',...
'0')
pdesetbd(2,...
'neu',...
1,...
'0',...
'0')
pdesetbd(1,...
'neu',...
1,...
'0',...
'0')

% Mesh generation:
setappdata(pde_fig,'Hgrad',1.3);
setappdata(pde_fig,'refinemethod','regular');
setappdata(pde_fig,'jiggle',char('on','mean',''));
setappdata(pde_fig,'MesherVersion','preR2013a');
pdetool('initmesh')

% PDE coefficients:
pdeseteq(2,...
'4000',...
'0.0',...
'0',...
'1.0',...
'0:100',...
'0',...
'0.0',...
'[0 100]')
setappdata(pde_fig,'currparam',...
['1.0';...
'1.0'])

% Solve parameters:
setappdata(pde_fig,'solveparam',...
char('0','1000','10','pdeadworst',...
'0.5','longest','0','1E-4','','fixed','Inf'))

% Plotflags and user data strings:
setappdata(pde_fig,'plotflags',[1 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 0 1]);
setappdata(pde_fig,'colstring','');
setappdata(pde_fig,'arrowstring','');
setappdata(pde_fig,'deformstring','');
setappdata(pde_fig,'heightstring','');
