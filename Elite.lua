--[[ Elite Script ]]--
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
local Shots = 1
local Blocking = false
local MaxMana = 100
local Mana = 100
local MaxBlock = 100
local Effects = {}
local Color = "Bright yellow"
local cf = CFrame.new
local WalkFoRightShoulderard = false
	
local RootCFrame = CFrame.Angles(-1.57,0,3.14)
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

MaxCooldown1 = 150
MaxCooldown2 = 30
MaxCooldown3 = 50
MaxCooldown4 = 150
MaxCooldownE = 120

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
ManaBarP2.BackgroundColor3 = BrickColor.new("Dark stone grey").Color

local ManaBarText = Instance.new("TextLabel", ManaBarP1)
ManaBarText.Name = "ManaBarText"
ManaBarText.Size = UDim2.new(0,285,0,20)
ManaBarText.Position = UDim2.new(0,0,0,0)	
ManaBarText.TextScaled = true
ManaBarText.Text = "Skill"
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
CoolDown1Bar.BackgroundColor3 = BrickColor.DarkGray().Color

local CoolDown1Text = Instance.new("TextLabel", CoolDown1Frame)
CoolDown1Text.Name = "CoolDown1Text"
CoolDown1Text.Size = UDim2.new(0,80,0,50)
CoolDown1Text.Position = UDim2.new(0,0,0,0)	
CoolDown1Text.BackgroundTransparency = 1
CoolDown1Text.TextScaled = true
CoolDown1Text.Text = "Z - Shot combo"
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
CoolDown2Bar.BackgroundColor3 = BrickColor.DarkGray().Color

local CoolDown2Text = Instance.new("TextLabel", CoolDown2Frame)
CoolDown2Text.Name = "CoolDown2Text"
CoolDown2Text.Size = UDim2.new(0,80,0,50)
CoolDown2Text.Position = UDim2.new(0,0,0,0)	
CoolDown2Text.BackgroundTransparency = 1
CoolDown2Text.TextScaled = true
CoolDown2Text.Text = "X - Back jump"
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
CoolDown3Bar.BackgroundColor3 = BrickColor.DarkGray().Color

local CoolDown3Text = Instance.new("TextLabel", CoolDown3Frame)
CoolDown3Text.Name = "CoolDown3Text"
CoolDown3Text.Size = UDim2.new(0,80,0,50)
CoolDown3Text.Position = UDim2.new(0,0,0,0)	
CoolDown3Text.BackgroundTransparency = 1
CoolDown3Text.TextScaled = true
CoolDown3Text.Text = "C - Lighting shot"
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
CoolDown4Bar.BackgroundColor3 = BrickColor.DarkGray().Color

local CoolDown4Text = Instance.new("TextLabel", CoolDown4Frame)
CoolDown4Text.Name = "CoolDown4Text"
CoolDown4Text.Size = UDim2.new(0,80,0,50)
CoolDown4Text.Position = UDim2.new(0,0,0,0)	
CoolDown4Text.BackgroundTransparency = 1
CoolDown4Text.TextScaled = true
CoolDown4Text.Text = "V - Overshot"
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
CoolDownEBar.BackgroundColor3 = BrickColor.DarkGray().Color

local CoolDownEText = Instance.new("TextLabel", CoolDownEFrame)
CoolDownEText.Name = "CoolDownEText"
CoolDownEText.Size = UDim2.new(0,180,0,50)
CoolDownEText.Position = UDim2.new(0,0,0,0)	
CoolDownEText.BackgroundTransparency = 1
CoolDownEText.TextScaled = true
CoolDownEText.Text = "E - Shoot"
CoolDownEText.TextStrokeTransparency = 0
CoolDownEText.TextStrokeColor3 = Color3.new(1,1,1)
CoolDownEText.TextColor3 = Color3.new(0,0,0)
CoolDownEText.Font = "SciFi"


WalkSpeed = Humanoid.WalkSpeed
Health = Humanoid.Health
MaxHealth = Humanoid.MaxHealth

--------[[ Mesh Ids ]]--------

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




CircleEffect = function(Position, Parent, DX, DY, DZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
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
Mesh.Scale = Vector3.new(DX,DY,DZ)

Services.Debris:AddItem(Part, Time)


table.insert(Effects, {Part, "Circle", Time, SX, SY, SZ})

return Part

end

CylinderEffect = function(Position, Parent, DX, DY, DZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "CylinderEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.CanCollide = false
Part.Position = Position
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshType = "Cylinder"
Mesh.Scale = Vector3.new(DX,DY,DZ)

Services.Debris:AddItem(Part, Time)


table.insert(Effects, {Part, "Cylinder", Time, SX, SY, SZ})


end

function Lightning(p0,p1,tym,ofs,col,th,tra,last , SX, SY, SZ) -- yea i copy dis, it doenst matter anyways , everyone copy fenrier's thingies y not 1 time?
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
local Part = li
local Mesh = Instance.new("BlockMesh", Part)
Mesh.Scale = Vector3.new(1, 1, 1)

table.insert(Effects, {Part, "Lightning", tym, SX, SY, SZ})
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,last)
end


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

WaveEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "WaveEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.Position = Position
Part.CanCollide = false
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=20329976"
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)

Services.Debris:AddItem(Part, Time)

table.insert(Effects, {Part, "Wave", Time, SX, SY, SZ})


end

function Shot(Part) 
local HitPart = CircleEffect(Mouse.Hit.p, Services.Workspace, 1,  1, 1, 1, 1, 1, 10, "Bright yellow", "Neon", 0.5)
CircleEffect(Mouse.Hit.p, Services.Workspace, 1,  1, 1, 0.5, 0.5, 0.5, 10, "CGA brown", "Neon", 0)
CircleEffect(Part.Position, Services.Workspace, 1,  1, 1, 1, 1, 1, 10, "Bright yellow", "Neon", 0.5)
CircleEffect(Part.Position, Services.Workspace, 1,  1, 1, 0.5, 0.5, 0.5, 10, "CGA brown", "Neon", 0)
MakeSFX(Part, 203691885, 1, 1)
ValidateDamage(HitPart, 3, 4, 5, "Ranged", "Penetration", 5)
end 

function LightShot(Part) 
local HitPart = CircleEffect(Mouse.Hit.p, Services.Workspace, 0, 0, 0, 0, 0, 0, 10, "Bright yellow", "Neon", 0)


Lightning(Part.Position, HitPart.Position, 5, 1, "Bright yellow", 0.05, 0.4, 10,0.01,0.01,0.01)

MakeSFX(Part, 203691378, 1, 1)
ValidateDamage(HitPart, 3, 6, 10, "Ranged", "Penetration", 5)
end 


--[[ Ultra Calibers ]]--
Caliber1 = Instance.new("Model", Character)
Caliber1.Name = "Caliber1"

