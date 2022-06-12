repeat
wait(3)
game.Workspace.GameEvents.addThirst:FireServer(1000)
function re(o)
for i,v in pairs(o:GetChildren()) do 
if v.Name=='DeadBody' then game.Workspace.GameEvents.EatMeat:FireServer(v,1000) end
for x,m in pairs(v:GetChildren()) do re(m) end
end
end
re(game.Workspace)
until nil