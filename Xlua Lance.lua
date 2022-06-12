Player = game:GetService("Players").acb227
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
bladecolor = BrickColor.new("Dark stone grey") --BrickColor.new("Cool yellow")
shieldcolor = BrickColor.new("Dark stone grey") --BrickColor.new("Cool yellow")
shieldcolor2 = BrickColor.new("Medium stone grey") --BrickColor.new("Cool yellow")
attack = false
attacktype = 1
damage = 25
damage2 = 10
oridamage = 5
--player
player = nil
--save shoulders
RSH, LSH = nil, nil
--welds
RW, LW = Instance.new("Weld"), Instance.new("Weld")
--what anim
anim = "none"
running = false
stam = 100
mstam = 100
rushing = false
if Character:findFirstChild("Lance",true) ~= nil then
Character:findFirstChild("Lance",true).Parent = nil
end




local swordholder = Instance.new("Model")
swordholder.Name = "Lance"
swordholder.Parent = Character



local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(0.51,0.5,0.51)
local msh2 = Instance.new("CylinderMesh")
msh2.Scale = Vector3.new(0.5,2.5,0.5)
local msh3 = Instance.new("SpecialMesh")
msh3.Scale = Vector3.new(0.5,3.5,0.5)
msh3.MeshType = "FileMesh"
msh3.MeshId = "http://www.roblox.com/asset/?id=1778999"
local msh33 = Instance.new("SpecialMesh")
msh33.Scale = Vector3.new(0.5,1.75,0.5)
msh33.MeshType = "FileMesh"
msh33.MeshId = "http://www.roblox.com/asset/?id=1778999"

local msh4 = Instance.new("CylinderMesh")
msh4.Scale = Vector3.new(1.2,0.1,1.2)

local prt1 = Instance.new("Part")
prt1.formFactor = 1
prt1.CanCollide = false
prt1.Name = "Handle1"
prt1.Locked = true
prt1.Size = Vector3.new(1,1,1)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = BrickColor.new("Really red")
local prt2 = Instance.new("Part")
prt2.formFactor = 1
prt2.CanCollide = false
prt2.Name = "SwordHandle"
prt2.Locked = true
prt2.Size = Vector3.new(1,1,1)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = bladecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 1
prt3.CanCollide = false
prt3.Name = "Lance"
prt3.Locked = true
prt3.Size = Vector3.new(1,6,1)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = BrickColor.new("Medium grey")
local prt4 = Instance.new("Part")
prt4.formFactor = 1
prt4.CanCollide = false
prt4.Name = "SwordHandleP2"
prt4.Locked = true
prt4.Size = Vector3.new(1,1,1)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.BrickColor = bladecolor
--[[
local ff = Instance.new("ForceField")
ff.Parent = prt3]]

local msh1t = Instance.new("CylinderMesh")
msh1t.Scale = Vector3.new(3.5,0.25,3.5)
local prt1t = Instance.new("Part")
prt1t.formFactor = 1
prt1t.CanCollide = false
prt1t.Name = "Shield2"
prt1t.Locked = true
prt1t.Size = Vector3.new(1,1,1)
prt1t.Parent = swordholder
msh1t.Parent = prt1t
prt1t.BrickColor = shieldcolor


local prt1tt = Instance.new("Part")
prt1tt.formFactor = 1
prt1tt.CanCollide = false
prt1tt.Name = "Shield2"
prt1tt.Locked = true
prt1tt.Size = Vector3.new(1,1,1)
prt1tt.Parent = swordholder
msh33:clone().Parent = prt1tt
prt1tt.BrickColor = shieldcolor2

local prt1ttt = Instance.new("Part")
prt1ttt.formFactor = 1
prt1ttt.CanCollide = false
prt1ttt.Name = "Shield2"
prt1ttt.Locked = true
prt1ttt.Size = Vector3.new(1,1,1)
prt1ttt.Parent = swordholder
msh33:clone().Parent = prt1ttt
prt1ttt.BrickColor = shieldcolor2

local prt1tttt = Instance.new("Part")
prt1tttt.formFactor = 1
prt1tttt.CanCollide = false
prt1tttt.Name = "Shield2"
prt1tttt.Locked = true
prt1tttt.Size = Vector3.new(1,1,1)
prt1tttt.Parent = swordholder
msh33:clone().Parent = prt1tttt
prt1tttt.BrickColor = shieldcolor2

