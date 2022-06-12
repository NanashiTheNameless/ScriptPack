--[[ Guardian Script ]]--
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
local Color = "Bright yellow"

local cf = CFrame.new
local WalkForward = false
	
local Block = Instance.new("BoolValue",Character)
Block.Value = false
Block.Name = "Block"

local BlockD = Instance.new("IntValue", Block)
BlockD.Name = "BlockDurability"
BlockD.Value = 300

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

MaxCooldown1 = 5
MaxCooldown2 = 30
MaxCooldown3 = 30
MaxCooldown4 = 80
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
BlockBarP2.BackgroundColor3 = BrickColor.new("Bright yellow").Color

local BlockBarText = Instance.new("TextLabel", BlockBarP1)
BlockBarText.Name = "BlockBarText"
BlockBarText.Size = UDim2.new(0,285,0,20)
BlockBarText.Position = UDim2.new(0,0,0,0)	
BlockBarText.TextScaled = true
BlockBarText.Text = "Block"
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
CoolDown1Bar.BackgroundColor3 = BrickColor.Yellow().Color

local CoolDown1Text = Instance.new("TextLabel", CoolDown1Frame)
CoolDown1Text.Name = "CoolDown1Text"
CoolDown1Text.Size = UDim2.new(0,80,0,50)
CoolDown1Text.Position = UDim2.new(0,0,0,0)	
CoolDown1Text.BackgroundTransparency = 1
CoolDown1Text.TextScaled = true
CoolDown1Text.Text = "Z - Kick"
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
CoolDown2Bar.BackgroundColor3 = BrickColor.Yellow().Color

local CoolDown2Text = Instance.new("TextLabel", CoolDown2Frame)
CoolDown2Text.Name = "CoolDown2Text"
CoolDown2Text.Size = UDim2.new(0,80,0,50)
CoolDown2Text.Position = UDim2.new(0,0,0,0)	
CoolDown2Text.BackgroundTransparency = 1
CoolDown2Text.TextScaled = true
CoolDown2Text.Text = "X - Spinning Lance"
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
CoolDown3Bar.BackgroundColor3 = BrickColor.Yellow().Color

local CoolDown3Text = Instance.new("TextLabel", CoolDown3Frame)
CoolDown3Text.Name = "CoolDown3Text"
CoolDown3Text.Size = UDim2.new(0,80,0,50)
CoolDown3Text.Position = UDim2.new(0,0,0,0)	
CoolDown3Text.BackgroundTransparency = 1
CoolDown3Text.TextScaled = true
CoolDown3Text.Text = "C - Lance Jump"
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
CoolDown4Bar.BackgroundColor3 = BrickColor.Yellow().Color

local CoolDown4Text = Instance.new("TextLabel", CoolDown4Frame)
CoolDown4Text.Name = "CoolDown4Text"
CoolDown4Text.Size = UDim2.new(0,80,0,50)
CoolDown4Text.Position = UDim2.new(0,0,0,0)	
CoolDown4Text.BackgroundTransparency = 1
CoolDown4Text.TextScaled = true
CoolDown4Text.Text = "V - Defensive Blast"
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
CoolDownEBar.BackgroundColor3 = BrickColor.Yellow().Color

local CoolDownEText = Instance.new("TextLabel", CoolDownEFrame)
CoolDownEText.Name = "CoolDownEText"
CoolDownEText.Size = UDim2.new(0,180,0,50)
CoolDownEText.Position = UDim2.new(0,0,0,0)	
CoolDownEText.BackgroundTransparency = 1
CoolDownEText.TextScaled = true
CoolDownEText.Text = "E - Block"
CoolDownEText.TextStrokeTransparency = 0
CoolDownEText.TextStrokeColor3 = Color3.new(1,1,1)
CoolDownEText.TextColor3 = Color3.new(0,0,0)
CoolDownEText.Font = "SciFi"


WalkSpeed = Humanoid.WalkSpeed
Health = Humanoid.Health
MaxHealth = Humanoid.MaxHealth

--------[[ Mesh Ids ]]--------

-- Eh... This is just my Stock of Meshes

SpikeMeshId = 1033714
SpikeBallId = 9982590
StarMeshId = 45428961
CrystalMeshId = 9756362

--------[[ Functions ]]--------

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
 
local CreateVelocity = function(Parent,Velocity,Force)
	
