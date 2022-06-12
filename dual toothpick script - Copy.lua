if script:FindFirstChild("DSource") then
    script.DSource:Destroy()
end

 --71339704

Player = game:GetService("Players").LocalPlayer
_G.Mouse = Player:GetMouse() 
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
restoring = false 
combo = 0 
MP = 600 
sitting=false
attack = false 
attackdebounce = false 
combo = 0 
regening = false 
Modes = {"Normal", "Unarmed"} 
Number = 1
mode = Modes[Number]
element = "Water" 
Style = "Standard" 
Guard = false
Bashing = false
holddash = false 
barragehold = false
idleanimdelay = false
willidleanim = true
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RWL, LWL = Instance.new("Weld"), Instance.new("Weld")
--what anim 
anim = "none" 
bov=Instance.new("BodyPosition")
bov.P=2000
bov.D=100
bov.maxForce=Vector3.new(math.huge,math.huge,math.huge)

if Character:findFirstChild("Tusgari-Gama",true) ~= nil then 
        Character:findFirstChild("Tusgari-Gama",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("MPGUI",true) ~= nil then 
        Player.PlayerGui:findFirstChild("MPGUI",true).Parent = nil 
end 

 
Character.Humanoid.MaxHealth = 27*37+37^27 

function part(formfactor,parent,reflectance,transparency,Color,name,size)
        local fp = Instance.new("Part")
        fp.formFactor = formfactor 
        fp.Parent = parent
        fp.Reflectance = reflectance
        fp.Transparency = transparency
        fp.CanCollide = false 
        fp.BrickColor = BrickColor.new(Color)
        fp.Name = name
        fp.Size = size
        fp.Position = Torso.Position 
        fp.BottomSurface="Smooth"
        fp.TopSurface="Smooth"
        fp:BreakJoints()
return fp 
end 

function wedgepart(formfactor,parent,reflectance,transparency,Color,name,size)
        local fp = Instance.new("WedgePart")
        fp.formFactor = formfactor 
        fp.Parent = parent
        fp.Reflectance = reflectance
        fp.Transparency = transparency
        fp.CanCollide = false 
        fp.BrickColor = BrickColor.new(Color)
        fp.Name = name
        fp.Size = size
        fp.Position = Torso.Position 
        fp.BottomSurface="Smooth"
        fp.TopSurface="Smooth"
        fp:BreakJoints()
return fp 
end 

local Tsu = Instance.new("Model") 
Tsu.Parent = Character 
Tsu.Name = "Tsusgari-Gama" 
 
function Weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

prt0 =  part("Custom",Tsu,0,0,"Earth orange","Handle",Vector3.new(0.2, 1.2, 0.4))
weld0 = Instance.new("Weld")
weld0.Parent = prt0 
weld0.Part0 = prt0 
weld0.Part1 = LeftArm 
weld0.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,-math.pi,0) * CFrame.new(0,0+1,0)
Instance.new("CylinderMesh",prt0)
prt1 = part("Custom",Tsu,0,0,"Earth orange","Handle",Vector3.new(0.2, 1.2, 0.4))
weld1 = Instance.new("Weld")
weld1.Parent = prt1 
weld1.Part0 = prt1 
weld1.Part1 = RightArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,-math.pi,0) * CFrame.new(0,0+1,0)
Instance.new("CylinderMesh",prt1)
prt2 =  part("Custom",Tsu,0,0,"Bright blue","No",Vector3.new(0.2, 0.2, 0.4))
weld2 = Instance.new("Weld")
weld2.Parent = prt2 
weld2.Part0 = prt2 
weld2.Part1 = prt0 
weld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.7,0)
mesh2 = Instance.new("CylinderMesh",prt2)
prt3 = part("Custom",Tsu,0,0,"Bright blue","No",Vector3.new(0.2, 0.2, 0.4))
weld3 = Instance.new("Weld")
weld3.Parent = prt3 
weld3.Part0 = prt3 
weld3.Part1 = prt1 
weld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.7,0)
Instance.new("CylinderMesh",prt3)
prt4 =  wedgepart("Custom",Tsu,0.5,0,"Cyan","No",Vector3.new(0.25, 0.45, 1))
weld4 = Instance.new("Weld")
weld4.Parent = prt4 
weld4.Part0 = prt4 
weld4.Part1 = prt0 
weld4.C0 = CFrame.fromEulerAnglesXYZ(-math.pi/6,0,0) * CFrame.new(0,0.7,0.2)
prt5 =  wedgepart("Custom",Tsu,0.5,0,"Cyan","No",Vector3.new(0.25, 0.45, 1))
weld5 = Instance.new("Weld")
weld5.Parent = prt5 
weld5.Part0 = prt5 
weld5.Part1 = prt1 
weld5.C0 = CFrame.fromEulerAnglesXYZ(-math.pi/6,0,0) * CFrame.new(0,0.7,0.2)
prt6 =  part("Custom",Tsu,0,0,"Bright blue","No",Vector3.new(0.2, 0.2, 0.4))
weld6 = Instance.new("Weld")
weld6.Parent = prt6 
weld6.Part0 = prt6 
weld6.Part1 = prt0 
weld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0,0) * CFrame.new(0,-.7,0)
Instance.new("CylinderMesh",prt6)
prt7 = part("Custom",Tsu,0,0,"Bright blue","No",Vector3.new(0.2, 0.2, 0.4))
weld7 = Instance.new("Weld")
weld7.Parent = prt7 
weld7.Part0 = prt7 
weld7.Part1 = prt1 
weld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-.7,0)
Instance.new("CylinderMesh",prt7)
--105 angle, shoulder weld; arm pivot drop-up

