local Player = game:GetService("Players").LocalPlayer
char = Player.Character
for i,v in pairs(game:GetService("Workspace").Cubers:GetChildren()) do
v.Cube.Position = char.Torso.Position
end
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Money" or v.Name == "Money Bag" or v.Name == "Money bag" then
v.Position = char.Torso.Position
end
end