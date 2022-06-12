ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
 
legpos = CFrame.new(.5,-1.5,0)
armpos = CFrame.new(1.5,.5,0)
 
ang = CFrame.Angles
cfn = CFrame.new
 
Arms = {char["Left Arm"],char["Right Arm"]}
Legs = {char["Left Leg"],char["Right Leg"]}
 
track = false
m = Instance.new("Model",char)
 
meshids = {["blast"] = "http://www.roblox.com/asset/?id=20329976", ["penguin"] = "http://www.roblox.com/asset/?id=15853464", ["ring"] = "http://www.roblox.com/asset/?id=3270017",
["spike"] = "http://www.roblox.com/asset/?id=1033714",["cone"] = "http://www.roblox.com/asset/?id=1082802",["crown"] = "http://www.roblox.com/asset/?id=20329976",["arrow"] = "http://www.roblox.com/asset/?id=15886761",
["cloud"] = "http://www.roblox.com/asset/?id=1095708",["mjolnir"] = "http://www.roblox.com/asset/?id=1279013",["diamond"] = "http://www.roblox.com/asset/?id=9756362"}
 
textureids = {["cone"] = "http://www.roblox.com/asset/?id=1082804",["rainbow"] = "http://www.roblox.com/asset/?id=28488599"}
 
function kill(mouse)
for i,v in pairs(mouse.Target.Parent:GetChildren()) do
if v:IsA("Humanoid") then v.Health = 0
 
local head = v.Parent.Head
bbg = Instance.new("BillboardGui",v.Parent)
bbg.Adornee = head
bbg.Size = UDim2.new(1,0,1,0)
bbg.StudsOffset = Vector3.new(0,6,0)
 
 
 
end
end
end
 
 
 
--TOOLS--
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored)
c = Instance.new("Part",m)
 
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
c.BrickColor = BrickColor.new(color)
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
return c
end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz)
w = Instance.new("Weld",m)
w.Part0,w.Part1 = part0,part1
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
return w
end
,
["F"] = function(parent,size,heat,color,secondcolor)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
return f
end
,
["BP"] = function(parent,position)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new()*math.huge
bp.position = position
return bp
end
,
["R"] = function(part,x,y,z)
if part == "lleg" then
legw[1].C1 = CFrame.new(.5,-1.5,0)*ang(x,y,z)
elseif part == "rleg" then
legw[2].C1 = CFrame.new(-.5,-1.5,0)*ang(x,y,z)
elseif part == "larm" then
armw[1].C1 = CFrame.new(1.5,.5,0)*ang(x,y,z)
elseif part == "rarm" then
armw[2].C1 = CFrame.new(-1.5,.5,0)*ang(x,y,z)
end
end
,
["Track"] = function(obj,t,lt)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position
 
mag = (old-new).magnitude
dist = (old+new)/2
 
ray = T.P(t,mag+.2,t,obj.Color,t)
Instance.new("CylinderMesh",ray)
ray.Anchored = true
ray.CanCollide = false
ray.CFrame = CFrame.new(dist,old)*ang(math.pi/2,0,0)
game:GetService("Debris"):AddItem(ray,lt)
end
end)) end,
["Reset"] = function(a)
if a == "all" then
T.R("lleg",0,0,0) T.R("rleg",0,0,0) T.R("rarm",0,0,0) T.R("larm",0,0,0)
else
for i,v in pairs({"lleg","llarm","rarm","rleg"}) do T.R(v,0,0,0) end
end
end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
mesh = Instance.new("SpecialMesh",parent)
mesh.MeshId = meshids[meshid]
mesh.Scale = Vector3.new(x,y,z)
if meshtexture ~= nil then
mesh.TextureId = textureids[meshtexture]
end
return mesh
end
,
["BG"] = function(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 20e+003
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end
,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["Lazor"] = function(from,to,size,color,transparency,lt,ball)
mag = (from-to).magnitude
 
p = T.P(size,mag,size,color,transparency,false,true)
p.Name = "Ray"
p.CFrame = (CFrame.new(from,to) * CFrame.new(0,0,-mag/2))* ang(math.pi/2,0,0)
if lt > 0 then
game:GetService("Debris"):AddItem(p,lt)
end
 
if ball ~= nil then
ball.Anchored = true
ball.Parent = p
ball.CFrame = p.CFrame * CFrame.new(0,-mag/2,0)
end
return p
end
}
---------
 
hold = false
function epicmove(mouse)
tbp = T.BP(torso,torso.Position + Vector3.new(0,30,0))
local pos = torso.Position
while (tbp.position-torso.Position).magnitude > 3 do wait() end
 
cloud = T.P(1,1,1,"Earth green",0,false,false)
T.FM(cloud,"cloud",70,70,70)
cloud.Position = torso.Position + Vector3.new(-1000,300,1000)
cbp = T.BP(cloud,pos + Vector3.new(0,100,0))
while (cbp.position-cloud.Position).magnitude > 3 do wait() end
local light = T.P(10,1,10,"New Yeller",.4,false,true)
for i = 1,(cloud.Position.y+pos.y),5 do
wait()
light.Size = Vector3.new(10,i,10)
Instance.new("CylinderMesh",light)
light.CFrame = cfn(cloud.Position) - Vector3.new(0,light.Size.y/2,0)
end
 
