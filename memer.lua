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
local Damage = 0
local Mouse = Player:GetMouse()
local LeftShoulder = Torso["Left Shoulder"] 
local Left_Hip = Torso["Left Hip"] 
local RightShoulder = Torso["Right Shoulder"] 
local Right_Hip = Torso["Right Hip"] 
local Root = Character.HumanoidRootPart
local RootJoint = Root.RootJoint
local Attacking = false
local RootCFrame = CFrame.fromEulerAnglesXYZ(-1.57,0,3.14)
local WakeMeUp = false
local cf = CFrame.new
local WalkForward = false
local Effects = {}
local Color = "White"

Necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Right_Hip_C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Left_Hip_C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

Movemment = 1
Walk = 0


local Services = {

SoundService = game:GetService("SoundService");
Players = game:GetService("Players");
Debris = game:GetService("Debris");
Workspace = game:GetService("Workspace");
Lighting = game:GetService("Lighting");
HttpService = game:GetService("HttpService");
InsertService = game:GetService("InsertService");
	
}

MaxCooldown1 = 1
MaxCooldown2 = 1
MaxCooldown3 = 1
MaxCooldown4 = 1
MaxCooldownE = 1

Cooldown1 = MaxCooldown1
Cooldown2 = MaxCooldown2
Cooldown3 = MaxCooldown3
Cooldown4 = MaxCooldown4
CooldownE = MaxCooldownE

cf = CFrame.new

local RootCFrame = CFrame.fromEulerAnglesXYZ(-1.57,0,3.14)
Necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Necko2 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Right_Hip_C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Left_Hip_C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

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
wait()
LeftShoulder.Parent = nil
RightShoulder.Parent = nil


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
HealthBarText.TextTransparency = 0
HealthBarText.TextStrokeTransparency = 0
HealthBarText.BackgroundTransparency = 1
HealthBarText.TextStrokeColor3 = Color3.new(1,1,1)
HealthBarText.TextColor3 = Color3.new(0,0,0)
HealthBarText.Font = "SciFi"

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
CoolDown1Text.Text = "z - WAKE ME UP INSIDE"
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
CoolDown2Text.Text = "x - meme launch"
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
CoolDown3Text.Text = "c - and his name is..."
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
CoolDown4Text.Text = "v - allahuekber"
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
CoolDownEText.Text = "e - aaaa"
CoolDownEText.TextStrokeTransparency = 0
CoolDownEText.TextStrokeColor3 = Color3.new(1,1,1)
CoolDownEText.TextColor3 = Color3.new(0,0,0)
CoolDownEText.Font = "SciFi"

--[[ transformixu ]]--

Head.face.Texture = "http://www.roblox.com/asset/?id=176699876"

for i,v in pairs(Character:children()) do
	
if v:IsA("Hat") then
	
v:Remove()	
	
end	
	
end


--[[ perts andi effictiz fucktions ]]--

