--- Color doesnt work properly
local plr = game.Players.LocalPlayer
local char = plr.Character
local torso = char:FindFirstChild('Torso')
local hrp = char.HumanoidRootPart
local color = false
local color2 = false
local Power = 300
local Render = 1
local m=Instance.new('Model',char)

function noOutline(part)
part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

for angle = 1,360,3 do
local p = Instance.new('Part',m)
local p2=Instance.new('PointLight',p)
local col=math.random(200,255)
if angle==1 then
m.PrimaryPart = p
end
noOutline(p)
p.Material='Neon'
p.BrickColor = BrickColor.new('Light blue')
p.Name = 'P'
p.Size = Vector3.new(.5,.5,.5)
p.Anchored = true
p.CanCollide = false
p.CFrame = torso.CFrame*CFrame.Angles(0,math.rad(angle),0)*CFrame.new(0,0,5)
p.Locked =true
end

rad = 11
circ = 2*math.pi*rad
n = circ/(rad/10)
rot = 360/n

x = 1
y = 1
z = 1
xinc = 1
yinc = 1.5
zinc = -2

function Sound(remove,name,parent,loop,vol,id)
if remove == false then
local s = Instance.new('Sound',parent)
s.Name = name
s.Looped = loop
s.Volume = vol
s.SoundId = 'rbxassetid://'..tostring(id)
s.MaxDistance = 50
s.EmitterSize = 25
s:Play()
if loop == false then
wait(s.TimeLength)
s:Destroy()
end
return s
else
parent[name]:Destroy()
end
end

local Music = Sound(false,'Music',hrp,true,1,0)

local colors = {
Color3.fromRGB(52, 152, 219),
Color3.fromRGB(46, 204, 113),
Color3.fromRGB(26, 188, 156),
Color3.fromRGB(155, 89, 182),
Color3.fromRGB(241, 196, 15),
Color3.fromRGB(230, 196, 34),
Color3.fromRGB(192, 57, 43),
Color3.fromRGB(189, 195, 199),
Color3.fromRGB(52, 73, 94),
Color3.fromRGB(41, 128, 185),
Color3.fromRGB(142, 68, 173),
Color3.fromRGB(39, 174, 96),
Color3.fromRGB(22, 160, 133),
Color3.fromRGB(243, 156, 18),
Color3.fromRGB(211, 84, 0),
Color3.fromRGB(192, 57, 43),
}

function colorchange()
if color==true then
col=brickcolors[math.random(1,#colors)]
for i,v in pairs(m:GetChildren()) do
v.BrickColor=BrickColor.new(col)
v.PointLight.Color=col
end
elseif color==false then
for i,v in pairs(m:GetChildren()) do
v.BrickColor=BrickColor.new('Light blue')
v.PointLight.Color=Color3.fromRGB(255,255,255)
end
end
end

function rotation()
while game:getService'RunService'.RenderStepped:wait(Render) do
if hrp ~= nil and torso ~= nil then
colorchange()
x = x+xinc
y = y+yinc
z = z-zinc
m:SetPrimaryPartCFrame(m.PrimaryPart.CFrame:Lerp(torso.CFrame*CFrame.Angles(math.rad(x),math.rad(y),math.rad(z))*CFrame.new(0,0,(Music.PlaybackLoudness/25)/2),.5))
for i,v in pairs(m:GetChildren()) do
v.CFrame=v.CFrame:Lerp(torso.CFrame*CFrame.Angles(math.rad(x)+(-math.sin(i*(Music.PlaybackLoudness/Power))),math.rad(y)+(-math.sin(i*(Music.PlaybackLoudness/Power))),math.rad(z))*CFrame.new(0,0,(Music.PlaybackLoudness/25)),.5)
end
end
end
end
spawn(rotation)

function Chatted(msg,Plr)
if msg:sub(1,6):match('$play ') then
local s=hrp.Music
s.SoundId='rbxassetid://'..msg:sub(7)
s:Play()
elseif msg:sub(1,7):match('$color ') then
if msg:len()>=8 and color==false and color2==false then
for i,v in pairs(m:GetChildren()) do
v.BrickColor=BrickColor.new(msg:sub(8))
end
elseif msg:len()<8 then
if color==false then
color=true
color2=true
else
color=false
color2=false
end
end
elseif msg:sub(1,10):match('$material ') then
for i,v in pairs(m:GetChildren()) do
v.Material=msg:sub(11)
end
elseif msg:sub(1,7):match('$power ') then
Power = tonumber(msg:sub(8))
elseif msg:sub(1,8):match('$render ') then
Render = tonumber(msg:sub(9))
elseif msg:sub(1,5):match('$vol ') then
Volume = tonumber(msg:sub(6))
elseif msg:sub(1,6):match('$pause') then
local s=hrp.Music
s:Pause()
elseif msg:sub(1,7):match('$resume') then
local s=hrp.Music
s:Resume()
elseif msg:sub(1,6):match('$tpos ') then
local s=hrp.Music
s.TimePosition=tonumber(msg:sub(7))
elseif msg:sub(1,8):match('$maxdis ') then
Distance=tonumber(msg:sub(9))
elseif msg:sub(1,6):match('$emit ') then
Emit=tonumber(msg:sub(7))
end
end

plr.Chatted:connect(function(msg) Chatted(msg,plr) end)