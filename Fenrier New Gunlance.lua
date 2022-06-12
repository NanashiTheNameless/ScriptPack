wait(1/60)
--[[ 
Fenrier's Gunlance Script created by: 
A bunch of people. 
If you're gonna steal this, then please I ask you. Please don't forum,free model, give 
away, or anything like that to this script. Thank you very much :) 
]] 
Player = game:GetService("Players").LocalPlayer
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
bladecolor = BrickColor.new("New Yeller") 
attack = false 
attacktype = 1 
damage = 4 
oridamage = 4 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
demondance = false 
demonmode = false 
mana = 400 
skill = false 
mode = 0 
guardy = false 
unsheathed = false 
walking = false 
ammo = 4 
 
if Character:findFirstChild("GunSword",true) ~= nil then 
Character:findFirstChild("GunSword",true).Parent = nil 
end 
 
 
        
local modelzorz = Instance.new("Model") 
modelzorz.Name = "GunSword" 
modelzorz.Parent = Character 
local freakinghandle = Instance.new("Part") 
freakinghandle.formFactor = 1 
freakinghandle.Parent = modelzorz 
freakinghandle.CanCollide = false 
freakinghandle.BrickColor = BrickColor.new("New Yeller") 
freakinghandle.Name = "TheFreakingHandle" 
freakinghandle.Size = Vector3.new(1,1,1) 
freakinghandle.Position = Torso.Position 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Dark stone grey") 
prt1.Name = "Part1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Bright blue") 
prt2.Name = "Part2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Dark stone grey") 
prt3.Name = "Part3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Medium stone grey") 
prt4.Name = "Part4" 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Reflectance = 0.1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Neon orange") 
prt5.Name = "Blade1" 
prt5.Size = Vector3.new(1,3,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Reflectance = 0.1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Neon orange") 
prt6.Name = "Blade2" 
prt6.Size = Vector3.new(1,3,1) 
prt6.Position = Torso.Position 
local shell1 = Instance.new("Part") 
shell1.formFactor = 1 
shell1.Reflectance = 0.1 
shell1.Parent = modelzorz 
shell1.CanCollide = false 
shell1.BrickColor = BrickColor.new("New Yeller") 
shell1.Name = "Shell1" 
shell1.Size = Vector3.new(1,1,1) 
shell1.Position = Torso.Position 
local shell2 = Instance.new("Part") 
shell2.formFactor = 1 
shell2.Reflectance = 0.1 
shell2.Parent = modelzorz 
shell2.CanCollide = false 
shell2.BrickColor = BrickColor.new("New Yeller") 
shell2.Name = "Shell2" 
shell2.Size = Vector3.new(1,1,1) 
shell2.Position = Torso.Position 
local shell3 = Instance.new("Part") 
shell3.formFactor = 1 
shell3.Reflectance = 0.1 
shell3.Parent = modelzorz 
shell3.CanCollide = false 
shell3.BrickColor = BrickColor.new("New Yeller") 
shell3.Name = "Shell3" 
shell3.Size = Vector3.new(1,1,1) 
shell3.Position = Torso.Position 
local shell4 = Instance.new("Part") 
shell4.formFactor = 1 
shell4.Reflectance = 0.1 
shell4.Parent = modelzorz 
shell4.CanCollide = false 
shell4.BrickColor = BrickColor.new("New Yeller") 
shell4.Name = "Shell4" 
shell4.Size = Vector3.new(1,1,1) 
shell4.Position = Torso.Position 
 
local hndlmsh = Instance.new("CylinderMesh") 
hndlmsh.Parent = freakinghandle 
hndlmsh.Scale = Vector3.new(0.4,0.6,0.4) 
local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1
msh1.Scale = Vector3.new(0.35,1.6,0.35) 
local msh2 = Instance.new("BlockMesh") 
msh2.Parent = prt2
msh2.Scale = Vector3.new(1.2,0.6,1.2) 
local msh3 = Instance.new("CylinderMesh") 
msh3.Parent = prt3
msh3.Scale = Vector3.new(1,2,1) 
local msh4 = Instance.new("CylinderMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(1.4,1,1.4) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.5,1,0.2) 
local msh6 = Instance.new("SpecialMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.5,2,0.2) 
msh6.MeshType = "FileMesh"
msh6.MeshId = "http://www.roblox.com/asset/?id=1778999"
local shlmsh1 = Instance.new("CylinderMesh") 
shlmsh1.Parent = shell1
shlmsh1.Scale = Vector3.new(0.4,1.1,0.4) 
local shlmsh2 = Instance.new("CylinderMesh") 
shlmsh2.Parent = shell2
shlmsh2.Scale = Vector3.new(0.4,1.1,0.4) 
local shlmsh3 = Instance.new("CylinderMesh") 
shlmsh3.Parent = shell3
shlmsh3.Scale = Vector3.new(0.4,1.1,0.4) 
local shlmsh4 = Instance.new("CylinderMesh") 
shlmsh4.Parent = shell4
shlmsh4.Scale = Vector3.new(0.4,1.1,0.4) 
 
local wld1 = Instance.new("Weld") 
wld1.Parent = freakinghandle 
wld1.Part0 = freakinghandle 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.8) * CFrame.new(1,-1.7,-0.75) 
local wld = Instance.new("Weld") 
wld.Parent = prt1 
wld.Part0 = prt1 
wld.Part1 = freakinghandle 
wld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt2 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.5,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt3 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.3,0,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt3 
wld5.Part1 = prt5 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.7,-0.5,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt5 
wld6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) * CFrame.new(0.3,0.7,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = shell1 
wld7.Part0 = shell1 
wld7.Part1 = prt4 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.4,0,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = shell2 
wld8.Part0 = shell2 
wld8.Part1 = prt4 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.4) 
local wld9 = Instance.new("Weld") 
wld9.Parent = shell3 
wld9.Part0 = shell3 
wld9.Part1 = prt4 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.4,0,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = shell4 
wld10.Part0 = shell4 
wld10.Part1 = prt4 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.4) 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "GunSword" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
function unequipweld() 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.8) * CFrame.new(1,-1.7,-0.75) 
end 
 
