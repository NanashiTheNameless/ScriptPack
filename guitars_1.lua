local song = 2 
local me = game.Players.yfc 
local char = me.Character 
local head = char.Head 
local torso = char.Torso 
local rarm = char["Right Arm"] 
local larm = char["Left Arm"] 
local lleg = char["Left Leg"] 
local rleg = char["Right Leg"] 
script.Parent = char 

pcall(function() char["Guitar"]:remove() end)
local model = Instance.new("Model", char) 
model.Name = "Guitar" 

local sound = Instance.new('Sound', model) 
sound.SoundId = "http://www.roblox.com/asset/?id=1089403" 
sound.Volume = 1 
sound.Pitch = 1 
sound.Looped = true 
sound:play() 
--[[
V-VIIchord.wav: 
http://www.roblox.com/asset/?id=1089410 

Vchord.wav: 
http://www.roblox.com/asset/?id=1089407 

I-VIIchord.wav: 
http://www.roblox.com/asset/?id=1089406 

IVchord.wav: 
http://www.roblox.com/asset/?id=1089405 

IIIchord.wav: 
http://www.roblox.com/asset/?id=1089404 

Ichord.wav: 
http://www.roblox.com/asset/?id=1089403 

algore.wav: 
http://www.roblox.com/asset/?id=1088480 

Tada: 
http://www.roblox.com/asset/?id=1079839 

Katon SFX: 
http://www.roblox.com/asset/?id=1079802 

Chord-Ding: 
http://www.roblox.com/asset/?id=1079801 ]] 
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
create(part1, weld1, mesh1, 0.5, 1.5, 0.25, 1.01, 4.01, 1, "", 0, "", torso, CFrame.new(0, 0, -1) * CFrame.Angles(0.25, -0.25, 7), "Really black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part2 = Instance.new("Part", model) 
local mesh2 = Instance.new("BlockMesh") 
local weld2 = Instance.new("Weld") 
create(part2, weld2, mesh2, 1, 1, 0.251, 2.01, 2.01, 1.01, "", 0, "", part1, CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part3 = Instance.new("Part", model) 
local mesh3 = Instance.new("BlockMesh") 
local weld3 = Instance.new("Weld") 
create(part3, weld3, mesh3, 1, 1, 0.251, 0.51, 2.01, 1.01, "", 0, "", part1, CFrame.new(-0.5, -1.5, 0) * CFrame.Angles(0, 0, 0.75), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part4 = Instance.new("Part", model) 
local mesh4 = Instance.new("BlockMesh") 
local weld4 = Instance.new("Weld") 
create(part4, weld4, mesh4, 1, 1, 0.251, 0.51, 1.01, 1.01, "", 0, "", part1, CFrame.new(-1, -1.25, 0) * CFrame.Angles(0, 0, 0.5), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part5 = Instance.new("Part", model) 
local mesh5 = Instance.new("BlockMesh") 
local weld5 = Instance.new("Weld") 
create(part5, weld5, mesh5, 1, 1, 0.251, 0.51, 2.01, 1.01, "", 0, "", part1, CFrame.new(0.5, -1.5, 0) * CFrame.Angles(0, 0, -0.75), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part6 = Instance.new("Part", model) 
local mesh6 = Instance.new("BlockMesh") 
local weld6 = Instance.new("Weld") 
create(part6, weld6, mesh6, 1, 1, 0.251, 0.51, 1.01, 1.01, "", 0, "", part1, CFrame.new(1, -1.25, 0) * CFrame.Angles(0, 0, -0.5), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part7 = Instance.new("Part", model) 
local mesh7 = Instance.new("BlockMesh") 
local weld7 = Instance.new("Weld") 
create(part7, weld7, mesh7, 1.2, 1, 0.251, 0.51, 1.01, 1.01, "", 0, "", part1, CFrame.new(1.3, -0.365, 0) * CFrame.Angles(0, 0, -0.25), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part8 = Instance.new("Part", model) 
local mesh8 = Instance.new("BlockMesh") 
local weld8 = Instance.new("Weld") 
create(part8, weld8, mesh8, 1.2, 1, 0.251, 0.51, 1.01, 1.01, "", 0, "", part1, CFrame.new(-1.3, -0.365, 0) * CFrame.Angles(0, 0, 0.25), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part9 = Instance.new("Part", model) 
local mesh9 = Instance.new("CylinderMesh") 
local weld9 = Instance.new("Weld") 
create(part9, weld9, mesh9, 1.2, 0.251, 1.2, 1.71, 1.01, 1.71, "", 0.1, "", part1, CFrame.new(0, -2.7, 0) * CFrame.Angles(7.85, 0, 0), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part10 = Instance.new("Part", model) 
local mesh10 = Instance.new("BlockMesh") 
local weld10 = Instance.new("Weld") 
create(part10, weld10, mesh10, 0.75, 1, 0.251, 0.751, 1.01, 1.01, "", 0, "", part1, CFrame.new(0, 2.5, 0) * CFrame.Angles(0, 0, 0), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part11 = Instance.new("Part", model) 
local mesh11 = Instance.new("BlockMesh") 
local weld11 = Instance.new("Weld") 
create(part11, weld11, mesh11, 0.75, 0.5, 0.251, 1.01, 1.01, 1.01, "", 0, "", part1, CFrame.new(0, 2.75, 0) * CFrame.Angles(0, 0, 0), "Really red", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part12 = Instance.new("Part", model) 
local mesh12 = Instance.new("BlockMesh") 
local weld12 = Instance.new("Weld") 
create(part12, weld12, mesh12, 0.75, 0.5, 0.251, 1.01, 0.251, 1.01, "", 0, "", part1, CFrame.new(0.05, -3.25, -0.25) * CFrame.Angles(0, 0, 0), "Really black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part13 = Instance.new("Part", model) 
local mesh13 = Instance.new("BlockMesh") 
local weld13 = Instance.new("Weld") 
create(part13, weld13, mesh13, 0.2, 1, 0.21, 0.2, 6.01, 0.21, "", 0, "", part1, CFrame.new(-0.025, -0.25, -0.3) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part14 = Instance.new("Part", model) 
local mesh14 = Instance.new("BlockMesh") 
local weld14 = Instance.new("Weld") 
create(part14, weld14, mesh14, 0.2, 1, 0.21, 0.2, 6.01, 0.21, "", 0, "", part1, CFrame.new(-0.15, -0.25, -0.3) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part15 = Instance.new("Part", model) 
local mesh15 = Instance.new("BlockMesh") 
local weld15 = Instance.new("Weld") 
create(part15, weld15, mesh15, 0.2, 1, 0.21, 0.2, 6.01, 0.21, "", 0, "", part1, CFrame.new(0.125, -0.25, -0.3) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part16 = Instance.new("Part", model) 
local mesh16 = Instance.new("BlockMesh") 
local weld16 = Instance.new("Weld") 
create(part16, weld16, mesh16, 0.2, 1, 0.21, 0.2, 6.01, 0.21, "", 0, "", part1, CFrame.new(0.055, -0.25, -0.3) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part17 = Instance.new("Part", model) 
local mesh17 = Instance.new("BlockMesh") 
local weld17 = Instance.new("Weld") 
create(part17, weld17, mesh17, 0.2, 1, 0.21, 0.2, 6.01, 0.21, "", 0, "", part1, CFrame.new(-0.085, -0.25, -0.3) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part18 = Instance.new("Part", model) 
local mesh18 = Instance.new("BlockMesh") 
local weld18 = Instance.new("Weld") 
create(part18, weld18, mesh18, 0.2, 1, 0.21, 0.2, 6.01, 0.21, "", 0, "", part1, CFrame.new(0.2, -0.25, -0.3) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part19 = Instance.new("Part", model) 
local mesh19 = Instance.new("BlockMesh") 
local weld19 = Instance.new("Weld") 
create(part19, weld19, mesh19, 0.5, 0.2, 0.25, 1, 1, 1.1, "", 0, "", part1, CFrame.new(0, 2.75, -0.25) * CFrame.Angles(0, 0, 0), "Really black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 

local aweld1 = Instance.new("Weld") 
aweld1.Parent = part1 
aweld1.Part0 = larm 
aweld1.Part1 = part1 
aweld1.C1 = CFrame.new(0, 1.5, 0.5) * CFrame.Angles(2.55, 0, 0) 
local aweld2 = Instance.new("Weld") 
aweld2.Parent = part1 
aweld2.Part0 = rarm 
aweld2.Part1 = part1 
aweld2.C1 = CFrame.new(1, -0.5, 0) * CFrame.Angles(1, 0, -0.5) 

while wait() do 
for i = 0, 1, 0.1 do 
aweld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(25*i)) 
aweld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25*i), 0, 0) 
wait() 
end 
if song == 1 then 
sound:play() 
sound.Pitch = 1.25 
wait(0.25) 
sound.Pitch = 1.5 
wait(0.25) 
sound.Pitch = 1.25 
wait(0.25) 
sound.Pitch = 1.5 
wait(0.25) 
sound.Pitch = 1
wait(0.25) 
sound.Pitch = 1.25 
wait(0.25) 
sound.Pitch = 1.5 
wait(0.25) 
sound.Pitch = 1.25 
wait(0.25) 
sound.Pitch = 1 
wait(0.25) 
end 
if song == 2 then 
sound:play() 
sound.Pitch = 1.25 
wait(0.25) 
sound.Pitch = 1.5 
wait(0.25) 
sound.Pitch = 1.75 
wait(0.25) 
sound.Pitch = 1.5 
wait(0.25) 
sound.Pitch = 1.25
wait(0.25) 
sound.Pitch = 1.5 
wait(0.25) 
sound.Pitch = 1.75 
wait(0.25) 
sound.Pitch = 1.5 
wait(0.25) 
sound.Pitch = 1.25 
wait(0.25) 
sound.Pitch = 1 
wait(0.25) 
end 
for i = 0, 1, 0.1 do 
aweld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(25-25*i)) 
aweld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25-25*i), 0, 0) 
wait() 
end 
end 

--[[V-VIIchord.wav: 
http://www.roblox.com/asset/?id=1089410 

Vchord.wav: 
http://www.roblox.com/asset/?id=1089407 

I-VIIchord.wav: 
http://www.roblox.com/asset/?id=1089406 

IVchord.wav: 
http://www.roblox.com/asset/?id=1089405 

IIIchord.wav: 
http://www.roblox.com/asset/?id=1089404 

Ichord.wav: 
http://www.roblox.com/asset/?id=1089403 

algore.wav: 
http://www.roblox.com/asset/?id=1088480 

Tada: 
http://www.roblox.com/asset/?id=1079839 

Katon SFX: 
http://www.roblox.com/asset/?id=1079802 

Chord-Ding: 
http://www.roblox.com/asset/?id=1079801]] 