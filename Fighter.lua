wait()
--[[ Vital Variables ]]--

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character["Humanoid"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]
local RightLeg = Character["Right Leg"]
local LeftLeg = Character["Left Leg"]

--[[ Motor's Variables ]]--

local Neck = Torso.Neck
local RootJoint = RootPart.RootJoint
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]

--[[ Other Variables ]]--

local Insert = table.insert

--[[ Services ]]--

Services = {
	
Workspace = game:GetService("Workspace");
Debris = game:GetService("Debris");	
	
}

--[[ Get mouse ]]--

local Mouse = Player:GetMouse()

--[[ VFX ]]--

VFXList = {}

--[[ Remove Character Animate ]]--

local CharaterAnimate, CharacterAnimator = Character:FindFirstChild("Animate"), Humanoid:FindFirstChild("Animator")

CharaterAnimate.Parent = nil
CharacterAnimator.Parent = nil

--[[ Number Values ]]--

local ManaDelay = 0
local ManaDelay2 = 8
local EffectRemovalDelay = 0
local EffectRemovalDelay2 = 3
local Combo = 1
local AttackDecrease = 0
local MvmtDecrease = 0
local DefenceDecrease = 0

--[[ Bool Values ]]--

local Attacking = false

--[[ CFrame Values ]]--

NeckDefaultCFrame = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootDefaultCFrame = CFrame.Angles(-1.57, 0, 3.14)
RightLegDefaultCFrame = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftLegDefaultCFrame = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

RightShoulder.C1 = CFrame.new(0,0.5,0)
LeftShoulder.C1 = CFrame.new(0,0.5,0)

--[[ Heartbeat ]]--

Heartbeat = Instance.new("BindableEvent", script)
Heartbeat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
Frame = 0.033333333333333
TF = 0
AllowFrameLoss = false
TossRemainder = false
LastFrame = tick()
script.Heartbeat:Fire()
local HeartBeatIsNil = false

game:GetService("RunService").Heartbeat:connect(function(s, p)
if script:FindFirstChild("Heartbeat") == nil then
HeartBeatIsNil = true
end
if HeartBeatIsNil then
return 
end
TF = TF + s
if Frame <= TF then
if AllowFrameLoss then
Heartbeat:Fire()
LastFrame = tick()
else
for i = 1, math.floor(TF / Frame) do
Heartbeat:Fire()
LastFrame = tick()
end
end
if TossRemainder then
TF = 0
else
TF = TF - Frame * math.floor(TF / Frame)
end
end
end)

function Wait2(WaitNumber)	
if WaitNumber == 0 or WaitNumber == nil then
Heartbeat.Event:wait()
else
for i = 0, WaitNumber do
Heartbeat.Event:wait()
end
end
end

--[[ Vital Functions ]]--

function GUI(NewInstance, Parent, Size, Position, BGTransparency, Visible, BGColor, Rotation, Style, Text, TextColor, TextStroke, StrokeTrans, Scaled, Font)
	
local NewGui = Instance.new(NewInstance)
NewGui.Parent = Parent
coroutine.resume(coroutine.create(function()
NewGui:TweenSizeAndPosition(Size, Position, "Out", "Quad", 2)
end))
NewGui.BackgroundTransparency = BGTransparency
NewGui.Visible = Visible
NewGui.Rotation = Rotation
NewGui.BorderSizePixel = 0
NewGui.BackgroundColor3 = BrickColor.new(BGColor).Color	
if Style and NewInstance == "Frame" or Style and NewInstance == "ScrollingFrame" then
NewGui.Style = Style	
end
	
if NewInstance == "TextBox" or NewInstance == "TextLabel" or NewInstance == "TextButton" then
	
NewGui.Text = Text	
NewGui.TextStrokeTransparency = StrokeTrans
NewGui.TextColor3 = BrickColor.new(TextColor).Color
NewGui.TextStrokeColor3 = BrickColor.new(TextStroke).Color
NewGui.TextScaled = Scaled
NewGui.Font = Font
	
	
end	

return NewGui
end

local CreatePart = function(Parent, Name, Color, Size, Material, Transparency, Shape)

local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.Shape = Shape
Part.CanCollide = false
NoOutlines(Part)

return Part

end

local CreateWeld = function(Parent, Cframe, Cframe2, P1 , P0, Name)

local Weld = Instance.new("Weld", Parent)
Weld.Part0 = P0
Weld.Part1 = P1
Weld.Name = Name
Weld.C0 = Cframe
Weld.C1 = Cframe2

return Weld

end

local CreateMesh = function(Parent, Scale, Type, Type2, ID, Texture)
local Mesh
if Type == "SpecialMesh" then
Mesh = Instance.new("SpecialMesh", Parent)
if Type then
Mesh.MeshType = Type2
if Type2 == "FileMesh" and ID then
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. ID
if Texture then
Mesh.TextureId = "http://www.roblox.com/asset?id=" .. Texture
end
end
end

elseif Type == "BlockMesh" then
Mesh = Instance.new("BlockMesh", Parent)

elseif Type == "CylinderMesh" then
Mesh = Instance.new("CylinderMesh", Parent)

end
Mesh.Scale = Scale
return Mesh

end

function Animate(Weld, Point1, Point2)
	
return Weld:Lerp(Point1, Point2)
	
end

--[[ Secondary Functions ]]--

function ResumeCharacterControl()

CharacterUnderControl = true
Humanoid.JumpPower = 50


end

function RemoveCharacterControl()
CharacterUnderControl = false
wait()		
Humanoid.JumpPower = 0
Humanoid.WalkSpeed = 0
	
end

function SoundEffect(Part, ID, Volume, Pitch, Looped)
	
local Sound = Instance.new("Sound", Part)
Sound.SoundId = "http://www.roblox.com/asset?id=" .. ID
Sound.Name = "SFX"
Sound.Volume = Volume
Sound.Pitch = Pitch
Sound:Play()

if Looped then
return	
end

Services.Debris:AddItem(Sound, 5)

return Sound
	
end

function NoOutlines(Part)
	
Part.TopSurface = 10
Part.BottomSurface = 10
Part.LeftSurface = 10
Part.RightSurface = 10
Part.FrontSurface = 10
Part.BackSurface = 10

end

function AddVFX(VFXType, Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
	
Insert(VFXList, {VFXType, Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3})
	
end
	
function BlockVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Brick")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	
AddVFX("Rotate", Part)	
	
return Part	
	
end		

function CylinderVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Cylinder")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part	
	
end	

function CircleVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Sphere")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	
	
return Part	
	
end

function CylinderVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Cylinder")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	
	
return Part	
	
end

function WaveVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 20329976)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part and Mesh

end

function RingVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 3270017)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part and Mesh

