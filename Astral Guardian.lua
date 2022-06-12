--[[ Astral Guardian Script  ]]--
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
local MaxBlock = 300
local Effects = {}
local Color = "White"

local cf = CFrame.new
local WalkForward = false
	
local Block = Instance.new("BoolValue",Character)
Block.Value = false
Block.Name = "Block"

local BlockD = Instance.new("IntValue", Block)
BlockD.Name = "BlockDurability"
BlockD.Value = 300

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


MaxCooldown1 = 50
MaxCooldown2 = 30
MaxCooldown3 = 50
MaxCooldown4 = 150
MaxCooldownE = 1

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
HealthBarText.Text = "Armony"
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
ManaBarP2.BackgroundColor3 = BrickColor.new("Bright blue").Color

local ManaBarText = Instance.new("TextLabel", ManaBarP1)
ManaBarText.Name = "ManaBarText"
ManaBarText.Size = UDim2.new(0,285,0,20)
ManaBarText.Position = UDim2.new(0,0,0,0)	
ManaBarText.TextScaled = true
ManaBarText.Text = "Astra"
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
BlockBarText.Text = "Astral block"
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
CoolDown1Text.Text = "Z - Stomp"
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
CoolDown2Text.Text = "X - Astral beam"
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
CoolDown3Text.Text = "C - Astral Dash"
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
CoolDown4Text.Text = "V - Astral blast"
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
CoolDownEText.Text = "E - Astral block"
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


local CreateCircleMesh = function(Parent, Scale)


local Mesh = Instance.new("SpecialMesh", Parent)
Mesh.MeshType = "Sphere"
Mesh.Scale = Scale

return Mesh
end


local CreateCylinderMesh = function(Parent, Scale)



local Mesh = Instance.new("SpecialMesh", Parent)
Mesh.MeshType = "Cylinder"
Mesh.Scale = Scale


return Mesh

end

local CreateWedgeMesh = function(Parent, Scale)


local Mesh = Instance.new("SpecialMesh", Parent)
Mesh.MeshType = "Wedge"
Mesh.Scale = Scale

return Mesh

end

local CreateWeld = function(Parent, Cframe, Cframe2, P1 , P0)
	
local Weld = Instance.new("Weld", Parent)
Weld.Part0 = P0
Weld.Part1 = P1
Weld.Name = P0.Name .. "To" .. P1.Name
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





CircleEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
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
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)

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

HeadEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
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

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)
Mesh.MeshType = "Head"

Services.Debris:AddItem(Part, Time)

table.insert(Effects, {Part, "Head", Time, SX, SY, SZ})
return Part

end

ShieldEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
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

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. 168130699

Services.Debris:AddItem(Part, Time)

table.insert(Effects, {Part, "Shield", Time, SX, SY, SZ})
return Part

end

--[[ Nageblade ]]--
Nageblade = Instance.new("Model", Character)
Nageblade.Name = "Nageblade"

