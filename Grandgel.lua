--[[ Grandgel Script ]]--
--[[ Declarations ]]--
wait(.0000000000000000000001)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Head = Character.Head
local Torso = Character.Torso
local Right_Arm = Character["Right Arm"]
local Right_Leg = Character["Right Leg"]
local Left_Arm = Character["Left Arm"]
local Left_Leg = Character["Left Leg"]
local Humanoid = Character.Humanoid
local Animation = "Idle"
local Mouse = Player:GetMouse()
local LeftShoulder = Torso["Left Shoulder"] 
local Left_Hip = Torso["Left Hip"] 
local RightShoulder = Torso["Right Shoulder"] 
local Right_Hip = Torso["Right Hip"] 
local Root = Character.HumanoidRootPart
local RootJoint = Root.RootJoint
local Attacking = false
local CanAttack = true
local Anim = "Idle"
local Combo = 1 
local Blocking = false
local MaxMana = 100
local Mana = 100
local MaxBlock = 100
local Effects = {}
local Color = "White"
local Blocks = false
local Absorbed = false
local BlocksN = 0
local AbsorbedBlocks = 0
Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45

local cf = CFrame.new
local WalkForward = false
	
local Block = Instance.new("BoolValue",Character)
Block.Value = false
Block.Name = "Block"

local BlockD = Instance.new("IntValue", Block)
BlockD.Name = "BlockDurability"
BlockD.Value = 100

Animator = Humanoid.Animator
Animate = Character.Animate
Animate.idle.Animation2:Remove()

local RootCFrame = CFrame.fromEulerAnglesXYZ(-1.57,0,3.14)
Necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Right_Hip_C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Left_Hip_C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

Movemment = 1
Walk = 0

Left_Shoulder = Instance.new("Weld", Torso)
Left_Shoulder.Part0 = Torso
Left_Shoulder.Part1 = Left_Arm
Left_Shoulder.Name = "Left Shoulder"
Left_Shoulder.C0 = CFrame.new(-1.5,0,0)

Right_Shoulder = Instance.new("Weld", Torso)
Right_Shoulder.Part0 = Torso
Right_Shoulder.Part1 = Right_Arm
Right_Shoulder.Name = "Right Shoulder"
Right_Shoulder.C0 = CFrame.new(1.5,0,0)

local Services = {

SoundService = game:GetService("SoundService");
Players = game:GetService("Players");
Debris = game:GetService("Debris");
Workspace = game:GetService("Workspace");
Lighting = game:GetService("Lighting");
HttpService = game:GetService("HttpService");
InsertService = game:GetService("InsertService");
	
}

MaxCooldown1 = 180
MaxCooldown2 = 200
MaxCooldown3 = 210
MaxCooldown4 = 230
MaxCooldownE = 10

Cooldown1 = MaxCooldown1
Cooldown2 = MaxCooldown2
Cooldown3 = MaxCooldown3
Cooldown4 = MaxCooldown4
CooldownE = MaxCooldownE

LeftShoulder.Parent = nil
RightShoulder.Parent = nil

Animator = Humanoid.Animator
Animate = Character.Animate


wait(0.1)
local HealthBarGUI = Instance.new("ScreenGui", Player.PlayerGui)
HealthBarGUI.Name = "HealthBarGUI"

local HealthBarP1 = Instance.new("Frame", HealthBarGUI)
HealthBarP1.Name = "HealthBarPart1"
HealthBarP1.Size = UDim2.new(0,300,0,40)
HealthBarP1.Position = UDim2.new(0,350,0,550)
HealthBarP1.Style = "RobloxRound"

local HealthBarP2 = Instance.new("Frame", HealthBarP1)
HealthBarP2.Name = "HealthBarPart2"
HealthBarP2.Size = UDim2.new(0,285,0,20)
HealthBarP2.Position = UDim2.new(0,0,0,0)

local HealthBarText = Instance.new("TextLabel", HealthBarP1)
HealthBarText.Name = "HealthBarText"
HealthBarText.Size = UDim2.new(0,285,0,20)
HealthBarText.Position = UDim2.new(0,0,0,0)
HealthBarText.BackgroundColor3 = Color3.new(0,1,0)	
HealthBarText.TextScaled = true
HealthBarText.Text = "Health"
HealthBarText.TextStrokeTransparency = 0
HealthBarText.BackgroundTransparency = 1
HealthBarText.TextStrokeColor3 = Color3.new(1,1,1)
HealthBarText.TextColor3 = Color3.new(0,0,0)
HealthBarText.Font = "SciFi"

local ManaBarGUI = Instance.new("ScreenGui", Player.PlayerGui)
ManaBarGUI.Name = "ManaBarGUI"

local ManaBarP1 = Instance.new("Frame", ManaBarGUI)
ManaBarP1.Name = "ManaBarPart1"
ManaBarP1.Size = UDim2.new(0,300,0,40)
ManaBarP1.Position = UDim2.new(0,350,0,500)
ManaBarP1.Style = "RobloxRound"

local ManaBarP2 = Instance.new("Frame", ManaBarP1)
ManaBarP2.Name = "ManaBarPart2"
ManaBarP2.Size = UDim2.new(0,285,0,20)
ManaBarP2.Position = UDim2.new(0,0,0,0)
ManaBarP2.BackgroundColor3 = BrickColor.new("Bright yellow").Color

local ManaBarText = Instance.new("TextLabel", ManaBarP1)
ManaBarText.Name = "ManaBarText"
ManaBarText.Size = UDim2.new(0,285,0,20)
ManaBarText.Position = UDim2.new(0,0,0,0)	
ManaBarText.TextScaled = true
ManaBarText.Text = "Holyness"
ManaBarText.BackgroundTransparency = 1
ManaBarText.TextStrokeTransparency = 0
ManaBarText.TextStrokeColor3 = Color3.new(1,1,1)
ManaBarText.TextColor3 = Color3.new(0,0,0)
ManaBarText.Font = "SciFi"

local BlockGUI = Instance.new("ScreenGui", Player.PlayerGui)
BlockGUI.Name = "BlockGUI"

local BlockBarP1 = Instance.new("Frame", BlockGUI)
BlockBarP1.Name = "BlockBarP1"
BlockBarP1.Size = UDim2.new(0,300,0,40)
BlockBarP1.Position = UDim2.new(0,350,0,450)
BlockBarP1.Style = "RobloxRound"

local BlockBarP2 = Instance.new("Frame", BlockBarP1)
BlockBarP2.Name = "BlockBarP2"
BlockBarP2.Size = UDim2.new(0,285,0,20)
BlockBarP2.Position = UDim2.new(0,0,0,0)
BlockBarP2.BackgroundColor3 = BrickColor.new("White").Color

local BlockBarText = Instance.new("TextLabel", BlockBarP1)
BlockBarText.Name = "BlockBarText"
BlockBarText.Size = UDim2.new(0,285,0,20)
BlockBarText.Position = UDim2.new(0,0,0,0)	
BlockBarText.TextScaled = true
BlockBarText.Text = "Guard"
BlockBarText.BackgroundTransparency = 1
BlockBarText.TextStrokeTransparency = 0
BlockBarText.TextStrokeColor3 = Color3.new(1,1,1)
BlockBarText.TextColor3 = Color3.new(0,0,0)
BlockBarText.Font = "SciFi"

local CoolDownGUI = Instance.new("ScreenGui", Player.PlayerGui)
CoolDownGUI.Name = "CoolDownGUI"

local CoolDowns = Instance.new("Frame", CoolDownGUI)
CoolDowns.Name = "CoolDowns"
CoolDowns.Size = UDim2.new(0,200,0,200)
CoolDowns.Position = UDim2.new(0.81,0,0.68,0)
CoolDowns.Style = "RobloxRound"

local CoolDown1Frame = Instance.new("Frame", CoolDowns)
CoolDown1Frame.Name = "CoolDown1Frame"
CoolDown1Frame.Size = UDim2.new(0,80,0,50)
CoolDown1Frame.Position = UDim2.new(0,0,0,0)
CoolDown1Frame.BackgroundTransparency = 0.5
CoolDown1Frame.BackgroundColor3 = BrickColor.White().Color

local CoolDown1Bar = Instance.new("Frame", CoolDown1Frame)
CoolDown1Bar.Name = "CoolDown1Bar"
CoolDown1Bar.Size = UDim2.new(0,80,0,50)
CoolDown1Bar.Position = UDim2.new(0,0,0,0)	
CoolDown1Bar.BackgroundColor3 = BrickColor.White().Color

local CoolDown1Text = Instance.new("TextLabel", CoolDown1Frame)
CoolDown1Text.Name = "CoolDown1Text"
CoolDown1Text.Size = UDim2.new(0,80,0,50)
CoolDown1Text.Position = UDim2.new(0,0,0,0)	
CoolDown1Text.BackgroundTransparency = 1
CoolDown1Text.TextScaled = true
CoolDown1Text.Text = "Z - Angel's Lunge"
CoolDown1Text.TextStrokeTransparency = 0
CoolDown1Text.TextStrokeColor3 = Color3.new(1,1,1)
CoolDown1Text.TextColor3 = Color3.new(0,0,0)
CoolDown1Text.Font = "SciFi"

local CoolDown2Frame = Instance.new("Frame", CoolDowns)
CoolDown2Frame.Name = "CoolDown2Frame"
CoolDown2Frame.Size = UDim2.new(0,80,0,50)
CoolDown2Frame.Position = UDim2.new(0.55,0,0,0)
CoolDown2Frame.BackgroundTransparency = 0.5
CoolDown2Frame.BackgroundColor3 = BrickColor.White().Color

local CoolDown2Bar = Instance.new("Frame", CoolDown2Frame)
CoolDown2Bar.Name = "CoolDown2Bar"
CoolDown2Bar.Size = UDim2.new(0,80,0,50)
CoolDown2Bar.Position = UDim2.new(0,0,0,0)	
CoolDown2Bar.BackgroundColor3 = BrickColor.White().Color

local CoolDown2Text = Instance.new("TextLabel", CoolDown2Frame)
CoolDown2Text.Name = "CoolDown2Text"
CoolDown2Text.Size = UDim2.new(0,80,0,50)
CoolDown2Text.Position = UDim2.new(0,0,0,0)	
CoolDown2Text.BackgroundTransparency = 1
CoolDown2Text.TextScaled = true
CoolDown2Text.Text = "X - Angelical Blocks"
CoolDown2Text.TextStrokeTransparency = 0
CoolDown2Text.TextStrokeColor3 = Color3.new(1,1,1)
CoolDown2Text.TextColor3 = Color3.new(0,0,0)
CoolDown2Text.Font = "SciFi"

