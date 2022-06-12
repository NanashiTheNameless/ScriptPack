----------------------------------[[mediafire]]---------------------------------------------------------------------------------------------------------------------------------------------------------------------Epicness------------------------------------------------
local user = "luxulux" 
local players = game:service("Players") 
local player = players[user] 
local char = player.Character 
local pg = player.PlayerGui 
local attacking = false 
local torso = char.Torso 
local rarm = char["Right Arm"] 
local larm = char["Left Arm"] 
local lleg = char["Left Leg"] 
local rleg = char["Right Leg"] 
local head = char.Head 
local color = "Really blue" 
local color2 = "Bright blue" 
local charge = 100 
local maxcharge = 100
local left = false 
local right = false 
local forw = false 
local backw = false 
local fly = false 
pcall(function() torso.Derppos:remove() end) 
local bp = Instance.new("BodyPosition", torso) 
bp.maxForce = Vector3.new(0, 0, 0) 
bp.Name = "Derppos" 
bp.position = torso.Position 
pcall(function() 
head.face:remove() 
end) 
pcall(function() 
char.Shirt:remove() 
end) 
pcall(function() 
char.Pants:remove() 
end) 
for _,v in pairs(char:children()) do 
pcall(function() 
if v.className == "Hat" then 
v:remove() 
end 
end) 
end 
ids = {
chakram = "http://www.roblox.com/asset/?id=47260990", 
chakram2 = "http://www.roblox.com/asset/?id=22768172", 
snowflake = "http://www.roblox.com/asset/?id=19251107", 
diamond = "http://www.roblox.com/Asset/?id=9756362", 
ring = "http://www.roblox.com/asset/?id=3270017", 
spike = "http://www.roblox.com/asset/?id=1033714", 
tornado = "http://www.roblox.com/asset/?id=1051557", 
spiker = "http://www.roblox.com/asset/?id=15158276", 
}
function create(prt, parent, siz, cf, can, col, anc, brea, tran, ref, form, weld, part1, cf2, mesh, sca, type, id, bckup) 
part = Instance.new(prt) 
part.formFactor = form 
part.BrickColor = BrickColor.new(col) 
part.Size = siz 
part.Anchored = anc 
part.Transparency = tran 
part.Name = "ShipPart" 
part.Reflectance = ref 
part.CFrame = cf 
part.CanCollide = can 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
if brea == true then 
part:BreakJoints() 
end 
if weld == true then 
weld = Instance.new("Weld") 
weld.Part0 = part 
weld.Part1 = part1 
weld.C1 = cf2 
weld.Parent = part 
end 
if mesh ~= nil then 
mesh = Instance.new(mesh) 
mesh.Scale = sca 
if bckup == true then 
mesh.MeshType = "Sphere" 
end 
if mesh == "SpecialMesh" then 
mesh.MeshType = type 
pcall(function() 
if type == "FileMesh" then 
mesh.MeshType = "FileMesh" 
mesh.MeshId = id 
end 
end)
end 
mesh.Parent = part 
end 
part.Parent = parent 
        return part 
