child = game.Workspace:GetChildren()
mods = {}
count = 0
for i, v in pairs (child) do
if v.ClassName == "Model"  and v:FindFirstChild("Torso") then
count = count + 1
table.insert(mods, count, v)
end
end
for i, v in pairs (mods) do
bod = v
game.Workspace.GameFunctions.Grab:InvokeServer(bod,bod:GetModelCFrame().p, "Grab") 
wait(.1)
game.Workspace.GameFunctions.Grab:InvokeServer(bod,bod:GetModelCFrame().p, "Drop") 
end 