
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
["cloud"] = "http://www.roblox.com/asset/?id=1095708",["mjolnir"] = "http://www.roblox.com/asset/?id=1279013"}
textureids = {["cone"] = "http://www.roblox.com/asset/?id=1082804",["rainbow"] = "http://www.roblox.com/asset/?id=28488599"}
 
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
["Lazor"] = function(from,to,size,color,lt,ball)
mag = (from-to).magnitude
 
p = T.P(size,mag,size,color,.5,false,true)
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
 
function damage(hit,amount)
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") and v.Parent ~= char then
 
if v.MaxHealth > 100 then v.Parent:BreakJoints() end
v.Health = v.Health - amount
 
amo = 0
for i,o in pairs(v.Parent:GetChildren()) do
if o:IsA("BillboardGui") and o.Name == "satuttava" then
amo = amo+1
end end
 
local bbg = Instance.new("BillboardGui",v.Parent)
bbg.Adornee = v.Torso
bbg.Name = "satuttava"
bbg.Size = UDim2.new(2,0,2,0)
bbg.StudsOffset = Vector3.new(0,6+amo*2,0)
 
box = Instance.new("TextLabel",bbg)
box.Size = UDim2.new(1,0,1,0)
box.BackgroundColor = BrickColor.new("White")
box.Text = amount
box.Position = UDim2.new(0,0,0,0)
box.TextScaled = true
game:GetService("Debris"):AddItem(bbg,.5)
end
end
end
 
 
function left()
T.R("rleg",math.rad(100),0,math.rad(30))
T.R("lleg",math.rad(-10),0,math.rad(30))
end
function right()
T.R("rleg",math.rad(-10),0,math.rad(-30))
T.R("lleg",math.rad(100),0,math.rad(-30))
end
 
function penguin(mouse)
local orb = T.P(1,1,1,"White",0,false)
msh = T.FM(orb,"penguin",1,1,1,"rainbow")
 
local orb2 = orb:Clone()
orb2.Parent = m
 
w = T.W(orb,Arms[1],0,-1.45,0,0,0,0)
w = T.W(orb2,Arms[2],0,-1.45,0,0,0,0)
 
T.R("larm",math.rad(-50),0,0)
T.R("rarm",0,0,-math.pi/2)
wait(0.5)
local fire = T.F(orb,5,1,"Pink","Cyan")
T.C(function() while true do wait(0.05) fire.Color = BrickColor:random().Color end end)
 
local fire2 = T.F(orb2,5,1,"Pink","Cyan")
T.C(function() while true do wait(0.05) fire.Color = BrickColor:random().Color end end)
 
wait(0.5)
T.R("larm",math.rad(70),0,0)
T.R("rarm",math.rad(70),0,0)
 
 
for i = 1,50 do
wait()
for i,v in pairs({orb,orb2}) do
T.Lazor(v.Position,torso.Position + torso.CFrame.lookVector * 30,1,BrickColor:random().Name,.1)
end
end
 
orb:Remove() orb2:Remove()
 
wait(.5)
 
for i = 1,10 do
wait()
armw[1].C1 = armw[1].C1 * ang(math.rad(-7),0,0)
armw[2].C1 = armw[2].C1 * ang(math.rad(-7),0,0)
end
 
end
 
function punch(mouse)
bg = T.BG(torso)
 
orbo = Instance.new("Model",m)
orb = T.P(2,2,2,"Cyan",0,1)
orb.Parent = orbo
 
Instance.new("SpecialMesh",orb).MeshType = 3
 
r = 3
track = true
 
for i = 1,360,60 do
local part = orb:Clone()
part.Parent = orbo
part.Size = Vector3.new(.5,.5,.5)
local weld = T.W(part,orb,math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r,0,0,0)
T.C(function()
for o = 10,r,-.5 do
wait()
weld = T.W(part,orb,math.cos(math.rad(i))*o,0,math.sin(math.rad(i))*o,0,0,0)
end
end)
end
 
needle = T.P(.4,4,.4,"Black",0,1)
needle.Parent = orbo
mesh = T.FM(needle,"spike",.4,5.2,.4)
T.W(needle,orb,0,-3,0,math.pi,0,0)
 
T.W(orb,Arms[2],0,-1.5,0,0,0,0).Parent = orb
 
T.R("rarm",0,0,-math.pi/2)
T.R("larm",0,0,math.pi/2)
T.R("rleg",0,0,math.rad(-40))
T.R("lleg",0,0,math.rad(40))
 
