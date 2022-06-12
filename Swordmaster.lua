--[[ Swordmaster Script ]]--
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
local MaxMana = 100
local Mana = 100
local Effects = {}
local Color = "Crimson"
local Zen = false

local cf = CFrame.new
local WalkForward = false
	
local Block = Instance.new("BoolValue",Character)
Block.Value = false
Block.Name = "Block"

local BlockD = Instance.new("IntValue", Block)
BlockD.Name = "BlockDurability"
BlockD.Value = 1000000000000000000000000

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

MaxCooldown1 = 50
MaxCooldown2 = 50
MaxCooldown3 = 100
MaxCooldown4 = 120
MaxCooldownE = 50

Cooldown1 = MaxCooldown1
Cooldown2 = MaxCooldown2
Cooldown3 = MaxCooldown3
Cooldown4 = MaxCooldown4
CooldownE = MaxCooldownE

LeftShoulder.Parent = nil
RightShoulder.Parent = nil

Animator = Humanoid.Animator
Animate = Character.Animate
Animate.idle.Animation2:Remove()

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
ManaBarP2.BackgroundColor3 = BrickColor.new("Cyan").Color

local ManaBarText = Instance.new("TextLabel", ManaBarP1)
ManaBarText.Name = "ManaBarText"
ManaBarText.Size = UDim2.new(0,285,0,20)
ManaBarText.Position = UDim2.new(0,0,0,0)	
ManaBarText.TextScaled = true
ManaBarText.Text = "Mana"
ManaBarText.BackgroundTransparency = 1
ManaBarText.TextStrokeTransparency = 0
ManaBarText.TextStrokeColor3 = Color3.new(1,1,1)
ManaBarText.TextColor3 = Color3.new(0,0,0)
ManaBarText.Font = "SciFi"

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
CoolDown1Bar.BackgroundColor3 =  BrickColor.new("Crimson").Color

local CoolDown1Text = Instance.new("TextLabel", CoolDown1Frame)
CoolDown1Text.Name = "CoolDown1Text"
CoolDown1Text.Size = UDim2.new(0,80,0,50)
CoolDown1Text.Position = UDim2.new(0,0,0,0)	
CoolDown1Text.BackgroundTransparency = 1
CoolDown1Text.TextScaled = true
CoolDown1Text.Text = "Z - Destroyer"
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
CoolDown2Bar.BackgroundColor3 =  BrickColor.new("Crimson").Color

local CoolDown2Text = Instance.new("TextLabel", CoolDown2Frame)
CoolDown2Text.Name = "CoolDown2Text"
CoolDown2Text.Size = UDim2.new(0,80,0,50)
CoolDown2Text.Position = UDim2.new(0,0,0,0)	
CoolDown2Text.BackgroundTransparency = 1
CoolDown2Text.TextScaled = true
CoolDown2Text.Text = "X - Ancient Shield"
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
CoolDown3Bar.BackgroundColor3 =  BrickColor.new("Crimson").Color

local CoolDown3Text = Instance.new("TextLabel", CoolDown3Frame)
CoolDown3Text.Name = "CoolDown3Text"
CoolDown3Text.Size = UDim2.new(0,80,0,50)
CoolDown3Text.Position = UDim2.new(0,0,0,0)	
CoolDown3Text.BackgroundTransparency = 1
CoolDown3Text.TextScaled = true
CoolDown3Text.Text = "C - Doomsday"
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
CoolDown4Bar.BackgroundColor3 =  BrickColor.new("Crimson").Color

local CoolDown4Text = Instance.new("TextLabel", CoolDown4Frame)
CoolDown4Text.Name = "CoolDown4Text"
CoolDown4Text.Size = UDim2.new(0,80,0,50)
CoolDown4Text.Position = UDim2.new(0,0,0,0)	
CoolDown4Text.BackgroundTransparency = 1
CoolDown4Text.TextScaled = true
CoolDown4Text.Text = "V - Ancient Sword"
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
CoolDownEBar.BackgroundColor3 =  BrickColor.new("Crimson").Color

local CoolDownEText = Instance.new("TextLabel", CoolDownEFrame)
CoolDownEText.Name = "CoolDownEText"
CoolDownEText.Size = UDim2.new(0,180,0,50)
CoolDownEText.Position = UDim2.new(0,0,0,0)	
CoolDownEText.BackgroundTransparency = 1
CoolDownEText.TextScaled = true
CoolDownEText.Text = "E - Ancient zen"
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

local CreateCylinderMesh = function(Parent, Scale)


local Mesh = Instance.new("CylinderMesh", Parent)
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

--[[ Model ]]--

local Elucinator = Instance.new("Model", Character)
Elucinator.Name = "Elucinator"

