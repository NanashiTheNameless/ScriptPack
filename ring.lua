local who = "yfc" 
local plyrs = game:GetService("Players") 
local me = plyrs[who] 
local char = me.Character 
local head = char.Head 
local torso = char.Torso 
local attakin = false 
local rarm = char["Right Arm"] 
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
pcall(function() char.Ring:remove() end) 
local model = Instance.new("Model", char) 
model.Name = "Ring" 
local rarmw = Instance.new("Weld", model) 
rarmw.Part0 = char["Right Arm"] 
rarmw.Part1 = char.Torso 
rarmw.C1 = CFrame.new(1.5, 0, 0) 
local part1 = Instance.new("Part", model) 
local mesh1 = Instance.new("BlockMesh") 
local weld1 = Instance.new("Weld") 
create(part1, weld1, mesh1, 0.2, 0.2, 0.2, 5.05, 1, 5.05, "", 0, "", rarm, CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Base", "Smooth", "Smooth") 
local part2 = Instance.new("Part", model) 
local mesh2 = Instance.new("CylinderMesh") 
local weld2 = Instance.new("Weld") 
create(part2, weld2, mesh2, 0.2, 0.2, 0.2, 1, 5.05, 1, "", 0, "", part1, CFrame.new(0, 0, -0.01) * CFrame.Angles(1.575, 0, 0), "Dark stone grey", "Custom", false, false, 0, 0, "Base", "Smooth", "Smooth") 
local part3 = Instance.new("Part", model) 
local mesh3 = Instance.new("CylinderMesh") 
local weld3 = Instance.new("Weld") 
create(part3, weld3, mesh3, 0.2, 0.5, 0.2, 0.5, 1.05, 0.5, "", 0, "", part2, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), "Really red", "Custom", false, false, 1, 0.15, "Base", "Smooth", "Smooth") 
function slash(time) 
if attakin == false then 
attakin = true 
for i = 0, 1, 0.1 do 
mesh3.Scale = Vector3.new(0.5, 1.05+i*4, 0.5) 
part3.Transparency = part3.Transparency - 0.05
weld3.C0 = CFrame.new(0, math.rad(60*i), 0) * CFrame.Angles(0, 0, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
rarmw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-120*i), math.rad(-15*i), 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
mesh3.Scale = Vector3.new(0.5, 5.05-i*4, 0.5) 
part3.Transparency = part3.Transparency + 0.05
weld3.C0 = CFrame.new(0, math.rad(60-60*i), 0) * CFrame.Angles(0, 0, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
rarmw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-120+120*i), math.rad(-15+15*i), 0) 
wait() 
end 
attakin = false 
end 
end 

function slash2(time) 
if attakin == false then 
attakin = true 
for i = 0, 1, 0.1 do 
mesh3.Scale = Vector3.new(0.5, 1.05+i*4, 0.5) 
part3.Transparency = part3.Transparency - 0.05
weld3.C0 = CFrame.new(0, math.rad(60*i), 0) * CFrame.Angles(0, 0, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
rarmw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-120*i), math.rad(15*i), 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
mesh3.Scale = Vector3.new(0.5, 5.05-i*4, 0.5) 
part3.Transparency = part3.Transparency + 0.05
weld3.C0 = CFrame.new(0, math.rad(60-60*i), 0) * CFrame.Angles(0, 0, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
rarmw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-120+120*i), math.rad(15-15*i), 0) 
wait() 
end 
attakin = false 
end 
end 

while wait(math.random(3, 5)) do 
a = math.random(1, 2) 
if a == 1 then 
slash(1) 
end 
if a == 2 then 
slash2(1) 
end 
end 