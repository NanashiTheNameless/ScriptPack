-----------[MADE BY DoogleFox]----------------------------------------------------------------------------------------------- 
player = game:service("Players").DEADDEVIL1919
char = player.Character 

local P = Instance.new("Part") 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 

function GenFlag(cf, scale) 
P.Anchored = true 
P.CanCollide = true 
for i, v in pairs(workspace:children()) do 
if v.Name == "NFlag" then 
if v.Owner.Value == player then 
v:remove() 
end 
end 
end 
scale = scale or 1 
local m = Instance.new("Model", workspace) 
m.Name = "NFlag" 

local ob = Instance.new("ObjectValue", m) 
ob.Name = "Owner" 
ob.Value = player 

local b = P:Clone() 
b.Parent = m 
b.BrickColor = BrickColor.new("Bright red") 
b.Size = Vector3.new(14*scale,25*scale,0.5) 
b.CFrame = cf 

local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.CFrame = cf * CFrame.new(0,25/2*scale,0) * CFrame.Angles(0,0,math.pi/2) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Scale = Vector3.new(3.5,15*2*scale,3.5) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.CFrame = cf * CFrame.new(0,25/2*scale,0) * CFrame.Angles(0,0,math.pi/2) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Scale = Vector3.new(2,21*2*scale,2) 

------ left pole ------------------------------------------------
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.CFrame = cf * CFrame.new(9*scale,11.25*scale,0) * CFrame.Angles(math.pi/4.5,0,0) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Scale = Vector3.new(2.4,6*scale,2.4) 
mesh.Offset = Vector3.new(0,1.4*scale,0) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.CFrame = cf * CFrame.new(9*scale,11.25*scale,0) * CFrame.Angles(-math.pi/4.5,0,0) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Scale = Vector3.new(2.4,6*scale,2.4) 
mesh.Offset = Vector3.new(0,1.4*scale,0) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.Size = Vector3.new(1.2,25.5,1.2) 
p.CFrame = cf * CFrame.new(9*scale,-1.5*scale,0) 
local mesh = Instance.new("CylinderMesh", p) 

------ right pole ------------------------------------------------
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.CFrame = cf * CFrame.new(-9*scale,11.25*scale,0) * CFrame.Angles(math.pi/4.5,0,0) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Scale = Vector3.new(2.4,6*scale,2.4) 
mesh.Offset = Vector3.new(0,1.4*scale,0) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.CFrame = cf * CFrame.new(-9*scale,11.25*scale,0) * CFrame.Angles(-math.pi/4.5,0,0) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Scale = Vector3.new(2.4,6*scale,2.4) 
mesh.Offset = Vector3.new(0,1.4*scale,0) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new("Really black") 
p.Size = Vector3.new(1.2,25.5,1.2) 
p.CFrame = cf * CFrame.new(-9*scale,-1.5*scale,0) 
local mesh = Instance.new("CylinderMesh", p) 

----------------- icon -----------------------------------------
local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new("White") 
c.CFrame = cf * CFrame.new(0,0,0) * CFrame.Angles(math.pi/2,0,0) 
local mesh = Instance.new("CylinderMesh", c) 
mesh.Scale = Vector3.new(12*2*scale, 1.1, 12*2*scale) 

for i = 1, 4 do 
local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new("Really black") 
c.CFrame = cf * CFrame.Angles(0,0,math.pi/2*i) * CFrame.new(2*scale,0,-0.1) 
local mesh = Instance.new("BlockMesh", c) 
mesh.Scale = Vector3.new(8*scale,3*scale,1) 
local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new("Really black") 
c.CFrame = cf * CFrame.Angles(0,0,math.pi/2*i) * CFrame.new(3.25*scale,2*scale,-0.1) 
local mesh = Instance.new("BlockMesh", c) 
mesh.Scale = Vector3.new(3*scale,8*scale,1) 
end 

cf = cf * CFrame.Angles(0,math.pi,0) 

for i = 1, 4 do 
local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new("Really black") 
c.CFrame = cf * CFrame.Angles(0,0,math.pi/2*i) * CFrame.new(2*scale,0,-0.1) 
local mesh = Instance.new("BlockMesh", c) 
mesh.Scale = Vector3.new(8*scale,3*scale,1) 
local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new("Really black") 
c.CFrame = cf * CFrame.Angles(0,0,math.pi/2*i) * CFrame.new(3.25*scale,2*scale,-0.1) 
local mesh = Instance.new("BlockMesh", c) 
mesh.Scale = Vector3.new(3*scale,8*scale,1) 
end 

