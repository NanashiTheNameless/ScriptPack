ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
 
holding = false
 
legpos = CFrame.new(.5,-1.5,0)
armpos = CFrame.new(1.5,.5,0)
 
ang = CFrame.Angles
cfn = CFrame.new
 
list = {}
 
Arms = {char["Left Arm"],char["Right Arm"]}
Legs = {char["Left Leg"],char["Right Leg"]}
 
track = false
m = Instance.new("Model",char)
 
meshids = {["blast"] = "http://www.roblox.com/asset/?id=20329976", ["penguin"] = "http://www.roblox.com/asset/?id=15853464", ["ring"] = "http://www.roblox.com/asset/?id=3270017",
["spike"] = "http://www.roblox.com/asset/?id=1033714",["cone"] = "http://www.roblox.com/asset/?id=1082802",["crown"] = "http://www.roblox.com/asset/?id=20329976",["arrow"] = "http://www.roblox.com/asset/?id=15886761",
["cloud"] = "http://www.roblox.com/asset/?id=1095708",["mjolnir"] = "http://www.roblox.com/asset/?id=1279013",["diamond"] = "http://www.roblox.com/asset/?id=9756362",["hand"] = "http://www.roblox.com/asset/?id=37241605"}
 
textureids = {["cone"] = "http://www.roblox.com/asset/?id=1082804",["rainbow"] = "http://www.roblox.com/asset/?id=28488599",
["grass"] = "http://www.roblox.com/asset/?id=2861779"}
 
function kill(mouse)
for i,v in pairs(mouse.Target.Parent:GetChildren()) do
if v:IsA("Humanoid") then v.Health = 0
 
local head = v.Parent.Head
bbg = Instance.new("BillboardGui",v.Parent)
bbg.Adornee = head
bbg.Size = UDim2.new(4,0,4,0)
bbg.StudsOffset = Vector3.new(0,6,0)
 
img = Instance.new("ImageLabel",bbg)
img.Size = UDim2.new(1,0,1,0)
img.Image = "rbxassetid://49173398"
img.BackgroundTransparency = 1
 
txtlbl = Instance.new("TextLabel",gui)
txtlbl.Size = UDim2.new(1,0,1,0)
txtlbl.BackgroundTransparency = 1
txtlbl.Text = "PWNED!"
txtlbl.FontSize = 6
txtlbl.TextColor3 = Color3.new(1,0,0)
 
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
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
else
mesh = Instance.new("SpecialMesh",parent)
if meshid ~= "sphere" then
mesh.MeshId = meshids[meshid]
else mesh.MeshType = 3 end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture ~= nil then
mesh.TextureId = textureids[meshtexture]
end
return mesh
end
end
,
["Findplys"] = function(position,radius,toreturn)
 
 
function findfromlist(a)
local found = false
for _,v in pairs(list) do
if v == a then found = true
end
end
return found
end
 
for i,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Model") and v ~= char then
for _,o in pairs(v:GetChildren()) do
if o:IsA("Humanoid") then
if (o.Torso.Position-position).magnitude < radius then
 
if toreturn == "hum" and findfromlist(o) == false then table.insert(list,o)
elseif toreturn == "char" and findfromlist(o.Parent) == false then table.insert(list,o.Parent)
elseif toreturn == "player" then local ply = game.Players[o.Parent.Name]
if ply ~= nil then table.insert(list,ply) end
end
 
end end end end end return list end
,
["Clearlist"] = function()
for i = 1,#list do
table.remove(list,i)
end
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
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
 
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
part = T.P(1,1,1,"Bright blue",.5,false,false)
part.Parent = hammer
T.FM(part,"diamond",3,10,3)
local w = T.W(part,mpart,math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r,0,0,0)
end ---
--------------------------------------------
hold = true
mouse.Button1Down:connect(function()
hold = false
hammer:Remove() cloud:Remove() light:Remove() tbp:Remove() ray:Remove()
end)
pos3 = (hammer.CFrame * CFrame.new(0,10,0)).p
ray = T.P(5,mag,5,"White",0,false,true)
 
while hold == true do
wait()
 
local list = T.Findplys(mouse.hit.p,30,"char") ---Findplayers/Damage
T.Clearlist()
if #list > 0 then
for i,v in pairs(list) do 
v:BreakJoints()
end
end
 
if mouse.Target ~= nil then
pos3 = (hammer.CFrame * CFrame.new(0,10,0)).p
local mag = (pos3-mouse.hit.p).magnitude
ray.Size = Vector3.new(5,mag,5)
ray.CFrame = (CFrame.new(pos3,mouse.hit.p)*CFrame.new(0,0,-mag/2)) * ang(math.pi/2,0,0)
 
bg.cframe = mouse.hit * ang(-math.pi/2,0,0)
 
mw.C1 = mw.C1 * ang(0,math.rad(10),0) ---rotate diamonds
 
Instance.new("CylinderMesh",ray)
 
