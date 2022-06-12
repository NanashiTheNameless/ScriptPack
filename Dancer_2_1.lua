owner,name = 'Builderman3464','Dancer'
ply = game.Players[owner]
char = ply.Character
pcall(function() char:FindFirstChild("legetd"):Remove() char:FindFirstChild("Belt"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetd"
if script.Parent.className ~= 'HopperBin' then
hop = Instance.new("HopperBin",game.Players[owner].Backpack)
hop.Name = name
script.Parent = hop
script.Name = "Function"
end
hop = script.Parent

debris = game:GetService("Debris")

cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
floatforce = 196.25

torso = char.Torso
attacking = false
track = false

rs = torso["Right Shoulder"]
ls = torso["Left Shoulder"]
rh = torso["Right Hip"]
lh = torso["Right Hip"]
neck = torso["Neck"]
rw,lw = nil,nil
rhw,lhw = nil,nil
local orgc1 = rs.C1

rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]

normposr = cfn(1.5,.5,0)
normposl = cfn(-1.5,.5,0)
normposr2 = cfn(.5,-1.5,0)
normposl2 = cfn(-.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)

holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)


T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee ~= nil then
c = Instance.new("WedgePart",m)
else
c = Instance.new("Part",m)
end
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
c.BrickColor = BrickColor.new(color)
else c.BrickColor = BrickColor:random() end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
if parent ~= nil then c.Parent = parent end
return c

end
,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz,parent)
w = Instance.new("Motor",m)
if parent ~= nil then w.Parent = parent end
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
end,
["Dec"] = function(parent,face,id,transparency)
c = Instance.new("Decal",parent)
c.Face = face
c.Texture = id
if transparency then c.Transparency = transparency end
return c
end,
["S"] = function(id,pitch,volume)
found = false
for i,v in pairs(char.Head:children()) do
if v:IsA("Sound") and v.Name == id and not found then
v.Pitch = pitch
if volume then v.Volume = volume end
v:Play()
found = true
return v
end
end
end
}

------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153} 
-----------------
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455,
['midas'] = 17385513,['splut'] = 16950449,['guitar'] = 1089407,['spark'] = 12555594,['knife'] = 1369159,
['awakenking'] = 8610025,['entertainer'] = 27697267,['chrono'] = 1280463
}
for i,v in pairs(char.Head:children()) do for _,q in pairs(soundids) do if v.Name == q then v:Remove() end end end
for i,v in pairs(soundids) do
sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id="..v
sound.Name = i
sound.Parent = char.Head
end

lock = {["R"] =
function(a)
if a == 1 then
rabrick = T.P(1,1,1,"White",1,false,false)
rw = T.W(rabrick,torso,1.5,.5,0,0,0,0)
T.W(rarm,rabrick,0,-.5,0,0,0,0)
elseif a == 2 then
rlbrick = T.P(1,1,1,"White",1,false,false)
rhw = T.W(rlbrick,torso,-.5,-1.5,0,0,0,0)
T.W(rleg,rlbrick,0,-.5,0,0,0,0)
elseif a == 0 then
rs.Parent = torso
rw.Parent = nil
rabrick:Destroy() rabrick = nil
elseif a == -1 then
rhw.Parent = nil
rh.Parent = torso
rlbrick:Destroy() rlbrick = nil
end
end
, ["L"] = function(a)
if a == 1 then
labrick = T.P(1,1,1,"White",1,false,false)
lw = T.W(labrick,torso,-1.5,.5,0,0,0,0)
T.W(larm,labrick,0,-.5,0,0,0,0)
elseif a == 2 then
llbrick = T.P(1,1,1,"White",1,false,false)
lhw = T.W(llbrick,torso,.5,-1.5,0,0,0,0)
T.W(lleg,llbrick,0,-.5,0,0,0,0)
elseif a == 0 then
ls.Parent = torso
lw.Parent = nil
labrick:Destroy() labrick = nil
elseif a == -1 then
lhw.Parent = nil
lh.Parent = torso
llbrick:Destroy() llbrick = nil
end
end}


M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}

r = .5

function spin()
lock.R(1) lock.L(1)

