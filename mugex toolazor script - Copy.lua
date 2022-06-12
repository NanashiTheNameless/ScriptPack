---[[mediafire]]---


ply = game.Players.LocalPlayer
char = ply.Character
name = "Hat"
m = Instance.new("Model",char) m.Name = "clowe"
local originalsubject = Workspace.CurrentCamera.CameraSubject
function upd()
torso = char.Torso
holding = false
shoulder = nil
body = {["Head"] = char.Head,["Torso"] = char.Torso}
body.A = {["R"] = char["Right Arm"], ["L"] = char["Left Arm"]}
body.L = {["R"] = char["Right Leg"], ["L"] = char["Left Leg"]}
end
upd()


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
["Track"] = function(bol,obj,s,t,lt,color,fade)
bol = true
coroutine.resume(coroutine.create(function()
while bol do
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
pcall(function() char:FindFirstChild("Suit"):remove() end)
suit = Instance.new("Model",m) suit.Name = "Suit"
function damage(hit,amount,show,del)
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
box.Position = UDim2.new(0,0,0,0)
box.TextScaled = true
game:GetService("Debris"):AddItem(bbg,.5)
end
end

if del ~= nil then
local find = v.Parent:FindFirstChild("hitted")
if find == nil then
v.Health=v.Health - amount
showa(v.Parent)
val = Instance.new("BoolValue",v.Parent)val.Name="hitted"
game:GetService("Debris"):AddItem(val,del)
end
elseif del == nil then
v.Health = v.Health - amount
showa(v.Parent)

end

end
end
end

meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153}

cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new

---MATH SHORTENINGS---
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
holding = false

function explode()
e = Instance.new("Explosion",Workspace)
e.Position = torso.Position
e.BlastPressure = 0
e.Hit:connect(function(hit) damage(hit.Parent,5,true) end)
end


function fire()
p = T.P(1,1,1,"Deep blue",0,false,false,suit)
p2 = T.P(1,1,1,"Deep blue",0,false,false,suit)

stick = T.P(.5,2,.5,"Nougat",0,false,false,suit)
T.FM(stick,"cylinder",1,1,1)
T.W(stick,body.Head,0,1,0,0,0,0)

spike = T.P(3,1,3,"White",0,false,false,suit)
T.FM(spike,"spike",3,1,3)
T.W(spike,stick,0,.8,0,0,0,0)

r = -2
for i = 20,360+20,360/5 do

skull = T.P(1,1,1,"Black",0,false,false,suit)
T.FM(skull,"skull",.5,.5,.5)

T.W(skull,spike,M.Cos(M.D(i))*r,.15,M.Sin(M.D(i))*r,M.D(-20),0,0)

end
r = 5
for i = 1,360,3 do
c = T.P(.5,.5,.5,"Magenta",0,false,false,suit)

T.W(c,torso,M.Cos(M.D(i))*r,M.Sin(i*100/3),M.Sin(M.D(i))*r,0,0,0)
if M.Sin(i*100/3) > .85 then T.F(c,1,1,"White","New Yeller") end
end

T.FM(p,"diamond",1,1,1)
T.FM(p2,"diamond",1,1,1)
T.F(p,2,1,"Magenta","Olive")
T.F(p2,2,1,"Magenta","Olive")

T.W(p,body.A.R,0,-1,0,0,0,0)
T.W(p2,body.A.L,0,-1,0,0,0,0)
end

function pillars(mouse)
r = 5
local pos = cfn(mouse.hit.p)
local tar = mouse.Target
for i = 1,360,15 do
wait()
local c = T.P(2,.5,2,"Magenta",.3,true,true)
c.Size = v3n(2,20+M.Sin(i*300/15),2)
T.FM(c,"cylinder",1,1,1)
c.CFrame = pos*cfn(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r) + v3n(0,c.Size.y/2,0)
end

end

function plague(mouse)
local touching = false
c = T.P(50,.1,50,"White",1,false,true)
c.CFrame = cfn(mouse.hit.p)
c.Name = "plague"

local dec = Instance.new("Decal",c)
dec.Face = "Top"
dec.Texture = 'http://www.roblox.com/asset/?id=23862105'
dec.Transparency = 1
for i = 1,0,-.05 do
wait()
dec.Transparency = i
end
c.Touched:connect(function(hit)
damage(hit.Parent,10,true,.05)
end)

end

---GUI---
gui = Instance.new("ScreenGui")

mfr = Instance.new("Frame",gui)
mfr.Size = UDim2.new(.2,0,.2,0)
mfr.Position = UDim2.new(0,0,.5,0)
fr = Instance.new("Frame",mfr)
fr.Size = UDim2.new(.8,0,.8,0)
fr.BackgroundColor = BrickColor.new("Earth green")
fr.ClipsDescendants = true
fr.Position = UDim2.new(0,0,.1,0)

center = UDim2.new(.5,0,.5,0)
dist = 100

lista = Instance.new("Frame",mfr)
lista.Size = UDim2.new(.2,0,.9,0)
lista.Position = UDim2.new(.8,0,0,0)

inf = Instance.new("TextLabel",mfr)
inf.Size = UDim2.new(1,0,.1,0)

torp = Instance.new("Frame",fr)
torp.Size = UDim2.new(.1,0,.1,0)
torp.Position = center
torp.BackgroundColor = BrickColor.new("Deep blue")

T.C(function()
while wait() do
wait()
poa = torso.Position
for _,v in pairs(fr:GetChildren()) do if v ~= torp then v:Remove() end end
for _,v in pairs(lista:GetChildren()) do v:Remove() end
for i,v in pairs(clowns) do

local b = Instance.new("TextLabel",fr)
b.Size = UDim2.new(.05,0,.05,0)
b.Position = UDim2.new(center.X.Scale + (v.Torso.Position.x-poa.x)/dist/2+.025,0,center.Y.Scale+(v.Torso.Position.z-poa.z)/dist/2+.025,0)
b.TextScaled = true
b.Text = 'C'..i

o = 1/#clowns
opfr = Instance.new("Frame",lista)
opfr.Size = UDim2.new(1,0,o,0)
opfr.BackgroundColor = BrickColor.new("White")
opfr.Position = UDim2.new(0,0,-o,0) + UDim2.new(0,0,o*i,0)
local b2 = Instance.new("TextButton",opfr)
b2.Size = UDim2.new(.5,0,1,0)
b2.Text = "C"..i
b2.BackgroundTransparency = 1
b2.BackgroundColor = BrickColor.new("White")
b2.TextScaled = true

b3 = b2:Clone()
b3.Parent = opfr
b3.Position = UDim2.new(.5,0,0,0)
b3.Text = "T"
b2.MouseButton1Down:connect(function() Workspace.CurrentCamera.CameraSubject = v.Humanoid
Workspace.CurrentCamera.CameraType = 4 end)
b3.MouseButton1Down:connect(function() char:MoveTo(v.Torso.Position) end)

end



for i,v in pairs(clowns) do
if ply.PlayerGui:FindFirstChild("C"..i) == nil then
bbg = Instance.new("BillboardGui",ply.PlayerGui)
bbg.Name = "C"..i
bbg.Adornee = v.Torso
bbg.StudsOffset = v3n(0,5,0)
bbg.Size = UDim2.new(2,0,2,0)

lab = Instance.new("TextLabel",bbg)
lab.Size = UDim2.new(1,0,1,0)
lab.BackgroundTransparency = 1
lab.FontSize = 6

lab.Text = 'C'..i
end
end
end
end)

resetbut = Instance.new("TextButton",mfr)
resetbut.Size = UDim2.new(1,0,.1,0)
resetbut.Position = UDim2.new(0,0,.9,0)
resetbut.Text = "RESET"
resetbut.TextScaled = true
resetbut.MouseButton1Down:connect(function()Workspace.CurrentCamera.CameraSubject = originalsubject Workspace.CurrentCamera.CameraType = 5 plae = nil end)

-------

function point(mouse)
if char ~= ply.Character then char = ply.Character upd()
elseif char == ply.Character then
if mouse.Target ~= nil then
laz = T.P(1,1,1,"Deep blue",0,false,true)
T.C(function()
while true do
for i = 0,.5,.05 do
wait()
laz.Transparency = i
end
for i = .5,0,-.05 do
wait()
laz.Transparency = i
end
end
end)
T.FM(laz,"cylinder",1,1,1)
holding = true
while holding do
wait()
if mouse.Target ~= nil then
mag = (mouse.hit.p-torso.Position).magnitude
laz.Size = v3n(1,mag,1)
laz.CFrame = (cfn(torso.Position,mouse.hit.p)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
end
end
laz:Remove()

local tar = mouse.Target
if tar.Parent:FindFirstChild("Humanoid") ~= nil then
char = tar.Parent
upd()
end

end
end
end

flbp = nil

function levitate()
if flbp == nil then
flbp = T.BP(torso,torso.Position)
elseif flbp ~= nil then
flbp:Remove() flbp = nil
end
end

clowns = {}
function decoy(a)
if a == 1 then
char.Archivable = true
local clown = char:Clone()
clown.Parent = Workspace

clown.Humanoid.Died:connect(function() clown:Remove() end)
Workspace.ChildRemoved:connect(function(child) if child == clown then for i,v in pairs(clowns) do if v == clown then table.remove(clowns,i) end end end end)
for i,v in pairs(clown["clowe"]:GetChildren()) do
if v.Name ~= "Suit" and v.className ~= "Weld" then
v:Remove()
end
end
table.insert(clowns,clown)
char.Archivable = false
elseif a == 0 then
for i,v in pairs(clowns) do v:Remove() end
end
end

function dragon(mouse)
local wp = mouse.hit.p
local tp = torso.Position
unit = (tp-wp).unit*-1
hed = T.P(10,10,10,"Magenta",.5,false,true)
hed.Name = "dragon"
hed.Touched:connect(function(hit) damage(hit.Parent,50,true,.5) end)
T.FM(hed,"dragon",10,10,10)
pos = cfn(tp)  + unit*5 + v3n(0,-2,0)
pos2 = cfn(pos.p,wp)
for i = 5,10 do
wait()
hed.CFrame = (pos2 + unit * i) + v3n(0,i,0)
end
end

function fly(mouse)
if flbp ~= nil and holding == false then
holding = true
while holding do
wait()
flbp.position = torso.Position + (torso.Position-mouse.hit.p).unit*-10
end

end
end

function hide()
local namn = hop.Name
if char.Parent ~= Workspace.CurrentCamera then
char.Parent = Workspace.CurrentCamera
hop.Name = name..'(Invisible)'
elseif char.Parent == Workspace.CurrentCamera then
char.Parent = Workspace
hop.Name = name
end
end

function clear()
for i,v in pairs(m:GetChildren()) do
if v.className ~= "Weld" and v.Name ~= "Suit" then
v:Remove()
end
end
end

chage = false
klist = {
{"r",function(a) plague(a) end},
{"e",function(a) point(a) end,true},
{"q",function() levitate() end},
{"f",function(a) fly(a) end,true},
{"v",function() hide() end},
{"c",function(a) dragon(a) end},
{"x",function() decoy(1) end},{"z",function() decoy(0) end},
{"h",function() clear() end},
{string.char(48), function() explode() end},
{"g",function() if gui.Parent ~= nil then gui.Parent = nil elseif gui.Parent == nil then gui.Parent = ply.PlayerGui end end},
{"n",function() if chage == true then chage = false char = Workspace.CurrentCamera.CameraSubject.Parent elseif chage == false then chage = true char = ply.Character end end}
}

fire()
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = name
hop.Selected:connect(function(mouse)
mouse.Button1Down:connect(function() pillars(mouse) end)
mouse.KeyDown:connect(function(key)
for i,v in pairs(klist) do
if key == v[1] then v[2](mouse) end
end
end)
mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end upd() end)
end)

ply.Character.Humanoid.Died:connect(function() Workspace.CurrentCamera:ClearAllChildren() end)