function equipweld() 
wld1.Part1 = LeftArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
end 
 
function hideanim() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i+1,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
unequipweld() 
wait(0.1) 
end 
 
function equipanim() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,-1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+4,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
 
function oneslash() 
attack = true 
skill = true 
for i = 0 , 1 , 0.08 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+1,1*i-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
ss(prt1,1) 
local con = prt5.Touched:connect(OT) 
local con2 = prt6.Touched:connect(OT) 
for i = 0 , 1 , 0.1 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3.5*i-1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
skill = false 
end 
 
function twoslash() 
attack = true 
skill = true 
wait(0.2) 
ss(prt1,1) 
local con = prt5.Touched:connect(OT) 
local con2 = prt6.Touched:connect(OT) 
for i = 0 , 1 , 0.1 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3.5*i+3.5-1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
skill = false 
end 
 
function threeslash() 
attack = true 
skill = true 
for i = 0 , 1 , 0.08 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3.57*i-1,-math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,-1*i) 
end 
wait(0.2) 
ss(prt1,1) 
local con = prt5.Touched:connect(OT) 
local con2 = prt6.Touched:connect(OT) 
for i = 0 , 1 , 0.1 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3.57-1,-math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,-1) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
skill = false 
end 
 
function fourslash() 
attack = true 
skill = true 
for i = 0 , 1 , 0.08 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0.7*i) * CFrame.fromEulerAnglesXYZ(-1*i+2.57,math.rad(80)-math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(180)*i+math.rad(180),0,1*i-1) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -1.3*i, -1.57) * CFrame.new(0, 1, 0) 
end 
ss(prt1,0.7) 
wait(0.2) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 70
local con = prt5.Touched:connect(OT2) 
local con2 = prt6.Touched:connect(OT2) 
for i = 0 , 1 , 0.1 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, -1.4*i+0.7) * CFrame.fromEulerAnglesXYZ(-1+2.57,math.rad(80)-math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(180)+math.rad(180),0,1-1) 
end 
vel:Remove() 
con:disconnect() 
con2:disconnect() 
attack = false 
skill = false 
end 
 
