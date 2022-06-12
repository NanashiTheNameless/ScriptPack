Player = script.Parent.Parent
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
attack = false 
attackdebounce = false 
combo = 0 
mana = 99999999 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
charging=false
sheathed=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
 
if Character:findFirstChild("Flamega",true) ~= nil then 
Character:findFirstChild("Flamega",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
 
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
 
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Flamega" 
modelzorz.Parent = Character 
 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Dark stone grey") 
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really black") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Dark grey") 
prt3.Name = "Handle3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Black") 
prt4.Name = "Blade1" 
prt4.Reflectance = 0.3 
prt4.Size = Vector3.new(1,2,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Black") 
prt5.Name = "Blade2" 
prt5.Reflectance = 0.3 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Dark stone grey") 
prt11.Name = "Handle11" 
prt11.Size = Vector3.new(1,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Really black") 
prt12.Name = "Handle12" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Dark grey") 
prt13.Name = "Handle13" 
prt13.Size = Vector3.new(1,1,1) 
prt13.Position = Torso.Position 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Parent = modelzorz 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Black") 
prt14.Name = "Blade11" 
prt14.Reflectance = 0.3 
prt14.Size = Vector3.new(1,2,1) 
prt14.Position = Torso.Position 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Parent = modelzorz 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Black") 
prt15.Name = "Blade12" 
prt15.Reflectance = 0.3 
prt15.Size = Vector3.new(1,1,1) 
prt15.Position = Torso.Position 
modelzorz:BreakJoints()
 
local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.2,0.4,0.5) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.24,0.1,0.5) 
local msh3 = Instance.new("BlockMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.16,0.2,0.35) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.1,0.5,0.2) 
local msh5 = Instance.new("SpecialMesh") 
msh5.Parent = prt5 
msh5.MeshType = "Wedge" 
msh5.Scale = Vector3.new(0.1,0.5,0.2) 
local msh11 = Instance.new("CylinderMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(0.2,0.4,0.5) 
local msh12 = Instance.new("CylinderMesh") 
msh12.Parent = prt12 
msh12.Scale = Vector3.new(0.24,0.1,0.5) 
local msh13 = Instance.new("BlockMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(0.16,0.2,0.35) 
local msh14 = Instance.new("BlockMesh") 
msh14.Parent = prt14 
msh14.Scale = Vector3.new(0.1,0.5,0.2) 
local msh15 = Instance.new("SpecialMesh") 
msh15.Parent = prt15 
msh15.MeshType = "Wedge" 
msh15.Scale = Vector3.new(0.1,0.5,0.2) 
 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,-0.8) * CFrame.new(1.2,-1.3,-0.5) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt3 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt4 
wld5.C0 = CFrame.fromEulerAnglesXYZ(3.14,3.14,0) * CFrame.new(0,0.9,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = Torso 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,0.8) * CFrame.new(-1.2,-1.3,-0.5) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt11 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt11 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt13 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt14 
wld15.C0 = CFrame.fromEulerAnglesXYZ(3.14,3.14,0) * CFrame.new(0,0.9,0) 
 
local SlashSound = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
 
local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,0) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Flamega" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
function hideanim() 
sheathed=false
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1-0.6*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1+1*i,1.57-1.57*i) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1+1-1*i,1.57-1.57*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
equipsound(1) 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,-0.8) * CFrame.new(1.2,-1.3,-0.5) 
wld11.Part1 = Torso 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,0.8) * CFrame.new(-1.2,-1.3,-0.5) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
 
function equipanim() 
sheathed=true
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
equipsound(1) 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1,0) * CFrame.new(0,1,0) 
wld11.Part1 = RightArm 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,0) * CFrame.new(0,1,0) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1*i,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0.3*i,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3*i,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
 
function onehit() 
attack=true 
ss(1.1) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2*i,0.3-(0.3+1.57*i),-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
attack=false 
end 
 
function twohit()
attack=true
ss(1.2) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
attack=false
end
 
