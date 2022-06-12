--[[Baby Nefl created by Brannon1964802]]--
--[[Based off Nefl from Strife, sorta.]]--

Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
sphere=true
aura=false
blinking=true
rest=false

game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function(jump)
        if jump == "Jump" then
                Humanoid.Jump = false
        end
end)

Humanoid.MaxHealth = 50000
wait(0.1)
Humanoid.Health = 50000

print("Giant Snowman loaded.")
print("This script was made by Brannon1964802")

RootPart.Transparency = 1

Humanoid.CameraOffset = Vector3.new(0, 12.5, 0)

Humanoid:findFirstChild("Animator"):Destroy()

Torso.Transparency = 1
Head.Transparency = 1
LeftLeg.Transparency = 1
RightLeg.Transparency = 1
LeftArm.Transparency = 1
RightArm.Transparency = 1

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)

music = Instance.new("Sound", Character)
music.SoundId = "http://www.roblox.com/asset/?id=340106355"
music.Volume = 0
music.Looped = true
wait(0.1)
music:Play()

music2 = Instance.new("Sound", Character)
music2.SoundId = "http://www.roblox.com/asset/?id=340106807"
music2.Volume = 0.5
music2.Looped = true

rawr = Instance.new("Sound", Character)
rawr.SoundId = "http://www.roblox.com/asset/?id=297472596"
rawr.Volume = 0.5
rawr.Looped = false

Beast = Instance.new("Model",Character)
Beast.Name = "The Beast from The Depths"

torsop=Instance.new("Part",Character)
torsop.FormFactor="Custom"
torsop.Size=Vector3.new(.2,.2,.2)
torsop.Transparency=0
torsop.CanCollide=false
torsop.BrickColor = BrickColor.new("Pastel light blue")
torsop.Material="Sand"
torsop.TopSurface="Smooth"
torsop.BottomSurface="Smooth"
torsop.RightSurface="Smooth"
torsop.LeftSurface="Smooth"
torsopw=Instance.new("Weld",Character)
torsopw.Part0=Character.Torso
torsopw.Part1=torsop
torsopw.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-90),math.rad(0))

torso = Instance.new("SpecialMesh",torsop)
torso.MeshType = "Sphere"
torso.Scale = Vector3.new(45,45,45)

ghostp=Instance.new("Part",Character)
ghostp.FormFactor="Custom"
ghostp.Size=Vector3.new(0.2,0.2,0.2)
ghostp.Transparency=1
ghostp.CanCollide=false
ghostp.BrickColor = BrickColor.new("Institutional white")
ghostp.Material="Neon"
ghostp.TopSurface="Smooth"
ghostp.BottomSurface="Smooth"
ghostp.RightSurface="Smooth"
ghostp.LeftSurface="Smooth"
ghostw=Instance.new("Weld",Character)
ghostw.Part0=Character.Torso
ghostw.Part1=ghostp
ghostw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(5,5,5)

ghostp2=Instance.new("Part",Character)
ghostp2.FormFactor="Custom"
ghostp2.Size=Vector3.new(0.2,0.2,0.2)
ghostp2.Transparency=1
ghostp2.CanCollide=false
ghostp2.BrickColor = BrickColor.new("Institutional white")
ghostp2.Material="Neon"
ghostp2.TopSurface="Smooth"
ghostp2.BottomSurface="Smooth"
ghostp2.RightSurface="Smooth"
ghostp2.LeftSurface="Smooth"
ghostw2=Instance.new("Weld",Character)
ghostw2.Part0=Character.Torso
ghostw2.Part1=ghostp2
ghostw2.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh2 = Instance.new("FileMesh",ghostp2)
ghostmesh2.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh2.Scale = Vector3.new(10,10,10)

ghostp3=Instance.new("Part",Character)
ghostp3.FormFactor="Custom"
ghostp3.Size=Vector3.new(0.2,0.2,0.2)
ghostp3.Transparency=1
ghostp3.CanCollide=false
ghostp3.BrickColor = BrickColor.new("Institutional white")
ghostp3.Material="Neon"
ghostp3.TopSurface="Smooth"
ghostp3.BottomSurface="Smooth"
ghostp3.RightSurface="Smooth"
ghostp2.LeftSurface="Smooth"
ghostw3=Instance.new("Weld",Character)
ghostw3.Part0=Character.Torso
ghostw3.Part1=ghostp3
ghostw3.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh3 = Instance.new("FileMesh",ghostp3)
ghostmesh3.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh3.Scale = Vector3.new(15,15,15)

ghostp4=Instance.new("Part",Character)
ghostp4.FormFactor="Custom"
ghostp4.Size=Vector3.new(0.2,0.2,0.2)
ghostp4.Transparency=1
ghostp4.CanCollide=false
ghostp4.BrickColor = BrickColor.new("Institutional white")
ghostp4.Material="Neon"
ghostp4.TopSurface="Smooth"
ghostp4.BottomSurface="Smooth"
ghostp4.RightSurface="Smooth"
ghostp4.LeftSurface="Smooth"
ghostw4=Instance.new("Weld",Character)
ghostw4.Part0=Character.Torso
ghostw4.Part1=ghostp4
ghostw4.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh4 = Instance.new("FileMesh",ghostp4)
ghostmesh4.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh4.Scale = Vector3.new(20,20,20)

ghostp5=Instance.new("Part",Character)
ghostp5.FormFactor="Custom"
ghostp5.Size=Vector3.new(0.2,0.2,0.2)
ghostp5.Transparency=1
ghostp5.CanCollide=false
ghostp5.BrickColor = BrickColor.new("Institutional white")
ghostp5.Material="Neon"
ghostp5.TopSurface="Smooth"
ghostp5.BottomSurface="Smooth"
ghostp5.RightSurface="Smooth"
ghostp5.LeftSurface="Smooth"
ghost5w=Instance.new("Weld",Character)
ghost5w.Part0=Character.Torso
ghost5w.Part1=ghostp5
ghost5w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp5)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(2.5,2.5,2.5)

