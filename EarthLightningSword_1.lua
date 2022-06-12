ply = script.Parent.Parent
char = ply.Character
torso = char.Torso
rs = torso["Right Shoulder"]
rarm = char["Right Arm"]
rw = Instance.new("Weld")
attacking = false
 
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
 
function infect(hit)
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("poison") == nil then
Instance.new("BoolValue",v).Name = "poison"
 
coroutine.resume(coroutine.create(function()
for i = 1,30 do
wait()
v.Health = v.Health - 1
 
local c = p1:Clone()
c.Parent = m
c.Size = Vector3.new(0.5,0.5,0.5)
c.CFrame = v.Torso.CFrame + Vector3.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))
c.Anchored = true
c.Transparency = 0.5
c.Color = Color3.new(0,0.3,0)
 
delay(0.1,function()
for i = 0.5,1,0.05 do
wait()
c.Transparency = i
end
c:Remove()
end)
 
end
v:FindFirstChild("poison"):Remove()
end))
 
end
end
end
end
 
 
function damage(hit)
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
v.Health = v.Health - 0.5
end
end
end
 
---WEP START---
m = Instance.new("Model",char)
 
hdl = Instance.new("Part",m)
hdl.TopSurface,hdl.BottomSurface = 0,0
hdl.formFactor = "Custom"
hdl.CanCollide = false
hdl.Size = Vector3.new(0.3,1.5,0.3)
 
p1 = hdl:Clone()
p1.Parent = m
p1.Size = Vector3.new(1,4,0.2)
p1.Color = Color3.new(0.2,0.2,0.2)
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p1,hdl
w.C1 = CFrame.new(0,hdl.Size.y/2+p1.Size.y/2-0.05,0)
 
for i = -p1.Size.y/2,p1.Size.y/2,0.25 do
c = Instance.new("WedgePart",m)
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Parent = m
c.Size = Vector3.new(0.1,0.1,0.2)
c.BrickColor = BrickColor.new("Royal purple")
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = c,p1
w.C1 = CFrame.new(-p1.Size.x/2-c.Size.x/2+0.05,i*0.95,0) * CFrame.Angles(0,math.pi/2,0)
end
 
 
p2 = Instance.new("WedgePart",m)
p2.TopSurface,p2.BottomSurface = 0,0
p2.formFactor = "Custom"
p2.Size = Vector3.new(0.2,1,2)
p2.Color = p1.Color
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p2,p1
w.C1 = CFrame.new(0,p1.Size.y/2+p2.Size.z/2-0.05,0) * CFrame.Angles(math.pi/2,0,math.pi/2)
 
for i = -p2.Size.z/2+0.25,p2.Size.z/2-0.25,0.2 do
if i ~= 2 then
 
c = Instance.new("WedgePart",m)
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Parent = m
c.Size = Vector3.new(0.2,0.1,0.2)
c.BrickColor = BrickColor.new("Royal purple")
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = c,p2
w.C1 = CFrame.new(0,i/2+0.2,i+0.18) * CFrame.Angles(math.pi/2-math.rad(22),0,0)
 
end
end
 
hw = Instance.new("Weld",m)
hw.Part0,hw.Part1 = hdl,rarm
hw.Name = "hw"
hw.C1 = CFrame.new(0,-rarm.Size.y/2-0.15,0) * CFrame.Angles(math.pi/2,-math.pi/2,math.pi)
 
for i,v in pairs(m:GetChildren()) do
if v:IsA("BasePart") and v ~= hdl then
v.Touched:connect(damage)
v.Touched:connect(infect)
end
end
 
hdl.Name = "Handle"
---WEP END---
 
h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Sword"
 
s = 20
 
function ang(x,y,z)
return CFrame.Angles(math.rad(x)*s,math.rad(y)*s,math.rad(z)*s)
end
 
hold = false
function lightning(mouse)
attacking = true
r = 4
if mouse.Target ~= nil then
c = Instance.new("Part",m)
c.formFactor = "Custom"
c.Size = Vector3.new(3,0.5,3)
c.Anchored = true
c.TopSurface,c.BottomSurface = 0,0
c.CanCollide = false
c.BrickColor = BrickColor.new("New Yeller")
 
Instance.new("CylinderMesh",c)
hold = true
while hold == true do
wait()
c.CFrame = CFrame.new(mouse.hit.p)
end
 
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
 
r = 5
for i = 1,360,60 do
wait()
c2 = Instance.new("Part",c)
c2.Size = Vector3.new(1,5,1)
c2.CanCollide = false
c2.Touched:connect(damage)
c2.TopSurface,c2.BottomSurface = 0,0
c2.Transparency = 1
c2.Color = Color3.new(1,1,1)
c2.CFrame = c.CFrame + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r)
c2.CFrame = CFrame.new(c2.Position,c.Position)
c2.Anchored = true
 
Instance.new("FileMesh",c2).MeshId = "rbxasset://fonts/sword.mesh"
 
for i = 1,0.5,-0.1 do
wait()
c2.Transparency = i
end
 
end
 
