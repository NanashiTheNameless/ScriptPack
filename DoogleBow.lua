

for _, v in pairs(game.Players.LocalPlayer.Backpack:children()) do 
if v.className == "HopperBin" and v.Name == "Bowz" then 
v:remove() 
end 
end 

bin = Instance.new("HopperBin") 
bin.Name = "Bowz" 
bin.Parent = game.Players.LocalPlayer.Backpack 

----------------------------------- Settings ------------------------------
colorz = {"Earth green", "Royal purple", "Really black", "Navy blue", "Bright yellow", "Bright red"} 
local BowColor = colorz[math.random(1, #colorz)] 
local HandleColor = "Medium stone grey" 
local BowMaterial = "Wood" 
local MeshTypez = "Brick" 
local FireEffect = true 
local SparkleEffect = false 

local DefaultPower = 1 
local DefaultDropPower = 0.035 
-------------------------------------------------- 

local Joint1 
local Joint1CF 
local Joint2 
local Main 
local FakeTorsoz 
local FakeTorsoWeld 
local FTWCF 
local P1 
local P2 
local PW3 
local PW3CF 
local Handil 
local down = false 
local cananimate = true 
local character = game.Players.LocalPlayer.Character 
local char = game.Players.LocalPlayer.Character 
local Torsoz = game.Players.LocalPlayer.Character:findFirstChild("Torso") 
local RA = game.Players.LocalPlayer.Character:findFirstChild("Right Arm") 
local LA = game.Players.LocalPlayer.Character:findFirstChild("Left Arm") 
local H = game.Players.LocalPlayer.Character:findFirstChild("Head") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 

function PlaySound(Pit, Vol, ID) 
local s = Instance.new("Sound", H) 
s.Pitch = Pit 
s.Volume = Vol 
s.SoundId = ID 
s:Play() 
game:service("Debris"):AddItem(s, 1.2) 
end 

local P = Instance.new("Part") 
P.Name = "BowPart" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Anchored = false 
P.CanCollide = false 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 
P.BrickColor = BrickColor.new(BowColor)  
P.Material = BowMaterial 

function Glow(ob) 
while ob.Parent.Parent == char do 
for i = 1, 16 do 
wait(0.03) 
ob.Transparency = ob.Transparency + 0.028 
end 
for i = 1, 16 do 
wait(0.03) 
ob.Transparency = ob.Transparency - 0.028 
end 
wait(0.25) 
end 
end 

function Build() 
for _, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "BowDesign" then 
v:remove() 
end 
end 

local model = Instance.new("Model", character) 
model.Name = "BowDesign" 
local h = P:Clone() 
h.Parent = model 
h.Name = "BowHandle" 
h.BrickColor = BrickColor.new(HandleColor) 
Handil = h 
local mesh = Instance.new("SpecialMesh", h) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(2.5,0.35,0.35) 
local w = Instance.new("Motor", h) 
w.Part0 = Torsoz 
w.Part1 = h 
w.C0 = CFrame.new(0.2,-0.2,0.65) * CFrame.Angles(0,0,math.pi*1.25) 
Main = w 

local r = P:Clone() 
r.Parent = model 
r.Name = "BowLimb" 
local mesh = Instance.new("SpecialMesh", r) 
mesh.MeshType = MeshTypez 
mesh.Scale = Vector3.new(0.5,4,0.5) 
local w = Instance.new("Motor", r) 
w.Part0 = h 
w.Part1 = r 
w.C0 = CFrame.new(0.7,0,0) * CFrame.Angles(0,0,math.pi/3.5) 
local e = P:Clone() 
e.Parent = model 
e.Name = "BowLimb" 
local mesh = Instance.new("SpecialMesh", e) 
mesh.MeshType = MeshTypez 
mesh.Scale = Vector3.new(0.5,4,0.5) 
local w = Instance.new("Motor", e) 
w.Part0 = h 
w.Part1 = e 
w.C0 = CFrame.new(-0.7,0,0) * CFrame.Angles(0,0,-math.pi/3.5) 

local p = P:Clone() 
p.Parent = model 
p.Name = "BowLimb" 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = MeshTypez 
mesh.Scale = Vector3.new(0.5,2.5,0.5) 
local w = Instance.new("Motor", p) 
w.Part0 = r 
w.Part1 = p 
w.C0 = CFrame.new(-0.2,-1.5,0) * CFrame.Angles(0,0,-0.35) 
local z = P:Clone() 
z.Parent = model 
z.Name = "BowStringPoint1" 
z.Material = "Plastic" 
z.Transparency = 0.15 
P1 = z 
coroutine.resume(coroutine.create(Glow), z) 
local mesh = Instance.new("SpecialMesh", z) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
local w = Instance.new("Motor", z) 
w.Part0 = p 
w.Part1 = z 
w.C0 = CFrame.new(0,-0.5,0) 
local p = P:Clone() 
p.Parent = model 
p.Name = "BowLimb" 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = MeshTypez 
mesh.Scale = Vector3.new(0.5,2.5,0.5) 
local w = Instance.new("Motor", p) 
w.Part0 = e 
w.Part1 = p 
w.C0 = CFrame.new(0.2,-1.5,0) * CFrame.Angles(0,0,0.35) 
local z = P:Clone() 
z.Parent = model 
z.Name = "BowStringPoint2" 
z.Material = "Plastic" 
z.Transparency = 0.15 
P2 = z 
coroutine.resume(coroutine.create(Glow), z) 
local mesh = Instance.new("SpecialMesh", z) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
local w = Instance.new("Motor", z) 
w.Part0 = p 
w.Part1 = z 
w.C0 = CFrame.new(0,-0.5,0) 

local p = P:Clone() 
p.Parent = model 
p.Name = "BowLimb" 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = MeshTypez 
mesh.Scale = Vector3.new(0.5,1.5,0.5) 
local w = Instance.new("Motor", p) 
w.Part0 = e 
w.Part1 = p 
w.C0 = CFrame.new(-0.1,-1.25,0) * CFrame.Angles(0,0,-0.35) 
local z = P:Clone() 
z.Parent = model 
z.Name = "BowLimb" 
z.Material = "Plastic" 
z.Transparency = 0.15 
coroutine.resume(coroutine.create(Glow), z) 
local mesh = Instance.new("SpecialMesh", z) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
local w = Instance.new("Motor", z) 
w.Part0 = p 
w.Part1 = z 
w.C0 = CFrame.new(0,-0.25,0) 
local p = P:Clone() 
p.Parent = model 
p.Name = "BowLimb" 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = MeshTypez 
mesh.Scale = Vector3.new(0.5,1.5,0.5) 
local w = Instance.new("Motor", p) 
w.Part0 = r 
w.Part1 = p 
w.C0 = CFrame.new(0.1,-1.25,0) * CFrame.Angles(0,0,0.35) 
local z = P:Clone() 
z.Parent = model 
z.Name = "BowLimb" 
z.Material = "Plastic" 
z.Transparency = 0.15 
coroutine.resume(coroutine.create(Glow), z) 
local mesh = Instance.new("SpecialMesh", z) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
local w = Instance.new("Motor", z) 
w.Part0 = p 
w.Part1 = z 
w.C0 = CFrame.new(0,-0.25,0) 

local z = P:Clone() 
z.Parent = model 
z.Name = "BowPointTip" 
z.Material = "Plastic" 
z.Transparency = 0.3 
if SparkleEffect == true then 
local s = Instance.new("Sparkles", z) 
s.SparkleColor = z.Color 
end 
if FireEffect == true then 
local f = Instance.new("Fire", z) 
f.Color = z.Color 
f.SecondaryColor = Color3.new(0.1,0.1,0.1) 
f.Size = 1 
f.Heat = -15 
end 
coroutine.resume(coroutine.create(Glow), z) 
local mesh = Instance.new("SpecialMesh", z) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.775,0.775,0.775) 
local w = Instance.new("Motor", z) 
w.Part0 = h 
w.Part1 = z 
w.C0 = CFrame.new(0,0.525,0) 

local mid = P:Clone() 
mid.Parent = model 
mid.Name = "BowStringPoint3" 
mid.Material = "Plastic" 
mid.BrickColor = BrickColor.new("Light stone grey") 
mid.Transparency = 0.05 
local mesh = Instance.new("CylinderMesh", mid) 
mesh.Scale = Vector3.new(0.15,8,0.15) 
mesh.Name = "Mesh" 
local w = Instance.new("Motor", mid) 
w.Name = "Weld" 
w.Part0 = h 
w.Part1 = mid 
w.C0 = CFrame.new(0,-1.5,0) * CFrame.Angles(0,0,math.pi/2) 
PW3 = w 
PW3CF = w.C0 

end 

Build() 

function ArrowEffect(obz) 
game:GetService("Debris"):AddItem(obz, 0.6) 
for _ = 1, 10 do 
obz.Transparency = obz.Transparency + 0.075 
obz.Mesh.Scale = obz.Mesh.Scale + Vector3.new(-0.05,0,-0.05) 
wait(0.05) 
end 
end 

function ShootNormalArrow(pos, Power, DropPower) 
local mdl = Instance.new("Model", workspace) 
mdl.Name = "ArrowShot" 
game:GetService("Debris"):AddItem(mdl, 5) 
local a = P:Clone() 
a.Parent = mdl 
a.Name = "Arrow" 
a.Material = "Plastic" 
a.CFrame = CFrame.new(Handil.Position, pos) * CFrame.Angles(0,math.pi,0) 
a.Anchored = true 
if SparkleEffect == true then 
local s = Instance.new("Sparkles", a) 
s.SparkleColor = P.Color 
end 
if FireEffect == true then 
local f = Instance.new("Fire", a) 
f.Color = P.Color 
f.SecondaryColor = Color3.new(0.1,0.1,0.1) 
f.Size = 1 
f.Heat = -15 
end 
local mesh = Instance.new("SpecialMesh", a) 
mesh.Name = "Mesh" 
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356" 
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781" 
mesh.Scale = Vector3.new(1,1,1.75) 
while mdl.Parent == workspace do 

local posz1 = a.CFrame * CFrame.Angles(0,math.pi,0) 
posz1 = posz1 * CFrame.new(0,0,-0.5) 
local ray = Ray.new(posz1.p, posz1.lookVector*(Power*1.5)) 
local hitz, enz = workspace:FindPartOnRay(ray, game.Players.LocalPlayer.Character) 
local dmg = math.random(math.floor(2.5*Power), math.floor(6.5*Power)) 
if hitz ~= nil then 
if hitz.Parent:findFirstChild("Humanoid") ~= nil then 
hitz.Parent.Humanoid:TakeDamage(dmg) 
elseif hitz.Parent.Parent:findFirstChild("Humanoid") then 
hitz.Parent.Parent.Humanoid:TakeDamage(dmg) 
end 
a:remove() 
break 
end 

a.CFrame = a.CFrame + a.CFrame.lookVector*-Power 
a.CFrame = a.CFrame * CFrame.Angles(DropPower,0,0) 
local c = a:Clone() 
c.Parent = mdl 
c.CFrame = a.CFrame * CFrame.Angles(math.pi/2,0,0) 
c.Transparency = 0.325 
c.BrickColor = BrickColor.new("Light stone grey") 
c.Reflectance = 0.075 
c.Mesh:remove() 
local mesh = Instance.new("SpecialMesh", c) 
mesh.Name = "Mesh" 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(0.4,Power*2,0.4) 
coroutine.resume(coroutine.create(ArrowEffect), c) 
wait() 
end 
end 

function onButton1Down(mouse) 
if cananimate == true then 
down = true 
while cananimate == false do 
wait() 
end 
cananimate = false 
Joint2 = Instance.new("Motor", Torsoz) 
Joint2.Part0 = FakeTorsoz 
Joint2.Part1 = LA 
LS.Part0 = nil 
local aaa = P:Clone() 
aaa.Parent = Torsoz 
aaa.Name = "Arrow" 
aaa.Material = "Plastic" 
aaa.Position = Torsoz.Position 
local mesh = Instance.new("SpecialMesh", aaa) 
mesh.Name = "Mesh" 
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356" 
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781" 
mesh.Scale = Vector3.new(1,1,1.75) 
local ww = Instance.new("Motor", aaa) 
ww.Part0 = LA 
ww.Part1 = aaa 
ww.C0 = CFrame.new(0.2,-2.5,0) * CFrame.Angles(math.pi/2,0.1,0) 
local String1 = PW3.Parent:Clone() 
String1.Anchored = true 
local String2 = PW3.Parent:Clone() 
String2.Anchored = true 
for i = 1, 6 do 
Joint2.C0 = CFrame.new(-1.5+(1.2/6)*i,(0.45/6)*i,(-0.5/6)*i) * CFrame.Angles((-0.1/6)*i,(0.4/6)*i,((math.pi/2.15)/6)*i) 
wait() 
end 
ww.Part0 = PW3.Parent 
ww.Part1 = aaa 
ww.C0 = CFrame.new(1.9,0,0) * CFrame.Angles(0,math.pi/2,0) 
local Powerz = DefaultPower 
local DropPowerz = DefaultDropPower 
local numz = 0 
String1.Parent = Torsoz 
String2.Parent = Torsoz 
PW3.Parent.Transparency = 1 
while down == true do 
if numz < 19 then 
Powerz = Powerz + 0.25 
DropPowerz = DropPowerz - (DefaultDropPower/20.25) 
Joint2.C0 = Joint2.C0 * CFrame.new(0,0.05,0) 
PW3.C0 = PW3.C0 * CFrame.new(-0.05,0,0) 
String1.CFrame = CFrame.new(P1.Position, PW3.Parent.Position) * CFrame.Angles(math.pi/2,0,0) 
String1.Mesh.Scale = Vector3.new(0.15,((P1.Position - PW3.Parent.Position).magnitude*2)+0.15,0.15) 
String1.Mesh.Offset = Vector3.new(0,-(P1.Position - PW3.Parent.Position).magnitude/2,0) 
String2.CFrame = CFrame.new(P2.Position, PW3.Parent.Position) * CFrame.Angles(math.pi/2,0,0) 
String2.Mesh.Scale = Vector3.new(0.15,((P2.Position - PW3.Parent.Position).magnitude*2)+0.15,0.15) 
String2.Mesh.Offset = Vector3.new(0,-(P1.Position - PW3.Parent.Position).magnitude/2,0) 
else break end 
numz = numz + 1 
wait(0.01) 
end 
while down == true do 
wait() 
String1.CFrame = CFrame.new(P1.Position, PW3.Parent.Position) * CFrame.Angles(math.pi/2,0,0) 
String1.Mesh.Scale = Vector3.new(0.15,((P1.Position - PW3.Parent.Position).magnitude*2)+0.15,0.15) 
String1.Mesh.Offset = Vector3.new(0,-(P1.Position - PW3.Parent.Position).magnitude/2,0) 
String2.CFrame = CFrame.new(P2.Position, PW3.Parent.Position) * CFrame.Angles(math.pi/2,0,0) 
String2.Mesh.Scale = Vector3.new(0.15,((P2.Position - PW3.Parent.Position).magnitude*2)+0.15,0.15) 
String2.Mesh.Offset = Vector3.new(0,-(P1.Position - PW3.Parent.Position).magnitude/2,0) 
end 
aaa:remove() 
String1:remove() 
String2:remove() 
Joint2:remove() 
LS.Part0 = FakeTorsoz 
PW3.C0 = PW3CF 
PW3.Parent.Transparency = 0 
PlaySound(1.05, 0.6, "http://www.roblox.com/asset/?id=16211041") 
coroutine.resume(coroutine.create(ShootNormalArrow), mouse.Hit.p, Powerz, DropPowerz) 
wait(0.1) 
cananimate = true 
end 
end 

function B1U() 
down = false 
end 

function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if key == "r" then 
bin.Name = "Deselect = Remove" 
bin.Deselected:connect(function() wait() bin:remove() end) 
end 
end 
end 


function Equip() 
while cananimate == false do 
wait() 
end 
cananimate = false 
local T = P:Clone() 
T.Parent = char 
T.Name = "FaikTorso" 
T.Size = Vector3.new(2,2,1) 
T.Material = "Plastic" 
T.BrickColor = Torsoz.BrickColor 
for _, vv in pairs(Torsoz:children()) do 
if vv.className == "Decal" then 
vv:Clone().Parent = T 
end 
end 
FakeTorsoz = T 
Torsoz.Transparency = 1 
local w = Instance.new("Motor", T) 
w.Part0 = Torsoz 
w.Part1 = T 
w.Name = "Weld" 
FakeTorsoWeld = w 
Joint1 = Instance.new("Motor", Torsoz) 
Joint1.Name = "Right Top" 
Joint1.Part0 = T 
Joint1.Part1 = RA 
Joint1.C0 = CFrame.new(1.5,0,0) 
RS.Part0 = nil 
LS.Part0 = T 
RH.Part0 = T 
LH.Part0 = T 
Main.Part0 = RA 
Main.C0 = CFrame.new(0,-1,-0.225) * CFrame.Angles(-0.4,-0.1,math.pi) 
for i = 1, 5 do 
w.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,((math.pi/2.75)/5)*i,0) 
Joint1.C0 = CFrame.new(1.5-(0.1/5)*i,(0.4/5)*i,(-0.4/5)*i) * CFrame.Angles((-0.2/5)*i,(0.6/5)*i,((math.pi/2)/5)*i) 
wait() 
end 
FTWCF = w.C0 
Joint1CF = Joint1.C0 
cananimate = true 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() B1U() end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
Equip() 
end) 

function UnEquip(joint1, joint2, ft, ftw) 
while cananimate == false do 
wait() 
end 
cananimate = false 
for i = 1, 5 do 
ftw.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,(math.pi/2.75)-(((math.pi/2.75)/5)*i),0) 
Joint1.C0 = CFrame.new(1.4+(0.1/5)*i,0.4-(0.4/5)*i,-0.4-(-0.4/5)*i) * CFrame.Angles((-0.2)-((-0.2/5)*i),(0.6)-((0.6/5)*i),((math.pi/2))-(((math.pi/2)/5)*i)) 
wait() 
end 
RS.Part0 = Torsoz 
LS.Part0 = Torsoz 
RH.Part0 = Torsoz 
LH.Part0 = Torsoz 
wait() 
joint1:remove() 
if joint2 ~= nil then 
joint2:remove() 
end 
ft:remove() 
cananimate = true 
end 

bin.Deselected:connect(function() 
UnEquip(Joint1, Joint2, FakeTorsoz, FakeTorsoWeld) 
Build() 
Torsoz.Transparency = 0 
end) 
--mediafire gtfo password