local Handle1 =  CreatePart(Caliber1, "Handle", "Medium stone grey", Vector3.new(1.139, 0.352, 0.329), "Metal", 0, "Block")
Handle1Mesh = CreateBlockMesh(Handle1, Vector3.new(1, 1, 0.856))
local Part1 =  CreatePart(Caliber1, "Part1", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part1Mesh = CreateBlockMesh(Part1, Vector3.new(0.385, 0.749, 0.856))
local Part2 =  CreatePart(Caliber1, "Part2", "Dark stone grey", Vector3.new(1.877, 0.397, 0.329), "Metal", 0, "Block")
Part2Mesh = CreateBlockMesh(Part2, Vector3.new(1, 1, 1.112))
local Part3 =  CreatePart(Caliber1, "Part3", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part3Mesh = CreateBlockMesh(Part3, Vector3.new(0.543, 0.924, 0.856))
local Part4 =  CreatePart(Caliber1, "Part4", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part4Mesh = CreateBlockMesh(Part4, Vector3.new(0.862, 0.541, 0.299))
local Part5 =  CreatePart(Caliber1, "Part5", "Dark stone grey", Vector3.new(0.345, 0.329, 0.329), "Metal", 0, "Block")
Part5Mesh = CreateBlockMesh(Part5, Vector3.new(1, 0.986, 0.727))
local Part6 =  CreatePart(Caliber1, "Part6", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part6Mesh = CreateBlockMesh(Part6, Vector3.new(0.541, 0.37, 0.856))
local Part7 =  CreatePart(Caliber1, "Part7", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part7Mesh = CreateBlockMesh(Part7, Vector3.new(0.276, 0.37, 0.856))
local Part8 =  CreatePart(Caliber1, "Part8", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part8Mesh = CreateBlockMesh(Part8, Vector3.new(0.276, 0.37, 0.856))
local Part9 =  CreatePart(Caliber1, "Part9", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part9Mesh = CreateBlockMesh(Part9, Vector3.new(0.276, 0.37, 0.856))
local Part10 =  CreatePart(Caliber1, "Part10", "Medium stone grey", Vector3.new(0.357, 0.329, 0.329), "Metal", 0, "Block")
Part10Mesh = CreateBlockMesh(Part10, Vector3.new(1, 0.37, 0.856))
local Part11 =  CreatePart(Caliber1, "Part11", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part11Mesh = CreateBlockMesh(Part11, Vector3.new(0.995, 0.302, 0.699))
local Part12 =  CreatePart(Caliber1, "Part12", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part12Mesh = CreateBlockMesh(Part12, Vector3.new(0.347, 0.37, 0.684))
local Part13 =  CreatePart(Caliber1, "Part13", "Medium stone grey", Vector3.new(0.827, 0.352, 0.329), "Metal", 0, "Block")
Part13Mesh = CreateBlockMesh(Part13, Vector3.new(1, 1, 0.573))
local Part14 =  CreatePart(Caliber1, "Part14", "Medium stone grey", Vector3.new(0.364, 0.351, 0.329), "Metal", 0, "Block")
Part14Mesh = CreateBlockMesh(Part14, Vector3.new(1, 1, 0.573))
local Part15 =  CreatePart(Caliber1, "Part15", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part15Mesh = CreateBlockMesh(Part15, Vector3.new(0.789, 0.272, 0.727))
local Part16 =  CreatePart(Caliber1, "Part16", "Medium stone grey", Vector3.new(1.229, 0.618, 0.329), "Metal", 0, "Block")
Part16Mesh = CreateBlockMesh(Part16, Vector3.new(1, 1, 0.856))
local Part17 =  CreatePart(Caliber1, "Part17", "Medium stone grey", Vector3.new(0.86, 0.531, 0.329), "Metal", 0, "Block")
Part17Mesh = CreateBlockMesh(Part17, Vector3.new(1, 1, 0.856))
local Part18 =  CreatePart(Caliber1, "Part18", "Medium stone grey", Vector3.new(0.414, 0.329, 0.329), "Metal", 0, "Block")
Part18Mesh = CreateBlockMesh(Part18, Vector3.new(1, 0.265, 0.856))
local Part19 =  CreatePart(Caliber1, "Part19", "Medium stone grey", Vector3.new(0.528, 0.329, 0.329), "Metal", 0, "Block")
Part19Mesh = CreateBlockMesh(Part19, Vector3.new(1, 0.263, 0.856))
local Part20 =  CreatePart(Caliber1, "Part20", "Dark stone grey", Vector3.new(1.173, 0.576, 0.329), "Metal", 0, "Block")
Part20Mesh = CreateBlockMesh(Part20, Vector3.new(1, 1, 0.727))
local Part21 =  CreatePart(Caliber1, "Part21", "Really black", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part21Mesh = CreateBlockMesh(Part21, Vector3.new(0.086, 0.188, 1.121))
local Part22 =  CreatePart(Caliber1, "Part22", "Dark stone grey", Vector3.new(0.52, 0.329, 0.329), "Metal", 0, "Block")
Part22Mesh = CreateBlockMesh(Part22, Vector3.new(1, 0.575, 1.112))
local Part23 =  CreatePart(Caliber1, "Part23", "Dark stone grey", Vector3.new(0.731, 0.329, 0.329), "Metal", 0, "Block")
Part23Mesh = CreateBlockMesh(Part23, Vector3.new(1, 0.702, 1.112))
local Part24 =  CreatePart(Caliber1, "Part24", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part24Mesh = CreateBlockMesh(Part24, Vector3.new(1, 0.109, 1.129))
local Part25 =  CreatePart(Caliber1, "Part25", "Dark stone grey", Vector3.new(0.366, 0.626, 0.329), "Metal", 0, "Block")
Part25Mesh = CreateWedgeMesh(Part25, Vector3.new(1, 1, 0.169))
local Part26 =  CreatePart(Caliber1, "Part26", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part26Mesh = CreateBlockMesh(Part26, Vector3.new(1, 0.188, 1.121))
local Part27 =  CreatePart(Caliber1, "Part27", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part27Mesh = CreateBlockMesh(Part27, Vector3.new(0.841, 0.939, 0.442))
local Part28 =  CreatePart(Caliber1, "Part28", "Dark stone grey", Vector3.new(0.378, 0.378, 0.329), "Metal", 0, "Block")
Part28Mesh = CreateCylinderMesh(Part28, Vector3.new(1, 1, 0.877))
local Part29 =  CreatePart(Caliber1, "Part29", "Really black", Vector3.new(0.378, 0.378, 0.329), "Metal", 0, "Block")
Part29Mesh = CreateCylinderMesh(Part29, Vector3.new(1, 1.01, 0.799))
local Part30 = CreatePart(Caliber1, "Part30", "Really black", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part30Mesh = CreateBlockMesh(Part30, Vector3.new(0.086, 0.188, 1.121))
local Part31 = CreatePart(Caliber1, "Part31", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part31Mesh = CreateBlockMesh(Part31, Vector3.new(1, 0.188, 1.121))
local Part32 = CreatePart(Caliber1, "Part32", "Dark stone grey", Vector3.new(0.498, 0.329, 0.329), "Metal", 0, "Block")
Part32Mesh = CreateBlockMesh(Part32, Vector3.new(1, 0.563, 1.112))
local Part33 = CreatePart(Caliber1, "Part33", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part33Mesh = CreateBlockMesh(Part33, Vector3.new(1, 0.109, 1.129))
local Part34 = CreatePart(Caliber1, "Part34", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part34Mesh = CreateBlockMesh(Part34, Vector3.new(1, 0.188, 1.121))
local Part35 = CreatePart(Caliber1, "Part35", "Really black", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part35Mesh = CreateBlockMesh(Part35, Vector3.new(0.086, 0.188, 1.121))
local Part36 = CreatePart(Caliber1, "Part36", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part36Mesh = CreateBlockMesh(Part36, Vector3.new(1, 0.188, 1.121))
local Part37 = CreatePart(Caliber1, "Part37", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part37Mesh = CreateBlockMesh(Part37, Vector3.new(0.535, 0.787, 1.112))
local Part38 = CreatePart(Caliber1, "Part38", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part38Mesh = CreateBlockMesh(Part38, Vector3.new(0.086, 0.188, 1.121))
local Part39 = CreatePart(Caliber1, "Part39", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part39Mesh = CreateBlockMesh(Part39, Vector3.new(1, 0.109, 1.129))
local Part40 = CreatePart(Caliber1, "Part40", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part40Mesh = CreateBlockMesh(Part40, Vector3.new(1, 0.109, 1.129))

Barrel1 = Part29

Handle1Weld = CreateWeld(Handle1,  CFrame.new(0,-1,0) * CFrame.Angles(0,1.57,0), CFrame.new(0,0,0), Handle1, Right_Arm, "HandleToRightArm")
Part1Weld = CreateWeld(Part1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.60303497, 1.47352028, -3.81469727e-006, 0.965926528, -0.25881663, 0, 0.25881663, 0.965926528, 0, 0, 0, 1), Part1, Handle1, "Part1ToHandle")
Part2Weld = CreateWeld(Part2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.41836548, -0.489547729, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part2, Handle1, "Part2ToHandle")
Part3Weld = CreateWeld(Part3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.49446106, -0.284858704, 0, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part3, Handle1, "Part3ToHandle")
Part4Weld = CreateWeld(Part4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00104904175, 0.495059967, 0.486030579, 0, 0, -1, 0.866026163, 0.499999017, 0, 0.499999017, -0.866026163, 0), Part4, Handle1, "Part4ToHandle")
Part5Weld = CreateWeld(Part5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.903556824, -0.853889465, -0.00703048706, -0.25881663, -0.965926528, -0, 0.965926528, -0.25881663, 0, 0, 0, 1), Part5, Handle1, "Part5ToHandle")
Part6Weld = CreateWeld(Part6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.261646271, 0.554660797, 3.81469727e-006, 0.99708432, 0.0763106197, 0, -0.0763106197, 0.99708432, 0, 0, 0, 1), Part6, Handle1, "Part6ToHandle")
Part7Weld = CreateWeld(Part7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.23777771, 0.51366806, 0, 0.994569063, -0.104082122, 0, 0.104082122, 0.994569063, 0, 0, 0, 1), Part7, Handle1, "Part7ToHandle")
Part8Weld = CreateWeld(Part8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.276947021, 0.451875687, 0, 0.942421615, -0.334427655, 0, 0.334427595, 0.942421615, 0, 0, 0, 1), Part8, Handle1, "Part8ToHandle")
Part9Weld = CreateWeld(Part9,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.327682495, 0.358730316, 0, 0.801670432, -0.597766697, 0, 0.597766697, 0.801670432, 0, 0, 0, 1), Part9, Handle1, "Part9ToHandle")
Part10Weld = CreateWeld(Part10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.280105591, 0.15290451, 0, 0.381983012, -0.924169481, 0, 0.924169481, 0.381983012, 0, 0, 0, 1), Part10, Handle1, "Part10ToHandle")
Part11Weld = CreateWeld(Part11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.202186584, 0.23966217, -0.000347137451, 0.381983012, -0.924169481, 0, 0.924169481, 0.381983012, 0, 0, 0, 1), Part11, Handle1, "Part11ToHandle")
Part12Weld = CreateWeld(Part12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.110679626, 0.400859833, 3.81469727e-006, 0.923589706, -0.383382916, 0, 0.383382916, 0.923589706, 0, 0, 0, 1), Part12, Handle1, "Part12ToHandle")
Part13Weld = CreateWeld(Part13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.151382446, -0.507144928, 0.00210952759, 0.491765201, -0.870728254, 0, 0.870728254, 0.491765201, 0, 0, 0, 1), Part13, Handle1, "Part13ToHandle")
Part14Weld = CreateWeld(Part14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.20772171, 0.338977814, 0.00210952759, -0.00877001509, 0.999961674, 0, -0.999961674, -0.00877001509, 0, 0, 0, 1), Part14, Handle1, "Part14ToHandle")
Part15Weld = CreateWeld(Part15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.632392883, -0.913993835, -0.00703048706, -0.529292822, -0.848439395, -0, 0.848439395, -0.529292822, 0, 0, 0, 1), Part15, Handle1, "Part15ToHandle")
Part16Weld = CreateWeld(Part16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.6075592, -0.270458221, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part16, Handle1, "Part16ToHandle")
Part17Weld = CreateWeld(Part17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.566223145, -0.314067841, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part17, Handle1, "Part17ToHandle")
Part18Weld = CreateWeld(Part18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.323228836, -0.883232117, 0, -0.499998778, -0.866026282, -0, 0.866026282, -0.499998778, 0, 0, 0, 1), Part18, Handle1, "Part18ToHandle")
Part19Weld = CreateWeld(Part19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.314693451, 2.26445007, -3.81469727e-006, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part19, Handle1, "Part19ToHandle")
Part20Weld = CreateWeld(Part20,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.60757446, -0.236690521, -0.00703430176, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part20, Handle1, "Part20ToHandle")
Part21Weld = CreateWeld(Part21,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.08020401, 2.12657166, -3.81469727e-006, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part21, Handle1, "Part21ToHandle")
Part22Weld = CreateWeld(Part22,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.574867249, 0.163562775, 0, 1.00000024, 0, 0, 0, 1.00000024, 0, 0, 0, 1), Part22, Handle1, "Part22ToHandle")
Part23Weld = CreateWeld(Part23,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99020386, -0.177051544, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part23, Handle1, "Part23ToHandle")
Part24Weld = CreateWeld(Part24,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.201562881, 1.91455841, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part24, Handle1, "Part24ToHandle")
Part25Weld = CreateWeld(Part25,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000183105469, 0.375644684, 2.38105011, 0, 0, -1, -0.866346598, -0.49944365, 0, -0.49944365, 0.866346598, 0), Part25, Handle1, "Part25ToHandle")
Part26Weld = CreateWeld(Part26, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.2569561, 2.07778931, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part26, Handle1, "Part26ToHandle")
Part27Weld = CreateWeld(Part27,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99460602, 0.744857788, -0.00316238403, 0.927193999, -0.374582142, 0, 0.374582142, 0.927193999, 0, 0, 0, 1), Part27, Handle1, "Part27ToHandle")
Part28Weld = CreateWeld(Part28,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.485691071, 2.30821228, -0.00871658325, -0.866026163, -0.499999017, -0, -0.499999017, 0.866026163, 0, 0, 0, -1), Part28, Handle1, "Part28ToHandle")
Part29Weld = CreateWeld(Part29,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.486751556, 2.30821991, -0.00660705566, -0.866026163, -0.499999017, -0, -0.499999017, 0.866026163, 0, 0, 0, -1), Part29, Handle1, "Part29ToHandle")
Part30Weld = CreateWeld(Part30,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0759849548, 1.79244995, 0, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part30, Handle1, "Part30ToHandle")
Part31Weld = CreateWeld(Part31,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.296571732, 2.22372437, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part31, Handle1, "Part31ToHandle")
Part32Weld = CreateWeld(Part32,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.112157822, -1.67666626, 0, -0.707104385, -0.707109571, -0, 0.707109571, -0.707104385, 0, 0, 0, 1), Part32, Handle1, "Part32ToHandle")
Part33Weld = CreateWeld(Part33,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.246152878, 2.07009888, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part33, Handle1, "Part33ToHandle")
Part34Weld = CreateWeld(Part34,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.174539566, 1.7539978, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part34, Handle1, "Part34ToHandle")
Part35Weld = CreateWeld(Part35,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0797309875, 2.27779388, -3.81469727e-006, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part35, Handle1, "Part35ToHandle")
Part36Weld = CreateWeld(Part36,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.217325211, 1.92167664, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part36, Handle1, "Part36ToHandle")
Part37Weld = CreateWeld(Part37,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0207366943, 0.521255493, 3.81469727e-006, 0.405499339, 0.914095461, 0, -0.914095461, 0.405499339, 0, 0, 0, 1), Part37, Handle1, "Part37ToHandle")
Part38Weld = CreateWeld(Part38,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0781059265, 1.96547699, 0, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part38, Handle1, "Part38ToHandle")
Part39Weld = CreateWeld(Part39,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.2856884, 2.21749115, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part39, Handle1, "Part39ToHandle")
Part40Weld = CreateWeld(Part40,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157697678, 1.74642944, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part40, Handle1, "Part40ToHandle")

Caliber2 = Instance.new("Model", Character)
Caliber2.Name = "Caliber2"

local Handle2 =  CreatePart(Caliber2, "Handle", "Medium stone grey", Vector3.new(1.139, 0.352, 0.329), "Metal", 0, "Block")
Handle2Mesh = CreateBlockMesh(Handle2, Vector3.new(1, 1, 0.856))
local Part1 =  CreatePart(Caliber2, "Part1", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part1Mesh = CreateBlockMesh(Part1, Vector3.new(0.385, 0.749, 0.856))
local Part2 =  CreatePart(Caliber2, "Part2", "Dark stone grey", Vector3.new(1.877, 0.397, 0.329), "Metal", 0, "Block")
Part2Mesh = CreateBlockMesh(Part2, Vector3.new(1, 1, 1.112))
local Part3 =  CreatePart(Caliber2, "Part3", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part3Mesh = CreateBlockMesh(Part3, Vector3.new(0.543, 0.924, 0.856))
local Part4 =  CreatePart(Caliber2, "Part4", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part4Mesh = CreateBlockMesh(Part4, Vector3.new(0.862, 0.541, 0.299))
local Part5 =  CreatePart(Caliber2, "Part5", "Dark stone grey", Vector3.new(0.345, 0.329, 0.329), "Metal", 0, "Block")
Part5Mesh = CreateBlockMesh(Part5, Vector3.new(1, 0.986, 0.727))
local Part6 =  CreatePart(Caliber2, "Part6", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part6Mesh = CreateBlockMesh(Part6, Vector3.new(0.541, 0.37, 0.856))
local Part7 =  CreatePart(Caliber2, "Part7", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part7Mesh = CreateBlockMesh(Part7, Vector3.new(0.276, 0.37, 0.856))
local Part8 =  CreatePart(Caliber2, "Part8", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part8Mesh = CreateBlockMesh(Part8, Vector3.new(0.276, 0.37, 0.856))
local Part9 =  CreatePart(Caliber2, "Part9", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part9Mesh = CreateBlockMesh(Part9, Vector3.new(0.276, 0.37, 0.856))
local Part10 =  CreatePart(Caliber2, "Part10", "Medium stone grey", Vector3.new(0.357, 0.329, 0.329), "Metal", 0, "Block")
Part10Mesh = CreateBlockMesh(Part10, Vector3.new(1, 0.37, 0.856))
local Part11 =  CreatePart(Caliber2, "Part11", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part11Mesh = CreateBlockMesh(Part11, Vector3.new(0.995, 0.302, 0.699))
local Part12 =  CreatePart(Caliber2, "Part12", "Medium stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part12Mesh = CreateBlockMesh(Part12, Vector3.new(0.347, 0.37, 0.684))
local Part13 =  CreatePart(Caliber2, "Part13", "Medium stone grey", Vector3.new(0.827, 0.352, 0.329), "Metal", 0, "Block")
Part13Mesh = CreateBlockMesh(Part13, Vector3.new(1, 1, 0.573))
local Part14 =  CreatePart(Caliber2, "Part14", "Medium stone grey", Vector3.new(0.364, 0.351, 0.329), "Metal", 0, "Block")
Part14Mesh = CreateBlockMesh(Part14, Vector3.new(1, 1, 0.573))
local Part15 =  CreatePart(Caliber2, "Part15", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part15Mesh = CreateBlockMesh(Part15, Vector3.new(0.789, 0.272, 0.727))
local Part16 =  CreatePart(Caliber2, "Part16", "Medium stone grey", Vector3.new(1.229, 0.618, 0.329), "Metal", 0, "Block")
Part16Mesh = CreateBlockMesh(Part16, Vector3.new(1, 1, 0.856))
local Part17 =  CreatePart(Caliber2, "Part17", "Medium stone grey", Vector3.new(0.86, 0.531, 0.329), "Metal", 0, "Block")
Part17Mesh = CreateBlockMesh(Part17, Vector3.new(1, 1, 0.856))
local Part18 =  CreatePart(Caliber2, "Part18", "Medium stone grey", Vector3.new(0.414, 0.329, 0.329), "Metal", 0, "Block")
Part18Mesh = CreateBlockMesh(Part18, Vector3.new(1, 0.265, 0.856))
local Part19 =  CreatePart(Caliber2, "Part19", "Medium stone grey", Vector3.new(0.528, 0.329, 0.329), "Metal", 0, "Block")
Part19Mesh = CreateBlockMesh(Part19, Vector3.new(1, 0.263, 0.856))
local Part20 =  CreatePart(Caliber2, "Part20", "Dark stone grey", Vector3.new(1.173, 0.576, 0.329), "Metal", 0, "Block")
Part20Mesh = CreateBlockMesh(Part20, Vector3.new(1, 1, 0.727))
local Part21 =  CreatePart(Caliber2, "Part21", "Really black", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part21Mesh = CreateBlockMesh(Part21, Vector3.new(0.086, 0.188, 1.121))
local Part22 =  CreatePart(Caliber2, "Part22", "Dark stone grey", Vector3.new(0.52, 0.329, 0.329), "Metal", 0, "Block")
Part22Mesh = CreateBlockMesh(Part22, Vector3.new(1, 0.575, 1.112))
local Part23 =  CreatePart(Caliber2, "Part23", "Dark stone grey", Vector3.new(0.731, 0.329, 0.329), "Metal", 0, "Block")
Part23Mesh = CreateBlockMesh(Part23, Vector3.new(1, 0.702, 1.112))
local Part24 =  CreatePart(Caliber2, "Part24", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part24Mesh = CreateBlockMesh(Part24, Vector3.new(1, 0.109, 1.129))
local Part25 =  CreatePart(Caliber2, "Part25", "Dark stone grey", Vector3.new(0.366, 0.626, 0.329), "Metal", 0, "Block")
Part25Mesh = CreateWedgeMesh(Part25, Vector3.new(1, 1, 0.169))
local Part26 =  CreatePart(Caliber2, "Part26", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part26Mesh = CreateBlockMesh(Part26, Vector3.new(1, 0.188, 1.121))
local Part27 =  CreatePart(Caliber2, "Part27", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part27Mesh = CreateBlockMesh(Part27, Vector3.new(0.841, 0.939, 0.442))
local Part28 =  CreatePart(Caliber2, "Part28", "Dark stone grey", Vector3.new(0.378, 0.378, 0.329), "Metal", 0, "Block")
Part28Mesh = CreateCylinderMesh(Part28, Vector3.new(1, 1, 0.877))
local Part29 =  CreatePart(Caliber2, "Part29", "Really black", Vector3.new(0.378, 0.378, 0.329), "Metal", 0, "Block")
Part29Mesh = CreateCylinderMesh(Part29, Vector3.new(1, 1.01, 0.799))
local Part30 = CreatePart(Caliber2, "Part30", "Really black", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part30Mesh = CreateBlockMesh(Part30, Vector3.new(0.086, 0.188, 1.121))
local Part31 = CreatePart(Caliber2, "Part31", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part31Mesh = CreateBlockMesh(Part31, Vector3.new(1, 0.188, 1.121))
local Part32 = CreatePart(Caliber2, "Part32", "Dark stone grey", Vector3.new(0.498, 0.329, 0.329), "Metal", 0, "Block")
Part32Mesh = CreateBlockMesh(Part32, Vector3.new(1, 0.563, 1.112))
local Part33 = CreatePart(Caliber2, "Part33", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part33Mesh = CreateBlockMesh(Part33, Vector3.new(1, 0.109, 1.129))
local Part34 = CreatePart(Caliber2, "Part34", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part34Mesh = CreateBlockMesh(Part34, Vector3.new(1, 0.188, 1.121))
local Part35 = CreatePart(Caliber2, "Part35", "Really black", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part35Mesh = CreateBlockMesh(Part35, Vector3.new(0.086, 0.188, 1.121))
local Part36 = CreatePart(Caliber2, "Part36", "Really black", Vector3.new(0.419, 0.329, 0.329), "Metal", 0, "Block")
Part36Mesh = CreateBlockMesh(Part36, Vector3.new(1, 0.188, 1.121))
local Part37 = CreatePart(Caliber2, "Part37", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part37Mesh = CreateBlockMesh(Part37, Vector3.new(0.535, 0.787, 1.112))
local Part38 = CreatePart(Caliber2, "Part38", "Dark stone grey", Vector3.new(0.329, 0.329, 0.329), "Metal", 0, "Block")
Part38Mesh = CreateBlockMesh(Part38, Vector3.new(0.086, 0.188, 1.121))
local Part39 = CreatePart(Caliber2, "Part39", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part39Mesh = CreateBlockMesh(Part39, Vector3.new(1, 0.109, 1.129))
local Part40 = CreatePart(Caliber2, "Part40", "Institutional white", Vector3.new(0.369, 0.329, 0.329), "Neon", 0, "Block")
Part40Mesh = CreateBlockMesh(Part40, Vector3.new(1, 0.109, 1.129))

Handle2Weld = CreateWeld(Handle2,  CFrame.new(0,-1,0) * CFrame.Angles(0,1.57,0), CFrame.new(0,0,0), Handle2, Left_Arm, "HandleToLeftArm")
Part1Weld = CreateWeld(Part1,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.60303497, 1.47352028, -3.81469727e-006, 0.965926528, -0.25881663, 0, 0.25881663, 0.965926528, 0, 0, 0, 1), Part1, Handle2, "Part1ToHandle")
Part2Weld = CreateWeld(Part2,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.41836548, -0.489547729, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part2, Handle2, "Part2ToHandle")
Part3Weld = CreateWeld(Part3,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.49446106, -0.284858704, 0, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part3, Handle2, "Part3ToHandle")
Part4Weld = CreateWeld(Part4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00104904175, 0.495059967, 0.486030579, 0, 0, -1, 0.866026163, 0.499999017, 0, 0.499999017, -0.866026163, 0), Part4, Handle2, "Part4ToHandle")
Part5Weld = CreateWeld(Part5,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.903556824, -0.853889465, -0.00703048706, -0.25881663, -0.965926528, -0, 0.965926528, -0.25881663, 0, 0, 0, 1), Part5, Handle2, "Part5ToHandle")
Part6Weld = CreateWeld(Part6,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.261646271, 0.554660797, 3.81469727e-006, 0.99708432, 0.0763106197, 0, -0.0763106197, 0.99708432, 0, 0, 0, 1), Part6, Handle2, "Part6ToHandle")
Part7Weld = CreateWeld(Part7,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.23777771, 0.51366806, 0, 0.994569063, -0.104082122, 0, 0.104082122, 0.994569063, 0, 0, 0, 1), Part7, Handle2, "Part7ToHandle")
Part8Weld = CreateWeld(Part8,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.276947021, 0.451875687, 0, 0.942421615, -0.334427655, 0, 0.334427595, 0.942421615, 0, 0, 0, 1), Part8, Handle2, "Part8ToHandle")
Part9Weld = CreateWeld(Part9,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.327682495, 0.358730316, 0, 0.801670432, -0.597766697, 0, 0.597766697, 0.801670432, 0, 0, 0, 1), Part9, Handle2, "Part9ToHandle")
Part10Weld = CreateWeld(Part10,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.280105591, 0.15290451, 0, 0.381983012, -0.924169481, 0, 0.924169481, 0.381983012, 0, 0, 0, 1), Part10, Handle2, "Part10ToHandle")
Part11Weld = CreateWeld(Part11,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.202186584, 0.23966217, -0.000347137451, 0.381983012, -0.924169481, 0, 0.924169481, 0.381983012, 0, 0, 0, 1), Part11, Handle2, "Part11ToHandle")
Part12Weld = CreateWeld(Part12,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.110679626, 0.400859833, 3.81469727e-006, 0.923589706, -0.383382916, 0, 0.383382916, 0.923589706, 0, 0, 0, 1), Part12, Handle2, "Part12ToHandle")
Part13Weld = CreateWeld(Part13,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.151382446, -0.507144928, 0.00210952759, 0.491765201, -0.870728254, 0, 0.870728254, 0.491765201, 0, 0, 0, 1), Part13, Handle2, "Part13ToHandle")
Part14Weld = CreateWeld(Part14,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.20772171, 0.338977814, 0.00210952759, -0.00877001509, 0.999961674, 0, -0.999961674, -0.00877001509, 0, 0, 0, 1), Part14, Handle2, "Part14ToHandle")
Part15Weld = CreateWeld(Part15,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.632392883, -0.913993835, -0.00703048706, -0.529292822, -0.848439395, -0, 0.848439395, -0.529292822, 0, 0, 0, 1), Part15, Handle2, "Part15ToHandle")
Part16Weld = CreateWeld(Part16,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.6075592, -0.270458221, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part16, Handle2, "Part16ToHandle")
Part17Weld = CreateWeld(Part17,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.566223145, -0.314067841, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part17, Handle2, "Part17ToHandle")
Part18Weld = CreateWeld(Part18,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.323228836, -0.883232117, 0, -0.499998778, -0.866026282, -0, 0.866026282, -0.499998778, 0, 0, 0, 1), Part18, Handle2, "Part18ToHandle")
Part19Weld = CreateWeld(Part19,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.314693451, 2.26445007, -3.81469727e-006, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part19, Handle2, "Part19ToHandle")
Part20Weld = CreateWeld(Part20,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.60757446, -0.236690521, -0.00703430176, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part20, Handle2, "Part20ToHandle")
Part21Weld = CreateWeld(Part21,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.08020401, 2.12657166, -3.81469727e-006, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part21, Handle2, "Part21ToHandle")
Part22Weld = CreateWeld(Part22,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.574867249, 0.163562775, 0, 1.00000024, 0, 0, 0, 1.00000024, 0, 0, 0, 1), Part22, Handle2, "Part22ToHandle")
Part23Weld = CreateWeld(Part23,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99020386, -0.177051544, 0, 0.499999017, -0.866026163, 0, 0.866026163, 0.499999017, 0, 0, 0, 1), Part23, Handle2, "Part23ToHandle")
Part24Weld = CreateWeld(Part24,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.201562881, 1.91455841, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part24, Handle2, "Part24ToHandle")
Part25Weld = CreateWeld(Part25,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000183105469, 0.375644684, 2.38105011, 0, 0, -1, -0.866346598, -0.49944365, 0, -0.49944365, 0.866346598, 0), Part25, Handle2, "Part25ToHandle")
Part26Weld = CreateWeld(Part26, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.2569561, 2.07778931, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part26, Handle2, "Part26ToHandle")
Part27Weld = CreateWeld(Part27,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99460602, 0.744857788, -0.00316238403, 0.927193999, -0.374582142, 0, 0.374582142, 0.927193999, 0, 0, 0, 1), Part27, Handle2, "Part27ToHandle")
Part28Weld = CreateWeld(Part28,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.485691071, 2.30821228, -0.00871658325, -0.866026163, -0.499999017, -0, -0.499999017, 0.866026163, 0, 0, 0, -1), Part28, Handle2, "Part28ToHandle")
Part29Weld = CreateWeld(Part29,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.486751556, 2.30821991, -0.00660705566, -0.866026163, -0.499999017, -0, -0.499999017, 0.866026163, 0, 0, 0, -1), Part29, Handle2, "Part29ToHandle")
Part30Weld = CreateWeld(Part30,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0759849548, 1.79244995, 0, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part30, Handle2, "Part30ToHandle")
Part31Weld = CreateWeld(Part31,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.296571732, 2.22372437, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part31, Handle2, "Part31ToHandle")
Part32Weld = CreateWeld(Part32,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.112157822, -1.67666626, 0, -0.707104385, -0.707109571, -0, 0.707109571, -0.707104385, 0, 0, 0, 1), Part32, Handle2, "Part32ToHandle")
Part33Weld = CreateWeld(Part33,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.246152878, 2.07009888, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part33, Handle2, "Part33ToHandle")
Part34Weld = CreateWeld(Part34,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.174539566, 1.7539978, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part34, Handle2, "Part34ToHandle")
Part35Weld = CreateWeld(Part35,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0797309875, 2.27779388, -3.81469727e-006, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part35, Handle2, "Part35ToHandle")
Part36Weld = CreateWeld(Part36,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.217325211, 1.92167664, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part36, Handle2, "Part36ToHandle")
Part37Weld = CreateWeld(Part37,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0207366943, 0.521255493, 3.81469727e-006, 0.405499339, 0.914095461, 0, -0.914095461, 0.405499339, 0, 0, 0, 1), Part37, Handle2, "Part37ToHandle")
Part38Weld = CreateWeld(Part38,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0781059265, 1.96547699, 0, 0.866026163, 0.499999017, 0, -0.499999017, 0.866026163, 0, 0, 0, 1), Part38, Handle2, "Part38ToHandle")
Part39Weld = CreateWeld(Part39,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.2856884, 2.21749115, -3.81469727e-006, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part39, Handle2, "Part39ToHandle")
Part40Weld = CreateWeld(Part40,  CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157697678, 1.74642944, 0, 0.707104385, 0.707109571, 0, -0.707109571, 0.707104385, 0, 0, 0, 1), Part40, Handle2, "Part40ToHandle")

