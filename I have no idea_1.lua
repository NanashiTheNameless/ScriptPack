

ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
shoulder = nil
body = {}
body.A = {["L"] = char["Left Arm"],["R"] = char["Right Arm"]}
body.L = {["L"] = char["Left Leg"],["R"] = char["Right Leg"]}
body.S = {["L"] = torso["Left Shoulder"],["R"] = torso["Right Shoulder"]}
body.H = {["H"] = torso["Left Shoulder"],["H"] = torso["Right Shoulder"]}
local normposR = body.S.R.C0
local normposL = body.S.L.C0
body.Head = char.Head
rw,lw = Instance.new("Weld"),Instance.new("Weld")
rhw,lhw = Instance.new("Weld"),Instance.new("Weld")
list = {
["RS"] = rw,
["LS"]=lw,
["RH"]=rhw,
["LH"]=lhw
}
function lock(arm,a)
if a == 1 then
b,c = arm:sub(1,1),arm:sub(2,2)
shoulder = body[c][b]
we = list[arm]
we.Parent = torso
we.C0,we.C1 = shoulder.C0 ,shoulder.C1
we.Part0,we.Part1 = shoulder.Part0 ,shoulder.Part1
shoulder.Parent = nil
elseif a == 0 then
we.Parent = nil
shoulder.Parent = torso
end
end
m = Instance.new("Model",char)
meshids = {["blast"] = 20329976, ["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,
["fish"] = 31221717, ["coffee"] = 15929962}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,
["monster"] = 33366441}
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
["F"] = function(parent,size,heat,color,secondcolor)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
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
---MATH SHORTENINGS---
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
---------------------------
cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new
m = Instance.new("Model",char)
function damage(hit,amount)
for i,v in pairs(hit:GetChildren()) do
if v:IsA("Humanoid") and v.Parent ~= char then
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
 
hop = Instance.new("HopperBin",ply.Backpack)
holding = false
function attack1(mouse)
r = 20
bp = T.BP(torso,torso.Position + v3n(0,20,0))
bg = T.BG(torso)
bg.cframe = mouse.hit
while (bp.position-torso.Position).magnitude > 3 do wait() end
holding=true
while holding do
for i = 1,360,60 do
wait()
local pos = torso.CFrame * cfn(M.Cos(M.D(i))*r,M.Sin(M.D(i))*r,-5)
 
local dragon = T.P(10,10,10,"White",.5,false,true)
T.FM(dragon,"dragon",dragon.Size.x,dragon.Size.y,dragon.Size.z)
dragon.CFrame = pos
T.C(function()
for i = 1,50,5 do
wait()
bg.cframe = mouse.hit
dragon.CFrame = cfn(pos.p,mouse.hit.p) * cfn(0,0,-i)
dragon.Transparency = i/50
T.C(function()
for i,v in pairs(Workspace:GetChildren()) do
if v:IsA("Model") then
local torso = v:FindFirstChild("Torso")
if torso ~= nil then
if (v.PrimaryPart.Position-dragon.Position).magnitude < 5 then damage(v,2) end
end end
end
end)
end
dragon:Remove()
end)
end
end
bg:Remove() bp:Remove()
end
function spear(mouse)
local portal = T.P(1,1,1,"Magenta",.5,false,true)
local msh = T.FM(portal,"sphere",1,1,1)
portal.CFrame = cfn(mouse.hit.p)
local pos = cfn(portal.Position)
local p = T.P(1,1,1,"White",0,false,true)
p.CFrame = pos
T.FM(p,"crown",5,1,5)
T.C(function()
while true do
wait()
p.CFrame = p.CFrame * ang(0,M.D(20),0)
end
end)
for i = 1,10 do
wait()
msh.Scale = v3n(i,1,i)
end
local stick = T.P(.5,1,.5,"Nougat",0,true,true)
stick.CFrame = pos
T.FM(stick,"cylinder",1,1,1)
stick.Touched:connect(function(hit) damage(hit.Parent,10) end)
local tip = T.P(1,2,1,"Black",0,true,true)
T.FM(tip,"spike",.5,2,.5)
tip.CFrame = pos
local fish = T.P(1,1,1,"White",0,false,true)
fish.CFrame = pos
T.FM(fish,"fish",1,1,1,"fish").VertexColor = v3n(.5,1,.5)
 