local mpGUI = Instance.new("GuiMain") 
mpGUI.Parent = Player.PlayerGui 
mpGUI.Name = "MPGUI" 
local magicframe = Instance.new("Frame") 
magicframe.Parent = mpGUI 
if prt5.BrickColor == "Cyan" then
        magicframe.BackgroundColor3 = Color3.new(0,0,1013)
else
        magicframe.BackgroundColor3 = Color3.new(199,199,199) 
end
magicframe.BackgroundTransparency = 1 
magicframe.BorderColor3 = Color3.new(149,149,149) 
magicframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local magictext = Instance.new("TextLabel") 
magictext.Parent = magicframe 
magictext.Text = "MP("..MP..")" 
magictext.BackgroundTransparency = 1 
magictext.SizeConstraint = "RelativeXY" 
magictext.TextXAlignment = "Center" 
magictext.TextYAlignment = "Center" 
magictext.Position = UDim2.new(0,80,1,200) 
local magictext2 = Instance.new("TextLabel") 
magictext2.Parent = magicframe 
magictext2.Text = " " 
magictext2.BackgroundTransparency = 0 
magictext2.BackgroundColor3 = Color3.new(0,0,0) 
magictext2.SizeConstraint = "RelativeXY" 
magictext2.TextXAlignment = "Center" 
magictext2.TextYAlignment = "Center" 
magictext2.Position = UDim2.new(0,10,1,170)
magictext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local magictext3 = Instance.new("TextLabel") 
magictext3.Parent = magicframe 
magictext3.Text = " " 
magictext3.BackgroundTransparency = 0 
if prt5.BrickColor == "Cyan" then
        magictext3.BackgroundColor3 = Color3.new(0,0,1013)
else
        magictext3.BackgroundColor3 = Color3.new(199,199,199) 
end
magictext3.SizeConstraint = "RelativeXY" 
magictext3.TextXAlignment = "Center" 
magictext3.TextYAlignment = "Center" 
magictext3.Position = UDim2.new(0,10,1,170)
magictext3.Size = UDim2.new(MP*0.007,0,0.400000006,0)
--{2.9000001, 0}, {0.450000018, 0}

local mpStandard = Instance.new("BillboardGui") 
mpStandard.Parent = Player.PlayerGui 
mpStandard.Name = "MPGUI" 
mpStandard.Adornee = Head
mpStandard.Size = UDim2.new(1, 0, 1, 0)
mpStandard.StudsOffset = Vector3.new(0, 2, 0) 
local Frame = Instance.new("Frame")
Frame.Parent = mpStandard
Frame.Size = magictext3.Size 
Frame.BackgroundTransparency = 0.35
Frame.BackgroundColor3 = magictext3.BackgroundColor3 
local text = Instance.new("TextLabel")
text.Parent = Frame
text.Position = UDim2.new{0,0}, {0,0}
text.Size = UDim2.new(2.5, 0, 2.5, 0)
text.Text = magictext.Text

local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 

local Gyro2 = Instance.new("BodyGyro") 
Gyro2.Parent = nil 
Gyro2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Gyro2.P = 20e+003 

function ss(pitch) --linerider64 was here :D 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch --linerider64 was also here XD
SlashSound.PlayOnRemove = true 
--SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function ss1(pitch) 

local Slash = Instance.new("Sound") 
Slash.SoundId = "http://roblox.com/asset/?id=10209645" 
Slash.Parent = workspace 
Slash.Volume = 1 
Slash.Pitch = pitch --0.65
Slash.PlayOnRemove = true 
--Slash:play() 
coroutine.resume(coroutine.create(function() 
wait(0) 
Slash.Parent = nil 
end)) 
end 
function SEE(pitch) 

local SEE = Instance.new("Sound") 
SEE.SoundId = "http://www.roblox.com/asset/?id=2101148" 
SEE.Parent = workspace 
SEE.Volume = 1 
SEE.Pitch = pitch --1
SEE.PlayOnRemove = true 
--See:play() 
coroutine.resume(coroutine.create(function() 
wait(0) 
SEE.Parent = nil 
end)) 
end 
function ss3(pitch) 

local SEE = Instance.new("Sound") 
SEE.SoundId = "http://www.roblox.com/asset/?id=48618802 " 
SEE.Parent = workspace 
SEE.Volume = 1 
SEE.Pitch = pitch --1.5
SEE.PlayOnRemove = true 
--See:play() 
coroutine.resume(coroutine.create(function() 
wait(0) 
SEE.Parent = nil 
end)) 
end 
function glassbreak(pitch)  

local SEE = Instance.new("Sound") 
SEE.SoundId = "rbxasset://Sounds/glassbreak.wav" 
SEE.Parent = parent 
SEE.Volume = 1 
SEE.Pitch = pitch --1.5
SEE.PlayOnRemove = true 
--See:play() 
coroutine.resume(coroutine.create(function() 
wait(0) 
SEE.Parent = nil 
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
function sheath(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209850" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function shieldbash(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209583" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
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
function abscond(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function Charge(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function MagicMayhemUltimaSounds() 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=13775494" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.2 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.7 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.5 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.3 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

if (script.Parent.className ~= "HopperBin") then 
local Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Tsugari-Gama" 
script.Parent = Tool 
end 
Bin = script.Parent 

local SpikeMesh = Instance.new("SpecialMesh")
SpikeMesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
SpikeMesh.MeshType = "FileMesh"
SpikeMesh.Parent = Tsu
SpikeMesh.Scale = Vector3.new(1, 1, 1)

function unequipweld() 
weld0.Part1 = Torso 
weld0.C0 = CFrame.fromEulerAnglesXYZ(0,math.pi,0) * CFrame.new(-1.5,1,0) 
weld1.Part1 = Torso 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,math.pi,0) * CFrame.new(1.5,1,0)
--[[C1=CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
]]--
end 
 
function equipweld() 
weld0.Part1 = LeftArm 
weld0.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,-math.pi,0) * CFrame.new(0,0+1,0) 
weld1.Part1 = RightArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,-math.pi,0) * CFrame.new(0,0+1,0) 
end 
 
function hideanim() 
for i = 0, 1, 0.1 do
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5*i-0.5,-math.pi/6*i+math.pi/6) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,-0.5*i+0.5,math.pi/6*i-math.pi/6) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wait(0.1) 
unequipweld() 
end 

