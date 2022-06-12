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
pcall(function() script.Name = "SPLEEEEEEEEENNNNNNYYYYYYY <3" end) 

pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end) 

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
headw = Instance.new("Weld") 
wel(headw, 0, 1.5, 0, char, char.Head, Torso, 0, 0, 0) 
--**>[[parts]]<**--
local parts = Instance.new("Model") 
parts.Parent = char 
parts.Name = "Parts" 
--**>[[assasainparts]]<**--
local assasainparts = Instance.new("Model") 
assasainparts.Parent = parts 
assasainparts.Name = "assasain" 
-------------------
local pos = Instance.new("BodyPosition") 
--
local handle = Instance.new("Part") 
prop(handle, parts, false, 0, 0, 0.2, 1, 0.2, "Reddish brown", false, "Custom")
local handlem = Instance.new("SpecialMesh") 
mesh(handlem, handle, 1.25, 1.5, 1.25, "Head") 
local handlew = Instance.new("Weld") 
wel(handlew, 0, -1.075, 0, handle, handle, Rarm, 1.55, 0, 0) 
local handle2 = Instance.new("Part") 
prop(handle2, parts, false, 1, 0, 0.2, 1, 0.2, "Reddish brown", false, "Custom")
local handle2m = Instance.new("SpecialMesh") 
mesh(handle2m, handle2, 1.25, 1.5, 1.25, "Head") 
local handle2w = Instance.new("Weld") 
wel(handle2w, 0, 1.475, 0, handle2, handle2, handle, 0, 0, 0) 
local handle3 = Instance.new("Part") 
prop(handle3, parts, false, 1, 0, 0.2, 1, 0.2, "Reddish brown", false, "Custom")
local handle3m = Instance.new("SpecialMesh") 
mesh(handle3m, handle3, 1.25, 1.5, 1.25, "Head") 
local handle3w = Instance.new("Weld") 
wel(handle3w, 0, -1.475, 0, handle3, handle3, handle, 0, 0, 0) 
local handle4 = Instance.new("Part") 
prop(handle4, parts, false, 1, 1, 0.5, 1, 0.5, "Reddish brown", false, "Custom")
local handle4m = Instance.new("CylinderMesh") 
meshc(handle4m, handle4, 1.25, 1, 1.25) 
local handle4w = Instance.new("Weld") 
wel(handle4w, 0, -1.275, 0, handle4, handle4, handle, 0, 0, 0) 
local handle5 = Instance.new("Part") 
prop(handle5, parts, false, 1, 1, 0.1, 1, 0.1, "Reddish brown", false, "Custom")
local handle5m = Instance.new("CylinderMesh") 
meshc(handle5m, handle5, 0.75, 2, 0.75) 
local handle5w = Instance.new("Weld") 
wel(handle5w, 0, -1.475, 0, handle5, handle5, handle, 0, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Hop" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
    mouse.Button1Down:connect(function()
if mini == true then 
ms = mouse.Target 
name = ms.Parent.Name 
for _,v in pairs(game.Players:GetChildren()) do 
if v.Name == name then 
if (v.Character.Torso.Position - Torso.Position).magnitude < 5 then 
handle5.Transparency = 0 
local weld = Instance.new("Weld", v.Character) 
wel(weld, 0, 0, -0.75, v.Character, v.Character.Torso, Torso, 0, 0, 0) 
v.Character.Humanoid.PlatformStand = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(0+90*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, i) * CFrame.Angles(math.rad(90+0*i), math.rad(90+0*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 1-i) * CFrame.Angles(math.rad(90+0*i), math.rad(90-90*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
v.Character:BreakJoints() 
handle5.Transparency = 1 
end 
end 
end 
end 
    end)
    mouse.KeyDown:connect(function(key)
print(key) 
if key == "f" then 
if mini == true then 
handle5.Transparency = 0 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0+0*i), math.rad(0+90*i), math.rad(0-25*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(90+0*i), math.rad(-25+25*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
wait(0.25) 
char:BreakJoints() 
handle5.Transparency = 1 
end 
end 
if key == "g" then 
if mini == true then 
mini = false 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(40*i), math.rad(-25*i)) 
LAW.C0 = CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(90*i), math.rad(40*i), math.rad(25*i)) 
wait() 
end 
handle3.Transparency = 0 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(40-120*i), math.rad(-25+0*i)) 
LAW.C0 = CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(40+0*i), math.rad(25+0*i)) 
wait() 
end 
handle2.Transparency = 0 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(-80+80*i), math.rad(-25+25*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-90*i), math.rad(40-40*i), math.rad(25-25*i)) 
wait() 
end 
else 
mini = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(40*i), math.rad(-25*i)) 
LAW.C0 = CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(90*i), math.rad(40*i), math.rad(25*i)) 
wait() 
end 
handle3.Transparency = 1 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(40-120*i), math.rad(-25+0*i)) 
LAW.C0 = CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(40+0*i), math.rad(25+0*i)) 
wait() 
end 
handle2.Transparency = 1 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(-80+80*i), math.rad(-25+25*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-90*i), math.rad(40-40*i), math.rad(25-25*i)) 
wait() 
end 
end 
end 
if key == "k" then 
if mini == false then 
on = true 
pos.Parent = Torso 
pos.maxForce = Vector3.new(0, math.huge, 0) 
pos.position = Torso.Position + Vector3.new(0, 7.5, 0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+90*i), math.rad(0+0*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
for i = 0, math.huge, 0.1 do 
if on == true then 
RAW.C0 = CFrame.Angles(math.rad(180+0*i), math.rad(0+720*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
wait() 
end 
end 
end 
if key == "h" then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90-110*i), math.rad(0+0*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
handle3.Transparency = 1 
handle2.Transparency = 1 
handle4.Transparency = 0 
local f = Instance.new("Fire", handle4) 
f.Heat = -25 
f.Size = 1
wait(1.5) 
f:remove() 
handle4.Transparency = 1 
handle.Transparency = 1 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(-20+170*i), math.rad(0+0*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
wait(2) 
local ex = Instance.new("Explosion", workspace) 
ex.Position = mouse.hit.p 
handle.Transparency = 0 
mini = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(150-60*i), math.rad(0+0*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
end
if key == "j" then 
if ather == false then 
ather = true 
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
assasain6.Name = "Strap" 
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
else 
ather = false 
char.Head.Transparency = 1 
for _, v in pairs(assasainparts:GetChildren()) do 
v:remove() 
end 
end 
end 
    end)
	mouse.KeyUp:connect(function(key)
	if key == "k" then 
	on = false 
pos.Parent = nil 
	for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(180-90*i), math.rad(0+0*i), math.rad(0+0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+0*i), math.rad(0+0*i), math.rad(0+0*i)) 
wait() 
end 
	end 
	end) 
end

function onDesel(mouse)
if mini == true then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90-90*i), 0, 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
wait() 
end 
end 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