local BodyVelocity = Instance.new("BodyVelocity", Parent)
BodyVelocity.Velocity = Velocity
BodyVelocity.MaxForce = Force	

	
	
return BodyVelocity	
	
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

local CreateShield = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=168130699"
Mesh.Scale = Scale

return Mesh and Part

end

local CreateWeld = function(Parent, Cframe, P1 , P0, Name)
	
local Weld = Instance.new("Weld", Parent)
Weld.Part0 = P0
Weld.Part1 = P1
Weld.Name = Name
Weld.C0 = Cframe

return Weld	
	
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

--------[[ Lance ]]--------

local LanceModel = Instance.new("Model", Character)
LanceModel.Name = "Lance"

P1 = CreatePart( LanceModel, "LancePart1", "Bright yellow", Vector3.new(2.4, 0.35, 0.35), "Neon", 0, "Cylinder" )
P2 = CreatePart( LanceModel, "LanceHandle", "Bright yellow", Vector3.new(2.7, 0.3, 0.3), "Neon", 0, "Cylinder" )
P3 = CreatePart( LanceModel, "LancePart2", "Bright yellow", Vector3.new(2.4, 0.35, 0.35), "Neon", 0, "Cylinder" )
D1 = CreatePart( LanceModel, "LanceDetail1", "Lily white", Vector3.new(0.2, 0.31, 0.31), "SmoothPlastic", 0, "Cylinder" )
D2 = CreatePart( LanceModel, "LanceDetail2", "Lily white", Vector3.new(0.2, 0.31, 0.31), "SmoothPlastic", 0, "Cylinder" )
D3 = CreatePart( LanceModel, "LanceDetail3", "Lily white", Vector3.new(0.2, 0.31, 0.31), "SmoothPlastic", 0, "Cylinder" )
D4 = CreatePart( LanceModel, "LanceDetail4", "Lily white", Vector3.new(0.2, 0.31, 0.31), "SmoothPlastic", 0, "Cylinder" )
D5 = CreatePart( LanceModel, "LanceDetail5", "Lily white", Vector3.new(0.2, 0.31, 0.31), "SmoothPlastic", 0, "Cylinder" )
D6 = CreatePart( LanceModel, "LanceDetail6", "Lily white", Vector3.new(0.2, 0.31, 0.31), "SmoothPlastic", 0, "Cylinder" )
C1 = CreateCrystal( LanceModel, "LanceBlade1", "Lily white", Vector3.new(0.2, 0.2, 0.2), "Neon", 0, Vector3.new(0.5, 1, 0.5) )
C2 = CreateCrystal( LanceModel, "LanceBlade2", "Lily white", Vector3.new(0.2, 0.2, 0.2), "Neon", 0, Vector3.new(0.5, 1, 0.5) )

W1 = CreateWeld( P2, CFrame.new(0,1,0) * CFrame.Angles(0,0,0), Left_Arm , P2 , "LeftArmToHandle" )
W2 = CreateWeld( P1, CFrame.new(2.5,0,0) * CFrame.Angles(0,0,0), P1 , P2 , "HandleToP1" )
W3 = CreateWeld( P3, CFrame.new(5,0,0) * CFrame.Angles(0,0,0), P1 , P3 , "HandleToP3" )
W4 = CreateWeld( C1,  CFrame.new(-1,0,0) * CFrame.Angles(0,0,1.58), C1 , P3 , "P4ToC1" )
W5 = CreateWeld( C2,  CFrame.new(1,0,0) * CFrame.Angles(0,0,1.58), C2 , P1 , "P5ToC2" )
W6 = CreateWeld( D1,  CFrame.new(1.2,0,0) * CFrame.Angles(0,0,0), D1 , P2 , "D1ToHandle" )
W7 = CreateWeld( D2,  CFrame.new(0.6,0,0) * CFrame.Angles(0,0,0), D2 , P2 , "D2ToHandle" )
W8 = CreateWeld( D3,  CFrame.new(0,0,0) * CFrame.Angles(0,0,0), D3 , P2 , "D3ToHandle" )
W9 = CreateWeld( D4,  CFrame.new(-0.6,0,0) * CFrame.Angles(0,0,0), D4 , P2 , "D4ToHandle" )
W10 = CreateWeld( D5,  CFrame.new(-1.2,0,0) * CFrame.Angles(0,0,0), D5 , P2 , "D5ToHandle" )
W11 = CreateWeld( D6,  CFrame.new(-1.8,0,0) * CFrame.Angles(0,0,0), D6 , P2 , "D6ToHandle" )


