_G.c=function() local c=Workspace.DarkShadow6 c.archivable=true local cc=c:Clone() cc.Parent=Workspace c.archivable=false end
for i=1, 10 do _G.c() wait(0.5) end