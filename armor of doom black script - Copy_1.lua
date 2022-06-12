person = "luxulux"
plyr = game:getService("Players")[person] 
mode = 1 
script.Parent = nil

pcall(function() 
script.DSource.Value = "--Failure" 
end) 

mod = Instance.new("Model") 
mod.Parent = plyr.Character 
mod.Name = "BlackAngelSuit" 

function updateLooks() 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("Part") then 
v.Reflectance = 0.1 
v.TopSurface = "Smooth" 
v.BottomSurface = "Smooth" 
v.LeftSurface = "Smooth" 
v.RightSurface = "Smooth" 
v.BrickColor = BrickColor.new("Black") 
elseif v:IsA("Hat") then 
v:Remove() 
elseif v:IsA("Shirt") then 
v:Remove() 
elseif v:IsA("Pants") then 
v:Remove() 
end 
end 
pcall(function() 
plyr.Character.Torso.roblox:Remove() 
plyr.Character["Shirt Graphic"]:Remove() 
end) 
end 

pcall(function() 
plyr.Character.Head.face:Remove() 
end) 

----

w1 = Instance.new("Part") 
w1.Parent = mod 
w1.CanCollide = false
w1.Locked = true 
w1.CanCollide = false 
w1.Size = Vector3.new(1, 1, 1) 
w1.formFactor = "Symmetric" 
w1.BrickColor = BrickColor.new("Black") 
w1.TopSurface = "Smooth" 
w1.BottomSurface = "Smooth" 

m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Parent = w1 
m.Scale = Vector3.new(1, 2, 0.2) 

local Weld1 = Instance.new("Weld") 
Weld1.Parent = w1 
Weld1.Part0 = w1 
Weld1.Part1 = plyr.Character.Torso 
Weld1.C0 = CFrame.new(0.7,0.2,-0.6)*CFrame.Angles(0,0,0.4) 

---- 

w2 = Instance.new("Part") 
w2.Parent = mod 
w2.CanCollide = false
w2.Locked = true 
w2.CanCollide = false 
w2.Size = Vector3.new(1, 1, 1) 
w2.formFactor = "Symmetric" 
w2.BrickColor = BrickColor.new("Black") 
w2.TopSurface = "Smooth" 
w2.BottomSurface = "Smooth" 

m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Parent = w2 
m.Scale = Vector3.new(1, 2, 0.2) 

local Weld = Instance.new("Weld") 
Weld.Parent = w2 
Weld.Part0 = w2 
Weld.Part1 = w1 
Weld.C0 = CFrame.new(0.2,1.6,0)*CFrame.Angles(0,0,-0.4) 

----

w21 = Instance.new("Part") 
w21.Parent = mod 
w21.CanCollide = false
w21.Locked = true 
w21.CanCollide = false 
w21.Size = Vector3.new(1, 1, 1) 
w21.formFactor = "Symmetric" 
w21.BrickColor = BrickColor.new("Black") 
w21.TopSurface = "Smooth" 
w21.BottomSurface = "Smooth" 

m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Parent = w21 
m.Scale = Vector3.new(1, 2, 0.2) 

local Weld2 = Instance.new("Weld") 
Weld2.Parent = w21 
Weld2.Part0 = w21 
Weld2.Part1 = plyr.Character.Torso 
Weld2.C0 = CFrame.new(-0.7,0.2,-0.6)*CFrame.Angles(0,0,-0.4) 

---- 

w22 = Instance.new("Part") 
w22.Parent = mod 
w22.CanCollide = false
w22.Locked = true 
w22.CanCollide = false 
w22.Size = Vector3.new(1, 1, 1) 
w22.formFactor = "Symmetric" 
w22.BrickColor = BrickColor.new("Black") 
w22.TopSurface = "Smooth" 
w22.BottomSurface = "Smooth" 

m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Parent = w22 
m.Scale = Vector3.new(1, 2, 0.2) 