Handle = CreatePart(Nageblade, "Handle", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 1, "Block")
HandleMesh = CreateBlockMesh(Handle, Vector3.new(1, 0.407, 0.782))
Part1 = CreatePart(Nageblade, "Part1", "Medium stone grey", Vector3.new(1.574, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part1Mesh = CreateBlockMesh(Part1, Vector3.new(1, 0.37, 0.957))
Part2 = CreatePart(Nageblade, "Part2", "Lily white", Vector3.new(0.326, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part2Mesh = CreateBlockMesh(Part2, Vector3.new(1, 0.407, 0.863))
Part3 = CreatePart(Nageblade, "Part3", "Really black", Vector3.new(0.241, 0.2, 1.791), "SmoothPlastic", 0, "Block")
Part3Mesh = CreateBlockMesh(Part3, Vector3.new(1, 0.464, 1))
Part4 = CreatePart(Nageblade, "Part4", "Lily white", Vector3.new(0.326, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part4Mesh = CreateBlockMesh(Part4, Vector3.new(1, 0.407, 0.676))
Part5 = CreatePart(Nageblade, "Part5", "Lily white", Vector3.new(1.021, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part5Mesh = CreateBlockMesh(Part5, Vector3.new(1, 0.407, 0.635))
Part6 = CreatePart(Nageblade, "Part6", "Lily white", Vector3.new(0.326, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part6Mesh = CreateBlockMesh(Part6, Vector3.new(1, 0.407, 0.668))
Part7 = CreatePart(Nageblade, "Part7", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part7Mesh = CreateBlockMesh(Part7, Vector3.new(0.973, 0.407, 0.904))
Part8 = CreatePart(Nageblade, "Part8", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part8Mesh = CreateBlockMesh(Part8, Vector3.new(0.973, 0.407, 0.904))
Part9 = CreatePart(Nageblade, "Part9", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part9Mesh = CreateBlockMesh(Part9, Vector3.new(0.973, 0.407, 0.904))
Part10 = CreatePart(Nageblade, "Part10", "Lily white", Vector3.new(0.545, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part10Mesh = CreateBlockMesh(Part10, Vector3.new(1, 0.407, 0.904))
Part11 = CreatePart(Nageblade, "Part11", "Lily white", Vector3.new(0.2, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part11Mesh = CreateWedgeMesh(Part11, Vector3.new(0.407, 0.896, 1))
Part12 = CreatePart(Nageblade, "Part12", "Lily white", Vector3.new(1.031, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part12Mesh = CreateBlockMesh(Part12, Vector3.new(1, 0.407, 0.908))
Part13 = CreatePart(Nageblade, "Part13", "Lily white", Vector3.new(0.345, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part13Mesh = CreateBlockMesh(Part13, Vector3.new(1, 0.407, 0.904))
Part14 = CreatePart(Nageblade, "Part14", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part14Mesh = CreateBlockMesh(Part14, Vector3.new(0.973, 0.407, 0.904))
Part15 = CreatePart(Nageblade, "Part15", "Dark stone grey", Vector3.new(0.2, 0.685, 0.811), "SmoothPlastic", 0, "Block")
Part15Mesh = CreateCylinderMesh(Part15, Vector3.new(0.537, 1, 1))
Part16 = CreatePart(Nageblade, "Part16", "Lily white", Vector3.new(1.1, 0.2, 0.639), "SmoothPlastic", 0, "Block")
Part16Mesh = CreateBlockMesh(Part16, Vector3.new(1, 0.407, 1))
Part17 = CreatePart(Nageblade, "Part17", "Lily white", Vector3.new(0.2, 0.633, 0.689), "SmoothPlastic", 0, "Block")
Part17Mesh = CreateWedgeMesh(Part17, Vector3.new(0.407, 1, 1))
Part18 = CreatePart(Nageblade, "Part18", "Lily white", Vector3.new(0.611, 0.2, 0.418), "SmoothPlastic", 0, "Block")
Part18Mesh = CreateBlockMesh(Part18, Vector3.new(1, 0.407, 1))
Part19 = CreatePart(Nageblade, "Part19", "Lily white", Vector3.new(3.323, 0.2, 0.639), "SmoothPlastic", 0, "Block")
Part19Mesh = CreateBlockMesh(Part19, Vector3.new(1, 0.407, 1))
Part20 = CreatePart(Nageblade, "Part20", "Lily white", Vector3.new(0.329, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part20Mesh = CreateBlockMesh(Part20, Vector3.new(1, 0.399, 0.904))
Part21 = CreatePart(Nageblade, "Part21", "Lily white", Vector3.new(0.2, 0.768, 0.817), "SmoothPlastic", 0, "Block")
Part21Mesh = CreateCylinderMesh(Part21, Vector3.new(0.513, 1, 1))
Part22 = CreatePart(Nageblade, "Part22", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part22Mesh = CreateBlockMesh(Part22, Vector3.new(0.973, 0.407, 0.904))
Part23 = CreatePart(Nageblade, "Part23", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part23Mesh = CreateBlockMesh(Part23, Vector3.new(0.973, 0.407, 0.904))
Part24 = CreatePart(Nageblade, "Part24", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part24Mesh = CreateBlockMesh(Part24, Vector3.new(0.973, 0.407, 0.904))
Part25 = CreatePart(Nageblade, "Part25", "Lily white", Vector3.new(0.545, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part25Mesh = CreateBlockMesh(Part25, Vector3.new(1, 0.407, 0.904))
Part26 = CreatePart(Nageblade, "Part26", "Lily white", Vector3.new(0.2, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part26Mesh = CreateWedgeMesh(Part26, Vector3.new(0.407, 0.896, 1))
Part27 = CreatePart(Nageblade, "Part27", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part27Mesh = CreateBlockMesh(Part27, Vector3.new(0.973, 0.407, 0.904))
Part28 = CreatePart(Nageblade, "Part28", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part28Mesh = CreateBlockMesh(Part28, Vector3.new(0.973, 0.407, 0.904))
Part29 = CreatePart(Nageblade, "Part29", "Lily white", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part29Mesh = CreateBlockMesh(Part29, Vector3.new(0.973, 0.407, 0.904))
Part30 = CreatePart(Nageblade, "Part30", "Lily white", Vector3.new(1.1, 0.2, 0.639), "SmoothPlastic", 0, "Block")
Part30Mesh = CreateBlockMesh(Part30, Vector3.new(1, 0.407, 1))
Part31 = CreatePart(Nageblade, "Part31", "Lily white", Vector3.new(0.2, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part31Mesh = CreateWedgeMesh(Part31, Vector3.new(0.407, 0.896, 1))
Part32 = CreatePart(Nageblade, "Part32", "Lily white", Vector3.new(0.545, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part32Mesh = CreateBlockMesh(Part32, Vector3.new(1, 0.407, 0.904))
Part33 = CreatePart(Nageblade, "Part33", "Lily white", Vector3.new(0.2, 0.2, 0.254), "SmoothPlastic", 0, "Block")
Part33Mesh = CreateBlockMesh(Part33, Vector3.new(1, 0.407, 1))
Part34 = CreatePart(Nageblade, "Part34", "Lily white", Vector3.new(1.1, 0.2, 0.639), "SmoothPlastic", 0, "Block")
Part34Mesh = CreateBlockMesh(Part34, Vector3.new(1, 0.407, 1))
Part35 = CreatePart(Nageblade, "Part35", "Br. yellowish orange", Vector3.new(0.545, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part35Mesh = CreateBlockMesh(Part35, Vector3.new(1, 0.407, 0.904))
Part36 = CreatePart(Nageblade, "Part36", "Br. yellowish orange", Vector3.new(0.2, 0.459, 0.727), "SmoothPlastic", 0, "Block")
Part36Mesh = CreateWedgeMesh(Part36, Vector3.new(0.525, 1, 1))
Part37 = CreatePart(Nageblade, "Part37", "Br. yellowish orange", Vector3.new(0.2, 0.443, 0.847), "SmoothPlastic", 0, "Block")
Part37Mesh = CreateCircleMesh(Part37, Vector3.new(0.081, 1, 1))
Part38 = CreatePart(Nageblade, "Part38", "Br. yellowish orange", Vector3.new(0.2, 0.418, 0.825), "Neon", 0, "Block")
Part38Mesh = CreateCircleMesh(Part38, Vector3.new(0.501, 1, 1))
Part39 = CreatePart(Nageblade, "Part39", "Br. yellowish orange", Vector3.new(0.2, 0.443, 0.847), "SmoothPlastic", 0, "Block")
Part39Mesh = CreateCircleMesh(Part39, Vector3.new(0.081, 1, 1))
Part40 = CreatePart(Nageblade, "Part40", "Br. yellowish orange", Vector3.new(0.2, 0.418, 0.825), "Neon", 0, "Block")
Part40Mesh = CreateCircleMesh(Part40, Vector3.new(0.501, 1, 1))
Part41 = CreateCrystal(Nageblade, "Part41", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0,  Vector3.new(0.163, 0.651, 0.081))
Part42 = CreateCrystal(Nageblade, "Part42", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0,  Vector3.new(0.122, 0.57, 0.081))
Part43 = CreateCrystal(Nageblade, "Part43", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0,  Vector3.new(0.081, 0.407, 0.081))
Part44 = CreateCrystal(Nageblade, "Part44", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0,  Vector3.new(0.081, 0.407, 0.081))
Part45 = CreateCrystal(Nageblade, "Part44", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0,  Vector3.new(0.163, 0.651, 0.081))
Part46 = CreatePart(Nageblade, "Part46", "Br. yellowish orange", Vector3.new(0.838, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part46Mesh = CreateBlockMesh(Part46, Vector3.new(1, 0.57, 0.431))
Part47 = CreatePart(Nageblade, "Part47", "Br. yellowish orange", Vector3.new(0.2, 0.365, 0.845), "SmoothPlastic", 0, "Block")
Part47Mesh = CreateWedgeMesh(Part47, Vector3.new(0.566, 1, 1))
Part48 = CreatePart(Nageblade, "Part48", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part48Mesh = CreateBlockMesh(Part48, Vector3.new(0.973, 0.407, 0.904))
Part49 = CreatePart(Nageblade, "Part49", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part49Mesh = CreateBlockMesh(Part49, Vector3.new(0.973, 0.407, 0.904))
Part50 = CreatePart(Nageblade, "Part50", "Br. yellowish orange", Vector3.new(0.428, 0.2, 0.54), "SmoothPlastic", 0, "Block")
Part50Mesh = CreateBlockMesh(Part50, Vector3.new(1, 0.521, 1))
Part51 = CreatePart(Nageblade, "Part51", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part51Mesh = CreateWedgeMesh(Part51, Vector3.new(0.407, 0.896, 1))
Part52 = CreatePart(Nageblade, "Part52", "Br. yellowish orange", Vector3.new(0.2, 0.459, 0.727), "SmoothPlastic", 0, "Block")
Part52Mesh = CreateWedgeMesh(Part52, Vector3.new(0.525, 1, 1))
Part53 = CreatePart(Nageblade, "Part53", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part53Mesh = CreateWedgeMesh(Part53, Vector3.new(0.407, 0.896, 1))
Part54 = CreatePart(Nageblade, "Part54", "Br. yellowish orange", Vector3.new(0.545, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part54Mesh = CreateBlockMesh(Part54, Vector3.new(1, 0.407, 0.904))
Part55 = CreatePart(Nageblade, "Part55", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part55Mesh = CreateBlockMesh(Part55, Vector3.new(0.973, 0.407, 0.904))
Part56 = CreatePart(Nageblade, "Part56", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part56Mesh = CreateBlockMesh(Part56, Vector3.new(0.973, 0.407, 0.904))
Part57 = CreatePart(Nageblade, "Part57", "Br. yellowish orange", Vector3.new(0.2, 0.48, 0.727), "SmoothPlastic", 0, "Block")
Part57Mesh = CreateWedgeMesh(Part57, Vector3.new(0.525, 1, 1))
Part58 = CreatePart(Nageblade, "Part58", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part58Mesh = CreateBlockMesh(Part58, Vector3.new(0.973, 0.407, 0.904))
Part59 = CreatePart(Nageblade, "Part59", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part59Mesh = CreateWedgeMesh(Part59, Vector3.new(0.407, 0.896, 1))
Part60 = CreatePart(Nageblade, "Part60", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part60Mesh = CreateWedgeMesh(Part60, Vector3.new(0.407, 0.896, 1))
Part61 = CreatePart(Nageblade, "Part61", "Br. yellowish orange", Vector3.new(0.2, 0.488, 0.653), "SmoothPlastic", 0, "Block")
Part61Mesh = CreateWedgeMesh(Part61, Vector3.new(0.525, 1, 1))
Part62 = CreatePart(Nageblade, "Part62", "Br. yellowish orange", Vector3.new(0.2, 0.427, 0.2), "SmoothPlastic", 0, "Block")
Part62Mesh = CreateWedgeMesh(Part62, Vector3.new(0.566, 1, 0.692))
Part63 = CreatePart(Nageblade, "Part63", "Br. yellowish orange", Vector3.new(0.374, 0.2, 0.223), "SmoothPlastic", 0, "Block")
Part63Mesh = CreateBlockMesh(Part63, Vector3.new(1, 0.521, 1))
Part64 = CreatePart(Nageblade, "Part64", "Br. yellowish orange", Vector3.new(0.2, 0.2, 0.2), "SmoothPlastic", 0, "Block")
Part64Mesh = CreateWedgeMesh(Part64, Vector3.new(0.525, 0.513, 0.513))
Part65 = CreatePart(Nageblade, "Part65", "Br. yellowish orange", Vector3.new(0.2, 0.225, 0.366), "SmoothPlastic", 0, "Block")
Part65Mesh = CreateWedgeMesh(Part65, Vector3.new(0.525, 1, 1))
Part66 = CreatePart(Nageblade, "Part66", "Br. yellowish orange", Vector3.new(0.2, 0.459, 0.727), "SmoothPlastic", 0, "Block")
Part66Mesh = CreateWedgeMesh(Part66, Vector3.new(0.525, 1, 1))
Part67 = CreatePart(Nageblade, "Part67", "Br. yellowish orange", Vector3.new(0.2, 0.382, 0.324), "SmoothPlastic", 0, "Block")
Part67Mesh = CreateWedgeMesh(Part67, Vector3.new(0.525, 1, 1))
Part68 = CreatePart(Nageblade, "Part68", "Br. yellowish orange", Vector3.new(0.208, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part68Mesh = CreateWedgeMesh(Part68, Vector3.new(1, 0.896, 1))
Part69 = CreatePart(Nageblade, "Part69", "Br. yellowish orange", Vector3.new(0.2, 0.209, 0.2), "SmoothPlastic", 0, "Block")
Part69Mesh = CreateBlockMesh(Part69, Vector3.new(0.973, 1, 0.904))
Part70 = CreatePart(Nageblade, "Part70", "Br. yellowish orange", Vector3.new(0.2, 0.209, 0.2), "SmoothPlastic", 0, "Block")
Part70Mesh = CreateBlockMesh(Part70, Vector3.new(0.973, 1, 0.904))
Part71 = CreatePart(Nageblade, "Part71", "Br. yellowish orange", Vector3.new(0.431, 0.209, 0.2), "SmoothPlastic", 0, "Block")
Part71Mesh = CreateBlockMesh(Part71, Vector3.new(1, 1, 0.57))
Part72 = CreatePart(Nageblade, "Part72", "Br. yellowish orange", Vector3.new(0.2, 0.21, 0.2), "SmoothPlastic", 0, "Block")
Part72Mesh = CreateBlockMesh(Part72, Vector3.new(0.973, 1, 0.904))
Part73 = CreatePart(Nageblade, "Part73", "Br. yellowish orange", Vector3.new(0.211, 0.2, 1.795), "SmoothPlastic", 0, "Block")
Part73Mesh = CreateBlockMesh(Part73, Vector3.new(1, 0.521, 1))
Part74 = CreatePart(Nageblade, "Part74", "Br. yellowish orange", Vector3.new(0.431, 0.209, 0.2), "SmoothPlastic", 0, "Block")
Part74Mesh = CreateBlockMesh(Part74, Vector3.new(1, 1, 0.57))
Part75 = CreatePart(Nageblade, "Part75", "Br. yellowish orange", Vector3.new(0.208, 0.2, 0.293), "SmoothPlastic", 0, "Block")
Part75Mesh = CreateWedgeMesh(Part75, Vector3.new(1, 0.896, 1))
Part76 = CreatePart(Nageblade, "Part76", "Br. yellowish orange", Vector3.new(0.2, 0.209, 0.2), "SmoothPlastic", 0, "Block")
Part76Mesh = CreateBlockMesh(Part76, Vector3.new(0.973, 1, 0.904))
Part77 = CreatePart(Nageblade, "Part77", "Br. yellowish orange", Vector3.new(0.2, 0.21, 0.2), "SmoothPlastic", 0, "Block")
Part77Mesh = CreateBlockMesh(Part77, Vector3.new(0.973, 1, 0.904))
Part78 = CreatePart(Nageblade, "Part78", "Br. yellowish orange", Vector3.new(0.2, 0.209, 0.2), "SmoothPlastic", 0, "Block")
Part78Mesh = CreateBlockMesh(Part78, Vector3.new(0.973, 1, 0.904))



HandleWeld = CreateWeld(Nageblade,  CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57), CFrame.new(0,0,0), Handle, Right_Arm, "HandleToRightArm")
Part1Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.154254913, 0.000417292118, 0.0376167297, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part1, Handle, "Part1ToHandle")
Part2Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.484401703, -2.74181366e-006, -0.178144455, 0.939690292, -6.36512414e-006, 0.342026591, 7.60564581e-006, 0.99999994, -2.2854656e-006, -0.342026561, 4.75021079e-006, 0.939690471), Part2, Handle)
Part3Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0747833252, -0.00330075622, 2.64705276, -7.78958201e-006, -1.53575093e-006, 1.00000012, 1.05060753e-005, 1, 1.53668225e-006, -1, 1.05063082e-005, -7.7933073e-006), Part3, Handle)
Part4Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.545940399, 1.05202198e-005, -0.00629997253, 0.939690292, -6.36512414e-006, 0.342026591, 7.60564581e-006, 0.99999994, -2.2854656e-006, -0.342026561, 4.75021079e-006, 0.939690471), Part4, Handle)
Part5Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.439594269, 1.93715096e-005, 0.0704917908, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part5, Handle)
Part6Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.230724335, 3.93390656e-006, 0.0608444214, 0.984808147, -2.8036302e-006, 0.173646405, 1.79972267e-006, 1, 5.9409067e-006, -0.17364639, -5.53810969e-006, 0.984808087), Part6, Handle)
Part7Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.878177643, -4.8071146e-005, 2.00817871, -0.642798722, 4.6226196e-006, 0.766035318, 7.58218812e-006, 1, 3.28756869e-007, -0.766035199, 6.01867214e-006, -0.642798841), Part7, Handle)
Part8Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.65942383, -1.1831522e-005, 1.55905151, -0.866030037, 4.59607691e-007, 0.499992192, 2.27079727e-006, 1, 3.01375985e-006, -0.499992102, 3.7457794e-006, -0.866030097), Part8, Handle)
Part9Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.08008957, -3.7252903e-006, 1.23241043, -0.939695656, 8.45664181e-006, 0.342012167, 9.18429578e-006, 1, 5.07570803e-007, -0.342012078, 3.61772254e-006, -0.939695716), Part9, Handle)
Part10Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.61110306, -0.000803798437, 0.837345123, -0.984809518, 4.60387673e-006, 0.173638374, 3.06894071e-006, 1, -9.10833478e-006, -0.173638344, -8.43964517e-006, -0.984809637), Part10, Handle)
Part11Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00166743994, 2.00920105, -0.637729645, -8.81997403e-006, -1, 8.54674727e-006, -0.766049802, 1.26287341e-006, -0.642781377, 0.642781317, -1.22161582e-005, -0.766049802), Part11, Handle)
Part12Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.437149048, -1.10864639e-005, -0.102432251, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part12, Handle)
Part13Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.212978363, 2.29477882e-006, -0.11391449, 0.984808147, -2.8036302e-006, 0.173646405, 1.79972267e-006, 1, 5.9409067e-006, -0.17364639, -5.53810969e-006, 0.984808087), Part13, Handle)
Part14Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.55167007, 2.03251839e-005, -0.701080322, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part14, Handle)
Part15Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000846028328, -0.0858535767, 3.7416153, -8.81997403e-006, -1, 8.54674727e-006, -7.82310963e-006, 8.54674727e-006, 1.00000012, -1, 8.8197994e-006, -7.82310963e-006), Part15, Handle)
Part16Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.12342072, 0.000812411308, 0.452892303, 0.995477796, 1.70210842e-006, 0.0949947238, -1.42474892e-006, 1.00000012, -2.98582017e-006, -0.0949947238, 2.83773988e-006, 0.995477915), Part16, Handle)
Part17Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00089469552, -2.22120667, 7.69824219, 8.81997403e-006, 1, -8.54674727e-006, 0.342030585, -1.10482797e-005, -0.939688921, -0.939688861, 5.36511652e-006, -0.342030615), Part17, Handle)
Part18Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.22359085, 1.82688236e-005, 0.0301704407, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part18, Handle)
Part19Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71011734, 9.86456871e-006, -0.0923919678, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part19, Handle)
Part20Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.71857452, 2.61068344e-005, 2.86813354, 0.766054809, -3.24938446e-006, -0.642775357, -3.7739519e-006, -1, 5.569309e-007, -0.642775297, 1.99861825e-006, -0.766054869), Part20, Handle)
Part21Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000820726156, -0.0882949829, 3.7387619, -8.81997403e-006, -1, 8.54674727e-006, -7.82310963e-006, 8.54674727e-006, 1.00000012, -1, 8.8197994e-006, -7.82310963e-006), Part21, Handle)
Part22Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.69364166, 0.000803858042, 3.90794182, -0.64278847, -7.85477459e-006, -0.766043901, -2.45537376e-006, -1, 1.23130158e-005, -0.766043782, 9.79658216e-006, 0.642788529), Part22, Handle)
Part23Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.01513672, 0.000854611397, 2.72330856, -0.866026223, 7.05290586e-006, -0.499998748, -1.38133764e-005, -1.00000012, 9.81986523e-006, -0.499998629, 1.54110603e-005, 0.866026282), Part23, Handle)
Part24Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.60215759, 0.000867843628, 1.96988297, -0.939694524, 7.43940473e-006, -0.342015207, -9.65245999e-006, -0.99999994, 4.76837158e-006, -0.342015177, 7.78213143e-006, 0.939694464), Part24, Handle)
Part25Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.2229805, 2.96831131e-005, 1.12572098, -0.984808147, 2.8036302e-006, -0.173646405, -3.2314565e-006, -0.99999994, 2.17929482e-006, -0.17364639, 2.70782039e-006, 0.984808147), Part25, Handle)
Part26Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000746399164, 3.90896225, -2.45314789, 8.81997403e-006, 1, -8.54674727e-006, -0.766052544, 1.22501515e-005, 0.642778039, 0.642778039, 8.77305865e-007, 0.766052604), Part26, Handle)
Part27Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.41415024, 0.000788211823, 3.75719452, -0.500010967, 4.51179221e-006, 0.866019249, 5.15847933e-006, 0.99999994, -2.23144889e-006, -0.86601913, 3.35089862e-006, -0.500011027), Part27, Handle)
Part28Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.76126289, 0.000783234835, 3.01924896, -0.766054809, 3.24938446e-006, 0.642775357, 3.7739519e-006, 1, -5.569309e-007, -0.642775297, 1.99861825e-006, -0.766054869), Part28, Handle)
Part29Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.41869354, 0.000812739134, 2.4790802, -0.866030037, 4.59607691e-007, 0.499992192, 2.27079727e-006, 1, 3.01375985e-006, -0.499992102, 3.7457794e-006, -0.866030097), Part29, Handle)
Part30Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.07390594, 0.000837355852, -0.0785102844, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part30, Handle)
Part31Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000840127468, 3.75822449, -1.17358017, -8.81997403e-006, -1, 8.54674727e-006, -0.866030931, 3.36533412e-006, -0.499990523, 0.499990463, -1.18119642e-005, -0.866030931), Part31, Handle)
Part32Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.14587021, -3.78489494e-005, 1.83267975, -0.939695656, 8.45664181e-006, 0.342012167, 9.18429578e-006, 1, 5.07570803e-007, -0.342012078, 3.61772254e-006, -0.939695716), Part32, Handle)
Part33Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.68004608, 0.00084143877, -3.73075104, -0.500010967, 4.51179221e-006, 0.866019249, -5.15847933e-006, -0.99999994, 2.23144889e-006, 0.86601913, -3.35089862e-006, 0.500011027), Part33, Handle)
Part34Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.03617096, 0.000786036253, 1.41423607, 0.971007168, 1.17113814e-007, 0.239050448, 1.41718192e-006, 1, -6.24638051e-006, -0.239050433, 6.40377402e-006, 0.971007347), Part34, Handle)
Part35Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.17930984, -0.000827670097, -0.18819809, 0.939690292, -6.36512414e-006, 0.342026591, 7.60564581e-006, 0.99999994, -2.2854656e-006, -0.342026561, 4.75021079e-006, 0.939690471), Part35, Handle)
Part36Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000411450863, -0.0457839966, -1.06892014, 8.81997403e-006, 1, -8.54674727e-006, 0.173648596, 6.88526779e-006, 0.984807849, 0.98480773, -1.01698679e-005, -0.173648596), Part36, Handle)
Part37Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0659347177, 0.0378875732, 1.34512329, 8.81997403e-006, 1, -8.54674727e-006, 0.00591352955, -8.59890133e-006, -0.999982655, -0.999982536, 8.76927515e-006, -0.00591354072), Part37, Handle)
Part38Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0516773462, 0.0402183533, 1.34937668, 8.81997403e-006, 1, -8.54674727e-006, 0.00591352955, -8.59890133e-006, -0.999982655, -0.999982536, 8.76927515e-006, -0.00591354072), Part38, Handle)
Part39Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.064314276, 0.0364646912, 1.32746887, -8.81997403e-006, -1, 8.54674727e-006, -0.066820696, 9.11671668e-006, 0.997765124, -0.997765064, 8.22916627e-006, -0.066820696), Part39, Handle)
Part40Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0501194596, 0.03881073, 1.3318367, -8.81997403e-006, -1, 8.54674727e-006, -0.066820696, 9.11671668e-006, 0.997765124, -0.997765064, 8.22916627e-006, -0.066820696), Part40, Handle)
Part41Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.43590164, 2.02242279, 0.270399094, 0.642794073, 0.263338923, -0.719352961, -0.766035914, 0.218260959, -0.604608297, -0.00221022032, 0.939688683, 0.342023939), Part41, Handle)
Part42Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.72028351, -0.0561943054, 0.25627327, 0.984806538, 0.0614373572, -0.162424847, -0.173641786, 0.336462647, -0.925549388, -0.00221342035, 0.93969059, 0.342018634), Part42, Handle)
Part43Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.60027695, -2.512043, 0.00469616055, 0.939692736, -0.00208254764, -0.342013419, 0.342012644, -0.000757087953, 0.939695239, -0.00221589394, -0.999997556, 8.27945769e-007), Part43, Handle)
Part44Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.64193726, 0.262393951, -0.000117331743, 0.939690888, -0.0020794929, 0.342018694, -0.34201777, 0.000769576989, 0.939693213, -0.00221729488, -0.999997616, 1.19395554e-005), Part44, Handle)
Part45Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.60744476, 1.76337814, -0.00123023987, 0.642783582, -0.0014211908, 0.766046643, -0.766044676, 0.0016994183, 0.642785192, -0.00221535377, -0.999997556, 3.66196036e-006), Part45, Handle)
Part46Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.11647415, -0.000777751207, -0.224704742, 1.00000012, 2.32830644e-010, 3.7252903e-009, 2.32830644e-010, 1, 0, 3.7252903e-009, 0, 1.00000012), Part46, Handle)
Part47Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00204455853, -0.000217437744, 4.1167717, 8.81997403e-006, 1, -8.54674727e-006, 7.82310963e-006, -8.54674727e-006, -1.00000012, -1, 8.8197994e-006, -7.82310963e-006), Part47, Handle)
Part48Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.36617279, 2.78949738e-005, -1.213871, 0.939695656, -8.45664181e-006, -0.342012167, 9.18429578e-006, 1, 5.07570803e-007, 0.342012078, -3.61772254e-006, 0.939695716), Part48, Handle)
Part49Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.47472, -2.04741955e-005, -0.435817719, 0.984808147, -2.8036302e-006, 0.173646405, 1.79972267e-006, 1, 5.9409067e-006, -0.17364639, -5.53810969e-006, 0.984808087), Part49, Handle)
Part50Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0105819702, -1.27255917e-005, 1.16411591, -7.78958201e-006, -1.53575093e-006, 1.00000012, 1.05060753e-005, 1, 1.53668225e-006, -1, 1.05063082e-005, -7.7933073e-006), Part50, Handle)
Part51Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00163778663, 0.187753677, -0.761482239, -8.81997403e-006, -1, 8.54674727e-006, 0.342030585, -1.10482797e-005, -0.939688921, 0.939688861, -5.36511652e-006, 0.342030615), Part51, Handle)
Part52Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000415325165, -0.175437927, -1.04231262, -8.81997403e-006, -1, 8.54674727e-006, 0.342030585, -1.10482797e-005, -0.939688921, 0.939688861, -5.36511652e-006, 0.342030615), Part52, Handle)
Part53Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52289867e-005, 0.33638382, -0.73009491, 8.81997403e-006, 1, -8.54674727e-006, 0.173648596, 6.88526779e-006, 0.984807849, 0.98480773, -1.01698679e-005, -0.173648596), Part53, Handle)
Part54Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.14784622, 0.000820249319, -0.336872101, 0.984808505, -7.65419099e-006, -0.173644334, -6.99376687e-006, -0.99999994, 4.414469e-006, -0.173644304, -3.13483179e-006, -0.984808564), Part54, Handle)
Part55Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.47130203, 0.00163501501, -0.830039978, 0.984808147, -2.8036302e-006, 0.173646405, -1.79972267e-006, -1, -5.9409067e-006, 0.17364639, 5.53810969e-006, -0.984808087), Part55, Handle)
Part56Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.41790009, 0.00164881349, -0.576755524, 1.00000012, 2.32830644e-010, 3.7252903e-009, -2.32830644e-010, -1, 0, -3.7252903e-009, 0, -1.00000012), Part56, Handle)
Part57Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000419974327, -0.29524231, 1.6622963, -8.81997403e-006, -1, 8.54674727e-006, -7.82310963e-006, 8.54674727e-006, 1.00000012, -1, 8.8197994e-006, -7.82310963e-006), Part57, Handle)
Part58Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.24662781, 0.00168159604, -1.30755234, 0.866025507, -6.04754314e-006, 0.49999994, -1.44689693e-005, -1.00000012, 1.29649416e-005, 0.499999881, -1.84625387e-005, -0.866025507), Part58, Handle)
Part59Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.58223915e-005, -1.30659866, 1.48707581, 8.81997403e-006, 1, -8.54674727e-006, 0.500009, -1.18114986e-005, -0.866020262, -0.866020203, 3.36533412e-006, -0.50000912), Part59, Handle)
Part60Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00163337588, -1.21289825, 1.60674286, -8.81997403e-006, -1, 8.54674727e-006, 0.342021614, 5.01424074e-006, 0.93969214, -0.93969214, 1.12112612e-005, 0.342021704), Part60, Handle)
Part61Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000455230474, -0.187801361, 1.70013809, 8.81997403e-006, 1, -8.54674727e-006, 7.82310963e-006, -8.54674727e-006, -1.00000012, -1, 8.8197994e-006, -7.82310963e-006), Part61, Handle)
Part62Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00202268362, -3.76424789, 0.251018524, 8.81997403e-006, 1, -8.54674727e-006, 1, -8.81956657e-006, 3.05473804e-006, 3.05101275e-006, -8.54674727e-006, -1.00000012), Part62, Handle)
Part63Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.122699738, -0.000848740339, 0.681987762, 0.342030555, 5.20143658e-007, -0.939688981, 1.06124789e-005, 1, 4.41726297e-006, 0.939688921, -1.14825089e-005, 0.342030585), Part63, Handle)
Part64Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000454843044, -0.307516098, -0.521232605, -8.81997403e-006, -1, 8.54674727e-006, -0.342030585, 1.10482797e-005, 0.939688921, -0.939688861, 5.36511652e-006, -0.342030615), Part64, Handle)
Part65Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00041821599, 0.0523777008, 0.974716187, -8.81997403e-006, -1, 8.54674727e-006, 0.342030585, -1.10482797e-005, -0.939688921, 0.939688861, -5.36511652e-006, 0.342030615), Part65, Handle)
Part66Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000442802906, 0.128040314, 0.935142517, -8.81997403e-006, -1, 8.54674727e-006, 0.342030585, -1.10482797e-005, -0.939688921, 0.939688861, -5.36511652e-006, 0.342030615), Part66, Handle)
Part67Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000448226929, -0.105899811, -0.460407257, 8.81997403e-006, 1, -8.54674727e-006, 7.82310963e-006, -8.54674727e-006, -1.00000012, -1, 8.8197994e-006, -7.82310963e-006), Part67, Handle)
Part68Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0792274475, -3.54644394, -0.588537216, -7.78958201e-006, -1.53575093e-006, 1.00000012, 0.939695477, -0.342012316, 6.7949295e-006, 0.342012346, 0.939695537, 4.11085784e-006), Part68, Handle)
Part69Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.286860824, 0.0800094604, -3.6447258, -8.81997403e-006, -1, 8.54674727e-006, 7.82310963e-006, -8.54674727e-006, -1.00000012, 1, -8.8197994e-006, 7.82310963e-006), Part69, Handle)
Part70Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.740261078, 0.079990387, -3.55434799, 0.173639119, -0.984809458, 7.67176971e-007, 9.72300768e-006, 9.35047865e-007, -1.00000012, 0.984809339, 0.173639119, 9.73790884e-006), Part70, Handle)
Part71Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.08800507, 0.0809249878, -1.66077614, 0.866020083, -0.500009179, 2.46241689e-006, 6.66081905e-006, 6.60307705e-006, -1.00000012, 0.500009239, 0.866020143, 9.05618072e-006), Part71, Handle)
Part72Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.829088211, 0.0795860291, -3.54740143, -0.342025518, -0.93969065, 2.08616257e-007, 5.85243106e-006, -2.3515895e-006, -1.00000012, 0.939690769, -0.342025548, 6.30319118e-006), Part72, Handle)
Part73Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0783958435, -0.000823318958, 2.64012527, -7.78958201e-006, -1.53575093e-006, 1.00000012, 1.05060753e-005, 1, 1.53668225e-006, -1, 1.05063082e-005, -7.7933073e-006), Part73, Handle)
Part74Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.09498978, -0.0785293579, -1.66501427, 0.866030633, 0.49999088, 8.38190317e-007, -6.96629286e-006, 1.03889033e-005, 1.00000012, 0.49999094, -0.866030753, 1.24797225e-005), Part74, Handle)
Part75Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0802154541, -3.55396271, -0.591609955, 7.78958201e-006, 1.53575093e-006, -1.00000012, 0.939692855, 0.342019618, 7.84546137e-006, 0.342019618, -0.939692855, 1.22189522e-006), Part75, Handle)
Part76Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.286594957, -0.0794296265, -3.65285492, 8.81997403e-006, 1, -8.54674727e-006, -7.82310963e-006, 8.54674727e-006, 1.00000012, 1, -8.8197994e-006, 7.82310963e-006), Part76, Handle)
Part77Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.832042694, -0.0797920227, -3.55490875, -0.342013121, 0.939695239, -1.65402889e-006, -6.73905015e-006, -6.91972673e-007, 1.00000012, 0.939695239, 0.342013121, 6.57141209e-006), Part77, Handle)
Part78Weld = CreateWeld(Nageblade,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.741433144, -0.0793914795, -3.56241989, 0.173653081, 0.984806955, -5.27687371e-006, -2.75671482e-006, 5.84684312e-006, 1.00000012, 0.984806955, -0.173653066, 3.73274088e-006), Part78, Handle)

