g = game.Players.rigletto
char = g.Character
tors = char.torso

tors["Left Shoulder"].C0 = CFrame.new(-1, .5, 0)*CFrame.Angles(math.rad(180), math.rad(-90), 0)
tors["Right Shoulder"].C0 = CFrame.new(1, .5, 0)*CFrame.Angles(math.rad(180), math.rad(90), 0)




local m = Instance.new("Model", char)
m.Name = "Terror"
par = m
function weld(par, p1, p2, c1, c2) 
local w = Instance.new("Weld")
w.Parent = par
w.Part0 = p1
w.Part1 = p2
pcall(function()
w.C0 = c1
w.C1 = c2
end)
return w
end

Chat = 
{
"BOOM",
"Allah akbar!!",
"BOMBS",
"FOR ALLAH",
"WAHLALAHLALHAH",
"MIDDLE EAST"
}

function cyl(p)
local c = Instance.new("CylinderMesh", p)
return c
end
function bl(p)
local c = Instance.new("BlockMesh", p)
return c
end
function sph(p)
local c = Instance.new("SpecialMesh", p)
c.MeshType = "Sphere"
return c
end

local back = Instance.new("Part")
back.Parent = par
back.Size = Vector3.new(2, 2, 2)
back:BreakJoints()
back.TopSurface = 0
back.BottomSurface = 0
sph(back)
weld(back, back, tors, CFrame.new(0, 0, -1)*CFrame.Angles(math.rad(10), 0, 0)) --lego

local ant = Instance.new("Part")
ant.Parent = par
ant.Size = Vector3.new(2, 2, 2)
ant:BreakJoints()
ant.TopSurface = 0
ant.BottomSurface = 0
local c = cyl(ant)
c.Scale = Vector3.new(.2, 1.3, .2)
weld(ant, ant, back, CFrame.new(.5, -2, 0)*CFrame.new(math.rad(0), math.rad(0), math.rad(-20))) --lego


local aant = Instance.new("Part")
aant.Parent = par
aant.Size = Vector3.new(2, 2, 2)
aant:BreakJoints()
aant.TopSurface = 0
aant.BottomSurface = 0
local c = cyl(aant)
c.Scale = Vector3.new(.15, .6, .15)
weld(aant, aant, ant, CFrame.new(0, -2.3, 0))

local aaant = Instance.new("Part")
aaant.Parent = par
aaant.Size = Vector3.new(2, 2, 2)
aaant:BreakJoints()
aaant.TopSurface = 0
aaant.BottomSurface = 0
local c = cyl(aaant)
c.Scale = Vector3.new(.1, .6, .1)
weld(aaant, aaant, aant, CFrame.new(0, -1.4, 0))


local light = Instance.new("Part")
light.Parent = par
light.Size = Vector3.new(2, 2, 2)
light:BreakJoints()
light.TopSurface = 0
light.BottomSurface = 0
light.Name = "Light"
local c = sph(light)
c.Scale = Vector3.new(.2, .2, .2)
weld(light, light, aaant, CFrame.new(0, -.8, 0))
light.BrickColor = BrickColor.new("Dark green")

coroutine.resume(coroutine.create(function()
while true do
wait(.5)
game:GetService("Chat"):Chat(char.Head, Chat[math.random(1, #Chat)])
end
end))

function chat(msg)



if string.find(string.lower(msg), "allah") then
local sound = Instance.new("Sound", Workspace) 
sound.SoundId = "http://roblox.com/asset/?id=15666462" 

local time = .5
for i=1, 9 do
m.Light.BrickColor = BrickColor.new("Really red")
wait(time)
m.Light.BrickColor = BrickColor.new("Really black")
wait(time)
time = time - .08
sound:play() --mediafire
end

for i=1, 20 do
local e = Instance.new("Explosion", workspace)
e.Position = back.Position+Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
e.BlastRadius = 500
e.BlastPressure = 800
end
end
end
g.chatted:connect(chat)