--The Nameless Soul
--by EdwardDarksong
--[[
The Nameless Soul is a Soul that's forgotten it's name
and so it hunts for another's name, and will take it by 
any means...
--]]


settings = {
Particles = true






}
wait()
plr = game:GetService("Players").LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
cam = game:GetService("Workspace").Camera
db = game:GetService("Debris")

function find(target,class)
for _,p in pairs(target:GetChildren()) do
if p.ClassName == class then
return p
end
end
end

Banned = {


}

function rev(number)
local num = tostring(number)
--print(num)
if num:sub(1,1) == "-" then
num = num:sub(2)
else num = "-"..num
end
--print(tonumber(num))
return tonumber(num)
end

function set(number,goal)
local num = tostring(number)
if num:sub(1,1) == "-" then
num = "-"..goal
else num = goal
end
return tonumber(num)
end

local h = find(char,"Humanoid")if h then h.Name = "Soul";h.MaxHealth = math.huge end

function t_damage(hit)
local h = find(hit.Parent,"Humanoid")
if h then
h.Health = h.Health-15
end
end

function new_char(c)
c.HumanoidRootPart:Remove()
local h1 = find(c,"Humanoid")
if h1 then h1:Remove() end
wait();
local rl = c["Right Leg"]
local ll = c["Left Leg"]
local ra = c["Right Arm"]
local la = c["Left Arm"]
rl.Touched:connect(t_damage)
ll.Touched:connect(t_damage)
ra.Touched:connect(t_damage)
la.Touched:connect(t_damage)
c.Torso.Touched:connect(t_damage)
c.Head.Touched:connect(t_damage)

if c:FindFirstChild("Animate") then c.Animate:Remove() end
local t = 0.75
local color = BrickColor.new("Really black")
local bc = c["Body Colors"]
bc["HeadColor"] = color
bc["LeftArmColor"] = color
bc["RightArmColor"] = color
bc["RightLegColor"] = color
bc["LeftLegColor"] = color
bc["TorsoColor"] = color
rl.Transparency = t
ra.Transparency = t
la.Transparency = t
ll.Transparency = t
c.Head.Transparency = t
c.Torso.Transparency = t
rl.BrickColor = color
ll.BrickColor = color
la.BrickColor = color
ra.BrickColor = color
c.Head.BrickColor = color
c.Torso.BrickColor = color
if c.Head:FindFirstChild("face") then c.Head.face:Remove() end
for _,p in pairs(c:GetChildren()) do if p.ClassName=="Hat" or p.ClassName=="Shirt" or p.ClassName=="Pants" or p.ClassName=="CharacterMesh" then p:Remove() end end

if settings.Particles then
local p1 = Instance.new("ParticleEmitter",c.Torso)
p1.Size = NumberSequence.new(0.2,0.35)
p1.Texture = "http://www.roblox.com/asset/?id=242201991"
p1.EmissionDirection = "Back"
p1.Rate = 0
--p1.LightEmission = 5
p1.Lifetime = NumberRange.new(0.8,1.1)
p1.Speed = NumberRange.new(0.1,0.1)
p1.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(0,0,0))
p1.Transparency = NumberSequence.new(0.3,0.5)
p1.Enabled = true
p1.Name = "p1"

p1:Clone().Parent = ll
p1:Clone().Parent = rl
p1:Clone().Parent = ra
p1:Clone().Parent = la
--p1:Clone().Parent = c.Head
end
local w = Instance.new("Weld",c);w.Name=""
w.Part0 = c.Torso
w.Part1 = ra
w.C1 = CFrame.new(-1.5,0.1,-0.2) * CFrame.Angles(0.4,0,0)
local w = Instance.new("Weld",c);w.Name=""
w.Part0 = c.Torso
w.Part1 = la
w.C1 = CFrame.new(1.5,0.1,-0.2) * CFrame.Angles(0.4,0,0)