Blade = Part34

--[[ Damage function ]]--
function DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)
	
local HitHumanoid = Hit.Parent.Humanoid


local Damage = math.random(Min, Max)


coroutine.resume(coroutine.create(function()
HitHumanoid:TakeDamage(Damage)
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
--[[ Attacks ]]--

function Attack1()	
Attacking = true

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-0.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(2, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,-1.57),0.6)

	
end	

MakeSFX(Blade, 199146359, 1, 1)

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,1.8),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1.6),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(2, 0.5, 0.1) * CFrame.Angles(0,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,-0.2,-0.2), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,-1.57),0.6)

	
end	
ValidateDamage(Blade, 7 ,5 , 8, "Normal", "Penetration", 5)

Attacking = false
end

function Attack2()	
Attacking = true

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1.6),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(2, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.6)

	
end	

MakeSFX(Blade, 199150686, 1, 1)

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-0.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(2, 0.5, 0.1) * CFrame.Angles(0,-0.2,1.6), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, -0) * CFrame.Angles(0,0,-0.2), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.5)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.6)

	
end	

ValidateDamage(Blade, 7 ,5 , 8, "Normal", "Penetration", 5)

Attacking = false
end

function Attack3()	
Attacking = true
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local ReferenceWeld = CreateWeld(Reference,  CFrame.new(0,0.5,-15),CFrame.new(0,0,0), Reference, Root)

