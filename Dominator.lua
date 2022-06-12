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
local CanDamage = false
local Attacking = false
local CanAttack = true
local Anim = "Idle"
local Domination = 0
local Invert = false
local Invert2 = false
local Dominating = false
local MaxDomination = 500
local Effects = {}
local HoldingClick = false

local WarningCylinder = Instance.new("Part")
WarningCylinder.Name = "Warn"
WarningCylinder.BrickColor = BrickColor.new("Medium blue")
WarningCylinder.Size = Vector3.new(0.2,25,25)
WarningCylinder.Rotation = Vector3.new(0, 0, 90)
WarningCylinder.Anchored = true
WarningCylinder.CanCollide = false
WarningCylinder.Transparency = 0.8
WarningCylinder.Shape = "Cylinder"
WarningCylinder.Material = "Neon"

local WarningCylinderD = Instance.new("Part")
WarningCylinderD.Name = "Warn"
WarningCylinderD.BrickColor = BrickColor.new("Navy blue")
WarningCylinderD.Size = Vector3.new(0.2,20,20)
WarningCylinderD.Rotation = Vector3.new(0, 0, 90)
WarningCylinderD.Anchored = true
WarningCylinderD.CanCollide = false
WarningCylinderD.Transparency = 0.5
WarningCylinderD.Shape = "Cylinder"
WarningCylinderD.Material = "Neon"

local Services = {

SoundService = game:GetService("SoundService");
Players = game:GetService("Players");
Debris = game:GetService("Debris");
Workspace = game:GetService("Workspace");
Lighting = game:GetService("Lighting");
HttpService = game:GetService("HttpService");
InsertService = game:GetService("InsertService");
	
}

cf = CFrame.new

local RootCFrame = CFrame.fromEulerAnglesXYZ(-1.57,0,3.14)
Necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Necko2 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Right_Hip_C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Left_Hip_C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

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


LeftShoulder.Parent = nil
RightShoulder.Parent = nil


Animator = Humanoid.Animator
Animate = Character.Animate

Animator.Parent = nil
Animate.Parent = nil

local ManaBarGUI = Instance.new("ScreenGui", Player.PlayerGui)
ManaBarGUI.Name = "ManaBarGUI"


local ManaBarP1 = Instance.new("Frame", ManaBarGUI)
ManaBarP1.Name = "ManaBarPart1"
ManaBarP1.Size = UDim2.new(0,300,0,20)
ManaBarP1.Position = UDim2.new(0,350,0.1,0)
ManaBarP1.BackgroundColor3 = BrickColor.Black().Color

local ManaBarP2 = Instance.new("Frame", ManaBarP1)
ManaBarP2.Name = "ManaBarPart2"
ManaBarP2.Size = UDim2.new(0,300,0,20)
ManaBarP2.Position = UDim2.new(0,0,0,0)
ManaBarP2.BackgroundColor3 = BrickColor.new("Bright blue").Color

local ManaBarText = Instance.new("TextLabel", ManaBarP1)
ManaBarText.Name = "ManaBarText"
ManaBarText.Size = UDim2.new(0,300,0,20)
ManaBarText.Position = UDim2.new(0,0,-1.5,0)	
ManaBarText.TextScaled = true
ManaBarText.Text = "<{[ Domination ]}> 0 <{[ Domination ]}>"
ManaBarText.BackgroundTransparency = 1
ManaBarText.TextStrokeTransparency = 0
ManaBarText.TextStrokeColor3 = Color3.new(1,1,1)
ManaBarText.TextColor3 = Color3.new(0,0,0)
ManaBarText.Font = "Garamond"

local DominatorGui = Instance.new("BillboardGui", Head)
DominatorGui.ExtentsOffset = Vector3.new(0,5,0)
DominatorGui.Adornee = Head
DominatorGui.AlwaysOnTop = true
DominatorGui.Enabled = true
DominatorGui.Size = UDim2.new(0, 200,0, 50)

local DominatorText = Instance.new("TextLabel", DominatorGui)
DominatorText.BackgroundTransparency = 1
DominatorText.Font = "Code"
DominatorText.Size = UDim2.new(0, 200,0, 50)
DominatorText.TextStrokeColor3 = BrickColor.new("Medium blue").Color
DominatorText.TextStrokeTransparency = 0
DominatorText.TextColor3 = Color3.new(1,1,1)
DominatorText.TextScaled = true
DominatorText.Text = "Dominator"