T.C(function() ---coroutine start
local ball = T.P(3,3,3,"Bright red",1,false,true)
ball.CFrame = cfn(ray.CFrame * cfn(0,-ray.Size.y/2,0).p)
Instance.new("SpecialMesh",ball).MeshType = 3
 
for i = 1,360,60 do
local part = T.P(1,1,1,"Bright blue",0,false,true)
part.Parent = ball
local msh = T.FM(part,"ring",30,30,10)
part.Size = Vector3.new(1,1,1)
part.CFrame = ball.CFrame * ang(math.random(-10,10),math.random(-10,10),math.random(-10,10))
T.C(function()
for i = 30,50,5 do
wait()
msh.Scale = Vector3.new(i,i,i)
part.Transparency = i/100
end
ball:Remove()
end)
end
 
end) --- coroutine end
 
end
end
 
end
 
function iceshards(mouse)
if mouse.Target ~= nil then
holding = true
local shard = T.P(.5,3,.5,"White",.5,false,false)
shard.Position = torso.Position
T.FM(shard,"diamond",1,3,1)
bp = T.BP(shard,torso.Position)
bg = T.BG(shard)
 
c = T.P(.1,.1,.1,"White",1,false,false)
c.Parent = shard
T.W(c,shard,0,-1.5,0,0,0,0)
T.F(c,2,1,"Black","Cyan")
 
while holding do
wait()
unit = (torso.Position-mouse.hit.p).unit
bp.position = torso.Position + unit*-5
bg.cframe = cfn(torso.Position,mouse.hit.p) * ang(-math.pi/2,0,0)
end
 
local pos = shard.CFrame * CFrame.new(0,-1.5,0)
 
T.C(function()
local p = T.P(1,1,1,"Neon orange",0,false,true)
msh = T.FM(p,"crown",1,1,1)
p.CFrame = pos
for i = 1,10,2 do
wait()
msh.Scale = Vector3.new(i,i/2,i)
p.Transparency = i/10
end
p:Remove()
end)
 
local cf = shard.CFrame * CFrame.new(0,1000,0)
bp:Remove() bg:Remove()
bv = Instance.new("BodyVelocity",shard)
bv.maxForce = Vector3.new() * math.huge
bv.velocity = unit*-300
game:GetService("Debris"):AddItem(shard,1)
shard.Touched:connect(function(hit)
 
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") and v.Parent ~= char then
 
for _,o in pairs(hit.Parent:GetChildren()) do
if o:IsA("Clothing") or o:IsA("Hat") then o:Remove() end
end
 
Instance.new("Skin",hit.Parent).SkinColor = BrickColor.new("White")
end
end
end)
 
end
end
 
function cloud(mouse)
local ball = T.P(1,1,1,"Bright red",0,false,true)
T.FM(ball,"sphere",1,1,1)
holding = true
while holding do
if mouse.Target ~= nil then
wait()
ball.CFrame = cfn(mouse.hit.p)
end
end
ring = T.P(1,1,1,"White",0,false,true)
ring.CFrame = cfn(ball.Position) * ang(math.pi/2,0,0)
T.FM(ring,"ring",10,10,1)
 
for i = 1,360,60 do
p = T.P(1,1,1,"White",0,false,true)
T.FM(p,"cone",2,2,2,"cone")
p.CFrame = cfn(ball.Position) * cfn(math.cos(math.rad(i))*10,0,math.sin(math.rad(i))*10)
end
 
local cloud = T.P(1,1,1,"Black",0,false,false)
cloud.Position = torso.Position
T.FM(cloud,"cloud",10,10,10)
 
local bp = T.BP(cloud,ball.Position + Vector3.new(0,20,0))
track = true
 
while (cloud.Position-bp.position).magnitude > 3 do wait() end
T.C(function()
while true do
local pos = cloud.Position + Vector3.new(math.random(-1.5,1.5),0,math.random(-1.5,1.5))
local pos2 = ball.Position + Vector3.new(math.random(-5,5),0,math.random(-5,5))
lazer = T.Lazor(pos,pos2,2,"New Yeller",.5,.5)
Instance.new("CylinderMesh",lazer)
T.C(function()
local p = T.P(1,1,1,"White",.5,false,true)
p.CFrame = cfn((lazer.CFrame * cfn(0,-lazer.Size.y/2,0)).p)
msh = T.FM(p,"crown",1,1,1)
for i = 1,10 do
wait()
msh.Scale = Vector3.new(i,i,i)
p.Transparency = i/10
end
p:Remove()
end)
wait(.1)
end
end)
 
end
 
