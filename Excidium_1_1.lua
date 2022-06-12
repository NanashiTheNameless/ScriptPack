--[[
Excidium Script created by: 
Fenrier: Everything. 
turdulator: Damage shower, Inspiration for the taunt kill.
If you're gonna steal this, then please I ask you. Please don't forum,free model, give 
away, or anything like that to this script. Thank you very much :) 
Percent done: haxcaikz% [DDDEEERRRPPP......] 
]] 
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
Anime = Character:FindFirstChild("Animate")
Anime:Destroy() -- Sorry i just named it like that done get offended otaku fans XD
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
attacktype = 1 
damage = 3 
oridamage = 3 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
CF = Torso.CFrame 
--debounces 
debounce1 = false 
walking = false 
fightstance = false 
attacking = false 
attackdebounce = false 

if Character:findFirstChild("Excidium",true) ~= nil then 
Character:findFirstChild("Excidium",true).Parent = nil 
end 


	
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Excidium" 
modelzorz.Parent = nil 

local ExciHandle = Instance.new("Part") 
ExciHandle.Material = "SmoothPlastic"
ExciHandle.formFactor = 1 
ExciHandle.Parent = modelzorz 
ExciHandle.Transparency = 0 
ExciHandle.CanCollide = false 
ExciHandle.BrickColor = BrickColor.new("Really black")
ExciHandle.Name = "ExcidiumHandle" 
ExciHandle.Size = Vector3.new(1,1,1) 
ExciHandle.CFrame = Torso.CFrame 

local ExciPart1 = Instance.new("Part") 
ExciPart1.Material = "SmoothPlastic"
ExciPart1.formFactor = 1 
ExciPart1.Parent = modelzorz 
ExciPart1.Transparency = 0 
ExciPart1.CanCollide = false 
ExciPart1.BottomSurface = "Smooth" 
ExciPart1.TopSurface = "Smooth" 
ExciPart1.BrickColor = BrickColor.new("Bright green") 
ExciPart1.Material = "Wood" 
ExciPart1.Name = "ExcidiumPart1" 
ExciPart1.Size = Vector3.new(1,7,1) 
ExciPart1.CFrame = Torso.CFrame 
local ExciPart2 = Instance.new("Part") 
ExciPart2.Material = "SmoothPlastic"
ExciPart2.formFactor = 1 
ExciPart2.Parent = modelzorz 
ExciPart2.Transparency = 0 
ExciPart2.CanCollide = false 
ExciPart2.BrickColor = BrickColor.new("Really black") 
ExciPart2.Name = "ExcidiumPart2" 
ExciPart2.Size = Vector3.new(1,2,2) 
ExciPart2.CFrame = Torso.CFrame 
local ExciPart3 = Instance.new("Part") 
ExciPart3.Material = "SmoothPlastic"
ExciPart3.formFactor = 1 
ExciPart3.Parent = modelzorz 
ExciPart3.Transparency = 0 
ExciPart3.CanCollide = false 
ExciPart3.BrickColor = BrickColor.new("Bright yellow") 
ExciPart3.Name = "ExcidiumPart3" 
ExciPart3.Size = Vector3.new(1,2,2) 
ExciPart3.CFrame = Torso.CFrame 

