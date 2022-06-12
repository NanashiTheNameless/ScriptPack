--[[ World eater Script ]]--
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
local MaxDestruction = 1000
local Destruction = 0
local MaxBlock = 100
local Effects = {}
local Color = "Bright yellow"
local Invert = false
local Idle = 0
local Equipped = false
local Running = false
local Unseathed = false
local Shard = "None"

Humanoid.MaxHealth = 3000
Humanoid.Health = 3000

local WorldEaterTheme = Instance.new("Sound",Character)
WorldEaterTheme.Name = "WorldEaterTheme"
WorldEaterTheme.Looped = true
WorldEaterTheme.SoundId = "http://www.roblox.com/asset?id=149981769"
WorldEaterTheme:Play()

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
Humanoid.WalkSpeed = 10

local RootCFrame = CFrame.fromEulerAnglesXYZ(-1.57,0,3.14)
Necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Necko2 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Right_Hip_C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Left_Hip_C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)


Movemment = 1
Walk = 0

Animator = Humanoid.Animator
--Animate = Character.Animate

Animator.Parent = nil
--Animate.Parent = nil

local Services = {

SoundService = game:GetService("SoundService");
Players = game:GetService("Players");
Debris = game:GetService("Debris");
Workspace = game:GetService("Workspace");
Lighting = game:GetService("Lighting");
HttpService = game:GetService("HttpService");
InsertService = game:GetService("InsertService");
	
}

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
ManaBarP2.BackgroundColor3 = BrickColor.new("Black").Color

local ManaBarText = Instance.new("TextLabel", ManaBarP1)
ManaBarText.Name = "ManaBarText"
ManaBarText.Size = UDim2.new(0,300,0,20)
ManaBarText.Position = UDim2.new(0,0,-1.5,0)	
ManaBarText.TextScaled = true
ManaBarText.Text = "<{[ Destruction ]}> 0 <{[ Destruction ]}>"
ManaBarText.BackgroundTransparency = 1
ManaBarText.TextStrokeTransparency = 0
ManaBarText.TextStrokeColor3 = Color3.new(1,1,1)
ManaBarText.TextColor3 = Color3.new(0,0,0)
ManaBarText.Font = "Garamond"

local WorldEaterGui = Instance.new("BillboardGui", Head)
WorldEaterGui.ExtentsOffset = Vector3.new(0,5,0)
WorldEaterGui.Adornee = Head
WorldEaterGui.AlwaysOnTop = true
WorldEaterGui.Enabled = true
WorldEaterGui.Size = UDim2.new(0, 200,0, 50)

local WorldEaterText = Instance.new("TextLabel", WorldEaterGui)
WorldEaterText.BackgroundTransparency = 1
WorldEaterText.Font = "Garamond"
WorldEaterText.Size = UDim2.new(0, 200,0, 50)
WorldEaterText.TextStrokeColor3 = BrickColor.Red().Color
WorldEaterText.TextStrokeTransparency = 0
WorldEaterText.TextColor3 = BrickColor.Black().Color
WorldEaterText.TextScaled = true
WorldEaterText.Text = "World Eater"

--------[[ Mesh Ids ]]--------

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
	
if Type == "Shrink" then
MakeSFX(Hit.Parent.Torso, 209527235, 1, 1)	
for i,v in pairs(Hit.Parent:children()) do
if v:IsA("Part") then
coroutine.resume(coroutine.create(function()		
for i = 1,100 do
wait()	
v.Size = v.Size - Vector3.new(0.05,0.05,0.05)
v.Transparency = v.Transparency + 0.05
	
end		
end))
end	
end
	
end	
	
	
	
if Type == "Normal" then
	