local CoolDown3Frame = Instance.new("Frame", CoolDowns)
CoolDown3Frame.Name = "CoolDown3Frame"
CoolDown3Frame.Size = UDim2.new(0,80,0,50)
CoolDown3Frame.Position = UDim2.new(0,0,0.4,0)
CoolDown3Frame.BackgroundTransparency = 0.5
CoolDown3Frame.BackgroundColor3 = BrickColor.White().Color

local CoolDown3Bar = Instance.new("Frame", CoolDown3Frame)
CoolDown3Bar.Name = "CoolDown3Bar"
CoolDown3Bar.Size = UDim2.new(0,80,0,50)
CoolDown3Bar.Position = UDim2.new(0,0,0,0)	
CoolDown3Bar.BackgroundColor3 = BrickColor.White().Color

local CoolDown3Text = Instance.new("TextLabel", CoolDown3Frame)
CoolDown3Text.Name = "CoolDown3Text"
CoolDown3Text.Size = UDim2.new(0,80,0,50)
CoolDown3Text.Position = UDim2.new(0,0,0,0)	
CoolDown3Text.BackgroundTransparency = 1
CoolDown3Text.TextScaled = true
CoolDown3Text.Text = "C - Ground  Smash"
CoolDown3Text.TextStrokeTransparency = 0
CoolDown3Text.TextStrokeColor3 = Color3.new(1,1,1)
CoolDown3Text.TextColor3 = Color3.new(0,0,0)
CoolDown3Text.Font = "SciFi"


local CoolDown4Frame = Instance.new("Frame", CoolDowns)
CoolDown4Frame.Name = "CoolDown4Frame"
CoolDown4Frame.Size = UDim2.new(0,80,0,50)
CoolDown4Frame.Position = UDim2.new(0.55,0,0.4,0)
CoolDown4Frame.BackgroundTransparency = 0.5
CoolDown4Frame.BackgroundColor3 = BrickColor.White().Color

local CoolDown4Bar = Instance.new("Frame", CoolDown4Frame)
CoolDown4Bar.Name = "CoolDown4Bar"
CoolDown4Bar.Size = UDim2.new(0,80,0,50)
CoolDown4Bar.Position = UDim2.new(0,0,0,0)	
CoolDown4Bar.BackgroundColor3 = BrickColor.White().Color

local CoolDown4Text = Instance.new("TextLabel", CoolDown4Frame)
CoolDown4Text.Name = "CoolDown4Text"
CoolDown4Text.Size = UDim2.new(0,80,0,50)
CoolDown4Text.Position = UDim2.new(0,0,0,0)	
CoolDown4Text.BackgroundTransparency = 1
CoolDown4Text.TextScaled = true
CoolDown4Text.Text = "V - Angel's Fury"
CoolDown4Text.TextStrokeTransparency = 0
CoolDown4Text.TextStrokeColor3 = Color3.new(1,1,1)
CoolDown4Text.TextColor3 = Color3.new(0,0,0)
CoolDown4Text.Font = "SciFi"

local CoolDownEFrame = Instance.new("Frame", CoolDowns)
CoolDownEFrame.Name = "CoolDownEFrame"
CoolDownEFrame.Size = UDim2.new(0,180,0,50)
CoolDownEFrame.Position = UDim2.new(0,0,0.74,0)
CoolDownEFrame.BackgroundTransparency = 0.5
CoolDownEFrame.BackgroundColor3 = BrickColor.White().Color

local CoolDownEBar = Instance.new("Frame", CoolDownEFrame)
CoolDownEBar.Name = "CoolDownEBar"
CoolDownEBar.Size = UDim2.new(0,180,0,50)
CoolDownEBar.Position = UDim2.new(0,0,0,0)	
CoolDownEBar.BackgroundColor3 = BrickColor.White().Color

local CoolDownEText = Instance.new("TextLabel", CoolDownEFrame)
CoolDownEText.Name = "CoolDownEText"
CoolDownEText.Size = UDim2.new(0,180,0,50)
CoolDownEText.Position = UDim2.new(0,0,0,0)	
CoolDownEText.BackgroundTransparency = 1
CoolDownEText.TextScaled = true
CoolDownEText.Text = "E - Angel's Guard"
CoolDownEText.TextStrokeTransparency = 0
CoolDownEText.TextStrokeColor3 = Color3.new(1,1,1)
CoolDownEText.TextColor3 = Color3.new(0,0,0)
CoolDownEText.Font = "SciFi"
--------[[ Mesh Ids ]]--------

SpikeMeshId = 160003363
SpikeBallId = 9982590
StarMeshId = 45428961
CrystalMeshId = 9756362

--[[ Functions ]]--

function NoOutlines(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
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

local CreateBlockMesh = function(Parent, Scale)


local Mesh = Instance.new("BlockMesh", Parent)
Mesh.Scale = Scale

return Mesh

end

local CreateCylinderMesh = function(Parent, Scale)


local Mesh = Instance.new("CylinderMesh", Parent)
Mesh.Scale = Scale

return Mesh

end

local CreateWedgeMesh = function(Parent, Scale)


local Mesh = Instance.new("SpecialMesh", Parent)
Mesh.MeshType = "Wedge"
Mesh.Scale = Scale

return Mesh

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

local CreateCrystal = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. CrystalMeshId
Mesh.Scale = Scale

return Mesh and Part

end

local CreateSpike = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. SpikeMeshId
Mesh.Scale = Scale

return Mesh and Part

end

local CreateBlockMeshedPart = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)


local Mesh = Instance.new("BlockMesh", Part)
Mesh.Scale = Scale

return Mesh and Part

end


local CreateVelocity = function(Parent,Velocity,Force)
local BodyVelocity = Instance.new("BodyVelocity", Parent)
BodyVelocity.Velocity = Velocity
BodyVelocity.MaxForce = Force	

	
	
return BodyVelocity	
	
end

local MakeSFX = function(Parent, Id, Volume, Pitch)
	
local SFX = Instance.new("Sound", Parent)
SFX.SoundId = "http://www.roblox.com/asset?id=" .. Id
SFX.Name = "SFX"
SFX:Play()
SFX.Volume = Volume
SFX.Pitch = Pitch
SFX.PlayOnRemove = true
SFX:Remove()
	
end




CircleEffect = function(Position, Parent, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "CircleEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.CanCollide = false
Part.Position = Position
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(0,0,0)

Services.Debris:AddItem(Part, Time)


table.insert(Effects, {Part, "Circle", Time, SX, SY, SZ})


end

BlockEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "BlockEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.Position = Position
Part.CanCollide = false
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("BlockMesh", Part)
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)

Services.Debris:AddItem(Part, Time)

table.insert(Effects, {Part, "Block", Time, SX, SY, SZ})


end

--[[ Weapon ]]--
Raptorive = Instance.new("Model", Character)
Raptorive.Name = "Raptorive"

Handle = CreatePart(Raptorive, "Handle", "Medium stone grey", Vector3.new(0.273, 3.335, 0.273), "Neon", 0, "Block")
HandleMesh = CreateCylinderMesh(Handle, Vector3.new(0.955, 1, 0.995))
Part1 = CreatePart(Raptorive, "Part1", "Medium stone grey", Vector3.new(0.273, 0.326, 2.001), "SmoothPlastic", 0, "Block")
Part1Mesh = CreateBlockMesh(Part1, Vector3.new(0.991, 1, 1))