function threehit()
attack=true
ss(1) 
con1=prt14.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3*i,-0.3+0.3*i,0.3-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
attack=false
end
 
function fourhit()
attack=true
ss(1.4) 
con1=prt14.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5*i,0,0) 
end 
con1:disconnect() 
attack=false
end
 
function fivehit()
attack=true
ss(1.4) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i = 0,1,0.1 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5,0,0) 
end 
ss(1.4) 
for i = 0,1,0.1 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5,0,0) 
end 
vel.Parent = nil 
lightning=false
con1:disconnect() 
con2:disconnect()
attack=false
end
 
function FlyWave()
if mana >= 60 then
mana=mana-60
attack=true
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0.3-0.3*i,-0.3-1.27*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-0.3+0.3*i,0.3+1.27*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,1,0)*60
--[[bodypos=Instance.new("BodyPosition")
bodypos.P=500
bodypos.D=100
bodypos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bodypos.position=Head.Position
bodypos.Parent=Head
bodypos.position=Head.Position+Vector3.new(0,50,0)]]
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=1,2 do
ss(1.4)
for i = 0,1,0.1 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end 
end
vel2.velocity = Vector3.new(0,0,0)
con1:disconnect() 
con2:disconnect()
for i=0,1,0.1 do
wait()
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1.57*i,0,-1.57+1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1.57*i,0,1.57-1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
vel2.Parent=nil
local floor = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.05)
hit,pos = rayCast(Torso.Position, (CFrame.new(Torso.Position,Torso.Position - Vector3.new(0,6,0))).lookVector, 6, Character)
if hit ~= nil then
floor = true
end
until floor
end))
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
repeat
wait()
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
MMMAGIC(prt5,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,3,3,3,0,0,0,BrickColor.new("Black")) 
until floor
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - Torso.Position;
        local mag = targ.magnitude;
        if mag <= 10 and c[i].Name ~= Player.Name then 
        DBHit(head,40) 
        end 
        end 
        end 
    end 
spikesound(1) 
magicsound(0.8) 
MMMAGIC(prt5,15,15,15,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,15,15,15,0,0,0,BrickColor.new("Black")) 
BlastEffect(Head,20,20,20,0,0,0,3.14,0,0,BrickColor.new("Really black")) 
vel.Parent=nil
attack=false
end
end
 
function DecisiveBlow()
if mana>=90 then
mana=mana-90
attack=true
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0.3-0.3*i,-0.3+0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0.8*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-0.3+0.3*i,0.3-0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.8*i,0) 
end 
wait(0.3)
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,50,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,50,10) end) 
clone()
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Torso.CFrame.lookVector*200
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
wait(0.1)
vel2.Parent=nil
ss(2)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5,0.8,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5,-0.8,0) 
for i=0,0.5,0.1 do
wait()
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
end
con1:disconnect()
con2:disconnect()
wait(1)
attack=false
end
end
 
function Charge()
attack=true
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5*i,0.3-0.9*i,-0.3+0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5*i,-0.3+0.9*i,0.3-0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
while charging==true do
wait(0.1)
mana=mana+1
MMMAGIC(prt5,1,1,1,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,1,1,1,0,0,0,BrickColor.new("Black")) 
    p=Instance.new("Part")
    p.Name="FlameEm"
    p.Shape=0
    p.TopSurface=0
    p.BottomSurface=0
    p.BrickColor=BrickColor.new("Black") 
    p.Anchored=true
    p.CanCollide=false
    p.Size=Vector3.new(1,1,1)
    p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-20,20)/5,0,math.random(-20,20)/5)
    p.Parent=modelzorz
    m=Instance.new("SpecialMesh")
    m.MeshType="Sphere"
    m.Parent=p
    m.Scale=Vector3.new(1,1,1)
    coroutine.resume(coroutine.create(function(pa) for i=1, 9 do pa.Mesh.Scale=pa.Mesh.Scale+Vector3.new(0,1.5,0) pa.Transparency=pa.Transparency+1/9  wait(0)  end pa.Parent=nil end),p)
 