local Reference2 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference2Weld = CreateWeld(Reference2,  CFrame.new(0,0.5,-2),CFrame.new(0,0,0), Reference2, Root)


for i = 1,5 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1.3),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-2, 0.5, 0) * CFrame.Angles(0.5,0,-1.6), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0) * CFrame.Angles(0,1.6,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.5) 
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

	
end

CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, Color, "Neon", 0.5)
wait(0.5)
ValidateDamage(Reference, 10 ,5 , 8, "Ranged", "Penetration", -100)
CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, Color, "Neon", 0.5)
MakeSFX(Reference, 228343249 ,1 ,1)
Reference:Remove()
Attacking = false
end


function DoBlock()	
	
Attacking = true
Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 45
Blocking = true


	
while Blocking and BlockD.Value > 0 do
wait()
Block.Value = true

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(0,0,1.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

	
end

Attacking = false
Block.Value = false
Blocking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50

end

function Stomp()
	
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0


for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(-0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1, 1, 0) * CFrame.Angles(3.2,0,-0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
	
end

MakeSFX(Torso, 142070127, 1, 1)
ValidateDamage(Torso, 30 ,6, 7, "Knockdown", "Penetration", 15)
local Hit, Position = RayCast(Torso.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,100,Character)

if Hit ~= nil then

local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
Reference.Anchored = true
Reference.CFrame = CFrame.new(Position)

CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, Color, "Neon", 0.5)

game:GetService("Debris"):AddItem(Reference,0.1)

end

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0.1) * CFrame.Angles(-0.2,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0.1) * CFrame.Angles(-0.2,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
	
end

Attacking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
	
	
end

function AstralBeam()
	
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
	
	
	
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(0,60,0), "SmoothPlastic", 1, "Block")
local ReferenceWeld = CreateWeld(Reference,  CFrame.new(0,-30,0),CFrame.new(0,0,0), Reference, Left_Arm)