Detail1 = CreatePart(Raptorive, "Detail1", "Medium stone grey", Vector3.new(0.273, 0.273, 0.331), "SmoothPlastic", 0, "Block")
Detail1Mesh = CreateBlockMesh(Detail1, Vector3.new(0.994, 0.28, 1))
Detail2 = CreatePart(Raptorive, "Detail2", "Medium stone grey", Vector3.new(0.273, 0.273, 0.331), "SmoothPlastic", 0, "Block")
Detail2Mesh = CreateBlockMesh(Detail2, Vector3.new(0.994, 0.28, 1))
Detail3 = CreatePart(Raptorive, "Detail3", "Medium stone grey", Vector3.new(0.273, 0.273, 0.331), "SmoothPlastic", 0, "Block")
Detail3Mesh = CreateBlockMesh(Detail3, Vector3.new(0.994, 0.28, 1))
Detail4 = CreatePart(Raptorive, "Detail4", "Medium stone grey", Vector3.new(0.273, 0.273, 0.331), "SmoothPlastic", 0, "Block")
Detail4Mesh = CreateBlockMesh(Detail4, Vector3.new(0.994, 0.28, 1))
Detail5 = CreatePart(Raptorive, "Detail5", "Medium stone grey", Vector3.new(0.273, 0.273, 0.331), "SmoothPlastic", 0, "Block")
Detail5Mesh = CreateBlockMesh(Detail5, Vector3.new(0.994, 0.28, 1))
Detail6 = CreatePart(Raptorive, "Detail6", "Medium stone grey", Vector3.new(0.273, 0.273, 0.331), "SmoothPlastic", 0, "Block")
Detail6Mesh = CreateBlockMesh(Detail6, Vector3.new(0.994, 0.28, 1))
Detail7 = CreatePart(Raptorive, "Detail7", "Medium stone grey", Vector3.new(0.273, 0.273, 0.331), "SmoothPlastic", 0, "Block")
Detail7Mesh = CreateBlockMesh(Detail7, Vector3.new(0.994, 0.28, 1))
Detail8 = CreatePart(Raptorive, "Detail8", "Medium stone grey", Vector3.new(0.273, 0.322, 0.273), "SmoothPlastic", 0, "Block")
Detail8Mesh = CreateBlockMesh(Detail8, Vector3.new(0.991, 1, 0.974))
Detail9 = CreatePart(Raptorive, "Detail9", "Medium stone grey", Vector3.new(0.273, 0.322, 0.273), "SmoothPlastic", 0, "Block")
Detail9Mesh = CreateWedgeMesh(Detail9, Vector3.new(0.986, 1, 0.75))
Detail10 = CreatePart(Raptorive, "Detail10", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail10Mesh = CreateWedgeMesh(Detail10, Vector3.new(0.986, 1, 0.974))
Detail11 = CreatePart(Raptorive, "Detail11", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail11Mesh = CreateWedgeMesh(Detail11, Vector3.new(0.986, 1, 0.974))
Detail12 = CreatePart(Raptorive, "Detail12", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail12Mesh = CreateWedgeMesh(Detail12, Vector3.new(0.986, 1, 0.974))
Detail13 = CreatePart(Raptorive, "Detail13", "Medium stone grey", Vector3.new(0.273, 0.322, 0.273), "SmoothPlastic", 0, "Block")
Detail13Mesh = CreateBlockMesh(Detail13, Vector3.new(0.991, 1, 0.974))
Detail14 = CreatePart(Raptorive, "Detail14", "Medium stone grey", Vector3.new(0.273, 0.884, 0.902), "Neon", 0, "Block")
Detail14Mesh = CreateBlockMesh(Detail14, Vector3.new(0.845, 1, 1))
Detail15 = CreatePart(Raptorive, "Detail15", "Medium stone grey", Vector3.new(0.273, 6.296, 1.256), "Neon", 0, "Block")
Detail15Mesh = CreateBlockMesh(Detail15, Vector3.new(0.845, 1, 1))
Detail16 = CreatePart(Raptorive, "Detail16", "Medium stone grey", Vector3.new(0.273, 0.993, 0.273), "SmoothPlastic", 0, "Block")
Detail16Mesh = CreateWedgeMesh(Detail16, Vector3.new(0.986, 1, 0.974))
Detail17 = CreatePart(Raptorive, "Detail17", "Medium stone grey", Vector3.new(0.273, 0.634, 0.595), "SmoothPlastic", 0, "Block")
Detail17Mesh = CreateWedgeMesh(Detail17, Vector3.new(0.986, 1, 1))
Detail18 = CreatePart(Raptorive, "Detail18", "Medium stone grey", Vector3.new(0.273, 0.633, 0.645), "SmoothPlastic", 0, "Block")
Detail18Mesh = CreateWedgeMesh(Detail18, Vector3.new(0.986, 1, 1))
Detail19 = CreatePart(Raptorive, "Detail19", "Medium stone grey", Vector3.new(0.273, 0.322, 0.273), "SmoothPlastic", 0, "Block")
Detail19Mesh = CreateBlockMesh(Detail19, Vector3.new(0.991, 1, 0.974))
Detail20 = CreatePart(Raptorive, "Detail20", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail20Mesh = CreateWedgeMesh(Detail20, Vector3.new(0.986, 1, 0.974))
Detail21 = CreatePart(Raptorive, "Detail21", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "SmoothPlastic", 0, "Block")
Detail21Mesh = CreateWedgeMesh(Detail21, Vector3.new(0.986, 0.828, 0.974))
Detail22 = CreatePart(Raptorive, "Detail22", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail22Mesh = CreateWedgeMesh(Detail22, Vector3.new(0.986, 1, 0.974))
Detail23 = CreatePart(Raptorive, "Detail23", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail23Mesh = CreateWedgeMesh(Detail23, Vector3.new(0.986, 1, 0.974))
Detail24 = CreatePart(Raptorive, "Detail24", "Medium stone grey", Vector3.new(0.273, 0.546, 0.273), "SmoothPlastic", 0, "Block")
Detail24Mesh = CreateWedgeMesh(Detail24, Vector3.new(0.986, 1, 0.715))
Detail25 = CreatePart(Raptorive, "Detail25", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail25Mesh = CreateWedgeMesh(Detail25, Vector3.new(0.986, 1, 0.974))
Detail26 = CreatePart(Raptorive, "Detail26", "Medium stone grey", Vector3.new(0.273, 0.35, 0.273), "SmoothPlastic", 0, "Block")
Detail26Mesh = CreateWedgeMesh(Detail26, Vector3.new(0.986, 1, 0.974))
Detail27 = CreatePart(Raptorive, "Detail27", "Medium stone grey", Vector3.new(0.273, 0.409, 0.273), "SmoothPlastic", 0, "Block")
Detail27Mesh = CreateWedgeMesh(Detail27, Vector3.new(0.986, 1, 0.974))
Detail28 = CreatePart(Raptorive, "Detail28", "Medium stone grey", Vector3.new(0.273, 0.409, 0.273), "SmoothPlastic", 0, "Block")
Detail28Mesh = CreateWedgeMesh(Detail28, Vector3.new(0.986, 1, 0.974))
Detail29 = CreatePart(Raptorive, "Detail29", "Medium stone grey", Vector3.new(0.28, 0.273, 0.273), "SmoothPlastic", 0, "Block")
Detail29Mesh = CreateWedgeMesh(Detail29, Vector3.new(1, 0.934, 0.047))
Detail29 = CreatePart(Raptorive, "Detail29", "Medium stone grey", Vector3.new(0.273, 0.35, 0.273), "SmoothPlastic", 0, "Block")
Detail29Mesh = CreateWedgeMesh(Detail29, Vector3.new(0.986, 1, 0.974))
Detail30 = CreatePart(Raptorive, "Detail30", "Medium stone grey", Vector3.new(0.273, 0.35, 0.273), "SmoothPlastic", 0, "Block")
Detail30Mesh = CreateWedgeMesh(Detail30, Vector3.new(0.986, 1, 0.974))
Detail31 = CreatePart(Raptorive, "Detail31", "Medium stone grey", Vector3.new(0.273, 0.278, 0.273), "SmoothPlastic", 0, "Block")
Detail31Mesh = CreateCylinderMesh(Detail31, Vector3.new(0.845, 1, 0.995))
Detail32 = CreatePart(Raptorive, "Detail32", "Medium stone grey", Vector3.new(0.986, 1, 0.974), "SmoothPlastic", 0, "Block")
Detail32Mesh = CreateWedgeMesh(Detail32, Vector3.new(0.273, 0.643, 0.273))
Detail33 = CreatePart(Raptorive, "Detail33", "Institutional white", Vector3.new(0.28, 0.273, 0.273), "SmoothPlastic", 0, "Block")
Detail33Mesh = CreateBlockMesh(Detail33, Vector3.new(1, 0.934, 0.047))
Detail34 = CreatePart(Raptorive, "Detail34", "Medium stone grey", Vector3.new(0.273, 0.322, 0.273), "SmoothPlastic", 0, "Block")
Detail34Mesh = CreateBlockMesh(Detail34, Vector3.new(0.991, 1.1, 1.1))
Detail35 = CreatePart(Raptorive, "Detail35", "Medium stone grey", Vector3.new(0.273, 0.278, 0.273), "SmoothPlastic", 0, "Block")
Detail35Mesh = CreateCylinderMesh(Detail35, Vector3.new(0.845, 1, 0.995))
Detail36 = CreatePart(Raptorive, "Detail36", "Medium stone grey", Vector3.new(0.986, 1, 0.974), "SmoothPlastic", 0, "Block")
Detail36Mesh = CreateWedgeMesh(Detail36, Vector3.new(0.273, 0.643, 0.273))
Detail37 = CreatePart(Raptorive, "Detail37", "Medium stone grey", Vector3.new(0.273, 0.643, 0.273), "SmoothPlastic", 0, "Block")
Detail37Mesh = CreateWedgeMesh(Detail37, Vector3.new(0.986, 1, 0.974))
Detail38 = CreatePart(Raptorive, "Detail38", "Institutional white", Vector3.new(0.28, 0.273, 0.273), "SmoothPlastic", 0, "Block")
Detail38Mesh = CreateBlockMesh(Detail38, Vector3.new(1, 0.934, 0.047))
Detail39 = CreatePart(Raptorive, "Detail39", "Medium stone grey", Vector3.new(0.273, 0.993, 0.273), "SmoothPlastic", 0, "Block")
Detail39Mesh = CreateWedgeMesh(Detail39, Vector3.new(0.986, 1, 0.974))
Detail40 = CreatePart(Raptorive, "Detail40", "Medium stone grey", Vector3.new(0.273, 0.322, 0.273), "SmoothPlastic", 0, "Block")
Detail40Mesh = CreateWedgeMesh(Detail40, Vector3.new(0.991, 1, 0.974))
Detail41 = CreatePart(Raptorive, "Detail41", "Medium stone grey", Vector3.new(0.273, 0.322, 0.273), "SmoothPlastic", 0, "Block")
Detail41Mesh = CreateBlockMesh(Detail41, Vector3.new(0.991, 1, 0.974))
Detail42 = CreatePart(Raptorive, "Detail42", "Institutional white", Vector3.new(0.28, 0.273, 0.273), "SmoothPlastic", 0, "Block")
Detail42Mesh = CreateBlockMesh(Detail42, Vector3.new(1, 0.934, 0.047))
Detail43 = CreatePart(Raptorive, "Detail43", "Institutional white", Vector3.new(0.28, 0.273, 0.273), "SmoothPlastic", 0, "Block")
Detail43Mesh = CreateWedgeMesh(Detail43, Vector3.new(1, 0.934, 0.047))
Detail44 = CreatePart(Raptorive, "Detail44", "Institutional white", Vector3.new(0.28, 0.273, 0.273), "SmoothPlastic", 0, "Block")
Detail44Mesh = CreateBlockMesh(Detail44, Vector3.new(1, 0.934, 0.047))



Neon1 = CreatePart(Raptorive, "Neon1", "Medium stone grey", Vector3.new(0.273, 0.273, 1.878), "Neon", 0, "Block")
Neon1Mesh = CreateBlockMesh(Neon1, Vector3.new(0.993, 0.854, 1))
Neon2 = CreatePart(Raptorive, "Neon2", "Medium stone grey", Vector3.new(0.273, 0.275, 0.273), "Neon", 0, "Block")
Neon2Mesh = CreateCylinderMesh(Neon2, Vector3.new(0.955, 1, 0.995))
Neon3 = CreatePart(Raptorive, "Neon3", "Medium stone grey", Vector3.new(0.273, 0.275, 0.273), "Neon", 0, "Block")
Neon3Mesh = CreateCylinderMesh(Neon3, Vector3.new(0.955, 1, 0.995))
Neon4 = CreatePart(Raptorive, "Neon4", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon4Mesh = CreateBlockMesh(Neon4, Vector3.new(0.316, 0.308, 0.301))
Neon5 = CreatePart(Raptorive, "Neon5", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon5Mesh = CreateBlockMesh(Neon5, Vector3.new(0.316, 0.308, 0.301))
Neon6 = CreatePart(Raptorive, "Neon6", "Medium stone grey", Vector3.new(0.273, 0.273, 0.406), "Neon", 0, "Block")
Neon6Mesh = CreateBlockMesh(Neon6, Vector3.new(0.427, 0.308, 1))
Neon7 = CreatePart(Raptorive, "Neon7", "Medium stone grey", Vector3.new(0.273, 0.273, 0.406), "Neon", 0, "Block")
Neon7Mesh = CreateBlockMesh(Neon7, Vector3.new(0.427, 0.308, 1))
Neon8 = CreatePart(Raptorive, "Neon8", "Medium stone grey", Vector3.new(0.273, 0.273, 0.301), "Neon", 0, "Block")
Neon8Mesh = CreateBlockMesh(Neon8, Vector3.new(0.427, 0.308, 1))
Neon9 = CreatePart(Raptorive, "Neon9", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon9Mesh = CreateBlockMesh(Neon9, Vector3.new(0.316, 0.308, 0.301))
Neon10 = CreatePart(Raptorive, "Neon10", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon10Mesh = CreateBlockMesh(Neon10, Vector3.new(0.316, 0.308, 0.301))
Neon11 = CreatePart(Raptorive, "Neon11", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon11Mesh = CreateBlockMesh(Neon11, Vector3.new(0.316, 0.308, 0.301))
Neon12 = CreatePart(Raptorive, "Neon12", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon12Mesh = CreateBlockMesh(Neon12, Vector3.new(0.993, 0.798, 0.367))
Neon13 = CreatePart(Raptorive, "Neon13", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon13Mesh = CreateBlockMesh(Neon13, Vector3.new(0.316, 0.308, 0.301))
Neon14 = CreatePart(Raptorive, "Neon14", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon14Mesh = CreateBlockMesh(Neon14, Vector3.new(0.316, 0.308, 0.301))
Neon15 = CreatePart(Raptorive, "Neon15", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon15Mesh = CreateBlockMesh(Neon15, Vector3.new(0.993, 0.308, 0.367))
Neon16 = CreatePart(Raptorive, "Neon16", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon16Mesh = CreateBlockMesh(Neon16, Vector3.new(0.993, 0.268, 0.367))
Neon17 = CreatePart(Raptorive, "Neon17", "Medium stone grey", Vector3.new(0.273, 0.273, 0.443), "Neon", 0, "Block")
Neon17Mesh = CreateBlockMesh(Neon17, Vector3.new(0.427, 0.308, 1))
Neon18 = CreatePart(Raptorive, "Neon18", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon18Mesh = CreateBlockMesh(Neon18, Vector3.new(0.993, 0.268, 0.367))
Neon19 = CreatePart(Raptorive, "Neon19", "Medium stone grey", Vector3.new(0.273, 0.273, 0.273), "Neon", 0, "Block")
Neon19Mesh = CreateBlockMesh(Neon19, Vector3.new(0.993, 0.268, 0.367))


HandleWeld = CreateWeld(Handle,   CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0), CFrame.new(0,0,0), Handle, Right_Arm, "HandleToRightArm")
Part1Weld = CreateWeld(Part1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.88389206, -0.0218544006, 1, 0, 0, 0, 1, 0, 0, 0, 1), Part1, Handle, "Part1ToHandle")



Detail1Weld = CreateWeld(Detail1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.960935593, -1.62220383, 1, 0, 0, 0, 0.499999017, -0.866026103, 0, 0.866026103, 0.499999017), Detail1, Handle, "Detail1ToHandle")
Detail2Weld = CreateWeld(Detail2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new( 0.00417786837, -1.17822075, -1.49600983, 1, 0, 0, 0, 0.499999017, -0.866026103, 0, 0.866026103, 0.499999017), Detail2, Handle, "Detail2ToHandle")
Detail3Weld = CreateWeld(Detail3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.61048889, -1.24348831, 1, 0, 0, 0, 0.499999017, -0.866026103, 0, 0.866026103, 0.499999017), Detail3, Handle, "Detail3ToHandle")
Detail4Weld = CreateWeld(Detail4,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.296977997, -2.00553894, 1, 0, 0, 0, 0.499999017, -0.866026103, 0, 0.866026103, 0.499999017), Detail4, Handle, "Detail4ToHandle")
Detail5Weld = CreateWeld(Detail5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.538106918, -1.8640976, 1, 0, 0, 0, 0.499999017, -0.866026103, 0, 0.866026103, 0.499999017), Detail5, Handle, "Detail5ToHandle")
Detail6Weld = CreateWeld(Detail6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.751184464, -1.73957443, 1, 0, 0, 0, 0.499999017, -0.866026103, 0, 0.866026103, 0.499999017), Detail6, Handle, "Detail6ToHandle")
Detail7Weld = CreateWeld(Detail7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.38223267, -1.37896729, 1, 0, 0, 0, 0.499999017, -0.866026103, 0, 0.866026103, 0.499999017), Detail7, Handle, "Detail7ToHandle")

Detail8Weld = CreateWeld(Detail8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 0.414188385, 0.00159835815, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail8, Handle, "Detail8ToHandle")
Detail9Weld = CreateWeld(Detail9,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.89867783, 0.01222229, 1, 0, 0, 0, -1, 0, 0, 0, -1), Detail9, Handle, "Detail9ToHandle")
Detail10Weld = CreateWeld(Detail10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.887386322, 2.06279182, 1, 0, 0, 0, 0.642787099, 0.766045034, 0, -0.766045034, 0.642787099), Detail10, Handle, "Detail10ToHandle")
Detail11Weld = CreateWeld(Detail11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.892616272, 0.00225448608, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail11, Handle, "Detail11ToHandle")
Detail12Weld = CreateWeld(Detail12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.07769394, -0.00225448608, 1, 0, 0, 0, -1, 0, 0, 0, -1), Detail12, Handle, "Detail12ToHandle")
Detail13Weld = CreateWeld(Detail13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.55998993, 0.00159835815, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail13, Handle, "Detail13ToHandle")
Detail14Weld = CreateWeld(Detail14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00354233384, -5.91411972, 5.85757446, 1, 0, 0, 0, 0.709413111, 0.704792976, 0, -0.704792976, 0.709413111), Detail14, Handle, "Detail14ToHandle")
Detail15Weld = CreateWeld(Detail15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00354233384, -5.17701721, -0.00965118408, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail15, Handle, "Detail15ToHandle")
Detail16Weld = CreateWeld(Detail16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.123825073, -2.10261536, 1, 0, 0, 0, -0.642787099, -0.766045034, 0, 0.766045034, -0.642787099), Detail16, Handle, "Detail16ToHandle")
Detail17Weld = CreateWeld(Detail17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00418826938, -2.35297775, 0.300479889, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail17, Handle, "Detail17ToHandle")
Detail18Weld = CreateWeld(Detail18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00418826938, -2.35554886, 0.315811157, -1, 0, 0, 0, 1, 0, 0, 0, -1), Detail18, Handle, "Detail18ToHandle")
Detail19Weld = CreateWeld(Detail19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0067512095, 1.16830444, 1.88051987, -1, 0, 0, 0, 0, -1, 0, -1, 0), Detail19, Handle, "Detail19ToHandle")
Detail20Weld = CreateWeld(Detail20,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.06936646, 0.00225448608, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail20, Handle, "Detail20ToHandle")
Detail21Weld = CreateWeld(Detail21,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.82059479, -0.00225448608, 1, 0, 0, 0, -1, 0, 0, 0, -1), Detail21, Handle, "Detail21ToHandle")
Detail22Weld = CreateWeld(Detail22,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.0636177063, 0.00225448608, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail22, Handle, "Detail22ToHandle")
Detail23Weld = CreateWeld(Detail23,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -0.884284973, -0.00225448608, 1, 0, 0, 0, -1, 0, 0, 0, -1), Detail23, Handle, "Detail23ToHandle")
Detail24Weld = CreateWeld(Detail24,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.97835541, 0.0330886841, 1, 0, 0, 0, -1, 0, 0, 0, -1), Detail24, Handle, "Detail24ToHandle")
Detail25Weld = CreateWeld(Detail25,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 0.248687744, -0.00225448608, 1, 0, 0, 0, -1, 0, 0, 0, -1), Detail25, Handle, "Detail25ToHandle")
Detail26Weld = CreateWeld(Detail26,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00417786837, -1.47661591, 1.8833847, -1, 0, 0, 0, 0, -1, 0, -1, 0), Detail26, Handle, "Detail26ToHandle")
Detail27Weld = CreateWeld(Detail27,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00417786837, -2.25164413, 0.781738281, -1, 0, 0, 0, 0.642788053, -0.76604414, 0, -0.76604414, -0.642788053), Detail27, Handle, "Detail27ToHandle")
Detail28Weld = CreateWeld(Detail28,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0067512095, -2.27151489, 0.76216507, 1, 0, 0, 0, 0.642788112, 0.766044259, 0, -0.766044259, 0.642788112), Detail28, Handle, "Detail28ToHandle")
Detail29Weld = CreateWeld(Detail29,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0067512095, 1.18003082, 1.87266541, -1, 0, 0, 0, 0, -1, 0, -1, 0), Detail29, Handle, "Detail29ToHandle")
Detail30Weld = CreateWeld(Detail30,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0067512095, -1.50440216, 1.88116074, 1, 0, 0, 0, 0, 1, 0, -1, 0), Detail30, Handle, "Detail30ToHandle")
Detail31Weld = CreateWeld(Detail31,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.87462616, -0.0038549006, -1.14951324, 0, -1, 0, -1, 0, 0, 0, 0, -1), Detail31, Handle, "Detail31ToHandle")
Detail32Weld = CreateWeld(Detail32,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00417786837, 0.5037117, 1.82992935, -1, 0, 0, 0, -0.76604414, -0.642788053, 0, -0.642788053, 0.76604414), Detail32, Handle, "Detail32ToHandle")
Detail33Weld = CreateWeld(Detail33,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0067512095, 1.87068939, -1.17424393, -1, 0, 0, 0, -1, 0, -0, -0, 1), Detail33, Handle, "Detail33ToHandle")
Detail34Weld = CreateWeld(Detail34,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.1522522, 1.87488556, 1, 0, 0, 0, 0, 1, 0, -1, 0), Detail34, Handle, "Detail34ToHandle")
Detail35Weld = CreateWeld(Detail35,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.87240219, 0.00707417727, -1.17729187, 0, -1, 0, 1, 0, 0, 0, 0, 1), Detail35, Handle, "Detail35ToHandle")
Detail36Weld = CreateWeld(Detail36,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00418826938, 0.459667206, 1.86756516, 1, 0, 0, 0, -0.766044259, 0.642788112, 0, -0.642788112, -0.766044259), Detail36, Handle, "Detail36ToHandle")
Detail37Weld = CreateWeld(Detail37,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00418826938, -0.854734421, 2.09282303, -1, 0, 0, 0, 0.64278692, -0.766044974, 0, -0.766044974, -0.64278692), Detail37, Handle, "Detail37ToHandle")
Detail38Weld = CreateWeld(Detail38,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.87292099, -1.14647293, 1, 0, 0, 0, -1, 0, 0, 0, -1), Detail38, Handle, "Detail38ToHandle")
Detail39Weld = CreateWeld(Detail39,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0067512095, -0.146541595, -2.11876678, -1, 0, 0, 0, -0.64278692, 0.766044974, 0, 0.766044974, 0.64278692), Detail39, Handle, "Detail39ToHandle")
Detail40Weld = CreateWeld(Detail40,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.14051819, 1.88274765, 1, 0, 0, 0, 0, 1, 0, -1, 0), Detail40, Handle, "Detail40ToHandle")
Detail41Weld = CreateWeld(Detail41,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.54716492, 0.00159835815, 1, 0, 0, 0, 1, 0, 0, 0, 1), Detail41, Handle, "Detail41ToHandle")
Detail42Weld = CreateWeld(Detail42,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.1522522, 1.87488556, 1, 0, 0, 0, 0, 1, 0, -1, 0), Detail42, Handle, "Detail42ToHandle")
Detail43Weld = CreateWeld(Detail43,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 1.1522522, 1.87488556, 1, 0, 0, 0, 0, 1, 0, -1, 0), Detail43, Handle, "Detail43ToHandle")
Detail44Weld = CreateWeld(Detail44,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0067512095, 1.18003082, 1.87266541, -1, 0, 0, 0, 0, -1, 0, -1, 0), Detail44, Handle, "Detail44ToHandle")



