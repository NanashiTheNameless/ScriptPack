:ls --MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 5,316, and 320 and put your name where it says "YOUR NAME HERE"



jun = game.Players.luxulux
Stuff = false 
--password 
function ssj() 
if Stuff == false then 
Stuff = true 
for u, c in pairs (jun.Character:GetChildren()) do 
if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then 
c.Handle.Transparency = 1 
end 
end 
Hair22 = Instance.new("Part")
Hair22.Parent = jun.Character
Hair22.Name = "Hair"
Hair22.formFactor = "Symmetric"
Hair22.Size = Vector3.new(1, 1, 1)
Hair22.CFrame = jun.Character.Head.CFrame
Hair22:BreakJoints()
Hair22.CanCollide = false
Hair22.TopSurface = "Smooth"
Hair22.BottomSurface = "Smooth"
Hair22.BrickColor = BrickColor.new("Bright yellow")
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Head 
Weld.Part1 = Hair22
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(0, 0.26, 0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair22
Mesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
Mesh.Scale = Vector3.new(1, 1, 1)
Hair2 = Instance.new("Part")
Hair2.Parent = jun.Character
Hair2.Name = "Hair"
Hair2.formFactor = "Symmetric"
Hair2.Size = Vector3.new(0,10,0)
Hair2.CFrame = jun.Character.Head.CFrame
Hair2:BreakJoints()
Hair2.CanCollide = false
Hair2.TopSurface = "Smooth"
Hair2.BottomSurface = "Smooth"
Hair2.BrickColor = BrickColor.new("White")
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Torso
Weld.Part1 = Hair2
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(0, .26, 1.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair2
Mesh.MeshId = "http://www.roblox.com/asset/?id=19367744"
Mesh.TextureId = "http://www.roblox.com/asset/?id=19367734"
Mesh.Scale = Vector3.new(1.5,1.5,1.5)
BlastRing = Instance.new("Part") 
BlastRing.Parent = game.Lighting 
BlastRing.Name = "Blast" 
BlastRing.formFactor = "Symmetric" 
BlastRing.Size = Vector3.new(1, 1, 1) 
BlastRing.CanCollide = false 
BlastRing.TopSurface = "Smooth" 
BlastRing.BottomSurface = "Smooth" 
BlastRing.BrickColor = BrickColor.new("Bright yellow") 
BlastRing.Reflectance = 0 
BlastRing.Anchored = true 
Mesh2 = Instance.new("SpecialMesh") 
Mesh2.Parent = BlastRing 
Mesh2.MeshType = "FileMesh" 
Mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
Mesh2.Scale = Vector3.new(1, 5.8, 1) 
blastring2 = BlastRing:clone() 
Hair4 = Instance.new("Part")
Hair4.Parent = jun.Character
Hair4.Name = "Hair"
Hair4.CanCollide = false
Hair4.Locked = true
Hair4.TopSurface = "Smooth"
Hair4.BottomSurface = "Smooth"
Hair4.formFactor = "Symmetric"
Hair4.BrickColor = BrickColor.new("Bright yellow")
Hair4.CFrame = jun.Character.Torso.CFrame
Hair4.Size = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = jun.Character.Head
Weld.Part0 = jun.Character.Head
Weld.Part1 = Hair4
Weld.C0 = CFrame.new(0, 1, 0)
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair4
Mesh.Scale = Vector3.new(1.15, 1.8, 1.26)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
Mesh.TextureId = ""
Effect = Instance.new("Part") 
Effect.Parent = jun.Character 
Effect.Anchored = true 
Effect.CanCollide = false 
Effect.Size = Vector3.new(1, 1, 1) 
Effect.formFactor = "Symmetric" 
Effect.Transparency = 0.5 
Effect.BrickColor = BrickColor.new("Deep blue") 
Effect.Reflectance = 0.3 
Effect.TopSurface = "Smooth" 
Effect.BottomSurface = "Smooth" 
EffectMesh = Instance.new("CylinderMesh") 
EffectMesh.Parent = Effect 
EffectMesh.Scale = Vector3.new(1, 100, 1) 
blastring2.Parent = jun.Character 
blastring2.Position = jun.Character.Torso.Position 
blastring2.BrickColor = BrickColor.new("Deep blue") 
blastring2.Transparency = 0.7 
blastring2.Reflectance = 0 
jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, -0.5, -1) 
for i = 1 , 20 do 
Effect.CFrame = CFrame.new(jun.Character.Torso.Position) 
blastring2.CFrame = CFrame.new(jun.Character.Torso.Position) * CFrame.new(0, 0.5, -0.8) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(0.7, 0, 0.7) 
wait(0.001) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(-0.7, 0, -0.7) 
wait(0.001) 
end 
blastring2.BrickColor = BrickColor.new("Lime green") 
Effect.BrickColor = BrickColor.new("Lime green") 
for i = 1 , 20 do 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(0.7, 0, 0.7) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
wait(0.001) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(-0.7, 0, -0.7) 
wait(0.001) 
end 
Effect:remove() 
blastring2:remove() 
lol = Instance.new("Explosion") 
lol.Parent = game.Workspace 
lol.Position = jun.Character.Torso.Position 
lol.BlastRadius = 10 
lol.BlastPressure = 0 
--[[ex = Instance.new("Explosion") 
ex.Position = jun.Character.Torso.Position 
ex.BlastPressure = 0 
ex.Parent = workspace]] 
jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, 0.1, 0) 
for i = 1 , 20 do 
Effect.CFrame = CFrame.new(jun.Character.Torso.Position) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
Effect.Transparency = Effect.Transparency + 0.01 
wait(0.05) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
Effect.BrickColor = BrickColor.new("Really blue") 
wait(0.05) 
end 
Effect:Remove() 
game.Lighting.TimeOfDay = 15 
game.Lighting.FogEnd = 10000 
if jun.Character.Torso:findFirstChild("PwnFire") == nil then 
local pie = Instance.new("Fire") 
pie.Name = "PwnFire" 
pie.Parent = jun.Character.Torso 
pie.Size = 13 
pie.Color = BrickColor.new("Really blue").Color 
pie.SecondaryColor = BrickColor.new("Lime green").Color 
end 
if jun.Character.Torso:findFirstChild("PwnSparkles") == nil then 
pie = Instance.new("Sparkles") 
pie.Name = "PwnSparkles" 
pie.Parent = jun.Character.Torso 
pie.SparkleColor = BrickColor.new("New Yeller").Color 
end 
jun.Character.Humanoid.MaxHealth = 350 
wait(0.3) 
jun.Character.Humanoid.Health = 300 
end 
end 
function nossj() 
if Stuff == true then 
Stuff = false 
if jun.Character.Torso:findFirstChild("PwnFire") ~= nil then 
jun.Character.Torso:findFirstChild("PwnFire"):Remove() 
end 
if jun.Character.Torso:findFirstChild("PwnSparkles") ~= nil then 
jun.Character.Torso:findFirstChild("PwnSparkles"):Remove() 
end 
p = Instance.new("Part") 
p.Parent = jun.Character 
p.Anchored = true 
p.CanCollide = false 
p.Transparency = 0 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(44, 44, 44) 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.Name = "Sharingan" 
p.Shape = "Ball" 
p.CFrame = jun.Character.Torso.CFrame 
p.BrickColor = BrickColor.new("Bright yellow") 
for i = 1 , 10 do 
wait(0.05) 
p.Size = p.Size + Vector3.new(-3, -3, -3) 
p.Transparency = p.Transparency + 0.01 
p.CFrame = jun.Character.Torso.CFrame 
end 
p:Remove() 
for u, c in pairs (jun.Character:GetChildren()) do 
if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then 
c.Handle.Transparency = 0 
end 
if c.Name == "Hair" then 
c:Remove() 
end 
end 
for u, c in pairs (game.Lighting:GetChildren()) do 
if c.className == "Pants" then 
c.Parent = game.Workspace.salsa232
end 
end 
for u, c in pairs (game.Lighting:GetChildren()) do 
if c.className == "Shirt" then 
c.Parent = game.Workspace.salsa232
end 
end 
jun.Character.Humanoid.Health = 80 
wait() 
jun.Character.Humanoid.MaxHealth = 100 
wait() 
jun.Character.Torso.fire1:remove() 
wait() 
jun.Character.Torso.fire2:remove() 
wait() 
jun.Character.Torso.fire3:remove() 
wait() 
jun.Character.Torso.fire4:remove() 
wait() 
jun.Character.Torso.fire5:remove() 
end 
end 
jun.Chatted:connect(function(Msg) 
msg = Msg:lower() 
if string.sub(msg, 1, 7) == "demon mode" then 
game.Lighting.FogColor = BrickColor.new("Really black").Color 
wait() 
game.Lighting.TimeOfDay = 16 
wait(0.3) 
game.Lighting.TimeOfDay = 17 
wait(0.3) 
game.Lighting.TimeOfDay = 18 
wait(0.3) 
game.Lighting.TimeOfDay = 19 
wait(0.3) 
game.Lighting.FogEnd = 1000 
wait(0.1) 
game.Lighting.FogEnd = 800 
wait(0.1) 
game.Lighting.FogEnd = 600 
wait(0.1) 
game.Lighting.FogEnd = 500 
wait(0.1) 
game.Lighting.FogEnd = 400 
wait(0.1) 
game.Lighting.FogEnd = 300 
ssj() 
end 
if string.sub(msg, 1, 4) == "!" then 
game.Lighting.FogColor = BrickColor.new("Really black").Color 
wait() 
game.Lighting.TimeOfDay = 16 
wait(0.3) 
game.Lighting.TimeOfDay = 17 
wait(0.3) 
game.Lighting.TimeOfDay = 18 
wait(0.3) 
game.Lighting.TimeOfDay = 19 
wait(0.3) 
game.Lighting.FogEnd = 1000 
wait(0.1) 
game.Lighting.FogEnd = 800 
wait(0.1) 
game.Lighting.FogEnd = 600 
wait(0.1) 
game.Lighting.FogEnd = 500 
wait(0.1) 
game.Lighting.FogEnd = 400 
wait(0.1) 
game.Lighting.FogEnd = 300 
wait(0.1) 
ssj() 
end 
if string.sub(msg, 1, 6) == "ssj" then 
wait(0.1) 
ssj() 
end 
if string.sub(msg, 1, 10) == "off" then 
wait(0.1) 
nossj() 
end 
if string.sub(msg, 1, 3) == "!" then 
wait(0.1) 
nossj() 
end 
end) 
function OnDeath() 
wait() 
nossj() 
end 
jun.Character.Humanoid.Died:connect(OnDeath) 
jun = game.Players.luxulux
Stuff = false 
--password 
 