function quake(mouse)
r = 5
for o = 1,-1,-1 do
for i = 1,360,60 do
p = T.P(20,1,20,"Brown",0,true,true)
p.Material = "Slate"
p.CFrame = cfn(mouse.hit.p) * cfn(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
p.CFrame = cfn(p.Position,mouse.hit.p-Vector3.new(0,o,0))
end
end
local startpos = mouse.hit.p
r = 30
 
for i = 1,360,20 do ---RAYS
wait()
local endpos = startpos + Vector3.new(M.Cos(M.D(i))*r,10,M.Sin(M.D(i))*r)
local part = T.P(.1,.1,.1,"White",0,true,true)
T.FM(part,"cylinder",1,1,1)
part.CFrame = (cfn(startpos,endpos) * cfn(0,0,-part.Size.y/2)) * ang(math.pi/2,0,0)
 
for i = 1,30,10 do
wait()
part.Size = Vector3.new(.5,i,.5)
part.CFrame = (cfn(startpos,endpos) * cfn(0,0,-part.Size.y/2))  * ang(math.pi/2,0,0)
end
 
ball = T.P(3,3,3,"Bright red",0,true,true)
T.FM(ball,"sphere",1,1,1)
ball.CFrame = (part.CFrame * cfn(0,-part.Size.y/2,0)) * ang(math.pi,0,0)
 
end ----
 
-------TREE START-----
local tree = T.P(2,.1,2,"Black",0,true,true)
tree.CFrame = cfn(startpos)
tree.Material = "Wood"
 
for i = 1,60 do
wait()
tree.Size = Vector3.new(2,i,2)
tree.CFrame = cfn(startpos) + Vector3.new(0,tree.Size.y/2,0)
end
 
local startpos = (tree.CFrame * CFrame.new(0,tree.Size.y/2,0)).p
 
for i = 1,360,60 do ---RAYS
wait()
local endpos = startpos + Vector3.new(M.Cos(M.D(i))*r,10,M.Sin(M.D(i))*r)
local branch = T.P(2,.1,2,"Black",0,false,true)
branch.CFrame = (cfn(startpos,endpos) * cfn(0,0,-branch.Size.y/2)) * ang(math.pi/2,0,0)
 
for i = 1,30,5 do
wait()
branch.Size = Vector3.new(2,i,2)
branch.CFrame = (cfn(startpos,endpos) * cfn(0,0,-branch.Size.y/2))  * ang(math.pi/2,0,0)
end
 
bush = T.P(.1,.1,.1,"Earth green",0,false,true)
bush.CFrame = cfn(branch.CFrame * cfn(0,-branch.Size.y/2,0).p) * ang(0,M.R(-3,3),0)
local msh = T.FM(bush,"cloud",1,1,1,"grass")
for i = 1,40,5 do
wait()
msh.Scale = Vector3.new(i,i,i)
 
end
 
end
end
 
function grab(mouse)
local endpos = mouse.hit.p
local cloud = T.P(1,1,1,"New Yeller",0,false,false)
local bp = T.BP(cloud,torso.Position + Vector3.new(0,5,0))
T.FM(cloud,"cloud",6,6,6)
while (cloud.Position-bp.position).magnitude > 1 do wait() end
 
local ray = T.P(1,1,1,"Earth green",.5,false,true)
local startpos = cloud.Position
local hand = T.P(1,1,1,"Earth green",.5,false,true)
T.FM(hand,"hand",4,4,4)
T.FM(ray,"cylinder",1,1,1)
 
 
mag = (startpos-endpos).magnitude
 
for i = 1,mag do
wait()
ray.Size = Vector3.new(1,i,1)
ray.CFrame = (cfn(startpos,endpos) * cfn(0,0,-ray.Size.y/2)) * ang(math.pi/2,0,0)
hand.CFrame = (ray.CFrame * cfn(0,-ray.Size.y/2,-1.6)) * ang(-math.pi/2,0,0)
end
local rock = T.P(3,3,3,"Black",0,true,true)
T.FM(rock,"sphere",1,1,1)
for i = mag-3,1,-1 do
wait()
ray.Size = Vector3.new(1,i,1)
ray.CFrame = (cfn(startpos,endpos) * cfn(0,0,-ray.Size.y/2)) * ang(math.pi/2,0,0)
hand.CFrame = (ray.CFrame * cfn(0,-ray.Size.y/2,-1.6)) * ang(-math.pi/2,0,0)
rock.CFrame = hand.CFrame * cfn(0,0,-1.5)
end
ray:Remove()
local endpos = mouse.hit.p
unit = (startpos-endpos).unit
rock.Anchored = false
rock.CFrame = hand.CFrame * cfn(0,0,-1.5)
rock:BreakJoints()
end
 
h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Thunder"
 
h.Selected:connect(function(mouse)
mouse.KeyUp:connect(function(key) for _,v in pairs({"f","r"}) do if key == v then holding = false end end end)
mouse.Button1Down:connect(function() epicmove(mouse) end)
mouse.KeyDown:connect(function(key)
if key == "f" then iceshards(mouse)
elseif key == "r" then cloud(mouse)
elseif key == "t" then quake(mouse)
elseif key == "q" then grab(mouse)
end
end)
end)