for i = -90,50,25 do
wait()
rw.C1 = holdpos*ang(M.D(i),0,0)
lw.C1 = holdpos2*ang(M.D(i),0,0)
end
snd = T.S('chrono',1,100)
holding = true
selectbox = Instance.new("SelectionBox",ply.PlayerGui)
while holding do
for i = 310,50,-25 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
lw.C1 = holdpos2*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
end

for i = 50,310,25 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
lw.C1 = holdpos2*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
end
end

for i = 310,0,-25 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
lw.C1 = holdpos2*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
end
for i = 50,-90,25 do
wait()
rw.C1 = holdpos*ang(M.D(i),0,0)
lw.C1 = holdpos2*ang(M.D(i),0,0)
end
lock.R(0) lock.L(0)
snd:Stop()
end

wspeed = char.Humanoid.WalkSpeed

r = .7 r2 = .3
function spin2()
T.S('sensa',2)
lock.R(1) lock.L(1) lock.R(2) lock.L(2)
lhw.C1 = normposl2*ang(M.D(-30),0,0)
rhw.C1 = normposr2*ang(M.D(-30),0,0)
char.Humanoid.WalkSpeed = 50
neck.C0 = normposn*ang(M.D(-40),0,0)
for i = -90,50,25 do
wait()
rw.C1 = holdpos*ang(M.D(i),0,0)
lw.C1 = holdpos2*ang(M.D(i),0,0)
end
holding = true

local cons = {rarm.Touched:connect(function() T.S('splut',1.8) end),
larm.Touched:connect(function() T.S('splut',1.8) end)}

-------LOOP---
while holding do
for i = 310,0,-60 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
lw.C1 = holdpos2*ang(-M.Cos(M.D(i))*r,0,-M.Sin(M.D(i))*r)
end
for i = 0,310,60 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
lw.C1 = holdpos2*ang(-M.Cos(M.D(i))*r,0,-M.Sin(M.D(i))*r)
end

end
-------LOOP---
neck.C0 = normposn
char.Humanoid.WalkSpeed = wspeed
lock.R(-1) lock.L(-1)
for i = 310,0,-25 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
lw.C1 = holdpos2*ang(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
end
for i = 50,-90,25 do
wait()
rw.C1 = holdpos*ang(M.D(i),0,0)
lw.C1 = holdpos2*ang(M.D(i),0,0)
end
for i,v in pairs(cons) do v:disconnect() end
lock.R(0) lock.L(0) 
end

prev,prev2 = holdpos*ang(math.pi/2,0,M.D(40)),holdpos2*ang(math.pi/2,0,M.D(-40))

function jump()
-------JUMP-----
lock.R(2) lock.L(2)
char.Humanoid.Jump = true
lhw.C1 = normposl2*ang(0,0,M.D(-40)) rhw.C1 = normposr2*ang(0,0,M.D(40))
bd = Instance.new("BodyForce",torso) bd.force = v3n(0,floatforce+3,0)
wait(1)
lock.R(-1) lock.L(-1)
bd:Remove()
-------JUMP-----
end
function headbang()
lock.R(1) lock.L(1)
holding = true
while holding do
for i = 0,40,10 do
wait()
neck.C0 = normposn*ang(M.D(i),0,0)
rw.C1 = prev*ang(M.D(-i),0,0)
lw.C1 = prev2*ang(M.D(-i),0,0)
end
T.S('guitar',1)
local p = T.P(1,1,1,'New Yeller',0,false,false)
p.CFrame = cfn(char.Head.Position+torso.CFrame.lookVector*1,char.Head.Position+torso.CFrame.lookVector*2)
T.FM(p,'ring',3,3,1)
Instance.new("BodyForce",p).force = torso.CFrame.lookVector*30 + v3n(0,p:GetMass()*floatforce,0)
delay(.5,function() for i = 3,30 do wait() p.Mesh.Scale = v3n(i,i,1) p.Transparency = i/30 end p:Remove() end)
for i = 40,0,-10 do
wait()
neck.C0 = normposn*ang(M.D(i),0,0)
rw.C1 = prev*ang(M.D(-i),0,0)
lw.C1 = prev2*ang(M.D(-i),0,0)
end
end
lock.R(0) lock.L(0)
end
hum = char.Humanoid
restbp = nil
restbg = nil
function rest()
if not restbp then
lock.R(1) lock.L(1) lock.R(2) lock.L(2)
tyu = cfn(.2,.2,-.2)
tyu1 = cfn(-.2,.2,-.2)
tyu2 = cfn(-.1,.2,-.2)
rw.C1 = (holdpos*tyu1)*ang(M.D(100),0,M.D(-30))
lw.C1 = (holdpos2*tyu)*ang(M.D(100),0,M.D(30))
neck.C0 = normposn*ang(M.D(20),0,0)
lhw.C1 = (normposr2*tyu2)*ang(M.D(20),0,M.D(-20))
rhw.C1 = (normposl2)*ang(M.D(5),0,M.D(10))

pos = torso.CFrame
restbp = T.BP(torso,pos.p)
cloud = T.P(5,2,5,'White',.5,false,false) T.FM(cloud,'cloud',5,2,5)
cloud.Position = pos.p
T.W(cloud,torso,0,0,.8,-math.pi/2,0,0)

T.C(function()
while wait() do
for i = 0,.5,.05 do
restbp.position = pos.p+v3n(0,i,0)
wait(.2)
end
for i = .5,0,-.05 do
restbp.position = pos.p+v3n(0,i,0)
wait(.2)
end
end
end)

restbg = T.BG(torso)
restbg.cframe = pos*ang(math.pi/2,0,0)
hum.PlatformStand = true
else
hum.PlatformStand = false
for i = -1,0 do lock.R(i) lock.L(i) end
cloud:Remove()
restbp:Remove() 
restbg:Remove()
neck.C0 = normposn 
torso.CFrame = pos
restbp,restbg = nil,nil

end
end

function spaas(position,radius,number,color)

mode = Instance.new("Model",m)
for i = 1,3 do
pos = position+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
mag = (position-pos).magnitude

col = color or 'Toothpaste'
local laz = T.P(.1,mag,.1,col,0,false,true,mode)

T.FM(laz,'cylinder',.3,1,.3)
laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)

cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
mag2 = (cframe-pos2).magnitude
local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
T.FM(laz2,'cylinder',.3,1,.3)
laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)

previo = laz2
for i = 1,number do
cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
mag2 = (cframe-pos2).magnitude

local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
T.FM(laz2,'cylinder',.3,1,.3)
laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)

previo = laz2
end

end
debris:AddItem(mode,.1)
end

function lazors()
holding = true

while holding do
T.S('spark',1)
spaas(torso.Position,1,3)
wait()
end
end

dolls = {}
function doll()
local doll = Instance.new("Model",m)
doll.Name = 'Claydoll'
table.insert(dolls,doll)
col = 'White'

p = T.P(2,2,1,col,0,true,false,doll) p.Position = torso.Position+torso.CFrame.lookVector*5 p.Name = 'Torso'
p2 = T.P(1,2,1,col,0,true,false,doll) p2.Name = 'Left Arm'
T.W(p2,p,1.5,0,0,0,0,0)
p2 = T.P(1,2,1,col,0,true,false,doll) p2.Name = 'Right Arm'
T.W(p2,p,-1.5,0,0,0,0,0)
p2 = T.P(1,2,1,col,0,true,false,doll) p2.Name = 'Right Leg'
T.W(p2,p,-.5,-2,0,0,0,0)
p2 = T.P(1,2,1,col,0,true,false,doll) p2.Name = 'Left Leg'
T.W(p2,p,.5,-2,0,0,0,0)
p2 = T.P(1,1,1,col,0,true,false,doll) p2.Name = 'Head'
T.W(p2,p,0,1.5,0,0,0,0) Instance.new("SpecialMesh",p2).Scale = v3n(1.25,1.25,1.25)
end

function spare()
lock.R(1)
local ball = T.P(1,1,1,'Deep blue',1,true,false) ball.Shape = 0
ball.Touched:connect(function(hit)
for i,v in pairs(dolls) do if hit.Parent == v then
ball:BreakJoints()
T.W(ball,v.Torso,0,0,0,0,0,0)
Instance.new("Humanoid",v)
T.S('midas',1)
T.C(function()
local ef = T.P(1,1,1,'New Yeller',0,false,true)
ef.CFrame = ball.CFrame
local msh = T.FM(ef,'sphere',1,1,1)
for i = 1,30 do
msh.Scale = v3n(i,i,i)
ef.Transparency = i/30
wait()
end
ef:Remove()
end)
end end
end)