local ExciBlade1 = Instance.new("Part") 
ExciBlade1.Material = "SmoothPlastic"
ExciBlade1.formFactor = 1 
ExciBlade1.Parent = modelzorz 
ExciBlade1.Transparency = 0 
ExciBlade1.Reflectance = 0.2 
ExciBlade1.CanCollide = false 
ExciBlade1.BottomSurface = "Smooth" 
ExciBlade1.TopSurface = "Smooth" 
ExciBlade1.BrickColor = BrickColor.new("White") 
ExciBlade1.Name = "ExcidiumBlade1" 
ExciBlade1.Size = Vector3.new(1,1,1) 
ExciBlade1.CFrame = Torso.CFrame 
local ExciBlade2 = Instance.new("Part") 
ExciBlade2.Material = "SmoothPlastic"
ExciBlade2.formFactor = 1 
ExciBlade2.Parent = modelzorz 
ExciBlade2.Transparency = 0 
ExciBlade2.Reflectance = 0.2 
ExciBlade2.CanCollide = false 
ExciBlade2.BottomSurface = "Smooth" 
ExciBlade2.TopSurface = "Smooth" 
ExciBlade2.BrickColor = BrickColor.new("White") 
ExciBlade2.Name = "ExcidiumBlade2" 
ExciBlade2.Size = Vector3.new(1,1,1) 
ExciBlade2.CFrame = Torso.CFrame 
local ExciBlade3 = Instance.new("Part") 
ExciBlade3.Material = "SmoothPlastic"
ExciBlade3.formFactor = 1 
ExciBlade3.Parent = modelzorz 
ExciBlade3.Transparency = 0 
ExciBlade3.Reflectance = 0.2 
ExciBlade3.CanCollide = false 
ExciBlade3.BottomSurface = "Smooth" 
ExciBlade3.TopSurface = "Smooth" 
ExciBlade3.BrickColor = BrickColor.new("White") 
ExciBlade3.Name = "ExcidiumBlade3" 
ExciBlade3.Size = Vector3.new(1,1,2) 
ExciBlade3.CFrame = Torso.CFrame 
local ExciBlade4 = Instance.new("Part") 
ExciBlade4.Material = "SmoothPlastic"
ExciBlade4.formFactor = 1 
ExciBlade4.Parent = modelzorz 
ExciBlade4.Transparency = 0 
ExciBlade4.Reflectance = 0.2 
ExciBlade4.CanCollide = false 
ExciBlade4.BottomSurface = "Smooth" 
ExciBlade4.TopSurface = "Smooth" 
ExciBlade4.BrickColor = BrickColor.new("White") 
ExciBlade4.Name = "ExcidiumBlade4" 
ExciBlade4.Size = Vector3.new(1,1,2) 
ExciBlade4.CFrame = Torso.CFrame 
local ExciBlade5 = Instance.new("Part") 
ExciBlade5.Material = "SmoothPlastic"
ExciBlade5.formFactor = 1 
ExciBlade5.Parent = modelzorz 
ExciBlade5.Transparency = 0 
ExciBlade5.Reflectance = 0.2 
ExciBlade5.CanCollide = false 
ExciBlade5.BottomSurface = "Smooth" 
ExciBlade5.TopSurface = "Smooth" 
ExciBlade5.BrickColor = BrickColor.new("White") 
ExciBlade5.Name = "ExcidiumBlade5" 
ExciBlade5.Size = Vector3.new(1,1,3) 
ExciBlade5.CFrame = Torso.CFrame 
local ExciBlade6 = Instance.new("Part") 
ExciBlade6.Material = "SmoothPlastic"
ExciBlade6.formFactor = 1 
ExciBlade6.Parent = modelzorz 
ExciBlade6.Transparency = 0 
ExciBlade6.Reflectance = 0.2 
ExciBlade6.CanCollide = false 
ExciBlade6.BottomSurface = "Smooth" 
ExciBlade6.TopSurface = "Smooth" 
ExciBlade6.BrickColor = BrickColor.new("White") 
ExciBlade6.Name = "ExcidiumBlade6" 
ExciBlade6.Size = Vector3.new(1,1,3) 
ExciBlade6.CFrame = Torso.CFrame 
modelzorz:BreakJoints() 

local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = ExciHandle 
msh1.Scale = Vector3.new(0.51,1,0.51) 
local msh2 = Instance.new("SpecialMesh") 
msh2.Parent = ExciPart1 
msh2.MeshType = "Head" 
msh2.Scale = Vector3.new(0.5,1,0.5) 
local msh3 = Instance.new("BlockMesh") 
msh3.Parent = ExciPart2 
msh3.Scale = Vector3.new(0.51,1.1,0.6) 
local msh4 = Instance.new("CylinderMesh") 
msh4.Parent = ExciPart3 
msh4.Scale = Vector3.new(0.8,0.8,0.8) 
local msh5 = Instance.new("SpecialMesh") 
msh5.Parent = ExciBlade1 
msh5.MeshType = "Wedge" 
msh5.Scale = Vector3.new(0.1,1,1.1) 
local msh6 = Instance.new("SpecialMesh") 
msh6.Parent = ExciBlade2 
msh6.MeshType = "Wedge" 
msh6.Scale = Vector3.new(0.1,1,1.1) 
local msh7 = Instance.new("SpecialMesh") 
msh7.Parent = ExciBlade3 
msh7.MeshType = "Wedge" 
msh7.Scale = Vector3.new(0.1,1,0.8) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = ExciBlade4 
msh8.MeshType = "Wedge" 
msh8.Scale = Vector3.new(0.1,1,0.8) 
local msh9 = Instance.new("SpecialMesh") 
msh9.Parent = ExciBlade5 
msh9.MeshType = "Wedge" 
msh9.Scale = Vector3.new(0.1,0.7,0.8) 
local msh10 = Instance.new("SpecialMesh") 
msh10.Parent = ExciBlade6 
msh10.MeshType = "Wedge" 
msh10.Scale = Vector3.new(0.1,0.7,0.8) 