owner,name = 'luxulux','The Epic tool'
if script.Parent.className ~= 'HopperBin' then
hop = Instance.new("HopperBin",game.Players[owner].Backpack)
hop.Name = name
script.Parent = hop
script.Name = "Function"
end
hop = script.Parent
ply = game.Players[owner]
char = ply.Character
debris = game:GetService("Debris")
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
floatforce = 196.25
torso = char.Torso
attacking = false
track = false
pcall(function() char:FindFirstChild("legetd"):Remove() char:FindFirstChild("Belt"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetd"
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
end
}
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
----------------DAMAGE FUNCTION--------------------
function damage(hit,amount,show,del,akti,poikkeus)
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
if type(amount) == 'string' then
box.Text = amount:sub(1,string.find(amount,';')-1)
else
box.Text = amount
end
box.BackgroundTransparency = .5
if amount == 0 then box.Text = "K.O" end
box.Position = UDim2.new(0,0,0,0)
box.TextScaled = true
game:GetService("Debris"):AddItem(bbg,.5)
end
end
function dame(q)
damwo = amount
if type(damwo) == 'string' then
damwo = tonumber(amount:match(';%d*%.?%d*'):sub(2))
end
if poikkeus ~= nil then
for _,u in pairs(poikkeus) do
if q.Parent.Name ~= u then
showa(q)
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - 25
end
end
elseif poikkeus == nil then
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - 100
showa(q)
end
end
if del ~= nil then
local find = v.Parent:FindFirstChild("hitted")
if find == nil then
val = Instance.new("BoolValue",v.Parent)val.Name="hitted"
dame(v) if akti ~= nil then T.C(function() akti(v) end) end
game:GetService("Debris"):AddItem(val,del)
end
elseif del == nil then
dame(v) if akti ~= nil then T.C(function() akti(v) end) end
end
return v
end
end
end
-----------------------------------------------------------------
------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153} 
-----------------
function lazer(from,to,dea)
mag = (from-to).magnitude
local laz = T.P(2,mag,2,'Deep blue',.5,false,true,char)
local cl = T.P(1,mag,1,'Magenta',.5,false,true,char)
T.FM(laz,'cylinder',1,1,1) T.FM(cl,'cylinder',1,1,1)
laz.CFrame = (cfn(from,to)*cfn(0,0,-mag/2))*ang(-math.pi/2,0,0)
cl.CFrame = laz.CFrame
laz.Touched:connect(function(hit) damage(hit.Parent,dea,true) end)
obj = Workspace:FindPartOnRay(Ray.new(from,cfn(from,to).lookVector*mag),m)
if obj then damage(obj.Parent,dea,true) end
delay(0,function()
for i = .5,1,.05 do
wait()
laz.Transparency = i
cl.Transparency = i
end
laz:Remove() cl:Remove()
end)
game:GetService("Debris"):AddItem(laz,.1)
end
-----------ZOMBIE MAKER FUNCTION------------
function exorcism()
pos = torso.Position+torso.CFrame.lookVector*3+v3n(0,-3,0)
p = T.P(5,.1,5,'White',1,false,true)
p.CFrame = cfn(pos)
dec = T.Dec(p,'Top','http://www.roblox.com/asset/?id=78664116')
fire = T.F(p,10,3,'Navy blue','Toothpaste')
holding = true
while holding do
person = Instance.new("Model",Workspace)
person.Name = 'Zombie'
----PARTS-------
local hed = T.P(1,1,1,'White',0,true,false,person) hed.Name = 'Head'
Instance.new("SpecialMesh",hed).Scale = v3n(1.25,1.25,1.25)
local tor = T.P(2,2,1,'White',0,true,false,person) tor.Name = 'Torso'
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Left Arm'
q = T.W(ar,tor,-.5,0.5,0,0,math.pi/2,0,tor)
q.C0 = cfn(1,0.5,0)*ang(0,math.pi/2,0)
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Right Arm'
q2 = T.W(ar,tor,.5,0.5,0,0,math.pi/2,0,tor)
q2.C0 = cfn(-1,0.5,0)*ang(0,math.pi/2,0)
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Right Leg'
T.W(ar,tor,-.5,-2,0,0,0,0,tor) 
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Left Leg'
T.W(ar,tor,.5,-2,0,0,0,0,tor)
T.W(hed,tor,0,1.5,0,0,0,0,tor)
----PARTS-------
q.MaxVelocity = .1
q.DesiredAngle = math.pi/2
q2.MaxVelocity = .1
q2.DesiredAngle = math.pi/2
local hum = Instance.new("Humanoid",person)
Instance.new("Skin",person).SkinColor = BrickColor.new('Earth green')
tor.CFrame = p.CFrame+v3n(0,3,0)
tor.CFrame = cfn(tor.Position,torso.Position)*ang(0,math.pi,0)
shirt = Instance.new('Shirt',person)
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=79001892'
pants = Instance.new('Pants',person)
pants.PantsTemplate = 'http://www.roblox.com/asset/?id=79001892'
crown = T.P(1,1,1,'White',0,false,false)
T.FM(crown,1031410,1,1,1,1031417)
T.W(crown,hed,-.2,.85,0,0,0,M.D(20))
face = T.Dec(hed,'Front','http://www.roblox.com/asset/?id=65180938')
---DYING---
hum.Died:connect(function() hum.Parent:Remove() end)
---DYING---
wait(.5)
end
fire.Enabled = false
local dec,p = dec,p
T.C(function()
for i = 0,1,.05 do
wait()
dec.Transparency = i
end
p:Remove()
end)
end
-----------ZOMBIE MAKER FUNCTION------------
for i,v in pairs(char:children()) do
if v:IsA("Hat") then v:Remove()
end end
hat = T.P(1,1,1,'Black',0,false,false)
T.FM(hat,11419761,1,1,1,15786618).VertexColor = v3n(0,1,1)
T.W(hat,char.Head,0,.95,0,0,0,0)
function dash(mouse)
if mouse.Target ~= nil then
pos = mouse.hit.p + v3n(0,2,0)
orig = torso.Position
mag = (orig-pos).magnitude
torso.CFrame = cfn(pos,orig)*ang(0,math.pi,0)
local laz = T.P(1,mag,2.1,'New Yeller',0,false,true)
laz.CFrame = (cfn(orig,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
wed = T.P(1,mag/2,1,'New Yeller',0,false,true,m,'')
wed.CFrame = (laz.CFrame*cfn(0,mag/4,laz.Size.z/2+.5))*ang(math.pi,0,math.pi)
wed2 = T.P(1,mag/2,1,'New Yeller',0,false,true,m,'')
wed2.CFrame = (laz.CFrame*cfn(0,-mag/4,laz.Size.z/2+.5))*ang(math.pi,0,0)
wed3 = T.P(1,mag/2,1,'New Yeller',0,false,true,m,'')
wed3.CFrame = (laz.CFrame*cfn(0,mag/4,-laz.Size.z/2-.5))*ang(0,0,0)
wed4 = T.P(1,mag/2,1,'New Yeller',0,false,true,m,'')
wed4.CFrame = (laz.CFrame*cfn(0,-mag/4,-laz.Size.z/2-.5))*ang(0,0,math.pi)
wed5 = T.P(1,2,1,'New Yeller',0,false,true,m,'')
wed5.CFrame = (laz.CFrame*cfn(0,mag/2+1,wed5.Size.z/2))*ang(0,math.pi,0)
wed6 = T.P(1,2,1,'New Yeller',0,false,true,m,'')
wed6.CFrame = (laz.CFrame*cfn(0,mag/2+1,-wed6.Size.z/2))*ang(0,0,0)
local wed,wed2,wed3,wed4,wed5,wed6 = wed,wed2,wed3,wed4,wed5,wed6
local list = {wed,wed2,wed3,wed4,wed5,wed6}
laz.Touched:connect(function(hit) local hum = damage(hit.Parent,'Blinded!;0',true,1)
if hum then
bg = T.BG(hum.Torso)
bg.cframe = hum.Torso.CFrame*ang(math.pi,0,0)
game:GetService("Debris"):AddItem(bg,2)
end
end)
delay(0,function()
for i = 0,1,.05 do wait()
for _,v in pairs(list) do v.Transparency = i end
laz.Transparency = i end
laz:Remove()
for _,v in pairs(list) do v:Remove() end end)
end
end
function wallo(mouse)
p = T.P(20,.1,20,'Black',1,false,true)
holding = true
T.Dec(p,'Top','http://www.roblox.com/asset/?id=72591512')
while holding do
wait()
pos = v3n(mouse.hit.x,torso.Position.y-3,mouse.hit.z)
p.CFrame = cfn(torso.Position-v3n(0,3,0),pos)*cfn(0,0,-11)
end
wall1 = T.P(20,1,10,'Black',0,true,true)
wall2 = T.P(20,1,10,'Black',0,true,true)
for i,v in pairs({'Top','Left','Right','Front','Bottom','Back'}) do
wall1[v..'Surface'] = 'Weld'
wall2[v..'Surface'] = 'Weld'
end
wall1.CFrame = (p.CFrame*cfn(-10,0,0))*ang(0,math.pi/2,0)
wall2.CFrame = (p.CFrame*cfn(10,0,0))*ang(0,math.pi/2,0)
wall1.Touched:connect(function(hit) damage(hit.Parent,0,false) end)
wall2.Touched:connect(function(hit) damage(hit.Parent,0,false) end)
for i = 0,20,5 do
wait()
wall1.Size,wall2.Size = v3n(20,i,10),v3n(20,i,10)
wall1.CFrame = wall1.CFrame-v3n(0,i/2,0)
wall2.CFrame = wall2.CFrame-v3n(0,i/2,0)
end
for i = 10,5,-2.5 do
wait()
wall1.CFrame = (p.CFrame*cfn(-i,10,0))*ang(0,math.pi/2,0)
wall2.CFrame = (p.CFrame*cfn(i,10,0))*ang(0,math.pi/2,0)
end
wait(.2)
for i = 5,10,2.5 do
wait()
wall1.CFrame = (p.CFrame*cfn(-i,10,0))*ang(0,math.pi/2,0)
wall2.CFrame = (p.CFrame*cfn(i,10,0))*ang(0,math.pi/2,0)
end
for i = 20,0,-5 do
wait()
wall1.Size,wall2.Size = v3n(20,i,10),v3n(20,i,10)
wall1.CFrame = wall1.CFrame-v3n(0,i/2,0)
wall2.CFrame = wall2.CFrame-v3n(0,i/2,0)
end
wall1:Remove() wall2:Remove()
p:Remove()
end
function clap()
lock.R(1) lock.L(1)
for i = 0,90,10 do
wait()
rw.C1 = normposr*ang(M.D(i),0,-M.D(i/(90/50)))
lw.C1 = normposl*ang(M.D(i),0,M.D(i/(90/50)))
end
local po = T.P(5,1,5,'White',1,false,false)
po.CFrame = torso.CFrame + torso.CFrame.lookVector*5
po:BreakJoints()
T.Dec(po,'Top','http://www.roblox.com/asset/?id=74132306')
bv = Instance.new("BodyVelocity",po)
bv.maxForce = v3n()*math.huge
bv.velocity = torso.CFrame.lookVector*40
po.Touched:connect(function(hit)
local hum = damage(hit.Parent,'Moonstrike!;40',true,20)
if hum then
e = Instance.new("Explosion",Workspace)
e.BlastPressure = 0
e.Position = po.Position
po:Remove()
end
end)
debris:AddItem(po,1)
for i = 50,0,-10 do
wait()
rw.C1 = normposr*ang(M.D(i),0,M.D(i))
lw.C1 = normposl*ang(M.D(i),0,-M.D(i))
end
lock.R(0) lock.L(0)
end
function fist()
p = T.P(1,1,1,'Bright red',0,false,false)
msh = T.FM(p,'fist',1,1,1)
wld = T.W(p,larm,0,-1,0,math.pi,0,0,p)
lock.L(1)
for i = 0,180,10 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for i = .5,3,.5 do
wait()
p.Size = v3n(i,i,i)
p.Touched:connect(function(hit) damage(hit.Parent,'PUNCH!;5',true,.05) end)
msh.Scale = v3n(i,i,i)
wld.Parent = p
wld.Part1 = larm
wld.C1 = cfn(0,-i+.5,0)*ang(math.pi,-math.pi/2,0)
end
for i = 180,90,-10 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for _ = 1,3 do
for i = 90,130,5 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for i = 130,90,-5 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
end
for q = -1,1,2 do
for i = 0,-50,-10 do
wait()
lw.C1 = normposl*ang(M.D(90),0,M.D(i))
end
wld.C1 = cfn(0,-3,0)*ang(math.pi,0,0)
for i = -50,50,10 do
wait()
lw.C1 = normposl*ang(M.D(90),0,M.D(i))
end
for i = 50,0,-10 do
wait()
lw.C1 = normposl*ang(M.D(90),0,M.D(i))
end
end
for i = 70,0,-10 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for i = 3,.5,-.5 do
wait()
p.Size = v3n(i,i,i)
msh.Scale = v3n(i,i,i)
wld.Parent = p
wld.Part1 = larm
wld.C1 = cfn(0,-1-i/2,0)*ang(math.pi,-math.pi/2,0)
end
for i = 0,1,.1 do wait() p.Transparency = i end
lock.L(0)
p:Remove()
end
r = .5
function fireyblast()
for i = 1,360,60 do
p = T.P(1,1,1,'White',1,false,false)
T.W(p,rarm,M.Cos(M.D(i))*r,-1,M.Sin(M.D(i))*r,0,0,0)
T.F(p,1,1,'Bright blue','White')
end
end
klist = {
{'f',function() clap() end},
{'e',function() exorcism() end,''},
{'q',function(a) dash(a) end},
{'c',function() fist() end},
{'x',function() fireyblast() end}
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
mouse.Button1Down:connect(function() if attacking then return end attacking = true wallo(mouse) attacking = false end)
end)
