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

pcall(function() char["Ship"]:remove() end)
local model = Instance.new("Model", char) 
model.Name = "Ship" 

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
mesh.meshType = type 
end 
if mesh.className == "SpecialMesh" and mesh.meshType == "FileMesh" then 
mesh.meshId = id 
end 
end 

local part1 = Instance.new("Part", model) 
local mesh1 = Instance.new("BlockMesh") 
local weld1 = Instance.new("Weld") 
create(part1, weld1, mesh1, 0.5, 0.5, 1.5, 1.01, 1.01, 1.01, "", 0, "", torso, CFrame.new(1, 0.25, -0.25) * CFrame.Angles(0.25, 0, 0), "Reddish brown", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