ghostp6=Instance.new("Part",Character)
ghostp6.FormFactor="Custom"
ghostp6.Size=Vector3.new(0.2,0.2,0.2)
ghostp6.Transparency=1
ghostp6.CanCollide=false
ghostp6.BrickColor = BrickColor.new("Institutional white")
ghostp6.Material="Neon"
ghostp6.TopSurface="Smooth"
ghostp6.BottomSurface="Smooth"
ghostp6.RightSurface="Smooth"
ghostp6.LeftSurface="Smooth"
ghost6w=Instance.new("Weld",Character)
ghost6w.Part0=Character.Torso
ghost6w.Part1=ghostp6
ghost6w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp6)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(7.5,7.5,7.5)

ghostp7=Instance.new("Part",Character)
ghostp7.FormFactor="Custom"
ghostp7.Size=Vector3.new(0.2,0.2,0.2)
ghostp7.Transparency=1
ghostp7.CanCollide=false
ghostp7.BrickColor = BrickColor.new("Institutional white")
ghostp7.Material="Neon"
ghostp7.TopSurface="Smooth"
ghostp7.BottomSurface="Smooth"
ghostp7.RightSurface="Smooth"
ghostp7.LeftSurface="Smooth"
ghost7w=Instance.new("Weld",Character)
ghost7w.Part0=Character.Torso
ghost7w.Part1=ghostp7
ghost7w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp7)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(12.5,12.5,12.5)

ghostp8=Instance.new("Part",Character)
ghostp8.FormFactor="Custom"
ghostp8.Size=Vector3.new(0.2,0.2,0.2)
ghostp8.Transparency=1
ghostp8.CanCollide=false
ghostp8.BrickColor = BrickColor.new("Institutional white")
ghostp8.Material="Neon"
ghostp8.TopSurface="Smooth"
ghostp8.BottomSurface="Smooth"
ghostp8.RightSurface="Smooth"
ghostp8.LeftSurface="Smooth"
ghost8w=Instance.new("Weld",Character)
ghost8w.Part0=Character.Torso
ghost8w.Part1=ghostp8
ghost8w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp8)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(17.5,17.5,17.5)

eyeoutline=Instance.new("Part",Character)
eyeoutline.FormFactor="Custom"
eyeoutline.Size=Vector3.new(.2,.2,.2)
eyeoutline.Transparency=0
eyeoutline.CanCollide=false
eyeoutline.BrickColor = BrickColor.new("Really black")
eyeoutline.Material="SmoothPlastic"
eyeoutline.TopSurface="Smooth"
eyeoutline.BottomSurface="Smooth"
eyeoutline.RightSurface="Smooth"
eyeoutline.LeftSurface="Smooth"
eyeoutlinew=Instance.new("Weld",Character)
eyeoutlinew.Part0=Character.Torso
eyeoutlinew.Part1=eyeoutline
eyeoutlinew.C0=CFrame.new(-1.5,0,-4.1)*CFrame.Angles(0,math.rad(20),math.rad(0))

eyemesh = Instance.new("SpecialMesh",eyeoutline)
eyemesh.MeshType = "Sphere"
eyemesh.Scale = Vector3.new(8.5,8.5,2)

eyep=Instance.new("Part",Character)
eyep.FormFactor="Custom"
eyep.Size=Vector3.new(.2,.2,.2)
eyep.Transparency=0
eyep.CanCollide=false
eyep.BrickColor = BrickColor.new("Cyan")
eyep.Material="Neon"
eyep.TopSurface="Smooth"
eyep.BottomSurface="Smooth"
eyep.RightSurface="Smooth"
eyep.LeftSurface="Smooth"
eyepw=Instance.new("Weld",Character)
eyepw.Part0=eyeoutline
eyepw.Part1=eyep
eyepw.C0=CFrame.new(0,0,-0.1)*CFrame.Angles(0,math.rad(0),math.rad(0))

eyepmesh = Instance.new("SpecialMesh",eyep)
eyepmesh.MeshType = "Sphere"
eyepmesh.Scale = Vector3.new(7.5,7.5,2)

eyeoutline2=Instance.new("Part",Character)
eyeoutline2.FormFactor="Custom"
eyeoutline2.Size=Vector3.new(.2,.2,.2)
eyeoutline2.Transparency=0
eyeoutline2.CanCollide=false
eyeoutline2.BrickColor = BrickColor.new("Really black")
eyeoutline2.Material="SmoothPlastic"
eyeoutline2.TopSurface="Smooth"
eyeoutline2.BottomSurface="Smooth"
eyeoutline2.RightSurface="Smooth"
eyeoutline2.LeftSurface="Smooth"
eyeoutline2w=Instance.new("Weld",Character)
eyeoutline2w.Part0=Character.Torso
eyeoutline2w.Part1=eyeoutline2
eyeoutline2w.C0=CFrame.new(1.5,0,-4.1)*CFrame.Angles(0,math.rad(-20),math.rad(0))

eyemesh = Instance.new("SpecialMesh",eyeoutline2)
eyemesh.MeshType = "Sphere"
eyemesh.Scale = Vector3.new(8.5,8.5,2)

eyep2=Instance.new("Part",Character)
eyep2.FormFactor="Custom"
eyep2.Size=Vector3.new(.2,.2,.2)
eyep2.Transparency=0
eyep2.CanCollide=false
eyep2.BrickColor = BrickColor.new("Cyan")
eyep2.Material="Neon"
eyep2.TopSurface="Smooth"
eyep2.BottomSurface="Smooth"
eyep2.RightSurface="Smooth"
eyep2.LeftSurface="Smooth"
eyep2w=Instance.new("Weld",Character)
eyep2w.Part0=eyeoutline2
eyep2w.Part1=eyep2
eyep2w.C0=CFrame.new(0,0,-0.1)*CFrame.Angles(0,math.rad(0),math.rad(0))

