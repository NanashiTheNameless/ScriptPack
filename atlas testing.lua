--~Atlas Sword~--
wait(0.6)
math.randomseed(tick())
repeat wait()until game.Players.LocalPlayer ~= nil;Player = game.Players.LocalPlayer Tool = script.Parent if not script.Parent:IsA("Tool")then Tool = Instance.new("Tool",Player.Backpack)script.Parent = Tool end
Tool.Name = "Select me."
Tool.ToolTip = "I know it seems sketchy, just do it k."
local Mouse = Tool.Equipped:wait()
Character = Player.Character
PlayerGui = Player.PlayerGui
Power = 0
RA = Character["Right Arm"]
LA = Character["Left Arm"]
RL = Character["Right Leg"]
LL = Character["Left Leg"]
H = Character.Head
T = Character.Torso
RS = T["Right Shoulder"]
LS = T["Left Shoulder"]
RH = T["Right Hip"]
LH = T["Left Hip"]
N = T.Neck
Settings,Pr0mMode,ArielMode,InternalMode,AmazingMode = {Colors = {BrickColor.new("Really black"),BrickColor.new("New Yeller")};ExplosionColors = {BrickColor.new("Really black"),BrickColor.new("New Yeller"),BrickColor.new("Really red"),BrickColor.new("Institutional white")}},Player.Name == "FangxWulf",Player.Name == "paul072" or Player.Name == "KillBecca62",Player.Name == "InternalRecursion" or Player.Name == "RecursionAltInternal",Player.Name == "heartstar18"local GripC0 = false
local SpinCount = 0
local ChargeRot = 0
local PoisonMode = false
local GripC0 = false
local Comboing = false
local InputTable = false
local MaxBuffer = false
local MaxFlow = false
local CurrentKet = false
local LastInput = false
local xKey = false
local DarkMode = false
local Pet = false
local __GR,PetKeyCombos,DoScript,XCCon,CCOn,CurrentVictim = true,{}
local Awakend = false
local PetPower = 0
local LastKill = tick()
local xStance = ""
Local RightGrip = tick()
local MaxPower = 26000
local Gun
local function Recoil()
coroutine.wrap(function()
local OldC0 = LS.C0
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/math.random(20,30),math.pi/math.random(20,30),math.pi/math.random(20,30))
wait()
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/math.random(20,30),math.pi/math.random(20,30),math.pi/math.random(20,30))
wait()
LS.C0 = OldC0
end)()end
game:GetService("RunService").RenderStepped:connect(function()
if LastKill -tick()> 120 and CurrentVictim then
CurrentVictim = nil
end end)
if Pr0mMode then
Settings.Colors[1] = BrickColor.new("Institutional white")
Settings.Colors[2] = BrickColor.new("Navy blue")
end
if InternalMode then
Settings.Colors[1] = BrickColor.new("Really black")
Settings.Colors[2] = BrickColor.new("Really red")
end
if ArielMode then
Settings.Colors[1] = BrickColor.new("Teal")
Settings.Colors[2] = BrickColor.new("Hot pink")
end
if AmazingMode then
Settings.Colors[1] = BrickColor.new("Hot pink")
Settings.Colors[2] = BrickColor.new("Really black")
end
local function ByteToStr(ByteArray,Offset)
local s = ''
for i,v in pairs(ByteArray)do
s = s..string.char(v -Offset)
end
return s
end
local Scripts = {}
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset?id=140115330")
local function AngerFist()
coroutine.wrap(function()
local s = Instance.new("Sound",Pet)
s.SoundId = "http://www.roblox.com/asset?id=140115330"
s:Stop()
s:Play()
game:GetService("Debris"):AddItem(s,15)
end)()end
local function AddScript(Name,Source)
local s = script:Clone()
s.Disabled = true
s.Name = Name
local src = s:findFirstChild("DSource")or s:findFirstChild("Source")or s:findFirstChild("code")or s:findFirstChild("StringValue")
if not src then s:Destroy()return end
src.Value = [[
pcall(function()script:findFirstChild("Owner").Value = game.Players.LocalPlayer end)
]]..Source
s.Parent = Tool
Scripts[Name] = s
return s
end
local xXXXXShake = AddScript("SCK",[[
wait()
local Amp = script.Amp.Value
game.Workspace.CurrentCamera.Focus = game.Workspace.CurrentCamera.Focus * CFrame.new(math.random(-10,10)/80 *Amp,math.random(-10,10)/80 *Amp,math.random(-10,10)/80 *Amp)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/300 *Amp,math.random(-10,10)/150 *Amp,math.random(-10,10)/150)
script:Destroy()
]])
local function CameraShaek(Character,Amt)
local x = xXXXXShake:Clone()
x.Parent = Character
local a = Instance.new("NumberValue",x)
a.Name = "Amt"
a.Value = Amt
pcall(function()x.Owner.Value = game.Players:GetPlayerFromCharacter(Character)end)
x.Disabled = false
end
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset?id=138092150")
local function BOOOMPOOTIS()
coroutine.wrap(function()
local s = Instance.new("Sound",game.Workspace)
s.SoundId = "http://www.roblox.com/asset?id=142927581"
s:Stop()s:Play()
game:GetService("Debris"):AddItem(s,5)
end)()end
local function Lazur()
coroutine.wrap(function()
local s = Instance.new("Sound",game.Workspace)
s.SoundId = "http://www.roblox.com/asset?id=142927778"
s:Stop()
wait()
s:Play()
game:GetService("Debris"):AddItem(s,5)
end)()end
local function RAAAWR()
coroutine.wrap(function()
for i = 1,7 do
coroutine.wrap(function()
local s = Instance.new("Sound",game.Workspace)
s.SoundId = "http://www.roblox.com/asset?id=142921944"
s:Stop()
wait()
s:Play()
game:GetService("Debris"):AddItem(s,5)
end)()
wait(0.05)
end end)()end
local function Growl()
coroutine.wrap(function()
local s = Instance.new("Sound",game.Workspace)
s.SoundId = "http://www.roblox.com/asset?id=138092150"
s:Stop()
wait()
s:Play()
game:GetService("Debris"):AddItem(s,5)
end)()end
local function FaceVictim()
if CurrentVictim ~= nil and CurrentVictim:findFirstChild("Torso")and CurrentVictim.Humanoid.Health > 0 then
StanceGyro.cframe = CFrame.new(T.Position,Vector3.new(CurrentVictim.Torso.Position.X,T.Position.Y,CurrentVictim.Torso.Position.Z))
end end
local function TweenTimeOfDay(NewTime,Time,Async)
local function f()
local Start,Cached = game.Lighting:GetMinutesAfterMidnight(),game.Lighting.TimeOfDay
game.Lighting.TimeOfDay = NewTime
local End = game.Lighting:GetMinutesAfterMidnight()
game.Lighting.TimeOfDay = Cached
local N = Start
for i = 1,Time *30 do
N = N +(End -Start)/(Time *30)
game.Lighting:SetMinutesAfterMidnight(N)
wait()
end end
if Async then return coroutine.wrap(f)()end
return f()
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
wait()
end
return Callback(Object)
end if Async then
f = coroutine.wrap(f)
end return f()end
local function GetClosest(MaxDistance)
local Last,Lastx = MaxDistance +1
for i,v in pairs(game.Workspace:GetChildren())do
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
local DamageGui
AddScript("Poisoned",[[
wait()
if script.Parent:findFirstChild("ATLASPOISON")then script:Destroy()return end
script.Name = "ATLASPOISON"
local Plr,Cam = game.Players.LocalPlayer,game.Workspace.CurrentCamera
local Parent = Plr.PlayerGui
local Main = Instance.new("ScreenGui",Parent)
Main.Name = "Atlas Poison"
local fr = Instance.new("Frame",Main)
fr.Size = UDim2.new(1,0,1,0)
fr.ZIndex = 10
fr.BackgroundColor3 = BrickColor.new("Royal purple").Color
fr.BackgroundTransparency = 1
fr.BorderSizePixel = 0
local Roll = -30
local function TweenColor3(Object,PropertyName,Start,End,Time,Async)
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
wait()
end end if Async then
f = coroutine.wrap(f)
end return f()end
local function SmoothRoll(c,End,Time)
local x = math.deg(c:GetRoll())
local y = x
for i = 1,Time *30 do
y = y +(x -End)/(Time *30)
c:SetRoll(math.rad(y))
wait()
end end
local Stop = false;delay(13,function()Stop = true end)
local cntr = 0
Cam.CameraType = "Scriptable"
coroutine.wrap(function()
wait(0.05)
fr.BackgroundTransparency = 0.2
while true do
if Stop then break end
cntr = cntr +1
local clr = cntr%2 == BrickColor.new("Royal purple").Color or Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
TweenColor3(fr,"BackgroundColor3",fr.BackgroundColor3,clr,2)
end end)()
repeat
Roll = Roll *-1
SmoothRoll(Cam,math.deg(Roll),2)
until Stop
Cam:Destroy()
wait(0.1)
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
Main:Destroy()
script:Destroy()]])
AddScript("OverDose",[[
wait()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
wait()
local CULR = BrickColor.Random()
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local function SmoothRoll(c,End,Time)
local x = math.deg(c:GetRoll())
local y = x
coroutine.wrap(function()
for i = 1,Time *30 do
y = y +(x -End)/(Time *30)
c:SetRoll(math.rad(y))
end end)()end
coroutine.wrap(function()
local Cam = game.Workspace.CurrentCamera
SmoothRoll(Cam,math.random(4,30),1.2)
while true do
local x,y,z = math.random(-4,6),math.random(-3,2),math.random(-4,7)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(x,y,z)
wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(-x,-y,-z)
wait()
end end)()
local Character = game.Players.LocalPlayer.Character
if Character ~= nil then
local Humanoid,Torso = Character:findFirstChild("Humanoid"),Character:findFirstChild("Torso")
if Humanoid and Torso then
local PlayerGui = game.Players.LocalPlayer:findFirstChild("PlayerGui")
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundTransparency = 1
Fr.BackgroundColor3 = CULR.Color
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
delay(1/30,function()
Fr.BackgroundTransparency = 0.1
TweenColor3(Fr,"BackgroundColor3",CULR.Color,Color3.new(0,0,0),1.2,true)
end)
Humanoid.MaxHealth = 0
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
if v.Name == "Head" then pcall(function()v.face:Destroy()end)end
coroutine.wrap(function()
while wait()do
TweenColor3(v,"Color",v.Color,BrickColor.Random().Color,0.2,true,function(Current,Max)
v.Transparency = Current/Max *2
end,function()
script:Destroy()
FR.BackgroundTransparency = 0
end)end end)()elseif v:IsA("Clothing")or v:IsA("Hat")then
v:Destroy()
end end else
script:Destroy()
end else
script:Destroy()
end]])
AddScript("MidnightStrikeKill",[[
wait()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
wait()
local CULR = BrickColor.new("Navy blue")
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local function SmoothRoll(c,End,Time)
local x = math.deg(c:GetRoll())
local y = x
coroutine.wrap(function()
for i = 1,Time *30 do
y = y +(x -End)/(Time *30)
c:SetRoll(math.rad(y))
end end)()end
coroutine.wrap(function()
local Cam = game.Workspace.CurrentCamera
SmoothRoll(Cam,math.random(4,30),1.2)
while true do
local x,y,z = math.random(-4,6),math.random(-3,2),math.random(-4,7)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(x,y,z)
wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(-x,-y,-z)
wait()
end end)()
local Character = game.Players.LocalPlayer.Character
if Character ~= nil then
local Humanoid,Torso = Character:findFirstChild("Humanoid"),Character:findFirstChild("Torso")
if Humanoid and Torso then
local PlayerGui = game.Players.LocalPlayer:findFirstChild("PlayerGui")
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundTransparency = 1
Fr.BackgroundColor3 = CULR.Color
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
delay(1/30,function()
Fr.BackgroundTransparency = 0.1
TweenColor3(Fr,"BackgroundColor3",CULR.Color,Color3.new(0,0,0),1.2,true)
end)
Humanoid.MaxHealth = 0
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
if v.Name == "Head" then pcall(function()v.face:Destroy()end)end
TweenColor3(v,"Color",v.Color,CULR.Color,1.2,true,function(Current,Max)
v.Transparency = Current/Max *2
end,function()
script:Destroy()
FR.BackgroundTransparency = 0
end)elseif v:IsA("Clothing")or v:IsA("Hat")then
v:Destroy()
end end else
script:Destroy()
end else
script:Destroy()
end]])
AddScript("CheckAndKill",[[
wait()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
wait()
local CULR = BrickColor.new("]]..tostring(Settings.Colors[2])..[[")
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local function SmoothRoll(c,End,Time)
local x = math.deg(c:GetRoll())
local y = x
coroutine.wrap(function()
for i = 1,Time *30 do
y = y +(x -End)/(Time *30)
c:SetRoll(math.rad(y))
end end)()end
coroutine.wrap(function()
local Cam = game.Workspace.CurrentCamera
SmoothRoll(Cam,math.random(4,30),1.2)
while true do
local x,y,z = math.random(-4,6),math.random(-3,2),math.random(-4,7)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(x,y,z)
wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(-x,-y,-z)
wait()
end end)()
local Character = game.Players.LocalPlayer.Character
if Character ~= nil then
local Humanoid,Torso = Character:findFirstChild("Humanoid"),Character:findFirstChild("Torso")
if Humanoid and Torso then
local PlayerGui = game.Players.LocalPlayer:findFirstChild("PlayerGui")
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundTransparency = 1
Fr.BackgroundColor3 = CULR.Color
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
delay(1/30,function()
Fr.BackgroundTransparency = 0.1
TweenColor3(Fr,"BackgroundColor3",CULR.Color,Color3.new(0,0,0),1.2,true)
end)
Humanoid.MaxHealth = 0
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
if v.Name == "Head" then pcall(function()v.face:Destroy()end)end
TweenColor3(v,"Color",v.Color,CULR.Color,1.2,true,function(Current,Max)
v.Transparency = Current/Max *2
end,function()
script:Destroy()
FR.BackgroundTransparency = 0
end)elseif v:IsA("Clothing")or v:IsA("Hat")then
v:Destroy()
end end else
script:Destroy()
end else
script:Destroy()
end]])
AddScript("ScreenFlashVi",[[
local Colur = BrickColor.new("Navy blue").Color
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local PlayerGui = game.Players.LocalPlayer.PlayerGui
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundTransparency = 1
Fr.BackgroundColor3 = Color3.new(0,0,0)
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
wait(1/30)
Fr.BackgroundTransparency = 0.1
TweenColor3(Fr,"BackgroundColor3",Fr.BackgroundColor3,Colur,0.55,false,function(Step,Max)
Fr.BackgroundTransparency = Step/Max
end)
Main:Destroy()
script:Destroy()
]])
AddScript("ScreenFlashV",[[
local Colur = BrickColor.new("]]..tostring(Settings.Colors[2])..[[").Color
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local PlayerGui = game.Players.LocalPlayer.PlayerGui
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundTransparency = 1
Fr.BackgroundColor3 = Color3.new(0,0,0)
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
wait(1/30)
Fr.BackgroundTransparency = 0.1
TweenColor3(Fr,"BackgroundColor3",Fr.BackgroundColor3,Colur,0.55,false,function(Step,Max)
Fr.BackgroundTransparency = Step/Max
end)
Main:Destroy()
script:Destroy()
]])
AddScript("ScreenFlash",[[
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local PlayerGui = game.Players.LocalPlayer.PlayerGui
local Main = Instance.new("ScreenGui",PlayerGui)
Main.Name = "AtlasFlash"
local Fr = Instance.new("Frame",Main)
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundTransparency = 1
Fr.BackgroundColor3 = Color3.new(1,1,1)
Fr.BorderSizePixel = 0
Fr.ZIndex = 10
wait(1/30)
Fr.BackgroundTransparency = 0.1
TweenColor3(Fr,"BackgroundColor3",Fr.BackgroundColor3,Color3.new(0,0,0),0.55,false,function(Step,Max)
Fr.BackgroundTransparency = Step/Max
end)
Main:Destroy()
script:Destroy()
]])
AddScript("CameraShake",[[
local Cam = game.Workspace.CurrentCamera
local d = false
delay(0.55,function()d = true end)
while true do
if d then break end
local x,y,z = math.random(-4,6),math.random(-3,2),math.random(-4,7)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(x,y,z)
wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(-x,-y,-z)
wait()
end
script:Destroy()
]])
AddScript("AtmosphericBurn",[[
wait()
local Cam = game.Workspace.CurrentCamera
local PlayerGui = game.Players.LocalPlayer.PlayerGui
coroutine.wrap(function()
while true do
local x,y,z = math.random(-4,6),math.random(-3,2),math.random(-4,7)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(x,y,z)
wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(-x,-y,-z)
wait()
end end)()
local Colors = {BrickColor.new("Really red"),BrickColor.new("Neon orange"),BrickColor.new("New Yeller")}
local _Main = Instance.new("ScreenGui",PlayerGui)
_Main.Name = "AtlasBUUURN"
_Texture = Instance.new("Frame")
_Texture.Size = UDim2.new(1,0,1,0)
_Texture.BackgroundColor = Colors[math.random(1,#Colors)]
_Texture.ZIndex = 10
_Texture.BackgroundTransparency = 0.9
_Texture.Parent = _Main
_Texture.BorderSizePixel = 0
_TRCT = _Texture:Clone()
_TRCT.Parent = _Main
_TRCT.BackgroundTransparency = 0.8
_TRCT.Size = UDim2.new(0.9,0,0.9,0)
_TRCT.BorderSizePixel = 0
_TRCT.Position = UDim2.new(0.05,0,0.05,0)
_TRxCT = _Texture:Clone()
_TRxCT.Parent = _Main
_TRxCT.BackgroundTransparency = 0.7
_TRxCT.Size = UDim2.new(0.8,0,0.8,0)
_TRxCT.BorderSizePixel = 0
_TRxCT.Position = UDim2.new(0.1,0,0.1,0)
_TRaCT = _Texture:Clone()
_TRaCT.Parent = _Main
_TRaCT.BackgroundTransparency = 0.6
_TRaCT.Size = UDim2.new(0.7,0,0.7,0)
_TRaCT.BorderSizePixel = 0
_TRaCT.Position = UDim2.new(0.15,0,0.15,0)
_TRnCT = _Texture:Clone()
_TRnCT.Parent = _Main
_TRnCT.BackgroundTransparency = 0.5
_TRnCT.Size = UDim2.new(0.6,0,0.6,0)
_TRnCT.BorderSizePixel = 0
_TRnCT.Position = UDim2.new(0.2,0,0.2,0)
_TRdCT = _Texture:Clone()
_TRdCT.Parent = _Main
_TRdCT.BackgroundTransparency = 0.4
_TRdCT.Size = UDim2.new(0.5,0,0.5,0)
_TRdCT.BorderSizePixel = 0
_TRdCT.Position = UDim2.new(0.25,0,0.25,0)
local function TweenColor3(Object,PropertyName,Start,End,Time,Async,Callback)
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
coroutine.wrap(function()
while wait()do
for i,v in pairs(getfenv())do
if type(v)== 'userdata' and v:IsA("Frame")then
v.Transparency = math.random(1,5)/10
v.ZIndex = math.random(1,10)
end end end end)()
while true do
TweenColor3(_TRdCT,"BackgroundColor3",_TRxCT.BackgroundColor3,Colors[math.random(1,#Colors)].Color,1,true)
TweenColor3(_TRnCT,"BackgroundColor3",_TRxCT.BackgroundColor3,Colors[math.random(1,#Colors)].Color,1,true)
TweenColor3(_TRaCT,"BackgroundColor3",_TRxCT.BackgroundColor3,Colors[math.random(1,#Colors)].Color,1,true)
TweenColor3(_TRxCT,"BackgroundColor3",_TRxCT.BackgroundColor3,Colors[math.random(1,#Colors)].Color,1,true)
TweenColor3(_TRCT,"BackgroundColor3",_TRCT.BackgroundColor3,Colors[math.random(1,#Colors)].Color,1,true)
TweenColor3(_Texture,"BackgroundColor3",_Texture.BackgroundColor3,Colors[math.random(1,#Colors)].Color,1,false)
end]])
AddScript("Trippppppyyyyyyy",[[
wait()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
wait()
local PlayerGui = game.Players.LocalPlayer.PlayerGui
local function SmoothRoll(c,End,Time)
local x = math.deg(c:GetRoll())
local y = x
coroutine.wrap(function()
for i = 1,Time *30 do
y = y +(x -End)/(Time *30)
c:SetRoll(math.rad(y))
end end)()end
local function TweenColor3(Object,PropertyName,Start,End,Time,Async,Callback)
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
local function RandomDecimal(Dec,Dec2)
return math.random(Dec,Dec2)/10
end
if not PlayerGui then script:Destroy()return end
pcall(function()PlayerGui:findFirstChild("Atlas%#$#$XtC"):Destroy()end)
local Cam = game.Workspace.CurrentCamera
local _Main = Instance.new("ScreenGui",PlayerGui)
_Main.Name = "Atlas%#$#$XtC"
local frm = Instance.new("Frame",_Main)
frm.Size = UDim2.new(1.1,1.1,1.1,1.1)
frm.BackgroundTransparency = 0.6
frm.BorderSizePixel = 0
local fz = {}
local amt = math.random(4,8)
for i = 1,amt do
local n = Instance.new("Frame",frm)
n.Size = UDim2.new(tonumber("0."..tostring((i/amt)* math.random(1,3))),0,tonumber("0."..tostring((i/amt)* math.random(1,3))),0)
n.BackgroundTransparency = RandomDecimal(7,9)
n.Position = UDim2.new(RandomDecimal(1,9),0,RandomDecimal(1,9),0)
n.BorderSizePixel = 0
table.insert(fz,n)
end
coroutine.wrap(function()
while true do
if not _Main then break end
for i,v in pairs(fz)do TweenColor3(v,"BackgroundColor3",v.BackgroundColor3,Color3.new(math.random(0,1),math.random(0,1),math.random(0,1)),1,true)end
TweenColor3(frm,"BackgroundColor3",frm.BackgroundColor3,Color3.new(math.random(0,1),math.random(0,1),math.random(0,1)),1)
end end)()
Cam.CameraType = "Scriptable"
local dn = false
delay(3,function()dn = true end)
repeat
math.randomseed(tick())
for _,v in pairs(fz)do
v.Rotation = math.random(1,360)
v:TweenSizeAndPosition(UDim2.new(RandomDecimal(1,3),0,RandomDecimal(1,3),0),UDim2.new(RandomDecimal(1,9),0,RandomDecimal(1,9),0),math.random(0,2),math.random(0,7),1/30)
end
SmoothRoll(Cam,math.deg(Cam:GetRoll())+math.random(-1,1),1/30)
wait()
until dn
Cam:Destroy()
wait(0.1)
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = "Custom"
_Main:Destroy()
script:Destroy()
]])
DoScript = function(Player,Name)
pcall(function()
local x = Scripts[Name]:Clone()
x.Parent = Player:findFirstChild("Backpack")or Player.Character ~= nil and Player.Character or Instance.new("Backpack",Player)
pcall(function()x:findFirstChild("Owner").Value = Player end)
x.Disabled = false
end)end
function ShakeCam(numbor,waeittime)Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,numbor or 2,0)wait(waeittime or 1/30)Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,numbor and -numbor or -2,0)end
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
wait()
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
wait()
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
wait()
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
wait()
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
wait()
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
wait()
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
wait()
end
ax:Destroy()
end)()end
local function SetHealth()
if Awakend then
Character.Humanoid.MaxHealth = 6283
Character.Humanoid.Health = 6283
elseif RageMode then
Character.Humanoid.MaxHealth = 1250
Character.Humanoid.Health = 1250
else
Character.Humanoid.MaxHealth = 600
end end
local Prts = {}
H:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=135921683"
local Face = H:findFirstChild("face")
local FaceTexture = H:findFirstChild("face").Texture
local IceTexture = "http://www.roblox.com/asset/?id=135921715
Cam,GuiTexture,_Mesh = game.Workspace.CurrentCamera,"",Instance.new("SpecialMesh")
Cam = game.Workspace.CurrentCamera
GuiTexture = ""
_Mesh = Instance.new("SpecialMesh")
Way = 0
local Trolling = false
local ChosenColor = false
local ChangeText = false
local Descriptions = false
AttackState = "Melee"
Equipped = false
StopPower = false
StopTrail = false
StopRockTrail = false
StopSwordTrail = false
RageMode = false
Ragewait = false
StopFlyTrail = false
StopJumpTrail = false
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
while wait(1.1)do
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
wait()
end
p:Destroy()
end)()end end)()end
function PetChat(Object,Text,Color)
local Color = type(Color)== 'string' and BrickColor.new(Color)or Color
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,6,0)
local Txt = Instance.new("TextLabel",G)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = false
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 10
TweenColor3(Txt,"TextColor3",Txt.TextColor3,Settings.Colors[2].Color,3,true,function(q)
for i = 1,30 do
q.TextTransparency = i/30
wait()
end
G:Destroy()
end)end
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
wait()
end end)()end
TweenColor3(Txt,"TextColor3",Txt.TextColor3,Settings.Colors[2].Color,3,true,function(q)
for i = 1,30 do
q.TextTransparency = i/30
wait()
end
G:Destroy()
end)end
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
wait()
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
local DMG
if pcall(function()
DMG = math.random(6043,59302)
local _CON = Hit.Parent.Humanoid.Died:connect(function()
LastKill = tick()
Tag(Hit.Parent.Humanoid)
DoScript(game.Players:GetPlayerFromCharacter(Hit.Parent),"CheckAndKill")
end)
delay(0.1,function()_CON:disconnect()end)
Hit.Parent.Humanoid:TakeDamage(DMG)
end)then
DoScript(game.Players:GetPlayerFromCharacter(Hit.Parent),"ScreenFlash")
DamageGui(DMG..("!"):rep(#tostring(DMG)))
end end
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
Tag(Humanoid)
DoScript(game.Players:GetPlayerFromCharacter(Object.Parent),"CheckAndKill")
end)
delay(0.1,function()_CON:disconnect()end)
DamageGui(Dmg)
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
wait()
end
local d = false
coroutine.wrap(function()
while not d do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.1,0)
wait()
end end)()
wait(3)
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
wait()
if i >= 5 then
txt.TextTransparency = txt.TextTransparency +0.2
end end
bg:Destroy()
end)()
wait()
end end)()
for i,v in pairs(Object.Parent:GetChildren())do
if v:IsA("BasePart")then
local BP = Instance.new("BodyForce",v)
BP.force = Vec.CFrame.lookVector *2000
game:GetService("Debris"):AddItem(BP,0.2)
end end
pcall(function()
Object.Parent:findFirstChild("Torso").RotVelocity = Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Object.Parent:findFirstChild("Torso").Velocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
end)
wait(0.1)
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
Clone.Parent = game.Workspace
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
function DamageNear(Pos,Mag,Dmg,x)
local Targets,HitAlready = {},{}
for i,v in pairs(game.Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
if(Pos -x.Position).magnitude <= Mag then
table.insert(Targets,v)
end end end end end
for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
ypcall(function()Damage(T,v.Torso,nil,Dmg,not x)end)
HitAlready[v.Name] = true
end end end
function SwordTrail(Position,CF,Color)
coroutine.wrap(function()
local Old = (Position.CFrame *CF).p
while wait()do
if StopSwordTrail then break end
local New = (Position.CFrame *CF).p
local Mag = (Old -New).magnitude
local Dis = (Old +New)/2
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function FlyTrail(Position,CF)
coroutine.wrap(function()
local Old = (Position.CFrame *CF).p
while wait(0.15)do
if StopFlyTrail then break end
local New = (Position.CFrame *CF).p
local Mag = (Old -New).magnitude
local Dis = (Old +New)/2
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function JumpTrail(Position,CF)
coroutine.wrap(function()
local Old = (Position.CFrame *CF).p
while wait()do
if StopJumpTrail then break end
for i,v in pairs(Debounces)do
if v then
StopJumpTrail = true
end end
local New = (Position.CFrame *CF).p
local Mag = (Old -New).magnitude
local Dis = (Old +New)/2
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function UpperCutTrail(Position,CF,Color)
coroutine.wrap(function()
local st = false
delay(0.6,function()st = true end)
local Old = (Position.CFrame *CF).p
while wait()do
if st then break end
local New = (Position.CFrame *CF).p
local Mag = (Old -New).magnitude
local Dis = (Old +New)/2
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function Trail(Position,CF,Color)
coroutine.wrap(function()
local Old = (Position.CFrame *CF).p
while wait()do
if StopTrail then break end
local New = (Position.CFrame *CF).p
local Mag = (Old -New).magnitude
local Dis = (Old +New)/2
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function RockTrail(Position,CF,Color)
coroutine.wrap(function()
local Old = (Position.CFrame * CF).p
while wait()do
if StopRockTrail then break end
local New = (Position.CFrame * CF).p
local Mag = (Old -New).magnitude
local Dis = (Old +New)/2
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
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
wait()
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
ChargeRot = ChargeRot ~= 360 and ChargeRot +1 or 0
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
wait()
m.Scale = m.Scale + Vector3.new(i,i/2,i)
end
coroutine.wrap(function()
for i = 1,5 do
wait()
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
wait()
end
s:Destroy()
end)()end
local Clones = {}
function ParticleEmit(Object,Color,Duration)
local Counter = 0
coroutine.wrap(function()
while wait(0.3)do
if Counter == Duration then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = Color and(type(Color)== 'userdata' and Color or BrickColor.new(Color))or Settings.Colors[2]
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end end)()
if Durration == math.huge then return end
coroutine.wrap(function()
while wait(1)do
Counter = Counter +1
if Counter == Duration then
break
end end end)()end
function SlowParticleEmit(Object)
coroutine.wrap(function()
while wait(3.2)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = RageMode and(Pr0mMode and BrickColor.new("Navy blue")or BrickColor.new("Really red"))or Settings.Colors[2]
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end end)()end
function IsNear(Position,Distance,SinglePlayer)
if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
local List = {}
for i,v in pairs(game.Workspace:GetChildren())do
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
h = function(Mouse)
if RageMode then return end
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsHealing = true
Stance = "Null"
wait(1/30)
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'h' then
BreakLoop = true
x:disconnect()
end end)
while wait(0.2)do
if Power <= 0 then break end
if Character.Humanoid.Health == Character.Humanoid.MaxHealth then break end
if BreakLoop then break end
Character.Humanoid.Health = Character.Humanoid.Health +15
Power = Power -1000
Charge(BrickColor.new("Lime green"),true)
Stance = "Null"
end
Character.Humanoid.WalkSpeed = 45
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
wait(1/30)
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'c' then
BreakLoop = true
x:disconnect()
end end)
while wait(0.1)do
if Power == MaxPower then break end
if BreakLoop then break end
if Power > MaxPower then Power = MaxPower break end
Power = Power +250
Charge(Settings.Colors[2],true)
Stance = "Null"
end
Character.Humanoid.WalkSpeed = 45
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
wait(0.2)
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
game:GetService("Debris"):AddItem(bf,0.26)
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
wait(0.2)
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
wait()
end
s:Destroy()
end)()
wait()
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
wait(0.2)
end
p:Destroy()
end)()end end end
T.CFrame = T.CFrame * CFrame.new(0,0,-10)
StopTrail = true
wait(0.02)
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
wait(0.2)
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
wait()
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
wait()
m.Scale = m.Scale + Vector3.new(i,i/2,i)
end
coroutine.wrap(function()
for i = 1,5 do
wait()
p.Transparency = p.Transparency -0.1
end
p:Destroy()
end)()end)()wait(0.1)end
T.CFrame = CF * CFrame.new(0,2,0)
Debounces.Attacking = false
end end;
q = function()Debounces.Flying = not Debounces.Flying end;
v = function()
if Trolling then return end
Trolling = true
local Taunts = {"uMaD bR0?","Do you even lift?","l0l","LeL","lawl","laol","lael","You seem quite mad.","Mad?"}
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
while wait()do
if not Blocking then
x.PlatformStand = false
break end
x.PlatformStand = true
end end)()end end
table.insert(Targets,v)
end
wait(0.2)
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
wait(4)
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
while wait()do
if not Blocking then break end
x.PlatformStand = true
end end)()
elseif x.Name == "Torso" and x:IsA("BasePart")then
coroutine.wrap(function()
while wait(0.2)do
if not Blocking then break end
Effect2(x,4,4,4,0,0,0,Settings.Colors[1])
end end)()end end end
wait(0.2)
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
wait(0.16)
for i,v in pairs(ss)do pcall(function()v:Destroy()end)end
Debounces.Attacking = false
Blocking = false
end;
}
KeyBindings = {
u = function(Mouse)
-- brb
end;
x = function(Mouse)
for i,v in pairs(Debounces)do if v or Gun then return end end
Debounces.Attacking = true
Stance = ''
ChargePosition(false)
Gun = Instance.new("Model",Character)
Gun.Name = "AtlasGun"
local xxf = 30
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
h9.Size = Vector3.new(3.5,0.05,0.05)
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
h10.Size = Vector3.new(0.05,0.05,3.5)
local gw9 = Instance.new("Weld",h10)
gw9.Part1 = h10
gw9.Part0 = h2
local h11 = Instance.new("Part",Gun)
h11.FormFactor = "Custom"
h11.Name = "-Support"
h11.Anchored = true
h11.TopSurface = 0
h11.BottomSurface = 0
h11.Shape = "Ball"
h11.BrickColor = Settings.Colors[2]
h11.Size = Vector3.new(1,1,1)
local gw10 = Instance.new("Weld",h11)
gw10.Part1 = h11
gw10.Part0 = h8
gw10.C0 = CFrame.new(0,-0.5,0)
local h12 = Instance.new("Part",Gun)
h12.FormFactor = "Custom"
h12.Name = "-support"
h12.Anchored = true
h12.Material = "Ice"
h12.TopSurface = 0
h12.BottomSurface = 0
h12.BrickColor = Settings.Colors[2]
h12.Transparency = 0.65
h12.Size = Vector3.new(3,0.01,3)
local h12m = Instance.new("CylinderMesh",h12)
h12m.Scale = Vector3.new(0.5,0.01,0.5)
local gw11 = Instance.new("Weld",h12)
gw11.Part1 = h12
gw11.Part0 = h2
local h13 = Instance.new("Part",Gun)
h13.FormFactor = "Custom"
h13.Name = "-support"
h13.Anchored = true
h13.Material = "Ice"
h13.TopSurface = 0
h13.BottomSurface = 0
h13.BrickColor = Settings.Colors[2]
h13.Size = Vector3.new(1.1,0.01,1.1)
local h13m = Instance.new("CylinderMesh",h13)
h13m.Scale = Vector3.new(1,1,1)
local gw12 = Instance.new("Weld",h13)
gw12.Part1 = h13
gw12.Part0 = h4
local h14 = Instance.new("Part",Gun)
h14.FormFactor = "Custom"
h14.Name = "-support"
h14.Anchored = true
h14.Material = "Ice"
h14.TopSurface = 0
h14.BottomSurface = 0
h14.BrickColor = Settings.Colors[1]
h14.Size = Vector3.new(1.1,0.01,1.1)
local h14m = Instance.new("CylinderMesh",h14)
h14m.Scale = Vector3.new(1,1,1)
local gw13 = Instance.new("Weld",h14)
gw13.Part1 = h14
gw13.Part0 = h5
local h15 = Instance.new("Part",Gun)
h15.FormFactor = "Custom"
h15.Name = "-support"
h15.Anchored = true
h15.Material = "Ice"
h15.TopSurface = 0
h15.BottomSurface = 0
h15.BrickColor = Settings.Colors[1]
h15.Size = h11.Size
local h15m = Instance.new("SpecialMesh",h15)
h15m.MeshId = "http://www.roblox.com/asset/?id=3270017"
h15m.Scale = Vector3.new(1,1,1)
local gw14 = Instance.new("Weld",h15)
gw14.Part1 = h15
gw14.Part0 = h11
local h16 = Instance.new("Part",Gun)
h16.FormFactor = "Custom"
h16.Name = "-support"
h16.Anchored = true
h16.Material = "Ice"
h16.TopSurface = 0
h16.BottomSurface = 0
h16.BrickColor = Settings.Colors[2]
h16.Size = h11.Size
local h16m = Instance.new("SpecialMesh",h16)
h16m.MeshId = "http://www.roblox.com/asset/?id=3270017"
h16m.Scale = Vector3.new(1,1,1)
local gw15 = Instance.new("Weld",h16)
gw15.Part1 = h16
gw15.Part0 = h11
gw15.C0 = CFrame.Angles(0,-math.pi/4,0)
local h17 = Instance.new("Part",Gun)
h17.FormFactor = "Custom"
h17.Name = "-support"
h17.Anchored = true
h17.Material = "Ice"
h17.TopSurface = 0
h17.BottomSurface = 0
h17.BrickColor = Settings.Colors[2]
h17.Size = Vector3.new(1,3.5,1)
local h17m = Instance.new("SpecialMesh",h17)
h17m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
h17m.Scale = Vector3.new(1,1,1)
local gw16 = Instance.new("Weld",h17)
gw16.Part1 = h17
gw16.Part0 = h11
gw16.C0 = CFrame.Angles(0,0,3)

local Tip = h11
coroutine.wrap(function()
while wait(0.4)do
if not Gun then break end
local p = Instance.new("Part",Character)
p.Size = Vector3.new(0.1,0.1,0.1)
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.Reflectance = 0.1
p.Transparency = 0.2
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(h2.Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))* CFrame.Angles(math.random(-33,33)/10,math.random(-33,33)/10,math.random(-33,33)/10)
local dm = Instance.new("SpecialMesh",p)
dm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
dm.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for i = 0,1,0.1 do
dm.Scale = Vector3.new(1 *i,1.25 *i,1 *i)
wait()
end end)()
coroutine.wrap(function()
wait(0.1)
for i = 0,1,0.1 do
p.Transparency = i
wait()
end
p:Destroy()
end)()end end)()
coroutine.wrap(function()
while wait()do
if not Gun then break end
gw1.C0 = gw1.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/xxf,0)
gw14.C0 = gw14.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
gw15.C0 = gw15.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
end end)()
coroutine.wrap(function()
while true do
if not Gun then break end
TweenColor3(h6,"Color",h6.Color,Settings.Colors[h6.BrickColor == Settings.Colors[1]and 2 or 1],1,true)
TweenColor3(h11,"Color",h11.Color,Settings.Colors[h11.BrickColor == Settings.Colors[1]and 2 or 1],1,true)
TweenColor3(h13,"Color",h13.Color,Settings.Colors[h13.BrickColor == Settings.Colors[1]and 2 or 1],1,true)
TweenColor3(h14,"Color",h14.Color,Settings.Colors[h14.BrickColor == Settings.Colors[1]and 2 or 1],1)
end end)()
coroutine.wrap(function()
local inc = 0.05
for i = 1,8 do
inc = inc +1.25
Effect2(LA,inc,inc,inc,0,-1,0,Settings.Colors[2])
wait()
end end)()
table.foreach(Gun:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.Material = "SmoothPlastic"
v.CanCollide = true
v.Anchored = false
end end)
pcall(function()Character.Animate.Disabled = true end)
local Connections = {}
OldSpeed = Character.Humanoid.WalkSpeed
table.insert(Connections,Mouse.Move:connect(function()StanceGyro.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)end))
local Working,Stop,Mode,CanShoot = false,false,1,true
local SubModes,ChangeMode
coroutine.wrap(function()
while wait()do
if not Equipped then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Character.Humanoid.WalkSpeed = OldSpeed
Explode(h1.CFrame,Settings.Colors[2])
Gun:Destroy()
Gun = nil
Stance = 'Standing'
for i,v in pairs(Connections)do pcall(function()v:disconnect()end)end
pcall(function()
Character.Animate.Disabled = false
end)break end end end)()
local Modes;Modes = {
r = {"Explosive rounds";1};
f = {"Laser";2};
t = {"Teleport";5};
l = {"Trap shot";6}}
ChangeMode = function(f)
if not Working then
if f then
Mode = f[2]
ChangeText(f[1])
SubModes = f[3]
end end end
table.insert(Connections,Mouse.KeyDown:connect(function(k)
if not SubModes then ChangeMode(Modes[k:lower()])return end
if SubModes and SubModes[k:lower()]then
ChangeText(SubModes[k:lower()][1])
coroutine.wrap(SubModes[k:lower()][3])(Mouse)
end end))
table.insert(Connections,Mouse.KeyDown:connect(function(k)
wait(0.5)
if k == 'x' and not SubModes then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Character.Humanoid.WalkSpeed = OldSpeed
Explode(h1.CFrame,Settings.Colors[2])
Gun:Destroy()
Gun = nil
Stance = 'Standing'
for i,v in pairs(Connections)do pcall(function()v:disconnect()end)end
pcall(function()
Character.Animate.Disabled = false
end)end end))
table.insert(Connections,Mouse.Button1Down:connect(function()
if Mode == 8 then
if not CanShoot then return end
CanShoot = false
local Dir =(Tip.Position -(Tip.CFrame * CFrame.new(0,5,0)).p).unit
Recoil()
local inc = 0
for i = 1,5 do
inc = inc +1
Effect2(Tip,inc,inc,inc,0,0,0,Settings.Colors[i%2 == 1 and 2 or 1])
wait()
end

elseif Mode == 7 then
if not CanShoot then return end
CanShoot = false
while wait()do

end
elseif Mode == 6 then
if not CanShoot then return end
CanShoot = false
if Power -2000 < 0 or Stop then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Stance = 'Standing'
Explode(h1.CFrame,Settings.Colors[2])
Gun:Destroy()
Gun = nil
pcall(function()
Character.Animate.Disabled = false
end)table.foreach(Connections,function(_,v)
v:disconnect()
end)end
Power = Power -2000
Effect2(Tip,2,2,2,0,0,0,Settings.Colors[2])
xxf = 15
local _Hit = false
local function Remove(Obj)
if Obj ~= nil and Obj.Parent ~= nil then
Implode(CFrame.new(Obj.Position)* CFrame.Angles(math.random(1,360),math.random(1,360),math.random(1,360)),Obj.BrickColor)
Obj:Destroy()
end end
local DIR =(Tip.Position -(Tip.CFrame * CFrame.new(0,5,0)).p).unit
local _Out = false
local function Hitx(Hit,o,Bool,con)
if not Hit then return end
if not Hit:IsDescendantOf(Character)then
if Hit.Parent ~= game.Workspace and Hit.Parent ~= Character then
con:disconnect()
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
local Bh = Instance.new("Part",Character)
Bh.Size = Vector3.new(9,9,9)
Bh.BrickColor = Settings.Colors[1]
Bh.Anchored = true
Bh.Locked = true
Bh.CanCollide = false
Bh.TopSurface = 0
Bh.BottomSurface = 0
Bh.CFrame = o.CFrame
local m = Instance.new("SpecialMesh",Bh)
m.MeshType = "Sphere"
local SKRD = true
local inc = 10
local bps = {}
coroutine.wrap(function()
o.Anchored = true
while wait()do
if not SKRD then break end
Effect2(Bh,inc,inc,inc,0,0,0,Settings.Colors[2])
inc = math.random(10,15)
for i,v in pairs(game.Workspace:GetChildren())do
if v:findFirstChild("Humanoid")and v ~= Character then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")and x.Name == "Torso" and not x:findFirstChild("AtlasPull")then
if(Bh.Position - x.Position).magnitude <= 500 then
v:findFirstChild("Humanoid").Sit = true
local bp = Instance.new("BodyPosition",x)
bp.P = 20000
bp.Name = "AtlasPull"
bp.D = 20
bp.position = Bh.Position
table.insert(bps,bp)
end end end end end end
_Out = true
end)()
_Hit = true
wait(8)
for i,v in pairs(bps)do v:Destroy()end
SKRD = false
if not CanShoot then
CanShoot = true
xxf = 30
end
DamageNear(o.Position,50,85)
for i = 1,10 do
Bh.Transparency = i/10
o.Transparency = i/10
o.Mesh.Scale = o.Mesh.Scale + Vector3.new(2,2,2)
m.Scale = m.Scale + Vector3.new(1,1,1)
wait()
end
o:Destroy()
end end
local fs =(LA.CFrame * CFrame.new(0,-2,0)).p
local Hitd,posx = game.Workspace:FindPartOnRay(Ray.new(fs,(Mouse.Hit ~= nil and Mouse.Hit.p or Vector3.new(0,0,0)- fs).unit *1000),Character)
Recoil()
local p = Instance.new("Part",Character)
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[1]
p.FormFactor = "Custom"
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Hitd and Vector3.new(4,4,4)or Vector3.new(3,3,3)
p.CFrame = LA.CFrame * CFrame.new(0,-1.4,0)
local Con;Con = p.Touched:connect(function(f)Hitx(f,p,Con)end)
Instance.new("SpecialMesh",p).MeshType = "Sphere"
p:BreakJoints()
coroutine.wrap(function()
while wait(0.06)do
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
game:GetService("Debris"):AddItem(p,3)
m.Name = "Triangle"
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(2,2,0)
wait()
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
p.BrickColor = Settings.Colors[2]
p.CFrame = n.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
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
p.BrickColor = Settings.Colors[2]
p.CFrame = n.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Brick"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end end end)()
coroutine.wrap(function()
for i = 1,20 do
if _Out then break end
wait(0.1)
local n = p
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = n.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end end)()
local v = Instance.new("BodyVelocity",p)
v.P = 5000
v.maxForce = Vector3.new(math.huge,math.huge,math.huge)
v.velocity = DIR *(Hitd and 220 or 110)
delay(4.5,function()
if _Hit then return end
Remove(p)
_Out = true
xxf = 30
end)
wait(6)
if not CanShoot and not _Hit then
CanShoot = true
end elseif Mode == 5 then
if not Mouse.Target or not CanShoot then return end
if Power -1500 < 0 or Stop then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Stance = 'Standing'
Explode(h1.CFrame,Settings.Colors[2])
Gun:Destroy()
Gun = nil
pcall(function()
Character.Animate.Disabled = false
end)table.foreach(Connections,function(_,v)
v:disconnect()
end)return end
Power = Power -1500
CanShoot = false
local Pos = Mouse.Hit.p
T.CFrame = CFrame.new(Pos)* CFrame.new(0,2,0)
Recoil()
for i = 1,4 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
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
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end
wait(1)
CanShoot = true
elseif Mode == 2 then
if not CanShoot then return end
CanShoot = false
local function Remove(Obj)
coroutine.wrap(function()
for i = 1,15 do
Obj.Transparency = i/15
if Obj.Name == "lasur" then
Obj.Size = Vector3.new(Tip.Size.X,(Tip.Position -Mouse.Hit.p).magnitude,Tip.Size.Z)
Obj.CFrame = Tip.CFrame * CFrame.new(0,-(Tip.Position -Mouse.Hit.p).magnitude/2,0)
end
wait()
end
Obj:Destroy()
end)()end
local function HitX(Obj)
if Obj.Parent ~= nil and Obj.Parent:IsA("Model")and not Obj:IsDescendantOf(Character)then
local h,t = Obj.Parent:findFirstChild("Humanoid"),Obj.Parent:findFirstChild("Torso")
if h and h.Health > 0 and t then
Damage(t,t,true,math.random(40,60))
end end end
local __Con,_Stop = false;__Con = Mouse.Button1Up:connect(function(k)
_Stop = true
xxf = 30
__Con:disconnect()
end)
table.insert(Connections,__Con)
local BlastModel = Instance.new("Model",Character)
BlastModel.Name = "BlastModel"
local lzr = Instance.new("Part",BlastModel)
lzr.Anchored = true
lzr.Size = Tip.Size
lzr.BrickColor = Settings.Colors[2]
lzr.TopSurface = 0
lzr.Name = "lasur"
lzr.BottomSurface = 0
lzr.FormFactor = "Custom"
lzr.CanCollide = false
lzr.Locked = true
lzr.Transparency = 1
lzr.CFrame = CFrame.new(Tip.Position)* CFrame.new(0,0,-(Tip.Position -Mouse.Hit.p).magnitude/2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
lzr.Touched:connect(function(h)
local n = true
coroutine.wrap(function()
lzr.TouchEnded:wait()
n = false
end)()
coroutine.wrap(function()
while wait()do
if not n then break end
HitX(h)
end end)()end)
local l = Instance.new("SpotLight",Tip)
l.Color = Settings.Colors[2].Color
l.Face = 4
l.Brightness = 1
local m = Instance.new("CylinderMesh",lzr)
m.Scale = Vector3.new(1,1,1)
for i,v in pairs(BlastModel:GetChildren())do
coroutine.wrap(function()
for x = 1,10 do
v.Transparency = v.Transparency -0.1
wait()
end end)()end
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= Player.Name then
table.insert(Characters,Torso)
end end end
return Characters
end
while wait()do
if _Stop then
CanShoot = true
break end
if Power -500 < 0 or Stop then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Stance = 'Standing'
Explode(h1.CFrame,Settings.Colors[2])
Gun:Destroy()
Gun = nil
pcall(function()
Character.Animate.Disabled = false
end)table.foreach(Connections,function(_,v)
v:disconnect()
end)break end
Power = Power -500
Effect2(Tip,1.1,1.1,1.1,0,0,0,Settings.Colors[2])
xxf = 5
local nnn = math.random(-1,1)/10
lzr.Size = Vector3.new(Tip.Size.X +nnn,(Tip.Position -Mouse.Hit.p).magnitude,Tip.Size.Z +nnn)
lzr.CFrame = Tip.CFrame * CFrame.new(0,-(Tip.Position -Mouse.Hit.p).magnitude/2,0)
l.Range = l.Range == 0 and(Tip.Position -Mouse.Hit.p).magnitude or 0
Effect(Mouse.Hit.p,5,5,5,0,0,0,Settings.Colors[1])
for _,v in pairs(GetHumanoids())do
if(Mouse.Hit.p - v.Position).magnitude <= 5 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
HitX(v)
end end end end
l:Destroy()
for i,v in pairs(BlastModel:GetChildren())do Remove(v)end
xxf = 30
CanShoot = true
elseif Mode == 1 then
if not CanShoot then return end
CanShoot = false
if Power -5000 < 0 or Stop then
Stop = true
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
Stance = 'Standing'
Explode(h1.CFrame,Settings.Colors[2])
Gun:Destroy()
Gun = nil
pcall(function()
Character.Animate.Disabled = false
end)table.foreach(Connections,function(_,v)
v:disconnect()
end)end
Power = Power -5000
Effect2(Tip,2,2,2,0,0,0,Settings.Colors[2])
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
if not Hit:IsDescendantOf(Character)then
if Hit.Parent ~= game.Workspace and Hit.Parent ~= Character then
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
DamageNear(o.Position,50,65)
o.Anchored = true
_Out = true
if not CanShoot then
CanShoot = true
xxf = 30
end for i = 1,10 do
o.Transparency = i/10
o.Mesh.Scale = o.Mesh.Scale + Vector3.new(2,2,2)
wait()
end
o:Destroy()
end end
local fs =(LA.CFrame * CFrame.new(0,-2,0)).p
local Hitd,posx = game.Workspace:FindPartOnRay(Ray.new(fs,(Mouse.Hit ~= nil and Mouse.Hit.p or Vector3.new(0,0,0)- fs).unit *1000),Character)
Recoil()
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
while wait(0.06)do
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
game:GetService("Debris"):AddItem(p,3)
m.Name = "Triangle"
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(2,2,0)
wait()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Brick"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end
local hxpos = p.Position
for i,v in pairs(game.Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local Hn = v:findFirstChild("Humanoid")
if Hn and Hn.Health > 0 then
local Tf = v:findFirstChild("Torso")
if Tf then
if(Tf.Position -hxpos).magnitude <= 11 then
Hn:TakeDamage(2)
local vv = p.BodyVelocity:Clone()
vv.velocity = vv.velocity +(Tf.Position -hxpos).unit *10
vv.Parent = Tf
game:GetService("Debris"):AddItem(vv,0.7)
end end end end end end end)()
coroutine.wrap(function()
for i = 1,20 do
if _Out then break end
wait(0.1)
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(n.CFrame.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end end)()
local v = Instance.new("BodyVelocity",p)
v.P = 5000
v.maxForce = Vector3.new(math.huge,math.huge,math.huge)
v.velocity = DIR *(Hitd and 220 or 110)
delay(4.5,function()
Remove(p)
_Out = true
xxf = 30
end)
wait(6)
if not CanShoot then
CanShoot = true
end end end))
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
local nw = Character.Humanoid.WalkSpeed/2
while wait()do
if Stop then break end
Stance = ''
N.DesiredAngle = 1.4
Character.Humanoid.WalkSpeed = nw
wait()
end
Character.Humanoid.WalkSpeed = nw *2
N.DesiredAngle = 0
end)()end;
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
while wait()do
if BreakLoop then break end
if Stance ~= "Lasering" then break end
if Power <= 0 then break end
gp = Character:findFirstChild("GeneratedParts")or Instance.new("Model",Character);gp.Name = "GeneratedParts";gp.Archivable = true
local _Ray = Ray.new(rHandle.CFrame.p,(Mouse.Hit ~= nil and Mouse.Hit.p or Vector3.new(0,0,0)- rHandle.CFrame.p).unit *1000)
local Hit,Pos = game.Workspace:FindPartOnRay(_Ray,Character)
local Distance = (Mouse.Hit.p -rHandle.CFrame.p).magnitude
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
wait(0.2)
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
wait(0.2)
end
wait(0.2)
local Clone = CloneCharacter()
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")then
v.Touched:connect(function(Hit)
if Hit.Parent ~= Character and Hit.Parent ~= game.Workspace and Hit.Parent:findFirstChild("Humanoid")and Hit.Parent ~= Clone then
ParticleEmit(Hit,"Really red",2)
Kill(Hit)
end end)end end
Clone.Humanoid.WalkSpeed = 0
StopPower = false
Clone.Torso.CFrame = LA.CFrame * CFrame.new(0,-2,-2)
local con;con = Mouse.Button1Down:connect(function()
if not Clone then con:disconnect()return end
pcall(function()
Clone.Torso.CFrame = Mouse.Hit * CFrame.new(0,10,0)
end)end)
local Registration = Instance.new("IntValue",Clone)
Registration.Name = "AtlasRegistered"
local ID = Instance.new("IntValue",Clone)
ID.Name = "IndexNumber"
ID.Value = #Clones == 0 and 1 or #Clones +1
Clones[#Clones == 0 and 1 or #Clones +1] = Clone
local Timer = 0
coroutine.wrap(function()
while wait(1)do
if Timer == 15 then break end
Timer = Timer +1
end end)()
coroutine.wrap(function()
while wait()do
if Timer == 15 then
Clones[Clone:findFirstChild("IndexNumber").Value] = nil
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")then
coroutine.wrap(function()
for x = 1,10 do
v.Transparency = v.Transparency +0.1
wait()
end end)()end end
delay(10 *(1/30),function()Clone:Destroy()end)
break
end end end)()end end;
r = function()
for i,v in pairs(Debounces)do
if v or Awakend then
return
end end
if Pr0mMode then
if not RageMode then
if Ragewait then return end
RageMode = true
Ragewait = true
SetHealth()
Chat(H,"Tundra!","Navy blue")
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
wait()
end
wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
wait()
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
wait()
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
delay(4 *60,function()Ragewait = false end)
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
wait()
end
wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
wait()
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
wait()
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
wait()
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
wait()
end
wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
wait()
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
wait()
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
if Ragewait then return end
Ragewait = true
RageMode = true
SetHealth()
local Sayings = {"Rage!","Can't stop me now!"}
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
wait()
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
wait()
end
wait(0.1)
s.BrickColor = BrickColor.new("Really red")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
wait()
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
wait()
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
delay(4 *60,function()Ragewait = false end)
end end end;
k = function()
if Power -26000 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
if Character.Humanoid.Health -300 < 0 then return end
Character.Humanoid:TakeDamage(300)
Power = Power -26000
Chat(H,"Welcome to hell...","Really red")
local a,b = game.Lighting.Ambient,game.Lighting.Brightness
game.Lighting.Brightness = 0
game.Lighting.Ambient = Color3.new(1,0,1)
wait(0.02)
game.Lighting.Ambient = Color3.new(1,0,0)
game.Lighting.Brightness = 10000
wait(0.23)
delay(0.5,function()game.Lighting.Ambient = a end)
game.Lighting.Brightness = b


end;

}
function Effect(Pos,x1,y1,z1,x2,y2,z2,color,ref)
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
S.CFrame = CFrame.new(Pos)* CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
wait()
end
S:Destroy()
end)()end
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(game.Workspace)then
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
wait()
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
wait(0.1)
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
while wait()do
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
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
while wait()do
if axx then
Grabbed.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end if not _ax then break end
wait()
end end)()
local Taunts = {"Out of my sight!","Let her feast upon you."}
table.insert(Taunts,ByteToStr({6385,6380,6333,6385,6373,6370,6333,6378,6380,6380,6379,6333,6378,6380,6385,6373,6370,6383,6371,6428,6386,6428,6368,6428,6428,6376,6428,6370,6428,6383,6428,6428,6334},6301))
Chat(H,Taunts[math.random(1,#Taunts)],BrickColor.new("Really red"))
_ax = false
wait(0.6)
_ax = true
coroutine.wrap(function()
while wait()do
if axx then
Grabbed.CFrame = RL.CFrame * CFrame.new(0,0,-1)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end if not _ax then break end
wait()
end end)()
StopTrail = false
Implode(RL.CFrame * CFrame.new(0,-1,-1),Settings.Colors[2])
wait(0.6)
_ax = false
T.CFrame = CFrame.new(T.CFrame.p,T.Position + game.Lighting:GetMoonDirection())
local Bx = Instance.new("BodyPosition",Grabbed)
Bx.P = 1300
Bx.maxForce = Vector3.new(500000,500000,500000)*50000000
Bx.position = game.Lighting:GetMoonDirection()* 3003
Trail(Grabbed,CFrame.new(0,0,0),BrickColor.new("Really red"))
DoScript(game.Players:GetPlayerFromCharacter(Grabbed.Parent),"AtmosphericBurn")
local Colors = {"Really red","Neon orange","New Yeller"}
local dn = true
coroutine.wrap(function()
while wait(0.1)do
if not dn then break end
Effect2(Grabbed,Grabbed.Size.y *2,Grabbed.Size.y *2,Grabbed.Size.y *2,0,0,0,BrickColor.new(Colors[math.random(1,#Colors)]),0.32)
end end)()
delay(4,function()
dn = false
StopTrail = true
Kill(Grabbed)
pcall(function()
Grabbed.Parent:BreakJoints()
end)end)
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
wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
wait(0.1)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
wait(0.1)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
wait(0.1)
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
while wait()do
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
wait()
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
wait()
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
wait(0.15)
for i,v in pairs(Debounces)do
if v then
return
end end
Debounces.Attacking = true
local C = math.random(1,2)== 2 and LA or RA
local Con;Con = C.Touched:connect(function(Hit)
if Hit.Parent ~= game.Workspace and Hit.Parent ~= Character then
Damage(C,Hit,true,46)
ParticleEmit(Hit,BrickColor.new("Really red"),2)
Con:disconnect()
end end)
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,C == RA and 11 or -11,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
game:GetService("Debris"):AddItem(spinForce,0.6)
Character.Humanoid.Jump = true
UpperCutTrail(C,CFrame.new(0,-2,0),Settings.Colors[2])
wait(0.6)
pcall(function()Con:disconnect()end)
wait(0.1)
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
wait()
end
wait(0.25)
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15 p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity = (t.Position - T.Position).unit *-(10 +(t.Position - T.Position).magnitude *0.75)
game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break
end end end end end end end
wait(0.1)
end
if Grabbed then
local Target = Grabbed.Parent.Humanoid
wait()
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
wait()
end end)()
for i = 1,10 do
wait()
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
wait(0.5)
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
wait(0.2)
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
Chat(H,"Here comes the build up!","Really red")
local x = T.Position
for i = 1,40 do
T.CFrame = CFrame.new(x:Lerp(DesPos,i/40),Grabbed.Position)* CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
StanceGyro.cframe = T.CFrame
BP.position = T.CFrame.p
if i > 20 then
RS.DesiredAngle = 3.2
end
wait()
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
Chat(H,"Drop the bass!","Really red")
for i = 1,5 do
BP.position = BP.position + Vector3.new(0,0.25,0)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
wait()
end
BP.D = 100
BP.P = 9000
x = BP.position
local Hit,Pos = game.Workspace:FindPartOnRay(Ray.new(T.Position - Vector3.new(0,5,0),(T.Position -(T.Position -Vector3.new(0,8,0))).unit *-500),Character)
for i = 1,25 do
BP.position = x:Lerp((DesPos -Vector3.new(0,500,0)),i/25)
wait(0.03 -i *0.01)
end
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/5,0)
RS.DesiredAngle = -0.8
wait()
end
Chat(H,"Wub wub wu-DIE!","Really red")
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
wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
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
game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
wait(0.025)
end
wait(0.25)
BP:Remove()
end
wait(0.25)
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
local Colors = {"Navy blue","Really blue","White","Really black"}
for i = 1,20 do
for _,v in pairs(game.Workspace:GetChildren())do
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
wait()
end end)()
game:GetService("Debris"):AddItem(ss,10)
end end
delay(10,function()
for x,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
c.Anchored = false
end end end)
h.PlatformStand = true
h:TakeDamage(10)
game:GetService("Debris"):AddItem(f,10)
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
wait()
end
p:Destroy()
end)()
wait(1/30)
end
wait(3)
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
Chat(H,"BURN!","Really red")
local Colors = {"Really red","Really black","Orange","New Yeller"}
for i = 1,20 do
for _,v in pairs(game.Workspace:GetChildren())do
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
wait()
end
ss:Destroy()
end)end end
h.PlatformStand = true
coroutine.wrap(function()
for i = 1,10 do
h:TakeDamage(5 * math.random(1,2))
wait(1)
end end)()
game:GetService("Debris"):AddItem(f,10)
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
wait()
end
p:Destroy()
end)()
wait(1/30)
end
wait(3)
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
Chat(H,"It will devour you!","Really red")
T.Anchored = true
Explode(T.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[2])
wait(0.15)
Character.Humanoid.Health = Character.Humanoid.Health -(Character.Humanoid.Health -1)
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
wait(0.01)
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
if v[1] == CCharacter then
return true
end end
return false
end
coroutine.wrap(function()
while wait(0.5)do
if not Blocking then break end
for i,v in pairs(Targets)do
ypcall(function()
Effect2(v[1].Torso,4,4,4,0,0,0,v[2])
end)end end end)()
coroutine.wrap(function()
while wait()do
if not Targets then break end
for i,v in pairs(Targets or {})do
v[2] = Settings.Colors[IsNear(T.Position,p.Size.X,v[1])and 2 or 1]
if IsNear(T.Position,p.Size.X,v[1])then
if not v[3]then
v[3] = true
ypcall(function()Damage(T,v[1].Torso,nil,300,true)end)
delay(0.6,function()
v[3] = false
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
wait()
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
wait()
end
coroutine.wrap(function()
ChargePosition(false)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)
end)()
T.CFrame = CFrame.new(T.Position,Pos.p)
StanceGyro.cframe = CFrame.new(T.Position,Pos.p)
wait(0.3)
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
while wait(0.252)do
if Done then break end
Implode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[math.random(1,2)])
end end)()
coroutine.wrap(function()
while wait(0.23)do
if Done then break end
Effect2(p,5,5,5,0,0,0,Settings.Colors[2],0.23)
end end)()
local tagz,grabbed = {},{}
local Con;Con = game:GetService("RunService").Stepped:connect(function()
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
wait(10)
for i,v in pairs(tagz)do v:Destroy()end
for _,x in pairs(grabbed)do
pcall(function()
for i,v in pairs(x:GetChildren())do
if v:IsA("BasePart")then
local bf = Instance.new("BodyForce",v)
bf.force = p.CFrame.lookVector *1200
game:GetService("Debris"):AddItem(bf,0.64)
elseif v:IsA("Humanoid")then
v.PlatformStand = true
end end end)end
MiniExplode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[1])
Con:disconnect()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
wait()
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
wait(0.2)
end
T.Anchored = true
local kcon = _Mouse.Move:connect(function()pcall(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)end)
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",game.Workspace)
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
wait()
end
Rock.Size = Vector3.new(2.5,2.5,2.5)
local Rockx = Instance.new("Part",game.Workspace)
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
while wait(0.2)do
if not Rock then break end
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Lime green"),0.3)
end end)()
coroutine.wrap(function()
while wait(0.12)do
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
wait()
end
f:Destroy()
end)()end end)()
wait(1.5)
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
wait()
end
s:Destroy()
end)()
wait(0.1)
end end)()
Rock.CanCollide = true
Rock.Anchored = false
Rockx.Anchored = false
coroutine.wrap(function()
while wait()do
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
if Hit.Parent ~= game.Workspace then
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
wait()
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
wait()
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
game:GetService("Debris"):AddItem(Rock,5)
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
if PoisonMode and Power -1000 < 0 or Gun then return end
if Awakend and Power -8000 < 0 then return end
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
if Hit.Parent:findFirstChild("HitAlreadyAtlas")then return end
coroutine.wrap(ShakeCam)(1.1,0.01)
DoScript(game.Players:GetPlayerFromCharacter(Hit.Parent),"ScreenFlash")
if PoisonMode then DoScript(game.Players:GetPlayerFromCharacter(Hit.Parent),"Poisoned")end
Implode(rHandle.CFrame,Settings.Colors[2])
local sxs = Instance.new("StringValue",Hit.Parent)
sxs.Name = "HitAlreadyAtlas"
game:GetService("Debris"):AddItem(sxs,1.5)
if PoisonMode then Power = Power -1000 end
if Awakend then Power = Power -8000 end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *325
game:GetService("Debris"):AddItem(bf,0.26)
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
while wait(1)do
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
wait()
end
wait(0.1)
s.BrickColor = Settings.Colors[2]
if math.random(1,2)== 1 then pcall(function()Hit.Parent.Humanoid:TakeDamage(6)end)end
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = cf
s.Transparency = s.Transparency +0.1
wait()
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
wait()
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
AddScript("MindControl",[[
-- mindcuntrl
script:Destroy()
]])
AddScript("Depression",[[
local Player = game.Players.LocalPlayer
local PlayerGui,Backpack,Character = Player.PlayerGui,Player.Backpack,Player.Character
local H,T,LL,RL,RA,LA,Humanoid = Character.Head,Character.Torso,Character["Left Leg"],Character["Right Leg"],Character["Right Arm"],Character["Left Arm"],Character.Humanoid
local N,LH,RH,LS,RS = T.Neck,T["Left Hip"],T["Right Hip"],T["Left Shoulder"],T["Right Shoulder"]
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
wait()
end
return Callback(Object)
end if Async then
f = coroutine.wrap(f)
end return f()end
local function Chat(Object,Text,Color)
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
Txt.TextColor3 = Color3.new(1,1,1)
Txt.BackgroundTransparency = 1
Txt.ZIndex = 10
TweenColor3(Txt,"TextColor3",Txt.TextColor3,Color,3,true,function(q)
for i = 1,30 do
q.TextTransparency = i/30
wait()
end
G:Destroy()
end)end
local function Msg(Text)
pcall(function()PlayerGui.AtlasTExt:Destroy()end)
local sg = Instance.new("ScreenGui",PlayerGui)
sg.Name = "AtlasTExt"
local t = Instance.new("TextLabel",sg)
t.BackgroundTransparency = 1
t.ZIndex = 10
t.Size = UDim2.new(1,0,1,0)
t.TextScaled = true
t.TextXAlignment = "Right"
t.TextYAlignment = "Bottom"
t.TextColor3 = Color3.new(1,0,0)
t.Font = "SourceSansBold"
t.Text = Text
t.TextTransparency = 1
coroutine.wrap(function()
for i = 1,10 do
t.TextTransparency = t.TextTransparency -0.1
wait()
end
wait(2)
for i = 1,15 do
t.TextTransparency = i/15
t.Text = t.Text.." "
wait()
end
t:Destroy()
end)()end
pcall(function()Character.Animate:Destroy()end)
Character.ChildAdded:connect(function(Child)
if Child:IsA("Tool")or Child:IsA("HopperBin")then
game:GetService("Debris"):AddItem(Child,3)
Chat(H,"Nah...",Color3.new(0.4,0.4,0.5))
end end)
LS.C0 = CFrame.new(-1.5,1,0)
RS.C0 = CFrame.new(1.5,1,0)
LH.C0 = CFrame.new(-0.5,-1,0)
RH.C0 = CFrame.new(0.5,-1,0)
T.Anchored = true
local Rolling = false
pcall(function()H.face.Texture = "http://www.roblox.com/asset/?id=66329524" end)
game.Workspace.CurrentCamera.Focus = H.CFrame
game.Workspace.CurrentCamera.CameraType = "Scriptable"
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/27,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/9,-math.pi/56,math.pi/40)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/9,math.pi/56,-math.pi/40)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/12.5,0,-math.pi/30)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,math.pi/30)
T.CFrame = T.CFrame * CFrame.new(0,-0.445,0.1)* CFrame.fromEulerAnglesXYZ(-math.pi/64,math.pi/90,0)
wait()
end
local Gui = Instance.new("ScreenGui",PlayerGui)
Gui.Name = "Depression Gui..."
local Fr = Instance.new("Frame",Gui)
Fr.BackgroundTransparency = 0.5
Fr.Size = UDim2.new(1,0,1,0)
Fr.BackgroundColor3 = Color3.new(0,0,0)
Fr.BorderSizePixel = 0
local x = math.random(1,5)/10
local f = 1
local Sayings = {"My life is awful.","I should just off myself right now.","What's the point in living?"}
local Sayings2 = {"Do it.","You know you want to...","Come on, it will be quick..."}
while true do Msg(Sayings2[math.random(1,#Sayings2)])Chat(H,Sayings[math.random(1,#Sayings)],Color3.new(x,x,x))TweenColor3(Fr,"BackgroundColor3",Fr.BackgroundColor3,Color3.new(x,x,x),3)x = math.random(1,5)/10 if f == 4 then break end f = f +1 end]])
__Open = false
SpellList = {
Dismemberment = {function()
for i,v in pairs(Debounces)do if v then return end end
Debounces.Attacking = true
if Power -26000 < 0 then return end
local Target = GetClosest(130)
if not Target then return end
Debounces.Attacking = true
Power = Power -26000
pcall(function()Tool.Parent = game.Players.LocalPlayer.Backpack end)
local TT = Target.Torso
local fhold = Instance.new("BodyPosition",TT)
fhold.position =(T.CFrame * CFrame.new(0,0,2.2)).p
fhold.P = 50000
fhold.maxForce = Vector3.new(math.huge,math.huge,math.huge)
local v6 = Instance.new("BodyPosition",T)
v6.position = T.Position
v6.P = 50000
v6.maxForce = Vector3.new(math.huge,math.huge,math.huge)
game:GetService("Debris"):AddItem(fhold,0.31)
Chat(H,"Hah.",Settings.Colors[1])
StopTrail = false
Trail(RA,CFrame.new(0,-1,0),Settings.Colors[2])
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
T.CFrame = StanceGyro.cframe
local DRDRR = true
coroutine.wrap(function()
while wait()do
if not DRDRR then break end
Effect2(Target.Torso,4,4,4,0,0,0,Settings.Colors[2])
end end)()
StanceGyro.cframe = CFrame.new(T.Position,TT.Position)
local hh = Target:findFirstChild("Humanoid")or Instance.new("Humanoid")
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/63,math.pi/15.5)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/63,math.pi/31.5)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/252,math.pi/128,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/252,-math.pi/128,-math.pi/128)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
wait()
end
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/63,-math.pi/15.5)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/63,-math.pi/31.5)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/252,-math.pi/128,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/252,math.pi/128,math.pi/128)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/30,0,0)
wait()
end
TT.CFrame = CFrame.new(T.Position,TT.Position)
StopTrail = true
wait(0.2)
StopTrail = false
Trail(RA,CFrame.new(0,-1,0),Settings.Colors[2])
Trail(LA,CFrame.new(0,-1,0),Settings.Colors[1])
StanceGyro.cframe = CFrame.new(T.Position,TT.Position)
coroutine.wrap(function()
local Limbs = {"Head","Left","Right","Legs","And your torso..."}
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.Angles(0,math.pi/2,0)
Chat(H,Limbs[i],Settings.Colors[1])
wait(0.75)
end
StanceGyro.cframe = StanceGyro.cframe * CFrame.Angles(0,math.pi/2,0)
end)()
for i = 1,10 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/27,0,math.pi/60)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
if i%2 == 1 then LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/65.51,0,0)end
wait(0.01)
end
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/13.5,0,-math.pi/15)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/40,0,math.pi/10)
wait()
end
delay(0.1,function()StopTrail = true end)
v6.P = 12000
Implode(LA.CFrame * CFrame.new(0,-2,0),Settings.Colors[2])
hh:TakeDamage(1)
local wx = Instance.new("Weld",LA)
wx.Part0 = Target.Head
wx.Part1 = LA
local w2 = Instance.new("Weld",RA)
w2.Part0 = Target["Left Arm"]
w2.Part1 = RA
v6.position = T.Position + Vector3.new(-10,0,30)
wait(0.5)
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/27,0,math.pi/15)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/40,0,-math.pi/10)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/30,0,0)
if i%2 == 1 then LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/32.755,0,0)end
wait()
end
w2:Destroy()
Target.Torso["Left Shoulder"]:Destroy()
local w = Instance.new("Weld",LA)
w.Part0 = Target["Left Leg"]
w.Part1 = LA
local w2 = Instance.new("Weld",RA)
w2.Part0 = Target["Right Arm"]
w2.Part1 = RA
v6.position = T.Position + Vector3.new(-20,0,-40)
hh:TakeDamage(1)
coroutine.wrap(function()
StopTrail = true
wait(0.2)
StopTrail = false
Trail(RA,CFrame.new(0,-1,0),Settings.Colors[2])
Trail(LA,CFrame.new(0,-1,0),Settings.Colors[1])
end)()
local w3 = Instance.new("Weld",H)
w3.Part0 = Target["Right Leg"]
w3.Part1 = H
Target.Torso["Right Shoulder"]:Destroy()
Target.Torso["Left Hip"]:Destroy()
Target.Torso["Right Hip"]:Destroy()
w3:Destroy()
w2:Destroy()
w:Destroy()
wait(1.65)
v6.position = T.Position + Vector3.new(30,6,-75)
hh:TakeDamage(1)
coroutine.wrap(function()
StopTrail = true
wait(0.2)
StopTrail = false
Trail(RA,CFrame.new(0,-1,0),Settings.Colors[2])
Trail(LA,CFrame.new(0,-1,0),Settings.Colors[1])
wait(0.3)
StopTrail = true
end)()
wait()
Chat(H,"Die...",Settings.Colors[1])
wx:Destroy()
local Pos = Target.Head.Position
coroutine.wrap(function()
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= Player.Name then
table.insert(Characters,Torso)
end end end
return Characters
end
for i = 1,30 do
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(40 +i *2.5)/2 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500099
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *12
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
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
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[2]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end end)()
Kill(TT)
DRDRR = false
delay(0.3,function()v6.position = T.Position wait()v6:Destroy()end)
for i = 1,10 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/60)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
wait()
end
wait(1.5)
StopJoints()
ChargePosition(false)
StanceGyro.cframe = CFrame.new(T.Position,Vector3.new(Pos.X,T.Position.Y,Pos.Z))
Stance = "Standing"
fhold:Destroy()
Debounces.Attacking = false
end;{Color3.new(0.5,0.5,0.5);Color3.new(1,0,0);Color3.new(0.5,0,0);Color3.new(1,0.5,0.5)}};
Damnation = {function()
for i,v in pairs(Debounces)do if v then return end end
if Power -23563.11512 < 0 then return end
Power = Power -23563.11512
Debounces.Attacking = true
local Clones = {}
local Colors = {BrickColor.new("Really black");BrickColor.new("Navy blue")}
local function CreateClone(SpawnPos)
local Parts = {}
local clr = Colors[math.random(1,#Colors)]
local M do
M = Instance.new("Model",game.Workspace)
M.Name = 'Demon of Damnation'
M.Archivable = false
end
local Humanoid do
Humanoid = Instance.new("Humanoid",M)
Humanoid.Torso = TT
Humanoid.RightLeg = RLLL
Humanoid.LeftLeg = LLLL
Humanoid.MaxHealth = 0
Humanoid.WalkSpeed = 75
end
local TT do
TT = Instance.new("Part",M)
TT.Transparency = 1
TT.FormFactor = "Symmetric"
TT.Size = Vector3.new(2,2,1)
TT.BrickColor = clr
TT.Name = "Torso"
TT.Locked = true
TT.CFrame = SpawnPos
end
local HH,Hn do
HH = Instance.new("Part",M)
HH.Friction = 0.3
HH.FormFactor = "Symmetric"
HH.Size = Vector3.new(2,1,1)
HH.Elasticity = 0.5
HH.BrickColor = clr
HH.Name = "f"
HH.Locked = true
HH.Transparency = 1
HH.CFrame = TT.CFrame * CFrame.new(0,1,0)
local sm = Instance.new("SpecialMesh",HH)
sm.MeshType = "Head"
sm.Scale = Vector3.new(1.25,1.25,1.25)
Hn = Instance.new("Part",M)
Hn.Friction = 0.3
Hn.FormFactor = "Symmetric"
Hn.Size = Vector3.new(2,1,1)
Hn.Elasticity = 0.5
Hn.BrickColor = clr
Hn.Name = "Head"
Hn.Locked = true
Hn.Transparency = 1
Hn.CFrame = TT.CFrame * CFrame.new(0,1,0)
local www = Instance.new("Weld",HH)
www.Part0 = Hn
www.Part1 = HH
coroutine.wrap(function()
while wait()do
if not Hn then break end
Hn.Transparency = 1
end end)()end
local LLLL do 
LLLL = Instance.new("Part",M)
LLLL.Transparency = 1
LLLL.Size = Vector3.new(1,2,1)
LLLL.Locked = true
LLLL.FormFactor = "Symmetric"
LLLL.BrickColor = clr
LLLL.Name = "Left Leg"
LLLL.CFrame = TT.CFrame * CFrame.new(-1,-2,0)
end
local RLLL do
RLLL = Instance.new("Part",M)
RLLL.Transparency = 1
RLLL.Size = Vector3.new(1,2,1)
RLLL.Locked = true
RLLL.FormFactor = "Symmetric"
RLLL.BrickColor = clr
RLLL.Name = "Right Leg"
RLLL.CFrame = TT.CFrame * CFrame.new(1,-2,0)
end
local RRAA do
RRAA = Instance.new("Part",M)
RRAA.Transparency = 1
RRAA.Size = Vector3.new(1,2,1)
RRAA.Locked = true
RRAA.BrickColor = clr
RRAA.FormFactor = "Symmetric"
RRAA.Name = "Right Arm"
RRAA.CFrame = TT.CFrame * CFrame.new(1,0,0)
end
local LLAA do
LLAA = Instance.new("Part",M)
LLAA.Transparency = 1
LLAA.Size = Vector3.new(1,2,1)
LLAA.Locked = true
LLAA.BrickColor = clr
LLAA.FormFactor = "Symmetric"
LLAA.Name = "Left Arm"
LLAA.CFrame = TT.CFrame * CFrame.new(-1,0,0)
end
local NN do
NN = Instance.new("Motor6D",TT)
NN.Name = "Neck"
NN.MaxVelocity = 0.1
NN.Part0 = TT
NN.Part1 = Hn
NN.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
NN.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
end
local RRHH do
RRHH = Instance.new("Motor6D",TT)
RRHH.Name = "Right Hip"
RRHH.MaxVelocity = 0.1
RRHH.Part0 = TT
RRHH.Part1 = RLLL
RRHH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RRHH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
end
local LLHH do
LLHH = Instance.new("Motor6D",TT)
LLHH.Name = "Left Hip"
LLHH.MaxVelocity = 0.1
LLHH.Part0 = TT
LLHH.Part1 = LLLL
LLHH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LLHH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
end
local RRSS do
RRSS = Instance.new("Motor6D",TT)
RRSS.Name = "Right Shoulder"
RRSS.MaxVelocity = 0.1
RRSS.Part0 = TT
RRSS.Part1 = RRAA
RRSS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RRSS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
end
local LLSS do
LLSS = Instance.new("Motor6D",TT)
LLSS.Name = "Left Shoulder"
LLSS.MaxVelocity = 0.1
LLSS.Part0 = TT
LLSS.Part1 = LLAA
LLSS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LLSS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
end
delay(0.3,function()
for _,v in pairs(M:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency -0.1
wait()
end end)()
v.Material = "Marble"
end end end)
Parts.Character = M Parts.H = HH Parts.T = TT Parts.RL = RLLL Parts.LL = LLLL Parts.RA = RRAA Parts.LA = LLAA Parts.N = NN Parts.LH = LLHH Parts.RH = RRHH Parts.LS = LLSS Parts.RS = RRSS Parts.HU = Humanoid
Implode(TT.CFrame,clr)
return Parts
end
for i = 1,4 do
local PRTZ = CreateClone(T.CFrame * CFrame.new(i%2 == 1 and i *5 or -i *4.5,0,0))
Clones[i]= PRTZ.Character
Instance.new("StringValue",PRTZ.Character).Name = "AtlasXHellDemon"
coroutine.wrap(function()
while wait(1)do
if not PRTZ.Character then break end
Effect2(PRTZ.LA,1.2,1.2,1.2,0,-0.8,0,PRTZ.LA.BrickColor,0.1)
Effect2(PRTZ.RA,1.2,1.2,1.2,0,-0.8,0,PRTZ.RA.BrickColor,0.1)
end end)()
coroutine.wrap(function()
while wait()do
if not PRTZ.Character then break end
for _,v in pairs(game.Workspace:GetChildren())do
if v:findFirstChild("Humanoid")and v ~= Character and not v:findFirstChild("AtlasXHellDemon")then
if not v:findFirstChild("AtlasTaken")then
local n = Instance.new("ObjectValue",v)
n.Name = "AtlasTaken"
n.Value = PRTZ.Character
end
if v:findFirstChild("AtlasTaken")then
if v:findFirstChild("AtlasTaken").Value == PRTZ.Character then
PRTZ.HU:MoveTo(v.Torso.Position,v.Torso)
if(PRTZ.T.Position - v.Torso.Position).magnitude <= 10 then
Explode(PRTZ.T.CFrame,Settings.Colors[2])
DamageNear(PRTZ.T.Position,20,935)
end end end end end end end)()
wait()
end
repeat wait()until #Clones == 0
Debounces.Attacking = false
end;{Color3.new(0.25,0.25,0.25);Color3.new(1,0,0);Color3.new(0,0,0);Color3.new(1,1,1);Color3.new(0,0,1)}};
Depression = {function()
for i,v in pairs(Debounces)do if v then return end end
if Power -25456.4 < 0 then return end
local Target = GetClosest(130)
if not Target then return end
Debounces.Attacking = true
Power = Power -25456.4
pcall(function()Tool.Parent = game.Players.LocalPlayer.Backpack end)
local TT = Target.Torso
local fhold = Instance.new("BodyPosition",TT)
fhold.position = T.Position
fhold.P = 50000
fhold.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Chat(H,"YOU'RE WORTHLESS!",BrickColor.new("Really black"),true)
StopTrail = false
Trail(RA,CFrame.new(0,-2,0),Settings.Colors[1])
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
wait()
end
wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
wait()
end
repeat wait()
do local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[1]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(T.Position - Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(0.5,-0.2,0.5)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()end local p do
p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = TT.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()end until(TT.Position -T.Position).magnitude <= 100
local dn = true
fhold:Destroy()
wait(0.1)
DoScript(game.Players:GetPlayerFromCharacter(Target),"Depression")
wait(0.1)
StanceGyro.cframe = CFrame.new(T.Position,Vector3.new(TT.Position.X,T.Position.Y,TT.Position.Z))
Chat(H,"Yes... weep...",BrickColor.new("Navy blue"))
wait(1)
Debounces.Attacking = false
StopTrail = true
ChargePosition(false)
Stance = 'Standing'
end,{Color3.new(0.25,0.01,0.01),Color3.new(0,0,0),Color3.new(1,0,0),Color3.new(0.01,0.01,0.01)}};
}
SpellGui = Instance.new("ScreenGui",PlayerGui)
SpellGui.Name = "Atlas SpellGui"
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
wait()
end
return CallBack and Callback()
end if Async then
f = coroutine.wrap(f)
end return f()end
__xBtn = Instance.new("ImageButton",SpellGui)
__xBtn.BackgroundTransparency = 1
__xBtn.Image = "http://www.roblox.com/asset/?id=144082337"
__xBtn.Size = UDim2.new(0.05,0,0.1,0)
__xBtn.Position = UDim2.new(0.02,0,0.85,0)
__xBtn.BorderSizePixel = 0
__xBtn.ZIndex = 7
__xBtn.MouseButton1Click:connect(function()
if not __Open then
__Open = true
local Spells = Instance.new("Frame",SpellGui)
Spells.Name = "Spells"
Spells.Size = UDim2.new(0.3,0,0,0)
Spells.Position = UDim2.new(0.1,0,0.75,0)
Spells.BorderColor3 = Color3.new(0,0,1)
Spells.BorderSizePixel = 3
Spells.BackgroundColor3 = Color3.new(0,0,0)
Spells.BackgroundTransparency = 1
Spells:TweenSizeAndPosition(UDim2.new(0.3,0,0.4,0),UDim2.new(0.1,0,0.45,0),2,5,3)
local xAmt,X,f = 0,2,BrickColor.new("Royal purple").Color
TweenColor3x(Spells,"BackgroundColor3",Spells.BackgroundColor3,Color3.new(f.r -0.1,f.g -0.1,f.b -0.1),3,false,function(Current,Max)
if xAmt == 0 then xAmt = Spells.BackgroundTransparency end
xAmt = xAmt -0.5/Max
Spells.BackgroundTransparency = xAmt
X = X *-1
Spells.Rotation = Spells.Rotation -X
end)
Spells.Rotation = 0
for i,v in pairs(SpellList)do
local Sp = Instance.new("TextButton",Spells)
Sp.Name = i
Sp.Text = i
Sp.Size = UDim2.new(1,0,0.1,0)
Sp.Position = UDim2.new(0,0,Sp.Size.Y.Scale *(#Spells:GetChildren()-1),0)
Sp.TextScaled = true
Sp.TextColor3 = Color3.new(0,0,0)
Sp.Font = "SourceSansBold"
Sp.BackgroundColor3 = Color3.new(0,0,0)
Sp.BorderSizePixel = 0
Sp.BackgroundTransparency = 1
Sp.BorderColor3 = Color3.new(0,0,1)
Sp.MouseButton1Down:connect(v[1])
Sp.ZIndex = 10
TweenColor3(Sp,"TextColor3",Sp.TextColor3,v[2][math.random(1,#v[2])],3,true,function()
coroutine.wrap(function()
while true do
if not Sp then break end
coroutine.wrap(function()
local rot = 1
for x = 1,4 do
rot = rot *-1
Sp.Rotation = rot +math.random(-1,1)
wait()
end
Sp.Rotation = 0
end)()
TweenColor3(Sp,"TextColor3",Sp.TextColor3,v[2][math.random(1,#v[2])],3)
end end)()end)
coroutine.wrap(function()
for _ = 1,40 do
Sp.BackgroundTransparency = Sp.BackgroundTransparency -0.05
wait()
end end)()end else
__Open = false
local Spells = SpellGui.Spells
Spells:TweenSizeAndPosition(UDim2.new(0.3,0,0,0),UDim2.new(0.1,0,0.75,0),2,5,3)
local X = 1
TweenColor3x(Spells,"BackgroundColor3",Spells.BackgroundColor3,Color3.new(0,0,1),3,false,function(Current,Max)
Spells.BackgroundTransparency = Current/Max
X = X *-1
Spells.Rotation = X
for i,v in pairs(Spells:GetChildren())do
v.BackgroundTransparency = Current/Max
v.TextTransparency = Current/Max
end end)
Spells:Destroy()
end end)
_Open,Pages,CurrentPage = false,{},1
_BookMusic = Instance.new("Sound",PlayerGui)
_BookMusic.SoundId = "http://www.roblox.com/asset?id=136149738"
_BookMusic.Volume = 1
_BookMusic.Looped = true
_BookMusic:Stop()
do local x = math.random(10,20)
coroutine.wrap(function()
while wait(x)do
if _Open and CurrentPage >= 13 and CurrentPage < 24 then
local s = Instance.new("Sound",PlayerGui)
s.SoundId = "http://www.roblox.com/asset?id=136518866"
s.Pitch = math.random(5,20)/10
s:Stop()
wait()
s:Play()
game:GetService("Debris"):AddItem(s,5)
x = math.random(10,20)
end end end)()end
BookGui = Instance.new("ScreenGui",PlayerGui)
BookGui.Name = "Atlas BookGui"
__Btn = Instance.new("ImageButton",BookGui)
__Btn.BackgroundTransparency = 1
__Btn.Image = "http://www.roblox.com/asset/?id=143111139"
__Btn.Size = UDim2.new(0.05,0,0.1,0)
__Btn.Position = UDim2.new(0.9,0,0.85,0)
__Btn.BorderSizePixel = 0
__Btn.ZIndex = 7
__Btn.MouseButton1Click:connect(function()
local function Display(Data)
local function ShiftPage(Direction)
local Dir = Direction and 1 or -1
if CurrentPage == 1 and Dir < 0 then Dir = 0 end
if Pages[CurrentPage +Dir]then
pcall(function()BookGui.xMain._Data:Destroy()end)
CurrentPage = CurrentPage +Dir
Display(Pages[CurrentPage])
end end
local _Data = Instance.new("Frame",BookGui.xMain)
_Data.BackgroundTransparency = 1
_Data.Size = UDim2.new(1,0,1,0)
_Data.Name = "_Data"
local Page = Instance.new("Frame",_Data)
Page.BorderSizePixel = 0
Page.BackgroundTransparency = 1
Page.Position = UDim2.new(0.525,0,0.125,0)
Page.Size = UDim2.new(0.35,0,0.75,0)
Page.ZIndex = 9
if CurrentPage >= 14 and CurrentPage < 24 then
local Img = Instance.new("ImageLabel",Page)
Img.ZIndex = 10
Img.Image = Data[1]
Img.BackgroundColor3 = Color3.new(0,0,0)
Img.BorderSizePixel = 0
Img.Size = UDim2.new(1,0,1,0)
end
if CurrentPage < 14 then
local Header = Instance.new("TextLabel",Page)
Header.ZIndex = 10
Header.Text = Data[1]
Header.BackgroundTransparency = 1
Header.Size = UDim2.new(1,0,0.1,0)
Header.TextColor3 = Color3.new(0,0,1)
Header.Font = "ArialBold"
Header.TextScaled = true
Header.TextStrokeTransparency = 0.5
Header.TextStrokeColor3 = BrickColor.new("Royal purple").Color
local Body = Instance.new("TextLabel",Page)
Body.ZIndex = 10
Body.Text = Data[2]
Body.BackgroundTransparency = 1
Body.Size = UDim2.new(1,0,0.77,0)
Body.Position = UDim2.new(0,0,0.13,0)
Body.TextColor3 = Color3.new(0,0,1)
Body.Font = "ArialBold"
Body.TextScaled = true
Body.TextStrokeTransparency = 0.5
Body.TextStrokeColor3 = BrickColor.new("Royal purple").Color
Body.TextXAlignment = "Left"
Body.TextYAlignment = "Top"
local PageNumber = Instance.new("TextLabel",Page)
PageNumber.ZIndex = 10
PageNumber.Text = tostring(CurrentPage)
PageNumber.BackgroundTransparency = 1
PageNumber.Size = UDim2.new(0.1,0,0.1,0)
PageNumber.Position = UDim2.new(0.9,0,0.9,0)
PageNumber.TextColor3 = Color3.new(0,0,1)
PageNumber.Font = "Arial"
PageNumber.TextScaled = true
PageNumber.TextStrokeTransparency = 0.3
PageNumber.TextStrokeColor3 = BrickColor.new("Royal purple").Color
end
local SubText = Instance.new("TextLabel",Page)
SubText.ZIndex = 10
SubText.Text = Data[3]
SubText.BackgroundTransparency = 1
SubText.Size = UDim2.new(1,0,0.1,0)
SubText.Position = UDim2.new(-1,0,0.8,0)
SubText.TextColor3 = CurrentPage == 14 and Color3.new(0,0,1)or Color3.new(0,0,0)
SubText.Font = "Arial"
SubText.TextScaled = true
SubText.TextXAlignment = "Left"
SubText.TextYAlignment = "Bottom"
local ShiftTabLeft = Instance.new("TextButton",Page)
ShiftTabLeft.Text = "Previous"
ShiftTabLeft.ZIndex = 10
ShiftTabLeft.BackgroundTransparency = 1
ShiftTabLeft.BackgroundColor3 = Color3.new(0,0,0)
ShiftTabLeft.Size = UDim2.new(0.2,0,0.07,0)
ShiftTabLeft.Position = UDim2.new(0,0,0.93,0)
ShiftTabLeft.TextColor3 = Color3.new(0,0,1)
ShiftTabLeft.Font = "Arial"
ShiftTabLeft.TextScaled = true
ShiftTabLeft.TextStrokeTransparency = 0.5
ShiftTabLeft.TextStrokeColor3 = BrickColor.new("Royal purple").Color
ShiftTabLeft.MouseButton1Click:connect(function()ShiftPage(false)end)
local ShiftTabRight = Instance.new("TextButton",Page)
ShiftTabRight.Text = "Next"
ShiftTabRight.ZIndex = 10
ShiftTabRight.BackgroundTransparency = 1
ShiftTabRight.BackgroundColor3 = Color3.new(0,0,0)
ShiftTabRight.Size = UDim2.new(0.2,0,0.07,0)
ShiftTabRight.Position = UDim2.new(0.2,0,0.93,0)
ShiftTabRight.TextColor3 = Color3.new(0,0,1)
ShiftTabRight.Font = "Arial"
ShiftTabRight.TextScaled = true
ShiftTabRight.TextStrokeTransparency = 0.5
ShiftTabRight.TextStrokeColor3 = BrickColor.new("Royal purple").Color
ShiftTabRight.MouseButton1Click:connect(function()ShiftPage(true)end)
end if not _Open then
_Open = true
local xmain = Instance.new("ImageLabel",BookGui)
xmain.Size = UDim2.new(1,0,1,0)
xmain.Image = "http://www.roblox.com/asset/?id=143107018"
xmain.ZIndex = 8
xmain.BackgroundTransparency = 1
xmain.Name = "xMain"
pcall(function()BookGui.xMain._Data:Destroy()end)
Display(Pages[CurrentPage])
_BookMusic:Play()
else
_Open = false
pcall(game.Destroy,BookGui.xMain)
_BookMusic:Stop()
CurrentPage = 1
end end)
if game:GetService("StarterGui"):GetCoreGuiEnabled(1)then game:GetService("StarterGui"):SetCoreGuiEnabled(1,false)end
HealthGui = Instance.new("ScreenGui",PlayerGui)
HealthGui.Name = "Atlas HealthGui"
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
while wait()do
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
delay(1,function()Character.Humanoid.Health = 600 end)
HCCon = Character.Humanoid.HealthChanged:connect(function(Health)
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
game:GetService("StarterGui"):SetCoreGuiEnabled(1,true)
con:disconnect()
end)end)
pcall(script.Destroy,Character:findFirstChild("Health"))
coroutine.wrap(function()
while wait(0.54)do
if not pcall(function()
Character.Humanoid.Health = Character.Humanoid.Health +math.random(0,4)end)
then break end end end)()
-- Pet Gui
local function PetHUD()

end
local function NoPetHUD()

end
local dgg = Instance.new("ScreenGui",PlayerGui)
dgg.Name = "Atlas DamageGui"
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
wait()
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
wait()
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
_MoveFrame = Instance.new("ScreenGui",PlayerGui)
_MoveFrame.Name = "Atlas Move"
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
MoveTxt.Text = "Coded by InternalRecursion"
MoveTxt.TextColor = BrickColor.new("Royal purple")
MoveTxt.TextScaled = true
MoveTxt.ZIndex = 2
function ChangeText(Text)
coroutine.wrap(function()
for i = 1,6 do
_Backing.Rotation = _Backing.Rotation +120
wait()
end end)()
coroutine.wrap(function()
MoveTxt.Text = Text
MoveTxt.TextTransparency = 1
for i = 1,10 do
MoveTxt.TextColor3 = Color3.new(MoveTxt.TextColor3.r +0.1,MoveTxt.TextColor3.g +0.1,MoveTxt.TextColor3.b +0.1)
MoveTxt.TextTransparency = MoveTxt.TextTransparency -0.1
wait()
end
MoveTxt.TextTransparency = 0.55
MoveTxt.TextColor = BrickColor.new("Royal purple")
end)()end
Power,PetPower = MaxPower,13000
_Power = Instance.new("ScreenGui",PlayerGui)
_Power.Name = "Atlas Power"
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
while wait()do
if _LBL2.Image ~= GuiTexture then
_LBL2.Image = GuiTexture
end end end)()
Spawn(function()
while wait()do
if Power <= MaxPower then
if Power < 0 then Power = 0 end
PBar_back:TweenSize(UDim2.new(Power/MaxPower,0,1,0),"InOut","Quad",0.2,true)
Txt.Text = tostring(Power)
end end end)
coroutine.wrap(function()
while true do
TweenColor3(Bar,"BackgroundColor3",Bar.BackgroundColor3,Bar.BackgroundColor3 == Color3.new(0,0,0)and(RageMode and Color3.new(1,0,0)or BrickColor.new("Royal purple").Color)or Color3.new(0,0,0),0.2)
TweenColor3(PBar_back,"BackgroundColor3",PBar_back.BackgroundColor3,PBar_back.BackgroundColor3 == Color3.new(0,0,0)and(RageMode and Color3.new(1,0,0)or BrickColor.new("Royal purple").Color)or Color3.new(0,0,0),0.2)
end end)()
Character.Humanoid.Died:connect(function()
Power = MaxPower
for i = 1,9 do
PBar_back.BackgroundTransparency = PBar_back.BackgroundTransparency +0.1
wait()
end
Power = 0
end)
Character.Humanoid.Died:connect(function()
local DeathPhraze = {"How could I lose?!","InternalRecursion will avenge me!","Avenge me, Internal!","All good things must come to an end I guess..."}
Chat(H,DeathPhraze[math.random(1,#DeathPhraze)],"Really black")
T.Anchored = true
pcall(function()Cam:Destroy()end)
coroutine.wrap(function()
repeat wait()until game.Workspace.CurrentCamera ~= nil
game.Workspace.CurrentCamera.Focus = H.CFrame
end)()
pcall(function()H.face:Destroy()end)
StopPower = true
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
wait()
end end)()end end
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
wait()
end end)()end end end)
SwordAttacks,HandAttacks = {"Spin","Slash","DoubleSwing"}
local StandardSwing,SwingLeft,DoubleSwing,SpinSwing
Stance = "Standing"
Tool.Equipped:connect(function(m)Mouse = m end)
Tool.Equipped:connect(function(Mouse)
AttackState = "Melee"
table.foreach(Debounces,function(_,v)v = false end)
Equipped = true
Mouse.KeyDown:connect(function(Key)
xKey = Key
if Comboing then return end
if Debounces.Shielding then return end
if GlobalKeys[Key]or GlobalKeys[Key:byte()]then
if Pet and PetKeyCombos[Key]then return end
coroutine.wrap(function()local f = GlobalKeys[Key]~= nil and GlobalKeys[Key](Mouse)or GlobalKeys[Key:byte()]~= nil and GlobalKeys[Key:byte()]()end)()
wait()
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
[32] = "Jump!";
[59] = "Flip!";
}
ChangeText(Descriptions[Key]~= nil and Descriptions[Key]or Descriptions[Key:byte()])
end
if KeyBindings[Key]~= nil then
if Pet then return end
KeyBindings[Key](Mouse)
wait()
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
if Pet then return end
if tick()- LastClick > 0.2 then LastClick = tick()return end
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
wait(0.7)
T.CFrame = Hit.Torso.CFrame * CFrame.new(0,0,-15)
Chat(H,"Did you really think that I would let you live?...","Really red")
wait(0.25)
local Settings = {TimeOfDay = game.Lighting.TimeOfDay,Ambient = game.Lighting.Ambient,OutdoorAmbient = game.Lighting.OutdoorAmbient,Brightness = game.Lighting.Brightness}
game.Lighting.TimeOfDay = 0
game.Lighting.Ambient = Color3.new(1,0,0)
game.Lighting.OutdoorAmbient = Color3.new(1,0,0)
game.Lighting.Brightness = 0
wait(1.5)
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
wait()
end
wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,100 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.01
wait()
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
wait()
end
f:Destroy()
end)()
Kill(Hit.Torso)
game.Lighting.Brightness = 10
delay(0.65,function()game.Lighting.Brightness = 1 end)
wait(1.6)
for i,v in pairs(Settings)do
pcall(function()
game.Lighting[i] = v
end)end
Debounces.Attacking = false
Stance = "Standing"
end end end end)
Mouse.Button1Down:connect(function()
if Gun or Cleavers then return end
if Comboing then return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing or Debounces.Shielding then return end
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(RA,CFrame.new(0,0,0))
FlyTrail(LA,CFrame.new(0,0,0))
coroutine.wrap(function()
while wait(0.5)do
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
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
wait(0.1)
DoubleSwing:Play()
wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Spin" then
Debounces.Attacking = true
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
game:GetService("Debris"):AddItem(spinForce,0.84)
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
wait(0.1)
SpinSwing:Play()
wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Slash" then
Debounces.Attacking = true
StopSwordTrail = false
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
wait(1)
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
wait(0.1)
DoubleSwing:Play()
wait(1.5)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Spin" then
Debounces.Attacking = true
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
game:GetService("Debris"):AddItem(spinForce,0.84)
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
wait(0.1)
SpinSwing:Play()
wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Slash" then
Debounces.Attacking = true
StopSwordTrail = false
Stance = "Null"
ChargePosition(false)
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
wait(1)
StopSwordTrail = true
Stance = "Standing"
Debounces.Attacking = false
end

end end)end)
_Mouse = Player:GetMouse()
_Mouse.KeyDown:connect(function(Key)
if Gun or Cleavers then return end
xKey = Key
if Comboing then return end
if Debounces.Shielding then return end
if not Equipped then
if Key == 'f' then
if Pet then return end
local cn;cn = _Mouse.Button1Down:connect(function()
if Power -150 <= 0 then cn:disconnect()return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
local MouseMove = _Mouse.Move:connect(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)
T.Anchored = true
Character.Humanoid.Jump = true
wait(0.55)
for i = 1,10 do
T.CFrame = T.CFrame * CFrame.new(0,10,0)
wait()
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
wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
wait(0.1)
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
wait()
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
while wait()do
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
while wait()do
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
wait()
end
for i = 1,50 do Boom.Size = Boom.Size + Vector3.new(0.25,0.25,0.25)Boom.CFrame = T.CFrame * CFrame.new(0,0,-5.2)wait()end
repeat
CurrentDistance = CurrentDistance -2
Boom.Size = Boom.Size + Vector3.new(2,2,2)
Boom.CFrame = p.CFrame * CFrame.new(0,0,CurrentDistance)
wait()
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
while wait()do
sscs = sscs ~= 360 and sscs +1 or 0
for i,v in pairs(prtzz3)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,-math.rad((i *1080/#prtzz3)+sscs)*5)
* CFrame.new(-36,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local CanHit = true
local cntrr = 0
local canhit = true
coroutine.wrap(function()
while wait()do
if BreakLoop then break end
if canhit then
canhit = false
for i,v in pairs(IsNear(Moused.Hit.p,45))do
local zz = game.Players:GetPlayerFromCharacter(v)
if zz ~= Player then
DoScript(zz,"ScreenFlashV")
DoScript(zz,"CameraShake")
end end
delay(0.55,function()
canhit = true
end)end end end)()
while wait()do
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
Lazur()
if CanHit then
CanHit = false
coroutine.wrap(function()DamageNear(_Mouse.Hit.p,45,math.random(10,75))end)()
coroutine.wrap(function()Explode(p2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),math.random(1,2)== 1 and Settings.Colors[InternalMode and 2 or 1]or BrickColor.new("Really red"),math.random(1,2)== 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/Asset/?id=9756362",p2.CFrame * CFrame.new(0,-1,0))end)()
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
wait()
end end)()end
wait(0.1)
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
wait(0.2)
end
T.Anchored = true
local kcon = _Mouse.Move:connect(function()pcall(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)end)
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",game.Workspace)
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
wait()
end
Rock.Size = Vector3.new(2.5,2.5,2.5)
local Rockx = Instance.new("Part",game.Workspace)
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
while wait(0.2)do
if not Rock then break end
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Really red"),0.3)
end end)()
coroutine.wrap(function()
while wait(0.12)do
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
wait()
end
f:Destroy()
end)()end end)()
wait(1.5)
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
wait()
end
s:Destroy()
end)()
wait(0.1)
end end)()
Rock.CanCollide = true
Rock.Anchored = false
Rockx.Anchored = false
coroutine.wrap(function()
while wait()do
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
if Hit.Parent ~= game.Workspace then
if not Hit.Parent:findFirstChild("Humanoid")then return end
ParticleEmit(Hit,"Really red",2)
coroutine.wrap(ShakeCam)(6.6,0.24)
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
game:GetService("Debris"):AddItem(bf,0.26)
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
wait()
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
wait()
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
game:GetService("Debris"):AddItem(Rock,5)
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
wait()
end
s:Destroy()
end)()
Con:disconnect()
end)
delay(0.6,function()if Con ~= nil then Con:disconnect()end end)
end
if NonSwordKeys[Key]then
if Pet then return end
coroutine.wrap(function()NonSwordKeys[Key](_Mouse)end)()
wait()
Descriptions = {
j = "Shield!";
u = "Keep calm, and destroy!";
g = "Uppercut!";
l = "SUFFER!";
z = "Freeze!";
x = "Burn!";
e = ":D!";
y = "Banishment!";
u = "TO THE MOON!"
}
ChangeText(Descriptions[Key])
end
if GlobalKeys[Key]or GlobalKeys[Key:byte()]then
if Pet and PetKeyCombos[Key]then return end
coroutine.wrap(function()local f = GlobalKeys[Key]~= nil and GlobalKeys[Key](_Mouse)or GlobalKeys[Key:byte()]~= nil and GlobalKeys[Key:byte()]()end)()
wait()
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
[32] = "Jump!";
[59] = "Flip!";}
ChangeText(Descriptions[Key]~= nil and Descriptions[Key]or Descriptions[Key:byte()])
end end end)
_Mouse.Button2Down:connect(function()
for i,v in pairs(Debounces)do
if Comboing or v or Power - 26000 < 0 or Equipped then
return
end end
if tick()- LastClick> 0.2 then LastClick = tick()return end
ChangeText("SPIIIIN")
ChargePosition(false)
Power = Power -26000
Debounces.Attacking = true
Stance = ''
local DrDRRR = true
coroutine.wrap(function()
while wait()do
if not DrDRRR then break end
T.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
end end)()
StopTrail = false
Trail(RA,CFrame.new(0,-1,0),Settings.Colors[2])
Trail(LA,CFrame.new(0,-1,0),Settings.Colors[2])
local function _HIT(x)
return x.Touched:connect(function(Obj)
if Obj.Parent ~= Character then
if Obj.Parent:findFirstChild("Humanoid")then
Damage(T,Obj,true,11,true)
end
if Obj:IsA("BasePart")then
local function f(n)
local BP = Instance.new("BodyForce",n)
BP.force = x.Velocity *100
game:GetService("Debris"):AddItem(BP,0.2)
end
f(Obj)
if Obj.Parent ~= game.Workspace then
for i,v in pairs(Obj.Parent:GetChildren())do
if v:IsA("BasePart")then
f(v)
end end end end end end)end
local kc,xc = _HIT(RA),_HIT(LA)
for i = 1,2 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/12,-math.pi/15,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/15,0)
wait(0.01)
end
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,math.pi/25,math.pi/10)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/60,-math.pi/25,math.pi/10)
wait(0.01)
end
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,-math.pi/30,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0)* CFrame.fromEulerAnglesXYZ(0,math.pi/30,0)
wait(0.01)
end
wait(9)
kc:disconnect()
xc:disconnect()
DrDRRR = false
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,0.05,0)* CFrame.fromEulerAnglesXYZ(math.pi/60,math.pi/30,0)
LS.C0 = LS.C0 * CFrame.new(0,0.05,0)* CFrame.fromEulerAnglesXYZ(0,-math.pi/30,0)
wait(0.01)
end
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/60,-math.pi/25,-math.pi/10)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,math.pi/25,-math.pi/10)
wait(0.01)
end
for i = 1,2 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/12,math.pi/15,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/15,0)
wait(0.01)
end
StopTrail = true
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
end)
_Mouse.Button1Down:connect(function()
if Gun or Cleavers then return end
if Comboing then return end
if Debounces.Shielding or Debounces.IsCharging or Debounces.Attacking or Debounces.IsHealing then return end
if not Equipped then
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(RA,CFrame.new(0,0,0))
FlyTrail(LA,CFrame.new(0,0,0))
coroutine.wrap(function()
while wait(0.5)do
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
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
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/16)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/15,-math.pi/7.5)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,(math.pi/(i *1.25)),0)
wait()
end
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/64,0)
LS.C0 = LS.C0 * CFrame.new(0,0,-0.0154)* CFrame.fromEulerAnglesXYZ(-math.pi/10,0,math.pi/15)
wait()
end
local Con;Con = LA.Touched:connect(function(Hit)
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
ParticleEmit(Hit,"Really red",2)
coroutine.wrap(ShakeCam)(1.1,0.01)
DoScript(game.Players:GetPlayerFromCharacter(Hit.Parent),"ScreenFlash")
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
game:GetService("Debris"):AddItem(bf,0.26)
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
wait()
end
wait(0.1)
s.BrickColor = Settings.Colors[2]
if math.random(1,2)== 1 then pcall(function()Hit.Parent.Humanoid:TakeDamage(6)end)end
for i = 1,10 do
s.Size = s.Size - Vector3.new(1,1,1)
s.CFrame = cf
s.Transparency = s.Transparency +0.1
wait()
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
wait()
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
wait()
end
s:Destroy()
end)()
wait(0.3)
StopTrail = true
delay(1/30,function()if Con ~= nil then Con:disconnect()end end)
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/64,0)
LS.C0 = LS.C0 * CFrame.new(0,0,0.0154)* CFrame.fromEulerAnglesXYZ(math.pi/10,0,-math.pi/15)
wait()
end
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/16)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/15,math.pi/7.5)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-(math.pi/(i *1.25)),0)
wait()
end
ChargePosition(false)
Debounces.Attacking = false
Stance = "Standing"
end end)
local A,B,C,D = Instance.new("Animation",Tool),Instance.new("Animation",Tool),Instance.new("Animation",Tool),Instance.new("Animation",Tool)
A.AnimationId = "http://www.roblox.com/Asset?id=27761123"
B.AnimationId = "http://www.roblox.com/Asset?id=27762691"
C.AnimationId = "http://www.roblox.com/Asset?id=27763344"
D.AnimationId = "http://www.roblox.com/Asset?id=27763939"
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
while wait()do
if Power == 0 and RageMode then
KeyBindings.r()
end end end)()
local LastJump = tick()
local function fFfffffF()
ChargePosition(false)
RS.DesiredAngle = 3.2
LS.DesiredAngle = 3.2
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
RH.DesiredAngle = -1.6
RH.C0 = RH.C0 * CFrame.new(0.5,0,0)
LH.DesiredAngle = 0
LH.C0 = LH.C0 * CFrame.new(-0.8,1.25,0)
LS.DesiredAngle = 0
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/4,0,0)
RS.DesiredAngle = 2
N.MaxVelocity = 0.075
end
coroutine.wrap(function()
while wait(0.4)do
if Pet ~= nil then
ypcall(function()
local p = Instance.new("Part",Character)
p.Size = Vector3.new(0.1,0.1,0.1)
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.Reflectance = 0.1
p.Transparency = 0.2
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pet.Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))* CFrame.Angles(math.random(-33,33)/10,math.random(-33,33)/10,math.random(-33,33)/10)
local dm = Instance.new("SpecialMesh",p)
dm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
dm.Scale = Vector3.new(0,0,0)
coroutine.wrap(function()
for i = 0,1,0.1 do
dm.Scale = Vector3.new(1 *i,1.25 *i,1 *i)
wait()
end end)()
coroutine.wrap(function()
wait(0.1)
for i = 0,1,0.1 do
p.Transparency = i
wait()
end
p:Destroy()
end)()end)end end end)()
coroutine.wrap(function()
while wait(1.1)do
if Pet ~= nil then
local Hit,Pos = game.Workspace:FindPartOnRay(Ray.new(Pet.Position - Vector3.new(0,5,0),(Pet.Position -(Pet.Position -Vector3.new(0,8,0))).unit *-1000),Character)
local clr = Settings.Colors[math.random(1,2)]
if Pos then
Effect(Pos,4,4,4,0,0,0,clr)
end
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clr
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos or Pet.Position -Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(2.12493753,-0.2,2.1249357)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()end end end)()
Character.Humanoid.Jumping:connect(function()
LastJump = tick()
Debounces.Shielding = false
Stance = "Jumping"
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
game:GetService("Debris"):AddItem(spinForce,0.6)
if not Debounces.Attacking and not Debounces.IsCharging and not Debounces.IsHealing then
if not RageMode then
StopJumpTrail = false
JumpTrail(LA,CFrame.new(0,0,0))
JumpTrail(RA,CFrame.new(0,0,0))
end end
local vu = Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,80,0)
game:GetService("Debris"):AddItem(vu,0.267)
RiseRate = RiseRate +3
wait(0.6)
StcC = "Standing"
Stance = "Standing"
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
while wait()do
if not RightGrip then RightGrip = Character:findFirstChild("RightGrip",true)end
if not StopAnimation then
if Stance == "Standing" then
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
elseif Stance == "Jumping" then
ChargePosition(false)
RS.DesiredAngle = -0.4
LS.DesiredAngle = 0.4
RH.DesiredAngle = -0.4
LH.DesiredAngle = 0.4
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/12,0,0)
N.DesiredAngle = 0
end end end end)()
coroutine.wrap(function()
while wait(0.4)do
if not StopPower then
Effect2(LA,1.2,1.2,1.2,0,-0.8,0,ChosenColor or Settings.Colors[1],0.1)
Effect2(RA,1.2,1.2,1.2,0,-0.8,0,ChosenColor or InternalMode and Settings.Colors[1]or Settings.Colors[2],0.1)
end end end)()
coroutine.wrap(function()
while wait(0.25)do
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
while wait()do
pcall(function()
if not Pr0mMode then
if RageMode then
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Really red")
end end end
Power = Power -32
else
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Really red")then
v.BrickColor = Cached[2]
end end end end else
if RageMode then
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Navy blue")
end end end
Power = Power -45
else
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Navy blue")then
v.BrickColor = Cached[2]
end end end end end end)end end)()
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
wait()
end
N.MaxVelocity = 0.07
coroutine.wrap(function()
for i = 1,2 *5 do
wait(0.2/5)
LS.DesiredAngle = -2.8
end end)()
for i = 1,1 do
N.DesiredAngle = 0.5
wait(0.25)
N.DesiredAngle = 1.3
wait(0.2)
end
for i = 1,4 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/26,0,0)
wait()
end
ChargePosition(false)
Stance = "Standing"
end)
for i,v in pairs(Character:GetChildren())do
if v:IsA("Hat")or v:IsA("Shirt")or v:IsA("Pants")or v:IsA("ShirtGraphic")then
v:Destroy()
end end
if ArielMode then game:GetService("InsertService"):LoadAsset(26019701):GetChildren()[1].Parent = Character else game:GetService("InsertService"):LoadAsset(74219283):GetChildren()[1].Parent = Character end
local l = game:GetService("InsertService"):LoadAsset(128159229):GetChildren()[1]
l.Parent = Character
pcall(function()T:findFirstChild("roblox"):Destroy()end)
_Mesh = l:findFirstChild("Mesh",true)
_Mesh.MeshId = "http://www.roblox.com/asset/?id=1285237"
_Mesh.TextureId = "http://www.roblox.com/asset/?id=135974538"
local xss = game:GetService("InsertService"):LoadAsset(99860652):GetChildren()[1]
xss.Parent = Character
local mss = xss:findFirstChild("Mesh",true)
mss.TextureId = "http://www.roblox.com/asset/?id=71162926"
Tool.CanBeDropped = false
Tool.ToolTip = "Forged from the fires of hell by InternalRecursion himself"
SlowParticleEmit(T)
SlowParticleEmit(qHandle)
SlowParticleEmit(rHandle)
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
while wait()do
for i,v in pairs(Prts)do
v.Anchored = true
v.CanCollide = false
end end end)()
while wait()do
SpinCount = SpinCount ~= 360 and SpinCount +1 or 0
for i,v in pairs(Prts)do
if v.BrickColor ~= Settings.Colors[2]then v.BrickColor = Settings.Colors[2]end
v.CFrame = CFrame.new(xHandle.Position)
* CFrame.Angles(0,math.rad((i *360/#Prts)+SpinCount),0)
* CFrame.new(0,0,-1.6)
* CFrame.Angles(math.rad(63),0,0)
end end end)()
ColorChanged = false
pcall(function()PlayerGui:findFirstChild("HealthGui"):Destroy()end)
do local SG = Instance.new("SurfaceGui",T)
SG.Adornee = T
local Txt = Instance.new("TextLabel")
Txt.Size = UDim2.new(0,800,0,600)
Txt.BackgroundTransparency = 1
Txt.Text = AmazingMode and ByteToStr({3096,3131,3138,3121,3052,3141,3131,3137,3052,3092,3121,3117,3134,3136,3066,3066,3066,3052,3080,3071},3020)or "Internal"
Txt.TextScaled = true
Txt.Font = "SourceSansBold"
Txt.Parent = SG
coroutine.wrap(function()
while wait()do
Txt.TextColor = Settings.Colors[InternalMode and 1 or 2]
end end)()end
Chat(H,"I cannot express my rage!",BrickColor.new("Really red"))
Spawn(loadstring("\105\102\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\109\117\99\104\105\104\97\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\108\111\108\107\111\110\105\110\103\108\111\108\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\68\101\97\100\108\121\83\104\114\111\111\109\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\107\121\108\101\114\122\111\110\103\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\107\121\73\101\114\122\111\110\103\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\114\101\100\112\101\110\99\104\105\108\108\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\67\104\114\105\115\116\111\112\104\101\114\115\97\115\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\105\122\97\97\99\49\50\51\54\53\52\55\56\57\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\104\97\108\108\111\119\101\110\49\50\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\107\97\121\100\117\100\101\49\57\57\48\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\75\101\101\112\79\110\66\117\105\108\100\105\110\103\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\114\101\97\108\109\105\110\101\99\114\97\102\116\49\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\65\122\117\114\101\68\105\97\109\111\110\100\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\99\83\97\112\112\104\105\114\101\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\68\111\109\105\110\117\115\67\114\117\101\110\116\117\115\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\76\97\115\116\82\101\103\105\99\105\100\101\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\119\101\122\122\121\102\98\97\98\101\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\126\82\97\105\110\98\111\119\67\97\109\97\114\111\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\126\82\101\107\116\82\97\108\102\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\75\101\105\114\97\110\75\105\108\108\101\114\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\107\105\114\107\111\79\66\97\110\103\122\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\105\81\117\97\105\110\116\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\66\97\115\115\99\97\110\115\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\104\104\116\116\108\108\49\48\48\57\55\48\57\51\53\48\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\115\105\114\107\117\115\108\101\110\97\114\100\111\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\108\111\108\122\109\97\110\108\111\108\122\109\97\110\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\108\111\110\103\105\110\103\99\111\110\119\97\121\56\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\120\57\57\122\97\121\57\57\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\69\100\119\97\114\100\54\55\56\57\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\120\69\120\116\101\114\110\97\108\70\105\108\101\115\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\120\106\111\110\97\116\104\111\110\49\49\50\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\109\101\116\104\97\110\115\104\97\99\107\101\100\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\89\117\109\89\117\109\66\97\107\101\100\66\114\111\119\110\105\101\115\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\109\97\114\105\111\57\56\57\54\54\34\32\111\114\32\71\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\61\61\32\34\72\111\116\114\111\100\50\57\53\56\34\32\116\104\101\110\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\77\97\110\117\97\108\83\117\114\102\97\99\101\74\111\105\110\116\73\110\115\116\97\110\99\101\34\41\101\110\100\32\45\45\32\78\111\32\119\111\114\100\115\32\99\97\110\32\100\101\115\99\114\105\98\101\32\116\104\101\32\115\116\117\112\105\100\105\116\121\32\105\39\118\101\32\115\101\101\110\32\102\114\111\109\32\116\104\101\115\101\32\99\104\105\108\100\114\101\110\46\13\10"))
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")and(v.Name:find("Arm")or v.Name:find("Leg")or v.Name:find("Torso")or v.Name:find("Head"))then
v.BrickColor = Settings.Colors[Awakend and 2 or(InternalMode and 2 or 1)]
end end
coroutine.wrap(function()
while wait()do
pcall(function()
game.Lighting.Outlines = false
end)if RageMode then
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
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")and(v.Name:find("Arm")or v.Name:find("Leg")or v.Name:find("Torso")or v.Name:find("Head"))and v.BrickColor ~= Settings.Colors[Awakend and 2 or(InternalMode and 2 or 1)]then
v.BrickColor = Settings.Colors[Awakend and 2 or(InternalMode and 2 or 1)]
end end end
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
for i = 1,8 do Range[i] = i *53100 end
for i = 1,10 do Range2[i] = i *760 end
local Damage = Range[math.random(1,#Range)]-Range2[math.random(1,#Range2)]
if Obj.Parent ~= nil then
local Humanoid = Obj.Parent:findFirstChild("Humanoid")
if Humanoid then
xxTCDg(tostring(Damage).."...")
local Torso = Obj.Parent:findFirstChild("Torso")
if Torso then
ChangeText("Trippy br0...")
DoScript(game.Players:GetPlayerFromCharacter(Obj.Parent),"Trippppppyyyyyyy")
local KnockBack = Vector3.new(0,(Damage/130)*23,(Damage/130)*33)
for i,v in pairs(Obj.Parent:GetChildren())do
if v:IsA("BasePart")then
local Sf = Instance.new("BodyVelocity",v)
Sf.velocity = Vector3.new(0,300000,10003)
Sf.P = 2000
Sf.maxForce = AbsVector(KnockBack)*2
game:GetService("Debris"):AddItem(Sf,1.6)
local R = Instance.new("BodyAngularVelocity",v)
R.P = 5000
R.maxTorque = Vector3.new(50000,50000,50000)*500000000
R.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
game:GetService("Debris"):AddItem(R,1.2)
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
game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale - Vector3.new(1.1,1.1,1.1)
p.Transparency = i/60
p.BrickColor = BrickColor.Random()
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait(0.01)
end
CurrentVictim = Humanoid.Parent
local _CON = Humanoid.Died:connect(function()
Tag(Humanoid)
LastKill = tick()
DoScript(game.Players:GetPlayerFromCharacter(Object.Parent),"OverDose")
end)
delay(0.1,function()_CON:disconnect()end)
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
game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale + Vector3.new(0.66 *_ *0.8,0.66 *_ *0.8,0.66 *_ *0.8)
p.Transparency = i/60
p.BrickColor = BrickColor.Random()
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait()
end end end end end end
local function MidnightStrikeDmg(Obj)
if Obj.Parent ~= Character then
local Range,Range2 = {},{}
for i = 1,5 do Range[i] = i *1100 end
for i = 1,10 do Range2[i] = i *51 end
local Damage = Range[math.random(1,#Range)]-Range2[math.random(1,#Range2)]
if Obj.Parent ~= nil then
local Humanoid = Obj.Parent:findFirstChild("Humanoid")
if Humanoid then
MidnightStrikeDmgGui(tostring(Damage).."...")
local Torso = Obj.Parent:findFirstChild("Torso")
if Torso then
ChangeText("May their nightmares come true...")
DoScript(game.Players:GetPlayerFromCharacter(Obj.Parent),"CameraShake")
local KnockBack = Vector3.new(0,(Damage/130)*23,(Damage/130)*33)
for i,v in pairs(Obj.Parent:GetChildren())do
if v:IsA("BasePart")then
local Sf = Instance.new("BodyVelocity",v)
Sf.velocity = Vector3.new(0,300000,10003)
Sf.P = 2000
Sf.maxForce = AbsVector(KnockBack)
game:GetService("Debris"):AddItem(Sf,1.6)
local R = Instance.new("BodyAngularVelocity",v)
R.P = 5000
R.maxTorque = Vector3.new(50000,50000,50000)*500000000
R.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
game:GetService("Debris"):AddItem(R,1.2)
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
game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale - Vector3.new(1.1,1.1,1.1)
p.Transparency = i/60
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait(0.01)
end
CurrentVictim = Humanoid.Parent
local _CON = Humanoid.Died:connect(function()
Tag(Humanoid)
LastKill = tick()
DoScript(game.Players:GetPlayerFromCharacter(Object.Parent),"MidnightStrikeKill")
end)
delay(0.1,function()_CON:disconnect()end)
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
game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale + Vector3.new(0.66 *_ *0.8,0.66 *_ *0.8,0.66 *_ *0.8)
p.Transparency = i/60
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait()
end end end end end end
Growl()
-- 4Bits' ip: 208.104.44.235
CachedColors,AwakendColors,CoolDown,CachedFace = {Settings.Colors[1];Settings.Colors[2]},{BrickColor.new("Really black");BrickColor.new("Medium lilac")},false,H.face.Texture
coroutine.wrap(function()
while wait()do
if CoolDown then
wait(6)
CoolDown = false
end end end)()
local CCombos = {
xeqex = {"I'm back...";function()
for i,v in pairs(Debounces)do
if v or CoolDown or RageMode then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
Debounces.Attacking = true
Awakend = false
SetHealth()
CoolDown = true
Settings.Colors = CachedColors
ColorChanged = true
local OldPower = MaxPower
coroutine.wrap(function()
for i = 1,4 do
MaxPower = OldPower/i
wait(2.1)
end end)()
local CachedSpeed = Character.Humanoid.WalkSpeed
local v6 = Instance.new("BodyPosition",T)
v6.P = 51000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = T.Position
pcall(function()PlayerGui.AtlasLuna:Destroy()end)
H.face.Texture = CachedFace
FaceTexture = CachedFace
Character.Humanoid.WalkSpeed = CachedSpeed
v6:Destroy()
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end};
qeyt = {"Here I come!";function()
print(ypcall(function()
for i,v in pairs(Debounces)do
if v then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
local Target = GetClosest(390)
if not Target then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
Debounces.Attacking = true
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
local Origin,StartPos = T.Position,T.Position + Vector3.new(0,300,26)
local TT = Target.Torso
local v6 = Instance.new("BodyPosition",T)
v6.position = StartPos
v6.P = 4000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
repeat
wait()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = T.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()until(StartPos - T.Position).magnitude <= 5
StopJoints()
ChargePosition(false)
StanceGyro.cframe = CFrame.new(T.Position,TT.Position)
Chat(H,"Get ready, this is going to hurt!",Settings.Colors[2])
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/25)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/25)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/43,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/64)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/64)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/25,0,0)
wait()
end
wait(2.5)
v6.position = TT.Position
v6.P = 72000
repeat wait()until(TT.Position - T.Position).magnitude <= 10
for i,v in pairs(game.Players:GetPlayers())do
coroutine.wrap(function()
for x = 1,9 do
DoScript(v,"CameraShake")
wait(0.55)
end end)()end
fPos = TT.Position + Vector3.new(0,10,0)
local clarlrs = {BrickColor.new("Really black");BrickColor.new("Navy blue");BrickColor.new("Toothpaste");BrickColor.new("Really blue");BrickColor.new("Medium lilac")}
local ffff,HitPos = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(fPos - Vector3.new(0,5,0),(fPos -(fPos -Vector3.new(0,8,0))).unit *-500),{Target;Character})
coroutine.wrap(function()
for i = 1,30 do
local p = Instance.new("Part",Character)
p.FrontSurface = ffff.TopSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(HitPos -Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),HitPos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(2 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end end)()
coroutine.wrap(function()
for i = 1,10 do
for i = 1,4 do
local p = Instance.new("Part",Character)
p.TopSurface = ffff.TopSurface
p.BottomSurface = ffff.BottomSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = false
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
p.CFrame = CFrame.new(HitPos -Vector3.new(math.random(-4,4),-2,math.random(-4,4)))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
wait(0.025)
end end)()
coroutine.wrap(function()
local Pos = T.Position
local BOOSH = Instance.new("Sound",game.Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",game.Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",game.Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",game.Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
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
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
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
wait()
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(4 +math.random(-1,1))
end end end
wait(0.1)
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(8 +math.random(-2,1))
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
wait()
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
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/25)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/25)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/43,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/64)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/64)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
wait()
end
Debounces.Attacking = false
StopJoints()
ChargePosition(false)
pcall(function()v6:Destroy()end)
Stance = "Standing"
delay(0.2,function()
Comboing = false
StopRunning = false
end)end))end};
ftfq = {"Die, quickly.";function()
print(ypcall(function()
for i,v in pairs(Debounces)do
if v then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
local Target = GetClosest(390)
if not Target then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
Debounces.Attacking = true
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
local v6 = Instance.new("BodyPosition",T)
v6.P = 8000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = T.Position + Vector3.new(0,50,0)
local fhold = Instance.new("BodyPosition",Target.Torso)
fhold.P = 80000
fhold.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
fhold.position = Target.Torso.Position
local Origin = T.Position
local EndPoint = Target.Torso.Position
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "BALL"
p.BrickColor = Settings.Colors[1]
p.formFactor = "Symmetric"
p.CFrame = T.CFrame
p.Size = Vector3.new(1,1,1)
local mm = Instance.new("SpecialMesh",p)
mm.MeshType = "Sphere"
local ww = Instance.new("Weld",RA)
ww.Part0 = RA
ww.Part1 = p
ww.C0 = CFrame.new(0,-1.75,0)
local g = Instance.new("BodyGyro",T)
g.P = 15000
g.D = 300
g.maxTorque = Vector3.new(99999,99999,99999)*9999999999999999999999999
local bp = Instance.new("BodyPosition",T)
bp.P = 8500
bp.D = 1200
bp.maxForce = Vector3.new(999999,999999,999999)*9999999999999999999999999999999999999
bp.position = EndPoint
g.cframe = CFrame.new(EndPoint,Origin)* CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
local ll = T.CFrame.lookVector
local look = ll
local StartC0 = CFrame.new(0.75,-2.18556941e-008,-1,0,-0.866025388,-0.5,0,-0.5,0.866025388,-1,0,0)
local zAnim = RS
zAnim.C0 = StartC0
zAnim.MaxVelocity = 0
zAnim.C1 = zAnim.C1 * CFrame.new(0,1,0)
zAnim.CurrentAngle = 2.8
zAnim.MaxVelocity = 0.4
zAnim.DesiredAngle = -0.9
local oll = T.CFrame
for i = 1,4 do
wait(0.05)
zAnim.C0 = zAnim.C0 * CFrame.new(-0.175,-0.1,0.05)
end
wait(0.1)
for i = 1,20 do
wait(0.1)
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[1]
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.25 +i *0.025,0.25 +i *0.025,0.25 +i *0.025)*1.5
wait()
end
b:Destroy()
end)()end
RS.DesiredAngle = 1.6
g.cframe = g.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi,0)
wait(0.25)
local hax = p.Position
ww:Destroy()
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
Origin = Origin +look *20
for i = 1,10 do
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[1]
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
m.Scale = Vector3.new(6,6,6)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale - Vector3.new(0.42,0.42,0.42)
wait()
end
b:Destroy()
end)()
p.CFrame = CFrame.new(hax:Lerp(Origin,i *0.01))
wait(0.075)
end
ChargePosition(false)
g.cframe = CFrame.new(bp.position,Origin)
wait(0.15)
RH.DesiredAngle = 1.1
LH.DesiredAngle = 0.7
for i = 10,20 do
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
m.Scale = Vector3.new(6,6,6)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale - Vector3.new(0.42,0.42,0.42)
wait()
end
b:Destroy()
end)()
p.CFrame = CFrame.new(hax:Lerp(Origin,i *0.001))
g.cframe = g.cframe * CFrame.fromEulerAnglesXYZ(-math.pi/6,0,0)
bp.position = p.Position + Vector3.new(0,10 +((i -12)*10),0)+ look *(i -11)-look *5
wait()
end
g.cframe = oll
p.Transparency = 1
coroutine.wrap(function()
wait(0.1)
local bo = Instance.new("Part",Character)
bo.TopSurface = 0
bo.BottomSurface = 0
bo.Anchored = true
bo.CanCollide = false
bo.CFrame = CFrame.new(Origin +look *5)
bo.Transparency = 1
coroutine.wrap(function()
for i,v in pairs(game.Players:GetPlayers())do
coroutine.wrap(function()
for x = 1,9 do
DoScript(v,"CameraShake")
wait(0.55)
end end)()end
local Pos = Target.Torso.Position
local BOOSH = Instance.new("Sound",game.Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",game.Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",game.Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",game.Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
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
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
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
wait()
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(4 +math.random(-1,1))
end end end
wait(0.1)
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(8 +math.random(-2,1))
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
wait(0.375)
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()
wait(0.375)
local p1 = Instance.new("Part",Character)
p1.Size = Vector3.new(1,1,1)
p1.Anchored = true
p1.CanCollide = false
p1.CFrame = CFrame.new(origin - Vector3.new(0,2.9,0))
local m1 = Instance.new("SpecialMesh",p1)
m1.MeshId = "http://www.roblox.com/asset/?id=1527559"
m1.Scale = Vector3.new(1,1,1)
local p11 = Instance.new("Part",Character)
p11.Size = Vector3.new(1,1,1)
p11.Anchored = true
p11.CanCollide = false
p11.CFrame = CFrame.new(Origin - Vector3.new(0,3,0))
p11.Transparency = 0.1
local m11 = m1:Clone()
m11.Parent = p11
local en = 0
for i = 1,110 do
m1.Scale = m1.Scale + Vector3.new(0.5 *6.5 -i/75,0.45 *6.5 -i/75,0.5 *6.5 -i/75)/1.3/4
p1.CFrame = p1.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/190 *i,0)
m11.Scale = m11.Scale - Vector3.new(0.5 *6.5 -i/75,0.45 *6.5-i/75,0.5 *6.5 -i/75)/1.35/4
p11.CFrame = p11.CFrame * CFrame.fromEulerAnglesXYZ(0,-math.pi/190 *i,0)
wait()
end
for i = 100,120 do
m1.Scale = m1.Scale + Vector3.new(0.5 *6.5 -i/75,0.45 *6.5 -i/75,0.5 *6.5 -i/75)/1.3/4
p1.CFrame = p1.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/190 *i,0)
m11.Scale = m11.Scale - Vector3.new(0.5 *6.5 -i/75,0.45 *6.5 -i/75,0.5 *6.5 -i/75)/1.35/4
p11.CFrame = p11.CFrame * CFrame.fromEulerAnglesXYZ(0,-math.pi/190 *i,0)
wait()
p1.Transparency = p1.Transparency +0.05
p11.Transparency = p11.Transparency +0.05
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(Origin + Vector3.new(math.random(-40,40)*4,0,math.random(-40,40)*4))* CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-50,50),math.random(-3,3))
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,11 do
b.Transparency = n/11
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.375,0.375,0.375)*1.5
wait()
end
b:Destroy()
end)()end
p11:Destroy()
p1:Destroy()
for i = 1,40 do
wait()
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(Origin + Vector3.new(math.random(-40,40)*4/3,-0.5,math.random(-40,40)*4/3))* CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-50,50),math.random(-3,3))
b.Anchored = true
b.CanCollide = false
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,11 do
b.Transparency = n/11
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.55 -i *0.01,0.55 -i *0.01,0.55 -i *0.01)*1.5
wait()
end
b:Destroy()
end)()end
for i = 1,10 do
wait(i *0.025)
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(Origin + Vector3.new(math.random(-40,40)*4/3,-.5,math.random(-40,40)*4/3))*CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-50,50),math.random(-3,3))
b.Anchored = true
b.CanCollide = false
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,11 do
b.Transparency = n/11
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.55 -i *0.01,0.55 -i *0.01,0.55 -i *0.01)*1.5
wait()
end
b:Destroy()
end)()end end)()
for i = 1,10 do
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = BrickColor.new("Really black")
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
local m = Instance.new("BlockMesh",b)
m.Scale = Vector3.new(6,6,6)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale - Vector3.new(0.42,0.42,0.42)
wait()
end
b:Destroy()
end)()
p.CFrame = Target.Torso.CFrame
wait(0.05)
end
bp:Destroy()
p:Destroy()
g:Destroy()
v6:Destroy()
fhold:Destroy()
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end))end};
qeqf = {"Massive lazer attack attack";function(nMouse)
local nMouse = nMouse
print(ypcall(function()
for i,v in pairs(Debounces)do
if v then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Debounces.Attacking = true
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
local Origin = T.Position - Vector3.new(0,2,0)
local MidPoint = Origin + Vector3.new(0,50,0)
local EndPos = MidPoint + Vector3.new(0,50,0)
local v6 = Instance.new("BodyPosition",T)
v6.P = 3000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = EndPos
Effect(Origin,4,4,4,0,0,0,Settings.Colors[2])
Explode(CFrame.new(Origin)* CFrame.fromEulerAnglesXYZ(math.random(1,500)/100,math.random(1,500)/100,math.random(1,500)/100),Settings.Colors[2])
Explode(CFrame.new(EndPos)* CFrame.fromEulerAnglesXYZ(math.random(1,500)/100,math.random(1,500)/100,math.random(1,500)/100),Settings.Colors[2])
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[2]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Origin -Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(2.12493753,-0.2,2.1249357)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Anchored = true
p.Size = Vector3.new(13,1,13)
p.CanCollide = false
p.BrickColor = Settings.Colors[1]
p.Locked = true
p.CFrame = CFrame.new(Origin)
local m = Instance.new("CylinderMesh",p)
m.Scale = Vector3.new(1,1,1)
LS.DesiredAngle = 0
LH.DesiredAngle = 1
RH.DesiredAngle = 1
LS.DesiredAngle = 1
LS.C0 = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
N.DesiredAngle = 1.6
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0)
local n = Origin - Vector3.new(0,2,0)
local DrDRRR = true
coroutine.wrap(function()
while wait()do
Effect(Origin,15,15,15,0,0,0,Settings.Colors[math.random(1,2)])
local fx = math.random(11,13)
p.Size = Vector3.new(fx,(T.Position - n).magnitude,fx)
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-(T.Position - n).magnitude/2,0)
if not DrDRRR then
break
end end end)()
coroutine.wrap(function()
while wait(1.2)do
Explode(CFrame.new(Origin)* CFrame.fromEulerAnglesXYZ(math.random(1,500)/100,math.random(1,500)/100,math.random(1,500)/100),Settings.Colors[math.random(1,2)])
if not DrDRRR then
break
end end end)()
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
wait()
end repeat wait()until(EndPos - T.Position).magnitude <= 5
wait(0.3)
p.Size = Vector3.new(13,(T.Position - n).magnitude,13)
p.CFrame = CFrame.new(T.Position)* CFrame.new(0,-(T.Position - n).magnitude/2,0)
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(-math.pi/6,-math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/8.5,0,0)* CFrame.new(0,0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)* CFrame.new(0,0.1,0)
wait()
end 
StopJoints()
ChargePosition(false)
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
wait()
end
local Amt,Rot,cm,Angle,IncAmt = 8,0,{},63,10
for i = 1,Amt do
local p = Instance.new("Part",Character)
p.Anchored = true
p.Size = Vector3.new(13/Amt,1,13/Amt)
p.CanCollide = false
p.BrickColor = Settings.Colors[i <=(Amt/2)and 1 or 2]
p.Locked = true
p.FormFactor = "Custom"
p.CFrame = CFrame.new(Origin)
p.Transparency = 1
coroutine.wrap(function()
local _g = p.Size.x
for n = 1,30 do
_g = _g -((13/Amt)- 4)/30
p.Size = Vector3.new(_g,p.Size.y,_g)
p.CFrame = p.CFrame
wait()
end end)()
coroutine.wrap(function()
for j = 1,10 do
p.Transparency = p.Transparency -0.1
wait()
end end)()
local m = Instance.new("CylinderMesh",p)
m.Scale = Vector3.new(1,1,1)
table.insert(cm,p)
end
local conc;conc = nMouse.Button1Down:connect(function()
DrDRRR = false
conc:disconnect()
end)
coroutine.wrap(function()
while wait(0.45)do
if not DrDRRR or Power -40 < 0 then break end
DamageNear(Origin,30,95)
for i,v in pairs(cm)do
Effect((v.CFrame * CFrame.new(0,-(v.CFrame.Y/2)*4.4,0)).p,13,13,13,0,0,0,v.BrickColor)
DamageNear((v.CFrame * CFrame.new(0,-(v.CFrame.Y/2)*4.4,0)).p,100,75)
end end end)()
while wait()do
if not DrDRRR or Power -40 < 0 then break end
Power = Power -40
Rot = Rot ~= 360 and Rot +IncAmt or 0
for i,v in pairs(cm)do
v.Size = Vector3.new(v.Size.x,(T.Position -n).magnitude *2.2,v.Size.z)
v.CFrame = CFrame.new(T.Position)* CFrame.new(0,-(T.Position -n).magnitude/2,0)
* CFrame.Angles(0,math.rad((i *360/Amt)+Rot),0)
* CFrame.new(0,0,-30)
* CFrame.Angles(0,0,math.rad(Angle))
end end
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end))end};
fetr = {"Die";function()
print(ypcall(function()
for i,v in pairs(Debounces)do
if v then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
StopPower = true
Debounces.Attacking = true
ChargePosition(false)
Stance = 'nil'
local DrDRRR,inc = true,0
coroutine.wrap(function()
for i = 1,250 do
inc = inc +0.002
wait()
end end)()
local Clr,Nx,lf = Settings.Colors[2]
coroutine.wrap(function()
while wait(0.01)do
if not DrDRRR then break end
Effect2(lf or RA,Nx or inc,Nx or inc,Nx or inc,0,lf and 0 or -1.3,0,Clr,0.1)
end end)()
for i = 1,20 do
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/60,math.pi/30)
wait()
end
wait(0.85)
for i = 1,10 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/64)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/30,-math.pi/54)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/15,-math.pi/35.1)
wait()
end
Clr = Settings.Colors[1]
for i = 1,10 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/64)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/30,-math.pi/54)
wait(0.01)
end
wait(0.3)
Nx = 1.2
for i = 1,10 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/128)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/30,-math.pi/90,math.pi/108)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
wait(0.01)
end
wait(0.7)
Clr = Settings.Colors[2]
lf = Instance.new("Part",Character)
lf.Size = Vector3.new(1,1,1)
lf.CanCollide = false
lf.Transparency = 1
lf.Locked = true
local Hit,Pos = game.Workspace:FindPartOnRay(Ray.new(LA.CFrame.p,((LA.CFrame * CFrame.new(4,-1000,0)).p - LA.CFrame.p).unit *1000),Character)
local bp = Instance.new("BodyPosition",lf)
bp.P = 4000
bp.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
local Target = GetClosest(390)
if not Target and not Pos then
DrDRRR = false
StopPower = false
Debounces.Attacking = false
ChargePosition(false)
Stance = 'Standing'
end
if not Pos then Pos = Target.Torso.Position end
bp.position = Pos
for i = 1,10 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(0,0,math.pi/128)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/30,math.pi/90,-math.pi/108)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/30,0,0)
wait()
end
wait(0.2)
Nx = 3.7
repeat wait()until lf.Position == Pos
coroutine.wrap(function()
local BOOSH = Instance.new("Sound",game.Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",game.Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",game.Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",game.Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
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
local h do
h = v.Parent:findFirstChild("Humanoid")
end if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500099
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *12
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
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
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
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
wait()
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(4 +math.random(-1,1))
end end end
wait(0.1)
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(8 +math.random(-2,1))
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
wait()
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
DrDRRR = false
StopPower = false
Debounces.Attacking = false
ChargePosition(false)
Stance = 'Standing'
Power = Power -26000
delay(0.2,function()
Comboing = false
StopRunning = false
end)end))end};
}
local Combos = {
ftrt = {"Death hug!";function()
for i,v in pairs(Debounces)do
if v then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
local Target = GetClosest(360)
if not Target then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Debounces.Attacking = true
Power = Power -26000
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
local Origin = T.Position
local TT do
TT = Target.Torso
end local v6 do
v6 = Instance.new("BodyPosition",T)
v6.position = T.Position
v6.P = 1000000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
end
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/25,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/27,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/19,0,math.pi/10)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/19,0,-math.pi/10)
wait()
end
Chat(H,"FREEEEEE HUUUUGZ!",Settings.Colors[2],true)
wait(0.5)
StanceGyro.cframe = CFrame.new(T.Position,TT.Position)
Chat(H,"Come to me!",Settings.Colors[2],true)
local fhold = Instance.new("BodyPosition",TT)
fhold.position = T.Position
fhold.P = 4000
fhold.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
ChosenColor = Settings.Colors[2]
repeat
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[2]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(T.Position - Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(0.5,-0.2,0.5)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = TT.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()wait()until(T.Position - TT.Position).magnitude <= 4
ChosenColor = nil
ChargePosition(false)
StopJoints()
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/25,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/27,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/19,0,math.pi/10)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/19,0,-math.pi/10)
wait()
end
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/25,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/40.5,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/12.3,math.pi/15)* CFrame.new(0,0,-0.04)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/12,-math.pi/15)* CFrame.new(0,0,-0.04)
wait()
end
Chat(H,"Gotcha!",Settings.Colors[2])
wait(0.3)
local HitPos = T.Position - Vector3.new(0,-62,300)
StanceGyro.cframe = CFrame.new(T.Position,HitPos)
Explode(CFrame.new(HitPos),Settings.Colors[2])
fhold.position = HitPos - Vector3.new(0,0,1)
local Plat = Instance.new("Part",Character)
Plat.Anchored = true
Plat.Locked = true
Plat.Transparency = 1 
Plat.CanCollide = false
Plat.Size = Vector3.new(30,1,30)
Plat.CFrame = CFrame.new(HitPos)* CFrame.new(0,-2,0)
repeat wait()until(HitPos - TT.Position).magnitude <= 3
fhold.position = HitPos - Vector3.new(0,2,1)
Explode(CFrame.new(HitPos),Settings.Colors[1])
wait(0.5)
v6.position = HitPos - Vector3.new(0,0,5)
ChargePosition(false)
repeat
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = TT.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()wait()until(TT.Position - T.Position).magnitude <= 12
Plat.CanCollide = true
ChargePosition(false)
local Lighting = {}
Lighting.TimeOfDay = game.Lighting.TimeOfDay
Lighting.Ambient = game.Lighting.Ambient
Lighting.OutdoorAmbient = game.Lighting.OutdoorAmbient
Lighting.Brightness = game.Lighting.Brightness
StanceGyro.cframe = CFrame.new(TT.Position,T.Position)
Chat(H,"You didn't hug me...",Settings.Colors[1])
TweenTimeOfDay("24:00:00",2.2)
StanceGyro.cframe = CFrame.new(T.Position,T.Position + game.Lighting:GetMoonDirection())
Chat(H,"You want me to kill him, Master?",BrickColor.new("Navy blue"))
wait(2.3)
Chat(H,"You're going to die now, as per her orders.",Settings.Colors[1])
wait(1.3)
StanceGyro.cframe = CFrame.new(T.Position,TT.Position)
ChargePosition(false)
StopJoints()
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/27,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/19,0,math.pi/10)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/19,0,-math.pi/10)
wait()
end
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/40.5,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(0,math.pi/12.3,math.pi/15)* CFrame.new(0,0,-0.04)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(0,-math.pi/12,-math.pi/15)* CFrame.new(0,0,-0.04)
wait()
end
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
TweenColor3(game.Lighting,"Ambient",game.Lighting.Ambient,Settings.Colors[1].Color,1,true)
game.Lighting.Brightness = 0
coroutine.wrap(function()
local clarlrs = {Settings.Colors[1],BrickColor.new("Really blue"),BrickColor.new("Navy blue"),BrickColor.new("Toothpaste")}
TweenColor3(game.Lighting,"OutdoorAmbient",game.Lighting.OutdoorAmbient,clarlrs[math.random(2,#clarlrs -1)],1,true)
for i = 1,20 do
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = RA.CFrame * CFrame.new(0,-2,0)
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
m.Scale = Vector3.new(6,6,6)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale - Vector3.new(0.42,0.42,0.42)
wait()
end
b:Destroy()
end)()
wait()
end
for _,v in pairs(game.Players:GetPlayers())do DoScript(v,"ScreenFlashVi")end
local Pos = TT.Position
Kill(TT)
local BOOSH = Instance.new("Sound",game.Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",game.Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",game.Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",game.Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
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
wait()
end
p:Destroy()
end)()
pcall(function()Plat:Destroy()end)
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CanCollide = false
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
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
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(0.1,0.1,0.1)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(1.5 +3 +i/5,1.5 +3 +i/5,0.1)*4/2
if 3+i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
wait()
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(4 +math.random(-1,1))
end end end
wait(0.1)
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(8 +math.random(-2,1))
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
wait(0.375)
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()
wait(3)
v6.position = Origin
ChargePosition(false)
Stance = "Standing"
delay(0.1,function()Stance = '' ChargePosition(false)end)
game.Lighting.Brightness = Lighting.Brightness
TweenColor3(game.Lighting,"Ambient",game.Lighting.Ambient,Lighting.Ambient,1,true)
TweenColor3(game.Lighting,"OutdoorAmbient",game.Lighting.OutdoorAmbient,Lighting.OutdoorAmbient,1,true)
TweenTimeOfDay(tostring(Lighting.TimeOfDay),1)
repeat wait()until(Origin -T.Position).magnitude <= 10
v6:Destroy()
fhold:Destroy()
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end};
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
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LH.C0 = LH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RH.C0 = RH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/80 *i)
wait()
end
wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
wait()
end
wait(0.2)
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
wait(0.25)
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(3,3,3)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2.5,2.5,2.5)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity = (t.Position - RA.Position).unit *-(10 +(t.Position - RA.Position).magnitude *1.27)
game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break end end end end end end end
wait(0.1)
end
local BP if Grabbed then
local Target = Grabbed.Parent.Humanoid
wait()
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
wait()
end end)()
coroutine.wrap(ShakeCam)(7.32,0.04)
Implode(Grabbed.CFrame,BrickColor.new("Really black"))
local dn,cc = true,1
coroutine.wrap(function()
while wait(0.1)do
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
wait()
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
Cached.Ambient = game.Lighting.Ambient
Cached.OutdoorAmbient = game.Lighting.OutdoorAmbient
Cached.FogEnd = game.Lighting.FogEnd
Cached.TimeOfDay = game.Lighting.TimeOfDay
Cached.Sky = game.Lighting:findFirstChild("Sky")or Instance.new("Sky",game.Lighting)
if Cached.Sky then Cached.Sky.CelestialBodiesShown = game.Lighting.Sky.CelestialBodiesShown end
Cached.Brightness = game.Lighting.Brightness
Cached.FogColor = game.Lighting.FogColor
game.Lighting.Ambient = Color3.new(0.34,0.34,0.34)
game.Lighting.OutdoorAmbient = Color3.new(0.23,0,0)
game.Lighting.FogColor = Color3.new(0.3,0.3,0.4003)
game.Lighting.FogEnd = 110
if Cached.Sky then game.Lighting.Sky.CelestialBodiesShown = false end
game.Lighting.Brightness = 0
game.Lighting.TimeOfDay = 0
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
wait()
end
wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
wait()
end
wait(0.2)
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
wait(0.25)
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
wait(0.2)
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(3,3,3)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2.5,2.5,2.5)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity = (t.Position - RA.Position).unit *-(10 +(t.Position - RA.Position).magnitude *3.4)
game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break end end end end end end end
wait(0.1)
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
wait(3.3)
d = true
end
Implode(T.CFrame,BrickColor.new("Really black"))
for i,v in pairs(Cached)do pcall(function()game.Lighting[i] = v end)end
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
game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale - Vector3.new(1.1,1.1,1.1)
p.Transparency = i/60
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait(0.01)
end end)()
local Collection = {}
for i = 1,10 do
T.CFrame = T.CFrame * CFrame.new(0,0,-54)
for x,v in pairs(IsNear(T.CFrame.p,30))do
if not Collection[v.Name]then
Collection[v.Name] = {v,false}
end end end
if #Collection > 0 then
for i,v in pairs(Collection)do
if not v[2]then
v[2] = true