end
MMMAGIC(prt5,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,3,3,3,0,0,0,BrickColor.new("Black")) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14+3.14*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14+3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5-1.5*i,0.3-0.9+0.9*i,-0.3+0.6-0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5-1.5*i,-0.3+0.9-0.9*i,0.3-0.6+0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack=false
end
 
function CloneSlash()
if mana>=30 then
attack=true
mana=mana-30
for i = 0,1,0.1 do 
wait() 
prt4.Reflectance=prt4.Reflectance-0.05
prt5.Reflectance=prt5.Reflectance-0.05
prt14.Reflectance=prt14.Reflectance-0.05
prt15.Reflectance=prt15.Reflectance-0.05
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0.3,-0.3-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
ss(1)
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
shoottrail2(prt5)
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5*i)
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3*i,0.3-0.9*i,-0.6+1.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.6) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--shoottrail2(prt5)
ss(1.1)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=0,1,0.2 do
wait()
shoottrail2(prt15)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint2,Point2)
LastPoint2 = Point2
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5-1*i)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3-2.5*i,0.3-0.9*i,-0.6+1.2-2.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3*i,-0.3+0.9*i,0.6-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame
gairo.Parent=nil 
--shoottrail2(prt15)
ss(1.3)
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.1 do 
wait() 
shoottrail2(prt5)
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(450)*i,0) 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5-1)
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+3-2.5,0.3-0.9,-0.6+1.2-2.1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+3,-0.3+0.9,0.6-1.2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
vel.Parent=nil
--shoottrail2(prt5)
ss(0.9)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=0,1,0.2 do
wait()
shoottrail2(prt15)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint2,Point2)
LastPoint2 = Point2
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5-1)
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+3-2.5,0.3-0.9,-0.6+1.2-2.1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3-3*i,-0.3+0.9-0.9*i,0.6-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--shoottrail2(prt15)
wait(1)
vel.Parent=nil
gairo.Parent=nil
prt4.Reflectance=0.3
prt5.Reflectance=0.3
prt14.Reflectance=0.3
prt15.Reflectance=0.3
attack=false
end
end
 
function Flamera()
if mana>=400 then
mana=0
attack=true
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - Torso.Position;
        local mag = targ.magnitude;
        if mag <= 10 and c[i].Name ~= Player.Name then 
        DBHit(head,1) 
        end 
        end 
        end 
    end 
magicsound(0.8) 
MMMAGIC(Head,15,15,15,0,0,0,BrickColor.new("Black")) 
BlastEffect(Head,20,20,20,0,0,0,0,0,0,BrickColor.new("Really black")) 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,1,0)*400
for i = 0,1,0.2 do 
wait() 
MMMAGIC(LeftLeg,3,3,3,0,1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,3,3,3,0,1,0,BrickColor.new("Black")) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
vel2.Parent=nil
bodypos=Instance.new("BodyPosition")
bodypos.P=500
bodypos.D=100
bodypos.maxForce=Vector3.new(0,math.huge,0)
bodypos.position=Head.Position
bodypos.Parent=Head
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
CF=Head.CFrame
for i=0,1,0.1 do
wait()
MMMAGIC(LeftLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0.3-0.3*i,-0.3-1.27*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-0.3+0.3*i,0.3+1.27*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=0,8,0.1 do
wait(0.05)
shoottrail2(prt5)
shoottrail2(prt15)
--ss(1)
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
MMMAGIC(LeftLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,0.3-0.3,-0.3-1.27+1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()+math.random(-1,0),math.random()+math.random(-1,0),math.random()+math.random(-1,0)) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-0.3+0.3,0.3+1.27-1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()+math.random(-1,0),math.random()+math.random(-1,0),math.random()+math.random(-1,0)) 
end
for i=0,1,0.1 do
wait()
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57-1.57*i,0,0)
MMMAGIC(LeftLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57-1.57*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07+1.57*i,0.3-0.3,-0.3-1.27+1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07+1.57*i,-0.3+0.3,0.3+1.27-1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
bodypos.Parent=nil
local floor = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.05)
hit,pos = rayCast(Torso.Position, (CFrame.new(Torso.Position,Torso.Position - Vector3.new(0,6,0))).lookVector, 6, Character)
if hit ~= nil then
floor = true
end
until floor
end))
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
repeat
wait()
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
MMMAGIC(prt5,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,3,3,3,0,0,0,BrickColor.new("Black")) 
until floor
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - Torso.Position;
        local mag = targ.magnitude;
        if mag <= 40 and c[i].Name ~= Player.Name then 
        DBHit(head,80) 
        end 
        end 
        end 
    end 