eyep2mesh = Instance.new("SpecialMesh",eyep2)
eyep2mesh.MeshType = "Sphere"
eyep2mesh.Scale = Vector3.new(7.5,7.5,2)

local spotlight = Instance.new("SpotLight", eyep)
spotlight.Shadows = true
spotlight.Color = Color3.new(0, 0.666667, 1)
spotlight.Range = 24
spotlight.Angle = 60
spotlight.Brightness = 100

local spotlight2 = Instance.new("SpotLight", eyep2)
spotlight2.Shadows = true
spotlight2.Color = Color3.new(0, 0.666667, 1)
spotlight2.Range = 24
spotlight2.Angle = 60
spotlight2.Brightness = 100

local particleemitter = Instance.new("ParticleEmitter", Torso)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(1)
particleemitter.Speed = NumberRange.new(10)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter.RotSpeed = NumberRange.new(-180, 180)
particleemitter.Rotation = NumberRange.new(-360, 360)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 1
particleemitter.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))

emitterp=Instance.new("Part",Character)
emitterp.FormFactor="Custom"
emitterp.Size=Vector3.new(5,.2,5)
emitterp.Transparency=1
emitterp.CanCollide=false
emitterp.BrickColor = BrickColor.new("Cyan")
emitterp.Material="Neon"
emitterp.TopSurface="Smooth"
emitterp.BottomSurface="Smooth"
emitterp.RightSurface="Smooth"
emitterp.LeftSurface="Smooth"
emitterpw=Instance.new("Weld",Character)
emitterpw.Part0=Character.Torso
emitterpw.Part1=emitterp
emitterpw.C0=CFrame.new(0,-4,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

local emitter = Instance.new("ParticleEmitter", emitterp)
emitter.EmissionDirection = "Bottom"
emitter.VelocitySpread = 30
emitter.Lifetime = NumberRange.new(1)
emitter.Speed = NumberRange.new(10)
emitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2, 0), NumberSequenceKeypoint.new(1, 2, 0)})
emitter.RotSpeed = NumberRange.new(-180, 180)
emitter.Rate = 1000
emitter.Rotation = NumberRange.new(-360, 360)
emitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
emitter.LightEmission = 1
emitter.Texture = "http://www.roblox.com/asset/?id=31727915"
emitter.Color = ColorSequence.new(Color3.new(0.596078, 0.847059, 1), Color3.new(0.596078, 0.847059, 1))

local eyeeffect = Instance.new("ParticleEmitter", eyep)
eyeeffect.Lifetime = NumberRange.new(1)
eyeeffect.Speed = NumberRange.new(0)
eyeeffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 4), NumberSequenceKeypoint.new(1, 4)})
eyeeffect.RotSpeed = NumberRange.new(1080)
eyeeffect.Rate = 25
eyeeffect.Rotation = NumberRange.new(-360, 360)
eyeeffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.11, 0), NumberSequenceKeypoint.new(0.99, 1), NumberSequenceKeypoint.new(1, 1)})
eyeeffect.LightEmission = 0.5
eyeeffect.Texture = "http://www.roblox.com/asset/?id=242292288"
eyeeffect.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
eyeeffect.LockedToPart = true
eyeeffect.Enabled = false

local eyeeffect2 = Instance.new("ParticleEmitter", eyep2)
eyeeffect2.Lifetime = NumberRange.new(1)
eyeeffect2.Speed = NumberRange.new(0)
eyeeffect2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 4), NumberSequenceKeypoint.new(1, 4)})
eyeeffect2.RotSpeed = NumberRange.new(1080)
eyeeffect2.Rate = 25
eyeeffect2.Rotation = NumberRange.new(-360, 360)
eyeeffect2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.11, 0), NumberSequenceKeypoint.new(0.99, 1), NumberSequenceKeypoint.new(1, 1)})
eyeeffect2.LightEmission = 0.5
eyeeffect2.Texture = "http://www.roblox.com/asset/?id=242292288"
eyeeffect2.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
eyeeffect2.LockedToPart = true
eyeeffect2.Enabled = false

coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait(5)
for i=0,1,0.2 do
wait()
spotlight.Angle = 60-60*i
eyepmesh.Scale = Vector3.new(7.5,7.5-7.4*i,2)
end
for i=0,1,0.2 do
wait()
spotlight.Angle = 0+60*i
eyepmesh.Scale = Vector3.new(7.5,0.1+7.4*i,2)
end
spotlight.Angle = 60
end
end),eyep,eyepw)

coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait(5)
for i=0,1,0.2 do
wait()
spotlight2.Angle = 60-60*i
eyep2mesh.Scale = Vector3.new(7.5,7.5-7.4*i,2)
end
for i=0,1,0.2 do
wait()
spotlight2.Angle = 0+60*i
eyep2mesh.Scale = Vector3.new(7.5,0.1+7.4*i,2)
end
spotlight2.Angle = 60
end
end),eyep2,eyep2w)
--------------------------------------------------------------
Arm = Instance.new("Model",Character)
Arm.Name = "Arm 1"

arm1p=Instance.new("Part",Character)
arm1p.FormFactor="Custom"
arm1p.Size=Vector3.new(.2,.2,.2)
arm1p.Transparency=0
arm1p.CanCollide=false
arm1p.BrickColor = BrickColor.new("Pastel light blue")
arm1p.Material="Sand"
arm1p.TopSurface="Smooth"
arm1p.BottomSurface="Smooth"
arm1p.RightSurface="Smooth"
arm1p.LeftSurface="Smooth"
arm1pw=Instance.new("Weld",Character)
arm1pw.Part0=Character["Right Arm"]
arm1pw.Part1=arm1p
arm1pw.C0=CFrame.new(0,-5,0)*CFrame.Angles(0,math.rad(0),math.rad(90))

arm1pmesh = Instance.new("SpecialMesh",arm1p)
arm1pmesh.MeshType = "Sphere"
arm1pmesh.Scale = Vector3.new(40,20,40)

