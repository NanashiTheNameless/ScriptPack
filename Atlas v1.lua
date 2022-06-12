--~Atlas Sword~--
Wait(0.6)
math.randomseed(tick())
repeat Wait()until Game.Players.LocalPlayer ~= nil;Player = Game.Players.LocalPlayer Tool = script.Parent if not script.Parent:IsA("Tool")then Tool = Instance.new("Tool",Player.Backpack)script.Parent = Tool end
Character,PlayerGui,Power = Player.Character,Player.PlayerGui,0
RA,LA,RL,LL,H,T = Character["Right Arm"],Character["Left Arm"],Character["Right Leg"],Character["Left Leg"],Character.Head,Character.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings,Pr0mMode,ArielMode,InternalMode,AmazingMode = {Colors = {BrickColor.new("Really black"),BrickColor.new("New Yeller")};ExplosionColors = {BrickColor.new("Really black"),BrickColor.new("New Yeller"),BrickColor.new("Really red"),BrickColor.new("Institutional white")}},Player.Name == "LocalPlayer",Player.Name == "RazorDark673" or Player.Name == "Bob",Player.Name == "InternalRecursion" or Player.Name == "TacoWYum",Player.Name == "serun13"
local SpinCount,ChargeRot,ChargeMatrix,PoisonMode,GripC0 = 0,0,{},false
local Comboing,Mouse,InputTable,MaxBuffer,MaxFlow,CurrentKey,LastInput,xKey,DarkMode = false
local StandardHold=CFrame.new(0.25, 3, -0.125, -0.31190744, -0.882354498, 0.352369517, 0.188282326, -0.420918405, -0.88734293, 0.931269825, -0.210423902, 0.297419339)
local VertHighGrip=CFrame.new(-0.368718535, -1.25, -0.743718147, -0.721649349, 0.580245495, 0.377541453, -0.261766374, 0.276156932, -0.924778879, -0.640859127, -0.766193986, -0.0473999567)
if Pr0mMode then
Settings.Colors[1]= BrickColor.new("Institutional white")
Settings.Colors[2]= BrickColor.new("Navy blue")
end
if InternalMode then
Settings.Colors[1]= BrickColor.new("Really black")
Settings.Colors[2]= BrickColor.new("Really red")
end
if ArielMode then
Settings.Colors[1]= BrickColor.new("Teal")
Settings.Colors[2]= BrickColor.new("Hot pink")
end
if AmazingMode then
Settings.Colors[1]= BrickColor.new("Hot pink")
Settings.Colors[2]= BrickColor.new("Really black")
end
local function ByteToStr(ByteArray,Offset)
local s = ''
for i,v in pairs(ByteArray)do
s = s..string.char(v -Offset)
end
return s
end
Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset?Id=138092150")
local function Growl()
coroutine.wrap(function()
local s = Instance.new("Sound",Workspace)
s.SoundId = "http://www.roblox.com/asset?Id=138092150"
s:Stop()
Wait()
s:Play()
Game:GetService("Debris"):AddItem(s,5)
end)()end
local function TweenColor3(Object,PropertyName,Start,End,Time,Async,Callback)
Object[PropertyName]= Start
local r,r2,g,g2,b,b2 = Start.r,End.r,Start.g,End.g,Start.b,End.b
local r3,g3,b3 = r,g,b
local Time = Time or 3
local function f()
for i = 1,Time *30 do
r3 = r3 +(r2 -r)/(Time *30)
g3 = g3 +(g2 -g)/(Time *30)
b3 = b3 +(b2 -b)/(Time *30)
Object[PropertyName]= Color3.new(r3,g3,b3)
Wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local function StopJoints()
for i,v in pairs(T:GetChildren())do
if v:IsA("Moter6D")then
v.DesiredAngle = 0
v.CurrentAngle = 0
end end
N.MaxVelocity = 0.5
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
end
local DamageGui
function ShakeCam(numbor,waeittime)Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,numbor or 2,0)Wait(waeittime or 1/30)Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,numbor and -numbor or -2,0)end
function RandomDecimal(Dec,Dec2)
if not Dec or not Dec2 or Dec == Dec2 then return end
local Range,Round = {},"0."
for i = 1,#tostring(Dec2):sub(tostring(Dec2):find("%.")or #tostring(Dec2))do Round = Round..'0' end
Round = Round..'1'
for i = Dec,Dec2,tonumber(Round)do
table.insert(Range,i)
if i == Dec2 then
break
end end
return Range[math.random(1,#Range)]
end
local function MiniExplode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(3,3,3)
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
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency +0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()end
local function Implode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(1,1,1)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.Transparency = 1
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(30,30,30)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency -0.1
sm.Scale = sm.Scale - Vector3.new(3,3,3)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(30,30,30)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
ax.Transparency = 1
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size - Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency -0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()end
local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
if BBoom then do
local zs = BBoom
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = zs
ax.Anchored = true
local SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
SMMx.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,20 do
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
ax.Transparency = ax.Transparency +0.05
ax.CFrame = zs
Wait()
end
ax:Destroy()
end)()end end
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
local SMMx do if SMM then
SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = SMM
SMMx.Scale = Vector3.new(1,1,1)
end end
coroutine.wrap(function()
for i = 1,20 do
if SMM then
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
else
ax.Size = ax.Size + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
end
ax.Transparency = ax.Transparency +0.05
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()end
local function SetHealth()
if RageMode then
Character.Humanoid.MaxHealth = 10000
delay(0.02,function()Character.Humanoid.Health = 10000 end)
else
Character.Humanoid.MaxHealth = 5000
end end
local Prts = {}
H:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=135921683"
local Face,FaceTexture,IceTexture = H:findFirstChild("face"),H:findFirstChild("face").Texture,"http://www.roblox.com/asset/?id=135921715"
Cam,GuiTexture,_Mesh = Workspace.CurrentCamera,"",Instance.new("SpecialMesh")
Way = 0
local Trolling,ChosenColor,ChangeText,Descriptions = false
AttackState = "Melee"
Equipped,StopPower,StopTrail,StopRockTrail,StopSwordTrail,RageMode,RageWait,StopFlyTrail,StopJumpTrail = false,false,false,false,false,false,false,false,false
Debounces = {
IsHealing = false;
IsCharging = false;
Attacking = false;
Floating = false;
Shielding = false;
Flying = false}
local GripPos,RiseRate,HitDebounce,StanceGyro,Stance,rHandle,StcC = CFrame.new(0,0,0),1,false
function MediumParticleEmit(Object,Color)
coroutine.wrap(function()
while Wait(1.1)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = type(Color)== 'userdata' and Color or BrickColor.new(Color)
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end end)()end
function Chat(Object,Text,Color)
local Color = type(Color)== 'string' and BrickColor.new(Color)or Color
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Txt = Instance.new("TextLabel",G)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = false
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 10
Game:GetService("Debris"):AddItem(G,3)
end
function MakeFloatMesh()
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Institutional white")
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
if pcall(function()
Tag(Hit.Parent.Humanoid)
Hit.Parent.Humanoid:TakeDamage(5000)
end)then
DamageGui("5000!!!")
end end
function Damage(Vec,Object,Bool,Amt,DontDisplayDmg)
if Object.Parent:findFirstChild("AtlasRegistration")and Object.Parent.Name == Character.Name then return end
if Object.Parent == Character then return end
local Dmg,Humanoid = math.random(45,55),Object.Parent:findFirstChild("Humanoid")
if Bool then Dmg = math.random(15,25)end
if Amt then Dmg = Amt end
if Humanoid and not HitDebounce then
HitDebounce = true
if not RageMode then
if Humanoid.Health -Dmg <= 0 then Tag(Humanoid)end
Humanoid:TakeDamage(Dmg)
DamageGui(Dmg)
else
Kill(Object)
end
coroutine.wrap(function()
if DontDisplayDmg then return end
local Head = Object.Parent:findFirstChild("Head")
if not Head then return end
for i = 1,3 do
local clr = Color3.new(0,0,0)
local bg = Instance.new("BillboardGui",Object.Parent)
bg.Adornee = Head
bg.Size = UDim2.new(1,0,1,0)
bg.StudsOffset = Vector3.new(0,2,0)
local txt = Instance.new("TextLabel",bg)
txt.Size = UDim2.new(0.55,0,0.55,0)
txt.BackgroundTransparency = 1
txt.TextColor3 = clr
txt.TextTransparency = 1
txt.TextScaled = true
txt.Text = tostring(Dmg)
txt.TextWrapped = false
txt.Font = "SourceSansBold"
coroutine.wrap(function()
for i = 1,10 do
txt.TextTransparency = txt.TextTransparency -0.1
bg.StudsOffset = Vector3.new(0,i/2,0)
bg.Size = UDim2.new(bg.Size.X.Scale +i/6,0,bg.Size.Y.Scale +i/6,0)
clr = Color3.new(not Pr0mMode and clr.r +0.1 or 0,0,Pr0mMode and clr.b +0.1 or 0)
txt.TextColor3 = clr
Wait()
end
local d = false
coroutine.wrap(function()
while not d do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.1,0)
Wait()
end end)()
Wait(3)
d = true
for i = 1,11 do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.43,0)
clr = Color3.new(not Pr0mMode and clr.r -0.1 or 0,0,Pr0mMode and clr.b -0.1 or 0)
txt.TextColor3 = clr
bg.Size = UDim2.new(bg.Size.X.Scale -i/6,0,bg.Size.Y.Scale -i/6,0)
Wait()
if i >= 5 then
txt.TextTransparency = txt.TextTransparency +0.2
end end
bg:Destroy()
end)()
Wait()
end end)()
for i,v in pairs(Object.Parent:GetChildren())do
if v:IsA("BasePart")then
local BP = Instance.new("BodyForce",v)
BP.force = Vec.CFrame.lookVector *230
Game:GetService("Debris"):AddItem(BP,0.2)
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
Clone:findFirstChild("Atlas Sword"):Destroy()
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")and v.Name == "Trail" then
v:Destroy()
end end
Character.Archivable = false
Clone.Parent = Workspace
Clone.Archivable = false
return Clone
end
function Direction()
if not Character then return{CFrame.new(0,0,0),CFrame.new(0,0,0)}end
return{CFrame.new(T.Position,Vector3.new(Cam.CoordinateFrame.x,T.Position.y,Cam.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(Cam.CoordinateFrame.p.x,T.CFrame.p.y,Cam.CoordinateFrame.p.z)}
end
function FaceForward()
StanceGyro.cframe = Direction()[1]
return StanceGyro.cframe
end
function DamageNear(Pos,Mag,Dmg)
local Targets,HitAlready = {},{}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
if(Pos -x.Position).magnitude <= Mag then
table.insert(Targets,v)
end end end end end
for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
ypcall(function()Damage(T,v.Torso,nil,Dmg,true)end)
HitAlready[v.Name]= true
end end end
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
while Wait(0.15)do
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
function JumpTrail(Position,CF)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait()do
if StopJumpTrail then break end
for i,v in pairs(Debounces)do
if v then
StopJumpTrail = true
end end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = not InternalMode and Settings.Colors[2]or BrickColor.new("Really black")
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
function UpperCutTrail(Position,CF,Color)
coroutine.wrap(function()
local st = false
delay(0.6,function()st = true end)
local Old =(Position.CFrame *CF).p
while Wait()do
if st then break end
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
if Bool then
coroutine.wrap(function()
ChargeRot = ChargeRot ~= 360 and ChargeRot +1 or 0
for i,v in pairs(ChargeMatrix)do
if v.Parent ~= Character then v.Parent = Character end
if v.BrickColor ~= Color then v.BrickColor = Color end
v.CFrame = CFrame.new(T.Position)
* CFrame.Angles(0,math.rad((i* 360/#ChargeMatrix)+ChargeRot),0)
* CFrame.new(0,0,-30)
* CFrame.Angles(0,0,math.rad(63))
end end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or Color
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = T.CFrame * CFrame.new(0,-3,0)* CFrame.Angles(0,math.rad(math.random(-45,45)),0)
local ms = Instance.new("BlockMesh",p)
ms.Scale = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(1,1,1)
m.MeshType = "FileMesh"
m.MeshId = ChargeRot %2 == 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/asset/?id=1323306"
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
end)()end)()end)()
return
end
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
function ParticleEmit(Object,Color,Duration)
local Counter = 0
coroutine.wrap(function()
while Wait(0.3)do
if Counter == Duration then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = type(Color)== 'userdata' and Color or BrickColor.new(Color)
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end end)()
if Durration == math.huge then return end
coroutine.wrap(function()
while Wait(1)do
Counter = Counter +1
if Counter == Duration then
break
end end end)()end
function SlowParticleEmit(Object,Color)
coroutine.wrap(function()
while Wait(3.2)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = RageMode and(Pr0mMode and BrickColor.new("Navy blue")or BrickColor.new("Really red"))or type(Color)== 'userdata' and Color or BrickColor.new(Color)
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end end)()end
function IsNear(Position,Distance,SinglePlayer)
if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
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
local GetUpDebounce = false
GlobalKeys = {
[59]= function()
-- 0x01
end;
[32]= function()
-- Removed because of error
end;
h = function(Mouse)
if RageMode then return end
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsHealing = true
Stance = "Null"
Wait(1/30)
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
Character.Humanoid.Health = Character.Humanoid.Health +500
Power = Power -50
Charge(BrickColor.new("Lime green"),true)
Stance = "Null"
end
for i,v in pairs(ChargeMatrix)do v.Parent = nil end
Character.Humanoid.WalkSpeed = 60
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Stance = "Standing"
Debounces.IsHealing = false
end;
c = function(Mouse)
if RageMode then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsCharging = true
Stance = "Null"
Wait(1/30)
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'c' then
BreakLoop = true
x:disconnect()
end end)
while Wait(0.1)do
if Power == 26000 then break end
if BreakLoop then break end
if Power > 26000 then Power = 26000 break end
Power = Power +1000
Charge(Settings.Colors[2],true)
Stance = "Null"
end
for i,v in pairs(ChargeMatrix)do v.Parent = nil end
Character.Humanoid.WalkSpeed = 60
ChargePosition(false)
Stance = "Standing"
Debounces.IsCharging = false
pcall(function()
T:findFirstChild("ChargeLight"):Destroy()
end)end;
b = function()
if Power <= 0 then return end
if Power -1200 <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.Attacking = true
Power = Power -1200
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("Institutional white")
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
for i = 1,6 do
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
ShakeCam(0.2)
FaceForward()
T.CFrame = T.CFrame * CFrame.new(0,0,-45)
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("Institutional white")
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
s.BrickColor = i == 1 and BrickColor.new("Really black")or BrickColor.new("Institutional white")
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
p.BrickColor = BrickColor.new("Institutional white")
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
t = function(_Mouse,CxF,Bypass)
if not _Mouse.Target then return end
if not Bypass then if Debounces.Attacking or Debounces.Shielding then return end end
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
p.BrickColor = BrickColor.new("Institutional white")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
local CF = Bypess and CxF or _Mouse.Hit
local s = Instance.new("Part",Character)
s.BrickColor = i == 1 and BrickColor.new("Really black")or BrickColor.new("Institutional white")
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
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or BrickColor.new("Institutional white")
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
v = function()
if Trolling then return end
Trolling = true
local Taunts = {"uMaD bR0?","Trolololol","You seem quite mad.","do you think you can you kill LocalPlayer?"}
Chat(H,Taunts[math.random(1,#Taunts)],Settings.Colors[2])
local bg = Instance.new("BillboardGui",Character)
bg.Adornee = H
bg.Size = UDim2.new(2.2,0,2.2,0)
bg.AlwaysOnTop = true
local Img = Instance.new("ImageLabel",bg)
Img.Size = UDim2.new(1,0,1,0)
Img.Image = "http://www.roblox.com/asset/?id=38353935"
Img.BackgroundTransparency = 1
delay(3,function()
Trolling = false
bg:Destroy()
end)end;
m = function()
if Power -1000 < 0 then return end
if GetUpDebounce then return end
GetUpDebounce = true
Power = Power -1000
delay(5,function()GetUpDebounce = false end)
Chat(H,"Get the "..ByteToStr({422,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,437,447,447,419,447,427},320).." up.","Really red")
local Targets,Blocking = {},true
for i,v in pairs(IsNear(T.Position,80))do
for _,x in pairs(v:GetChildren())do
if x:IsA("Humanoid")then
coroutine.wrap(function()
while Wait()do
if not Blocking then
x.PlatformStand = false
break end
x.PlatformStand = true
end end)()end end
table.insert(Targets,v)
end
Wait(0.2)
local BodyPositions = {}
for i,v in pairs(Targets)do
local h = v:findFirstChild("Humanoid")
if not h then return end
if h and h.Health > 0 then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
local bp = Instance.new("BodyPosition",x)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 1500
bp.position = CFrame.new(x.Position).p + Vector3.new(0,10,0)
table.insert(BodyPositions,bp)
end end end end
Wait(4)
for i,v in pairs(BodyPositions)do
pcall(function()
v:Destroy()
end)end
Blocking = false
end;
p = function()
for i,v in pairs(Debounces)do
if v then
return
end end
if Power -1500 < 0 then return end
Chat(H,"Out of my way!","Really red")
local Targets,Blocking = {},true
for i,v in pairs(IsNear(T.Position,45))do table.insert(Targets,v)end
if #Targets < 1 then return end
Debounces.Attacking = true
Power = Power -1500
for i,v in pairs(Targets)do
for _,x in pairs(v:GetChildren())do
if x:IsA("Humanoid")then
coroutine.wrap(function()
while Wait()do
if not Blocking then break end
x.PlatformStand = true
end end)()
elseif x.Name == "Torso" and x:IsA("BasePart")then
coroutine.wrap(function()
while Wait(0.2)do
if not Blocking then break end
Effect2(x,4,4,4,0,0,0,Settings.Colors[1])
end end)()end end end
Wait(0.2)
local BodyPositions = {}
for i,v in pairs(Targets)do
local h = v:findFirstChild("Humanoid")
if not h then return end
if h and h.Health > 0 then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
local bp = Instance.new("BodyPosition",x)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 1500
bp.position = CFrame.new(x.Position).p + Vector3.new(0,10,0)
table.insert(BodyPositions,bp)
end end end end
for i,v in pairs(Targets)do ypcall(function()Damage(T,v.Torso,true,15)end)end
local ss = {}
for i = 1,#BodyPositions do
local bf = Instance.new("BodyForce",BodyPositions[i].Parent)
bf.force = T.CFrame.lookVector *3400
table.insert(ss,bf)
BodyPositions[i]:Destroy()
end
delay(0.1,function()for i,v in pairs(Targets)do ypcall(function()Damage(T,v.Torso,true,15)end)end end)
Wait(0.16)
for i,v in pairs(ss)do pcall(function()v:Destroy()end)end
Debounces.Attacking = false
Blocking = false
end;
}
KeyBindings = {
u = function(Mouse)
for i,v in pairs(Debounces)do if v then return end end
if Power -0 < 0 then return end
Power = Power +26000
Debounces.Attacking = true
Chat(H,"Super charge...",BrickColor.new("Really red"))

Stance = "Standing"
Debounces.Attacking = false
end;
x = function(Mouse)
for i,v in pairs(Debounces)do if v then return end end
if Power -12000 < 0 then return end
Power = Power -12000
Debounces.Attacking = true
Stance = "Null"
ChargePosition(true)
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
end end
StopPower = true
coroutine.wrap(function()local inc = 0 for i = 1,25 do inc = inc +0.2 Effect2(rHandle,inc,inc,inc,0,0,0,Settings.Colors[2])Charge(Settings.Colors[1],true)Wait(0.1)end end)()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = Settings.Colors[2]
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = rHandle.CFrame
coroutine.wrap(function()for i = 1,54 do
p.Size = p.Size + Vector3.new(0.006,0.006,0.006)
p.CFrame = rHandle.CFrame
p.Transparency = i/54
Wait()
end end)()
-- 0x02
Wait(6)

StopPower = true
Stance = "Standing"
Debounces.Attacking = false
end;
g = function()PoisonMode = not PoisonMode end;
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
local RayPart = gp:findFirstChild("AtlasLaser")or Instance.new("Part",gp)
RayPart.Name = "AtlasLaser"
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
ParticleEmit(Hit,"Really red",2)
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
Registration.Name = "AtlasRegistered"
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
if Pr0mMode then
if not RageMode then
if RageWait then return end
RageMode = true
RageWait = true
SetHealth()
Chat(H,"RAGE MODE!","Navy blue")
GuiTexture = IceTexture
_Mesh.TextureId = "http://www.roblox.com/asset/?id=135974753"
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Navy blue")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
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
f.BrickColor = BrickColor.new("Navy blue")
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
delay(4 *60,function()RageWait = false end)
else
RageMode = false
GuiTexture = ""
SetHealth()
Chat(H,"Ugh!","Navy blue")
_Mesh.TextureId = "http://www.roblox.com/asset/?id=135974538"
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Navy blue")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
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
f.BrickColor = BrickColor.new("Navy blue")
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
end)end elseif not Pr0mMode then
if RageMode then
RageMode = false
SetHealth()
local Sayings = {"Ugh...","That was fun!"}
ypcall(function()
local sg = PlayerGui:findFirstChild("RedTintAtlas"):findFirstChild("Frame")
coroutine.wrap(function()
for i = 35,1,1 do
sg.BackgroundColor3 = Color3.new(i/35,0,0)
sg.BackgroundTransparency = sg.BackgroundTransparency +0.01
Wait()
end end)()
sg.Parent:Destroy()
end)
Chat(H,Sayings[math.random(1,#Sayings)],"Really black")
Face.Texture = FaceTexture
GuiTexture = ""
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[2]
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
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
f.BrickColor = Settings.Colors[2]
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
if RageWait then return end
RageWait = true
RageMode = true
SetHealth()
local Sayings = {"RAGE MODE!","Can't stop me now!"}
Face.Texture = "http://www.roblox.com/asset/?id=135921702"
GuiTexture = "http://www.roblox.com/asset/?id=136241211"
Chat(H,Sayings[math.random(1,#Sayings)],"Really black")
local s = Instance.new("ScreenGui",PlayerGui)
s.Name = "RedTintAtlas"
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
local s = Instance.new("Part",Character)
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
s.BrickColor = BrickColor.new("Really red")
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
delay(4 *60,function()RageWait = false end)
end end end;
k = function()
if Power -0 < 26000 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
if Character.Humanoid.Health -0 < 0 then return end
Character.Humanoid:TakeDamage(-2500)
Power = Power -0
Chat(H,"I am REBORN!...","Really red")
local a,b = Game.Lighting.Ambient,Game.Lighting.Brightness
Game.Lighting.Brightness = 0
Game.Lighting.Ambient = Color3.new(1,0,1)
Wait(0.02)
Game.Lighting.Ambient = Color3.new(1,0,0)
Game.Lighting.Brightness = 10000
Wait(0.23)
delay(0.5,function()Game.Lighting.Ambient = a end)
Game.Lighting.Brightness = b


end;

}
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local S = Instance.new("Part", Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = part.CFrame *CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end end
local function EmberWave(CF,Color)
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.CFrame = CF
p.Transparency = 1
coroutine.wrap(function()
local x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
for i = 1,30 do
p.CFrame = p.CFrame *x
x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
Effect2(p,2.6,2.6,2.6,0,0,0,Color,0.3)
Wait(0.1)
end
p:Destroy()
end)()end
local function AbsVector(V)return Vector3.new(math.abs(V.X),math.abs(V.Y),math.abs(V.Z))end
NonSwordKeys = {

u = function(Mouse)
for i,v in pairs(Debounces)do if v then return end end
if Power -26000 < 0 then return end
Power = Power -26000
local Ended,End = false
Debounces.Attacking = true
Stance = "Null"
StopPower = true
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
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *200
local MouseMoveConnection = Mouse.Move:connect(function()
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *200
end)
local Tries,Connections,Grabbed = 0,{}
local function Touched(Hit)
if Hit.Parent ~= Character then
if Hit.Parent:findFirstChild("Humanoid")and Hit.Parent:findFirstChild("Humanoid").Health > 0 then
Grabbed = Hit.Parent:findFirstChild("Torso")
for i,v in pairs(Connections)do
v:disconnect()
end
pcall(function()MouseMoveConnection:disconnect()bg:Destroy()bv:Destroy()end)
coroutine.wrap(function()
print'got'
end)()end end end
table.foreach(Character:GetChildren(),function(_,v)if v:IsA("BasePart")then table.insert(Connections,v.Touched:connect(Touched))end end)
while Wait()do
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
if(not Grabbed and Tries == 2)or Grabbed then break end
Tries = Tries +1
end
End = function()
Ended = true
pcall(function()MouseMoveConnection:disconnect()bg:Destroy()bv:Destroy()end)
StopPower = false
Stance = "Standing"
Debounces.Attacking = false
end
if not Grabbed and not Ended then End()return end
pcall(function()MouseMoveConnection:disconnect()bg:Destroy()bv:Destroy()end)
print(Grabbed and "GAWTCHA" or "Missed")
local _ax,axx = true,true
coroutine.wrap(function()
while Wait()do
if axx then
Grabbed.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end if not _ax then break end
Wait()
end end)()
local Taunts = {"Out of my sight!","You'll end up just like Luna."}
table.insert(Taunts,ByteToStr({6385,6380,6333,6385,6373,6370,6333,6378,6380,6380,6379,6333,6378,6380,6385,6373,6370,6383,6371,6428,6386,6428,6368,6428,6428,6376,6428,6370,6428,6383,6428,6428,6334},6301))
Chat(H,Taunts[math.random(1,#Taunts)],BrickColor.new("Really red"))
_ax = false
Wait(0.6)
_ax = true
coroutine.wrap(function()
while Wait()do
if axx then
Grabbed.CFrame = RL.CFrame * CFrame.new(0,0,-1)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end if not _ax then break end
Wait()
end end)()
StopTrail = false
Implode(RL.CFrame * CFrame.new(0,-1,-1),Settings.Colors[2])
Wait(0.6)
_ax = false
T.CFrame = CFrame.new(T.CFrame.p,RL.Position + Vector3.new(0,1000,2000))
local Bx = Instance.new("BodyPosition",Grabbed)
Bx.P = 600
Bx.maxForce = Vector3.new(500000,500000,500000)*50000000
Bx.position = RL.Position + Vector3.new(0,1000,2000)
Trail(Grabbed,CFrame.new(0,0,0),BrickColor.new("Really red"))
local Colors = {"Really red","Orange","New Yeller"}
local dn = true
coroutine.wrap(function()
while Wait(0.1)do
if not dn then break end
Effect2(Grabbed,Grabbed.Size.y *2,Grabbed.Size.y *2,Grabbed.Size.y *2,0,0,0,BrickColor.new(Colors[math.random(1,#Colors)]),0.32)
end end)()
delay(1,function()
dn = false
StopTrail = true
Implode(T.CFrame * CFrame.new(0,0,0),Settings.Colors[2])
Kill(Grabbed)
Explode(Grabbed.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[1])
Explode(Grabbed.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-6,6),math.random(-6,6),math.random(-6,6)),BrickColor.new(Colors[math.random(1,#Colors)]))
end)
if not Ended then
End()
end end;
j = function(Mouse)
if RageMode then return end
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
if Power -130 >= 0 then
Stance = "null"
ChargePosition(false)
Power = Power -130
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
for i,v in pairs(IsNear(Wind.Position,33))do Clr = BrickColor.new("Really red")Damage(T,v.Torso)delay(0.02,function()Clr = nil end)end
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
g = function()
Wait(0.15)
for i,v in pairs(Debounces)do
if v then
return
end end
Debounces.Attacking = true
local C = math.random(1,2)== 2 and LA or RA
local Con;Con = C.Touched:connect(function(Hit)
if Hit.Parent ~= Workspace and Hit.Parent ~= Character then
Damage(C,Hit,true,46)
ParticleEmit(Hit,BrickColor.new("Really red"),2)
Con:disconnect()
end end)
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,C == RA and 11 or -11,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,0.6)
Character.Humanoid.Jump = true
UpperCutTrail(C,CFrame.new(0,-2,0),Settings.Colors[2])
Wait(0.6)
pcall(function()Con:disconnect()end)
Wait(0.1)
Debounces.Attacking = false
end;
l = function(Mouse)
ypcall(function()
if Power -26000 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
Power = Power -26000
Debounces.Attacking = true
Chat(H,"Whatever you have to say, say it now because this is your last statement!","Really red")
StopPower = true
StanceGyro.maxTorque = Vector3.new(50000,50000,50000)*500000000000000000000000000000000000000000000
StanceGyro.P = 5000
StanceGyro.D = 200
Stance = "Null"
ChargePosition(false)
LS.MaxVelocity = 0.3
LS.MaxVelocity = 0.3
RH.MaxVelocity = 0.3
LH.MaxVelocity = 0.3
RS.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
LH.DesiredAngle = 0
N.DesiredAngle = -1.4
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local DIR = Direction()[1].lookVector
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
RH.DesiredAngle = 0.15
LH.DesiredAngle = 0.3
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/30,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/12.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
Wait()
end
Wait(0.25)
local MaxDistance,Grabbed,HPos = 150
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position - HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15 p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity = (t.Position - T.Position).unit *-(10 +(t.Position - T.Position).magnitude *0.75)
Game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
Wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break
end end end end end end end
Wait(0.1)
end
if Grabbed then
local Target = Grabbed.Parent.Humanoid
Wait()
Chat(H,"Suffer!","Really red")
local BP = Instance.new("BodyPosition",T)
BP.P = 5000
BP.maxForce = Vector3.new(500000,500000,500000)*50000000
BP.position = T.Position
N.DesiredAngle = 1.6
RS.DesiredAngle = -0.4
LS.DesiredAngle = 0.4
local GR,_GR = true,true
coroutine.wrap(function()
while _GR do
if GR then
Grabbed.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end
Wait()
end end)()
for i = 1,10 do
Wait()
BP.position = BP.position +DIR *1
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(360/10)*2,0)
T.CFrame = StanceGyro.cframe
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/50,0,0)
end
local DesPos
N.DesiredAngle = -1.5
RS.DesiredAngle = 3.2
DesPos = BP.position +DIR *3.5 + Vector3.new(0,500.5,0)
local dp = Instance.new("BodyPosition")
dp.P = 5000
dp.maxForce = Vector3.new(50000,50000,50000)*50000000000000000
local rot,sta = CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/20),T.Position +DIR *3 + Vector3.new(0,1.5,0)
GR = false
for i = 1,5 do
Wait(0.5)
BP.position = BP.position +DIR *0.1
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(360/5),0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/50,0,0)
if i >= 3 then
dp.Parent = Grabbed
GR = false
Grabbed.CFrame = CFrame.new(sta:Lerp(DesPos,(-3 +i)*0.1),T.Position)*rot
dp.position = Grabbed.CFrame.p + Vector3.new(0,1,0)
end end
for i = 6,13 do
Wait(0.2)
dp.Parent = Grabbed
GR = false
Grabbed.CFrame = CFrame.new(sta:Lerp(DesPos,(-3 +i)*0.1),T.Position)* CFrame.fromEulerAnglesXYZ(i ^2/5,i/10,math.sin(2 *i))
dp.position = Grabbed.CFrame.p + Vector3.new(0,1,0)
end
ChargePosition(false)
RS.DesiredAngle = -0.2
LH.DesiredAngle = 0.2
RH.DesiredAngle = -0.2
LS.DesiredAngle = 0.2
N.DesiredAngle = 0
Chat(H,"I got you now!","Really red")
local x = T.Position
for i = 1,40 do
T.CFrame = CFrame.new(x:Lerp(DesPos,i/40),Grabbed.Position)* CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
StanceGyro.cframe = T.CFrame
BP.position = T.CFrame.p
if i > 20 then
RS.DesiredAngle = 3.2
end
Wait()
end
GR = true
dp:Destroy()
LS.DesiredAngle = 0
LH.DesiredAngle = 1
RH.DesiredAngle = 1
LS.DesiredAngle = 1
LS.C0 = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
N.DesiredAngle = 1.6
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0)
ChargePosition(false)
Chat(H,"Here comes the build up!","Really red")
for i = 1,5 do
BP.position = BP.position + Vector3.new(0,0.25,0)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
Wait()
end
BP.D = 100
BP.P = 9000
x = BP.position
local Hit,Pos = Workspace:FindPartOnRay(Ray.new(T.Position - Vector3.new(0,5,0),(T.Position -(T.Position -Vector3.new(0,8,0))).unit *-500),Character)
for i = 1,25 do
BP.position = x:Lerp((DesPos -Vector3.new(0,499,0)),i/25)
Wait(0.03 -i *0.01)
end
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/5,0)
RS.DesiredAngle = -0.8
Wait()
end
Chat(H,"Drop the bass!","Really red")
DamageNear(T.Position,20,34)
if not Hit then local Hit = Instance.new("Part")Hit.BrickColor = BrickColor.new("Really black")end
if not Pos then Pos = Grabbed.Position end
coroutine.wrap(ShakeCam)(7.32,0.04)
for i = 1,30 do
local p = Instance.new("Part",Character)
p.FrontSurface = Hit.TopSurface
p.Material = Hit.Material
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = Hit.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),Pos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(2 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
Wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
Wait(0.1)
f.Enabled = false
Wait(1)
f:Destroy()
end)()end end
GR = false
_GR = false
Explode(CFrame.new(Pos),Settings.Colors[2])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(90),0),Settings.Colors[1])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(45),0),Settings.Colors[1])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(-45),0),Settings.Colors[2])
Kill(Grabbed)
for i = 1,10 do
for i = 1,4 do
local p = Instance.new("Part",Character)
p.TopSurface = Hit.TopSurface
p.BottomSurface = Hit.BottomSurface
p.Material = Hit.Material
p.BottomSurface = 0
p.Anchored = false
p.CanCollide = true
p.BrickColor = Hit.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-4,4),-2,math.random(-4,4)))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
Game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
Wait(0.1)
f.Enabled = false
Wait(1)
f:Destroy()
end)()end end
Wait(0.025)
end
Wait(0.25)
BP:Remove()
end
Wait(0.25)
Stance = "Standing"
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
end)end;
z = function()
if Power -3500 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
Debounces.Attacking = true
Power = Power -3500
Chat(H,"You look a little... chilly.","Really blue")
local Colors = {"Navy blue","Really blue","White",Settings.Colors[2],"Really black"}
for i = 1,20 do
for _,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and not v:findFirstChild("Frozen")then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -T.Position).magnitude <= 20 then
local f = Instance.new("StringValue",v)
f.Name = "Frozen"
for x,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
c.Anchored = true
local ss = Instance.new("Part",v)
ss.Size = Vector3.new(c.Size.x +0.2,c.Size.y +0.22,c.Size.z +0.19)
ss.Anchored = true
ss.CanCollide = true
ss.TopSurface = 0
ss.BottomSurface = 0
ss.Locked = true
ss.BrickColor = BrickColor.new("Really blue")
ss.Transparency = 1
ss.Reflectance = 0.95
ss.CFrame = c.CFrame * CFrame.Angles(math.rad(math.random(-45,45)),math.rad(math.random(-45,45)),math.rad(math.random(-45,45)))
coroutine.wrap(function()
for i = 1,25 do
ss.Transparency = ss.Transparency -0.01
Wait()
end end)()
Game:GetService("Debris"):AddItem(ss,10)
end end
delay(10,function()
for x,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
c.Anchored = false
end end end)
h.PlatformStand = true
h:TakeDamage(10)
Game:GetService("Debris"):AddItem(f,10)
end end end end end end
local Xf = T.CFrame * CFrame.new(math.rad(360/i),0,math.pi/2)
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(2,2,2)
local clr = Colors[math.random(1,#Colors)]
if type(clr)~= 'userdata' then clr = BrickColor.new(clr)end
p.BrickColor = clr
p.CFrame = Xf * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for n = 1,15 do
p.Transparency = n/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
Wait(1/30)
end
Wait(3)
Debounces.Attacking = false
end;
x = function()
if Power -5500 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
Debounces.Attacking = true
Power = Power -5500
Chat(H,"Is it just me or is it hot in here?!","Really red")
local Colors = {"Really red","Really black","Orange","New Yeller"}
for i = 1,20 do
for _,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and not v:findFirstChild("Burnt")then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -T.Position).magnitude <= 20 then
local f = Instance.new("StringValue",v)
f.Name = "Burnt"
ParticleEmit(v.Torso,BrickColor.new("Really red"),10)
for m,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
local ss = Instance.new("Fire",c)
ss.Size = c.Size.y +2
ss.Color = BrickColor.new(Colors[math.random(1,#Colors)]).Color
ss.SecondaryColor = Color3.new(0,0,0)
ss.Heat = 100
delay(10,function()
local size = ss.Size
for i = size,0,-1 do
ss.Size = i
Wait()
end
ss:Destroy()
end)end end
h.PlatformStand = true
coroutine.wrap(function()
for i = 1,10 do
h:TakeDamage(5 * math.random(1,2))
Wait(1)
end end)()
Game:GetService("Debris"):AddItem(f,10)
end end end end end end
local Xf = T.CFrame * CFrame.new(math.rad(360/i),0,math.pi/2)
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(2,2,2)
local clr = Colors[math.random(1,#Colors)]
if type(clr)~= 'userdata' then clr = BrickColor.new(clr)end
p.BrickColor = clr
p.CFrame = Xf * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for n = 1,15 do
p.Transparency = n/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
Wait(1/30)
end
Wait(3)
Debounces.Attacking = false
end;
e = function()
for i,v in pairs(Debounces)do
if v then
return
end end
if Power -26000 < 0 then return end
Debounces.Attacking = true
Power = Power -26000
Chat(H,"Time to die!","Really red")
T.Anchored = true
Explode(T.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[2])
Wait(0.15)
Character.Humanoid.Health = Character.Humanoid.Health -(Character.Humanoid.Health -1250)
local Parts = Instance.new("Model",Character)
local p = Instance.new("Part",Parts)
p.Size = Vector3.new(110,110,110)
p.Shape = "Ball"
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[2]
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = T.CFrame
local bm = Instance.new("Part",Parts)
bm.Size = Vector3.new(1,1,1)
bm.Anchored = true
bm.Locked = true
bm.CanCollide = false
bm.BrickColor = Settings.Colors[1]
bm.TopSurface = 0
bm.BottomSurface = 0
bm.CFrame = T.CFrame
local cm = Instance.new("CylinderMesh",bm)
cm.Scale = Vector3.new(50,1500,50)
coroutine.wrap(function()
for i = 1,50 do
cm.Scale = cm.Scale - Vector3.new(1,30,1)
bm.Transparency = i/50
bm.CFrame = T.CFrame
ShakeCam()
end end)()
for i = 1,55 do
p.Transparency = p.Transparency -0.02
p.Size = p.Size - Vector3.new(2,2,2)
p.CFrame = T.CFrame
if math.random(1,2)== 2 then
p.Size = p.Size + Vector3.new(3.3,3.3,3.3)
p.CFrame = T.CFrame
Wait(0.01)
p.Size = p.Size - Vector3.new(3.3,3.3,3.3)
p.CFrame = T.CFrame
end
ShakeCam()
end
Explode(T.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[1])
coroutine.wrap(ShakeCam)(12,0.02)
bm:Destroy()
local ss = Instance.new("Part",Parts)
ss.Size = Vector3.new(10,10,10)
ss.Shape = "Ball"
ss.Anchored = true
ss.Locked = true
ss.CanCollide = false
ss.BrickColor = Settings.Colors[1]
ss.TopSurface = 0
ss.BottomSurface = 0
ss.CFrame = T.CFrame
local Targets,Blocking = {},true
local function CheckTargets(CCharacter)
for i,v in pairs(Targets)do
if v[1]== CCharacter then
return true
end end
return false
end
coroutine.wrap(function()
while Wait(0.5)do
if not Blocking then break end
for i,v in pairs(Targets)do
ypcall(function()
Effect2(v[1].Torso,4,4,4,0,0,0,v[2])
end)end end end)()
coroutine.wrap(function()
while Wait()do
if not Targets then break end
for i,v in pairs(Targets or {})do
v[2]= Settings.Colors[IsNear(T.Position,p.Size.X,v[1])and 2 or 1]
if IsNear(T.Position,p.Size.X,v[1])then
if not v[3]then
v[3]= true
ypcall(function()Damage(T,v[1].Torso,nil,1000000000000,true)end)
delay(0.6,function()
v[3]= false
end)end end end end end)()
for _ = 1,30 do
p.Transparency = p.Transparency -(1/36)
p.Size = p.Size + Vector3.new(15,15,15)
p.CFrame = T.CFrame
for o,x in pairs(IsNear(T.Position,p.Size.X *1.3))do
if not CheckTargets(x)then
table.insert(Targets,{x,Settings.Colors[1],false})
for i,v in pairs(x:GetChildren())do
if v:IsA("BasePart")then
local bp = Instance.new("BodyPosition",v)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 1500
bp.position = ss.Position
elseif v:IsA("Humanoid")then
v.PlatformStand = true
v.Sit = true
end end end end
Wait()
end
Targets = nil
Blocking = false
Parts:Destroy()
Debounces.Attacking = false
T.Anchored = false
end;
y = function(Mouse)
if not Mouse.Target then return end
for i,v in pairs(Debounces)do
if v then
return
end end
if Power -15000 < 0 then return end
Debounces.Attacking = true
Power = Power -15000
Stance = "Null"
ChargePosition(false)
FaceForward()
T.CFrame = StanceGyro.cframe
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
N.DesiredAngle = -1.2
RS.DesiredAngle = 0.25
LS.DesiredAngle = 1
StopTrail = false
Trail(RA,CFrame.new(0,-0.8,0),Settings.Colors[2])
local n = StanceGyro.cframe
local Pos = Mouse.Hit * CFrame.new(0,26,0)
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LH.C0 = LH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RH.C0 = RH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
StanceGyro.cframe = n * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/80 *i)
Wait()
end
coroutine.wrap(function()
ChargePosition(false)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
Wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
Wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
Wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p) 
end)()
T.CFrame = CFrame.new(T.Position,Pos.p)
StanceGyro.cframe = CFrame.new(T.Position,Pos.p)
Wait(0.3)
StopTrail = true
T.Anchored = true
local p = Instance.new("Part",Character)
p.Shape = "Ball"
p.Size = Vector3.new(4,4,4)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[1]
p.Reflectance = 0.3
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = Pos
MiniExplode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[2])
local Done = false
coroutine.wrap(function()
while Wait(0.252)do
if Done then break end
Implode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[math.random(1,2)])
end end)()
coroutine.wrap(function()
while Wait(0.23)do
if Done then break end
Effect2(p,5,5,5,0,0,0,Settings.Colors[2],0.23)
end end)()
local tagz,grabbed = {},{}
local Con;Con = Game:GetService("RunService").Stepped:connect(function()
for i,v in pairs(IsNear(p.Position,100))do
if not v:findFirstChild("Pulling@Atlas")then
local s = Instance.new("StringValue",v)
s.Name = "Pulling@Atlas"
table.insert(tagz,s)
table.insert(grabbed,v)
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
x.Anchored = false
local bp = Instance.new("BodyPosition",x)
bp.position = p.Position
bp.P = 3000
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
table.insert(tagz,bp)
local cCon;cCon = x.Touched:connect(function(h)
if h == p then
pcall(function()
v.Humanoid:TakeDamage(11)
cCon:disconnect()
end)end end)end end end end end)
Wait(10)
for i,v in pairs(tagz)do v:Destroy()end
for _,x in pairs(grabbed)do
pcall(function()
for i,v in pairs(x:GetChildren())do
if v:IsA("BasePart")then
local bf = Instance.new("BodyForce",v)
bf.force = p.CFrame.lookVector *1200
Game:GetService("Debris"):AddItem(bf,0.64)
elseif v:IsA("Humanoid")then
v.PlatformStand = true
end end end)end
MiniExplode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[1])
Con:disconnect()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
Wait()
end
Done = true
Debounces.Attacking = false
T.Anchored = false
Stance = "Standing"
end;
k = function(_Mouse)
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
if Power -1000 >= 0 then
Power = Power -1000
Debounces.Attacking = true
ChangeText("Heal")
StopPower = true
local x = Instance.new("Animation",Tool)
x.AnimationId = "http://www.roblox.com/asset/?id=128853357"
local anim = Character.Humanoid:LoadAnimation(x)
anim:Play()
for i = 1,5 do
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,BrickColor.new("Really black"),tonumber("0."..i))
Wait(0.2)
end
T.Anchored = true
local kcon = _Mouse.Move:connect(function()pcall(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)end)
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",Workspace)
Rock.Size = Vector3.new(1,1,1)
Rock.TopSurface = 0
Rock.BottomSurface = 0
Rock.Transparency = 1
Rock.Locked = true
Rock.BrickColor = BrickColor.new("Really black")
Rock.Shape = "Ball"
Rock.CanCollide = false
Rock.CFrame = CF
Rock.Anchored = true
StopRockTrail = false
RockTrail(Rock,CFrame.new(0,0,0),BrickColor.new("Lime green"))
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
Rockx.BrickColor = BrickColor.new("Really black")
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
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Lime green"),0.3)
end end)()
coroutine.wrap(function()
while Wait(0.12)do
if ssss then break end
asdd = asdd +1
coroutine.wrap(ShakeCam)(1.1,0.01)
l.Range = l.Range +0.5
local f = Instance.new("Part",Character)
f.BrickColor = asdd%2 == 1 and BrickColor.new("Really black")or BrickColor.new("Lime green")
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
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()end end)()
Wait(1.5)
ssss = true
coroutine.wrap(function()
for a = 1,3 do
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Really black")
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
s.P = 5000
s.Name = "1"
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
s.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
local b = Rock:findFirstChild("2")or Instance.new("BodyForce",Rock)
b.force = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
b.Name = "2"
end end)()
local function Kll(Hit,Bool,con)
if Hit.Parent ~= Character then
if Hit.Parent ~= Workspace then
if not Hit.Parent:findFirstChild("Humanoid")then return end
ParticleEmit(Hit,"Lime green",2)
coroutine.wrap(ShakeCam)(6.6,0.24)
pcall(function()kcon:disconnect()end)
pcall(function()con:disconnect()end)
pcall(function()Hit.Parent.Humanoid.Health = Hit.Parent.Humanoid.Health +120 end)
if Bool then return end
T.Anchored = false
local cf = Rock.CFrame
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Really black")
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
ax.BrickColor = BrickColor.new("Lime green")
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
pcall(function()
Rock:Destroy()
Rockx:Destroy()
end)
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
end end end end end
local con;con = Rock.Touched:connect(function(h)Kll(h,false,con)end)
Game:GetService("Debris"):AddItem(Rock,5)
delay(5,function()T.Anchored = false kcon:disconnect()end)
StopPower = false
Debounces.Attacking = false
end

end;


}
local function Texture(Obj,Textur,Transparency)
for i = 0,5 do
local d = Instance.new("Decal",Obj)
d.Texture = Textur
d.Face = i
d.Transparency = Transparency
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
wHandle.Size = Vector3.new(1,4,0.001)
wHandle.CFrame = RA.CFrame
wHandle.Anchored = true
wHandle.Reflectance = 0.3
BM = Instance.new("BlockMesh",wHandle)
BM.Scale = Vector3.new(1,1,0)
W2 = Instance.new("Weld",wHandle)
W2.Part0 = wHandle
W2.Part1 = xHandle
W2.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,6.4,0)
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
W8.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,8.6,0)
uuHandle = Instance.new("Part",Tool)
uuHandle.Name = "8"
uuHandle.Locked = true
uuHandle.BrickColor = Settings.Colors[1]
uuHandle.CanCollide = false
uuHandle.FormFactor = "Custom"
uuHandle.TopSurface = 0
uuHandle.BottomSurface = 0
uuHandle.Size = Vector3.new(1,4,0.001)
uuHandle.CFrame = RA.CFrame
uuHandle.Anchored = true
uuHandle.Reflectance = 0.3
BM = Instance.new("BlockMesh",uuHandle)
BM.Scale = Vector3.new(1,1,0)
W9 = Instance.new("Weld",uuHandle)
W9.Part0 = uuHandle
W9.Part1 = xHandle
W9.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,2.15,0)
coroutine.wrap(function()
while true do
TweenColor3(uuHandle,"Color",uuHandle.Color,uuHandle.BrickColor == Settings.Colors[1]and Settings.Colors[2].Color or Settings.Colors[1].Color,0.1)
TweenColor3(wHandle,"Color",wHandle.Color,wHandle.BrickColor == Settings.Colors[1]and Settings.Colors[2].Color or Settings.Colors[1].Color,0.1)
end end)()
Tool.Name = "LocalPlayer's sword."
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Material = "Marble"
end end
Tool.Equipped:connect(function(m)
Equipped = true
Mouse = m
AttackState = "Melee"
W1 = Instance.new("Weld",xHandle)
W1.Part0 = xHandle
W1.Part1 = Handle
W1.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
W2 = Instance.new("Weld",wHandle)
W2.Part0 = wHandle
W2.Part1 = xHandle
W2.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,6.4,0)
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
W9 = Instance.new("Weld",uuHandle)
W9.Part0 = uuHandle
W9.Part1 = xHandle
W9.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,2.15,0)
table.foreach(Tool:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.CanCollide = false
v.Touched:connect(function(Hit)
if PoisonMode and Power -1000 < 0 then return end
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
if Hit.Parent:findFirstChild("HitAlreadyAtlas")then return end
coroutine.wrap(ShakeCam)(1.1,0.01)
Implode(rHandle.CFrame,Settings.Colors[2])
local sxs = Instance.new("StringValue",Hit.Parent)
sxs.Name = "HitAlreadyAtlas"
Game:GetService("Debris"):AddItem(sxs,1.5)
if PoisonMode then Power = Power -1000 end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *325
Game:GetService("Debris"):AddItem(bf,0.26)
end end
for i,v in pairs(Prts)do
v.BrickColor = Settings.Colors[1]
delay(0.95,function()v.BrickColor = Settings.Colors[2]end)
pcall(function()
local spl = Instance.new("SelectionPartLasso",Speaker.Character)
spl.Humanoid = Hit.Parent:findFirstChild("Humanoid")
spl.Part = v
spl.Color = PoisonMode and BrickColor.new("Royal purple")or Settings.Colors[2]
end)end
if PoisonMode then
ParticleEmit(Hit.Parent:findFirstChild("Torso"),"Royal purple",13)
coroutine.wrap(function()
local Dlly = 0
while Wait(1)do
if Dlly == 13 then break end
Dlly = Dlly +1
Damage(T,Hit,nil,math.random(1,6))
end end)()end
if not PoisonMode then ParticleEmit(Hit,"Really red",2)end
local cf = Hit.CFrame
local s = Instance.new("Part",Character)
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
table.foreach(Tool:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.Anchored = true
end end)
Equipped = false
end)
-- Health gui
if Game:GetService("StarterGui"):GetCoreGuiEnabled(1)then Game:GetService("StarterGui"):SetCoreGuiEnabled(1,false)end
HealthGui = Instance.new("ScreenGui",PlayerGui)
HealthGui.Name = "LocalPlayer's HealthGui"
_MainFr = Instance.new("Frame",HealthGui)
_MainFr.Size = UDim2.new(0.4,0,0.1,0)
_MainFr.Position = UDim2.new(0.3,0,0,0)
_MainFr.BackgroundColor = Settings.Colors[1]
_MainFr.BorderColor3 = Settings.Colors[1].Color
_MainFr.BorderSizePixel = 3
_MainFr.BorderColor3 = BrickColor.new("Royal purple").Color
Bar = Instance.new("Frame",_MainFr)
Bar.Size = UDim2.new(0,0,1,0)
Bar.ZIndex = 2
Bar.BackgroundColor = BrickColor.new("Royal purple")
Bar.BorderSizePixel = 0
_Shine = Instance.new("Frame",_MainFr)
_Shine.Size = UDim2.new(1,0,0.5,0)
_Shine.Position = UDim2.new(0,0,0.25,0)
_Shine.BackgroundTransparency = 0.5
_Shine.BackgroundColor = BrickColor.new("Royal purple")
_Shine.ZIndex = 3
_Shine.BorderSizePixel = 0
_LBL = Instance.new("ImageLabel",Bar)
_LBL.ZIndex = 4
_LBL.Size = UDim2.new(1,0,1,0)
_LBL.BorderSizePixel = 0
_LBL.BackgroundTransparency = 1
_LBL.Image = GuiTexture
coroutine.wrap(function()
while Wait()do
if _LBL.Image ~= GuiTexture then
_LBL.Image = GuiTexture
end end end)()
xTxt = Instance.new("TextLabel",_MainFr)
xTxt.Size = UDim2.new(1,0,1,0)
xTxt.Text = tostring(Character.Humanoid.Health)
xTxt.TextScaled = true
xTxt.Font = "SourceSansBold"
xTxt.TextColor = Settings.Colors[1]
xTxt.ZIndex = 5
xTxt.BackgroundTransparency = 1
SetHealth()
delay(1,function()Character.Humanoid.Health = 5000 end)
HCCon = Character.Humanoid.HealthChanged:connect(function(Health)
if RageMode then
if Health > 10000 then
Health = 10000
end else
if Health > 5000 then
Health = 5000
end end
xTxt.Text = tostring(math.ceil(Health))
Bar:TweenSize(UDim2.new(Health/Character.Humanoid.MaxHealth,0,1,0),"InOut","Quad",0.6,true)
end)
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
while Wait(0.54)do
if not pcall(function()
Character.Humanoid.Health = Character.Humanoid.Health +math.random(0,4)end)
then break end end end)()
-- 2D Damage
local dgg = Instance.new("ScreenGui",PlayerGui)
dgg.Name = "LocalPlayer's DamageGui"
local dgb = Instance.new("Frame",dgg)
dgb.Size = UDim2.new(0.2,0,0.1,0)
dgb.Position = UDim2.new(0.09,0,0.9,0)
dgb.BackgroundColor = Settings.Colors[1]
dgb.BorderSizePixel = 3
dgb.BorderColor3 = BrickColor.new("Royal purple").Color
local dgt = Instance.new("TextLabel",dgb)
dgt.Size = UDim2.new(1,0,1,0)
dgt.Font = "SourceSansBold"
dgt.BackgroundTransparency = 1
dgt.TextColor = BrickColor.new("Royal purple")
dgt.TextScaled = true
dgt.ZIndex = 2
dgt.Text = ByteToStr({401,442,435,422,357,430,440,357,423,426,440,441,357,437,436,435,446},325)
DamageGui = function(Text)
if dgt.Text == tostring(Text)then return end
dgt.TextColor = BrickColor.new("Royal purple")
local d = false
dgt.Text = Text
delay(1.1,function()d = true end)
coroutine.wrap(function()
repeat
dgb.Rotation = math.random(-3,3)
Wait()
until d
dgb.Rotation = 0
end)()end
function MidnightStrikeDmgGui(Text)
local d = false
dgt.Text = "MidnightStrike... "..Text
delay(2.5,function()d = true end)
coroutine.wrap(function()
repeat
dgb.Rotation = math.random(-20,20)
dgt.TextColor3 = Color3.new(RandomDecimal(0,0.3),RandomDecimal(0,0.3),RandomDecimal(0.4,1))
Wait()
until d
dgb.Rotation = 0
end)()end
function xxTCDg(Text)
local d = false
local strs = {"O3KOKDO3D3D","CH02EFG","304034#$#D#d","LUNA NOOOOO","OOAHOHOAHOH THAT'S GOOD..."}
dgt.Text = strs[math.random(1,#strs)].." "..Text
delay(3.3,function()d = true end)
coroutine.wrap(function()
repeat
dgb.Rotation = dgb.Rotation +3
TweenColor3(dgt,"TextColor3",dgt.TextColor3,Color3.new(math.random(0,1),math.random(0,1),math.random(0,1)),0.1)
dgt.Text = strs[math.random(1,#strs)].." "..Text
until d
dgb.Rotation = 0
TweenColor3(dgt,"TextColor3",dgt.TextColor3,BrickColor.new("Royal purple").Color,2)
end)()end
--Move Frame back
_MoveFrame = Instance.new("ScreenGui",PlayerGui)
_MoveFrame.Name = "LocalPlayer Move"
_Backing = Instance.new("Frame",_MoveFrame)
_Backing.Size = UDim2.new(0.2,0,0.1,0)
_Backing.Position = UDim2.new(0.71,0,0,0)
_Backing.BackgroundColor = Settings.Colors[1]
_Backing.BorderSizePixel = 3
_Backing.BorderColor3 = BrickColor.new("Royal purple").Color
MoveTxt = Instance.new("TextLabel",_Backing)
MoveTxt.Size = UDim2.new(1,0,1,0)
MoveTxt.BorderSizePixel = 0
MoveTxt.Font = "SourceSansBold"
MoveTxt.BackgroundTransparency = 1
MoveTxt.Text = ByteToStr({240,260,263,264,195,261,284,195,249,214,277,272,268,271,271,268,274,273},163)
MoveTxt.TextColor = BrickColor.new("Royal purple")
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
MoveTxt.TextColor = BrickColor.new("Royal purple")
end)()end
--Power bar
Power = 26000
_Power = Instance.new("ScreenGui",PlayerGui)
_Power.Name = "LocalPlayer Power"
PBar = Instance.new("Frame",_Power)
PBar.BackgroundColor = Settings.Colors[1]
PBar.Size = UDim2.new(0.4,0,0.1,0)
PBar.Position = UDim2.new(0.3,0,0.9,0)
PBar_back = Instance.new("Frame",PBar)
PBar_back.BackgroundColor = BrickColor.new("Royal purple")
PBar_back.Size = UDim2.new(0,0,1,0)
PBar_back.BorderSizePixel = 0
PBar_back.ZIndex = 2
PBar.BorderSizePixel = 3
PBar.BorderColor3 = BrickColor.new("Royal purple").Color
Txt = Instance.new("TextLabel",PBar_back)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = tostring(Power)
Txt.TextScaled = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Settings.Colors[1]
Txt.ZIndex = 5
Txt.BackgroundTransparency = 1
Txt.BorderSizePixel = 0
_Shine2 = Instance.new("Frame",PBar)
_Shine2.Size = UDim2.new(1,0,0.5,0)
_Shine2.Position = UDim2.new(0,0,0.25,0)
_Shine2.BackgroundTransparency = 0.5
_Shine2.BackgroundColor = BrickColor.new("Royal purple")
_Shine2.ZIndex = 3
_Shine2.BorderSizePixel = 0
_LBL2 = Instance.new("ImageLabel",PBar_back)
_LBL2.ZIndex = 4
_LBL2.Size = UDim2.new(1,0,1,0)
_LBL2.BackgroundTransparency = 1
_LBL2.BorderSizePixel = 0
_LBL2.Image = GuiTexture
coroutine.wrap(function()
while Wait()do
if _LBL2.Image ~= GuiTexture then
_LBL2.Image = GuiTexture
end end end)()
Spawn(function()
while wait()do
if Power <= 26000 then
if Power < 0 then Power = 0 end
PBar_back:TweenSize(UDim2.new(Power/26000,0,1,0),"InOut","Quad",0.2,true)
Txt.Text = tostring(Power)
end end end)
coroutine.wrap(function()
while true do
TweenColor3(Bar,"BackgroundColor3",Bar.BackgroundColor3,Bar.BackgroundColor3 == Color3.new(0,0,0)and(RageMode and Color3.new(1,0,0)or BrickColor.new("Royal purple").Color)or Color3.new(0,0,0),0.2)
TweenColor3(PBar_back,"BackgroundColor3",PBar_back.BackgroundColor3,PBar_back.BackgroundColor3 == Color3.new(0,0,0)and(RageMode and Color3.new(1,0,0)or BrickColor.new("Royal purple").Color)or Color3.new(0,0,0),0.2)
end end)()
Character.Humanoid.Died:connect(function()
Power = 26000
for i = 1,9 do
PBar_back.BackgroundTransparency = PBar_back.BackgroundTransparency +0.1
Wait()
end
Power = 0
end)
Character.Humanoid.Died:connect(function()
local DeathPhraze = {"How could I lose?!","Uyrichine will avenge me!","Avenge me!","All good things must come to an end I guess..."}
Chat(H,DeathPhraze[math.random(1,#DeathPhraze)],"Really black")
T.Anchored = true
pcall(function()Cam:Destroy()end)
coroutine.wrap(function()
repeat Wait()until Workspace.CurrentCamera ~= nil
Workspace.CurrentCamera.Focus = H.CFrame
end)()
pcall(function()H.face:Destroy()end)
StopPower = true
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end end
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end end end)
SwordAttacks,HandAttacks = {"Spin","Slash","DoubleSwing"}
local StandardSwing,SwingLeft,DoubleSwing,SpinSwing
Stance = "Standing"
Tool.Equipped:connect(function(Mouse)
AttackState = "Melee"
table.foreach(Debounces,function(_,v)v = false end)
Equipped = true
Mouse.KeyDown:connect(function(Key)
xKey = Key
if Comboing then return end
if Debounces.Shielding then return end
if GlobalKeys[Key]or GlobalKeys[Key:byte()]then
coroutine.wrap(function()local f = GlobalKeys[Key]~= nil and GlobalKeys[Key](Mouse)or GlobalKeys[Key:byte()]~= nil and GlobalKeys[Key:byte()]()end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!";
v = "Taunt!";
m = "Get up...";
p = "OUT OF MY WAY!";
[32]= "Jump!";
[59]= "Flip!";
}
ChangeText(Descriptions[Key]~= nil and Descriptions[Key]or Descriptions[Key:byte()])
end
if KeyBindings[Key]~= nil then
KeyBindings[Key](Mouse)
Wait()
Descriptions = {
l = AttackState.."!";
y = "Clone attack!";
r = "Rage!";
g = "PoisonMode!";
x = "Die please.";
u = "Sword birth."}
ChangeText(Descriptions[Key])
end end)
local cntr = 1
Mouse.Button2Down:connect(function()
ChangeText("Sorry to mislead you...")
if Power -26000 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
if AttackState == "Melee" then
local Target = Mouse.Target
if Target ~= nil then
if Target.Parent:IsA("Model")and Target.Parent ~= Character and Target.Parent:findFirstChild("Humanoid")then
Debounces.Attacking = true
local Hit = Target.Parent
for i,v in pairs(Hit:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
elseif v:IsA("Humanoid")then
v.PlatformStand = true
end end
Stance = "Null"
ParticleEmit(Hit.Torso,"Really black",2)
Power = Power -26000
Wait(0.7)
T.CFrame = Hit.Torso.CFrame * CFrame.new(0,0,-15)
Chat(H,"Did you really think that I would let you live?...","Really red")
Wait(0.25)
local Settings = {TimeOfDay = Game.Lighting.TimeOfDay,Ambient = Game.Lighting.Ambient,OutdoorAmbient = Game.Lighting.OutdoorAmbient,Brightness = Game.Lighting.Brightness}
Game.Lighting.TimeOfDay = 0
Game.Lighting.Ambient = Color3.new(1,0,0)
Game.Lighting.OutdoorAmbient = Color3.new(1,0,0)
Game.Lighting.Brightness = 0
Wait(1.5)
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Really black")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,100 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.01
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Really black")
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
for i = 1,100 do
f.Transparency = f.Transparency +0.01
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
Kill(Hit.Torso)
Game.Lighting.Brightness = 10
delay(0.65,function()Game.Lighting.Brightness = 1 end)
Wait(1.6)
for i,v in pairs(Settings)do
pcall(function()
Game.Lighting[i]= v
end)end
Debounces.Attacking = false
Stance = "Standing"
end end end end)
Mouse.Button1Down:connect(function()
if Comboing then return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing or Debounces.Shielding then return end
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(RA,CFrame.new(0,0,0))
FlyTrail(LA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait(0.5)do
if Debounces.Flying then
Power = Power -200
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
if Power == 0 then pcall(DC)break end
Speed = RageMode and 350 or 200
else pcall(DC)break end end end)()
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
end return end
if AttackState == "Melee" then
if PoisonMode then
local Attack = SwordAttacks[cntr]
cntr = cntr == 3 and 1 or cntr +1
ChangeText(Attack)
if Attack == "DoubleSwing" then
Debounces.Attacking = true
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
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
Game:GetService("Debris"):AddItem(spinForce,0.84)
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
Wait(0.1)
SpinSwing:Play()
Wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Slash" then
Debounces.Attacking = true
StopSwordTrail = false
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
Wait(1)
StopSwordTrail = true
Debounces.Attacking = false
end return end
local Attack = SwordAttacks[cntr]
cntr = cntr == 3 and 1 or cntr +1
ChangeText(Attack)
if Attack == "DoubleSwing" then
Debounces.Attacking = true
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(0.1)
DoubleSwing:Play()
Wait(1.5)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Spin" then
Debounces.Attacking = true
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,0.84)
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
Stance = "Null"
ChargePosition(false)
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(1)
StopSwordTrail = true
Stance = "Standing"
Debounces.Attacking = false
end

end end)end)
_Mouse = Player:GetMouse()
_Mouse.KeyDown:connect(function(Key)
xKey = Key
if Comboing then return end
if Debounces.Shielding then return end
if not Equipped then
if Key == 'f' then
local cn;cn = _Mouse.Button1Down:connect(function()
if Power -150 <= 0 then cn:disconnect()return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
local MouseMove = _Mouse.Move:connect(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)
T.Anchored = true
Character.Humanoid.Jump = true
Wait(0.55)
for i = 1,10 do
T.CFrame = T.CFrame * CFrame.new(0,10,0)
Wait()
end
local JumpCon = Character.Humanoid.Jumping:connect(function()Character.Humanoid.Jump = false end)
ChangeText("Atlas's wrath!")
Stance = "Null"
Debounces.Attacking = true
pcall(function()Character.Humanoid.WalkSpeed = 0 end)
StopPower = true
coroutine.wrap(function()
ChargePosition(false)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
Wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
Wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
Wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p) 
end)()
local BlastModel = Instance.new("Model",Character)
local p = Instance.new("Part",BlastModel)
p.BrickColor = Settings.Colors[2]
p.Size = Vector3.new(10,10,10)
p.Shape = "Ball"
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.FormFactor = "Custom"
p.Transparency = 1
local p2 = Instance.new("Part",BlastModel)
p2.BrickColor = Settings.Colors[2]
p2.Size = Vector3.new(10,10,10)
p2.Shape = "Ball"
p2.Anchored = true
p2.Locked = true
p2.CanCollide = false
p2.TopSurface = 0
p2.BottomSurface = 0
p2.FormFactor = "Custom"
p2.Transparency = 1
local x = Instance.new("Part",BlastModel)
x.BrickColor = Settings.Colors[2]
x.Size = Vector3.new(1,1,1)
x.Shape = "Ball"
x.Anchored = true
x.Locked = true
x.CanCollide = false
x.TopSurface = 0
x.BottomSurface = 0
x.FormFactor = "Custom"
x.Transparency = 1
x.CFrame = T.CFrame * CFrame.new(0,0,-5.1)* CFrame.fromEulerAnglesXYZ(-1.57,0,0)
local ktn = Instance.new("SpecialMesh",x)
ktn.Scale = Vector3.new(12,5,12)
ktn.MeshId = "http://www.roblox.com/asset/?id=1323306"
local a = Instance.new("Part",BlastModel)
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BrickColor = Settings.Colors[InternalMode and 1 or 2]
a.Size = Vector3.new(10,1,10)
a.CFrame = T.CFrame * CFrame.new(0,0,-17)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
a.TopSurface = 0
a.BottomSurface = 0
local m = Instance.new("CylinderMesh",a)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for _,v in pairs(BlastModel:GetChildren())do
for i = 1,9 do
v.Transparency = v.Transparency -0.1
Wait()
end end
x.Transparency = 0.6
end)()
local prtzz = {}
coroutine.wrap(function()
for i = 1,9 do
local n = Instance.new("Part",BlastModel)
n.Anchored = true
n.Locked = true
n.CanCollide = false
n.BrickColor = i%2 == 1 and Settings.Colors[1]or Settings.Colors[2]
n.Transparency = 0.54
n.TopSurface = 0
n.BottomSurface = 0
n.FormFactor = "Custom"
n.Size = Vector3.new(0.01,0.01,0.01)
local s3rl = Instance.new("SpecialMesh",n)
s3rl.MeshType = "FileMesh"
s3rl.MeshId = "http://www.roblox.com/Asset/?id=9756362"
s3rl.Scale = Vector3.new(4,4,4)
table.insert(prtzz,n)
end
local ssc = 0
while Wait()do
ssc = ssc ~= 360 and ssc +1 or 0
for i,v in pairs(prtzz)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,math.rad((i *360/#prtzz)+ssc))
* CFrame.new(-13,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local prtzz2 = {}
coroutine.wrap(function()
for i = 1,9 do
local n = Instance.new("Part",BlastModel)
n.Anchored = true
n.Locked = true
n.CanCollide = false
n.BrickColor = i%2 == 1 and Settings.Colors[1]or Settings.Colors[2]
n.Transparency = 0.54
n.TopSurface = 0
n.BottomSurface = 0
n.FormFactor = "Custom"
n.Size = Vector3.new(0.01,0.01,0.01)
local s3rl = Instance.new("SpecialMesh",n)
s3rl.MeshType = "FileMesh"
s3rl.MeshId = "http://www.roblox.com/Asset/?id=9756362"
s3rl.Scale = Vector3.new(4,4,4)
table.insert(prtzz2,n)
end
local ssc = 0
while Wait()do
ssc = ssc ~= 360 and ssc +1 or 0
for i,v in pairs(prtzz2)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,-math.rad((i *720/#prtzz2)+ssc)*2.5)
* CFrame.new(-6.5,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local StopBeam = false
local kcon;kcon = _Mouse.KeyDown:connect(function(k3y)
if k3y == 'f' then
StopBeam = true
kcon:disconnect()
end end)
local CantSendBoomBoom = false
local MB = _Mouse.Button1Down:connect(function()
if CantSendBoomBoom then return end
CantSendBoomBoom = true
local Boom = Instance.new("Part",BlastModel)
Boom.CanCollide = false
Boom.Locked = true
Boom.Anchored = true
Boom.Transparency = 1
Boom.TopSurface = "Smooth"
Boom.BottomSurface = "Smooth"
Boom.Shape = "Ball"
Boom.BrickColor = BrickColor.new("Really red")
Boom.FormFactor = "Custom"
Boom.CFrame = T.CFrame * CFrame.new(0,0,-5.2)
for i = 1,10 do
Boom.Transparency = Boom.Transparency -0.1
Boom.CFrame = T.CFrame * CFrame.new(0,0,-5.2)
Wait()
end
for i = 1,50 do Boom.Size = Boom.Size + Vector3.new(0.25,0.25,0.25)Boom.CFrame = T.CFrame * CFrame.new(0,0,-5.2)Wait()end
repeat
CurrentDistance = CurrentDistance -2
Boom.Size = Boom.Size + Vector3.new(2,2,2)
Boom.CFrame = p.CFrame * CFrame.new(0,0,CurrentDistance)
Wait()
if StopBeam then break end until Boom.CFrame == _Mouse.Hit
if not StopBeam then
coroutine.wrap(function()
Boom.CFrame = _Mouse.Hit
print 'explode'
end)()end
delay(1.2,function()
CantSendBoomBoom = false
end)end)
local prtzz3 = {}
coroutine.wrap(function()
for i = 1,9 do
local n = Instance.new("Part",BlastModel)
n.Anchored = true
n.Locked = true
n.CanCollide = false
n.BrickColor = i%2 == 1 and Settings.Colors[1]or Settings.Colors[2]
n.Transparency = 0.54
n.TopSurface = 0
n.BottomSurface = 0
n.FormFactor = "Custom"
n.Size = Vector3.new(0.01,0.01,0.01)
local s3rl = Instance.new("SpecialMesh",n)
s3rl.MeshType = "FileMesh"
s3rl.MeshId = "http://www.roblox.com/Asset/?id=9756362"
s3rl.Scale = Vector3.new(4,4,4)
table.insert(prtzz3,n)
end
local sscs = 0
while Wait()do
sscs = sscs ~= 360 and sscs +1 or 0
for i,v in pairs(prtzz3)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,-math.rad((i *1080/#prtzz3)+sscs)*5)
* CFrame.new(-36,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local CanHit = true
local cntrr = 0
while Wait()do
if not _Mouse.Target then break end
local sssss = math.random(8,10)
cntrr = cntrr ~= 360 and cntrr +1 or 0
p.CFrame = T.CFrame * CFrame.new(cntrr %2 == 1 and 0 or RandomDecimal(-0.6,0.6),cntrr %2 == 1 and 0 or RandomDecimal(-0.6,0.6),-10.2)
p.BrickColor = a.BrickColor
p.Transparency = RandomDecimal(0,0.3)
p2.Transparency = p.Transparency
p2.BrickColor = a.BrickColor
x.BrickColor = a.BrickColor
x.Transparency = p.Transparency
x.CFrame = T.CFrame * CFrame.new(0,0,-5.1)* CFrame.new(RandomDecimal(-0.2,0.2),RandomDecimal(-0.2,0.2),0)* CFrame.fromEulerAnglesXYZ(-1.57,cntrr,0)
a.Size = Vector3.new(sssss,(T.Position -_Mouse.Hit.p).magnitude,sssss)
a.Transparency = p.Transparency
a.CFrame = p.CFrame * CFrame.new(0,0,-(T.Position -_Mouse.Hit.p).magnitude/2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
p2.CFrame = p.CFrame * CFrame.new(0,0,-(T.Position -_Mouse.Hit.p).magnitude)
if CanHit then
CanHit = false -- back
DamageNear(_Mouse.Hit.p,45,math.random(10,75))
Explode(p2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),math.random(1,2)== 1 and Settings.Colors[InternalMode and 2 or 1]or BrickColor.new("Really red"),math.random(1,2)== 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/Asset/?id=9756362",p2.CFrame * CFrame.new(0,-1,0))
Effect2(p,8,8,8,0,0,0,Settings.Colors[InternalMode and 2 or 1],0.7)
delay(0.2,function()CanHit = true end)
end
if StopBeam then break end
if Power -150 < 0 then break end
Power = Power -150
ShakeCam(0.2)
end
for _,v in pairs(BlastModel:GetChildren())do
coroutine.wrap(function()
for i = 1,9 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end
Wait(0.1)
BlastModel:Destroy()
MB:disconnect()
JumpCon:disconnect()
MouseMove:disconnect()
pcall(function()kcon:disconnect()end)
Debounces.Attacking = false
StopPower = false
T.Anchored = false
pcall(function()Character.Humanoid.WalkSpeed = 45 end)
Stance = "Standing"
end)
_Mouse.KeyDown:connect(function()cn:disconnect()end)
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
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,BrickColor.new("Really black"),tonumber("0."..i))
Wait(0.2)
end
T.Anchored = true
local kcon = _Mouse.Move:connect(function()pcall(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)end)
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",Workspace)
Rock.Size = Vector3.new(1,1,1)
Rock.TopSurface = 0
Rock.BottomSurface = 0
Rock.Transparency = 1
Rock.Locked = true
Rock.BrickColor = BrickColor.new("Really red")
Rock.Shape = "Ball"
Rock.CanCollide = false
Rock.CFrame = CF
Rock.Anchored = true
StopRockTrail = false
RockTrail(Rock,CFrame.new(0,0,0),BrickColor.new("Really red"))
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
Rockx.BrickColor = BrickColor.new("Really black")
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
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Really red"),0.3)
end end)()
coroutine.wrap(function()
while Wait(0.12)do
if ssss then break end
asdd = asdd +1
l.Range = l.Range +0.5
local f = Instance.new("Part",Character)
f.BrickColor = asdd%2 == 1 and BrickColor.new("Really black")or BrickColor.new("Really red")
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
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()end end)()
Wait(1.5)
ssss = true
coroutine.wrap(function()
for a = 1,3 do
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Really red")
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
local function Kll(Hit,Bool,con)
if Hit.Parent ~= Character then
if Hit.Parent ~= Workspace then
if not Hit.Parent:findFirstChild("Humanoid")then return end
ParticleEmit(Hit,"Really red",2)
coroutine.wrap(ShakeCam)(6.6,0.24)
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
if Bool then
Damage(Rock,Hit,true)
Damage(Rock,Hit,true)
return end
pcall(function()kcon:disconnect()end)
pcall(function()con:disconnect()end)
T.Anchored = false
local cf = Rock.CFrame
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Really red")
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
ax.BrickColor = BrickColor.new("Really red")
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
Damage(Rock,Hit,false,122)
pcall(function()
Rock:Destroy()
Rockx:Destroy()
end)
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
end end end end end
local con;con = Rock.Touched:connect(function(h)Kll(h,false,con)end)
Game:GetService("Debris"):AddItem(Rock,5)
delay(5,function()T.Anchored = false kcon:disconnect()end)
StopPower = false
Debounces.Attacking = false
end elseif Key:byte()== 32 then
local Con;Con = _Mouse.Button1Down:connect(function()
Character.Humanoid.Jump = true
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Institutional white")
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
u = "Keep calm, and destroy!";
g = "Uppercut!";
l = "SUFFER!";
z = "Freeze!";
x = "Burn!";
e = "Luna powa :D!";
y = "Banishment!";
u = "TO THE MOON!"
}
ChangeText(Descriptions[Key])
end
if GlobalKeys[Key]or GlobalKeys[Key:byte()]then
coroutine.wrap(function()local f = GlobalKeys[Key]~= nil and GlobalKeys[Key](_Mouse)or GlobalKeys[Key:byte()]~= nil and GlobalKeys[Key:byte()]()end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!";
v = "Taunt";
m = "Get up...";
p = "OUT OF MY WAY!";
[32]= "Jump!";
[59]= "Flip!";}
ChangeText(Descriptions[Key]~= nil and Descriptions[Key]or Descriptions[Key:byte()])
end end end)
_Mouse.Button1Down:connect(function()
if Comboing then return end
if Debounces.Shielding or Debounces.IsCharging or Debounces.Attacking or Debounces.IsHealing then return end
if not Equipped then
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(RA,CFrame.new(0,0,0))
FlyTrail(LA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait(0.5)do
if Debounces.Flying then
Power = Power -200
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
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
bg.cframe = CFrame.new(T.Position,_Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *Speed
local MouseMoveConnection = _Mouse.Move:connect(function()
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,_Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *Speed
end)
local Con;Con = _Mouse.Button1Up:connect(DC)
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
Debounces.Attacking = true
ChangeText("FALCON, PAWNCH!")
Stance = "NULL"
ChargePosition(false)
StopTrail = false
Trail(LA,CFrame.new(0,-1,0),Settings.Colors[2])
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
ParticleEmit(Hit,"Really red",2)
coroutine.wrap(ShakeCam)(1.1,0.01)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
local cf = Hit.CFrame
local s = Instance.new("Part",Character)
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
StcC = "Standing"
local STCO = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local StandRS = CFrame.new(1,0.5,0,0.707106709,0,0.707106709,0,1,0,-0.707106709,0,0.707106709)
local StandRH = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local StandLS = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
local StandLH = CFrame.new(-1,-1,0,0,0.0392597914,-0.999228895,0,0.999228895,0.0392597914,1,0,0)
StanceGyro = Instance.new("BodyGyro")
StanceGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
StanceGyro.P = 15000
StanceGyro.D = 750
StanceGyro.Name = "StanceGyro"
coroutine.wrap(function()
while Wait()do
if Power == 0 and RageMode then
KeyBindings.r()
end end end)()
local LastJump = tick()
Character.Humanoid.Jumping:connect(function()
LastJump = tick()
Debounces.Shielding = false
LH.DesiredAngle = -0.7
LS.DesiredAngle = 0.7
RH.DesiredAngle = -0.7
RS.DesiredAngle = 0.7
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(-math.pi/12,0,0)
N.DesiredAngle = 0
StcC = "Jumping"
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,0.6)
if not Debounces.Attacking and not Debounces.IsCharging and not Debounces.IsHealing then
if not RageMode then
StopJumpTrail = false
JumpTrail(LA,CFrame.new(0,0,0))
JumpTrail(RA,CFrame.new(0,0,0))
end end
local vu = Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,70,0)
game:GetService("Debris"):AddItem(vu,0.267)
RiseRate = RiseRate +3
Wait(0.6)
StcC = "Standing"
local Con2,Con;Con2 = LL.Touched:connect(function(Hit)
Damage(Hit,Hit)
Con2:disconnect()
end)
Con = RL.Touched:connect(function(Hit)
Damage(Hit,Hit)
Con:disconnect()
end)
StopJumpTrail = true
RiseRate = RiseRate -3
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
StanceGyro.cframe = FaceForward()* CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
StanceGyro.Parent = T
StanceGyro.P = 10000
StanceGyro.maxTorque = Vector3.new(5000,5000,5000)*50000
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
while Wait(0.1)do
if not StopPower then
Effect2(LA,1.2,1.2,1.2,0,-0.8,0,ChosenColor or Settings.Colors[1],0.1)
Effect2(RA,1.2,1.2,1.2,0,-0.8,0,ChosenColor or InternalMode and Settings.Colors[1]or Settings.Colors[2],0.1)
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
if not Pr0mMode then
if RageMode then
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Really red")
end end end
Settings.Colors[1]= BrickColor.new("Really red")
Settings.Colors[2]= BrickColor.new("Really red")
Power = Power -32
else
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Really red")then
v.BrickColor = Cached[2]
end end end
for i,v in pairs(Cached)do
Settings.Colors[i]= v
end end else
if RageMode then
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Navy blue")
end end end
Settings.Colors[1]= BrickColor.new("Navy blue")
Settings.Colors[2]= BrickColor.new("Navy blue")
Power = Power -45
else
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Navy blue")then
v.BrickColor = Cached[2]
end end end
for i,v in pairs(Cached)do
Settings.Colors[i]= v
end end end end)end end)()
Player.Idled:connect(function()
ChargePosition(false)
local Sayings = {"Come on player! I want to kill things.","HEY PLAYER! IT'S TIME TO PLAY!","Come on already!","The player left me...again.","Don't make me break the fourth wall again!"}
Chat(H,Sayings[math.random(1,#Sayings)],"Really red")
ChangeText("Morietur timoris timeant te...")
delay(0.2,function()ChangeText("I missed you...")end)
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
for i,v in pairs(Character:GetChildren())do
if v:IsA("Hat")or v:IsA("Shirt")or v:IsA("Pants")or v:IsA("ShirtGraphic")then
v:Destroy()
end end
if ArielMode then Game:GetService("InsertService"):LoadAsset(26019701):GetChildren()[1].Parent = Character else Game:GetService("InsertService"):LoadAsset(74219283):GetChildren()[1].Parent = Character end
local l = Game:GetService("InsertService"):LoadAsset(128159229):GetChildren()[1]
l.Parent = Character
_Mesh = l:findFirstChild("Mesh",true)
_Mesh.MeshId = "http://www.roblox.com/asset/?id=1285237"
_Mesh.TextureId = "http://www.roblox.com/asset/?id=135974538"
local xss = Game:GetService("InsertService"):LoadAsset(99860652):GetChildren()[1]
xss.Parent = Character
local mss = xss:findFirstChild("Mesh",true)
mss.TextureId = "http://www.roblox.com/asset/?id=71162926"
Tool.CanBeDropped = false
Tool.ToolTip = "Made by LocalPlayer!"
ParticleEmit(qHandle,Settings.Colors[2],math.huge)
ParticleEmit(rHandle,"Really black",math.huge)
Implode(T.CFrame,Settings.Colors[2])
coroutine.wrap(function()
for i = 1,6 do
local p = Instance.new("Part",Tool)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[2]
p.Transparency = 0.54
p.TopSurface = 0
p.BottomSurface = 0
p.FormFactor = "Custom"
p.Size = Vector3.new(0.005,0.005,0.005)
table.insert(Prts,p)
end
coroutine.wrap(function()
while Wait()do
for i,v in pairs(Prts)do
v.Anchored = true
v.CanCollide = false
end end end)()
while Wait()do
SpinCount = SpinCount ~= 360 and SpinCount +1 or 0
for i,v in pairs(Prts)do
v.CFrame = CFrame.new(xHandle.Position)
* CFrame.Angles(0,math.rad((i *360/#Prts)+SpinCount),0)
* CFrame.new(0,0,-1.6)
* CFrame.Angles(math.rad(63),0,0)
end end end)()
for i = 1,5 do
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.Shape = "Ball"
p.Locked = true
p.CanCollide = false
p.Transparency = 0.35
p.Size = Vector3.new(3,3,3)
table.insert(ChargeMatrix,p)
end
coroutine.wrap(function()while Wait()do pcall(function()Game.Lighting.Outlines = false end)end end)()
pcall(function()PlayerGui:findFirstChild("HealthGui"):Destroy()end)
do local SG = Instance.new("SurfaceGui",T)
SG.Adornee = T
local Txt = Instance.new("TextLabel")
Txt.Size = UDim2.new(0,800,0,600)
Txt.BackgroundTransparency = 1
Txt.Text = AmazingMode and ByteToStr({3096,3131,3138,3121,3052,3141,3131,3137,3052,3092,3121,3117,3134,3136,3066,3066,3066,3052,3080,3071},3020)or "saud20"
Txt.TextScaled = true
Txt.Font = "SourceSansBold"
Txt.Parent = SG -- After being parented, it gets locked.
coroutine.wrap(function()
while Wait()do
Txt.TextColor = Settings.Colors[InternalMode and 1 or 2]
end end)()end
Chat(H,"I cannot express my rage!",BrickColor.new("Really red"))
--if Game.Players.LocalPlayer.Name == "muchiha" or Game.Players.LocalPlayer.Name == "lolkoninglol" or Game.Players.LocalPlayer.Name == "SpicyDucks" then Instance.new("ManualSurfaceJointInstance")end -- FM kids...
coroutine.wrap(function()
while Wait()do
if RageMode then
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 65 end
if Pr0mMode then
if H.BrickColor ~= BrickColor.new("Navy blue")then
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.BrickColor = BrickColor.new("Navy blue")
end end end else
if H.BrickColor ~= BrickColor.new("Really red")then
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.BrickColor = BrickColor.new("Really red")
end end end end else
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 45 end
if H.BrickColor ~= InternalMode and BrickColor.new("Really red")or Settings.Colors[1]then
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")and(v.Name:find("Arm")or v.Name:find("Leg")or v.Name:find("Torso")or v.Name:find("Head"))then
v.BrickColor = InternalMode and BrickColor.new("Really red")or Settings.Colors[1]
end end end end
if Character.Humanoid.Health > 0 then
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
end else break end end end)()
InputTable,MaxBuffer,MaxFlow,CurrentKey,LastInput,xKey,xCount,StopRunning = {},0.56,10,'',tick(),'',0,false
local function XTCDamage(Obj)
if Obj.Parent ~= Character then
local Range,Range2 = {},{}
for i = 1,8 do Range[i]= i *53100 end
for i = 1,10 do Range2[i]= i *760 end
local Damage = Range[math.random(1,#Range)]-Range2[math.random(1,#Range2)]
if Obj.Parent ~= nil then
local Humanoid = Obj.Parent:findFirstChild("Humanoid")
if Humanoid then
xxTCDg(tostring(Damage).."...")
local Torso = Obj.Parent:findFirstChild("Torso")
if Torso then
ChangeText("Trippy br0...")
local KnockBack = Vector3.new(0,(Damage/130)*23,(Damage/130)*33)
for i,v in pairs(Obj.Parent:GetChildren())do
if v:IsA("BasePart")then
local Sf = Instance.new("BodyVelocity",v)
Sf.velocity = Vector3.new(0,300000,10003)
Sf.P = 2000
Sf.maxForce = AbsVector(KnockBack)*2
Game:GetService("Debris"):AddItem(Sf,1.6)
local R = Instance.new("BodyAngularVelocity",v)
R.P = 5000
R.maxTorque = Vector3.new(50000,50000,50000)*500000000
R.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
Game:GetService("Debris"):AddItem(R,1.2)
end end
for _ = 1,33 do
local p = Instance.new("Part",Obj.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.Random()
p.CFrame = Torso.CFrame
Game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale - Vector3.new(1.1,1.1,1.1)
p.Transparency = i/60
p.BrickColor = BrickColor.Random()
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
Wait(0.01)
end
Humanoid:TakeDamage(Damage)
Explode(Torso.CFrame,BrickColor.Random())
for _ = 1,20 do
local p = Instance.new("Part",Obj.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.Random()
p.CFrame = Torso.CFrame
Game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale + Vector3.new(0.66 *_ *0.8,0.66 *_ *0.8,0.66 *_ *0.8)
p.Transparency = i/60
p.BrickColor = BrickColor.Random()
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
Wait()
end end end end end end
local function MidnightStrikeDmg(Obj)
if Obj.Parent ~= Character then
local Range,Range2 = {},{}
for i = 1,5 do Range[i]= i *1100 end
for i = 1,10 do Range2[i]= i *51 end
local Damage = Range[math.random(1,#Range)]-Range2[math.random(1,#Range2)]
if Obj.Parent ~= nil then
local Humanoid = Obj.Parent:findFirstChild("Humanoid")
if Humanoid then
MidnightStrikeDmgGui(tostring(Damage).."...")
local Torso = Obj.Parent:findFirstChild("Torso")
if Torso then
ChangeText("May their nightmares come true...")
local KnockBack = Vector3.new(0,(Damage/130)*23,(Damage/130)*33)
for i,v in pairs(Obj.Parent:GetChildren())do
if v:IsA("BasePart")then
local Sf = Instance.new("BodyVelocity",v)
Sf.velocity = Vector3.new(0,300000,10003)
Sf.P = 2000
Sf.maxForce = AbsVector(KnockBack)
Game:GetService("Debris"):AddItem(Sf,1.6) -- Internal, you seem a bit off, dafuq man. Oh, she left me, still getting over it. Lol really? Yea, when she told me, I felt terrible. Then I realised I still have people who care about me.
local R = Instance.new("BodyAngularVelocity",v)
R.P = 5000
R.maxTorque = Vector3.new(50000,50000,50000)*500000000
R.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
Game:GetService("Debris"):AddItem(R,1.2)
end end
local Colors = {"Really black","Navy blue","Really blue","Black"}
for _ = 1,33 do
local p = Instance.new("Part",Obj.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = Torso.CFrame
Game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale - Vector3.new(1.1,1.1,1.1)
p.Transparency = i/60
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
Wait(0.01)
end
Humanoid:TakeDamage(Damage)
Implode(Torso.CFrame,BrickColor.new("Really red"))
Growl()
for _ = 1,20 do
local p = Instance.new("Part",Obj.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = Torso.CFrame
Game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale + Vector3.new(0.66 *_ *0.8,0.66 *_ *0.8,0.66 *_ *0.8)
p.Transparency = i/60
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
Wait()
end end end end end end
Growl()
local Combos = {
qeyt = {"Give me your health!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
T.CFrame = StanceGyro.cframe
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
N.DesiredAngle = -1.2
RS.DesiredAngle = 0.25
LS.DesiredAngle = 1
local nx = StanceGyro.cframe
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025) * CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LH.C0 = LH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RH.C0 = RH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/80 *i)
Wait()
end
Wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
Wait()
end
Wait(0.2)
StopJoints()
StopPower = true
StanceGyro.maxTorque = Vector3.new(50000,50000,50000)*500000000000000000000000000000000000000000000
StanceGyro.P = 5000
StanceGyro.D = 200
LS.MaxVelocity = 0.3
LS.MaxVelocity = 0.3
RH.MaxVelocity = 0.3
LH.MaxVelocity = 0.3
RS.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
LH.DesiredAngle = 0
N.DesiredAngle = -1.4
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local DIR = Direction()[1].lookVector
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
RH.DesiredAngle = 0.15
LH.DesiredAngle = 0.3
Wait(0.25)
local MaxDistance,Grabbed,HPos = 150
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really black")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(3,3,3)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2.5,2.5,2.5)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity =(t.Position - RA.Position).unit *-(10 +(t.Position - RA.Position).magnitude *1.27)
Game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
Wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break end end end end end end end
Wait(0.1)
end
local BP if Grabbed then
local Target = Grabbed.Parent.Humanoid
Wait()
BP = Instance.new("BodyPosition",T)
BP.P = 5000
BP.maxForce = Vector3.new(500000,500000,500000)*50000000
BP.position = T.Position
local GR,_GR = true,true
coroutine.wrap(function()
while _GR do
if GR then
Grabbed.Parent.Head.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end
Wait()
end end)()
coroutine.wrap(ShakeCam)(7.32,0.04)
Implode(Grabbed.CFrame,BrickColor.new("Really black"))
local dn,cc = true,1
coroutine.wrap(function()
while Wait(0.1)do
if not dn then break end
Effect2(Grabbed,Grabbed.Size.y *cc,Grabbed.Size.y *cc,Grabbed.Size.y *cc,0,0,0,math.random(1,2)== 2 and BrickColor.new("Really red")or BrickColor.new("Really black"),0.32)
cc = cc +0.025
end end)()
delay(3.32,function()dn = false end)
for i = 1,100 do
for _,v in pairs(Grabbed.Parent:GetChildren())do
if v:IsA("Clothing")or v:IsA("Hat")then
v:Destroy()
elseif v:IsA("BasePart")then
v.Transparency = i/71
v.Reflectance = i/25
v.Color = Color3.new(math.abs(-i/100),math.abs(-i/100),math.abs(-i/100))
end end
Wait()
if not dn then
break
end end
Explode(Grabbed.CFrame,BrickColor.new("Really red"))
Character.Humanoid.Health = Character.Humanoid.Health +Grabbed.Parent.Humanoid.Health
_GR,GR = false,false
Kill(Grabbed)
end
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
pcall(function()BP:Destroy()end)
Stance = 'Standing'
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;2};
qq = {"Quick step left!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -2000 < 0 then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -2000
T.CFrame = T.CFrame * CFrame.new(-20,0,0)
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;3};
ee = {"Quick step right!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -2000 < 0 then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -2000
T.CFrame = T.CFrame * CFrame.new(20,0,0)
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;3};
qrxc = {"Midnight strike!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
Debounces.Attacking = true
local Cached = {}
Cached.Ambient = Game.Lighting.Ambient
Cached.OutdoorAmbient = Game.Lighting.OutdoorAmbient
Cached.FogEnd = Game.Lighting.FogEnd
Cached.TimeOfDay = Game.Lighting.TimeOfDay
Cached.Sky = Game.Lighting:findFirstChild("Sky")or Instance.new("Sky",Game.Lighting)
if Cached.Sky then Cached.Sky.CelestialBodiesShown = Game.Lighting.Sky.CelestialBodiesShown end
Cached.Brightness = Game.Lighting.Brightness
Cached.FogColor = Game.Lighting.FogColor
Game.Lighting.Ambient = Color3.new(0.34,0.34,0.34)
Game.Lighting.OutdoorAmbient = Color3.new(0.23,0,0)
Game.Lighting.FogColor = Color3.new(0.3,0.3,0.4003)
Game.Lighting.FogEnd = 110
if Cached.Sky then Game.Lighting.Sky.CelestialBodiesShown = false end
Game.Lighting.Brightness = 0
Game.Lighting.TimeOfDay = 0
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
T.CFrame = StanceGyro.cframe
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
N.DesiredAngle = -1.2
RS.DesiredAngle = 0.25
LS.DesiredAngle = 1
local nx = StanceGyro.cframe
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LH.C0 = LH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RH.C0 = RH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/80 *i)
Wait()
end
Wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
Wait()
end
Wait(0.2)
StopJoints()
StopPower = true
StanceGyro.maxTorque = Vector3.new(50000,50000,50000)*500000000000000000000000000000000000000000000
StanceGyro.P = 5000
StanceGyro.D = 200
LS.MaxVelocity = 0.3
LS.MaxVelocity = 0.3
RH.MaxVelocity = 0.3
LH.MaxVelocity = 0.3
RS.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
LH.DesiredAngle = 0
N.DesiredAngle = -1.4
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local DIR = Direction()[1].lookVector
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
RH.DesiredAngle = 0.15
LH.DesiredAngle = 0.3
Wait(0.25)
local MaxDistance,Grabbed,HPos = 150
local Hcon,Hitx = false;Hcon = RA.Touched:connect(function(Hit)
if Hit.Parent ~= Character and Hit.Parent:findFirstChild("Humanoid")then
if not Hitx then
Hitx = true
coroutine.wrap(function()
Explode(Hit.CFrame,BrickColor.new("Really black"))
end)()coroutine.wrap(function()
ypcall(function()
MidnightStrikeDmg(Hit)
end)end)()
Wait(0.2)
HCon:disconnect()
end end end)
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really black")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(3,3,3)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Navy blue")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2.5,2.5,2.5)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity =(t.Position - RA.Position).unit *-(10 +(t.Position - RA.Position).magnitude *3.4)
Game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
Wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break end end end end end end end
Wait(0.1)
end
if Grabbed then
ChargePosition(false)
Stance = 'Standing'
Implode(T.CFrame,BrickColor.new("Navy blue"))
local d = false
coroutine.wrap(function()
while true do
ShakeCam(7.32,0.04)
if d then
break
end end end)()
Wait(3.3)
d = true
end
Implode(T.CFrame,BrickColor.new("Really black"))
for i,v in pairs(Cached)do pcall(function()Game.Lighting[i]= v end)end
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
Stance = "Standing"
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;2};
xcft = {"";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Debounces.Attacking = true
Power = Power -26000
Stance = ''
coroutine.wrap(function()
for _ = 1,33 do
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = T.CFrame
Game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale - Vector3.new(1.1,1.1,1.1)
p.Transparency = i/60
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
Wait(0.01)
end end)()
local Collection = {}
for i = 1,10 do
T.CFrame = T.CFrame * CFrame.new(0,0,-54)
for x,v in pairs(IsNear(T.CFrame.p,30))do
if not Collection[v.Name]then
Collection[v.Name]= {v,false}
end end end
if #Collection > 0 then
for i,v in pairs(Collection)do
if not v[2]then
v[2]= true

end end end
Debounces.Attacking = false
Stance = "Standing"
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;2};
xtc = {"Idk yet";function()
print(ypcall(function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Debounces.Attacking = true
Power = Power -26000
StanceGyro.P = 9000
StanceGyro.D = 300
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,-math.pi *1.5,0)
local D = T.CFrame * CFrame.new(-4,0,0)
local DIR = -(T.CFrame.p - D.p).unit
Character.Humanoid.Jump = true
pcall(function()T:findFirstChild("BodyPosition"):Destroy()end)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,0,math.pi/24)
Stance = ''
ChargePosition(false)
StanceGyro.maxTorque = Vector3.new(5000000000000,500000000000000,5000000000000000)*50000000000
local ori = T.CFrame
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)* CFrame.fromEulerAnglesXYZ(0,math.pi/8,0)
N.DesiredAngle = 0.6
LH.DesiredAngle = 0.2
RH.DesiredAngle = 0
RS.DesiredAngle = -0.2
LS.CurrentAngle = 0.2
LS.MaxVelocity = 0.8
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-math.pi *1,math.pi/16)
LS.DesiredAngle = -3.2
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/16,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/16,0,0)
local v6 = Instance.new("BodyPosition",T)
v6.P = 5000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = T.Position + Vector3.new(0,6,0)-DIR *6
local End = CFrame.new(v6.position + Vector3.new(0,2,0)+DIR *2)
StopPower = true
for i = 1,7 do
LS.MaxVelocity = 0.7
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = LA.CFrame * CFrame.new(0,-2,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for j = 1,10 do
m.Scale = m.Scale - Vector3.new(0.1,0.1,0.1)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
p.Transparency = j/5
Wait()
end
p:Destroy()
end)()
LS.DesiredAngle = -3.2
local Hpos,MaxDec = LA.Position,8
for _,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local Hx = v:findFirstChild("Humanoid")
if Hx and Hx.Health >0 then
local Tx = v:findFirstChild("Torso")
if Tx then
if(Tx.Position - Hpos).magnitude <= MaxDec then
for r = 1,2 do
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = T.CFrame
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
XTCDamage(Tx)
end end end end end end
Wait()
end
StopPower = false
Game:GetService("Debris"):AddItem(v6,0.5)
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end))end;2}
-- work
}
local function Input(Key)
if Key:byte()== 18 or Key:byte()== 17 or Key:byte()== 19 or Key:byte()== 20 or Key == 'a' or Key == 's' or Key == 'd' or Key == 'w' then
CurrentKey = Key
LastInput = tick()
return
end
local Keys = {'f','q','e','r','t','y','u','z','x','c','l'}
local x = false
for i,v in pairs(Keys)do
if Key == v then
x = true
break
end end
if not x then
ChangeText("Invalid key, combo failed.")
InputTable = {}
delay(0.6,function()Comboing = false end)
CurrentKey = ''
xKey = ''
xCount = 0
StopRunning = false
return end
if #InputTable > MaxFlow then
InputTable = {}
delay(0.6,function()Comboing = false end)
CurrentKey = ''
xKey = ''
ChangeText("Overflow, combo failed.")
xCount = 0
StopRunning = false
return end
for i,v in pairs(Keys)do
if v == Key then
xCount = xCount +1
InputTable[xCount]= v
if Combos[table.concat(InputTable)]then
if Combos[table.concat(InputTable)][3]== 3 then coroutine.wrap(Combos[table.concat(InputTable)][2])()end
if Combos[table.concat(InputTable)][3]== 2 and not Equipped then coroutine.wrap(Combos[table.concat(InputTable)][2])()end
if Combos[table.concat(InputTable)][3]== 1 and Equipped then coroutine.wrap(Combos[table.concat(InputTable)][2])()end
ChangeText(Combos[table.concat(InputTable)][1])
InputTable = {}
xCount = 0
xKey = ''
else if LastInput -tick()< MaxBuffer then
CurrentKey = Key
LastInput = tick()
ChangeText(Key:upper()..'!')
end end break end end end
while Wait()do
if(xKey:byte()== 49 or xKey:byte()== 50)and not Comboing then
if not StopRunning then
Comboing = true
local Con;Con = _Mouse.KeyDown:connect(function(key)
Comboing = true
Input(key)
if #InputTable == 0 then
Con:disconnect()
end end)
if Mouse then
local Conx;Conx = Mouse.KeyDown:connect(function(key)
Comboing = true
Input(key)
if #InputTable == 0 then
Conx:disconnect()
end end)end ChangeText("Combo initiated!")LastInput = tick()StopRunning = true end end end
