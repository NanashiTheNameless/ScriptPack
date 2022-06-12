local Me = game.Players.LocalPlayer 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local on = false 
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
----SWORD SHEATHE AND HANDLE------------------------------------ 
Handle = Instance.new("Part") 
Handle.Transparency = 0
Handle.Parent = prts 
Handle.formFactor = "Custom" 
Handle.Size = Vector3.new(0.25,1,0.25)  -- Om nom nom
Handle.BrickColor = BrickColor.new(0.5,0,0) 
Handle:BreakJoints() 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = Handle 
mesh.Scale = Vector3.new(1,1,1) 
weld = Instance.new("Weld") 
weld.Parent = Handle  
weld.Part0 = Handle
weld.Part1 = Torso 
weld.C0 = CFrame.new(0, -1.5, -0.6) * CFrame.Angles(0, 0, 0.8) 
Handle.CanCollide = false
-- 
end1 = Instance.new("Part") 
end1.Transparency = 0
end1.Parent = prts 
end1.formFactor = "Custom" 
end1.Size = Vector3.new(0.25,0.3,0.25)  -- Om nom nom
end1.BrickColor = BrickColor.new("Olive") 
end1:BreakJoints() 
mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = end1
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = end1 
weld2.Part0 = end1
weld2.Part1 = Handle
weld2.C0 = CFrame.new(0, -0.65, 0) * CFrame.Angles(0, 0, 0) 
end1.CanCollide = false
--
end2 = Instance.new("Part") 
end2.Transparency = 0
end2.Parent = prts 
end2.formFactor = "Custom" 
end2.Size = Vector3.new(0.25,0.3,0.25)  -- Om nom nom
end2.BrickColor = BrickColor.new("Olive") 
end2:BreakJoints() 
mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = end2
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = end2 
weld2.Part0 = end2
weld2.Part1 = Handle
weld2.C0 = CFrame.new(0, 0.65, 0) * CFrame.Angles(0, 0, 0) 
end2.CanCollide = false
--
s2 = Instance.new("Part") 
s2.Transparency = 0
s2.Parent = prts 
s2.formFactor = "Custom" 
s2.Size = Vector3.new(3,0.5,0.25)  -- Om nom nom
s2.BrickColor = BrickColor.new("Olive") 
s2:BreakJoints() 
mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = s2
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = s2 
weld2.Part0 = s2
weld2.Part1 = end2
weld2.C0 = CFrame.new(0, 0.4, 0) * CFrame.Angles(0, 0, 0) 
s2.CanCollide = false
----------BLADE BEGINS :D------------------------ 
sw2 = Instance.new("Part") 
sw2.Transparency = 0
sw2.Parent = prts 
sw2.formFactor = "Custom" 
sw2.Size = Vector3.new(2.5,6,0.25)  -- Om nom nom
sw2.BrickColor = BrickColor.new("Dark stone grey") 
sw2:BreakJoints() 
mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = sw2
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = sw2 
weld2.Part0 = sw2
weld2.Part1 = s2
weld2.C0 = CFrame.new(0.25, 3.25, 0) * CFrame.Angles(0, 0, 0) 
sw2.CanCollide = false
--
sw22 = Instance.new("Part") 
sw22.Transparency = 0
sw22.Parent = prts 
sw22.formFactor = "Custom" 
sw22.Size = Vector3.new(0.5,6,0.25)  -- Om nom nom
sw22.BrickColor = BrickColor.new("Medium stone grey") 
sw22:BreakJoints() 
mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = sw22
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = sw22 
weld2.Part0 = sw22
weld2.Part1 = s2
weld2.C0 = CFrame.new(-1.25, 3.25, 0) * CFrame.Angles(0, 0, 0) 
sw22.CanCollide = false
--
sw33 = Instance.new("Part") 
sw33.Transparency = 0
sw33.Parent = prts 
sw33.formFactor = "Custom" 
sw33.Size = Vector3.new(0.25,2,3)  -- Om nom nom
sw33.BrickColor = BrickColor.new("Medium stone grey") 
sw33:BreakJoints() 
mesh3 = Instance.new("SpecialMesh") 
mesh3.Parent = sw33 
mesh3.MeshType = "Wedge" 
mesh3.Scale = Vector3.new(1,1,1) 
weld3 = Instance.new("Weld") 
weld3.Parent = sw33 
weld3.Part0 = sw33
weld3.Part1 = s2
weld3.C0 = CFrame.new(0, -7.25, 0) * CFrame.Angles(3.15, -7.85, 0) 
sw33.CanCollide = false
--lego
for _, v in pairs(prts:GetChildren()) do 
if v.className == "Part" then 
v.Locked = true 
end 
end  
--funcs
function damg(part, mag) 
for _, v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - part.Position).magnitude < mag then 
if v.Name ~= Me.Name then 
v.Character.Humanoid:TakeDamage(15) 
end 
end 
end 
end 
--end o funcs
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "BBlade"
    script.Parent = h