--------[[ Mesh Ids ]]--------

-- Eh... This is just my Stock of Meshes

SpikeMeshId = 1033714
SpikeBallId = 9982590
StarMeshId = 45428961
CrystalMeshId = 9756362

--[[ Essential Functions ]]--
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

local CreateMesh = function(Parent, Scale, Shape)


local Mesh = Instance.new("BlockMesh", Parent)
Mesh.Scale = Scale

return Mesh

end

local CreateWedge = function(Parent, Name, Color, Size, Material, Transparency)

local WedgePart = Instance.new("WedgePart", Parent)
WedgePart.Name = Name
WedgePart.BrickColor = BrickColor.new(Color)
WedgePart.Size = Size
WedgePart.Material = Material
WedgePart.Transparency = Transparency
WedgePart.CanCollide = false
NoOutlines(WedgePart)

return WedgePart

end

local CreateWeld = function(Parent, Cframe, P1 , P0)
	
local Weld = Instance.new("Weld", Parent)
Weld.Part0 = P0
Weld.Part1 = P1
Weld.Name = P0.Name .. "To" .. P1.Name
Weld.C0 = Cframe

return Weld	
	
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

local MakeSFX = function(Parent, Id, Volume, Pitch, Type)
	
local SFX = Instance.new("Sound", Parent)
SFX.SoundId = "http://www.roblox.com/asset?id=" .. Id
SFX.Name = "SFX"
SFX:Play()
SFX.Volume = Volume
SFX.Pitch = Pitch
SFX.PlayOnRemove = true
SFX:Remove()
	
if Type == "Echo" then
	
Instance.new("EchoSoundEffect", SFX)	
	
end	
	
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
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Ranged" then
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Knockdown" then
	
		
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
DamageLabel(Hit.Parent, Damage, Hit)
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

function DamageLabel(HitCharacter, DamageDealt, Hit)
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Bright yellow", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position

local DamageGui = Instance.new("BillboardGui", DamageShowingPart)
DamageGui.Name = "Damage"
DamageGui.AlwaysOnTop = true
DamageGui.Size = UDim2.new(5, 0, 5, 0)

local DamageNumber = Instance.new("TextLabel", DamageGui)
DamageNumber.Size = UDim2.new(1,0,1,0)
if Hit.Parent:FindFirstChild("Head") then
DamageNumber.TextStrokeColor3 = Hit.Parent.Head.BrickColor.Color
DamageNumber.TextColor3 = Hit.BrickColor.Color
end
DamageNumber.TextStrokeTransparency = 0
DamageNumber.BackgroundTransparency = 1
DamageNumber.Font = "SourceSansBold"
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
 


--[[ CLerp Declarations ]]--

function clerp(a,b,t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) -- dis one
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
if not Dominating then
if Domination ~= MaxDomination then
	
Domination = Domination + 1

end

if Domination >= MaxDomination then
	
Domination = MaxDomination
	
end
end

ManaBarText.Text = "<{[ Domination ]}> <|"..Domination.."|> <{[ Domination ]}>"

ManaBarP2.Size = UDim2.new(Domination / MaxDomination,0,0,20)	
	
end

--[[ Attacks & Attack Function ]]--


function HoldAttack()

Attacking = true

	local RefDamage = Instance.new("Part", workspace)
	RefDamage.Shape = "Ball"
	RefDamage.Material = "Neon"
	RefDamage.BrickColor = BrickColor.new("Medium blue")
	RefDamage.Size = Vector3.new(3,3,3)
	RefDamage.Transparency = 0.5
	RefDamage.CanCollide = false
	RefDamage.Name = "Reference"
	RefDamage.Position = WarningCylinder.Position + Vector3.new(math.random(-15,15), math.random(20,40),math.random(-15,15))	
	RefDamage.CFrame = CFrame.new(RefDamage.Position, WarningCylinderD.Position)

	CircleEffect(RefDamage.Position, workspace, 10, 10, 10, 5, 5, 5, 0.3, "White", "Neon", 0.5)

	local MeteorVelocity = CreateVelocity(RefDamage, RefDamage.CFrame.lookVector * 50,Vector3.new(10000,10000,10000))	
	
	wait(0.2)
	Connection = RefDamage.Touched:connect(function(Hit)
	ValidateDamage(RefDamage, 10 ,25 , 50, "Knockdown", "Penetration", 10)
	CircleEffect(RefDamage.Position, workspace, 10, 10, 10, 10, 10, 10, 0.3, "White", "Neon", 0.5)
	MakeSFX(RefDamage, 183763487,1, 1, "Echo")
	RefDamage:Remove()
	Connection:disconnect()	

	end)