local prt1ttttt = Instance.new("Part")
prt1ttttt.formFactor = 1
prt1ttttt.CanCollide = false
prt1ttttt.Name = "Shield2"
prt1ttttt.Locked = true
prt1ttttt.Size = Vector3.new(1,1,1)
prt1ttttt.Parent = swordholder
msh33:clone().Parent = prt1ttttt
prt1ttttt.BrickColor = shieldcolor2
local prt1tttttt = Instance.new("Part")
prt1tttttt.formFactor = 1
prt1tttttt.CanCollide = false
prt1tttttt.Name = "Shield2"
prt1tttttt.Locked = true
prt1tttttt.Size = Vector3.new(1,1,1)
prt1tttttt.Parent = swordholder
msh33:clone().Parent = prt1tttttt
prt1tttttt.BrickColor = shieldcolor2
local w1 = Instance.new("Weld")
w1.Parent = prt2
w1.Part0 = prt2
local w2 = Instance.new("Weld")
w2.Parent = prt1
w2.Part0 = prt1
w2.Part1 = prt2
w2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, 0, 0)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt2
w3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w3.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -1.25-2.5,0)
local w4 = Instance.new("Weld")
w4.Parent = prt1
w4.Part0 = prt1
w4.Part1 = prt4
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w4.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(90),0) * CFrame.new(0, 1, 0)
local w1t = Instance.new("Weld")
w1t.Parent = prt1t
w1t.Part0 = prt1t
w1t.Part1 = LeftArm
w1t.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1t.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(0.5, 0.5, 0--[[4.25]])

local w1t = Instance.new("Weld")
w1t.Parent = prt1tt
w1t.Part0 = prt1tt
w1t.Part1 = LeftArm
w1t.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1t.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(270), 0) * CFrame.new(1.8, 0.5, 0--[[4.25]])

local w1t = Instance.new("Weld")
w1t.Parent = prt1ttt
w1t.Part0 = prt1ttt
w1t.Part1 = LeftArm
w1t.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1t.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(270), 0) * CFrame.new(1.8, 1.5, 0--[[4.25]])

local w1t = Instance.new("Weld")
w1t.Parent = prt1tttt
w1t.Part0 = prt1tttt
w1t.Part1 = LeftArm
w1t.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1t.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(270), 0) * CFrame.new(1.8, -0.5, 0--[[4.25]])

local w1t = Instance.new("Weld")
w1t.Parent = prt1ttttt
w1t.Part0 = prt1ttttt
w1t.Part1 = LeftArm
w1t.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1t.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(270), 0) * CFrame.new(1.8, 0.5, 1--[[4.25]])

local w1t = Instance.new("Weld")
w1t.Parent = prt1tttttt
w1t.Part0 = prt1tttttt
w1t.Part1 = LeftArm
w1t.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1t.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(270), 0) * CFrame.new(1.8, 0.5, -1--[[4.25]])

function unequipweld()
w1.Part1 = Torso
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-135)) * CFrame.new(-1.5, -0.5-1.5, -1)
end

unequipweld()

function equipweld()
w1.Part1 = RightArm
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(135), 0, 0) * CFrame.new(0, 0.65--[[-2.5]], 1.55-2.05)
end


function hideanim()

        for i = 0 ,1 , 0.05 do
                wait()
		RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2-2+math.rad(260)*i, 0.5+0.5*i,0)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(135), 0, 0) * CFrame.new(0, 0.15-0.15*i--[[-2.5]], -0.5-0.5*i)
        end
wait(0.1)
end


function equipanim()

        for i = 0 , 1 , 0.085 do
                wait()
		RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(260)-math.rad(260)*i, 1,-1+1*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
wait(0.1)
        for i = 0 , 1 , 0.075 do
                wait()
		RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i, 1-1.25*i,-0.25*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i,-0.5*i,0)
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
        

end



if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Lance" 
script.Parent = Tool 
end 
Bin = script.Parent 



function OT(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil and hum ~= Character.Humanoid then
local fire = Instance.new("Fire")
fire.Parent = hum.Parent.Torso
fire.Heat = 50
hum:TakeDamage(damage)
coroutine.resume(coroutine.create(function()
wait(0.1)
fire.Enabled = false
wait(1)
fire.Parent = nil
end))
end

end
