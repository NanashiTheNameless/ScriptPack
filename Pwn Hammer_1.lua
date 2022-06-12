local Me = game.Players.LocalPlayer 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"] 
local Attkin = true 
pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end)
local Model = Instance.new("Model",char)
Model.Name = ":P" 
local prts = Instance.new("Model", char) 
prts.Name = "Parts" 
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
Handle = Instance.new("Part") 
Handle.Transparency = 0
Handle.Parent = prts 
Handle.formFactor = "Custom" 
Handle.Size = Vector3.new(0.25,1.2,0.25)  -- Om nom nom
Handle.BrickColor = BrickColor.new("Medium stone grey") 
Handle:BreakJoints() 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = Handle 
mesh.Scale = Vector3.new(1,1,1) 
weld = Instance.new("Weld") 
weld.Parent = Handle  
weld.Part0 = Handle
weld.Part1 = Torso 
weld.C0 = CFrame.new(0, 0, -0.6) * CFrame.Angles(0, 0, 0.8) 
Handle.CanCollide = false
--
end1 = Instance.new("Part") 
end1.Transparency = 0
end1.Parent = prts 
end1.formFactor = "Custom" 
end1.Size = Vector3.new(0.25,0.4,0.25)  -- Om nom nom
end1.BrickColor = BrickColor.new("New Yeller") 
end1:BreakJoints() 
mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = end1
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = end1 
weld2.Part0 = end1
weld2.Part1 = Handle
weld2.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0) 
end1.CanCollide = false
--
black1 = Instance.new("Part") 
black1.Transparency = 0
black1.Parent = prts 
black1.formFactor = "Custom" 
black1.Size = Vector3.new(0.3,0.3,0.3)  -- Om nom nom
black1.BrickColor = BrickColor.new("Really black") 
black1:BreakJoints() 
mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = black1
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = black1 
weld2.Part0 = black1
weld2.Part1 = end1
weld2.C0 = CFrame.new(0, 0.3, 0) * CFrame.Angles(0, 0, 0) 
black1.CanCollide = false
--
back1 = Instance.new("Part") 
back1.Transparency = 0
back1.Parent = prts 
back1.formFactor = "Custom" 
back1.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
back1.BrickColor = BrickColor.new("New Yeller") 
back1:BreakJoints() 
mesh2 = Instance.new("SpecialMesh")
mesh2.MeshType = 'Sphere' 
mesh2.Parent = back1
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = back1 
weld2.Part0 = back1
weld2.Part1 = end1
weld2.C0 = CFrame.new(0, -0.2, 0) * CFrame.Angles(0, 0, 0) 
back1.CanCollide = false
--
st1 = Instance.new("Part") 
st1.Transparency = 0
st1.Parent = prts 
st1.formFactor = "Custom" 
st1.Size = Vector3.new(0.3,0.3,0.3)  -- Om nom nom
st1.BrickColor = BrickColor.new("Really red") 
st1:BreakJoints() 
mesh2 = Instance.new("CylinderMesh")
mesh2.Parent = st1
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = st1 
weld2.Part0 = st1
weld2.Part1 = Handle
weld2.C0 = CFrame.new(0, 0.1, 0) * CFrame.Angles(0, 0, 0) 
st1.CanCollide = false
---
st2 = Instance.new("Part") 
st2.Transparency = 0
st2.Parent = prts 
st2.formFactor = "Custom" 
st2.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st2.BrickColor = BrickColor.new("Medium stone grey") 
st2:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st2
mesh2.Scale = Vector3.new(1.2,8,1.2) 
weld2 = Instance.new("Weld") 
weld2.Parent = st2 
weld2.Part0 = st2
weld2.Part1 = Handle
weld2.C0 = CFrame.new(0, 1.25, 0) * CFrame.Angles(0, 0, 0) 
st2.CanCollide = false
--
st23 = Instance.new("Part") 
st23.Transparency = 0
st23.Parent = prts 
st23.formFactor = "Custom" 
st23.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st23.BrickColor = BrickColor.new("Medium stone grey") 
st23:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st23
mesh2.Scale = Vector3.new(4,4,4) 
weld2 = Instance.new("Weld") 
weld2.Parent = st23 
weld2.Part0 = st23
weld2.Part1 = st2
weld2.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0) 
st23.CanCollide = false
--------Bottom of Brick----------------------------------------
st24 = Instance.new("Part") 
st24.Transparency = 0
st24.Parent = prts 
st24.formFactor = "Custom" 
st24.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st24.BrickColor = BrickColor.new("Medium stone grey") 
st24:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st24
mesh2.Scale = Vector3.new(3,1,3) 
weld2 = Instance.new("Weld") 
weld2.Parent = st24 
weld2.Part0 = st24
weld2.Part1 = st23
weld2.C0 = CFrame.new(0, 0.6, 0) * CFrame.Angles(0, 0, 0) 
st24.CanCollide = false
--
st25 = Instance.new("Part") 
st25.Transparency = 0
st25.Parent = prts 
st25.formFactor = "Custom" 
st25.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st25.BrickColor = BrickColor.new("Medium stone grey") 
st25:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st25
mesh2.Scale = Vector3.new(2,1,2) 
weld2 = Instance.new("Weld") 
weld2.Parent = st25 
weld2.Part0 = st25
weld2.Part1 = st24
weld2.C0 = CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, 0) 
st25.CanCollide = false
--
st26 = Instance.new("Part") 
st26.Transparency = 0
st26.Parent = prts 
st26.formFactor = "Custom" 
st26.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st26.BrickColor = BrickColor.new("Medium stone grey") 
st26:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st26
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = st26 
weld2.Part0 = st26
weld2.Part1 = st25
weld2.C0 = CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, 0) 
st26.CanCollide = false
-----------Next Side---------------------
st30 = Instance.new("Part") 
st30.Transparency = 0
st30.Parent = prts 
st30.formFactor = "Custom" 
st30.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st30.BrickColor = BrickColor.new("Medium stone grey") 
st30:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st30
mesh2.Scale = Vector3.new(3,1,3) 
weld2 = Instance.new("Weld") 
weld2.Parent = st30 
weld2.Part0 = st30
weld2.Part1 = st23
weld2.C0 = CFrame.new(0, 0.6, 0) * CFrame.Angles(0, 0, 1.5) 
st30.CanCollide = false
--
st31 = Instance.new("Part") 
st31.Transparency = 0
st31.Parent = prts 
st31.formFactor = "Custom" 
st31.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st31.BrickColor = BrickColor.new("Medium stone grey") 
st31:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st31
mesh2.Scale = Vector3.new(2,1,2) 
weld2 = Instance.new("Weld") 
weld2.Parent = st31 
weld2.Part0 = st31
weld2.Part1 = st30
weld2.C0 = CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, 0) 
st31.CanCollide = false
--
st32 = Instance.new("Part") 
st32.Transparency = 0
st32.Parent = prts 
st32.formFactor = "Custom" 
st32.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st32.BrickColor = BrickColor.new("Medium stone grey") 
st32:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st32
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = st32 
weld2.Part0 = st32
weld2.Part1 = st31
weld2.C0 = CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, 0) 
st32.CanCollide = false
-----FINAL SIDE-------------
st40 = Instance.new("Part") 
st40.Transparency = 0
st40.Parent = prts 
st40.formFactor = "Custom" 
st40.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st40.BrickColor = BrickColor.new("Medium stone grey") 
st40:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st40
mesh2.Scale = Vector3.new(3,1,3) 
weld2 = Instance.new("Weld") 
weld2.Parent = st40 
weld2.Part0 = st40
weld2.Part1 = st23
weld2.C0 = CFrame.new(0, 0.6, 0) * CFrame.Angles(0, 0, -1.5) 
st40.CanCollide = false
--
st41 = Instance.new("Part") 
st41.Transparency = 0
st41.Parent = prts 
st41.formFactor = "Custom" 
st41.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st41.BrickColor = BrickColor.new("Medium stone grey") 
st41:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st41
mesh2.Scale = Vector3.new(2,1,2) 
weld2 = Instance.new("Weld") 
weld2.Parent = st41 
weld2.Part0 = st41
weld2.Part1 = st40
weld2.C0 = CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, 0) 
st41.CanCollide = false
--
st42 = Instance.new("Part") 
st42.Transparency = 0
st42.Parent = prts 
st42.formFactor = "Custom" 
st42.Size = Vector3.new(0.25,0.25,0.25)  -- Om nom nom
st42.BrickColor = BrickColor.new("Medium stone grey") 
st42:BreakJoints() 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = st42
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = st42 
weld2.Part0 = st42
weld2.Part1 = st41
weld2.C0 = CFrame.new(0, 0.2, 0) * CFrame.Angles(0, 0, 0) 
st42.CanCollide = false
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "PWNHAMMA"
    script.Parent = h