--[[ Shield ]]--
local ShieldModel = Instance.new("Model", Character)
ShieldModel.Name = "Shield"


Shield = CreateShield( ShieldModel, "Shield", "Bright yellow", Vector3.new(4.43, 5.3, 0.2), "Neon", 0 , Vector3.new(1,1,1) )

ShieldWeld = CreateWeld( Shield,  CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0), Right_Arm , Shield , "RightArmToShield" )




if Player:FindFirstChild("Custom") and Player.Custom.Customized.Value == true then
	
CoolDown1Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDown2Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDown3Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDown4Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDownEBar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
	
	
P1.BrickColor = BrickColor.new(Player.Custom.Co1.Value)
P2.BrickColor = BrickColor.new(Player.Custom.Co1.Value)
P3.BrickColor = BrickColor.new(Player.Custom.Co1.Value)
Shield.BrickColor = BrickColor.new(Player.Custom.Co1.Value)
	
D1.BrickColor = BrickColor.new(Player.Custom.Co2.Value)
D2.BrickColor = BrickColor.new(Player.Custom.Co2.Value)
D3.BrickColor = BrickColor.new(Player.Custom.Co2.Value)
D4.BrickColor = BrickColor.new(Player.Custom.Co2.Value)
D5.BrickColor = BrickColor.new(Player.Custom.Co2.Value)
D6.BrickColor = BrickColor.new(Player.Custom.Co2.Value)

C1.BrickColor = BrickColor.new(Player.Custom.Co3.Value)	
C2.BrickColor = BrickColor.new(Player.Custom.Co3.Value)	

Color = Player.Custom.Co1.Value	
	
end

--[[ Functions ]]--

SWait = function(Number)
wait()
end

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
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Bright yellow", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
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
 

function Attack1()
Attacking = true	
CanAttack = false

for i = 1,7 do

SWait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.8) * CFrame.Angles(0,1.8,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.9, 0.5, -0.5) * CFrame.Angles(0,-0.6,-1.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
W1.C0=clerp(W1.C0,cf(0,1,0)*CFrame.Angles(0,0,0),0.2)	
ShieldWeld.C0=clerp(ShieldWeld.C0, CFrame.new(0,0,0.55) * CFrame.Angles(0,3.1,0),0.2)
end

MakeSFX(P3, 320557563, 1,1)
ValidateDamage(P3, 10, 10, 18, "Normal", "Penetration", 5)

for i = 1,6 do

SWait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,-1.3),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.8) * CFrame.Angles(0,1.8,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.9, 0.5, -0.5) * CFrame.Angles(0,-0.6,-1.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
W1.C0=clerp(W1.C0,cf(-1,0,-0.6)*CFrame.Angles(0,-0.5,1.6),0.2)	
ShieldWeld.C0=clerp(ShieldWeld.C0, CFrame.new(0,0,0.55) * CFrame.Angles(0,3.1,0),0.2)
end
Humanoid.WalkSpeed = WalkSpeed



Attacking = false


CanAttack = true


end

function Attack2()

Attacking = true	
CanAttack = false

for i = 1,7 do

SWait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,-0.8),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-0.6, 0.5, -0.8) * CFrame.Angles(0,-2.6,-1.6), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
W1.C0=clerp(W1.C0,cf(-1,0,-0.6)*CFrame.Angles(0,-0.5,1.6),0.2)
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)
end

MakeSFX(P3, 199145204, 1,1)
ValidateDamage(P3, 5, 6, 10, "Normal", "Penetration", 5)

for i = 1,7 do

SWait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,0.8),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.9, 0.5, -0.6) * CFrame.Angles(0,-0.6,-1.6), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
W1.C0=clerp(W1.C0,cf(-1,0,-0.6)*CFrame.Angles(0,-0.7,1.6),0.2)
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)
end

Attacking = false	
	
CanAttack = true

	
	
end


function Attack3()

Attacking = true	
CanAttack = false


MakeSFX(P3, 320557563, 1, 0.6)

for i = 1,6 do

