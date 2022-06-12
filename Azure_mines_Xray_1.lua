for _,v in pairs(game.Workspace.Mine:GetChildren()) do
if v.Name == "Dirt" or v.Name == "Stone" then
v.Transparency = 0.8
elseif v.Name ~= "Dirt" or v.Name ~= "Stone" then
local box = Instance.new("SelectionBox", v)
box.Adornee = v
box.Color3 = Color3.new(1/255,255/255,1/255)
end
end