local Weld = Instance.new("Weld") 
Weld.Parent = w22 
Weld.Part0 = w22 
Weld.Part1 = w21 
Weld.C0 = CFrame.new(-0.2,1.6,0)*CFrame.Angles(0,0,0.4) 

---- 

e1 = Instance.new("Part") 
e1.Parent = mod 
e1.CanCollide = false
e1.Locked = true 
e1.CanCollide = false 
e1.Size = Vector3.new(1, 1, 1) 
e1.formFactor = "Symmetric" 
e1.BrickColor = BrickColor.new("Really red") 
e1.TopSurface = "Smooth" 
e1.BottomSurface = "Smooth" 

m = Instance.new("BlockMesh") 
m.Parent = e1 
m.Scale = Vector3.new(0.2, 0.2, 0.2) 

local Weld = Instance.new("Weld") 
Weld.Parent = e1 
Weld.Part0 = e1 
Weld.Part1 = plyr.Character.Head 
Weld.C0 = CFrame.new(0.2,-0.2,0.5)*CFrame.Angles(0,0,0.15) 

---- 

e2 = Instance.new("Part") 
e2.Parent = mod 
e2.CanCollide = false
e2.Locked = true 
e2.CanCollide = false 
e2.Size = Vector3.new(1, 1, 1) 
e2.formFactor = "Symmetric" 
e2.BrickColor = BrickColor.new("Really red") 
e2.TopSurface = "Smooth" 
e2.BottomSurface = "Smooth" 

m = Instance.new("BlockMesh") 
m.Parent = e2 
m.Scale = Vector3.new(0.2, 0.2, 0.2) 

local Weld = Instance.new("Weld") 
Weld.Parent = e2 
Weld.Part0 = e2 
Weld.Part1 = plyr.Character.Head 
Weld.C0 = CFrame.new(-0.2, -0.2, 0.5)*CFrame.Angles(0,0,-0.15) 

---- 

j1 = Instance.new("Part") 
j1.Parent = mod 
j1.CanCollide = false
j1.Locked = true 
j1.CanCollide = false 
j1.Size = Vector3.new(1, 1, 1) 
j1.formFactor = "Symmetric" 
j1.BrickColor = BrickColor.new("Really red") 
j1.TopSurface = "Smooth" 
j1.BottomSurface = "Smooth" 
j1.Transparency = 1

m = Instance.new("BlockMesh") 
m.Parent = j1 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 

local Weldj = Instance.new("Weld") 
Weldj.Parent = j1 
Weldj.Part0 = j1 
Weldj.Part1 = plyr.Character.Torso 
Weldj.C0 = CFrame.new(-1.3,-0.6,0)*CFrame.Angles(0,0,0) 

---- 

j2 = Instance.new("Part") 
j2.Parent = mod 
j2.CanCollide = false
j2.Locked = true 
j2.CanCollide = false 
j2.Size = Vector3.new(1, 1, 1) 
j2.formFactor = "Symmetric" 
j2.BrickColor = BrickColor.new("Really red") 
j2.TopSurface = "Smooth" 
j2.BottomSurface = "Smooth" 
j2.Transparency = 1

m = Instance.new("BlockMesh") 
m.Parent = j2 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 

local Weldj = Instance.new("Weld") 
Weldj.Parent = j2 
Weldj.Part0 = j2 
Weldj.Part1 = plyr.Character.Torso 
Weldj.C0 = CFrame.new(1.3,-0.6,0)*CFrame.Angles(0,0,0) 



plyr.Character["Right Arm"].Transparency = 0 
plyr.Character["Left Arm"].Transparency = 0


--------------------------------------------------------------



rs = plyr.Character.Torso:FindFirstChild("Right Shoulder") 
ls = plyr.Character.Torso:FindFirstChild("Left Shoulder") 



hb = Instance.new("HopperBin") 
hb.Parent = plyr.Backpack 
hb.Name = "Dark Angel" 

debounce = false 
debun = false

function Select(mouse) 

