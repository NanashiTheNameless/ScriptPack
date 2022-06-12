--// Animation Base Created by SavageMunkey
script.Name = 'gtfoh >_> - gafael elfennol'
wait(.05)
local Module_Id = 0 --// Not required, but I use modules somtimes to load union'd models
local Player = game:service'Players'.LocalPlayer
repeat wait() until Player.Character
local Character = Player.Character
local Char, Plr = Character, Player
local Mouse = Player:GetMouse()
local height = 0
local Projectiles={};
--// Settings

local NotifyKeyPresses = false
local CanRun = false

--// Limbs and what not

local Torso = Char:WaitForChild'Torso'
local Head = Char:WaitForChild'Head'
local Left_Arm = Char:WaitForChild'Left Arm'
local Right_Arm = Char:WaitForChild'Right Arm'
local Left_Leg = Char:WaitForChild'Left Leg'
local Right_Leg = Char:WaitForChild'Right Leg'
local HumanoidRootPart = Char:WaitForChild'HumanoidRootPart'
local Humanoid = Char:WaitForChild'Humanoid'

--// Debounces

local DebounceKeyDown, DebounceState = false, false
local DebounceAFKAnimations = false

--// Other Things

local State, LastState, Mode = 'Idle', 'Normal'
local AFKAnimSequenceCount,MaxSequenceCount = 0,200

--// Abbreiviations

local char,Char,plr,Plr = Character, Character, Player, Player
local mouse,ms = Mouse, Mouse
local dkd, debkd = DebounceKeyDown, DebounceKeyDown
local dst, debst, ds, debs = DebounceState,DebounceState,DebounceState,DebounceState
local daa,dafk,debafk = DebounceAFKAnimations,DebounceAFKAnimations,DebounceAFKAnimations
local rs = game:service'RunService'
local lrs = rs.RenderStepped
local srs = rs.Heartbeat
local lleg,rleg = Left_Leg, Right_Leg
local larm,rarm = Left_Arm, Right_Arm
local hed,torr,torso = Head, Torso, Torso
local hum, root = Humanoid, HumanoidRootPart
local vec3,vec2 = Vector3.new, Vector2.new
local sin, cos, atan, rad, rand, rands = math.sin, math.cos, math.atan, math.rad, math.random, math.randomseed
local cf, ang, eu = CFrame.new, CFrame.Angles, CFrame.fromEulerAnglesXYZ
local bc,bcr,c3 = BrickColor.new,BrickColor.Random,Color3.new

--// Removals and error prevention
local noothers=false
if noothers then
for i,v in next, char:children() do
        if v:IsA'Accessory' then v:Destroy() end
        if v:IsA'Shirt' then v:Destroy() end
        if v:IsA'Pants' then v:Destroy() end
        --if v:IsA'Shirt Graphic' then v:Destroy() end
end
pcall(function()
        char['Shirt Graphic']:Destroy()
end)
pcall(function()
        torso.roblox:Destroy()
end)
pcall(function()
        head.face:Destroy()
end)
end

if hed:FindFirstChild'Running' then
    hed:WaitForChild'Running'.Volume = 0
end
pcall(function()
        local bc = char['Body Colors']
        local clr = BrickColor.new('Institutional white')
        bc.HeadColor=clr
        bc.LeftArmColor=clr
end)
--game:service'InsertService':LoadAsset(13702134):children()[1].Parent=char
--game:service'InsertService':LoadAsset(71484026):children()[1].Parent=char
if Char:FindFirstChild'Animate' then
    local Anim = Char:WaitForChild'Animate'
    local Anim_2 = Anim:Clone()
    Anim_2.Disabled = true
    Anim_2.Parent = Char
    Anim.Disabled = true
    Anim_2.Disabled = false
end
if Char:FindFirstChild'Health' then
        ypcall(game.Destroy, Char.Health)
end

--// Base Functions

Weld = function(to, from, c1)
    local New_Weld = Instance.new('Weld', to)
    New_Weld.Part0 = from
    New_Weld.Part1 = to
    New_Weld.C1 = c1
    return New_Weld
end

clerp = function(c1,c2,al)
        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
        local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
        for i,v in pairs(com1) do 
                com1[i] = v+(com2[i]-v)*al
        end
         return cf(com1[1],com1[2],com1[3]) * ang(select(4,unpack(com1)))--]]
end

lerp = function(c1,c2,al)
        return c1:lerp(c2,al)
end

snd = function(Id, Parent)
    local Sound = Instance.new('Sound', Parent)
    Sound.Volume = .25
        Sound.SoundId='rbxassetid://'..Id
        Sound.PlaybackSpeed=.95
        wait()
    return Sound
end

local sine, change = 0, 1

--// Model Optional