Barrel2 = Part29
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
ManaBarP2.Size = UDim2.new(Mana / MaxMana,0,0,25)

end

--[[ Attacks ]]--

function Shot1()
Attacking = true
	
for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-2, 0.5, 0) * CFrame.Angles(0,0,-1.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,3.2,-0.5),0.2)
end	

Shot(Barrel2)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-2, 0.8, 0) * CFrame.Angles(0,0,-2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,3.2,0),0.2)

end	
Attacking = false
end

function Shot2()
Attacking = true

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,1.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(2, 0.5, 0) * CFrame.Angles(0,0,1.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.2)
end	

Shot(Barrel1)

for i = 1,10 do
wait()


RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,1.6),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(2, 0.8, 0) * CFrame.Angles(0,0,2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0),0.2)
end		
	Attacking = false
end

function Shot3()

Attacking = true
for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0.5),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.2)
end	

Shot(Barrel1)
Shot(Barrel2)

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(2,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(2,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,0),0.2)
end		
	Attacking = false
end

function Attack1()
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
Attacking = true
for i = 1,5 do
wait()

Torso.Neck.C0 = clerp(Torso.Neck.C0, Necko * CFrame.Angles(0, 0, -1), 0.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCFrame *cf(0, 0, 0) * CFrame.Angles(-0.5,0,1.6), 0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1, 0.5, -0.5) * CFrame.Angles(1.6, 0, -1), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.5, 0) * CFrame.Angles(1.6, 0, -1.6), 0.5)
Right_Hip.C0 = clerp(Left_Hip.C0, cf(0, -1, 0.5) * CFrame.Angles(0, 1.57, 1.6) * CFrame.Angles(-1.6, -0, 0), 0.5)
Left_Hip.C0 = clerp(Right_Hip.C0, cf(-1, -1, 0) * CFrame.Angles(0, -1.57, 0) * CFrame.Angles(-0, 0, 0), 0.5)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
end	
MakeSFX(Torso,320557563, 1, 1)
ValidateDamage(Right_Leg, 3, 5, 7, "Normal", "Punch", 5)
for i = 1,5 do
wait()

