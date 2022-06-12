local/
script.Parent = nil
ply = game:GetService("Players").LocalPlayer
local char = ply.Character
local torso = char.Torso
local ls = torso["Left Shoulder"]
local rs = torso["Right Shoulder"]
local neck = torso.Neck
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
suita = false
rw = Instance.new("Weld")
script.Parent = nil
attacking = false
holding = false
ndam = 1
dam = ndam
damage = 1
nmind,nmaxd = 20,40
mind,maxd = nmind,nmaxd
wt = 0.3

function sd(a,b)
mind,maxd = a,b
if a == nil and b == nil then
mind,maxd = nmind,nmaxd
end
end

bm = Instance.new("FileMesh")
bm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rm = Instance.new("FileMesh")
rm.MeshId = "http://www.roblox.com/asset/?id=3270017"

g = Instance.new("BodyGyro",nil)
g.maxTorque = Vector3.new(4e+005,4e+005,4e+005)
g.P = 20e+003
g.cframe = char.Head.CFrame

local function damage(hit)
if attacking == true then
if hit.Parent ~= char then
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("Value") == nil then
damage = math.random(mind,maxd)
v.Health = v.Health-damage
showdam(v.Torso,damage)
game:GetService("Debris"):AddItem(Instance.new("BoolValue",v),wt)
end
end
end
end
end
end

local function damage2(hit,a,b,c)
if hit.Parent ~= char then
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("Value") == nil then
damage = math.random(a,b)
v.Health = v.Health-damage
showdam(v.Torso,damage)
game:GetService("Debris"):AddItem(Instance.new("BoolValue",v),c)
end
end
end
end
end

function showdam(tar,a)
bbg = Instance.new("BillboardGui",tar)
bbg.Adornee = tar
bbg.StudsOffset = Vector3.new(0,4.5,0)
bbg.Size = UDim2.new(0,100,0,50)

il = Instance.new("ImageLabel",bbg)
il.Size = UDim2.new(1,0,1,0)
il.Image = "http://www.roblox.com/asset/?id=31884718"
il.BackgroundTransparency = 1

box = Instance.new("TextLabel",bbg)
box.BackgroundTransparency = 1
box.Size = UDim2.new(1,0,1,0)
box.FontSize = 9
box.Text = tostring(a)
box.TextColor3 = Color3.new(1,0,0)
box.ZIndex = 5

game:GetService("Debris"):AddItem(bbg,wt)
end

function ss(pitch,sound)
local SlashSound = Instance.new("Sound")
if sound == nil then
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound:Play()
else SlashSound.SoundId = sound
end
SlashSound.Parent = m
SlashSound.Volume = .7 
SlashSound.Pitch = pitch
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

function lock(a)
if a == 1 then
rw.Parent = torso
rw.Part0 = rs.Part0
rw.Part1 = rs.Part1
rw.C0 = rs.C0
rw.C1 = rs.C1

rs.Parent = nil
elseif a == 0 then
rs.Parent = torso
rw.Parent = nil
end
end

script.Parent = nil
m = Instance.new("Model",char)

hdl = Instance.new("Part",m)
hdl.TopSurface,hdl.BottomSurface = 0,0
hdl.formFactor = "Custom"
hdl.Size = Vector3.new(0.3,2,0.1)
hdl.Color = Color3.new(0,0,1)

p1 = hdl:Clone()
p1.Parent = m
p1.Size = Vector3.new(2,6,0.1)
p1.Color = Color3.new(0,0,0)
p1.Name = "p1"

p2 = Instance.new("WedgePart",m)
p2.TopSurface,hdl.BottomSurface = 0,0
p2.formFactor = "Custom"
p2.Size = Vector3.new(0.1,2,2)
p2.Color = p1.Color
p2.Name = "p2"

w = Instance.new("Weld",m)
w.Part0,w.Part1 = p1,hdl
w.C1 = CFrame.new(0,hdl.Size.y/2+p1.Size.y/2-0.05,0)

w = Instance.new("Weld",m)
w.Part0,w.Part1 = p2,p1
w.C1 = CFrame.new(0,p1.Size.y/2+p2.Size.y/2-0.05,0) * CFrame.Angles(0,math.pi/2,0)

f = Instance.new("Fire",p1)
f.Size = 10
f.Color = Color3.new(0,0,1)
f.SecondaryColor = Color3.new(0.5,0.5,0.5)

p1.Touched:connect(damage) p2.Touched:connect(damage)
Instance.new("CylinderMesh",hdl)

hpos = CFrame.new(0,-larm.Size.y/2,0) * CFrame.Angles(-math.pi/2,-math.pi/2,0)
tpos = CFrame.new(0,0,torso.Size.z/2) * CFrame.Angles(0,0,math.pi/4)
spos = CFrame.new(0,-larm.Size.y/2-hdl.Size.y/2+0.5,0) * CFrame.Angles(0,0,-math.pi)