Neon1Weld = CreateWeld(Neon1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.88774109, -0.0173492432, 1, 0, 0, 0, 1, 0, 0, 0, 1), Neon1, Handle, "Neon1ToHandle")
Neon2Weld = CreateWeld(Neon2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.87281418, 0.00770971179, -1.1772995, 0, -1, 0, 1, 0, 0, 0, 0, 1), Neon2, Handle, "Neon2ToHandle")
Neon3Weld = CreateWeld(Neon3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.87504196, -0.00321412086, -1.14951324, 0, -1, 0, -1, 0, 0, 0, 0, -1), Neon3, Handle, "Neon3ToHandle")
Neon4Weld = CreateWeld(Neon4,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08185005, 0.0941467285, -1.05866241, 0.70157665, 0.712594032, -8.56536531e-009, 6.66747013e-009, 0, 1, 0.712593973, -0.70157671, 8.8937071e-009), Neon4, Handle, "Neon4ToHandle")
Neon5Weld = CreateWeld(Neon5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.29707146, 0.0935020447, -1.2705555, 0.70157665, 0.712594032, -8.56536531e-009, 6.66747013e-009, 0, 1, 0.712593973, -0.70157671, 8.8937071e-009), Neon5, Handle, "Neon5ToHandle")
Neon6Weld = CreateWeld(Neon6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 0.0948104858, -0.738594055, 1, 0, 0, 0, 0, 1, 0, -1, 0), Neon6, Handle, "Neon6ToHandle")
Neon7Weld = CreateWeld(Neon7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 0.0935020447, 0.243991852, 1, 0, 0, 0, 0, 1, 0, -1, 0), Neon7, Handle, "Neon7ToHandle")
Neon8Weld = CreateWeld(Neon8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 0.0935020447, -1.6633606, 1, 0, 0, 0, 0, 1, 0, -1, 0), Neon8, Handle, "Neon8ToHandle")
Neon9Weld = CreateWeld(Neon9,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.385313034, 0.0954627991, -0.372894287, 0.70157665, 0.712594032, -8.56536531e-009, 6.66747013e-009, 0, 1, 0.712593973, -0.70157671, 8.8937071e-009), Neon9, Handle, "Neon9ToHandle")
Neon10Weld = CreateWeld(Neon10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.676118851, 0.0948104858, -0.659202576, 0.70157665, 0.712594032, -8.56536531e-009, 6.66747013e-009, 0, 1, 0.712593973, -0.70157671, 8.8937071e-009), Neon10, Handle, "Neon10ToHandle")
Neon11Weld = CreateWeld(Neon11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0240783691, 0.0935020447, 0.0301685333, 0.70157665, 0.712594032, -8.56536531e-009, 6.66747013e-009, 0, 1, 0.712593973, -0.70157671, 8.8937071e-009), Neon11, Handle, "Neon11ToHandle")
Neon12Weld = CreateWeld(Neon12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.66571045, -0.00481796265, 1, 0, 0, 0, 1, 0, 0, 0, 1), Neon12, Handle, "Neon12ToHandle")
Neon13Weld = CreateWeld(Neon13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.314868927, 0.094165802, 0.31646347, 0.70157665, 0.712594032, -8.56536531e-009, 6.66747013e-009, 0, 1, 0.712593973, -0.70157671, 8.8937071e-009), Neon13, Handle, "Neon13ToHandle")
Neon14Weld = CreateWeld(Neon14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.660757065, 0.094165802, 0.657003403, 0.70157665, 0.712594032, -8.56536531e-009, 6.66747013e-009, 0, 1, 0.712593973, -0.70157671, 8.8937071e-009), Neon14, Handle, "Neon14ToHandle")
Neon15Weld = CreateWeld(Neon15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 0.0954475403, 1.42395401, 1, 0, 0, 0, 0, 1, 0, -1, 0), Neon15, Handle, "Neon15ToHandle")
Neon16Weld = CreateWeld(Neon16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.05566406, 0.974744797, 1, 0, 0, 0, 0.76604414, 0.642788053, 0, -0.642788053, 0.76604414), Neon16, Handle, "Neon16ToHandle")
Neon17Weld = CreateWeld(Neon17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, 0.094165802, 1.15481186, 1, 0, 0, 0, 0, 1, 0, -1, 0), Neon17, Handle, "Neon17ToHandle")
Neon18Weld = CreateWeld(Neon18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.27021408, 0.77048111, 1, 0, 0, 0, 0.866025507, 0.500000119, 0, -0.500000119, 0.866025507), Neon18, Handle, "Neon18ToHandle")
Neon19Weld = CreateWeld(Neon19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00417786837, -1.44578171, 0.531032562, 1, 0, 0, 0, 0.939692795, 0.342019945, 0, -0.342019945, 0.939692795), Neon19, Handle, "Neon19ToHandle")