end

function ShurikenVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 11112101)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part

end


function KunaiVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 45728702)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part

end

function WindVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 20)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 168892432)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part

end

--[[ References ]]--

RightArmReference = CreatePart(Character, "Right arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
RightArmReferenceWeld = CreateWeld(RightArmReference,  CFrame.new(0,1.5,0), CFrame.new(0,0,0), RightArm, RightArmReference, "LeftArmReferenceToRightArm")

----------------------------------------------------------------------------------------------------------------------------

LeftArmReference = CreatePart(Character, "Left arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
LeftArmReferenceWeld = CreateWeld(LeftArmReference,  CFrame.new(0,1.5,0), CFrame.new(0,0,0), LeftArm, LeftArmReference, "LeftArmReferenceToLeftArm")

----------------------------------------------------------------------------------------------------------------------------

TorsoReference = CreatePart(Character, "Torso reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
TorsoReferenceWeld = CreateWeld(TorsoReference,  CFrame.new(0,0,0), CFrame.new(0,0,0), Torso, TorsoReference, "TorsoReferenceToTorsoArm")

----------------------------------------------------------------------------------------------------------------------------

RootPartReference = CreatePart(Character, "Root part reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
RootPartReferenceWeld = CreateWeld(RootPartReference,  CFrame.new(0,0,0), CFrame.new(0,0,0), RootPart, RootPartReference, "RootPartReferenceToRootPart")

--[[ Damage function ]]-- 

function Display(HitCharacter, DisplayText, DisplayType)
	

if HitCharacter:FindFirstChild("Head") then
local DamageShowingPart = Instance.new("Part",Services.Workspace) 
DamageShowingPart.Name = "ShowDamage" 
DamageShowingPart.BrickColor = BrickColor.new("Crimson")
DamageShowingPart.Size = Vector3.new() 
DamageShowingPart.Material = "Neon" 
DamageShowingPart.Transparency = 1

local DisplayGui = Instance.new("BillboardGui", DamageShowingPart)
DisplayGui.Name = "Damage"
DisplayGui.AlwaysOnTop = true
DisplayGui.Size = UDim2.new(2, 0, 2, 0)

local DisplayNumber = Instance.new("TextLabel", DisplayGui)
DisplayNumber.Size = UDim2.new(1,0,1,0)
DisplayNumber.TextTransparency = 1
DisplayNumber.TextStrokeTransparency = 1
DisplayNumber.BackgroundTransparency = 1
DisplayNumber.TextTransparency = 1

DisplayNumber.Font = "SourceSansBold"
DisplayNumber.TextScaled = true

local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,0.5,0)	
if DisplayType == "Stun" then
BodyVelocity.Velocity = Vector3.new(0,0.1,0)	
DisplayGui.Size = UDim2.new(5, 0, 5, 0)
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.new("Bright yellow").Color
DisplayNumber.Text = "Stunned!"
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(0,5,0)

end 

if DisplayType == "Damage" then
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.new("Really red").Color
DisplayNumber.Text = "-" .. DisplayText
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-1,1),5,math.random(-1,1))
end

coroutine.resume(coroutine.create(function()

while DisplayNumber.TextTransparency > 0 do
wait()

DisplayNumber.TextStrokeTransparency = DisplayNumber.BackgroundTransparency  - 0.1
DisplayNumber.TextTransparency = DisplayNumber.TextTransparency - 0.1

end
AddVFX("Display", DamageShowingPart, 0.05)

end))


Services.Debris:AddItem(DamageShowingPart, 10)


	
end	
	
	
end

function DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook)