Handle = CreatePart(Elucinator, "Handle", "Medium stone grey", Vector3.new(0.331, 2.774, 0.239), "SmoothPlastic", 0, "Block")
HandleMesh = CreateBlockMesh(Handle, Vector3.new(1, 1, 0.692))
Part1 = CreatePart(Elucinator, "Part1", "Crimson", Vector3.new(0.331, 0.491, 0.239), "SmoothPlastic", 0, "Block")
Part1Mesh = CreateBlockMesh(Part1, Vector3.new(1.02, 1, 0.706))
Part2 = CreatePart(Elucinator, "Part2", "Crimson", Vector3.new(0.331, 0.491, 0.239), "SmoothPlastic", 0, "Block")
Part2Mesh = CreateBlockMesh(Part2, Vector3.new(1.02, 1, 0.706))
Part3 = CreatePart(Elucinator, "Part3", "Crimson", Vector3.new(0.331, 0.491, 0.239), "SmoothPlastic", 0, "Block")
Part3Mesh = CreateBlockMesh(Part3, Vector3.new(1.02, 1, 0.706))
Part4 = CreatePart(Elucinator, "Part4", "Crimson", Vector3.new(0.331, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Part4Mesh = CreateBlockMesh(Part4, Vector3.new(1.02, 0.263, 0.706))
Part5 = CreatePart(Elucinator, "Part5", "Crimson", Vector3.new(0.331, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Part5Mesh = CreateBlockMesh(Part5, Vector3.new(1.02, 0.263, 0.706))
Part6 = CreatePart(Elucinator, "Part6", "Mid gray", Vector3.new(5.661, 0.835, 0.239), "SmoothPlastic", 0, "Block")
Part6Mesh = CreateBlockMesh(Part6, Vector3.new(1.02, 1, 0.572))
Part7 = CreatePart(Elucinator, "Part7", "Mid gray", Vector3.new(0.475, 0.239, 0.4), "SmoothPlastic", 0, "Block")
Part7Mesh = CreateCylinderMesh(Part7, Vector3.new(1, 0.564, 1))
Part8 = CreatePart(Elucinator, "Part8", "Mid gray", Vector3.new(0.833, 0.239, 0.856), "SmoothPlastic", 0, "Block")
Part8Mesh = CreateCylinderMesh(Part8, Vector3.new(1, 0.564, 1))

Neon1 = CreatePart(Elucinator, "Neon1", "White", Vector3.new(0.331, 0.598, 0.239), "Neon", 0, "Block")
Neon1Mesh = CreateBlockMesh(Neon1, Vector3.new(1.01, 1, 0.699))
Neon2 = CreatePart(Elucinator, "Neon2", "White", Vector3.new(0.331, 0.598, 0.239), "Neon", 0, "Block")
Neon2Mesh = CreateBlockMesh(Neon2, Vector3.new(1.01, 1, 0.699))
Neon3 = CreatePart(Elucinator, "Neon3", "White", Vector3.new(0.331, 0.598, 0.239), "Neon", 0, "Block")
Neon3Mesh = CreateBlockMesh(Neon3, Vector3.new(1.01, 1, 0.699))
Neon4 = CreatePart(Elucinator, "Neon4", "White", Vector3.new(0.331, 0.239, 0.239), "Neon", 0, "Block")
Neon4Mesh = CreateBlockMesh(Neon4, Vector3.new(1.01, 0.37, 0.699))
Neon5 = CreatePart(Elucinator, "Neon5", "White", Vector3.new(0.331, 0.239, 0.239), "Neon", 0, "Block")
Neon5Mesh = CreateBlockMesh(Neon5, Vector3.new(1.01, 0.37, 0.699))
Neon6 = CreatePart(Elucinator, "Neon6", "White", Vector3.new(0.239, 0.841, 0.239), "Neon", 0, "Block")
Neon6Mesh = CreateBlockMesh(Neon6, Vector3.new(0.406, 1, 0.603))
Neon7 = CreatePart(Elucinator, "Neon7", "White", Vector3.new(0.239, 0.841, 0.239), "Neon", 0, "Block")
Neon7Mesh = CreateBlockMesh(Neon7, Vector3.new(0.406, 1, 0.603))
Neon8 = CreatePart(Elucinator, "Neon8", "White", Vector3.new(0.239, 0.841, 0.239), "Neon", 0, "Block")
Neon8Mesh = CreateBlockMesh(Neon8, Vector3.new(0.406, 1, 0.603))
Neon9 = CreatePart(Elucinator, "Neon9", "White", Vector3.new(0.239, 0.841, 0.239), "Neon", 0, "Block")
Neon9Mesh = CreateBlockMesh(Neon9, Vector3.new(0.406, 1, 0.603))

Neon10 = CreatePart(Elucinator, "Neon10", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon10Mesh = CreateBlockMesh(Neon10, Vector3.new(0.346, 1, 0.346))

Neon11 = CreatePart(Elucinator, "Neon11", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon11Mesh = CreateBlockMesh(Neon11, Vector3.new(0.346, 0.83, 0.346))

Neon12 = CreatePart(Elucinator, "Neon12", "White", Vector3.new(0.239, 0.298, 0.239), "Neon", 0, "Block")
Neon12Mesh = CreateBlockMesh(Neon12, Vector3.new(0.346, 1, 0.346))

Neon13 = CreatePart(Elucinator, "Neon13", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon13Mesh = CreateBlockMesh(Neon13, Vector3.new(0.346, 0.83, 0.346))

Neon14 = CreatePart(Elucinator, "Neon14", "White", Vector3.new(0.239, 0.397, 0.239), "Neon", 0, "Block")
Neon14Mesh = CreateBlockMesh(Neon14, Vector3.new(0.346, 1, 0.346))

Neon15 = CreatePart(Elucinator, "Neon15", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon15Mesh = CreateBlockMesh(Neon15, Vector3.new(0.346, 1, 0.346))

Neon16 = CreatePart(Elucinator, "Neon16", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon16Mesh = CreateBlockMesh(Neon16, Vector3.new(0.346, 0.83, 0.346))

Neon17 = CreatePart(Elucinator, "Neon17", "White", Vector3.new(0.239, 0.238, 0.239), "Neon", 0, "Block")
Neon17Mesh = CreateBlockMesh(Neon17, Vector3.new(0.346, 1, 0.346))

Neon18 = CreatePart(Elucinator, "Neon18", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon18Mesh = CreateBlockMesh(Neon18, Vector3.new(0.346, 0.83, 0.346))

Neon19 = CreatePart(Elucinator, "Neon19", "White", Vector3.new(0.239, 0.298, 0.239), "Neon", 0, "Block")
Neon19Mesh = CreateBlockMesh(Neon19, Vector3.new(0.346, 1, 0.346))

Neon20 = CreatePart(Elucinator, "Neon20", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon20Mesh = CreateBlockMesh(Neon20, Vector3.new(0.346, 0.83, 0.346))

Neon21 = CreatePart(Elucinator, "Neon21", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon21Mesh = CreateBlockMesh(Neon21, Vector3.new(0.346, 1, 0.346))

Neon22 = CreatePart(Elucinator, "Neon22", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon22Mesh = CreateBlockMesh(Neon22, Vector3.new(0.346, 1, 0.346))

Neon23 = CreatePart(Elucinator, "Neon23", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon23Mesh = CreateBlockMesh(Neon23, Vector3.new(0.346, 0.83, 0.346))

Neon24 = CreatePart(Elucinator, "Neon24", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon24Mesh = CreateBlockMesh(Neon24, Vector3.new(0.346, 1, 0.346))

Neon25 = CreatePart(Elucinator, "Neon25", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon25Mesh = CreateBlockMesh(Neon25, Vector3.new(0.346, 0.83, 0.346))

Neon26 = CreatePart(Elucinator, "Neon26", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon26Mesh = CreateBlockMesh(Neon26, Vector3.new(0.346, 1, 0.346))

Neon27 = CreatePart(Elucinator, "Neon27", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon27Mesh = CreateBlockMesh(Neon27, Vector3.new(0.346, 1, 0.346))

Neon28 = CreatePart(Elucinator, "Neon28", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon28Mesh = CreateBlockMesh(Neon28, Vector3.new(0.346, 0.83, 0.346))

Neon29 = CreatePart(Elucinator, "Neon29", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon29Mesh = CreateBlockMesh(Neon29, Vector3.new(0.346, 1, 0.346))

Neon30 = CreatePart(Elucinator, "Neon30", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon30Mesh = CreateBlockMesh(Neon30, Vector3.new(0.346, 1, 0.346))

Neon31 = CreatePart(Elucinator, "Neon31", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon31Mesh = CreateBlockMesh(Neon31, Vector3.new(0.346, 1, 0.346))

Neon32 = CreatePart(Elucinator, "Neon32", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon32Mesh = CreateBlockMesh(Neon32, Vector3.new(0.346, 1, 0.346))

Neon33 = CreatePart(Elucinator, "Neon33", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon33Mesh = CreateBlockMesh(Neon33, Vector3.new(0.346, 0.83, 0.346))

Neon34 = CreatePart(Elucinator, "Neon34", "White", Vector3.new(0.239, 0.239, 0.239), "Neon", 0, "Block")
Neon34Mesh = CreateBlockMesh(Neon34, Vector3.new(0.346, 0.83, 0.346))

Neon35 = CreatePart(Elucinator, "Neon35", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon35Mesh = CreateBlockMesh(Neon35, Vector3.new(0.346, 1, 0.346))

Neon36 = CreatePart(Elucinator, "Neon36", "White", Vector3.new(0.239, 0.298, 0.239), "Neon", 0, "Block")
Neon36Mesh = CreateBlockMesh(Neon36, Vector3.new(0.346, 1, 0.346))

Neon37 = CreatePart(Elucinator, "Neon37", "White", Vector3.new(0.239, 0.496, 0.239), "Neon", 0, "Block")
Neon37Mesh = CreateBlockMesh(Neon37, Vector3.new(0.346, 1, 0.346))

Neon38 = CreatePart(Elucinator, "Neon38", "White", Vector3.new(0.239, 0.397, 0.239), "Neon", 0, "Block")
Neon38Mesh = CreateBlockMesh(Neon38, Vector3.new(0.346, 1, 0.346))

Neon39 = CreatePart(Elucinator, "Neon39", "White", Vector3.new(0.239, 0.298, 0.239), "Neon", 0, "Block")
Neon39Mesh = CreateBlockMesh(Neon39, Vector3.new(0.346, 1, 0.346))


Detail1 = CreatePart(Elucinator, "Detail1", "White", Vector3.new(0.331, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Detail1Mesh = CreateBlockMesh(Detail1, Vector3.new(1.03, 0.197, 0.713))
Detail2 = CreatePart(Elucinator, "Detail2", "White", Vector3.new(0.331, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Detail2Mesh = CreateBlockMesh(Detail2, Vector3.new(1.03, 0.197, 0.713))
Detail3 = CreatePart(Elucinator, "Detail3", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Detail3Mesh = CreateBlockMesh(Detail3, Vector3.new(0.128, 0.197, 0.713))
Detail4 = CreatePart(Elucinator, "Detail4", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Detail4Mesh = CreateBlockMesh(Detail4, Vector3.new(0.128, 0.253, 0.713))
Detail5 = CreatePart(Elucinator, "Detail5", "White", Vector3.new(0.331, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Detail5Mesh = CreateBlockMesh(Detail5, Vector3.new(1.03, 0.197, 0.713))
Detail6 = CreatePart(Elucinator, "Detail6", "White", Vector3.new(0.331, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Detail6Mesh = CreateBlockMesh(Detail6, Vector3.new(1.03, 0.197, 0.713))
Detail7 = CreatePart(Elucinator, "Detail7", "White", Vector3.new(0.331, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Detail7Mesh = CreateBlockMesh(Detail7, Vector3.new(1.03, 0.197, 0.713))
Detail8 = CreateCrystal(Elucinator, "Detail8", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.124, 0.126, 0.414))
Detail9 = CreateCrystal(Elucinator, "Detail9", "Crimson", Vector3.new(0.124, 0.126, 0.414), "SmoothPlastic", 0, Vector3.new(0.124, 0.126, 0.662))
Detail10 = CreateCrystal(Elucinator, "Detail10", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.165, 0.165, 0.165))
Detail11 = CreateCrystal(Elucinator, "Detail11", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.124, 0.126, 0.414))
Detail12 = CreateCrystal(Elucinator, "Detail12", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.124, 0.126, 0.414))
Detail13 = CreateCrystal(Elucinator, "Detail13", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.165, 0.165, 0.165))
Detail14 = CreateCrystal(Elucinator, "Detail14", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.124, 0.165, 0.165))
Detail15 = CreateCrystal(Elucinator, "Detail15", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.165, 0.165, 0.165))
Detail16 = CreateCrystal(Elucinator, "Detail16", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.124, 0.126, 0.414))
Detail17 = CreateCrystal(Elucinator, "Detail17", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.124, 0.126, 0.414))

Detail18 = CreateBlockMeshedPart(Elucinator, "Detail18", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.128, 0.194, 0.716))
Detail19 = CreateBlockMeshedPart(Elucinator, "Detail19", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.128, 0.194, 0.449))
Detail20 = CreateBlockMeshedPart(Elucinator, "Detail20", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.128, 0.194, 0.648))
Detail21 = CreateBlockMeshedPart(Elucinator, "Detail21", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.086, 0.152, 0.62))
Detail22 = CreateBlockMeshedPart(Elucinator, "Detail22", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.128, 0.194, 0.716))
Detail23 = CreateBlockMeshedPart(Elucinator, "Detail23", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.086, 0.197, 0.495))

Detail24 = CreateBlockMeshedPart(Elucinator, "Detail24", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.106, 0.249, 0.706))
Detail25 = CreateBlockMeshedPart(Elucinator, "Detail25", "White", Vector3.new(0.319, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(1.02, 0.263, 0.706))
Detail26 = CreateBlockMeshedPart(Elucinator, "Detail26", "White", Vector3.new(0.319, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(1.02, 0.263, 0.706))
Detail27 = CreateBlockMeshedPart(Elucinator, "Detail27", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.131, 0.249, 0.706))
Detail28 = CreateBlockMeshedPart(Elucinator, "Detail28", "White", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.3, 0.3, 0.706))

Hilt1 = CreatePart(Elucinator, "Hilt1", "Crimson", Vector3.new(0.324, 0.295, 0.239), "SmoothPlastic", 0, "Block")
Hilt1Mesh = CreateBlockMesh(Hilt1, Vector3.new(1.02, 1, 0.685))
Hilt2 = CreatePart(Elucinator, "Hilt2", "Crimson", Vector3.new(0.239, 1.773, 0.239), "SmoothPlastic", 0, "Block")
Hilt2Mesh = CreateBlockMesh(Hilt2, Vector3.new(0.438, 1, 0.628))
Hilt3 = CreatePart(Elucinator, "Hilt3", "Crimson", Vector3.new(0.239, 1.757, 0.239), "SmoothPlastic", 0, "Block")
Hilt3Mesh = CreateBlockMesh(Hilt3, Vector3.new(0.438, 1, 0.628))
Hilt4 = CreatePart(Elucinator, "Hilt4", "Crimson", Vector3.new(0.239, 1.757, 0.239), "SmoothPlastic", 0, "Block")
Hilt4Mesh = CreateBlockMesh(Hilt4, Vector3.new(0.438, 1, 0.628))
Hilt5 = CreatePart(Elucinator, "Hilt5", "Crimson", Vector3.new(0.328, 0.239, 0.337), "SmoothPlastic", 0, "Block")
Hilt5Mesh = CreateCylinderMesh(Hilt5, Vector3.new(1, 0.685, 1))
Hilt6 = CreatePart(Elucinator, "Hilt6", "Crimson", Vector3.new(0.239, 0.33, 0.239), "SmoothPlastic", 0, "Block")
Hilt6Mesh = CreateCylinderMesh(Hilt6, Vector3.new(0.394, 1, 0.464))
Hilt6 = CreatePart(Elucinator, "Hilt6", "Crimson", Vector3.new(0.239, 0.33, 0.239), "SmoothPlastic", 0, "Block")
Hilt6Mesh = CreateCylinderMesh(Hilt6, Vector3.new(0.394, 1, 0.464))
Hilt7 = CreatePart(Elucinator, "Hilt7", "Crimson", Vector3.new(0.328, 0.33, 0.239), "SmoothPlastic", 0, "Block")
Hilt7Mesh = CreateCylinderMesh(Hilt7, Vector3.new(1, 1, 0.464))
Hilt8 = CreatePart(Elucinator, "Hilt8", "Crimson", Vector3.new(0.328, 0.33, 0.239), "SmoothPlastic", 0, "Block")
Hilt8Mesh = CreateCylinderMesh(Hilt8, Vector3.new(1, 1, 0.464))
Hilt9 = CreatePart(Elucinator, "Hilt9", "Crimson", Vector3.new(0.328, 0.33, 0.239), "SmoothPlastic", 0, "Block")
Hilt9Mesh = CreateCylinderMesh(Hilt9, Vector3.new(1, 1, 0.464))
Hilt10 = CreatePart(Elucinator, "Hilt10", "Crimson", Vector3.new(0.328, 0.444, 0.239), "SmoothPlastic", 0, "Block")
Hilt10Mesh = CreateCylinderMesh(Hilt10, Vector3.new(1, 1, 0.899))
Hilt11 = CreateSpike(Elucinator, "Hilt11", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.24, 0.579, 0.24))
Hilt12 = CreateSpike(Elucinator, "Hilt12", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.455, 0.579, 0.455))
Hilt13 = CreateSpike(Elucinator, "Hilt13", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.24, 0.579, 0.24))
Hilt14 = CreateSpike(Elucinator, "Hilt14", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.24, 0.579, 0.24))
Hilt15 = CreateSpike(Elucinator, "Hilt15", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.24, 0.579, 0.24))
Hilt16 = CreateSpike(Elucinator, "Hilt16", "Crimson", Vector3.new(0.239, 0.239, 0.239), "SmoothPlastic", 0, Vector3.new(0.455, 0.579, 0.455))
Hilt17 = CreatePart(Elucinator, "Hilt17", "Crimson", Vector3.new(0.239, 0.33, 0.239), "SmoothPlastic", 0, "Block")
Hilt17Mesh = CreateCylinderMesh(Hilt17, Vector3.new(0.394, 1, 0.464))
Hilt18 = CreatePart(Elucinator, "Hilt18", "Crimson", Vector3.new(0.328, 0.33, 0.239), "SmoothPlastic", 0, "Block")
Hilt18Mesh = CreateCylinderMesh(Hilt18, Vector3.new(1, 1, 0.464))
Hilt19 = CreatePart(Elucinator, "Hilt19", "Crimson", Vector3.new(0.328, 0.239, 0.239), "SmoothPlastic", 0, "Block")
Hilt19Mesh = CreateCylinderMesh(Hilt19, Vector3.new(1, 0.879, 0.927))

HandleWeld = CreateWeld(Handle,  CFrame.new(0,-1,0) * CFrame.Angles(0,1.57,-1.57), CFrame.new(0,0,0), Handle, Right_Arm, "HandleToRightArm")
Part1Weld = CreateWeld(Part1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, 0.0219802856, -3.81469727e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Part1, Handle, "Part1ToHandle")
Part2Weld = CreateWeld(Part2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00161552429, -0.669792175, 1.14440918e-005, -1.00000036, 7.4505806e-009, -5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, -5.96046448e-008, 1.04308128e-007, -0.99999994), Part2, Handle, "Part2ToHandle")
Part3Weld = CreateWeld(Part3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00162315369, -0.731752396, -4.57763672e-005, -1.00000036, 7.4505806e-009, -5.96046448e-008, 7.4505806e-009, -1.00000167, 1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Part3, Handle, "Part3ToHandle")
Part4Weld = CreateWeld(Part4,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.41570091, 7.62939453e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Part4, Handle, "Part4ToHandle")
Part5Weld = CreateWeld(Part5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, 1.40369225, 8.77380371e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Part5, Handle, "Part5ToHandle")
Part6Weld = CreateWeld(Part6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, 4.91572666, -0.000823974609, -0.00445704162, 0.999990225, 2.68220901e-007, -0.999991536, -0.00445698202, -2.23517418e-007, 4.47034836e-008, -1.78813934e-007, 0.99999994), Handle, Part6, "Part6ToHandle")
Part7Weld = CreateWeld(Part7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.23169899, 2.02752113, -0.000396728516, 1.00000036, 5.96046448e-008, -2.98023224e-008, -7.4505806e-009, -5.96046448e-008, -1.00000155, 5.96046448e-008, 0.99999994, 1.63912773e-007), Handle, Part7, "Part7ToHandle")
Part8Weld = CreateWeld(Part8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0136394501, 7.80112743, -0.000427246094, 1.00000036, 5.96046448e-008, -2.98023224e-008, -7.4505806e-009, -5.96046448e-008, -1.00000155, 5.96046448e-008, 0.99999994, 1.63912773e-007), Handle, Part8, "Part8ToHandle")


Neon1Weld = CreateWeld(Neon1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00159263611, -0.00484466553, -3.43322754e-005, -1.00000036, 7.4505806e-009, -5.96046448e-008, 7.4505806e-009, -1.00000167, 1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Part3, Neon1, "Neon1ToPart3")
Neon2Weld = CreateWeld(Neon2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00157165527, 0.00164604187, -1.90734863e-005, -1.00000036, -7.4505806e-009, -5.96046448e-008, 7.4505806e-009, 1.00000167, 1.04308128e-007, -5.96046448e-008, -1.04308128e-007, -0.99999994), Part2, Neon2, "Neon2ToPart2")
Neon3Weld = CreateWeld(Neon3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00157165527, 0.00164604187, -1.90734863e-005, -1.00000036, -7.4505806e-009, -5.96046448e-008, 7.4505806e-009, 1.00000167, 1.04308128e-007, -5.96046448e-008, -1.04308128e-007, -0.99999994), Part1, Neon3, "Neon3ToPart1")
Neon4Weld = CreateWeld(Neon4,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-005, 1.34330559, 3.05175781e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Handle, Neon4, "Neon4ToHandle")
Neon5Weld = CreateWeld(Neon5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.0603866577, -5.7220459e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Part5, Neon5, "Neon5ToPart1")
Neon6Weld = CreateWeld(Neon6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00994300842, 6.35535145, -0.00115966797, -0.999990165, -0.00445707887, 2.68220901e-007, 0.00445703417, -0.999991596, -1.49011612e-007, 1.1920929e-007, 1.49011612e-008, 1), Handle, Neon6, "Neon6ToHandle")
Neon7Weld = CreateWeld(Neon7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00992965698, 2.75092888, -0.00124359131, -0.999990165, -0.00445707887, 2.68220901e-007, 0.00445703417, -0.999991596, -1.49011612e-007, 1.1920929e-007, 1.49011612e-008, 1), Handle, Neon7, "Neon7ToHandle")
Neon8Weld = CreateWeld(Neon8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00576019287, 3.14280415, -0.00121307373, -0.00445704162, 0.999990225, 2.68220901e-007, -0.999991536, -0.00445698202, -2.23517418e-007, 4.47034836e-008, -1.78813934e-007, 0.99999994), Handle, Neon8, "Neon8ToHandle")
Neon9Weld = CreateWeld(Neon9,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00415039063, 5.97809219, -0.000339508057, -0.00445704162, 0.999990225, 2.68220901e-007, -0.999991536, -0.00445698202, -2.23517418e-007, 4.47034836e-008, -1.78813934e-007, 0.99999994), Handle, Neon9, "Neon9ToHandle")
Neon10Weld = CreateWeld(Neon10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0414810181, 3.46389675, 0.027305603, -9.68575478e-008, 1.00000012, 8.94069672e-008, -1.00000155, -9.68575478e-008, -2.68220901e-007, -7.4505806e-008, -2.98023224e-008, 0.99999994), Handle, Neon10, "Neon10ToHandle")
Neon11Weld = CreateWeld(Neon11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.248065948, 5.29167366, -0.0281448364, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon11, "Neon11ToHandle")
Neon12Weld = CreateWeld(Neon12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.132465363, 5.08478451, -0.0280990601, 9.68575478e-008, -1.00000012, 8.94069672e-008, 1.00000155, 9.68575478e-008, -2.68220901e-007, 7.4505806e-008, 2.98023224e-008, 0.99999994), Handle, Neon12, "Neon12ToHandle")
Neon13Weld = CreateWeld(Neon13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.123989105, 5.20888329, -0.0281524658, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon13, "Neon13ToHandle")
Neon14Weld = CreateWeld(Neon14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.190443039, 4.84490395, -0.0281257629, -1.00000036, 7.4505806e-009, 5.96046448e-008, 7.4505806e-009, -1.00000167, -1.04308128e-007, -5.96046448e-008, 1.04308128e-007, 0.99999994), Handle, Neon14, "Neon14ToHandle")
Neon15Weld = CreateWeld(Neon15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0577964783, 4.87796021, -0.0280570984, -1.00000036, 7.4505806e-009, 5.96046448e-008, 7.4505806e-009, -1.00000167, -1.04308128e-007, -5.96046448e-008, 1.04308128e-007, 0.99999994), Handle, Neon15, "Neon15ToHandle")
Neon16Weld = CreateWeld(Neon16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.173660278, 3.80230618, -0.0280609131, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon16, "Neon16ToHandle")
Neon17Weld = CreateWeld(Neon17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157100677, 4.29881763, -0.0280532837, -1.00000012, -1.41561031e-007, 5.96046448e-008, 1.71363354e-007, -1.00000167, 1.49011612e-008, -5.96046448e-008, 2.5331974e-007, 1.00000012), Handle, Neon17, "Neon17ToHandle")
Neon18Weld = CreateWeld(Neon18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.297739029, 3.8850832, -0.0281028748, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon18, "Neon18ToHandle")
Neon19Weld = CreateWeld(Neon19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157077789, 4.29134846, 0.0273895264, -1.00000012, -1.41561031e-007, 5.96046448e-008, 1.71363354e-007, -1.00000167, 1.49011612e-008, -5.96046448e-008, 2.5331974e-007, 1.00000012), Handle, Neon19, "Neon19ToHandle")
Neon20Weld = CreateWeld(Neon20,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.173671722, 3.79486084, 0.0273551941, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon20, "Neon20ToHandle")
Neon21Weld = CreateWeld(Neon21,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0414657593, 3.47132969, -0.0280609131, -9.68575478e-008, 1.00000012, 8.94069672e-008, -1.00000155, -9.68575478e-008, -2.68220901e-007, -7.4505806e-008, -2.98023224e-008, 0.99999994), Handle, Neon21, "Neon21ToHandle")
Neon22Weld = CreateWeld(Neon22,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.190429688, 5.62268162, -0.0281143188, -0.707106709, -0.707107127, 8.94069672e-008, 0.70710814, -0.707107663, 1.49011612e-008, -1.63912773e-007, 1.49011612e-007, 1), Handle, Neon22, "Neon22ToHandle")
Neon23Weld = CreateWeld(Neon10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.297763824, 3.87763023, 0.0273208618, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon23, "Neon23ToHandle")
Neon24Weld = CreateWeld(Neon11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0577697754, 4.29130554, 0.0272598267, -1.00000012, -1.41561031e-007, 5.96046448e-008, 1.71363354e-007, -1.00000167, 1.49011612e-008, -5.96046448e-008, 2.5331974e-007, 1.00000012), Handle, Neon24, "Neon24ToHandle")
Neon25Weld = CreateWeld(Neon12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00821495056, 5.45713997, -0.0280456543, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon25, "Neon25ToHandle")
Neon26Weld = CreateWeld(Neon13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.140827179, 3.62939453, 0.0273513794, -0.707107127, 0.70710665, 1.49011612e-007, -0.707107544, -0.70710814, 1.78813934e-007, 2.38418579e-007, 2.5331974e-007, 1), Handle, Neon26, "Neon26ToHandle")
Neon27Weld = CreateWeld(Neon14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.140792847, 3.63688469, -0.0280303955, -0.707107127, 0.70710665, 1.49011612e-007, -0.707107544, -0.70710814, 1.78813934e-007, 2.38418579e-007, 2.5331974e-007, 1), Handle, Neon27, "Neon27ToHandle")
Neon28Weld = CreateWeld(Neon15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.123970032, 5.20151043, 0.0273590088, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon28, "Neon28ToHandle")
Neon29Weld = CreateWeld(Neon16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.190401077, 5.61520672, 0.0273742676, -0.707106709, -0.707107127, 8.94069672e-008, 0.70710814, -0.707107663, 1.49011612e-008, -1.63912773e-007, 1.49011612e-007, 1), Handle, Neon29, "Neon29ToHandle")
Neon30Weld = CreateWeld(Neon17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0578155518, 4.29874706, -0.0280532837, -1.00000012, -1.41561031e-007, 5.96046448e-008, 1.71363354e-007, -1.00000167, 1.49011612e-008, -5.96046448e-008, 2.5331974e-007, 1.00000012), Handle, Neon30, "Neon30ToHandle")
Neon31Weld = CreateWeld(Neon18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0911102295, 4.29881573, -0.0280456543, -0.707106709, -0.707107127, 8.94069672e-008, 0.70710814, -0.707107663, 1.49011612e-008, -1.63912773e-007, 1.49011612e-007, 1), Handle, Neon31, "Neon31ToHandle")
Neon32Weld = CreateWeld(Neon19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0911483765, 4.29131508, 0.0273246765, -0.707106709, -0.707107127, 8.94069672e-008, 0.70710814, -0.707107663, 1.49011612e-008, -1.63912773e-007, 1.49011612e-007, 1), Handle, Neon32, "Neon32ToHandle")
Neon33Weld = CreateWeld(Neon33,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.248113632, 5.28423119, 0.0273323059, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon33, "Neon33ToHandle")
Neon34Weld = CreateWeld(Neon34,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00817108154, 5.44975567, 0.027305603, 0.707107127, -0.707106709, 2.08616257e-007, 0.707107544, 0.70710808, 4.47034836e-008, -1.78813934e-007, -1.49011612e-007, 1.00000012), Handle, Neon34, "Neon34ToHandle")
Neon35Weld = CreateWeld(Neon35,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0414810181, 3.46389675, 0.027305603, -9.68575478e-008, 1.00000012, 8.94069672e-008, -1.00000155, -9.68575478e-008, -2.68220901e-007, -7.4505806e-008, -2.98023224e-008, 0.99999994), Handle, Neon35, "Neon35ToHandle")
Neon36Weld = CreateWeld(Neon36,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.132465363, 5.08478451, -0.0280990601, 9.68575478e-008, -1.00000012, 8.94069672e-008, 1.00000155, 9.68575478e-008, -2.68220901e-007, 7.4505806e-008, 2.98023224e-008, 0.99999994), Handle, Neon36, "Neon36ToHandle")
Neon37Weld = CreateWeld(Neon37,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0577430725, 4.87051201, 0.0273895264, -1.00000024, -9.31322575e-010, 0, -9.31322575e-010, -1.00000012, 4.62023309e-010, 0, -4.62023309e-010, 0.99999994), Handle, Neon37, "Neon37ToHandle")
Neon38Weld = CreateWeld(Neon38,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.190441132, 4.83735657, 0.0273590088, -1.00000024, -9.31322575e-010, 0, -9.31322575e-010, -1.00000012, 4.62023309e-010, 0, -4.62023309e-010, 0.99999994), Handle, Neon38, "Neon38ToHandle")
Neon39Weld = CreateWeld(Neon39,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.132514954, 5.07735777, 0.02734375, -1.19330361e-005, -1.00000024, -3.82494181e-006, 1.00000012, -1.19330361e-005, 5.49589458e-008, -5.47406671e-008, -3.82447615e-006, 1), Handle, Neon39, "Neon39ToHandle")