local particleemitter2 = Instance.new("ParticleEmitter", arm1p)
particleemitter2.VelocitySpread = 180
particleemitter2.Lifetime = NumberRange.new(1)
particleemitter2.Speed = NumberRange.new(10)
particleemitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter2.RotSpeed = NumberRange.new(-180, 180)
particleemitter2.Rotation = NumberRange.new(-360, 360)
particleemitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter2.LightEmission = 1
particleemitter2.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter2.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter2.Enabled = false

arm1p2=Instance.new("Part",Character)
arm1p2.FormFactor="Custom"
arm1p2.Size=Vector3.new(.2,.2,.2)
arm1p2.Transparency=0
arm1p2.CanCollide=false
arm1p2.BrickColor = BrickColor.new("Pastel light blue")
arm1p2.Material="Sand"
arm1p2.TopSurface="Smooth"
arm1p2.BottomSurface="Smooth"
arm1p2.RightSurface="Smooth"
arm1p2.LeftSurface="Smooth"
arm1p2w=Instance.new("Weld",Character)
arm1p2w.Part0=arm1p
arm1p2w.Part1=arm1p2
arm1p2w.C0=CFrame.new(0,3,0)*CFrame.Angles(0,math.rad(90),math.rad(-90))

arm1p2mesh = Instance.new("SpecialMesh",arm1p2)
arm1p2mesh.MeshType = "Cylinder"
arm1p2mesh.Scale = Vector3.new(30,20,30)

local particleemitter3 = Instance.new("ParticleEmitter", arm1p2)
particleemitter3.VelocitySpread = 180
particleemitter3.Lifetime = NumberRange.new(1)
particleemitter3.Speed = NumberRange.new(10)
particleemitter3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter3.RotSpeed = NumberRange.new(-180, 180)
particleemitter3.Rotation = NumberRange.new(-360, 360)
particleemitter3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter3.LightEmission = 1
particleemitter3.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter3.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter3.Enabled = false

arm1p3=Instance.new("Part",Character)
arm1p3.FormFactor="Custom"
arm1p3.Size=Vector3.new(.2,.2,.2)
arm1p3.Transparency=0
arm1p3.CanCollide=false
arm1p3.BrickColor = BrickColor.new("Pastel light blue")
arm1p3.Material="Sand"
arm1p3.TopSurface="Smooth"
arm1p3.BottomSurface="Smooth"
arm1p3.RightSurface="Smooth"
arm1p3.LeftSurface="Smooth"
arm1p3w=Instance.new("Weld",Character)
arm1p3w.Part0=arm1p2
arm1p3w.Part1=arm1p3
arm1p3w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm1p3mesh = Instance.new("SpecialMesh",arm1p3)
arm1p3mesh.MeshType = "Sphere"
arm1p3mesh.Scale = Vector3.new(22.5,22.5,22.5)

local particleemitter4 = Instance.new("ParticleEmitter", arm1p3)
particleemitter4.VelocitySpread = 180
particleemitter4.Lifetime = NumberRange.new(1)
particleemitter4.Speed = NumberRange.new(10)
particleemitter4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter4.RotSpeed = NumberRange.new(-180, 180)
particleemitter4.Rotation = NumberRange.new(-360, 360)
particleemitter4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter4.LightEmission = 1
particleemitter4.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter4.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter4.Enabled = false

arm1p4=Instance.new("Part",Character)
arm1p4.FormFactor="Custom"
arm1p4.Size=Vector3.new(.2,.2,.2)
arm1p4.Transparency=0
arm1p4.CanCollide=false
arm1p4.BrickColor = BrickColor.new("Pastel light blue")
arm1p4.Material="Sand"
arm1p4.TopSurface="Smooth"
arm1p4.BottomSurface="Smooth"
arm1p4.RightSurface="Smooth"
arm1p4.LeftSurface="Smooth"
arm1p4w=Instance.new("Weld",Character)
arm1p4w.Part0=arm1p3
arm1p4w.Part1=arm1p4
arm1p4w.C0=CFrame.new(-3,3,0)*CFrame.Angles(0,math.rad(0),math.rad(-45))

arm1p4mesh = Instance.new("SpecialMesh",arm1p4)
arm1p4mesh.MeshType = "Cylinder"
arm1p4mesh.Scale = Vector3.new(30,20,30)

local particleemitter5 = Instance.new("ParticleEmitter", arm1p4)
particleemitter5.VelocitySpread = 180
particleemitter5.Lifetime = NumberRange.new(1)
particleemitter5.Speed = NumberRange.new(10)
particleemitter5.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter5.RotSpeed = NumberRange.new(-180, 180)
particleemitter5.Rotation = NumberRange.new(-360, 360)
particleemitter5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter5.LightEmission = 1
particleemitter5.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter5.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter5.Enabled = false

arm1p5=Instance.new("Part",Character)
arm1p5.FormFactor="Custom"
arm1p5.Size=Vector3.new(.2,.2,.2)
arm1p5.Transparency=0
arm1p5.CanCollide=false
arm1p5.BrickColor = BrickColor.new("Pastel light blue")
arm1p5.Material="Sand"
arm1p5.TopSurface="Smooth"
arm1p5.BottomSurface="Smooth"
arm1p5.RightSurface="Smooth"
arm1p5.LeftSurface="Smooth"
arm1p5w=Instance.new("Weld",Character)
arm1p5w.Part0=arm1p4
arm1p5w.Part1=arm1p5
arm1p5w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm1p5mesh = Instance.new("SpecialMesh",arm1p5)
arm1p5mesh.MeshType = "Sphere"
arm1p5mesh.Scale = Vector3.new(30,30,30)