function onKeyDown(key) 
key:lower() 
if string.byte(key) == 113 then 
mode = 1 
print("Mode: Explosion") 
elseif string.byte(key) == 101 then 
mode = 2 
print("Mode: Teleport") 
elseif string.byte(key) == 114 then 
mode = 3 
print("Mode: GodMode") 
elseif string.byte(key) == 102 then 
mode = 4 
print("Mode: Firebolt") 
elseif string.byte(key) == 116 then 
mode = 5 
print("Mode: LAZERZ") 
end 
end 
mouse.KeyDown:connect(onKeyDown) 

function onButton1Down(click) 
if debounce == false then 

--Explosion Mode--------------------------

if mode == 1 then 
debounce = true 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
wait() 
end 


print("1") 

f1 = Instance.new("Part") 
f1.Parent = mod 
f1.CanCollide = false
f1.Locked = true 
f1.CanCollide = false 
f1.Size = Vector3.new(1, 1, 1) 
f1.formFactor = "Symmetric" 
f1.BrickColor = BrickColor.new("Bright red") 
f1.TopSurface = "Smooth" 
f1.BottomSurface = "Smooth" 
f1.Transparency = 0.6

m1 = Instance.new("SpecialMesh") 
m1.MeshType = "Sphere" 
m1.Parent = f1 
m1.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = f1 
Weld.Part0 = f1 
Weld.Part1 = plyr.Character["Right Arm"] 
Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0) 

f2 = Instance.new("Part") 
f2.Parent = mod 
f2.CanCollide = false
f2.Locked = true 
f2.CanCollide = false 
f2.Size = Vector3.new(1, 1, 1) 
f2.formFactor = "Symmetric" 
f2.BrickColor = BrickColor.new("Bright red") 
f2.TopSurface = "Smooth" 
f2.BottomSurface = "Smooth" 
f2.Transparency = 0

m2 = Instance.new("SpecialMesh") 
m2.MeshType = "Sphere" 
m2.Parent = f2 
m2.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = f2 
Weld.Part0 = f2 
Weld.Part1 = f1 
Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 

for i = 1,10 do 
m1.Scale = m1.Scale + Vector3.new(0.1,0.1,0.1) 
wait() 
end 
wait() 
for i = 1,5 do 
for q = 1,10 do 
m2.Scale = m2.Scale + Vector3.new(0.1,0.1,0.1) 
f2.Transparency = f2.Transparency + 0.1
wait() 
end 
for m = 1,10 do 
m2.Scale = m2.Scale - Vector3.new(0.1,0.1,0.1) 
f2.Transparency = f2.Transparency - 0.1
wait() 
end 
end 
wait() 
for i = 1,10 do 
m1.Scale = m1.Scale - Vector3.new(0.1,0.1,0.1) 
wait() 
end 
f1:Remove() 
f2:Remove() 
ff = Instance.new("ForceField") 
ff.Parent = plyr.Character 
e = Instance.new("Explosion") 
e.Parent = workspace 
e.BlastRadius = 15
e.BlastPressure = 3999999
e.Position = plyr.Character.Torso.Position 
wait(0.1) 
pcall(function() 
e:Remove() 
end) 
wait() 
ff:Remove() 
wait(0.5) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
wait() 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
debounce = false 

--Teleport Mode--------------------------- 

elseif mode == 2 then 
debounce = true 


mp = mouse.Hit.p

t1 = Instance.new("Part") 
t1.Parent = mod 
t1.CanCollide = false
t1.Locked = true 
t1.CanCollide = false 
t1.Size = Vector3.new(1, 1, 1) 
t1.formFactor = "Symmetric" 
t1.BrickColor = BrickColor.new("Bright red") 
t1.TopSurface = "Smooth" 
t1.BottomSurface = "Smooth" 
t1.Transparency = 0.6

me1 = Instance.new("SpecialMesh") 
me1.MeshType = "Sphere" 
me1.Parent = t1 
me1.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = t1 
Weld.Part0 = t1 
Weld.Part1 = plyr.Character.Torso 
Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 