function NoOutlines(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

local CreateVelocity = function(Parent,Velocity,Force)
	
local BodyVelocity = Instance.new("BodyVelocity", Parent)
BodyVelocity.Velocity = Velocity
BodyVelocity.MaxForce = Force	

	
	
return BodyVelocity	
	
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

--[[ customiz ]]--


if Player:FindFirstChild("Custom") and Player.Custom.Customized.Value == true then
	
CoolDown1Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDown2Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDown3Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDown4Bar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
CoolDownEBar.BackgroundColor3 = BrickColor.new(Player.Custom.Co1.Value).Color	
Color = Player.Custom.Co1.Value	
	
end


--[[ soumdiz ]]--

WakeMeUpInside = Instance.new("Sound", Character)
WakeMeUpInside.SoundId = "http://www.roblox.com/asset?id=326429386"
WakeMeUpInside.Name = "WAKE ME UP INSIDE!111!"
WakeMeUpInside.Looped = true

Sad = Instance.new("Sound", Character)
Sad.SoundId = "http://www.roblox.com/asset?id=254352182"
Sad.Name = "Sad"
Sad.Looped = true

JOHNCENAh = Instance.new("Sound", Character)
JOHNCENAh.SoundId = "http://www.roblox.com/asset?id=272322032"
JOHNCENAh.Name = "JOHNCENAh"



--[[ crerp decaratius ]] --
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

--[[ debeigi fucktion ]]--



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
 

function Bars()
	
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



if CooldownE ~= MaxCooldownE then
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

end

--[[ attakis ]]--

function WAKEMEUPINSIDE()
	
for i = 1,3 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(3,0,0)* CFrame.Angles(-0.2,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,cf(10,20,3) * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(3, 10, 0) * CFrame.Angles(-0.23,0.5,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(3, 0.1, 0) * CFrame.Angles(0.3,0.2,2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(3,-2,9)*CFrame.Angles(2,1.6,-0.2),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-0,-0,5)*CFrame.Angles(5,-1.6,0.2),0.2)
end

ValidateDamage(Torso, 20, 1, 5, "Normal", "Punch", 50)
	
for i = 1,3 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(3,30,0)* CFrame.Angles(-0.3452,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,cf(12,56,5) * CFrame.Angles(-0.5,0,30),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(10, 30, 5) * CFrame.Angles(-0.23,0.5,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(34, 1, 32) * CFrame.Angles(0.3,0.2,22), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(5,-3,3)*CFrame.Angles(2,1.6,-0.342),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-53,-0,25)*CFrame.Angles(5,-41.6,0.52),0.2)
end
ValidateDamage(Torso, 50, 1, 5, "Normal", "Punch", 50)
	
for i = 1,3 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(-3,-30,0)* CFrame.Angles(0.3452,-0,-0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,cf(-12,-56,5) * CFrame.Angles(0.5,-0,-30),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(-10, -30, -5) * CFrame.Angles(0.23,-0.5,-0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-34, -1, -32) * CFrame.Angles(-0.3,-0.2,-22), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(-5,3,-3)*CFrame.Angles(-2,-1.6,0.342),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(53,0,-25)*CFrame.Angles(-5,41.6,-0.52),0.2)
end
ValidateDamage(Torso, 50, 1, 5, "Normal", "Punch", 50)
	
end

function MemeLaunch()
	
memis = {294841732,474498947,474494834,519973850,291736664,513363123,94349155,379915109,331385631,387197836,304460548,196819764}	
	
local meme = Instance.new("Part",game.Workspace)	
meme.Anchored = true
meme.Position = Torso.Position + Vector3.new(0,5,0)
meme.Rotation = Torso.Rotation + Vector3.new(0,-1,0)
meme.Size = Vector3.new(5, 5, 0.2)
meme.Transparency = 1


meme.Touched:connect(function(hit)
	

ValidateDamage(meme, 10, 1, 1, "Knockdown", "Punch", 130)	


end)


game:GetService("Debris"):AddItem(meme, 30)

local memedecal = Instance.new("Decal", meme)
memedecal.Texture = "http://www.roblox.com/asset?id=" .. memis[math.random(1, #memis)]


local memedecal2 = memedecal:Clone()
memedecal2.Parent = meme
memedecal2.Face = "Back"


	
for i = 1,30 do

wait()

	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(-0.2,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 1, 0) * CFrame.Angles(0,0,-3.1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 1, 0) * CFrame.Angles(0,0,3.1), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,-0.2),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0.2),0.2)
	
	
end

meme.Anchored = false

meme.CFrame = CFrame.new(meme.Position, Mouse.Hit.p)	
local memevilocity = CreateVelocity(meme,meme.CFrame.lookVector * 250,Vector3.new(math.huge,math.huge,math.huge))


for i = 1,30 do

wait()

ValidateDamage(meme, 1, 1, 33, "Knockdown", "Punch", 5)
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(0.8,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 1, 0) * CFrame.Angles(0,0,-3.1), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 1, 0) * CFrame.Angles(0,0,3.1), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,0.8),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,-0.8),0.2)
	
	
end	

Attacking = false
end

function JOHNCENA()
	
JOHNCENAh:Play()

Humanoid.WalkSpeed = 0	
Humanoid.JumpPower = 0	