Blade = Detail15

local BlockReference1 = CreatePart(Character, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local BlockReference1Weld = CreateWeld(BlockReference1,  CFrame.new(0,8,0), CFrame.new(0,0,0), BlockReference1, Root, "BlockReference1Weld")

local BlockReference2 = CreatePart(Character, "Reference2", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local BlockReference2Weld = CreateWeld(BlockReference2,  CFrame.new(3,5,0), CFrame.new(0,0,0), BlockReference2, Root, "BlockReference2Weld")

local BlockReference3 = CreatePart(Character, "Reference3", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local BlockReference3Weld = CreateWeld(BlockReference3,  CFrame.new(-3,5,0), CFrame.new(0,0,0), BlockReference3, Root, "BlockReference3Weld")

local Block1 = CreatePart(Character, "Block1", "Medium stone grey", Vector3.new(1,1,1), "Neon", 1, "Block")
local Block2 = CreatePart(Character, "Block2", "Medium stone grey", Vector3.new(1,1,1), "Neon", 1, "Block")
local Block3 = CreatePart(Character, "Block3", "Medium stone grey", Vector3.new(1,1,1), "Neon", 1, "Block")
local Block1Weld = CreateWeld(Block1,  CFrame.new(0,0,0), CFrame.new(0,0,0),  Block1, BlockReference1, "Block1Weld")
local Block2Weld = CreateWeld(Block2,  CFrame.new(0,0,0), CFrame.new(0,0,0),  Block2, BlockReference2, "Block2Weld")
local Block3Weld = CreateWeld(Block3,  CFrame.new(0,0,0), CFrame.new(0,0,0),  Block3, BlockReference3, "Block3Weld")

--[[ Damage Function ]]--


function DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)
	
local HitHumanoid = Hit.Parent.Humanoid


local Damage = math.random(Min, Max)
local BuffDamage = 2 * BlocksN

coroutine.resume(coroutine.create(function()
HitHumanoid:TakeDamage(Damage)

if Absorbed then
wait(0.5)
HitHumanoid:TakeDamage(BuffDamage)
local HitCharacter = Hit.Parent

if HitCharacter:FindFirstChild("Head") then
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Crimson", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-5,5),2,math.random(-5,5))


local DisplayGui = Instance.new("BillboardGui", DamageShowingPart)
DisplayGui.Name = "Damage"
DisplayGui.AlwaysOnTop = true
DisplayGui.Size = UDim2.new(5, 0, 5, 0)

local DisplayNumber = Instance.new("TextLabel", DisplayGui)
DisplayNumber.Size = UDim2.new(1,0,1,0)
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.White().Color
DisplayNumber.TextStrokeTransparency = 0
DisplayNumber.BackgroundTransparency = 1
DisplayNumber.Font = "SciFi"
DisplayNumber.TextScaled = true
DisplayNumber.Text = BuffDamage

	
local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,2,0)	
	
Services.Debris:AddItem(DamageShowingPart, 3)

MakeSFX(Hit, 183763487, 1 , 1)

end
end
end))
	
if Type == "Normal" then
	
local Push = CreateVelocity(Hit.Parent.Torso, Torso.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
Display(Hit.Parent, Damage)

elseif Type == "Ranged" then
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
Display(Hit.Parent, Damage)

elseif Type == "Knockdown" then
	
		
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Display(Hit.Parent, Damage)
Services.Debris:AddItem(Push, 0.3)

coroutine.resume(coroutine.create(function()
	
HitHumanoid.PlatformStand = true
wait(1)
HitHumanoid.PlatformStand = false	
	
	
end))	
end

if HitSFX == "Penetration" then
	
MakeSFX(Hit, 199149269, 1 , 1)

elseif HitSFX == "Punch" then
	
MakeSFX(Hit, 278062209, 1 , 1)
	
	
	
	
end
end

function Display(HitCharacter, DisplayTxt)
if HitCharacter:FindFirstChild("Head") then
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Crimson", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-5,5),2,math.random(-5,5))


local DisplayGui = Instance.new("BillboardGui", DamageShowingPart)
DisplayGui.Name = "Damage"
DisplayGui.AlwaysOnTop = true
DisplayGui.Size = UDim2.new(5, 0, 5, 0)

local DisplayNumber = Instance.new("TextLabel", DisplayGui)
DisplayNumber.Size = UDim2.new(1,0,1,0)
DisplayNumber.TextStrokeColor3 = BrickColor.White().Color
DisplayNumber.TextColor3 = BrickColor.Black().Color
DisplayNumber.TextStrokeTransparency = 0
DisplayNumber.BackgroundTransparency = 1
DisplayNumber.Font = "SciFi"
DisplayNumber.TextScaled = true
DisplayNumber.Text = DisplayTxt

if string.sub((DisplayTxt),1,1) ~= "+" then

if DisplayTxt > 19 then
	
DisplayNumber.TextColor3 = BrickColor.Red().Color
	


elseif DisplayTxt > 9 then
	
DisplayNumber.TextColor3 = BrickColor.Yellow().Color
	
end
end


if string.sub((DisplayTxt),1,1) == "+" then
DisplayNumber.TextColor3 = BrickColor.Green().Color
end
	
local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,2,0)	
	
Services.Debris:AddItem(DamageShowingPart, 3)
	
end	
end 
function ValidateDamage(Part, Distance ,Min , Max, Type, HitSFX, Knockback)
for _,WorkspaceChildren in pairs(workspace:children()) do
	
local HitHumanoid = WorkspaceChildren:findFirstChild("Humanoid")

if HitHumanoid ~= nil then
local Hit = WorkspaceChildren:findFirstChild("Torso")

if Hit ~= nil then
	
local Target = Hit.Position - Part.Position

local Magnitude = Target.magnitude

if Magnitude <= Distance and WorkspaceChildren.Name ~= Player.Name then
	
local HitBlock = Hit.Parent:FindFirstChild("Block")	
	
if HitBlock ~= nil and HitBlock:FindFirstChild("BlockDurability") and HitBlock.Value == true then

local HitBlock2 = Hit.Parent.Block.BlockDurability	
	
if HitBlock2.Value > 15 then
	
local HitN = math.random(1,5)
	
HitBlock2.Value = HitBlock2.Value - 15	

if HitN == 1 then
MakeSFX(Hit ,199148971, 0.5, 1)	
end

if HitN == 2 then
MakeSFX(Hit ,199149025, 0.5, 1)	
end

if HitN == 3 then
MakeSFX(Hit ,199149072, 0.5, 1)	
end

if HitN == 4 then
MakeSFX(Hit ,199149109, 0.5, 1)	
end

if HitN == 5 then
MakeSFX(Hit ,199149119, 0.5, 1)	
end
return
end	
end

DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)

	

