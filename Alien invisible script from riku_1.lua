 
ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
attacking = false
track = false
curcam = Workspace.CurrentCamera
name = 'KFM'
 
pcall(function() char:FindFirstChild("legetony"):Remove() char:FindFirstChild("Belt"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetony"
 
cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new
 
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
normposr2 = cfn(-.5,-1.5,0)
normposl2 = cfn(.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
 
holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)
 
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
 
------TOOOOOLS------
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee ~= nil then
c = Instance.new("WedgePart",m)
else
c = Instance.new("Part",m)
end
c.TopSurface,c.BottomSurface = 0,0
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
end
,
["Track"] = function(obj,s,t,lt,color,fade)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position
 
mag = (old-new).magnitude
dist = (old+new)/2
 
local ray = T.P(s,mag+.2,s,obj.Color,t,false,true)
Instance.new("CylinderMesh",ray)
ray.CFrame = CFrame.new(dist,old)*ang(math.pi/2,0,0)
if fade ~= nil then
delay(lt,function()
for i = t,1,fade do wait() ray.Transparency = i end ray:Remove() end)
else
game:GetService("Debris"):AddItem(ray,lt)
end
if color ~= nil then ray.BrickColor = BrickColor.new(color) end
 
end
end)) end
}
--------------------------------------------------
----------------DAMAGE FUNCTION--------------------
function damage(hit,amount,show,del,poikkeus)
for i,v in pairs(hit:GetChildren()) do
if v:IsA("Humanoid") and v.Parent ~= char then
 
amo = 0
function showa(p)
if show == true then
for i,o in pairs(p:GetChildren()) do
if o:IsA("BillboardGui") and o.Name == "satuttava" then
amo = amo+1
end end
 
 
local bbg = Instance.new("BillboardGui",p)
bbg.Adornee = p.Torso
bbg.Name = "satuttava"
bbg.Size = UDim2.new(2,0,2,0)
bbg.StudsOffset = Vector3.new(0,6+amo*2,0)
 
local box = Instance.new("TextLabel",bbg)
box.Size = UDim2.new(1,0,1,0)
box.BackgroundColor = BrickColor.new("White")
box.Text = amount
box.BackgroundTransparency = .5
if amount == 0 then box.Text = "K.O" end
box.Position = UDim2.new(0,0,0,0)
box.TextScaled = true
game:GetService("Debris"):AddItem(bbg,.5)
end
end
 
function dame(q)
if poikkeus ~= nil then
for _,u in pairs(poikkeus) do
if q.Parent.Name ~= u then
showa(q)
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - amount
end
end
elseif poikkeus == nil then
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - amount
showa(q)
end
end
 
if del ~= nil then
local find = v.Parent:FindFirstChild("hitted")
if find == nil then
dame(v)
val = Instance.new("BoolValue",v.Parent)val.Name="hitted"
game:GetService("Debris"):AddItem(val,del)
end
elseif del == nil then
dame(v)
 
end
 
end
end
end
-----------------------------------------------------------------
 
------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153} 
-----------------
 
---MATH SHORTENINGS---
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
 
for i,v in pairs(char:GetChildren()) do
if v:IsA("Clothing") or v:IsA("Hat") then v:Remove()
end end
 
col = char:FindFirstChild("Body Colors")
if col == nil then col = Instance.new("BodyColors",char) end
collist = {
{'LeftLegColor',"Really black"},
{'RightLegColor',"Really black"},
{'TorsoColor',"Deep orange"},
{'LeftArmColor',"Deep orange"},
{'RightArmColor',"Deep orange"},
}
for i,v in pairs(collist) do
col[v[1]] = BrickColor.new(v[2])
end
 
