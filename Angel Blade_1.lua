--~Angel Sword~--
repeat Wait()until Game.Players.LocalPlayer ~= nil;Player = Game.Players.LocalPlayer Tool = script.Parent if not script.Parent:IsA("Tool")then Tool = Instance.new("Tool",Player.Backpack)script.Parent = Tool end
Character,PlayerGui,Power = Player.Character,Player.PlayerGui,0
RA,LA,RL,LL,H,T = Character["Right Arm"],Character["Left Arm"],Character["Right Leg"],Character["Left Leg"],Character.Head,Character.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings = {Colors = {BrickColor.new("Institutional white"),BrickColor.new("Gold")};ExplosionColors = {BrickColor.new("Institutional white"),BrickColor.new("Gold"),BrickColor.new("Gold"),BrickColor.new("White")}}
if Player.Name == "LocalPlayer" then
Settings.Colors[1]= BrickColor.new("White")
Settings.Colors[2]= BrickColor.new("Navy blue")
end
H:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=53769373"
local Face,FaceTexture,IceTexture = H:findFirstChild("face"),H:findFirstChild("face").Texture,"http://www.roblox.com/asset/?id=53769373"
Cam = Workspace.CurrentCamera
Way = 0
local ChosenColor,ChangeText,Descriptions
AttackState = "Melee"
Equiped,StopPower,StopTrail,StopRockTrail,StopSwordTrail,RageMode,RageWait,StopFlyTrail = false,false,false,false,false,false,false,false
GeneratedParts = {}
Debounces = {
IsHealing = false;
IsCharging = false;
Attacking = false;
Floating = false;
Shielding = false;
Flying = false;
}
local GripPos,RiseRate,HitDebounce,STGyro,Stance,rHandle = CFrame.new(0,0,0),1,false
local function MakeFloatMesh()
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("White")
s.Size = Vector3.new(5,5,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.Reflectance = 0.1
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(2,0.5,2)
local plat = Instance.new("Part",Character)
plat.Size = Vector3.new(5,1,5)
plat.Anchored = true
plat.Locked = true
plat.CanCollide = true
plat.Transparency = 1
plat.CFrame = T.CFrame * CFrame.new(0,-2,0)
coroutine.wrap(function()
for i = 1,10 do
sm.Scale = sm.Scale + Vector3.new(1,0.2,1)
s.Transparency = s.Transparency +0.1
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-6,6),0)
Wait()
end
plat:Destroy()
s:Destroy()
end)()end
function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = Player
c.Name = "creator"
end
function Kill(Hit)
pcall(function()
Tag(Hit.Parent.Humanoid)
Hit.Parent:BreakJoints()
end)end
function Damage(Vec,Object,Bool)
if Object.Parent:findFirstChild("AngelRegistration")and Object.Parent.Name == Character.Name then return end
if Object.Parent == Character then return end
local Dmg,Humanoid = math.random(30,45),Object.Parent:findFirstChild("Humanoid")
if Bool then Dmg = math.random(15,25)end
if Humanoid and not HitDebounce then
HitDebounce = true
if not RageMode then
if Humanoid.Health -Dmg <= 0 then Tag(Humanoid)end
Humanoid:TakeDamage(Dmg)
else
Kill(Object)
end
for i,v in pairs(Object.Parent:GetChildren())do
if v:IsA("BasePart")then
local BP = Instance.new("BodyForce",v)
BP.force = Vec.CFrame.lookVector *85
Game:GetService("Debris"):AddItem(BP,2)
end end
pcall(function()
Object.Parent:findFirstChild("Torso").RotVelocity = Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Object.Parent:findFirstChild("Torso").Velocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
end)
Wait(0.1)
HitDebounce = false
end end
function CloneCharacter()
Character.Archivable = true
local Clone = Character:Clone()
Character.Archivable = false
Clone.Parent = Workspace
Clone.Archivable = false
return Clone
end
function GetDirection()
if Player == nil then return{CFrame.new(0,0,0),CFrame.new(0,0,0)}end
return{CFrame.new(T.Position,Vector3.new(Cam.CoordinateFrame.x,T.Position.y,Cam.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(Cam.CoordinateFrame.p.x,T.CFrame.p.y,Cam.CoordinateFrame.p.z)}
end
function FaceForward()
STGyro.cframe = GetDirection()[1]
return STGyro.cframe
end
function SwordTrail(Position,CF,Color)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait()do
if StopSwordTrail then break end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Color
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function FlyTrail(Position,CF)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait()do
if StopFlyTrail then break end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Settings.Colors[2]
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function Trail(Position,CF,Color)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait()do
if StopTrail then break end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Color
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function RockTrail(Position,CF,Color)
coroutine.wrap(function()
local Old =(Position.CFrame * CF).p
while Wait()do
if StopRockTrail then break end
local New =(Position.CFrame * CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Color
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1.5,1.5,1.5)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function RandomDecimal(Dec,Dec2)
if not Dec or not Dec2 or Dec == Dec2 then return end
local Range,Round = {},"0."
for i = 1,#tostring(Dec2):sub(tostring(Dec2):find("%.")+1)do Round = Round..'0' end
Round = Round..'1'
for i = Dec,Dec2,tonumber(Round)do
table.insert(Range,i)
if i == Dec2 then
break
end end
return Range[math.random(1,#Range)]
end
function TakeDamage(Humanoid,Amount)Humanoid:TakeDamage(Amount)end
function ChargePosition(Bool)
if Bool then
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
N.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
for i = 1,2 do
RS.C0 = RS.C0 * CFrame.new(0.01,0,0.25)* CFrame.Angles(-(i-0.5),0,0)
LS.C0 = LS.C0 * CFrame.new(0.01,0,0.25)* CFrame.Angles(-(i-0.5),0,0)
RH.C0 = RH.C0 * CFrame.new(0,0.015,0)* CFrame.Angles(-(i-1.4),0,0)
LH.C0 = LH.C0 * CFrame.new(0,0.015,0)* CFrame.Angles(-(i-1.4),0,0)
Wait()
end else
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
N.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
end end
function Charge(Color,Bool)
Stance = "Charging"
Character.Humanoid.WalkSpeed = 0
local l = T:findFirstChild("ChargeLight")or Instance.new("PointLight",T)
l.Name = "ChargeLight"
l.Color = Color.Color
l.Range = Way == 1 and l.Range -1 or l.Range +1
if l.Range == 60 then Way = 1 elseif l.Range == 0 then Way = 0 end
local s = Instance.new("Part",Character)
s.BrickColor = Color
s.Size = Vector3.new(5,5,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
if Bool then
coroutine.wrap(function()
for i = 1,2 do
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or Color
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = T.CFrame * CFrame.new(0,-4,0)* CFrame.Angles(0,math.rad(math.random(-45,45)),0)
local ms = Instance.new("BlockMesh",p)
ms.Scale = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(1,1,1)
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
coroutine.wrap(function()
for i = 0,3,0.2 do
Wait()
m.Scale = m.Scale + Vector3.new(i,i/2,i)
end
coroutine.wrap(function()
for i = 1,5 do
Wait()
p.Transparency = p.Transparency -0.1
end
p:Destroy()
end)()end)()
Wait(0.1)
end end)()end
coroutine.wrap(function()
for i = 1,10 do
sm.Scale = sm.Scale + Vector3.new(1,1,1)
s.Transparency = s.Transparency +0.1
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-6,6),0)
Wait()
end
s:Destroy()
end)()end
local Clones = {}
function IsNear(Position,Distance)
local List = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
if v:findFirstChild("Torso")then
if v ~= Character then
if(v.Torso.CFrame.p -Position).magnitude < Distance then
table.insert(List,v)
end end end end end
return List
end
KeyBindings = {
l = function(Mouse)
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
if AttackState ~= "Laser" then AttackState = "Laser" else AttackState = "Melee" end
Debounces.Attacking = true
Stance = "Lasering"
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == "l" then
BreakLoop = true
x:disconnect()
end end)
local gp
coroutine.wrap(function()
while Wait()do
if BreakLoop then break end
if Stance ~= "Lasering" then break end
if Power <= 0 then break end
gp = Character:findFirstChild("GeneratedParts")or Instance.new("Model",Character);gp.Name = "GeneratedParts";gp.Archivable = true
local _Ray = Ray.new(rHandle.CFrame.p,(Mouse.Hit ~= nil and Mouse.Hit.p or Vector3.new(0,0,0)- rHandle.CFrame.p).unit *900)
local Hit,Pos = Workspace:FindPartOnRay(_Ray,Character)
local Distance =(Mouse.Hit.p -rHandle.CFrame.p).magnitude
local RayPart = gp:findFirstChild("AngelLaser")or Instance.new("Part",gp)
RayPart.Name = "AngelLaser"
RayPart.BrickColor = Settings.Colors[math.random(1,2)]
RayPart.Reflectance = 0.3
RayPart.CanCollide = false
RayPart.Anchored = true
RayPart.Locked = true
RayPart.formFactor = "Custom"
RayPart.Size = Vector3.new(0.1,0.1,Distance)
RayPart.CFrame = CFrame.new(Mouse.Hit.p,rHandle.CFrame.p)* CFrame.new(0,0,-Distance/2)
RayPart.Touched:connect(function(Hit_)
if Hit_.Parent ~= Character then
local H = Hit_.Parent:findFirstChild("Humanoid")
if H then TakeDamage(H,2)end
end end)
local cf = Mouse.Hit
local hp = Instance.new("Part",gp)
hp.Size = Vector3.new(1,1,1)
hp.Anchored = true
hp.Locked = true
hp.CanCollide = false
hp.BrickColor = RayPart.BrickColor
hp.TopSurface = 0
hp.BottomSurface = 0
hp.CFrame = cf
coroutine.wrap(function()
for i = 1,3 do
hp.Size = hp.Size + Vector3.new(2,2,2)
hp.Transparency = hp.Transparency +0.2
hp.CFrame = cf * CFrame.fromEulerAnglesXYZ(math.random(-6,6),math.random(-6,6),math.random(-6,6))
Wait(0.2)
end
hp:Destroy()
end)()
Power = Power -40
end
pcall(function()gp:Destroy()end)
Debounces.Attacking = false
Stance = "Standing"
end)()end;
z = function(Mouse)
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
if AttackState ~= "LightningBolt" then AttackState = "LightningBolt" else AttackState = "Melee" end
end;
x = function(Mouse)
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
if AttackState ~= "GroundSmash" then AttackState = "GroundSmash" else AttackState = "Melee" end
end;
y = function(Mouse)
if #Clones >= 5 then return end
if Debounces.IsCharging or Debounces.IsHealing or Debounces.Shielding or Debounces.Attacking or Debounces.Flying then return end
if Power -26000 >= 0 then
Power = Power -26000
StopPower = true
local x = Instance.new("Animation",Tool)
x.AnimationId = "http://www.roblox.com/asset/?id=128853357"
local anim = Character.Humanoid:LoadAnimation(x)
anim:Play()
for i = 1,5 do
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,T.BrickColor,tonumber("0."..i))
Wait(0.2)
end
Wait(0.2)
local Clone = CloneCharacter()
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")then
v.Touched:connect(function(Hit)
if Hit.Parent ~= Character and Hit.Parent ~= Workspace and Hit.Parent:findFirstChild("Humanoid")and Hit.Parent ~= Clone then
Kill(Hit)
end end)end end
Clone.Humanoid.WalkSpeed = 0
StopPower = false
Clone.Torso.CFrame = LA.CFrame * CFrame.new(0,-2,-2)
local con;con = Mouse.Button1Down:connect(function()
if not Clone then con:disconnect()return end
pcall(function()Clone.Torso.CFrame = Mouse.Hit * CFrame.new(0,10,0)end)
end)
local Registration = Instance.new("IntValue",Clone)
Registration.Name = "AngelRegistered"
local ID = Instance.new("IntValue",Clone)
ID.Name = "IndexNumber"
ID.Value = #Clones == 0 and 1 or #Clones +1
Clones[#Clones == 0 and 1 or #Clones +1]= Clone
local Timer = 0
coroutine.wrap(function()
while Wait(1)do
if Timer == 15 then break end
Timer = Timer +1
end end)()
coroutine.wrap(function()
while Wait()do
if Timer == 15 then
Clones[Clone:findFirstChild("IndexNumber").Value]= nil
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")then
coroutine.wrap(function()
for x = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end end
delay(10 *(1/30),function()Clone:Destroy()end)
break
end end end)()end end;
r = function()
if RageMode then
if RageWait then return end
RageMode = false
local Sayings = {"Ugh...","That was fun!"}
ypcall(function()
local sg = PlayerGui:findFirstChild("RedTintAngel"):findFirstChild("Frame")
coroutine.wrap(function()
for i = 35,1,1 do
sg.BackgroundColor3 = Color3.new(i/35,0,0)
sg.BackgroundTransparency = sg.BackgroundTransparency +0.01
Wait()
end end)()
sg.Parent:Destroy()
end)
Game:GetService("Chat"):Chat(H,Sayings[math.random(1,#Sayings)],2)
Face.Texture = FaceTexture
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Workspace)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Gold")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Institutional white")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Gold")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
delay(1,function()
LA.Anchored = false
RA.Anchored = false
LL.Anchored = false
RL.Anchored = false
T.Anchored = false
end)else
RageWait = true
RageMode = true
local Sayings = {"Rage!","Reminds me of the time I defeated 500 devils","Can't stop me now!","GO BACK TO ONCE WHERE YOU CAME DEMON!"}
Face.Texture = "http://www.roblox.com/asset/?id=33483624"
Game:GetService("Chat"):Chat(H,Sayings[math.random(1,#Sayings)],2)
local s = Instance.new("ScreenGui",PlayerGui)
s.Name = "RedTintAngel"
local sg = Instance.new("Frame",s)
sg.ZIndex = 10
sg.BackgroundTransparency = 1
sg.BackgroundColor3 = Color3.new(1,0,0)
sg.Size = UDim2.new(1,0,1,0)
sg.BorderSizePixel = 0
coroutine.wrap(function()
for i = 1,35 do
sg.BackgroundTransparency = sg.BackgroundTransparency -0.01
Wait()
end end)()
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Workspace)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[1]
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Gold")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
delay(1,function()
LA.Anchored = false
RA.Anchored = false
LL.Anchored = false
RL.Anchored = false
T.Anchored = false
end)
delay(5,function()RageWait = false end)
end end;
}
NonSwordKeys = {
j = function(Mouse)
if Debounces.IsCharging or Debounces.IsHealing or Debounces.Attacking or Debounces.Flying then return end
Debounces.Shielding = not Debounces.Shielding
if not Debounces.Shielding then
T.Anchored = true
StopPower = false
RA.Anchored = false
LA.Anchored = false
LL.Anchored = false
RL.Anchored = false
H.Anchored = false
delay(0.2,function()T.Anchored = false end)
Stance = "Standing"
end
if Debounces.Shielding then
if Power -30 >= 0 then
Stance = "null"
ChargePosition(false)
Power = Power -30
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
Wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
Wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
Wait(0.1)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
Wait(0.1)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
Wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
RA.Anchored = true
LA.Anchored = true
LL.Anchored = true
RL.Anchored = true
H.Anchored = true
StopPower = true
local Rot,Clr = 45
local s = Instance.new("Part",Character)
s.BrickColor = Clr or Settings.Colors[1]
s.Size = Vector3.new(1,1,1)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(33,1,33)
while Wait()do
if not Debounces.Shielding then break end
if Power -30 < 0 then break end
if Power == 0 then break end
Power = Power -30
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,6,0)
local f = Instance.new("Part",Character)
f.BrickColor = Clr or Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.new(0,-2,0)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(20,20,20)
coroutine.wrap(function()
for i = 1,13 do
f.Transparency = i/13
sm.Scale = sm.Scale + Vector3.new(1,1,1)
Wait()
end
f:Destroy()
end)()
local Wind = Instance.new("Part",Character)
Wind.Anchored = true
Wind.CanCollide = true
Wind.Locked = true
Wind.BrickColor = Clr or Settings.Colors[1]
Wind.Transparency = 0.5
Wind.Shape = "Ball"
Wind.TopSurface = 0
Wind.BottomSurface = 0
Wind.Size = Vector3.new(math.random(10,15),1,math.random(10,15))
Wind.CFrame = T.CFrame
for i,v in pairs(IsNear(Wind.Position,33))do Clr = BrickColor.new("Gold")Damage(T,v.Torso)delay(0.02,function()Clr = nil end)end
coroutine.wrap(function()
for i = 0.5,1,0.1 do
Wait()
Wind.Transparency = i
end
Wind:Destroy()
end)()end
T.Anchored = true
StopPower = false
RA.Anchored = false
LA.Anchored = false
LL.Anchored = false
RL.Anchored = false
H.Anchored = false
s:Destroy()
delay(0.2,function()T.Anchored = false end)
Stance = "Standing"
end end end;
}
GlobalKeys = {
h = function(Mouse)
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsHealing = true
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'h' then
BreakLoop = true
x:disconnect()
end end)
while Wait(0.2)do
if Power <= 0 then break end
if Character.Humanoid.Health == Character.Humanoid.MaxHealth then break end
if BreakLoop then break end
Character.Humanoid.Health = Character.Humanoid.Health +15
Power = Power -20
Charge(BrickColor.new("Lime green"),true)
end
Character.Humanoid.WalkSpeed = 45
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Stance = "Standing"
Debounces.IsHealing = false
end;
c = function(Mouse)
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsCharging = true
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'c' then
BreakLoop = true
x:disconnect()
end end)
while Wait(0.2)do
if Power == 26000 then break end
if BreakLoop then break end
if Power > 26000 then Power = 26000 break end
Power = Power +500
Charge(Settings.Colors[2],true)
end
StopTrailing = true
Character.Humanoid.WalkSpeed = 45
ChargePosition(false)
Stance = "Standing"
Debounces.IsCharging = false
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
end;
b = function()
if Power <= 0 then return end
if Power -560 <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.Attacking = true
Power = Power -560
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("White")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
StopTrail = false
for i = 1,2 do
coroutine.wrap(function()
for l,v in pairs(IsNear(T.Position,65))do
pcall(function()v.Torso.CFrame = v.Torso.CFrame * CFrame.new(0,2,0)end)
pcall(function()v.Humanoid.PlatformStand = true end)
for n,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *-350
Game:GetService("Debris"):AddItem(bf,0.26)
end end end end)()
T.CFrame = T.CFrame * CFrame.new(0,0,-60)
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("White")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
local s = Instance.new("Part",Character)
s.BrickColor = i == 1 and BrickColor.new("Institutional white")or BrickColor.new("White")
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,2.5,2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
Wait()
end
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("White")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
T.CFrame = T.CFrame * CFrame.new(0,0,-10)
StopTrail = true
Wait(0.02)
Debounces.Attacking = false
end;
n = function(Mouse)if Debounces.Flying then return end Debounces.Floating = not Debounces.Floating end;
t = function(_Mouse)
if not _Mouse.Target then return end
if Debounces.Attacking or Debounces.Shielding then return end
if Power -500 >= 0 then
Power = Power -500
Debounces.Attacking = true
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("White")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
local CF = _Mouse.Hit
local s = Instance.new("Part",Character)
s.BrickColor = i == 1 and BrickColor.new("Institutional white")or BrickColor.new("White")
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,2.5,2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
for i = 1,3 do
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or BrickColor.new("White")
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = CF * CFrame.new(0,-2,0)* CFrame.Angles(0,math.rad(math.random(-45,45)),0)
local ms = Instance.new("BlockMesh",p)
ms.Scale = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(1,1,1)
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
coroutine.wrap(function()
for i = 0,3,0.2 do
Wait()
m.Scale = m.Scale + Vector3.new(i,i/2,i)
end
coroutine.wrap(function()
for i = 1,5 do
Wait()
p.Transparency = p.Transparency -0.1
end
p:Destroy()
end)()end)()Wait(0.1)end
T.CFrame = CF * CFrame.new(0,2,0)
Debounces.Attacking = false
end end;
q = function()Debounces.Flying = not Debounces.Flying end;
}
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(x1,y1,z1) 
local S = Instance.new("Part", Character)
S.FormFactor = 0
S.Size=Vector3.new(1, 1, 1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
msh2.Parent = S
S.CFrame = part.CFrame*CFrame.new(x2, y2, z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end end
Handle = Instance.new("Part",Tool)
Handle.Name = "Handle"
Handle.Locked = true
Handle.BrickColor = Settings.Colors[1]
Handle.CanCollide = false
Handle.FormFactor = "Custom"
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Size = Vector3.new(0.1,0.1,0.1)
Handle.CFrame = RA.CFrame
Handle.Anchored = true
xHandle = Instance.new("Part",Tool)
xHandle.Name = "1"
xHandle.Locked = true
xHandle.BrickColor = Settings.Colors[1]
xHandle.CanCollide = false
xHandle.FormFactor = "Custom"
xHandle.TopSurface = 0
xHandle.BottomSurface = 0
xHandle.Size = Vector3.new(0.15,1.7,0.15)
xHandle.CFrame = RA.CFrame
xHandle.Anchored = true
W1 = Instance.new("Weld",xHandle)
W1.Part0 = xHandle
W1.Part1 = Handle
W1.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
wHandle = Instance.new("Part",Tool)
wHandle.Name = "2"
wHandle.Locked = true
wHandle.BrickColor = Settings.Colors[2]
wHandle.CanCollide = false
wHandle.FormFactor = "Custom"
wHandle.TopSurface = 0
wHandle.BottomSurface = 0
wHandle.Size = Vector3.new(1,8,0.001)
wHandle.CFrame = RA.CFrame
wHandle.Anchored = true
wHandle.Reflectance = 0.3
BM = Instance.new("BlockMesh",wHandle)
BM.Scale = Vector3.new(1,1,0)
W2 = Instance.new("Weld",wHandle)
W2.Part0 = wHandle
W2.Part1 = xHandle
W2.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
zHandle = Instance.new("Part",Tool)
zHandle.Name = "3"
zHandle.Locked = true
zHandle.BrickColor = Settings.Colors[1]
zHandle.CanCollide = false
zHandle.FormFactor = "Custom"
zHandle.TopSurface = 0
zHandle.BottomSurface = 0
zHandle.Size = Vector3.new(0.001,8,0.1)
zHandle.CFrame = RA.CFrame
zHandle.Anchored = true
zHandle.Reflectance = 0.1
W3 = Instance.new("Weld",zHandle)
W3.Part0 = zHandle
W3.Part1 = xHandle
W3.C1 = CFrame.Angles(0,90,0)* CFrame.new(0,4.3,0)
bHandle = Instance.new("Part",Tool)
bHandle.Name = "4"
bHandle.Locked = true
bHandle.BrickColor = Settings.Colors[1]
bHandle.CanCollide = false
bHandle.FormFactor = "Custom"
bHandle.TopSurface = 0
bHandle.BottomSurface = 0
bHandle.Size = Vector3.new(0.26,0.26,0.26)
bHandle.CFrame = RA.CFrame
bHandle.Anchored = true
bHandle.Reflectance = 0.1
W4 = Instance.new("Weld",bHandle)
W4.Part0 = bHandle
W4.Part1 = xHandle
W4.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
aHandle = Instance.new("Part",Tool)
aHandle.Name = "5"
aHandle.Locked = true
aHandle.BrickColor = Settings.Colors[2]
aHandle.CanCollide = false
aHandle.FormFactor = "Custom"
aHandle.TopSurface = 0
aHandle.BottomSurface = 0
aHandle.Size = Vector3.new(0.25,1.3,0.25)
aHandle.CFrame = RA.CFrame * CFrame.Angles(0,0,90)
aHandle.Anchored = true
aHandle.Transparency = 0.8
W5 = Instance.new("Weld",aHandle)
W5.Part0 = aHandle
W5.Part1 = Handle
W5.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
rHandle = Instance.new("Part",Tool)
rHandle.Name = "6"
rHandle.Locked = true
rHandle.BrickColor = Settings.Colors[1]
rHandle.CanCollide = false
rHandle.FormFactor = "Custom"
rHandle.TopSurface = 0
rHandle.BottomSurface = 0
rHandle.Size = Vector3.new(1,0.001,0.001)
rHandle.CFrame = RA.CFrame
rHandle.Anchored = true
rHandle.Reflectance = 0.1
sm = Instance.new("SpecialMesh",rHandle)
sm.MeshType = "FileMesh"
sm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
sm.Scale = Vector3.new(1,1,1)
W6 = Instance.new("Weld",rHandle)
W6.Part0 = rHandle
W6.Part1 = xHandle
W6.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
fHandle = Instance.new("Part",Tool)
fHandle.Name = "7"
fHandle.Locked = true
fHandle.BrickColor = Settings.Colors[1]
fHandle.CanCollide = false
fHandle.FormFactor = "Custom"
fHandle.TopSurface = 0
fHandle.BottomSurface = 0
fHandle.Size = Vector3.new(1,0.001,0.001)
fHandle.CFrame = RA.CFrame
fHandle.Anchored = true
fHandle.Reflectance = 0.1
sm = Instance.new("SpecialMesh",fHandle)
sm.MeshType = "FileMesh"
sm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
sm.Scale = Vector3.new(1,1,0.2)
W7 = Instance.new("Weld",fHandle)
W7.Part0 = fHandle
W7.Part1 = xHandle
W7.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
qHandle = Instance.new("Part",Tool)
qHandle.Name = "8"
qHandle.Locked = true
qHandle.BrickColor = Settings.Colors[1]
qHandle.CanCollide = false
qHandle.FormFactor = "Custom"
qHandle.TopSurface = 0
qHandle.BottomSurface = 0
qHandle.Size = Vector3.new(1,0.001,0.001)
qHandle.CFrame = RA.CFrame
qHandle.Anchored = true
qHandle.Reflectance = 0.3
sm = Instance.new("SpecialMesh",qHandle)
sm.MeshType = "FileMesh"
sm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
sm.Scale = Vector3.new(1,1.5,0.3)
W8 = Instance.new("Weld",qHandle)
W8.Part0 = qHandle
W8.Part1 = xHandle
W8.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,8,0)
Tool.Name = "Angel Sword"
Tool.Equipped:connect(function()
Equiped = true
AttackState = "Melee"
W1 = Instance.new("Weld",xHandle)
W1.Part0 = xHandle
W1.Part1 = Handle
W1.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
W2 = Instance.new("Weld",wHandle)
W2.Part0 = wHandle
W2.Part1 = xHandle
W2.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
W3 = Instance.new("Weld",zHandle)
W3.Part0 = zHandle
W3.Part1 = xHandle
W3.C1 = CFrame.Angles(0,90,0)* CFrame.new(0,4.3,0)
W4 = Instance.new("Weld",bHandle)
W4.Part0 = bHandle
W4.Part1 = xHandle
W4.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
W5 = Instance.new("Weld",aHandle)
W5.Part0 = aHandle
W5.Part1 = Handle
W5.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
W6 = Instance.new("Weld",rHandle)
W6.Part0 = rHandle
W6.Part1 = xHandle
W6.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
W7 = Instance.new("Weld",fHandle)
W7.Part0 = fHandle
W7.Part1 = xHandle
W7.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
W8 = Instance.new("Weld",qHandle)
W8.Part0 = qHandle
W8.Part1 = xHandle
W8.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,8.6,0)
table.foreach(Tool:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.Touched:connect(function(Hit)
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *325
Game:GetService("Debris"):AddItem(bf,0.26)
end end
local cf = Hit.CFrame
local s = Instance.new("Part",Workspace)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[2]
s.CFrame = cf
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = cf
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = Settings.Colors[2]
if math.random(1,2)== 1 then pcall(function()Hit.Parent.Humanoid:TakeDamage(6)end)end
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = cf
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
Damage(v,Hit)end)
v.Anchored = false
end end)end)
Tool.Unequipped:connect(function()
Equiped = false
table.foreach(Tool:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.Anchored = true
end end)end)
-- Health gui
if Game:GetService("StarterGui"):GetCoreGuiEnabled(1)then Game:GetService("StarterGui"):SetCoreGuiEnabled(1,false)end
HealthGui = Instance.new("ScreenGui",PlayerGui)
HealthGui.Name = "Angel HealthGui"
_MainFr = Instance.new("Frame",HealthGui)
_MainFr.Size = UDim2.new(0.4,0,0.1,0)
_MainFr.Position = UDim2.new(0.3,0,0,0)
_MainFr.BackgroundColor = Settings.Colors[1]
_MainFr.BorderColor3 = Settings.Colors[1].Color
_MainFr.BorderSizePixel = 3
Bar = Instance.new("Frame",_MainFr)
Bar.Size = UDim2.new(0,0,1,0)
Bar.ZIndex = 2
Bar.BackgroundColor = BrickColor.new("Gold")
Bar.BorderSizePixel = 0
_Shine = Instance.new("Frame",_MainFr)
_Shine.Size = UDim2.new(1,0,0.5,0)
_Shine.Position = UDim2.new(0,0,0.25,0)
_Shine.BackgroundTransparency = 0.5
_Shine.BackgroundColor = BrickColor.new("Gold")
_Shine.ZIndex = 3
_Shine.BorderSizePixel = 0
xTxt = Instance.new("TextLabel",_MainFr)
xTxt.Size = UDim2.new(1,0,1,0)
xTxt.Text = tostring(Character.Humanoid.Health)
xTxt.TextScaled = true
xTxt.Font = "SourceSansBold"
xTxt.TextColor = Settings.Colors[1]
xTxt.TextTransparency = 0.55
xTxt.ZIndex = 4
xTxt.BackgroundTransparency = 1
HCCon = Character.Humanoid.HealthChanged:connect(function(Health)
if Health > 600 then Health = 600 end
xTxt.Text = tostring(math.ceil(Health))
Bar:TweenSize(UDim2.new(Health/Character.Humanoid.MaxHealth,0,1,0),"InOut","Quad",0.6,true)
if Health < Character.Humanoid.MaxHealth/4 then
Bar.BackgroundColor = BrickColor.new("Gold")
else
Bar.BackgroundColor = BrickColor.new("Really blue")
end end)
Character.Humanoid.MaxHealth = 600
delay(1,function()Character.Humanoid.Health = 600 end)
Character.Humanoid.Died:connect(function()
HCCon:disconnect()
Bar:Destroy()
local _Txt = Instance.new("ImageLabel",_MainFr)
_Txt.BackgroundTransparency = 1
_Txt.Image = ""
_Txt.Size = UDim2.new(1,0,1,0)
_Txt.ZIndex = 2
local con;con = Player.CharacterAdded:connect(function()
Game:GetService("StarterGui"):SetCoreGuiEnabled(1,true)
con:disconnect()
end)end)
pcall(script.Destroy,Character:findFirstChild("Health"))
coroutine.wrap(function()
while Wait(0.8)do
if not pcall(function()Character.Humanoid.Health = Character.Humanoid.Health +math.random(0,1)end)then
break
end end end)()
--Move Frame
_MoveFrame = Instance.new("ScreenGui",PlayerGui)
_MoveFrame.Name = "Angel Move"
_Backing = Instance.new("Frame",_MoveFrame)
_Backing.Size = UDim2.new(0.2,0,0.1,0)
_Backing.Position = UDim2.new(0.71,0,0.9,0)
_Backing.BackgroundColor = Settings.Colors[1]
_Backing.BorderSizePixel = 3
MoveTxt = Instance.new("TextLabel",_Backing)
MoveTxt.Size = UDim2.new(1,0,1,0)
MoveTxt.BorderSizePixel = 0
MoveTxt.Font = "SourceSansBold"
MoveTxt.BackgroundTransparency = 1
MoveTxt.Text = "Made by InternalRecursion"
MoveTxt.TextColor = BrickColor.new("Gold")
MoveTxt.TextTransparency = 0.55
MoveTxt.TextScaled = true
MoveTxt.ZIndex = 2
function ChangeText(Text)
coroutine.wrap(function()
for i = 1,6 do
_Backing.Rotation = _Backing.Rotation +120
Wait()
end end)()
coroutine.wrap(function()
MoveTxt.Text = Text
MoveTxt.TextTransparency = 1
for i = 1,10 do
MoveTxt.TextColor3 = Color3.new(MoveTxt.TextColor3.r +0.1,MoveTxt.TextColor3.g +0.1,MoveTxt.TextColor3.b +0.1)
MoveTxt.TextTransparency = MoveTxt.TextTransparency -0.1
Wait()
end
MoveTxt.TextTransparency = 0.55
MoveTxt.TextColor = BrickColor.new("Gold")
end)()end
--Power bar
Power = 26000
_Power = Instance.new("ScreenGui",PlayerGui)
_Power.Name = "Angel Power"
PBar = Instance.new("Frame",_Power)
PBar.BackgroundColor = Settings.Colors[1]
PBar.Size = UDim2.new(0.4,0,0.1,0)
PBar.Position = UDim2.new(0.3,0,0.9,0)
PBar_back = Instance.new("Frame",PBar)
PBar_back.BackgroundColor = BrickColor.new("Gold")
PBar_back.Size = UDim2.new(0,0,1,0)
PBar_back.ZIndex = 2
PBar.BorderSizePixel = 3
Txt = Instance.new("TextLabel",PBar)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = tostring(Power)
Txt.TextScaled = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Settings.Colors[1]
Txt.TextTransparency = 0.55
Txt.ZIndex = 4
Txt.BackgroundTransparency = 1
_Shine2 = Instance.new("Frame",PBar)
_Shine2.Size = UDim2.new(1,0,0.5,0)
_Shine2.Position = UDim2.new(0,0,0.25,0)
_Shine2.BackgroundTransparency = 0.5
_Shine2.BackgroundColor = BrickColor.new("Gold")
_Shine2.ZIndex = 3
_Shine2.BorderSizePixel = 0
Spawn(function()
while wait()do
if Power <= 26000 then
if Power < 0 then Power = 0 end
PBar_back:TweenSize(UDim2.new(Power/26000,0,1,0),"InOut","Quad",0.2,true)
Txt.Text = tostring(Power)
if Power < 26000/4 then
PBar_back.BackgroundColor = BrickColor.new("Gold")
else
if not RageMode then
PBar_back.BackgroundColor = BrickColor.new("Gold")
end end end end end)
Character.Humanoid.Died:connect(function()
Power = 26000
for i = 1,9 do
PBar_back.BackgroundTransparency = PBar_back.BackgroundTransparency + 0.1
Wait()
end
Power = 0
end)
Game:GetService("RunService").Stepped:connect(function()math.randomseed(tick())end)
Character.Humanoid.Died:connect(function()
local DeathPhraze = {"How could I lose?!","InternalRecursion will avenge me!","Avenge me, Internal!","All good things must come to an end I guess..."}
Game:GetService("Chat"):Chat(H,DeathPhraze[math.random(1,#DeathPhraze)],2)
T.Anchored = true
pcall(function()Cam:Destroy()end)
coroutine.wrap(function()
repeat Wait()until Workspace.CurrentCamera ~= nil
Workspace.CurrentCamera.Focus = H
end)()
Character:MakeJoints()
pcall(function()H.face:Destroy()end)
pcall(function()T.roblox:Destroy()end)
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency + 0.1
Wait()
end end)()end end
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency + 0.1
Wait()
end end)()end end end)
SwordAttacks,HandAttacks = {"Spin","Slash","DoubleSwing"}
local StandardSwing,SwingLeft,DoubleSwing,SpinSwing
Stance = "Standing"
Tool.Equipped:connect(function(Mouse)
AttackState = "Melee"
table.foreach(Debounces,function(_,v)v = false end)
Equiped = true
Mouse.KeyDown:connect(function(Key)
if Debounces.Shielding then return end
if GlobalKeys[Key]then
coroutine.wrap(function()GlobalKeys[Key](Mouse)end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!"}
ChangeText(Descriptions[Key])
end
if KeyBindings[Key]~= nil then
KeyBindings[Key](Mouse)
Wait()
Descriptions = {
l = AttackState.."!";
z = AttackState.."!";
x = AttackState.."!";
y = "Clone attack!";
r = "Rage!"}
ChangeText(Descriptions[Key])
end end)
local cntr = 1
Mouse.Button1Down:connect(function()
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing or Debounces.Shielding then return end
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(LA,CFrame.new(0,0,0))
FlyTrail(RA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait()do
if Debounces.Flying then
Power = Power -9
MakeFloatMesh()
if Power == 0 then
pcall(function()DC()end)
break
end
Speed = RageMode and 350 or 200
else
pcall(function()DC()end)
break end end end)()
local bv = Instance.new("BodyVelocity",T)
bv.Name = "FlyVelocityVector"
bv.maxForce = Vector3.new(0,math.huge,0)
bv.velocity = Vector3.new(0,0,0)
local bg = Instance.new("BodyGyro",T)
bg.Name = "FlyGyro"
bg.maxTorque = Vector3.new(0,0,0)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *Speed
local MouseMoveConnection = Mouse.Move:connect(function()
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *Speed
end)
local Con;Con = Mouse.Button1Up:connect(DC)
DC = function()
Debounces.Flying = false
StopFlyTrail = true
bg:Destroy()
bv:Destroy()
MouseMoveConnection:disconnect()
Con:disconnect()
end
return
end
if AttackState == "Melee" then
local Attack = SwordAttacks[cntr]
cntr = cntr == 3 and 1 or cntr +1
ChangeText(Attack)
if Attack == "DoubleSwing" then
Debounces.Attacking = true
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(0.1)
DoubleSwing:Play()
Wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Spin" then
Debounces.Attacking = true
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,1)
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(0.1)
SpinSwing:Play()
Wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Slash" then
Debounces.Attacking = true
StopSwordTrail = false
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(1)
StopSwordTrail = true
Debounces.Attacking = false
end
elseif AttackState == "LightningBolt" then
local Marker = Instance.new("Part",Cam)
Marker.Size = Vector3.new(2,0.1,2)
Marker.Transparency = 1
Marker.BrickColor = Settings.Colors[2]
Marker.Anchored = true
Marker.CanCollide = false
Marker.Locked = true
coroutine.wrap(function()
while Wait()do
if AttackState ~= "LightningBolt" then Marker:Destroy()break end
if not Marker then break end
if Mouse.Target ~= Marker then
Marker.Position = Mouse.Hit.p
end end end)()
local con;con = Mouse.Button1Down:connect(function()
if Power -1000 >= 0 then
if Debounces.Attacking then return end
Debounces.Attacking = true
Power = Power -1000
local hitCF,scale,Lightning = Marker.CFrame,1
local Last = hitCF * CFrame.new(0,460,0)
local Lights = {}
repeat
local si = math.random(15,45)
local p = Instance.new("Part",Workspace)
p.FormFactor = "Custom"
p.BrickColor = Settings.Colors[math.random(1,2)]
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Locked = true
p.Size = Vector3.new(5,si,5)
p.CFrame = Last * CFrame.new(0,-scale/2,0)
p.CFrame = CFrame.new(p.Position)* CFrame.Angles(math.random(-120,120)/100,math.random(-30,30)/100,math.random(-120,120)/100)* CFrame.new(0,-si/2,0)
Lightning = p
Last = p.CFrame
scale = si
table.insert(Lights,p)
until Last.y < 14
local brightness = Game.Lighting.Brightness
Game.Lighting.Brightness = 1000
delay(0.1,function()Game.Lighting.Brightness = brightness end)
local e = Instance.new("Part",Workspace)
e.BrickColor = Settings.Colors[2]
e.Size = Vector3.new(1,1,1)
e.Shape = "Ball"
e.CanCollide = false
e.Locked = true
e.Anchored = true
e.TopSurface = 0
e.BottomSurface = 0
e.Touched:connect(function(Hit)
if Hit.Parent:findFirstChild("Humanoid")and Hit.Parent ~= Character then
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
local x = Instance.new("Fire",v)
x.Size = 9
x.Heat = 200
x.SecondaryColor = Settings.Colors[2].Color
x.Color = Color3.new(0,0,0)
end end 
Kill(Hit)
end end)
for i = 1,10 do
e.Transparency = e.Transparency +0.1
e.Size = e.Size + Vector3.new(20,20,20)
e.CFrame = Last * CFrame.new(0,-(Lightning.Size/2),0)
Wait()
end
e:Destroy()
for i,v in pairs(Lights)do
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end
v:Destroy()
Lights = {}
end)()end
Marker:Destroy()
con:disconnect()
Wait(3)
Debounces.Attacking = false
end end)
Debounces.Attacking = false
elseif AttackState == "Laser" then

elseif AttackState == "GroundSmash" then
if Power -7000 >= 0 then
Power = Power -7000
Stance = "Melee"
Debounces.Attacking = true
local xf = T.CFrame
Character.Humanoid.Jump = true
Wait(0.2)
T.Anchored = true
coroutine.wrap(function()
for a = 1,60 do
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[2]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,3,3)
Wait()
end
s:Destroy()
end)()
Wait()
end end)()
for i = 1,100 do
T.CFrame = T.CFrame * CFrame.new(0,2,0)
Wait(0.01)
end
RH.DesiredAngle = -1.6
RH.C0 = RH.C0 * CFrame.new(0.5,0,0)
LH.DesiredAngle = 0
LH.C0 = LH.C0 * CFrame.new(-0.8,1.25,0)
LS.DesiredAngle = 0
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/4,0,0)
RS.DesiredAngle = 2
N.MaxVelocity = 0.075
Wait(0.2)
coroutine.wrap(function()
for i = 1,5 do
N.DesiredAngle = -1
Wait(0.2)
N.DesiredAngle = -0.1
Wait(0.2)
end end)()
local Done = false
coroutine.wrap(function()
while Wait(0.01)do 
if Done then break end
for i = 1,10 do
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,2,0)
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,-2,0)
end end end)()
coroutine.wrap(function()
while Wait()do
if Done then break end
Charge(BrickColor.new("Gold"))
end end)()
Wait(2.5)
Done = true
coroutine.wrap(function()
for a = 1,45 do
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[1]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(1,1,1)
Wait()
end
s:Destroy()
end)()
Wait()
end end)()
for i = 1,25 do
T.CFrame = T.CFrame * CFrame.new(0,-8,0)
Wait()
end
Done = false
coroutine.wrap(function()
while Wait(0.01)do 
if Done then break end
for i = 1,10 do
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,2,0)
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,-2,0)
end end end)()
T.CFrame = xf
Character.Humanoid.WalkSpeed = 45
T.Anchored = true
coroutine.wrap(function()
local function BreakAll(Obj)
for i,z in pairs(Obj:GetChildren())do
if not Game.Players:GetPlayerFromCharacter(z.Parent)and z:IsA("BasePart")then
if z.Size.x < 500 and z.Size.z < 500 then
z.Anchored = false
local s = Instance.new("BodyVelocity",z)
s.velocity = T.CFrame.lookVector *230
s.P = 20
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Game:GetService("Debris"):AddItem(s,1)
end end 
Spawn(function()BreakAll(z)end)
end end
BreakAll(Workspace)
end)()
coroutine.wrap(function()
for i,v in pairs(Game.Players:GetPlayers())do
pcall(function()
if v ~= Player then
for s,z in pairs(v.Character:GetChildren())do
if z:IsA("BasePart")then
local b = Instance.new("BodyForce",z)
b.force = T.CFrame.lookVector *100
Game:GetService("Debris"):AddItem(b,1)
elseif z:IsA("Humanoid")then
z.Sit = true
TakeDamage(z,80)
end end end end)end end)()
for z = 1,25 do
local p = Instance.new("Part",Character)
p.Size = Vector3.new(1,1,1)
p.Shape = "Ball"
p.TopSurface = 0
p.BottomSurface = 0
p.BrickColor = Settings.ExplosionColors[math.random(1,#Settings.ExplosionColors)]
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.CFrame = xf
coroutine.wrap(function()
for l = 1,10 do
p.Transparency = p.Transparency + 0.1
p.Size = p.Size + Vector3.new(5,5,5)
p.CFrame = xf * CFrame.new(math.random(-10,10),0,math.random(-10,10))
Wait()
end
p:Destroy()
end)()
Wait()
end
Wait(1)
Done = true
T.Anchored = false
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Debounces.Attacking = false
Stance = "Standing"
end
elseif AttackState == '' then


end end)end)
_Mouse = Player:GetMouse()
_Mouse.KeyDown:connect(function(Key)
if Debounces.Shielding then return end
if not Equiped then
if Key == 'f' then
if Power -26000 < 0 then return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
ChangeText("Angel's wrath!")
Stance = "Null"
Power = Power -26000
Debounces.Attacking = true
ChosenColor = BrickColor.new(154)
T.Anchored = true
local Done,Intensity = false,1
coroutine.wrap(function()
while Wait(0.01)do 
if Stop then break end
for i = 1,10 do
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,Intensity,0)
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,-Intensity,0)
end end end)()
coroutine.wrap(function()
ChargePosition(false)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
Wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
Wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
Wait(0.1)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
Wait(0.1)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
Wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
RA.Anchored = true
LA.Anchored = true
LL.Anchored = true
RL.Anchored = true
end)()
coroutine.wrap(function()
while Wait()do
if Done then break end
Charge(math.random(1,2)%2 == 1 and BrickColor.new(154)or BrickColor.new(193))
end end)()
coroutine.wrap(function()
for a = 1,75 do
local s = Instance.new("Part",Character)
s.BrickColor = a%2 == 1 and BrickColor.new("Gold")or Settings.Colors[1]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame *CFrame.new(0,-2,0)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency +0.1
sm.Scale = sm.Scale + Vector3.new(4,4,4)
Wait()
end
s:Destroy()
end)()
Wait()
end end)()
Wait(1)
Done = true
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
StopPower = true
Wait()
Intensity = 2
Done = false
local inc = 0
Wait(0.2)
local Stop,x = false,{}
coroutine.wrap(function()
while Wait(0.2)do
if Stop then break end
if not Done then
pcall(function()
table.foreach(x,function(_,v)
v.BrickColor = BrickColor.new(({"White","Institutional white","Gold","Gold"})[math.random(1,6)])
end)end)
Charge(BrickColor.new("White"))
end if StopPower then
Effect2(T,inc,inc,inc,0,0,0,BrickColor.new(131),0.3)
Effect2(LA,2,2,2,0,-0.8,0,BrickColor.new("Institutional white"))
Effect2(RA,2,2,2,0,-0.8,0,BrickColor.new("White"))
if inc < 5 then
inc = inc +1
end end end end)()
Wait(3)
local l,s,tod = Game.Lighting.Ambient,Game.Lighting.OutdoorAmbient,Game.Lighting.TimeOfDay
local Sky = Instance.new("Sky",Game.Lighting)
Sky.CelestialBodiesShown = false
coroutine.wrap(function()
for i = 1,21 do
Game.Lighting.TimeOfDay = i
Wait(0.01)
end end)()
Game.Lighting.Ambient = Color3.new(0.666666667,0,0)
pcall(function()Game.Lighting.CelestialBodiesShown = false end)
Game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
Intensity = 2.4
local p = Instance.new("Part",Character)
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.Transparency = 1
p.Size = Vector3.new(1,1,1)
p.CFrame = T.CFrame * CFrame.new(0,0.6,-8)
table.insert(x,p)
local AINC = 6
coroutine.wrap(function()
while Wait(0.2)do
if Stop then break end
Effect2(p,AINC,AINC,AINC,0,0,0,p.BrickColor)
end end)()
local a = Instance.new("Part",Character)
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.Size = Vector3.new(4,4,4)
a.CFrame = p.CFrame * CFrame.new(Vector3.new(0,0.5,0))* CFrame.fromEulerAnglesXYZ(1.57,0,0)
a.TopSurface = 0
a.BottomSurface = 0
coroutine.wrap(function()
local function BreakAll(Obj)
for i,z in pairs(Obj:GetChildren())do
if not Game.Players:GetPlayerFromCharacter(z.Parent)and z:IsA("BasePart")then
if z.Size.x < 500 and z.Size.z < 500 then
z.Anchored = false
local s = Instance.new("BodyVelocity",z)
s.velocity = T.CFrame.lookVector *230
s.P = 20
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Game:GetService("Debris"):AddItem(s,1)
end end 
Spawn(function()BreakAll(z)end)
end end
BreakAll(Workspace)
end)()
local StopKilling = false
coroutine.wrap(function()
while Wait()do
if StopKilling then break end
for i,v in pairs(Game.Players:GetPlayers())do
pcall(function()
if v ~= Player then
pcall(function()Kill(v.Character.Torso)end)
for s,z in pairs(v.Character:GetChildren())do
if z:IsA("BasePart")then
if not z:findFirstChild("PushAway")then
local b = Instance.new("BodyForce",z)
b.force = T.CFrame.lookVector *230
b.Name = "PushAway"
Game:GetService("Debris"):AddItem(b,0.2)
end end end end end)end end end)()
local m = Instance.new("CylinderMesh",a)
m.Scale = Vector3.new(3.8,0,3.8)
table.insert(x,a)
coroutine.wrap(function()
while Wait(0.2)do
if Stop then break end
Effect2(a,10,10,10,0,-m.Scale.y *(a.Position - p.Position).magnitude,0,p.BrickColor)
end end)()
local ls = Instance.new("PointLight",p)
ls.Brightness = 5000
ls.Color = Color3.new(1,0,0)
local GrowthRate = 0.05
for i = 1,260 do
a.Transparency = a.Transparency +0.002
a.CFrame = a.CFrame * CFrame.new(Vector3.new(0,-10.8,0))
p.CFrame = p.CFrame * CFrame.new(Vector3.new(0,0,-0.1))
AINC = AINC +0.15
m.Scale = m.Scale + Vector3.new(-GrowthRate,6,-GrowthRate)
if m.Scale.x < 0 then GrowthRate = 0.1 end
ls.Range = ls.Range +10
inc = inc +GrowthRate -0.04
Wait()
end
for i = 1,10 do
a.Transparency = a.Transparency + 0.1
m.Scale = m.Scale + Vector3.new(0.05,0,0.05)
ls.Range = ls.Range -26
Wait()
end
a:Destroy()
Done = true
Stop = true
StopPower = false
Intensity = 0
ChosenColor = nil
T.Anchored = false
Game.Lighting.Ambient = Color3.new(0,0,0)
coroutine.wrap(function()
for i = 1,10 do
Game.Lighting.Ambient = Color3.new(Game.Lighting.Ambient.r +0.1,Game.Lighting.Ambient.g +0.1,Game.Lighting.Ambient.b +0.1)
Wait(0.01)
end
Game.Lighting.Ambient = l
Game.Lighting.OutdoorAmbient = s
Game.Lighting.TimeOfDay = tod
end)()
Debounces.Attacking = false
Sky.CelestialBodiesShown = true
Sky:Destroy()
RA.Anchored = false
StopKilling = true
LA.Anchored = false
LL.Anchored = false
RL.Anchored = false
pcall(function()Character.Humanoid.WalkSpeed = 45 end)
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Stance = "Standing"
elseif Key == 'r' then
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
if Power -20000 >= 0 then
Power = Power -20000
Debounces.Attacking = true
ChangeText("Death ball")
StopPower = true
local x = Instance.new("Animation",Tool)
x.AnimationId = "http://www.roblox.com/asset/?id=128853357"
local anim = Character.Humanoid:LoadAnimation(x)
anim:Play()
for i = 1,5 do
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,BrickColor.new("/"),tonumber("0."..i))
Wait(0.2)
end
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",Workspace)
Rock.Size = Vector3.new(1,1,1)
Rock.TopSurface = 0
Rock.BottomSurface = 0
Rock.Transparency = 1
Rock.Locked = true
Rock.BrickColor = BrickColor.new("Gold")
Rock.Shape = "Ball"
Rock.CanCollide = false
Rock.CFrame = CF
Rock.Anchored = true
StopRockTrail = false
RockTrail(Rock,CFrame.new(0,0,0),BrickColor.new("Gold"))
for i = 1,3 do
Rock.Transparency = Rock.Transparency -0.3
Rock.Size = Rock.Size + Vector3.new(1,1,1)
Rock.CFrame = CF
Wait()
end
Rock.Size = Vector3.new(2.5,2.5,2.5)
local Rockx = Instance.new("Part",Workspace)
Rockx.Size = Vector3.new(2.5,2.5,2.5)
Rockx.TopSurface = 0
Rockx.BottomSurface = 0
Rockx.Transparency = 0
Rockx.Locked = true
Rockx.BrickColor = BrickColor.new("Institutional white")
Rockx.Shape = "Ball"
Rockx.CanCollide = false
Rockx.CFrame = Rock.CFrame
Rockx.Anchored = true
local w = Instance.new("Weld",Rock)
w.Part0 = Rock
w.Part1 = Rockx
local l = Instance.new("PointLight",Rock)
l.Color = Color3.new(1,0,0)
l.Range = 0
local ssss,asdd = false,0
coroutine.wrap(function()
while Wait(0.2)do
if not Rock then break end
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Gold"),0.3)
end end)()
coroutine.wrap(function()
while Wait()do
if ssss then break end
asdd = asdd +1
l.Range = l.Range +0.5
local f = Instance.new("Part",Character)
f.BrickColor = asdd%2 == 1 and BrickColor.new("1017")or BrickColor.new(41)
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Rock.CFrame * CFrame.fromEulerAnglesXYZ(asdd%2 == 1 and -6 or 6,asdd%2 == 1 and -6 or 6,asdd%2 == 1 and -6 or 6)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(2.5,2.5,2.5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(0.5,0.5,0.5)
Wait()
end
f:Destroy()
end)()end end)()
Wait(1.5)
ssss = true
coroutine.wrap(function()
for a = 1,3 do
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Gold")
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = Rock.CFrame * CFrame.new(0,2.5,2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
Wait(0.1)
end end)()
Rock.CanCollide = true
Rock.Anchored = false
Rockx.Anchored = false
coroutine.wrap(function()
while Wait()do
if not Rock then break end
local s = Rock:findFirstChild("1")or Instance.new("BodyVelocity",Rock)
s.P = 500
s.Name = "1"
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
s.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
local b = Rock:findFirstChild("2")or Instance.new("BodyForce",Rock)
b.force = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
b.Name = "2"
end end)()
local function Kll(Hit,Bool)
if Hit.Parent ~= Character then
if Hit.Parent ~= Workspace then
if not Hit.Parent:findFirstChild("Humanoid")then return end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
if Bool then
Kill(Hit)
return
end
local cf = Rock.CFrame
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Gold")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
StopRockTrail = true
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(20,20,20)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = BrickColor.new("Gold")
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
ax.Transparency = ax.Transparency +0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
ax.Touched:connect(function(H)Kll(H,true)end)
local int = 3
coroutine.wrap(function()
while Wait()do
if not ax then break end
int = int +4
Effect2(ax,int,int,int,0,0,0,BrickColor.new("Gold"),0)
end end)()
Kill(Hit)
pcall(function()
Rock:Destroy()
Rockx:Destroy()
end)
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
end end end end end
Rock.Touched:connect(Kll)
Game:GetService("Debris"):AddItem(Rock,5)
StopPower = false
Debounces.Attacking = false
end elseif Key:byte()== 32 then
local Con;Con = _Mouse.Button1Down:connect(function()
Character.Humanoid.Jump = true
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("White")
s.Size = Vector3.new(5,5,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.Reflectance = 0.1
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(2,0.5,2)
coroutine.wrap(function()
for i = 1,10 do
sm.Scale = sm.Scale + Vector3.new(1,0.2,1)
s.Transparency = s.Transparency +0.1
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-6,6),0)
Wait()
end
s:Destroy()
end)()
Con:disconnect()
end)
delay(0.6,function()if Con ~= nil then Con:disconnect()end end)
end
if NonSwordKeys[Key]then
coroutine.wrap(function()NonSwordKeys[Key](_Mouse)end)()
Wait()
Descriptions = {
j = "Shield!";

}
ChangeText(Descriptions[Key])
end
if GlobalKeys[Key]then
coroutine.wrap(function()GlobalKeys[Key](_Mouse)end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!"}
ChangeText(Descriptions[Key])
end end end)
_Mouse.Button1Down:connect(function()
if Debounces.Shielding or Debounces.IsCharging or Debounces.Attacking or Debounces.IsHealing then return end
if not Equiped then
if Debounces.Flying then
local bg,bv
local Speed,DC = RageMode and 350 or 200,function()
Debounces.Flying = false
StopFlyTrail = true
bg:Destroy()
bv:Destroy()
MouseMoveConnection:disconnect()
Con:disconnect()
end
StopFlyTrail = false
FlyTrail(LA,CFrame.new(0,0,0))
FlyTrail(RA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait()do
if Debounces.Flying then
Power = Power -9
MakeFloatMesh()
if Power == 0 then
pcall(function()DC()end)
break
end
Speed = RageMode and 350 or 200
else
pcall(function()DC()end)
break end end end)()
bv = Instance.new("BodyVelocity",T)
bv.Name = "FlyVelocityVector"
bv.maxForce = Vector3.new(0,math.huge,0)
bv.velocity = Vector3.new(0,0,0)
bg = Instance.new("BodyGyro",T)
bg.Name = "FlyGyro"
bg.maxTorque = Vector3.new(0,0,0)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,_Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *Speed
local MouseMoveConnection = _Mouse.Move:connect(function()
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,_Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *Speed
end)
local Con;Con = _Mouse.Button1Up:connect(DC)
return
end
Debounces.Attacking = true
ChangeText("FALCO, PAWNCH!")
Stance = "NULL"
ChargePosition(false)
StopTrail = false
Trail(LA,CFrame.new(0,0,0),Settings.Colors[2])
for i = 1,6 do
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,-0.15 *i)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,-0.05 *i,-0.28*i)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,0.025 *i)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,0.025 *i)
Wait(0.01)
end
local Con;Con = LA.Touched:connect(function(Hit)
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
local cf = Hit.CFrame
local s = Instance.new("Part",Workspace)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.FormFactor = "Custom"
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[2]
s.CFrame = cf
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(0.5,0.5,0.5)
s.CFrame = cf
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = Settings.Colors[2]
if math.random(1,2)== 1 then pcall(function()Hit.Parent.Humanoid:TakeDamage(6)end)end
for i = 1,10 do
s.Size = s.Size - Vector3.new(1,1,1)
s.CFrame = cf
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency +0.1
sm.Scale = sm.Scale + Vector3.new(1,1,1)
Wait()
end
f:Destroy()
end)()
Damage(T,Hit,true)
Con:disconnect()
end)
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[2]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = LA.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
Wait(0.3)
StopTrail = true
for i = 1,6 do
RS.C0 = RS.C0 * CFrame.Angles(0,0,0.15)
LS.C0 = LS.C0 * CFrame.Angles(0,0,0.28)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,-0.025 *i)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-0.025 *i)
Wait(0.01)
end
delay(1/30,function()if Con ~= nil then Con:disconnect()end end)
ChargePosition(false)
Debounces.Attacking = false
Stance = "Standing"
end end)
--Animations
local A,B,C,D = Instance.new("Animation",Tool),Instance.new("Animation",Tool),Instance.new("Animation",Tool),Instance.new("Animation",Tool)
A.AnimationId = "http://www.roblox.com/Asset?ID=27761123"
B.AnimationId = "http://www.roblox.com/Asset?ID=27762691"
C.AnimationId = "http://www.roblox.com/Asset?ID=27763344"
D.AnimationId = "http://www.roblox.com/Asset?ID=27763939"
StandardSwing = Character.Humanoid:LoadAnimation(A)
SwingLeft = Character.Humanoid:LoadAnimation(B)
DoubleSwing = Character.Humanoid:LoadAnimation(C)
SpinSwing = Character.Humanoid:LoadAnimation(D)
Stance = "Standing"
local STCO = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local StandRS = CFrame.new(1,0.5,0,0.707106709,0,0.707106709,0,1,0,-0.707106709,0,0.707106709)
local StandRH = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local StandLS = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
local StandLH = CFrame.new(-1,-1,0,0,0.0392597914,-0.999228895,0,0.999228895,0.0392597914,1,0,0)
STGyro = Instance.new("BodyGyro")
STGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
STGyro.P = 15000
STGyro.D = 750
STGyro.Name = "StanceGyro"
coroutine.wrap(function()
while Wait()do
if Power == 0 and RageMode then
KeyBindings.r()
end end end)()
Character.Humanoid.Jumping:connect(function()
Debounces.Shielding = false
LH.DesiredAngle = -0.7
LS.DesiredAngle = 0.7
RH.DesiredAngle = -0.7
RS.DesiredAngle = 0.7
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(-math.pi/12,0,0)
N.DesiredAngle = 0
local vu = Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,45,0)
game:GetService("Debris"):AddItem(vu,0.267)
RiseRate = RiseRate +2
Wait(0.6)
RiseRate = RiseRate -2
ChargePosition(false)
LH.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
RS.DesiredAngle = 0
end)
coroutine.wrap(function()
while Wait()do
if Stance == "Standing" then
RS.C0 = StandRS
RH.C0 = StandRH
LS.C0 = StandLS
LH.C0 = StandLH
local tb = math.cos(time()*3)
local tbs = math.sin(time()*3)
STGyro.cframe = FaceForward()* CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
STGyro.Parent = T
STGyro.P = 10000
STGyro.maxTorque = Vector3.new(5000,5000,5000)*50000
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(tb *0.05 +0.1,0,0)
N.DesiredAngle = 0.8
RS.DesiredAngle = -0.1
LS.DesiredAngle = 0.2
RH.DesiredAngle = 0
LH.DesiredAngle = 0
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-tb *0.01 -0.2,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-tbs *0.1 -0.8,0.8,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-0.2,tbs *0.05,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,0)
elseif Stance == "Lasering" then
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
end end end)()
coroutine.wrap(function()
while Wait(0.2)do
if not StopPower then
Effect2(LA,1,1,1,0,-0.8,0,ChosenColor or Settings.Colors[1],0.1)
Effect2(RA,1,1,1,0,-0.8,0,ChosenColor or Settings.Colors[2],0.1)
end end end)()
coroutine.wrap(function()
while Wait(0.25)do
if not Debounces.Shielding then
if not Debounces.Flying then
if Debounces.Floating then
if Power -25 >= 0 then
Power = Power -25
MakeFloatMesh()
local vu = T:findFirstChild("Float")or Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,2 *RiseRate,0)
vu.Name = "Float"
else
Debounces.IsFloating = false
end else
pcall(function()T:findFirstChild("Float"):Destroy()end)
end end end end end)()
Character.Humanoid.WalkSpeed = 45
local Cached = {Settings.Colors[1],Settings.Colors[2]}
coroutine.wrap(function()
while Wait()do
pcall(function()
if RageMode then
MoveTxt.TextColor = BrickColor.new("Gold")
PBar_back.BackgroundColor = BrickColor.new("Gold")
_Shine.BackgroundColor = BrickColor.new("Gold")
_Shine2.BackgroundColor = BrickColor.new("Gold")
Bar.BackgroundColor = BrickColor.new("Institutional white")
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Gold")
end end end
Settings.Colors[1]= BrickColor.new("Gold")
Settings.Colors[2]= BrickColor.new("Gold")
Power = Power -15
else
if Character.Humanoid.Health > Character.Humanoid.MaxHealth/4 then Bar.BackgroundColor = BrickColor.new("Gold")end
_Shine2.BackgroundColor = BrickColor.new("Gold")
_Shine.BackgroundColor = BrickColor.new("Gold")
if Power > 26000/4 then PBar_back.BackgroundColor = BrickColor.new("Gold")end
MoveTxt.TextColor = BrickColor.new("Gold")
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Gold")then
v.BrickColor = Cached[2]
end end end
for i,v in pairs(Cached)do
Settings.Colors[i]= v
end end end)end end)()
Player.Idled:connect(function()
ChargePosition(false)
local Sayings = {"Come on player! I want to kill things.","HEY PLAYER! IT'S TIME TO PLAY!","Come on already!","The player left me...again.","Don't make me break the fourth wall again!"}
Game:GetService("Chat"):Chat(H,Sayings[math.random(1,#Sayings)],2)
Stance = "Null"
for i = 1,6 do
LS.DesiredAngle = -3
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/39,0,0)
Wait()
end
N.MaxVelocity = 0.07
coroutine.wrap(function()
for i = 1,2 *5 do
Wait(0.2/5)
LS.DesiredAngle = -2.8
end end)()
for i = 1,1 do
N.DesiredAngle = 0.5
Wait(0.25)
N.DesiredAngle = 1.3
Wait(0.2)
end
for i = 1,4 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/26,0,0)
Wait()
end
ChargePosition(false)
Stance = "Standing"
end)
while Wait()do
if RageMode then
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 65 end
H.BrickColor = BrickColor.new("Gold")
LA.BrickColor = BrickColor.new("Gold")
RA.BrickColor = BrickColor.new("Gold")
LL.BrickColor = BrickColor.new("Gold")
RL.BrickColor = BrickColor.new("Gold")
T.BrickColor = BrickColor.new("Gold")
else
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 45 end
T.BrickColor = BrickColor.new("Institutional white")
H.BrickColor = BrickColor.new("Institutional white")
LA.BrickColor = BrickColor.new("Institutional white")
RA.BrickColor = BrickColor.new("Institutional white")
LL.BrickColor = BrickColor.new("Institutional white")
RL.BrickColor = BrickColor.new("Institutional white")
end
if not Debounces.Attacking then
H.Transparency = 0.2
LA.Transparency = 0.2
RA.Transparency = 0.2
LL.Transparency = 0.2
RL.Transparency = 0.2
else
H.Transparency = 0
LA.Transparency = 0
RA.Transparency = 0
LL.Transparency = 0
RL.Transparency = 0
end end
--~InternalRecursion~--