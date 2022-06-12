Wait()local Player = Game.Players.LocalPlayer
local Character,Backpack,PlayerGui,CurrentCamera = Player.Character,Player.Backpack,Player.PlayerGui,Workspace.CurrentCamera
local T,H,RL,LL,LA,RA,HU = Character.Torso,Character.Head,Character["Right Leg"],Character["Left Leg"],Character["Left Arm"],Character["Right Arm"],Character.Humanoid
local N,LS,RS,LH,RH = T.Neck,T["Left Shoulder"],T["Right Shoulder"],T["Left Hip"],T["Right Hip"]
local Tool = Instance.new("HopperBin",Backpack)
Tool.Name = "Kronos"
Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset?id=167115397")-- bs
Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset?id=167197110")-- chs
Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=167222585")-- cre
Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=167222604")-- cae
Tool.Selected:wait()
pcall(function()Character.Animate:Destroy()end)
local Equipped = true
local _Mouse = Player:GetMouse()
local Face = H.face
Face.Texture = "http://www.roblox.com/asset/?id=167222604"
local _DEBOUNCE = true
local StanceGyro = Instance.new("BodyGyro")
StanceGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
StanceGyro.P = 15000
StanceGyro.D = 750
StanceGyro.Name = "StanceGyro"
local TState,Debounces,SState,MaxHealth,MaxPower,Settings,CurrentPower = "Normal",{
SwordDamage = false,
Attacking = false,
Teleportin = false,
Slowing = false,
Floating = false,
Shielding = false,
},"Standing",1110,15000,{
Colors = {Color3.new(1,1,1),Color3.new(0,0,0)}
},15000
function Lightning(Start,End,Amt,Offset,Color,Thickness,Transparency,Parent,Time)
local o =(Start -End).magnitude
local cp = Start
local Offsets = {-Offset,Offset} 
for i = 1,Amt do 
local p = Instance.new("Part",Parent)
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.Transparency = Transparency or 0.4
p.Color = Color
p.formFactor = "Custom"
p.CanCollide = false
p.Size = Vector3.new(Thickness,Thickness,o/Amt)
local ofs = Vector3.new(Offsets[math.random(1,2)],Offsets[math.random(1,2)],Offsets[math.random(1,2)]) 
local np = CFrame.new(cp,End)* CFrame.new(0,0,o/Amt).p +ofs 
if Amt == i then 
local o2 =(cp -End).magnitude
p.Size = Vector3.new(Thickness,Thickness,o2) 
p.CFrame = CFrame.new(cp,End)* CFrame.new(0,0,-o2/2) 
else
p.CFrame = CFrame.new(cp,np)* CFrame.new(0,0,o/Amt/2) 
end
cp = p.CFrame * CFrame.new(0,0,o/Amt/2).p
Game:GetService("Debris"):AddItem(p,Time)
Wait()
end end
local function PlaySound(ID,Pitch,Volume,Origin,PlayOnRemove)
local p = Instance.new("Part",Workspace)
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
p.Locked = true
p.CFrame = Origin
local s = Instance.new("Sound",p)
s.SoundId = ID
s.Volume = Volume
s.Pitch = Pitch
if not PlayOnRemove then
s.PlayOnRemove = true
s:Destroy()
p:Destroy()
return end
return p
end local function TweenColor3(Object,PropertyName,Start,End,Time,Async,Callback)
Object[PropertyName] = Start
local r,r2,g,g2,b,b2 = Start.r,End.r,Start.g,End.g,Start.b,End.b
local r3,g3,b3 = r,g,b
local Time = Time or 3
local Callback = Callback or(function()end)
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
local function GetClosest(MaxDistance)
local Last,Lastx = MaxDistance +1
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")and v:findFirstChild("Torso")and v:findFirstChild("Humanoid").Health > 0 then
local t = v.Torso
local dist =(t.Position -T.Position).magnitude
if dist <= MaxDistance then
if dist < Last then
Last = dist
Lastx = v
end end end end
return Lastx
end
local function ResetWelds(a)
N.DesiredAngle = 0
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
N.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
RS.DesiredAngle = 0
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
LS.DesiredAngle = 0
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
RH.DesiredAngle = 0
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
LH.DesiredAngle = 0
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
if not a then
Wait()
end end
local function GetDirection()
if not Player or not CurrentCamera or not Character then
return{CFrame.new(0,0,0),CFrame.new(0,0,0)}
end return{CFrame.new(T.Position,Vector3.new(CurrentCamera.CoordinateFrame.x,T.Position.y,CurrentCamera.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(CurrentCamera.CoordinateFrame.p.x,T.CFrame.p.y,CurrentCamera.CoordinateFrame.p.z)}end
local function FaceForward()
StanceGyro.cframe = GetDirection()[1]
return StanceGyro.cframe
end
local function allpartspls()
local n = 0
local function o(l)
for i,v in pairs(l:GetChildren())do
if v:IsA("BasePart")then
n = n +v:GetMass()
else o(v)
end end end
o(Character)
return n
end
local function DoDamage(c,Damage,Heal,DisregardFF)
if c ~= nil then
local h,hu = c:findFirstChild("Head"),c:findFirstChild("Humanoid")
if hu then
if DisregardFF then hu.Health = hu.Health -Damage else hu:TakeDamage(Damage)end
if Heal then HU:TakeDamage(Damage *-1)end
if h then
local BillboardGui = Instance.new("BillboardGui",c)
BillboardGui.Adornee = h
BillboardGui.Size = UDim2.new(5,0,5,0)
BillboardGui.StudsOffset = Vector3.new(0,2,0)
local Txtlbl = Instance.new("TextLabel",BillboardGui)
Txtlbl.Size = UDim2.new(1,0,1,0)
Txtlbl.TextColor3 = Color3.new(0,0,0)
Txtlbl.BackgroundTransparency = 1
Txtlbl.TextScaled = true
Txtlbl.Font = "SourceSansBold"
Txtlbl.Text = Damage
Game:GetService("Debris"):AddItem(BillboardGui,10)
coroutine.wrap(function()
for i = 1,32 do
Txtlbl.TextTransparency = i/65
Txtlbl.TextColor3 = Color3.new(i/32,i/32,i/32)
Txtlbl.Rotation = math.random(-5,5)
BillboardGui.StudsOffset = BillboardGui.StudsOffset +Vector3.new(0,i/128,0)
Wait()
end
for i = 1,32 do
Txtlbl.Rotation = 360/(i/32)
Txtlbl.Text = Txtlbl.Text:sub(1,1)..Txtlbl.Text:sub(2,#Txtlbl.Text-1)..(" "):rep(i)..Txtlbl.Text:sub(#Txtlbl.Text,#Txtlbl.Text)
Wait()
end
BillboardGui:Destroy()
end)()end end end end
local function DamageNear(Position,Damage,Distance,ShowDmg,Effect)
local Hit = {}
for i,v in pairs(Workspace:GetChildren())do
if v ~= Character and v:IsA("Model")and not Hit[v.Name]then
local h,t = v:findFirstChild("Humanoid"),v:findFirstChild("Torso")
if h and t then
if(t.Position -Position).magnitude <= Distance then
if not ShowDmg then
v.Humanoid:TakeDamage(Damage)
else
DoDamage(v,Damage)
end
coroutine.wrap(function()
Effect(v)
end)()
Hit[v.Name]= true end end end end end
local function IsNear(Position,Distance,SinglePlayer)
if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
local List = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
if v:findFirstChild("Torso")then
if v ~= Character then
if(v.Torso.Position -Position).magnitude <= Distance then
table.insert(List,v)
end end end end end
return List
end
local function TweenTimeOfDay(NewTime,Time,Async)
local function f()
local Start,Cached = Game.Lighting:GetMinutesAfterMidnight(),Game.Lighting.TimeOfDay
Game.Lighting.TimeOfDay = NewTime
local End = Game.Lighting:GetMinutesAfterMidnight()
Game.Lighting.TimeOfDay = Cached
local N = Start
for i = 1,Time *30 do
N = N +(End -Start)/(Time *30)
Game.Lighting:SetMinutesAfterMidnight(N)
Wait()
end end
if Async then return coroutine.wrap(f)()end
return f()
end
local function Chat(Text,rot)
-- removd, he has no mout
end
local function GenTimer(Time)
local Timer = Instance.new("ScreenGui",PlayerGui)
Timer.Name = "T1mer"
local Frame = Instance.new("Frame",Timer)
Frame.BackgroundColor3 = Settings.Colors[2]
Frame.BorderSizePixel = 5
Frame.BorderColor3 = Settings.Colors[1]
Frame.Size = UDim2.new(0.2,0,0.1,0)
Frame.Position = UDim2.new(0.4,0,0,0)
Frame.ZIndex = 9
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.TextColor3 = Settings.Colors[1]
Txt.BackgroundTransparency = 1
Txt.Text = Time
Txt.TextScaled = true
Txt.TextWrapped = false
Txt.Font = "SourceSansBold"
Txt.ZIndex = 10
Game:GetService("Debris"):AddItem(Timer,Time +2)
coroutine.wrap(function()
for i = Time,0,-1 do
Txt.Text = i
Wait(1)
end for i = 1,30 do
Frame.BackgroundTransparency = i/30
Txt.TextTransparency = i/30
Txt.Rotation = Txt.Rotation +(360/30)
Wait()
end end)()end
local function Blood(Object)
local iPos = Object.Position + Vector3.new(math.random(-Object.Size.X,Object.Size.X)/2,0,math.random(-Object.Size.Z,Object.Size.Z)/2)
local Quantity = math.random(1,3)
local Hit,Pos,TimedOut = 0,0,0
while Wait()do
TimedOut = TimedOut +1
iPos = Object.Position
Hit,Pos = Workspace:FindPartOnRay(Ray.new(iPos,(iPos -(iPos +Vector3.new(0,1000,0))).unit *1000),Character)
if Quantity == 0 then break end
Quantity = Quantity -1
local __Hit = false
local Bld = Instance.new("Part",Object.Parent)
Bld.Locked = true
Bld.Anchored = false
Bld.CanCollide = false
Bld.Size = Vector3.new(1,1,1)
Bld.Color = Color3.new(1,0,0)
Bld.TopSurface = 0
Bld.BottomSurface = 0
Bld.CFrame = Object.CFrame * CFrame.new(0,Object.Size.Y/2,0)
Bld.Reflectance = 0.05
local id = Instance.new("StringValue",Bld)
id.Name = "BLODPLS"
local bm = Instance.new("SpecialMesh",Bld)
bm.MeshType = "Sphere"
bm.Scale = Vector3.new(Quantity,Quantity,Quantity)
local bpos = Instance.new("BodyPosition",Bld)
bpos.position = Pos
bpos.P = 1500
bpos.D = 0
bpos.maxForce = Vector3.new(12000,12000,12000)
local _C;_C = Bld.Touched:connect(function(ohit)
if ohit:IsDescendantOf(ohit.Parent)or ohit == Object or ohit:findFirstChild("BLODPLS")then return end
__Hit = true
Bld.CFrame = CFrame.new(Pos)
Bld.Anchored = true
bpos:Destroy()
coroutine.wrap(function()
for i = 1,15 do
bm.Scale = bm.Scale + Vector3.new(math.random(10,25)/10,0.05,math.random(10,25)/10)
Wait()
end bm.Scale = Vector3.new(bm.Scale.X,1 +(bm.Scale.X/bm.Scale.Z),bm.Scale.Z)end)()_C:disconnect()end)
Game:GetService("Debris"):AddItem(Bld,35)
repeat
bpos.P = bpos.P +(bm.Scale.X * bm.Scale.Y * bm.Scale.Z)
bm.Scale = bm.Scale + Vector3.new(0,(bpos.P/196.2)/Bld.Velocity.unit,0)
Wait()
until __Hit or TimedOut == 450
TimedOut = 0
__Hit = false
coroutine.wrap(function()
while Wait()do if not Bld or bm.Scale.Y <= 0 then break end
bm.Scale = bm.Scale + Vector3.new(0.005,-0.01,0.005)
end end)()end end
local function GetAllParts()
local oreos = {}
local function o(obj)
for i,v in pairs(obj:GetChildren())do
if v:IsA("BasePart")and not v.Parent:findFirstChild("Humanoid")and not v:IsDescendantOf(Character)then
table.insert(oreos,v)
end
o(v)
end end
o(Workspace)
return oreos
end
local function GetAllChildren(Object)
local cookies = {}
local function o(Ob)
for i,v in pairs(Ob:GetChildren())do
table.insert(cookies,v)
o(v)
end end
o(Object)
return cookies
end
local function GetBiggestVector(Vector)
local x,y,z = Vector.X,Vector.Y,Vector.Z
if x >= y and x >= z then
return x end
if y >= x and y >= z then
return y end
if z >= x and z >= y then
return z end end
local function AllHumanoids()
local ret = {}
for i,v in pairs(Workspace:GetChildren())do
if v:findFirstChild("Humanoid")then
table.insert(ret,v)
end end
return ret
end local Scripts = {}
local function AddScript(Name,Source)
local s = script:Clone()
s.Disabled = true
s.Name = Name
local src = s:findFirstChild("DSource")or s:findFirstChild("Source")or s:findFirstChild("code")or s:findFirstChild("StringValue")
if not src then s:Destroy()return end
src.Value = [[
Game:GetService("Debris"):AddItem(script,30)
pcall(function()script:findFirstChild("Owner").Value = Game.Players.LocalPlayer end)
]]..Source
s.Parent = Tool
Scripts[Name] = s
return s
end
DoScript = function(Player,Name)
pcall(function()
local x = Scripts[Name]:Clone()
x.Parent = Player:findFirstChild("Backpack")or Player.Character ~= nil and Player.Character or Instance.new("Backpack",Player)
pcall(function()x:findFirstChild("Owner").Value = Player end)
x.Disabled = false
end)end
AddScript("CameraShake",[[
local Cam = Workspace.CurrentCamera
local d = false
delay(3.5,function()d = true end)
while true do
if d then break end
local x,y,z = math.random(-4,6),math.random(-3,2),math.random(-4,7)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(x,y,z)
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(-x,-y,-z)
Wait()
end
script:Destroy()
]])
AddScript("FadeToBlue",[[
local function TweenColor3(Object,PropertyName,Start,End,Time,Async,StepCallback,Callback)
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
end end
return CallBack and Callback()
end
local PlayerGui = Game.Players.LocalPlayer.PlayerGui
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundColor3 = Color3.new(1,1,1)
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
TweenColor3(Fr,"BackgroundColor3",Fr.BackgroundColor3,Color3.new(60/255,177/255,1),4.657,false,function(Step,Max)
Fr.BackgroundTransparency = Step/Max
end)
Main:Destroy()
script:Destroy()
]])
AddScript("SFlash",[[
local function TweenColor3(Object,PropertyName,Start,End,Time,Async,StepCallback,Callback)
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
local PlayerGui = Game.Players.LocalPlayer.PlayerGui
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundTransparency = 1
Fr.BackgroundColor3 = Color3.new(1,1,1)
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
Wait(1/30)
Fr.BackgroundTransparency = 0.1
TweenColor3(Fr,"BackgroundColor3",Fr.BackgroundColor3,Color3.new(0,0,0),1.55,false,function(Step,Max)
Fr.BackgroundTransparency = Step/Max
end)
Main:Destroy()
script:Destroy()
]])
AddScript("CrazyEyes",[[Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=167222585")
local SG = Instance.new("ScreenGui",Game.Players.LocalPlayer.PlayerGui)
Game:GetService("Debris"):AddItem(SG,5)
local ImageLabel = Instance.new("ImageLabel",SG)
ImageLabel.Size = UDim2.new(1,0,1,0)
ImageLabel.BackgroundColor3 = Color3.new(1,1,1)
ImageLabel.ZIndex = 10
ImageLabel.Image = "http://www.roblox.com/asset/?id=167222585"
for i = 1,15 do
ImageLabel.ImageTransparency = i/15
ImageLabel.BackgroundTransparency = i/15
Wait()
end
SG:Destroy()]])
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
local RiseRate = 1
local KeyBindings = {
x = function()
local Target = GetClosest(125)
if Debounces.Attacking or not Target or CurrentPower -MaxPower < 0 then return end
CurrentPower = CurrentPower -MaxPower
LOCALDEBOUNCE = true
Debounces.Attacking = true
SState = "Null"
ResetWelds()
local F,o = H.face.Texture,false
H.face.Texture = "http://www.roblox.com/asset/?id=167222585"
local Bpos = Instance.new("BodyPosition",T)
Bpos.position = T.Position
Bpos.P = 5500
Bpos.D = Bpos.D -12
Bpos.maxForce = Vector3.new(100000,1000000,1000000)
Wait(2)
coroutine.wrap(function()
while Wait()do
if not LOCALDEBOUNCE then break end
StanceGyro.cframe = CFrame.new(T.Position,Target.Torso.Position)* CFrame.fromEulerAnglesXYZ(o and -math.rad(32)or 0,0,0)
if o then
Bpos.position = Target.Torso.Position
end end end)()
for i = 1,30 do
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/90,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/90,0,0)
Wait()
end
local qLOCALDEBOUNCE = true
local clolorl = Settings.Colors[2]
local no = true
coroutine.wrap(function()
while Wait(0.05)do
if no then
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.Color = clolorl
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.Locked = true
S.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(1.6,1.6,1.6)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.Color = Settings.Colors[2]
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.Locked = true
S.CFrame = LA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(1.6,1.6,1.6)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end end end)()
coroutine.wrap(function()
local Old =(LA.CFrame * CFrame.new(0,-1,0)).p
while Wait()do
if not qLOCALDEBOUNCE then break end
local New =(LA.CFrame * CFrame.new(0,-1,0)).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.Color = Settings.Colors[2]
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(0.5,0.5,0.5)
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
end end)()end end)()
coroutine.wrap(function()
local Old =(RA.CFrame * CFrame.new(0,-1,0)).p
while Wait()do
if not qLOCALDEBOUNCE then break end
local New =(RA.CFrame * CFrame.new(0,-1,0)).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.Color = Settings.Colors[2]
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(0.5,0.5,0.5)
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
end end)()end end)()
o = true
repeat Wait()until(Target.Torso.Position -T.Position).magnitude <= 5
o = false
Wait(0.5)
LOCALDEBOUNCE = false
coroutine.wrap(function()
for i = 1,3 do
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/3)
Wait()
end local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[1]
p.Transparency = 1
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-1,0)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(6,6,0.006)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
Game:GetService("Debris"):AddItem(p,3)coroutine.wrap(function()
for i = 1,25 do
p.Transparency = p.Transparency -(1/50)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10))
m.Scale = m.Scale +Vector3.new(0.125,0.125,0.015)
Wait()
end
p:Destroy()
end)()end)()
for i = 1,15 do
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/75,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/75,0,0)
Wait()
end local epos =(CFrame.new(Target.Torso.Position)* CFrame.new(0,300,0)).p
local bp = Instance.new("BodyPosition",Target.Torso)
bp.P = 3000
bp.maxForce = Vector3.new(100000,100000,100000)
bp.D = bp.D -12
bp.position = epos
for i = 1,3 do
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/6)
Wait()
end qLOCALDEBOUNCE = false ResetWelds()repeat
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[2]
p.Transparency = 1
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-3,0)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(0,0,0)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
Game:GetService("Debris"):AddItem(p,3)coroutine.wrap(function()
for i = 1,25 do
p.Transparency = p.Transparency -(1/50)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-10,10)/10,0)
m.Scale = m.Scale +Vector3.new(0.5,0.125,0.5)
Wait()
end
p:Destroy()
end)()local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[2]
p.Transparency = 1
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-1,0)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(6,6,0.006)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
Game:GetService("Debris"):AddItem(p,3)coroutine.wrap(function()
for i = 1,25 do
p.Transparency = p.Transparency -(1/50)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10))
m.Scale = m.Scale +Vector3.new(0.125,0.125,0.015)
Wait()
end
p:Destroy()
end)()Wait()
until(Target.Torso.Position -epos).magnitude <= 3
for i = 1,15 do
for _,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")and v.Name ~= "HumanoidRootPart" then
v.Transparency = i/15
end end
Wait()
end local t = H.face.Texture
H.face.Texture = ''
Target.Torso.Anchored = true
Bpos.position =(Target.Torso.CFrame * CFrame.new(0,0,-6)).p
repeat Wait()until(T.Position -Bpos.position).magnitude <= 3
local _l = false
coroutine.wrap(function()
while Wait()do
if LOCALDEBOUNCE then break end
StanceGyro.cframe = CFrame.new(T.Position,Target.Torso.Position)
if _l then StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)end
LS.C0 = LS.C0
RS.C0 = RS.C0
LH.C0 = LH.C0
RH.C0 = RH.C0
end end)()
coroutine.wrap(function()
for i = 1,15 do
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/90,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/75,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/75,0,0)
Wait()
end end)()
for i = 1,15 do
for _,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")and v.Name ~= "HumanoidRootPart" then
v.Transparency = v.Transparency -(1/15)
if i == 15 then v.Transparency = 0 end end end
Wait()
end H.face.Texture = t
Wait(1)
Target.Torso.Anchored = false
_l = true
for q = 1,7 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)
coroutine.wrap(function()
Wait(0.5)
for i = 1,3 do
local p3 = Instance.new("Part",Character)
p3.Locked = true
p3.Anchored = true
p3.CanCollide = false
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Size = Vector3.new(1,1,1)
p3.Color = Settings.Colors[2]
p3.CFrame = RA.CFrame * CFrame.new(0,-2,0)* CFrame.new(math.random(-50,50)/10,math.random(-50,50)/10,math.random(-50,50)/10)
local bm3 = Instance.new("BlockMesh",p3)
bm3.Scale = Vector3.new(0.01,0.01,0.01)
Game:GetService("Debris"):AddItem(p3,3)
TweenColor3(p3,"Color",p3.Color,Settings.Colors[1],0.8,true)
coroutine.wrap(function()
for n = 1,25 do
p3.Transparency = n/25
bm3.Scale = bm3.Scale +Vector3.new(0.008,0.008,0.008)
p3.CFrame = p3.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
Wait()
end p3:Destroy()end)()end end)()
Wait()
end
bp.Parent = Target.Head
bp.position =(RA.CFrame * CFrame.new(0,-1.5,0)).p
bp.P = 30000
local g = Instance.new("BodyGyro",Target.Torso)
g.P = 15000
g.maxTorque = Vector3.new(10000,10000,100000)
g.cframe = CFrame.new(Target.Torso.Position,T.Position)
local Hit,Pos = Workspace:FindPartOnRayWithIgnoreList(Ray.new(T.Position,((T.CFrame * CFrame.new(0,-285,0)).p -T.Position).unit *1000),{Character,unpack(AllHumanoids())})
if Hit then
LOCALDEBOUNCE = true
coroutine.wrap(function()while Wait()do if not LOCALDEBOUNCE then break end Target.Torso.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)end end)()
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
Wait(1)
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[2]
p.Transparency = 1
p.CFrame = CFrame.new(Target.Head.Position)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(6,6,0.006)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
Game:GetService("Debris"):AddItem(p,3)coroutine.wrap(function()
for i = 1,25 do
p.Transparency = p.Transparency -(1/50)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10))
m.Scale = m.Scale +Vector3.new(1.125,1.125,0.015)
Wait()
end
p:Destroy()
end)()
bp.Parent = Target.Torso
bp.P = 12000
clolorl = Color3.new(1,0,0)
StanceGyro.P = 120000
for i = 1,15 do
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/75,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/75,0,0)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/22.5,0)
clolorl = Color3.new(i/15,i/15,i/15)
Wait()
end
clolorl = Color3.new(1,0,0)
for ixlilol = 1,3 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/3.25,0)
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[math.random(1,2)]
p.Transparency = 1
p.CFrame = CFrame.new(T.Position)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(6,6,0.006)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
Game:GetService("Debris"):AddItem(p,3)coroutine.wrap(function()
for i = 1,25 do
p.Transparency = p.Transparency -(1/50)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10))
m.Scale = m.Scale +Vector3.new(1.125,1.125,0.015)
Wait()
end
p:Destroy()
end)()
Wait()
end bp.position = Pos
LOCALDEBOUNCE = false
repeat Wait()until(Target.Torso.Position -Pos).magnitude <= 3
for i = 1,55 do
local p = Instance.new("Part",Workspace)
p.FrontSurface = Hit.TopSurface
p.Material = Hit.Material
p.TopSurface = Hit.TopSurface
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = Hit.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),Pos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(45 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
Wait()
end
p:Destroy()
end)if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
Wait(0.1)
f.Enabled = false
Wait(1)
f:Destroy()
end)()end end coroutine.wrap(function()
for i = 1,10 do
for i = 1,7 do
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
Game:GetService("Debris"):AddItem(p,20 +i *0.1)
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
end end)()coroutine.wrap(function()
local Pos = CFrame.new(Target.Torso.Position -Vector3.new(0,2,0))
for i,v in pairs(IsNear(Pos.p,500))do
DoDamage(v,25)
DoScript(Game.Players:GetPlayerFromCharacter(v),"CameraShake")
end for i = 1,5 do
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[2]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(1,1,1)
pm.MeshType = "Sphere"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(10,11,10)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[1]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("CylinderMesh",p)
pm.Scale = Vector3.new(1,1,1)
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = Pos * CFrame.fromEulerAnglesXYZ(math.pi/math.random(-3,3),math.pi/math.random(-3,3),math.pi/math.random(-3,3))
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(0.75,1000,0.75)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(1,1,1)
pm.MeshId = "http://www.roblox.com/asset/?id=20329976"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(13,0.5,13)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[1]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(1,1,1)
pm.MeshId = "http://www.roblox.com/asset/?id=20329976"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-10,10)/10,0)
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(13,0.5,13)
Wait()
end
p:Destroy()
end)()
Wait(0.05)
end end)()
no = false
local lulkbro = false
local Size = 5
coroutine.wrap(function()
while Wait()do
if lulkbro then break end
Target.Humanoid.PlatformStand = true
Target.Torso.CFrame = CFrame.new(Pos)* CFrame.new(0,1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end end)()
FaceForward()
for i = 1,15 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/23,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/90,0,0)
Wait()
end
ResetWelds()
H.face.Texture = F
if math.floor(Target.Humanoid.Health)<= 0 then
Debounces.Attacking = false
SState = "Standing"
bp:Destroy()
Bpos:Destroy()
g:Destroy()
return end
StanceGyro.cframe = CFrame.new(T.Position,Target.Torso.Position)
StanceGyro.P = 14000
for lololol = 1,30 do
if lololol < 15 then
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/30)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/30)
else
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
end
Wait()
end ResetWelds()
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/2,math.pi)
local d = H.face.Texture
H.face.Texture = ''
no = false
for i = 1,30 do
for _,v in pairs(Character:GetChildren())do
if v.Name ~= "HumanoidRootPart" and v:IsA("BasePart")then
v.Transparency = i/30
end end Wait()end
no = true
clolorl = Settings.Colors[2]
Bpos.position = Pos + Vector3.new(0,2,-90)
clr = Color3.new(1,0,0)
clr2 = Color3.new(1,0,0)
Wait(0.5)
local ve = Size/90
local CachedTime = Game.Lighting.TimeOfDay
TweenTimeOfDay("00:00:00",3,true)
for i = 1,90 do
Size = Size -ve
Wait()
end _LAL = false
coroutine.wrap(function()
for i = 1,30 do
for _,v in pairs(Character:GetChildren())do
if v.Name ~= "HumanoidRootPart" and v:IsA("BasePart")then
v.Transparency = v.Transparency -(1/30)
end end Wait()end
H.face.Texture = d end)()
coroutine.wrap(function()
for i,v in pairs(IsNear(Pos,95))do
DoDamage(v,130,false,true)
DoScript(Game.Players:GetPlayerFromCharacter(v),"CameraShake")
DoScript(Game.Players:GetPlayerFromCharacter(v),"SFlash")
end local Pos = CFrame.new(Pos)for i = 1,26 do
local lSize,u = i *4.15267,i/1.110115
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = clr
p.Size = Vector3.new(1,1+(u^1.5),1)
p.CFrame = Pos * CFrame.new(0,p.Size.Y,0)
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(1,1+(u^1.5),1)
pm.MeshId = "http://www.roblox.com/asset/?id=20329976"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-10,10)/10,0)
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(7,0.5,7)
Wait()
end
p:Destroy()
end)()
local p4 = Instance.new("Part",Character)
p4.Locked = true
p4.Anchored = true
p4.CanCollide = false
p4.TopSurface = 0
p4.BottomSurface = 0
p4.Size = Vector3.new(1,1,1)
p4.Color = Color3.new(0,0,0)
p4.CFrame = Pos * CFrame.new(0,10,0)* CFrame.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local bm4 = Instance.new("SpecialMesh",p4)
bm4.Scale = Vector3.new(lSize *0.545,lSize *0.545,lSize *0.545)
bm4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Game:GetService("Debris"):AddItem(p4,3)
coroutine.wrap(function()
for n = 1,25 do
bm4.Scale = bm4.Scale -Vector3.new(lSize *0.025,lSize *0.025,lSize *0.025)
p4.Transparency = n/50
p4.CFrame = p4.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
Wait()
end
p4:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = 0.5
p.Color = Color3.new(0,0,0)
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos * CFrame.fromEulerAnglesXYZ((math.pi/math.random(-4,4))*math.random(-math.ceil(u),math.ceil(u)),(math.pi/math.random(-4,4))*math.random(-math.ceil(u),math.ceil(u)),(math.pi/math.random(-4,4))*math.random(-math.ceil(u),math.ceil(u)))
local pm = Instance.new("CylinderMesh",p)
pm.Scale = Vector3.new(0.75*35,35000,0.7*35)
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.Reflectance = n/140
p.Transparency = p.Transparency -(0.5/35)
pm.Scale = pm.Scale -Vector3.new(0.75,1000,0.75)
Wait()
end
p:Destroy()
end)()
local p4 = Instance.new("Part",Character)
p4.Locked = true
p4.Anchored = true
p4.CanCollide = false
p4.TopSurface = 0
p4.BottomSurface = 0
p4.Size = Vector3.new(1,1,1)
p4.Transparency = 1
p4.Color = Color3.new(0,0,0)
p4.CFrame = Pos * CFrame.new(0,10,0)
local bm4 = Instance.new("SpecialMesh",p4)
bm4.Scale = Vector3.new(lSize *6,lSize *6,lSize *6)
bm4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Game:GetService("Debris"):AddItem(p4,3)
coroutine.wrap(function()
for n = 1,25 do
bm4.Scale = bm4.Scale -Vector3.new((lSize *6)/25,(lSize *6)/25,(lSize *6)/25)
p4.Transparency = p4.Transparency -(1/25)
p4.CFrame = p4.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
Wait()
end
p4:Destroy()
end)()
Wait(0.025)
end
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Color3.new(0,0,0)
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos * CFrame.new(0,35,0)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(0,0,0)
pm.MeshId = "http://www.roblox.com/asset/?id=24388358"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.Transparency = n/35
pm.Scale = pm.Scale +Vector3.new(18.5,18.5,18.5)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-30,30),math.random(-30,30),math.random(-30,30))
Wait()
end
p:Destroy()
end)()TweenTimeOfDay(CachedTime,3,true)end)()
else
ResetWelds()
for i = 1,15 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/70,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/75,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/75,0,0)
Wait()
end Bpos.position =(Target.Torso.CFrame * CFrame.new(0,0,30)).p
local lolj = true;coroutine.wrap(function()while Wait()do if not lolj then break end g.cframe = CFrame.new(Target.Torso.Position,T.Position)end end)()for i = 1,15 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/65,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/115,0,0)
local p = Instance.new("Part",Character)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = 0.5
p.Color = Color3.new(1,0,0)
p.Size = Vector3.new(1,1,1)
p.CFrame = RA.CFrame * CFrame.new(0,-1,0)
local b = Instance.new("BlockMesh",p)
b.Scale = Vector3.new(2,2,2)
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for u = 1,29 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
b.Scale = b.Scale +Vector3.new(0.05,0.05,0.05)
p.Transparency = p.Transparency +(0.5/29)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = 0.5
p.Color = Color3.new(1,0,0)
p.Size = Vector3.new(1,1,1)
p.CFrame = RA.CFrame * CFrame.new(0,-3,0)
local b = Instance.new("BlockMesh",p)
b.Scale = Vector3.new(2,2,2)
-- brandantyler@att.net
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for u = 1,29 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
b.Scale = b.Scale +Vector3.new(0.05,0.05,0.05)
p.Transparency = p.Transparency -(0.5/29)
Wait()
end
p:Destroy()
end)()
Wait()
end g.P = 1000000 while Wait(0.1)do
if Target.Humanoid.Health <= math.ceil(Target.Humanoid.MaxHealth/2)then break end
Target.Humanoid:TakeDamage(1)
g.cframe = CFrame.new(Target.Torso.Position,T.Position)
coroutine.wrap(function()
Lightning((RA.CFrame * CFrame.new(0,-1,0)).p,(Target.Torso.CFrame * CFrame.new(-0.5,0.5,0)).p,math.random(4,7),3.25,Settings.Colors[2],0.25,math.random(0,5)/10,Character,0.25)
end)()coroutine.wrap(function()
Lightning((RA.CFrame * CFrame.new(0,-1,0)).p,(Target.Torso.CFrame * CFrame.new(-0.5,0.5,0)).p,math.random(4,7),4.0125,Color3.new(1,0,0),0.25,math.random(0,5)/10,Character,0.25)
end)()end no = false
for i = 1,15 do
local p = Instance.new("Part",Character)
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Transparency = 0.5
p.Size = Vector3.new(2,2,2)
p.Color = Color3.new(1,0,0)
p.CFrame = RA.CFrame * CFrame.new(0,-1,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(3,3,3)
coroutine.wrap(function()
for u = 1,15 do
m.Scale = m.Scale -Vector3.new(6/15,6/15,6/15)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-25,25),math.random(-25,25),math.random(-25,25))
p.Transparency = p.Transparency +(0.5/15)
Wait()
end p:Destroy()end)()
Wait()
end Bpos.position =(CFrame.new((T.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).p)* CFrame.new(0,0,-100)).p for i = 1,6 do
if i <= 3 then
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.75,0,0)
else
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/6)
end Wait()end
local n = 0.25
for i = 1,15 do
RS.C0 = RS.C0 * CFrame.new(0,-0.3/15,-0.5/15)* CFrame.fromEulerAnglesXYZ(-math.pi/115,0,0)
Wait()
end no = true while Wait(0.1)do
if Target.Humanoid.Health <= 0 then break end
Target.Humanoid:TakeDamage(n*4)
n = n +0.05
g.cframe = CFrame.new(Target.Torso.Position,T.Position)
coroutine.wrap(function()
Lightning((RA.CFrame * CFrame.new(0,-1,0)).p,(Target.Torso.CFrame * CFrame.new(-0.5,0.5,0)).p,math.random(4,7),3.25,Settings.Colors[1],n,math.random(0,5)/10,Character,0.25)
end)()coroutine.wrap(function()
Lightning((RA.CFrame * CFrame.new(0,-1,0)).p,(Target.Torso.CFrame * CFrame.new(-0.5,0.5,0)).p,math.random(4,7),4.0125,Color3.new(0,0,1),n,math.random(0,5)/10,Character,0.25)
end)()end coroutine.wrap(function()
local Pos = Target.Torso.Position
local BOOSH = Instance.new("Sound",Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= Player.Name then
table.insert(Characters,Torso)
end end end
return Characters
end
local function Boom()
for i = 1,25 do
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(40 +i *2.5)/2 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500099
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *12
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
local rm = Instance.new("SpecialMesh",p)
rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rm.Name = "BlastMesh"
rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for n = 1,15 do
rm.Scale = rm.Scale + Vector3.new(1.2 +2 +i/5,1.2 +2 +i/5,0.1)*4/2
if 2 +i/5 == 1.2 then
rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/70,0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CanCollide = false
p.Color = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
Wait()
end
p:Destroy()
end)()
Game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
Wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(0.1,0.1,0.1)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(1.5 + 3 +i/5,1.5 + 3+i/5,0.1)*4/2
if 3+i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
Wait()
end
p:Destroy()
end)()
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(5 +i *9.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*5000000
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *11
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end
Wait(0.1)
end for i = 30,37 do
for _,v in pairs(GetHumanoids())do
if(Pos -v.Position).magnitude <=(140 +i *2.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500000000000
p.velocity = Vector3.new(math.random(-10,10),math.random(3,60),math.random(-10,10))+Moar*-160
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
Wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()no = false end
ResetWelds()
SState = "Standing"
Debounces.Attacking = false
bp:Destroy()
Bpos:Destroy()
g:Destroy()
lulkbro = true
no = false
end;
b = function(Mouse)
local Target = GetClosest(500)
if Debounces.Attacking or not Target or CurrentPower -10000 < 0 then return end
CurrentPower = CurrentPower -10000
LOCALDEBOUNCE = true
Debounces.Attacking = true
SState = "Null"
ResetWelds()
local opos = Instance.new("BodyPosition",T)
opos.P = 100000
opos.maxForce = Vector3.new(1000000,1000000,10000000)
opos.position = T.Position
Wait(1)
local Size = 0
local Main = Instance.new("Model",Character)
local LObj = Instance.new("Part",Main)
LObj.Transparency = 1
LObj.Locked = true
LObj.CanCollide = true
LObj.Anchored = false
LObj.Size = Vector3.new(1,1,1)
local oWeld = Instance.new("Weld",LObj)
oWeld.Part0 = RA
oWeld.Part1 = LObj
oWeld.C0 = CFrame.new(0,math.abs(Size +2.25)*-1,0)
for i = 1,13 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/29,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/58,math.pi/35.5,0)
if i == 9 then
coroutine.wrap(function()
for n = 1,13 do
local p2 = Instance.new("Part",Main)
p2.Locked = true
p2.Anchored = true
p2.CanCollide = false
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Size = Vector3.new(1,1,1)
p2.Color = Settings.Colors[2]
p2.CFrame = RA.CFrame * CFrame.new(0,-2,0)
local bm2 = Instance.new("SpecialMesh",p2)
bm2.Scale = Vector3.new(2,2,2)
bm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
Game:GetService("Debris"):AddItem(p2,3)coroutine.wrap(function()
for u = 1,9 do
p2.Transparency = u/9
bm2.Scale = bm2.Scale + Vector3.new(0.4,0.4,0.05)
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3,3)/10,math.random(-3,3)/10,math.random(-3,3)/10)
Wait()
end
p2:Destroy()
end)()
Wait(0.05)
end end)()
coroutine.wrap(function()
while Wait()do if not LOCALDEBOUNCE then break end
pcall(function()Main.Anchored = false end)
StanceGyro.cframe = CFrame.new(T.Position,Target.Torso.Position)
local p = Instance.new("Part",Main)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[2]
p.CFrame = LObj.CFrame
local bm = Instance.new("BlockMesh",p)
bm.Scale = Vector3.new(0.5,0.5,0.5)
local p2 = Instance.new("Part",Main)
p2.Locked = true
p2.Anchored = true
p2.CanCollide = false
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Size = Vector3.new(1,1,1)
p2.Color = Settings.Colors[1]
p2.CFrame = LObj.CFrame
local bm2 = Instance.new("SpecialMesh",p2)
bm2.Scale = Vector3.new(2,2,2)
bm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
local p3 = Instance.new("Part",Main)
p3.Locked = true
p3.Anchored = true
p3.CanCollide = false
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Size = Vector3.new(1,1,1)
p3.Color = Settings.Colors[2]
p3.CFrame = LObj.CFrame * CFrame.new(math.random(-50,50)/10,math.random(-50,50)/10,math.random(-50,50)/10)
local bm3 = Instance.new("BlockMesh",p3)
bm3.Scale = Vector3.new(0.01,0.01,0.01)
Game:GetService("Debris"):AddItem(p,3)
Game:GetService("Debris"):AddItem(p2,3)
Game:GetService("Debris"):AddItem(p3,3)
TweenColor3(p3,"Color",p3.Color,Settings.Colors[1],0.8,true)
coroutine.wrap(function()
for n = 1,25 do
p.Transparency = n/25
p2.Transparency = n/25
p3.Transparency = n/25
bm.Scale = bm.Scale +Vector3.new(Size +0.025,Size +0.025,Size +0.025)
bm2.Scale = bm2.Scale +Vector3.new(Size +0.01,Size +0.01,0.01)
bm3.Scale = bm3.Scale +Vector3.new(0.008,0.008,0.008)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p3.CFrame = p3.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
Wait()
end p:Destroy()
p2:Destroy()
p3:Destroy()
end)()end end)()end
Wait()
end for i = 1,20 do
Size = Size +0.001
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/30)
Wait()
end local bf = Instance.new("BodyPosition",LObj)
bf.maxForce = Vector3.new(100000,100000,100000)
oWeld:Destroy()repeat
Size = Size +0.005
bf.position = Target.Torso.Position
bf.P =(Size *25)+1500
bf.D = bf.D -0.01
local p2 = Instance.new("Part",Main)
p2.Locked = true
p2.Anchored = true
p2.CanCollide = false
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Size = Vector3.new(1,1,1)
p2.Color = Settings.Colors[math.random(1,2)]
p2.CFrame = RA.CFrame * CFrame.new(0,-2,0)
local bm2 = Instance.new("SpecialMesh",p2)
bm2.Scale = Vector3.new(2,2,2)
bm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
Game:GetService("Debris"):AddItem(p2,3)coroutine.wrap(function()
for u = 1,9 do
p2.Transparency = u/9
bm2.Scale = bm2.Scale + Vector3.new(0.4,0.4,0.05)
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3,3)/10,math.random(-3,3)/10,math.random(-3,3)/10)
Wait()
end
p2:Destroy()
end)()Wait()
until(Target.Torso.Position -LObj.Position).magnitude <=(Size +2)
Target.Torso.Anchored = true
local n0 = Size/25
local cs = Size
for i = 1,30 do
Size = Size -n0
Wait()
end coroutine.wrap(function()
DoScript(Game.Players:GetPlayerFromCharacter(Target),"CameraShake")
PlaySound("http://www.roblox.com/asset?id=167115397",1,50,Target.Torso.CFrame)
local Pos = CFrame.new(Target.Torso.Position -Vector3.new(0,2,0))
for i,v in pairs(IsNear(Pos.p,500))do
DoDamage(v,100 +(math.abs(cs *2)*250),false,true)
end for i = 1,32 do
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[2]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(1,1,1)
pm.MeshType = "Sphere"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(10,11,10)
Wait()
end
p:Destroy()
end)()local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[1]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("CylinderMesh",p)
pm.Scale = Vector3.new(1,1,1)
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = Pos * CFrame.fromEulerAnglesXYZ(math.pi/math.random(-3,3),math.pi/math.random(-3,3),math.pi/math.random(-3,3))
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(0.75,1000,0.75)
Wait()
end
p:Destroy()
end)()local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(1,1,1)
pm.MeshId = "http://www.roblox.com/asset/?id=20329976"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(13,0.5,13)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[1]
p.Size = Vector3.new(1,1,1)
p.CFrame = Pos
local pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(1,1,1)
pm.MeshId = "http://www.roblox.com/asset/?id=20329976"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for n = 1,35 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-10,10)/10,0)
p.Transparency = n/35
pm.Scale = pm.Scale + Vector3.new(13,0.5,13)
Wait()
end
p:Destroy()
end)()
Wait(0.05)
end Target.Torso.Anchored = false end)()
Debounces.Attacking = false
ResetWelds()
opos:Destroy()
SState = "Standing"
LOCALDEBOUNCE = false
Main:Destroy()
end;u = function(Mouse)
for i,v in pairs(Debounces)do
if i ~= "Slowing" then
if v then return end
end end if Debounces.Shielding or Debounces.Attacking or CurrentPower -12000 < 0 then return end
SState = "Null"
ResetWelds()
T.Anchored = true
Debounces.Attacking = true
Debounces.Shielding = true
CurrentPower = CurrentPower -12000
for i = 1,15 do
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/55,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/55,0,0)
Wait()
end
LA.Anchored = true
RA.Anchored = true
coroutine.wrap(function()
Wait(1)while Wait()do
if not Debounces.Shielding then break end
local p = Instance.new("Part",Character)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Size = Vector3.new(1,1,1)
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[1]
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2.13,0)
local pm = Instance.new("SpecialMesh",p)
pm.MeshId = "http://www.roblox.com/asset/?id=20329976"
pm.Scale = Vector3.new(11,0.15,11)
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for i = 1,15 do
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-100,100)/10,0)
pm.Scale = pm.Scale + Vector3.new(0.325,0.125,0.325)
p.Transparency = i/15
Wait()
end p:Destroy()end)()end end)()
local Rot = 0
local Parts,Connections = {},{}
local LOCALDEBOUNCE = false
local function n(v)
pcall(function()
v.P = v.P *1.5
if v:IsA("BodyVelocity")then
v.velocity = v.velocity *-1
end if v:IsA("BodyForce")or v:IsA("BodyThrust")then
v.force = v.force *-1
end if v:IsA("BodyPosition")then
v.position = v.position *-1
end if v:IsA("BodyGyro")then
v.cframe = CFrame.new(v.cframe.X *-1,v.cframe.Y *-1,v.cframe.Z *-1)
end if v:IsA("BodyAngularVelocity")then
v.angularvelocity = v.angularvelocity *-1
end end)end
local MShieldHealth = math.ceil(math.floor(CurrentPower +HU.Health)*1.5)
local ShieldHealth = MShieldHealth
local HitAlready = {}
local BillboardGui = Instance.new("BillboardGui",Character)
BillboardGui.Adornee = H
BillboardGui.Size = UDim2.new(5,0,5,0)
BillboardGui.StudsOffset = Vector3.new(0,2,0)
local Txtlbl = Instance.new("TextLabel",BillboardGui)
Txtlbl.Size = UDim2.new(1,0,1,0)
Txtlbl.TextColor3 = Color3.new(MShieldHealth/ShieldHealth,MShieldHealth/ShieldHealth,MShieldHealth/ShieldHealth)
Txtlbl.BackgroundTransparency = 1
Txtlbl.TextScaled = true
Txtlbl.Font = "SourceSansBold"
Txtlbl.TextTransparency = 1
Txtlbl.Text = tostring(ShieldHealth)
Txtlbl.TextWrapped = false
local o;o = Mouse.KeyUp:connect(function(k)
if k:lower()== 'u' then
Debounces.Attacking = false
Debounces.Shielding = false
LOCALDEBOUNCE = false
o:disconnect()
SState = "Standing"
T.Anchored = false
LA.Anchored = false
RA.Anchored = false
end end)
coroutine.wrap(function()
for i = 1,15 do
Txtlbl.TextTransparency = Txtlbl.TextTransparency -(1/15)
Wait()
end end)()
table.insert(Connections,Game.DescendantAdded:connect(function(o)
ypcall(function()
if o:IsA("Explosion")then
if(T.Position -o.Position).magnitude <= o.BlastRadius then
local kik = o.Position
o:Destroy()
local p = Instance.new("Part",Character)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[1]
p.TopSurface = 0
p.Transparency = 1
p.BottomSurface = 0
p.CFrame = CFrame.new(kik)
local pm;pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(0,0,0)
pm.MeshId = "http://www.roblox.com/asset/?id=1185246"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = p.Transparency -(1/15)
pm.Scale = pm.Scale +Vector3.new(1.3,1.3,1.3)
Wait()
end local sc = pm.Scale;pm:Destroy()pm = Instance.new("CylinderMesh",p)pm.Scale = sc +Vector3.new(0,100000,0)
for i = 1,15 do
p.Transparency = i/15
pm.Scale = pm.Scale -Vector3.new(math.sin((math.abs(GetBiggestVector(obj.Size)*0.5)+(i/1.67))/2),100000/15,math.sin((math.abs(GetBiggestVector(obj.Size)*0.5)+(i/1.67))/2))
p.Color = Color3.new(i/15,i/15,i/15)
Wait()
end
p:Destroy()
end)()end end end)end))
for i = 1,10 do
local p = Instance.new("Part",Character)
p.Locked = true
p.Anchored = true
p.CanCollide = true
p.Transparency = 1
p.FormFactor = "Custom"
p.Size = Vector3.new(5,15,0.25)
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[1]
p.CFrame = CFrame.new(T.Position)* CFrame.fromEulerAnglesXYZ(0,math.rad((i *360/10)+Rot),0)* CFrame.new(0,0,-5)
local op = Instance.new("PointLight",p)
op.Color = Color3.new(1,1,1)
op.Range = 4.657
op.Brightness = 10
table.insert(Parts,p)
table.insert(Connections,p.Touched:connect(function(obj)
if GetBiggestVector(obj.Size)>= 150 or HitAlready[obj]or obj:IsDescendantOf(Character)then return end
for i,_ in pairs(HitAlready)do
if i ~= nil then
if obj:IsDescendantOf(i.Parent)then
return end end end
HitAlready[obj]= true
pcall(function()
DoScript(Game.Players:GetPlayerFromCharacter(obj.Parent),"SFlash")
DoScript(Game.Players:GetPlayerFromCharacter(obj.Parent),"CameraShake")
end)delay(1,function()HitAlready[obj]= nil end)
local p = Instance.new("Part",Character)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Size = Vector3.new(1,1,1)
p.Color = Settings.Colors[1]
p.TopSurface = 0
p.Transparency = 1
p.BottomSurface = 0
p.CFrame = CFrame.new(obj.Position)
local pm;pm = Instance.new("SpecialMesh",p)
pm.Scale = Vector3.new(0,0,0)
pm.MeshId = "http://www.roblox.com/asset/?id=1185246"
Game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = p.Transparency -(1/15)
pm.Scale = pm.Scale +Vector3.new(math.abs(GetBiggestVector(obj.Size)*0.5)+(i/1.67),math.abs(GetBiggestVector(obj.Size)*0.5)+(i/1.67),math.abs(GetBiggestVector(obj.Size)*0.5)+(i/1.67))
Wait()
end local sc = pm.Scale;pm:Destroy()pm = Instance.new("CylinderMesh",p)pm.Scale = sc +Vector3.new(0,100000,0)
for i = 1,15 do
p.Transparency = i/15
pm.Scale = pm.Scale -Vector3.new((math.abs(GetBiggestVector(obj.Size)*0.5)+(i/1.67))/2,100000/15,(math.abs(GetBiggestVector(obj.Size)*0.5)+(i/1.67))/2)
p.Color = Color3.new(i/15,i/15,i/15)
Wait()
end
p:Destroy()
end)()TweenColor3(p,"Color",p.Color,Settings.Colors[1],0.5,true,function()
TweenColor3(p,"Color",p.Color,Settings.Colors[2],0.5,true)
end)local h = obj.Parent:findFirstChild("Humanoid")
local go = false
local t = obj.Parent:findFirstChild("Torso")
if h then
if h.MaxHealth == math.huge or h.Health <= 0 then
go = true
if t then
local bf = Instance.new("BodyVelocity",t)
bf.velocity =(p.Position -t.Position).unit *350
bf.maxForce = Vector3.new(1000000,1000000,1000000)*100200
Game:GetService("Debris"):AddItem(bf,0.5)
delay(0.5,function()
DoDamage(obj.Parent,h.MaxHealth,false,true)
end)end else
if t then
local bf = Instance.new("BodyVelocity",t)
bf.velocity =(p.Position -t.Position).unit *350
bf.maxForce = Vector3.new(1000000,1000000,1000000)*100200
Game:GetService("Debris"):AddItem(bf,0.5)
DoDamage(obj.Parent,math.ceil(ShieldHealth/200),false,true)
end end end
if not go then
if obj.Parent:IsA("Model")then
for i,v in pairs(GetAllChildren(obj.Parent))do
if v:IsA("BasePart")then
TweenColor3(v,"Color",v.Color,v.Color == Settings.Colors[2]and Settings.Colors[1]or Settings.Colors[2],0.5,true,function()for i = 1,90 do v.Transparency = i/90 Wait()end pcall(function()v:Destroy()end)end)
else n(v)end end else
TweenColor3(obj,"Color",obj.Color,obj.Color == Settings.Colors[2]and Settings.Colors[1]or Settings.Colors[2],0.5,true,function()for i = 1,90 do obj.Transparency = i/90 Wait()end pcall(function()obj:Destroy()end)end)
for i,v in pairs(obj:GetChildren())do
n(v)
end end end end))coroutine.wrap(function()
for n = 1,15 do
p.Transparency = p.Transparency -(1/15)
Wait()
end
TweenColor3(p,"Color",p.Color,Settings.Colors[2],1,true)
LOCALDEBOUNCE = true
end)()end
local Change = true
local LastHealth = HU.Health;table.insert(Connections,HU.HealthChanged:connect(function(HV)
if HV < LastHealth then
local SH = ShieldHealth
ShieldHealth = ShieldHealth -HV
local pl = HV
if ShieldHealth <= 0 then pl = math.abs(ShieldHealth +SH)LOCALDEBOUNCE = false ShieldHealth = 0 Debounces.Shielding = false
LOCALDEBOUNCE = false
Debounces.Attacking = false
Debounces.Shielding = false
SState = "Standing"
o:disconnect()
T.Anchored = false
LA.Anchored = false
RA.Anchored = false
end
Txtlbl.TextColor3 = Color3.new(MShieldHealth/ShieldHealth,MShieldHealth/ShieldHealth,MShieldHealth/ShieldHealth)
coroutine.wrap(function()
for n = 1,16 do
local s = ''
for i = 1,#Txtlbl.Text do
s = s..math.random(0,9)
end
Txtlbl.Text = s
Wait()
end
Txtlbl.Text = tostring(ShieldHealth)
end)()if Change then
Change = false
coroutine.wrap(function()
for i = 1,13 do
Txtlbl.Rotation = math.abs(Txtlbl.Rotation)== Txtlbl.Rotation and Txtlbl.Rotation +math.random(-12,-1)or Txtlbl.Rotation +math.random(1,12)
Wait()
end
Txtlbl.Rotation = 0
Change = true
end)()end
HU:TakeDamage(pl *-1)
end end))
PlaySound("http://www.roblox.com/asset?id=167115397",1,50,T.CFrame)
repeat Wait()until LOCALDEBOUNCE
coroutine.wrap(function()
while Wait()do
if not LOCALDEBOUNCE then break end
for i,v in pairs(Parts)do
v.CanCollide = true
v.CFrame = CFrame.new(T.Position)* CFrame.fromEulerAnglesXYZ(0,math.rad((i *360/#Parts)+Rot),0)* CFrame.new(0,0,-5)* CFrame.fromEulerAnglesXYZ(math.rad(45),0,0)
end Rot = Rot >= 360 and 0 or Rot +5.5 end pcall(function()BillboardGui:Destroy()end)for i,v in pairs(Connections)do
v:disconnect()
end for _,v in pairs(Parts)do
coroutine.wrap(function()
local l,r = v.Size.X/15,0
TweenColor3(v,"Color",v.Color,Settings.Colors[1],(1/30)*15,true)
for i = 1,15 do
v.Size = v.Size -Vector3.new(l,0,0)
Wait()
end
v:Destroy()
end)()end end)()end;
j = function(Mouse)
if Debounces.Attacking or CurrentPower -MaxPower < 0 then return end
CurrentPower = CurrentPower -MaxPower
SState = "Null"
ResetWelds()
Debounces.Attacking = true
_DEBOUNCE = false
T.Anchored = true
for i = 1,13 do
if i < 6 then
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/6.5,0,0)
end
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0)
Wait()
end local Projectile = Instance.new("Model",Character)
local P0 = Instance.new("Model",Projectile)
local Main = Instance.new("Part",Projectile)
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.CanCollide = false
Main.Transparency = 1
local Weld = Instance.new("Weld",Main)
Weld.Part0 = LA
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,-10,0)
local oD = Instance.new("Part",Projectile)
oD.Anchored = false
oD.Locked = true
oD.CanCollide = false
oD.Transparency = 1
oD.Color = Settings.Colors[2]
oD.TopSurface = 0
oD.BottomSurface = 0
oD.Size = Vector3.new(1,1,1)
local w = Instance.new("Weld",Main)
w.Part0 = Main
w.Part1 = oD
local bpm = Instance.new("SpecialMesh",oD)
bpm.Scale = Vector3.new(0,0,0)
bpm.MeshId = "http://www.roblox.com/asset/?id=1185246"
LA.Anchored = true
for i = 1,150 do
bpm.Scale = bpm.Scale + Vector3.new(11/300,11/300,11/300)
oD.Transparency = oD.Transparency -(1/150)
if i%2 == 1 then
Wait()
end end coroutine.wrap(function()
for i = 1,9 do
local oD = Instance.new("Part",P0)
oD.Anchored = false
oD.Locked = true
oD.CanCollide = false
oD.Color = Settings.Colors[1]
oD.TopSurface = 0
oD.Transparency = 1
oD.BottomSurface = 0
oD.Size = Vector3.new(1,1,1)
local w = Instance.new("Weld",oD)
w.Part0 = Main
w.Part1 = oD
local bpsm = Instance.new("SpecialMesh",oD)
bpsm.MeshId = "http://www.roblox.com/asset/?id=3270017"
bpsm.Scale = Vector3.new(bpm.Scale.X,bpm.Scale.Y,0.05)
coroutine.wrap(function()
for n = 1,19 do
oD.Transparency = oD.Transparency -(1/19)
Wait()
end end)()end
while Wait()do
if _DEBOUNCE then break end
for _,n in pairs(P0:GetChildren())do
n.Weld.C0 = n.Weld.C0 * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
n.Mesh.Scale = Vector3.new(bpm.Scale.X,bpm.Scale.Y,0.05)
end end end)()for i = 1,150 do
bpm.Scale = bpm.Scale + Vector3.new(15/300,15/300,15/300)
if i%2 == 1 then
Wait()
end end
LA.Anchored = false
for i,v in pairs(P0:GetChildren())do
if v:IsA("BasePart")then
v.Color = Color3.new(1,0,0)
end end for i = 1,15 do
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/30)
Wait()
end Weld:Destroy()
for i = 1,9 do
local oD = Instance.new("Part",Character)
oD.Anchored = true
oD.Locked = true
oD.CanCollide = false
oD.Color = Settings.Colors[1]
oD.TopSurface = 0
oD.BottomSurface = 0
oD.Size = Vector3.new(1,1,1)
oD.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
local bpsm = Instance.new("SpecialMesh",oD)
bpsm.MeshId = "http://www.roblox.com/asset/?id=3270017"
bpsm.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for n = 1,13 do
oD.Transparency = n/13
bpsm.Scale = bpsm.Scale + Vector3.new(n/13,n/13,n/13)
Wait()
end oD:Destroy()end)()end
local Sucking = {}
local bv = Instance.new("BodyVelocity",Main)
bv.velocity = T.CFrame.lookVector *165
local function Checkk(Char)
for i,v in pairs(Sucking)do
if v == Char then
return true
end end end 
coroutine.wrap(function()
while Wait()do
if _DEBOUNCE then break end
for i,v in pairs(IsNear(Main.Position,30,false))do
if not Checkk(v)and v ~= Character then
table.insert(Sucking,v)
coroutine.wrap(function()
local bp = Instance.new("BodyPosition",v.Torso)
bp.P = 300000
bp.maxForce = Vector3.new(10000000,10000000,10000000)
local _O = false
coroutine.wrap(function()
while Wait()do
if _O then break end
bp.position = Main.Position
end bp:Destroy()end)()
repeat
Wait()
until(Main.Position -v.Torso.Position).magnitude <= 3
bpm.Scale = bpm.Scale *(100/v.Humanoid.Health)
_O = true
for _,q in pairs(v:GetChildren())do
if q:IsA("Clothing")or v:IsA("Hat")then
q:Destroy()
elseif q:IsA("Part")then
if v.Name ~= "Torso" then
bp:Clone().Parent = v
end coroutine.wrap(function()
for lol = 1,13 do
q.Transparency = lol/13
Wait()
end q:Destroy()end)()end end end)()end end end end)()
local Properties = {}
coroutine.wrap(function()
Wait(0.15)
while Wait(0.05)do
if _DEBOUNCE then break end
local Hit,Pos = Workspace:FindPartOnRayWithIgnoreList(Ray.new(Main.Position,Main.Position -(Main.Position +Vector3.new(0,150,0)).unit *150),{unpack(AllHumanoids()),Projectile,Character})-- ray cast
if Hit ~= nil then
Properties.BrickColor = Hit.BrickColor
Properties.Material = Hit.Material
Properties.Reflectance = Hit.Reflectance
Properties.Transparency = Hit.Transparency
Properties.TopSurface = Hit.TopSurface
Properties.BottomSurface = Hit.BottomSurface
Properties.BackSurface = Hit.BackSurface
Properties.LeftSurface = Hit.LeftSurface
Properties.RightSurface = Hit.RightSurface
Properties.FrontSurface = Hit.FrontSurface
Properties.Friction = Hit.Friction
for u = 1,math.random(2,3)do
local p = Instance.new("Part",Projectile)
p.Anchored = true
p.Locked = true
p.CanCollide = true
p.Size = Vector3.new(bpm.Scale.X +(math.random(-80,80)/10),math.random(2,6),bpm.Scale.Z +(math.random(-80,80)/10))
for i,v in pairs(Properties)do
p[i]= v
end
p.CFrame = CFrame.new(Pos)* CFrame.new(math.random(-5,5),0,math.random(-5,5))* CFrame.Angles(Main.CFrame:toEulerAnglesXYZ())* CFrame.fromEulerAnglesXYZ(math.random(-100,100)/35,math.random(-50,50)/10,math.random(-100,100)/35)
local s = Instance.new("Smoke",p)
s.Size = p.Size.magnitude *1.5
s.RiseVelocity = 3
Game:GetService("Debris"):AddItem(s,0.5)
end end end end)()
LA.Anchored = true
local on = Mouse.Button1Down:connect(function()
_DEBOUNCE = true
end)while Wait()do
if _DEBOUNCE then break end
local oD = Instance.new("Part",Character)
oD.Anchored = true
oD.Locked = true
oD.CanCollide = false
oD.Color = Color3.new(1,0,0)
oD.TopSurface = 0
oD.BottomSurface = 0
oD.Size = Vector3.new(1,1,1)
oD.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
local bpsm = Instance.new("SpecialMesh",oD)
bpsm.MeshId = "http://www.roblox.com/asset/?id=3270017"
bpsm.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for n = 1,13 do
oD.Transparency = n/13
bpsm.Scale = bpsm.Scale + Vector3.new(n/13,n/13,n/13)
oD.CFrame = oD.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-80,50)/10,math.random(-80,50)/10,math.random(-80,50)/10)
Wait()
end oD:Destroy()end)()end
on:disconnect()
bv.velocity = bv.velocity *0.25
P0:BreakJoints()
for i,v in pairs(P0:GetChildren())do
v.Anchored = true
v.Color = Color3.new(1,0,0)
coroutine.wrap(function()
for n = 1,13 do
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(22.5,22.5,22.5)
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-100,100)/50,math.random(-100,100)/50,math.random(-100,100)/50)
v.Transparency = n/13
Wait()
end end)()end
Wait(1)
Projectile:BreakJoints()
oD.Anchored = true
Main.Anchored = true
oD.Color = Color3.new(1,1,0)
oD.Material = "Granite"
local oDr = Instance.new("Part",Character)
oDr.Anchored = true
oDr.Locked = true
oDr.CanCollide = false
oDr.Color = Settings.Colors[2]
oDr.TopSurface = 0
oDr.BottomSurface = 0
oDr.Size = Vector3.new(1,1,1)
oDr.CFrame = oD.CFrame
local bpsm = Instance.new("SpecialMesh",oDr)
bpsm.MeshId = "http://www.roblox.com/asset/?id=3270017"
bpsm.Scale = Vector3.new(0,0,0)
for i = 1,13 do
bpm.Scale = bpm.Scale + Vector3.new(20,20,20)
oD.Transparency = i/26
bpsm.Scale = Vector3.new(bpm.Scale.X,bpm.Scale.Y,0.5)
oDr.CFrame = oDr.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
Wait()
end
TweenColor3(oD,"Color",oD.Color,Settings.Colors[1],1,true,function()oo = true end)
coroutine.wrap(function()
while Wait()do
if not _DEBOUNCE then break end 
oDr.CFrame = oDr.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
bpsm.Scale = Vector3.new(bpm.Scale.X,bpm.Scale.Y,0.5)
end oDr:Destroy()end)()
Wait(0.5)
oD.Color = Color3.new(1,0,0)
local o = bpm.Scale.X/90
for i = 1,90 do
bpm.Scale = bpm.Scale -Vector3.new(o,o,o)
Wait()
end
_DEBOUNCE = true
local cp = Instance.new("Part",Projectile)
cp.Locked = true
cp.Anchored = true
cp.CanCollide = false
cp.Size = Vector3.new(0,0,0)
cp.Color = Settings.Colors[2]
cp.TopSurface = 0
cp.Transparency = 1
cp.BottomSurface = 0
cp.CFrame = CFrame.new(Main.Position)
local bc = Instance.new("CylinderMesh",cp)
bc.Scale = Vector3.new(0,0,0)
for i = 1,90 do
bc.Scale = bc.Scale + Vector3.new(15,10000,15)
cp.Transparency = i/270
Wait()
end
coroutine.wrap(function()
local cp2 = Instance.new("Part",Projectile)
cp2.Locked = true
cp2.Anchored = true
cp2.CanCollide = false
cp2.Size = Vector3.new(0,0,0)
cp2.Color = Settings.Colors[1]
cp2.TopSurface = 0
cp2.Transparency = 1
cp2.BottomSurface = 0
cp2.CFrame = CFrame.new(Main.Position)
local bc2 = Instance.new("CylinderMesh",cp2)
bc2.Scale = Vector3.new(0,0,0)
for i = 1,60 do
bc2.Scale = bc.Scale + Vector3.new(15,10000,15)
cp2.Transparency = i/60
Wait()
end
cp2:Destroy()
end)()
for i = 1,30 do
bc.Scale = bc.Scale -Vector3.new(45,30000,45)
cp.Transparency = i/35
Wait()
end
for i,v in pairs(Game.Players:GetPlayers())do DoScript(v,"SFlash")end
local CachedTime = Game.Lighting.TimeOfDay
local Sky,o = {},Game.Lighting:findFirstChild("Sky")or Instance.new("Sky",Game.Lighting)
if o then
Sky.SkyboxBk = o.SkyboxBk
Sky.SkyboxDn = o.SkyboxDn
Sky.SkyboxFt = o.SkyboxFt
Sky.SkyboxLf = o.SkyboxLf
Sky.SkyboxRt = o.SkyboxRt
Sky.SkyboxUp = o.SkyboxUp
Sky.CelestialBodiesShown = o.CelestialBodiesShown
end local Parts,Queue = GetAllParts(),{}
for i,v in pairs(Parts)do
if GetBiggestVector(v.Size)< 500 then
v.Anchored = false
table.insert(Queue,v)
end end if o then
o.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1327340"
o.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1327341"
o.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1327338"
o.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1327339"
o.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1327337"
o.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1327342"
o.CelestialBodiesShown = false
end
Game.Lighting.FogEnd = 1000000000
TweenTimeOfDay("00:00:00",3,true)
Game.Lighting.Brightness = 0.25
local Pos = Main.Position
coroutine.wrap(function()
local function GetHumanoids()
local Characters = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= Player.Name then
table.insert(Characters,Torso)
end end end
return Characters
end for i = 1,29 do
for _,v in pairs(GetHumanoids())do
local h = v.Parent:findFirstChild("Humanoid")
if h then
DoDamage(v.Parent,36656,true)
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500099
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *12
Game:GetService("Debris"):AddItem(p,9)
coroutine.wrap(function()
for i = 1,270 do
p.P = p.P -(1500/270)
Wait()
end
v.Anchored = true
p:Destroy()
end)()end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))
local rm = Instance.new("SpecialMesh",p)
rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rm.Name = "BlastMesh"
rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for n = 1,15 do
rm.Scale = rm.Scale + Vector3.new(13.2 +Main.Size.X +i/5,13.2 +Main.Size.X +i/5,0.1)*4/2
if 2 +i/5 == 1.2 then
rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(360/(math.pi/i),360/(math.pi/i),0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))
local rm = Instance.new("SpecialMesh",p)
rm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rm.Name = "BlastMesh"
rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for n = 1,15 do
rm.Scale = rm.Scale + Vector3.new(12.2 +Main.Size.X +i/5,12.2 +Main.Size.X +i/5,0.1)*4/2
if 2 +i/5 == 1.2 then
rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,(360/15)-i,0)
Wait()
end
p:Destroy()
end)()
Wait()
end end)()
for _,v in pairs(Queue)do
v.Anchored = false
coroutine.wrap(function()
Wait(2)
v.Anchored = true
local f = Instance.new("Fire",v)
f.Size = GetBiggestVector(v.Size)
f.SecondaryColor = Settings.Colors[2]
f.Color = Settings.Colors[1]
f.Heat = 0
local o = v
for i,x in pairs(v:GetChildren())do
if x:IsA("SpecialMesh")or x:IsA("CylinderMesh")or x:IsA("BlockMesh")then
f.Size = GetBiggestVector(x.Scale)*1.5
o = x
break
end end
Wait(1)
local x,y,z,fs = not o:IsA("BasePart")and o.Scale.X or o.Size.X/10,not o:IsA("BasePart")and o.Scale.Y or o.Size.Y/10,not o:IsA("BasePart")and o.Scale.Z or o.Size.Z/10,f.Size/10
coroutine.wrap(function()
local p = Instance.new("Part",v.Parent)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Color = Settings.Colors[2]
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
p.CFrame = v.CFrame
Game:GetService("Debris"):AddItem(p,5)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(0,0,0)
m.MeshType = "Sphere"
for n = 1,16 do
m.Scale = m.Scale + Vector3.new(1.15,1.15,1.15)
p.Transparency = n/16
Wait()
end
p:Destroy()
end)()
for i = 1,10 do
if o:IsA("BasePart")then
o.Size = Vector3.new(o.Size.X -x,o.Size.Y -y,o.Size.Z -z)
else
o.Scale = Vector3.new(o.Scale.X -x,o.Scale.Y -y,o.Scale.Z -z)
end
f.Heat = f.Heat +1.5
f.Size = f.Size -fs
Wait()
end
f:Destroy()
v:Destroy()
_DEBOUNCE = true
end)()end
_DEBOUNCE = false
for i,v in pairs(Game.Players:GetPlayers())do
DoScript(v,"FadeToBlue")
DoScript(v,"CameraShake")
end repeat Wait()until _DEBOUNCE
LA.Anchored = false
T.Anchored = false
RA.Anchored = false
Projectile:Destroy()
ResetWelds()
SState = "Standing"
Game.Lighting.TimeOfDay = CachedTime
Debounces.Attacking = false
end;
q = function(Mouse)
if Debounces.Attacking or Debounces.Floating then return end
Debounces.Floating = true
SState = "Null"
ResetWelds()
Wait(0.5)
local oo = Mouse.KeyUp:connect(function(Key)
if Key:lower()== 'q' then
_DEBOUNCE = true
end end)
_DEBOUNCE = false
local vu = Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
while Wait()do
if CurrentPower -85 < 0 then _DEBOUNCE = true end
if _DEBOUNCE then oo:disconnect()break end
CurrentPower = CurrentPower -25
vu.velocity = Vector3.new(0,RiseRate *2.35,0)
-- animate a litl bit pls
end
vu:Destroy()
SState = "Standing"
ResetWelds()
Debounces.Floating = false
end;
r = function()
local Target = GetClosest(46.75666-0.666)
if Debounces.Attacking or CurrentPower -10000 < 0 or not Target or not Target:findFirstChild("Torso")then return end
Debounces.Attacking = true
CurrentPower = CurrentPower -10000
coroutine.wrap(Chat)("Round Wave Crusher.")
ResetWelds()
_DEBOUNCE = false
SState = "Null"
local Holdh = Instance.new("BodyPosition",Target.Torso)
Holdh.position = Target.Torso.Position
Holdh.P = 3000
Holdh.maxForce = Vector3.new(1000000,1000000,1000000)
Wait(2)
StanceGyro.cframe = CFrame.new(T.Position,Target.Torso.Position)
Wait(2)
Holdh.position =(CFrame.new(T.CFrame.lookVector,Target.Torso.Position).lookVector *125)+ Vector3.new(0,12,0)
for i = 1,13 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/65,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/26,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/26,0,0)
Wait()
end
repeat Wait()until(Holdh.position -Target.Torso.Position).magnitude <= 3
local Boldh = Instance.new("BodyPosition",T)
Boldh.position = T.Position + Vector3.new(0,19,0)
Boldh.P = 3000
Boldh.maxForce = Vector3.new(100000,100000,100000)
repeat Wait()until(Boldh.position -T.Position).magnitude <= 3
StanceGyro.cframe = CFrame.new(T.Position,Target.Torso.Position)
Wait(1.5)
T.Anchored = true
LA.Anchored = true
RA.Anchored = true
local OldT = H.face.Texture
H.face.Texture = "http://www.roblox.com/asset/?id=167222585"
local Portal = Instance.new("Model",Character)
local prt1 = Instance.new("Model",Portal)
local prt2 = Instance.new("Model",Portal)
local prt3 = Instance.new("Model",Portal)
for i = 1,7 do
local p = Instance.new("Part",prt1)
p.Locked = true
p.Anchored = true
p.Transparency = 1
p.CanCollide = false
p.Color = Settings.Colors[1]
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Name = 'm'
m.Scale = Vector3.new(1,1,1)
m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end for i = 1,7 do
local p = Instance.new("Part",prt2)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
p.Color = Settings.Colors[2]
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Name = 'm'
m.Scale = Vector3.new(1,1,1)
m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end for i = 1,7 do
local p = Instance.new("Part",prt3)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
p.Color = Color3.new(0.5,0.5,0.5)
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Name = 'm'
m.Scale = Vector3.new(1,1,1)
m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end
local Rot,Rate,Dist,Size = 0,65,65,1
coroutine.wrap(function()
while Wait()do
if _DEBOUNCE then break end
for i,v in pairs(prt1:GetChildren())do
v.Transparency = v.Transparency -0.035
v.CFrame = CFrame.new(Target.Torso.Position)* CFrame.fromEulerAnglesXYZ(0,math.rad((i *360/#prt1:GetChildren())+Rot),0)* CFrame.new(0,0,-Dist)
v.m.Scale = Vector3.new(Size,Size,Size)
end for i,v in pairs(prt2:GetChildren())do
v.Transparency = v.Transparency -0.035
v.CFrame = CFrame.new(Target.Torso.Position)* CFrame.fromEulerAnglesXYZ(math.rad((i *360/#prt2:GetChildren())+Rot),0,0)* CFrame.new(0,0,-Dist)
v.m.Scale = Vector3.new(Size,Size,Size)
end for i,v in pairs(prt3:GetChildren())do
v.Transparency = v.Transparency -0.035
v.CFrame = CFrame.new(Target.Torso.Position)* CFrame.fromEulerAnglesXYZ(0,0,math.rad((i *360/#prt2:GetChildren())+Rot))* CFrame.new(-Dist,-Dist,0)
v.m.Scale = Vector3.new(Size,Size,Size)
end
Rot = Rot >= 360 and 0 or Rot +Rate
end end)()
Wait(0.75)
H.face.Texture = OldT
for i = 1,90 do
Rate = Rate -(2.3/3)
Dist = Dist -(1.5/3)
Wait()
end
Wait(1)
for i = 1,30 do
Rate = Rate -(2.3/3)
Dist = Dist +0.5
Wait()
end
Wait(2)
for i = 1,30 do
Rate = Rate +(9.2/3)
Dist = Dist -1.75
Wait()
end
H.face.Texture = "http://www.roblox.com/asset/?id=167222585"
Wait(0.75)
H.face.Texture = OldT
for i = 1,6 do
Rate = Rate -4
Dist = Dist +0.5
Wait()
end
Rate = 0
Dist = 6
DoScript(Game.Players:GetPlayerFromCharacter(Target),"CrazyEyes")
coroutine.wrap(Chat)("Crusher...")
Wait(2)
for i = 1,90 do
Rate = Rate +0.5
Dist = Dist +0.2
Wait()
end
Wait(1)
for i = 1,30 do
Dist = Dist -(24/30)
Size = Size +0.05
Wait()
end
-- Scream in pain
for i,v in pairs(Target.Torso:GetChildren())do
if v:IsA("Motor6D")then
coroutine.wrap(function()
for u = 1,32 do
v.C0 = v.C0 * CFrame.fromEulerAnglesXYZ(math.random(-76,75)/10,math.random(-76,75)/10,math.random(-76,75)/10)
Wait(0.05)
end if v.Name ~= "Neck" then
v:Destroy()
end end)()end end
coroutine.wrap(function()
for i = 1,3 do
Blood(Target.Torso)
Wait()
end end)()
Wait(1.65)
_DEBOUNCE = true
Wait()
Portal:Destroy()
coroutine.wrap(function()
local Pos = Target.Torso.Position
local BOOSH = Instance.new("Sound",Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= Player.Name then
table.insert(Characters,Torso)
end end end
return Characters
end
local function Boom()
for i = 1,25 do
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(40 +i *2.5)/2 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500099
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *12
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
local rm = Instance.new("SpecialMesh",p)
rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rm.Name = "BlastMesh"
rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for n = 1,15 do
rm.Scale = rm.Scale + Vector3.new(1.2 +2 +i/5,1.2 +2 +i/5,0.1)*4/2
if 2 +i/5 == 1.2 then
rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/70,0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CanCollide = false
p.Color = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
Wait()
end
p:Destroy()
end)()
Game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
Wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(0.1,0.1,0.1)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(1.5 + 3 +i/5,1.5 + 3+i/5,0.1)*4/2
if 3+i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
Wait()
end
p:Destroy()
end)()
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(5 +i *9.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*5000000
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *11
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end
Wait(0.1)
end for i = 30,37 do
for _,v in pairs(GetHumanoids())do
if(Pos -v.Position).magnitude <=(140 +i *2.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500000000000
p.velocity = Vector3.new(math.random(-10,10),math.random(3,60),math.random(-10,10))+Moar*-160
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
Wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()
DoDamage(Target,Target.Humanoid.MaxHealth,false)
T.Anchored = false
RA.Anchored = false
LA.Anchored = false
Boldh:Destroy()
ResetWelds()
SState = "Standing"
Debounces.Attacking = false
end;
f = function(Mouse)
if Debounces.Attacking or CurrentPower -15000 < 0 then return end
Debounces.Attacking = true
CurrentPower = CurrentPower -15000
local CachedTime = Game.Lighting.TimeOfDay
SState = "Null"
Wait()
ResetWelds()
Wait(0.5)
T.Anchored = true
_DEBOUNCE = false
local oo;oo = Mouse.KeyUp:connect(function(k)
if k:lower()== 'f' then
_DEBOUNCE = true
oo:disconnect()
end end)
for i = 1,15 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/90,0,0)
if i < 7 then
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/30,0)
else
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
end Wait()end
LA.Anchored = true
local Positionz = {}
local Ball = Instance.new("Model",Character)
local Main = Instance.new("Part",Ball)
Main.Locked = true
Main.CanCollide = false
Main.Transparency = 1
Main.CFrame = LA.CFrame * CFrame.new(0,-3,0)
Main.Size = Vector3.new(1,1,1)
local _Weld = Instance.new("Weld",Main)
_Weld.Part0 = LA
_Weld.Part1 = Main
_Weld.C0 = CFrame.new(0,-3,0)
local oooooo,ah = false,false
coroutine.wrap(function()
for i = 1,8 do
local p = Instance.new("Part",Ball)
p.Locked = true
p.CanCollide = false
p.Size = Vector3.new(0,0,0)
p.Color = Settings.Colors[1]
p.TopSurface = 0
p.Transparency = 1
p.BottomSurface = 0
p.CFrame = Main.CFrame
local b = Instance.new("SpecialMesh",p)
b.Scale = Vector3.new(0,0,0.05)
b.MeshId = "http://www.roblox.com/asset/?id=3270017"
local oweld = Instance.new("Weld",Main)
oweld.Part0 = Main
oweld.Part1 = p
coroutine.wrap(function()
for n = 1,35 do
b.Scale = b.Scale + Vector3.new(0.1,0.1,0)
p.Transparency = p.Transparency -(1/35)
oweld.C0 = oweld.C0 * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
Wait()
end
for n = 1,15 do
p.Color = Color3.new(p.Color.r-(n/15),p.Color.g-(n/15),p.Color.b-(n/15))
oweld.C0 = oweld.C0 * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
Wait()
end
oooooo = true
while Wait()do
if _DEBOUNCE then break end
oweld.C0 = oweld.C0 * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
if i == 1 then
coroutine.wrap(function()
local p = Instance.new("Part",Ball)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Size = Vector3.new(0,0,0)
p.Color = Settings.Colors[1]
p.TopSurface = 0
p.Transparency = 1
p.BottomSurface = 0
p.CFrame = CFrame.new(Main.Position)* CFrame.new(0,-1,0)
local b = Instance.new("SpecialMesh",p)
b.Scale = Vector3.new(3.5,0.05,3.5)
b.MeshId = "http://www.roblox.com/asset/?id=20329976"
for n = 1,13 do
p.Transparency = n/13
b.Scale = b.Scale + Vector3.new(0.05,0.1,0.05)
p.CFrame =(ah and Main.CFrame or p.CFrame)* CFrame.fromEulerAnglesXYZ(ah and math.random(-10,10)/10 or 0,ah and math.random(-10,10)/10 or math.pi/(math.random(-10,10)/10),ah and math.random(-10,10)/10 or 0)
Wait()
end
p:Destroy()
end)()end end end)()
Wait()
end end)()
repeat Wait()until oooooo
TweenTimeOfDay("00:00:00",1,false)
local p = Instance.new("PointLight",Main)
p.Color = Settings.Colors[1]
p.Range = 0
local cp = Instance.new("Part",Ball)
cp.Locked = true
cp.Anchored = true
cp.CanCollide = false
cp.Size = Vector3.new(0,0,0)
cp.Color = Settings.Colors[1]
cp.TopSurface = 0
cp.Transparency = 1
cp.BottomSurface = 0
cp.CFrame = CFrame.new(Main.Position)
local bc = Instance.new("CylinderMesh",cp)
bc.Scale = Vector3.new(0,0,0)
local cp2 = Instance.new("Part",Ball)
cp2.Locked = true
cp2.Anchored = true
cp2.CanCollide = false
cp2.Size = Vector3.new(0,0,0)
cp2.Color = Settings.Colors[2]
cp2.TopSurface = 0
cp2.Transparency = 1
cp2.BottomSurface = 0
cp2.CFrame = CFrame.new(Main.Position)
local bc2 = Instance.new("CylinderMesh",cp2)
bc2.Scale = Vector3.new(0,0,0)
for i = 1,60 do
p.Range = p.Range +1
bc.Scale = bc.Scale + Vector3.new(2.4/60,10000,2.4/60)
bc2.Scale = bc2.Scale + Vector3.new(1.2/60,10000,1.2/60)
cp.Transparency = cp.Transparency -(1/240)
cp2.Transparency = cp2.Transparency -(1/120)
Wait()
end
Wait(1.1)
LA.Anchored = false
for i = 1,30 do
p.Range = p.Range -1
bc.Scale = bc.Scale - Vector3.new(2.4/30,20000,2.4/30)
bc2.Scale = bc2.Scale - Vector3.new(1.2/30,20000,1.2/30)
cp.Transparency = i/30
cp2.Transparency = i/30
if i < 15 then
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/60,0)
else
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
end
Wait()
end
LA.Anchored = true
ah = true
coroutine.wrap(function()
local cp = Instance.new("Part",Ball)
cp.Locked = true
cp.Anchored = true
cp.CanCollide = false
cp.Size = Vector3.new(0,0,0)
cp.Color = Settings.Colors[1]
cp.TopSurface = 0
cp.Transparency = 1
cp.BottomSurface = 0
cp.CFrame = RA.CFrame * CFrame.new(0,-2,0)
local bc = Instance.new("SpecialMesh",cp)
bc.Scale = Vector3.new(0,0,0)
bc.MeshType = "Sphere"
for i = 1,15 do
bc.Scale = bc.Scale + Vector3.new(1,1,1)
cp.Transparency = i/15
Wait()
end cp:Destroy()end)()
cp:Destroy()
cp2:Destroy()
for i,v in pairs(IsNear(Main.Position,165,false))do
if v ~= Character then
pcall(function()
local BodyPOS = Instance.new("BodyPosition",v.Torso)
BodyPOS.P = 7000
BodyPOS.position = Main.Position + Vector3.new(math.random(-30,30),math.random(0,30),math.random(-30,30))
BodyPOS.maxForce = Vector3.new(3000000,3000000,3000000)
table.insert(Positionz,BodyPOS)
print(v)
end)end end
Wait(0.3)
_Weld:Destroy()
local Bp = Instance.new("BodyPosition",Main)
Bp.position =(LA.CFrame * CFrame.new(0,-180,0)).p
Bp.P = 4000
Bp.maxForce = Vector3.new(100000,100000,100000)
coroutine.wrap(function()
while Wait()do
if _DEBOUNCE then break end
for i,v in pairs(Positionz)do
v.position = Main.Position + Vector3.new(math.random(-30,30),math.random(0,30),math.random(-30,30))
end end end)()
while Wait()do
if(Bp.position -Main.Position).magnitude <= 3 then
break
end end
Main.Anchored = true
Bp:Destroy()
Wait(1.2)
TweenTimeOfDay(CachedTime,1,true)
coroutine.wrap(function()
for u = 1,3 do
coroutine.wrap(function()
local cp = Instance.new("Part",Ball)
cp.Locked = true
cp.Anchored = true
cp.CanCollide = false
cp.Size = Vector3.new(0,0,0)
cp.Color = Settings.Colors[2]
cp.TopSurface = 0
cp.Transparency = 1
cp.BottomSurface = 0
cp.CFrame = LA.CFrame * CFrame.new(0,-2,0)
local bc = Instance.new("SpecialMesh",cp)
bc.Scale = Vector3.new(0,0,0)
bc.MeshType = "Sphere"
for i = 1,15 do
bc.Scale = bc.Scale + Vector3.new(1,1,1)
cp.Transparency = i/15
Wait()
end cp:Destroy()end)()Wait()end end)()
coroutine.wrap(function()
local Pos = Main.Position
local BOOSH = Instance.new("Sound",Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= Player.Name then
table.insert(Characters,Torso)
end end end
return Characters
end
local function Boom()
for i = 1,25 do
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(40 +i *2.5)/2 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500099
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *12
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
local rm = Instance.new("SpecialMesh",p)
rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rm.Name = "BlastMesh"
rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for n = 1,15 do
rm.Scale = rm.Scale + Vector3.new(1.2 +2 +i/5,1.2 +2 +i/5,0.1)*4/2
if 2 +i/5 == 1.2 then
rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/70,0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CanCollide = false
p.Color = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
Wait()
end
p:Destroy()
end)()
Game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
Wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.Color = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(0.1,0.1,0.1)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(1.5 + 3 +i/5,1.5 + 3+i/5,0.1)*4/2
if 3+i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
Wait()
end
p:Destroy()
end)()
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(5 +i *9.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*5000000
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *11
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end
Wait(0.1)
end for i = 30,37 do
for _,v in pairs(GetHumanoids())do
if(Pos -v.Position).magnitude <=(140 +i *2.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500000000000
p.velocity = Vector3.new(math.random(-10,10),math.random(3,60),math.random(-10,10))+Moar*-160
Game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
Game:GetService("Debris"):AddItem(p,0.1)
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
Wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()
GenTimer(25)
for i,v in pairs(IsNear(Main.Position,30,false))do
if v ~= Character then
ypcall(function()
DoDamage(v,v.Humanoid.Health -1,true)
delay(25,function()
v.Humanoid.WalkSpeed = Cached
end)coroutine.wrap(function()
local Cached = v.Humanoid.WalkSpeed
local oo = 0
repeat 
v.Humanoid.WalkSpeed = math.abs(v.Humanoid.WalkSpeed)*-1
oo = oo +1
Wait()
until oo ==(25 *30)
end)()end)end end
for i,v in pairs(Positionz)do
v:Destroy()
end Ball:Destroy()
T.Anchored = false
LA.Anchored = false
SState = "Standing"
ResetWelds()
Debounces.Attacking = false
end;
n = function()
if Debounces.Attacking or CurrentPower -9500 < 0 or Debounces.Slowing then return end
CurrentPower = CurrentPower -9500
Debounces.Attacking = true
Debounces.Slowing = true
SState = "Null"
ResetWelds()
Wait(0.5)
T.Anchored = true
for i = 1,15 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/45,math.pi/50)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/45,math.pi/50)
Wait()
end
local CanDO = true
local Colorr = Settings.Colors[2]
coroutine.wrap(function()
while Wait()do
if not CanDO then break end
for i = 1,3 do
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Size = Vector3.new(0,0,0)
p.Color = Colorr
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
local b = Instance.new("BlockMesh",p)
b.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for n = 1,15 do
b.Scale = b.Scale + Vector3.new(0.15,0.15,0.15)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
p.Transparency = n/15
Wait()
end p:Destroy()end)()end end end)()
Wait(1)
for i = 1,3 do
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/32,math.pi/-3)
Wait()
end
Colorr = Color3.new(0.5,0.5,0.5)
delay(0.3,function()
CanDO = false
end)for i = 1,50 do
for u = 1,3 do
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Size = Vector3.new(0,0,0)
p.Color = Settings.Colors[2]
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = T.CFrame * CFrame.new(0,-2,-15)
local b = Instance.new("SpecialMesh",p)
b.Scale = Vector3.new(i/12.5,i/12.5,i/12.5)
b.MeshId = "http://www.roblox.com/asset/?id=3270017"
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[2]
p2.CFrame = T.CFrame * CFrame.new(0,-2,-15)
local bpm = Instance.new("SpecialMesh",p2)
bpm.MeshId = "http://www.roblox.com/asset/?id=20329976"
bpm.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for n = 1,15 do
b.Scale = b.Scale + Vector3.new(0.15,0.15,0.15)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p.Transparency = n/15
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-10,10)/10,0)
p2.Transparency = n/15
bpm.Scale = bpm.Scale + Vector3.new(0.4,0.025,0.4)
Wait()
end p:Destroy()end)()end
Wait(0.05)
end
for u = 1,3 do
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Size = Vector3.new(0,0,0)
p.Color = Settings.Colors[1]
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = T.CFrame * CFrame.new(0,-2,-15)
local b = Instance.new("SpecialMesh",p)
b.Scale = Vector3.new(5,5,5)
b.MeshId = "http://www.roblox.com/asset/?id=3270017"
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[2]
p2.CFrame = T.CFrame * CFrame.new(0,-2,-15)
local bpm = Instance.new("SpecialMesh",p2)
bpm.MeshId = "http://www.roblox.com/asset/?id=20329976"
bpm.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for n = 1,15 do
bpm.Scale = bpm.Scale + Vector3.new(0.6,0.025,0.6)
p2.Transparency = n/15
b.Scale = b.Scale + Vector3.new(u*(3/15),u*(3/15),u*(3/15))
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-10,10)/10,0)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p.Transparency = n/15
Wait()
end p:Destroy()p2:Destroy()end)()end
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = true
p.Size = Vector3.new(0,0,0)
p.Color = Settings.Colors[2]
p.TopSurface = 0
p.Transparency = 0.5
p.BottomSurface = 0
p.CFrame = T.CFrame * CFrame.new(0,-2,-15)
local b = Instance.new("SpecialMesh",p)
b.Scale = Vector3.new(1,0,1)
b.MeshId = "http://www.roblox.com/asset/?id=1033714"
for i = 1,6 do
b.Scale = b.Scale + Vector3.new(0.25,4,0.25)
p.CFrame = p.CFrame * CFrame.new(0,(b.Scale.y/6)/2,0)
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[1]
p2.CFrame = T.CFrame * CFrame.new(0,-2,-15)
local bpm = Instance.new("SpecialMesh",p2)
bpm.MeshId = "http://www.roblox.com/asset/?id=20329976"
bpm.Scale = Vector3.new(i,0,i)
coroutine.wrap(function()
for n = 1,15 do
bpm.Scale = bpm.Scale + Vector3.new(0.5,0.05,0.5)
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/(math.random(10,60)/10),0)
p2.Transparency = n/15
Wait()
end p2:Destroy()end)()
Wait()
end
for i = 1,7 do
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[2]
p2.CFrame = p.CFrame * CFrame.new(0,b.Scale.Y/2,0)
local bpm = Instance.new("SpecialMesh",p2)
bpm.MeshId = "http://www.roblox.com/asset/?id=20329976"
bpm.Scale = Vector3.new(i,0,i)
coroutine.wrap(function()
for n = 1,15 do
bpm.Scale = bpm.Scale + Vector3.new(0.75,0.75,0.75)
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-600,600)/100,math.pi/(math.random(10,60)/10),math.random(-600,600)/100)
p2.Transparency = n/15
Wait()
end p2:Destroy()end)()
Wait()
end
local dim = Instance.new("Part",Character)
dim.Anchored = true
dim.Locked = true
dim.CanCollide = true
dim.Size = Vector3.new(0,0,0)
dim.Color = Settings.Colors[1]
dim.TopSurface = 0
dim.BottomSurface = 0
dim.Transparency = 0.5
local b2 = Instance.new("SpecialMesh",dim)
b2.Scale = Vector3.new(4,6,4)
b2.MeshId = "http://www.roblox.com/Asset/?id=9756362"
dim.CFrame = p.CFrame * CFrame.new(0,b.Scale.Y/2,0)
local l = T.CFrame * CFrame.new(0,-2,-15)
T.Anchored = false
CanDO = true
Debounces.Attacking = false
ResetWelds()
SState = "Standing"
for u = 1,3 do
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = true
p.Size = Vector3.new(0,0,0)
p.Color = Settings.Colors[2]
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = dim.CFrame
local b = Instance.new("SpecialMesh",p)
b.Scale = Vector3.new(5,5,0.05)
b.MeshId = "http://www.roblox.com/asset/?id=3270017"
local p3 = Instance.new("Part",Character)
p3.Anchored = true
p3.Locked = true
p3.CanCollide = false
p3.Size = Vector3.new(0,0,0)
p3.Color = Settings.Colors[1]
p3.TopSurface = 0
p3.BottomSurface = 0
p3.CFrame = l
local b3 = Instance.new("SpecialMesh",p3)
b3.Scale = Vector3.new(u*3,u,u*3)
b3.MeshId = "http://www.roblox.com/asset/?id=20329976"
coroutine.wrap(function()
while Wait()do
if not CanDO then break end
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
p3.CFrame = p3.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/6,0)
end
for i = 1,15 do
p.Transparency = i/15
p3.Transparency = i/15
b.Scale = b.Scale + Vector3.new(0.05,0.05,0.05)
b3.Scale = b3.Scale + Vector3.new(1,0.5,1)
Wait()
end
p:Destroy()
p3:Destroy()
end)()end
Wait(2.3)
GenTimer(35)
coroutine.wrap(function()
for i = 1,35 do
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[2]
p2.CFrame = p.CFrame * CFrame.new(0,b.Scale.Y/2,0)
local bpm = Instance.new("SpecialMesh",p2)
bpm.MeshId = "http://www.roblox.com/asset/?id=20329976"
bpm.Scale = Vector3.new(i,0,i)
coroutine.wrap(function()
for n = 1,15 do
bpm.Scale = bpm.Scale + Vector3.new(0.75,0.75,0.75)
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-600,600)/100,math.pi/(math.random(10,60)/10),math.random(-600,600)/100)
p2.Transparency = n/15
Wait()
end p2:Destroy()end)()
Wait()
end
p:Destroy()
dim:Destroy()
end)()
CanDO = false
for i,v in pairs(IsNear(T.Position,75))do
if v ~= Character then
coroutine.wrap(function()
local p = Instance.new("Part",v)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Size = Vector3.new(0,0,0)
p.Color = Settings.Colors[2]
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = v.Torso.CFrame
local b = Instance.new("SpecialMesh",p)
b.Scale = Vector3.new(0,0,0)
b.MeshType = "Sphere"
Game:GetService("Debris"):AddItem(p,4)
local p2 = Instance.new("Part",v)
p2.Anchored = true
p2.Locked = true
p2.CanCollide = false
p2.Size = Vector3.new(0,0,0)
p2.Color = Settings.Colors[2]
p2.TopSurface = 0
p2.BottomSurface = 0
p2.CFrame = v.Torso.CFrame
local b2 = Instance.new("CylinderMesh",p2)
b2.Scale = Vector3.new(0,0,0)
Game:GetService("Debris"):AddItem(p2,4)
coroutine.wrap(function()
for n = 1,15 do
p.Transparency = n/15
b.Scale = b.Scale + Vector3.new(0.75,0.75,0.75)
p2.Transparency = n/15
b2.Scale = b2.Scale + Vector3.new(0.5,2000,0.5)
Wait()
end
p:Destroy()p2:Destroy()end)()end)()pcall(function()
local Cache = v.Humanoid.WalkSpeed
coroutine.wrap(function()
for o = 1,(35/(1/30))do
pcall(function()
v.Humanoid.WalkSpeed = 5
end)Wait()end end)()delay(35,function()
pcall(function()
v.Humanoid.WalkSpeed = Cache
end)end)end)end end
delay(35,function()
Debounces.Slowing = false
end)end;
t = function(Mouse)
if Debounces.Teleportin or Debounces.Attacking or CurrentPower -1000 < 0 or not Mouse.Hit then return end
Debounces.Teleportin = true
CurrentPower = CurrentPower -1000
T.CFrame = Mouse.Hit * CFrame.new(0,2,0)
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[2]
p.CFrame = CFrame.new(T.Position)
local bpm = Instance.new("SpecialMesh",p)
bpm.MeshId = "http://www.roblox.com/asset/?id=1323306"
bpm.Scale = Vector3.new(0,0,0)
local p3 = Instance.new("Part",Character)
p3.Locked = true
p3.CanCollide = false
p3.Anchored = true
p3.FormFactor = "Custom"
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Color = p.Color
p3.CFrame = CFrame.new(T.Position)
local bpm3 = Instance.new("CylinderMesh",p3)
bpm3.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for i = 1,17 do
p.CFrame = CFrame.new(p.Position)* CFrame.new(0,0.05,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-60,60)/100,0)
p.Transparency = i/17
bpm.Scale = bpm.Scale + Vector3.new(i*0.6,0.15,i*0.6)
p3.Transparency = i/17
bpm3.Scale = bpm3.Scale + Vector3.new(i*0.13,i*3000,i*0.13)
Wait()
end
o = true
p:Destroy()
p3:Destroy()
end)()
SState = "Standing"
Wait(3)
Debounces.Teleportin = false
end;
c = function(Mouse)
if Debounces.Attacking then return end
Debounces.Attacking = true
SState = "Null"
ResetWelds()
_DEBOUNCE = false;local Co;Co = Mouse.KeyUp:connect(function(k)
if k:lower()== 'c' then
_DEBOUNCE = true
Co:disconnect()
end end)
coroutine.wrap(function()
local s = PlaySound("http://www.roblox.com/asset?id=167197110",1,25,T.CFrame,true):GetChildren()[1]
s.Looped = true
s:Play()
while Wait()do
if _DEBOUNCE then
if s then
s:Stop()
s.Parent:Destroy()
end break end end end)()
while Wait()do
if _DEBOUNCE then break end
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
end coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[2]
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2,0)
local bpm = Instance.new("SpecialMesh",p)
bpm.Scale = Vector3.new(9,1.1,9)
bpm.MeshId = "http://www.roblox.com/asset/?id=1323306"
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[2]
p2.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2,0)
local bpm2 = Instance.new("SpecialMesh",p2)
bpm2.Scale = Vector3.new(9,1.1,9)
bpm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
local p3 = Instance.new("Part",Character)
p3.Locked = true
p3.CanCollide = false
p3.Anchored = true
p3.FormFactor = "Custom"
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Color = Settings.Colors[1]
p3.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2,0)
local bpm3 = Instance.new("CylinderMesh",p3)
bpm3.Scale = Vector3.new(2.5,100000,2.5)
coroutine.wrap(function()
for n = 1,15 do
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,-1,0)
bpm.Scale = bpm.Scale + Vector3.new(-0.005,3,-0.005)
bpm2.Scale = bpm2.Scale + Vector3.new(1,0.5,1)
bpm3.Scale = bpm3.Scale + Vector3.new(-0.05,1000,-0.05)
p3.Transparency = n/15
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/math.random(0,32),0)
p2.Transparency = n/30
Wait()
end
p:Destroy()
p2:Destroy()
p3:Destroy()
end)()end)()
CurrentPower = CurrentPower +(15000/90)
if CurrentPower >= MaxPower then
CurrentPower = MaxPower
_DEBOUNCE = true
Co:disconnect()
end end
ResetWelds()
SState = "Standing"
Wait(1)
Debounces.Attacking = false
end;
h = function(Mouse)
if Debounces.Attacking then return end
Debounces.Attacking = true
SState = "Null"
ResetWelds()
_DEBOUNCE = false;local Co;Co = Mouse.KeyUp:connect(function(k)
if k:lower()== 'h' then
_DEBOUNCE = true
Co:disconnect()
end end)
coroutine.wrap(function()
local s = PlaySound("http://www.roblox.com/asset?id=167197110",1.85,25,T.CFrame,true):GetChildren()[1]
s:Play()
while Wait()do
if _DEBOUNCE then
if s then
s:Stop()
s.Parent:Destroy()
end break end end end)()
while Wait()do
if _DEBOUNCE then break end
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
end coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[2]
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2,0)
local bpm = Instance.new("SpecialMesh",p)
bpm.Scale = Vector3.new(9,1.1,9)
bpm.MeshId = "http://www.roblox.com/asset/?id=1323306"
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[2]
p2.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2,0)
local bpm2 = Instance.new("SpecialMesh",p2)
bpm2.Scale = Vector3.new(9,1.1,9)
bpm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
local p3 = Instance.new("Part",Character)
p3.Locked = true
p3.CanCollide = false
p3.Anchored = true
p3.FormFactor = "Custom"
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Color = Color3.new(0,1,0)
p3.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2,0)
local bpm3 = Instance.new("CylinderMesh",p3)
bpm3.Scale = Vector3.new(2.5,100000,2.5)
coroutine.wrap(function()
for n = 1,15 do
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,-1,0)
bpm.Scale = bpm.Scale + Vector3.new(-0.005,3,-0.005)
bpm2.Scale = bpm2.Scale + Vector3.new(1,0.5,1)
bpm3.Scale = bpm3.Scale + Vector3.new(-0.05,1000,-0.05)
p3.Transparency = n/15
p2.CFrame = p2.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/math.random(0,32),0)
p2.Transparency = n/30
Wait()
end
p:Destroy()
p2:Destroy()
p3:Destroy()
end)()end)()if HU.Health >= MaxHealth or CurrentPower -200 < 0 then
HU.Health = MaxHealth
CurrentPower = math.abs(CurrentPower)
_DEBOUNCE = true
Co:disconnect()
end
HU.Health = HU.Health +((MaxHealth/90)*1.85)
CurrentPower = CurrentPower -200
end
ResetWelds()
SState = "Standing"
Wait(1)
Debounces.Attacking = false
end;}
local KeyBindings2 = {
c = KeyBindings.c;
t = KeyBindings.t;
h = KeyBindings.h;
q = KeyBindings.q;
l = function()
local Target = GetClosest(25)
if Debounces.Attacking or not Target or CurrentPower -MaxPower < 0 then return end
CurrentPower = CurrentPower -MaxPower
LOCALDEBOUNCE = true
Debounces.Attacking = true
SState = "Null"
ResetWelds()-- brb
HU.WalkSpeed = 5
coroutine.wrap(function()while Wait()do if not LOCALDEBOUNCE then break end StanceGyro.cframe = CFrame.new(T.Position,Vector3.new(Target.Torso.Position.X,T.Position.Y,Target.Torso.Position.Z))end end)()
local vec = allpartspls()*196.2
local vd = Instance.new("BodyVelocity",T)
vd.velocity = Vector3.new(0,vec+5,0)
delay(1.1,function()vd.velocity = Vector3.new(0,vec,0)end)

end;
}