bracs = Instance.new("Model",m)
for i,v in pairs({rarm,larm}) do
b1 = T.P(1.1,.3,1.1,'Brown',0,false,false,bracs)
b1.Material = 'DiamondPlate' b1.Name = 'a'
T.W(b1,v,0,-.5,0,0,0,0)
p = T.P(.3,.4,.3,'Really blue',0,false,false,bracs) T.W(p,b1,0,0,.55,0,0,0)
p = T.P(.3,.4,.3,'Really blue',0,false,false,bracs) T.W(p,b1,0,0,-.55,0,0,0)
p = T.P(.3,.4,.3,'Really blue',0,false,false,bracs) T.W(p,b1,.55,0,0,0,math.pi/2,0)
p = T.P(.3,.4,.3,'Really blue',0,false,false,bracs) T.W(p,b1,-.55,0,0,0,math.pi/2,0)
for i,v in pairs(bracs:children()) do if v.Name ~= 'a' then v.Material = 'Ice' end end
end
 
--------MAKING--------------------
h1 = T.P(1.5,1.5,1.5,'Deep orange',0,false,false)
T.FM(h1,'sphere',1,1,1)
T.W(h1,char.Head,0,0,0,0,0,0)
 
e1 = T.P(.5,.5,.5,'White',0,false,false) T.FM(e1,'sphere',1,1,1)
e2 = T.P(.5,.5,.5,'White',0,false,false) T.FM(e2,'sphere',1,1,1)
e1w=T.W(e1,h1,.35,0,-.55,0,0,0) T.W(e2,h1,-.35,0,-.55,0,0,0)
 
dec = Instance.new("Decal")
dec.Face = 'Front'
dec.Texture = "http://www.roblox.com/asset/?id=61173164"
 
b2 = T.P(2.1,.5,1.1,'Really blue',0,false,false)
T.W(b2,torso,0,-1,0,0,0,0)
 
char.Head.Transparency = 1
-----------------------------------
 
function colorslide(obj,prop,scol,ecol,timme,override)
if scol == 'cur' then scol3 = obj.BrickColor.Color else
scol3 = BrickColor.new(scol).Color
end
ecol3 = BrickColor.new(ecol).Color
 
for i = 0,1,timme do
wait()
pos = v3n(scol3.r,scol3.g,scol3.b):Lerp(v3n(ecol3.r,ecol3.g,ecol3.b),i)
obj[prop] = Color3.new(pos.x,pos.y,pos.z)
end
 
end
 
function checkplayers(pos,radius,what)
tab = {}
for i,v in pairs(Workspace:GetChildren()) do
if v:IsA("Model") and v ~= char then
for _,q in pairs(v:GetChildren()) do
if q:IsA("Humanoid") then
if (q.Torso.Position-pos).magnitude <= radius then
if what == 'char' then table.insert(tab,q.Parent)
elseif what == 'humanoid' then table.insert(tab,q)
end
end end end end end
return tab
end
 
function rage()
tyu = cfn(0,.2,-.5)
lock.R(1) lock.L(1)
neck.C0 = normposn
for i = 0,140,10 do
wait()
rw.C1 = (normposr*tyu)*ang(M.D(i),0,M.D(i/(140/-50)))
lw.C1 = (normposl*tyu)*ang(M.D(i),0,M.D(i/(140/50)))
neck.C0 = normposn*ang(M.D(i/(140/30)),0,0)
end
 
wait(1)
 
for i = 140,50,-20 do
wait()
rw.C1 = (normposr)*ang(M.D(-i),0,M.D(i))
lw.C1 = (normposl)*ang(M.D(-i),0,M.D(-i))
end
neck.C0 = normposn*ang(M.D(-30),0,0)
 
fire = T.F(torso,30,30,'Bright red','Magenta')
 
ef = T.P(1,1,1,'Really red',0,false,false)
ew = T.W(ef,torso,0,0,0,0,0,0,ef)
msh = T.FM(ef,'sphere',1,1,1)
for i = 0,20 do wait() ef.Transparency = i/20 msh.Scale = v3n(i,i,i)
T.C(function()
tabb = checkplayers(ef.Position,20,'char')
if #tabb > 0 then
for i,v in pairs(tabb) do damage(v,10,true,.2) end
end
end)
end
msh:Remove()
 