local particleemitter6 = Instance.new("ParticleEmitter", arm1p5)
particleemitter6.VelocitySpread = 180
particleemitter6.Lifetime = NumberRange.new(1)
particleemitter6.Speed = NumberRange.new(10)
particleemitter6.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter6.RotSpeed = NumberRange.new(-180, 180)
particleemitter6.Rotation = NumberRange.new(-360, 360)
particleemitter6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter6.LightEmission = 1
particleemitter6.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter6.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter6.Enabled = false

arm1p6=Instance.new("Part",Character)
arm1p6.FormFactor="Custom"
arm1p6.Size=Vector3.new(.2,.2,.2)
arm1p6.Transparency=0
arm1p6.CanCollide=false
arm1p6.BrickColor = BrickColor.new("Pastel light blue")
arm1p6.Material="Sand"
arm1p6.TopSurface="Smooth"
arm1p6.BottomSurface="Smooth"
arm1p6.RightSurface="Smooth"
arm1p6.LeftSurface="Smooth"
arm1p6w=Instance.new("Weld",Character)
arm1p6w.Part0=arm1p5
arm1p6w.Part1=arm1p6
arm1p6w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm1p6mesh = Instance.new("FileMesh",arm1p6)
arm1p6mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
arm1p6mesh.Scale = Vector3.new(3.15,3.15,3.15)

arm1p7=Instance.new("Part",Character)
arm1p7.FormFactor="Custom"
arm1p7.Size=Vector3.new(.2,.2,.2)
arm1p7.Transparency=0
arm1p7.CanCollide=false
arm1p7.BrickColor = BrickColor.new("Pastel light blue")
arm1p7.Material="Sand"
arm1p7.TopSurface="Smooth"
arm1p7.BottomSurface="Smooth"
arm1p7.RightSurface="Smooth"
arm1p7.LeftSurface="Smooth"
arm1p7w=Instance.new("Weld",Character)
arm1p7w.Part0=arm1p
arm1p7w.Part1=arm1p7
arm1p7w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm1p7mesh = Instance.new("FileMesh",arm1p7)
arm1p7mesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
arm1p7mesh.Scale = Vector3.new(5,10,5)

arm1hitbox=Instance.new("Part",Character)
arm1hitbox.FormFactor="Custom"
arm1hitbox.Size=Vector3.new(5,5,5)
arm1hitbox.Transparency=1
arm1hitbox.CanCollide=false
arm1hitbox.BrickColor = BrickColor.new("Pastel light blue")
arm1hitbox.Material="Sand"
arm1hitbox.TopSurface="Smooth"
arm1hitbox.BottomSurface="Smooth"
arm1hitbox.RightSurface="Smooth"
arm1hitbox.LeftSurface="Smooth"
arm1hitboxw=Instance.new("Weld",Character)
arm1hitboxw.Part0=arm1p6
arm1hitboxw.Part1=arm1hitbox
arm1hitboxw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
--------------------------------------------------------------
Arm2 = Instance.new("Model",Character)
Arm2.Name = "Arm 2"

arm2p=Instance.new("Part",Character)
arm2p.FormFactor="Custom"
arm2p.Size=Vector3.new(.2,.2,.2)
arm2p.Transparency=0
arm2p.CanCollide=false
arm2p.BrickColor = BrickColor.new("Pastel light blue")
arm2p.Material="Sand"
arm2p.TopSurface="Smooth"
arm2p.BottomSurface="Smooth"
arm2p.RightSurface="Smooth"
arm2p.LeftSurface="Smooth"
arm2pw=Instance.new("Weld",Character)
arm2pw.Part0=Character["Left Arm"]
arm2pw.Part1=arm2p
arm2pw.C0=CFrame.new(0,-5,0)*CFrame.Angles(0,math.rad(0),math.rad(-90))

arm2pmesh = Instance.new("SpecialMesh",arm2p)
arm2pmesh.MeshType = "Sphere"
arm2pmesh.Scale = Vector3.new(40,20,40)

local particleemitter7 = Instance.new("ParticleEmitter", arm2p)
particleemitter7.VelocitySpread = 180
particleemitter7.Lifetime = NumberRange.new(1)
particleemitter7.Speed = NumberRange.new(10)
particleemitter7.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter7.RotSpeed = NumberRange.new(-180, 180)
particleemitter7.Rotation = NumberRange.new(-360, 360)
particleemitter7.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter7.LightEmission = 1
particleemitter7.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter7.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter7.Enabled = false

arm2p2=Instance.new("Part",Character)
arm2p2.FormFactor="Custom"
arm2p2.Size=Vector3.new(.2,.2,.2)
arm2p2.Transparency=0
arm2p2.CanCollide=false
arm2p2.BrickColor = BrickColor.new("Pastel light blue")
arm2p2.Material="Sand"
arm2p2.TopSurface="Smooth"
arm2p2.BottomSurface="Smooth"
arm2p2.RightSurface="Smooth"
arm2p2.LeftSurface="Smooth"
arm2p2w=Instance.new("Weld",Character)
arm2p2w.Part0=arm2p
arm2p2w.Part1=arm2p2
arm2p2w.C0=CFrame.new(0,3,0)*CFrame.Angles(0,math.rad(90),math.rad(-90))

arm2p2mesh = Instance.new("SpecialMesh",arm2p2)
arm2p2mesh.MeshType = "Cylinder"
arm2p2mesh.Scale = Vector3.new(30,20,30)

local particleemitter8 = Instance.new("ParticleEmitter", arm2p2)
particleemitter8.VelocitySpread = 180
particleemitter8.Lifetime = NumberRange.new(1)
particleemitter8.Speed = NumberRange.new(10)
particleemitter8.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter8.RotSpeed = NumberRange.new(-180, 180)
particleemitter8.Rotation = NumberRange.new(-360, 360)
particleemitter8.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter8.LightEmission = 1
particleemitter8.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter8.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter8.Enabled = false