end 

-------------------------- Arm Band Func -------------------------------------

function ArmBand(charz, side) 
P.Anchored = false 
P.CanCollide = false 
for i, v in pairs(charz:children()) do 
if side == "Left" then 
if v.Name == "LArmBand" then 
v:remove() 
end 
elseif side == "Right" then 
if v.Name == "RArmBand" then 
v:remove() 
end 
end 
end 

side = side or "Left"  
local arm = charz:findFirstChild("Left Arm") 
if side == "Right" then 
arm = charz:findFirstChild("Right Arm") 
end 
if arm ~= nil then 
local s = arm.Size.x 

local m = Instance.new("Model", charz) 
m.Name = "LArmBand" 
if side == "Right" then 
m.Name = "RArmBand" 
end 

local b = P:Clone() 
b.Parent = m 
b.BrickColor = BrickColor.new("Bright red") 
local mesh = Instance.new("BlockMesh", b) 
mesh.Scale = Vector3.new(1.05*s*2,0.85*s*2,1.05*s*2) 
local w = Instance.new("Motor", b) 
w.Part0 = arm 
w.Part1 = b 
w.C0 = CFrame.new(0,0.2*s,0) 
if side == "Left" then 
w.C0 = w.C0 * CFrame.Angles(0,0,0) 
elseif side == "Right" then 
w.C0 = w.C0 * CFrame.Angles(0,math.pi,0) 
end 

local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new("White") 
local mesh = Instance.new("CylinderMesh", c) 
mesh.Scale = Vector3.new(0.65*s*2,0.1*s*2,0.65*s*2) 
local w = Instance.new("Motor", c) 
w.Part0 = b 
w.Part1 = c 
w.C0 = CFrame.new(-0.5*s,0,0) * CFrame.Angles(0,0,math.pi/2) 

for i = 1, 4 do 
local l = P:Clone() 
l.Parent = m 
l.BrickColor = BrickColor.new("Really black") 
local mesh = Instance.new("BlockMesh", l) 
mesh.Scale = Vector3.new(0.22*s*2,0.1*s*2,0.1*s*2) 
local w = Instance.new("Motor", l) 
w.Part0 = c 
w.Part1 = l 
w.C0 = CFrame.new(0,0.02*s,0) * CFrame.Angles(0,math.pi/2*i,0) * CFrame.new(0.11*s,0,0) 
local l = P:Clone() 
l.Parent = m 
l.BrickColor = BrickColor.new("Really black") 
local mesh = Instance.new("BlockMesh", l) 
mesh.Scale = Vector3.new(0.1*s*2,0.1*s*2,0.22*s*2) 
local w = Instance.new("Motor", l) 
w.Part0 = c 
w.Part1 = l 
w.C0 = CFrame.new(0,0.02*s,0) * CFrame.Angles(0,math.pi/2*i,0) * CFrame.new(0.17*s,0,0.1) 

end 

end 
end 

player.Chatted:connect(function(msg) 
if string.sub(msg, 1, 7) == "laband/" then 
local str = string.sub(msg, 8):lower() 
local num = str:len() 
for i, v in pairs(player.Parent:children()) do 
local str2 = string.sub(v.Name, 1, num):lower() 
if str2 == str then 
ArmBand(v.Character, "Left") 
end 
end 
elseif string.sub(msg, 1, 7) == "raband/" then 
local str = string.sub(msg, 8):lower() 
local num = str:len() 
for i, v in pairs(player.Parent:children()) do 
local str2 = string.sub(v.Name, 1, num):lower() 
if str2 == str then 
ArmBand(v.Character, "Right") 
end 
end 
elseif msg == "flag" then 
GenFlag(player.Character.Torso.CFrame * CFrame.new(0,11,4)) 
elseif msg == "noflag" then 
pcall(function() 
for i, v in pairs(workspace:children()) do 
if v.Name == "NFlag" then 
if v.Owner.Value == player then 
v:remove() 
end 
end 
end 
end) 
elseif msg == "remove n" then 
script:remove() 
end 
end) 