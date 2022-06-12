local Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]

pcall(function() char[":P"]:remove() end)
pcall(function() char["axe"]:remove() end)

local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "axe"

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

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.Size = Vector3.new(x, y, z)
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
pp:BreakJoints() 
end 

function weld(parent, a, b, c, d) 
local ww = Instance.new("Weld") 
ww.Parent = parent 
ww.Part0 = a 
ww.Part1 = b 
ww.C0 = c 
ww.C1 = d 
end 

function meshp(part, x, y, z) 
local mesh = Instance.new("CylinderMesh") 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

function mesh(part, type, x, y, z) 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = type 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

local pa = Instance.new("Part") 
pa.CFrame = Me.Character.Torso.CFrame 
pa:BreakJoints() 
pa.formFactor = "Symmetric" 
pa.CanCollide = false 
prop(pa, "Brown", Model2, 1, 4, 1) 
mesh(pa, "Head", 0.45, 1.01, 0.45) 
local paw = Instance.new("Weld") 
paw.Parent = pa 
paw.Part0 = pa 
paw.Part1 = Me.Character.Torso 
paw.C0 = CFrame.new() 
paw.C1 = CFrame.new(0, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  

local p = Instance.new("Part") 
p.CFrame = Me.Character.Torso.CFrame 
p:BreakJoints() 
p.formFactor = "Symmetric" 
p.CanCollide = false 
prop(p, "Mid grey", Model2, 1, 1, 1) 
mesh(p, "Head", 0.55, 0.9, 0.55) 
local pw = Instance.new("Weld") 
pw.Parent = p 
pw.Part0 = p 
pw.Part1 = pa 
pw.C0 = CFrame.new() 
pw.C1 = CFrame.new(0, 1.35, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)  

local ps = Instance.new("Part") 
ps.CFrame = Me.Character.Torso.CFrame 
ps:BreakJoints() 
ps.formFactor = "Symmetric" 
ps.CanCollide = false 
prop(ps, "Mid grey", Model2, 1, 1, 1) 
meshp(ps, 0.85, 0.16, 0.85) 
local psw = Instance.new("Weld") 
psw.Parent = ps 
psw.Part0 = ps 
psw.Part1 = p 
psw.C0 = CFrame.new() 
psw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 1.55, 1.55)  

local psn = Instance.new("Part") 
psn.CFrame = Me.Character.Torso.CFrame 
psn:BreakJoints() 
psn.formFactor = "Symmetric" 
psn.CanCollide = false 
prop(psn, "Dark stone grey", Model2, 3, 1, 1) 
mesh(psn, "Brick", 0.85, 0.15, 0.85) 
local psnw = Instance.new("Weld") 
psnw.Parent = psn 
psnw.Part0 = psn 
psnw.Part1 = ps 
psnw.C0 = CFrame.new() 
psnw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 1.55, 0)  

local psr = Instance.new("Part") 
psr.CFrame = Me.Character.Torso.CFrame 
psr:BreakJoints() 
psr.formFactor = "Symmetric" 
psr.CanCollide = false 
prop(psr, "Dark stone grey", Model2, 3, 1, 1) 
mesh(psr, "Brick", 0.85, 0.15, 0.85) 
local psrw = Instance.new("Weld") 
psrw.Parent = psr 
psrw.Part0 = psr 
psrw.Part1 = ps 
psrw.C0 = CFrame.new() 
psrw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 2.2, 0)  

local psrn = Instance.new("Part") 
psrn.CFrame = Me.Character.Torso.CFrame 
psrn:BreakJoints() 
psrn.formFactor = "Symmetric" 
psrn.CanCollide = false 
prop(psrn, "Dark stone grey", Model2, 3, 1, 1) 
mesh(psrn, "Brick", 0.85, 0.15, 0.85) 
local psrnw = Instance.new("Weld") 
psrnw.Parent = psrn 
psrnw.Part0 = psrn 
psrnw.Part1 = ps 
psrnw.C0 = CFrame.new() 
psrnw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0.9, 0)  

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "B-Axe"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
LAW.Part1 = Larm 
RAW.Part1 = Rarm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(220*i), math.rad(-12*i), math.rad(12*i)) 
LAW.C0 = CFrame.Angles(math.rad(0*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
paw.Part1 = Rarm 
paw.C1 = CFrame.fromEulerAnglesXYZ(-1.55, -6.99, -6.3) + Vector3.new(0, -1.1, 0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(220-165*i), math.rad(-12+-38*i), math.rad(12-36*i)) 
LAW.C0 = CFrame.new(0.5, -0.15, 0) * CFrame.Angles(math.rad(25*i), math.rad(30*i), math.rad(44*i)) 
wait()
end
    mouse.Button1Down:connect(function()
local bv = Instance.new("BodyAngularVelocity")
bv.Parent = Torso 
bv.angularvelocity = Vector3.new(0, 15, 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local bg = Instance.new("BodyGyro")
bg.Parent = Torso 
bg.maxTorque = Vector3.new(0, 0, 0) 
for i = 100, 1 do 
wait() 
for _, v in pairs(game.Players:GetChildren()) do
tor = v.Character.Torso 
if (tor.Position - p.Position).magnitude < 3 then 
tor.Parent.Humanoid.PlatformStand = true 
local bv = Instance.new("BodyAngularVelocity")
bv.Parent = tor 
bv.angularvelocity = Vector3.new(0, 1500, 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local bg = Instance.new("BodyGyro")
bg.Parent = tor 
bg.maxTorque = Vector3.new(0, 0, 0) 
tor.Parent.Humanoid.Health = tor.Parent.Humanoid.Health - 15 
tor.Parent.Humanoid.PlatformStand = false 
end 
end 
end  
bv:remove() 
bg:remove() 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
	end 
    end)
end

function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(220*i), math.rad(-12*i), math.rad(12*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25-25*i), math.rad(30-25*i), math.rad(44-44*i)) 
wait()
end
paw.Part1 = Torso 
paw.C1 = CFrame.new(0, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(220-220*i), math.rad(-12+12*i), math.rad(12-12*i)) 
wait()
end
LAW.Part1 = nil 
RAW.Part1 = nil 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