Torso.Neck.C0 = clerp(Torso.Neck.C0, Necko * CFrame.Angles(0, 0, -1), 0.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCFrame * cf(0, 0, 0) * CFrame.Angles(-0.5,0,1.6), 0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1, 0.5, -0.5) * CFrame.Angles(1.6, 0, -1), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.5, 0) * CFrame.Angles(1.6, 0, -1.6), 0.5)
Right_Hip.C0 = clerp(Right_Hip.C0, cf(1, -1, 0.5) * CFrame.Angles(0, 1.57, 1.6) * CFrame.Angles(-1.6, -0, 0), 0.5)
Left_Hip.C0 = clerp(Left_Hip.C0, cf(-1, -1, 0) * CFrame.Angles(0, -1.57, 0) * CFrame.Angles(-0, 0, 0), 0.5)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
end	
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false
end

function Attack2()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
for i = 1,5 do
wait()

Torso.Neck.C0 = clerp(Torso.Neck.C0, Necko * CFrame.Angles(0, 0, 1), 0.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCFrame *cf(0, 0, 0) * CFrame.Angles(-0.5,0,-1.6), 0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1, 0.5, -0.5) * CFrame.Angles(1.6, 0, -1), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.5, 0) * CFrame.Angles(1.6, 0, -1.6), 0.5)
Right_Hip.C0 = clerp(Right_Hip.C0, cf(1, -1, 0) * CFrame.Angles(0, 1.57, 0) * CFrame.Angles(0, -0, 0), 0.5)
Left_Hip.C0 = clerp(Left_Hip.C0, cf(-0, -1, -0.5) * CFrame.Angles(0, -1.57, 1.6) * CFrame.Angles(-1.6, 0, 0), 0.5)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
end	
MakeSFX(Torso,320557563, 1, 1)
ValidateDamage(Left_Leg, 3, 5, 7, "Normal", "Punch", 5)
for i = 1,5 do
wait()