Detail1Weld = CreateWeld(Detail1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-005, 0.0790576935, -7.62939453e-006, -0.899780154, 0.436344057, 5.96046448e-008, -0.436344594, -0.899781346, -1.34110451e-007, 0, 7.26431608e-008, 0.99999994), Handle, Detail1, "Detail1ToHandle")
Detail2Weld = CreateWeld(Detail2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.48498535e-005, -0.0583343506, 3.81469727e-005, 0.931796312, 0.362981766, 2.98023224e-007, -0.362982243, 0.931797802, 2.83122063e-007, 2.98023224e-008, -4.76837158e-007, 0.99999994), Handle, Detail2, "Detail2ToHandle")
Detail3Weld = CreateWeld(Detail3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.154708862, -0.130327225, 4.19616699e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Handle, Detail3, "Detail3ToHandle")
Detail4Weld = CreateWeld(Detail4,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.33514404e-005, -0.0591907501, 6.86645508e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Handle, Detail4, "Detail4ToHandle")
Detail5Weld = CreateWeld(Detail5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.33514404e-005, 0.00456047058, 6.10351563e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Handle, Detail5, "Detail5ToHandle")
Detail6Weld = CreateWeld(Detail6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0156898499, -0.187446594, 6.86645508e-005, 0.957036257, -0.289969027, 0, 0.289969385, 0.957037568, 2.08616257e-007, 2.98023224e-008, -4.20957804e-007, 1), Handle, Detail6, "Detail6ToHandle")
Detail7Weld = CreateWeld(Detail7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-006, 0.167552948, 3.05175781e-005, 0.99300164, 0.118101284, 0, -0.118101381, 0.99300313, 1.63912773e-007, 1.1920929e-007, -3.27825546e-007, 0.999999881), Handle, Detail7, "Detail7ToHandle")
Detail8Weld = CreateWeld(Detail8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.168224335, -0.202508926, 0.000595092773, 0.725076556, -1.21295452e-005, 0.688668489, -0.688669443, 0.000305384398, 0.72507751, -0.000218808651, -1, 0.000213056803), Handle, Detail8, "Detail8ToHandle")
Detail9Weld = CreateWeld(Detail9,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.168214798, 0.0977935791, 0.000648498535, 0.725076556, -1.21295452e-005, 0.688668489, -0.688669443, 0.000305384398, 0.72507751, -0.000218808651, -1, 0.000213056803), Handle, Detail9, "Detail9ToHandle")
Detail10Weld = CreateWeld(Detail10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.16822052, -0.572711945, 0.000621795654, 0.0182113349, 0.0181948394, -0.999668837, -0.707086563, -0.70666039, -0.0257430896, -0.706893444, 0.707320035, -4.02331352e-006), Handle, Detail10, "Detail10ToHandle")
Detail11Weld = CreateWeld(Detail11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.166589737, -0.851512909, 0.000606536865, -0.725076675, 1.15633011e-005, -0.688668489, 0.688669324, -0.000305563211, -0.725077569, -0.000219061971, -0.999999881, 0.0002136528496), Handle, Detail11, "Detail11ToHandle")
Detail12Weld = CreateWeld(Detail12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.166584015, -0.551189423, 0.000617980957, -0.725076675, 1.15633011e-005, -0.688668489, 0.688669324, -0.000305563211, -0.725077569, -0.000219061971, -0.999999881, 0.000213652849), Handle, Detail12, "Detail12ToHandle")
Detail13Weld = CreateWeld(Detail13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.168212891, -0.893268585, 0.000679016113, 0.0182113349, 0.0181948394, -0.999668837, -0.707086563, -0.70666039, -0.0257430896, -0.706893444, 0.707320035, -4.02331352e-006), Handle, Detail13, "Detail13ToHandle")
Detail14Weld = CreateWeld(Detail14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.1665802, 0.78956604, -0.000553131104, -0.725076735, 1.18911266e-005, -0.688668072, -0.688669086, 0.000305533409, 0.725077689, 0.00021904707, 0.999999881, -0.000213593245), Handle, Detail14, "Detail14ToHandle")
Detail15Weld = CreateWeld(Detail15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.168212891, 0.510681152, -0.000534057617, 0.018211782, 0.0181962103, -0.999668658, 0.707086623, 0.70666039, 0.0257444531, 0.706893206, -0.707320213, 3.15904617e-006), Handle, Detail15, "Detail15ToHandle")
Detail16Weld = CreateWeld(Detail16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.166591644, 0.489187241, -0.000495910645, -0.725076735, 1.18911266e-005, -0.688668072, -0.688669086, 0.000305533409, 0.725077689, 0.00021904707, 0.999999881, -0.000213593245), Handle, Detail16, "Detail16ToHandle")
Detail17Weld = CreateWeld(Detail17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.1665802, 0.78956604, -0.000553131104, -0.725076735, 1.18911266e-005, -0.688668072, -0.688669086, 0.000305533409, 0.725077689, 0.00021904707, 0.999999881, -0.000213593245), Handle, Detail17, "Detail17ToHandle")
Detail18Weld = CreateWeld(Detail18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.176166534, -0.241172791, 0.000415802002, 0.627230465, -0.778833926, 2.98023224e-008, 0.778835058, 0.62723124, 4.47034836e-008, -1.49011612e-007, -2.38418579e-007, 0.99999994), Handle, Detail18, "Detail18ToHandle")
Detail19Weld = CreateWeld(Detail19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.181074142, -0.281217575, 0.00247192383, 0.0272385851, -0.99962908, 3.87430191e-007, 0.99963063, 0.0272385553, 1.93715096e-007, -3.87430191e-007, 2.68220901e-007, 1), Handle, Detail19, "Detail19ToHandle")
Detail20Weld = CreateWeld(Detail20,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.181085587, -0.255867004, 0.00252532959, 0.140991136, -0.990011096, 1.49011612e-007, 0.990012407, 0.140991315, 0, -2.23517418e-007, -2.98023224e-008, 0.99999994), Handle, Detail20, "Detail20ToHandle")
Detail21Weld = CreateWeld(Detail21,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.193939209, 0.195047379, 0.0025100708, 0.705378592, 0.708831012, 2.38418579e-007, -0.708831906, 0.705379486, 1.1920929e-007, 1.34110451e-007, -2.98023224e-007, 1), Handle, Detail21, "Detail20ToHandle")
Detail22Weld = CreateWeld(Detail22,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.177761078, 0.192752838, 0.000431060791, 0.951402724, 0.307950169, 2.08616257e-007, -0.307950616, 0.951403975, 1.1920929e-007, 2.98023224e-008, -3.27825546e-007, 0.99999994), Handle, Detail22, "Detail22ToHandle")
Detail23Weld = CreateWeld(Detail23,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.195896149, 0.197839737, 0.0020942688, 0.430814683, 0.902440548, 2.98023224e-007, -0.902441919, 0.430815279, 2.23517418e-007, 3.39001417e-007, -3.27825546e-007, 1), Handle, Detail23, "Detail23ToHandle")
Detail24Weld = CreateWeld(Detail24,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157196045, 1.53795624, 0.000147938728, 1, 0, 0, 0, 1.00000012, 1.92812877e-010, 0, 1.92812877e-010, 1.00000012), Handle, Detail24, "Detail24ToHandle")
Detail25Weld = CreateWeld(Detail25,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00709915161, 1.59295654, 7.74264336e-005, -0.932419896, 0.361376733, 4.16347757e-006, 0.361376792, 0.932420015, 3.30775219e-006, -2.68639997e-006, 4.58874274e-006, -1.00000012), Handle, Detail25, "Detail25ToHandle")
Detail26Weld = CreateWeld(Detail26,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00539398193, 1.48062897, 5.74588776e-005, 0.93242383, -0.361366689, -8.38190317e-009, 0.361366689, 0.93242383, -7.95629603e-007, 2.95694917e-007, 7.39702955e-007, 1.00000012), Handle, Detail26, "Detail26ToHandle")
Detail27Weld = CreateWeld(Detail27,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.147636414, 1.65020752, 3.40342522e-005, -1, 0, 0, 0, 1.00000012, -1.92812877e-010, 0, 1.92812877e-010, -1.00000012), Handle, Detail27, "Detail27ToHandle")
Detail28Weld = CreateWeld(Detail28,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.151439667, 1.43334198, 5.79953194e-005, 1, 0, 0, 0, 1.00000012, 1.92812877e-010, 0, 1.92812877e-010, 1.00000012), Handle, Detail28, "Detail28ToHandle")