end

function Dominate()
wait()
Attacking = true

while Dominating do
wait()

if Domination > 0 then

Domination = Domination - 1
DominateCylinder.Size = DominateCylinder.Size + Vector3.new(0,0.1,0.1)
DominateCylinderD.Size = DominateCylinderD.Size + Vector3.new(0,0.1,0.1)

BlockEffect(Left_Arm.Position - Vector3.new(0,-1,0), Services.Workspace, 1,1,1, 1,1,1, 1, "Medium blue", "SmoothPlastic", 0)
BlockEffect(Right_Arm.Position - Vector3.new(0,-1,0), Services.Workspace, 1,1,1, 1,1,1, 1, "Medium blue", "SmoothPlastic", 0)
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,2 + Change)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.8, 0) * CFrame.Angles(0,0,2.8), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.8, 0) * CFrame.Angles(0,0,-2.8), 0.3)

DominateCylinder.Touched:connect(function(Hit)	
wait()	
	
if Hit.Name ~= "Reference" and Hit.Parent:FindFirstChild("Humanoid") and Hit.Parent ~=	Character then
	
if Hit.Parent:FindFirstChild("Shirt") then
		
Hit.Parent.Shirt:Remove()
	
end	
	
if Hit.Parent:FindFirstChild("Pants") then
	
Hit.Parent.Pants:Remove()
	
end	

Hit.Parent.Torso.BrickColor = BrickColor.new("Medium blue")	
Hit.Parent.Torso.Transparency = 0.5
Hit.Parent.Torso.Material = "Neon"
Hit.Parent.Torso.Anchored = true

Hit.Parent.Head.BrickColor = BrickColor.new("Medium blue")		
Hit.Parent.Head.Transparency = 0.5
Hit.Parent.Head.Material = "Neon"	
Hit.Parent.Head.Anchored = true

Hit.Parent["Right Arm"].BrickColor = BrickColor.new("Medium blue")	
Hit.Parent["Right Arm"].Transparency = 0.5
Hit.Parent["Right Arm"].Material = "Neon"
Hit.Parent["Right Arm"].Anchored = true

Hit.Parent["Left Arm"].BrickColor = BrickColor.new("Medium blue")	
Hit.Parent["Left Arm"].Transparency = 0.5
Hit.Parent["Left Arm"].Material = "Neon"
Hit.Parent["Left Arm"].Anchored = true

Hit.Parent["Right Leg"].BrickColor = BrickColor.new("Medium blue")	
Hit.Parent["Right Leg"].Transparency = 0.5
Hit.Parent["Right Leg"].Material = "Neon"
Hit.Parent["Right Leg"].Anchored = true

Hit.Parent["Left Leg"].BrickColor = BrickColor.new("Medium blue")	
Hit.Parent["Left Leg"].Transparency = 0.5
Hit.Parent["Left Leg"].Material = "Neon"
Hit.Parent["Left Leg"].Anchored = true

wait()

Hit.Parent.Humanoid.Health = 0	
	
end
end)

else

Dominating = false


end
end
end

Mouse.KeyDown:connect(function(Key)
if not Attacking then
if Key == "q" and Domination > 0 then
Dominating = true	

if Character:FindFirstChild("Dominating") then
	
Character.Dominating:Remove()	
Character.DominatingDetail:Remove()	
	
end


DominateCylinder = Instance.new("Part", Character)
DominateCylinder.Name = "Dominating"
DominateCylinder.BrickColor = BrickColor.new("Medium blue")
DominateCylinder.Size = Vector3.new(0.2,1,1)
DominateCylinder.Rotation = Vector3.new(0, 0, 90)
DominateCylinder.Anchored = true
DominateCylinder.CanCollide = false
DominateCylinder.Transparency = 0.8
DominateCylinder.Material = "Neon"
DominateCylinder.Shape = "Cylinder"
DominateCylinder.Position = Mouse.Hit.p

DominateCylinderD = Instance.new("Part", Character)
DominateCylinderD.Name = "DominatingDetail"
DominateCylinderD.BrickColor = BrickColor.new("Navy blue")
DominateCylinderD.Size = Vector3.new(0.2,0.5,0.5)
DominateCylinderD.Rotation = Vector3.new(0, 0, 90)
DominateCylinderD.Anchored = true
DominateCylinderD.CanCollide = false
DominateCylinderD.Transparency = 0.5
DominateCylinderD.Material = "Neon"
DominateCylinderD.Shape = "Cylinder"
DominateCylinderD.Position = DominateCylinder.Position

Dominate()	

end
end	
end)