end
local bin = script.Parent
function onSelected(mouse)
Attkin = false 
RAW.Part1 = Rarm 
RAW.C0 = CFrame.new(0, 0, 0)
LAW.Part1 = Larm 
LAW.C0 = CFrame.new(0, 0, 0)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225*i), 0, math.rad(-25*i)) 
wait() 
end 
weld.Part1 = Rarm 
weld.C0 = CFrame.new(-0.5, 0, -1) * CFrame.Angles(-0.8, -0.8, 0.8) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225-125*i), 0, math.rad(-25-0*i)) 
LAW.C0 = CFrame.new(0.95*i, 0, -0.65*i) * CFrame.Angles(math.rad(100*i), 0, math.rad(45*i)) 
weld.C0 = weld.C0 * CFrame.Angles(0, i/5, i/5) + Vector3.new(i/-10.75, 0, i/8.75) 
wait() 
end 
    mouse.Button1Down:connect(function()
if Attkin == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(100+100*i), 0, math.rad(-25-0*i)) 
LAW.C0 = CFrame.new(0.95+0*i, 0, -0.65+0*i) * CFrame.Angles(math.rad(100+125*i), 0, math.rad(45+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(200-195*i), 0, math.rad(-25-0*i)) 
LAW.C0 = CFrame.new(0.95+0*i, 0, -0.65+0*i) * CFrame.Angles(math.rad(200-195*i), 0, math.rad(45+0*i)) 
damg(sw2, 4) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(5+95*i), 0, math.rad(-25-0*i)) 
LAW.C0 = CFrame.new(0.95+0*i, 0, -0.65+0*i) * CFrame.Angles(math.rad(5+95*i), 0, math.rad(45+0*i)) 
wait() 
end 
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
Attkin = true 
        for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(100+100*i), 0, math.rad(-25-0*i)) 
LAW.C0 = CFrame.new(0.95+0*i, 0, -0.65+0*i) * CFrame.Angles(math.rad(100+125*i), 0, math.rad(45+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(200-175*i), 0, math.rad(-25-0*i)) 
LAW.C0 = CFrame.new(0.95+0*i, 0, -0.65+0*i) * CFrame.Angles(math.rad(200-175*i), 0, math.rad(45+0*i)) 
wait() 
end 
bv = Instance.new("BodyAngularVelocity")
bv.Parent = Torso 
bv.angularvelocity = Vector3.new(0, 20, 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyGyro")
bg.Parent = Torso
bg.maxTorque = Vector3.new(0, 0, 0) 
on = true 
for i = 0, math.huge, 0.1 do 
if on == true then 
bv.Parent = Torso 
bg.Parent = Torso 
damg(sw2, 4) 
end 
if on == false then 
bv.Parent = nil 
bg.Parent = nil 
end 
wait() 
end 
        end 
if key == "e" and Attkin == false then 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
bin.Parent = v.Backpack 
prts.Parent = v.Character 
Model.Parent = v.Character 
end 
end 
end 
    end)
    mouse.KeyUp:connect(function(key)
        if key == "q" then 
on = false 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(25+75*i), 0, math.rad(-25-0*i)) 
LAW.C0 = CFrame.new(0.95+0*i, 0, -0.65+0*i) * CFrame.Angles(math.rad(25+75*i), 0, math.rad(45+0*i)) 
wait() 
end 
Attkin = false 
        end 
    end)
end
function onDesel(mouse)
RAW.Part1 = nil 
LAW.Part1 = nil 
weld.Part1 = Torso 
weld.C0 = CFrame.new(0, -1.5, -0.6) * CFrame.Angles(0, 0, 0.8) 
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