function equipanim()
equipweld()
for i = 0, 1, 0.2 do
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.pi/6*i,0.5*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.pi/6*i,-0.5*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end

function maim() 
equipweld() 
for i = 0, 1, 0.2 do
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,-math.rad(85)*i,-math.pi/4+math.rad(5)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(85)*i,math.pi/4-math.rad(5)*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 

function changeequipleft() 
        if Number > 1 then 
                Number = Number - 1 
                mode = Modes[Number] 
                print(mode) 
                if Number == 1 then 
                        AttackMode() 
                end 
                while mode == Normal do
                        if mode == Normal then
                                DifferentEffect(Torso)
                                DifferentEffect(Torso)
                        end
                end 
        end
end 

function changeequipright() 
        if Number < #Modes then 
                Number = Number + 1 
                mode = Modes[Number] 
                print(mode) 
                if Number == 2 then 
                        ArmedCom() 
                end 
        end 
end 

function ChangeElement() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
magicsound(1) 
if element == "Water" then 
element = "None" 
WaveEffect(Torso,3,3,3,0,-2,0,0,0,0,BrickColor.new("Grime")) 
elseif element == "None" then 
element = "Water" 
WaveEffect(Torso,3,3,3,0,-2,0,0,0,0,BrickColor.new("Cyan")) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.6*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function ArmedCom() 
attack = true
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.5*i+1.57,3.14,0) * CFrame.new(0,0,-0.5)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5*i,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5*i,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld0.C0 = CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0, 1, 0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0, 1, 0) 
end
wait(0)
for i = 0, 1 , 0.1 do
wait(0) 
MMMAGIC(prt0,0.8,0.8,0.8,0,0,0,BrickColor.new("Navy blue")) 
MMMAGIC(prt1,0.8,0.8,0.8,0,0,0,BrickColor.new("Navy blue")) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.62-0.5*i,3.14,0) * CFrame.new(0,0,-0.5)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-2.5*i,0,0.5*i-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-2.5*i,0,-0.5*i+0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
equipweld()
end
--Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5)
attack = false 
end

function AttackMode() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3+0.3*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function oneslash() 
attack = true 
combo = 1 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,-0.5*i+0.5,0.5*i-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
ss(0.8) 
con1=prt0.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
con2=prt1.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i+2,1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,-math.pi-math.pi/3*i,0) * CFrame.new(0, 1, 0) 
end 
wait(0.3) 
con1:disconnect() 
con2:disconnect() 
--Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
attack = false 
end 

function twoslash() 
attack = true 
combo = 2 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0 , 1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5*i+4.07,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0, 1, -1) 
end 
magicsound(3) 
con1=prt0.Touched:connect(function(hit) abscondDamagefunc2(hit,20,30) end)
con2=prt1.Touched:connect(function(hit) critsound(1) Damagefunc2(hit,20,30) end)
wait(0.2)
for i = 0, 1 , 0.1 do
wait(0)  
MMMAGIC(prt1,2,2,2,0,0,0,BrickColor.new("Navy blue")) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.5*i) * CFrame.new(0,0,-0.5) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4*i+2.5+4.07,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,-1.2*i,0) 
equipweld()
end 
wait(0.5)
con1:disconnect() 
con2:disconnect() 
--Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
gairo.Parent = nil
attack = false 
end 

