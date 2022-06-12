:ls --MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: JUST RUN!

c,d=pcall(function()
ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
head = char.Torso
track = false --- for tracking function
char.Humanoid.MaxHealth,char.Humanoid.Health,char.Humanoid.WalkSpeed = 9000,9000,30
dmg = 20

Bo = {["T"] = char["Torso"], ["H"] = char.Head}
Bo.Arms = {["R"] = char["Right Arm"], ["L"] = char["Left Arm"]}
Bo.Legs = {["L"] = char["Left Leg"], ["R"] = char["Right Leg"]}
Bo.Shls = {["R"] = torso["Right Shoulder"], ["L"] = torso["Left Shoulder"]}


rarm = char["Right Arm"]
rw,lw = Instance.new("Weld"),Instance.new("Weld")
normpos = Bo.Shls.R.C0

function lock(a) ---- updating this for 2 hands
if a == 1 then

---RIGHT---
rw.Parent = torso
rw.C0,rw.C1 = Bo.Shls.R.C0 ,Bo.Shls.R.C1
rw.Part0,rw.Part1 = Bo.Shls.R.Part0 ,Bo.Shls.R.Part1
Bo.Shls.R.Parent = nil

---LEFT---
lw.Parent = torso
lw.Part0,lw.Part1 = Bo.Shls.L.Part0 ,Bo.Shls.L.Part1
lw.C0,lw.C1 = Bo.Shls.L.C0 ,Bo.Shls.L.C1


elseif a == 0 then
Bo.Shls.R.Parent = torso
rw.Parent = nil
Bo.Shls.L.Parent = torso
lw.Parent = nil

end
end

cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new

attacks = {
["slash"] = CFrame.Angles(1,2,3)
}



sword = Instance.new("Model",char)

meshids = {["blast"] = 20329976, ["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372}---some meshids


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
hw = T.W(p,torso,0,0,1,0,0,M.D(-45))
holdpos = cfn(0,-1.5,0)*ang(math.pi/2,0,0)
torsopos = cfn(0,0,1)*ang(0,0,M.D(-45))

crystal = T.P(1,1,1,"Bright red",.5,false,false)
T.W(crystal,p,0,1,0,0,0,0)
T.FM(crystal,"diamond",.5,1,.5)

p.Touched:connect(function(h)
T.D(h)
end)

c=nil
mainweld = nil
radius = 1

main = T.P(1,1,1,"White",1,false,false)
mainweld = T.W(main,p,0,-1.5,0,0,0,0)


----SHIELD----
sp = T.P(2,4,.5,"Magenta",.5,false,false)
sp2 = T.P(1,4,.5,"Magenta",.5,false,false)
sp3 = T.P(1,4,.5,"Magenta",.5,false,false)
--sp,sp2,sp3.Transparency = 0.5,0.5,0.5
T.W(sp2,sp,-1.4,0,.15,0,M.D(20),0)
T.W(sp3,sp,1.4,0,.15,0,M.D(-20),0)

mw = T.W(sp,Bo.Arms.L,-.5,0,0,0,math.pi/2,0,0)
----------------------------------------

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

bg = nil
bp = nil
---------ANIMATIONS--------------



function BBGui(Text,Adornee,Par)
b=Instance.new("BillboardGui",Par)
b.Adornee = Adornee
f=Instance.new("Frame",b)
f.BackgroundTransparency = 1
t=Instance.new("TextLabel",b)
t.Text = Text
t.TextColor3 = Color3.new(1,0,1)
return b
end




anims = {}

anims.Twirl = function()
rw.C0 = rw.C0 * ang(-math.pi/2,0,0)
hw.C0 = hw.C0 * ang(math.pi/2,0,0)

bg = T.BG(head)
for i = 1,360*5,20 do
bg.cframe = bg.cframe * ang(0,math.rad(20),0) --rw.C0 = rw.C0 * ang(i)
local ball = T.P(2,2,2,"Lime green",.5,false,false)
ball.Position = (p3.CFrame * cfn(0,p3.Size.y/2,0)).p
bv = Instance.new("BodyVelocity",ball)
bv.maxForce = Vector3.new()*math.huge
bv.velocity = cfn(torso.Position,p3.Position).lookVector * 300
delay(.1,function()
local pos = cfn(ball.Position)
T.C(function()
local pa = T.P(1,1,1,"White",0,false,true)
pa.CFrame = pos
msh = T.FM(pa,"sphere",1,1,1)

for i = 1,30 do
wait()
pa.Size = v3n(i,i,i)
pa.CFrame = pos
pa.Transparency = i/30
end
pa:Remove()
end)
ball:Remove()
end)
wait()
end
bg:Remove()
rw.C0 = rw.C0 * ang(math.pi/2,0,0)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)
end

anims.Fire = function()
local f=Instance.new("Fire",p3)
dmg = 40
delay(20,function()
f:remove()
dmg = 20
end)
end

anims.ShieldUp = function()
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(0,0,M.D(-20))
end
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(M.D(20),0,0)
end
end

anims.ShieldDown = function()
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(M.D(-20),0,0)
end
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(0,0,M.D(20))
end

end


anims.Equip = function()
for i = 1,220,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(20))
end
hw.Part1,hw.C1 = Bo.Arms.R,holdpos
for i = 1,220-90,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
rw.C0 = normpos*ang(0,0,math.pi/2)
end

anims.UnEquip = function()
for i = 1,180,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(20))
end
hw.Part1,hw.C1 = torso,torsopos
for i = 1,220,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
end