bp = Instance.new("BodyPosition",torso)
bp.maxForce = Vector3.new() * math.huge
bp.position = torso.Position + Vector3.new(0,100,0)
 
touch = true
mouse.Button1Down:connect(function() touch = false end)
 
while touch == true do
wait()
bg.cframe = mouse.hit
end
 
local p = mouse.hit.p
 
bg.cframe = cfn(torso.Position,p)*ang(-math.pi/2,0,0)
T.Reset("all") T.R("rarm",math.pi,0,0)
 
bp:Remove()
bv = Instance.new("BodyVelocity",orb)
bv.maxForce = Vector3.new() * math.huge
bv.velocity = (torso.Position-p).unit * -300
 
needle.Touched:wait()
e = Instance.new("Explosion",Workspace)
e.BlastRadius = 20
e.BlastPressure = 0
e.Position = orb.Position
e.Hit:connect(function(hit) damage(hit,600) end)
T.C(function()
local pos = (needle.CFrame * CFrame.new(0,-2,0)).p
local part = T.P(1,1,1,"Neon orange",0,0,1)
part.CFrame = CFrame.new(pos)
 
local msh = T.FM(part,"blast",1,1,1)
 
for i = 1,30,.5 do
wait()
msh.Scale = Vector3.new(i,i*.25,i)
part.Transparency = i/30
end
 
part:Remove()
end)
 
orbo:Remove() bg:Remove() T.Reset("all")
 
end
 
function dance()
 
armw[1].C1 = cfn(1,1.5,0) * ang(0,0,math.pi/2)
armw[2].C1 = cfn(-1,1.5,0) * ang(0,0,-math.pi/2)
legw[1].C1 = cfn(1.5,-.5,0)
legw[2].C1 = cfn(-1.5,-.5,0)
 
motor1 = T.P(.1,.1,.1,"Cyan",1,0)
motor2 = T.P(.1,.1,.1,"Cyan",1,0)
T.W(motor1,Legs[1],0,-1.5,0,math.pi,0,0).Parent = motor1
T.W(motor2,Legs[2],0,-1.5,0,math.pi,0,0).Parent = motor2
 
T.F(motor1,4,3,"Bright red","New Yeller")
T.F(motor2,4,3,"Bright red","New Yeller")
 
backplant = T.P(.5,2.8,2,"Black",.2,0)
T.W(backplant,torso,0,0,.9,0,math.pi/2,math.pi/2)
Instance.new("FileMesh",backplant).MeshId = "http://www.roblox.com/asset/?id=1091940"
 
spike = T.P(.4,1.8,.4,"Earth green",0,0)
spike.Touched:connect(function(hit) damage(hit,10) end)
T.W(spike,torso,0,-2,0,math.pi,0,0)
mesh = T.FM(spike,"spike",.4,4,.4)
end
 
holding = false
bp = nil
 
split = function() T.R("lleg",0,0,math.rad(30))
T.R("rleg",0,0,math.rad(-30)) end
 
function levitate()
if bp == nil then
split()
bp = Instance.new("BodyPosition",torso)
bp.maxForce = Vector3.new()*math.huge
bp.position = torso.Position + Vector3.new(0,3,0)
elseif bp ~= nil then bp:Remove() bp = nil T.Reset("all")
end
end
 
function hopleft()
if bp ~= nil then
 
local orb = T.P(.1,.1,.1,"Neon orange",1)
T.F(orb,5,0,"Cyan","Lime green")
T.W(orb,Legs[1],0,-1.45,0,0,0,0)
track = true T.Track(orb,.1,.5)
 
left()
local look = torso.CFrame.lookVector
holding = true
 
while holding do
wait()
bp.position = ((torso.CFrame + look) * CFrame.new(10,0,-5)).p
end
track = false orb:Remove()
 
T.R("lleg",0,0,math.rad(30))
T.R("rleg",0,0,math.rad(-30))
end
end
 
function hopright()
if bp ~= nil then
 
local orb = T.P(.1,.1,.1,"Neon orange",1)
T.W(orb,Legs[2],0,-1.45,0,0,0,0)
T.F(orb,5,0,"Cyan","Lime green")
 
track = true T.Track(orb,.1,.5)
 
right()
local look = torso.CFrame.lookVector
holding = true
 
while holding do
wait()
bp.position = ((torso.CFrame + look) * CFrame.new(-10,0,-5)).p
end
track = false orb:Remove()
 
T.R("lleg",0,0,math.rad(30))
T.R("rleg",0,0,math.rad(-30))
end
end
 
