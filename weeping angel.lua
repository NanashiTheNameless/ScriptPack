local players = game:GetService("Players") 
local wrkspace = game:GetService("Workspace") 
local lighting = game:GetService("Lighting") 
local dark = false 

local plyr = players.yfc 
local char = plyr.Character 
local head = char.Head 
local torso = char.Torso 
local rarm = char["Right Arm"] 
local larm = char["Left Arm"] 
local lleg = char["Left Leg"] 
local rleg = char["Right Leg"] 
local name = "Weeping Angel" 
pcall(function() char[name]:remove() end)
local model = Instance.new("Model", char) 
model.Name = name 
char.Humanoid.WalkSpeed = 0 
pcall(function() char.Animate:remove() end) 
function create(part, weld, mesh, sizex, sizey, sizez, scalex, scaley, scalez, type, bevel, id, cz, ca, color, form, anchored, cancollide, trans, reflect, name, topsurf, botsurf) 
part.formFactor = form 
part.Size = Vector3.new(sizex, sizey, sizez) 
part.BrickColor = BrickColor.new(color) 
part.Anchored = anchored 
part.CanCollide = cancollide 
part.Transparency = trans 
part.Reflectance = reflect 
part.Name = name 
part.TopSurface = topsurf 
part.BottomSurface = botsurf 
part:BreakJoints() 
weld.Part0 = part 
weld.Part1 = cz 
weld.C1 = ca 
weld.Parent = part 
mesh.Parent = part 
mesh.Scale = Vector3.new(scalex, scaley, scalez) 
if mesh.className == "BlockMesh" then 
mesh.Bevel = bevel 
end 
if mesh.className == "SpecialMesh" then 
mesh.MeshType = type 
end 
if mesh.className == "SpecialMesh" and mesh.MeshType == "FileMesh" then 
mesh.MeshId = id 
end 
end 

local part1 = Instance.new("Part", model) 
local mesh1 = Instance.new("BlockMesh") 
local weld1 = Instance.new("Weld") 
create(part1, weld1, mesh1, 0.2, 0.2, 0.2, 10.05, 10.05, 5.05, "", 0, "", torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part2 = Instance.new("Part", model) 
local mesh2 = Instance.new("BlockMesh") 
local weld2 = Instance.new("Weld") 
create(part2, weld2, mesh2, 0.2, 0.2, 0.2, 5.05, 10.05, 5.05, "", 0, "", rarm, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part3 = Instance.new("Part", model) 
local mesh3 = Instance.new("BlockMesh") 
local weld3 = Instance.new("Weld") 
create(part3, weld3, mesh3, 0.2, 0.2, 0.2, 5.05, 10.05, 5.05, "", 0, "", larm, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part4 = Instance.new("Part", model) 
local mesh4 = Instance.new("BlockMesh") 
local weld4 = Instance.new("Weld") 
create(part4, weld4, mesh4, 0.2, 0.2, 0.2, 5.05, 10.05, 5.05, "", 0, "", rleg, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part5 = Instance.new("Part", model) 
local mesh5 = Instance.new("BlockMesh") 
local weld5 = Instance.new("Weld") 
create(part5, weld5, mesh5, 0.2, 0.2, 0.2, 5.05, 10.05, 5.05, "", 0, "", lleg, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part6 = Instance.new("Part", model) 
local mesh6 = Instance.new("SpecialMesh") 
local weld6 = Instance.new("Weld") 
create(part6, weld6, mesh6, 0.2, 0.2, 0.2, 11.5, 6.5, 6.5, "Head", 0, "", head, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Head", "Smooth", "Smooth") 
local part7 = Instance.new("Part", model) 
local mesh7 = Instance.new("BlockMesh") 
local weld7 = Instance.new("Weld") 
create(part7, weld7, mesh7, 0.2, 0.2, 0.2, 11.5, 1, 1, "", 0, "", torso, CFrame.new(0, 0, 0.75) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
for i = 1, 8 do 
local part7 = Instance.new("Part", model) 
local mesh7 = Instance.new("BlockMesh") 
local weld7 = Instance.new("Weld") 
create(part7, weld7, mesh7, 0.2, 0.2, 0.2, 11.5, 23, 5, "", 0, "", torso, CFrame.new(0-i, i/3.5, 0.75) * CFrame.Angles(0, 0, -i/10), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part8 = Instance.new("Part", model) 
local mesh8 = Instance.new("BlockMesh") 
local weld8 = Instance.new("Weld") 
create(part8, weld8, mesh8, 0.2, 0.2, 0.2, 11.5, 23, 5, "", 0, "", torso, CFrame.new(0+i, i/3.5, 0.75) * CFrame.Angles(0, 0, i/10), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
wait() 
end 

pcall(function() plyr.PlayerGui.ScreenGui:remove() end) 
local sc = Instance.new("ScreenGui", plyr.PlayerGui) 

local tt = Instance.new("TextButton", sc) 
tt.Position = UDim2.new(0, 300, 0, 250) 
tt.Size = UDim2.new(0, 200, 0, 20) 
tt.Text = "dark" 
tt.BackgroundColor = BrickColor.new("White") 
tt.MouseButton1Down:connect(function() 
if dark == false then 
dark = true 
coroutine.resume(coroutine.create(function() 
game.Lighting.Ambient = Color3.new(-1, -1, -1) 
game.Lighting.TimeOfDay = "00:00:00" 
char.Humanoid.WalkSpeed = 45 
wait(2.5) 
game.Lighting.Ambient = Color3.new(1, 1, 1) 
game.Lighting.TimeOfDay = "14:00:00" 
char.Humanoid.WalkSpeed = 0 
wait(0.5) 
game.Lighting.Ambient = Color3.new(-1, -1, -1) 
game.Lighting.TimeOfDay = "00:00:00" 
char.Humanoid.WalkSpeed = 45 
wait(5) 
game.Lighting.Ambient = Color3.new(1, 1, 1) 
game.Lighting.TimeOfDay = "14:00:00" 
char.Humanoid.WalkSpeed = 0 
wait() 
end)) 
dark = false 
end 
end)

while wait() do 
for _,v in pairs(players:GetChildren()) do 
if dark == true and (v.Character.Torso.Position - torso.Position).magnitude < 5 then 
v.Character:BreakJoints() 
end 
end 
end 