local wld1 = Instance.new("Weld") 
wld1.Parent = ExciHandle 
wld1.Part0 = ExciHandle 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
local wld2 = Instance.new("Weld") 
wld2.Parent = ExciPart1 
wld2.Part0 = ExciPart1 
wld2.Part1 = ExciHandle
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = ExciPart2 
wld3.Part0 = ExciPart2 
wld3.Part1 = ExciPart1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-4.5,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = ExciPart3 
wld4.Part0 = ExciPart3 
wld4.Part1 = ExciPart1 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-3.5,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = ExciBlade1 
wld5.Part0 = ExciBlade1 
wld5.Part1 = ExciPart2 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,1) 
local wld6 = Instance.new("Weld") 
wld6.Parent = ExciBlade2 
wld6.Part0 = ExciBlade2 
wld6.Part1 = ExciPart2 
wld6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,math.rad(180)) * CFrame.new(0,0.6,-1) 
local wld7 = Instance.new("Weld") 
wld7.Parent = ExciBlade3 
wld7.Part0 = ExciBlade3 
wld7.Part1 = ExciPart2 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.7,1.2) 
local wld8 = Instance.new("Weld") 
wld8.Parent = ExciBlade4 
wld8.Part0 = ExciBlade4 
wld8.Part1 = ExciPart2 
wld8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,math.rad(180)) * CFrame.new(0,-0.7,-1.2) 
local wld9 = Instance.new("Weld") 
wld9.Parent = ExciBlade5 
wld9.Part0 = ExciBlade5 
wld9.Part1 = ExciPart2 
wld9.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,-2,-0.42) 
local wld10 = Instance.new("Weld") 
wld10.Parent = ExciBlade6 
wld10.Part0 = ExciBlade6 
wld10.Part1 = ExciPart2 
wld10.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(180),0) * CFrame.new(0,-2,0.42) 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Excidium" 
script.Parent = Tool 
end 
Bin = script.Parent 

function unequipweld() 
modelzorz.Parent = nil 
end 

function equipweld() 
modelzorz.Parent = Character 
wld1.Parent = ExciHandle 
wld2.Parent = ExciPart1 
wld3.Parent = ExciPart2 
wld4.Parent = ExciPart3 
wld5.Parent = ExciBlade1 
wld6.Parent = ExciBlade2 
wld7.Parent = ExciBlade3 
wld8.Parent = ExciBlade4 
wld9.Parent = ExciBlade5 
wld10.Parent = ExciBlade6 
end 

function hideanim() 
for i = 0 ,1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,-math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
wait(0.5) 
for i = 0 , 1 , 0.075 do 
wait(0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),math.rad(90)*i-math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function equipanim() 
for i = 0 ,1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,-math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.5) 
for i = 0 , 1 , 0.075 do 
wait(0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),math.rad(90)*i-math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function oneslash() 
con2=ExciBlade5.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade3.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade2.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade1.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
attacking = true 
for i = 0 , 1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.43*i+1.57,0,0) 
end 
ss(ExciHandle,0.8) 
for i = 0 , 1 , 0.1 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1*i+math.rad(90),0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.5*i+2,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
end 
end 

function twoslash() 
con2=ExciBlade5.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade3.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade2.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade1.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
attacking = true 
ss(ExciHandle,0.8) 
for i = 0 , 1 , 0.1 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-2.43*i+2.57,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5*i+0.5,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
end 

end 

function threeslash() 
con2=ExciBlade5.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade3.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade2.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade1.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
attacking = true 
ss(ExciHandle,0.8) 
for i = 0 , 1 , 0.1 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(3*i+0.14,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(0.5*i-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(-3.5*i+3,0.5*i,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
end 


end 

function fourslash() 
con2=ExciBlade5.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade3.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade2.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade1.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
attacking = true 
ss(ExciHandle,0.8) 
for i = 0 , 1 , 0.1 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(3.14,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-0.5*i-1, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(3.57*i-0.5,-0.5*i+0.5,-2*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
end 

end 

function dash() 
con2=ExciBlade5.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade3.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade2.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade1.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
attacking = true 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5,0,-1) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.07*i-0.5,1.07*i+0.5,0.2*i-0.2) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,1*i-1) 
end 
ss(ExciHandle,0.8) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Torso.CFrame.lookVector * 100
for i = 0 ,1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5,0,-1) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4*i,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1*i+math.rad(90),0,0) * CFrame.new(0,1,0) 
end 
vel.Parent = nil 