Torso.Neck.C0 = clerp(Torso.Neck.C0, Necko * CFrame.Angles(0, 0, 1), 0.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCFrame * cf(0, 0, 0) * CFrame.Angles(-0.5,0,-1.6), 0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1, 0.5, -0.5) * CFrame.Angles(1.6, 0, -1), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.5, 0) * CFrame.Angles(1.6, 0, -1.6), 0.5)
Right_Hip.C0 = clerp(Right_Hip.C0, cf(1, -1, 0) * CFrame.Angles(0, 1.57, 0) * CFrame.Angles(0, -0, 0), 0.5)
Left_Hip.C0 = clerp(Left_Hip.C0, cf(-1, -1, -0.5) * CFrame.Angles(0, -1.57, 1.6) * CFrame.Angles(-1.6, 0, 0), 0.5)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
end	
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false
end

function Attack3()
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
Attacking = true
ValidateDamage(Torso, 10, 5, 7, "Normal", "Punch", 5)

MakeSFX(Torso,320557563, 1, 1)
for i = 1,10 do
wait()

Torso.Neck.C0 = clerp(Torso.Neck.C0, Necko * CFrame.Angles(0, 0, 0), 0.5)
RootJoint.C0 = clerp(RootJoint.C0, RootCFrame *cf(0, 0, 0) * CFrame.Angles(-i / 2,0,0), 0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1, 0.5, -0.5) * CFrame.Angles(1.6, 0, -1), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1, 0.5, -0.5) * CFrame.Angles(1.6, 0, 1), 0.5)
Right_Hip.C0 = clerp(Right_Hip.C0, cf(0, -1, -0.5) * CFrame.Angles(0, 1.57, 1.6) * CFrame.Angles(0, -0, 0), 0.5)
Left_Hip.C0 = clerp(Left_Hip.C0, cf(0, -1, 0.5) * CFrame.Angles(0, -1.57, 1.6) * CFrame.Angles(-0, 0, 0), 0.5)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
end	

Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false
	