hw = Instance.new("Weld",hdl)
hw.Part0 = hdl
hw.Part1 = torso
hw.C1 = tpos

function ang(x,y,z)
return CFrame.Angles(math.rad(x)*s,math.rad(y)*s,math.rad(z)*s)
end

s = 20

function wield(a)
if a == 1 then
for i = 1,170,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
hw.Part1,hw.C1 = rarm,hpos
for i = 1,170/2,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
elseif a == 0 then
for i = 1,170/2,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
hw.Part1,hw.C1 = torso,tpos
for i = 1,170,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
end
end

h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Sode No konayuki"

tim = 0

function gui(a)
if a == 1 then
g = Instance.new("ScreenGui",ply.PlayerGui)
g.Name = "Charging"

gu = ply.PlayerGui:FindFirstChild("Charging")

lab = Instance.new("TextLabel",g)
lab.Size = UDim2.new(0.05,0,0.05)
lab.Position = UDim2.new(0,0,0.5,0)
lab.BackgroundTransparency = 0.3
lab.BackgroundColor = BrickColor.new("Royal purple")
lab.Name = "label"

elseif a == 2 then
tim = tim+0.1
gu:FindFirstChild("label").Text = tim

elseif a == 3 then
gu:Remove()
end
end

function att()
attacking = true
r = 3
for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
gui(1)
holding = true
while holding == true do wait(0.2) gui(2) end
gui(3)
for i = 1,360,20 do
local c = Instance.new("Part",m)
c.TopSurface = 0
c.BottomSurface = 0
c.FormFactor = "Custom"
c.Size = Vector3.new(0.5,0.5,0.5)
c.Transparency = 0.5
c.BrickColor = BrickColor.new("Bright red")
Instance.new("Sparkles",c)
cc = (p2.CFrame * CFrame.new(0,p2.Size.y/2,0)).p
c.CFrame = CFrame.new(cc) + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r)
c.CFrame = CFrame.new(c.Position,cc)

Instance.new("SpecialMesh",c).MeshType = 3

b = Instance.new("BodyVelocity",c)
b.maxForce = Vector3.new() * math.huge
b.velocity = c.CFrame.lookVector * -100

delay(tim,function()
e = Instance.new("Explosion",Workspace)
e.BlastPressure = 0
e.Position = c.Position
e.Hit:connect(function(hit) damage2(hit,30,40,0.035) end)
c:Remove()
end)
end

for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
attacking = false
tim = 0
end

function att2(tar,pos)
o = 3
base = Instance.new("CFrameValue",nil)
base.Value = torso.CFrame
if tar ~= nil then
local mag = (base.Value.p-pos).magnitude
local unit = (base.Value.p-pos).unit

for i = 1,mag*2,o do
wait()
local c = Instance.new("Part",m)
c.TopSurface = 0
c.BottomSurface = 0
c.formFactor = "Custom"
c.Anchored = true
c.Size = Vector3.new(0.5,0.5,0.5)
c.Transparency = 0.5
c.BrickColor = BrickColor.new("Navy blue")
c.Touched:connect(function(hit) damage2(hit,10,20,0.2) end)
c.CFrame = base.Value - unit*i*c.Size.z
Instance.new("Fire",c).Color = Color3.new(1,0,0)
game:GetService("Debris"):AddItem(c,0.5)
end
end
end

function demon()
holding = true

m2 = Instance.new("Model",char)

mp = Instance.new("Part")
mp.TopSurface = 0
mp.BottomSurface = 0
mp.formFactor = "Custom"
mp.Transparency = 1
mp.CanCollide = false

--CLAWS--
cl1 = mp:Clone()
cl1.Parent = m2
cl1.Size = Vector3.new(larm.Size.x,larm.Size.z,2.5)
cl1.Color = Color3.new(1,0,0)

mesh = Instance.new("FileMesh",cl1)
mesh.MeshId = "http://www.roblox.com/asset/?id=10681506"

cl2 = cl1:Clone()
cl2.Parent = m2

w = Instance.new("Weld",m2)
w.Part0,w.Part1 = cl1,rarm
w.C1 = CFrame.new(0,-rarm.Size.y/2-cl1.Size.y/2,0) * CFrame.Angles(math.pi/2,0,0)

w = Instance.new("Weld",m2)
w.Part0,w.Part1 = cl2,larm
w.C1 = CFrame.new(0,-rarm.Size.y/2-cl1.Size.y/2,0) * CFrame.Angles(math.pi/2,0,math.pi)
-------------
----WINGS-----
wing = mp:Clone()
wing.Parent = m2
wing.Size = Vector3.new(3,1,0.3)
wing.Color = Color3.new(0,0,0)