Character.Humanoid.Health=10
spikesound(0.6) 
magicsound(0.5) 
MMMAGIC2(prt5,40,40,40,0,0,0,BrickColor.new("Black")) 
MMMAGIC2(prt15,40,40,40,0,0,0,BrickColor.new("Black")) 
WaveEffect2(Head,55,45,55,0,0,0,3.14,0,0,BrickColor.new("Really black")) 
BlastEffect2(Head,55,55,55,0,0,0,3.14,0,0,BrickColor.new("Really black")) 
EVENMOARMAGIX(prt15,60,60,60,0,0,0,0,0,0,BrickColor.new("Black")) 
wait(1)
gairo.Parent=nil
attack=false
end
end
 
function shoottrail2(pos1) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 500 
rangepower = 10 
local spreadvector = (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
local hit2,pos = rayCast(pos1.Position,dir,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Really black") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.5 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir 
hit2,pos = rayCast(newpos,dir,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit2 ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz 
effectsg.BrickColor = BrickColor.new("Really black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local efwel = Instance.new("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5) 
local CJ = CFrame.new(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
Damg = 1 
coroutine.resume(coroutine.create(function()
wait(3)
effectsg.Parent = nil
end))
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,5)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,5)
end
end
end))
end
 
function clone()
c=Character:children()
for i=1,#c do
if c[i].className=="Part" then
print(c[i])
d=c[i]:clone()
d.Parent=workspace
d.Transparency=0.4
d.Anchored=true
d.CanCollide=false
d.BrickColor=BrickColor.new("Black")
if d:findFirstChild("roblox")~=nil then
d:findFirstChild("roblox").Parent=nil
end
coroutine.resume(coroutine.create(function(Part)
for x=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.1
end
Part.Parent=nil
end),d)
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)
end
wait()
effectsg.Parent = nil
end
end))
end
 