arm2p3=Instance.new("Part",Character)
arm2p3.FormFactor="Custom"
arm2p3.Size=Vector3.new(.2,.2,.2)
arm2p3.Transparency=0
arm2p3.CanCollide=false
arm2p3.BrickColor = BrickColor.new("Pastel light blue")
arm2p3.Material="Sand"
arm2p3.TopSurface="Smooth"
arm2p3.BottomSurface="Smooth"
arm2p3.RightSurface="Smooth"
arm2p3.LeftSurface="Smooth"
arm2p3w=Instance.new("Weld",Character)
arm2p3w.Part0=arm2p2
arm2p3w.Part1=arm2p3
arm2p3w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm2p3mesh = Instance.new("SpecialMesh",arm2p3)
arm2p3mesh.MeshType = "Sphere"
arm2p3mesh.Scale = Vector3.new(22.5,22.5,22.5)

local particleemitter9 = Instance.new("ParticleEmitter", arm2p3)
particleemitter9.VelocitySpread = 180
particleemitter9.Lifetime = NumberRange.new(1)
particleemitter9.Speed = NumberRange.new(10)
particleemitter9.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter9.RotSpeed = NumberRange.new(-180, 180)
particleemitter9.Rotation = NumberRange.new(-360, 360)
particleemitter9.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter9.LightEmission = 1
particleemitter9.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter9.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter9.Enabled = false

arm2p4=Instance.new("Part",Character)
arm2p4.FormFactor="Custom"
arm2p4.Size=Vector3.new(.2,.2,.2)
arm2p4.Transparency=0
arm2p4.CanCollide=false
arm2p4.BrickColor = BrickColor.new("Pastel light blue")
arm2p4.Material="Sand"
arm2p4.TopSurface="Smooth"
arm2p4.BottomSurface="Smooth"
arm2p4.RightSurface="Smooth"
arm2p4.LeftSurface="Smooth"
arm2p4w=Instance.new("Weld",Character)
arm2p4w.Part0=arm2p3
arm2p4w.Part1=arm2p4
arm2p4w.C0=CFrame.new(-3,3,0)*CFrame.Angles(0,math.rad(0),math.rad(-45))

arm2p4mesh = Instance.new("SpecialMesh",arm2p4)
arm2p4mesh.MeshType = "Cylinder"
arm2p4mesh.Scale = Vector3.new(30,20,30)

local particleemitter10 = Instance.new("ParticleEmitter", arm2p4)
particleemitter10.VelocitySpread = 180
particleemitter10.Lifetime = NumberRange.new(1)
particleemitter10.Speed = NumberRange.new(10)
particleemitter10.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter10.RotSpeed = NumberRange.new(-180, 180)
particleemitter10.Rotation = NumberRange.new(-360, 360)
particleemitter10.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter10.LightEmission = 1
particleemitter10.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter10.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter10.Enabled = false

arm2p5=Instance.new("Part",Character)
arm2p5.FormFactor="Custom"
arm2p5.Size=Vector3.new(.2,.2,.2)
arm2p5.Transparency=0
arm2p5.CanCollide=false
arm2p5.BrickColor = BrickColor.new("Pastel light blue")
arm2p5.Material="Sand"
arm2p5.TopSurface="Smooth"
arm2p5.BottomSurface="Smooth"
arm2p5.RightSurface="Smooth"
arm2p5.LeftSurface="Smooth"
arm2p5w=Instance.new("Weld",Character)
arm2p5w.Part0=arm2p4
arm2p5w.Part1=arm2p5
arm2p5w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm2p5mesh = Instance.new("SpecialMesh",arm2p5)
arm2p5mesh.MeshType = "Sphere"
arm2p5mesh.Scale = Vector3.new(30,30,30)

local particleemitter11 = Instance.new("ParticleEmitter", arm2p5)
particleemitter11.VelocitySpread = 180
particleemitter11.Lifetime = NumberRange.new(1)
particleemitter11.Speed = NumberRange.new(10)
particleemitter11.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter11.RotSpeed = NumberRange.new(-180, 180)
particleemitter11.Rotation = NumberRange.new(-360, 360)
particleemitter11.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter11.LightEmission = 1
particleemitter11.Texture = "http://www.roblox.com/asset/?id=320043786"
particleemitter11.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter11.Enabled = false

arm2p6=Instance.new("Part",Character)
arm2p6.FormFactor="Custom"
arm2p6.Size=Vector3.new(.2,.2,.2)
arm2p6.Transparency=0
arm2p6.CanCollide=false
arm2p6.BrickColor = BrickColor.new("Pastel light blue")
arm2p6.Material="Sand"
arm2p6.TopSurface="Smooth"
arm2p6.BottomSurface="Smooth"
arm2p6.RightSurface="Smooth"
arm2p6.LeftSurface="Smooth"
arm2p6w=Instance.new("Weld",Character)
arm2p6w.Part0=arm2p5
arm2p6w.Part1=arm2p6
arm2p6w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(90))

arm2p6mesh = Instance.new("FileMesh",arm2p6)
arm2p6mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
arm2p6mesh.Scale = Vector3.new(3.15,3.15,3.15)

arm2p7=Instance.new("Part",Character)
arm2p7.FormFactor="Custom"
arm2p7.Size=Vector3.new(.2,.2,.2)
arm2p7.Transparency=0
arm2p7.CanCollide=false
arm2p7.BrickColor = BrickColor.new("Pastel light blue")
arm2p7.Material="Sand"
arm2p7.TopSurface="Smooth"
arm2p7.BottomSurface="Smooth"
arm2p7.RightSurface="Smooth"
arm2p7.LeftSurface="Smooth"
arm2p7w=Instance.new("Weld",Character)
arm2p7w.Part0=arm2p
arm2p7w.Part1=arm2p7
arm2p7w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm2p7mesh = Instance.new("FileMesh",arm2p7)
arm2p7mesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
arm2p7mesh.Scale = Vector3.new(5,10,5)