end
end
end
end
end
 
function ValidateHeal(Part, Distance)
for _,WorkspaceChildren in pairs(workspace:children()) do
	
local HitHumanoid = WorkspaceChildren:findFirstChild("Humanoid")

if HitHumanoid ~= nil then
local Hit = WorkspaceChildren:findFirstChild("Torso")

if Hit ~= nil then
	
local Target = Hit.Position - Part.Position

local Magnitude = Target.magnitude

if Magnitude <= Distance then
local Heal = math.random(5,10) 	
	
Hit.Parent.Humanoid.Health = Hit.Parent.Humanoid.Health + Heal
Display(Hit.Parent, "+" .. Heal)
	
end
end
end
end
end

function Attack1()

Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

for i = 1,15 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-0.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(0,0,2.8), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	
	
MakeSFX(Blade, 231917871,1, 0.8)

coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 8 ,8, 11, "Normal", "Penetration", 15)
end))

for i = 1,25 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,-0.5)* CFrame.Angles(0,0,0.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.3),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.3, 0, -1) * CFrame.Angles(0,0,-0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end	

Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45
Attacking = false
end

function Attack2()
	Attacking = true
Humanoid.WalkSpeed = 6
Humanoid.JumpPower = 25

for i = 1,15 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	

MakeSFX(Blade, 231917871,1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 8 ,8, 11, "Normal", "Penetration", 15)
end))
for i = 1,25 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,2),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	

Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45
	Attacking = false
end

function Attack3()
Attacking = true
Humanoid.WalkSpeed = 6
Humanoid.JumpPower = 25


for i = 1,25 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,2),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(1.6,0,-1.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end	

MakeSFX(Blade, 231917871,1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 8 ,8, 11, "Normal", "Penetration", 15)
end))

for i = 1,15 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end	

Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45
Attacking = false

end

function Guard()	
	
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
Blocking = true


	
while Blocking and BlockD.Value > 0 do
wait()
Block.Value = true

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(1.6,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(1.6,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(0,0,1.57),0.2)	

end

Attacking = false
Block.Value = false
Blocking = false
Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45
end

function GroundSmash()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0


for i = 1,25 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(-0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1, 1, 0) * CFrame.Angles(3.2,0,-0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end

MakeSFX(Torso, 142070127, 1, 1)
ValidateDamage(Torso, 60 ,23, 26, "Knockdown", "Penetration", 15)
local Hit, Position = RayCast(Torso.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if Hit ~= nil then
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
Reference.Anchored = true
Reference.CFrame = CFrame.new(Position)
game:GetService("Debris"):AddItem(Reference,0.1)
for i=1 , 50 do
	
local Ground = CreatePart(Services.Workspace, "Ground", Hit.BrickColor.Color, Vector3.new(math.random(1,3), math.random(1,3), math.random(1,3)), Hit.Material, 0, "Block")
Ground.Anchored = true
Ground.CanCollide = true
Ground.CFrame = CFrame.new(Position) * CFrame.new(math.random(-30,30), 0, math.random(-30,30)) * CFrame.Angles(math.random(-50,50),math.random(-50,50), math.random(-50,50))

game:GetService("Debris"):AddItem(Ground,10)

end
end
	
for i = 1,25 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0.1) * CFrame.Angles(-0.2,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0.1) * CFrame.Angles(-0.2,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end

Attacking = false
Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45

end

function AngelicalBlocks()
Attacking = true
MakeSFX(Blade, 137463716, 1, 1)
CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0 ,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)
	
end
CoolDown1Text.Text = "Z - Block throw"
CoolDown2Text.Text = "X - Absorb"
CoolDown3Text.Text = "C - Angelical Possesion"
CoolDown4Text.Text = "V - Ground  Destruction"



Block1.Transparency = 0
Block2.Transparency = 0
Block3.Transparency = 0
BlocksN = 3
Attacking = false
Blocks = true
end

function AngelsLunge()
Attacking = true

for i = 1,25 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, -1) * CFrame.Angles(1.6,0,0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,1.57),0.2)
		
end
MakeSFX(Blade, 231917871, 1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 8 ,8, 13, "Knockdown", "Penetration", 15)
end))

for i = 1,15 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,-10,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1.6),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1.6,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,0),0.2)
		
end

Attacking = false
	
end

function AngelsFury()

Attacking = true


Humanoid.WalkSpeed = 25
Humanoid.JumpPower = 0

MakeSFX(Blade, 137463716, 1, 1)
CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0 ,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

	
end

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(-0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1, 1, 0) * CFrame.Angles(3.2,0,-0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end

MakeSFX(Torso, 142070127, 1, 1)
ValidateDamage(Torso, 60 ,23, 26, "Knockdown", "Penetration", 15)
local Hit, Position = RayCast(Torso.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if Hit ~= nil then
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
Reference.Anchored = true
Reference.CFrame = CFrame.new(Position)
game:GetService("Debris"):AddItem(Reference,0.1)
for i=1 , 50 do
	
local Ground = CreatePart(Services.Workspace, "Ground", Hit.BrickColor.Color, Vector3.new(math.random(1,3), math.random(1,3), math.random(1,3)), Hit.Material, 0, "Block")
Ground.Anchored = true
Ground.CanCollide = true
Ground.CFrame = CFrame.new(Position) * CFrame.new(math.random(-30,30), 0, math.random(-30,30)) * CFrame.Angles(math.random(-50,50),math.random(-50,50), math.random(-50,50))

game:GetService("Debris"):AddItem(Ground,10)

end
end

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

end

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,2),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(1.6,0,-1.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end	

MakeSFX(Blade, 231917871,1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 20 ,8, 11, "Normal", "Penetration", 15)
end))

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

end

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	

MakeSFX(Blade, 231917871,1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 8 ,8, 11, "Normal", "Penetration", 15)
end))
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,2),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,2),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(1.6,0,-1.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end	

MakeSFX(Blade, 231917871,1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 20 ,8, 11, "Normal", "Penetration", 15)
end))

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

end

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	

MakeSFX(Blade, 231917871,1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 8 ,8, 11, "Normal", "Penetration", 15)
end))
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,2),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	

MakeSFX(Blade, 137463716, 1, 1)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)

for i = 1,50 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, -1) * CFrame.Angles(1.6,0,0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,1.57),0.2)
		
end

MakeSFX(Blade, 231917871,1, 0.8)
coroutine.resume(coroutine.create(function()
wait(0.3)
ValidateDamage(Blade, 8 ,23, 26, "Knockdown", "Penetration", 15)
end))
for i = 1,15 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,-10,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1.6),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1.6,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,0),0.2)
		
end

Attacking = false
Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45
end

function BlockThrow()
Attacking = true
MakeSFX(Blade, 137463716, 1, 1)
CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0 ,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)
	
end

if Block1.Transparency == 0 then


local BlockLaunch1 = CreatePart(workspace, "Reference", "Medium stone grey", Vector3.new(1,1,1), "Neon", 0, "Block")
BlockLaunch1.Position = Block1.Position
BlockLaunch1.CFrame = CFrame.new(BlockLaunch1.Position, Mouse.Hit.p)
CreateVelocity(BlockLaunch1,BlockLaunch1.CFrame.lookVector * 100,Vector3.new(10000,10000,10000))
Services.Debris:AddItem(BlockLaunch1, 10)

coroutine.resume(coroutine.create(function()
while BlockLaunch1 do
wait()	

BlockLaunch1.Rotation = BlockLaunch1.Rotation + Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	
end	
end))