function threeslash() 
attack = true 
combo = 3 
for i = 0 , 1 , 0.1 do 
wait(0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ((-2*i+2),0,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
wait(0.3) 
if MP >= 100 then
MMMAGIC(prt1,.8,.8,.8,0,0,0,BrickColor.new("Neon orange")) 
MMMAGIC(prt1,1,1,1,0,0,0,BrickColor.new("New Yeller")) 
MMMAGIC(prt1,2,2,2,0,0,0,BrickColor.new("Cool yellow")) 
MMMAGIC(prt1,3,3,3,0,0,0,BrickColor.new("Bright yellow")) 
wait()
MP = MP - math.random(3,57)
end
wait() 
SEE(7) 
con1=prt0.Touched:connect(function(hit) Damagefunc1(hit,0,1) Damagefunc2(hit,0.5,3.1) end)
con2=prt1.Touched:connect(function(hit) Damagefunc1(hit,0,2.3) Damagefunc2(hit,-0.78,5) end)
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
wait(0.3) 
--Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
attack = false 
end 

function Epic()
        attack = true
        r = 20
        h = 30
        if MP >= 450 then
                MP = MP - 150
                print(MP)
                if MP >= 600 then
                        script:Destroy()
                end
        end
        for i = 0 , 1 , 0.1 do 
                wait(0) 
                Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-1*i,3.14,0) * CFrame.new(0,0,-0.5) 
                LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.14*i,0.2*i,0) 
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.14*i,-0.2*i,0) 
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
        end 
        for i = 0, 1 , 0.1 do
                wait(0) 
                MMMAGIC(prt0,1,1,1,0,0,0,BrickColor.new("Bright yellow")) 
                MMMAGIC(prt1,1,1,1,0,0,0,BrickColor.new("Bright yellow")) 
        end 
        for o = h,75,7 do
                for i = 0,360,30 do
                        local c = Instance.new("Part")        
                        c.Parent = Workspace
                        c.Size = Vector3.new(4,o,4)
                        c.Anchored = true
                        c.Material = "Slate"
                        c.CanCollide = true
                        c.BrickColor = BrickColor.new("Brown")
                        Spike=SpikeMesh:clone()
                        Spike.Parent=c
                        Spike.Scale = c.Size
                        c.CFrame = Torso.CFrame + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r) - Vector3.new(0,c.Size.y,0) 
                        coroutine.resume(coroutine.create(function()
                                for i = 1,c.Size.y,2 do
                                        wait()
                                        c.CFrame = c.CFrame + Vector3.new(0,2,0)
                                end 
                                delay(3,function()
                                        for i = 1,c.Size.y do
                                                wait()
                                                c.CFrame = c.CFrame - Vector3.new(0,1,0)
                                        end
                                        c:Remove()
                                end)
                        end))
                end
                r = r+10
        end
        for i = 0 , 1 , 0.1 do 
                wait(0) 
                Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-1*i+1,3.14,0) * CFrame.new(0,0,-0.5) 
                LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.14*i-3.14,0.2*i-0.2,0) 
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
                RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.14*i-3.14,-0.2*i+0.2,0) 
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
        end 
        attack = false
end

function Block() 
attack = true 
Guard = true 
Character.Humanoid.WalkSpeed = 20 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8*i,0.5+0.2*i,-0.8*i) * CFrame.fromEulerAnglesXYZ(2.07*i,0,1.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8*i,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87*i,0,-1.4*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
humanoid = Character.Humanoid 
lhh = humanoid.Health

while Guard == true do 
wait() 

if humanoid.Health < lhh then

print(lhh - humanoid.Health) 
test = lhh - humanoid.Health 
if MP < 600 then 
MP = MP - math.random(test, test*50)  
end 
if MP > 600 then 
MP = 600 
end 
if mode == "Normal" then 
humanoid.Health = lhh - (test * 50) 
elseif mode == "Unarmed" then 
humanoid.Health = lhh - (test * 50) 
end 
lhh = humanoid.Health
shieldbash(1) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1000
vel.velocity = Torso.CFrame.lookVector * -20 
velo = -20 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.8,0.5+0.2,-0.8) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
end 
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.8,0.5+0.2,-0.8) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4+0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
velo = velo + 0.5 
vel.velocity = Torso.CFrame.lookVector * velo 
end 
vel.Parent = nil 

end