arm2hitbox=Instance.new("Part",Character)
arm2hitbox.FormFactor="Custom"
arm2hitbox.Size=Vector3.new(5,5,5)
arm2hitbox.Transparency=1
arm2hitbox.CanCollide=false
arm2hitbox.BrickColor = BrickColor.new("Pastel light blue")
arm2hitbox.Material="Sand"
arm2hitbox.TopSurface="Smooth"
arm2hitbox.BottomSurface="Smooth"
arm2hitbox.RightSurface="Smooth"
arm2hitbox.LeftSurface="Smooth"
arm2hitboxw=Instance.new("Weld",Character)
arm2hitboxw.Part0=arm2p6
arm2hitboxw.Part1=arm2hitbox
arm2hitboxw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
--------------------------------------------------------------

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("New Yeller"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                so("http://www.roblox.com/asset/?id=220834019",hit,1,math.random(80,120)/100) 
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
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
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=BrickColor.new("Bright red")
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
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

function Shockwave2(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1, delay do
			swait()
			prt.Transparency = i
			msh.Scale = msh.Scale + vt(x2, y2, z2)
		end
		prt.Parent = nil
	end))
end

function attackone()
attack=true
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,8)*angles(math.rad(5),math.rad(0),math.rad(-30)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,4)*angles(math.rad(60),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(1.5,3,0)*angles(math.rad(0),math.rad(0),math.rad(-120)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
so("http://www.roblox.com/asset/?id=203691467",arm1hitbox,1,1) 
con1=arm1hitbox.Touched:connect(function(hit) Damagefunc(hit,60,80,math.random(60,80),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
Shockwave(BrickColor.new("Institutional white"),cf(arm1hitbox.Position),1,1,1,1,1,1,0.075)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,8)*angles(math.rad(5),math.rad(0),math.rad(30)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-130)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(-2.5,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,-4)*angles(math.rad(-60),math.rad(90),math.rad(-90)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,8)*angles(math.rad(5),math.rad(0),math.rad(30)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-130)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(-2.5,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,-4)*angles(math.rad(-60),math.rad(90),math.rad(-90)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
con1:disconnect()
attack=false
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end

function attacktwo()
attack=true
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12)*angles(math.rad(-20),math.rad(0),math.rad(20)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-2.5,0)*angles(math.rad(0),math.rad(120),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-1,3,0)*angles(math.rad(0),math.rad(0),math.rad(-75)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
so("http://www.roblox.com/asset/?id=203691467",arm1hitbox,1,0.8) 
con1=arm2hitbox.Touched:connect(function(hit) Damagefunc(hit,60,80,math.random(60,80),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
Shockwave(BrickColor.new("Institutional white"),cf(arm2hitbox.Position),1,1,1,1,1,1,0.075)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,10)*angles(math.rad(20),math.rad(0),math.rad(-45)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(1.5,-3.5,-5)*angles(math.rad(-30),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
end
Humanoid.WalkSpeed = 0
local hit,pos=rayCast(arm2hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if hit~=nil then
swait()
print("touched")
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
so("http://www.roblox.com/asset/?id=199145477",arm2hitbox,1,math.random(60,140)/100)
Shockwave2(BrickColor.new("Pastel light blue"),cf(pos),0.1,0.1,0.1,1,1,1,0.05)
end
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,10)*angles(math.rad(20),math.rad(0),math.rad(-45)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(1.5,-3.5,-5)*angles(math.rad(-20),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
end
Humanoid.WalkSpeed = 64
con1:disconnect()
attack=false
end

lasereye=1

mouse.Button1Down:connect(function()
if attack==false and attacktype==1 and sphere==false then
attackone()
attacktype=2
elseif attack==false and attacktype==2 and sphere==false then
attacktwo()
attacktype=1
end
if attack==false and used==false and sphere==true and rest==false and lasereye==1 then
lasereye=2
LaserBlaster()
elseif attack==false and used==false and sphere==true and rest==false and lasereye==2 then
lasereye=1
LaserBlaster2()
end
end)

function Shockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Laser(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

MMouse=mouse 
LaserTarget=RootPart
used=false

function LaserBlaster()
used=true
so("http://www.roblox.com/asset/?id=167122623",eyep,1,math.random(60,80)/100)
local MouseLook=cf((eyep.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,0.5,0,0.5,0.1)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),1,1,1,1,1,1,0.075)
Damagefunc(hit,20,40,0,"Normal",RootPart,0)
end
for i=0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,2,12)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(0.25)
used=false
end

function LaserBlaster2()
used=true
so("http://www.roblox.com/asset/?id=167122623",eyep2,1,math.random(60,80)/100)
local MouseLook=cf((eyep2.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep2.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep2.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep2.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,0.5,0,0.5,0.1)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),1,1,1,1,1,1,0.075)
Damagefunc(hit,20,40,0,"Normal",RootPart,0)
end
for i=0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,2,12)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(0.25)
used=false
end

used2=false

function GiantLaserBlaster()
used2=true
so("http://www.roblox.com/asset/?id=137463716",eyep,1,math.random(60,80)/100) 
eyeeffect.Enabled = true
wait(1.6)
eyeeffect.Enabled = false
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
local MouseLook=cf((eyep.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,2.5,0,2.5,0.05)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),2.5,2.5,2.5,2.5,2.5,2.5,0.025)
Damagefunc(hit,40,80,0,"Normal",RootPart,0)
end
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,8,12)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(3)
used2=false
end

function GiantLaserBlaster2()
used2=true
so("http://www.roblox.com/asset/?id=137463716",eyep2,1,math.random(60,80)/100) 
eyeeffect2.Enabled = true
wait(1.6)
eyeeffect2.Enabled = false
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
local MouseLook=cf((eyep2.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep2.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep2.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep2.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,2.5,0,2.5,0.05)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),2.5,2.5,2.5,2.5,2.5,2.5,0.025)
Damagefunc(hit,40,80,0,"Normal",RootPart,0)
end
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,8,12)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(3)
used2=false
end

function Hibernation()
	if rest==false then
	print("You are now resting.")
	rest=true
	attack=true
	emitter.Enabled = false
	particleemitter.Enabled = false
	for i=0,1,0.15 do
	wait()
	Humanoid.CameraOffset = Vector3.new(0, 12.5-12.5*i, 0)
	music.Volume = 0.5-0.5*i
	--eyep2mesh.Scale = Vector3.new(8.5,8.5-8.4*i,2)
	--eyepmesh.Scale = Vector3.new(8.5,8.5-8.4*i,2)
	end
	music.Volume = 0
	Humanoid.CameraOffset = Vector3.new(0, 0, 0)
	attack=false
	Humanoid.WalkSpeed = 0
	elseif rest==true then
	print("You are now awake.")
	rest=false
	attack=true
	for i=0,1,0.15 do
	wait()
	Humanoid.CameraOffset = Vector3.new(0, 0+12.5*i, 0)
	music.Volume = 0+0.5*i
	--eyep2mesh.Scale = Vector3.new(8.5,0.1+8.4*i,2)
	--eyepmesh.Scale = Vector3.new(8.5,0.1+8.4*i,2)
	end
	emitter.Enabled = true
	particleemitter.Enabled = true
	Humanoid.WalkSpeed = 16
	music.Volume = 0.5
	Humanoid.CameraOffset = Vector3.new(0, 12.5, 0)
	attack=false
	end
end

ragemodedelay=false

function RageMode()
	if sphere==true then
	music:Stop()
	music2:Play()
	rawr:Play()
	particleemitter2.Enabled=true
	particleemitter3.Enabled=true
	particleemitter4.Enabled=true
	particleemitter5.Enabled=true
	particleemitter6.Enabled=true
	particleemitter7.Enabled=true
	particleemitter8.Enabled=true
	particleemitter9.Enabled=true
	particleemitter10.Enabled=true
	particleemitter11.Enabled=true
	Humanoid.WalkSpeed = 64
	Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),4,4,4,6,6,6,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Character,0.5,1.2) 
	sphere=false
	elseif sphere==false then
	music2:Stop()
	music:Play()
	particleemitter2.Enabled=false
	particleemitter3.Enabled=false
	particleemitter4.Enabled=false
	particleemitter5.Enabled=false
	particleemitter6.Enabled=false
	particleemitter7.Enabled=false
	particleemitter8.Enabled=false
	particleemitter9.Enabled=false
	particleemitter10.Enabled=false
	particleemitter11.Enabled=false
	Humanoid.WalkSpeed = 16
	Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),4,4,4,6,6,6,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Character,0.5,0.8) 
	sphere=true
	end