if Hit.Health == 0 or HitCharacter:FindFirstChild(Player.Name) then
return
end

SoundEffect(HitCharacter.Torso, SFX, 10, SFXPitch, false)


if Type == "Stand" then
HitCharacter.Humanoid.PlatformStand = true
coroutine.resume(coroutine.create(function()
wait(3)
	
HitCharacter.Humanoid.PlatformStand = false
	
end))	
	
end

local DelayDebounce = Instance.new("Folder", HitCharacter)
DelayDebounce.Name = Player.Name
Services.Debris:AddItem(DelayDebounce, Delay)

local Damage = math.random(MinDamage, MaxDamage)
HitCharacter.Torso.Velocity = PartLook.CFrame.lookVector * Knockback

coroutine.resume(coroutine.create(function()
wait()
Hit:TakeDamage(Damage)
Display(HitCharacter, Damage, "Damage")
end))	

end

function ValidateDamage(Part, Type, Distance, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, Effect, Stat, StatsDecreaseNumber, StatsDecreaseDuration)
	
for ChildrenNumber, Children in pairs(Services.Workspace:children()) do
if Children ~= Character and Children:FindFirstChild("Humanoid") and Children:FindFirstChild("Head") then
	
local HitHead = Children.Head

local TargetPosition = HitHead.Position - Part.Position
local Magnitude = TargetPosition.magnitude

if Magnitude < Distance then

local Hit = Children.Humanoid
local HitCharacter = Children

DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook, Effect, Stat, StatsDecreaseNumber, StatsDecreaseDuration)

end
end		
end
end

--[[ Attacks ]]--

function Move1()
Attacking = true
SoundEffect(RootPart, 588738544, 10, 1, false)	
	
for i = 1,50 do
wait()
BlockVFX(LeftArmReference.CFrame, "Neon orange", "Neon", 0 , 0.05, 1,1,1, 0.5,0.5,0.5)
WaveVFX(LeftArm.CFrame, "Neon orange", "Neon", 0 , 0.05, 0.1,1,0.1, 0.1,0.1,0.1)
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, -0.2, -1), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 1), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , 0, 0.2), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5 ,-0.8) * CFrame.Angles(0 , 0.5, 1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1.2, 0.5) * CFrame.Angles(0,1.6,0)* CFrame.Angles(0,-1,-0.1), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, -0.5) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(0,-1,0.3), 0.2)
end

for i = 1,20 do
wait()
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0.2, -1), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0.2, 0, 1), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(-0.5 , 0, 0.2), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(1,0.5 ,-1) * CFrame.Angles(0 , 0.5, 1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, 0.5) * CFrame.Angles(0,1.6,0)* CFrame.Angles(0,-1,0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1.2, -0.5) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(0,-1,0.1), 0.2)
end
SoundEffect(RootPart, 588735437, 1, 1, false)
SoundEffect(RootPart, 588736245, 1, 1, false)
ValidateDamage(RootPart, "Normal", 10, 20, 24, RootPart, 200, 565207203, 1, 0.3)
WaveVFX(LeftArm.CFrame, "Neon orange", "Neon", 0 , 0.05, 5,5,5, 0.1,0.1,0.1)
RingVFX(LeftArm.CFrame * CFrame.Angles(1.6,0,0), "Neon orange", "Neon", 0 , 0.05, 10,10,10, 0.1,0.1,0.1)
CircleVFX(LeftArmReference.CFrame, "Neon orange", "Neon", 0 , 0.05, 1,1,1, 5,5,5)
Attacking = false
end


function Move2()
Attacking = true
Humanoid.Jump = true
RootPart.Velocity = RootPart.CFrame.lookVector * 80
wait()
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
SoundEffect(RootPart, 541909763, 1, 1 , false)
for i = 3,40 do
wait()
ValidateDamage(RootPart, "Stand", 10, 10, 14, RootPart, 30, 565207203, 1.4, 0.3)

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0.5) * CFrame.Angles(-0.4, 0, i/2), 0.5)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , 0, 1), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5 ,0) * CFrame.Angles(0 , 0, -1), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(0,0,1.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(0,0,1.3), 0.2)
end
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false

end