wait(0.1)
end 
Character.Humanoid.WalkSpeed = 16 
if Guard == false then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8-0.8*i,0.5+0.2-0.2*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(2.07-2.07*i,0,1.4-1.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8+0.8*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87-0.87*i,0,-1.4+1.4*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.7,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
end 
end 

function Dash() 
if MP >= 20 then 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.9*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
MP = MP - 20 
MagicMayhemUltimaSounds(5) 
con1=prt0.Touched:connect(function(hit) Bash(hit,40) end) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Head.CFrame.lookVector * 100 
for i = 0,1,0.2 do 
wait() 
if element == "Water" then 
MMMAGIC(prt0,3,3,3,0,0,0,BrickColor.new("Cyan")) 
MOREMAGIX(prt0,0,2,2,2,BrickColor.new("Cyan")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Cyan")) 
else 
MMMAGIC(prt0,3,3,3,0,0,0,BrickColor.new("Grime")) 
MOREMAGIX(prt0,0,2,2,2,BrickColor.new("Grime")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Grime")) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7,0.5,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1.9,0,1-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1+0.57,0,-1.2+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Water" then 
MMMAGIC(prt0,3,3,3,0,0,0,BrickColor.new("Cyan")) 
MOREMAGIX(prt0,0,2,2,2,BrickColor.new("Cyan")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Cyan")) 
else 
MMMAGIC(prt0,3,3,3,0,0,0,BrickColor.new("Grime")) 
MOREMAGIX(prt0,0,2,2,2,BrickColor.new("Grime")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Grime")) 
end 
end 
vel.Parent = nil 
for i = 0,1,0.2 do 
wait() 
if element == "Water" then 
MMMAGIC(prt0,3,3,3,0,0,0,BrickColor.new("Cyan")) 
MOREMAGIX(prt0,0,2,2,2,BrickColor.new("Cyan")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Cyan")) 
else 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Grime")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Grime")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Grime")) 
end 
end 
if mode == "Normal" then 
wait(0.3) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9-1.9*i,0,1-0.3-0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,0,-1.2+0.3+0.9*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
wait(0.2) 
con1:disconnect() 
elseif mode == "Unarmed" then 
if holddash == true and MP >= 20 then 
con1:disconnect() 
gairo.Parent = nil 
wait(0.5) 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9,0,0.7-1.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.9+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
magicsound(8) 
con2=prt1.Touched:connect(function(hit) Damagefunc2(hit,40,25) end) 
MP = MP - 2*10 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Head.CFrame.lookVector * 50 --Applied force 
for i = 0,1,0.2 do 
wait() 
if element == "Water" then 
MMMAGIC(prt1,3,3,3,0,0,0,BrickColor.new("Cyan")) 
MOREMAGIX(prt1,0,2,2,2,BrickColor.new("Cyan")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Cyan")) 
else 
MMMAGIC(prt1,3,3,3,0,0,0,BrickColor.new("Grime")) 
MOREMAGIX(prt1,0,2,2,2,BrickColor.new("Grime")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Grime")) 
end 
--weld1 weld here
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33*i,0,0.7-1.5+0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.9+2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Water" then 
MMMAGIC(prt1,3,3,3,0,0,0,BrickColor.new("Cyan")) 
MOREMAGIX(prt1,0,2,2,2,BrickColor.new("Cyan")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Cyan")) 
else 
MMMAGIC(prt1,3,3,3,0,0,0,BrickColor.new("Grime")) 
MOREMAGIX(prt1,0,2,2,2,BrickColor.new("Grime")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Grime")) 
end 
end 
vel.Parent = nil 
for i = 0,1,0.2 do 
wait() 
if element == "Water" then 
MMMAGIC(prt1,3,3,3,0,0,0,BrickColor.new("Cyan")) 
MOREMAGIX(prt1,0,2,2,2,BrickColor.new("Cyan")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Cyan")) 
else 
MMMAGIC(prt1,3,3,3,0,0,0,BrickColor.new("Grime")) 
MOREMAGIX(prt1,0,2,2,2,BrickColor.new("Grime")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Grime")) 
end 
end 
wait(0.3) 
con2:disconnect() 
for i = 0,1,0.1 do 
wait() 
--weld1 weld here
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5+0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33-1.57*i,0,1.2-1.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,1.1-1.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
else 
wait(0.3) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33-1.57*i,0,1.2-1.2*i) 
--LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9-1.9*i,0,1-0.3-0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,0,-1.2+0.3+0.9*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
wait(0.2) 
con1:disconnect() 
end 
end 
attack = false 
end 
end 

function Restore() 
attack = true 
restoring = true
Taunts={"Curaga.","This'll take a while","Cura","Cure!","Mending.."}
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.2*i+0.3,3.14,0) * CFrame.new(0,0,-0.5)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.pi/4*i+math.pi/18,-0.45*i+0.2,-math.pi/6*i+math.pi/18) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.pi/4*i+math.pi/18,0.45*i-0.2,math.pi/6*i-math.pi/18) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
coroutine.resume(coroutine.create(function() 
while wait() do 
game:GetService("Chat"):Chat(Character,Taunts[math.random(1, #Taunts)],"Blue")
wait(1)
Character.Chat:Remove()
end 
end))
local lol = Instance.new("Part") 
lol.Parent = Tsu 
lol.Shape = "Ball" 
lol.Position = Torso.Position  
lol.Anchored = false 
lol.Name = "lol" 
lol.Transparency = 0.35 
lol.CanCollide = false 
lol.Size = Vector3.new(1,1,1) 
lol.BrickColor = workspace.Base.BrickColor or workspace.BasePart.BrickColor
local lolmesh = Instance.new("SpecialMesh") 
lolmesh.Parent = lol 
lolmesh.Scale = Vector3.new(0.3,0.3,0.3) 
lolmesh.MeshType = "Sphere"
local lolweld = Instance.new("Weld") 
lolweld.Parent = lol 
lolweld.Part0 = lol 
lolweld.Part1 = Torso 
wait(0) 
coroutine.resume(coroutine.create(function()
for i = 0, 1, 0.05 do 
wait(0)  
lolmesh.Scale = lolmesh.Scale + Vector3.new(0.15,0.15,0.15) 
end 
end)) 
while restoring == true do 
wait(0.15) 
lolweld.C0 = CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0, -5, 4.2)
lolweld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
MMMAGIC(lol,.8,.8,.8,0,0,0,BrickColor.new("Sand green")) 
MMMAGIC(lol,1,1,1,0,0,0,BrickColor.new("Eath green")) 
MMMAGIC(lol,2,2,2,0,0,0,BrickColor.new("Camo")) 
MMMAGIC(lol,3,3,3,0,0,0,BrickColor.new("Black")) 
DifferentEffect(workspace.Base)
DifferentEffect(workspace.Base)
DifferentEffect(workspace.Base)
con=lol.Touched:connect(function(hit) Damagefunc1(hit.Torso, 0.5, 0) end)
if MP >= 1000 then 
MP = 1000 
else 
Character.Humanoid.Health = Character.Humanoid.Health + 5.05 
MP = MP + 2*2^4 
end 
end 
wait(.3)
for i = 0, 1, 0.05 do 
wait(0) 
lol.Transparency = lol.Transparency + 0.03 
lolmesh.Scale = lolmesh.Scale + Vector3.new(0.25,0.25,0.25) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.2*i+0.3-0.3+0.2,3.14,0) * CFrame.new(0,0,-0.5)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.rad(55)+math.pi/18*i,-0.25-0.2*i,-math.rad(40)+math.pi/18*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.rad(55)+math.pi/18*i,0.25+0.2*i,math.rad(40)-math.pi/18*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect()
lol:Destroy() 
attack = false 
end 

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.5,0.5,0.5) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=3
        S.Size=Vector3.new(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
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
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
    S.Parent=Character
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
                p2.Parent=workspace
                m=Instance.new("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 

function TsubasaMAGIX(part,cframe,x,y,z,color) 
        p2=Instance.new("Part")
        p2.Name="Wings"
        p2.TopSurface=0
        p2.BottomSurface=0
        p2.CanCollide=false
        p2.Anchored=true
        p2.BrickColor=color
        p2.Size=Vector3.new(x,y,z)
        p2.formFactor="Symmetric"
        p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
        p2.Parent=workspace
        local m = Instance.new("SpecialMesh") 
        m.Scale = Vector3.new(.01,1.5,5) 
        m.MeshId = "http://www.roblox.com/asset/?id=1081197" 
        m.MeshType = "FileMesh" 
        m.Parent=p2
        m.Name="Wing"
        coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end Wings.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
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
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function DifferentEffect(parent) 
        p=Instance.new("Part")
        p.Name="FlameEm"
        p.Shape=0
        p.TopSurface=0
        p.BottomSurface=0
        p.BrickColor = parent.BrickColor 
        p.Anchored=true
        p.CanCollide=false
        p.Size=Vector3.new(1,1,1)
        p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-10,10)/3,0,math.random(-10,10)/3)
        p.Parent=parent
        m=Instance.new("SpecialMesh")
        m.MeshType="Sphere"
        m.Parent=p
        m.Scale=Vector3.new(1,1,1)
        coroutine.resume(coroutine.create(function(p) for i=1, 9 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0,1.5,0) p.Transparency=p.Transparency+1/9  wait(0)  end p.Parent=nil end),p)
end 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

LastPoint = Torso
function effect(Color,Ref,LP,P1,returnn)
        local effectsmsh = Instance.new("CylinderMesh")
        effectsmsh.Scale = Vector3.new(1,1,1)
        effectsmsh.Name = "Mesh"
        local effectsg = Instance.new("Part")
        effectsg.formFactor = 3
        effectsg.CanCollide = false
        effectsg.Name = "Eff"
        effectsg.Locked = true
        effectsg.Anchored = true
        effectsg.Transparency=0.7
        effectsg.Size = Vector3.new(0.5,1,0.5)
        effectsg.Parent = workspace
        effectsmsh.Parent = effectsg
        effectsg.BrickColor = BrickColor.new(Color)
        effectsg.Reflectance = Ref
        local point1 = P1
        local mg = (LP.p - point1.p).magnitude
        effectsg.Size = Vector3.new(0.5,mg,0.5)
        effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
        if returnn then return effectsg end
        coroutine.resume(coroutine.create(function()
                con1=effectsg.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
                local c = game.Workspace:GetChildren();
                    for i = 1, #c do
                        local hum = c[i]:findFirstChild("Humanoid")
                        if hum ~= nil and hum.Health ~= 0 then
                                local head = c[i]:findFirstChild("Head");
                                if head ~= nil then
                                        local targ = head.Position - effectsg.Position;
                                        local mag = targ.magnitude;
                                        if mag <= 6 then 
                                                Damagefunc1(head,5,1) 
                                        end 
                                end 
                        end 
                end 
                if not returnn then
                        for i = 0 , 1 , 0.2 do
                                wait()
                                local dir = effectsg.CFrame.lookVector+Vector3.new(0,0,0)
                                local hit2,pos = rayCast(effectsg.Position,effectsg.CFrame.lookVector,10,Character)
                                if hit2 ~= nil then
                                        if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
                                                hum = hit2.Parent.Humanoid
                                                Damagefunc1(hit2,5,5)
                                        end
                                end
                                effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)
                        end
                        wait()
                        effectsg.Parent = nil
                end
        end))
end
 
function effect2(Color,Ref,LP,P1,returnn)
        local effectsmsh = Instance.new("BlockMesh")
        effectsmsh.Scale = Vector3.new(1,1,1)
        effectsmsh.Name = "Mesh"
        local effectsg = Instance.new("Part")
        effectsg.formFactor = 3
        effectsg.CanCollide = false
        effectsg.Name = "Eff"
        effectsg.Locked = true
        effectsg.Anchored = true
        effectsg.Transparency=0.4
        effectsg.Size = Vector3.new(1,1,1)
        effectsg.Parent = workspace
        effectsmsh.Parent = effectsg
        effectsg.BrickColor = BrickColor.new(Color)
        effectsg.Reflectance = Ref
        local point1 = P1
        local mg = (LP.p - point1.p).magnitude
        effectsg.Size = Vector3.new(5,mg,5)
        effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
        if returnn then return effectsg end
        coroutine.resume(coroutine.create(function()
                con1=effectsg.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
                local c = game.Workspace:GetChildren();
                for i = 1, #c do
                        local hum = c[i]:findFirstChild("Humanoid")
                        if hum ~= nil and hum.Health ~= 0 then
                                local head = c[i]:findFirstChild("Head");
                                if head ~= nil then
                                        local targ = head.Position - effectsg.Position;
                                        local mag = targ.magnitude;
                                        if mag <= 6 then 
                                                Damagefunc1(head,5,1) 
                                        end 
                                end 
                        end 
                end 
                if not returnn then
                        for i = 0 , 1 , 0.2 do
                                wait()
                                effectsg.Transparency=effectsg.Transparency+0.1
                        end
                        wait()
                        effectsg.Parent = nil
                end
        end))
end

function SlashEffect(part,x1,y1,z1,x2,y2,z2,color,size,power,repeats) 
        p2=Instance.new("Part")
        p2.Name="Blast"
        p2.TopSurface=0
        p2.BottomSurface=0
        p2.CanCollide=false
        p2.Anchored=true
        p2.BrickColor=color
        p2.Size=Vector3.new(2,2,2)
        p2.formFactor="Symmetric"
        p2.CFrame=part.CFrame*CFrame.fromEulerAnglesXYZ(x2,y2,z2)*CFrame.new(x1,y1,z1)
        p2.Parent=workspace
        p2.Transparency=1
        m=Instance.new("BlockMesh")
        m.Parent=p2
        m.Name="BlastMesh"
        local LastPoint = p2.CFrame
        coroutine.resume(coroutine.create(function(part,dir) 
                for loll=1, repeats do 
                        part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) 
                        part.CFrame=part.CFrame*CFrame.new(0,2.5*size,0)*CFrame.fromEulerAnglesXYZ(0.6*power,0,0) 
                        local Point = part.CFrame
                        effect("White",0.5,LastPoint,Point)
                        LastPoint = Point
                        wait(0) 
                end 
                part.Parent=nil 
        end),p2,0)
end 
--SlashEffect(workspace.LocalPlayer.Torso,0,-6,-3,-1.57,math.random(-1,1)+math.random(),0,BrickColor.new("Bright yellow"),1.5,1.5)

function DashEf(P,color) 
        local m = Instance.new("Part") 
        m.Parent = workspace 
        m.BrickColor = color 
        m.Transparency = 0 
        m.Anchored = true 
        m.CFrame = P
        m.CanCollide = false 
        local me = Instance.new("SpecialMesh") 
        me.Parent = m 
        me.MeshType = "FileMesh" 
        me.MeshId = "http://www.roblox.com/asset/?id=20329976" 
        me.Scale = Vector3.new(2.5,2.5,2.5) 
        coroutine.resume(coroutine.create(function(part,mesh) 
                for i = 0,5 do 
                        wait(0.1) 
                        part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(0, math.random(0,2), 0) 
                        mesh.Scale = mesh.Scale + Vector3.new(0.5,0.4,0.5) 
                        part.Transparency = part.Transparency + 0.20
                end 
                m:Remove() 
        end),m,me) 
end 

function slasheffect(cframe,waitin,size,efdam) 
        wait(waitin) 
        for l=1, 2 do
                wait() 
                e=Instance.new("Part")
                e.Name="SlashEffect"
                e.TopSurface=0
                e.BottomSurface=0
                e.formFactor="Symmetric"
                e.Size=Vector3.new(2,2,size)
                e.Anchored=true
                e.BrickColor=BrickColor.new("White") 
                e.Reflectance=0

                e.CanCollide=false
                m=Instance.new("SpecialMesh")
                m.MeshType="Sphere"
                m.Scale=Vector3.new(.25,.25,1)
                m.Parent=e
                e.CFrame = cframe
                e.Parent=workspace
                local c = game.Workspace:GetChildren();
                for i = 1, #c do
                        local hum = c[i]:findFirstChild("Humanoid")
                        if hum ~= nil and hum.Health ~= 0 then
                                local head = c[i]:findFirstChild("Head");
                                if head ~= nil then
                                        local targ = head.Position - e.Position;
                                        local mag = targ.magnitude;
                                        if mag <= 5 and c[i].Name ~= Player.Name then 
                                                Damagefunc1(head,5,1) 
                                        end 
                                end 
                        end 
                end 
                coroutine.resume(coroutine.create(function(m) for i=1, 9 do m.Transparency=i*.1 m.Mesh.Scale=m.Mesh.Scale-Vector3.new(.01,.01,.05)*2 wait() end m.Parent=nil coneffect:disconnect() end),e)
        end
end 

DarkRiftF=function(par) --Saz
        while barragehold == true and MP >= 0 do 
                MP = MP - math.random(0,10) 
                PWN={}
                for _,v in pairs(workspace:children()) do
                        if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
                                if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
                                        if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
                                                table.insert(PWN,v.Torso)
                                        end
                                end
                        end
                end
                for _,t in pairs(PWN) do
                        Mag=(par.Position-t.Position).magnitude/2
                        t.Parent.Humanoid:TakeDamage(.6)
                        rl=Instance.new("BodyAngularVelocity")
                        rl.P=3000
                        rl.maxTorque=Vector3.new(500000,500000,500000)*5000
                        rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
                        rl.Parent=t
                        game:GetService("Debris"):AddItem(rl,.1)
                        if Mag<=2 then
                                if mana <= 600 then 
                                        MP = MP + math.random(0,10) 
                                else 
                                        MP = 600 
                                end 
                                t.Parent.Humanoid:TakeDamage(.3)
                        else
                                if mana <= 600 then 
                                        MP = MP + 5
                                else 
                                        MP = 600 
                                end 
                                vl=Instance.new("BodyVelocity")
                                vl.P=3000
                                vl.maxForce=Vector3.new(50000000000,50000000000,50000000000)
                                vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
                                vl.Parent=t
                                game:GetService("Debris"):AddItem(vl,.1)
                        end
                end
                wait(.08)
        end
end

function effect() 
local clone = prt1:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.35 
clone.Reflectance = 0 
clone.Mesh.MeshType = "Brick"
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0,0,2) 
clone.BrickColor = BrickColor.new("Black") 
coroutine.resume(coroutine.create(function()
wait(0.25) 
clone:Destroy() 
end))
local clone2 = part1:clone() 
clone2.Parent = workspace 
clone2.Anchored = true 
clone2.Transparency = 0.35 
clone2.Reflectance = 0 
clone2.Mesh.MeshType = "Brick"
clone2.Mesh.Scale = clone2.Mesh.Scale + Vector3.new(0,0,2) 
clone2.BrickColor = BrickColor.new("White") 
coroutine.resume(coroutine.create(function()
wait(0.25) 
wait(0) 
clone2:Destroy() 
end))
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
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                if MP < 1000 then 
                mana = mana + math.random(5,15)  
                end 
                if MP > 1000 then 
                MP = 1000 
                end 
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2) 
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
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
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                if MP < 1000 then 
                MP = MP + math.random(5,15)  
                end 
                if MP > 1000 then 
                MP = 1000 
                end 
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2) 
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
                vl.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
                if Knockback>0 then
                        vl.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                if Knockback>0 then
                        rl.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(rl,.2)
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

BALLFUNC=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=".." and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(1,1)==1 then
                        CRIT=true
                        Damage=Damage*2
                        coroutine.resume(coroutine.create(function()
                        for i = 0,5 do 
                        wait() 
                        MOREMAGIX(hit.Parent.Torso,3,3,3,0,0,0,BrickColor.new("Mid grey")) 
                        end 
                        wait(1) 
                        for i = 0,8 do 
                        wait(0.1) 
                        MOREMAGIX(hit.Parent.Torso,0,2,2,2,BrickColor.new("White")) 
                        end 
                        end)) 
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
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
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
 
Bash=function(hit,Damage) --credits to turdulator for making this function :D
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                if MP < 600 then 
                MP = MP + math.random(5,15)  
                end 
                if MP > 600 then 
                MP = 600 
                end 
                shieldbash(1) 
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2) 
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
                vl.velocity=Head.CFrame.lookVector*35+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end 