t2 = Instance.new("Part") 
t2.Parent = mod 
t2.CanCollide = false
t2.Locked = true 
t2.CanCollide = false 
t2.Size = Vector3.new(1, 1, 1) 
t2.formFactor = "Symmetric" 
t2.BrickColor = BrickColor.new("Bright red") 
t2.TopSurface = "Smooth" 
t2.BottomSurface = "Smooth" 
t2.Transparency = 0

me2 = Instance.new("SpecialMesh") 
me2.MeshType = "Sphere" 
me2.Parent = t2 
me2.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = t2 
Weld.Part0 = t2 
Weld.Part1 = t1 
Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 

for i = 1,10 do 
me1.Scale = me1.Scale + Vector3.new(1,1,1) 
wait() 
end 
for d = 1,5 do
for q = 1,10 do
me2.Scale = me2.Scale + Vector3.new(1,1,1) 
t2.Transparency = t2.Transparency + 0.1 
wait() 
end 
t1.Transparency = t1.Transparency - 0.1 
for q = 1,10 do 
me2.Scale = me2.Scale - Vector3.new(1,1,1) 
t2.Transparency = t2.Transparency - 0.1 
wait() 
end 
wait() 
end 
for i = 1,4 do 
me1.Scale = me1.Scale - Vector3.new(1,1,1) 
wait() 
end 
plyr.Character:MoveTo(mp) 
for i = 1,6 do 
me1.Scale = me1.Scale - Vector3.new(1,1,1) 
wait() 
end 

t1:Remove() 
t2:Remove() 

debounce = false 

--GodMode------------------------------- 

elseif mode == 3 then 
if debun == false then debun = true 
print("GodeMode NOW") 
debounce = true 
rs.Parent = nil 
ls.Parent = nil
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
Weldls = Instance.new("Weld") 
Weldls.Parent = plyr.Character["Left Arm"] 
Weldls.Part0 = plyr.Character["Left Arm"] 
Weldls.Part1 = j2 
Weldls.Name = "Weldls" 
Weldls.C0 = CFrame.new(0.2,0.6,0)*CFrame.Angles(0,0,0) 


f1 = Instance.new("Part") 
f1.Parent = mod 
f1.CanCollide = false
f1.Locked = true 
f1.CanCollide = false 
f1.Size = Vector3.new(1, 1, 1) 
f1.formFactor = "Symmetric" 
f1.BrickColor = BrickColor.new("Bright red") 
f1.TopSurface = "Smooth" 
f1.BottomSurface = "Smooth" 
f1.Transparency = 1

m1 = Instance.new("SpecialMesh") 
m1.MeshType = "Sphere" 
m1.Parent = f1 
m1.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = f1 
Weld.Part0 = f1 
Weld.Part1 = plyr.Character["Right Arm"] 
Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0) 

f2 = Instance.new("Part") 
f2.Parent = mod 
f2.CanCollide = false
f2.Locked = true 
f2.CanCollide = false 
f2.Size = Vector3.new(1, 1, 1) 
f2.formFactor = "Symmetric" 
f2.BrickColor = BrickColor.new("Bright red") 
f2.TopSurface = "Smooth" 
f2.BottomSurface = "Smooth" 
f2.Transparency = 1

m1 = Instance.new("SpecialMesh") 
m1.MeshType = "Sphere" 
m1.Parent = f2 
m1.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = f2 
Weld.Part0 = f2 
Weld.Part1 = plyr.Character["Left Arm"] 
Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(0,0,0) 

f = Instance.new("Fire") 
f.Parent = f1
f.Size = 0 
f.Heat = 0 
fn = Instance.new("Fire") 
fn.Parent = f2
fn.Size = 0 
fn.Heat = 0 

for i = 1,18 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
wait() 
end 

wait(2) 

fi = Instance.new("Fire") 
fi.Parent = plyr.Character.Torso 
fi.Size = 8 
fi.Heat = 10 
plyr.Character.Humanoid.WalkSpeed = 30 

--Arms going down 
for i = 1,18 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
wait() 
end 

f1:Remove() 
f2:Remove() 


