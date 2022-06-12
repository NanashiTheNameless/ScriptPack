script.Name = "SPLEEEEEEEEENNNNNNYYYYYYY <3" 
local Me = game.Players.LocalPlayer 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Lleg = char["Left Leg"]
local Rleg = char["Right Leg"]
local mini = true 
local ather = false 

pcall(function() char[":P"]:remove() end)
pcall(function() char["assasainparts"]:remove() end) 

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
function meshb(mesh, parent, x, y, z, b)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.Bevel = b 
end
function meshc(mesh, parent, x, y, z)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
end
function wel(weld, x, y, z, parent, part, parta, xx, yy, zz) 
local wel = weld 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 
--**>[[assasainparts]]<**--
local assasainparts = Instance.new("Model") 
assasainparts.Parent = parts 
assasainparts.Name = "assasain" 
--
local assasain = Instance.new("Part") 
prop(assasain, assasainparts, false, 0, 0, 1, 2, 1, "White", false, "Custom")
local assasainm = Instance.new("BlockMesh") 
meshb(assasainm, assasain, 1.01, 1.01, 1.01, 0) 
local assasainw = Instance.new("Weld") 
wel(assasainw, 0, 0, 0, assasain, assasain, Rarm, 0, 0, 0) 
local assasain2 = Instance.new("Part") 
prop(assasain2, assasainparts, false, 0, 0, 1, 2, 1, "White", false, "Custom")
local assasain2m = Instance.new("BlockMesh") 
meshb(assasain2m, assasain2, 1.01, 1.01, 1.01, 0) 
local assasain2w = Instance.new("Weld") 
wel(assasain2w, 0, 0, 0, assasain2, assasain2, Larm, 0, 0, 0) 
local assasain3 = Instance.new("Part") 
prop(assasain3, assasainparts, false, 0, 0, 1, 2, 1, "White", false, "Custom")
local assasain3m = Instance.new("BlockMesh") 
meshb(assasain3m, assasain3, 1.01, 1.01, 1.01, 0) 
local assasain3w = Instance.new("Weld") 
wel(assasain3w, 0, 0, 0, assasain3, assasain3, Lleg, 0, 0, 0) 
local assasain4 = Instance.new("Part") 
prop(assasain4, assasainparts, false, 0, 0, 1, 2, 1, "White", false, "Custom")
local assasain4m = Instance.new("BlockMesh") 
meshb(assasain4m, assasain4, 1.01, 1.01, 1.01, 0) 
local assasain4w = Instance.new("Weld") 
wel(assasain4w, 0, 0, 0, assasain4, assasain4, Rleg, 0, 0, 0) 
local assasain5 = Instance.new("Part") 
prop(assasain5, assasainparts, false, 0, 0, 2, 2, 1, "White", false, "Custom")
local assasain5m = Instance.new("BlockMesh") 
meshb(assasain5m, assasain5, 1.01, 1.01, 1.01, 0) 
local assasain5w = Instance.new("Weld") 
wel(assasain5w, 0, 0, 0, assasain5, assasain5, Torso, 0, 0, 0) 
local assasain6 = Instance.new("Part") 
prop(assasain6, assasainparts, false, 0, 0, 0.25, 2.5, 1, "Reddish brown", false, "Custom")
local assasain6m = Instance.new("BlockMesh") 
meshb(assasain6m, assasain6, 1.02, 1.02, 1.02, 0) 
local assasain6w = Instance.new("Weld") 
wel(assasain6w, 0, 0, 0, assasain6, assasain6, Torso, 0, 0, -7) 
char.Head.Transparency = 1 
local assasain7 = Instance.new("Part") 
prop(assasain7, assasainparts, false, 0, 0, 2, 1, 1, "Pastel brown", false, "Custom")
local assasain7m = Instance.new("SpecialMesh") 
mesh(assasain7m, assasain7, 1.02, 1.02, 1.02, "Head") 
local assasain7w = Instance.new("Weld") 
wel(assasain7w, 0, 0, 0, assasain7, assasain7, char.Head, 0, 0, 0) 
local assasain8 = Instance.new("Part") 
prop(assasain8, assasainparts, false, 0, 0, 2, 2, 1, "White", false, "Custom")
local assasain8m = Instance.new("SpecialMesh") 
mesh(assasain8m, assasain8, 1.02, 1.02, 1.02, "FileMesh") 
assasain8m.MeshId = "http://www.roblox.com/asset/?id=16952952" 
local assasain8w = Instance.new("Weld") 
wel(assasain8w, 0, 0.25, 0, assasain8, assasain8, char.Head, 0, 0, 0) 