end


function Shotcombo()
Attacking = true
Humanoid.WalkSpeed = 10
Humanoid.JumpPower = 0

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0.5),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.2)
end	

Shot(Barrel1)
Shot(Barrel2)

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(2,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(2,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,0),0.2)
end		
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0.5),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.2)
end	

Shot(Barrel1)
Shot(Barrel2)

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(2,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(2,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,0),0.2)
end		
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0.5),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.2)
end	

Shot(Barrel1)
Shot(Barrel2)

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(2,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(2,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,0),0.2)
end		
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50

Attacking = false
end


function BackJump()
Attacking = true

Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(-1.6,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.8,0,0),0.5)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0,0), 0.5)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.5)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.5)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.5)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.5)
end	

Shot(Barrel1)
Shot(Barrel2)
local BV = Instance.new("BodyVelocity", Torso)
BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BV.Velocity = Root.CFrame.lookVector * Vector3.new(-50,50,-50)

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,-3)* CFrame.Angles(-1.6,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.8,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(1,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,0),0.2)
end
BV:Remove()
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,-3)* CFrame.Angles(-1.6,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.8,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0.5),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.2)
end

Shot(Barrel1)
Shot(Barrel2)

	
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,-3)* CFrame.Angles(-1.6,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.8,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(1,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,0),0.2)
end	
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,-3)* CFrame.Angles(-1.6,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.8,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,-0.5),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.5),0.2)
end

