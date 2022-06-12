repeat Wait()until Game.Players.LocalPlayer ~= nil;Player = Game.Players.LocalPlayer Tool = script.Parent if not script.Parent:IsA("Tool")then Tool = Instance.new("Tool",Player.Backpack)script.Parent = Tool end
Tool.Name = "Select me."
Tool.ToolTip = "I know it seems sketchy, just do it k."
local Mouse = Tool.Equipped:wait()
local Player = Game.Players.LocalPlayer
Character,PlayerGui,Power = Player.Character,Player.PlayerGui,0
RA,LA,RL,LL,H,T = Character["Right Arm"],Character["Left Arm"],Character["Right Leg"],Character["Left Leg"],Character.Head,Character.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings,Pr0mMode,ArielMode,InternalMode,AmazingMode = {Colors = {BrickColor.new("Really black"),BrickColor.new("New Yeller")};ExplosionColors = {BrickColor.new("Really black"),BrickColor.new("New Yeller"),BrickColor.new("Really red"),BrickColor.new("Institutional white")}},Player.Name == "kash5",Player.Name == "paul072" or Player.Name == "KillBecca62",Player.Name == "InternalRecursion" or Player.Name == "RecursionAltInternal",Player.Name == "heartstar18"
StanceGyro = Instance.new("BodyGyro",T)
StanceGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
StanceGyro.P = 15000
StanceGyro.D = 750
StanceGyro.Name = "StanceGyro"
Power = math.huge
local Cam = Workspace.CurrentCamera
local function Kill(Obj)Obj.Parent:BreakJoints()end
local function TweenColor3x(Object,PropertyName,Start,End,Time,Async,StepCallback,Callback)
Object[PropertyName] = Start
local r,r2,g,g2,b,b2 = Start.r,End.r,Start.g,End.g,Start.b,End.b
local r3,g3,b3 = r,g,b
local Time = Time or 3
local function f()
for i = 1,Time *30 do
r3 = r3 +(r2 -r)/(Time *30)
g3 = g3 +(g2 -g)/(Time *30)
b3 = b3 +(b2 -b)/(Time *30)
Object[PropertyName] = Color3.new(r3,g3,b3)
Spawn(function()StepCallback(i,Time *30)end)
Wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = part.CFrame * CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end end
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
local function GetClosest(MaxDistance)
local Last,Lastx = MaxDistance +1
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")and v:findFirstChild("Torso")and v:findFirstChild("Humanoid").Health > 0 then
local t = v.Torso
local dist = (t.Position -T.Position).magnitude
if dist <= MaxDistance then
if dist < Last then
Last = dist
Lastx = v
end end end end
return Lastx
end
local function StopJoints()
for i,v in pairs(T:GetChildren())do
if v:IsA("Moter6D")then
v.DesiredAngle = 0
v.CurrentAngle = 0
end end
N.MaxVelocity = 0.5
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
end
function Direction()
if not Character then return{CFrame.new(0,0,0),CFrame.new(0,0,0)}end
return{CFrame.new(T.Position,Vector3.new(Cam.CoordinateFrame.x,T.Position.y,Cam.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(Cam.CoordinateFrame.p.x,T.CFrame.p.y,Cam.CoordinateFrame.p.z)}
end
function FaceForward()
StanceGyro.cframe = Direction()[1]
return StanceGyro.cframe
end
local function TweenColor3(Object,PropertyName,Start,End,Time,Async,Callback)
Object[PropertyName] = Start
local r,r2,g,g2,b,b2 = Start.r,End.r,Start.g,End.g,Start.b,End.b
local r3,g3,b3 = r,g,b
local Time = Time or 3
local Callback = Callback or loadstring('')
local function f()
for i = 1,Time *30 do
r3 = r3 +(r2 -r)/(Time *30)
g3 = g3 +(g2 -g)/(Time *30)
b3 = b3 +(b2 -b)/(Time *30)
Object[PropertyName] = Color3.new(r3,g3,b3)
Wait()
end
return Callback(Object)
end if Async then
f = coroutine.wrap(f)
end return f()end
function Damage(Vec,Object,Bool,Amt,DontDisplayDmg)
if Object.Parent:findFirstChild("AtlasRegistration")and Object.Parent.Name == Character.Name then return end
if Object.Parent == Character then return end
local Dmg,Humanoid = math.random(50,85),Object.Parent:findFirstChild("Humanoid")
if Bool then Dmg = math.random(15,45)end
if Amt then Dmg = Amt end
if Humanoid and not HitDebounce then
HitDebounce = true
if RageMode then Dmg = Dmg *math.random(2,4)end
if Awakend then Dmg = Dmg *math.random(5,10)end
if Humanoid.Health -Dmg <= 0 then Tag(Humanoid)end
Humanoid:TakeDamage(Dmg)
CurrentVictim = Object.Parent
local _CON = Humanoid.Died:connect(function()
LastKill = tick()
--Tag(Humanoid)
--DoScript(Game.Players:GetPlayerFromCharacter(Object.Parent),"CheckAndKill")
end)
delay(0.1,function()_CON:disconnect()end)
--DamageGui(Dmg)
coroutine.wrap(function()
if DontDisplayDmg then return end
local Head = Object.Parent:findFirstChild("Head")
if not Head then return end
for i = 1,3 do
local clr = Settings.Colors[2].Color
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
local sign = Dmg > 0 and '-' or '+'
txt.Text = sign..tostring(Dmg)
txt.TextWrapped = false
txt.Font = "SourceSansBold"
local x,y,z,r,g,b = clr.r,clr.b,clr.g,clr.r,clr.b,clr.g
coroutine.wrap(function()
for i = 1,10 do
txt.TextTransparency = txt.TextTransparency -0.1
bg.StudsOffset = Vector3.new(0,i/2,0)
bg.Size = UDim2.new(bg.Size.X.Scale +i/6,0,bg.Size.Y.Scale +i/6,0)
x = x +(Settings.Colors[2].Color.r -r)/10
y = y +(Settings.Colors[2].Color.g -g)/10
z = z +(Settings.Colors[2].Color.b -b)/10
clr = Color3.new(x,y,z)
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
local x,y,z,r,g,b = clr.r,clr.b,clr.g,0,0,0
for i = 1,11 do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.43,0)
x = x +(Settings.Colors[2].Color.r -r)/11
y = y +(Settings.Colors[2].Color.g -g)/11
z = z +(Settings.Colors[2].Color.b -b)/11
clr = Color3.new(x,y,z)
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
BP.force = Vec.CFrame.lookVector *2000
Game:GetService("Debris"):AddItem(BP,0.2)
end end
pcall(function()
Object.Parent:findFirstChild("Torso").RotVelocity = Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Object.Parent:findFirstChild("Torso").Velocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
end)
Wait(0.1)
HitDebounce = false
end end
Debounces = {
IsHealing = false;
IsCharging = false;
Attacking = false;
Floating = false;
Shielding = false;
Flying = false}
local function GetClosest(MaxDistance)
local Last,Lastx = MaxDistance +1
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")and v:findFirstChild("Torso")and v:findFirstChild("Humanoid").Health > 0 then
local t = v.Torso
local dist = (t.Position -T.Position).magnitude
if dist <= MaxDistance then
if dist < Last then
Last = dist
Lastx = v
end end end end
return Lastx
end
function Chat(Object,Text,Color,B)
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
if B then
coroutine.wrap(function()
local X = 2
for i = 1,40 do
X = X *-1
Txt.Rotation = X
if i%2 == 1 then
Txt.Text = math.random(1,2)== 2 and Txt.Text.." " or " "..Txt.Text
end
Wait()
end end)()end
TweenColor3(Txt,"TextColor3",Txt.TextColor3,Settings.Colors[2].Color,3,true,function(q)
for i = 1,30 do
q.TextTransparency = i/30
Wait()
end
G:Destroy()
end)end
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
local Mouse = Game.Players.LocalPlayer:GetMouse()
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
Tool.Name = "Atlas Sword"
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
if Awakend and Power -8000 < 0 then Power = Power -8000 return end
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
if Hit.Parent:findFirstChild("HitAlreadyAtlas")then return end
coroutine.wrap(ShakeCam)(1.1,0.01)
DoScript(Game.Players:GetPlayerFromCharacter(Hit.Parent),"ScreenFlash")
if PoisonMode then DoScript(Game.Players:GetPlayerFromCharacter(Hit.Parent),"Poisoned")end
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
pcall(function()
if Hit.Parent.Humanoid.Health > 10 then
Hit.Parent.Humanoid:TakeDamage(math.random(4,9))
end end)end end)()end
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
local RightGrip
coroutine.wrap(function()while Wait()do if not RightGrip and Equipped then RightGrip = RA:findFirstChild("RightGrip")end end end)()
--T.Anchored = true

-- to put in header:
local Gun
local function Recoil()
-- too damn lazy to do recoilll right now
end
-- to put in move:

for i,v in pairs(Debounces)do if v or Gun then return end end
Debounces.Attacking = true
Stance = ''
ChargePosition(false)
Gun = Instance.new("Model",Character)
Gun.Name = "AtlasGun"
local xxf = 30
local Tip = LA
local h1 = Instance.new("Part",Gun)
h1.Name = "-Handle"
h1.FormFactor = "Custom"
h1.TopSurface = 0
h1.BottomSurface = 0
h1.Material = "Ice"
h1.Anchored = true
h1.BrickColor = Settings.Colors[1]
h1.Size = Vector3.new(0.1,0.5,0.1)
local LeftGrip = Instance.new("Weld",h1)
LeftGrip.Part1 = h1
LeftGrip.Part0 = LA
LeftGrip.C0 = CFrame.new(0,-1,0,1,0,0,0,0,1,0,-1,0)
LeftGrip.C1 = CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)* CFrame.Angles(0,23,0)
local h2 = Instance.new("Part",Gun)
h2.FormFactor = "Custom"
h2.Name = "-Support"
h2.Material = "Ice"
h2.Anchored = true
h2.TopSurface = 0
h2.BottomSurface = 0
h2.BrickColor = Settings.Colors[1]
h2.Size = Vector3.new(1.355,1.5,1.355)
local gw1 = Instance.new("Weld",h2)
gw1.Part1 = h2
gw1.Part0 = LA
gw1.C0 = CFrame.new(0,-2,0)
local h3 = Instance.new("Part",Gun)
h3.FormFactor = "Custom"
h3.Name = "-Support"
h3.Anchored = true
h3.TopSurface = 0
h3.Material = "Marble"
h3.BottomSurface = 0
h3.BrickColor = Settings.Colors[1]
h3.Reflectance = 0.13
h3.Size = Vector3.new(1.351,1.025,1.351)
local h3m = Instance.new("CylinderMesh",h3)
h3m.Scale = Vector3.new(1,1,1)
local gw2 = Instance.new("Weld",h3)
gw2.Part1 = h3
gw2.Part0 = LA
gw2.C0 = CFrame.new(0,-1,0)
local h4 = Instance.new("Part",Gun)
h4.FormFactor = "Custom"
h4.Name = "-Support"
h4.Anchored = true
h4.TopSurface = 0
h4.Material = "Marble"
h4.BottomSurface = 0
h4.BrickColor = Settings.Colors[1]
h4.Size = Vector3.new(1.02505,0.55025,1.02505)
local gw3 = Instance.new("Weld",h4)
gw3.Part1 = h4
gw3.Part0 = LA
gw3.C0 = CFrame.new(0,-0.05,0)
local h5 = Instance.new("Part",Gun)
h5.FormFactor = "Custom"
h5.Name = "-Support"
h5.Anchored = true
h5.TopSurface = 0
h5.Material = "Marble"
h5.BottomSurface = 0
h5.BrickColor = Settings.Colors[1]
h5.Size = Vector3.new(1.02505,0.55025,1.02505)
local gw4 = Instance.new("Weld",h5)
gw4.Part1 = h5
gw4.Part0 = LA
gw4.C0 = CFrame.new(0,0.65,0)
local h6 = Instance.new("Part",Gun)
h6.FormFactor = "Custom"
h6.Name = "-Light"
h6.Anchored = true
h6.TopSurface = 0
h6.BottomSurface = 0
h6.BrickColor = Settings.Colors[2]
h6.Reflectance = 0.23
h6.Size = Vector3.new(1.355,0.005,1.355)
local h6m = Instance.new("CylinderMesh",h6)
h6m.Scale = Vector3.new(1,1,1)
local gw5 = Instance.new("Weld",h6)
gw5.Part1 = h6
gw5.Part0 = LA
gw5.C0 = CFrame.new(0,-1.05,0)
local h7 = Instance.new("Part",Gun)
h7.FormFactor = "Custom"
h7.Name = "-h0le"
h7.Anchored = true
h7.TopSurface = 0
h7.BottomSurface = 0
h7.BrickColor = BrickColor.new("Really black")
h7.Size = Vector3.new(1.248,1.03,1.248)
local h7m = Instance.new("CylinderMesh",h7)
h7m.Scale = Vector3.new(1,1,1)
local gw6 = Instance.new("Weld",h7)
gw6.Part1 = h7
gw6.Part0 = LA
gw6.C0 = CFrame.new(0,-1,0)
local h8 = Instance.new("Part",Gun)
h8.FormFactor = "Custom"
h8.Name = "-Barrle"
h8.Anchored = true
h8.TopSurface = 0
h8.BottomSurface = 0
h8.Material = "Marble"
h8.BrickColor = Settings.Colors[1]
h8.Size = Vector3.new(1.275,1.5,1.275)
local h8m = Instance.new("CylinderMesh",h8)
h8m.Scale = Vector3.new(1,1,1)
local gw7 = Instance.new("Weld",h8)
gw7.Part1 = h8
gw7.Part0 = LA
gw7.C0 = CFrame.new(0,-3.05,0)
local h9 = Instance.new("Part",Gun)
h9.FormFactor = "Custom"
h9.Name = "-Support"
h9.Anchored = true
h9.TopSurface = 0
h9.BottomSurface = 0
h9.Material = "Marble"
h9.BrickColor = Settings.Colors[1]
h9.Size = Vector3.new(3,0.05,0.05)
local gw8 = Instance.new("Weld",h9)
gw8.Part1 = h9
gw8.Part0 = h2
local h10 = Instance.new("Part",Gun)
h10.FormFactor = "Custom"
h10.Name = "-Support"
h10.Anchored = true
h10.TopSurface = 0
h10.BottomSurface = 0
h10.Material = "Marble"
h10.BrickColor = Settings.Colors[1]
h10.Size = Vector3.new(0.05,0.05,3)
local gw9 = Instance.new("Weld",h10)
gw9.Part1 = h10
gw9.Part0 = h2
local h11 = Instance.new("Part",Gun)
h11.FormFactor = "Custom"
h11.Name = "-Support"
h11.Anchored = true
h11.TopSurface = 0
h11.BottomSurface = 0
h11.Reflectance = 0.2
h11.Shape = "Ball"
h11.BrickColor = Settings.Colors[2]
h11.Size = Vector3.new(1,1,1)
local gw10 = Instance.new("Weld",h11)
gw10.Part1 = h11
gw10.Part0 = h8
gw10.C0 = CFrame.new(0,-0.5,0)
local h12 = Instance.new("Part",Gun)
h12.FormFactor = "Custom"
h12.Name = "-Support"
h12.Anchored = true
h12.TopSurface = 0
h12.BottomSurface = 0
h12.BrickColor = Settings.Colors[1]
h12.Material = "Ice"
h12.Size = Vector3.new(0.05,3,0.05)
local gw11 = Instance.new("Weld",h12)
gw11.Part1 = h9
gw11.Part0 = h12
gw11.C0 = CFrame.new(0,-0.5,1)

coroutine.wrap(function()
while Wait()do
if not Gun then break end
gw1.C0 = gw1.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/xxf,0)
gw11.C0 = gw11.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/(xxf/2),0)
end end)()
coroutine.wrap(function()
while true do
if not Gun then break end
TweenColor3(h6,"Color",h6.Color,Settings.Colors[h6.BrickColor == Settings.Colors[1]and 2 or 1],0.1,true)
TweenColor3(h11,"Color",h11.Color,Settings.Colors[h11.BrickColor == Settings.Colors[1]and 2 or 1],0.1)
end end)()
coroutine.wrap(function()
local inc = 0.05
for i = 1,8 do
inc = inc +1.25
Effect2(LA,inc,inc,inc,0,-1,0,Settings.Colors[2])
Wait()
end end)()
table.foreach(Gun:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.CanCollide = true
v.Anchored = false
end end)
pcall(function()Character.Animate.Disabled = true end)
local Connections = {}
OldSpeed = Character.Humanoid.WalkSpeed
table.insert(Connections,Mouse.Move:connect(function()
StanceGyro.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
end))
local Working,Stop = false,false
table.insert(Connections,Mouse.KeyUp:connect(function(k)
if k == 'x' then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Character.Humanoid.WalkSpeed = OldSpeed
Stance = 'Standing'
for i,v in pairs(Connections)do pcall(function()v:disconnect()end)end
pcall(function()
Character.Animate.Disabled = false
end)end end))
local CanShoot = true
table.insert(Connections,Mouse.Button1Down:connect(function()
if not CanShoot then return end
CanShoot = false
if Power -5000 < 0 or Stop then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Stance = 'Standing'
pcall(function()
Character.Animate.Disabled = false
end)table.foreach(Connections,function(_,v)
v:disconnect()
end)end
Power = Power -5000
Effect2(Tip,2,2,2,0,-1,0,Settings.Colors[2])
xxf = 15
local function Remove(Obj)
if Obj ~= nil and Obj.Parent ~= nil then
Implode(CFrame.new(Obj.Position)* CFrame.Angles(math.random(1,360),math.random(1,360),math.random(1,360)),Obj.BrickColor)
Obj:Destroy()
end end
local DIR =(Tip.Position -(Tip.CFrame * CFrame.new(0,5,0)).p).unit
local _Out = false
local function Hitx(Hit,o,Bool)
if not Hit then return end
if Hit.Parent ~= Character and Hit.Parent.Parent ~= Character then
if Hit.Parent ~= Workspace  then
if not(Hit.Parent:findFirstChild("Humanoid")or Hit.Parent.Parent:findFirstChild("Humanoid"))and Hit.Parent:IsA("Model")then Hit.Parent:BreakJoints()end
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
v.Velocity = o.Velocity.unit *300
v.RotVelocity = o.Position:Lerp(T.Position,0.5)
delay(0.6,function()
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = v.Velocity
end)end end end
if Hit.Parent:findFirstChild("Humanoid")or Hit.Parent.Parent:findFirstChild("Humanoid")then
Damage(o,Hit.Parent:findFirstChild("Torso")or Hit.Parent.Parent:findFirstChild("Torso"),true,o.Size.Y *15)
end
o.Anchored = true
_Out = true
if not CanShoot then
CanShoot = true
xxf = 30
end for i = 1,10 do
o.Transparency = i/10
o.Mesh.Scale = o.Mesh.Scale+Vector3.new(0.2,0.2,0.2)
Wait()
end
o:Destroy()
end end
local fs =(LA.CFrame * CFrame.new(0,-2,0)).p
local Hitd,posx = Workspace:FindPartOnRay(Ray.new(fs,(Mouse.Hit ~= nil and Mouse.Hit.p or Vector3.new(0,0,0)- fs).unit *1000),Character)
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[2]
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Hitd and Vector3.new(4,4,4)or Vector3.new(3,3,3)
p.CFrame = LA.CFrame * CFrame.new(0,-1.4,0)
p.Touched:connect(function(f)Hitx(f,p)end)
Instance.new("SpecialMesh",p).MeshType = "Sphere"
p:BreakJoints()
coroutine.wrap(function()
while Wait(0.06)do
if _Out then break end
for i = 1,2 do
local n = p
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[1]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-5,5),math.random(-10,10))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
m.Scale = Vector3.new(1,1,1)
Game:GetService("Debris"):AddItem(p,3)
m.Name = "Triangle"
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(2,2,0)
Wait()
end
p:Destroy()
end)()end
for i = 1,2 do
local n = p
local p = Instance.new("Part")
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = n.CFrame
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end
for i = 1,2 do
local n = p
local p = Instance.new("Part")
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = n.CFrame
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Brick"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end
local hxpos = p.Position
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
local Hn = v:findFirstChild("Humanoid")
if Hn and Hn.Health > 0 then
local Tf = v:findFirstChild("Torso")
if Tf then
if(Tf.Position-hxpos).magnitude <= 11 then
Hn:TakeDamage(50)
local vv = p.BodyVelocity:Clone()
vv.velocity = vv.velocity +(Tf.Position -hxpos).unit *10
vv.Parent = Tf
Game:GetService("Debris"):AddItem(vv,0.7)
end end end end end end end)()
coroutine.wrap(function()
for i = 1,20 do
if _Out then break end
Wait(0.1)
local n = p
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = n.CFrame
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end end)()
local v = Instance.new("BodyVelocity",p)
v.P = 5000
v.maxForce = Vector3.new(math.huge,math.huge,math.huge)
v.velocity = DIR *(Hitd and 470 or 235)
delay(4.5,function()
Remove(p)
_Out = true
xxf = 30
end)
Wait(6)
if not CanShoot then
CanShoot = true
end end))
table.insert(Connections,Mouse.Button1Up:connect(function()Working = false end))
coroutine.wrap(function()
ChargePosition(false)
Stance = ''
FaceForward()
StanceGyro.cframe = StanceGyro.cframe
local DIR = T.CFrame.lookVector
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/2,math.pi/2,0)* CFrame.new(-0.25,0,-0.5)
LS.DesiredAngle = 0
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/6,0,0)
while Wait()do
if Stop then break end
Stance = ''
N.DesiredAngle = 1.4
Character.Humanoid.WalkSpeed = 0
Wait()
end
N.DesiredAngle = 0
end)()