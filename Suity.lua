local players = game:GetService("Players") 
local workspace = game:GetService("Workspace") 
Me = players.LocalPlayer 
pg = Me.PlayerGui 
char = Me.Character
name = Me.Name 
Torso = char.Torso
Head = char.Head 
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
local MainColor = "Really blue" 
local SecondColor = "White" 
local mode = 1 
 
for _,v in pairs(char:GetChildren()) do 
if v.className == "Part" then 
v.Transparency = 1 
end 
end 
 
function ComputePos(pos1, pos2)
        local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
        return CFrame.new(pos1, pos3)
end
 
pcall(function() Head.face:remove() end) 
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
 
pcall(function() char[":P"]:remove() end)
pcall(function() char.Suitz:remove() end) 
local mo = Instance.new("Model", char) 
mo.Name = "Suitz" 
local Model = Instance.new("Model",char)
Model.Name = ":P"
 
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
 
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
 
local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()
 
local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
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
 
local head = Instance.new("Part") 
prop(head, mo, false, 0, 0, 2, 1, 1, MainColor, false, "Custom") 
local headm = Instance.new("SpecialMesh") 
mesh(headm, head, 1.3, 1.3, 1.3, "Head") 
local headw = Instance.new("Weld") 
wel(headw, 0, 0, 0, head, head, Head, 0, 0, 0) 
local head2 = Instance.new("Part") 
prop(head2, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local head2m = Instance.new("CylinderMesh") 
mesh(head2m, head2, 1, 0.25, 1) 
local head2w = Instance.new("Weld") 
wel(head2w, 0, 0.25, -0.25, head2, head2, head, 0, 0, 0) 
local head3 = Instance.new("Part") 
prop(head3, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local head3m = Instance.new("CylinderMesh") 
mesh(head3m, head3, 0.05, 1, 0.05) 
local head3w = Instance.new("Weld") 
wel(head3w, 0.25, 0.75, 0, head3, head3, head, 0, 0, 0) 
local head4 = Instance.new("Part") 
prop(head4, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local head4m = Instance.new("SpecialMesh") 
mesh(head4m, head4, 0.1, 0.1, 0.1, "Sphere") 
local head4w = Instance.new("Weld") 
wel(head4w, 0, 0.5, 0, head4, head4, head3, 0, 0, 0) 
--
local torso = Instance.new("Part") 
prop(torso, mo, false, 0, 0, 2, 1, 1, MainColor, false, "Custom") 
local torsom = Instance.new("BlockMesh") 
mesh(torsom, torso, 1, 1, 1) 
torsom.Bevel = 0.1
local torsow = Instance.new("Weld") 
wel(torsow, 0, 0.5, 0, torso, torso, Torso, 0, 0, 0) 
local torso2 = Instance.new("Part") 
prop(torso2, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso2m = Instance.new("BlockMesh") 
mesh(torso2m, torso2, 1, 1, 1) 
torso2m.Bevel = 0.1
local torso2w = Instance.new("Weld") 
wel(torso2w, 0.5, -0.15, 0, torso2, torso2, Torso, 0, 0, 0.5) 
local torso3 = Instance.new("Part") 
prop(torso3, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso3m = Instance.new("BlockMesh") 
mesh(torso3m, torso3, 1, 1, 1) 
torso3m.Bevel = 0.1
local torso3w = Instance.new("Weld") 
wel(torso3w, -0.5, -0.15, 0, torso3, torso3, Torso, 0, 0, -0.5) 
local torso4 = Instance.new("Part") 
prop(torso4, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso4m = Instance.new("BlockMesh") 
mesh(torso4m, torso4, 1, 1, 1) 
torso4m.Bevel = 0.1
local torso4w = Instance.new("Weld") 
wel(torso4w, -0.35, -0.35, 0, torso4, torso4, Torso, 0, 0, -1) 
local torso5 = Instance.new("Part") 
prop(torso5, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso5m = Instance.new("BlockMesh") 
mesh(torso5m, torso5, 1, 1, 1) 
torso5m.Bevel = 0.1
local torso5w = Instance.new("Weld") 
wel(torso5w, 0.35, -0.35, 0, torso5, torso5, Torso, 0, 0, 1) 
local torso6 = Instance.new("Part") 
prop(torso6, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso6m = Instance.new("BlockMesh") 
mesh(torso6m, torso6, 1, 1, 1) 
torso6m.Bevel = 0.1
local torso6w = Instance.new("Weld") 
wel(torso6w, 0.5, -0.75, 0, torso6, torso6, Torso, 0, 0, 2) 
local torso7 = Instance.new("Part") 
prop(torso7, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso7m = Instance.new("BlockMesh") 
mesh(torso7m, torso7, 1, 1, 1) 
torso7m.Bevel = 0.1
local torso7w = Instance.new("Weld") 
wel(torso7w, -0.5, -0.75, 0, torso7, torso7, Torso, 0, 0, -2) 
local torso8 = Instance.new("Part") 
prop(torso8, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso8m = Instance.new("BlockMesh") 
mesh(torso8m, torso8, 1.5, 1, 1) 
torso8m.Bevel = 0.1
local torso8w = Instance.new("Weld") 
wel(torso8w, 0, -1.15, 0, torso8, torso8, Torso, 0, 0, 0) 
local torso9 = Instance.new("Part") 
prop(torso9, mo, false, 0, 0, 1, 0.25, 1, MainColor, false, "Custom") 
local torso9m = Instance.new("BlockMesh") 
mesh(torso9m, torso9, 1.4, 1, 1) 
torso9m.Bevel = 0.1
local torso9w = Instance.new("Weld") 
wel(torso9w, 0, -1, 0, torso9, torso9, Torso, 0, 0, 0) 
local torso10 = Instance.new("Part") 
prop(torso10, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local torso10m = Instance.new("BlockMesh") 
mesh(torso10m, torso10, 0.925, 1.1, 0.99) 
torso10m.Bevel = 0.1
local torso10w = Instance.new("Weld") 
wel(torso10w, 0, -0.5, 0, torso10, torso10, Torso, 0, 0, 0) 
--
local rleg = Instance.new("Part") 
prop(rleg, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rlegm = Instance.new("BlockMesh") 
mesh(rlegm, rleg, 1, 0.25, 1) 
rlegm.Bevel = 0.1
local rlegw = Instance.new("Weld") 
wel(rlegw, 0, 0.75, 0, rleg, rleg, Rleg, 0, 0, 0) 
local rleg2 = Instance.new("Part") 
prop(rleg2, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rleg2m = Instance.new("BlockMesh") 
mesh(rleg2m, rleg2, 1, 0.25, 1) 
rleg2m.Bevel = 0.1
local rleg2w = Instance.new("Weld") 
wel(rleg2w, 0, 0.25, 0, rleg2, rleg2, Rleg, 0, 0, 0) 
local rleg3 = Instance.new("Part") 
prop(rleg3, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rleg3m = Instance.new("BlockMesh") 
mesh(rleg3m, rleg3, 1, 0.25, 1) 
rleg3m.Bevel = 0.1
local rleg3w = Instance.new("Weld") 
wel(rleg3w, 0, -0.25, 0, rleg3, rleg3, Rleg, 0, 0, 0) 
local rleg4 = Instance.new("Part") 
prop(rleg4, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rleg4m = Instance.new("BlockMesh") 
mesh(rleg4m, rleg4, 1, 0.25, 1) 
rleg4m.Bevel = 0.1
local rleg4w = Instance.new("Weld") 
wel(rleg4w, 0, -0.75, 0, rleg4, rleg4, Rleg, 0, 0, 0) 
local rleg5 = Instance.new("Part") 
prop(rleg5, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rleg5m = Instance.new("BlockMesh") 
mesh(rleg5m, rleg5, 1, 0.25, 1) 
rleg5m.Bevel = 0.1
local rleg5w = Instance.new("Weld") 
wel(rleg5w, 0, -0.5, 0, rleg5, rleg5, Rleg, 0, 0, 0.5) 
local rleg6 = Instance.new("Part") 
prop(rleg6, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rleg6m = Instance.new("BlockMesh") 
mesh(rleg6m, rleg6, 1, 0.25, 1) 
rleg6m.Bevel = 0.1
local rleg6w = Instance.new("Weld") 
wel(rleg6w, 0, -0.5, 0, rleg6, rleg6, Rleg, 0, 0, -0.5) 
local rleg7 = Instance.new("Part") 
prop(rleg7, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rleg7m = Instance.new("BlockMesh") 
mesh(rleg7m, rleg7, 1, 0.25, 1) 
rleg7m.Bevel = 0.1
local rleg7w = Instance.new("Weld") 
wel(rleg7w, 0, 0, 0, rleg7, rleg7, Rleg, 0, 0, 0.5) 
local rleg8 = Instance.new("Part") 
prop(rleg8, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rleg8m = Instance.new("BlockMesh") 
mesh(rleg8m, rleg8, 1, 0.25, 1) 
rleg8m.Bevel = 0.1
local rleg8w = Instance.new("Weld") 
wel(rleg8w, 0, 0, 0, rleg8, rleg8, Rleg, 0, 0, -0.5) 
local rleg9 = Instance.new("Part") 
prop(rleg9, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rleg9m = Instance.new("BlockMesh") 
mesh(rleg9m, rleg9, 1, 0.25, 1) 
rleg9m.Bevel = 0.1
local rleg9w = Instance.new("Weld") 
wel(rleg9w, 0, 0.5, 0, rleg9, rleg9, Rleg, 0, 0, 0.5) 
local rleg10 = Instance.new("Part") 
prop(rleg10, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rleg10m = Instance.new("BlockMesh") 
mesh(rleg10m, rleg10, 1, 0.25, 1) 
rleg10m.Bevel = 0.1
local rleg10w = Instance.new("Weld") 
wel(rleg10w, 0, 0.5, 0, rleg10, rleg10, Rleg, 0, 0, -0.5) 
--
local lleg = Instance.new("Part") 
prop(lleg, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local llegm = Instance.new("BlockMesh") 
mesh(llegm, lleg, 1, 0.25, 1) 
llegm.Bevel = 0.1
local llegw = Instance.new("Weld") 
wel(llegw, 0, 0.75, 0, lleg, lleg, Lleg, 0, 0, 0) 
local lleg2 = Instance.new("Part") 
prop(lleg2, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local lleg2m = Instance.new("BlockMesh") 
mesh(lleg2m, lleg2, 1, 0.25, 1) 
lleg2m.Bevel = 0.1
local lleg2w = Instance.new("Weld") 
wel(lleg2w, 0, 0.25, 0, lleg2, lleg2, Lleg, 0, 0, 0) 
local lleg3 = Instance.new("Part") 
prop(lleg3, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local lleg3m = Instance.new("BlockMesh") 
mesh(lleg3m, lleg3, 1, 0.25, 1) 
lleg3m.Bevel = 0.1
local lleg3w = Instance.new("Weld") 
wel(lleg3w, 0, -0.25, 0, lleg3, lleg3, Lleg, 0, 0, 0) 
local lleg4 = Instance.new("Part") 
prop(lleg4, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local lleg4m = Instance.new("BlockMesh") 
mesh(lleg4m, lleg4, 1, 0.25, 1) 
lleg4m.Bevel = 0.1
local lleg4w = Instance.new("Weld") 
wel(lleg4w, 0, -0.75, 0, lleg4, lleg4, Lleg, 0, 0, 0) 
local lleg5 = Instance.new("Part") 
prop(lleg5, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local lleg5m = Instance.new("BlockMesh") 
mesh(lleg5m, lleg5, 1, 0.25, 1) 
lleg5m.Bevel = 0.1
local lleg5w = Instance.new("Weld") 
wel(lleg5w, 0, -0.5, 0, lleg5, lleg5, Lleg, 0, 0, 0.5) 
local lleg6 = Instance.new("Part") 
prop(lleg6, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local lleg6m = Instance.new("BlockMesh") 
mesh(lleg6m, lleg6, 1, 0.25, 1) 
lleg6m.Bevel = 0.1
local lleg6w = Instance.new("Weld") 
wel(lleg6w, 0, -0.5, 0, lleg6, lleg6, Lleg, 0, 0, -0.5) 
local lleg7 = Instance.new("Part") 
prop(lleg7, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local lleg7m = Instance.new("BlockMesh") 
mesh(lleg7m, lleg7, 1, 0.25, 1) 
lleg7m.Bevel = 0.1
local lleg7w = Instance.new("Weld") 
wel(lleg7w, 0, 0, 0, lleg7, lleg7, Lleg, 0, 0, 0.5) 
local lleg8 = Instance.new("Part") 
prop(lleg8, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local lleg8m = Instance.new("BlockMesh") 
mesh(lleg8m, lleg8, 1, 0.25, 1) 
lleg8m.Bevel = 0.1
local lleg8w = Instance.new("Weld") 
wel(lleg8w, 0, 0, 0, lleg8, lleg8, Lleg, 0, 0, -0.5) 
local lleg9 = Instance.new("Part") 
prop(lleg9, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local lleg9m = Instance.new("BlockMesh") 
mesh(lleg9m, lleg9, 1, 0.25, 1) 
lleg9m.Bevel = 0.1
local lleg9w = Instance.new("Weld") 
wel(lleg9w, 0, 0.5, 0, lleg9, lleg9, Lleg, 0, 0, 0.5) 
local lleg10 = Instance.new("Part") 
prop(lleg10, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local lleg10m = Instance.new("BlockMesh") 
mesh(lleg10m, lleg10, 1, 0.25, 1) 
lleg10m.Bevel = 0.1
local lleg10w = Instance.new("Weld") 
wel(lleg10w, 0, 0.5, 0, lleg10, lleg10, Lleg, 0, 0, -0.5) 
--
local rarm = Instance.new("Part") 
prop(rarm, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rarmm = Instance.new("BlockMesh") 
mesh(rarmm, rarm, 1, 0.25, 1) 
rarmm.Bevel = 0.1
local rarmw = Instance.new("Weld") 
wel(rarmw, 0, 0.75, 0, rarm, rarm, Rarm, 0, 0, 0) 
local rarm2 = Instance.new("Part") 
prop(rarm2, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rarm2m = Instance.new("BlockMesh") 
mesh(rarm2m, rarm2, 1, 0.25, 1) 
rarm2m.Bevel = 0.1
local rarm2w = Instance.new("Weld") 
wel(rarm2w, 0, 0.25, 0, rarm2, rarm2, Rarm, 0, 0, 0) 
local rarm3 = Instance.new("Part") 
prop(rarm3, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rarm3m = Instance.new("BlockMesh") 
mesh(rarm3m, rarm3, 1, 0.25, 1) 
rarm3m.Bevel = 0.1
local rarm3w = Instance.new("Weld") 
wel(rarm3w, 0, -0.25, 0, rarm3, rarm3, Rarm, 0, 0, 0) 
local rarm4 = Instance.new("Part") 
prop(rarm4, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local rarm4m = Instance.new("BlockMesh") 
mesh(rarm4m, rarm4, 1, 0.25, 1) 
rarm4m.Bevel = 0.1
local rarm4w = Instance.new("Weld") 
wel(rarm4w, 0, -0.75, 0, rarm4, rarm4, Rarm, 0, 0, 0) 
local rarm5 = Instance.new("Part") 
prop(rarm5, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rarm5m = Instance.new("BlockMesh") 
mesh(rarm5m, rarm5, 1, 0.25, 1) 
rarm5m.Bevel = 0.1
local rarm5w = Instance.new("Weld") 
wel(rarm5w, 0, -0.5, 0, rarm5, rarm5, Rarm, 0, 0, 0.5) 
local rarm6 = Instance.new("Part") 
prop(rarm6, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rarm6m = Instance.new("BlockMesh") 
mesh(rarm6m, rarm6, 1, 0.25, 1) 
rarm6m.Bevel = 0.1
local rarm6w = Instance.new("Weld") 
wel(rarm6w, 0, -0.5, 0, rarm6, rarm6, Rarm, 0, 0, -0.5) 
local rarm7 = Instance.new("Part") 
prop(rarm7, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rarm7m = Instance.new("BlockMesh") 
mesh(rarm7m, rarm7, 1, 0.25, 1) 
rarm7m.Bevel = 0.1
local rarm7w = Instance.new("Weld") 
wel(rarm7w, 0, 0, 0, rarm7, rarm7, Rarm, 0, 0, 0.5) 
local rarm8 = Instance.new("Part") 
prop(rarm8, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rarm8m = Instance.new("BlockMesh") 
mesh(rarm8m, rarm8, 1, 0.25, 1) 
rarm8m.Bevel = 0.1
local rarm8w = Instance.new("Weld") 
wel(rarm8w, 0, 0, 0, rarm8, rarm8, Rarm, 0, 0, -0.5) 
local rarm9 = Instance.new("Part") 
prop(rarm9, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rarm9m = Instance.new("BlockMesh") 
mesh(rarm9m, rarm9, 1, 0.25, 1) 
rarm9m.Bevel = 0.1
local rarm9w = Instance.new("Weld") 
wel(rarm9w, 0, 0.5, 0, rarm9, rarm9, Rarm, 0, 0, 0.5) 
local rarm10 = Instance.new("Part") 
prop(rarm10, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local rarm10m = Instance.new("BlockMesh") 
mesh(rarm10m, rarm10, 1, 0.25, 1) 
rarm10m.Bevel = 0.1
local rarm10w = Instance.new("Weld") 
wel(rarm10w, 0, 0.5, 0, rarm10, rarm10, Rarm, 0, 0, -0.5) 
--
local larm = Instance.new("Part") 
prop(larm, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local larmm = Instance.new("BlockMesh") 
mesh(larmm, larm, 1, 0.25, 1) 
larmm.Bevel = 0.1
local larmw = Instance.new("Weld") 
wel(larmw, 0, 0.75, 0, larm, larm, Larm, 0, 0, 0) 
local larm2 = Instance.new("Part") 
prop(larm2, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local larm2m = Instance.new("BlockMesh") 
mesh(larm2m, larm2, 1, 0.25, 1) 
larm2m.Bevel = 0.1
local larm2w = Instance.new("Weld") 
wel(larm2w, 0, 0.25, 0, larm2, larm2, Larm, 0, 0, 0) 
local larm3 = Instance.new("Part") 
prop(larm3, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local larm3m = Instance.new("BlockMesh") 
mesh(larm3m, larm3, 1, 0.25, 1) 
larm3m.Bevel = 0.1
local larm3w = Instance.new("Weld") 
wel(larm3w, 0, -0.25, 0, larm3, larm3, Larm, 0, 0, 0) 
local larm4 = Instance.new("Part") 
prop(larm4, mo, false, 0, 0, 1, 1, 1, MainColor, false, "Custom") 
local larm4m = Instance.new("BlockMesh") 
mesh(larm4m, larm4, 1, 0.25, 1) 
larm4m.Bevel = 0.1
local larm4w = Instance.new("Weld") 
wel(larm4w, 0, -0.75, 0, larm4, larm4, Larm, 0, 0, 0) 
local larm5 = Instance.new("Part") 
prop(larm5, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local larm5m = Instance.new("BlockMesh") 
mesh(larm5m, larm5, 1, 0.25, 1) 
larm5m.Bevel = 0.1
local larm5w = Instance.new("Weld") 
wel(larm5w, 0, -0.5, 0, larm5, larm5, Larm, 0, 0, 0.5) 
local larm6 = Instance.new("Part") 
prop(larm6, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local larm6m = Instance.new("BlockMesh") 
mesh(larm6m, larm6, 1, 0.25, 1) 
larm6m.Bevel = 0.1
local larm6w = Instance.new("Weld") 
wel(larm6w, 0, -0.5, 0, larm6, larm6, Larm, 0, 0, -0.5) 
local larm7 = Instance.new("Part") 
prop(larm7, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local larm7m = Instance.new("BlockMesh") 
mesh(larm7m, larm7, 1, 0.25, 1) 
larm7m.Bevel = 0.1
local larm7w = Instance.new("Weld") 
wel(larm7w, 0, 0, 0, larm7, larm7, Larm, 0, 0, 0.5) 
local larm8 = Instance.new("Part") 
prop(larm8, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local larm8m = Instance.new("BlockMesh") 
mesh(larm8m, larm8, 1, 0.25, 1) 
larm8m.Bevel = 0.1
local larm8w = Instance.new("Weld") 
wel(larm8w, 0, 0, 0, larm8, larm8, Larm, 0, 0, -0.5) 
local larm9 = Instance.new("Part") 
prop(larm9, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local larm9m = Instance.new("BlockMesh") 
mesh(larm9m, larm9, 1, 0.25, 1) 
larm9m.Bevel = 0.1
local larm9w = Instance.new("Weld") 
wel(larm9w, 0, 0.5, 0, larm9, larm9, Larm, 0, 0, 0.5) 
local larm10 = Instance.new("Part") 
prop(larm10, mo, false, 0, 0, 1, 1, 1, SecondColor, false, "Custom") 
local larm10m = Instance.new("BlockMesh") 
mesh(larm10m, larm10, 1, 0.25, 1) 
larm10m.Bevel = 0.1
local larm10w = Instance.new("Weld") 
wel(larm10w, 0, 0.5, 0, larm10, larm10, Larm, 0, 0, -0.5) 
-------
pcall(function() pg.Modes:remove() end) 
local gui = Instance.new("ScreenGui", pg) 
gui.Name = "Modes" 
local fr = Instance.new("Frame", gui) 
fr.Position = UDim2.new(0, 0, 0, 250) 
fr.Size = UDim2.new(0.5, 0, 0, 0) 
fr.BackgroundTransparency = 1 
local tl = Instance.new("TextLabel", fr) 
tl.Text = "Mode: " 
tl.Position = UDim2.new(0, 0, 0, 0) 
tl.Size = UDim2.new(0.25, 0, 0, 25) 
tl.BackgroundColor = BrickColor.new(MainColor) 
tl.BackgroundTransparency = 0.25 
tl.TextColor = BrickColor.new(SecondColor) 
coroutine.resume(coroutine.create(function() 
while wait() do 
if mode == 1 then 
tl.Text = "Mode: Lazer" 
end 
if mode == 2 then 
tl.Text = "Mode: Ignite" 
end 
if mode == 3 then 
tl.Text = "Mode: Jump" 
end 
if mode == 4 then 
tl.Text = "Mode: Rockets" 
end 
if mode == 5 then 
tl.Text = "Mode: Block" 
end 
if mode == 6 then 
tl.Text = "Mode: Hang" 
end 
end 
end)) 
-------
function lazer(to, mouse) 
        local mouseHit = mouse
        local Orig = Torso.CFrame
                local bg = Instance.new("BodyGyro",Torso)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                local bp = Instance.new("BodyPosition",Torso)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
local pos1 = head2.Position 
local pos2 = to 
local mag = (pos1 - pos2).magnitude 
local shot = Instance.new("Part", workspace) 
head2.BrickColor = BrickColor.new("Really red") 
shot.BrickColor = BrickColor.new("Really red") 
shot.Size = Vector3.new(1, 1, 1) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2)/2, pos2) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(1, 0.25, mag) 
coroutine.resume(coroutine.create(function() 
wait(0.15) 
shot:remove() 
head2.BrickColor = BrickColor.new(SecondColor) 
bp:remove() 
bg:remove() 
end)) 
end 
 
function inc(to, mouse) 
        local mouseHit = mouse
        local Orig = Torso.CFrame
                local bg = Instance.new("BodyGyro",Torso)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                local bp = Instance.new("BodyPosition",Torso)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
local pos1 = head2.Position 
local pos2 = to 
local mag = (pos1 - pos2).magnitude 
local shot = Instance.new("Part", workspace) 
head2.BrickColor = BrickColor.new("Bright orange") 
shot.BrickColor = BrickColor.new("Bright orange") 
shot.Size = Vector3.new(1, 1, 1) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2)/2, pos2) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(1, 0.25, mag) 
coroutine.resume(coroutine.create(function() 
wait(0.15) 
shot:remove() 
head2.BrickColor = BrickColor.new(SecondColor) 
bp:remove() 
bg:remove() 
end)) 
end 
 
function block(mouse) 
        local mouseHit = mouse
        local Orig = Torso.CFrame
                local bg = Instance.new("BodyGyro",Torso)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                local bp = Instance.new("BodyPosition",Torso)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
for i = 0, 1, 0.1 do 
local shot = Instance.new("Part", workspace) 
shot.BrickColor = BrickColor.new("White") 
shot.Size = Vector3.new(5, 5, 2) 
shot.Anchored = true 
shot.Transparency = 0.5 
shot.CanCollide = false 
shot.CFrame = Torso.CFrame * CFrame.Angles(0, math.rad(90*i), 0) + Vector3.new(math.sin(25*i), 0, 0) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(1, 1, 1) 
shot.Touched:connect(function(hit) 
if hit.Parent.Name ~= name and hit.Parent.Name ~= "Suitz" then 
hit.Parent:BreakJoints() 
shot:remove() 
end 
end) 
coroutine.resume(coroutine.create(function() 
wait(5) 
shot:remove() 
end)) 
wait() 
end 
coroutine.resume(coroutine.create(function() 
wait(0.15) 
bp:remove() 
bg:remove() 
end)) 
end 
 
function hang(mouse) 
        local mouseHit = mouse
        local Orig = Torso.CFrame
                local bg = Instance.new("BodyGyro",Torso)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                local bp = Instance.new("BodyPosition",Torso)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
local pos1 = mouse 
local pos2 = Vector3.new(0, 50, 0) 
local shot = Instance.new("Part", workspace) 
shot.BrickColor = BrickColor.new("White") 
shot.Size = Vector3.new(1, 1, 1) 
shot.Anchored = true 
shot.Transparency = 0 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2)/2, pos2) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(0.2, 0.2, (pos1 - pos2).magnitude) 
for _,v in pairs(workspac:children()) do 
h = v:findFirstChild("Humanoid") 
t = v:findFirstChild("Torso") 
if h ~= nil and t ~= nil then 
if v.Name ~= name then 
if (t.Position - pos1).magnitude < 4 then 
pos1 = t.Position 
shot.CFrame = CFrame.new((pos1 + pos2)/2, pos2) 
shotm.Scale = Vector3.new(0.2, 0.2, (pos1 - pos2).magnitude) 
t.Anchored = true 
wait(0.5) 
t:BreakJoints() 
end 
end 
end 
end 
coroutine.resume(coroutine.create(function() 
wait(1) 
shot:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.15) 
bp:remove() 
bg:remove() 
end)) 
end 
 
function rckt(to, mouse) 
        local mouseHit = mouse
        local Orig = Torso.CFrame
                local bg = Instance.new("BodyGyro",Torso)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                local bp = Instance.new("BodyPosition",Torso)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
local shot = Instance.new("Part", workspace) 
shot.BrickColor = BrickColor.new("Really red") 
shot.Size = Vector3.new(1, 1, 1) 
shot.Anchored = false 
shot.CanCollide = false 
shot.CFrame = Rarm.CFrame 
shot.Velocity = Head.CFrame.lookVector * 50 
shot:BreakJoints() 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(0.5, 0.5, 1) 
local shotg = Instance.new("BodyGyro", shot) 
shotg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local shotp = Instance.new("BodyPosition", shot) 
shotp.position = Rarm.Position 
shotp.maxForce = Vector3.new(0, math.huge, 0) 
shot.Touched:connect(function(hit) 
if hit.Parent.Name ~= name and hit.Parent.Name ~= "Suitz" then 
hit.Parent:BreakJoints() 
shot:remove() 
end 
end) 
coroutine.resume(coroutine.create(function() 
wait(5) 
shot:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.15) 
bp:remove() 
bg:remove() 
end)) 
end 
 
function jump(to) 
local bp = Instance.new("BodyPosition",Torso)
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.P = 14000
bp.position = Torso.Position + Vector3.new(0, 50, 0) 
wait(0.3) 
bp.position = to + Vector3.new(0, 5, 0) 
wait(0.5) 
bp:remove() 
end 
-------
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Action" 
    script.Parent = h
end
 
local bin = script.Parent
 
function onSelected(mouse)
    mouse.Button1Down:connect(function()
local asdf = mouse.Target 
if mode == 1 then 
        lazer(mouse.hit.p, mouse.hit.p) 
                if asdf.Parent:findFirstChild("Humanoid") ~= nil then 
                asdf.Parent.Humanoid:TakeDamage(25) 
                end 
end 
if mode == 2 then 
        inc(mouse.hit.p, mouse.hit.p) 
                if asdf.Parent:findFirstChild("Humanoid") ~= nil then 
                asdf.Parent.Humanoid:TakeDamage(10) 
                local fire = Instance.new("Fire", asdf) 
                end 
end 
if mode == 3 then 
        jump(mouse.hit.p) 
end 
if mode == 4 then 
        rckt(mouse.hit.p, mouse.hit.p) 
end 
if mode == 5 then 
block(mouse.hit.p) 
end 
if mode == 6 then 
hang(mouse.hit.p) 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
        if mode <= 1 then 
        mode = 7 
        end 
        mode = mode - 1 
        end 
        if key == "e" then 
        if mode >= 6 then 
        mode = 0 
        end 
        mode = mode + 1 
        end 
    end)
end
 
function onDesel(mouse)
end
 
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)