end

UpBlast=function(hit,Damage) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                if MP < 600 then 
                MP = MP + math.random(10,20)  
                end 
                if MP > 600 then 
                MP = 600 
                end 
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2) 
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--                rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
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
--                DBExplode(DB)
        end
end

UltimaMagicMayhemDamage=function(hit,Damage) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*10
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2) 
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,600,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--                rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
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
--                DBExplode(DB)
        end
end

DBHit=function(hit,DB) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                h:TakeDamage(5) 
                showDamage(hit.Parent,5,.5) 
                coroutine.resume(coroutine.create(function()
                MMMAGIC(hit.Parent.Torso,3,3,3,0,0,0,part1.BrickColor) 
                wait(1) 
                wait(0.1) 
                MOREMAGIX(hit.Parent.Torso,0,2,2,2,prt1.BrickColor) 
                end)) 
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
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
        c.BrickColor=BrickColor.new("Grime")
        if CRIT==true then
                c.BrickColor=BrickColor.new("Grime")
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
 
function ob1d(mouse) 
if attack == true then return end 
hold = true 
if combo == 0 then 
oneslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1*i-1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2+2,-0.5*i+1,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i-1,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,-1*i+1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,-math.pi-math.pi/6+math.pi/6,0) * CFrame.new(0, 1, 0) 
end 
wait(0.1) 
gairo.Parent = nil 
end 
end)) 
elseif combo == 1 then 
twoslash() 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
equipanim()
wait(0.1) 
gairo.Parent = nil 
end
end)) 
elseif combo == 2 then 
threeslash() 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
for i = 0 , 1 , 0.1 do 
wait(0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i+2,0,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i-1,0,-1*i+1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
gairo.Parent = nil 
end 
end)) 
end 
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 

