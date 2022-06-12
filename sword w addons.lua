Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
local Attacking = false 
local color = "Really black" 
local select = false 

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
pcall(function() char["staff"]:remove() end) 

local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "staff"

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

local headw = Instance.new("Weld") 
wel(headw, 0, 1.5, 0, char.Head, char.Head, Torso, 0, 0, 0) 

local shaft = Instance.new("Part") 
prop(shaft, Model2, false, 0, 0, 0.2, 1, 0.2, "Reddish brown", false, "Custom") 
local shaftw = Instance.new("Weld") 
wel(shaftw, 0, -1, 0, shaft, shaft, Rarm, 1.55, 0, 0) 
local blade = Instance.new("Part") 
prop(blade, Model2, false, 0, 0, 1, 0.2, 0.2, "Reddish brown", false, "Custom") 
local bladew = Instance.new("Weld") 
wel(bladew, 0, -0.5, 0, blade, blade, shaft, 1.55, -1.55, 1.55) 
local blade2 = Instance.new("Part") 
prop(blade2, Model2, false, 0, 0, 0.75, 4, 0.2, "Mid stone grey", false, "Custom") 
local mesh = Instance.new("BlockMesh", blade2) 
mesh.Bevel = 0.1
local blade2w = Instance.new("Weld") 
wel(blade2w, 0, -2, 0, blade2, blade2, blade, 0, 0, 0) 

function look(time) 
if select == true then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90-90*i), math.rad(0*i), 0) 
headw.C0 = CFrame.Angles(math.rad(40*i), 0, 0) 
wait() 
end 
wait(time) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0+90*i), math.rad(0*i), 0) 
headw.C0 = CFrame.Angles(math.rad(40-40*i), 0, 0) 
wait() 
end 
end 
end 
function glide() 
if select == true then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+90*i), math.rad(-40*i), 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(180-180*i), math.rad(-40+0*i), math.rad(-40*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0+90*i), math.rad(-40+45*i), math.rad(-40+40*i)) 
wait() 
end 
end 
end 
function swing() 
if select == true then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+90*i), math.rad(40*i), 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(180-170*i), math.rad(40+0*i), 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(10+80*i), math.rad(40-40*i), 0) 
wait() 
end 
end 
end 
--addonpackone
shaft.BrickColor = BrickColor.new("New Yeller") 
blade.BrickColor = BrickColor.new("New Yeller") 
blade2.BrickColor = BrickColor.new("Bright yellow") 
color = "Bright yellow"
--endofaddonpackone 
--addonpacktwo
local shaft2 = Instance.new("Part") 
prop(shaft2, Model2, false, 0, 0, 0.2, 0.2, 0.2, color, false, "Custom") 
local mes = Instance.new('SpecialMesh', shaft2) 
mes.MeshType = "FileMesh" 
mes.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
mes.Scale = Vector3.new(0.2, 0.2, 0.2) 
local shaft2w = Instance.new("Weld") 
wel(shaft2w, 0.6, 0, 0, shaft2, shaft2, blade, 0, 0, 0) 
local shaft3 = Instance.new("Part") 
prop(shaft3, Model2, false, 0, 0, 0.2, 0.2, 0.2, color, false, "Custom") 
local me2 = Instance.new('SpecialMesh', shaft3) 
me2.MeshType = "FileMesh" 
me2.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
me2.Scale = Vector3.new(0.2, 0.2, 0.2) 
local shaft3w = Instance.new("Weld") 
wel(shaft3w, -0.6, 0, 0, shaft3, shaft3, blade, 0, 0, 0) 
--endofaddonpacktwo 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Sword"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
select = true 
RAW.Part1 = Rarm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90*i), 0, 0) 
wait() 
end 
    mouse.Button1Down:connect(function()
if Attacking == false then 
Attacking = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90-90*i), 0, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0+90*i), 0, 0) 
wait() 
end 
Attacking = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attacking == false then 
Attacking = true 
swing() 
Attacking = false 
	end 
	    if key == "e" and Attacking == false then 
Attacking = true 
glide() 
Attacking = false 
	end 
		if key == "r" and Attacking == false then 
Attacking = true 
look(5) 
Attacking = false 
	end 
    end)
end

function onDesel(mouse)
select = false 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90-90*i), 0, 0) 
wait() 
end 
RAW.Part1 = nil
LAW.Part1 = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