end 
pcall(function() 
char.mod:remove() 
char.Welds:remove() 
end) 
local model = Instance.new("Model", char) 
model.Name = "mod" 
local Model = Instance.new("Model", model) 
Model.Name = "Welds" 
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()
local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)
local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)
local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0) 
--suit
local helm = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, head, CFrame.new(0.25, 0.2, -0.5)*CFrame.Angles(math.rad(90), math.rad(45), math.rad(135)), "SpecialMesh", Vector3.new(0.15, 0.35, 0.5), "FileMesh", ids.diamond, false) 
helm.Mesh.MeshType = "FileMesh" 
helm.Mesh.MeshId = ids.diamond 
local helm2 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, head, CFrame.new(-0.25, 0.2, -0.5)*CFrame.Angles(math.rad(90), math.rad(-45), math.rad(-135)), "SpecialMesh", Vector3.new(0.15, 0.35, 0.5), "FileMesh", ids.diamond, false) 
helm2.Mesh.MeshType = "FileMesh" 
helm2.Mesh.MeshId = ids.diamond 
local helm3 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, head, CFrame.new(0, -0.45, 0)*CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1.25, 1.25, 1.25), "FileMesh", ids.diamond, false) 
helm3.Mesh.MeshType = "FileMesh" 
helm3.Mesh.MeshId = ids.ring 
local helm4 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, head, CFrame.new(0, 0.45, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(0.75, 3, 0.75), "FileMesh", ids.diamond, false) 
helm4.Mesh.MeshType = "FileMesh" 
helm4.Mesh.MeshId = ids.snowflake 
local symb1 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, torso, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1.25, 1.25, 7), "FileMesh", ids.diamond, false) 
symb1.Mesh.MeshType = "FileMesh" 
symb1.Mesh.MeshId = ids.ring 
local symb2 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, torso, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1.2, 1.2, 7), "FileMesh", ids.diamond, false) 
symb2.Mesh.MeshType = "FileMesh" 
symb2.Mesh.MeshId = ids.ring 
local symb3 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, torso, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1.15, 1.15, 7), "FileMesh", ids.diamond, false) 
symb3.Mesh.MeshType = "FileMesh" 
symb3.Mesh.MeshId = ids.ring 
local symb4 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color2, false, true, 0.5, 0, "Custom", true, torso, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(2.15, 2.15, 1.25), "Sphere", ids.diamond, true) 
local symb5 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, torso, CFrame.new(0, 0, 0.5)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1, 1), "FileMesh", ids.diamond, false) 
symb5.Mesh.MeshType = "FileMesh" 
symb5.Mesh.MeshId = ids.chakram 
local symb6 = create("Part", model, Vector3.new(1, 1, 1), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, torso, CFrame.new(0, 0, -0.5)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1, 1), "FileMesh", ids.diamond, false) 
symb6.Mesh.MeshType = "FileMesh" 
symb6.Mesh.MeshId = ids.chakram 
--wep1
local han = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, rarm, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), "CylinderMesh", Vector3.new(1.5, 2, 1.5), "Sphere", df, false) 
local han2 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(0.3, 1.75, 0.3), "FileMesh", ids.diamond, false) 
han2.Mesh.MeshType = "FileMesh" 
han2.Mesh.MeshId = ids.tornado 
local han3 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 1, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(0.25, 0.3, 0.25), "FileMesh", ids.diamond, false) 
han3.Mesh.MeshType = "FileMesh" 
han3.Mesh.MeshId = ids.spiker 
local han4 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1, 1), "FileMesh", ids.diamond, false) 
han4.Mesh.MeshType = "Wedge" 
local han5 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 2, 0.05)*CFrame.Angles(math.rad(6.125), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 2, 1), "FileMesh", ids.diamond, false) 
han5.Mesh.MeshType = "Wedge" 
local han6 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 2.5, 0.1)*CFrame.Angles(math.rad(12.25), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 2, 1), "FileMesh", ids.diamond, false) 
han6.Mesh.MeshType = "Wedge" 
local han7 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 3, 0.2)*CFrame.Angles(math.rad(18.5), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 2, 1), "FileMesh", ids.diamond, false) 
han7.Mesh.MeshType = "Wedge" 
local han8 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 1.5, -0.05)*CFrame.Angles(math.rad(-185), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1.25, 1), "FileMesh", ids.diamond, false) 
han8.Mesh.MeshType = "Wedge" 
--
local han9 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(180)), "SpecialMesh", Vector3.new(1, 1, 1), "FileMesh", ids.diamond, false) 
han9.Mesh.MeshType = "Wedge" 
local han10 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -2, 0.1)*CFrame.Angles(math.rad(180-6.125), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 2, 1), "FileMesh", ids.diamond, false) 
han10.Mesh.MeshType = "Wedge" 
local han11 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -2.5, 0.15)*CFrame.Angles(math.rad(180-12.25), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 2, 1), "FileMesh", ids.diamond, false) 
han11.Mesh.MeshType = "Wedge" 
local han12 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -3, 0.2)*CFrame.Angles(math.rad(180-18.5), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 2, 1), "FileMesh", ids.diamond, false) 
han12.Mesh.MeshType = "Wedge" 
local han13 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -1.5, -0.1)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1.25, 1), "FileMesh", ids.diamond, false) 
han13.Mesh.MeshType = "Wedge" 
local han14 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(0.25, 0.3, 0.25), "FileMesh", ids.diamond, false) 
han14.Mesh.MeshType = "FileMesh" 
han14.Mesh.MeshId = ids.spiker 
--wep2
local dhan = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, larm, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), "CylinderMesh", Vector3.new(1.5, 1.25, 1.5), "Sphere", df, false) 
local dhan2 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color, false, true, 0, 0, "Custom", true, dhan, CFrame.new(0, -0.65, 0)*CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(0.25, 0.3, 0.25), "Sphere", df, false) 
dhan2.Mesh.MeshType = "FileMesh" 
dhan2.Mesh.MeshId = ids.diamond 
local dhan3 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, dhan, CFrame.new(0, -1.25, 0)*CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1.25, 1), "FileMesh", ids.diamond, false) 
dhan3.Mesh.MeshType = "Wedge" 
local dhan4 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, dhan, CFrame.new(0, -1.25, 0)*CFrame.Angles(math.rad(180), math.rad(180), math.rad(0)), "SpecialMesh", Vector3.new(1, 1.25, 1), "FileMesh", ids.diamond, false) 
dhan4.Mesh.MeshType = "Wedge" 
local dhan5 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, dhan, CFrame.new(0, -2.5, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1.25, 1), "FileMesh", ids.diamond, false) 
dhan5.Mesh.MeshType = "Wedge" 
local dhan6 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, dhan, CFrame.new(0, -2.5, 0)*CFrame.Angles(math.rad(0), math.rad(-180), math.rad(0)), "SpecialMesh", Vector3.new(1, 1.25, 1), "FileMesh", ids.diamond, false) 
dhan6.Mesh.MeshType = "Wedge" 
local dhan7 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color, false, true, 0.5, 0, "Custom", true, dhan, CFrame.new(0, -1.85, 0)*CFrame.Angles(math.rad(0), math.rad(-180), math.rad(0)), "SpecialMesh", Vector3.new(0.2, 1, 0.15), "FileMesh", ids.diamond, false) 
dhan7.Mesh.MeshType = "FileMesh" 
dhan7.Mesh.MeshId = ids.diamond 
local dhan8 = create("Part", model, Vector3.new(0.2, 1, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, dhan, CFrame.new(0, -1.75, 0.15)*CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 2.5, 0.5), "FileMesh", ids.diamond, false) 
dhan8.Mesh.MeshType = "Wedge" 
local dhan8 = create("Part", model, Vector3.new(0.2, 0.2, 0.2), CFrame.new(0, 0, 0), false, color2, false, true, 0, 0, "Custom", true, dhan, CFrame.new(0, -3.225, 0)*CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(1, 1, 1), "FileMesh", ids.diamond, false) 
dhan8.Mesh.MeshType = "Wedge" 
--cycle
local base = create("Part", model, Vector3.new(5, 7, 2), CFrame.new(0, 15, 25), false, color, false, true, 1, 0, "Custom", false, nil, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1, 1, 1), "Sphere", df, false) 
local baseg = Instance.new("BodyGyro", base) 
baseg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local basep = Instance.new("BodyPosition", base) 
basep.maxForce = Vector3.new(0, math.huge, 0) 
basep.position = Vector3.new(0, 8, 0) 
local basef = Instance.new("BodyVelocity") 
basef.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
basef.velocity = Vector3.new(0, 0, 0) 
basef.Parent = base 
local base2 = create("Part", model, Vector3.new(5, 10, 2), CFrame.new(0, 15, 25), true, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, -2, 3)*CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1, 1, 1), "Sphere", df, false) 
local base3 = create("Part", model, Vector3.new(5, 10, 2), CFrame.new(0, 15, 25), true, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, -2, -3)*CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1, 1, 1), "Sphere", df, false) 
local base4 = create("Part", model, Vector3.new(5, 10, 2), CFrame.new(0, 15, 25), true, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 4, 3)*CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1, 1, 1), "Sphere", df, false) 
local base5 = create("Part", model, Vector3.new(5, 10, 2), CFrame.new(0, 15, 25), true, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 4, -3)*CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1, 1, 1), "Sphere", df, false) 
local base6 = create("Part", model, Vector3.new(5, 10, 5), CFrame.new(0, 15, 25), true, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 1, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(7, 7, 7), "Sphere", df, false) 
base6.Mesh.MeshType = "FileMesh" 
base6.Mesh.MeshId = ids.diamond
local base7 = create("Part", model, Vector3.new(5, 2, 5), CFrame.new(0, 15, 25), true, color2, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 7, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1.1, 1.1, 1.1), "Sphere", df, false) 
local base8 = create("Part", model, Vector3.new(5, 2, 10), CFrame.new(0, 15, 25), true, color2, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 5, -2)*CFrame.Angles(math.rad(-22.5), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1.1, 1.1, 1.1), "Sphere", df, false) 
local base9 = create("Part", model, Vector3.new(5, 2, 10), CFrame.new(0, 15, 25), true, color2, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 5, 2)*CFrame.Angles(math.rad(22.5), math.rad(0), math.rad(0)), "BlockMesh", Vector3.new(1.1, 1.1, 1.1), "Sphere", df, false) 
local base10 = create("Part", model, Vector3.new(5, 2, 5), CFrame.new(0, 15, 25), true, color2, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 7, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(5, 10, 5), "Sphere", df, false) 
base10.Mesh.MeshType = "FileMesh" 
base10.Mesh.MeshId = ids.snowflake 
local base11 = create("Seat", model, Vector3.new(5, 2, 5), CFrame.new(0, 15, 25), false, color2, false, true, 0, 0, "Custom", true, base, CFrame.new(0, 7.5, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "SpecialMesh", Vector3.new(5, 15, 10), "Sphere", df, false) 
base11.Mesh.MeshType = "FileMesh" 
base11.Mesh.MeshId = ids.ring 
local base12 = create("Part", model, Vector3.new(1, 2, 1), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(1.5, 7.5, -1.5)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "CylinderMesh", Vector3.new(0.5, 1, 0.5), "Sphere", df, false) 
local base13 = create("Part", model, Vector3.new(1, 2, 1), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(-1.5, 7.5, -1.5)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), "CylinderMesh", Vector3.new(0.5, 1, 0.5), "Sphere", df, false) 
local w = create("Part", model, Vector3.new(5, 10, 2), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, -3, 8)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), "SpecialMesh", Vector3.new(5, 10, 5), "Sphere", df, false) 
w.Mesh.MeshType = "FileMesh" 
w.Mesh.MeshId = ids.spiker
local w2 = create("Part", model, Vector3.new(4, 4, 4), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, -3, -8)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), "SpecialMesh", Vector3.new(5, 10, 5), "Sphere", df, false) 
w2.Mesh.MeshType = "FileMesh" 
w2.Mesh.MeshId = ids.spiker
local w3 = create("Part", model, Vector3.new(5, 10, 2), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, -3, 8)*CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), "SpecialMesh", Vector3.new(7, 7, 7), "Sphere", df, false) 
w3.Mesh.MeshType = "FileMesh" 
w3.Mesh.MeshId = ids.chakram
local w4 = create("Part", model, Vector3.new(4, 4, 4), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(0, -3, -8)*CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), "SpecialMesh", Vector3.new(7, 7, 7), "Sphere", df, false) 
w4.Mesh.MeshType = "FileMesh" 
w4.Mesh.MeshId = ids.chakram
local w5 = create("Part", model, Vector3.new(5, 10, 2), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(1, -3, 8)*CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), "SpecialMesh", Vector3.new(7, 7, 7), "Sphere", df, false) 
w5.Mesh.MeshType = "FileMesh" 
w5.Mesh.MeshId = ids.chakram
local w6 = create("Part", model, Vector3.new(4, 4, 4), CFrame.new(0, 15, 25), false, color, false, true, 0, 0, "Custom", true, base, CFrame.new(1, -3, -8)*CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), "SpecialMesh", Vector3.new(7, 7, 7), "Sphere", df, false) 
w6.Mesh.MeshType = "FileMesh" 
w6.Mesh.MeshId = ids.chakram
--funcs
function turnl() 
baseg.cframe = baseg.cframe * CFrame.Angles(0, 0.0628, 0) 
end 
function turnr() 
baseg.cframe = baseg.cframe * CFrame.Angles(0, -0.0628, 0) 
end 
function forward() 
basef.velocity = base.CFrame.lookVector * 50 
w.Weld.C0 = w.Weld.C0 * CFrame.Angles(0, 0.314, 0) 
w2.Weld.C0 = w2.Weld.C0 * CFrame.Angles(0, 0.314, 0) 
w3.Weld.C0 = w3.Weld.C0 * CFrame.Angles(0, 0, 0.314) 
w4.Weld.C0 = w4.Weld.C0 * CFrame.Angles(0, 0, 0.314) 
w5.Weld.C0 = w5.Weld.C0 * CFrame.Angles(0, 0, 0.314) 
w6.Weld.C0 = w6.Weld.C0 * CFrame.Angles(0, 0, 0.314) 
end 
function backward() 
basef.velocity = base.CFrame.lookVector * -50 
w.Weld.C0 = w.Weld.C0 * CFrame.Angles(0, -0.314, 0) 
w2.Weld.C0 = w2.Weld.C0 * CFrame.Angles(0, -0.314, 0) 
w3.Weld.C0 = w3.Weld.C0 * CFrame.Angles(0, 0, -0.314) 
w4.Weld.C0 = w4.Weld.C0 * CFrame.Angles(0, 0, -0.314) 
w5.Weld.C0 = w5.Weld.C0 * CFrame.Angles(0, 0, -0.314) 
w6.Weld.C0 = w6.Weld.C0 * CFrame.Angles(0, 0, -0.314) 
end 
function spark(st)
        coroutine.resume(coroutine.create(function() 
        local pos = st.Position - Vector3.new(0, 1, 0) 
        local lastpos = nil 
        local part = Instance.new("Part", workspace) 
        part.formFactor = "Custom" 
        part.Size = Vector3.new(0.2, 0.2, 0.2) 
        part.Anchored = true 
        part.Transparency = 1 
        part.BrickColor = BrickColor.new(color2) 
        part.CanCollide = false 
        part.CFrame = CFrame.new(pos) 
        lastpos = pos 
for i = 1, 50 do 
        pos = st.Position - Vector3.new(0, 1, 0) + Vector3.new(math.random(-1.5, 1.5), math.random(-1.5, 1.5), math.random(-1.5, 1.5)) 
        part.Size = Vector3.new(0.2, 0.2, (pos - lastpos).magnitude) 
        part.CFrame = CFrame.new((pos + lastpos)/2, pos) 
        part.Transparency = 0 
        lastpos = pos 
        wait() 
        end 
part:remove() 
        end)) 