function stab() 
attack = true 
skill = true 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(1*i-1.5, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(1,1*i-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5, -0.3*i+0.5, -0.3*i) * CFrame.fromEulerAnglesXYZ(1*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
ss(prt1,1) 
local con = prt5.Touched:connect(OT) 
local con2 = prt6.Touched:connect(OT) 
for i = 0 , 1 , 0.15 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(1-1.5, 0.5, -2*i-1) * CFrame.fromEulerAnglesXYZ(1,1-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C0 = CFrame.new(1.5, -0.3+0.5, -0.3) * CFrame.fromEulerAnglesXYZ(1,-0.5*i,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.15 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(1-1.5, 0.5, 2*i-2-1) * CFrame.fromEulerAnglesXYZ(1,1-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C0 = CFrame.new(1.5, -0.3+0.5, -0.3) * CFrame.fromEulerAnglesXYZ(1,0.5*i-0.5,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1*i+1-1.5, 0.5, 1*i-1) * CFrame.fromEulerAnglesXYZ(1,-1*i+1-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,0) 
RW.C0 = CFrame.new(1.5, 0.3*i-0.3+0.5, 0.3*i-0.3) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
skill = false 
end 
 
function slashy() 
attack = true 
skill = true 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(prt1,1) 
local con = prt5.Touched:connect(OT) 
local con2 = prt6.Touched:connect(OT) 
for i = 0 , 1 , 0.2 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-1,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.15 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+1,1*i-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+2,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(prt1,1) 
local con = prt5.Touched:connect(OT2) 
local con2 = prt6.Touched:connect(OT2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4*i-1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -math.rad(180)*i, -1.57) * CFrame.new(0, 1, 0) 
end 
ss(prt1,1) 
local con = prt5.Touched:connect(OT2) 
local con2 = prt6.Touched:connect(OT2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+4-1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
wait(0.3) 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i-1.57+4-1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i = 0 , 1 , 0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -math.rad(180)*i-math.rad(180), -1.57) * CFrame.new(0, 1, 0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+4-1,-1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
skill = false 
end 
 
function jumplol() 
attack = true 
skill = true 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(1*i-1.5, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(1,1*i-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5, -0.3*i+0.5, -0.3*i) * CFrame.fromEulerAnglesXYZ(1*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(prt1,0.7) 
wait(0.2) 
local con = prt5.Touched:connect(OT2) 
local con2 = prt6.Touched:connect(OT2) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 70
for i = 0 , 1 , 0.08 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(1-1.5, 0.5, -2*i-1) * CFrame.fromEulerAnglesXYZ(1,1-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C0 = CFrame.new(1.5, -0.3+0.5, -0.3) * CFrame.fromEulerAnglesXYZ(1,-0.5*i,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
vel:Remove() 
for i = 0 , 1 , 0.15 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(1-1.5, 0.5, 2*i-2-1) * CFrame.fromEulerAnglesXYZ(1,1-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C0 = CFrame.new(1.5, -0.3+0.5, -0.3) * CFrame.fromEulerAnglesXYZ(1,0.5*i-0.5,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1*i+1-1.5, 0.5, 1*i-1) * CFrame.fromEulerAnglesXYZ(1,-1*i+1-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,0) 
RW.C0 = CFrame.new(1.5, 0.3*i-0.3+0.5, 0.3*i-0.3) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
skill = false 
end 
 
function lazershoot() 
attack = true 
skill = true 
if ammo > 0 then 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i+1,1*i-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
uss(prt1,0.6) 
for i = 0 , 1 , 0.15 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-3.3*i) * CFrame.new(1.4*i-0.7,-0.5,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i+1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.08 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -math.rad(90)*i, -1.57) * CFrame.new(0, 1, 0) 
end 
local blast = Instance.new("Part") 
blast.formFactor = 1 
blast.Reflectance = 0.1 
blast.Parent = modelzorz 
blast.CanCollide = false 
blast.BrickColor = BrickColor.new("Medium stone grey") 
blast.Name = "Blast" 
blast.Size = Vector3.new(1,1,1) 
blast.Position = Torso.Position 
local blstmsh = Instance.new("CylinderMesh") 
blstmsh.Parent = blast
blstmsh.Scale = Vector3.new(0.4,1.1,0.4) 
local blstwld = Instance.new("Weld") 
blstwld.Parent = blast 
blstwld.Part0 = blast 
blstwld.Part1 = prt3 
for i = 0 , 1 , 0.08 do 
wait() 
blstwld.C0 = CFrame.new(0, 1*i, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bss(prt1,1) 
sss(prt1,1) 
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
local shell = Instance.new("Part")
mesh.Parent = shell
local smoke = Instance.new("Smoke")
smoke.Color = Color3.new(0.1,0.1,0.1)
smoke.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = blast.CFrame 
shell.Parent = modelzorz 
shell.Transparency = 0
shell.Name = "ShellBlast"
local wave = Instance.new("Part")
wave.Anchored = true
wave.formFactor = 1
wave.Size = Vector3.new(1,1,1)
wave.CFrame = blast.CFrame 
wave.Parent = modelzorz 
wave.Transparency = 0
wave.Name = "WaveEffect" 
wave.BrickColor = BrickColor.new("White") 
local mesheh = Instance.new("SpecialMesh") 
mesheh.Parent = wave 
mesheh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
mesheh.Scale = Vector3.new(1,1,1)
smoke.RiseVelocity = -10
smoke.Size = 0.25
shell.BrickColor = BrickColor.new("Bright yellow") 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - blast.Position;
                local mag = targ.magnitude;
                if mag <= 7.5 and c[i].Name ~= Player.Name then
                hum:TakeDamage(50)
local torso = head.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-blast.Position).magnitude<=25 then
local angle = (torso.Position-(blast.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                local Gyro=Instance.new("BodyGyro")
                                                Gyro.P=1000
                                                Gyro.D=Gyro.D/2
                                                Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
                                                Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
                end
                end 
                end 
                end
                end
        end
coroutine.resume(coroutine.create(function() 
for i = 0 , 1 , 0.09 do
wait()
mesh.Scale = Vector3.new(10*i,8*i,10*i)
shell.Transparency = 1*i
mesheh.Scale = Vector3.new(15*i,1,15*i)
wave.Transparency = 1*i
end 
shell.Transparency = 1 
wave.Transparency = 1 
wait(0.5) 
smoke.Enabled = false 
blast.Parent = nil 
wait(6) 
shell:Remove() 
wave:Remove() 
end)) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * -16 
for i = 0 , 1 , 0.08 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(120)*i+math.rad(90),0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -math.rad(90), -1.57) * CFrame.new(0, 1, 0) 
end 
wait(0.5) 
vel:Remove() 
ammo = ammo - 1  
uss(prt1,0.6) 
for i = 0 , 1 , 0.15 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,3.3*i-3.3) * CFrame.new(-1.4*i+1.4-0.7,-0.5,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i+1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.15 do 
wait(0)  
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -math.rad(90)*i+math.rad(90), -1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+3,-1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.7,-0.5,0) 
if ammo == 3 then 
for i = 0 , 1 , 0.08 do 
wait() 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90)*i,0) * CFrame.new(-0.3,0,0) 
shell1.BrickColor = BrickColor.new("Black") 
end 
elseif ammo == 2 then 
for i = 0 , 1 , 0.08 do 
wait() 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90)*i+math.rad(90),0) * CFrame.new(-0.3,0,0) 
shell4.BrickColor = BrickColor.new("Black") 
end 
elseif ammo == 1 then 
for i = 0 , 1 , 0.08 do 
wait() 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90)*i+math.rad(180),0) * CFrame.new(-0.3,0,0) 
shell3.BrickColor = BrickColor.new("Black") 
end 
elseif ammo == 0 then 
for i = 0 , 1 , 0.08 do 
wait() 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90)*i+math.rad(270),0) * CFrame.new(-0.3,0,0) 
shell2.BrickColor = BrickColor.new("Black") 
end 
end 
elseif ammo == 0 then 
--[[for i = 0 , 1 , 0.15 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end]] 
rss(prt1,1) 
shell1.BrickColor = BrickColor.new("New Yeller") 
shell2.BrickColor = BrickColor.new("New Yeller") 
shell3.BrickColor = BrickColor.new("New Yeller") 
shell4.BrickColor = BrickColor.new("New Yeller") 
ammo = 4 
end 
attack = false 
skill = false 
end 
 
function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 
 
end 
 
function OT2(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage - 2) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                local Gyro=Instance.new("BodyGyro")
                                                Gyro.P=1000
                                                Gyro.D=Gyro.D/2
                                                Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
                                                Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end
end 
end 
 
function OTeh(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
local torso = hit.Parent:findFirstChild("Head") 
local hedz = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
--if (torso.Position-hedz.Position).magnitude<=25 then
local angle = (torso.Position-(hedz.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                local Gyro=Instance.new("BodyGyro")
                                                Gyro.P=1000
                                                Gyro.D=Gyro.D/2
                                                Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
                                                Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
--end
end
end 
end 
 
 
function ss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function rss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209902" 
SlashSound.Parent = parent 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function sss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function bss(parent,pitch) 
 
local boomSound = Instance.new("Sound") 
boomSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
boomSound.Parent = parent 
boomSound.Volume = 1 
boomSound.Pitch = 1 
boomSound:play() 
local boomSound2 = Instance.new("Sound") 
boomSound2.SoundId = "http://www.roblox.com/asset/?id=2691586" 
boomSound2.Parent = parent 
boomSound2.Volume = 0.7 
boomSound2.Pitch = pitch 
boomSound2:play() 
coroutine.resume(coroutine.create(function() 
wait(5) 
boomSound.Parent = nil 
end)) 
coroutine.resume(coroutine.create(function() 
wait(5) 
boomSound2.Parent = nil 
end)) 
end 
function uss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function tss(parent,pitch) 
 
so=Instance.new("Sound")
so.Name="ZAP"
so.Parent = parent 
so.Volume = 1 
so.Pitch = pitch 
so.SoundId="http://www.roblox.com/asset/?id=2974000" 
so:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
so.Parent = nil 
end)) 
end 
function fss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209908" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
 
 
function effect() 
local clone = prt5:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Weld:remove()
clone.CanCollide = false
clone.Transparency = 0.5 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
local clone = prt6:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Weld:remove()
clone.Transparency = 0.5 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
end 
 
hold = false 
 
function ob1d(mouse) 
hold = true 
oneslash() 
if hold == true then 
twoslash() 
end 
if hold == true then 
threeslash() 
end 
if hold == true then 
fourslash() 
end 
wait(0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if attack == true then return end 
if key == "q" then 
stab() 
end 
if key == "e" then 
slashy() 
end 
if key == "r" then 
jumplol() 
end 
if key == "t" then 
 
end 
if key == "f" then 
lazershoot() 
end 
if key == "g" then 
 
end 
if key == "z" then 
 
end 
if key == "x" then 
 
end 
if key == "c" then 
 
end 
if key == "h" then 
 
end 
if key == "j" then 
 
end 
if key == "k" then 
 
end 
end 
 
function key2(key) 
charging2 = false 
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
equipanim() 
end 
 
function ds(mouse) 
unsheathed = false 
guardy = false 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
function onRunning(speed)
wait() 
end 
Character.Humanoid.Running:connect(onRunning) 
local target = Instance.new("Part") 
wait(1) 
-- lego This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 