Shot(Barrel1)
Shot(Barrel2)

	
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,-3)* CFrame.Angles(-1.6,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.8,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(1,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-0.6,-0) * CFrame.Angles(0,1.57,0),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,0),0.2)
end
Attacking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
end

function Energyshot()
Attacking = true

for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
end

LightShot(Barrel1)
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,0),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
end
LightShot(Barrel2)
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,0),0.5)
end
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
end

LightShot(Barrel1)
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,0),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
end
LightShot(Barrel2)
for i = 1,5 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,0),0.5)
end

	
Attacking = false
end

function Overshot()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
coroutine.resume(coroutine.create(function()
for i = 1,14 do
wait(0.3)

local Hit, Position = RayCast(Root.Position, CFrame.new(Root.Position, Root.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)

if Hit ~= nil then
	
WaveEffect(Position, Services.Workspace, 0.05, 0.05, 0.05, 1, 0.05, 1, 1, "White", "SmoothPlastic", 0)
end
end
end))
MakeSFX(Torso,203691346,1,1)
for i = 1,60 do
wait()
CircleEffect(Torso.Position + Vector3.new(0,10,0), Services.Workspace, 0.05, 0.05, 0.05, 1, 1, 1, 10, "Bright yellow", "SmoothPlastic", 0)
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0) * CFrame.Angles(3.2,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0) * CFrame.Angles(3.2,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,0,-0.6),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,3.2,-0.6),0.5)
end

