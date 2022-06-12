ply = game.Players.LocalPlayer
char = ply.Character
------TOOOOOLS------
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent)
c = Instance.new("Part",m)
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
c.BrickColor = BrickColor.new(color)
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
if parent ~= nil then c.Parent = parent end
return c
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
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz)
w = Instance.new("Weld",m)
w.Part0,w.Part1 = part0,part1
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
return w
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
["BP"] = function(parent,position)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new()*math.huge
bp.position = position
return bp
end
,
["F"] = function(parent,size,heat,color,secondcolor,enabled)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if enabled ~= nil then f.Enabled = enabled end
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
return f
end
,
["Track"] = function(obj,s,t,lt)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position
mag = (old-new).magnitude
dist = (old+new)/2
ray = T.P(s,mag+.2,s,obj.Color,t,false,true)
Instance.new("CylinderMesh",ray)
ray.CFrame = CFrame.new(dist,old)*ang(math.pi/2,0,0)
game:GetService("Debris"):AddItem(ray,lt)
end
end)) end,
["D"] = function(hit) if hit.Parent:findFirstChild("Humanoid") then h=hit.Parent.Humanoid h.Health = h.Health -dmg end end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
else
mesh = Instance.new("SpecialMesh",parent)
if meshid ~= "sphere" then
if type(meshid) == "number" then mesh.MeshId = "rbxassetid://"..meshid else
mesh.MeshId = "rbxassetid://"..meshids[meshid]
end
else mesh.MeshType = 3 end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture ~= nil then
if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else
mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
end
return mesh
end
end
}
--------------------------------------------------
meshids = {["blast"] = 20329976, ["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,
["fish"] = 31221717, ["coffee"] = 15929962}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,
["monster"] = 33366441}
cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new
---MATH SHORTENINGS---
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
pcall(function() char:FindFirstChild("DFFG"):Remove() end)
m = Instance.new("Model",char)
m.Name = "DFFG"
torso = char.Torso
local body = {}
body.A = {["L"] = char["Left Arm"],["R"] = char["Right Arm"]}
body.L = {["L"] = char["Left Leg"],["R"] = char["Right Leg"]}
body.S = {["L"] = torso["Left Shoulder"],["R"] = torso["Right Shoulder"]}
body.H = {["L"] = torso["Left Hip"],["R"] = torso["Right Hip"]}
body.Head = char.Head
pp = T.P(.5,1,.5,"Grime",0,false,false)
T.W(pp,torso,0,.5,1,math.pi/2,0,0)
p = T.P(.5,2,.5,"Grime",0,false,false)
T.FM(p,"cylinder",1,1,1)
T.W(p,pp,0,.5,0,math.pi/2,0,0)
b1 = T.P(.5,.5,.5,"Alder",0,false,false)
T.FM(b1,"sphere",1,1,1)
T.W(b1,p,0,1,0,0,0,0)
b2 = T.P(.5,.5,.5,"Alder",0,false,false)
T.FM(b2,"sphere",1,1,1)
T.W(b2,p,0,-1,0,0,0,0)
fire = T.F(b1,5,10,"New Yeller","White",false)
--------WINGS-------
p2 = T.P(.2,2,.2,"Dusty Rose",0,false,false)
T.W(p2,b1,-1,.1,0,0,0,math.pi/2,0)
b2 = T.P(.5,.5,.5,"New Yeller",0,false,false)
T.FM(b2,"sphere",1,1,1)
T.W(b2,p2,0,1,0,0,0,-math.pi/2)
fire1 = T.F(b2,1,20,"Alder","White",false)
p3 = T.P(.2,2,.2,"Dusty Rose",0,false,false)
T.W(p3,p2,-1.2,1,0,0,0,math.pi/2,0)
p4 = T.P(.2,2,.2,"Dusty Rose",0,false,false)
T.W(p4,p3,-1,1,0,0,0,math.pi/2,0)
b2 = T.P(.5,.5,.5,"Alder",0,false,false)
T.FM(b2,"sphere",1,1,1)
T.W(b2,p4,0,-1,0,0,0,0)
p2 = T.P(.2,2,.2,"Dusty Rose",0,false,false)
T.W(p2,b1,1,.1,0,0,0,math.pi/2,0)
b2 = T.P(.5,.5,.5,"New Yeller",0,false,false)
T.FM(b2,"sphere",1,1,1)
T.W(b2,p2,0,-1,0,0,0,-math.pi/2)
fire2 = T.F(b2,1,20,"Alder","White",false)
p3 = T.P(.2,2,.2,"Dusty Rose",0,false,false)
T.W(p3,p2,-1.2,-1,0,0,0,math.pi/2,0)
p4 = T.P(.2,2,.2,"Dusty Rose",0,false,false)
T.W(p4,p3,1,1,0,0,0,math.pi/2,0)
b2 = T.P(.5,.5,.5,"Alder",0,false,false)
T.FM(b2,"sphere",1,1,1)
T.W(b2,p4,0,1,0,0,0,0)
----------------------------
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = "Fly"
bp = nil
bg = nil
sparkling = false
T.C(function()
while true do
wait()
if sparkling then
local c = T.P(1,1,1,"White",1,true,false)
c.CFrame = cfn(b1.Position) c:BreakJoints()
c.Velocity = v3n(M.R(0,100),M.R(0,100),M.R(0,100))
Instance.new("Sparkles",c)
box = Instance.new("SelectionBox",c)
box.Adornee = c
box.Color = BrickColor.new("White")
game:GetService("Debris"):AddItem(c,.5)
end
end
end)
function sidefires(a)
if a == 1 then
fire1.Enabled,fire2.Enabled = true,true
elseif a == 0 then
fire1.Enabled,fire2.Enabled = false,false
end
end
jails = {}
function jail(a)
r = 3
local tor = a.Parent:FindFirstChild("Torso")
if tor ~= nil then
local bp =T.BP(tor,tor.Position)
local cf = a.Parent.Torso.CFrame
local modl = Instance.new("Model",m)
for i = 1,360,20 do
wait()
c = T.P(2,6,2,"Black",.5,true,true,modl)
T.FM(c,"cylinder",1,1,1)
c.CFrame = cf + v3n(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
end
for i = 1,180,10 do
wait()
p = T.P(1,1,9,"Nougat",.5,true,true,modl)
p.CFrame = (cf * cfn(0,3,0))*ang(0,M.D(i),0)
end
table.insert(jails,modl)
game:GetService("Debris"):AddItem(modl,math.huge)
bp:Remove()
end
end
function unjail()
for i,v in pairs(jails) do v:Remove() table.Remove(jails,i) end
end
function trip(a)
local tor = a.Parent:FindFirstChild("Torso")
if tor ~= nil then
local bg2 = T.BG(tor)
bg2.cframe = bg2.cframe * ang(math.pi,0,0)
local bp2 = T.BP(tor,tor.Position + Vector3.new(0,5,0))
for i = 1,2 do
for i = -10,10 do
wait()
bg2.cframe = bg2.cframe * ang(0,0,M.D(i))
p = T.P(1,.3,1,"New Yeller",true,false)
T.FM(p,"cylinder",1,1,1)
p.CFrame = tor.CFrame * cfn(0,2,0)
game:GetService("Debris"):AddItem(p,1)
end
for i = 10,-10,-1 do
wait()
bg2.cframe = bg2.cframe * ang(0,0,M.D(i))
p = T.P(1,.3,1,"New Yeller",true,false)
T.FM(p,"cylinder",1,1,1)
p.CFrame = tor.CFrame * cfn(0,2,0)
game:GetService("Debris"):AddItem(p,1)
end
end
bp2:Remove() bg2:Remove()
end
end
hop.Selected:connect(function(mouse)
mouse.Button1Up:connect(function() holding = false end)
mouse.KeyDown:connect(function(key)
if key == "f" then
if bp == nil then
sidefires(1)
bp = T.BP(torso,torso.Position)
bg = T.BG(torso)
bg.Parent = nil
elseif bp ~= nil then
sidefires(0)
bp:Remove() bp = nil
bg:Remove() bg = nil
end
elseif key == "g" then jail(mouse.Target)
elseif key == "r" then trip(mouse.Target)
elseif key == "t" then unjail()
end
end)
mouse.Button1Down:connect(function()
if bp ~= nil then
holding = true
bg.Parent = torso
char.Animate.Disabled = true
for i,v in pairs(body.S) do v.DesiredAngle = 0 end
for i,v in pairs(body.H) do v.DesiredAngle = 0 end
body.S.R.DesiredAngle = math.pi
sidefires(0)
fire.Enabled = true
sparkling = true
while holding == true do
wait()
unit = (torso.Position-mouse.hit.p).unit
bp.position = torso.Position + unit*-30
bg.cframe = cfn(torso.Position,mouse.hit.p)*ang(-math.pi/2,0,0)
end
sparkling = false
sidefires(1)
bg.Parent = nil
fire.Enabled = false
char.Animate.Disabled = false
end
end)
end)