function Move3()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
	SoundEffect(RootPart, 541909763, 1, 1 , false)
for i = 1,20 do
wait()
ValidateDamage(RootPart, "Stand", 10, 10, 14, RootPart, 30, 565207203, 1, 0.3)

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.6), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,-0.6) * CFrame.Angles(-1.2, 0, 1.6), 0.5)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , 0, 1), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5 ,0) * CFrame.Angles(0 , 0, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-1,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.5,0,0), 0.2)
end
Attacking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
end


--[[ Other functions ]]--

function Keydown(Key)
if Attacking then
return
end
	
if Key == "q" then
Move1()	
end	

if Key == "e" then
Move2()	
end
			
if Key == "r" then
Move3()	
end
end

Mouse.KeyDown:connect(Keydown)

--[[ Values ]]--

WalkVal = 0
WalkInvert = false
Walk = false

--[[ Looped functions ]]--

function VisualEffects()
for i = 1, #VFXList do
if VFXList[i] then
local VFXConfiguration = VFXList[i]	

if VFXConfiguration then
if VFXConfiguration[1] == "Display" then
if VFXConfiguration[2]:FindFirstChild("Damage") then
VFXConfiguration[2].Damage.TextLabel.TextStrokeTransparency = VFXConfiguration[2].Damage.TextLabel.TextStrokeTransparency + VFXConfiguration[3]
VFXConfiguration[2].Damage.TextLabel.TextTransparency = VFXConfiguration[2].Damage.TextLabel.TextTransparency + VFXConfiguration[3]
end
end
if VFXConfiguration[1] == "Resize" then
if VFXConfiguration[2]:FindFirstChild("Mesh") then
if VFXConfiguration[2].Transparency < 1 then
VFXConfiguration[2].Mesh.Scale = VFXConfiguration[2].Mesh.Scale + Vector3.new(VFXConfiguration[4], VFXConfiguration[5], VFXConfiguration[6])
VFXConfiguration[2].Transparency = VFXConfiguration[2].Transparency + VFXConfiguration[3]
end
end
end
if VFXConfiguration[1] == "Rotate" then
if VFXConfiguration[2].Transparency < 1 then
VFXConfiguration[2].Rotation = VFXConfiguration[2].Rotation + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
end
end	

end
end
end		
end

function FindPartOnRay(Position, Direction, MaxDistance, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * MaxDistance), Ignore)
end

function Values()
if WalkVal > 10 then
WalkInvert = true
elseif WalkVal < 1 then
WalkInvert = false
end

if WalkInvert then
WalkVal = WalkVal - 1
elseif not WalkInvert then
WalkVal = WalkVal + 1	
end	
end

function Animations()
	
local Velocity = (RootPart.Velocity * Vector3.new(1,0,1)).magnitude
local FallVelocity = RootPart.Velocity.Y
local Floor = FindPartOnRay(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0,-1,0)).lookVector, 4, Character)


if Velocity > 1 and Floor then
if WalkInvert then
	
RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame * CFrame.Angles(0,0,0.5), 0.2)
LeftHip.C1 = Animate(LeftHip.C1,LeftLegDefaultCFrame * CFrame.Angles(0,0,0.5), 0.2)

elseif not WalkInvert then

RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame * CFrame.Angles(0,0,-0.5), 0.2)
LeftHip.C1 = Animate(LeftHip.C1,LeftLegDefaultCFrame * CFrame.Angles(0,0,-0.5), 0.2)
	
end	
else
RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
LeftHip.C1 = Animate(LeftHip.C1,LeftLegDefaultCFrame, 0.2)
end

if Velocity < 1 and Floor and not Attacking then
Walk = false
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0, 0, 1), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.5,0.5, -1) * CFrame.Angles(0 , -0.2, -1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.5,0.5 ,-1) * CFrame.Angles(0 , 0.2, 1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0.05,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.05,0,0), 0.2)
end

if Velocity > 1 and Floor and not Attacking then
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1,0.3, 0.2) * CFrame.Angles(-0.5 , -0, -0.5), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1,0.3, 0.2) * CFrame.Angles(-0.5 , 0, 0.5), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
end

if FallVelocity > 1 and not Floor and not Attacking then

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.1, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.5,0.5, -1) * CFrame.Angles(0 , -0.2, -1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.5,0.5 ,-1) * CFrame.Angles(0 , 0.2, 1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0.05,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.05,0,0.3), 0.2)
end


if FallVelocity < -1 and not Floor and not Attacking then

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.1, 0, -0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.5,0.5, -1) * CFrame.Angles(0 , -0.2, -1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.5,0.5 ,-1) * CFrame.Angles(0 , 0.2, 1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0.05,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.05,0,0.3), 0.2)
end
end

--[[ Loop ]]--

while 1 do
Wait2()

Values()
VisualEffects()
Animations()

end