Connection = BlockLaunch1.Touched:connect(function(Hit)
if Hit ~= Raptorive and Hit.Parent ~= Character and Hit.className ~= "Accessory" then

CircleEffect(BlockLaunch1.Position, Services.Workspace, 10,10,10, 0.1, Color, "Neon", 0.5)
ValidateDamage(BlockLaunch1, 8 ,10, 14, "Normal", "Penetration", 15)
BlockLaunch1:Remove()
Connection:disconnect()

end
wait()
Block1.Transparency = 1
end)

elseif Block2.Transparency == 0 then

local BlockLaunch2 = CreatePart(workspace, "Reference", "Medium stone grey", Vector3.new(1,1,1), "Neon", 0, "Block")
BlockLaunch2.Position = Block2.Position
BlockLaunch2.CFrame = CFrame.new(BlockLaunch2.Position, Mouse.Hit.p)
CreateVelocity(BlockLaunch2,BlockLaunch2.CFrame.lookVector * 100,Vector3.new(10000,10000,10000))
Services.Debris:AddItem(BlockLaunch2, 10)

coroutine.resume(coroutine.create(function()
while BlockLaunch2 ~= nil do
wait()	

BlockLaunch2.Rotation = BlockLaunch2.Rotation + Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	
end	
end))

Connection = BlockLaunch2.Touched:connect(function(Hit)
if Hit ~= Raptorive and Hit.Parent ~= Character and Hit.className ~= "Accessory" then

CircleEffect(BlockLaunch2.Position, Services.Workspace, 10,10,10, 0.1, Color, "Neon", 0.5)
ValidateDamage(BlockLaunch2, 8 ,10, 14, "Normal", "Penetration", 15)
BlockLaunch2:Remove()
Connection:disconnect()


end
wait()
Block2.Transparency = 1
end)

elseif Block3.Transparency == 0 then

local BlockLaunch3 = CreatePart(workspace, "Reference", "Medium stone grey", Vector3.new(1,1,1), "Neon", 0, "Block")
BlockLaunch3.Position = Block3.Position
BlockLaunch3.CFrame = CFrame.new(BlockLaunch3.Position, Mouse.Hit.p)
CreateVelocity(BlockLaunch3,BlockLaunch3.CFrame.lookVector * 100,Vector3.new(10000,10000,10000))
Services.Debris:AddItem(BlockLaunch3, 10)

coroutine.resume(coroutine.create(function()
while BlockLaunch3 ~= nil do
wait()	

BlockLaunch3.Rotation = BlockLaunch3.Rotation + Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	
	
end	
end))

Connection = BlockLaunch3.Touched:connect(function(Hit)
if Hit ~= Raptorive and Hit.Parent ~= Character and Hit.className ~= "Accessory" then

CircleEffect(BlockLaunch3.Position, Services.Workspace, 10,10,10, 0.1, Color, "Neon", 0.5)
ValidateDamage(BlockLaunch3, 8 ,10, 14, "Normal", "Penetration", 15)
BlockLaunch3:Remove()
Connection:disconnect()

end
end)
wait()
Block3.Transparency = 1
end
BlocksN = BlocksN - 1
Attacking = false

end

function Absorb()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

MakeSFX(Blade, 137463716, 1, 1)
CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0 ,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)
	
end
for i = 1, 20 do
wait()
Block1.Transparency = Block1.Transparency + 0.05	
end

for i = 1, 20 do
wait()
Block2.Transparency = Block2.Transparency + 0.05	
end

for i = 1, 20 do
wait()
Block3.Transparency = Block3.Transparency + 0.05	
end

Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 45
Attacking = false	
Absorbed = true
AbsorbedBlocks = BlocksN 

coroutine.resume(coroutine.create(function()
	
wait(25)

Absorbed = false	
AbsorbedBlocks = 0	
	
	
end))

end

function AngelicalPossesion()
	
Attacking = true
MakeSFX(Blade, 137463716, 1, 1)
CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0 ,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)
	
end

local BlockLaunch1 = CreatePart(workspace, "Reference", "Medium stone grey", Vector3.new(1,1,1), "Neon", 0, "Block")
BlockLaunch1.Position = Block1.Position
BlockLaunch1.CFrame = CFrame.new(BlockLaunch1.Position, Mouse.Hit.p)
CreateVelocity(BlockLaunch1,BlockLaunch1.CFrame.lookVector * 100,Vector3.new(10000,10000,10000))
Services.Debris:AddItem(BlockLaunch1, 10)

coroutine.resume(coroutine.create(function()
while BlockLaunch1 do
wait()	

BlockLaunch1.Rotation = BlockLaunch1.Rotation + Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	
end	
end))

local BlockLaunch2 = CreatePart(workspace, "Reference", "Medium stone grey", Vector3.new(1,1,1), "Neon", 0, "Block")
BlockLaunch2.Position = Block2.Position
BlockLaunch2.CFrame = CFrame.new(BlockLaunch2.Position, Mouse.Hit.p)
CreateVelocity(BlockLaunch2,BlockLaunch2.CFrame.lookVector * 100,Vector3.new(10000,10000,10000))
Services.Debris:AddItem(BlockLaunch2, 10)

coroutine.resume(coroutine.create(function()
while BlockLaunch2 ~= nil do
wait()	

BlockLaunch2.Rotation = BlockLaunch2.Rotation + Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	
end	
end))

local BlockLaunch3 = CreatePart(workspace, "Reference", "Medium stone grey", Vector3.new(1,1,1), "Neon", 0, "Block")
BlockLaunch3.Position = Block3.Position
BlockLaunch3.CFrame = CFrame.new(BlockLaunch3.Position, Mouse.Hit.p)
CreateVelocity(BlockLaunch3,BlockLaunch3.CFrame.lookVector * 100,Vector3.new(10000,10000,10000))
Services.Debris:AddItem(BlockLaunch3, 10)

coroutine.resume(coroutine.create(function()
while BlockLaunch3 ~= nil do
wait()	

BlockLaunch3.Rotation = BlockLaunch3.Rotation + Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	
	
end	
end))

Connection = BlockLaunch1.Touched:connect(function(Hit)
if Hit.Parent:FindFirstChild("Humanoid") and Hit ~= Raptorive and Hit.Parent ~= Character and Hit.className ~= "Accessory" then

CircleEffect(BlockLaunch1.Position, Services.Workspace, 10,10,10, 0.1, Color, "Neon", 0.5)
BlockLaunch1:Remove()
Connection:disconnect()
HitHumanoid = Hit.Parent.Humanoid


coroutine.resume(coroutine.create(function()

for i = 1,3 do
wait(1)
local Damage =  math.random(6,8)
HitHumanoid:TakeDamage(Damage)
local HitCharacter = Hit.Parent

BlockEffect(HitCharacter.Torso.Position, Services.Workspace, 1,1,1, 3,3,3, 0.3, Color, "Neon", 0.5)			
CircleEffect(HitCharacter.Torso.Position, Services.Workspace, 7,7,7, 0.3,  Color, "Neon", 0.5)	


if HitCharacter:FindFirstChild("Head") then
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Crimson", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-5,5),2,math.random(-5,5))


local DisplayGui = Instance.new("BillboardGui", DamageShowingPart)
DisplayGui.Name = "Damage"
DisplayGui.AlwaysOnTop = true
DisplayGui.Size = UDim2.new(5, 0, 5, 0)

local DisplayNumber = Instance.new("TextLabel", DisplayGui)
DisplayNumber.Size = UDim2.new(1,0,1,0)
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.White().Color
DisplayNumber.TextStrokeTransparency = 0
DisplayNumber.BackgroundTransparency = 1
DisplayNumber.Font = "SciFi"
DisplayNumber.TextScaled = true
DisplayNumber.Text = Damage

	
local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,2,0)	
	
Services.Debris:AddItem(DamageShowingPart, 3)

MakeSFX(Hit, 183763487, 1 , 1)


end
end
end))

end
end)

Connection = BlockLaunch2.Touched:connect(function(Hit)
if Hit.Parent:FindFirstChild("Humanoid") and Hit ~= Raptorive and Hit.Parent ~= Character and Hit.className ~= "Accessory" then

CircleEffect(BlockLaunch2.Position, Services.Workspace, 10,10,10, 0.1, Color, "Neon", 0.5)
BlockLaunch2:Remove()
Connection:disconnect()

coroutine.resume(coroutine.create(function()

for i = 1,3 do
wait(1)
local Damage =  math.random(6,8)
HitHumanoid:TakeDamage(Damage)
local HitCharacter = Hit.Parent

BlockEffect(HitCharacter.Torso.Position, Services.Workspace, 1,1,1, 3,3,3, 0.3, Color, "Neon", 0.5)			
CircleEffect(HitCharacter.Torso.Position, Services.Workspace, 7,7,7, 0.3,  Color, "Neon", 0.5)	


if HitCharacter:FindFirstChild("Head") then
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Crimson", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-5,5),2,math.random(-5,5))


local DisplayGui = Instance.new("BillboardGui", DamageShowingPart)
DisplayGui.Name = "Damage"
DisplayGui.AlwaysOnTop = true
DisplayGui.Size = UDim2.new(5, 0, 5, 0)

local DisplayNumber = Instance.new("TextLabel", DisplayGui)
DisplayNumber.Size = UDim2.new(1,0,1,0)
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.White().Color
DisplayNumber.TextStrokeTransparency = 0
DisplayNumber.BackgroundTransparency = 1
DisplayNumber.Font = "SciFi"
DisplayNumber.TextScaled = true
DisplayNumber.Text = Damage

	
local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,2,0)	
	
Services.Debris:AddItem(DamageShowingPart, 3)

MakeSFX(Hit, 183763487, 1 , 1)


end
end
end))
end
end)