Mouse.KeyUp:connect(function(Key)
if Key == "q" then
Dominating = false		
Attacking = false	
end	
end)

Mouse.Button1Down:connect(function()
if not Attacking and not Dominating then
HoldingClick = true
	WarningCylinder.Parent = Character	
	WarningCylinderD.Parent = Character

MakeSFX(Torso, 137463716,1, 1, "Echo")
	
end	
end)

Mouse.Button1Up:connect(function()
	WarningCylinder.Parent = nil
	WarningCylinderD.Parent = nil
	HoldingClick = false
	wait(0.5)
	Attacking = false
		
end)

--[[ Click Attack Loop ]]--

coroutine.resume(coroutine.create(function()
while true do
	wait(0.5)
	if HoldingClick then
		HoldAttack()
		Humanoid.WalkSpeed = 0 
		Humanoid.JumpPower = 0
	
elseif not Dominating and not HoldingClick then
	
		Humanoid.WalkSpeed = 16
		Humanoid.JumpPower = 50
	
	end
if Dominating then
		Humanoid.WalkSpeed = 0 
		Humanoid.JumpPower = 0
	
elseif not Dominating and not HoldingClick then
	
		Humanoid.WalkSpeed = 16
		Humanoid.JumpPower = 50
	
		end	
	
	end
end))

--[[ Animations ]]--

Change = 0

while true do

wait()

	if Invert == false then
		Change = Change + 0.01

		elseif Invert == true then
	
		Change = Change - 0.01

	end

	if Change > 0.5 then
	
		Invert = true

		elseif Change < -0.5 then

		Invert = false
	
	end

Bars()

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

WarningCylinder.Position = Mouse.Hit.p
WarningCylinderD.Position = WarningCylinder.Position

if HoldingClick then

BlockEffect(Left_Arm.Position - Vector3.new(0,-1,0), Services.Workspace, 1,1,1, 1,1,1, 1, "Medium blue", "SmoothPlastic", 0)
BlockEffect(Right_Arm.Position - Vector3.new(0,-1,0), Services.Workspace, 1,1,1, 1,1,1, 1, "Medium blue", "SmoothPlastic", 0)
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,2 + Change)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.8, 0) * CFrame.Angles(0,0,2.8), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.8, 0) * CFrame.Angles(0,0,-2.8), 0.3)

end

if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"


RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,2 + Change)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.2,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(-0, 0.5, -1) * CFrame.Angles(1.6,0,-1.3), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(0, 0.5,-1) * CFrame.Angles(1.6,0,1.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0.2 - Change / 2),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,-0.2 + Change / 2),0.2)

end


if 2 < Torvel and Torvel < 22 and HitFloor ~= nil and Attacking == false then
Anim = "Walking"
if Attacking == false then

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,2 + Change)* CFrame.Angles(0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.2,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5,0.1, 0.3) * CFrame.Angles(-0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.1, 0.3) * CFrame.Angles(-0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0.3,1.6,-0.8),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0.3,-1.6,0.8),0.2)

end
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.2) 
end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,5 + Change)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5,0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0.5),0.2)
BlockEffect(Right_Leg.Position - Vector3.new(0,1,0), Services.Workspace, 1,1,1, 1,1,1, 1, "Medium blue", "SmoothPlastic", 0)
BlockEffect(Left_Leg.Position - Vector3.new(0,1,0), Services.Workspace, 1,1,1, 1,1,1, 1, "Medium blue", "SmoothPlastic", 0)

end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,5 + Change)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5,0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0.5),0.2)

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
Effect[1].Transparency = Effect[1].Transparency + 0.1
Mesh = Effect[1]:FindFirstChild("Mesh")
if Mesh ~= nil then
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])

end

elseif Effect[2] == "Circle" then
Effect[1].Transparency = Effect[1].Transparency + 0.1
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