end
local bin = script.Parent
--specs
function damg(part, damag, magn)
for _, v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - part.Position).magnitude < magn then 
if v.Name ~= Me.Name then 
v.Character.Humanoid.Health = v.Character.Humanoid.Health - damag 
end 
end 
end 
end 
function damgp(part, damag, magn)
for _, v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - part.Position).magnitude < magn then 
if v.Name ~= Me.Name then 
v.Character.Humanoid.Health = v.Character.Humanoid.Health - damag 
v.Character.Humanoid.PlatformStand = true 
end 
end 
end 
end 
function wave(part2, color, size2) 
local part = Instance.new("Part") 
part.Parent = part2 
part.Anchored = true 
part.CanCollide = false 
part.Transparency = 0.25 
part.Size = Vector3.new(1, 1, 1) 
part.BrickColor = BrickColor.new(color) 
part.CFrame = part2.CFrame * CFrame.Angles(0, 0, 3.5) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(size2/2, 3, size2/2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976" 
for i = 0, 1, 0.1 do 
mesh.Scale = mesh.Scale + Vector3.new(i, i, i) 
part.Transparency = i 
damg(part, 10, 2+i) 
wait() 
end 
pcall(function() part:remove() end) 
end 
--[[
note to viewers, 
copy the function below and paste it/ edit it and add to key below,
easy attacks :P 
--acb227
--not saying any more names xD
]] 
function spimash() 
bv = Instance.new("BodyAngularVelocity")
bv.Parent = Torso
bv.angularvelocity = Vector3.new(0, math.random(-50, 50), 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyGyro")
bg.Parent = Torso
bg.maxTorque = Vector3.new(0, 0, 0) 
for i = 0, 5, 0.1 do 
damgp(st42, 10, 2.5) 
wait() 
end 
bv:remove() 
bg:remove() 
end 
function dodge() 
Torso.Anchored = true 
for i = 0, 1, 0.1 do 
Torso.CFrame = Torso.CFrame * CFrame.Angles(0, 0, math.rad(65*i)) + Vector3.new(0, 0, 0.5)  
wait() 
end 
Torso.Anchored = false 
end 
function midair() --math.rad(65*i) * CFrame.Angles(0, 0, 0)
bv(Torso) 
end 
function shield() 
for i = 0, 5, 0.1 do 
char.Humanoid.Health = 100 
wait() 
end 
end 
function onSelected(mouse)
RAW.Part1 = Rarm 
RAW.C0 = CFrame.new(0, 0, 0)
LAW.Part1 = Larm 
LAW.C0 = CFrame.new(0, 0, 0)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-75*i), 0, math.rad(-55*i))
wait() 
end 
weld.Part1 = Rarm 
weld.C0 = CFrame.new(0, 1.25, 0) * CFrame.Angles(-0.25, -1, -0.25) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-75+150*i), 0, math.rad(-55+110*i))
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(75+0*i), 0, math.rad(55-110*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(75*i), 0, math.rad(25*i))
wait() 
end 
Attkin = false 
    mouse.Button1Down:connect(function()
if Attkin == false then 
Attkin = true 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(75+65*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(75+65*i), 0, math.rad(25-10*i))
wait() 
end 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(140-125*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(140-125*i), 0, math.rad(15+10*i))
damg(st42, 10, 1) 
wait() 
end 
wave(st42, "Bright blue", 4) 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15+50*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(15+50*i), 0, math.rad(15+10*i))
wait() 
end 
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
        Attkin = true 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(75+55*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(75+55*i), 0, math.rad(25-10*i))
