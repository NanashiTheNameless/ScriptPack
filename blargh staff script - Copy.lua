script.Parent = nil
ply = game.Players.LocalPlayer
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
 
-----WEAPON START------
m = Instance.new("Model",char)
 
hdl = Instance.new("Part",m)
hdl.TopSurface,hdl.BottomSurface = 0,0
hdl.formFactor = "Custom"
hdl.Size = Vector3.new(0.3,3,0.3)
hdl.CanCollide = false
hdl.Color = Color3.new(0,0.3,0)
Instance.new("CylinderMesh",hdl)
 
p1 = hdl:Clone()
p1.Parent = m
p1.Size = Vector3.new(0.5,0.2,0.5)
 
p2 = hdl:Clone()
p2.Parent = m
p2.Mesh:Remove()
p2.Size = Vector3.new(0.7,0.5,0.7)
p2.Color = Color3.new(1,1,0)
Instance.new("SpecialMesh",p2).MeshType = 3
 
p3 = p1:Clone()
p3.Parent = m
p3.Size = Vector3.new(0.4,0.2,0.4)
 
p4 = p2:Clone()
p4.Parent = m
p4.Size = Vector3.new(0.2,0.2,0.2)
 
p5 = p2:Clone()
p5.Parent = m
p5.Size = Vector3.new(0.4,0.4,0.4)
 
p6 = p4:Clone()
p6.Parent = m
p6.Color = hdl.Color
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p1,hdl
w.C1 = CFrame.new(0,hdl.Size.y/2+p1.Size.y/2-0.05,0)
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p2,p1
w.C1 = CFrame.new(0,p1.Size.y/2+p2.Size.y/2-0.05,0)
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p3,p2
w.C1 = CFrame.new(0,p2.Size.y/2+p3.Size.y/2-0.05,0)
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p4,p3
w.C1 = CFrame.new(0,p4.Size.y/2+p3.Size.y/2-0.05,0)
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p5,hdl
w.C1 = CFrame.new(0,-hdl.Size.y/2-p5.Size.y/2+0.05,0)
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p6,p5
w.C1 = CFrame.new(0,-p5.Size.y/2,0)
 
hw = Instance.new("Weld",m)
hw.Part0,hw.Part1 = hdl,rarm
hw.C1 = CFrame.new(0,-rarm.Size.y/2-0.20,0) * CFrame.Angles(-math.pi/2,0,0)
-----WEAPON END-----
 
down = false
function boom(mouse)
if mouse.Target ~= nil then
c = Instance.new("Part",m)
c.formFactor = "Custom"
c.Size = Vector3.new(0.1,0.1,0.1)
c.Anchored = true
c.CanCollide = false
mesh = Instance.new("SpecialMesh",c)
mesh.MeshType = 3
mesh.Scale = Vector3.new(5,1,5) * 10
c.CFrame = CFrame.new(mouse.hit.p)
c.Transparency = 0.5
c.Color = Color3.new(0.1,0.3,0)
c.TopSurface,c.BottomSurface = 0,0
down = true
while down == true do
wait()
if (p2.Position-mouse.hit.p).magnitude <= 40 then
c.CFrame = CFrame.new(mouse.hit.p)
end
end
 
local ball = p2:Clone()
ball.Parent = m
ball.Transparency = 0.5
ball.Size = Vector3.new(10,10,10)
ball.CFrame = p2.CFrame * CFrame.new(0,3,0)
ball:BreakJoints()
 
bp = Instance.new("BodyPosition",ball)
bp.maxForce = Vector3.new() * math.huge
bp.Name = "bp"
bp.position = c.Position + Vector3.new(0,10,0)
 
while (ball.Position-bp.position).magnitude > 2 do wait() end
 
ball.bp:Remove()
ball.Anchored = true
 
r = 5.5
 
for i = 1,360,180 do
wait()
local c2 = ball:Clone()
c2.Parent = m
c2.Size = ball.Size/3
c2.CFrame = ball.CFrame + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r)
 
coroutine.resume(coroutine.create(function()
while true do
wait()
for o = 1,360,20 do
wait()
c2.CFrame =  ball.CFrame + Vector3.new(math.cos(math.rad(o))*r,0,math.sin(math.rad(o))*r)
end
end
end))
 
end
 
for i = 1,360,180 do
wait()
local c2 = ball:Clone()
c2.Parent = m
c2.Size = ball.Size/3
c2.CFrame = ball.CFrame + Vector3.new(0,math.cos(math.rad(i))*r,math.sin(math.rad(i))*r)
 
coroutine.resume(coroutine.create(function()
while true do
wait()
for o = 1,360,20 do
wait()
c2.CFrame = ball.CFrame + Vector3.new(0,math.cos(math.rad(o))*r,math.sin(math.rad(o))*r)
end
end
end))
 
end
 
c:Remove()
 
end
end
 
function rise(mouse)
r = 5
he = 0
if mouse.Target ~= nil then
 
local g = Instance.new("ScreenGui",ply.PlayerGui)
 
lab = Instance.new("TextLabel",g)
lab.Size = UDim2.new(0.05,0,0.05,0)
lab.Position = UDim2.new(-0.05,0,0.5,0)
lab.FontSize = 7
 
lab:TweenPosition(UDim2.new(0.15,0,0.5,0),"Out","Quad",0.5)
 
pointer = hdl:Clone()
pointer.Parent = Workspace.CurrentCamera
pointer.Size = Vector3.new(0.5,0.2,0.5)
pointer.Anchored = true
 
down = true
coroutine.resume(coroutine.create(function() while down == true do wait()pointer.CFrame = CFrame.new(mouse.hit.p) end pointer:Remove() end))
while down == true do wait(0.25) he = he+2 lab.Text = he  end
 
local pos = Instance.new("CFrameValue",nil)
pos.Value = mouse.hit
for i = 1,360,20 do
wait()
local c = Instance.new("Part",Workspace)
c.TopSurface,c.BottomSurface = 0,0
c.Size = Vector3.new(1,he,1)
c.Anchored = true
Instance.new("CylinderMesh",c)
c.Color = Color3.new(0.1,0,0.3)
c.CFrame = CFrame.new((pos.Value + Vector3.new(math.cos(math.rad(i))*r,-he/2,math.sin(math.rad(i))*r)).p)
 
coroutine.resume(coroutine.create(function()
for i = 1,he do
wait()
c.CFrame = c.CFrame + Vector3.new(0,1,0)
end
end))
 
end
 
lab:TweenPosition(UDim2.new(-0.05,0,0.5,0),"Out", "Quad",0.5)
g:Remove()
he = 0
 
end
end
 
h = Instance.new("HopperBin",ply.Backpack)
 
function kd(key,mouse)
if key == "f" then rise(mouse)
end
end
 
h.Selected:connect(function(mouse)
mouse.KeyUp:connect(function(hit) if hit == "f" then down = false end end)
mouse.Button1Up:connect(function() down = false end)
mouse.Button1Down:connect(function() boom(mouse) end)
mouse.KeyDown:connect(function(key) kd(key,mouse) end)
end)