function spell()
T.C(function()
pose()
local pos = torso.CFrame - torso.CFrame.lookVector * 10 - Vector3.new(0,2,0)
old = T.P(3,3,3,"Nougat",.25,1,1)
old.CFrame = pos
for i = 1,22.5+1 do
local new = old:Clone()
new.Parent = m
wait()
old = new
new.CFrame = (old.CFrame * cfn(0,3,0))*ang(math.rad(-8),0,0)
end
T.Reset("rarm") T.R("larm",0,0,0)
end)
end
 
local new,old = nil
function rings(mode)
if mode == 1 then
for i,v in pairs(m:GetChildren()) do
if v.Name =="Spere" then
old = v
end end
 
 
local new = T.P(1,1,1,"Pink",0,false,false)
new.Name = "Spere"
T.FM(new,"cone",1.5,1.5,1.5,"cone")
T.F(new,5,0,"White","Black")
new.CFrame = torso.CFrame
for i = 1,360,60 do
p = T.P(5,.3,5,"Cyan",.2,false,false)
p.Parent = new
p.Position = torso.Position
T.FM(p,"ring",5,5,.3)
 
T.W(p,new,0,0,0,math.rad(i),0,0)
 
end
bodypos = T.BP(new,torso.Position)
wait(.75)
pcall(function() lazer = T.Lazor(cfn(old.Position).p,cfn(new.Position).p,.5,"Cyan",0)
lazer.Touched:connect(function(hit) damage(hit,100) end)
end)
 
elseif mode == 0 then
for i,v in pairs(m:GetChildren()) do
if v.Name =="Spere" or v.Name == "Ray" then
v:Remove()
end end
old = nil new = nil
end
end
 
function spin()
 
local orb = T.P(.1,.1,.1,"White",1,0)
T.W(orb,Arms[1],0,-2,0,0,0,0)
 
local connect = orb.Touched:connect(function(hit) damage(hit,1) end)
 
local orb2 = T.P(.1,.1,.1,"White",1,0)
T.W(orb2,Arms[2],0,-2,0,0,0,0)
 
local connect2 = orb2.Touched:connect(function(hit) damage(hit,1) end)
 
T.R("rarm",0,0,-math.pi/2)
T.R("larm",0,0,math.pi/2)
track = true
T.Track(orb,.1,.5)
T.Track(orb2,.1,.5)
legw[2].C1 = legw[2].C1 * cfn(0,.4,0)
 
bg = T.BG(torso)
 
holding = true
while holding do
for i = 1,360,60 do
wait()
bg.cframe = bg.cframe * ang(0,math.rad(60),0)
end
end
connect:disconnect() connect2:disconnect()
track = false
bg:Remove()
T.Reset("all")
end
 
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = "Tool"
 
pose = function()
T.R("larm",math.rad(150),0,math.rad(-20))
T.R("rarm",math.rad(150),0,math.rad(20))
end
 
hop.Selected:connect(function(mouse)
-------SET WELDS---------
armp = {T.P(1,1,1,"White",1),T.P(1,1,1,"White",1,1)}
legp = {T.P(1,1,1,"White",1),T.P(1,1,1,"White",1,1)}
 
armw = {T.W(armp[1],torso,1.5,.5,0,0,0,0),T.W(armp[2],torso,-1.5,.5,0,0,0,0)}
legw = {T.W(legp[1],torso,.5,-1.5,0,0,0,0),T.W(legp[2],torso,-.5,-1.5,0,0,0,0)}
 
others = {
T.W(Arms[1],armp[1],0,-.5,0,0,0,0),
T.W(Arms[2],armp[2],0,-.5,0,0,0,0),
T.W(Legs[1],legp[1],0,-.5,0,0,0,0),
T.W(Legs[2],legp[2],0,-.5,0,0,0,0)
}
-------------------------
 
 
mouse.KeyDown:connect(function(key)
if key == "q" then hopleft()
elseif key == "e" then hopright()
elseif key == "r" then levitate()
elseif key == "f" then spin()
elseif key == "c" then penguin(mouse)
elseif key == "t" then punch(mouse)
elseif key == "y" then dance()
elseif key == "h" then spell()
elseif key == "v" then rings(1) elseif key == "b" then rings(0)
end end)
mouse.KeyUp:connect(function(key) for i,v in pairs({"e","q","r","f"}) do if key == v then holding = false end end end)
end)
 
hop.Deselected:connect(function() pcall(function()bp:Remove() bp = nil end)
armp[1]:Remove() armp[2]:Remove() legp[1]:Remove() legp[2]:Remove() end)
 
 
