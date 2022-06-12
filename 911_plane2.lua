-- by fr34ky;
local char = game.Players.LocalPlayer.Character


local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

local weld = Instance.new("Weld",char.Torso)
weld.Part0 = char.Torso

local plane = Instance.new("Part",char.Torso)
plane.Anchored = false
plane.CanCollide = false
plane.Size = Vector3.new(3,2,6)
plane.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = plane
weld.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,math.rad(270),0)

local pf = Instance.new("ForceField")
pf.Parent = game.Players.LocalPlayer.Character

for i,v in pairs(char.Torso:GetChildren()) do
   if v.ClassName == 'Decal' then
        v:Destroy()
   end
end
for i,v in pairs(char:GetChildren()) do
   if v.ClassName == 'Hat' then
       v:Destroy()
   end
end
for i,v in pairs(char.Head:GetChildren()) do
   if v.ClassName == 'Decal' then
       v:Destroy()
   end
end

char.Humanoid.JumpPower = 200
char.Humanoid.Jump = true

local plane = Instance.new('SpecialMesh', plane)
plane.MeshType = 'FileMesh'
plane.MeshId = 'http://www.roblox.com/asset/?id=498194022' --498194022
plane.TextureId = 'http://www.roblox.com/asset/?id=498194025'
plane.Scale = Vector3.new(0.2, 0.2, 0.2)


planesound=Instance.new('Sound', char.Torso)
planesound.SoundId = 'rbxassetid://439771510'
planesound.Volume = 1
planesound.Looped = true

pullup=Instance.new('Sound', char.Torso)
pullup.SoundId = 'rbxassetid://144560522'
pullup.Volume = 10
pullup.Looped = true

alarm=Instance.new('Sound', char.Torso)
alarm.SoundId = 'rbxassetid://384231761'
alarm.Volume = 10
alarm.Looped = true


screech=Instance.new('Sound', char.Torso)
screech.SoundId = 'rbxassetid://262353320'
screech.Volume = 10

st=Instance.new('Sound', char.Torso)
st.SoundId = 'rbxassetid://131353021'
st.Volume = 20

allahuakbar=Instance.new('Sound', char)
allahuakbar.SoundId = 'rbxassetid://293292782'
allahuakbar.Volume = 10

moosic=Instance.new('Sound', char)
moosic.SoundId = 'rbxassetid://504630746'
moosic.Volume = 2

allahuakbar2=Instance.new('Sound', char)
allahuakbar2.SoundId = 'rbxassetid://446824013' --446824013
allahuakbar2.Volume = 1


planesound:Play()

explosionf=Instance.new('ParticleEmitter', char.Torso)
explosionf.Texture = 'http://www.roblox.com/asset/?id=244514357'
explosionf.Size = NumberSequence.new(19)
explosionf.Rate = 1000
explosionf.LightEmission = 0.4
explosionf.Lifetime = NumberRange.new(1)
explosionf.VelocitySpread = 360
explosionf.Enabled = false



char.Torso.Transparency = 1
char.Head.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1

repeat wait(1)until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:GetMouse() and game:FindService("Workspace") and game.Workspace.CurrentCamera
local Me = game:GetService("Players").LocalPlayer
local Char = Me.Character
local Mouse = Me:GetMouse()
local Cam = Workspace.CurrentCamera
local Stop = false
local Version = 0
local MaxSpeed = 8
local Speed = 8
local Keys = {}
local Force = 10000 -- 10000 = Fly, 1000000 = Noclip

local Fly, Rot = Char.Torso:FindFirstChild("LMMFly"), Char.Torso:FindFirstChild("LMMRot")
if Fly then Fly:Destroy() end if Rot then Rot:Destroy() end
Fly = Instance.new("BodyPosition", Char.Torso) Fly.Name = "LMMFly" Fly.maxForce = Vector3.new(math.huge, math.huge, math.huge) Fly.P = Force Fly.position = Char.Torso.Position
Rot = Instance.new("BodyGyro", Char.Torso) Rot.Name = "LMMRot" Rot.maxTorque = Vector3.new(math.huge, math.huge, math.huge) Rot.P = Force Rot.cframe = Cam.CoordinateFrame

local Thread,Old = Version, nil
Char.Humanoid.PlatformStand = true