Hilt1Weld = CreateWeld(Hilt1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00328445435, 1.56145668, 1.52587891e-005, 1.00000036, -7.4505806e-009, 5.96046448e-008, -7.4505806e-009, 1.00000167, -1.04308128e-007, 5.96046448e-008, -1.04308128e-007, 0.99999994), Handle, Hilt1, "Hilt1ToHandle")
Hilt2Weld = CreateWeld(Hilt2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0352897644, 2.04958725, -0.000797271729, 0.499999881, 0.866025746, 5.96046448e-008, -0.866026878, 0.500000656, -1.04308128e-007, 1.3038516e-007, -2.98023224e-008, 0.99999994), Handle, Hilt2, "Hilt2ToHandle")
Hilt3Weld = CreateWeld(Hilt3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0284614563, 1.94973183, -0.00074005127, 0.499999881, 0.866025746, 5.96046448e-008, -0.866026878, 0.500000656, -1.04308128e-007, 1.3038516e-007, -2.98023224e-008, 0.99999994), Handle, Hilt3, "Hilt3ToHandle")
Hilt4Weld = CreateWeld(Hilt4,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0220222473, 1.85104561, -0.000816345215, 0.499999881, 0.866025746, 5.96046448e-008, -0.866026878, 0.500000656, -1.04308128e-007, 1.3038516e-007, -2.98023224e-008, 0.99999994), Handle, Hilt4, "Hilt4ToHandle")
Hilt5Weld = CreateWeld(Hilt5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00326538086, 1.7164011, 5.34057617e-005, 1.00000036, 5.96046448e-008, -2.98023224e-008, -7.4505806e-009, -5.96046448e-008, -1.00000155, 5.96046448e-008, 0.99999994, 1.63912773e-007), Handle, Hilt5, "Hilt5ToHandle")
Hilt6Weld = CreateWeld(Hilt6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.272659302, 1.59623718, 0.00660705566, 0.499999762, -5.96046448e-008, -0.866025805, -0.866026878, 2.38418579e-007, -0.500000596, 5.06639481e-007, 1, 5.96046448e-008), Handle, Hilt6, "Hilt6ToHandle")
Hilt7Weld = CreateWeld(Hilt7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.217285156, 1.63345718, -0.168807983, -0.499999881, 0.866025746, -5.96046448e-008, 0.866026878, 0.500000656, 1.04308128e-007, -1.3038516e-007, -2.98023224e-008, -0.99999994), Handle, Hilt7, "Hilt7ToHandle")
Hilt8Weld = CreateWeld(Hilt8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.217247009, 1.635746, 0.153923035, -0.499999881, 0.866025746, -5.96046448e-008, 0.866026878, 0.500000656, 1.04308128e-007, -1.3038516e-007, -2.98023224e-008, -0.99999994), Handle, Hilt8, "Hilt8ToHandle")
Hilt9Weld = CreateWeld(Hilt9,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218437195, 1.87692165, -0.163757324, 0.499999881, -0.866025746, -5.96046448e-008, -0.866026878, -0.500000656, 1.04308128e-007, 1.3038516e-007, 2.98023224e-008, -0.99999994), Handle, Hilt9, "Hilt9ToHandle")
Hilt10Weld = CreateWeld(Hilt10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00331115723, 1.75238991, -0.00331115723, 1.00000036, 5.96046448e-008, -2.98023224e-008, -7.4505806e-009, -5.96046448e-008, -1.00000155, 5.96046448e-008, 0.99999994, 1.63912773e-007), Handle, Hilt10, "Hilt10ToHandle")
Hilt11Weld = CreateWeld(Hilt11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.430633545, 1.9970417, 0.158790588, -1.49011612e-007, -0.866025805, -0.499999613, 1.1920929e-007, -0.500000417, 0.866026938, -1, 8.94069672e-008, -7.82310963e-008), Handle, Hilt11, "Hilt11ToHandle")
Hilt12Weld = CreateWeld(Hilt12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00166320801, 1.75237179, 0.294612885, -1.00000012, 1.49011612e-007, 1.04308128e-007, -1.34110451e-007, -1.34110451e-007, -1.00000155, -2.68220901e-007, -0.99999994, 3.27825546e-007), Handle, Hilt12, "Hilt12ToHandle")
Hilt13Weld = CreateWeld(Hilt13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.4295578, 1.51337051, 0.153808594, -1.49011612e-007, 0.866026163, 0.499999255, 1.49011612e-008, 0.5, -0.866027296, -0.99999994, -1.1920929e-007, 1.67638063e-007), Handle, Hilt13, "Hilt13ToHandle")
Hilt14Weld = CreateWeld(Hilt14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.429515839, 1.51210594, -0.168067932, -1.49011612e-007, 0.866026163, 0.499999255, 1.49011612e-008, 0.5, -0.866027296, -0.99999994, -1.1920929e-007, 1.67638063e-007), Handle, Hilt14, "Hilt14ToHandle")
Hilt15Weld = CreateWeld(Hilt15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.430604935, 1.99826527, -0.163101196, -1.49011612e-007, -0.866025805, -0.499999613, 1.1920929e-007, -0.500000417, 0.866026938, -1, 8.94069672e-008, -7.82310963e-008), Handle, Hilt15, "Hilt15ToHandle")
Hilt16Weld = CreateWeld(Hilt16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00170135498, 1.75235844, -0.299446106, -1.00000012, -4.47034836e-007, 2.30967999e-007, 3.05473804e-007, 0, 1.00000155, -5.66244125e-007, 1, -1.93715096e-007), Handle, Hilt16, "Hilt16ToHandle")
Hilt17Weld = CreateWeld(Hilt17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.262706757, 1.89478874, 0.00413131714, 0.499999762, -5.96046448e-008, -0.866025805, -0.866026878, 2.38418579e-007, -0.500000596, 5.06639481e-007, 1, 5.96046448e-008), Handle, Hilt17, "Hilt17ToHandle")
Hilt18Weld = CreateWeld(Hilt18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.21844101, 1.87471008, 0.158988953, 0.499999881, -0.866025746, -5.96046448e-008, -0.866026878, -0.500000656, 1.04308128e-007, 1.3038516e-007, 2.98023224e-008, -0.99999994), Handle, Hilt18, "Hilt18ToHandle")
Hilt19Weld = CreateWeld(Hilt19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00325012207, 1.75155163, -0.00329589844, 1.00000036, 5.96046448e-008, -2.98023224e-008, -7.4505806e-009, -5.96046448e-008, -1.00000155, 5.96046448e-008, 0.99999994, 1.63912773e-007), Handle, Hilt19, "Hilt19ToHandle")