anims.Equip2 = function()
for i = 1,90,5 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(5))
end rw.C0 = normpos * ang(0,0,M.D(90)) end

anims.UnEquip2 = function()
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

anims.Fist = function(mouse)
pa = T.P(1,1,1,"Black",.5,false,false)

--[[p=Instance.new("Part",Workspace)
p.Anchored = true --flying fist? ya]]--

T.FM(p,"fist",1,1,1)
T.W(p,Bo.Arms.L,0,-2,0,0,0,0)

end

anims.dragon = function(mouse)
local endpos = mouse.hit.p
for i = 1,90,20 do
lw.C0 = lw.C0 * ang(0,0,M.D(-20))
end

for i = 1,50,10 do
lw.C0 = lw.C0 * ang(M.D(-10),0,0)
end

local ray = T.P(5,1,5,"Bright red",.5,false,true)
startpos = sp.CFrame * cfn(0,0,-1)
T.FM(ray,"cylinder",1,1,1)

ray.CFrame = startpos



mag = (startpos.p-endpos).magnitude

local head = T.P(1,1,1,"Bright red",.5,false,true)
T.FM(head,"dragon",4,4,4)

for i = 1,mag do
wait()
startpos = sp.CFrame * cfn(0,0,-1)
ray.Size = v3n(5,i,5)
ray.CFrame = (cfn(startpos.p,endpos)*cfn(0,0,-ray.Size.y/2))*ang(math.pi/2,0,0)
head.CFrame = ray.CFrame * cfn(0,-ray.Size.y/2,0) * ang(-math.pi/2,0,0)
end

for i = 1,50,10 do
lw.C0 = lw.C0 * ang(M.D(10),0,0)
end

for i = 1,90,20 do
lw.C0 = lw.C0 * ang(0,0,M.D(20))
end

ray:Remove() head:Remove()
end


swirling = false
anims.Swirl = function(mouse)
if swirling == false and mouse.Target ~= nil then
swirling = true
eff = function(a)
T.C(function()
wait()
local p = T.P(1,1,1,"Black",.5,false,true)
p.CFrame = a
local msh = T.FM(p,"blast",1,1,1)
for i = 1,30 do
wait()
msh.Scale = Vector3.new(i,i/2,i)
p.Transparency = i/30
end
p:Remove()
end)
end

