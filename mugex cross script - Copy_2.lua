

---Made by mugex----------------------------------------------------- 
name = 'Cross' 
PLAYERS = game:GetService('Players') 
ply = PLAYERS.LocalPlayer 
char = ply.Character 
pcall(function() char:FindFirstChild("legetdg"):Remove() end) 
m = Instance.new("Model",char) m.Name = "legetdg" 
hop = Instance.new("HopperBin",ply.Backpack) 
hop.Name = name 
debris = game:GetService("Debris") 
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new 
floatforce = 196.25 
torso,head = char.Torso,char.Head 
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
normposl2 = cfn(.5,-1.5,0) 
normposr2 = cfn(-.5,-1.5,0) 
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0) 
holdpos = normposr*ang(math.pi/2,0,0) 
holdpos2 = normposl*ang(math.pi/2,0,0) 
function genNew(ClassName, Parent, Properties) 
local nObj = Instance.new(ClassName, Parent) 
if Properties["FormFactor"] then 
nObj["FormFactor"] = Properties["FormFactor"] 
end 
for Prop, Value in pairs(Properties) do 
nObj[Prop] = Value 
end 
return nObj 
end 
genNew('Part',Workspace,{ 
Size = Vector3.new(1,1,1); 
BrickColor = BrickColor.new'Really red'; 
}) 
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee) 
if typee == 'wedge' then 
c = Instance.new("WedgePart",m) 
elseif typee == 'seat' then 
c = Instance.new("Seat",m) 
elseif typee == 'vseat' then 
c = Instance.new("VehicleSeat",m) 
else 
c = Instance.new("Part",m) 
end 
c.TopSurface,c.BottomSurface = 0,0 
c.Locked = true 
c.formFactor = "Custom" 
c.Size = Vector3.new(x,y,z) 
if color ~= "random" then 
c.BrickColor = BrickColor.new(color) 
else c.BrickColor = BrickColor:random() 
end 
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
elseif meshid == 'block' then 
mesh = Instance.new("BlockMesh",parent) 
mesh.Scale = Vector3.new(x,y,z) 
return mesh 
end 
mesh = Instance.new("SpecialMesh",parent) 
if meshid == 'wedge' then 
mesh.MeshType = 'Wedge' 
elseif meshid == 'sphere' then 
mesh.MeshType = 3 
elseif type(meshid) == "number" then 
mesh.MeshId = "rbxassetid://"..meshid 
else 
mesh.MeshId = "rbxassetid://"..meshids[meshid] 
end 
mesh.Scale = Vector3.new(x,y,z) 
if meshtexture then 
if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else 
mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end 
end 
return mesh 
end, 
["Dec"] = function(parent,face,id,transparency) 
c = Instance.new("Decal",parent) 
c.Face = face 
c.Texture = id 
if transparency then c.Transparency = transparency end 
return c 
end, 
["S"] = function(id,pitch,volume,parent) 
cur = nil 
found = false 
if type(id) == 'string' then 
for i,v in pairs(char.Head:children()) do 
if v:IsA("Sound") and v.Name == id and not found then 
cur = v 
if parent then cur = v:Clone() cur.Parent = parent end 
cur.Pitch = pitch 
if volume then cur.Volume = volume end 
cur:Play() 
found = true 
return cur 
end 
end 
elseif type(id) == 'number' then 
local a = char.Head:FindFirstChild('exteo') 
a.SoundId = 'rbxassetid://'..id 
a.Pitch = pitch 
if volume then a.Volume = volume end 
a:Play() 
return a 
end 
end 
} 
------MESHIDS--- 
meshids = {["penguin"] = 15853464, ["ring"] = 3270017, 
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761, 
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605, 
["fist"]  = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] =  9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] =  15929962,["spiral"] = 1051557, 
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549}---some meshids 
textureids  = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733,  ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153} 
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455, 
['midas'] = 17385513; 
['spark'] = 10756118; 
['boom'] = 10730819; 
['plank'] = 10548112; 
['harmonica1'] = 33069371; 
['harmonica2'] = 33069412; 
['thump'] = 10730819; 
} 
for i,v in pairs(soundids) do 
for _,q in pairs(char.Head:children()) do 
if q.Name == i then q:Remove() end 
end 
end 
for i,v in pairs(soundids) do 
sound = Instance.new("Sound") 
sound.SoundId = "http://www.roblox.com/asset/?id="..v 
sound.Name = i 
sound.Parent = char.Head 
end 
M = {["R"] = function(a,b) return math.random(a,b) end, 
["Cos"] = function(a) return math.cos(a) end, 
["Sin"] = function(a) return math.sin(a) end, 
["D"] = function(a) return math.rad(a) end 
} 
for i,v in pairs(char:children()) do 
if v:IsA("Hat") then v:Remove() end 
end 
hat = T.P(1,1,1,'White',0,false,false) 
T.FM(hat,64445837,1.05,1,1.1,64445853) 
T.W(hat,char.Head,0,0,-.2,0,0,0) 
hat = T.P(1,1,1,'White',0,false,false) 
T.FM(hat,'cone',1.1,1,1.1,'cone') 
T.W(hat,char.Head,0,1.6,.1,0,0,0) 
hat = T.P(1,1,1,'White',0,false,false) 
T.FM(hat,13070796,1,1,1,'rainbow') 
T.W(hat,char.Head,0,-.2,.05,M.D(5),0,0) 
function l(a,x,y,z,b) 
if b == nil then 
return a.CFrame*cfn(x,y,z) 
else 
return a*cfn(x,y,z) 
end 
end 
function damage(hit,amount,delay) 
for i,v in pairs(hit:children()) do 
if v:IsA("Humanoid") and v.Parent ~= char then 
if delay then 
local found = v:FindFirstChild('tag') 
if not found then 
local a = Instance.new("StringValue",v) 
a.Name = 'tag' 
debris:AddItem(a,delay) 
v.Health = v.Health - amount 
end 
else v.Health = v.Health - amount 
end 
end 
end 
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
end 
} 
hdl = T.P(.3,1,.3,'Black',0,false,false) 
T.W(hdl,rarm,0,-1,0,math.pi/2,0,0) 
pp = T.P(.3,1,.3,'Black',0,false,false) 
T.W(pp,hdl,0,0,0,0,0,math.pi/2) 
function lightning(startpos,endpos,times,offse,livetime,col,dmg) 
local curpos = startpos 
for i = 1,times do 
mag = (startpos-endpos).magnitude offs = {-offse,offse} 
offset = v3n(offs[M.R(1,2)],offs[M.R(1,2)],offs[M.R(1,2)]) 
laz = T.P(.1,.1,mag/times,col,0,false,true,m) 
if dmg then laz.Touched:connect(function(hit) damage(hit.Parent,dmg[1],dmg[2]) end) end 
apos = (cfn(curpos,endpos)*cfn(0,0,-mag/times)).p+offset 
if times == i then 
mag2 = (curpos-endpos).magnitude 
laz.Size = v3n(.1,.1,mag2) 
laz.CFrame = cfn(curpos,endpos)*cfn(0,0,-mag2/2) 
else 
laz.CFrame = cfn(curpos,apos)*cfn(0,0,-mag/times/2) 
end 
curpos = laz.CFrame*cfn(0,0,-mag/times/2).p debris:AddItem(laz,livetime) 
end 
end 
function attack() 
holding = true 
lock.R(1) 
cross = Instance.new("Model",m) 
bg = T.BG(char.Head) cf = bg.cframe 
center = T.P(.9,.9,.9,'White',0,false,false,cross) 
cw=T.W(center,hdl,0,0,0,0,0,0) 
p2 = T.P(.6,1,.6,'New Yeller',0,false,false,cross) 
w1=T.W(p2,center,0,0,0,0,0,0) 
p3 = T.P(.6,1,.6,'New Yeller',0,false,false,cross) 
w2=T.W(p3,center,0,0,0,0,0,math.pi/2) 
for i = 0,1,.1 do 
rw.C1 = normposr*ang(0,0,M.D(90*i)) 
neck.C0 = normposn*ang(0,0,M.D(-60*i)) 
bg.cframe = cf*ang(0,M.D(30*i),0) 
p2.Size,p3.Size = v3n(.6,5*i,.6),v3n(.6,5*i,.6) 
w1.Part1,w2.Part1 = center,center 
w1.Parent,w2.Parent = m,m 
cw.C1 = cfn(0,0,2*i) 
wait() 
end 
while holding do 
T.S('spark',1) 
poslist = { 
p2.CFrame*cfn(0,2.5,0),p2.CFrame*cfn(0,-2.5,0),p3.CFrame*cfn(0,2.5,0),p3.CFrame*cfn(0,-2.5,0) } 
for _,v in pairs(poslist) do 
ray = Ray.new(v.p,cfn(v.p,(center.CFrame*cfn(0,0,50)).p).lookVector*50) 
local obj,pos = Workspace:FindPartOnRay(ray,m) 
if obj ~= nil then damage(obj.Parent,10,.1) 
lightning(v.p,(center.CFrame*cfn(0,0,(center.Position-pos).magnitude)).p,3,1,.1,'Deep blue') 
else 
lightning(v.p,(center.CFrame*cfn(0,0,50)).p,3,1,.1,'Deep blue') 
end 
end 
wait() 
end 
for i = 1,0,-.1 do 
rw.C1 = normposr*ang(0,0,M.D(90*i)) 
neck.C0 = normposn*ang(0,0,M.D(-60*i)) 
bg.cframe = cf*ang(0,M.D(30*i),0) 
p2.Size,p3.Size = v3n(.6,5*i,.6),v3n(.6,5*i,.6) 
w1.Part1,w2.Part1 = center,center 
w1.Parent,w2.Parent = m,m 
cw.C1 = cfn(0,0,2*i) 
wait() 
end 
lock.R(0) 
cross:Remove() bg:Remove() 
end 
function bre() 
welds = {} 
for i,v in pairs(torso:children()) do 
if v:IsA("Motor6D") then table.insert(welds,v) v.Parent = nil 
end 
end 
for _,v in pairs(char:children()) do 
if v:IsA("BasePart") then v.CanCollide = true end 
end 
local hum = char.Humanoid 
hum.Parent = nil 
holding = true 
while holding do wait() end 
for i,v in pairs(welds) do 
v.Parent = torso 
v.Part1 = v.Part1 
end 
hum.Parent = char 
end 
longneck = _ 
function nec() 
if not longneck then 
local snd = T.S('harmonica1',1.5) 
wait(1.5/1.5) 
longneck = T.P(1,10,1,'Cool yellow',false,false) 
longneck.Position = torso.Position 
T.FM(longneck,'cylinder',1,1,1) 
T.W(longneck,torso,0,6,0,0,0,0) 
neck.C0 = normposn*cfn(0,0,10) 
else 
T.S('harmonica2',1.5) 
longneck:Remove() longneck = _ 
neck.C0 = normposn 
end 
end 
function aq() 
a = 0 holding = true 
while holding do 
a = a+1 
wait(1) 
end 
print(a) 
end 
function LOL(mouse) 
a = true 
lock.R(1) lock.L(1) 
for i = 0,1,.1 do 
rw.C1 = normposr*ang(M.D(150*i),0,M.D(20*i)) 
lw.C1 = normposl*ang(M.D(150*i),0,M.D(-20*i)) 
wait() 
end 
T.C(function() 
while a do wait() 
p = T.P(1.5,1.5,1.5,'Lime green',.5,false,true) 
p.CFrame = l(rarm,0,-1,0)*ang(M.R(-10,10),M.R(-10,10),M.R(-10,10)) 
debris:AddItem(p,.2) 
p = T.P(1.5,1.5,1.5,'Lime green',.5,false,true) 
p.CFrame = l(larm,0,-1,0)*ang(M.R(-10,10),M.R(-10,10),M.R(-10,10)) 
debris:AddItem(p,.2) 
end 
end) 
holding = true 
while holding do 
char.Humanoid.Health = char.Humanoid.Health+10 
wait() 
end 
a = false 
for i = 1,0,-.1 do 
rw.C1 = normposr*ang(M.D(150*i),0,M.D(20*i)) 
lw.C1 = normposl*ang(M.D(150*i),0,M.D(-20*i)) 
wait() 
end 
lock.R(0) lock.L(0) 
end 
bow = _ 
function cannon() 
if not bow then 
lock.R(1) 
bow = Instance.new("Model",m) 
q = T.P(1,2,1,'Brown',0,false,false,bow) 
T.FM(q,'cylinder',1,1,1) 
T.W(q,rarm,0,-2,0,0,0,0) 
rw.C1 = holdpos 
q2 = T.P(.9,.1,.9,'Black',0,false,false,bow) 
T.W(q2,q,0,-1,0,0,0,0) 
T.FM(q2,'cylinder',1,1,1) 
r = 1 
for i = 1,360,30 do 
q3 = T.P(1,1,1,'Deep blue',0,false,false,bow) 
T.FM(q3,'diamond',.5,2,.5) 
wld1 = T.W(q3,q,M.Cos(M.D(i))*r,1,M.Sin(M.D(i))*r,math.pi/2,0,math.pi/2+M.D(i)) 
wld1.C1 = wld1.C1*ang(M.D(30),0,0) 
end 
elseif bow then 
lock.R(0) bow:Remove() bow = nil 
end 
end 
function findplayers(a,b) 
list = {} 
for _,v in pairs(Workspace:children()) do 
if v:IsA("Model") then 
for _,child in pairs(v:children()) do 
if child:IsA("Humanoid") then 
if (a-child.Torso.Position).magnitude < b then 
table.insert(list,child.Parent) 
end 
end 
end 
end 
end 
return list 
end 
function shoot() 
for i = 1,1 do 
T.S('flintlock',1) 
local ball = T.P(2,2,2,'White',0,false,true) 
ball.Shape = 0 
ray = Ray.new(q2.Position,cfn(q2.Position,(q2.CFrame*cfn(0,-20,0)).p).lookVector*50) 
local obj,pos = Workspace:FindPartOnRay(ray,m) 
pos2 = q2.CFrame 
local mag 
rw.C1 = holdpos*ang(M.D(30),0,0) 
if obj then mag = (pos2.p-pos).magnitude else mag = 50 end 
for i = 0,mag,mag/3 do 
ball.CFrame = pos2*cfn(0,-i,0) 
wait() 
end 
local mp = T.P(1,1,1,'Black',0,false,true) 
mp.CFrame = ball.CFrame 
local mp2 = T.P(1,1,1,'Black',0,false,true) 
mp2.CFrame = ball.CFrame 
rw.C1 = holdpos 
ball:Remove() 
local msh = T.FM(mp,'sphere',1,1,1) 
local msh2 = T.FM(mp2,'ring',1,1,1) 
for i,v in pairs(findplayers(mp.Position,15)) do 
damage(v,20,.1) 
end 
T.C(function() 
local p = T.P(1,1,1,'Black',0,false,true) 
p.CFrame = l(q2,0,0,0) 
local msh = T.FM(p,'crown',1,1,1) 
for i = 1,5,.5 do 
wait() 
msh.Scale = v3n(i,1,i) 
p.Transparency = i/5 
end 
p:Remove() 
end) 
T.C(function() 
T.S('thump',1) 
for i = 1,30 do 
wait() 
msh.Scale = v3n(i,i,i) 
mp.Transparency = i/30 
mp2.Transparency = i/30 
msh2.Scale = v3n(i,i,1) 
mp2.CFrame = mp.CFrame*ang(M.D((360/30)*i),0,0) 
end 
mp2:Remove() mp:Remove() 
end) 
end 
end 
function spiral() 
ray = Ray.new(q2.Position,cfn(q2.Position,(q2.CFrame*cfn(0,-20,0)).p).lookVector*100) 
local obj,pos = Workspace:FindPartOnRay(ray,m) 
cf = q2.CFrame*ang(0,math.pi/2,0) 
if obj then mag = (cf.p-pos).magnitude else mag = 100 end 
for i = 1,mag,mag/20 do o = mag/20 
lol,lol2 = M.Sin(150*i),M.Sin(150*i) 
for _,v in pairs({{0,1},{0,-1}}) do 
q = T.P(1,o,1,'New Yeller',0,false,true) 
q.CFrame = l(cf,lol*v[1],-i,lol*v[2],'') 
end 
wait() 
end 
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
lhw.C1 = (normposl2*tyu2)*ang(M.D(20),0,M.D(-20)) 
rhw.C1 = (normposr2)*ang(M.D(5),0,M.D(10)) 
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
function sel() 
if bow then shoot() 
else attack() 
end 
end 
klist = { 
{'f',function(a) if bow then spiral() else LOL(a) end end,''}; 
{'q',function() cannon() end}; 
{'e',function() bre() end,''}; 
{'r',function() nec() end}; 
{'c',function() rest() end}; 
} 
hop.Selected:connect(function(mouse) 
mouse.Button1Up:connect(function() holding = false end) 
mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end) 
mouse.KeyDown:connect(function(key) if attacking then return end 
for i,v in pairs(klist) do 
if key == v[1] then attacking = true v[2](mouse) attacking = false end 
end 
end) 
mouse.Button1Down:connect(function() if attacking then return end attacking = true sel(mouse) attacking = false end) 
end) 
--mediafire 
 