SWait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.8) * CFrame.Angles(0,1.8,1.8), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,-1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.2) 
ShieldWeld.C0=clerp(ShieldWeld.C0, CFrame.new(0,0,0.55) * CFrame.Angles(0,3.1,0),0.2)

end
ValidateDamage(Shield, 5, 5, 5, "Knockdown", "Penetration", 5)

for i = 1,8 do

SWait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,-1),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,-1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.2) 
ShieldWeld.C0=clerp(ShieldWeld.C0, CFrame.new(0,0,0.55) * CFrame.Angles(0,3.1,0),0.2)

end

Attacking = false	
	
CanAttack = true


	
end

function Kick()

Attacking = true
CanAttack = false
MakeSFX(Right_Leg, 320557563, 1, 1)

for i = 1,6 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,-1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,1), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(0.5,-1,0.5) * CFrame.Angles(0,0,1.6),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-0.5,-1,-0.5) * CFrame.Angles(0,-3.2,0),0.2) 
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

end

ValidateDamage(Right_Leg, 0, 5, 5, "Knockdown", "Punch", 20)


for i = 1,6 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,-1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,1), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0.5) * CFrame.Angles(0,0,1.6),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-0.5,-1,-0.5) * CFrame.Angles(0,-3.2,0),0.2) 
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

end






Attacking = false
CanAttack = true

end

function Kick()

Attacking = true
CanAttack = false
MakeSFX(Right_Leg, 320557563, 1, 1)

for i = 1,6 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,-1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,1), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(0.5,-1,0.5) * CFrame.Angles(0,0,1.6),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-0.5,-1,-0.5) * CFrame.Angles(0,-3.2,0),0.2) 
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

end
ValidateDamage(Right_Leg, 10, 5, 5, "Knockdown", "Punch", 20)


for i = 1,6 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,-1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,1), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0.5) * CFrame.Angles(0,0,1.6),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-0.5,-1,-0.5) * CFrame.Angles(0,-3.2,0),0.2) 
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

end



Attacking = false
CanAttack = true

end

function SpinningLance()
	
Attacking = true	
Spinning = true
CanAttack = false



coroutine.resume(coroutine.create(function()


while Spinning do
wait(0.5)

ValidateDamage(P2, 10, 5, 7, "Normal", "Penetration", 20)

end
end))

local RotationAdd = 1

for i = 1,20 do
wait()
MakeSFX(P3, 320557563, 1 , 1)

RotationAdd = RotationAdd + 0.8
BlockEffect(P3.Position, Services.Workspace, 1,1,1, 3,3,3, 0.15, Color, "Neon", 0.5)
BlockEffect(P1.Position, Services.Workspace, 1,1,1, 3,3,3, 0.15, Color, "Neon", 0.5)
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,-1.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 0, 0) * CFrame.Angles(0,0,0), 0.2)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-2, 0.5, 0) * CFrame.Angles(0,0,-1.6), 0.2)
W1.C0=clerp(W1.C0,cf(0,1,0)*CFrame.Angles(0,RotationAdd,0),0.5)
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

end


Attacking = false	
Spinning = false
CanAttack = true


end

function LanceJump()
	
Attacking = true	
CanAttack = true


Humanoid.JumpPower = 150
Humanoid.Jump = true
MakeSFX(Torso, 320557563, 1 , 1)
wait(0.2)
local BV = Instance.new("BodyVelocity", Torso)
BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BV.Velocity = Torso.CFrame.lookVector * Vector3.new(100,0,100)

local RotationAdd = 1


for i = 1,20 do
wait()
MakeSFX(Torso, 320557563, 1 , 1)
RotationAdd = RotationAdd + 0.8
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 3,3,3, 0.2, Color, "Neon", 0.5)
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(1.6,0,RotationAdd),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,-1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,1), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,-0) * CFrame.Angles(0,-1.6,0),0.2) 
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

end	

BV:Remove()
Humanoid.JumpPower = 50

Attacking = false	
CanAttack = true
	
end



function DefensiveBlast()

Attacking = true
CanAttack = false
MakeSFX(Torso, 320557563, 1, 1)

for i = 1,20 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,-1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-0.8, 0.5, -0.8) * CFrame.Angles(1.8,0,1), 0.4)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,-0) * CFrame.Angles(0,-1.6,0),0.2) 
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