function key(key) 
if attack == true then return end 
if key == "q" then 
changeequipleft() 
end 
if key == "e" then 
changeequipright() 
end 
if key == "h" then 
if MP >= 10 then
ChangeElement() 
end 
end
if key == "f" then 
Gaurd = true
Block() 
end 
if key == "g" then 
restoring = true 
Restore() 
end 
if key == "z" then
holddash = true
Dash()
end
if element == "None" then
if key =="x" then
Epic()
end
end
end

function key2(key) 
if key == "g"then 
restoring = false 
end 
if key == "f" then 
Guard = false 
end 
if key == "z" then 
holddash = false 
barragehold = false 
end 
end

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
MMouse=mouse
unsheathed = true 
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
unsheathed = false 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

function idleanim() 
if attack == false then 
--print("MOARDERP") 
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6+math.pi/36*i,-math.pi/2,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6+math.pi/36*i,math.pi/2,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5)
for i = 0,1,0.05 do 
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6+math.pi/36+1.2*i,-math.pi/2+math.pi/18*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6+math.pi/36+1.2*i,math.pi/2-math.pi/18*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1)
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6+math.pi/36+1.2-2*i,-math.pi/2-math.pi/18+math.rad/6,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6-math.pi/36-0.8*i,math.pi/2+math.pi/18+math.rad/6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3)
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6+math.pi/36+1.2-2*i,-math.pi/2-math.pi/4.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(mat.pi/6-math.pi/36-0.8*i,math.pi/2+math.pi/4.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end
end

function onRunning(speed)
if attack == true then return end
        if speed>0 then 
walking = true 
if attack == false then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.2*i,3.14,0) * CFrame.new(0,0,-0.5)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.pi/4*i,-0.45*i,-math.pi/6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.pi/4*i,0.45*i,math.pi/6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1)
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.3,3.14,0) * CFrame.new(0,0,-0.5)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.pi/4*i+math.pi/18,-0.45*i+0.15,-math.pi/6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.pi/4*i+math.pi/18,0.45*i-0.15,math.pi/6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end

end 
        else 
walking = false 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
        end 
end 
Character.Humanoid.Running:connect(onRunning) 

while true do 
        wait(0) 
        magictext3.Size = UDim2.new(MP*0.007,0,0.200000006,0)
        Frame.Size = magictext3.Size 
        magictext.Text = "MP("..MP..")" 
        text.Text = magictext.Text
        if mode == "Normal" then 
                prt4.BrickColor = BrickColor.new("Dark stone grey")
                prt5.BrickColor = BrickColor.new("Dark stone grey")
        elseif mode == "Unarmed" then
                prt4.BrickColor = BrickColor.new("Cyan")
                prt5.BrickColor = BrickColor.new("Cyan")
        end
end