cloud.Transparency = 0.4
 
r = 30
T.C(function()
for i = 1,360,30 do
local spike = T.P(0,0,0,"White",0,false,true)
T.FM(spike,"spike",6,50,6)
spike.CFrame = cfn(pos) + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r)
spike.CFrame = cfn(spike.CFrame.p,pos-Vector3.new(0,10,0)) * ang(math.pi/2,0,0)
delay(.5,function()
for i = 0,1,.05 do
wait()
spike.Transparency = i
end
spike:Remove()
end)
 
end
 
local part = T.P(1,1,1,"Black",0,false,true)
part.CFrame = cfn(pos)
msh = T.FM(part,"blast",1,1,1)
for i = 1,200,5 do
wait()
msh.Scale = Vector3.new(i,i/2,i)
part.Transparency = i/200
end
part:Remove()
end)
 
hammer = T.P(5,5,5,"New Yeller",.5,false,false)
hammer.Position = pos
T.FM(hammer,"mjolnir",5,5,5)
bp = T.BP(hammer,pos + Vector3.new(0,20,0))
bg = T.BG(hammer)
r = 5
mpart = T.P(1,1,1,"White",1,false,false)
mw = T.W(mpart,hammer,0,10,0,0,0,0)
 
for i = 1,360,60 do --- Make Diamonds
wait()
part = T.P(1,1,1,math.random(0,400),.5,false,false)
part.Parent = hammer
T.FM(part,"diamond",3,10,3)
local w = T.W(part,mpart,math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r,0,0,0)
end ---
 
hold = true
mouse.Button1Down:connect(function()
hold = false
hammer:Remove() cloud:Remove() light:Remove() tbp:Remove()
end)
 
while hold == true do
wait()
if mouse.Target ~= nil then
pos3 = (hammer.CFrame * CFrame.new(0,10,0)).p
bg.cframe = mouse.hit * ang(-math.pi/2,0,0)
 
mw.C1 = mw.C1 * ang(0,math.rad(10),0) ---rotate diamonds
 
ray = T.Lazor(pos3,mouse.hit.p,5,"Navy blue",0,.01) --- the lazer beam
Instance.new("CylinderMesh",ray)
ray.Transparency=0.5
 
coroutine.resume(coroutine.create(function()
kill(mouse)
end))
 
T.C(function() ---coroutine start
local ball = T.P(3,3,3,"Bright red",1,false,true)
ball.CFrame = cfn(ray.CFrame * cfn(0,-ray.Size.y/2,0).p)
Instance.new("SpecialMesh",ball).MeshType = 3
 
function BGui(Obj)
local bbg = Instance.new("BillboardGui",Obj)
bbg.Size = UDim2.new(1, 0, 1, 0)
bbg.StudsOffset = Vector3.new(0, 3, 0)
bbg.Name = "BBG"
bbg.Adornee = obj
local f = Instance.new("Frame",bbg)
f.Size = UDim2.new(1, 0, 1, 0)
f.BackgroundTransparency = 1
f.Name = "FR"
local l = Instance.new("TextLabel",f)
l.Text = "[Knockout]"
l.FontSize = "Size10"
l.Name = "Label"
end
 
ray.Touched:connect(function(h) 
if h.Parent:findFirstChild("Humanoid") then
pcall(function() 
BGui(h.Head)
end)
if h.Name ~= ply.Name then
h:BreakJoints()
end
end
end)
 
for i = 1,360,60 do
part = T.P(1,1,1,"Bright blue",.5,false,true)
part.Parent = ball
T.FM(part,"ring",30,30,10)
part.Size = Vector3.new(1,1,1)
part.CFrame = ball.CFrame * ang(math.random(-10,10),math.random(-10,10),math.random(-10,10))
end
 
 
 
local p2 = T.P(1,1,1,"Black",0,false,true) ---Wave
p2.Parent = ball
p2.CFrame = ball.CFrame
local msh = T.FM(p2,"blast",1,1,1)
 
for i = 1,50,2.5 do
wait()
msh.Scale = Vector3.new(i,i,i)
p2.Transparency = i/50
p2.CFrame = ball.CFrame
end
ball:Remove()
end) --- coroutine end
 
end
end
 
end
 
h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Thunder"
 
h.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key)
k=key:lower()
if k == "q" then
epicmove(mouse)
end
if k == "e" then
coroutine.resume(coroutine.create(function()
p=Instance.new("Part",Workspace)
p.Size = Vector3.new(1,1,1)
p.Shape = "Ball"
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.BrickColor = BrickColor.Blue()
p.Transparency=0.5
p.Touched:connect(function(h)
if h.Name ~= "Base" then
h:remove()
end
end)
for i = 1,100 do
p.Size = Vector3.new(i,i,i)
end
end))
end
end)
mouse.Button1Down:connect(function()
epicmove(mouse)
end)
end)
h.Deselected:connect(function()
h.Parent.Parent.Character:BreakJoints()
end)
 