for i = 30,8,-1 do
wait() fire.Size = i
end
colorslide(fire,'Color','Bright red','Deep blue',.05)
 
lock.R(0) lock.L(0) neck.C0 = normposn
 
end
 
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = name
 
holdpos = normposr*ang(math.pi/2,0,0)
port,port2,bol,boltime = nil,nil,false,1
 
function hide()
if char.Parent ~= curcam then
char.Parent = curcam
hop.Name = name..'(h)'
else char.Parent = Workspace
hop.Name = name
end
end
 
function makeport1()
if not port then --- Blue portal
circle()
port = Instance.new("Model",Workspace)
port.Name = 'omakotikullankallis'
ring = T.P(1,1,1,'Deep blue',0,false,true,port) T.FM(ring,'ring',4,4,1)
ring.CFrame = torso.CFrame * cfn(0,0,-4)
mir = T.P(3.5,.1,3.5,ring.BrickColor.Name,.5,false,true,port) T.FM(mir,'cylinder',1,1,1)
mir.CFrame = ring.CFrame*ang(math.pi/2,0,0)
mir.Touched:connect(function(hit) local hum = hit.Parent:FindFirstChild("Humanoid")
if hum ~= nil and hum.Parent == char and port2 and not bol then bol = true
hit.Parent:MoveTo(mir2.Position) wait(boltime) bol = false
end end) ---- On touch event for blue portal
 
elseif port then ring.CFrame = torso.CFrame * cfn(0,0,-4)
mir.CFrame = ring.CFrame*ang(math.pi/2,0,0)
 
end
end
 
function makeport2()
if not port2 then
circle()
port2 = Instance.new("Model",Workspace)
port2.Name = 'omakotikullankallis'
ring2 = T.P(1,1,1,'Neon orange',0,false,true,port2) T.FM(ring2,'ring',4,4,1)
ring2.CFrame = torso.CFrame * cfn(0,0,-4)
mir2 = T.P(3.5,.1,3.5,ring2.BrickColor.Name,.5,false,true,port2) T.FM(mir2,'cylinder',1,1,1)
mir2.CFrame = ring2.CFrame*ang(math.pi/2,0,0)
 
mir2.Touched:connect(function(hit) local hum = hit.Parent:FindFirstChild("Humanoid")
if hum ~= nil and hum.Parent == char and port and not bol then bol = true
hit.Parent:MoveTo(mir.Position) wait(boltime) bol = false
end end) ---- On touch event for orange portal
 
elseif port2 then ring2.CFrame = torso.CFrame * cfn(0,0,-4)
mir2.CFrame = ring2.CFrame*ang(math.pi/2,0,0)
end
end
holdpos2 = normposl*ang(math.pi/2,0,0)
function punch()
fires = {}
lock.R(1) lock.L(1)
for i,v in pairs(bracs:children()) do
if v.Name ~= 'a' then table.insert(fires,T.F(v,.5,.5,'White','Black')) end
end
sticks = Instance.new("Model",m)
 
rr = .5
for _,v in pairs({rarm,larm}) do
for _,pos in pairs({ {0,-rr}, {0,rr}, {rr,0}, {-rr,0} }) do
stick = T.P(.3,.3,2.5,'Really blue',.5,false,false,sticks)
stick.Touched:connect(function(hit) damage(hit.Parent,10000,true,.05) end)
T.W(stick,v,pos[1],-.6,pos[2],-math.pi/2,0,0)
end end
for i = 1,10 do
rw.C1 = holdpos*cfn(0,.5,0)
lw.C1 = (holdpos2*cfn(0,-.5,0))*ang(0,0,M.D(30))
wait(.05)
rw.C1 = (holdpos*cfn(0,-.5,0))*ang(0,0,M.D(-30))
lw.C1 = holdpos2*cfn(0,.5,0)
wait(.05)
end
sticks:Remove() for _,v in pairs(fires) do v:Remove() end
lock.R(0) lock.L(0)
end
 
