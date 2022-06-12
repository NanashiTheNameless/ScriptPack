c,d=pcall(function()
ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
track = false --- for tracking function
char.Humanoid.MaxHealth,char.Humanoid.Health,char.Humanoid.WalkSpeed = 9000,9000,30
 
rs = torso["Right Shoulder"]
rarm = char["Right Arm"]
rw = Instance.new("Weld")
 
function lock(a)
if a == 1 then
rw.Parent = torso
rw.C0,rw.C1 = rs.C0,rs.C1
rw.Part0,rw.Part1 = rs.Part0,rs.Part1
rs.Parent = nil
elseif a == 0 then
rs.Parent = torso
rw.Parent = nil
end
end
 
cfn,ang = CFrame.new,CFrame.Angles
 
attacks = {
["slash"] = CFrame.Angles(1,2,3)
}
 
Bo = {["T"] = char["Torso"], ["H"] = char.Head}
Bo.Arms = {["R"] = char["Right Arm"], ["L"] = char["Left Arm"]}
Bo.Legs = {["L"] = char["Left Leg"], ["R"] = char["Right Leg"]}
 
 
 
sword = Instance.new("Model",char)
 
meshids = {["blast"] = 20329976, ["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590}---some meshids
 
 
------TOOOOOLS------
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored)
c = Instance.new("Part",sword)
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
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz)
w = Instance.new("Weld",sword)
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
["D"] = function(hit,dmg) if hit.Parent:findFirstChild("Humanoid") then h=hit.Parent.Humanoid h.Health = h.Health -dmg end end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
else
mesh = Instance.new("SpecialMesh",parent)
if meshid ~= "sphere" then
mesh.MeshId = "rbxassetid://"..meshids[meshid]
else mesh.MeshType = 3 end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture ~= nil then
mesh.TextureId = "rbxassetid://"..textureids[meshtexture]
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
 
--[[tutorial to using shortenings
T.P(sizex,sizey,sizez,brickcolor,transparency,cancollide,anchored)
T.W(part0,part1,x,y,z,rx,ry,rz)
T.F(parent,size,heat,color,secondarycolor)
T.FM(parent,meshid(see the list),scalex,scaley,scalez,textureid(optional) ) --- most usefull
 
M.R(a,b) creates a randomvalue beetwen a and b
]]--
 
p = T.P(.7,2,.7,"Bright blue",.5,false,false) --- The handle in 1 line O_O
p.Name = "Handle"
p.Position = torso.Position --p.CFrame = p.CFrame * CFrame.new(torso.X, torso.Y, torso.Z)
T.FM(p,"cylinder",1,1,1) --- cylindermesh
T.W(p,Bo.Arms.R,0,-1.5,0,math.pi/2,0,0)
 
p.Touched:connect(function(h)
T.D(h,math.random(1,10))
end)
 
c=nil
mainweld = nil
radius = 1
 
main = T.P(1,1,1,"White",1,false,false)
mainweld = T.W(main,p,0,-1.5,0,0,0,0)
 
for i = 1,360,60 do --- I weld diamonds to part at bottom of handle
c = T.P(1,1,1,"White",.5,false,false)
T.FM(c,"diamond",.5,1.4,.5)
 
T.W(c,main,M.Cos(M.D(i))*radius,0,M.Sin(M.D(i))*radius,0,0,0)
end
 
T.C(function() -- ROTATE
while true do
wait()
mainweld.C1 = mainweld.C1 * ang(0,M.D(10),0)
end
end)
 
 
T.C(function()
while wait(0.1) do
for i = 0,1,0.1 do
p.Transparency = i
wait()
end
 
for i = 1,0,0.1 do
p.Transparency = i
wait()
end
 
end
end) -- Same as coroutine.create
 
p2 = p:Clone()
p2.Parent = sword
p2.Size = Vector3.new(1,6,1)
p2.Touched:connect(function(hit) T.D(hit,5) end)
 
p3 = T.P(1,3,1,"Black",.5,false,false)
T.FM(p3,"spike",1,3,1)
T.W(p3,p2,0,-4,0,math.pi,0,0)
Instance.new("Sparkles",p)
w=Instance.new("Weld",p)
w.Part0 = p
w.Part1 = p2
w.C1 = cfn(0,4,0)
end)
if c == true then
print("Sucsess loading")
else
print(d)
end
 
 
---------ANIMATIONS--------------
anims = {}
 
anims.Twirl = function()
for i = 1,360 do
rw.C0 = rw.C0 * ang()
wait()
end
end


 
anims.Equip = function()
for i = 1,90,5 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(5))
end end
 
anims.UnEquip = function()
for i = 90,0,-20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
end
 
anims.Slash = function()
for i = 1,90,20 do
rw.C0 = rw.C0 * ang(0,M.D(20),0)
wait()
end
 
for i = 90,1,-20 do
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
wait()
end
for i = 90,1,-20 do
rw.C0 = rw.C0 * ang(0,0,M.D(20))
wait()
end
 
for i = 1,90,20 do
rw.C0 = rw.C0 * ang(0,M.D(-20),0)
wait()
end
end
-------------------------------------
 
 
hopper = Instance.new("HopperBin",ply.Backpack)
hopper.Name = "Crystal Lance" 
 
hopper.Deselected:connect(function()
lock(0)
anims.UnEquip()
end)
 
track = true
T.Track(p2,.3,.5,1)
 
hopper.Selected:connect(function(mouse)
lock(1)
anims.Equip()
 
mouse.KeyDown:connect(function(key)
k=key:lower()
if k == "f" then
anims.Slash()
elseif k == "q" then
anims.UnEquip()
wait(1)
anims.Equip()
end
end)
 
end)