mesh = Instance.new("FileMesh",wing)
mesh.MeshId = "http://www.roblox.com/asset/?id=19367744"

w = Instance.new("Weld",m2)
w.Part0,w.Part1 = wing,torso
w.C1 = CFrame.new(0,torso.Size.y/4,torso.Size.z*1.2)
--------------------
for i = 1,0,-0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end

local speed = Instance.new("NumberValue",nil)
speed.Value = char.Humanoid.WalkSpeed

char.Humanoid.WalkSpeed = 100
while holding == true do
for i = 0,0.5,0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end

for _,v in pairs(char:GetChildren()) do
if v:IsA("Humanoid") then v.Health = v.Health + 5
end
end

for i = 0.5,0,-0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end

end
char.Humanoid.WalkSpeed = speed.Value
for i = 0,1,0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
m2:Remove()
end

function effect1(mode,pos,size,speed)
local co = Instance.new("Part",m)
co.TopSurface = 0
co.BottomSurface = 0
co.CFrame = pos
co.formFactor = "Custom"
co.Size = Vector3.new(0.1,0.1,0.1)
co.CanCollide = false
co.Color = Color3.new(0,0,1)

local CL = CFrame.new(co.Position)

w = Instance.new("Weld",mode)
w.Part0 = co
w.Part1 = mode
w.C0 = co.CFrame:inverse() * CL
w.C1 = co.CFrame:inverse() * CL

local mesh = Instance.new("SpecialMesh",co)
mesh.MeshType = 3

for i = 1,size,speed do
wait()
mesh.Scale = Vector3.new(i,i,i)
co.Transparency = i/size
end
co:Remove()
end

function att3()
attacking = true
sd(30,50)
for i = 1,40,s do
wait()
rw.C0 = rw.C0 * ang(0,1,0)
end
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
tip = p2.CFrame * CFrame.new(0,p2.Size.y/2,0)
effect1(hdl,tip,40,1)
char.archivable = true
holding = true
for i = 1,8 do
wait()
torso.CFrame = torso.CFrame + torso.CFrame.lookVector * 5

local cl = char:Clone()
cl.Parent = Workspace
cl.Torso.CFrame = torso.CFrame - torso.CFrame.lookVector * 3
e = Instance.new("Explosion",cl.Torso)
e.BlastPressure = 0
e.Position = cl.Torso.Position
e.Hit:connect(function(hit) damage2(hit,mind,maxd,0.1) end)

for _,v in pairs(cl.Model:GetChildren()) do
if v:IsA("BasePart") then v.Touched:connect(damage)
end
end

for i,v in pairs(cl:GetChildren()) do
if v.className == "Part" then
v.Transparency = 0.5
v.Anchored = true
v.Touched:connect(damage)
v.Color = Color3.new(1,1,1)
elseif v.className ~= "Part" and v.className ~= "Model" then v:Remove()
elseif v.Name == "Torso" then v["RightShoulder"],v["LeftShoulder"].Name = "lol"
elseif v.Name == "Head" then for _,o in pairs(v:GetChildren()) do if v.className == "Sound" then v:Remove() end end
end
end

delay(0.7,function()
for i = 0.5,1,0.05 do
wait()
for _,v in pairs(cl:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end

end
cl:Remove()
end)
end
char.archivable = false
for i = 1,130,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
for i = 1,130-90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,40,s do
wait()
rw.C0 = rw.C0 * ang(0,-1,0)
end
sd()
attacking = false
end

function suicide()
s = 10
for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(-1,0,0)
end
hw:Remove()
delay(0.3,function()
for i = 0,1,0.1 do
wait()
for _,v in pairs(m:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
m:Remove()
end)
wait(0.5)
for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(1,0,0)
end
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(-1,0,0)
end
e = Instance.new("Explosion",Workspace)
e.BlastRadius = 100
e.Position = (rarm.CFrame * CFrame.new(0,-rarm.Size.y/2,0)).p
end

function slash()
attacking = true
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
for i = 1,180,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
attacking = false
end

function kd(key,mouse)
if key == "x" then m:Remove() h:Remove() lock(0)
end
if attacking == false then
if key == "f" then att()
elseif key == "r" then att2(mouse.Target,mouse.hit.p)
elseif key == "e" then demon()
elseif key == "c" then att3()
elseif key == "q" then suicide()
end
end
end

keylist = {"f","e"}

function select(mouse)
lock(1)
wield(1)
mouse.KeyUp:connect(function(key) for i,v in pairs(keylist) do if key == v then holding = false end end end)
mouse.KeyDown:connect(function(key) kd(key,mouse) end)
mouse.Button1Down:connect(function() if attacking == false then slash() end end)
end

h.Selected:connect(select)
h.Deselected:connect(function() wield(0) lock(0) end)