wait() 
end 
spimash() 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(130-55*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(130-55*i), 0, math.rad(15+10*i))
wait() 
end 
Attkin = false 
        end 
                if key == "e" and Attkin == false then 
        Attkin = true 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(75+55*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(75+55*i), 0, math.rad(25-10*i))
wait() 
end 
dodge() 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(130-55*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(130-55*i), 0, math.rad(15+10*i))
wait() 
end 
Attkin = false 
        end 
        if key == "r" and Attkin == false then 
        Attkin = true 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(75-55*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(75-55*i), 0, math.rad(25-10*i))
wait() 
end 
shield() 
        for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20+55*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(20+55*i), 0, math.rad(15+10*i))
wait() 
end 
Attkin = false 
        end 
    end)
end
function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(75-150*i), 0, math.rad(-55+75*i))
wait() 
end 
weld.Part1 = Torso 
weld.C0 = CFrame.new(0, 0, -0.6) * CFrame.Angles(0, 0, 0.8) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-75+75*i), 0, math.rad(20-20*i))
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-75+75*i), 0, math.rad(20-20*i))
wait() 
end 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
RAW.Part1 = nil 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
LAW.Part1 = nil 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
while true do 
if Attkin == false then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(75+10*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(75+10*i), 0, math.rad(25+0*i))
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(85-10*i), 0, math.rad(-55+0*i))
LAW.C0 = CFrame.new(0, 0, -0.25) * CFrame.Angles(math.rad(85-10*i), 0, math.rad(25+0*i))
wait() 
end 
end 
wait() 
end 
