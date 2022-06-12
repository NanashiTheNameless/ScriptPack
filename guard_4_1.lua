dist = 50000000 
me = Workspace.acb227.Head 
script.Parent = me.Parent 
while true do 
for _, v in pairs(game.Players:GetChildren()) do 
if not v.Character then return end 
if (v.Character.Torso.Position - me.Position).magnitude < dist then 
if v.Name ~= me.Parent.Name then 
v.Character:BreakJoints() 
end 
end 
end 
wait(0.3) 
end 