rw.C0 = normpos * ang(0,0,math.pi)
hw.C0 = hw.C0 * ang(math.pi/2,0,0)
bg = T.BG(torso)
local original = bg.cframe
--T.C(function() while swirling do wait() bg.cframe = bg.cframe * ang(0,M.D(100),0) end end)
eff(torso.CFrame *cfn(0,-3,0))
bp = T.BP(torso,torso.Position + v3n(0,70,0))
while (bp.position-torso.Position).magnitude > 3 do wait() end --- waits

if mouse.Target ~= nil then
bg.cframe = cfn(torso.Position,mouse.hit.p) * ang(-math.pi/2,0,0)
bp.position = (mouse.hit.p + v3n(0,3,0))

eff(bg.cframe * ang(math.pi,0,0))

while (bp.position-torso.Position).magnitude > 5 do wait() end --- waits

bg.cframe = original  bp:Remove()
game:GetService("Debris"):AddItem(bg,.5)

rw.C0 = normpos * ang(0,0,math.pi/2)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)
swirling = false
end

else
bp:Remove() bg:Remove() rw.C0 = normpos * ang(0,0,math.pi/2)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)

end
end

radi = 5
atk = {"Twirl","Fire","Swirl","Dragon","Slash","Fist","ShieldUp"}


function createhumanoid(name,part,parent)
mo = Instance.new("Model",parent)
mo.Name = name
part.Name = "Head"
part.Parent = mo
tor = T.P(.1,.1,.1,"White",1,false,false)
tor.Name = "Torso"
tor.Parent = mo
T.W(tor,part,0,0,0,0,0,0)
hum = Instance.new("Humanoid",mo)
hum.Health = 0
hum.MaxHealth = 0
end
---------------------------------
tab = nil

scrbox = nil
current = 1

function scroll(direction)
if scrbox ~= nil then
current = current+(direction)

if current > #atk then current = 1
elseif current < 1 then current = #atk
end

scrbox.Adornee = tab:GetChildren()[current]
end

end


ply.Chatted:connect(function(msg)

if msg == "#accept" and mod ~= nil then
anims[atk[current]]()
end

end)

function showtablets()
if tab == nil then

tab = Instance.new("Model",sword)

for i,v in pairs(atk) do
tp = T.P(2,1.5,2,"Black",.5,false,false)
tp.Parent = tab
createhumanoid(v,tp,tab)

local bp = T.BP(tp,torso.Position)

T.C(function()
while true do
wait()
o = 360/#atk*i
bp.position = torso.Position + v3n(M.Cos(M.D(o))*radi,0,M.Sin(M.D(o))*radi)
end
end)

end

scrbox = Instance.new("SelectionBox",Workspace)
scrbox.Adornee = tab:GetChildren()[current]

elseif tab ~= nil then tab:Remove() tab = nil
end
end

-------------------------------------

hopper = Instance.new("HopperBin",ply.Backpack)
hopper.Name = "Crystal Lance" 

hopper.Deselected:connect(function()
anims.UnEquip()
lock(0) track = false
end)


hopper.Selected:connect(function(mouse)
lock(1)
anims.Equip()
track = true
T.Track(p2,.3,.5,1)

mouse.KeyUp:connect(function(key)
if key == string.char(48) then anims.ShieldDown()
end end)

mouse.KeyDown:connect(function(key)
k=key:lower()
if k == "f" then anims.Slash()
elseif k == "q" then anims.UnEquip2() wait(1) anims.Equip2()
elseif k == "t" then anims.Twirl()
elseif key == "r" then anims.Swirl(mouse)
elseif key == "k" then anims.Fire()
elseif key == string.char(48) then anims.ShieldUp()
elseif key == "j" then anims.Fist(mouse)
elseif key == "g" then anims.dragon(mouse)

elseif key == "x" then showtablets()
elseif key == "z" then scroll(-1) elseif key == "c" then scroll(1)
elseif key == "v" then if scrbox ~= nil then anims[scrbox.Adornee.Name](mouse) end

end
end)

end)