wait(1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attacking = false 
end 

function MagicCombo1() 
attacking = true 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+1,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1*i+math.rad(90),0,0) * CFrame.new(0,1,0) 
end 
wait(0.1) 
for i = 0 ,1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(2.57*i-1,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1*i+math.rad(90),0,0) * CFrame.new(0,1,0) 
end 
Wave() 
wait(0.3) 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.43*i+1.57,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-2.07*i+2.57,0,0) * CFrame.new(0,1,0) 
end 
for i = 0 ,1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.5*i+3,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.5*i+0.5,0,0) * CFrame.new(0,1,0) 
end 
Wave2() 
wait(0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
attacking = false 
end 

function loltauntkill() 
con2=ExciBlade5.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=ExciBlade3.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade2.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
con2=ExciBlade1.Touched:connect(function(hit) Damagefunc1(hit,15,10) end)
attacking = true 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i+math.rad(90),0,-1*i) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,1*i) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.57*i+1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1*i+math.rad(90),0,0) * CFrame.new(0,1,0) 
end 
wait(1) 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.5*i+math.rad(180),0,1*i-1) 
RW.C0 = CFrame.new(-1.5*i+1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(-2.5*i+math.rad(180),0,-1) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.57*i+1,3.14,0) * CFrame.new(0,0,-0.5) 
end 
wait(0.5) 
ss(ExciPart2,0.8) 
for i = 0 ,1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(1*i+0.64,0,0) 
RW.C0 = CFrame.new(0, 0.5, -1*i-0.5) * CFrame.fromEulerAnglesXYZ(1*i+0.64,0,-1) 
end 
for i = 0 ,1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 1*i-1) * CFrame.fromEulerAnglesXYZ(1.64,0,0) 
RW.C0 = CFrame.new(0, 0.5, 1*i-1.5) * CFrame.fromEulerAnglesXYZ(1.64,0,-1) 
end 

wait(0.5) 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.07*i+1.64,0,0) 
RW.C0 = CFrame.new(1.5*i, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.64*i+1.64,0,1*i-1) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1*i+2.57,0,0) * CFrame.new(0,1,0) 
end 
wait(1) 
attacking = false 
end 

Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent~=Player and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(1,5)==1 then
			CRIT=true
			Damage=Damage*2
			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			s=Instance.new("Sound")
			s.SoundId="http://www.roblox.com/asset/?id=2801263"
			s.Volume=1
			s.Pitch=2
			s.Parent=hit
			s:Play()
	
		end
		if SoulPower==true then
	game:GetService("Debris"):AddItem(s,3)
		Star=hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10)
		Gp=Instance.new("Part")
		Gp.TopSurface=0
		Gp.BottomSurface=0
		Gp.Anchored=true
		Gp.CanCollide=false
		Gp.BrickColor=BrickColor:Black()
		Gp.Size=Vector3.new(1,1,1)
		Gp.formFactor="Symmetric"
		Gp.CFrame=Star*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)
		Gp.Parent=workspace
		Instance.new("BlockMesh").Parent=Gp
		Gp.Mesh.Scale=Vector3.new(.8,.8,.8)
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.25,.25,.25) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/20,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),Gp,1)
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

Damagefunc2=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent~=Player and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(2,5)==1 then
			CRIT=true
			Damage=Damage*2
			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			s=Instance.new("Sound")
			s.SoundId="http://www.roblox.com/asset/?id=2801263"
			s.Volume=1
			s.Pitch=2
			s.Parent=hit
			s:Play()
	
		end
		if SoulPower==true then
	game:GetService("Debris"):AddItem(s,3)
		Star=hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-20,20)/10,math.random(-10,10)/10)
		Gp=Instance.new("Part")
		Gp.Material = "SmoothPlastic"
		Gp.TopSurface=0
		Gp.BottomSurface=0
		Gp.Anchored=true
		Gp.CanCollide=false
		Gp.BrickColor=BrickColor:Black()
		Gp.Size=Vector3.new(1,1,1)
		Gp.formFactor="Symmetric"
		Gp.CFrame=Star*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)
		Gp.Parent=workspace
		Instance.new("BlockMesh").Parent=Gp
		Gp.Mesh.Scale=Vector3.new(.8,.8,.8)
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.25,.25,.25) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/20,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),Gp,1)
		end
		Damage=Damage+math.random(0,5)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