local Reference2 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference2Weld = CreateWeld(Reference2,  CFrame.new(0,0.5,-2),CFrame.new(0,0,0), Reference2, Root)


for i = 1,10 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1.3),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-2, 0.5, 0) * CFrame.Angles(0.5,0,-1.6), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0) * CFrame.Angles(0,1.6,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.5) 
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

	
end

coroutine.resume(coroutine.create(function()
for i = 1,17 do
wait(0.3)	
ValidateDamage(Reference, 30 ,3 , 5, "Ranged", "Penetration", 10)
end

end))

for i = 1,100 do
wait()
local Effect = HeadEffect(Reference.Position, Services.Workspace,  1, 300, 1, 5, 0, 5, 5, Color, "Neon", 0.5)
Effect.Rotation = Left_Arm.Rotation

MakeSFX(Reference, 228343249 ,1 ,1)	
end
	
Attacking = false
Reference:Remove()
Reference2:Remove()
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50

end

function AstralDash()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
	
wait(0.2)
local BV = Instance.new("BodyVelocity", Torso)
BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BV.Velocity = Torso.CFrame.lookVector * Vector3.new(50,0,50)

Head.Transparency = 1
Torso.Transparency = 1
Right_Arm.Transparency = 1
Left_Arm.Transparency = 1
Right_Leg.Transparency = 1
Left_Leg.Transparency = 1
Head.face.Transparency = 1