Stun2=function(Feh,x,y,z,color)
coroutine.resume(coroutine.create(function(part,X,Y,Z)
--[[        if part.Parent:FindFirstChild("Torso")==nil then
            return
        end]]
        Torsoh2=part
        End2=Torsoh2.CFrame+Vector3.new(X/10,Y/10,Z/10)
        ST2=Torsoh2.Position
--[[        p=Instance.new("BodyPosition")
        p.P=3000
        p.D=100
        p.maxForce=Vector3.new(math.huge,0,math.huge)
        p.position=Torsoh2.Position
        p.Parent=Torsoh2]]
        while part.Parent ~= nil and lightning == true do 
--            f1:Play()
--            p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
            Start2=End2
            End2=Torsoh2.CFrame*CFrame.new(X/10,Y/10,Z/10)
            e=Instance.new("Part")
            e.TopSurface=0
            e.BottomSurface=0
            e.CanCollide=false
            e.Anchored=true
            e.formFactor="Symmetric"
            e.Size=Vector3.new(1,1,1)
            Look2=(End2.p-Start2.p).unit
            m=Instance.new("BlockMesh")
            m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)
            m.Parent=e
            e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
            e.Reflectance=.3
            e.Name="Zap"
            e.BrickColor=color
            e.Parent=part.Parent
            coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
            wait()
        end
        wait(.45)
--        p.Parent=nil
end),Feh,x,y,z) 
end
 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(x1,y1,z1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(x1,y1,z1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(x1,y1,z1) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(1,1,1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MOREMAGIX(part,cframe,x,y,z,color) 
        p2=Instance.new("Part")
        p2.Name="Blast"
        p2.TopSurface=0
        p2.BottomSurface=0
        p2.CanCollide=false
        p2.Anchored=true
        p2.BrickColor=color
        p2.Size=Vector3.new(x,y,z)
        p2.formFactor="Symmetric"
        p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
        p2.Parent=modelzorz
        m=Instance.new("BlockMesh")
        m.Parent=p2
        m.Name="BlastMesh"
        coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = Instance.new("SpecialMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    msh1.MeshType = "Sphere" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(x1,y1,z1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = Instance.new("SpecialMesh") 
    msh1.Scale = Vector3.new(x1,y1,z1) 
    msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(1,1,1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function WaveEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = Instance.new("SpecialMesh") 
    msh1.Scale = Vector3.new(x1,y1,z1) 
    msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(1,1,1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = Instance.new("SpecialMesh") 
    msh1.Scale = Vector3.new(x1,y1,z1) 
    msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(1,1,1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function BlastEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = Instance.new("SpecialMesh") 
    msh1.Scale = Vector3.new(x1,y1,z1) 
    msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(1,1,1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
 
function DifferentEffect() 
    p=Instance.new("Part")
    p.Name="FlameEm"
    p.Shape=0
    p.TopSurface=0
    p.BottomSurface=0
    derp = math.random(1,2) 
    if derp == 1 then 
    p.BrickColor=BrickColor.new("White") 
    else 
    p.BrickColor=BrickColor.new("Black") 
    end 
    p.Anchored=true
    p.CanCollide=false
    p.Size=Vector3.new(1,1,1)
    p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-10,10)/3,0,math.random(-10,10)/3)
    p.Parent=workspace
    m=Instance.new("SpecialMesh")
    m.MeshType="Sphere"
    m.Parent=p
    m.Scale=Vector3.new(1,1,1)
    coroutine.resume(coroutine.create(function(p) for i=1, 9 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0,1.5,0) p.Transparency=p.Transparency+1/9  wait(0)  end p.Parent=nil end),p)
end 
 
function ss(pitch) 
 
local SlashSound = Instance.new("Sound") 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function equipsound(pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function magicsound(pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function spikesound(pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
 
Damagefunc1=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
        if mana < 400 then 
        mana = mana + math.random(10,20)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*1.5
--[[            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            critsound(2) 
    
        end
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=Instance.new("BodyAngularVelocity")
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
 
FireDamage=function(hit,Damage,Knockback)
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
    if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if mana < 400 then 
        mana = mana + math.random(10,20)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if 1==1 then 
            coroutine.resume(coroutine.create(function() 
            if dur == nil then 
            temp = 20 
            else 
            temp = dur*2 
            end 
            for i = 0,temp do 
            wait(0.1) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(2,2,2)
    if math.random(1,2)==1 then 
    S.BrickColor=BrickColor.new("Bright red") 
    else 
    S.BrickColor=BrickColor.new("Bright yellow") 
    end 
    S.Reflectance=0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
            hit.Parent.Humanoid:TakeDamage(0.5) 
            end 
            end)) 
        end 
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*1.5
--[[            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            critsound(2) 
    
        end
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=Instance.new("BodyAngularVelocity")
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
BurningDamage=function(hit,Damage,Knockback)
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
    if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if mana < 400 then 
        mana = mana + math.random(10,20)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if 1==1 then 
            coroutine.resume(coroutine.create(function() 
            for i = 0,10 do 
            wait(0.1) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(2,2,2)
    if math.random(1,2)==1 then 
    S.BrickColor=BrickColor.new("Bright red") 
    else 
    S.BrickColor=BrickColor.new("Bright yellow") 
    end 
    S.Reflectance=0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
            hit.Parent.Humanoid:TakeDamage(0.5) 
            end 
            end)) 
        end 
        Damage=Damage
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=Instance.new("BodyAngularVelocity")
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
 
DBHit=function(hit,Damage) --credits to turdulator for making this function :D
    if hit.Parent==nil then
        return
    end
    h=hit.Parent:FindFirstChild("Humanoid")
    t=hit.Parent:FindFirstChild("Torso")
    if h~=nil and t~=nil then
        if h.Parent==Character then
            return
        end
        if mana < 400 then 
        mana = mana + math.random(5,15)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if 1==1 then 
            coroutine.resume(coroutine.create(function() 
            if dur == nil then 
            temp = 20 
            else 
            temp = dur*2 
            end 
            for i = 0,40 do 
            wait(0.1) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(2,2,2)
    if math.random(1,2)==1 then 
    S.BrickColor=BrickColor.new("Black") 
    else 
    S.BrickColor=BrickColor.new("Really black") 
    end 
    S.Reflectance=0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
            hit.Parent.Humanoid:TakeDamage(0.5) 
            end 
            end)) 
        end 
        if math.random(0,99)+math.random()<=7.8 then
            CRIT=true
            Damage=Damage*1
--[[            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            s=Instance.new("Sound")
            s.SoundId="http://www.roblox.com/asset/?id=2801263"
            s.Volume=1
            s.Pitch=2
            s.Parent=hit
            s.PlayOnRemove=true
            s.Parent=nil
    
        end
        h:TakeDamage(Damage) 
        showDamage(hit.Parent,Damage,.5) 
        vl=Instance.new("BodyVelocity")
        vl.P=4500
        vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--        vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
        vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
        vl.Parent=t
        game:GetService("Debris"):AddItem(vl,.2)
        rl=Instance.new("BodyAngularVelocity")
        rl.P=3000
        rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--        rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
        local tes = math.random(1,2) 
        if tes == 1 then 
        rl.angularvelocity=Vector3.new(0,0,math.random(-40,40)) 
        elseif tes == 2 then 
        rl.angularvelocity=Vector3.new(math.random(-40,40),0,0) 
        end 
        rl.Parent=t
        game:GetService("Debris"):AddItem(rl,.2)
    else
        if hit.CanCollide==false then
            return
        end
        MagicCom:disconnect()
--        DBExplode(DB)
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
    c.Transparency=0
    c.BrickColor=BrickColor:Red()
    if CRIT==true then
        c.BrickColor=BrickColor.new("Really red")
    end
    c.Name="Head"
    c.TopSurface=0
    c.BottomSurface=0
    c.formFactor="Plate"
    c.Size=Vector3.new(1,.4,1)
    ms=Instance.new("CylinderMesh")
    ms.Bevel=.1
    ms.Scale=Vector3.new(.8,.8,.8)
    if CRIT==true then
        ms.Scale=Vector3.new(1.25,1.5,1.25)
        ms.Bevel=.2
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
 
hold = false 
 
function ob1d(mouse) 
if attack == true then return end 
onehit() 
twohit() 
threehit()
fourhit()
fivehit()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if attack == true then return end
if key == "z" then 
FlyWave()
end
if key == "x" then
DecisiveBlow()
end
if key == "c" then 
CloneSlash()
end
if key == "g" then
charging=true
Charge()
end
if key == "f" then
Flamera()
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
end 
 
function key2(key) 
if key == "g" then 
charging=false
end
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
if attack == true then return end 
    if speed>0 then 
walking = true 
for i = 0,1,0.1 do 
wait() 
if attack == false and sheathed==true then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5*i,0.3-0.3*i,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5*i,-0.3+0.3*i,0.3-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
    else 
walking = false 
for i = 0,1,0.1 do 
wait() 
if attack == false and sheathed==true then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5+0.5*i,0.3-0.3+0.3*i,-0.3+0.3-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5+0.5*i,-0.3+0.3-0.3*i,0.3-0.3+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
    end 
end 
Character.Humanoid.Running:connect(onRunning) 
 
while true do 
wait(0)  
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Flama("..mana..")" 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
end