end
ValidateDamage(Torso, 30, 22, 36, "Knockdown", "Penetration", 20)
MakeSFX(Torso, 341336499, 0.8 , 1,4)

CircleEffect(Torso.Position, Services.Workspace, 10,10,10, 0.5, Color, "Neon", 0.5)



Attacking = false
CanAttack = true

end

--[[ OnKeyDown Functions ]]--

function OnClicked()


if Combo == 1 and not Attacking and not Blocking and CanAttack then
Combo = 2
Attack1()	

	
	

elseif Combo == 2 and not Attacking and not Blocking and CanAttack  then
Combo = 3
Attack2()
	

elseif Combo == 3 and not Attacking and not Blocking and CanAttack  then
Combo = 1
Attack3()

end
end


function OnKeyDown(Key)
	
if Key == "e" and not Attacking and CooldownE == MaxCooldownE and BlockD.Value > 99 then

Anim = "Blocking"
Attacking = true
Blocking = true
Block.Value = true
Humanoid.WalkSpeed = 8
CooldownE = 0

end		

if Key == "z" and not Attacking and Mana > 10 and Cooldown1 == MaxCooldown1 then

Mana = Mana - 10
Cooldown1 = 0
Kick()

end	

if Key == "x" and not Attacking and Mana > 20 and Cooldown2 == MaxCooldown2 then

Mana = Mana - 20
Cooldown2 = 0
SpinningLance()

	
end


if Key == "c" and not Attacking and Mana > 25 and Cooldown3 == MaxCooldown3 then

Mana = Mana - 25
Cooldown3 = 0
LanceJump()

end	

if Key == "v" and not Attacking and Mana > 35 and Cooldown4 == MaxCooldown4 then

Mana = Mana - 35
Cooldown4 = 0
DefensiveBlast()

end	
end

function OnKeyUp(Key)
	
if Key == "e" then
	
Anim = "Idle"
Blocking = false
Humanoid.WalkSpeed = WalkSpeed
Block.Value = false
Attacking = false

end	
	

end

Mouse.KeyDown:connect(OnKeyDown)
Mouse.KeyUp:connect(OnKeyUp)
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

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

Bars()

if Anim == "Blocking" and Attacking == true then

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,1),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.8) * CFrame.Angles(0,1.8,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-0.2, 0.5, -1.2) * CFrame.Angles(0,0.4,1.6), 0.3)
W1.C0=clerp(W1.C0,CFrame.new(0,1,0)*CFrame.Angles(0,0,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.2) 
ShieldWeld.C0=clerp(ShieldWeld.C0, CFrame.new(0,0,0.55) * CFrame.Angles(0,3.1,0),0.2)
end

if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.9, 0.5, -0.5) * CFrame.Angles(0,-0.6,-1.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1.1,-0)*CFrame.Angles(0,-1.6,-0.2),0.2)
W1.C0=clerp(W1.C0,cf(0,1,0)*CFrame.Angles(0,0,0),0.2)	
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)
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

if Attacking == false then

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 0.2, 0.5) * CFrame.Angles(-0.8,0,0), 0.2)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.2, 0.5) * CFrame.Angles(-0.8,0,0), 0.2)
W1.C0=clerp(W1.C0,cf(0,1,0)*CFrame.Angles(0,-1.58,0),0.2)
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.2) 

end

if Attacking and not Blocking then
	return
end

Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.2) 
end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 0.2, 0.5) * CFrame.Angles(-0.8,0,0), 0.2)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.2, 0.5) * CFrame.Angles(-0.8,0,0), 0.2)
W1.C0=clerp(W1.C0,cf(0,1,0)*CFrame.Angles(0,-1.58,0),0.2)
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,-0.5) * CFrame.Angles(0,-1.6,0.5),0.2) 

	
	
	
end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 0.2, 0.5) * CFrame.Angles(-0.8,0,0), 0.2)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.2, 0.5) * CFrame.Angles(-0.8,0,0), 0.2)
W1.C0=clerp(W1.C0,cf(0,1,0)*CFrame.Angles(0,-1.58,0),0.2)
ShieldWeld.C0 = clerp(ShieldWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(0,1.58,0),0.2)

	
	
	
end

if BlockD.Value < 15 then
	
Anim = "Idle"
Blocking = false
Humanoid.WalkSpeed = WalkSpeed
Block.Value = false
Attacking = false

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