end
function shoot() 
for i = 1, 5 do 
local shot = han3:clone() 
shot.Parent = workspace 
shot:BreakJoints() 
shot.Anchored = true 
shot.CFrame = han3.CFrame 
local shot2 = han14:clone() 
shot2.Parent = workspace 
shot2:BreakJoints() 
shot2.Anchored = true 
shot2.CFrame = han14.CFrame 
coroutine.resume(coroutine.create(function() 
spark(shot)
for i = 1, 50 do 
shot.CFrame = shot.CFrame * CFrame.new(0, 0.01, -0.314*2) 
shot.Mesh.Scale = shot.Mesh.Scale + Vector3.new(0.0314, 0, 0.0314) 
shot2.CFrame = shot2.CFrame * CFrame.new(0, 0.01, 0.314*2) 
shot2.Mesh.Scale = shot2.Mesh.Scale + Vector3.new(0.0314, 0, 0.0314) 
wait() 
end 
shot:remove() 
shot2:remove() 
end)) 
wait() 
end 
end 
function select()
RAW.Part1 = rarm 
LAW.Part1 = larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90*i), 0, 0) 
wait() 
end 
end 
function deselect()
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90-90*i), 0, 0) 
wait() 
end 
RAW.Part1 = nil 
LAW.Part1 = nil 
end 
--loops
coroutine.resume(coroutine.create(function() 
while wait() do 
symb5.Weld.C0 = symb5.Weld.C0 * CFrame.Angles(0, 0, -0.314) 
symb6.Weld.C0 = symb6.Weld.C0 * CFrame.Angles(0, 0, -0.314) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while wait() do 
if fly == true then 
bp.maxForce = Vector3.new(0, math.huge, 0) 
bp.position = torso.Position + Vector3.new(0, 0.5, 0) 
helm4.Weld.C0 = helm4.Weld.C0 * CFrame.Angles(0, 0.314, 0) 
else 
bp.maxForce = Vector3.new(0, 0, 0) 
bp.position = torso.Position 
end 
end 
end)) 
--tool
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", player.Backpack)
    h.Name = "Gladius CUSPIS" --Latin word for The sword of the spikes
    script.Parent = h