local w = Instance.new("Weld",c);w.Name=""
w.Part0 = c.Torso
w.Part1 = rl
w.C1 = CFrame.new(-0.5,2,0) * CFrame.Angles(0.15,0,0)
local w = Instance.new("Weld",c);w.Name=""
w.Part0 = c.Torso
w.Part1 = ll
w.C1 = CFrame.new(0.5,2,0) * CFrame.Angles(0.15,0,0)

local m = Instance.new("Part",c)
m.Size = Vector3.new(1,2,1)
m.Position = Vector3.new(c.Torso.Position.X,c.Torso.Position.Y+3,c.Torso.Position.Z)
m.CanCollide = false
m.Transparency = 1
m.Anchored = true
m.Locked = true
m.Name = "m"

local l = Instance.new("Part",c)
l.Size = Vector3.new(1,2,1)
l.Position = c.Torso.Position
l.CanCollide = false
l.Transparency = 1
l.Anchored = true
l.Locked = true
l.Name = "l"

local camera = Instance.new("Part",c)
camera.Size = Vector3.new(2,2,1)
camera.Transparency = 1
camera.CanCollide = false

local weld = Instance.new("Weld",camera)
weld.Part0=c.Torso
weld.Part1=camera
weld.C1 = CFrame.new(0,0,0)


cam.CameraSubject = camera

local p = Instance.new("BodyPosition",c.Torso)
p.P = 11000
p.D = 1000
p.Name = "path"
p.MaxForce = Vector3.new(20000,20000,20000)
local p2 = Instance.new("BodyGyro",c.Torso)--c.HumanoidRootPart)
p2.D = 1e3
p2.P = 1e7

p2.MaxTorque = Vector3.new(0,1e7,0)
p2.Name = "path2"

local W = false
local S = false
local A = false
local D = false
local Space = false

local m2 = m:Clone()
m2.Parent = c

coroutine.resume(coroutine.create(function()
game:GetService("RunService").Stepped:connect(function()
for _,p in pairs(c:GetChildren())do if p.ClassName=="Part"then p.CanCollide = false p.Material = "Neon" end end
local hum = find(c,"Humanoid")

for _,p in pairs(c:GetChildren()) do
for _,p in pairs(p:GetChildren()) do
if p.ClassName == "ParticleEmitter" then
p:Emit(24)
end
end
end

if hum then
if hum:FindFirstChild("Animator") then hum.Animator:Remove() end
for _,p in pairs(c:GetChildren()) do
if p.ClassName == "Part" then
p.CanCollide = false
end
end
hum.WalkSpeed = 0
hum.NameDisplayDistance = 0
--hum.AutoRotate = false
hum.Name = "Soul"
hum.JumpPower = 0
hum.PlatformStand = false
end
l.Position = c.Head.CFrame:toWorldSpace(CFrame.new(0,0,0)).p
p2.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p - c.Torso.CFrame.p).unit * 100)

if W then 
local x = rev((cam.CFrame-c.Torso.CFrame.p).X)
local z = rev((cam.CFrame-c.Torso.CFrame.p).Z)

m.CFrame = l.CFrame:toWorldSpace(CFrame.new(x,-3.15,z)) 
local lm = l.CFrame:toWorldSpace(CFrame.new(x*1.5,-3.15,z*1.5)) 
m2.CFrame = lm
--p2.CFrame = CFrame.new(c.Torso.CFrame.p,m2.CFrame.p.unit*100)
m2.CFrame = p2.CFrame
end

if S then 
local x = 0
local z = 0

m.CFrame = l.CFrame:toWorldSpace(CFrame.new(x,-6.5,z)) 
local lm = l.CFrame:toWorldSpace(CFrame.new(x*1.5,-6.5,z*1.5)) 
m2.CFrame = lm
--p2.CFrame = CFrame.new(c.Torso.CFrame.p,m2.CFrame.p.unit*100)
m2.CFrame = p2.CFrame
end

if Space then

--local x = rev((cam.CFrame-c.Torso.CFrame.p).X)
--local z = rev((cam.CFrame-c.Torso.CFrame.p).Z)
local x = 0
local z = 0

m.CFrame = l.CFrame:toWorldSpace(CFrame.new(x,3.5,z)) 
local lm = l.CFrame:toWorldSpace(CFrame.new(x*1.5,3.5,z*1.5)) 
m2.CFrame = lm
--p2.CFrame = CFrame.new(c.Torso.CFrame.p,m2.CFrame.p.unit*100)
m2.CFrame = p2.CFrame

end


--if A then m.CFrame = c.Torso.CFrame:toWorldSpace(CFrame.new(-1.5,0,0)) end
--if D then m.CFrame = c.Torso.CFrame:toWorldSpace(CFrame.new(1.5,0,0)) end

p.Position = m.Position
--print(p.Position)
--p2.CFrame = CFrame.new(Vector3.new(),m.CFrame.p.unit * 100)
--p2.CFrame = m.CFrame
end)
end))