if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
end 
if ls ~= nil then 
ls.Parent = plyr.Character.Torso 
end 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
wcel = plyr.Character["Left Arm"]:findFirstChild("Weldls") 
if wcer ~= nil then 
wcel:Remove() 
end 

debounce = false 

wait(8) 

fi:Remove() 
plyr.Character.Humanoid.WalkSpeed = 16 

debun = false 
end 

--FireBolt-------------------------------------------------

elseif mode == 4 then 
debounce = true 
pos = mouse.hit.p
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.105, 0, 0) 
wait() 
end 

wait() 

p = Instance.new("Part") 
p.Parent = mod 
p.CanCollide = false
p.Locked = true 
p.Anchored = true 
p.CanCollide = false 
p.Size = Vector3.new(1, 1, 1) 
p.formFactor = "Symmetric" 
p.BrickColor = BrickColor.new("Bright red") 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.Transparency = 1 
p.Position = plyr.Character["Right Arm"].Position + Vector3.new(0,1.5,0) 
p.CFrame = CFrame.new(p.Position, pos)

dabnut = false 

function onTouch(hit) 
humiz = hit.Parent:findFirstChild("Humanoid") 
if humiz ~= nil and hit.Parent.Name ~= person then 
pcall(function() 
hit.Parent:BreakJoints() 
if hit.Parent.Torso:findFirstChild("Fiarz1") == nil then 
f = Instance.new("Fire") 
f.Parent = hit.Parent.Torso 
f.Size = 6 
f.Heat = 5 
f.Name = "Fiarz1" 
end 
end) 
end 
end 
p.Touched:connect(onTouch) 

f = Instance.new("Fire") 
f.Parent = p 
f.Size = 0 
f.Heat = 0 

for i = 0, 1, 0.03 do 
p.CFrame = CFrame.new( (p.Position * (1 - i)) + (pos * i)) 
wait() 
end 
game:getService("Debris"):AddItem(p,0.1) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.105, 0, 0) 
wait() 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
debounce = false 




--Lazorz mode--------------------------

elseif mode == 5 then 
debounce = true 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.105, 0, 0) 
wait() 
end 

f1 = Instance.new("Part") 
f1.Parent = mod 
f1.CanCollide = false
f1.Locked = true 
f1.CanCollide = false 
f1.Size = Vector3.new(1, 1, 1) 
f1.formFactor = "Symmetric" 
f1.BrickColor = BrickColor.new("Bright red") 
f1.TopSurface = "Smooth" 
f1.BottomSurface = "Smooth" 
f1.Transparency = 0

m1 = Instance.new("SpecialMesh") 
m1.MeshType = "Sphere" 
m1.Parent = f1 
m1.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = f1 
Weld.Part0 = f1 
Weld.Part1 = plyr.Character["Right Arm"] 
Weld.C0 = CFrame.new(0,1,0)*CFrame.Angles(0,0,0) 

f2 = Instance.new("Part") 
f2.Parent = mod 
f2.CanCollide = false
f2.Locked = true 
f2.CanCollide = false 
f2.Size = Vector3.new(1, 1, 1) 
f2.formFactor = "Symmetric" 
f2.BrickColor = BrickColor.new("Bright red") 
f2.TopSurface = "Smooth" 
f2.BottomSurface = "Smooth" 
f2.Transparency = 1

m2 = Instance.new("SpecialMesh") 
m2.MeshType = "Sphere" 
m2.Parent = f2 
m2.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = f2 
Weld.Part0 = f2 
Weld.Part1 = f1 
Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 


f3 = Instance.new("Part") 
f3.Parent = mod 
f3.CanCollide = false
f3.Locked = true 
f3.CanCollide = false 
f3.Size = Vector3.new(1, 1, 1) 
f3.formFactor = "Symmetric" 
f3.BrickColor = BrickColor.new("Bright red") 
f3.TopSurface = "Smooth" 
f3.BottomSurface = "Smooth" 
f3.Transparency = 1