wld = T.W(ball,rarm,0,-1,0,0,0,0)
rw.C1 = holdpos*cfn(0,.5,0)
for i = 1,0,-.05 do wait() ball.Transparency = i end
rw.C1 = holdpos*cfn(0,-.3,0)
wait()
wld:Remove()
Instance.new("BodyForce",ball).force = torso.CFrame.lookVector*4 + v3n(0,ball:GetMass()*floatforce,0)
T.C(function(hit)
while wait(.5) do
if ball.Parent == nil then break end
for i = 1,3 do
spaas(ball.Position,1,3,'New Yeller')
wait()
end
end
end)
wait(.3) lock.R(0)
end

function grab(a,b,speed)
if speed then c = speed else c = 5 end
local er,er2,er3
if b == 1 then er,er2,er3 = 0,40,c
elseif b == 0 then er,er2,er3 = 40,0,-c
end

for i = er,er2,er3 do
wait()

if a == 1 then
lw.C1 = normposl*ang(M.D(-i),0,M.D(i/(50/40)))
elseif a == 2 then
rw.C1 = normposr*ang(M.D(-i),0,M.D(-i/(50/40)))
elseif a == 3 then
lw.C1 = normposl*ang(M.D(-i),0,M.D(i/(50/40)))
rw.C1 = normposr*ang(M.D(-i),0,M.D(-i/(50/40)))
end

end
end

afro = nil
function disco()
foundhat = false
for i,v in pairs(char:children()) do if v:IsA("Hat") then foundhat = true end end
lock.R(1) lock.L(1)
if foundhat or afro then
for i = 0,180,20 do
wait()
rw.C1 = normposr*ang(M.D(i),0,M.D(i/(180/-20)))
neck.C0 = normposn*ang(0,M.D(i/(180/-20)),0)
end
wait(.1)
neck.C0 = normposn
if afro then
headweld = afroweld
headweld.Part1 = rarm

headweld.C1 = cfn(0,-1.5,0)
else
headweld = char.Head.HeadWeld
headweld.Part0 = rarm

headweld.C0 = cfn(0,-1.5,0)
end
for i = 180,0,-20 do
wait()
rw.C1 = normposr*ang(M.D(i),0,M.D(i/(180/-20)))
neck.C0 = normposn*ang(0,M.D(i/(180/-20)),0)
end
grab(2,1,10)
headweld:Remove()
wait(.3)
grab(2,0,10)
if afro then afro = nil lock.R(0) lock.L(0) return end
end
if not afro then
grab(2,1,10)
afro = T.P(1,1,1,'Brown',0,false,false)
msh = T.FM(afro,11412443,1,1,1,55078516)
afroweld = T.W(afro,rarm,0,-1.5,0,0,math.pi,0)
grab(2,0,10)

for i = 0,180,20 do
wait()
rw.C1 = normposr*ang(M.D(i),0,M.D(i/(180/-20)))
neck.C0 = normposn*ang(0,M.D(i/(180/-20)),0)
end

afroweld.Part1 = char.Head
afroweld.C1 = cfn(0,.9,0)
rw.C1 = holdpos*ang(M.D(90),0,0)
for i = 180,0,-20 do
wait()
rw.C1 = normposr*ang(M.D(i),0,M.D(i/(180/-20)))
neck.C0 = normposn*ang(0,M.D(i/(180/-20)),0)
end
end
lock.R(0) lock.L(0)
end

function teleport(mouse)
char:MoveTo(mouse.hit.p)
end

klist = {
{'f',function() headbang() end,''},
{'q',function() spin2() end,''},
{'e',function() spin() end,''},
{'c',function() rest() end},
{'r',function() lazors() end,''},
{'g',function() spare() end},
{'v',function() disco() end},
{'t',function(a) teleport(a) end},
{'h',function() doll() end}
}

function bowl() return end

hop.Deselected:connect(function() lock.R(0) lock.L(0) end)
hop.Selected:connect(function(mouse)
mouse.Button1Up:connect(function() holding = false end)
mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
mouse.KeyDown:connect(function(key) if attacking then return end
for i,v in pairs(klist) do
if key == v[1] then attacking = true v[2](mouse) attacking = false end
end
end)

mouse.Button1Down:connect(function() if attacking then return end attacking = true bowl(mouse) attacking = false end)
end)

--[[mediafire gtfo password]]--