--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 4 and put your name where it says "YOUR NAME HERE"


name = "ic3w0lf589" 
me = game.Players[name] 
char = me.Character 
selected = false 
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form) 
part.Parent = parent 
part.formFactor = form 
part.CanCollide = collide 
part.Transparency = tran 
part.Reflectance = ref 
part.Size = Vector3.new(x,y,z) 
part.BrickColor = BrickColor.new(color) 
part.TopSurface = 0 
part.BottomSurface = 0 
part.Anchored = anchor 
part.Locked = true 
part:BreakJoints() 
end 
function weld(w, p, p1, a, b, c, x, y, z) 
w.Parent = p 
w.Part0 = p 
w.Part1 = p1 
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z) 
end 
function mesh(mesh, parent, x, y, z, type) 
mesh.Parent = parent 
mesh.Scale = Vector3.new(x, y, z) 
mesh.MeshType = type 
end 
sword = Instance.new("Model",me.Character) 
sword.Name = "Eyes" 
--Parts-------------------------Parts-------------------------Parts-------------------------Parts---------------------- 
head = char:findFirstChild("Head") 
torso = char:findFirstChild("Torso") 
bg = Instance.new("BodyGyro",nil) 
bg.P = 2000 
bg.maxTorque = Vector3.new(0,math.huge,0) 
trail1 = Instance.new("Part") 
prop(trail1,nil,false,0.4,0,0.1,0.1,1,"Toothpaste",true,"Custom") 
local t1 = Instance.new("SpecialMesh",trail1) 
t1.MeshType = "Brick" 
trail2 = Instance.new("Part") 
prop(trail2,nil,false,0.4,0,0.1,0.1,1,"Toothpaste",true,"Custom") 
local t2 = Instance.new("SpecialMesh",trail2) 
t2.MeshType = "Brick" 
local fb = Instance.new("Part") 
prop(fb,nil,false,1,0,0.1,0.1,0.1,"Toothpaste",true,"Custom") 
local fi = Instance.new("Fire",fb) 
fi.Name = "LolFire" 
fi.Size = 2 
fi.Heat = 25 
t1p = Vector3.new(-0.3,0.3,-0.55) 
t2p = Vector3.new(0.3,0.3,-0.55) 
function getp(path) 
local objs = {} 
for _,v in pairs(path:children()) do 
if v:IsA("BasePart") then 
if v:GetMass() < 30 then 
table.insert(objs,v) 
end 
end 
for _,k in pairs(v:children()) do 
if k:IsA("BasePart") then 
if k:GetMass() < 30 then 
table.insert(objs,k) 
end 
end 
for _,o in pairs(k:children()) do 
if o:IsA("BasePart") then 
if o:GetMass() < 30 then 
table.insert(objs,o) 
end 
end 
end 
end 
end 
return objs 
end 
if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin",me.Backpack) 
h.Name = "LazorEyez" 
script.Parent = h 
end 
bin = script.Parent 
bin.Selected:connect(function(mouse) 
mouse.Button1Down:connect(function() 
hold = true 
bg.Parent = torso 
trail1.Parent = char 
trail2.Parent = char 
fb.Parent = char 
while hold do 
local p1 = head.CFrame * CFrame.new(t1p).p 
local p2 = head.CFrame * CFrame.new(t2p).p 
local dist1 = (p1 - mouse.Hit.p).magnitude 
local dist2 = (p2 - mouse.Hit.p).magnitude 
bg.cframe = CFrame.new(torso.Position, mouse.Hit.p) 
trail1.CFrame = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1/2) 
trail2.CFrame = CFrame.new(p2,mouse.Hit.p) * CFrame.new(0,0,-dist2/2) 
t1.Scale = Vector3.new(1,1,dist1) 
t2.Scale = Vector3.new(1,1,dist2) 
local lol1 = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1) 
fb.CFrame = lol1 
local parts = getp(workspace) 
for _,v in pairs(parts) do 
if (v.Position - lol1.p).magnitude < 2 then 
if v:findFirstChild("LolFire") == nil then 
local f = Instance.new("Fire",v) 
f.Size = 0 
f.Heat = 5 
f.Name = "LolFire" 
coroutine.resume(coroutine.create(function() 
for i=0,10,0.2 do 
wait(0.1) 
f.Heat = i 
f.Size = i 
local lol = math.random(1,2) 
if lol == 1 then 
v.BrickColor = BrickColor.new("Neon orange") 
else 
v.BrickColor = BrickColor.new("Bright red") 
end 
end 
v:remove() 
end)) 
end 
end 
end 
wait() 
end 
end) 
mouse.Button1Up:connect(function() 
hold = false 
bg.Parent = nil 
trail1.Parent = nil 
trail2.Parent = nil 
fb.Parent = nil 
end) 
end) 