local m = Instance.new("Model")
m.Name = "fingers"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Medium stone grey")
p1.Name = "middle"
p1.CFrame = CFrame.new(12.4999723, 5.0500493, 21.9000034, 1, -2.44602666e-006, -1.10638405e-006, 2.44602711e-006, 1, 4.63209261e-007, 1.10638291e-006, -4.63211961e-007, 1)
p1.Size = Vector3.new(0.215000004, 0.700000048, 0.215000004)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Medium stone grey")
p2.Name = "pointer"
p2.CFrame = CFrame.new(12.7999716, 5.00005007, 21.9000034, 1, -2.44602666e-006, -1.10638405e-006, 2.44602711e-006, 1, 4.63209261e-007, 1.10638291e-006, -4.63211961e-007, 1)
p2.Size = Vector3.new(0.215000004, 0.600000024, 0.215000004)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Medium stone grey")
p3.Name = "thumb"
p3.CFrame = CFrame.new(12.8999729, 4.95004988, 21.3500023, 1, -2.44602666e-006, -1.10638405e-006, 2.44602711e-006, 1, 4.63209261e-007, 1.10638291e-006, -4.63211961e-007, 1)
p3.Size = Vector3.new(0.215000004, 0.49999997, 0.215000004)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Medium stone grey")
p4.Transparency = 1
p4.Name = "armHW"
p4.CFrame = CFrame.new(12.4999943, 3.7000339, 21.5, -1.10638405e-006, 2.44602666e-006, 1, 4.63209261e-007, -1, 2.44602711e-006, 1, 4.63211961e-007, 1.10638291e-006)
p4.Size = Vector3.new(1, 2, 1)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Medium stone grey")
p5.Name = "pinky"
p5.CFrame = CFrame.new(12.1999722, 4.95004845, 21.9000034, 1, -2.44602666e-006, -1.10638405e-006, 2.44602711e-006, 1, 4.63209261e-007, 1.10638291e-006, -4.63211961e-007, 1)
p5.Size = Vector3.new(0.215000004, 0.5, 0.215000004)
w1 = Instance.new("Weld", p1)
w1.Name = "pointer_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-12.4999819, -2.35001493, -21.9000034, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(-12.7999811, -2.30001497, -21.9000034, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "thumb_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-12.7999811, -2.30001497, -21.9000034, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(-12.8999815, -2.25001502, -21.3500023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "armHW_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-12.8999815, -2.25001502, -21.3500023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(-21.5, 1, -12.5, 0, 0, 1, 0, -1, 0, 1, 0, -0)
w4 = Instance.new("Weld", p4)
w4.Name = "pinky_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-21.5, 1, -12.5, 0, 0, 1, 0, -1, 0, 1, 0, -0)
w4.Part1 = p5
w4.C1 = CFrame.new(-12.1999817, -2.25001502, -21.9000034, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local f1 = m
f1.Parent=nil

local m = Instance.new("Model")
m.Name = "fingers"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Medium stone grey")
p1.Name = "middle"
p1.CFrame = CFrame.new(12.499938, 2.32821345, 21.9010067, 1, -5.83338333e-005, -2.72759116e-005, 5.83215806e-005, 0.99999994, -0.000448981504, 2.73021014e-005, 0.000448979932, 0.999999881)
p1.Size = Vector3.new(0.215000004, 0.700000048, 0.215000004)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Medium stone grey")
p2.Name = "pointer"
p2.CFrame = CFrame.new(12.199975, 2.28902912, 21.9004459, 1, 1.32215405e-006, -9.40560881e-007, -1.32249284e-006, 0.99999994, -0.000360308099, 9.40084419e-007, 0.000360308099, 0.99999994)
p2.Size = Vector3.new(0.215000004, 0.600000024, 0.215000004)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Medium stone grey")
p3.Name = "thumb"
p3.CFrame = CFrame.new(12.0999737, 2.23922753, 21.3504276, 1, 1.32215405e-006, -9.40560881e-007, -1.32249284e-006, 0.99999994, -0.000360308099, 9.40084419e-007, 0.000360308099, 0.99999994)
p3.Size = Vector3.new(0.215000004, 0.49999997, 0.215000004)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Medium stone grey")
p4.Transparency = 1
p4.Name = "armHW"
p4.CFrame = CFrame.new(12.4999924, 0.989158094, 21.4999752, -9.40560881e-007, -1.32215405e-006, 1, -0.000360308099, -0.99999994, -1.32249284e-006, 0.99999994, -0.000360308099, 9.40084419e-007)
p4.Size = Vector3.new(1, 2, 1)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Medium stone grey")
p5.Name = "pinky"
p5.CFrame = CFrame.new(12.7999744, 2.23902845, 21.9004288, 1, 1.32215405e-006, -9.40560881e-007, -1.32249284e-006, 0.99999994, -0.000360308099, 9.40084419e-007, 0.000360308099, 0.99999994)
p5.Size = Vector3.new(0.215000004, 0.5, 0.215000004)
w1 = Instance.new("Weld", p4)
w1.Name = "pointer_Weld"
w1.Part0 = p4
w1.C0 = CFrame.new(-21.5, 1, -12.5, 0, 0, 1, 0, -1, 0, 1, 0, -0)
w1.Part1 = p2
w1.C1 = CFrame.new(-12.1999817, -2.30001497, -21.9000034, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p4)
w2.Name = "thumb_Weld"
w2.Part0 = p4
w2.C0 = CFrame.new(-21.5, 1, -12.5, 0, 0, 1, 0, -1, 0, 1, 0, -0)
w2.Part1 = p3
w2.C1 = CFrame.new(-12.0999794, -2.25001502, -21.3500023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p4)
w3.Name = "armHW_Weld"
w3.Part0 = p4
w3.C0 = CFrame.new(-21.5, 1, -12.5, 0, 0, 1, 0, -1, 0, 1, 0, -0)
w3.Part1 = p4
w3.C1 = CFrame.new(-21.5, 1, -12.5, 0, 0, 1, 0, -1, 0, 1, 0, -0)
w4 = Instance.new("Weld", p4)
w4.Name = "pinky_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-21.5, 1, -12.5, 0, 0, 1, 0, -1, 0, 1, 0, -0)
w4.Part1 = p5
w4.C1 = CFrame.new(-12.7999811, -2.25001502, -21.9000034, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local f2=m
f2.Parent=nil
--// Welds

local m = Instance.new("Model")
m.Name = "arm_brace"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Medium stone grey")
p1.Transparency = 1
p1.Name = "armhw"
p1.CFrame = CFrame.new(3.49999666, 1.00002205, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Size = Vector3.new(1, 2, 1)
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "rbxasset://fonts/rightarm.mesh"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Institutional white")
p2.Name = "part"
p2.CFrame = CFrame.new(3.49999666, 1.810022, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Size = Vector3.new(1, 0.200000003, 1)
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "rbxasset://fonts/rightarm.mesh"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.02999997, 0.0500000007, 1.02999997)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Institutional white")
p3.Name = "part"
p3.CFrame = CFrame.new(3.49999666, 1.65002191, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Size = Vector3.new(1, 0.200000003, 1)
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "rbxasset://fonts/rightarm.mesh"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.02999997, 0.0500000007, 1.02999997)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Bright bluish green")
p4.Material = Enum.Material.Neon
p4.Name = "part"
p4.CFrame = CFrame.new(3.49999666, 1.73002207, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.Size = Vector3.new(1, 0.200000003, 1)
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "rbxasset://fonts/rightarm.mesh"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.03199995, 0.0250000004, 1.03199995)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Institutional white")
p5.Name = "part"
p5.CFrame = CFrame.new(3.49999666, 0.820021987, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p5.Size = Vector3.new(1, 1.62, 1)
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(1.01499999, 1, 0.100000001)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Institutional white")
p6.Name = "part"
p6.CFrame = CFrame.new(3.49999666, 1.53002203, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.Size = Vector3.new(1, 0.200000003, 1)
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.14999998, 1, 0.100000001)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Smoky grey")
p7.Name = "part"
p7.CFrame = CFrame.new(3.49999666, 1.5300225, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.Shape = Enum.PartType.Cylinder
p7.Size = Vector3.new(1, 0.200000003, 1)
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Cylinder
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.125, 1, 1)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Smoky grey")
p8.Name = "part"
p8.CFrame = CFrame.new(3.49999666, 1.5300225, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.Shape = Enum.PartType.Cylinder
p8.Size = Vector3.new(1, 0.200000003, 1)
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Cylinder
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.20000005, 0.25, 0.25)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Fossil")
p9.Name = "part"
p9.CFrame = CFrame.new(3.49999666, 1.64002216, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.Size = Vector3.new(1, 0.200000003, 1)
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(1.14999998, 0.100000001, 0.100000001)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Fossil")
p10.Name = "part"
p10.CFrame = CFrame.new(3.49999666, 1.42002213, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.Size = Vector3.new(1, 0.200000003, 1)
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(1.14999998, 0.100000001, 0.100000001)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Institutional white")
p11.Name = "part"
p11.CFrame = CFrame.new(3.49999666, 0.820021987, 23.7000046, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p11.Size = Vector3.new(1, 1.62, 1)
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.01499999, 1, 0.0250000004)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Institutional white")
p12.Name = "part"
p12.CFrame = CFrame.new(3.89999628, 0.820021987, 23.7000046, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p12.Size = Vector3.new(1, 1.62, 1)
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.01499999, 1, 0.0250000004)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Institutional white")
p13.Name = "part"
p13.CFrame = CFrame.new(3.09999609, 0.820021987, 23.7000046, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p13.Size = Vector3.new(1, 1.62, 1)
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(1.01499999, 1, 0.0250000004)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Institutional white")
p14.Name = "part"
p14.CFrame = CFrame.new(3.49999666, 0.250021935, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.Size = Vector3.new(1, 0.200000003, 1)
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "rbxasset://fonts/rightarm.mesh"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(1.02999997, 0.0500000007, 1.02999997)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Institutional white")
p15.Name = "part"
p15.CFrame = CFrame.new(3.49999666, 0.450021982, 23.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p15.Size = Vector3.new(1, 0.200000003, 1)
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "rbxasset://fonts/rightarm.mesh"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(1.02999997, 0.0500000007, 1.02999997)
w1 = Instance.new("Weld", p1)
w1.Name = "part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-4.5, -1.4000001, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(-4.5, -2.21000004, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-4.5, -2.21000004, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(-4.5, -2.04999995, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-4.5, -2.04999995, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(-4.5, -2.13000011, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-4.5, -2.13000011, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(-4.5, -1.22000003, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-4.5, -1.22000003, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(-4.5, -1.93000007, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-4.5, -1.93000007, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(-4.5, -1.93000054, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-4.5, -1.93000054, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-4.5, -1.93000054, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-4.5, -1.93000054, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-4.5, -2.0400002, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-4.5, -2.0400002, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(-4.5, -1.82000017, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-4.5, -1.82000017, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(23.5, -1.22000003, -4.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w11 = Instance.new("Weld", p11)
w11.Name = "part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(23.5, -1.22000003, -4.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w11.Part1 = p12
w11.C1 = CFrame.new(23.5, -1.22000003, -4.89999962, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w12 = Instance.new("Weld", p12)
w12.Name = "part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(23.5, -1.22000003, -4.89999962, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w12.Part1 = p13
w12.C1 = CFrame.new(23.5, -1.22000003, -4.09999943, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w13 = Instance.new("Weld", p13)
w13.Name = "part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(23.5, -1.22000003, -4.09999943, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w13.Part1 = p14
w13.C1 = CFrame.new(-4.5, -0.649999976, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-4.5, -0.649999976, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(-4.5, -0.850000024, -23.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local b1=m
b1.Parent=char

local handle1 = nil
local hitbox1 = nil
local trailbox1 = nil

local llw = Weld(Left_Leg, Torso, cf(.5,2,0))
local rlw = Weld(Right_Leg, Torso, cf(-.5,2,0))
local raw = Weld(Right_Arm, Torso, cf(-1.5,0,0))
local law = Weld(Left_Arm, Torso, cf(1.5,0,0))
local torw = Weld(Torso, HumanoidRootPart, cf(0,0,0))
local hedw = Weld(Head, Torso, cf(0,-1.5,0))
local h1w = Weld(rarm, f2['armHW'], cf(0,0,0)*ang(0,rad(0),0)) --// if weapon model
local bracew = Weld(rarm, b1['armhw'], cf(0,0,0)*ang(0,0,0)) --// if weapon model
--local tw=f2['armHW'].thumb_Weld
--local pinw=f2['armHW'].pinky_Weld
--local poiw=f2['armHW'].pointer_Weld
--local mw=f2['armHW'].middle_Weld
--local h2w = Weld(larm, f1['armHW'], cf(0,0,0)*ang(0,rad(90),0))--// if dual weapon model

--[[ State Example: Arms Out
        raw.C0 = clerp(raw.C0, cf(0,.5,-.5)*ang(rad(90),0,0),.1)
        law.C0 = clerp(law.C0, cf(0,.5,-.5)*ang(rad(90),0,0),.1)
--]]

local Used = {
        Executed={};
        Failed={};
};
local Keys={};

local BindKey = function(Name, Key, Function)
        local keydown
		Keys[Key]=Name
        keydown = mouse.KeyDown:connect(function(key)
                 if Key:lower() == key:lower() then
                         if dkd then
                                 table.insert(Used.Failed, {Name, Key, Function})        
                         else
                                 if NotifyKeyPresses then
                                        warn('executed('..Name..', "'..tostring(Key:upper())..'")')
                                end
                                 Function(Name, Key)
                                 if NotifyKeyPresses then
                                        warn('ended('..Name..')')
                                end
                                table.insert(Used.Executed, {Name, Key, Function})
                        end
                 end
        end)        
end

--[[

BindKey('Attack Name', 'Key{Not case sensative}', function(AttackName, Key)
        ds,dkd = true,true
        for i = 0,1,.05 do
                local animspd = .1
                torw.C0 = clerp(torw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                hedw.C0 = clerp(hedw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                law.C0 = clerp(law.C0, cf(0,0,0)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                lrs:wait()
        end
        for i = 0,1,.05 do
                local animspd = .1
                torw.C0 = clerp(torw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                hedw.C0 = clerp(hedw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                law.C0 = clerp(law.C0, cf(0,0,0)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                lrs:wait()
        end
        ds,dkd = false,false
end)

--]]

function rainb(hue)
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
    if section < 1 then
        return c3(1, 1 - cos(secondary), 1 - sin(secondary))
    elseif section < 2 then
        return c3(1 - sin(secondary), 1, 1 - cos(secondary))
    else
        return c3(1 - cos(secondary), 1 - sin(secondary), 1)
    end
end

local CRIT = false
showDamage = function(Parent, Txt, RemovalTime, Clr)
        ypcall(function()
        --// Sav's ShowDamage script
        if string.find('critical',Txt:lower()) then
                Clr = 'Really red'
                print'crit'
        end
        local Clr_Raw = Clr
        if Clr == nil then Clr = 'Mulberry' end
        Clr = bc(Clr).Color
        local Pert = Instance.new('Part',        Parent)
        Pert.Size = vec3(.2,.2,.2)
        Pert.Transparency = 1
        Pert.CanCollide = false
        Pert.Anchored = true
        Pert.CFrame = Parent:FindFirstChild'Head'.CFrame
        Pert.BrickColor = bc'Really black'
        local Gui = Instance.new('BillboardGui',Pert)
        Gui.Adornee = Pert
        local n2 = 10
        Gui.Size = UDim2.new(n2,0,n2,0)
        local TextL = Instance.new('TextLabel', Gui)
        local r,g,b = Clr.r,Clr.g,Clr.b
        local clr = c3(r,g,b)
        if Clr_Raw:lower() == 'rainbow' then
                lrs:connect(function()
                        Clr = rainb(tick()/3)
                        r,g,b = Clr.r,Clr.g,Clr.b
                        clr = c3(r,g,b)
                end)
        end
        ypcall(function()
                if type(tonumber(Txt)) == 'number' then
                        TextL.Text = tostring(math.floor(tonumber(Txt)))
                else
                        TextL.Text = tostring(Txt)
                end
        end)
        TextL.BackgroundTransparency = 1
        TextL.Font = 'SourceSansLight'
        TextL.Size = UDim2.new(1,0,1,0)
        TextL.TextScaled = true
        TextL.FontSize = 'Size8'
        TextL.TextColor3 = clr
        local n = 10
        local sp = Pert.CFrame * cf(rand(-n,n),rand(-n,n),rand(-n,n))
        lrs:connect(function()
                Pert.CFrame = clerp(Pert.CFrame,sp,.01)
                clr = c3(r,g,b)
                TextL.TextColor3 = clr
        end)
        delay(RemovalTime+1, function()
                local rn,bn,gn = 1-r,1-b,1-g
                spawn(function()
                        for i = 0,1,.025 do
                                TextL.TextTransparency = i
                                lrs:wait()
                        end
                        Pert:Destroy()
                end)
                spawn(function()
                        for i = 0,rn,.01 do
                                r = rn-i
                                lrs:wait()
                        end
                end)
                spawn(function()
                        for i = 0,bn,.01 do
                                b = bn-i
                                lrs:wait()
                        end
                end)
                spawn(function()
                        for i = 0,gn,.01 do
                                g = gn-i
                                lrs:wait()
                        end
                end)
        end)
        end)
end

CheckIfLanded = function()
        local Ray = Ray.new(torso.Position,vec3(0,-1,0)*10)
        local Ignore = {Char}
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return false,nil end
        return true,Hit
end;

FindNearestTorso = function(Position, Distance, SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= Char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

DebounceHit = false

NewFXBox = function(name,prnt)
        if prnt == nil then
                prnt = Character
        end
        local FXBox = Instance.new('Model', prnt)
        FXBox.Name = 'FXBox'
        if name then
                FXBox.Name = name
        end
        local Count = 0
        local Check
        Check = FXBox.ChildAdded:connect(function(Object)
                if Object:IsA'BasePart' then
                        FXBox.PrimaryPart = Object
                        Check:disconnect()
                end
        end)
        return FXBox
end

ReSurface = function(Part, Integer)
        if Part ~= nil and Part:IsA'BasePart' then
                Part.TopSurface = Integer
                Part.BottomSurface = Integer
                Part.LeftSurface = Integer
                Part.RightSurface = Integer
                Part.FrontSurface = Integer
                Part.BackSurface = Integer
        end
end

function ni(name,prnt)
        return Instance.new(tostring(name),prnt)
end

local TrailModel = NewFXBox'TrailBOX'
function NewPart(prnt)
        local NPart = ni('Part', prnt)
        ReSurface(NPart,10)
        if prnt:IsA'BasePart' then
                NPart.CFrame = prnt.CFrame
        end
        NPart.Anchored = true
        NPart.Size = vec3(1,1,1)
        NPart.CanCollide = false
		--NPart.TopSurface,NPart.BottomSurface=0,0
        NPart.BrickColor = bc'Toothpaste'
        return NPart
end

function GenTrail(Origin, Time) --// SavageMunkey's Trail
--[[
        local Last = Origin
        spawn(function()
                lrs:wait()
                Last = Origin
                local fb = NewFXBox('trails',nil)
                local Part = NewPart(fb)
                --Part.CFrame = Origin.CFrame
        end)
--]]
end

function MagDmg(Part,magni,knock,func)
        for _,c in pairs(workspace:children()) do
                local hum=c:findFirstChild("Humanoid")
                if hum~=nil then
                        local head=c:findFirstChild("Torso")
                        if head~=nil then
                                local targ=head.Position-Part.Position
                                local mag=targ.magnitude
                                if mag<=magni and c.Name~=Player.Name then
                                        func(c,hum)
                                end
                        end
                end
        end
end

local Element='Ice'

BindKey('Controls', ']', function(Name, Key)
	for i,v in next, Keys do
		warn('\' '..i:upper()..' \' : '..v)
	end
end)

BindKey('Ground Water Ascend', 'g', function(AttackName, Key)
	 ds,dkd = true,true
		local fb=NewFXBox('derp')
        for i = 0,1,.05 do
            local animspd = .15
            torw.C0 = clerp(torw.C0, cf(0,0,0)*CFrame.new(-1.90734863e-006, 2.6224041, -0.0868358612, 0.939692259, -2.83122063e-007, 0.342021227, -0.0593909919, 0.984807849, 0.163175672, -0.336825192, -0.17364791, 0.92541635)*ang(0,-rad(40),0),animspd)
            hedw.C0 = clerp(hedw.C0, cf(0,0,0)*CFrame.new(-0.0447119251, 0.0056065321, 0.122857794, 0.938856542, 0.0298092216, 0.34301576, -0.0560224578, 0.996194899, 0.0667644441, -0.339720368, -0.0818988383, 0.936954021)*ang(0,0,0),animspd)
            law.C0 = clerp(law.C0, cf(0,0,0)*CFrame.new(-0.330499291, 0.172678888, -0.699603319, 0.906182826, 0.387694091, 0.168896496, -0.0199337415, 0.438106418, -0.898702145, -0.42241621, 0.811021686, 0.404732645)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*CFrame.new(0.264802456, -0.208232492, -0.1720258, 0.958214164, -0.284303367, -0.0315763652, 0.262002051, 0.916593254, -0.302012861, 0.114805937, 0.281119943, 0.952780902)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*CFrame.new(-2.83122063e-006, 2.33650208e-005, -1.93715096e-006, 0.99999994, 0, 0, 0, 1, -1.49011612e-008, 0, -1.49011612e-008, 1.00000012)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*CFrame.new(-0.0261345506, 0.165382981, -0.928192735, 0.99999994, -1.49011612e-008, -2.98023224e-008, 0, 0.866025984, 0.499999344, 0, -0.499999344, 0.866025925)*ang(0,0,0),animspd)
            lrs:wait()
        end
		local hp=root.CFrame
		local positions={}
		local partz={}
		for i=0,16,2 do
			local np=NewPart(fb)
			np.CFrame=hp*ang(0,-rad(i),0)*cf(-8+i,-3.2,-14)*eu(rad(rand(-4,4)),rad(rand(-20,20)),rad(rand(-7,7)))
			np.Size=Vector3.new(2,.2,2)
			np.Transparency=1
			table.insert(positions,np.CFrame)
			local np2=NewPart(np)
			table.insert(partz,np)
			table.insert(partz,np2)
			np2.CFrame=np.CFrame*ang(rad(rand(-360,360)),rad(rand(-360,360)),rad(rand(-360,360)))
			np2.Size=Vector3.new(3.5,3.5,3.5)
			np2.Transparency=0
			np2.Material='Slate'
			np2.Color=bc'Pastel blue-green'.Color
			local P_E = Instance.new('ParticleEmitter', np)
				P_E.Color = ColorSequence.new(bc'Toothpaste'.Color,Color3.new(1,1,1))
				P_E.LightEmission = 1
				P_E.Size = NumberSequence.new(.1,.4)
				P_E.Texture = 'rbxassetid://242201991'
				P_E.Transparency = NumberSequence.new(.1,.3)
				P_E.ZOffset = 0
				P_E.Name = 'fog'
				P_E.LockedToPart = false
				P_E.Lifetime = NumberRange.new(1,3)
				P_E.Rate = 100
				P_E.RotSpeed = NumberRange.new(15,30)
				P_E.Speed = NumberRange.new(1,3)
				P_E.VelocitySpread = 80
			wait(.1)
			delay(5,function()
				P_E:Destroy()
			end)
		end
		wait(.2)
		delay(.1,function()
			for i,v in next, positions do
				local np3=NewPart(fb)
				table.insert(partz,np3)
				np3.CFrame=v*cf(0,-6,0)
				np3.Size=Vector3.new(3,12,3)
				np3.Transparency=.3
				np3.CanCollide=true
				np3.Material='Slate'
				np3.Color=bc'Pastel light blue'.Color
				spawn(function()
					local pos=np3.CFrame
					for i = 0,12,.5 do
						np3.CFrame=clerp(np3.CFrame,pos*cf(0,i,0),.2)
						lrs:wait()
					end
				end)
			end
		end)
        for i = 0,1,.05 do
            local animspd = .15
            torw.C0 = clerp(torw.C0, cf(0,0,0)*CFrame.new(-1.90734863e-006, 2.62240314, -0.0868415833, 0.93969202, -3.74391675e-007, 0.342022032, -0.0593913011, 0.984807849, 0.163176328, -0.336825907, -0.173648596, 0.925415754)*ang(0,-rad(40),0),animspd)
            hedw.C0 = clerp(hedw.C0, cf(0,0,0)*CFrame.new(-0.0535775274, 0.0289516449, -0.288858682, 0.943033874, 0.0357196219, 0.33077392, 0.0307064224, 0.98063153, -0.193440214, -0.331276864, 0.192577541, 0.923671782)*ang(0,0,0),animspd)
            law.C0 = clerp(law.C0, cf(0,0,0)*CFrame.new(-0.184325457, 0.845791936, -0.885428011, 0.906183124, 0.360723317, -0.22070609, -0.0199345555, -0.484886765, -0.874349892, -0.422415763, 0.796720564, -0.43220526)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*CFrame.new(-0.179211617, 0.799872458, -0.283458829, 0.948380113, 0.313267231, -0.0493861586, 0.123820588, -0.509127736, -0.851737916, -0.291965395, 0.801656187, -0.521635532)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*CFrame.new(-5.78165054e-006, 2.27689743e-005, -3.82959843e-006, 1.00000012, 1.86264515e-009, 2.98023224e-008, 1.86264515e-009, 1.00000012, 0, 2.98023224e-008, 0, 1)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*CFrame.new(-0.0261363983, 0.165383101, -0.928189278, 1.00000012, -1.49011612e-008, 0, 1.86264515e-009, 0.866026282, 0.499998599, 2.98023224e-008, -0.499998569, 0.866026282)*ang(0,0,0),animspd)
            lrs:wait()
        end
		delay(rand(8,16),function()
			for i,v in next, partz do
				spawn(function()
					for i = 0,2,.05 do
						v.Transparency=v.Transparency+.05
						lrs:wait()
					end
					v:Destroy()
				end)
			end
		end)
        ds,dkd = false,false
end)

BindKey('Lay Down', 'l', function(AttackName, Key)
        ds,dkd = true,true
        hum.WalkSpeed = 0
        delay(.5,function()
                hum.WalkSpeed = 10
        end)
        repeat
                FaceMouse()
                local animspd = .2
                torw.C0 = clerp(torw.C0, cf(0,0-sin(sine/16)/3,0)*CFrame.new(-0.482990265, 2.22939396, -0.200000048, 0.24999994, -0.950350344, -0.185295373, 0.933012784, 0.18529515, 0.30846864, -0.258818954, -0.250000119, 0.933012664)*ang(0,0,0),animspd)
                hedw.C0 = clerp(hedw.C0, cf(0,0,-cos(sine/16)/26)*CFrame.new(-0.359177589, 0.1250664, -0.0787416622, 0.933012843, 0.308469027, -0.185295075, -0.314705104, 0.949178934, -0.00448743999, 0.174493939, 0.0625000745, 0.982672632)*ang(cos(sine/16)/26,0,0),animspd)
                law.C0 = clerp(law.C0, CFrame.new(0.468412578, 0.981580019, 0.0708976835, 0.946090937, -0.29880929, 0.125000089, -0.305040181, -0.951745093, 0.0336439162, 0.108915083, -0.0699602216, -0.991586149)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, CFrame.new(-0.828222156, 0.864441633, 0.30142796, 0.685298264, 0.726752639, -0.0468733013, -0.302758366, 0.225768551, -0.925940633, -0.662347257, 0.648736715, 0.374749154)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(cos(sine/16)/26,0,0)*CFrame.new(0.527912021, 0.244418263, -0.249614716, 0.899519026, 0.37500006, -0.224144161, -0.313563436, 0.911415875, 0.266457021, 0.304209858, -0.169399709, 0.937422037)*ang(0,0,-cos(sine/16)/26),animspd)
            llw.C0 = clerp(llw.C0, CFrame.new(-0.228842348, 0.386762857, -0.514651418, 0.933012784, -0.174494147, -0.314704657, 0.18529515, 0.982672751, 0.00448712707, 0.30846864, -0.0624997914, 0.949179053)*ang(0,0,0),animspd)
            lrs:wait()
    until State == 'Moving'
    hum.WalkSpeed = 0
        ds,dkd = false,false
end)

BindKey('Play Around', 'k', function(AttackName, Key)
        ds,dkd = true,true
        hum.WalkSpeed = 0
        delay(.5,function()
                hum.WalkSpeed = 10
        end)
		local ball=NewPart(rarm)
			ball.CFrame=rarm.CFrame*cf(0,-1.5,-.9)
			ball.Size=Vector3.new(.5,.5,.5)
			ball.Anchored=false
			ball.Color=bc'Pastel blue-green'.Color
			ball.Transparency=.3
			ball.Material='Slate'
		local btaw=Weld(Right_Arm,ball,cf(0,-1,-.8))
		local i=0
        repeat
			i=i+1
            --FaceMouse()
            local animspd = .25
			btaw.C0=lerp(btaw.C0,cf(0,0,.2-sin(sine/5)/3)*eu(0,0,rad(i)),animspd)
            torw.C0 = clerp(torw.C0, cf(-sin(sine/5)/16,-sin(sine/5)/8,0)*CFrame.new(0, 3, 0, 1.00000012, -2.32830644e-009, -1.39698386e-008, -2.32830644e-009, 0.99999994, 0, -1.39698386e-008, 0, 1)*ang(-rad(90),0,-cos(sine/5)/40),animspd)
            hedw.C0 = clerp(hedw.C0, cf(0,0,sin(sine/5)/7)*CFrame.new(-0.0139540099, 0.340087056, -0.558372915, 0.936116934, 0.0266671758, -0.350676477, -0.218770072, 0.824873686, -0.521270633, 0.275362939, 0.564687848, 0.778012216)*ang(-sin(sine/5)/7,-rad(22),0),animspd/4)
            law.C0 = clerp(law.C0, cf(0,0,0)*CFrame.new(0.440753937, 0.203005075, -0.169209003, 0.692407012, -0.70642823, 0.146737024, -0.591227055, -0.672093213, -0.445804089, 0.413549572, 0.221922994, -0.883021474)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,-cos(sine/5)/7)*CFrame.new(0.1588518858, 1.16434693, -0.746104658, 0.965925932, -0.258818775, 1.30617991e-006, -0.166364551, -0.620885551, -0.766044259, 0.19826743, 0.739941835, -0.642787755)*ang(-cos(sine/5)/7,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*CFrame.new(0.79446888, 0.0219111443, -0.843867457, 0.902859271, 0.344731003, 0.256915927, -0.422617853, 0.821394563, 0.383021235, -0.0789900646, -0.454391539, 0.887293041)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*CFrame.new(-0.368179977, 0.269208193, -0.0977735668, 0.934236646, -0.347736239, 0.0792566538, 0.341038465, 0.936031103, 0.0868240446, -0.104378559, -0.0540845841, 0.993065894)*ang(0,0,0),animspd)
            lrs:wait()
    until State == 'Moving'
	btaw:Destroy()
	ball:Destroy()
    hum.WalkSpeed = 0
        ds,dkd = false,false
end)

local icepet,firepet,voidpet,earthpet=false,false,false,false

BindKey('Summon Pet', 'f', function(AttackName,Key)
        if Element=='Ice' and icepet==false then
                local fb = NewFXBox('summon_effects')
                local s1=snd(588738712,fb)
                local s2=snd(588732660,fb)
                local s3=snd(588731098,fb)
                local s4=snd(588730685,fb)
                local s5=snd(588737825,fb)
                --wait()
                hum.WalkSpeed=0
                ds,dkd = true,true
                for i = 0,1,.01 do
                        local animspd = .1
                        torw.C0 = clerp(torw.C0, cf(0,-sin(sine/16)/5.5,0)*CFrame.new(0, 2.62240458, -0.0868360996, 0.939693093, 8.75157298e-008, 0.342019022, -0.0593910068, 0.984807849, 0.163175792, -0.336823016, -0.173648015, 0.925417006)*ang(0,0,0),animspd)
                        hedw.C0 = clerp(hedw.C0, cf(0,0,0)*CFrame.new(-0.0447137877, 0.00560760498, 0.122847803, 0.423539102, 0.0298085548, -0.905387402, 0.0616278872, 0.996194839, 0.0616276935, 0.903779149, -0.0818988532, 0.420090407)*ang(0,0,0),animspd)
                        law.C0 = clerp(law.C0, cf(0,0,0)*CFrame.new(-0.346446753, -0.287446797, 0.0445638299, 0.939692378, 0.336825192, 0.0593916476, -0.34071973, 0.937029302, 0.0767228007, -0.0298095942, -0.0923317373, 0.995281935)*ang(0,0,0),animspd)
                        raw.C0 = clerp(raw.C0, cf(0,0,0)*CFrame.new(1.92405653, -1.00079525, -0.291472614, 0.0773547888, -0.984707892, 0.156099021, 0.995029986, 0.0664025024, -0.074204661, 0.0627045333, 0.161063224, 0.984950125)*ang(0,0,0),animspd)
                        rlw.C0 = clerp(rlw.C0, cf(0,0,0)*CFrame.new(-1.01327896e-006, 2.21729279e-005, -4.47034836e-007, 1.00000012, 0, 0, 0, 1.00000012, 1.49011612e-008, 0, 1.49011612e-008, 1)*ang(0,0,0),animspd)
                        llw.C0 = clerp(llw.C0, cf(0,0,0)*CFrame.new(-0.026132524, 0.165382504, -0.928200483, 1.00000012, 0, 2.98023224e-008, 0, 0.866025627, 0.499999732, 0, -0.499999642, 0.866025567)*ang(0,0,0),animspd)
                        lrs:wait()
                        h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,-rad(90),0),animspd)
                end
				ds=false
                local np=Instance.new('Part',fb)
                np.Size=Vector3.new(1.25,1.25,1.25)
                np.Shape='Ball'
                np.Material='Neon'
                np.Transparency=1
                np.Color=bc'Pastel blue-green'.Color
                np.Anchored,np.CanCollide=true,false
                np.CFrame=rarm.CFrame*cf(.9,-1,0)
                s1:Play()
                for i = 0,.3,.05 do
                        np.Transparency=1-i
                        lrs:wait()
                end
                wait(.5)
                local perts={}
                for i = 0,1.5,.15 do
                        local np2=Instance.new('Part',fb)
                        np2.Size=Vector3.new(.2+i,.2+i,.2+i)
                        np2.Material='Slate'
                        np2.Transparency=.5
                        np2.Color=bc'Pastel blue-green'.Color
                        np2.Anchored,np2.CanCollide=true,false
                        np2.CFrame=np.CFrame*ang(rad(rand(-360,360)),rad(rand(-360,360)),rad(rand(-360,360)))
                        table.insert(perts,np2)
                        lrs:wait()
                end
                s3:play()
                s4:Play()
                wait(.75)
                local can={}
                for i,v in next, perts do
                        can[i]=false
                        spawn(function()
                                for i = 0,.5,.5 do
                                        v.Transparency=.5-i
                                        lrs:wait()
                                end
                                v.Transparency=0
                                can[i]=true
                        end)
                end
                local continue=true
                repeat 
                        for i,v in next, can do
                                if v then 
                                        continue=false
                                end
                        end
                        lrs:wait()
                until continue
                --print'dun'
                for i,v in next, perts do
                        local bp=Instance.new('BodyPosition',v)
                        bp.P=50000
                        bp.D=2000
                        v.Anchored=false
                        bp.position = v.Position+vec3(rand(-8,8),8,rand(-8,8))
                        delay(.5,function()
                                bp:Destroy()
                                v.CanCollide=true
                                delay(2,function()
                                        for i = 0,1,.01 do
                                                v.Transparency=i
                                                lrs:wait()
                                        end
                                        v:Destroy()
                                end)
                        end)
                end
                s2:Play()
                np.Material='Slate'
				ds=true
                for i = 0,1,.05 do
                        local animspd = .1
                        np.CFrame=clerp(np.CFrame,rarm.CFrame*cf(.9,-1,0),.5)
                        torw.C0 = clerp(torw.C0, cf(0,-sin(sine/16)/5.5,0)*CFrame.new(0, 2.62240458, -0.0868360996, 0.939693093, 8.75157298e-008, 0.342019022, -0.0593910068, 0.984807849, 0.163175792, -0.336823016, -0.173648015, 0.925417006)*ang(0,0,0),animspd)
                        hedw.C0 = clerp(hedw.C0, cf(0,0,0)*CFrame.new(-0.0447137877, 0.00560760498, 0.122847803, 0.423539102, 0.0298085548, -0.905387402, 0.0616278872, 0.996194839, 0.0616276935, 0.903779149, -0.0818988532, 0.420090407)*ang(0,0,0),animspd)
                        law.C0 = clerp(law.C0, cf(0,0,0)*CFrame.new(-0.346446753, -0.287446797, 0.0445638299, 0.939692378, 0.336825192, 0.0593916476, -0.34071973, 0.937029302, 0.0767228007, -0.0298095942, -0.0923317373, 0.995281935)*ang(0,0,0),animspd)
                        raw.C0 = clerp(raw.C0, cf(-rad(6),-rad(6),0)*CFrame.new(1.92405653, -1.00079525, -0.291472614, 0.0773547888, -0.984707892, 0.156099021, 0.995029986, 0.0664025024, -0.074204661, 0.0627045333, 0.161063224, 0.984950125)*ang(0,0,-rad(6)),animspd)
                        rlw.C0 = clerp(rlw.C0, cf(0,0,0)*CFrame.new(-1.01327896e-006, 2.21729279e-005, -4.47034836e-007, 1.00000012, 0, 0, 0, 1.00000012, 1.49011612e-008, 0, 1.49011612e-008, 1)*ang(0,0,0),animspd)
                        llw.C0 = clerp(llw.C0, cf(0,0,0)*CFrame.new(-0.026132524, 0.165382504, -0.928200483, 1.00000012, 0, 2.98023224e-008, 0, 0.866025627, 0.499999732, 0, -0.499999642, 0.866025567)*ang(0,0,0),animspd)
                        lrs:wait()
                        h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,-rad(90),0),animspd)
                end
                for i = 0,1,.05 do
                        local animspd = .3
                        np.CFrame=clerp(np.CFrame,rarm.CFrame*cf(.9+i/3,-1-i*1.5,0),.25)
                        torw.C0 = clerp(torw.C0, cf(0,-sin(sine/16)/5.5,0)*CFrame.new(0, 2.62240458, -0.0868360996, 0.939693093, 8.75157298e-008, 0.342019022, -0.0593910068, 0.984807849, 0.163175792, -0.336823016, -0.173648015, 0.925417006)*ang(0,0,0),animspd)
                        hedw.C0 = clerp(hedw.C0, cf(0,0,0)*CFrame.new(-0.0447137877, 0.00560760498, 0.122847803, 0.423539102, 0.0298085548, -0.905387402, 0.0616278872, 0.996194839, 0.0616276935, 0.903779149, -0.0818988532, 0.420090407)*ang(0,0,0),animspd)
                        law.C0 = clerp(law.C0, cf(0,0,0)*CFrame.new(-0.346446753, -0.287446797, 0.0445638299, 0.939692378, 0.336825192, 0.0593916476, -0.34071973, 0.937029302, 0.0767228007, -0.0298095942, -0.0923317373, 0.995281935)*ang(0,0,0),animspd)
                        raw.C0 = clerp(raw.C0, cf(rad(25),rad(25),0)*CFrame.new(1.92405653, -1.00079525, -0.291472614, 0.0773547888, -0.984707892, 0.156099021, 0.995029986, 0.0664025024, -0.074204661, 0.0627045333, 0.161063224, 0.984950125)*ang(0,0,rad(25)),animspd)
                        rlw.C0 = clerp(rlw.C0, cf(0,0,0)*CFrame.new(-1.01327896e-006, 2.21729279e-005, -4.47034836e-007, 1.00000012, 0, 0, 0, 1.00000012, 1.49011612e-008, 0, 1.49011612e-008, 1)*ang(0,0,0),animspd)
                        llw.C0 = clerp(llw.C0, cf(0,0,0)*CFrame.new(-0.026132524, 0.165382504, -0.928200483, 1.00000012, 0, 2.98023224e-008, 0, 0.866025627, 0.499999732, 0, -0.499999642, 0.866025567)*ang(0,0,0),animspd)
                        lrs:wait()
                        h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,-rad(90),0),animspd)
                end
                s5:Play()
                for i = 0,.7,.05 do
                        np.Transparency=.7-i
                        lrs:wait()
                end
                np.Transparency=0
                np.CFrame=cf(np.Position)
                np.CFrame=np.CFrame*ang(0,-rad(90),0)
                np.Parent=char
                --print(ncf)
                local e1=Instance.new('Part',np)
                e1.Size=Vector3.new(.4,.4,.4)
                e1.Material='Neon'
                e1.Transparency=0
                e1.Color=bc'Pastel blue-green'.Color
                e1.Anchored,e1.CanCollide=true,false
                e1.CFrame=np.CFrame*cf(.2,0,.4)
                local ms1=Instance.new('SpecialMesh',e1)
                ms1.MeshType='Sphere'
                local e2=Instance.new('Part',np)
                e2.Size=Vector3.new(.4,.4,.4)
                e2.Material='Neon'
                e2.Transparency=0
                e2.Color=bc'Pastel blue-green'.Color
                e2.Anchored,e2.CanCollide=true,false
                e2.CFrame=np.CFrame*cf(-.2,0,.4)
                local ms2=Instance.new('SpecialMesh',e2)
                ms2.MeshType='Sphere'
                hum.WalkSpeed=0
                --1323306
                local e3=Instance.new('Part',np)
                e3.Size=Vector3.new(.4,1,.4)
                e3.Material='Neon'
                e3.Transparency=0
                e3.Color=bc'Pastel blue-green'.Color
                e3.Anchored,e2.CanCollide=true,false
                e3.CFrame=np.CFrame*cf(0,.2,0)
                local ms3=Instance.new('SpecialMesh',e3)
                ms3.MeshType='FileMesh'
                ms3.MeshId='rbxassetid://1323306'
                ms3.Scale=vec3(.5,.5,.5)
                local e4=Instance.new('Part',np)
                e4.Size=Vector3.new(.4,1,.4)
                e4.Material='Neon'
                e4.Transparency=0
                e4.Color=bc'Pastel blue-green'.Color
                e4.Anchored,e2.CanCollide=true,false
                e4.CFrame=np.CFrame
                local ms4=Instance.new('SpecialMesh',e4)
                ms4.MeshType='FileMesh'
                ms4.MeshId='rbxassetid://3270017'
                ms4.Scale=vec3(1.35,1.35,.2)
                local e5=Instance.new('Part',np)
                e5.Size=Vector3.new(.4,1,.4)
                e5.Material='Neon'
                e5.Transparency=0
                e5.Color=bc'Pastel blue-green'.Color
                e5.Anchored,e2.CanCollide=true,false
                e5.CFrame=np.CFrame
                local ms5=Instance.new('SpecialMesh',e5)
                ms5.MeshType='FileMesh'
                ms5.MeshId='rbxassetid://68241543'
                ms5.Scale=vec3(1,.2,.6)
                local poss={};
                for i = 0,1,.05 do
                        table.insert(poss,i)
                end
                spawn(function()
                        while wait(math.random(4,7)) do
                                local spd=.15
                                ms1.Scale=vec3(1,1,1)
                                ms2.Scale=vec3(1,1,1)
                                for i = 0,.9,spd do
                                        ms1.Scale=vec3(1,1-i,1)
                                        ms2.Scale=vec3(1,1-i,1)
                                        lrs:wait()
                                end
                                for i = 0,.9,spd do
                                        ms1.Scale=vec3(1,.1+i,1)
                                        ms2.Scale=vec3(1,.1+i,1)
                                        lrs:wait()
                                end
                                ms1.Scale=vec3(1,1,1)
                                ms2.Scale=vec3(1,1,1)
                        end
                end)
                local clrz={'Toothpaste','Pastel blue-green'}
                spawn(function()
                        while wait(rand()/2.5) and np.Parent ~= nil do
                                local clr = clrz[math.random(1,#clrz)]
                                pos = np.CFrame*cf(0,-3,0)
                                local p = Instance.new('Part')
                                local mafc,mafa = rand(-10,10), rand(-360,360)
                                p.CanCollide = false
                                p.FormFactor = 3
                                p.Size = Vector3.new(.4,.4,.4)
                                p.Parent=char
                                p.Shape='Ball'
                                local m = Instance.new('SpecialMesh',p)
                                m.MeshType = 'Sphere'
                                spawn(function()
                                        for i = 0,50 do
                                                local int,int2 = .02,.02
                                                m.Scale = m.Scale - Vector3.new(int,int,int)
                                                p.Transparency = p.Transparency + int2
                                                game:service'RunService'.RenderStepped:wait()
                                        end
                                        pcall(function()
                                                p:Destroy()
                                        end)
                                end)
                                p.BrickColor = BrickColor.new(clr)
                                p.Material = 'Slate'
                                local radius=1
                                p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius)+2,math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
                                local bp = Instance.new('BodyPosition',p)
                                bp.MaxForce = Vector3.new(1/0,1/0,1/0)
                                bp.D = 100
                                bp.P = 100
                                bp.Position = pos.p
                                game.Debris:AddItem(p,10)
                        end
                end)
                local okd
				local i1=snd(588733125,char.Torso)
                local i2=snd(588733880,char.Torso)
                local i3=snd(588738949,char.Torso)
				local cankeydown=true
				
                odk=mouse.KeyDown:connect(function(k)
                        if k:lower()=='e' and cankeydown then --// frost beam
                                cankeydown=false
								delay(1,function()
									cankeydown=true
								end)
                        elseif k:lower()=='q' and cankeydown then --// ice shard
								cankeydown=false
								delay(.3,function()
									cankeydown=true
								end)
                                local mcd=357408908
                                local fb2=char.Torso
                                local m1 = rand(-360,360)
                                local pe = Instance.new('Part')
                                pe.CanCollide = false
                                pe.TopSurface,pe.BottomSurface=0,0
                                pe.Size = Vector3.new(2,2,.2)
                                pe.Anchored=true
                                pe.Transparency=1
                                pe.CFrame=np.CFrame*cf(rand(-.5,.5),rand(2,3),0)*ang(0,0,m1)
                                local d1=Instance.new('Decal',pe)
                                d1.Face='Front'
                                d1.Texture='rbxassetid://'..mcd
                                local d2=Instance.new('Decal',pe)
                                d2.Face='Back'
                                d2.Texture='rbxassetid://'..mcd
                                pe.Parent=fb2
                                local nic = Instance.new("Part")
								game.Debris:AddItem(nic,15)
                                nic.BrickColor = BrickColor.new("Bright bluish green")
                                nic.Material = Enum.Material.Slate
                                nic.Name = "center"
                                nic.Transparency=0
								nic.Material='Slate'
                                nic.CFrame = pe.CFrame
                                nic.CanCollide = false
                                nic.Anchored=true
                                nic.Locked = true
                                nic.Size = Vector3.new(.2,.2,3)
                                nic.BottomSurface = Enum.SurfaceType.Smooth
                                nic.TopSurface = Enum.SurfaceType.Smooth
                                local nic2 = Instance.new("Part")
                                nic2.BrickColor = BrickColor.new("Bright bluish green")
                                nic2.Material = Enum.Material.Slate
                                nic2.Name = "spikeimage"
                                nic2.CFrame = nic.CFrame*ang(-rad(90),0,0)
                                nic2.CanCollide = false
                                nic2.Anchored=true
                                nic2.Locked = true
                                nic2.Size = Vector3.new(.2,.2,3)
                                nic2.BottomSurface = Enum.SurfaceType.Smooth
                                nic2.TopSurface = Enum.SurfaceType.Smooth
                                b2 = Instance.new("SpecialMesh", nic2)
                                b2.MeshId = "rbxassetid://1033714"
                                b2.TextureId = ""
                                b2.MeshType = Enum.MeshType.FileMesh
                                b2.Name = "Mesh"
                                b2.Scale = Vector3.new(.3,5,.3)
								nic.Parent,nic2.Parent=fb2,nic
                                lrs:connect(function()
                                        if nic.Parent then
                                                nic2.CFrame=nic.CFrame*ang(-rad(90),0,0)
                                        end
                                end)
								delay(0,function()
									i2:Play()
									
									table.insert(Projectiles,{pe.CFrame*cf(0,0,nic.Size.Z/2),nic,i1,nic2,400,cf(0,0,-50),-20,300})
                                spawn(function()
                                        i3:play()
                                        for i = 0,1,.1 do
                                                d1.Transparency=1-i
                                                d2.Transparency=1-i
                                                lrs:wait()
                                        end
                                    d1.Transparency,d2.Transparency=0,0
                                end)
                                delay(.5,function()
                                        for i = 0,1,.1 do
                                                d1.Transparency=i
                                                d2.Transparency=i
                                                lrs:wait()
                                        end
										d1:Destroy()
										d2:Destroy()
                                        pe:Destroy()
                                end)
                                local i=0
                                local ncf=pe.CFrame
                                repeat 
                                        i=i+1
                                        pe.CFrame=lerp(pe.CFrame,ncf*ang(0,0,rad(i)),.3)
                                        lrs:wait()
                                until pe.Parent==nil
								end)
                        end
                end)
                lrs:connect(function()
                        if np.Parent then
                                np.Anchored=true
                                local stuff = lerp(np.CFrame,torso.CFrame*cf(3.5,2.75+-cos(sine/16)/5.5,0),.1);
                                stuff = cf(stuff.p, mouse.hit.p);
                                np.CFrame = lerp(np.CFrame,stuff,.15)
                                e1.CFrame=np.CFrame*cf(.2,0,-.4)
                                e2.CFrame=np.CFrame*cf(-.2,0,-.4)
                                e3.CFrame=np.CFrame*cf(0,.65,0)*ang(rad(15),0,0)
                                e4.CFrame=np.CFrame*cf(0,-.2,0)*ang(rad(65)+-cos(sine/16)/5.5,0,-cos(sine/16)/5.5)
                                e5.CFrame=np.CFrame*cf(0,0,0)*ang(rad(0),-rad(90),0,0)
                        end
                end)
                delay(80,function()
                        np:Destroy()
                        icepet=false
                        odk:disconnect()
                end)
                icepet=true
                ds,dkd = false,false
                game.Debris:AddItem(fb,20)
        end
end)

BindKey('Toggle Flight', 'disabled', function(AttackName, Key)
        local fb=NewFXBox('velo\'s',root)
        local vw=Instance.new('BodyVelocity',fb)
        local va=Instance.new('BodyVelocity',fb)
        local vs=Instance.new('BodyVelocity',fb)
        local vd=Instance.new('BodyVelocity',fb)
        for i,v in next, fb:children() do
                if v:IsA'BodyVelocity' then
                        v.MaxVelocity=Vector3.new(1000,10,1000)
                end
        end
        local cam=workspace.CurrentCamera
        local kd
        kd=mouse.KeyDown:connect(function(ke)
                if ke==' ' then
                        fb:Destroy()
                        kd:disconnect()
                end
                if ke=='w' then
                        vw.Velocity=root.CFrame.lookVector*200
                end
                if ke=='a' then
                        --va.Velocity=root.CFrame.lookVector*200
                end
                if ke=='s' then
                        vs.Velocity=root.CFrame.lookVector*-200
                end
                if ke=='d' then
                        --vd.Velocity=root.CFrame.lookVector*200
                end
        end)
        local ku
        ku=mouse.KeyUp:connect(function(ke)
                if ke==' ' then
                        fb:Destroy()
                        ku:disconnect()
                end
                if ke=='w' then
                        vw.Velocity=root.CFrame.lookVector*0
                end
                if ke=='a' then
                        --va.Velocity=root.CFrame.lookVector*0
                end
                if ke=='s' then
                        vs.Velocity=root.CFrame.lookVector*-0
                end
                if ke=='d' then
                        --vd.Velocity=root.CFrame.lookVector*0
                end
        end)
end)

function Attack1()
        dkd,ds = true,true
        for i = 0,1,.05 do
                lrs:wait()
        end
        dkd,ds = false,false
end

function Attack2()
dkd,ds = true,true
        for i = 0,1,.05 do
                lrs:wait()
        end
        dkd,ds = false,false
end

function Attack3()
        dkd,ds = true,true
        for i = 0,1,.05 do
                lrs:wait()
        end
        dkd,ds = false,false
end

function Attack4()
        dkd,ds = true,true
        for i = 0,1,.05 do
                lrs:wait()
        end
        dkd,ds = false,false
end

local ComboResetTime,canatk = .3,true
local combo = 0
local output_clicks = true
--// debst is debounce state
ComboUp = function()
        if dkd == true then return end
        --print'k'
if combo == 0 and canatk == true then
    canatk = false
        if output_clicks then
                --print'Attack1'
        end
    Attack1()
    combo = 1
    canatk = true
    spawn(function()
            ds = true
        wait(ComboResetTime)
        if canatk == true then
                ds = false
        end
        if combo == 1 and not ds then
            combo = 0
           if output_clicks then
                --print'Combo Reset'
        end
        end
    end)
    return
end
if combo == 1 and canatk == true then
    canatk = false
        if output_clicks then
                --print'Attack2'
        end
    Attack2()
    combo = 2
    canatk = true
    spawn(function()
        ds = true
        wait(ComboResetTime)
        if canatk == true then
                ds = false
        end
        if combo == 2 and not ds then
            combo = 0
           if output_clicks then
                --print'Combo Reset'
        end
        end
    end)
    return
end
if combo == 2 and canatk == true then
    canatk = false
    Attack3()
        if output_clicks then
                --print'Attack3'
        end
    combo = 3
    canatk = true
    spawn(function()
        ds = true
        wait(ComboResetTime)
        if canatk == true then
                ds = false
        end
        if combo == 3 and not ds then
            combo = 0
           if output_clicks then
                --print'Combo Reset'
        end
        end
    end)
    return
end
if combo == 3 and canatk == true then
    canatk = false
        if output_clicks then
                --print'Attack4'
        end
    Attack4()
    combo = 0
    wait(ComboResetTime)
    canatk = true
    spawn(function()
        if canatk == true then
                ds = false
        end
        wait(ComboResetTime/4)
        if combo == 0 and not ds then
            combo = 0
           if output_clicks then
                --print'Combo Reset'
        end
        end
    end)
    return
end
end

FaceMouse = function()
    local torso, torsoPos = torso, HumanoidRootPart.Position
    local torso = Char:FindFirstChild'Torso'
    if torso then
        torsoPos = HumanoidRootPart.CFrame.p
                --headPos = vec3(hedw.C1)
        HumanoidRootPart.CFrame = lerp(HumanoidRootPart.CFrame,cf(torsoPos,Vector3.new(mouse.Hit.X,torsoPos.Y,mouse.Hit.Z)),.1)  
                --hedw.C0 = lerp(hedw.C0,cf(headPos,Vector3.new(mouse.Hit.X,headPos.Y,mouse.Hit.Z)),.5)
    end
end

Lightning = function()
        local perts={};
        local fb=NewFXBox('lightning')
        for i = 0,1,.2 do
                local np=Instance.new('Part',fb)
                np.Size=Vector3.new(.2,.2,.2)
                np.Material='Slate'
                np.Transparency=1
                np.Color=bc'Pastel blue-green'.Color
                np.Anchored,np.CanCollide=true,false
                local nums={}
                for i = 0,1.5,.05 do
                        table.insert(nums,i)
                end        np.CFrame=rarm.CFrame*cf(rand(-1,1),rand(-nums[rand(1,#nums)],nums[rand(1,#nums)]),rand(-1,1))
                table.insert(perts,np)
        end
        local last,final=nil,perts[#perts-1]
        local lightning={};
        for i,v in next, perts do
                lrs:wait()
                if last then
                        local mag=(last.CFrame.p-v.CFrame.p).magnitude
                        local np2=Instance.new('Part',fb)
                        np2.Size=Vector3.new(.2,.2,mag)
                        np2.CFrame=cf(last.CFrame.p,v.CFrame.p)*cf(0,0,-mag/2)
                        np2.Material='Neon'
                        np2.Transparency=.5
                        np2.Color=bc'Pastel blue-green'.Color
                        np2.Anchored,np2.CanCollide=true,false
                        Instance.new('BlockMesh',np2).Scale=vec3(.1,.1,1)
                        table.insert(lightning,np2)
                        last=np2
                else
                        last=v
                end
        end
        --wait(6)
        for i,v in next, lightning do
                spawn(function()
                        for i = 0,.5,.05 do
                                v.Transparency=.5+i
                                lrs:wait()
                        end        
                        v:Destroy()
                end)
                lrs:wait()
        end
end

local wz={}
for i = .75,3,.01 do
        table.insert(wz,i)
end        
spawn(function()
        while wait(wz[rand(1,#wz)]) do
            spawn(Lightning)
        end
end)

mouse.Button1Down:connect(function()
        ComboUp()        
end)

Twitch1 = function()
end

Twitch2 = function()
end

hum.MaxHealth = 2000
wait(.1)
hum.Health = 2000
HumanoidRootPart.Transparency = 1
--241539438
HandleProjectiles=function()
	for i,v in next, Projectiles do
		spawn(function()
        local IgnoreTable={char,v[2],v[2].Parent}        
        local TrailBool=false                        
        local Bullet=v[2]
		local distY = Bullet.Size.Z/2
        local i1 = v[3]
		--table.foreach(v,print)
        local bulletposition = (v[1]*cf(0,0,distY)*ang(rad(90),0,0)).p
		local sprd=vec3(rand(-0,0),rand(-0,0),rand(-0,0))
        local bulletvelocity = (sprd+(v[1]*v[6]).p - bulletposition).unit*v[5]
        local bulletlastposition = bulletposition
        Bullet.CFrame = cf( bulletposition, bulletposition+bulletvelocity )
        local dt = lrs:wait()
        bulletlastposition = bulletposition
        bulletvelocity = bulletvelocity + (Vector3.new(0, v[7]*1.1, 0)*dt)
        local ray = Ray.new(v[1].p,  (v[1].p- bulletlastposition))
        local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, IgnoreTable )
        if (torso.Position - Bullet.Position).magnitude > v[8] then
			table.remove(Projectiles,i)
			v[4]:Destroy()
			Bullet:Destroy()
        end
        local cp=true
        if hit and not hit:IsDescendantOf(Character) then
			print(hit.Name)
			--delay(.4,function()
				Bullet:Destroy()
				v[4]:Destroy()
				table.remove(Projectiles,i)
			--end)
			if cp then
				cp=false
				v[3]:Play()
			end
			--local inv=Weld(hit,v[4],hit.CFrame:inverse()*v[2].CFrame:inverse())
			if hit.Parent:findFirstChild("Humanoid") ~= nil then
				if not hit.Parent:findFirstChild("Humanoid"):IsA'Humanoid' then return end
				if not hit.Parent then return end
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(15, 31)
			end
			if hit.Name == 'Head' and hit.Parent:findFirstChild("Humanoid") ~= nil then
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(45, 72)
			end
			if hit.Parent:IsA("Accessory") and hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
				if not hit.Parent.Parent:findFirstChild("Humanoid"):IsA'Humanoid' then return end
				hit.Parent.Parent:findFirstChild("Humanoid").Health = hit.Parent.Parent:findFirstChild("Humanoid").Health - rand(45,72)
			end
			return
	else
		local tbl=Bullet:GetTouchingParts()
		if #tbl > 0 then
			for i,v in next, tbl do
				if not v:IsDescendantOf(Character) and (v.Parent:FindFirstChild'Humanoid') or (v.Parent.Parent:FindFirstChild'Humanoid') or (v.Parent.Parent.Parent:FindFirstChild'Humanoid') or (v.Parent.Parent.Parent.Parent:FindFirstChild'Humanoid') or (v.Parent.Parent.Parent.Parent.Parent:FindFirstChild'Humanoid')then
					local lastp=v.Parent
					repeat lastp=lastp.Parent until lastp:FindFirstChild'Humanoid'
					local lph = lastp:WaitForChild'Humanoid'
					lph.Health=lph.Health - rand(45,72)
					Bullet:Destroy()
					v[4]:Destroy()
					table.remove(Projectiles,i)
					if cp then
						cp=false
						v[3]:Play()
					end
				end
			end
		end
		bulletposition = bulletposition + (bulletvelocity*dt)
		Bullet.CFrame = cf(bulletposition, bulletposition+bulletvelocity)
		v[1] = Bullet.CFrame
	end
	end)
	end
end

lrs:connect(HandleProjectiles)

--char:MakeJoints()

lrs:connect(function()
    if Torso.CFrame.Y < -40 then 
        Torso.CFrame = cf(rand(-100,100),10,rand(-100,100)) 
    end
    sine = sine+change/2
    FreeFalling = false
    hum.PlatformStand = false
        local tmag_xz = (torso.Velocity*vec3(1, 0, 1)).magnitude
        local tmag_y = torso.Velocity.Y
        local speed = Vector3.new(Torso.Velocity.X,0,Torso.Velocity.Z)
        local TiltOnAxis = (root.CFrame-root.CFrame.p):inverse()*speed/50
        local trot = torso.RotVelocity.Y/20
        --print(trot)
        --print(tmag_y)
        local cap = 2
        if tmag_y > cap then
                State, Mode = 'Falling', 'Jumping'
        elseif tmag_y < -cap then
                State, Mode = 'Falling', 'Normal'
        end
        if AFKAnimSequenceCount >= MaxSequenceCount then
        local AFKAnimations = {
                Twitch1,Twitch2,
        };
        local Index = rand(1, #AFKAnimations)
               spawn(AFKAnimations[Index])
               AFKAnimSequenceCount = 0
            return
    end
        AFKAnimSequenceCount = AFKAnimSequenceCount + .5
        workspace.CurrentCamera.CameraSubject = torso
        if FreeFalling == true then
                
        elseif tmag_xz < 7 then
                State, Mode = 'Idle', 'Floating'
        elseif tmag_xz >= 7 then
                State = 'Moving'
                if tmag_xz > 25 then
                        Mode = 'Fast'
                else
                        Mode = 'Normal'
                end
        end
        hum.AutoRotate=true
        hum.JumpPower = 0
        if ds then
                return
        end
        hum.WalkSpeed = 20
        hum.AutoRotate=false
        FaceMouse()
        local RestoreDefault = function(Current)
                Current = Current or State
        if LastState ~= Current then
            LastState = Current
            sine = 0
        end
    end
        --State, Mode = '',''
    local Default_Anims = function()
            local animspd = .1
                torw.C0 = clerp(torw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                hedw.C0 = clerp(hedw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                law.C0 = clerp(law.C0, cf(0,0,0)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
    end
        change=1
    if State == 'Falling' and ds == false then
                RestoreDefault()
            local animspd = .1
                torw.C0 = clerp(torw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                hedw.C0 = clerp(hedw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                law.C0 = clerp(law.C0, cf(0,0,0)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
    elseif State == 'Idle' and ds == false then
                RestoreDefault()
            if Mode == 'Floating' and ds == false then
                    local animspd = .1
                        change=.8
                        torw.C0 = clerp(torw.C0, cf(TiltOnAxis)*cf(0,-sin(sine/16)/5.5,0)*cf(0, 2.50240202, -0.0868360996, 0.939693093, 8.75157298e-008, 0.342019022, -0.0593910068, 0.984807849, 0.163175792, -0.336823016, -0.173648015, 0.925417006)*ang(sin(sine/16)/30,0,0),animspd)
                        
                        local acb=cf(0,0,-cos(sine/16)/20)*cf(-0.0447133183, 0.00560772419, 0.122849166, 0.939693093, 0.0298088789, -0.340717584, 8.75157298e-008, 0.99619478, 0.0871558487, 0.342019022, -0.0818997622, 0.936117232)*ang(-rad(8)+cos(sine/16)/20,0,0)
                        local stuff = lerp(hedw.C0,acb,.1);
                        stuff = cf(stuff.p, vec3(mouse.hit.X,-hedw.C0.Y,mouse.hit.Z));
                        
                        hedw.C0 = lerp(hedw.C0, acb, animspd)
                        
                        law.C0 = clerp(law.C0, cf(-rad(12)+sin(sine/16)/24,sin(sine/16)/24,0)*cf(-0.0553687811, -0.226759991, -0.0504205972, 0.99619472, 0.0871562138, 1.1920929e-007, -0.0868245661, 0.992403924, -0.0871551931, -0.00759622455, 0.0868235454, 0.99619472)*ang(0,0,-rad(12)+sin(sine/16)/24),animspd/2.5)
                    
                        raw.C0 = clerp(raw.C0, cf(rad(3)+-sin(sine/16)/24,sin(sine/16)/24,0)*cf(0.264802575, -0.258233178, -0.17202577, 0.958214402, -0.266443729, -0.104081899, 0.262002349, 0.963527858, -0.0544902682, 0.114804327, 0.0249436535, 0.993074954)*ang(0,0,rad(3)+-sin(sine/16)/24),animspd)
                        
                    rlw.C0 = clerp(rlw.C0, cf(0,0,-sin(sine/16)/20)*cf(-2.62260437e-006, -0.00758528709, -0.174312115, 1.00000012, 7.4505806e-009, 2.98023224e-008, 0, 0.99619478, 0.0871560574, 0, -0.0871560574, 0.996194661)*ang(-sin(sine/16)/20,0,0),animspd)
                    
                        llw.C0 = clerp(llw.C0, cf(0,sin(sine/16)/20,cos(sine/16)/20)*cf(-0.0261328816, 0.165385127, -0.928200483, 1.00000012, 0, 2.98023224e-008, 0, 0.866025627, 0.499999732, 0, -0.499999642, 0.866025567)*ang(cos(sine/16)/14,0,0),animspd)
                        
                    h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            else
                    Default_Anims()
                    warn'Idle: Unknown Mode Used'
            end
    elseif State == 'Moving' and ds == false then
                RestoreDefault()
            if Mode == 'Normal' and ds == false then
                    local animspd = .1
                        torw.C0 = clerp(torw.C0, cf(0,0,0)*CFrame.new(0, 2.63301897, -0.32141304, 1, 0, 0, 0, 0.76604414, 0.642788053, 0, -0.642788053, 0.76604414)*ang(rad(15)+TiltOnAxis.Z,-TiltOnAxis.X,trot+-TiltOnAxis.X),animspd)
                        hedw.C0 = clerp(hedw.C0, cf(0,0,0)*CFrame.new(0, 0.04040277, -0.266627759, 1, 0, 0, 0, 0.965925634, -0.258819878, 0, 0.258819878, 0.965925634)*ang(0,0,0),animspd)
                        law.C0 = clerp(law.C0, cf(0,0,0)*CFrame.new(0.678582788, 0.555288911, 0.126882374, 0.866025388, -0.5, 0, 0.453154027, 0.784885764, 0.422617853, -0.211308926, -0.365997791, 0.906308055)*ang(0,0,0),animspd)
                    raw.C0 = clerp(raw.C0, cf(0,0,0)*CFrame.new(-0.63903904, 0.555296779, 0.126904935, 0.866025269, 0.500000238, 4.89455431e-007, -0.453154147, 0.784885168, 0.422618806, 0.211309135, -0.365998834, 0.906307578)*ang(0,0,0),animspd)
                    rlw.C0 = clerp(rlw.C0, cf(0,0,0)*CFrame.new(0, -0.0397446156, -0.136011362, 1, 0, 0, 0, 0.996194839, 0.0871559381, 0, -0.0871559381, 0.996194839)*ang(0,0,0),animspd)
                    llw.C0 = clerp(llw.C0, cf(0,0,0)*CFrame.new(0, 0.213100076, -0.926180363, 1, 0, 0, 0, 0.939692438, 0.34202075, 0, -0.34202075, 0.939692438)*ang(0,0,0),animspd)
                        h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            elseif Mode == 'Fast' and ds == false then
                    local animspd = .1
                        torw.C0 = clerp(torw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                        hedw.C0 = clerp(hedw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                        law.C0 = clerp(law.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    raw.C0 = clerp(raw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    rlw.C0 = clerp(rlw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    llw.C0 = clerp(llw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
                    --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            else
                    Default_Anims()
                    warn'Walking: Unknown Mode Used'
            end
    else --// New Animation Test Stage
            local animspd = .1
                torw.C0 = clerp(torw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                hedw.C0 = clerp(hedw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                law.C0 = clerp(law.C0, cf(0,0,0)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
    end
        local sr
        sr=function(prt)
                for i,v in next, prt:children() do
                        if v:IsA'BasePart' then
                                v.TopSurface,v.BottomSurface=0,0
                                v.Locked=true
								--v.CanCollide=false
                        end
                        sr(v)
                end
        end
        sr(char)
end)

--[[ Default Welds
                local animspd = .1
                torw.C0 = clerp(torw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                hedw.C0 = clerp(hedw.C0, cf(0,0,0)*ang(0,0,0),animspd)
                law.C0 = clerp(law.C0, cf(0,0,0)*ang(0,0,0),animspd)
            raw.C0 = clerp(raw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            rlw.C0 = clerp(rlw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            llw.C0 = clerp(llw.C0, cf(0,0,0)*ang(0,0,0),animspd)
            h1w.C0 = lerp(h1w.C0, cf(0,0,0)*ang(0,0,0),animspd)
            --h2w.C0 = lerp(h2w.C0, cf(0,0,0)*ang(0,0,0),animspd)
--]]

--print'script ran'
