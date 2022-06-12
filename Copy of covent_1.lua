local me = game.Players.acb227 
local char = me.Character 
local head = char.Head 
local torso = char.Torso 
local rarm = char["Right Arm"] 
local larm = char["Left Arm"] 
local lleg = char["Left Leg"] 
local rleg = char["Right Leg"] 
local ammo = 0 
local mags = 6 
local shootin = false 

pcall(function() char["Cheif"]:remove() end)
local model = Instance.new("Model", char) 
model.Name = "Cheif" 

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
if mesh.className == "SpecialMesh" and mesh.meshType == "FileMesh" then 
mesh.MeshId = id 
end 
end 

local part1 = Instance.new("Part", model) 
local mesh1 = Instance.new("CylinderMesh") 
local weld1 = Instance.new("Weld") 
create(part1, weld1, mesh1, 0.5, 0.25, 0.5, 5.01, 1.51, 3.51, "", 0, "", head, CFrame.new(0, -0.4, 0) * CFrame.Angles(0, 0, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part2 = Instance.new("Part", model) 
local mesh2 = Instance.new("BlockMesh") 
local weld2 = Instance.new("Weld") 
create(part2, weld2, mesh2, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(0.7, 0.15, -0.25) * CFrame.Angles(0, 0.4, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part3 = Instance.new("Part", model) 
local mesh3 = Instance.new("BlockMesh") 
local weld3 = Instance.new("Weld") 
create(part3, weld3, mesh3, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(0.75, 0.15, 0.15) * CFrame.Angles(0, -0.25, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part4 = Instance.new("Part", model) 
local mesh4 = Instance.new("BlockMesh") 
local weld4 = Instance.new("Weld") 
create(part4, weld4, mesh4, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(0.55, 0.15, 0.5) * CFrame.Angles(0, -0.8, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part5 = Instance.new("Part", model) 
local mesh5 = Instance.new("BlockMesh") 
local weld5 = Instance.new("Weld") 
create(part5, weld5, mesh5, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(0.2, 0.15, 0.71) * CFrame.Angles(0, -1.35, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part6 = Instance.new("Part", model) 
local mesh6 = Instance.new("BlockMesh") 
local weld6 = Instance.new("Weld") 
create(part6, weld6, mesh6, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(-0.2, 0.15, 0.71) * CFrame.Angles(0, 1.35, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part7 = Instance.new("Part", model) 
local mesh7 = Instance.new("BlockMesh") 
local weld7 = Instance.new("Weld") 
create(part7, weld7, mesh7, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(-0.55, 0.15, 0.5) * CFrame.Angles(0, 0.8, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part8 = Instance.new("Part", model) 
local mesh8 = Instance.new("BlockMesh") 
local weld8 = Instance.new("Weld") 
create(part8, weld8, mesh8, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(-0.75, 0.15, 0.15) * CFrame.Angles(0, 0.25, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part9 = Instance.new("Part", model) 
local mesh9 = Instance.new("BlockMesh") 
local weld9 = Instance.new("Weld") 
create(part9, weld9, mesh9, 0.25, 0.75, 0.5, 1.01, 1.51, 1.01, "", 0, "", head, CFrame.new(-0.7, 0.15, -0.25) * CFrame.Angles(0, -0.4, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part10 = Instance.new("Part", model) 
local mesh10 = Instance.new("CylinderMesh") 
local weld10 = Instance.new("Weld") 
create(part10, weld10, mesh10, 0.45, 0.75, 0.45, 5.01, 1.51, 3.51, "", 0, "", head, CFrame.new(0, 0.145, 0) * CFrame.Angles(0, 0, 0), "New Yeller", "Custom", false, false, 0, 0.65, "Torso", "Smooth", "Smooth") 
local part11 = Instance.new("Part", model) 
local mesh11 = Instance.new("SpecialMesh") 
local weld11 = Instance.new("Weld") 
create(part11, weld11, mesh11, 0.45, 0.3, 0.6, 4.51, 1.51, 3.51, "Wedge", 0, "", head, CFrame.new(0, 0.925, 0) * CFrame.Angles(0, 0, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part12 = Instance.new("Part", model) 
local mesh12 = Instance.new("SpecialMesh") 
local weld12 = Instance.new("Weld") 
create(part12, weld12, mesh12, 0.45, 0.45, 0.45, 4.51, 1.51, 3.51, "Sphere", 0, "", head, CFrame.new(0, 0.945, 0.5) * CFrame.Angles(0, 0, 0), "Earth green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