Blade = Part6

--[[ Damage Function ]]--


function DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)
	
local HitHumanoid = Hit.Parent.Humanoid


local Damage = math.random(Min, Max)


coroutine.resume(coroutine.create(function()
HitHumanoid:TakeDamage(Damage)
end))
	
if Type == "Normal" then
	
local Push = CreateVelocity(Hit.Parent.Torso, Torso.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage)

elseif Type == "Ranged" then
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage)

elseif Type == "Knockdown" then
	
		
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
DamageLabel(Hit.Parent, Damage)
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

function DamageLabel(HitCharacter, DamageDealt)
if HitCharacter:FindFirstChild("Head") then
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Crimson", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position


local DamageGui = Instance.new("BillboardGui", DamageShowingPart)
DamageGui.Name = "Damage"
DamageGui.AlwaysOnTop = true
DamageGui.Size = UDim2.new(5, 0, 5, 0)

local DamageNumber = Instance.new("TextLabel", DamageGui)
DamageNumber.Size = UDim2.new(1,0,1,0)
DamageNumber.TextStrokeColor3 = BrickColor.White().Color
DamageNumber.TextColor3 = BrickColor.Black().Color
DamageNumber.TextStrokeTransparency = 0
DamageNumber.BackgroundTransparency = 1
DamageNumber.Font = "SciFi"
DamageNumber.TextScaled = true
DamageNumber.Text = DamageDealt
	
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
DamageLabel(Hit.Parent, "+15")
	
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
	
