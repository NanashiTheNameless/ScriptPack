Player=game:GetService("Players").LocalPlayer
Character=Player.Character
local light = Instance.new("PointLight", Character.Torso)
light.Color = Color3.new(255,255,255)
light.Brightness = 134134
light.Range = 2000


for i,v in pairs(game.Workspace.Mine:GetChildren()) do
if string.match(v.Name, "Coal") then
v:Remove()
end
end