TAUNTKILLWIN=function(hit)
if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil then
print("Hello world!")

Characterr = hit.Parent 
Humanoideh = Characterr.Humanoid
Torsoie = Characterr.Torso 

function OnDeath()
	print("Death")--  HAHA
        wait(0.00000001)
        Humanoideh.Parent = nil
	if Torsoie then
		local Headeh = Characterr:FindFirstChild("Head")
		if Headeh then
			local Neckeh = Instance.new("Weld")
			Neckeh.Name = "Neck"
			Neckeh.Part0 = Torsoie
			Neckeh.Part1 = Headeh
			Neckeh.C0 = CFrame.new(0, 1.5, 0)
			Neckeh.C1 = CFrame.new()
			Neckeh.Parent = Torsoie
		end
		local Limb = Characterr:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torsoie.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torsoie
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torsoie

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Characterr
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Characterr:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = Torsoie.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torsoie
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torsoie

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Characterr
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Characterr:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = Torsoie.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = Torsoie
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torsoie

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Characterr
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Characterr:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = Torsoie.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torsoie
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torsoie

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Characterr
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torsoie.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = Characterr
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torsoie
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torsoie
		--]]
	end
end

Humanoideh.Died:connect(OnDeath)


			wait(.1)
			h:TakeDamage(9999999999999999999999999999999999999999)
			wait()
			p=Instance.new("BodyVelocity")
			p.P=4000
			p.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			p.velocity=Torso.CFrame.lookVector*math.random(-30,-10)+Vector3.new(0,math.random(20,30),0)
			p.Parent=hit.Parent:FindFirstChild("Torso",nil)
			game:GetService("Debris"):AddItem(p,.5)
--[[			_G["critEffect"](hit)
			dd=script.LocalScript:clone()
			dd.Disabled=false
			dd.Parent=hit.Parent]]
			f=Instance.new("BodyForce")
			f.force=Vector3.new(0,2400,0)
			f.Parent=p.Parent
			game:GetService("Debris"):AddItem(f,1.75)
			s=Instance.new("Sound")
			s.Volume=1
			s.Pitch=1
			s.Name="Applause"
			s.SoundId="http://www.roblox.com/asset/?id=21343225"
			s.Parent=Torso
			s:Play()
			game:GetService("Debris"):AddItem(s,3)
			s=Instance.new("Sound")
			s.Volume=1
			s.Pitch=1
			s.Name="Applause"
			s.SoundId="http://www.roblox.com/asset/?id=21343225"
			s.Parent=hit
			s:Play()
			game:GetService("Debris"):AddItem(s,3)
			c=Instance.new("Sound")
		c.SoundId="http://roblox.com/asset/?id=10209481"
		c.Volume=.3
		c.Pitch=1.15
		c.Parent=Torso 
		c:Play()
		game:GetService("Debris"):AddItem(c,.5)
--[[		s=Instance.new("Sound")
		s.SoundId="http://roblox.com/asset/?id=10209467"
		s.Volume=1
		s.Pitch=math.random(12,14)*.1
		s.Parent=hit
		s:Play()
		game:GetService("Debris"):AddItem(s,3)]]
		showDamage(hit.Parent,"OVAR NINE THOUSAAAAAAND!!",.5)
	end
end
end 

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Material = "SmoothPlastic"
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("New Yeller")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")

	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)

	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

function Wave() 
sss(ExciPart2,1.3) 
local wav1 = Instance.new("Part") 
wav1.Parent = workspace 
wav1.BrickColor = BrickColor.new("Bright yellow") 
wav1.Material = "SmoothPlastic"
wav1.CanCollide = false 
wav1.Anchored = true 
wav1.Size = Vector3.new(2,2,2) 
wav1.CFrame = ExciPart2.CFrame 
local meh1 = Instance.new("BlockMesh") 
meh1.Parent = wav1 
meh1.Scale = Vector3.new(0.5,0.5,0.5) 
local wav2 = Instance.new("Part") 
wav2.Parent = workspace 
wav2.BrickColor = BrickColor.new("New Yeller") 
wav2.Material = "SmoothPlastic"
wav2.CanCollide = false 
wav2.Anchored = true 
wav2.Size = Vector3.new(2,2,2) 
wav2.CFrame = ExciPart2.CFrame 
local meh2 = Instance.new("BlockMesh") 
meh2.Parent = wav2 
meh2.Scale = Vector3.new(0.5,0.5,0.5) 
	local c = Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - wav2.Position;
		local mag = targ.magnitude;
		if mag <= 8 and c[i].Name ~= Player.Name then
	        head.CFrame = head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) 
		Damagefunc1(head,5,0)
		end
                end
	end 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.5,0.5,0.5) 