for i,v in pairs(Character:children()) do
if v:IsA("Accessory") then
	
v.Handle.Transparency = 1	
	
end	
end

Nageblade.Parent = nil

coroutine.resume(coroutine.create(function()
for i = 1,17 do
wait(0.3)	
ValidateDamage(Torso, 10 ,1 , 2, "Normal", "Penetration", 10)
end
end))

for i = 1,100 do
wait()

BV.Velocity = Mouse.Hit.lookVector * Vector3.new(50,0 ,50)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, Color, "Neon", 0.5)
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
end	

Head.Transparency = 0
Torso.Transparency = 0
Right_Arm.Transparency = 0
Left_Arm.Transparency = 0
Right_Leg.Transparency = 0
Left_Leg.Transparency = 0
Head.face.Transparency = 0
Nageblade.Parent = Character
for i,v in pairs(Character:children()) do
if v:IsA("Accessory") then
	
v.Handle.Transparency = 0	
	
end	
end

BV:Remove()
Attacking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50	
end

function AstralBlast()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local ReferenceWeld = CreateWeld(Reference,  CFrame.new(0,0.5,-15),CFrame.new(0,0,0), Reference, Root)

local Reference2 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference2Weld = CreateWeld(Reference2,  CFrame.new(0,0.5,-2),CFrame.new(0,0,0), Reference2, Root)