local Push = CreateVelocity(Hit.Parent.Torso, Torso.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Ranged" then
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Impale" then

local Spike = CreateSpike(Services.Workspace, "D e a t h", "Black", Vector3.new(), "SmoothPlastic", 0, Vector3.new(1,20,1))	
Spike.Anchored = true
Spike.Rotation = Vector3.new(math.random(-50,50), 0 , math.random(-50,50))
Spike.Position = Hit.Parent.Torso.Position


Services.Debris:AddItem(Spike, 30)

Hit.Parent:BreakJoints()
Hit.Parent.Torso.Position = Spike.Position + Vector3.new(0,5,0)
Hit.Parent.Torso.Anchored = true
	
MakeSFX(Spike, 306247724, 1,1)	
MakeSFX(Hit.Parent.Torso, 209527175, 10,1)
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
 


local Cloak = Instance.new("Part", Character)
Cloak.Name = "Cloak"
Cloak.CanCollide = false
Cloak.BrickColor = BrickColor.new("Institutional white")

local CloakMesh = Instance.new("SpecialMesh", Cloak)
CloakMesh.MeshId = "http://www.roblox.com/asset?id=16150814"
CloakMesh.TextureId = "http://www.roblox.com/asset?id=16150799"

local CloakWeld = CreateWeld(Cloak, CFrame.new(0,0,0) * CFrame.Angles(0,0,0), Head , Cloak, "ArkusToCharacter")

for i,v in pairs(Character:children()) do
if v:IsA("Accessory") then
	v:Remove()
elseif v:IsA("Shirt") then
	v:Remove()
elseif v:IsA("Pants") then
	v:Remove()	
elseif v:IsA("BodyColors") then

Head.BrickColor =BrickColor.new("Really black")
Torso.BrickColor = BrickColor.new("Really black")
Right_Arm.BrickColor = BrickColor.new("Really black")
Right_Leg.BrickColor = BrickColor.new("Really black")
Left_Arm.BrickColor = BrickColor.new("Really black")
Left_Leg.BrickColor = BrickColor.new("Really black")

v.HeadColor = BrickColor.new("Really black")
v.TorsoColor = BrickColor.new("Really black")
v.RightArmColor = BrickColor.new("Really black")
v.LeftArmColor = BrickColor.new("Really black")
v.RightLegColor = BrickColor.new("Really black")
v.LeftLegColor = BrickColor.new("Really black")
	
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
if Destruction ~= MaxDestruction then
	
Destruction = Destruction + 1

end

if Destruction >= MaxDestruction then
	
Destruction = Destruction
	
end


ManaBarText.Text = "<{[ Destruction ]}> <|"..Destruction.."|> <{[ Destruction ]}>"

ManaBarP2.Size = UDim2.new(Destruction / Destruction,0,0,20)	
	
end
local EyeReference = CreatePart(Character, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local EyeReferenceWeld = CreateWeld(EyeReference,  CFrame.new(0.15,-0.1,-0.7), EyeReference, Head)

coroutine.resume(coroutine.create(function()
	
while wait(3) do

	
CircleEffect(EyeReference.Position, Services.Workspace,  1, 1, 1, 1, 1, 1, 0.5, "Bright red", "Neon", 0.5)
	
	
end
	
end))
--[[ Attacks ]]--

function Attack1()
Attacking = true
MakeSFX(EyeReference, 341336274, 1,1)
wait(0.3)
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local ReferenceWeld = CreateWeld(Reference,  CFrame.new(0,0.5,-5), Reference, Root)

local Reference2 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference2Weld = CreateWeld(Reference2,  CFrame.new(0,0.5,-2), Reference2, Root)


for i = 1,10 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1.3),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0,0,-1.6), 0.4)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0) * CFrame.Angles(0,1.6,0),0.3)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.3) 

end

CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
MakeSFX(Reference, 306247724, 1,1)	
CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, "Bright red", "Neon", 0.5)
ValidateDamage(Reference, 10 ,10 , 14, "Shrink", "Penetration", 5)
Attacking = false
end

function Attack2()
	
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
	
end

MakeSFX(Torso, 142070127, 1, 1)
ValidateDamage(Torso, 60 ,23, 26, "Knockdown", "Penetration", 15)
local Hit, Position = RayCast(Torso.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if Hit ~= nil then
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
Reference.Anchored = true
Reference.CFrame = CFrame.new(Position)

CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, "Bright red", "Neon", 0.5)

game:GetService("Debris"):AddItem(Reference,0.1)
for i=1,50 do
	
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
	
end

Attacking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
	
	
	
end


function Attack3()
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
Attacking = true
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
ValidateDamage(Torso, 60 ,0, 0, "Impale", "Penetration", 15)
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false
end

Mouse.Button1Down:connect(function()
if not Attacking then
if Combo == 1 then

Combo = 2
Attack1()


elseif Combo == 2 then

Attack2()
Combo = 3

elseif Combo == 3 then
	
Attack3()
Combo = 1

end	
end
end)

--[[ CLerp Animations ]]--
Change1 = 0
Change2 = 0
Change3 = 0
Change4 = 0

while true do
wait()

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

Bars()


if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,-0.3,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)

end


if 2 < Torvel and Torvel < 22 and HitFloor ~= nil and Attacking == false then
Anim = "Walking"

if Invert == false then
Change1 = Change1 + 0.1

elseif Invert == true then
	
Change1 = Change1 - 0.1

end

if Change1 > 0.5 then
	
Invert = true

elseif Change1 < -0.5 then

Invert  = false

end

if Attacking == false then

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,-0.3,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, -Change1) * CFrame.Angles(Change1,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, Change1) * CFrame.Angles(-Change1,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-Change1 / 4)*CFrame.Angles(Change1,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,Change1 / 4)*CFrame.Angles(-Change1,-1.6,0),0.2)

end
end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0.2) * CFrame.Angles(-0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0.2) * CFrame.Angles(-0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)

end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, -0.2) * CFrame.Angles(0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.2) * CFrame.Angles(0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)

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