for i = 1,10 do
wait()
stick.Size = v3n(stick.Size.x,i,stick.Size.z)
stick.CFrame = pos + v3n(0,stick.Size.y/2,0)
tip.CFrame = stick.CFrame * cfn(0,stick.Size.y/2+.75,0)
fish.CFrame = tip.CFrame * cfn(0,-1.5,0) * ang(M.D(85),0,0)
end
wait(1)
for i = 10,1,-1 do
wait()
stick.Size = v3n(stick.Size.x,i,stick.Size.z)
stick.CFrame = pos + v3n(0,stick.Size.y/2,0)
tip.CFrame = stick.CFrame * cfn(0,stick.Size.y/2+.75,0)
fish.CFrame = tip.CFrame * cfn(0,-1.5,0) * ang(M.D(85),0,0)
end
for i,v in pairs({stick,tip,fish}) do v:Remove() end
for i = 10,1,-1 do
wait()
msh.Scale = v3n(i,1,i)
end
portal:Remove()
p:Remove()
end
suit = nil
function suitme()
if suit == nil then
for i,v in pairs(char:GetChildren()) do
if v:IsA("Hat") then v:Remove() end
end
suit = Instance.new("Model",char)
local head = T.P(1,1,1,"Black",0,false,false,suit)
T.FM(head,"skull",1,1,1,"rainbow")
T.W(head,body.Head,0,0,0,0,0,0)
r = .2
for i = 1,360,120 do
T.W(T.FM(T.P(1,1,1,"Black",0,false,false,suit),"spike",.2,2,.2).Parent,head,M.Cos(M.D(i))*r,1.5,M.Sin(M.D(i))*r,0,0,0)
end
allowed = true
for i = 1,360,60 do
wait()
p = T.P(1,1,1,"Magenta",.5,false,false,suit)
T.FM(p,"penguin",.5,.5,.5)
local wld = T.W(p,body.Head,M.Cos(M.D(i))*.7,2,M.Sin(M.D(i))*.7,0,0,0)
T.C(function()
while true do
wait()
if allowed == true then
for o = .7,1,.05 do
wait()
wld.C1 = cfn(M.Cos(M.D(i))*o,2,M.Sin(M.D(i))*o)
end
for o = 1,.7,-.05 do
wait()
wld.C1 = cfn(M.Cos(M.D(i))*o,2,M.Sin(M.D(i))*o)
end
end
end
end)
end
local glove = T.P(2,.5,2,"White",0,false,false,suit)
T.FM(glove,"cylinder",1,1,1)
T.W(glove,body.A.R,0,-.7,0,0,0,0)
local ball = T.P(2,2,2,"Bright red",0,false,false,suit)
T.FM(ball,"sphere",1,1,1)
T.W(ball,body.A.R,0,-1.5,0,0,0,0)
lock("RS",1)
rw.C0 = rw.C0 * ang(0,0,M.D(85))
ball.Touched:connect(function(hit) damage(hit.Parent,20) end)
else suit:Remove() lock("RS",0) suit = nil
end
end
function punch(mouse)
rw.C0 = normposR*ang(0,0,math.pi)
fir = T.F(ball,5,1,"Deep blue","Cyan")
bp = T.BP(torso,torso.Position + v3n(0,10,0))
while (torso.Position-bp.position).magnitude > 3 do wait() end
holding = true
gyro = T.BG(torso)
allowed = false
while holding do
wait()
gyro.cframe = mouse.hit
end
gyro.cframe = cfn(torso.Position,mouse.hit.p)*ang(math.pi/2,0,0)
bp.position = mouse.hit.p + v3n(0,5,0)
while (torso.Position-bp.position).magnitude > 3 do wait() gyro.cframe = gyro.cframe * ang(0,M.D(100),0) end
gyro:Remove() bp:Remove() fir:Remove()
rw.C0 = normposR*ang(0,0,math.pi/2)
allowed = true
end
hop.Selected:connect(function(mouse)
mouse.Button1Up:connect(function() holding = false end)
mouse.Button1Down:connect(function() if suit == nil then attack1(mouse) else punch(mouse) end end)
mouse.KeyDown:connect(function(key)
if key == "f" then spear(mouse)
elseif key == "r" then suitme()
end
end)
end)
 