Hit.Parent.Humanoid.Health = Hit.Parent.Humanoid.Health + 10 

end
end
end
end
end
 
function Attack1()
Attacking = true

for i = 1,10 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, -1) * CFrame.Angles(1.6,0,0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,-1.57),0.2)
		
end

MakeSFX(Blade, 231917871, 1, 1)

for i = 1,5 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,-1.57),0.2)
	
end
	ValidateDamage(Blade, 8 ,10, 13, "Normal", "Penetration", 15)
Attacking = false
end
 
function Attack2()
Attacking = true

for i = 1,10 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,1),0.2)
	
		end
		MakeSFX(Blade, 231917871, 1, 1)
for i = 1,5 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, -1) * CFrame.Angles(1.6,0,0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,1.57),0.2)
		
end
	ValidateDamage(Blade, 8 ,10, 13, "Normal", "Penetration", 15)
Attacking = false
end 

function Attack3()
Attacking = true
for i = 1,10 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, -1) * CFrame.Angles(1.6,0,0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,1.57),0.2)
		
end
MakeSFX(Blade, 231917871, 1, 1)
for i = 1,5 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,-5,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1.6),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1.6,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,0),0.2)
		
end
	ValidateDamage(Blade, 8 ,10, 13, "Normal", "Penetration", 15)
