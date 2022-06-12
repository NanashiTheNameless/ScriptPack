--[[Glider]]--
--- Made by DoogleFox, Full credit given
local player = game:service("Players").LocalPlayer
local char = player.Character 
local cam = workspace.CurrentCamera 
local Torsoz = char:findFirstChild("Torso") 
local RA = char:findFirstChild("Right Arm") 
local LA = char:findFirstChild("Left Arm") 
local RL = char:findFirstChild("Right Leg") 
local LL = char:findFirstChild("Left Leg") 
local H = char:findFirstChild("Head") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 
local hu = char:findFirstChild("Humanoid") 
local mouse = player:GetMouse() 
local Lights = {} 
local JetFlames = {} 
local LightChangeSpeed = 0.02 
local LeftWing 
local RightWing 
local WingParts = {} 
local Flying = false 
local JetActive = false 
local idle = false 
local velo = 0 
local bp = Instance.new("BodyPosition") 
bp.maxForce = Vector3.new(1/0,1/0,1/0) 
bp.D = 100 
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.D = 320 
local bv = Instance.new("BodyVelocity") 
bv.maxForce = Vector3.new(1/0,1/0,1/0) 
local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 
P.BrickColor = BrickColor.new("Really black") 
P.Transparency = 0 
local bp = Instance.new("BodyPosition") 
bp.maxForce = Vector3.new(1/0,1/0,1/0) 
local bv = Instance.new("BodyVelocity") 
bv.maxForce = Vector3.new(1/0,1/0,1/0) 
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.D = 300 
local wingcolor = "Silver" 
local maxvelo = 60 
local acceleration = 1 
---------------------------------- Design ------------------------------------------ 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "Pack" then 
v:remove() 
end 
end 
local m = Instance.new("Model", char) 
m.Name = "Pack" 
local b = P:Clone() 
b.Parent = m 
local mesh = Instance.new("SpecialMesh", b) 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(2.6,1.2,2.6) 
local w = Instance.new("Motor", b) 
w.Part0 = Torsoz 
w.Part1 = b 
w.C0 = CFrame.new(0,0.2,0.35) * CFrame.Angles(math.pi/2,0,0) 
local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(2,1.2,2) 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(0,0.2,0.45) * CFrame.Angles(math.pi/2,0,0) 
local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(2.02,1.2,2.02) 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(0,0.2,0.445) * CFrame.Angles(math.pi/2,0,0) 
table.insert(Lights, p) 
for i = 1, 3 do 
local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("CylinderMesh", p) 
if i == 2 then 
mesh.Scale = Vector3.new(0.4,1.2,0.4) 
else 
mesh.Scale = Vector3.new(0.35,1,0.35) 
end 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(-0.3+(0.15*i),-0.25,0.55) 
if i == 2 then 
CenterJet = p 
end 
local l = P:Clone() 
l.Parent = m 
local mesh = Instance.new("CylinderMesh", l) 
local w = Instance.new("Motor", l) 
w.Part0 = p 
w.Part1 = l 
if i == 2 then 
mesh.Scale = Vector3.new(0.405,0.12,0.405) 
w.C0 = CFrame.new(0,-0.2,0) 
else 
mesh.Scale = Vector3.new(0.355,0.12,0.355) 
w.C0 = CFrame.new(0,-0.15,0) 
end 
table.insert(Lights, l) 
end 
for i = 1, 3 do 
local l = P:Clone() 
l.Parent = m 
local mesh = Instance.new("CylinderMesh", l) 
mesh.Scale = Vector3.new(0.12,0.1,0.12) 
local w = Instance.new("Motor", l) 
w.Part0 = Torsoz 
w.Part1 = l 
w.C0 = CFrame.new(0.3-(0.15*i),0.3,0.73) * CFrame.Angles(math.pi/2,0,0) 
table.insert(Lights, l) 
end 
------- wings ------ 
for i = 0, 1 do 
local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1,1,1) 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(0,0.55,0.55) * CFrame.Angles(0,math.pi*i,0) 
w.C1 = CFrame.new(0.425,0,0) 
local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new(wingcolor) 
c.Name = "WingSpine"..i+1 
local mesh = Instance.new("BlockMesh", c) 
mesh.Scale = Vector3.new(0.26,6,0.2) 
local w = Instance.new("Motor", c) 
w.Part0 = p 
w.Part1 = c 
w.C0 = CFrame.Angles(0,0,-math.pi/7) 
w.C1 = CFrame.new(0,1.5,0) 
w.MaxVelocity = 0.15 
if i == 0 then 
LeftWing = w 
else 
RightWing = w 
end 
table.insert(WingParts, c) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(0.2,4,2.2) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.485,-0.85,0) * CFrame.Angles(math.pi,-math.pi/2,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("BlockMesh", p) 
mesh.Scale = Vector3.new(2,0.5,0.2) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.535,0.275,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(0.2,1.5,1) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.785,0.77,0) * CFrame.Angles(0,-math.pi/2,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("BlockMesh", p) 
mesh.Scale = Vector3.new(0.94,1.5,0.2) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.3,0.77,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(0.2,1,0.977) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.3,1.385,0) * CFrame.Angles(0,-math.pi/2,0) 
table.insert(WingParts, p) 
end 
local spacedet = 0 
local KEYS = {false, false, false, false} 
mouse.KeyDown:connect(function(key) 
if key == string.char(32) then 
if (tick() - spacedet) < 0.3 then 
Flying = not Flying 
end 
spacedet = tick() 
end 
if key == "w" then 
KEYS[1] = true 
end 
if key == "a" then 
KEYS[2] = true 
end 
if key == "s" then 
KEYS[3] = true 
end 
if key == "d" then 
KEYS[4] = true 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key == "w" then 
KEYS[1] = false 
end 
if key == "a" then 
KEYS[2] = false 
end 
if key == "s" then 
KEYS[3] = false 
end 
if key == "d" then 
KEYS[4] = false 
end 
end) 
local LTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "TrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(LTrailParts, p) 
end 
local RTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "TrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(RTrailParts, p) 
end 
local Loldpos 
local Roldpos 
local lightval = {0.1, true} 
local refval = 0.1 
local firecolors = {"Bright red", "Bright orange"} 
local firespeed = 2 
local trailnum = 0 
local num = 0 
local lastflyaction = false 
local lastidleaction = false 
local idlebp = {0, 0, Torsoz.Position, true} 
while true do 
num = num + 1 
trailnum = trailnum + 1 
local unitz = (Torsoz.Position - cam.CoordinateFrame.p).unit 
local camsight = Torsoz.Position + (unitz*90) 
local diff = camsight.y - Torsoz.Position.y 
---------------------- Velocity Changes ----------------------------
----------- W key --------------
if KEYS[1] == true then 
velo = velo + acceleration 
else 
if velo > 0 then 
local UP = velo - (acceleration/1.5) 
if velo > 0 and UP < 0 then 
velo = velo + UP 
end 
velo = velo - (acceleration/1.5) 
end 
end 
------------ S key -------------
if KEYS[3] == true then 
if velo > 0 then 
velo = velo - acceleration*1.2 
else 
velo = velo - (acceleration/1.5) 
end 
else 
if velo < 0 then 
local DOWN = velo + acceleration 
if velo < 0 and DOWN > 0 then 
velo = velo - DOWN 
end 
velo = velo + acceleration 
end 
end 
local maxvelocalc = maxvelo 
if diff < -35 then 
if velo > 0 then 
maxvelocalc = maxvelo + (maxvelo * -(((diff+35)/110))) 
end 
elseif diff > 35 then 
if velo < 0 then 
maxvelocalc = maxvelo + (maxvelo * -((((-diff)+35)/110))) 
end 
end 
if velo >= maxvelocalc then 
velo = maxvelocalc 
elseif velo <= -maxvelocalc/2 then 
velo = -maxvelocalc/2 
end 
------------------------- Lights ----------------------
if lightval[1] < 0.15 then 
lightval[2] = true 
elseif lightval[1] > 0.76 then 
lightval[2] = false 
end 
if lightval[2] == true then 
lightval[1] = lightval[1] + LightChangeSpeed 
else 
lightval[1] = lightval[1] - LightChangeSpeed 
end 
for i, v in pairs(Lights) do 
v.Transparency = lightval[1] 
if LightChangeSpeed > 0.15 then 
v.BrickColor = BrickColor.new("Bright red") 
elseif LightChangeSpeed > 0.08 then 
v.BrickColor = BrickColor.new("Bright orange") 
else 
v.BrickColor = BrickColor.new("Silver") 
end 
end 
--------------------------------------------------------
--------------------- Wing Shines ------------------------- 
for i, v in pairs(WingParts) do 
if Flying == true then 
if v.Reflectance > 0.19 then 
v.Reflectance = v.Reflectance - 0.035 
else 
v.Reflectance = 0.19 
end 
else 
if v.Reflectance < 0.43 then 
v.Reflectance = v.Reflectance + 0.035 
else 
v.Reflectance = 0.43 
end 
end 
end 
----------------------------------------------------
------------------------ Jet Boost Flames -------------------------------- 
if num%firespeed == 0 and JetActive == true then 
local f = P:Clone() 
f.Parent = m 
f.Name = "JetFire" 
f.BrickColor = BrickColor.new(firecolors[math.random(1, #firecolors)]) 
f.Transparency = 0.15 
f.Anchored = true 
f.CFrame = CenterJet.CFrame * CFrame.new(0,-0.3,0) 
local mesh = Instance.new("BlockMesh", f) 
mesh.Scale = Vector3.new(0.6,0.6,0.6) 
table.insert(JetFlames, {mesh, (f.Position - CenterJet.Position).unit}) 
end 
for i, v in pairs(JetFlames) do 
if v[1].Parent.Transparency < 0.9 then 
v[1].Parent.Transparency = v[1].Parent.Transparency + 0.03 
v[1].Scale = v[1].Scale + Vector3.new(0.08,0.08,0.08) 
v[1].Parent.CFrame = v[1].Parent.CFrame * CFrame.Angles(math.random(-180,180)/360,math.random(-180,180)/360,math.random(-180,180)/360) 
if idle == false then 
v[1].Parent.CFrame = v[1].Parent.CFrame + (v[2]*0.1) 
else 
v[1].Parent.CFrame = v[1].Parent.CFrame + (v[2]*0.24) 
end 
else 
v[1].Parent:remove() 
table.remove(JetFlames, i) 
end 
end 
-------------------------------------------------- 
------------------------------ Flying --------------------------------
if Flying == true then 
if lastflyaction == false then 
bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.D = 350 
end 
--------- idle checker -------- 
if (velo > -0.5 and velo < 0.5) and (KEYS[1] == false and KEYS[3] == false) then 
idle = true 
if lastidleaction == false then 
idlebp[3] = Torsoz.Position 
end 
else 
idle = false 
end 
--------- idle float anim -----------
if idle == true then 
if lastidleaction == false then 
idlebp = {0, 0, Torsoz.Position, true} 
end 
if idlebp[2] >= 0.3 then 
idlebp[4] = false 
elseif idlebp[2] <= -0.3 then 
idlebp[4] = true 
end 
if idlebp[4] == false then 
idlebp[2] = idlebp[2] - 0.02 
elseif idlebp[4] == true then 
idlebp[2] = idlebp[2] + 0.02 
end 
idlebp[1] = idlebp[1] + idlebp[2] 
end 
---------------- Body Objects ---------------------- 
if idle == true then 
if lastidleaction == false then 
bv:remove() 
bp:remove() 
bp = Instance.new("BodyPosition") 
end 
hu.PlatformStand = true 
bp.Parent = Torsoz 
bp.maxForce = Vector3.new(1/0,1/0,1/0) 
bp.D = 100 
bp.position = idlebp[3] + Vector3.new(0,idlebp[1],0) 
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position + cam.CoordinateFrame.lookVector) 
else 
if lastidleaction == true then 
bp:remove() 
bv:remove() 
bv = Instance.new("BodyVelocity") 
end 
hu.PlatformStand = true 
bv.Parent = Torsoz 
bv.maxForce = Vector3.new(1/0,1/0,1/0) 
local torpos = Torsoz.Position + (cam.CoordinateFrame.lookVector * 10)
bv.velocity = CFrame.new(Torsoz.Position+Vector3.new(0,-2,0), torpos).lookVector*velo 
local cvelo = velo 
if velo > maxvelo then 
cvelo = maxvelo 
end 
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position + cam.CoordinateFrame.lookVector) * CFrame.Angles((-math.pi/2.3)*(cvelo/maxvelo),0,0) 
end 
elseif Flying == false then 
if lastflyaction == true then 
hu.PlatformStand = false 
bp.Parent = nil 
bg.Parent = nil 
bv.Parent = nil 
idle = false 
end 
end --- if flying == true 
-----------------------------------------
----------------------- Auto Anims ----------------------- 
if Flying == true then 
if diff > 40 then 
LeftWing.DesiredAngle = -0.3 
RightWing.DesiredAngle = -0.3 
LightChangeSpeed = 0.24 
JetActive = true 
ActiveTrails = true 
firespeed = 1 
elseif diff > -22 and diff < 40 then 
LeftWing.DesiredAngle = -math.pi/2.5 
RightWing.DesiredAngle = -math.pi/2.5 
LightChangeSpeed = 0.09 
JetActive = true 
ActiveTrails = true 
firespeed = 2 
elseif diff > -60 and diff < -22 then 
LeftWing.DesiredAngle = -math.pi/2.5 
RightWing.DesiredAngle = -math.pi/2.5 
LightChangeSpeed = 0.04 
JetActive = false 
ActiveTrails = true 
elseif diff < -60 then 
LeftWing.DesiredAngle = -0.1 
RightWing.DesiredAngle = -0.1 
LightChangeSpeed = 0.04 
JetActive = false 
ActiveTrails = true 
end 
if idle == true then 
LeftWing.DesiredAngle = -math.pi/2.2 
RightWing.DesiredAngle = -math.pi/2.2 
LightChangeSpeed = 0.09 
JetActive = true 
ActiveTrails = false 
firespeed = 1 
end 
if diff < -40 and velo < 0 then 
LeftWing.DesiredAngle = -0.3 
RightWing.DesiredAngle = -0.3 
LightChangeSpeed = 0.24 
JetActive = true 
ActiveTrails = true 
firespeed = 1 
elseif (diff < -22 and diff > -40) and velo < 0 then 
LeftWing.DesiredAngle = -math.pi/2.5 
RightWing.DesiredAngle = -math.pi/2.5 
LightChangeSpeed = 0.09 
JetActive = true 
ActiveTrails = true 
firespeed = 2 
end 
else 
LeftWing.DesiredAngle = 0 
RightWing.DesiredAngle = 0 
JetActive = false 
ActiveTrails = false 
LightChangeSpeed = 0.02 
end 
----------------------------------------- 
------------------------ Trail lines ------------------------------
if num%2 == 0 then 
if Flying == true and ActiveTrails == true then 
if velo > 0 then 
if velo < acceleration*7 then 
Loldpos = nil 
Roldpos = nil 
end 
elseif velo < 0 then 
if velo > -acceleration*7 then 
Loldpos = nil 
Roldpos = nil 
end 
end 
if Loldpos ~= nil then 
local newpos = (LeftWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
local t = LTrailParts[trailnum] 
t.Parent = m 
t.Anchored = true 
t.BrickColor = BrickColor.new(wingcolor) 
t.CFrame = CFrame.new((Loldpos+newpos)/2,Loldpos) * CFrame.Angles(math.pi/2,0,0) 
local mesh = Instance.new("CylinderMesh", t) 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(0.2,(Loldpos - newpos).magnitude*2,0.2) 
end 
if Roldpos ~= nil then 
local newpos = (RightWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
local t = RTrailParts[trailnum] 
t.Parent = m 
t.Anchored = true 
t.BrickColor = BrickColor.new(wingcolor) 
t.CFrame = CFrame.new((Roldpos+newpos)/2,Roldpos) * CFrame.Angles(math.pi/2,0,0) 
local mesh = Instance.new("CylinderMesh", t) 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(0.2,(Roldpos - newpos).magnitude*2,0.2) 
end 
Loldpos = (LeftWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
Roldpos = (RightWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
else 
LTrailParts[trailnum].Parent = nil 
RTrailParts[trailnum].Parent = nil 
Loldpos = (LeftWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
Roldpos = (RightWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
end 
end 
if trailnum == #LTrailParts-1 then 
trailnum = 0 
end 
if num%800 == 0 then 
for i, v in pairs(LTrailParts) do 
game:service("Debris"):AddItem(v, 0.7) 
end 
for i, v in pairs(RTrailParts) do 
game:service("Debris"):AddItem(v, 0.7) 
end 
LTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "LTrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(LTrailParts, p) 
end 
RTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "RTrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(RTrailParts, p) 
end 
end 
----------------------------------------------
lastflyaction = Flying 
lastidleaction = idle 
wait(0.03) 
end
