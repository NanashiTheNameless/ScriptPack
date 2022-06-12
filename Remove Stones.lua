for i,v in pairs(game.Workspace.Mine:GetChildren()) do
if string.match(v.Name, "Stone") then
v:Remove()
end
end