for i = 1,10 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
Handle2Weld.C0=clerp(Handle2Weld.C0, CFrame.new(0,-1,-0) * CFrame.Angles(0,1.57,-0.5),0.5)
end
 MakeSFX(Torso,156572165,10,0.75)
wait(0.1)    
MakeSFX(Torso,168586621,10,0.75)

local OvershotPart = CreatePart(Services.Workspace, "Overshot", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
OvershotPart.Position = Barrel1.Position
OvershotPart.CFrame = CFrame.new(OvershotPart.Position, Mouse.Hit.p)
local OverVelocity = CreateVelocity(OvershotPart,OvershotPart.CFrame.lookVector * 50,Vector3.new(10000,10000,10000))

Services.Debris:AddItem(OvershotPart, 15)

coroutine.resume(coroutine.create(function()
while OvershotPart.Parent == Services.Workspace do
wait(0.3)
	
local Hit, Position = RayCast(OvershotPart.Position, CFrame.new(OvershotPart.Position, OvershotPart.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)

if Hit ~= nil then
	
WaveEffect(Position, Services.Workspace, 0.05, 0.05, 0.05, 1, 0.05, 1, 1, "White", "SmoothPlastic", 0)
CircleEffect(OvershotPart.Position, Services.Workspace, 0.05, 0.05, 0.05, 5, 5, 5, 10, "Bright yellow", "SmoothPlastic", 0)
end	
end		
end))
wait()
wait()
wait()
wait()
wait()
Connection = OvershotPart.Touched:connect(function(Hit)
if Hit.Name ~= "Reference" and Hit.Name ~= "BallEffect" and Hit.Parent ~= Caliber1 and Hit.Parent ~= Caliber2 and Hit.Parent ~= Character then	
Connection:disconnect()
print(Hit.Name)
OvershotPart:Remove()
MakeSFX(OvershotPart, 320557563, 10, 1)
ValidateDamage(OvershotPart, 60 ,36, 50, "Knockdown", "Penetration", 100)
CircleEffect(OvershotPart.Position, Services.Workspace, 0.05, 0.05, 0.05, 30, 30, 30, 10, "Bright yellow", "SmoothPlastic", 0)
end
end)
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false
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
	
if Key == "e" and not Attacking and CooldownE > 10 then

CooldownE = CooldownE - 0


if Shots == 1 and not Attacking and CanAttack then
Shots = 2
Shot1()	

	
	

elseif Shots == 2 and not Attacking and CanAttack  then
Shots = 3
Shot2()
	

elseif Shots == 3 and not Attacking and CanAttack  then
Shots = 1
Shot3()

end

end		

if Key == "z" and not Attacking and Mana > 10 and Cooldown1 == MaxCooldown1 then

Mana = Mana - 0
Cooldown1 = 110
Shotcombo()

end	

if Key == "x" and not Attacking and Mana > 20 and Cooldown2 == MaxCooldown2 then

Mana = Mana - 0
Cooldown2 = 110
BackJump()

	
end


if Key == "c" and not Attacking and Mana > 25 and Cooldown3 == MaxCooldown3 then

Mana = Mana - 0
Cooldown3 = 110
Energyshot()

end	

if Key == "v" and not Attacking and Mana > 50 and Cooldown4 == MaxCooldown4 then

Mana = Mana - 0
Cooldown4 = 110
Overshot()

end	
end

Mouse.KeyDown:connect(OnKeyDown)
Mouse.Button1Down:connect(OnClicked)

--[[ CLerp Animations ]]--

while true do
wait()

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

Bars()


if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, -0.1) * CFrame.Angles(0.2,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, -0.1) * CFrame.Angles(0.2,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0.1,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(-0.1,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.3),0.2)

end


if 2 < Torvel and Torvel < 22 and HitFloor ~= nil and Attacking == false then
Anim = "Walking"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.3,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0.3) * CFrame.Angles(-0.6,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0.3) * CFrame.Angles(-0.6,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(0,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(0,0,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0.2) * CFrame.Angles(-0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0.2) * CFrame.Angles(-0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(-3,1.57,-0.3),0.2)
end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, -0.2) * CFrame.Angles(0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.2) * CFrame.Angles(0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)
Handle1Weld.C0=clerp(Handle1Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.3),0.2)
Handle2Weld.C0=clerp(Handle2Weld.C0,CFrame.new(0,-1,-0) *  CFrame.Angles(0,1.57,-0.3),0.2)
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

elseif Effect[2] == "Cylinder" then
	
if Effect[1]:FindFirstChild("Mesh") ~= nil then
Mesh=Effect[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])
end
Effect[1].Transparency = Effect[1].Transparency + 0.05

elseif Effect[2] == "Lightning" then
	
if Effect[1]:FindFirstChild("Mesh") ~= nil then
Mesh=Effect[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])
end
Effect[1].Transparency = Effect[1].Transparency + 0.05

elseif Effect[2] == "Wave" then
	
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