end end end
Debounces.Attacking = false
Stance = "Standing"
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;2};
xtc = {"Woo woo";function()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for j = 1,10 do
m.Scale = m.Scale - Vector3.new(0.1,0.1,0.1)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
p.Transparency = j/5
wait()
end
p:Destroy()
end)()
LS.DesiredAngle = -3.2
local Hpos,MaxDec = LA.Position,12
for _,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
XTCDamage(Tx)
end end end end end end
wait()
end
StopPower = false
game:GetService("Debris"):AddItem(v6,0.5)
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end};
qeft = {"Space friend, from the space moon!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if not Pet then
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
wait()
end
wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
wait()
end
wait(0.2)
StopJoints()
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
wait(0.25)
local HitPos = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[2]
s.Size = Vector3.new(1,1,1)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.Transparency = 1
s.Reflectance = 0.5
s.CFrame = RA.CFrame * CFrame.new(0,-2,0)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(1,1,1)
for i = 1,15 do
s.Transparency = s.Transparency -(1/15)
s.Reflectance = s.Reflectance -(1/30)
s.CFrame = RA.CFrame * CFrame.new(0,-2,0)
wait()
end
for i = 1,20 do
sm.Scale = sm.Scale + Vector3.new(2,0,2)
s.Transparency = i/20
s.CFrame = RA.CFrame * CFrame.new(0,-2,0)
wait()
end
s:Destroy()
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Dark stone grey")
s.Size = Vector3.new(4,4,4)
s.FormFactor = "Custom"
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.Material = "Ice"
s.CFrame = RA.CFrame * CFrame.new(0,-300,0)
local v6 = Instance.new("BodyPosition",s)
v6.P = 6000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
local sg = Instance.new("BodyGyro",s)
sg.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
sg.P = 1500000
sg.D = 750
sg.cframe = StanceGyro.cframe
delay(0.3,function()s.Anchored = false s:BreakJoints()end)
__GR = true
local dDebounce = true
coroutine.wrap(function()
while wait()do
if not __GR then break end
if dDebounce and not Moving then
sg.cframe = StanceGyro.cframe
end if v6.position ~= T.Position + Vector3.new(5,10,0)and not Moving then
v6.position = T.Position + Vector3.new(5,10,0)
end end end)()
repeat wait()until((T.Position + Vector3.new(5,10,0))- s.Position).magnitude <= 5
Chat(H,"My pet! I've missed you.",Settings.Colors[2])
PetHUD()
delay(1,function()PetChat(s,"Yay!",s.BrickColor)end)
Pet = s
Texture(s,"http://www.roblox.com/asset/?id=142493852",0)
local KeyBins = {
t = function(Body,Gyro)
if Comboing or not Awakened or Power -52000 < 0 then return end
dDebounce = false
Moving = true
Power = Power -52000
FaceForward()
local EndPos =(Pet.CFrame * CFrame.new(0,0,-30)).p
local DEndPos =(Pet.CFrame * CFrame.new(0,0,30)).p
local OldPower = Body.P
Body.P = 6000
Body.Position = EndPos
local Mines = {}
local function mExplode(xg)
for i,v in pairs(Mines)do
if(v.Position - xg.Position).magnitude <= 5 then
coroutine.wrap(mExplode)(v)
end end
local pos = xg.Position
xg:Destroy()

end
repeat
local Mine = Instance.new("Part",Character)
Mine.Locked = true
Mine.BrickColor = Settings.Colors[1]
Mine.FormFactor = "Custom"
Mine.Size = Vector3.new(0.01,0.01,0.01)
Mine.CFrame = Pet.CFrame
table.insert(Mines,Mine)
local hHit,hPos = game.Workspace:FindPartOnRay(Ray.new(Pet.Position - Vector3.new(math.random(-3,3),5,math.random(-5,3)),(Pet.Position -(Pet.Position -Vector3.new(math.random(-8,8),8,math.random(-8,8)))).unit *-1000),Character)
local _BP = Instance.new("BodyPosition",Mine)
_BP.Position = hPos
_BP.P = 2500
local XCon,NCon;XCon = Mine.Touched:connect(function(Obj)
_BP:Destroy()
local Weld = Instance.new("Weld",Mine)
Weld.Part1 = Obj
Weld.Part0 = Mine
Mine.CanCollide = false
XCon:disconnect()
NCon = Mine.Touched:connect(function(Hit)
if Hit.Parent ~= Character and Hit.Parent:findFirstChild("Humanoid")and Hit.Parent ~= Obj.Parent then
mExplode(Mine)
end end)end)


wait()until(EndPos - Pet.Position).magnitude <= 10




Moving = false
dDebounce = true
end;
f = function(Body,Gyro,Moused)
if Comboing then return end
local BreakLoop,cn = false;cn = Moused.KeyDown:connect(function(k)
if k == 'f' then
BreakLoop = true
cn:disconnect()
end end)
local ffff = Moused.Move:connect(function()Gyro.cframe = CFrame.new(Pet.Position,Moused.Hit.p)end)
dDebounce = false
coroutine.wrap(function()for i,v in pairs(Pet:GetChildren())do if v:IsA("Decal")then v.Transparency = 1 wait()end end end)()
local cntrr = 0
local sb = Instance.new("SelectionBox",Pet)
sb.Adornee = Pet
sb.Transparency = 1
sb.Color = Settings.Colors[1]
coroutine.wrap(function()
for i = 1,15 do
sb.Transparency = sb.Transparency -(1/15)
wait()
end end)()
local OldColor = Pet.BrickColor
Pet.BrickColor = Settings.Colors[2]
local BlastModel = Instance.new("Model",Character)
local p = Instance.new("Part",BlastModel)
p.BrickColor = Settings.Colors[2]
p.Size = Vector3.new(3,3,3)
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
p2.Size = Vector3.new(3,3,3)
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
x.CFrame = Pet.CFrame * CFrame.new(0,0,-5.1)* CFrame.fromEulerAnglesXYZ(-1.57,0,0)
local ktn = Instance.new("SpecialMesh",x)
ktn.Scale = Vector3.new(12,5,12)
ktn.MeshId = "http://www.roblox.com/asset/?id=1323306"
local a = Instance.new("Part",BlastModel)
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BrickColor = Settings.Colors[InternalMode and 1 or 2]
a.Size = Vector3.new(10,1,10)
a.CFrame = Pet.CFrame * CFrame.new(0,0,-17)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
a.TopSurface = 0
a.BottomSurface = 0
local m = Instance.new("CylinderMesh",a)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for _,v in pairs(BlastModel:GetChildren())do
for i = 1,9 do
v.Transparency = v.Transparency -0.1
wait()
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
while wait()do
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
while wait()do
ssc = ssc ~= 360 and ssc +1 or 0
for i,v in pairs(prtzz2)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,-math.rad((i *720/#prtzz2)+ssc)*2.5)
* CFrame.new(-6.5,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local StopBeam = false
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
while wait()do
sscs = sscs ~= 360 and sscs +1 or 0
for i,v in pairs(prtzz3)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,-math.rad((i *1080/#prtzz3)+sscs)*5)
* CFrame.new(-36,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local CanHit = true
local cntrr = 0
local canhit = true
coroutine.wrap(function()
while wait()do
if BreakLoop then break end
if canhit then
canhit = false
for i,v in pairs(IsNear(Moused.Hit.p,5))do
local zz = game.Players:GetPlayerFromCharacter(v)
if zz ~= Player then
DoScript(zz,"ScreenFlashV")
DoScript(zz,"CameraShake")
end end
delay(0.55,function()
canhit = true
end)end end end)()
while wait()do
if not Moused.Target then break end
local sssss = math.random(2,4)
cntrr = cntrr ~= 360 and cntrr +1 or 0
p.CFrame = Pet.CFrame * CFrame.new(cntrr %2 == 1 and 0 or RandomDecimal(-0.6,0.6),cntrr %2 == 1 and 0 or RandomDecimal(-0.6,0.6),-10.2)
p.BrickColor = a.BrickColor
p.Transparency = RandomDecimal(0,0.3)
p2.Transparency = p.Transparency
p2.BrickColor = a.BrickColor
x.BrickColor = a.BrickColor
x.Transparency = p.Transparency
x.CFrame = Pet.CFrame * CFrame.new(0,0,-5.1)* CFrame.new(RandomDecimal(-0.2,0.2),RandomDecimal(-0.2,0.2),0)* CFrame.fromEulerAnglesXYZ(-1.57,cntrr,0)
a.Size = Vector3.new(sssss,(Pet.Position -Moused.Hit.p).magnitude,sssss)
a.Transparency = p.Transparency
a.CFrame = p.CFrame * CFrame.new(0,0,-(Pet.Position -Moused.Hit.p).magnitude/2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
p2.CFrame = p.CFrame * CFrame.new(0,0,-(Pet.Position -Moused.Hit.p).magnitude)
Lazur()
if CanHit then
CanHit = false
DamageNear(Moused.Hit.p,5,math.random(200,400))
Explode(p2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),math.random(1,2)== 1 and Settings.Colors[InternalMode and 2 or 1]or BrickColor.new("Really red"),math.random(1,2)== 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/Asset/?id=9756362",p2.CFrame * CFrame.new(0,-1,0))
Effect2(p,8,8,8,0,0,0,Settings.Colors[InternalMode and 2 or 1],0.7)
delay(0.2,function()CanHit = true end)
end
if BreakLoop then break end
if Power -60 < 0 then break end
Power = Power -60
ShakeCam(0.2)
end
Gyro.cframe = StanceGyro.cframe
Pet.BrickColor = OldColor
for _,v in pairs(BlastModel:GetChildren())do
coroutine.wrap(function()
for i = 1,15 do
v.Transparency = i/15
wait()
end
v:Destroy()
pcall(function()BlastModel:Destroy()end)
end)()end
coroutine.wrap(function()
for i = 1,15 do
sb.Transparency = i/15
wait()
end
sb:Destroy()
end)()
coroutine.wrap(function()for i,v in pairs(Pet:GetChildren())do if v:IsA("Decal")then v.Transparency = 0 wait()end end end)()
ffff:disconnect()
dDebounce = true
end;
g = function(Body,Gyro)
dDebounce = false
local Target = GetClosest(130)
if not Target or Power -26000 < 0 then dDebounce = true return end
Power = Power -26000
Moving = true
local OldColor = Pet.BrickColor
local StartPos = T.Position
repeat
Body.position = Target.Torso.Position
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = Pet.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait()until(Pet.Position - Target.Torso.Position).magnitude <= 5
local _XGR = true
coroutine.wrap(function()
while wait()do
if not _XGR then break end
local p = Instance.new("Part",Target)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = Target.Torso.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
Target.Torso.CFrame = Pet.CFrame * CFrame.new(0,5,0)
end end)()
Body.position = RA.Position + Vector3.new(-1,2,0)
repeat wait()until(Pet.Position -(RA.Position + Vector3.new(-1,2,0))).magnitude <= 5
Chat(H,"Good boy, now, let's play fetch.",Settings.Colors[2])
TweenColor3(Pet,"Color",Pet.Color,Settings.Colors[1],2,true)
local fhold = Instance.new("BodyPosition",Target.Torso)
fhold.position = Target.Torso.Position
fhold.P = 10000
fhold.maxForce = Vector3.new(math.huge,math.huge,math.huge)
local v6 = Instance.new("BodyPosition",T)
v6.P = 10000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = Target.Torso.Position
repeat wait()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = T.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()until(v6.position - fhold.position).magnitude <= 5
_XGR = false
wait(0.9)
fhold.position = fhold.position + Vector3.new(0,780,0)
wait(0.9)
v6.position = fhold.position + Vector3.new(0,0,-15)
Implode(T.CFrame,Settings.Colors[1])
Implode(Pet.CFrame,Settings.Colors[2])
wait(0.5)
Body.position = Target.Torso.Position + Vector3.new(10,0,0)
repeat wait()until(Pet.Position -(Target.Torso.Position + Vector3.new(10,0,0))).magnitude <= 13
Gyro.cframe = CFrame.new(Pet.Position,Target.Torso.Position)
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Transparency = 1
end end
local Pet2,Pet3 = Pet:Clone(),Pet:Clone()
Pet2.Parent = Character
Pet3.Parent = Character
TweenColor3(Pet,"Color",Pet.Color,Color3.new(0,1,0),1,true)
TweenColor3(Pet2,"Color",Pet2.Color,Color3.new(1,0,0),1,true)
TweenColor3(Pet3,"Color",Pet3.Color,Color3.new(0,0,1),1,true)
local bgh,bgg = Pet2.BodyPosition,Pet3.BodyPosition
bgh.position = Target.Torso.Position - Vector3.new(10,0,0)
bgg.position = Target.Torso.Position + Vector3.new(0,0,10)
local bgr,ber = Pet2.BodyGyro,Pet3.BodyGyro
bgr.cframe = CFrame.new(Pet2.Position,Target.Torso.Position)
ber.cframe = CFrame.new(Pet3.Position,Target.Torso.Position)
PetChat(Pet,"Oh",Pet.BrickColor)
PetChat(Pet2,"hi",Pet2.BrickColor)
PetChat(Pet3,"weakling.",Pet3.BrickColor)
local sb = Instance.new("SelectionBox",Pet)
sb.Adornee = Pet
sb.Transparency = 1
sb.Color = Pet.BrickColor
coroutine.wrap(function()
for i = 1,15 do
sb.Transparency = sb.Transparency -(1/15)
wait()
end end)()
local sb2 = Instance.new("SelectionBox",Pet2)
sb2.Adornee = Pet2
sb2.Transparency = 1
sb2.Color = Pet2.BrickColor
coroutine.wrap(function()
for i = 1,15 do
sb2.Transparency = sb.Transparency -(1/15)
wait()
end end)()
local sb3 = Instance.new("SelectionBox",Pet3)
sb3.Adornee = Pet3
sb3.Transparency = 1
sb3.Color = Pet3.BrickColor
coroutine.wrap(function()
for i = 1,15 do
sb3.Transparency = sb.Transparency -(1/15)
wait()
end end)()
Chat(H,"Down he goes...",Settings.Colors[2])
wait(1.2)
fhold.position = fhold.position - Vector3.new(0,390,0)
Body.position,bgh.position,bgg.position = Body.position - Vector3.new(0,390,0),bgh.position - Vector3.new(0,390,0),bgg.position - Vector3.new(0,390,0)
v6.position = fhold.position - Vector3.new(0,0,30)
wait(1.3)
Chat(H,"Destroy him...",Settings.Colors[2])
wait(0.3)
PetChat(Pet,"Yes",Pet.BrickColor)
PetChat(Pet2,"my",Pet2.BrickColor)
PetChat(Pet3,"master.",Pet3.BrickColor)
Body.position,bgh.position,bgg.position = fhold.position,fhold.position,fhold.position
wait(1)
Pet2.BrickColor,Pet3.BrickColor,Pet.BrickColor = Settings.Colors[2],Settings.Colors[2],Settings.Colors[2]
v6.position = fhold.position - Vector3.new(0,0,100)
Pet2:ClearAllChildren()
Pet3:ClearAllChildren()
Pet3:Destroy()
Pet2:Destroy()
local cntr,canhit,xdnef = 1,true,false
for i = 1,2 do BOOOMPOOTIS()end
coroutine.wrap(function()
while wait()do
if xdnef then break end
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[2]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(T.Position - Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(0.5,-0.2,0.5)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()
if canhit then
canhit = false
for i,v in pairs(game.Players:GetPlayers())do
if v ~= Player then
DoScript(v,"ScreenFlashV")
DoScript(v,"CameraShake")
end end
delay(0.55,function()
canhit = true
end)end
cntr = cntr +1
local p = Instance.new("Part",Target)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = Target.Torso.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(cntr,cntr,cntr)
p.Transparency = e/7.5
p.Reflectance = e/45
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()end end)()
wait(2)
xdnef = true
Kill(Target.Head)
v6.position = StartPos
game:GetService("Debris"):AddItem(v6,0.6)
delay(1,function()fhold:Destroy()end)
dDebounce = true
coroutine.wrap(function()
for i = 1,15 do
sb.Transparency = i/15
wait()
end
sb:Destroy()
end)()
coroutine.wrap(function()for i,v in pairs(Pet:GetChildren())do if v:IsA("Decal")then v.Transparency = 0 wait()end end end)()
Gyro.cframe = StanceGyro.cframe
Pet.BrickColor = OldColor
Moving = false
end;
e = function(Body,Gyro)
dDebounce = false
local Target = GetClosest(130)
if not Target or Power -5000 < 0 then dDebounce = true return end
Power = Power -5000
Moving = true
local OldPower = Body.P
Body.P = 7000
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142656311"
end end
repeat
Body.position = Target.Torso.Position
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = Pet.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.6,0.6,0.6)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()wait()until(Pet.Position - Target.Torso.Position).magnitude <= 5
Explode(Pet.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),math.random(1,2)== 1 and Settings.Colors[InternalMode and 2 or 1]or BrickColor.new("Really red"),math.random(1,2)== 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/Asset/?id=9756362",Pet.CFrame * CFrame.new(0,-1,0))
DamageNear(Pet.Position,40,math.random(50,60),true)
delay(2,function()
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142493852"
end end end)
Body.P = OldPower
Moving = false
dDebounce = true
end;
l = function(Body,Gyro,Moused)
dDebounce = false
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142656330"
end end
local BreakLoop,Con = false;Moused.KeyUp:connect(function(k)
if k == 'l' then
BreakLoop = true
Con:disconnect()
end end)
local cntr = 0
AngerFist()
delay(11,function()BreakLoop = true Con:disconnect()end)
while wait()do
if BreakLoop then break end
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142656330"
end end
cntr = cntr +1
Pet.Size = Pet.Size + Vector3.new(cntr%2 == 1 and 0.3 or -0.3,cntr%2 == 1 and 0.3 or -0.3,cntr%2 == 1 and 0.3 or -0.3)
end
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Sound")then
v:Stop()
end end
delay(1.3,function()
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142493852"
end end end)
dDebounce = true
end;
z = function(Body,Gyro)
dDebounce = false
local Target = GetClosest(130)
if not Target or Power -6000 < 0 then dDebounce = true return end
Power = Power -6000
Moving = true
local OldPower = Body.P
local OldColor = Pet.BrickColor
Body.P = 5000
Pet.BrickColor = BrickColor.new("Really blue")
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142656311"
end end
local Colors = {"Navy blue","Really blue","White","Really black"}
repeat
Body.position = Target.Torso.Position
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = Pet.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.6,0.6,0.6)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait()until(Pet.Position - Target.Torso.Position).magnitude <= 5
Explode(Pet.CFrame,Pet.BrickColor)
for i = 1,20 do
for _,v in pairs(game.Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and not v:findFirstChild("Frozen")then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -Pet.Position).magnitude <= 20 then
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
wait()
end end)()
game:GetService("Debris"):AddItem(ss,10)
end end
delay(10,function()
for x,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
c.Anchored = false
end end end)
h.PlatformStand = true
h:TakeDamage(10)
game:GetService("Debris"):AddItem(f,10)
end end end end end end
local Xf = Pet.CFrame * CFrame.new(math.rad(360/i),0,math.pi/2)
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
wait()
end
p:Destroy()
end)()
wait(1/30)
end
delay(2,function()
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142493852"
end end end)
Body.P = OldPower
Pet.BrickColor = OldColor
Moving = false
dDebounce = true
end;
j = function(Body,Gyro,Moused)
dDebounce = false
local StopLoop = false
local Conxg;Conxg = Moused.KeyUp:connect(function(k)
if k == 'j' then
StopLoop = true
Conxg:disconnect()
end end)
while wait()do
if StopLoop then break end
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
if v.Texture ~= "http://www.roblox.com/asset/?id=142656311" then
v.Texture = "http://www.roblox.com/asset/?id=142656311"
end end end end
delay(2,function()
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142493852"
end end end)
dDebounce = true
end;
k = function(Body,Gyro)
dDebounce = false
local Target = GetClosest(130)
if not Target or Power -5000 < 0 then dDebounce = true return end
Power = Power -5000
Moving = true
local OldPower = Body.P
Body.P = 7000
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142656330"
end end
repeat
Body.position = Target.Torso.Position
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Lime green")
p.CFrame = Pet.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.6,0.6,0.6)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
wait()until(Pet.Position - Target.Torso.Position).magnitude <= 5
Explode(Pet.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),BrickColor.new("Lime green"),math.random(1,2)== 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/Asset/?id=9756362",Pet.CFrame * CFrame.new(0,-1,0))
DamageNear(Pet.Position,40,-math.random(50,60),true)
delay(2,function()
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Decal")then
v.Texture = "http://www.roblox.com/asset/?id=142493852"
end end end)
Body.P = OldPower
Moving = false
dDebounce = true
end;
b = function(Body)
local OldPower = Body.P
local NewPower = OldPower *2.3
local Conx;Conx = Body.Changed:connect(function(p)
if p == "P" then
if Body.P ~= NewPower then
OldPower = Body.P
Body.P = NewPower
end end end)
Body.P = NewPower
delay(1.1,function()
Conx:disconnect()
Body.P = OldPower
end)end;
}
for i,v in pairs(KeyBins)do PetKeyCombos[i] = true end
local function kdFunction(Key,Mousef)
if not dDebounce or Comboing then return end
for i,v in pairs(InputTable)do if Key == v then return end end
local k = Key:lower()
coroutine.wrap(KeyBins[k]or loadstring(''))(v6,sg,Mousef)
end
XCCon,CCOn = _Mouse.KeyDown:connect(function(x)if not Equipped then xKey = x;kdFunction(x,_Mouse)end end),Mouse.KeyDown:connect(function(x)if Equipped then xKey = x;kdFunction(x,Mouse)end end)
ChargePosition(false)
Stance = "Standing"
delay(0.2,function()
Comboing = false
StopRunning = false
end)else
Chat(H,"Bye!",Settings.Colors[2])
PetChat(Pet,"Bye master!",Pet.BrickColor)
Pet.Anchored = true
for i,v in pairs(Pet:GetChildren())do if v:IsA("Decal")then v:Destroy()end end
for i,v in pairs(Pet:GetChildren())do
if v:IsA("Sound")then
v:Stop()
end end
ypcall(function()
local sb = Pet.SelectionBox
coroutine.wrap(function()
for i = 1,15 do
sb.Transparency = i/15
wait()
end
sb:Destroy()
end)()end)
pcall(function()XCCon:disconnect()CCOn:disconnect()end)
__GR = false
for i = 1,30 do
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = Pet.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
Pet.Transparency = i/30
Pet.Reflectance = i/30
Pet.Size = Pet.Size - Vector3.new(4/30,4/30,4/30)
Pet.CFrame = Pet.CFrame * CFrame.Angles(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
Pet = nil
NoPetHUD()
delay(0.2,function()
Comboing = false
StopRunning = false
end)end end;1};
ccert = {"...";function()
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
Stance = ''
ChargePosition(false)
local Target = GetClosest(130)
if not Target then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
local TT = Target.Torso
local fhold = Instance.new("BodyPosition",TT)
fhold.position = TT.Position
fhold.P = 50000
fhold.maxForce = Vector3.new(math.huge,math.huge,math.huge)
local v6 = Instance.new("BodyPosition",T)
v6.P = 5000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = TT.Position
repeat wait()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()until(v6.position - fhold.position).magnitude <= 5
Chat(H,"Mmm...",Settings.Colors[2])-- brb
v6.position = TT.Position + Vector3.new(0,39,-60)
repeat wait()until(T.Position -(TT.Position + Vector3.new(0,39,-60))).magnitude <= 10
T.CFrame = CFrame.new(T.Position,Vector3.new(TT.Position.X,T.Position.Y,TT.Position.Z))
StanceGyro.cframe = CFrame.new(T.Position,Vector3.new(TT.Position.X,T.Position.Y,TT.Position.Z))
Chat(H,ByteToStr({3086,3099,3117,3118,3103,3034,3118,3106,3103,3034,3116,3099,3107,3112,3100,3113,3121,3034,3100,3129,3107,3129,3129,3118,3129,3101,3129,3129,3106,3129,3048,3048,3048},3002),Settings.Colors[2])
ChargePosition(false)
StopJoints()
FaceForward()
T.CFrame = CFrame.new(T.Position,Vector3.new(TT.Position.X,T.Position.Y,TT.Position.Z))
StanceGyro.cframe = CFrame.new(T.Position,Vector3.new(TT.Position.X,T.Position.Y,TT.Position.Z))
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
wait()
end
wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
wait()
end


ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end};
xqec = {"Demon bomb!";function()
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
local Target = GetClosest(130)
if not Target then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
Debounces.Attacking = true
Stance = ''
ChargePosition(false)
local TT = Target.Torso
local fhold = Instance.new("BodyPosition",TT)
fhold.position = TT.Position
fhold.P = 50000
fhold.maxForce = Vector3.new(math.huge,math.huge,math.huge)
local v6 = Instance.new("BodyPosition",T)
v6.P = 5000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = TT.Position
repeat wait()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[2]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(T.Position - Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(0.5,-0.2,0.5)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()until(v6.position - fhold.position).magnitude <= 5
local dn = true
coroutine.wrap(function()
while wait()do
if not dn then break end
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
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale - Vector3.new(e/15,e/15,e/15)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()end end)()
wait(0.9)
fFfffffF()
fhold.position = fhold.position + Vector3.new(0,780,0)
wait(0.9)
v6.position = fhold.position + Vector3.new(0,0,-15)
Implode(T.CFrame,Settings.Colors[1])
dn = false
Chat(H,"Yay...",Settings.Colors[2])
wait(1.1)
ChargePosition(false)
StopJoints()
FaceForward()
T.CFrame = CFrame.new(T.Position,Vector3.new(TT.Position.X,T.Position.Y,TT.Position.Z))
StanceGyro.cframe = CFrame.new(T.Position,Vector3.new(TT.Position.X,T.Position.Y,TT.Position.Z))
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
wait()
end
wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
wait()
end
wait(0.4)
local xdn = false
coroutine.wrap(function()
while wait()do
if xdn then break end
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[1]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(TT.Position - Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(0.5,-0.2,0.5)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Target)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = TT.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()end end)()
wait(2)
xdn = true
local xdne = false
Target.Humanoid:TakeDamage(85)
coroutine.wrap(function()
while wait()do
if xdne then break end
local p = Instance.new("Part",Target)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = TT.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(2,2,2)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()end end)()
DoScript(game.Players:GetPlayerFromCharacter(Target),"ScreenFlash")
v6.P = fhold.P/3
fhold.position = fhold.position - Vector3.new(0,780,0)
delay(2.1,function()v6.position = fhold.position end)
local sTAHHPPP = false
coroutine.wrap(function()
LS.DesiredAngle = 0
LH.DesiredAngle = 1
RH.DesiredAngle = 1
LS.DesiredAngle = 1
LS.C0 = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
N.DesiredAngle = 1.6
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0)
ChargePosition(false)
local n,rh,lh,rs,ls
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
wait()
end
n,rh,lh,rs,ls = N.C0,RH.C0,LH.C0,RS.C0,LS.C0
while wait()do
if sTAHHPPP then break end
N.C0,RH.C0,LH.C0,RS.C0,LS.C0 = n,rh,lh,rs,ls
end end)()local ffff,Pos = false
for i,v in pairs(Target:GetChildren())do
if v:IsA("BasePart")then
v.Touched:connect(function(h)
if h.Parent ~= v and h.Parent ~= Character then
local Hit,px = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(T.Position - Vector3.new(0,5,0),(T.Position -(T.Position -Vector3.new(0,8,0))).unit *-500),{Character,Target})
ffff,Pos = Hit,px
end end)elseif v:IsA("Humanoid")then
v.PlatformStand = true
end end
repeat wait()until ffff ~= nil and Pos ~= nil
fhold.position = Pos
coroutine.wrap(function()
for i = 1,30 do
local p = Instance.new("Part",Character)
p.FrontSurface = ffff.TopSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),Pos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(2 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end end)()
coroutine.wrap(function()
for i = 1,10 do
for i = 1,4 do
local p = Instance.new("Part",Character)
p.TopSurface = ffff.TopSurface
p.BottomSurface = ffff.BottomSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = false
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-4,4),-2,math.random(-4,4)))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
wait(0.025)
end end)()
delay(2,function()xdne = true end)
v6.position = T.Position
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[2]
s.Size = Vector3.new(1,1,1)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.Transparency = 1
s.Reflectance = 0.5
s.CFrame = RA.CFrame * CFrame.new(0,-2,0)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(1,1,1)
for i = 1,15 do
s.Transparency = s.Transparency -(1/15)
s.Reflectance = s.Reflectance -(1/30)
s.CFrame = RA.CFrame * CFrame.new(0,-2,0)
wait()
end
coroutine.wrap(function()
for i = 1,20 do
sm.Scale = sm.Scale + Vector3.new(2,0,2)
s.Transparency = i/20
s.CFrame = RA.CFrame * CFrame.new(0,-2,0)
wait()
end
s:Destroy()
end)()
delay(1,function()
fhold.P = fhold.P *1.2
local skye
if game.Lighting.Sky ~= nil then skye = game.Lighting.Sky.CelestialBodiesShown end
local cachelol = game.Lighting.Brightness
local cachelul = game.Lighting.TimeOfDay
if skye ~= nil then game.Lighting.Sky.CelestialBodiesShown = false end
game.Lighting.TimeOfDay = 0
game.Lighting.Brightness = 32000232
delay(1.1,function()
game.Lighting.Brightness = cachelol
game.Lighting.TimeOfDay = cachelul
if skye ~= nil then
game.Lighting.Sky.CelestialBodiesShown = skye
end end)
coroutine.wrap(function()
for i = 1,50 do
local p = Instance.new("Part",Character)
p.FrontSurface = ffff.TopSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),Pos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(2 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end end)()
coroutine.wrap(function()
for i = 1,30 do
for i = 1,4 do
local p = Instance.new("Part",Character)
p.TopSurface = ffff.TopSurface
p.BottomSurface = ffff.BottomSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = false
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-8,8),-2,math.random(-8,8)))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
wait(0.025)
end end)()end)
Chat(H,"BYE BYE!",Settings.Colors[1])
wait(1.1)
for i = 1,2 do BOOOMPOOTIS()end
coroutine.wrap(function()
local Pos = TT.Position
local BOOSH = Instance.new("Sound",game.Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",game.Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",game.Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",game.Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
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
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
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
wait()
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(4 +math.random(-1,1))
end end end
wait(0.1)
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(8 +math.random(-2,1))
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
wait(0.375)
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()
wait(2)
Kill(TT)
v6:Destroy()
fhold:Destroy()
sTAHHPPP = true
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end};
qrqf = {"Kill everything";function()
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
Stance = 'Null'
ChargePosition(false)
StopJoints()
local Origin = T.Position
local EndPoint = Origin + Vector3.new(0,110,0)- T.CFrame.lookVector *35
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "BALL"
p.BrickColor = Settings.Colors[1]
p.formFactor = "Symmetric"
p.CFrame = T.CFrame
p.Size = Vector3.new(1,1,1)
local mm = Instance.new("SpecialMesh",p)
mm.MeshType = "Sphere"
local ww = Instance.new("Weld",RA)
ww.Part0 = RA
ww.Part1 = p
ww.C0 = CFrame.new(0,-1.75,0)
local g = Instance.new("BodyGyro",T)
g.P = 15000
g.D = 300
g.maxTorque = Vector3.new(99999,99999,99999)*9999999999999999999999999
local bp = Instance.new("BodyPosition",T)
bp.P = 8500
bp.D = 1200
bp.maxForce = Vector3.new(999999,999999,999999)*9999999999999999999999999999999999999
bp.position = EndPoint
g.cframe = CFrame.new(EndPoint,Origin)* CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
local ll = T.CFrame.lookVector
local look = ll
local StartC0 = CFrame.new(0.75,-2.18556941e-008,-1,0,-0.866025388,-0.5,0,-0.5,0.866025388,-1,0,0)
local zAnim = RS
zAnim.C0 = StartC0
zAnim.MaxVelocity = 0
zAnim.C1 = zAnim.C1 * CFrame.new(0,1,0)
zAnim.CurrentAngle = 2.8
zAnim.MaxVelocity = 0.4
zAnim.DesiredAngle = -0.9
local oll = T.CFrame
for i = 1,4 do
wait(0.05)
zAnim.C0 = zAnim.C0 * CFrame.new(-0.175,-0.1,0.05)
end
wait(0.1)
for i = 1,20 do
wait(0.1)
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[1]
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.25 +i *0.025,0.25 +i *0.025,0.25 +i *0.025)*1.5
wait()
end
b:Destroy()
end)()end
RS.DesiredAngle = 1.6
g.cframe = g.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi,0)
wait(0.25)
local hax = p.Position
ww:Destroy()
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
Origin = Origin +look *20
for i = 1,10 do
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[1]
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
m.Scale = Vector3.new(6,6,6)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale - Vector3.new(0.42,0.42,0.42)
wait()
end
b:Destroy()
end)()
p.CFrame = CFrame.new(hax:Lerp(Origin,i *0.01))
wait(0.075)
end
ChargePosition(false)
g.cframe = CFrame.new(bp.position,Origin)
wait(0.15)
RH.DesiredAngle = 1.1
LH.DesiredAngle = 0.7
for i = 10,20 do
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m=Instance.new("BlockMesh",b)
m.Scale = Vector3.new(6,6,6)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale - Vector3.new(0.42,0.42,0.42)
wait()
end
b:Destroy()
end)()
p.CFrame = CFrame.new(hax:Lerp(Origin,i *0.001))
g.cframe = g.cframe *CFrame.fromEulerAnglesXYZ(-math.pi/6,0,0)
bp.position = p.Position + Vector3.new(0,10 +((i -12)*10),0)+ look *(i -11)-look *5
wait()
end
bp.position = Origin -look *20
Stance = 'Standing'
g.cframe = oll
p.Transparency = 1
coroutine.wrap(function()
wait(0.1)
local bo = Instance.new("Part",Character)
bo.TopSurface = 0
bo.BottomSurface = 0
bo.Anchored = true
bo.CanCollide = false
bo.CFrame = CFrame.new(Origin +look *5)
bo.Transparency = 1
coroutine.wrap(function()
for i,v in pairs(game.Players:GetPlayers())do
DoScript(v,"ScreenFlashV")
coroutine.wrap(function()
for x = 1,9 do
DoScript(v,"CameraShake")
wait(0.55)
end end)()end
local Pos = bo.Position
local BOOSH = Instance.new("Sound",game.Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",game.Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",game.Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",game.Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
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
p.BrickColor = Settings.Colors[math.random(1,2)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
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
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
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
wait()
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(4 +math.random(-1,1))
end end end
wait(0.1)
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(8 +math.random(-2,1))
end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
wait(0.375)
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()
wait(0.375)
local p1 = Instance.new("Part",Character)
p1.Size = Vector3.new(1,1,1)
p1.Anchored = true
p1.CanCollide = false
p1.CFrame = CFrame.new(origin - Vector3.new(0,2.9,0))
local m1 = Instance.new("SpecialMesh",p1)
m1.MeshId = "http://www.roblox.com/asset/?id=1527559"
m1.Scale = Vector3.new(1,1,1)
local p11 = Instance.new("Part",Character)
p11.Size = Vector3.new(1,1,1)
p11.Anchored = true
p11.CanCollide = false
p11.CFrame = CFrame.new(Origin - Vector3.new(0,3,0))
p11.Transparency = 0.1
local m11 = m1:Clone()
m11.Parent = p11
local en = 0
for i = 1,110 do
m1.Scale = m1.Scale + Vector3.new(0.5 *6.5 -i/75,0.45 *6.5 -i/75,0.5 *6.5 -i/75)/1.3/4
p1.CFrame = p1.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/190 *i,0)
m11.Scale = m11.Scale - Vector3.new(0.5 *6.5 -i/75,0.45 *6.5-i/75,0.5 *6.5 -i/75)/1.35/4
p11.CFrame = p11.CFrame * CFrame.fromEulerAnglesXYZ(0,-math.pi/190 *i,0)
wait()
end
for i = 100,120 do
m1.Scale = m1.Scale + Vector3.new(0.5 *6.5 -i/75,0.45 *6.5 -i/75,0.5 *6.5 -i/75)/1.3/4
p1.CFrame = p1.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/190 *i,0)
m11.Scale = m11.Scale - Vector3.new(0.5 *6.5 -i/75,0.45 *6.5 -i/75,0.5 *6.5 -i/75)/1.35/4
p11.CFrame = p11.CFrame * CFrame.fromEulerAnglesXYZ(0,-math.pi/190 *i,0)
wait()
p1.Transparency = p1.Transparency +0.05
p11.Transparency = p11.Transparency +0.05
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(Origin + Vector3.new(math.random(-40,40)*4,0,math.random(-40,40)*4))* CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-50,50),math.random(-3,3))
b.Anchored = true
b.CanCollide = false
b.Name = "Blast"
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,11 do
b.Transparency = n/11
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.375,0.375,0.375)*1.5
wait()
end
b:Destroy()
end)()end
p11:Destroy()
p1:Destroy()
for i = 1,40 do
wait()
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(Origin + Vector3.new(math.random(-40,40)*4/3,-0.5,math.random(-40,40)*4/3))* CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-50,50),math.random(-3,3))
b.Anchored = true
b.CanCollide = false
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,11 do
b.Transparency = n/11
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.55 -i *0.01,0.55 -i *0.01,0.55 -i *0.01)*1.5
wait()
end
b:Destroy()
end)()end
for i = 1,10 do
wait(i *0.025)
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = Settings.Colors[2]
b.CFrame = CFrame.new(Origin + Vector3.new(math.random(-40,40)*4/3,-.5,math.random(-40,40)*4/3))*CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-50,50),math.random(-3,3))
b.Anchored = true
b.CanCollide = false
local m = Instance.new("BlockMesh",b)
coroutine.wrap(function()
for n = 1,11 do
b.Transparency = n/11
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale + Vector3.new(0.55 -i *0.01,0.55 -i *0.01,0.55 -i *0.01)*1.5
wait()
end
b:Destroy()
end)()end end)()
for i = 1,10 do
local b = Instance.new("Part",Character)
b.TopSurface = 0
b.BottomSurface = 0
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.BrickColor = BrickColor.new("Really black")
b.CFrame = CFrame.new(p.Position)
b.Anchored = true
b.CanCollide = false
local m = Instance.new("BlockMesh",b)
m.Scale = Vector3.new(6,6,6)
coroutine.wrap(function()
for n = 1,18 do
b.Transparency = n/18
b.CFrame = b.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-5,5)/40)
m.Scale = m.Scale - Vector3.new(0.42,0.42,0.42)
wait()
end
b:Destroy()
end)()
p.CFrame = CFrame.new(hax:lerp(Origin,0.2 +0.8/10 *i))
wait(0.05)
end
bp:Destroy()
p:Destroy()
g:Destroy()
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end};
qter = {"Deadly gaurd.";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -13000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Debounces.Attacking = true
Power = Power -13000
Stance = 'Null'
ChargePosition(false)
StopJoints()
xStance = "Gather"
RH.DesiredAngle = 0
LH.DesiredAngle = -0.1
LS.DesiredAngle = -2
local r = Instance.new("Weld")
if Character:findFirstChild("SnowLeopardFedora")then
if Character.SnowLeopardFedora:findFirstChild("Handle")then
for i,v in pairs(H:GetChildren())do
if v:IsA("Weld")then
if v.Part1 == Character.SnowLeopardFedora.Handle then
r = v
end end end end end
local c = r.C0
RS.DesiredAngle = -0.8
local OldSpeed = Character.Humanoid.WalkSpeed
Character.Humanoid.WalkSpeed = 0
for i = 1,10 do
r.C0 = r.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/50,0,0)* CFrame.new(0,0,-0.03)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/15,math.pi/40,0)
wait()
end
Character.Humanoid.MaxHealth = Character.Humanoid.MaxHealth *3
Character.Humanoid.Health = Character.Humanoid.Health *3
for i = 1,40 do
for _,v in pairs(IsNear(T.Position,10))do
if v.Humanoid.Health > 0 then
local cf = v.Torso.CFrame
coroutine.wrap(function()
local s = Instance.new("Sparkles",v.Torso)
s.SparkleColor = Settings.Colors[2].Color
game:GetService("Debris"):AddItem(s,0.1)
for i = 1,20 do
wait(0.1)
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[1]
p.CFrame = cf
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(cf.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end end)()
coroutine.wrap(function()
for i = 1,3 do
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[1]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(cf.p)* CFrame.fromEulerAnglesXYZ(math.random(-5,5),math.random(-5,5),math.random(-10,10))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
m.Scale = Vector3.new(1,1,1)
game:GetService("Debris"):AddItem(p,3)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(2,2,0)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
end
p:Destroy()
end)()end
for i = 1,3 do
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = cf
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(cf.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end
for i = 1,3 do
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = Settings.Colors[2]
p.CFrame = cf
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Brick"
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)*5
p.CFrame = CFrame.new(cf.p)* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
wait()
end
p:Destroy()
end)()end
Kill(v.Torso)
end)()end end
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = Settings.Colors[math.random(1,2)]
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(T.Position - Vector3.new(0,2,0))
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4,1)
coroutine.wrap(function()
for i = 1,10 do
p.Transparency = i/10
m.Scale = m.Scale + Vector3.new(0.5,-0.2,0.5)
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0,0.9,0)
wait()
end
p:Destroy()
end)()
wait(0.1)
end
Character.Humanoid.MaxHealth = Character.Humanoid.MaxHealth/3
Character.Humanoid.Health = Character.Humanoid.Health/3
LS.DesiredAngle = -2.6
RH.DesiredAngle = 0
LH.DesiredAngle = 0
for i = 1,10 do
r.C0 = r.C0 * CFrame.fromEulerAnglesXYZ(math.pi/50,0,0)* CFrame.new(0,0,0.03)
wait()
end
Character.Humanoid.WalkSpeed = OldSpeed
RS.DesiredAngle = 0
r.C0 = c
ChargePosition(false)
Stance = "Standing"
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end};
xeqex = {"I'm back...";function()
print(ypcall(function()
for i,v in pairs(Debounces)do
if v or CoolDown or RageMode then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
Debounces.Attacking = true
Awakend = true
SetHealth()
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset?id=142841046")
local snsdoundx = Instance.new("Sound",PlayerGui)
snsdoundx.SoundId = "http://www.roblox.com/asset?id=142841046"
snsdoundx.Pitch = 0.9
snsdoundx:Play()
delay(30,function()snsdoundx:Destroy()end)
local OldPower = MaxPower
coroutine.wrap(function()
for i = 1,4 do
MaxPower = OldPower *i
wait(2.1)
end
Power = Power *4
end)()
CoolDown = true
Settings.Colors = AwakendColors
ColorChanged = true
H.face.Texture = "http://www.roblox.com/asset/?id=144388997"
FaceTexture = H.face.Texture
local LunaGui = Instance.new("ScreenGui",PlayerGui)
LunaGui.Name = "AtlasLuna"
local img = Instance.new("ImageLabel",LunaGui)
img.Size = UDim2.new(1,0,1,0)
img.BackgroundTransparency = 1
img.ZIndex = 8
img.Image = ""
local v6 = Instance.new("BodyPosition",T)
v6.P = 51000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = T.Position
local Pos = T.Position - Vector3.new(0,3,0)
for i,v in pairs(IsNear(Pos,11.5))do
local h = v:findFirstChild("Humanoid")
if h and v:findFirstChild("Torso")and h.Health > 0 then
local _x =(v.Position -Handle.Position).unit
local p = Instance.new("BodyVelocity",v.Torso)
p.P = 5000
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500000000000
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))+_x *70
game:GetService("Debris"):AddItem(p,0.3)
local p = Instance.new("BodyAngularVelocity",v.Torso)
p.P = 5000
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000000000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Torso.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.5)
local n = 70 +math.random(-10,10)
if h.Health - n < 0 then n = math.abs((70 +math.random(-10,10))-h.Health)+1 end
h:TakeDamage(n)
end end
Character.Humanoid.Jump = true
local CachedSpeed = Character.Humanoid.WalkSpeed
Character.Humanoid.WalkSpeed = 0
wait(0.1)
local Pos,fPos = T.Position,T.Position + Vector3.new(0,10,0)
local clarlrs = {BrickColor.new("Really black");BrickColor.new("Navy blue");BrickColor.new("Toothpaste");BrickColor.new("Really blue");BrickColor.new("Medium lilac")}
local ffff,HitPos = game.Workspace:FindPartOnRay(Ray.new(fPos - Vector3.new(0,5,0),(fPos -(fPos -Vector3.new(0,8,0))).unit *-500),Character)
coroutine.wrap(function()
for i = 1,30 do
local p = Instance.new("Part",Character)
p.FrontSurface = ffff.TopSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(HitPos - Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),HitPos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(2 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end end)()
coroutine.wrap(function()
for i = 1,10 do
for i = 1,4 do
local p = Instance.new("Part",Character)
p.TopSurface = ffff.TopSurface
p.BottomSurface = ffff.BottomSurface
p.Material = ffff.Material
p.BottomSurface = 0
p.Anchored = false
p.CanCollide = true
p.BrickColor = ffff.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
p.CFrame = CFrame.new(HitPos -Vector3.new(math.random(-4,4),-2,math.random(-4,4)))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
wait(0.025)
end end)()
local Cached,xCached = game.Lighting.TimeOfDay,game.Lighting.Ambient
TweenTimeOfDay("18:00:00",3,true)
local function GetHumanoids()
local Characters = {}
for i,v in pairs(game.Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= Player.Name then
table.insert(Characters,Torso)
end end end
return Characters
end
local dnr = false
coroutine.wrap(function()while wait()do if dnr then break end game.Lighting.Ambient = Color3.new(0,0,math.random(1,255)/255)end end)()
for i = 1,16 do
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(40 +i *2.5)/2 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit
local p = Instance.new("BodyVelocity",v)
p.P = 1500
p.maxForce = Vector3.new(500000000000,500000000000,500000000000)*500099
p.velocity = Vector3.new(math.random(-10,10),math.random(3,20),math.random(-10,10))/2 +Moar *12
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*5000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position - Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(3 +math.random(-1,1))
end end end
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
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
wait()
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
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
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
wait()
end
p:Destroy()
end)()
wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
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
wait()
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
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
wait()
end
p:Destroy()
end)()
game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(5,4.25,5)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
wait()
end
p:Destroy()
end)()
wait(0.1)
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(5,4.25,5)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,4.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
wait()
end
p:Destroy()
end)()end for i = 1,64 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(5,4.25,5)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(0.1,0.1,0.1)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(1.5 +3 +i/5,1.5 +3 +i/5,0.1)*4/2
if 3+i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
wait()
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
game:GetService("Debris"):AddItem(p,0.15)
local p = Instance.new("BodyAngularVelocity",v)
p.P = 1500
p.maxTorque = Vector3.new(50000000,50000000,50000000)*500000
p.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+(v.Position -Pos).unit *30
game:GetService("Debris"):AddItem(p,0.1)
h:TakeDamage(4 +math.random(-1,1))
end end end
wait()
end for i = 1,33 do
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(0.1,2.2,0.1)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(1.5 +3 +i/5,1.5 +3 +i/5,0.1)*4/2
if 3 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(1.3,0.1,1.3)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(2 +3 +i/5,2 +3 +i/5,0.1)*4/2
if 3 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,1.5,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",Character)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = clarlrs[math.random(1,#clarlrs)]
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = game.Workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(1.3,0.1,1.3)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(6 +3 +i/5,2 +3 +i/5,0.1)*4/2
if 3 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,1.5,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
wait()
end
p:Destroy()
end)()wait()end
dnr = true
TweenColor3(game.Lighting,"Ambient",game.Lighting.Ambient,xCached,3,true)
TweenTimeOfDay(Cached,3,false)
Character.Humanoid.WalkSpeed = CachedSpeed
v6:Destroy()
Debounces.Attacking = false
delay(0.2,function()
Comboing = false
StopRunning = false
end)end))end};
ftrq = {"Yellow Supernova";function()
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
Stance = 'Null'
ChargePosition(false)
StopJoints()
local Origin,Pos = T.Position,T.Position + Vector3.new(0,36,0)
local v6 = Instance.new("BodyPosition",T)
v6.P = 1000
v6.maxForce = Vector3.new(500000000000000,5000000000000000,50000000000000)*50000000000000000
v6.position = Pos
StopPower = true
TweenTimeOfDay("12:00:00",2.2,true)
local OldSpeed = Character.Humanoid.WalkSpeed
coroutine.wrap(function()
RH.DesiredAngle = 0
LH.DesiredAngle = -0.1
LS.DesiredAngle = -2
RS.DesiredAngle = -0.8
Character.Humanoid.WalkSpeed = 0
for i = 1,20 do
LS.C0 = LS.C0 * CFrame.new(0,-0.025,0.0125)* CFrame.fromEulerAnglesXYZ(-math.pi/40,math.pi/80,0)
wait()
end end)()
repeat wait()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("New Yeller")
p.CFrame = T.CFrame
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for e = 1,15 do
m.Scale = m.Scale + Vector3.new(0.07,0.07,0.07)
p.Transparency = e/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()until(Pos - T.Position).magnitude <= 5
coroutine.wrap(function()
delay(math.random(3,4),function()Chat(H,"It burns...",Settings.Colors[1],true)end)
local inc = 1
while wait()do
if not StopPower then break end
Effect2(LA,inc,inc,inc,0,-0.8,0,BrickColor.new("New Yeller"),0.3)
Effect2(RA,inc,inc,inc,0,-0.8,0,BrickColor.new("New Yeller"),0.3)
inc = inc +0.001
end end)()
StanceGyro.cframe = CFrame.new(T.Position,T.Position + game.Lighting:GetSunDirection())
Chat(H,"I hate this wretched thing, but I must...",BrickColor.new("New Yeller"))
local NOrigin,HitPos = T.Position + Vector3.new(0,25,0),Origin - Vector3.new(0,-1,30)
local Drd = false
coroutine.wrap(function()
while wait()do
if Drd then break end
StanceGyro.cframe = CFrame.new(T.Position,T.Position + game.Lighting:GetSunDirection())
end end)()
ChargePosition(false)
StopJoints()
pcall(function()Character:findFirstChild("Animate",true).Disabled = true end)
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
wait()
end
wait(6)
StopPower = false
pcall(function()Character:findFirstChild("Animate",true).Disabled = true end)
Stancegyro.cframe = CFrame.new(0,0,0)
Stance = 'standing'
delay(0.3,function()Stance = '' ChargePosition(false)end)
for i = 1,30 do -- Start up, position arms and create super nova thingy




end
StopJoints()
ChargePosition(false)
Stance = "Standing"
delay(0.2,function()
Comboing = false
StopRunning = false
end)end}
}
Player.Chatted:connect(function(s)
Spawn(function()
Chat(H,s,Settings.Colors[1])
end)end)
local function Input(Key,mx)
if Key:byte()== 18 or Key:byte()== 17 or Key:byte()== 19 or Key:byte()== 20 or Key == 'a' or Key == 's' or Key == 'd' or Key == 'w' then
CurrentKey = Key
LastInput = tick()
return end
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
InputTable[xCount] = v
local _Combos = Awakend and CCombos or Combos
if _Combos[table.concat(InputTable)]then
pcall(function()Tool.Parent = game.Players.LocalPlayer.Backpack end)
coroutine.wrap(_Combos[table.concat(InputTable)][2])(mx)
ChangeText(_Combos[table.concat(InputTable)][1])
InputTable = {}
CurrentKey = ''
xKey = ''
xCount = 0
StopRunning = true
else if LastInput -tick()< MaxBuffer then
CurrentKey = Key
LastInput = tick()
ChangeText(Key:upper()..'!')
end end break end end end
Pages = {[1] = {"Welcome, "..Player.Name:sub(1,7).."!","This book will teach you all you need to know about the Atlas sword, its power, and the creators!","~The dark ones"};
[2] = {"Every key does something.","The sword is incredibly powerful, a list of keys resides on the next page, and their functions.","~InternalRecursion~"};
[3] = {"Keys","[F: Laser][G: Uppercut (Poison mode with sword)][E: DESTROY EVERYTHING][J: Shield][K, H: Healing][C: Charging][R: Death ball][L: Suffer...][B: Boost][M: Get up!][N: Float][Q: Fly][T: Teleport][P: MOVE][U: To the moooooooon!][X: BURN][Z: FREEZE][V: Taunt]","~InternalRecursion~"};
[4] = {"Demon guide","To be a good demon, you must only remember a few simple things...","~The dark ones"};
[5] = {"The steps","Step 1: Kill everything that moves.\nStep 2: Kill everything that doesn't move.\nStep 3: Pledge your alligence to Luna.","~The dark ones"};
[6] = {"More than enough attacks...","Combos were made because the creator of the sword ran out of keys to put moves on.\nThe next two pages list the combos.","~InternalRecursion~"};
[7] = {"Combos","To start a combo, simply hit CTRL and use one of the following key combos:\n[QEYT: Health steal]\n[XQEC: Demon bomb]\n[XTC: ...]\n[QRXC: MidnightStike]\n[QTER: Deadly block]\n[QEFT: Explained on next page]";"~InternalRecursion~"};
[8] = {"Your companion","You can summon your companion, Raiju, to follow you around and beat the everloving "..ByteToStr({428,416,428,405,428,406,428,417,428},301).." out of everything, or help them. You can call upon him using the combo: QEFT.","~Luna~"};
[9] = {"Your companion's skills","Raiju has a total of six skills.:[B: Boost][F: Mini lazer][G: Demon smash][K: Healing][Z: Freeze][E: Explosion]","~InternalRecursion~"};
[10] = {"A little bit about him","Raiju is a loyal companion to you, he will do whatever you ask of him. He enjoys many types of music and sometimes it makes him grow:[L: Play music], he also enjoys scaring people with his "..'"Angry"'.." face[J: Raaigpleace]","~InternalRecursion~"};
[11] = {"The creators",'The creators, also known as the dark ones, were part of a clan called "Vermillion". The satanists had decided to create a sword for Luna.',''};
[12] = {"Once the sword was turned over to Luna.","She flooded it with her magic, and Internal, was given eternal life and partnership with Luna.",''};
[13] = {"The sword has many references to her in it, though they may be hard to find...",'',''};
[14] = {"",'',''};[15] = {"",'',''};[16] = {"",'',''};[17] = {"",'',''};[18] = {"",'',''};[19] = {"",'',''};
[20] = {"http://www.roblox.com/asset/?id=143242684","","We'll."};
[21] = {"http://www.roblox.com/asset/?id=143242747","","Love."};
[22] = {"http://www.roblox.com/asset/?id=143242716","","You."};
[23] = {"http://www.roblox.com/asset/?id=143242784","","Forever..."};
[24] = {"Spells...","To each page, thyn own spell.","Forbidden magic, is the best kind of magic, even better than friendship..."};
}
while wait()do
if(xKey:byte()== 49 or xKey:byte()== 50)and not Comboing and not RageMode then
if not StopRunning then
Comboing = true
local Con,Conx;Con = _Mouse.KeyDown:connect(function(key)
if not Equipped then
Comboing = true
Input(key,_Mouse)
if #InputTable == 0 then
Con:disconnect()
Conx:disconnect()
end end end)
Conx = Mouse.KeyDown:connect(function(key)
if Equipped then
Comboing = true
Input(key,Mouse)
if #InputTable == 0 then
Conx:disconnect()
Con:disconnect()
end end end)ChangeText("Combo initiated!")LastInput = tick()StopRunning = true end end end
--~ Made by >IR [InternalRecursion], Pr0metheus [Fir3bl4ze], & 1x1x1x1 [EncryptedPython]< ~--