Connection = BlockLaunch3.Touched:connect(function(Hit)
if Hit.Parent:FindFirstChild("Humanoid") and Hit ~= Raptorive and Hit.Parent ~= Character and Hit.className ~= "Accessory" then

CircleEffect(BlockLaunch3.Position, Services.Workspace, 10,10,10, 0.1, Color, "Neon", 0.5)
BlockLaunch3:Remove()
Connection:disconnect()

coroutine.resume(coroutine.create(function()

for i = 1,3 do
wait(1)
local Damage =  math.random(6,8)
HitHumanoid:TakeDamage(Damage)
local HitCharacter = Hit.Parent

BlockEffect(HitCharacter.Torso.Position, Services.Workspace, 1,1,1, 3,3,3, 0.3, Color, "Neon", 0.5)			
CircleEffect(HitCharacter.Torso.Position, Services.Workspace, 7,7,7, 0.3,  Color, "Neon", 0.5)	


if HitCharacter:FindFirstChild("Head") then
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Crimson", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-5,5),2,math.random(-5,5))


local DisplayGui = Instance.new("BillboardGui", DamageShowingPart)
DisplayGui.Name = "Damage"
DisplayGui.AlwaysOnTop = true
DisplayGui.Size = UDim2.new(5, 0, 5, 0)

local DisplayNumber = Instance.new("TextLabel", DisplayGui)
DisplayNumber.Size = UDim2.new(1,0,1,0)
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.White().Color
DisplayNumber.TextStrokeTransparency = 0
DisplayNumber.BackgroundTransparency = 1
DisplayNumber.Font = "SciFi"
DisplayNumber.TextScaled = true
DisplayNumber.Text = Damage

	
local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,2,0)	
	
Services.Debris:AddItem(DamageShowingPart, 3)

MakeSFX(Hit, 183763487, 1 , 1)


end
end
end))
end
end)



wait()
Block1.Transparency = 1
Block2.Transparency = 1
Block3.Transparency = 1


BlocksN = BlocksN - 1
Attacking = false

end

function GroundDestruction()	
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

MakeSFX(Blade, 137463716, 1, 1)
CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0 ,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)
	
end
for i = 1, 20 do
wait()
Block1.Transparency = Block1.Transparency + 0.05	
end

for i = 1, 20 do
wait()
Block2.Transparency = Block2.Transparency + 0.05	
end

for i = 1, 20 do
wait()
Block3.Transparency = Block3.Transparency + 0.05	
end


for i = 1,15 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-0.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(0,0,2.8), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(1.57,0,0),0.2)

	
end	


for i = 1,15 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,-0.5)* CFrame.Angles(0,0,0.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.3),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.3, 0, -1) * CFrame.Angles(0,0,-0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

	
end	

MakeSFX(Torso, 258057783, 1, 1)
ValidateDamage(Torso, 180 ,10, 15 * BlocksN, "Knockdown", "Penetration", 15)
local Hit, Position = RayCast(Torso.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if Hit ~= nil then
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
Reference.Anchored = true
Reference.CFrame = CFrame.new(Position)
game:GetService("Debris"):AddItem(Reference,0.1)
for i= 1,150 do
	
local Ground = CreatePart(Services.Workspace, "Ground", Hit.BrickColor.Color, Vector3.new(math.random(1,3), math.random(1,3), math.random(1,3)), Hit.Material, 0, "Block")
Ground.Anchored = true
Ground.CanCollide = true
Ground.CFrame = CFrame.new(Position) * CFrame.new(math.random(-90,90), 0, math.random(-90,90)) * CFrame.Angles(math.random(-50,50),math.random(-50,50), math.random(-50,50))

game:GetService("Debris"):AddItem(Ground,30)

end
end

wait(1)

Attacking = false
Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45
end

--[[ Attack functions ]]--

function OnClicked()


if Combo == 1 and not Attacking and CanAttack then
Combo = 2
Attack1()	

elseif Combo == 2 and not Attacking and CanAttack  then
Combo = 3
Attack2()
	

elseif Combo == 3 and not Attacking and CanAttack  then
Combo = 1
Attack3()

end
end


function OnKeyDown(Key)
	
if Key == "e" and not Attacking and BlockD.Value == 100 then
	
Guard()

end		

if Key == "z" and not Attacking and Mana > 15 and Cooldown1 == MaxCooldown1 and not Blocks then

Mana = Mana - 15
Cooldown1 = 0
AngelsLunge()

end	

if Key == "z" and not Attacking and Mana > 5 and Cooldown1 == MaxCooldown1 and Blocks then

Mana = Mana - 15
Cooldown1 = 0
BlockThrow()

end	


if Key == "x" and not Attacking and Mana > 35 and Cooldown2 == MaxCooldown2 and not Blocks then

Mana = Mana - 35
Cooldown2 = 0
AngelicalBlocks()

	
end

if Key == "x" and not Attacking and Mana > 35 and Cooldown2 == MaxCooldown2 and Blocks then

Mana = Mana - 35
Cooldown2 = 0
Absorb()

	
end

if Key == "c" and not Attacking and Mana > 40 and Cooldown3 == MaxCooldown3 and not Blocks then

Mana = Mana - 40
Cooldown3 = 0
GroundSmash()

end	

if Key == "c" and not Attacking and Mana > 40 and Cooldown3 == MaxCooldown3 and Blocks then

Mana = Mana - 40
Cooldown3 = 0
AngelicalPossesion()

end	

if Key == "v" and not Attacking and Mana > 75 and Cooldown4 == MaxCooldown4 and not Blocks then

Mana = Mana - 75
Cooldown4 = 0
AngelsFury()

end	

if Key == "v" and not Attacking and Mana > 75 and Cooldown4 == MaxCooldown4 and Blocks then

Mana = Mana - 75
Cooldown4 = 0
GroundDestruction()

end	
end

function OnKeyUp(Key)
	
if Key == "e" then
Blocking = false

end	
	

end

Mouse.KeyUp:connect(OnKeyUp)
Mouse.KeyDown:connect(OnKeyDown)
Mouse.Button1Down:connect(OnClicked)

--[[ Bars Function ]]--

function Bars()
	
--[[ Mana Bar ]]--	

if Mana ~= MaxMana then
	
Mana = Mana + 0.1

end

if Mana >= MaxMana then
	
Mana = MaxMana	
	
end

--[[ Cooldowns Bars ]]--	

if Cooldown1 ~= MaxCooldown1 then
	
Cooldown1 = Cooldown1 + 1

end

if Cooldown1 >= MaxCooldown1 then
	
Cooldown1 = MaxCooldown1	
	
end



if Cooldown2 ~= MaxCooldown2 then
	
Cooldown2 = Cooldown2 + 0.5
end


if Cooldown2 >= MaxCooldown2 then
	
Cooldown2 = MaxCooldown2	
	
end



if Cooldown3 ~= MaxCooldown3 then
Cooldown3 = Cooldown3 + 0.5
end

if Cooldown3 >= MaxCooldown3 then
	
Cooldown3 = MaxCooldown3	
	
end



if Cooldown4 ~= MaxCooldown4 then
Cooldown4 = Cooldown4 + 0.1
end

if Cooldown4 >= MaxCooldown4 then
	
Cooldown4 = MaxCooldown4
	
end



if CooldownE ~= MaxCooldownE and not Blocking then
CooldownE = CooldownE + 0.1
end

if CooldownE >= MaxCooldownE then
	
CooldownE = MaxCooldownE
	
end

--[[ Health Bar ]]--	

local YellowZone = Humanoid.MaxHealth / 2	
local RedZone = Humanoid.MaxHealth / 4

if Humanoid.Health <= YellowZone then
	
HealthBarP2.BackgroundColor3 = BrickColor.new("Gold").Color
	
end		

if Humanoid.Health <= RedZone then
	
HealthBarP2.BackgroundColor3 = BrickColor.new("Bright red").Color
	
end

if Humanoid.Health >= YellowZone then

HealthBarP2.BackgroundColor3 = BrickColor.new("Lime green").Color
	
end

coroutine.resume(coroutine.create(function()
if not Blocking and BlockD.Value ~= MaxBlock then
wait(1)
BlockD.Value = BlockD.Value + 1
	
end

if BlockD.Value >= MaxBlock then
	
BlockD.Value = MaxBlock	

end
end))

--[[ Resize All Bars ]]--	


CoolDown1Bar.Size = UDim2.new(Cooldown1 / MaxCooldown1,0,0,50)
CoolDown2Bar.Size = UDim2.new(Cooldown2 / MaxCooldown2,0,0,50)
CoolDown3Bar.Size = UDim2.new(Cooldown3 / MaxCooldown3,0,0,50)
CoolDown4Bar.Size = UDim2.new(Cooldown4 / MaxCooldown4,0,0,50)
CoolDownEBar.Size = UDim2.new(CooldownE / MaxCooldownE,0,0,50)

HealthBarP2.Size = UDim2.new(Humanoid.Health / Humanoid.MaxHealth,0,0,25)
BlockBarP2.Size = UDim2.new(BlockD.Value / MaxBlock,0,0,25)
ManaBarP2.Size = UDim2.new(Mana / MaxMana,0,0,25)

	
	
end


--[[ CLerp Declarations ]]--

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

function RayCast(Pos, Dir, Max, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

--[[ CLerp Anims ]]--

while true do
wait()

Humanoid.PlatformStand = false

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

Bars()
Block1Weld.C0 = clerp(Block1Weld.C0,CFrame.new(0,0,0) * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0.2)
Block2Weld.C0 = clerp(Block2Weld.C0,CFrame.new(0,0,0) * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0.2)
Block3Weld.C0 = clerp(Block3Weld.C0,CFrame.new(0,0,0) * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0.2)


if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

end


if 2 < Torvel and Torvel < 22 and HitFloor ~= nil and Attacking == false then
Anim = "Walking"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.3,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0.1) * CFrame.Angles(-0.2,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(0,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(0,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(-0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0.1) * CFrame.Angles(-0.2,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(0,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(0,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0.1) * CFrame.Angles(-0.2,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(0,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(0,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,0),0.2)

end

if Block1.Transparency > 0.9 and Block2.Transparency > 0.9 and Block3.Transparency > 0.9 then
	
CoolDown1Text.Text = "Z - Angel's Lunge"
CoolDown2Text.Text = "X - Angelical Blocks"
CoolDown3Text.Text = "C - Ground Smash"
CoolDown4Text.Text = "V - Angel's Fury"
Blocks = false

end

if #Effects > 0 then
for E = 1, #Effects do
if Effects[E]~=nil then
local Effect = Effects[E]

if Effect ~= nil then
	
local Part = Effect[1]
local Mode = Effect[2]
local Time = Effect[3]
local SizeX = Effect[4]
local SizeY = Effect[5]
local SizeZ = Effect[6]

if Effect[1].Transparency <= 1 then
if Effect[2] == "Block" then
Effect[1].CFrame = Effect[1].CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))

Mesh = Effect[1]:FindFirstChild("Mesh")
if Mesh ~= nil then
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])
end

elseif Effect[2] == "Circle" then
	
if Effect[1]:FindFirstChild("Mesh") ~= nil then
Mesh=Effect[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])
end

else
	
Part.Parent=nil

table.remove(Effects, E)

end
end
end
end
end
end
end