mouse.KeyDown:connect(function(key)
key = key:lower()
--[[if key == "p" then
local i = Instance.new("Part",workspace)
i.Anchored = true
i.CanCollide = false

local x = rev((cam.CFrame-c.Torso.CFrame.p).X)
local z = rev((cam.CFrame-c.Torso.CFrame.p).Z)

i.CFrame = c.Torso.CFrame:toWorldSpace(CFrame.new(x,0,z))
end]]
if key == "p" then
for _,p in pairs(c:GetChildren()) do
if p.ClassName=="Part"then print(p.Name.." -- "..tostring(p.CanCollide)) end
end
end

if key == "w" then 
W = true
end
if key == "s" then
--local x = rev((cam.CFrame-c.Torso.CFrame.p).X)
--local z = rev((cam.CFrame-c.Torso.CFrame.p).Z)
S = true
end
if key:byte() == 32 then
Space = true
end

end)
mouse.KeyUp:connect(function(key)
key = key:lower()
if key == "w" then 
W = false
end
if key == "s" then
--local x = rev((cam.CFrame-c.Torso.CFrame.p).X)
--local z = rev((cam.CFrame-c.Torso.CFrame.p).Z)
S = false
end
if key:byte() == 32 then
Space = false
end
end)

end

function intro()

local light = game:GetService("Lighting")
light.Brightness = 0
light.GlobalShadows = true
light.Ambient = Color3.new(0.25,0.25,0)
light.ColorShift_Top = Color3.new(0,0,0)
light.ColorShift_Bottom = Color3.new(0,0,0)
light.ShadowColor = Color3.new(1.7,0,0)
light.TimeOfDay = "1:00:00"
light.OutdoorAmbient = Color3.new(0,0,0)

char.Archivable = true
rc = char:Clone()
char.Archivable = false
rc.Parent = char
rc.Torso.CFrame = char.Torso.CFrame:toWorldSpace(CFrame.new(0,2.5,5))
for _,p in pairs(rc:GetChildren()) do
if p.ClassName == "Part" then
p.CanCollide = false
end
end
new_char(rc)
char.Torso.CFrame = char.Torso.CFrame:toWorldSpace(CFrame.new(0,150,0))
local song = workspace:FindFirstChild("Soul's Song") or Instance.new("Sound",workspace)
song.MaxDistance = math.huge
song.Name = "Soul's Song"
song.Volume = 1
song.Looped=true
song.SoundId="rbxassetid://149119648"
wait();
song:Play()
local h1 = find(char,"Humanoid")
if h1 then h1:Remove() end
for _,p in pairs(char:GetChildren()) do
if p.ClassName == "Part" then
p.Transparency = 1
p.CanCollide = false
p.Anchored = true
if p:FindFirstChild("face") then p.face:Remove() end
end
if p.ClassName == "Hat" then p:Remove() end
end
--char.Parent = game:GetService("Lighting")
end



wait(1)
intro()







function say(text)
local chat = game:GetService("Chat")
chat:Chat(rc.Head,text,"Red")
end
plr.Chatted:connect(function(msg)
say(msg)
end)


coroutine.resume(coroutine.create(function()
game:GetService("RunService").Stepped:connect(function()

for _,p in pairs(game:GetService("Players"):GetPlayers()) do
if Banned[p.Name] ~= nil then
pcall(function() p:Remove() end)
end
end

end) end))