for i = 1,60 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,10)* CFrame.Angles(1.6,1.6,1.6),0.8)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.5), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(0.5,-1,0.5)*CFrame.Angles(0,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-0.5,-1,0.5)*CFrame.Angles(0,0,0),0.2)
	
	
end	

for i = 1,6 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,-2)* CFrame.Angles(1.6,1.6,1.6),0.8)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,-1),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,-0.5), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.3, 0.5, -0.5) * CFrame.Angles(1.6,0,0.3), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(0.5,-1,0.5)*CFrame.Angles(0,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-0.5,-1,0.5)*CFrame.Angles(0,0,0),0.2)
	
	
end	

local Explosion = Instance.new("Explosion")
Explosion.Parent = game.workspace.Terrain
Explosion.Position = Right_Arm.Position
Explosion.Name = "Boom!"
Explosion.BlastRadius = 0
Explosion.BlastPressure = 0
Explosion.DestroyJointRadiusPercent = 0
Explosion.ExplosionType = "NoCraters"

local dmgreference = Instance.new("Part", Services.Workspace)
dmgreference.CFrame = Torso.CFrame
dmgreference.Transparency = 1
dmgreference.Size = Vector3.new()
dmgreference.CanCollide = false



ValidateDamage(dmgreference, 1000, 10, 20, "Knockdown", "Penetration", 100)
		
Humanoid.WalkSpeed = 16	
Humanoid.JumpPower = 50	
	
	Attacking = false


end

function allahuekber()	
Attacking = true

Sad:Remove()
MakeSFX(Character,433848566, 1, 1)

Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
wait(5)
MakeSFX(Character, 134854740, 1 , 0.4)
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 10,10,10, 5, Color, "Neon", 0.5)
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 10,10,10, 5, Color, "Neon", 0.5)
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 10,10,10, 5, Color, "Neon", 0.5)
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 10,10,10, 5, Color, "Neon", 0.5)
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 10,10,10, 5, Color, "Neon", 0.5)
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 10,10,10, 5, Color, "Neon", 0.5)
BlockEffect(Torso.Position, Services.Workspace, 1,1,1, 10,10,10, 5, Color, "Neon", 0.5)
ValidateDamage(Torso, 1000, 77, 89, "Knockdown", "Penetration", 0)
wait(5)
Character:BreakJoints()

end

Mouse.KeyDown:connect(function(kei)
if not Attacking then
	
if kei == "z" then

	
WakeMeUp = true

if JOHNCENAh.IsPlaying == false then
WakeMeUpInside:Resume()
end

while WakeMeUp do
WakeMeUp = true	
Attacking = true
WAKEMEUPINSIDE()
end

	
end
if kei == "x" then

Attacking = true


MemeLaunch()	
		

end

if kei == "c" and JOHNCENAh.IsPlaying == false then

Attacking = true


JOHNCENA()	
		
end

if kei == "v" then

allahuekber()	
	
end
end
end)

Mouse.KeyUp:connect(function(kei)
	
	
if kei == "z" and WakeMeUp then
Attacking = false
WakeMeUp = false
WakeMeUpInside:Pause()
	
	
end	
	
end)

Humanoid.Died:connect(function ()
	
Sad:Play()	
	
end)

--[[ crerp animaxius ]]--
while true do

wait()

Bars()

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(-0.2,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,-0.2),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0.2),0.2)

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
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(-0.2,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 0.5, 0.6) * CFrame.Angles(-1.6,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 0.5, 0.6) * CFrame.Angles(-1.6,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,-0.2),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0.2),0.2)

end


Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0) * CFrame.Angles(0,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.2) 
end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(-0.2,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 1, 0) * CFrame.Angles(0,0,-3.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 1, 0) * CFrame.Angles(0,0,3.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,-0.2),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0.2),0.2)

	
end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*cf(0,0,0)* CFrame.Angles(-0.2,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, cf(1.5, 1, 0) * CFrame.Angles(0,0,-3.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, cf(-1.5, 1, 0) * CFrame.Angles(0,0,3.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,cf(1,-1,0)*CFrame.Angles(0,1.6,-0.2),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,cf(-1,-1,0)*CFrame.Angles(0,-1.6,0.2),0.2)

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