Attacking = false
end

function Doomsday()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
HandleWeld.Part0 = Torso
coroutine.resume(coroutine.create(function()
wait(0.5)
ValidateDamage(Blade, 30 ,5, 7, "Normal", "Penetration", 15)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color,"Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
wait(0.5)

ValidateDamage(Blade, 30 ,5, 7, "Normal", "Penetration", 15)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
wait(0.5)

ValidateDamage(Blade, 30 ,5, 7, "Normal", "Penetration", 15)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
wait(0.5)

ValidateDamage(Blade, 30 ,5, 7, "Normal", "Penetration", 15)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
wait(0.5)

ValidateDamage(Blade, 30 ,5, 7, "Normal", "Penetration", 15)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
wait(0.5)

ValidateDamage(Blade, 30 ,5, 7, "Normal", "Penetration", 15)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
end))

for i = 1,100 do	
	
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(1.6,0,-1.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,5,0)* CFrame.Angles(0,i / 2,0),0.2)
	
end
HandleWeld.Part0 = Right_Arm
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false	
end

function AncientShield()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
HandleWeld.Part0 = Torso
Block.Value = true
for i = 1,200 do	
wait()
Cooldown2 = 0
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(1.6,0,-1.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,30,0)* CFrame.Angles(0,i / 2,3.2),0.2)
CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
end
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Block.Value = false
HandleWeld.Part0 = Right_Arm
Attacking = false	
end

 
function Destroyer()
Attacking = true