meh2.Scale = meh2.Scale + Vector3.new(0.5,0.5,0.5) 
wav1.CFrame = wav1.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
wav2.CFrame = wav2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
wav1.Transparency = wav1.Transparency + 0.1 
wav2.Transparency = wav2.Transparency + 0.1 
end 
wav1.Parent = nil 
wav2.Parent = nil 
end)) 
end 

function Wave2() 
sss(ExciPart2,1) 
local wav1 = Instance.new("Part") 
wav1.Parent = workspace 
wav1.BrickColor = BrickColor.new("New Yeller") 
wav1.Material = "SmoothPlastic"
wav1.CanCollide = false 
wav1.Anchored = true 
wav1.Size = Vector3.new(2,2,2) 
wav1.CFrame = ExciPart2.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
local meh1 = Instance.new("SpecialMesh") 
meh1.Parent = wav1 
meh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
meh1.Scale = Vector3.new(0.5,0.5,0.5) 
	local c = Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - wav1.Position;
		local mag = targ.magnitude;
		if mag <= 8 and c[i].Name ~= Player.Name then
	        head.CFrame = head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) 
		Damagefunc2(head,5,10)
		end
                end
	end 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.5,1,0.5) 
wav1.CFrame = wav1.CFrame 
end 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.3,0.3,0.3) 
wav1.CFrame = wav1.CFrame 
wav1.Transparency = wav1.Transparency + 0.1 
end 
wav1.Parent = nil 
end)) 
end 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = Tool 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound2 = Instance.new("Sound") 
SlashSound2.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound2.Parent = Tool 
SlashSound2.Volume = .7 
SlashSound2.Pitch = 1
local SlashSound3 = Instance.new("Sound") 
SlashSound3.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound3.Parent = Tool 
SlashSound3.Volume = .7 
SlashSound3.Pitch = 1
function ss(parent,pitch) 

local SlashSoundeh1 = SlashSound:Clone() 
SlashSoundeh1.Parent = parent 
SlashSoundeh1.Pitch = pitch 
SlashSoundeh1:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSoundeh1.Parent = nil 
end)) 
end 
function sss(parent,pitch) 

local SlashSoundeh2 = SlashSound2:Clone() 
SlashSoundeh2.Parent = parent 
SlashSoundeh2.Pitch = pitch 
SlashSoundeh2:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSoundeh2.Parent = nil 
end)) 
end 
function uss(parent,pitch) 

local SlashSoundeh3 = SlashSound3:Clone() 
SlashSoundeh3.Parent = parent 
SlashSoundeh3.Pitch = pitch 
SlashSoundeh3:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSoundeh3.Parent = nil 
end)) 
end 

hold = false 

function ob1d(mouse) 
if attacking == true then return end 
hold = true 
if walking == true then 
dash() 
attacking = true 
wait(0.5) 
attacking = false 
else 
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
end 
wait(1) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attacking = false 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if attacking == true then return end 
if key == "q" then 
end 
if key == "g" then 
loltauntkill() 
end 
if key == "z" then 
MagicCombo1() 
end 
end 

function key2(key) 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
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
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
function onRunning(speed) 
if attacking == true then return end 
if speed>0 then 
walking = true 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(-0.5*i+1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,-1*i) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.07*i+1.57,0.5*i,-0.2*i) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,-1*i) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
else 
walking = false 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(0.5*i+1, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.5*i+1.5,0,1*i-1) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-0.5,-0.5*i+0.5,0.2*i-0.2) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,1*i-1) 
end 
for i = 0 ,1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.93*i+2.5,0,0)  
end 
coroutine.resume(coroutine.create(function() 
while walking == false do 
for i = 0 ,1 , 0.01 do 
wait(0)  
if walking == false and attacking == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,0.25*i,-0.5*i) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
end 
end 
for i = 0 ,1 , 0.01 do 
wait(0)  
if walking == false and attacking == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,-0.25*i+0.25,0.5*i-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5*i+0.5) 
end  
end 
end 
end)) 
end 
end


Character.Humanoid.Running:connect(onRunning)
Character.Humanoid.Jumping:connect(onJumping)
Character.Humanoid.Seated:connect(onSeated)
Character.Humanoid.PlatformStanding:connect(onPlatformStanding)
-- lego blockland This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 