do local p1 = Instance.new("Part",Tool)
p1.Anchored = true
p1.Locked = true
p1.CanCollide = false
p1.Name = "Handle"
p1.Color = Settings.Colors[2]
p1.TopSurface = 0
p1.BottomSurface = 0
p1.FormFactor = "Custom"
p1.Size = Vector3.new(1,1,1)
local cm1 = Instance.new("CylinderMesh",p1)
cm1.Scale = Vector3.new(0.25,1.5,0.25)
local p2 = Instance.new("Part",Tool)
p2.Anchored = true
p2.Locked = true
p2.CanCollide = false
p2.Name = "Handle"
p2.Color = Settings.Colors[2]
p2.TopSurface = 0
p2.BottomSurface = 0
p2.FormFactor = "Custom"
p2.Size = Vector3.new(1,1,1)
local cm2 = Instance.new("SpecialMesh",p2)
cm2.Scale = Vector3.new(0.65,0.65,0.65)
cm2.MeshId = "http://www.roblox.com/Asset/?id=9756362"
local w1 = Instance.new("Weld",p2)
w1.Part1 = p1
w1.Part0 = p2
w1.C0 = CFrame.new(0,1,0)
local p3 = Instance.new("Part",Tool)
p3.Anchored = true
p3.Locked = true
p3.CanCollide = false
p3.Name = "Handle"
p3.Color = Settings.Colors[2]
p3.TopSurface = 0
p3.BottomSurface = 0
p3.FormFactor = "Custom"
p3.Size = Vector3.new(1,1,1)
local cm3 = Instance.new("SpecialMesh",p3)
cm3.Scale = Vector3.new(1.15,0.4,1.15)
cm3.MeshId = "http://www.roblox.com/Asset/?id=9756362"
local w2 = Instance.new("Weld",p3)
w2.Part1 = p1
w2.Part0 = p3
w2.C0 = CFrame.new(0,-0.75,0)
local p4 = Instance.new("Part",Tool)
p4.Anchored = true
p4.Locked = true
p4.CanCollide = false
p4.Name = "Handle"
p4.Color = Settings.Colors[2]
p4.TopSurface = 0
p4.BottomSurface = 0
p4.FormFactor = "Custom"
p4.Size = Vector3.new(1,1,1)
local cm4 = Instance.new("SpecialMesh",p4)
cm4.Scale = Vector3.new(1.5,1.5,0.05)
cm4.MeshId = "http://www.roblox.com/asset/?id=3270017"
local w4 = Instance.new("Weld",p4)
w4.Part1 = p1
w4.Part0 = p4
local p5 = Instance.new("Part",Tool)
p5.Anchored = true
p5.Locked = true
p5.CanCollide = false
p5.Name = "Handle"
p5.Color = Settings.Colors[2]
p5.TopSurface = 0
p5.BottomSurface = 0
p5.FormFactor = "Custom"
p5.Size = Vector3.new(0.8,6.5,0.005)
local cm5 = Instance.new("BlockMesh",p5)
cm5.Scale = Vector3.new(1,1,0.3)
local w5 = Instance.new("Weld",p5)
w5.Part1 = p1
w5.Part0 = p5
w5.C0 = CFrame.new(0,-4,0)
local p6 = Instance.new("Part",Tool)
p6.Anchored = true
p6.Locked = true
p6.CanCollide = false
p6.Name = "Handle"
p6.Color = Settings.Colors[1]
p6.TopSurface = 0
p6.BottomSurface = 0
p6.FormFactor = "Custom"
p6.Size = Vector3.new(0.1,6.5,0.1)
local cm6 = Instance.new("BlockMesh",p6)
cm6.Scale = Vector3.new(1,1,0.4)
local w6 = Instance.new("Weld",p6)
w6.Part1 = p1
w6.Part0 = p6
w6.C0 = CFrame.new(0,-4,0)
local p7 = Instance.new("Part",Tool)
p7.Anchored = true
p7.Locked = true
p7.CanCollide = false
p7.Name = "Handle"
p7.Color = Settings.Colors[2]
p7.TopSurface = 0
p7.BottomSurface = 0
p7.FormFactor = "Custom"
p7.Name = "p7"
p7.Size = Vector3.new(1,1,0.1)
local cm7 = Instance.new("SpecialMesh",p7)
cm7.Scale = Vector3.new(0.7,1.2,0.1)
cm7.MeshId = "http://www.roblox.com/Asset/?id=9756362"
local w7 = Instance.new("Weld",p7)
w7.Part1 = p6
w7.Part0 = p7
w7.C0 = CFrame.new(0,-3.25,0)
local p8 = Instance.new("Part",Tool)
p8.Anchored = true
p8.Locked = true
p8.CanCollide = false
p8.Name = "Handle"
p8.Color = Settings.Colors[1]
p8.TopSurface = 0
p8.BottomSurface = 0
p8.FormFactor = "Custom"
p8.Size = Vector3.new(1,1,0.1)
local cm8 = Instance.new("SpecialMesh",p8)
cm8.Scale = Vector3.new(1,1,0.4)
cm8.MeshId = "http://www.roblox.com/asset/?id=3270017"
local w8 = Instance.new("Weld",p8)
w8.Part1 = p6
w8.Part0 = p8
w8.C0 = CFrame.new(0,-2,0)
local p9 = Instance.new("Part",Tool)
p9.Anchored = true
p9.Locked = true
p9.CanCollide = false
p9.Name = "Handle"
p9.Color = Settings.Colors[1]
p9.TopSurface = 0
p9.BottomSurface = 0
p9.Name = "p9"
p9.FormFactor = "Custom"
p9.Size = Vector3.new(1,1,0.1)
local cm9 = Instance.new("SpecialMesh",p9)
cm9.Scale = Vector3.new(1,1,0.4)
cm9.MeshId = "http://www.roblox.com/asset/?id=3270017"
local w9 = Instance.new("Weld",p9)
w9.Part1 = p6
w9.Part0 = p9
w9.C0 = CFrame.new(0,-1,0)
local p10 = Instance.new("Part",Tool)
p10.Anchored = true
p10.Locked = true
p10.CanCollide = false
p10.Name = "Handle"
p10.Color = Settings.Colors[1]
p10.TopSurface = 0
p10.BottomSurface = 0
p10.FormFactor = "Custom"
p10.Size = Vector3.new(1,1,0.1)
local cm10 = Instance.new("SpecialMesh",p10)
cm10.Scale = Vector3.new(1,1,0.4)
cm10.MeshId = "http://www.roblox.com/asset/?id=3270017"
local w10 = Instance.new("Weld",p10)
w10.Part1 = p6
w10.Part0 = p10
local p11 = Instance.new("Part",Tool)
p11.Anchored = true
p11.Locked = true
p11.CanCollide = false
p11.Name = "Handle"
p11.Color = Settings.Colors[1]
p11.TopSurface = 0
p11.BottomSurface = 0
p11.FormFactor = "Custom"
p11.Name = "pd"
p11.Size = Vector3.new(1,1,0.1)
local cm11 = Instance.new("SpecialMesh",p11)
cm11.Scale = Vector3.new(1,1,0.4)
cm11.MeshId = "http://www.roblox.com/asset/?id=3270017"
local w11 = Instance.new("Weld",p11)
w11.Part1 = p6
w11.Part0 = p11
w11.C0 = CFrame.new(0,2,0)
Tool.Selected:connect(function(Mouse)
w1 = Instance.new("Weld",p2)
w1.Part1 = p1
w1.Part0 = p2
w1.C0 = CFrame.new(0,1,0)
w2 = Instance.new("Weld",p3)
w2.Part1 = p1
w2.Part0 = p3
w2.C0 = CFrame.new(0,-0.75,0)
w4 = Instance.new("Weld",p4)
w4.Part1 = p1
w4.Part0 = p4
w5 = Instance.new("Weld",p5)
w5.Part1 = p1
w5.Part0 = p5
w5.C0 = CFrame.new(0,-4,0)
w6 = Instance.new("Weld",p6)
w6.Part1 = p1
w6.Part0 = p6
w6.C0 = CFrame.new(0,-4,0)
w7 = Instance.new("Weld",p7)
w7.Part1 = p6
w7.Part0 = p7
w7.C0 = CFrame.new(0,-3.25,0)
w8 = Instance.new("Weld",p8)
w8.Part1 = p6
w8.Part0 = p8
w8.C0 = CFrame.new(0,-2,0)
w9 = Instance.new("Weld",p9)
w9.Part1 = p6
w9.Part0 = p9
w9.C0 = CFrame.new(0,-1,0)
w10 = Instance.new("Weld",p10)
w10.Part1 = p6
w10.Part0 = p10
w11 = Instance.new("Weld",p11)
w11.Part1 = p6
w11.Part0 = p11
w11.C0 = CFrame.new(0,2,0)
Mouse.KeyDown:connect(function(Key)
if KeyBindings2[Key:lower()]then
coroutine.wrap(function()
KeyBindings2[Key:lower()](Mouse)
end)()end end)end)
coroutine.wrap(function()
while Wait()do
w1.C0 = w1.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/-32,0)
w2.C0 = w2.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/32,0)
end end)()
local _HIT = {}
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
v.CanCollide = true
v.Touched:connect(function(obj)
if obj.Parent ~= Character and Debounces.SwordDamage and obj.Parent:findFirstChild("Humanoid")and not _HIT[obj.Parent]then
_HIT[obj.Parent]= true
DoDamage(obj.Parent,math.random(30,70))
pcall(function()
local bf = Instance.new("BodyVelocity",obj.Parent.Torso)
bf.velocity =(v.Position -obj.Position).unit *200
bf.maxForce = Vector3.new(10000,100000,10000)
Game:GetService("Debris"):AddItem(bf,0.5)
end)do ypcall(function()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[2]
p.CFrame = CFrame.new(obj.Parent.Torso.Position)* CFrame.new(0,-2,0)
local bpm = Instance.new("SpecialMesh",p)
bpm.MeshId = "http://www.roblox.com/asset/?id=1323306"
bpm.Scale = Vector3.new(0,0,0)
local p3 = Instance.new("Part",Character)
p3.Locked = true
p3.CanCollide = false
p3.Anchored = true
p3.FormFactor = "Custom"
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Color = p.Color
p3.CFrame = CFrame.new(obj.Parent.Torso.Position)
local bpm3 = Instance.new("CylinderMesh",p3)
bpm3.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for ae = 1,18 do
p.Transparency = ae/18
p3.Transparency = ae/18
bpm3.Scale = bpm3.Scale + Vector3.new(0.1,100,0.1)
bpm.Scale = bpm.Scale + Vector3.new(1.5,2,1.5)
Wait()
end
p:Destroy()
p3:Destroy()
end)()end)end delay(0.5,function()
pcall(function()
_HIT[obj.Parent]= nil
end)end)end end)end end end
Tool.Deselected:connect(function()
Equipped = false
_Mouse = Player:GetMouse()
end)
_Mouse.KeyDown:connect(function(Key)
if KeyBindings[Key:lower()]and not Equipped then
KeyBindings[Key:lower()](_Mouse)
end end)
Tool.Selected:connect(function(Mouse)
Equipped = true
Mouse.Button1Down:connect(function()
Debounces.SwordDamage = false
Wait()
if Debounces.Attacking then return end
Debounces.SwordDamage = true
Debounces.Attacking = true
SState = "Null"
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.CanCollide = false
end end
ResetWelds()
for i = 1,15 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/30)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
Wait()
end local o;o = Mouse.Button1Up:connect(function()
Debounces.SwordDamage = false
Debounces.Attacking = false
o:disconnect()
end)
coroutine.wrap(function()
local Old = Tool.pd.CFrame.p
while Wait()do
if not Debounces.SwordDamage then break end
local New = Tool.pd.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.Color = Settings.Colors[1]
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
end end)()end end)()
coroutine.wrap(function()
local Old = Tool.p7.CFrame.p
while Wait()do
if not Debounces.SwordDamage then break end
local New = Tool.p7.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.Color = Settings.Colors[2]
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
end end)()end end)()
coroutine.wrap(function()
local Old = Tool.p9.CFrame.p
while Wait()do
if not Debounces.SwordDamage then break end
local New = Tool.p9.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.Color = Color3.new(0.5,0.5,0.5)
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
end end)()end end)()
local ooo = -5
while Wait()do
if not Debounces.SwordDamage then break end
HU.WalkSpeed = 0
ooo = ooo +0.005
StanceGyro.cframe = FaceForward()
pcall(function()
RA.RightGrip.C0 = RA.RightGrip.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/-ooo)
end)end
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.CanCollide = true
end end
ResetWelds()
SState = "Standing"
pcall(function()
RA.RightGrip.C0 = CFrame.new(0,-1,0,1,0,-0,0,0,1,0,-1,-0)
end)end)end)
local MainGui = Instance.new("ScreenGui",PlayerGui)
MainGui.Name = "Kronos Gui"
local StopGuiAnim = false
local HealthBar = Instance.new("Frame",MainGui)
HealthBar.Size = UDim2.new(0.06,0,0.3,0)
HealthBar.Position = UDim2.new(0.005,0,0.28,0)
HealthBar.BorderSizePixel = 5
HealthBar.BackgroundColor3 = Settings.Colors[2]
HealthBar.BorderColor3 = Settings.Colors[2]
local HealthFluidC = Instance.new("Frame",HealthBar)
HealthFluidC.Size = UDim2.new(1,0,0.85,0)
HealthFluidC.BackgroundTransparency = 1
local Heart = Instance.new("ImageLabel",HealthFluidC)
Heart.Image = "http://www.roblox.com/asset/?id=166857692"
Heart.BackgroundTransparency = 1
Heart.Size = UDim2.new(0.7,0,0.35,0)
Heart.Position = UDim2.new(0.15,0,0.38,0)
Heart.ZIndex = 4
local HealthFluid = Instance.new("Frame",HealthFluidC)
HealthFluid.Size = UDim2.new(1,0,-1,0)
HealthFluid.Position = UDim2.new(0,0,1,0)
HealthFluid.BackgroundColor3 = Color3.new(1,0,0)
HealthFluid.ZIndex = 3
HealthFluid.BorderSizePixel = 0
HealthFluid.BorderColor3 = Color3.new(1,1,1)
local HealthDisplayType,HSpinDir = true,true
local HealthCount = Instance.new("TextLabel",HealthBar)
HealthCount.Size = UDim2.new(1,0,0.15,0)
HealthCount.Position = UDim2.new(0,0,0.85,0)
HealthCount.BorderSizePixel = 0
HealthCount.BorderColor3 = Color3.new(1,1,1)
HealthCount.BackgroundColor3 = Settings.Colors[2]
HealthCount.TextColor3 = Color3.new(1,1,1)
HealthCount.TextScaled = true
HealthCount.Font = "SourceSansBold"
HealthCount.Text = "0%"
HealthCount.ZIndex = 2
HealthCount.MouseEnter:connect(function()HealthDisplayType = false end)
HealthCount.MouseLeave:connect(function()HealthDisplayType = true end)
local nhel = true;local function UpdateHealth()
if HU.Health < 1 or not nhel then HU:TakeDamage(MaxHealth)nhel = false end
if HU.Health < MaxHealth and nhel then
HU.Health = HU.Health +0.25
end end
local PowerBar = Instance.new("Frame",MainGui)
PowerBar.Size = UDim2.new(0.06,0,0.3,0)
PowerBar.Position = UDim2.new(0.935,0,0.28,0)
PowerBar.BorderSizePixel = 5
PowerBar.BackgroundColor3 = Settings.Colors[2]
PowerBar.BorderColor3 = Settings.Colors[2]
local PowerFluidC = Instance.new("Frame",PowerBar)
PowerFluidC.Size = UDim2.new(1,0,0.85,0)
PowerFluidC.BackgroundTransparency = 1
local PowerImg = Instance.new("ImageLabel",PowerFluidC)
PowerImg.Image = "http://www.roblox.com/asset/?id=166864206"
PowerImg.BackgroundTransparency = 1
PowerImg.Size = UDim2.new(0.7,0,0.35,0)
PowerImg.Position = UDim2.new(0.15,0,0.38,0)
PowerImg.ZIndex = 4
local PowerFluid = Instance.new("Frame",PowerFluidC)
PowerFluid.Size = UDim2.new(1,0,-1,0)
PowerFluid.Position = UDim2.new(0,0,1,0)
PowerFluid.BackgroundColor3 = Settings.Colors[1]
PowerFluid.ZIndex = 3
PowerFluid.BorderSizePixel = 0
PowerFluid.BorderColor3 = Color3.new(1,1,1)
local PowerDisplayType = true
local PowerCount = Instance.new("TextLabel",PowerBar)
PowerCount.Size = UDim2.new(1,0,0.15,0)
PowerCount.Position = UDim2.new(0,0,0.85,0)
PowerCount.BorderSizePixel = 0
PowerCount.BorderColor3 = Color3.new(1,1,1)
PowerCount.BackgroundColor3 = Settings.Colors[2]
PowerCount.TextColor3 = Color3.new(1,1,1)
PowerCount.TextScaled = true
PowerCount.Font = "SourceSansBold"
PowerCount.Text = "0%"
PowerCount.ZIndex = 2
PowerCount.MouseEnter:connect(function()PowerDisplayType = false end)
PowerCount.MouseLeave:connect(function()PowerDisplayType = true end)
local function UpdateBars()
if StopGuiAnim then return end
PowerFluid:TweenSize(UDim2.new(1,0,-1/(MaxPower/CurrentPower),0),"InOut","Quint",0.1)
PowerCount.Text = PowerDisplayType and tostring((CurrentPower/MaxPower)*100):gsub("%.+%d+",'').."%" or math.floor(CurrentPower)
PowerCount.BorderSizePixel = PowerCount.BorderSizePixel +1
PowerFluid.BorderSizePixel = PowerFluid.BorderSizePixel +1
PowerFluid.Transparency = PowerFluid.Transparency +0.025
PowerImg.Rotation = HSpinDir and PowerImg.Rotation -1 or PowerImg.Rotation +1
if PowerFluid.BackgroundTransparency >= 0.5 then
PowerFluid.BackgroundTransparency = 0
end if PowerCount.BorderSizePixel == 5 then
PowerFluid.BorderSizePixel = 0
PowerCount.BorderSizePixel = 0
end HealthFluid:TweenSize(UDim2.new(1,0,-1/(MaxHealth/HU.Health),0),"InOut","Quint",0.1)
HealthCount.Text = HealthDisplayType and tostring((HU.Health/MaxHealth)*100):gsub("%.+%d+",'').."%" or math.floor(HU.Health)
HealthCount.BorderSizePixel = HealthCount.BorderSizePixel +1
HealthFluid.BorderSizePixel = HealthFluid.BorderSizePixel +1
HealthFluid.Transparency = HealthFluid.Transparency +0.025
Heart.Rotation = HSpinDir and Heart.Rotation +1 or Heart.Rotation -1
if Heart.Rotation >= 45 or Heart.Rotation <= -45 then
HSpinDir = not HSpinDir
end if HealthFluid.BackgroundTransparency >= 0.5 then
HealthFluid.BackgroundTransparency = 0
end if HealthCount.BorderSizePixel == 5 then
HealthCount.BorderSizePixel = 0
HealthFluid.BorderSizePixel = 0
end end
coroutine.wrap(function()
while Wait()do(function()
if SState == "Null" or SState == "Jumping" then return end
if not Debounces.Attacking then
if T.Velocity.magnitude >= 5 and SState ~= "Null" and SState ~= "Jumping" then
SState = "Running"
else
SState = "Standing"
end end end)()end end)()
HU.Jumping:connect(function()
if SState == "Null" then return end
SState = "Jumping"
local vu = Instance.new("BodyVelocity",T)
vu.P = 5125
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,60,0)
Game:GetService("Debris"):AddItem(vu,0.267)
RiseRate = RiseRate +3
delay(1,function()
RiseRate = RiseRate -3
if SState ~= "Null" then
SState = "Standing"
end end)end)
local DCon;DCon = HU.Died:connect(function()
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,32 do
v.Transparency = i/32
Wait()
end v:Destroy()end)()end end
local o = false
SState = "Null"
ResetWelds()
Wait()
delay((1/30)*32,function()PlaySound("http://www.roblox.com/asset?id=167115397",1,30,T.CFrame)end)
table.foreach(Character:GetChildren(),function(_,v)
if v:IsA("BasePart")and v.Name ~= "HumanoidRootPart" then
v.Anchored = true
coroutine.wrap(function()
for i = 1,32 do
v.Transparency = i/32
Wait()
end for i = 1,3 do
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[2]
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-2,0)
local bpm = Instance.new("SpecialMesh",p)
bpm.MeshId = "http://www.roblox.com/asset/?id=1323306"
bpm.Scale = Vector3.new(0,0,0)
local p3 = Instance.new("Part",Character)
p3.Locked = true
p3.CanCollide = false
p3.Anchored = true
p3.FormFactor = "Custom"
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Color = p.Color
p3.CFrame = CFrame.new(T.Position)
local bpm3 = Instance.new("CylinderMesh",p3)
bpm3.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for n = 1,17 do
p.CFrame = CFrame.new(p.Position)* CFrame.new(0,0.05,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-60,60)/100,0)
p.Transparency = n/35
bpm.Scale = bpm.Scale + Vector3.new(i*0.6,0.15,i*0.6)
p3.Transparency = n/35
bpm3.Scale = bpm3.Scale + Vector3.new(i*0.13,i*3000,i*0.13)
Wait()
end
o = true
p:Destroy()
p3:Destroy()
end)()
Wait()
end end)()end end)
local Bright = Game.Lighting.Brightness
local Amb = Game.Lighting.Ambient
local function nn(oc,xx,Div)
pcall(function()
oc.BackgroundTransparency = xx/Div
oc.Image = ""
end)
for i,v in pairs(oc:GetChildren())do
nn(v,xx,Div)
end end
while Wait()do
if o then
PlaySound("http://www.roblox.com/asset?id=167115397",1.4,50,T.CFrame)
for i = 1,26 do
PowerBar.Rotation = math.random(-65,65)
HealthBar.Rotation = math.random(-90,90)
StopGuiAnim = true
nn(PowerBar,i,26)
nn(HealthBar,i,26)
DamageNear(T.Position,1205/26,300,false,function(Char)
table.foreach(Char:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.Anchored = true
delay(0.5,function()
v.Anchored = false
end)end end)
local p2 = Instance.new("Part",Char)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = Settings.Colors[2]
p2.CFrame = Char.Torso.CFrame * CFrame.new(0,-1,0)
local bpm2 = Instance.new("SpecialMesh",p2)
bpm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
bpm2.Scale = Vector3.new(0,0,0)
for u = 1,5 do
p2.Transparency = u/5
bpm2.Scale = bpm2.Scale + Vector3.new(3,6,3)
Wait()
end end)
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Color = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(0,math.pi/math.random(0,4),0)
local bpm = Instance.new("SpecialMesh",p)
bpm.MeshId = "http://www.roblox.com/asset/?id=3270017"
bpm.Scale = Vector3.new(0,0,0)
local p2 = Instance.new("Part",Character)
p2.Locked = true
p2.CanCollide = false
p2.Anchored = true
p2.FormFactor = "Custom"
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Color = p.Color
p2.CFrame = T.CFrame * CFrame.new(0,-1,0)
local bpm2 = Instance.new("SpecialMesh",p2)
bpm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
bpm2.Scale = Vector3.new(0,0,0)
local p3 = Instance.new("Part",Character)
p3.Locked = true
p3.CanCollide = false
p3.Anchored = true
p3.FormFactor = "Custom"
p3.TopSurface = 0
p3.BottomSurface = 0
p3.Color = p.Color
p3.CFrame = T.CFrame
local bpm3 = Instance.new("CylinderMesh",p3)
bpm3.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for n = 1,19 do
p2.Transparency = n/19
p.Transparency = n/19
bpm.Scale = bpm.Scale + Vector3.new(i*10,i*10,1)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
bpm2.Scale = bpm2.Scale + Vector3.new(i*0.75,-1.5+i,i*0.75)
p3.Transparency = n/10
bpm3.Scale = bpm3.Scale + Vector3.new(i*0.3,i*3000,i*0.3)
Game.Lighting.Brightness = n/19
Game.Lighting.Ambient = Color3.new(n/19,n/19,n/19)
Wait()
end
p2:Destroy()
p:Destroy()
p3:Destroy()
end)()
Wait()end break end end
Wait(3)
Game.Lighting.Brightness = Bright
Game.Lighting.Ambient = Amb
local m = Instance.new("Model",Workspace)
m.Name = Player.Name
local hu = Instance.new("Humanoid",m)
hu.MaxHealth = 100
Player.Character = m
hu.Health = 0
DCon:disconnect()
HU:Destroy()
end)
local function RunAnimation()
local STCO = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
local StandRS = CFrame.new(1,0.5,0,0.707106709,0,0.707106709,0,1,0,-0.707106709,0,0.707106709)
local StandRH = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local StandLS = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
local StandLH = CFrame.new(-1,-1,0,0,0.0392597914,-0.999228895,0,0.999228895,0.0392597914,1,0,0)
if SState == "Jumping" then
HU.WalkSpeed = 154
ResetWelds(true)
RS.DesiredAngle = -0.4
LS.DesiredAngle = 0.4
RH.DesiredAngle = -0.4
LH.DesiredAngle = 0.4
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(-math.pi/12,0,0)
N.DesiredAngle = 0
end if SState == "Standing" then
HU.WalkSpeed = 154
RS.C0 = StandRS
RH.C0 = StandRH
LS.C0 = StandLS
LH.C0 = StandLH
local tb = math.cos(time()*3.1)
local tbs = math.sin(time()*3.1)
StanceGyro.cframe = FaceForward()* CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
StanceGyro.Parent = T
StanceGyro.P = 10000
StanceGyro.maxTorque = Vector3.new(5000,5000,5000)*50000
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(tb *0.05 +0.2,0,0)
N.DesiredAngle = 0.8
RS.DesiredAngle = -0.1
LS.DesiredAngle = 0.2
RH.DesiredAngle = 0
LH.DesiredAngle = 0
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-tb *0.01 -0.2,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-tbs *0.1 -0.8,0.8,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-0.2,tbs *0.05,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,0)
end if SState == "Running" then
HU.WalkSpeed = 154
ResetWelds(true)
StanceGyro.Parent = T
StanceGyro.P = 14000
StanceGyro.D = 3000
StanceGyro.maxTorque = Vector3.new(5000,5000,5000)*50000000000000000000000
StanceGyro.cframe = FaceForward()
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(-math.pi/7,0,0)
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(-0.4,0,0)
N.DesiredAngle = 0
RS.DesiredAngle = Equipped and 0.2 or(-math.cos(time()*9)*8)/10
LS.DesiredAngle =(-math.cos(time()*9)*8)/10
RH.DesiredAngle = math.cos(time()*9)*2.5 +0.25
LH.DesiredAngle = math.cos(time()*9)*2.5 -0.25
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/6.5,-math.pi/10,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/4,0,0)
end
Wait(0.05-(1/30))
end
for i,v in pairs(Character:GetChildren())do if v:IsA("Clothing")or v:IsA("Hat")or v:IsA("CharacterMesh")then
v:Destroy()
end end
HU.MaxHealth = MaxHealth
Wait()
HU.Health = MaxHealth
pcall(function()
Character.Health:Destroy()
Character.Torso.roblox:Destroy()
end)while Wait()do
RunAnimation()
UpdateBars()
UpdateHealth()
local s = Character:findFirstChild("Body Colors")
if s then
local n = {"HeadColor","TorsoColor","LeftLegColor","RightLegColor","RightArmColor","LeftArmColor"}
for _,o in pairs(n)do
s[o] = BrickColor.new("Institutional white")
end end end

--~IR(InternelRecorshun), Pr0m(F1r3Bla3zpls)& Esy(Est0mehk)~---