local Reference3 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference3Weld = CreateWeld(Reference3,  CFrame.new(0,0.5,-20),CFrame.new(0,0,0), Reference3, Root)

local Reference4 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference4Weld = CreateWeld(Reference4,  CFrame.new(0,0.5,-25),CFrame.new(0,0,0), Reference4, Root)


for i = 1,5 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1.3),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-2, 0.5, 0) * CFrame.Angles(0,0,-1.6), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0) * CFrame.Angles(0,1.6,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.5) 
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

	
end
MakeSFX(Reference, 137463716 ,1 ,1)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, Color, "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, Color, "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, Color, "Neon", 0.5)
wait(0.5)
MakeSFX(Reference, 130865054, 1, 1.5)
ValidateDamage(Reference, 20 ,36 , 40, "Ranged", "Penetration", 0)
CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 10, Color, "Neon", 0.5)
wait(0.5)
MakeSFX(Reference3, 130865054, 1, 1.5)
ValidateDamage(Reference3, 20 ,30 , 36, "Ranged", "Penetration", 0)
CircleEffect(Reference3.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 10, Color, "Neon", 0.5)
wait(0.5)
MakeSFX(Reference4, 130865054, 1, 1.5)
ValidateDamage(Reference4, 20 ,26 , 30, "Ranged", "Penetration", 0)
CircleEffect(Reference4.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 10, Color, "Neon", 0.5)


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
	