for i = 1,15 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1.6),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1.6,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-10,0) * CFrame.Angles(3.2,0,0),0.2)	
	
end

CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
ValidateDamage(Blade, 10 ,10, 15, "Normal", "Penetration", 0)

Attacking = false	
end

 
function TheAncientSword()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
coroutine.resume(coroutine.create(function()
	
wait(0.5)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
	
wait(0.5)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
	
wait(0.5)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
	
wait(0.5)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
	
wait(0.5)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
	
wait(0.5)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
	
wait(0.5)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)

end))


for i = 1,100 do
wait()		
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, -1) * CFrame.Angles(1.6,0,0.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,1.57),0.2)
		
end



for i = 1,30 do	
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,-10,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1.6),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1.6,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,  CFrame.new(0,-1,0) * CFrame.Angles(3.2,0,0),0.2)
		
end
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)
ValidateDamage(Blade, 30 ,30, 45, "Normal", "Penetration", 0)
wait(0.5)
Attacking = false	
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
end

function AncientZen()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
HandleWeld.Part0 = Torso

for i = 1,10 do	
	
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(1.6,0,-1.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,5,0)* CFrame.Angles(0,0,0),0.2)
	
end
local Add = 0.5
coroutine.resume(coroutine.create(function()
	
while Zen do
wait()
Add =  Add + 0.5
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,20,0)* CFrame.Angles(0,Add,3.2),0.2)	
end
end))
while Zen and CooldownE > 5 do
wait(2)

CooldownE = CooldownE - 5
ValidateHeal(Torso, 30)
CircleEffect(Blade.Position, Services.Workspace, 10,10,10, 1, Color, "Neon", 0.5)
MakeSFX(Blade, 183763487,1, 1)

end	
HandleWeld.Part0 = Right_Arm
Zen = false
Attacking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
end

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
	
if Key == "e" and not Attacking and CooldownE > 5 then
Zen = true
AncientZen()

end		

if Key == "z" and not Attacking and Mana > 20 and Cooldown1 == MaxCooldown1 then

Mana = Mana - 20
Cooldown1 = 0
Destroyer()

end	

if Key == "x" and not Attacking and Mana > 35 and Cooldown2 == MaxCooldown2 then

Mana = Mana - 35
Cooldown2 = 0
AncientShield()

	
end


if Key == "c" and not Attacking and Mana > 40 and Cooldown3 == MaxCooldown3 then

Mana = Mana - 40
Cooldown3 = 0
Doomsday()

end	

if Key == "v" and not Attacking and Mana > 50 and Cooldown4 == MaxCooldown4 then

Mana = Mana - 50
Cooldown4 = 0
TheAncientSword()

end	
end

function OnKeyUp(Key)
	
if Key == "e" then
Zen = false
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
	
Cooldown2 = Cooldown2 + 0.1
end


if Cooldown2 >= MaxCooldown2 then
	
Cooldown2 = MaxCooldown2	
	
end



if Cooldown3 ~= MaxCooldown3 then
Cooldown3 = Cooldown3 + 0.1
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



if CooldownE ~= MaxCooldownE and not Zen then
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


--[[ Resize All Bars ]]--	


CoolDown1Bar.Size = UDim2.new(Cooldown1 / MaxCooldown1,0,0,50)
CoolDown2Bar.Size = UDim2.new(Cooldown2 / MaxCooldown2,0,0,50)
CoolDown3Bar.Size = UDim2.new(Cooldown3 / MaxCooldown3,0,0,50)
CoolDown4Bar.Size = UDim2.new(Cooldown4 / MaxCooldown4,0,0,50)
CoolDownEBar.Size = UDim2.new(CooldownE / MaxCooldownE,0,0,50)

HealthBarP2.Size = UDim2.new(Humanoid.Health / Humanoid.MaxHealth,0,0,25)
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

--[[ Clerp Animations ]]--

while true do
wait()
Bars()	

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(0.6,0.5,-3.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.1) * CFrame.Angles(0.2,0,-0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(0.5,3.2,1),0.2)

end


if 2 < Torvel and Torvel < 22 and HitFloor ~= nil and Attacking == false then
Anim = "Walking"
WalkForward = true
      Walk = Walk + 1
              if 15 - 5 * Movemment <= Walk then
                Walk = 0
                if WalkForward == true then
                  WalkForward = false
                else
                  if WalkForward == false then
                    WalkForward = true
                  end
                end
              end



	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(-0.5,0,0.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(1,-1.57,-1.57),0.2)

end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(-0.5,0,0.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,-0.5) * CFrame.Angles(0,-1.6,0.5),0.2) 
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(1,-1.57,-1.57),0.2)

end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(-0.5,0,0.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0.5),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,-0.5) * CFrame.Angles(0,-1.6,0.5),0.2) 
HandleWeld.C0=clerp(HandleWeld.C0, CFrame.new(0,-1,0) * CFrame.Angles(1,-1.57,-1.57),0.2)

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
Effect[1].Transparency = Effect[1].Transparency + 0.03
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