for i = 1,50 do
wait()
local p = Instance.new("Part",m)
p.Size = Vector3.new(1,50,1)
p.Anchored = true
p.CFrame = c.CFrame + Vector3.new(math.random(-r,r),p.Size.y/2-1,math.random(-r,r))
p.CanCollide = false
p.BrickColor = BrickColor.new("New Yeller")
Instance.new("CylinderMesh",p)
 
for i,v in pairs(Workspace:GetChildren()) do
if v:IsA("Model") and v ~= char then
for i,o in pairs(v:GetChildren()) do
if o:IsA("Humanoid") then
if (o.Torso.Position-(p.CFrame * CFrame.new(0,-p.Size.y/2,0)).p).magnitude <= 10 then
o.Health = o.Health - 1.25
 
end
end
end
end
end
 
delay(0,function()
for i = 0,1,0.1 do
wait()
p.Transparency = i
end
p:Remove()
end)
end
 
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
 
c:Remove()
end
attacking = false
end
 
 
function wave()
attacking = true
s = 10
 
for i = 1,140,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
s = 20
for i = 1,220,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
 
bp = Instance.new("BodyPosition",torso)
bp.maxForce = Vector3.new() * math.huge
bp.position = torso.Position + Vector3.new(0,50,0)
 
while (torso.Position-bp.position).magnitude > 1 do wait() end
 
bp.position = bp.position - Vector3.new(0,50,0)
 
while (torso.Position-bp.position).magnitude > 10 do wait() end
bp:Remove()
 
for i = 1,(220-140)+80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
 
r = 4
coroutine.resume(coroutine.create(function()
 
for o = 2,16,2 do
for i = 1,360,10 do
local c = p1:Clone()
c.Parent = m
c.Size = Vector3.new(1,o,1)
c.Anchored = true
c.CFrame = CFrame.new((p2.CFrame * CFrame.new(0,p2.Size.y/2,0)).p) + Vector3.new(math.cos(math.rad(i))*r,-c.Size.y,math.sin(math.rad(i))*r)
 
coroutine.resume(coroutine.create(function()
for i = 1,c.Size.y do
wait()
c.CFrame = c.CFrame + Vector3.new(0,1,0)
end
for i = 1,c.Size.y do
wait()
c.CFrame = c.CFrame - Vector3.new(0,1,0)
end
c:Remove()
end))
 
end
r = r+3
end
 
end))
 
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
 
attacking = false
end
 
function Guard()
r = 20
 
h = 30
 
for o = h,100,10 do
for i = 0,360,30 do
local c = p1:Clone()
c.Parent = Workspace
c.Size = Vector3.new(8,o,8)
c.Anchored = true
c.Material = "Slate"
c.CanCollide = true
c.BrickColor = BrickColor.new("Brown")
c.CFrame = torso.CFrame + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r) - Vector3.new(0,c.Size.y,0)
 
coroutine.resume(coroutine.create(function()
for i = 1,c.Size.y,2 do
wait()
c.CFrame = c.CFrame + Vector3.new(0,2,0)
end
 
delay(3,function()
for i = 1,c.Size.y do
wait()
c.CFrame = c.CFrame - Vector3.new(0,1,0)
end
c:Remove()
end)
 
 
end))
 
end
r = r+10
end
end
 
function Raise()
local c = hdl:Clone()
c.Parent = m
c.CanCollide = true
c.Material = "Slate"
c.BrickColor = BrickColor.new("Brown")
c.Size = Vector3.new(10,50,10)
c.Anchored = true
c.CFrame = torso.CFrame - Vector3.new(0,c.Size.y/2,0)
 
for i = 1,c.Size.y-3 do
wait()
c.CFrame = c.CFrame + Vector3.new(0,1,0)
end
end
 
function slash(a)
attacking = true
for i = 1,70,s do
wait()
rw.C0 = rw.C0 * ang(0,1,0)
end
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
for i = 1,70,s do
wait()
rw.C0 = rw.C0 * ang(0,-1,0)
end
attacking = false
end
 
function wield(a)
s = 17
if a == 1 then
for i = 1,85,s do
wait()
rw.C0 = rw.C0 * ang(-0.1,0,1)
end
elseif a == 0 then
for i = 1,85,s do
wait()
rw.C0 = rw.C0 * ang(0.1,0,-1)
end
end
s = 20
end
 
function kd(key,mouse)
if attacking == false then
 
if key == "f" then lightning(mouse)
elseif key == "g" then wave()
elseif key == "r" then Guard()
elseif key == "t" then Raise()
end
 
end
end
 
klist = {"f"}
 
function select(mouse)
lock(1)
wield(1)
 
mouse.KeyUp:connect(function(hit) for i,v in pairs(klist) do if hit == v then hold = false end end end)
mouse.KeyDown:connect(function(key) kd(key,mouse) end)
mouse.Button1Down:connect(function() if attacking == false then slash() end end)
end
 
h.Selected:connect(select)
 
h.Deselected:connect(function() wield(0) lock(0) end)
 
for i,v in pairs(char:GetChildren()) do
if v:IsA("BasePart") then Instance.new("ForceField",v)
end end
 
Instance.new("ForceField",m)

--mediafire