if Key == "e" and not Attacking and BlockD.Value > 100 then
	
DoBlock()

end	

if Key == "z" and not Attacking and Mana > 10 and Cooldown1 == MaxCooldown1 then

Mana = Mana - 10
Cooldown1 = 0
Stomp()

end	
if Key == "x" and not Attacking and Mana > 25 and Cooldown2 == MaxCooldown2 then

Mana = Mana - 25
Cooldown2 = 0
AstralBeam()

end		
if Key == "c" and not Attacking and Mana > 30 and Cooldown3 == MaxCooldown3 then

Mana = Mana - 30
Cooldown3 = 0
AstralDash()

end		
if Key == "v" and not Attacking and Mana > 50 and Cooldown4 == MaxCooldown4 then

Mana = Mana - 50
Cooldown4 = 0
AstralBlast()

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
	
HealthBarP2.BackgroundColor3 = BrickColor.new("Bright yellow").Color
	
end		

if Humanoid.Health <= RedZone then
	
HealthBarP2.BackgroundColor3 = BrickColor.new("Bright red").Color
	
end

if Humanoid.Health >= YellowZone then

HealthBarP2.BackgroundColor3 = BrickColor.new("Br. yellowish orange").Color
	
end


--[[ Resize All Bars ]]--	


CoolDown1Bar.Size = UDim2.new(Cooldown1 / MaxCooldown1,0,0,50)
CoolDown2Bar.Size = UDim2.new(Cooldown2 / MaxCooldown2,0,0,50)
CoolDown3Bar.Size = UDim2.new(Cooldown3 / MaxCooldown3,0,0,50)
CoolDown4Bar.Size = UDim2.new(Cooldown4 / MaxCooldown4,0,0,50)
CoolDownEBar.Size = UDim2.new(CooldownE / MaxCooldownE,0,0,50)

HealthBarP2.Size = UDim2.new(Humanoid.Health / Humanoid.MaxHealth,0,0,25)
BlockBarP2.Size = UDim2.new(BlockD.Value / MaxBlock,0,0,25)
ManaBarP2.Size = UDim2.new(Mana / MaxMana,0,0,25)

coroutine.resume(coroutine.create(function()
if not Blocking and BlockD.Value ~= MaxBlock then
wait(1)
BlockD.Value = BlockD.Value + 1
	
end

if BlockD.Value >= MaxBlock then
	
BlockD.Value = MaxBlock	

end
end))

	
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

--[[ CLerp animations ]]--
local ShieldReference = CreatePart(Services.Workspace, "ShieldReference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local ShieldReferenceWeld = CreateWeld(ShieldReference,  CFrame.new(0,0.5,-1.5),CFrame.new(0,0,0), ShieldReference, Root)

coroutine.resume(coroutine.create(function()
while true do
wait(0.5)

if Blocking then
	
local Shield = ShieldEffect(ShieldReference.Position, Services.Workspace,  1, 1, 1, 0.05, 0.05, 0.05, 10, Color, "Neon", 0.5)
Shield.Rotation = Root.Rotation
end	
end	
end))


while true do
wait()

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

Bars()


if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-0.6),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(-0.2,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0.2,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0.1,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(-0.1,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

end


if 2 < Torvel and Torvel < 22 and HitFloor ~= nil and Attacking == false then
Anim = "Walking"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0.3,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.2,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(-0.2,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5, -1) * CFrame.Angles(0,0.2,1.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0.2) * CFrame.Angles(-0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0.2) * CFrame.Angles(-0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, -0.2) * CFrame.Angles(0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.2) * CFrame.Angles(0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
HandleWeld.C0=clerp(HandleWeld.C0,CFrame.new(0,-1,0) * CFrame.Angles(-1.57,0,1.57),0.2)

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

Effect[1].Transparency = Effect[1].Transparency + 0.05

elseif Effect[2] == "Shield" then
	
if Effect[1]:FindFirstChild("Mesh") ~= nil then
Mesh=Effect[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])

end

Effect[1].Transparency = Effect[1].Transparency + 0.05

elseif Effect[2] == "Head" then
	
if Effect[1]:FindFirstChild("Mesh") ~= nil then
Mesh=Effect[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])

end

Effect[1].Transparency = Effect[1].Transparency + 0.05

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