end

--use3=false

function TheWind()
	if aura==false then
	Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),16,16,16,10,10,10,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Torso,1,1.1) 
	ghostp.Transparency = 0.8
	ghostp2.Transparency = 0.85
	ghostp3.Transparency = 0.9
	ghostp4.Transparency = 0.95
	ghostp5.Transparency = 0.75
	ghostp6.Transparency = 0.825
	ghostp7.Transparency = 0.875
	ghostp8.Transparency = 0.925
	aura=true
	elseif aura==true then
	Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),16,16,16,10,10,10,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Torso,1,0.9) 
	ghostp.Transparency = 1
	ghostp2.Transparency = 1
	ghostp3.Transparency = 1
	ghostp4.Transparency = 1
	ghostp5.Transparency = 1
	ghostp6.Transparency = 1
	ghostp7.Transparency = 1
	ghostp8.Transparency = 1
	aura=false
	end
	while aura==true do
	for i=0,1,0.05 do
	wait()
	ghostw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(45+360*i),math.rad(0))
	ghostw2.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(90+360*i),math.rad(0))
	ghostw3.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(135+360*i),math.rad(0))
	ghostw4.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(180+360*i),math.rad(0))
	ghost5w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(225+360*i),math.rad(0))
	ghost6w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(270+360*i),math.rad(0))
	ghost7w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(315+360*i),math.rad(0))
	ghost8w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(360+360*i),math.rad(0))
	end
	end
end

giantlasereye=1

function ShootingTheEyes()
if giantlasereye==1 then
GiantLaserBlaster()
giantlasereye=2
elseif giantlasereye==2 then
GiantLaserBlaster2()
giantlasereye=1
end
end

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='r' and attack==false and sphere==true and aura==false then
	Hibernation()
	end
	if k=='f' and used2==false and sphere==true and rest==false then
	ShootingTheEyes()
	end
	if k=='q' and rest==false and ragemodedelay==false then
	RageMode()
	ragemodedelay=true
	wait(3)
	ragemodedelay=false
	end
	if k=='e' and rest==false then
	TheWind()
	end
end)

local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/60))*angles(math.rad(-30),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(80-10*math.cos(sine/60))), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-80+10*math.cos(sine/60))), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/40))*angles(math.rad(-20),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/60))*angles(math.rad(30),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(120-10*math.cos(sine/60))), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-120+10*math.cos(sine/60))), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/40))*angles(math.rad(20),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
Humanoid.WalkSpeed = 64
if attack==false and sphere==false and rest==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/30))*angles(math.rad(5+5*math.cos(sine/30)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15-10*math.cos(sine/30)), math.rad(0), math.rad(100-5*math.cos(sine/30))), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15-10*math.cos(sine/30)), math.rad(0), math.rad(-100+5*math.cos(sine/30))), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true and rest==false then
Humanoid.WalkSpeed = 16
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0+1*math.cos(sine/20),0,12-0.5*math.cos(sine/40))*angles(math.rad(5+5*math.cos(sine/30)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
else
if attack==false and sphere==true and rest==true then
Humanoid.WalkSpeed = 0
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(2.5+2.5*math.cos(sine/20)),math.rad(30),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-1*math.cos(sine/30))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/40))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-1*math.cos(sine/30))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end
end