function StopFly()
Version = Version + 1 Stop = true Char.Humanoid.PlatformStand = false Fly:Destroy() Rot:Destroy() script.Disabled = true script:Destroy()
end

Char.ChildAdded:connect(function(Obj) wait()
if Obj.Name == "LM".."MFlyStop" then
Obj:Destroy()
StopFly()
end
end)

coroutine.wrap(function() while Thread == Version and Stop == false do
local Vectoring = Rot.cframe - Rot.cframe.p + Fly.position

if Keys[string.char(48)] then Speed = 1 end
if Keys.w then Vectoring = Vectoring + Cam.CoordinateFrame.lookVector * Speed end
if Keys.s then Vectoring = Vectoring - Cam.CoordinateFrame.lookVector * Speed end
if Keys.d then Vectoring = Vectoring * CFrame.new(Speed,0,0) end
if Keys.a then Vectoring = Vectoring * CFrame.new(-Speed,0,0) end
if Keys.e or Keys[" "] then Vectoring = Vectoring * CFrame.new(0,Speed,0) end
if Keys.q then Vectoring = Vectoring * CFrame.new(0,-Speed,0) end
if Keys.x then StopFly() end

if Old ~= Vectoring then 
Fly.position = Vectoring.p
Old = Vectoring
Speed = math.min(Speed + Speed*0.025,MaxSpeed)
else
Speed = 1;
end
Rot.cframe = Cam.CoordinateFrame
wait(0.01)
end end)()

Mouse.KeyDown:connect(function(Key)
Keys[Key] = true
end)
Mouse.KeyUp:connect(function(Key)
Keys[Key] = false
end)


mouse.KeyDown:connect(function(key)
if key == "c" then
planesound:Stop()
screech:Play()
allahuakbar2:Stop()
pullup:Stop()
explosionf.Enabled = false
alarm:Stop()
local e = Instance.new("Smoke", char.Torso)
e.Size = 20
char.Torso.Anchored = false
wait(3)
e.Enabled = false

end
end)

mouse.KeyDown:connect(function(key)
if key == "v" then
explosionf.Enabled = true
pullup:Play()
alarm:Play()
explosionf.Size = NumberSequence.new(5)
end
end)

mouse.KeyDown:connect(function(key)
if key == "b" then
moosic:Play()
end
end)

mouse.KeyDown:connect(function(key)
if key == "n" then
moosic:Stop()
end
end)

mouse.KeyDown:connect(function(key)
if key == "z" then
planesound:Play()
screech:Stop()
char.Torso.Anchored = false
st:Play()
allahuakbar2:Stop()
pullup:Stop()
explosionf.Enabled = false
alarm:Stop()


end
end)

Enabled = false
function onTouched(hit)
if Enabled then
return
end
Enabled=false
local e = Instance.new("Explosion") 
e.BlastRadius = 260-- How much ground the explosion covers --
e.BlastPressure = 51-- How powerful the explosion is --
e.Parent = char.Torso -- Don't change this!
e.Position = char.Torso.Position -- Don't change this!
allahuakbar:Play()
explosionf.Size = NumberSequence.new(50)
explosionf.Speed = NumberRange.new(30)
explosionf.Enabled = true
char.Torso.Anchored = true
explosionf.Lifetime = NumberRange.new(0.25)
allahuakbar2:Play()
allahuakbar2.Pitch = 0
pullup:Stop()
alarm:Stop()
wait(1.25)
allahuakbar2.Pitch = 0
explosionf.Enabled = false
planesound:Stop()
wait(0.50)
plr = game.Players.LocalPlayer.Name
for i,v in pairs(game.Players:GetChildren()) do
       if v.Name ~= plr then
game:GetService("Chat"):Chat(v.Character.Head, "ALLAHU AKBAR!!! HEIL PLANE CRASHES!!!", Enum.ChatColor.Blue)
AKBAR=Instance.new('Sound', v.Character.Head)
AKBAR.SoundId = 'rbxassetid://396873260'
AKBAR.Volume = 15
AKBAR.Pitch = 0.25
AKBAR.Looped = false
AKBAR:Play()
wait(2.6)
AKBAR:Play()

end
end

end
char.Torso.Touched:connect(onTouched)