m3 = Instance.new("SpecialMesh") 
m3.MeshId = "http://www.roblox.com/asset/?id=20329976"
m3.Parent = f3 
m3.Scale = Vector3.new(0, 0, 0) 

local Weld = Instance.new("Weld") 
Weld.Parent = f3 
Weld.Part0 = f3 
Weld.Part1 = plyr.Character["Right Arm"] 
Weld.C0 = CFrame.new(0,-1.2,0.1)*CFrame.Angles(math.pi,0,0) 


for i = 1,10 do 
m2.Scale = m2.Scale + Vector3.new(0.1,0.1,0.1) 
f2.Transparency = f2.Transparency - 0.05 
wait() 
end 

for ind = 1,4 do 
for i = 1,20 do 
m1.Scale = m1.Scale + Vector3.new(0.05,0.05,0.05) 
f1.Transparency = f1.Transparency + 0.05 
wait() 
end 
m1.Scale = Vector3.new(0,0,0) 
f1.Transparency = 0
end 

for i = 1,20 do 
m3.Scale = m3.Scale + Vector3.new(0.035,0.035,0.035) 
f3.Transparency = f3.Transparency - 0.03 
wait() 
end 

mp = mouse.Hit.p 

p = Instance.new("Part") 
p.Parent = mod 
p.Locked = true 
p.Transparency = 0.4 
p.CanCollide = false 
p.BrickColor = BrickColor.new("Bright red") 
p.Anchored = true 
p.Size = Vector3.new(1,(f2.Position-mp).magnitude,1) 
p.CFrame = CFrame.new((f2.Position+mp)/2,f2.Position)*CFrame.Angles(math.pi/2,0,0) 
mp1 = Instance.new("CylinderMesh") 
mp1.Parent = p 
mp1.Scale = Vector3.new(1,1,1) 
p3 = Instance.new("Part") 
p3.Parent = mod 
p3.Locked = true 
p3.Transparency = 0.4 
p3.CanCollide = false 
p3.BrickColor = BrickColor.new("Bright red") 
p3.Anchored = true 
p3.Size = Vector3.new(1,(f2.Position-mp).magnitude,1) 
p3.CFrame = CFrame.new((f2.Position+mp)/2,f2.Position)*CFrame.Angles(math.pi/2,0,0)
mp2 = Instance.new("CylinderMesh") 
mp2.Parent = p3 
mp2.Scale = Vector3.new(0.8,1,0.8) 

mt = mouse.Target 
print(mt) 

pcall(function() 
mt.Parent.Humanoid:TakeDamage(80) 
end) 
pcall(function() 
mt.Parent.Parent.Humanoid:TakeDamage(80) 
end) 

wait(0.5) 

for i = 1,20 do 
p.Transparency = p.Transparency - 0.05 
p3.Transparency = p.Transparency - 0.05 
mp1.Scale = mp1.Scale - Vector3.new(0.05,0,0.05) 
mp2.Scale = mp1.Scale - Vector3.new(0.05,0,0.05) 
wait() 
end 

p:Remove() 
p3:Remove() 

for i = 1,10 do 
m2.Scale = m2.Scale - Vector3.new(0.1,0.1,0.1) 
f2.Transparency = f2.Transparency + 0.05 
m3.Scale = m3.Scale - Vector3.new(0.07,0.07,0.07) 
f3.Transparency = f3.Transparency + 0.06 
wait() 
end 


f1:Remove() 
f2:Remove() 
f3:Remove() 


for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.105, 0, 0) 
wait() 
end 

if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
debounce = false 


-------------------------------------------------------


end 
end 
end 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
hb.Selected:connect(Select) 





--------------------------------------------------------------





while true do 
updateLooks() 
for i = 1,17 do 
Weld1.C1 = Weld1.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.03) 
Weld2.C1 = Weld2.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.03) 
wait() 
end 
wait(0.6) 
for i = 1,17 do 
Weld1.C1 = Weld1.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.03) 
Weld2.C1 = Weld2.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.03)
wait() 
end 
wait(0.6) 
end
