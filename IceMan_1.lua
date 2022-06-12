person = "anton20" 
plyr = game:getService("Players")[person] 
mode = 1
speed = false 
frozen = false 
raon = true 
debby = false 
script.Parent = nil 
pcall(function() 
script.DSource.Value = "LOLWUT" 
end) 
mod = Instance.new("Model") 
mod.Parent = plyr.Character 
mod.Name = "IceMageSuit" 
function updateLooks() 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("Part") then 
v.Reflectance = 0.1 
v.TopSurface = "Smooth" 
v.BottomSurface = "Smooth" 
v.LeftSurface = "Smooth" 
v.RightSurface = "Smooth" 
v.BrickColor = BrickColor.new("Medium blue") 
v.Reflectance = 0.2 
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
updateLooks()
-------Suit------------------------------------------------------
--Right arm ShoulderPad-----------------------
rasp = Instance.new("Part") 
rasp.Parent = mod 
rasp.Locked = true 
rasp.Size = Vector3.new(1, 1, 1) 
rasp.formFactor = "Symmetric" 
rasp.BrickColor = BrickColor.new("Bright blue") 
rasp.Reflectance = 0.3 
rasp.TopSurface = "Smooth" 
rasp.BottomSurface = "Smooth"
m = Instance.new("SpecialMesh") 
m.MeshType = "Wedge" 
m.Parent = rasp 
m.Scale = Vector3.new(1.01,1.01,1.01) 
local Weld = Instance.new("Weld") 
Weld.Parent = rasp 
Weld.Part0 = rasp 
Weld.Part1 = plyr.Character["Right Arm"]   
Weld.C0 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(90)) 
--Right arm ShoulderPad-----------------------
lasp = Instance.new("Part") 
lasp.Parent = mod 
lasp.Locked = true 
lasp.Size = Vector3.new(1, 1, 1) 
lasp.formFactor = "Symmetric" 
lasp.BrickColor = BrickColor.new("Bright blue") 
lasp.Reflectance = 0.3 
lasp.TopSurface = "Smooth" 
lasp.BottomSurface = "Smooth"
m = Instance.new("SpecialMesh") 
m.MeshType = "Wedge" 
m.Parent = lasp 
m.Scale = Vector3.new(1.01,1.01,1.01) 
local Weld = Instance.new("Weld") 
Weld.Parent = lasp 
Weld.Part0 = lasp 
Weld.Part1 = plyr.Character["Left Arm"]   
Weld.C0 = CFrame.new(0,0,-0.5)*CFrame.Angles(0,math.rad(90),math.rad(90)) 
--Crystal in top------------------------------------ 
cry = Instance.new("Part") 
cry.Parent = mod 
cry.Anchored = false 
cry.Size = Vector3.new(1,1,1) 
cry.formFactor = "Symmetric" 
cry.CFrame = CFrame.new(3,3,0) 
cry.BrickColor = BrickColor.new("Bright blue") 
cry.Reflectance = 0.2 
m = Instance.new("SpecialMesh") 
m.Parent = cry 
m.MeshId = "http://www.roblox.com/asset/?id=9756362" 
m.Scale = Vector3.new(0.2,0.5,0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = cry 
Weld.Part0 = cry 
Weld.Part1 = plyr.Character.Torso
Weld.C0 = CFrame.new(0.7,-0.5,0.5)*CFrame.Angles(0,0,0) 
--Hood on ur head FEWL------------------------------- 
hd = Instance.new("Part") 
hd.Parent = mod 
hd.Anchored = false 
hd.Size = Vector3.new(1,1,1) 
hd.formFactor = "Symmetric" 
hd.CFrame = CFrame.new(3,3,0) 
hd.BrickColor = BrickColor.new("Bright blue") 
hd.Reflectance = 0.2 
m = Instance.new("SpecialMesh") 
m.Parent = hd 
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=16952952" 
m.Scale = Vector3.new(1.05, 1.05, 1.05)
local Weld = Instance.new("Weld") 
Weld.Parent = hd 
Weld.Part0 = hd 
Weld.Part1 = plyr.Character.Head
Weld.C0 = CFrame.new(0,-0.35,0)*CFrame.Angles(0,0,0) 
--The right eye------------------------------------- 
e1 = Instance.new("Part") 
e1.Parent = mod 
e1.CanCollide = false
e1.Locked = true 
e1.CanCollide = false 
e1.Size = Vector3.new(1, 1, 1) 
e1.formFactor = "Symmetric" 
e1.BrickColor = BrickColor.new("Deep blue") 
e1.TopSurface = "Smooth" 
e1.BottomSurface = "Smooth" 
e1.Reflectance = 0.2
m = Instance.new("BlockMesh") 
m.Parent = e1 
m.Scale = Vector3.new(0.2, 0.2, 0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = e1 
Weld.Part0 = e1 
Weld.Part1 = plyr.Character.Head  
Weld.C0 = CFrame.new(0.2,-0.1,0.5)*CFrame.Angles(0,0,0.15) 
--The left eye----------------------------------------
e2 = Instance.new("Part") 
e2.Parent = mod 
e2.CanCollide = false
e2.Locked = true 
e2.CanCollide = false 
e2.Size = Vector3.new(1, 1, 1) 
e2.formFactor = "Symmetric" 
e2.BrickColor = BrickColor.new("Deep blue") 
e2.TopSurface = "Smooth" 
e2.BottomSurface = "Smooth" 
e2.Reflectance = 0.2
m = Instance.new("BlockMesh") 
m.Parent = e2 
m.Scale = Vector3.new(0.2, 0.2, 0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = e2 
Weld.Part0 = e2 
Weld.Part1 = plyr.Character.Head  
Weld.C0 = CFrame.new(-0.2, -0.1, 0.5)*CFrame.Angles(0,0,-0.15) 
--First arm joint---------------------------------------- 
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
--Second arm joint----------------------------------------------------
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
local Weldj1 = Instance.new("Weld") 
Weldj1.Parent = j2 
Weldj1.Part0 = j2 
Weldj1.Part1 = plyr.Character.Torso  
Weldj1.C0 = CFrame.new(1.3,-0.6,0)*CFrame.Angles(0,0,0) 
--Tool-----------------------------------------------------------------------------------------
rs = plyr.Character.Torso:FindFirstChild("Right Shoulder") 
ls = plyr.Character.Torso:FindFirstChild("Left Shoulder") 
hb = Instance.new("HopperBin") 
hb.Parent = plyr.Backpack 
hb.Name = "Freiz" 
debounce = false
function Select(mouse)  
function onKeyDown(key) 
if debounce == false then debounce = true 
key:lower() 
if string.byte(key) == 113 then 
--Laser mode-------------------------------------------------------------------
if frozen == false then
print("LaserActive") 
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
f1.BrickColor = BrickColor.new("Bright blue") 
f1.TopSurface = "Smooth" 
f1.BottomSurface = "Smooth" 
f1.Transparency = 0 
f1.Reflectance = 0.2
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
f2.BrickColor = BrickColor.new("Bright blue") 
f2.TopSurface = "Smooth" 
f2.BottomSurface = "Smooth" 
f2.Transparency = 1 
f2.Reflectance = 0.2
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
f3.BrickColor = BrickColor.new("Bright blue") 
f3.TopSurface = "Smooth" 
f3.BottomSurface = "Smooth" 
f3.Transparency = 1 
f3.Reflectance = 0.2
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
for ind = 1,2 do 
for i = 1,10 do 
m1.Scale = m1.Scale + Vector3.new(0.1,0.1,0.1) 
f1.Transparency = f1.Transparency + 0.1 
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
p.BrickColor = BrickColor.new("Bright blue") 
p.Anchored = true 
p.Reflectance = 0.2
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
p3.BrickColor = BrickColor.new("Bright blue") 
p3.Anchored = true 
p3.Reflectance = 0.2
p3.Size = Vector3.new(1,(f2.Position-mp).magnitude,1) 
p3.CFrame = CFrame.new((f2.Position+mp)/2,f2.Position)*CFrame.Angles(math.pi/2,0,0)
mp2 = Instance.new("CylinderMesh") 
mp2.Parent = p3 
mp2.Scale = Vector3.new(0.8,1,0.8) 
mt = mouse.Target 
print(mt) 
pcall(function() 
mt.Parent.Humanoid.WalkSpeed = 0 
mt.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = mt.Parent 
iceb.Name = "LOLURSTUCK" 
iceb.Size = Vector3.new(6,8,6) 
iceb.BrickColor = BrickColor.new("Medium blue") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.4 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = mt.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.02 
end) 
wait() 
end 
iceb:Remove() 
mt.Parent.Humanoid.WalkSpeed = 16 
mt.Parent.Torso.Anchored = false 
end) 
end) 
pcall(function() 
mt.Parent.Parent.Humanoid.WalkSpeed = 0 
mt.Parent.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = mt.Parent.Parent 
iceb.Name = "LOLURSTUCK" 
iceb.Size = Vector3.new(6,8,6) 
iceb.BrickColor = BrickColor.new("Medium blue") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.4 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = mt.Parent.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.02
end) 
wait() 
end 
iceb:Remove() 
mt.Parent.Parent.Humanoid.WalkSpeed = 16 
mt.Parent.Parent.Torso.Anchored = false 
end) 
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
end 
--Spear attack mode---------------------------------------------------------
elseif string.byte(key) == 122 then 
if frozen == false then 
print("Spear mode active") 
debounce = true 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.17) 
wait() 
end 
sm = Instance.new("Part") 
sm.Parent = mod 
sm.Locked = true 
sm.Size = Vector3.new(1, 1, 1) 
sm.formFactor = "Symmetric" 
sm.BrickColor = BrickColor.new("Deep blue") 
sm.Transparency = 1
sm.TopSurface = "Smooth" 
sm.CanCollide = false 
sm.BottomSurface = "Smooth" 
sm.Reflectance = 0.2 
m = Instance.new("CylinderMesh") 
m.Parent = sm  
m.Scale = Vector3.new(0.3, 5, 0.3) 
local Weldx = Instance.new("Weld") 
Weldx.Parent = sm 
Weldx.Part0 = sm 
Weldx.Part1 = plyr.Character["Right Arm"]
Weldx.C0 = CFrame.new(0, 0, -1.15)*CFrame.Angles(-1.559,0,0) 
sp = Instance.new("Part") 
sp.Parent = mod 
sp.Anchored = false 
sp.Size = Vector3.new(1,1,1) 
sp.formFactor = "Symmetric" 
sp.BrickColor = BrickColor.new("Medium blue") 
sp.Transparency = 1 
sp.CanCollide = false 
sp.TopSurface = "Smooth" 
sp.BottomSurface = "Smooth" 
sp.Reflectance = 0.2
m = Instance.new("SpecialMesh") 
m.Parent = sp 
m.MeshId = "http://www.roblox.com/asset/?id=1033714" 
m.Scale = Vector3.new(0.15,0.5,0.15) 
local Weld = Instance.new("Weld") 
Weld.Parent = sp 
Weld.Part0 = sp 
Weld.Part1 = sm
Weld.C0 = CFrame.new(0,-2.7,0)*CFrame.Angles(math.rad(180) ,0,0)
for i = 1,20 do 
sm.Transparency = sm.Transparency - 0.05
sp.Transparency = sp.Transparency - 0.05 
wait() 
end 
wait(0.2) 
for i = 1,10 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.1, 0, 0) 
wait() 
end 
wait(0.2) 
deb0z = false 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if deb0z == false then deb0z = true 
hit.Parent:BreakJoints() 
wait(0.2) 
deb0z = false 
end 
end 
end 
sp.Touched:connect(onTouch) 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if deb0z == false then deb0z = true 
hit.Parent:BreakJoints() 
wait(0.2) 
deb0z = false 
end 
end 
end 
sm.Touched:connect(onTouch)
for ind = 1,4 do 
for i = 1,6 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.4, -0.008, 0.008) 
wait() 
end 
for i = 1,6 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.4, 0.008, -0.008) 
wait() 
end 
end 
for i = 1,10 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.1, 0, 0) 
wait() 
end 
for i = 1,20 do 
sm.Transparency = sm.Transparency + 0.05
sp.Transparency = sp.Transparency + 0.05 
wait() 
end 
sm:Remove() 
sp:Remove() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.17) 
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
end 
--Shift speed clones---------------------------------------------------------
elseif string.byte(key) == 48 then 
if frozen == false then 
if speed == false then 
speed = true 
plyr.Character.Humanoid.WalkSpeed = 30 
print("Speed active") 
else 
speed = false 
plyr.Character.Humanoid.WalkSpeed = 16 
print("Speed unactive") 
end 
end 
--BOMB DROP :3------------------------------------------------------------- 
elseif string.byte(key) == 101 then 
if frozen == false then 
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
bomb = Instance.new("Part") 
bomb.Parent = workspace 
bomb.Anchored = false 
bomb.Size = Vector3.new(1,1,1) 
bomb.formFactor = "Symmetric" 
bomb.CFrame = plyr.Character.Torso.CFrame
bomb.BrickColor = BrickColor.new("Bright blue") 
bomb.Reflectance = 0.3 
m = Instance.new("SpecialMesh") 
m.Parent = bomb 
m.MeshId = "http://www.roblox.com/asset/?id=24388358" 
m.Scale = Vector3.new(1,1,1) 
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
wait(1) 
e = Instance.new("Explosion") 
e.Parent = bomb 
e.Position = bomb.Position 
e.BlastRadius = 10 
game:getService("Debris"):AddItem(bomb,1) 
end 
--Frozen in TIME-----------------------------------------------------------
elseif string.byte(key) == 114 then 
if frozen == false then 
frozen = true 
speed = false 
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
for i = 1,12 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
wait() 
end 
psh = Instance.new("Part") 
psh.Parent = mod 
psh.Name = "FrozenShield" 
psh.Anchored = true 
psh.Size = Vector3.new(15,15,15) 
psh.CFrame = plyr.Character.Torso.CFrame + Vector3.new(0,4.5,0) 
psh.Reflectance = 0.2 
psh.BrickColor = BrickColor.new("Medium blue") 
psh.Transparency = 0.5 
psh.TopSurface = "Smooth" 
psh.BottomSurface = "Smooth" 
plyr.Character.Torso.Anchored = true 
plyr.Character.Humanoid.WalkSpeed = 0 
ff = Instance.new("ForceField") 
ff.Parent = plyr.Character 
plyr.Character.Humanoid.Health = math.huge 
ff = Instance.new("ForceField") 
ff.Parent = mod 
else 
frozen = false 
for i = 1,12 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
wait() 
end 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("ForceField") then 
v:Remove() 
end 
end  
for i,v in pairs(mod:getChildren()) do 
if v:IsA("ForceField") then 
v:Remove() 
end 
end 
for i = 1,10 do 
psh.Transparency = psh.Transparency + 0.05 
wait() 
end 
psh:Remove() 
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
plyr.Character.Torso.Anchored = false 
plyr.Character.Humanoid.WalkSpeed = 16 
plyr.Character.Humanoid.Health = 100 
end 
--Ice grab--------------------------------------------------------------------- 
elseif string.byte(key) == 103 then 
if frozen == false and speed == false then 
if mouse.Target ~= nil then 
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
humz = Instance.new("Humanoid") 
humz.Parent = mod 
humz.MaxHealth = math.huge 
mt = Instance.new("Part") 
mt.Parent = mod 
mt.CanCollide = false
mt.Locked = true 
mt.Name = "Torso"
mt.CanCollide = false 
mt.Size = Vector3.new(1, 1, 1) 
mt.formFactor = "Symmetric" 
mt.BrickColor = BrickColor.new("Bright blue") 
mt.TopSurface = "Smooth" 
mt.BottomSurface = "Smooth" 
mt.Transparency = 1 
mt.Reflectance = 0.2
m1 = Instance.new("SpecialMesh") 
m1.MeshType = "Sphere" 
m1.Parent = mt 
m1.Scale = Vector3.new(0, 0, 0) 
local Weld = Instance.new("Weld") 
Weld.Parent = mt 
Weld.Part0 = mt 
Weld.Part1 = plyr.Character["Right Arm"]
Weld.C0 = CFrame.new(0,1,0)*CFrame.Angles(0,0,0) 
mth = Instance.new("Part") 
mth.Parent = mod 
mth.CanCollide = false
mth.Locked = true 
mth.Name = "Head" 
mth.CanCollide = false 
mth.Size = Vector3.new(1, 1, 1) 
mth.formFactor = "Symmetric" 
mth.BrickColor = BrickColor.new("Bright blue") 
mth.TopSurface = "Smooth" 
mth.BottomSurface = "Smooth" 
mth.Transparency = 1 
mth.Reflectance = 0.2
m2 = Instance.new("SpecialMesh") 
m2.MeshType = "Sphere" 
m2.Parent = mth 
m2.Scale = Vector3.new(0, 0, 0) 
local Weld = Instance.new("Weld") 
Weld.Parent = mth 
Weld.Part0 = mth 
Weld.Part1 = mt
Weld.C0 = CFrame.new(0, 0, 0) 
for i = 1,5 do 
m1.Scale = m1.Scale + Vector3.new(0.25,0.25,0.25) 
mt.Transparency = mt.Transparency - 0.2 
wait() 
end 
spl = Instance.new("SelectionPointLasso") 
spl.Parent = mod 
spl.Humanoid = humz 
spl.Point = mouse.Hit.p 
spl.Color = BrickColor.new("Bright blue") 
bp = Instance.new("BodyPosition") 
bp.Parent = plyr.Character.Torso
bp.position = mouse.Hit.p + Vector3.new(0,3,0) 
bp.maxForce = Vector3.new(100000,100000,100000) 
wait(1.5) 
for i = 1,5 do 
m1.Scale = m1.Scale + Vector3.new(-0.25,-0.25,-0.25) 
mt.Transparency = mt.Transparency + 0.2 
wait() 
end 
bp:Remove() 
spl:Remove() 
humz:Remove() 
mt:Remove() 
mth:Remove() 
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
end 
end
--Icy Punches---------------------------------------------------------
elseif string.byte(key) == 102 then 
if frozen == false then  
print("Punching NOW") 
raon = false 
debby = false 
if math.random(1,2) == 2 then --Ok, right arm punch
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,5 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.310, 0, 0) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,0.170) 
wait() 
end 
wait()
for i = 1,4 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.1) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,-0.41) 
wait() 
end 
wait(0.1) 
for i = 1,8 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.05) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,0.205) 
wait() 
end 
for i = 1,5 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.310, 0, 0) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,-0.170) 
wait() 
end 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if debby == false then debby = true  
hit.Parent.Humanoid:TakeDamage(math.random(10,25)) 
end 
end 
end 
plyr.Character["Right Arm"].Touched:connect(onTouch) 
if math.random(1,8) == 4 then --Will it freeze, or not?
print("Freeeeze") 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Torso:findFirstChild("LOLURSTUCK2") == nil then 
hit.Parent.Humanoid.WalkSpeed = 0 
hit.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = hit.Parent.Torso 
iceb.Name = "LOLURSTUCK2" 
iceb.Size = Vector3.new(4,8,4) 
iceb.BrickColor = BrickColor.new("Medium blue") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.5 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = hit.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.05 
end) 
end 
hit.Parent.Humanoid.WalkSpeed = 16 
hit.Parent.Torso.Anchored = false  
game:getService("Debris"):AddItem(iceb,0) 
end) 
end 
end 
end 
plyr.Character["Right Arm"].Touched:connect(onTouch) 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end  
else 
ls.Parent = nil 
Weldls = Instance.new("Weld") 
Weldls.Parent = plyr.Character["Left Arm"] 
Weldls.Part0 = plyr.Character["Left Arm"] 
Weldls.Part1 = j2 
Weldls.Name = "Weldls" 
Weldls.C0 = CFrame.new(0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,5 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0.310, 0, 0) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,0.170) 
wait() 
end 
wait()
for i = 1,4 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.1) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,-0.41) 
wait() 
end 
wait(0.1) 
for i = 1,8 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.05) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,0.205) 
wait() 
end 
for i = 1,5 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(-0.310, 0, 0) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,-0.170) 
wait() 
end 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if debby == false then debby = true  
hit.Parent.Humanoid:TakeDamage(math.random(10,25)) 
end 
end 
end 
plyr.Character["Left Arm"].Touched:connect(onTouch) 
if math.random(1,8) == 4 then --Will it freeze, or not?
print("Freeeeze") 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Torso:findFirstChild("LOLURSTUCK2") == nil then 
hit.Parent.Humanoid.WalkSpeed = 0 
hit.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = hit.Parent.Torso 
iceb.Name = "LOLURSTUCK2" 
iceb.Size = Vector3.new(4,8,4) 
iceb.BrickColor = BrickColor.new("Medium blue") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.5 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = hit.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.05 
end) 
wait() 
end 
hit.Parent.Humanoid.WalkSpeed = 16 
hit.Parent.Torso.Anchored = false  
game:getService("Debris"):AddItem(iceb,0)  
end) 
end 
end 
end 
plyr.Character["Left Arm"].Touched:connect(onTouch) 
end 
if ls ~= nil then 
ls.Parent = plyr.Character.Torso 
wcer = plyr.Character["Left Arm"]:findFirstChild("Weldls") 
if wcer ~= nil then 
wcer:Remove() 
end 
end  
end 
end 
raon = true 
--Crystal Teleport-------------------------------------------------- 
elseif string.byte(key) == 116 then 
if frozen == false then 
print("Teleporting") 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
cry2 = Instance.new("Part") 
cry2.Parent = mod 
cry2.Anchored = false 
cry2.Size = Vector3.new(1,1,1) 
cry2.formFactor = "Symmetric" 
cry2.CFrame = CFrame.new(3,3,0) 
cry2.BrickColor = BrickColor.new("Bright blue") 
cry2.Reflectance = 0.3 
mc2 = Instance.new("SpecialMesh") 
mc2.Parent = cry2 
mc2.MeshId = "http://www.roblox.com/asset/?id=9756362" 
mc2.Scale = Vector3.new(0.2,0.5,0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = cry2 
Weld.Part0 = cry2 
Weld.Part1 = plyr.Character.Torso
Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
for i = 1,7 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.220, 0, 0) 
wait() 
end 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.1) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,-0.05) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(-0.05,0,0) 
wait() 
end 
for i = 1,10 do 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame + Vector3.new(0,1,0) 
wait() 
end 
delay(0.001, function() 
for i = 1,15 do 
mc2.Scale = mc2.Scale + Vector3.new(0.4,0.52,0.4) 
wait() 
end 
end) 
plyr.Character.Torso.Anchored = true 
plyr.Character.Humanoid.WalkSpeed = 0 
wait(0.1) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.1) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,0.05) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0.05,0,0) 
wait() 
end 
for i = 1,7 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.220, 0, 0) 
wait() 
end 
plyr.Character.Torso.Anchored = false 
plyr.Character:MoveTo(mouse.Hit.p + Vector3.new(0,10,0) ) 
plyr.Character.Torso.Anchored = true 
delay(0.2, function() 
for i = 1,15 do 
mc2.Scale = mc2.Scale + Vector3.new(-0.4,-0.52,-0.4) 
wait() 
end 
end)  
wait(0.2)
plyr.Character.Torso.Anchored = false 
plyr.Character.Humanoid.WalkSpeed = 16 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end  
end 
--Spike now------------------------------------------------------------
elseif string.byte(key) == 120 then 
print("Spike Active") 
debun = false
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
sp = Instance.new("Part") 
sp.Parent = workspace 
sp.Name = "DeathSpike"  
sp.Anchored = true 
sp.Size = Vector3.new(1,10,1) 
sp.formFactor = "Symmetric" 
sp.BrickColor = BrickColor.new("Bright blue") 
sp.Transparency = 0.4 
sp.CanCollide = false 
sp.TopSurface = "Smooth" 
sp.BottomSurface = "Smooth" 
sp.Reflectance = 0.3
m = Instance.new("SpecialMesh") 
m.Parent = sp 
m.MeshId = "http://www.roblox.com/asset/?id=1033714" 
m.Scale = Vector3.new(1,10,1) 
sp2 = Instance.new("Part") 
sp2.Parent = workspace 
sp2.Name = "DeathSpikeInside"  
sp2.Anchored = true 
sp2.Size = Vector3.new(1,10,1) 
sp2.formFactor = "Symmetric" 
sp2.BrickColor = BrickColor.new("Bright blue") 
sp2.Transparency = 0 
sp2.CanCollide = false 
sp2.TopSurface = "Smooth" 
sp2.BottomSurface = "Smooth" 
sp2.Reflectance = 0.2
m = Instance.new("SpecialMesh") 
m.Parent = sp2 
m.MeshId = "http://www.roblox.com/asset/?id=1033714" 
m.Scale = Vector3.new(1,10,1) 
mp = mouse.Hit.p 
mpx = mp.X 
mpy = mp.Y 
mpz = mp.Z 
sp.CFrame = CFrame.new(mpx,workspace.Base.Position.Y - 5,mpz) 
sp2.CFrame = sp.CFrame + Vector3.new(0,-1,0) 
wait() 
delay(0,function() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.105, 0, 0) 
wait() 
end 
end)  
for i = 1,17 do 
sp.CFrame = sp.CFrame + Vector3.new(0,0.5,0) 
sp2.CFrame = sp2.CFrame + Vector3.new(0,0.5,0) 
wait() 
end 
debun = false 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and debun == false then 
debun = true 
hit.Parent.Humanoid:TakeDamage(math.random(30,40)) 
wait(1.5) 
debun = false 
end 
end 
sp.Touched:connect(onTouch) 
wait(0.5) 
delay(0,function() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.105, 0, 0) 
wait() 
end 
end)  
for i = 1,17 do 
sp.CFrame = sp.CFrame + Vector3.new(0,-0.5,0) 
sp2.CFrame = sp2.CFrame + Vector3.new(0,-0.5,0) 
wait() 
end 
pcall(function() 
sp:Remove() 
sp2:Remove() 
end) 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
---
end 
debounce = false 
end 
end 
mouse.KeyDown:connect(onKeyDown) 
function onButton1Down(click) 
end 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
hb.Selected:connect(Select) 
--End-------------------------------------------------------------------------------
while true do 
updateLooks() 
if speed == true then 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("Part") then 
c = v:Clone() 
c.Parent = mod 
c.Anchored = true 
c.CanCollide = false 
c.CFrame = v.CFrame 
c.BrickColor = BrickColor.new("Medium blue") 
c.Locked = true 
c.Reflectance = 0
c.Transparency = 0.5
pcall(function() 
c.face:Remove() 
end) 
game:getService("Debris"):AddItem(c,0.3) 
end 
end 
end 
wait() 
end 