Workspace.ChildRemoved:connect(function(child)
if child == port then port = nil
elseif child == port2 then port2 = nil
end end)
 
function removeports()
if port then port:Remove() port = nil end
if port2 then port2:Remove() port2 = nil end
for i,v in pairs(Workspace:GetChildren()) do if v.Name == 'omakotikullankallis' then v:Remove() end end
end
 
function circle()
r = .5
lock.R(1)
for i = 0,90,10 do wait() rw.C1 = normposr*ang(M.D(i),0,0) end
 
for i = 0,360,25 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(-i))*r,0,M.Sin(M.D(-i))*r)
end
 
for i = 90,0,-10 do wait() rw.C1 = normposr*ang(M.D(i),0,0) end
lock.R(0)
 
end
Workspace.ChildRemoved:connect(function(child) if child == port then port = nil elseif child == port2 then port2 = nil end end) --- Nill's portals if they dont exist
 
function bowl(mouse)
colorslide(e1,'Color','cur','Really red',.05)
dec.Parent = e1
light = T.P(1,2,1,'Really red',.8,false,false)
light.Touched:connect(function(hit) damage(hit.Parent,10000,false,1) end)
T.FM(light,'spike',.5,2,.5)
T.W(light,e1,0,0,-1,math.pi/2,0,0)
holding = true
posa = e1.Position
while holding do
wait()
 
lv = char.Head.CFrame.lookVector
pos3 = ((posa-mouse.hit.p).unit):Cross(lv)
e1w.C1 = cfn(.35,0,-.55)*ang(0,pos3.Y,0)
end
light:Remove()
colorslide(e1,'Color','cur','White',.05) e1w.C1 = cfn(.35,0,-.55)
dec.Parent = nil
end
 
sitbp = nil
function sit()
if sitbp == nil then
lock.R(2) lock.L(2)
sitbp = T.BP(torso,torso.Position)
for i = 1,90,5 do
wait()
rhw.C1 = normposr2*ang(M.D(i),0,M.D(i/(90/-30)))
lhw.C1 = normposl2*ang(M.D(i),0,M.D(i/(90/30)))
sitbp.position = torso.Position - v3n(0,i/(90),0)
end
elseif sitbp ~= nil then
for i = 90,1,-5 do
wait()
rhw.C1 = normposr2*ang(M.D(i),0,M.D(i/(90/-30)))
lhw.C1 = normposl2*ang(M.D(i),0,M.D(i/(90/30)))
sitbp.position = torso.Position + v3n(0,i/(90),0)
end
lock.R(-1) lock.L(-1)
sitbp:Remove() sitbp = nil
end
end
 
function freemyself()
for i,v in pairs(char:GetChildren()) do
for _,o in pairs(v:GetChildren()) do
for _,q in pairs({'BodyPosition','BodyForce','BodyVelocity','BodyGyro'}) do
if o:IsA(q) then o:Remove() end
end
if o:IsA("Part") then
o.Anchored = false end
end
end
sk = T.P(1,1,1,'New Yeller',0,false,false)
T.W(sk,torso,0,0,0,0,0,0,sk)
msh = T.FM(sk,'skull',3,3,3)
for i = 0,1,.05 do wait() sk.Transparency = i end sk:Remove()
end
 
function breake()
welds = {}
bps = {}
possa = torso.Position
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
 
klist = {
{'f',function() rage() end},
{'q',function() makeport1() end},
{'e',function() makeport2() end},
{'r',function() removeports() end},
{'c',function(a) punch(a) end},
{'x',function() sit() end},
{'z',function() freemyself() end},
{'v',function() hide() end},
{'g',function() breake() end,''}
}
 
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
 
