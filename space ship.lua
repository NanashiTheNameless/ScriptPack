pcall(function() workspace.Base["Parts"]:remove() end) 

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
if anchor == false then 
part:BreakJoints()
end 
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z) 
if mesh.className == "SpecialMesh" then 
mesh.MeshType = type 
end 
end
function wel(weld, x, y, z, parent, part, parta, xx, yy, zz) 
local wel = weld 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 

parts = Instance.new("Model") 
parts.Parent = workspace.Base 
parts.Name = "Parts" 

local base = Instance.new("Part") 
prop(base, parts, true, 0, 0, 35, 1, 65, "Dark red", false, "Custom")
base.CFrame = CFrame.new(35, 1, 35) 
local basem = Instance.new("BlockMesh") 
basem.Bevel = 0.1 
mesh(basem, base, 1, 17, 1)
local lwall = Instance.new("Part") 
prop(lwall, parts, true, 0, 0, 1, 15, 65, "Dark red", false, "Custom")
local lwallm = Instance.new("BlockMesh") 
lwallm.Bevel = 0.1 
mesh(lwallm, lwall, 1, 1, 1)
local lwallw = Instance.new("Weld") 
wel(lwallw, 17, 7.5, 0, lwall, lwall, base, 0, 0, 0) 
local rwall = Instance.new("Part") 
prop(rwall, parts, true, 0, 0, 1, 15, 65, "Dark red", false, "Custom")
local rwallm = Instance.new("BlockMesh") 
rwallm.Bevel = 0.1 
mesh(rwallm, rwall, 1, 1, 1)
local rwallw = Instance.new("Weld") 
wel(rwallw, -17, 7.5, 0, rwall, rwall, base, 0, 0, 0) 
local obsv = Instance.new("Part") 
prop(obsv, parts, true, 0, 0, 35, 1, 35, "Dark red", false, "Custom")
local obsvm = Instance.new("CylinderMesh") 
mesh(obsvm, obsv, 1, 0.99, 1)
local obsvw = Instance.new("Weld") 
wel(obsvw, 0, 0, 35, obsv, obsv, base, 0, 0, 0) 
local roof1 = Instance.new("Part") 
prop(roof1, parts, false, 0, 0, 35, 1, 65, "Dark red", false, "Custom")
local roof1m = Instance.new("BlockMesh") 
roof1m.Bevel = 0.1 
mesh(roof1m, roof1, 1, 1, 1) 
local roof1w = Instance.new("Weld") 
wel(roof1w, 0, 15, 0, roof1, roof1, base, 0, 0, 0) 
local obsvr = Instance.new("Part") 
prop(obsvr, parts, false, 0, 0, 35, 1, 35, "Dark red", false, "Custom")
local obsvrm = Instance.new("CylinderMesh") 
mesh(obsvrm, obsvr, 1, 0.99, 1)
local obsvrw = Instance.new("Weld") 
wel(obsvrw, 0, 0, 35, obsvr, obsvr, roof1, 0, 0, 0) 