end
local bin = script.Parent
function onSelected(mouse)
select()
    mouse.Button1Down:connect(function()
        shoot() 
    end) 
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
        fly = true 
        end 
        if key == "f" then 
        if left == false then 
        left = true 
        turnl() 
        coroutine.resume(coroutine.create(function() 
        while wait() do 
        if left == true then 
        turnl()
        else 
        break 
        end 
        end 
        end)) 
        end 
        end 
        if key == "h" then 
        if right == false then 
        right = true 
        turnr() 
        coroutine.resume(coroutine.create(function() 
        while wait() do 
        if right == true then 
        turnr()
        else 
        break 
        end 
        end 
        end)) 
        end 
        end 
        if key == "t" then 
        if forw == false then 
        forw = true 
        forward() 
        coroutine.resume(coroutine.create(function() 
        while wait() do 
        if forw == true then 
        forward()
        else 
        basef.velocity = Vector3.new(0, 0, 0) 
        break 
        end 
        end 
        end)) 
        end 
        end 
        if key == "g" then 
        if backw == false then 
        backw = true 
        backward() 
        coroutine.resume(coroutine.create(function() 
        while wait() do 
        if backw == true then 
        backward()
        else 
        basef.velocity = Vector3.new(0, 0, 0) 
        break 
        end 
        end 
        end)) 
        end 
        end 
    end)
    mouse.KeyUp:connect(function(key)
        if key == "q" then 
        fly = false 
        end 
        if key == "f" then 
        left = false 
        end 
        if key == "h" then 
        right = false 
        end 
        if key == "t" then 
        forw = false 
        end 
        if key == "g" then 
        backw = false 
        end 
    end)
end
function onDesel(mouse)
deselect()
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
