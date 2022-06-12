local me = "yfc" 
local open = false 
pcall(function() workspace.Base.Seat:remove() end) 
local model = Instance.new("Model") 
model.Parent = Workspace.Base 
model.Name = "Seat" 
script.Parent = Model 
seat = Instance.new("VehicleSeat") 
seat.Size = Vector3.new(8, 2, 13) 
seat.Anchored = false 
seat.Locked = true 
seat.HeadsUpDisplay = false 
seat.CanCollide = false 
seat.TopSurface = "Smooth" 
seat.BottomSurface = "Smooth" 
seat.Parent = model 
seat.CFrame = workspace[me].Torso.CFrame 
seat.BrickColor = BrickColor.new("Camo")
seat:BreakJoints() 
base = Instance.new("Part") 
base.Size = Vector3.new(10, 2, 15) 
base.Anchored = false 
base.Locked = true 
base.CanCollide = true 
base.TopSurface = "Smooth" 
base.BottomSurface = "Smooth" 
base.Parent = model 
base.BrickColor = BrickColor.new("Camo")
base:BreakJoints() 
w12 = Instance.new("Weld") 
w12.Parent = seat 
w12.Part0 = base 
w12.Part1 = seat 
w12.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.5, 0) 
gyro = Instance.new("BodyGyro") 
gyro.Parent = seat 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
position = Instance.new("BodyPosition") 
position.maxForce = Vector3.new(0, math.huge, 0) 
position.Parent = seat 
position.position = Vector3.new(0.1, 3.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 5, 15) 
part.BrickColor = BrickColor.new("Camo")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
part:BreakJoints() 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(4.5, -2.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 5, 15) 
part.BrickColor = BrickColor.new("Camo")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
part:BreakJoints() 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-4.5, -2.5, 0) 
partd = Instance.new("Part") 
partd.Size = Vector3.new(5, 1, 15) 
partd.BrickColor = BrickColor.new("Camo")
partd.Anchored = false 
partd.Locked = true 
partd.CanCollide = true 
partd.TopSurface = "Smooth" 
partd.BottomSurface = "Smooth" 
partd.Parent = model 
partd:BreakJoints() 
w1d = Instance.new("Weld") 
w1d.Parent = seat 
w1d.Part0 = partd 
w1d.Part1 = seat 
w1d.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-2.5, -5.5, 0) 
partf = Instance.new("Part") 
partf.Size = Vector3.new(5, 1, 15) 
partf.BrickColor = BrickColor.new("Camo")
partf.Anchored = false 
partf.Locked = true 
partf.CanCollide = true 
partf.TopSurface = "Smooth" 
partf.BottomSurface = "Smooth" 
partf.Parent = model 
partf:BreakJoints() 
w1f = Instance.new("Weld") 
w1f.Parent = seat 
w1f.Part0 = partf 
w1f.Part1 = seat 
w1f.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(2.5, -5.5, 0) 
partfs = Instance.new("Part") 
partfs.Size = Vector3.new(10, 5, 1) 
partfs.BrickColor = BrickColor.new("Camo")
partfs.Anchored = false 
partfs.Locked = true 
partfs.CanCollide = true 
partfs.TopSurface = "Smooth" 
partfs.BottomSurface = "Smooth" 
partfs.Parent = model 
partfs:BreakJoints() 
w1fs = Instance.new("Weld") 
w1fs.Parent = seat 
w1fs.Part0 = partfs 
w1fs.Part1 = seat 
w1fs.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.5, 7) 
partfs2 = Instance.new("Part") 
partfs2.Size = Vector3.new(10, 5, 1) 
partfs2.BrickColor = BrickColor.new("Camo")
partfs2.Anchored = false 
partfs2.Locked = true 
partfs2.CanCollide = true 
partfs2.TopSurface = "Smooth" 
partfs2.BottomSurface = "Smooth" 
partfs2.Parent = model 
partfs2:BreakJoints() 
w1fs2 = Instance.new("Weld") 
w1fs2.Parent = seat 
w1fs2.Part0 = partfs2 
w1fs2.Part1 = seat 
w1fs2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.5, -7) 
bar = Instance.new("Part") 
bar.Size = Vector3.new(2, 14, 2) 
bar.BrickColor = BrickColor.new("Camo")
bar.Anchored = false 
bar.Locked = true 
bar.CanCollide = true 
bar.TopSurface = "Smooth" 
bar.BottomSurface = "Smooth" 
bar.Parent = model 
bar:BreakJoints() 
barm = Instance.new("CylinderMesh", bar) 
barm.Bevel = 0.25 
barw = Instance.new("Weld") 
barw.Parent = seat 
barw.Part0 = bar 
barw.Part1 = seat 
barw.C0 = CFrame.fromEulerAnglesXYZ(1.55, 0, 0) + Vector3.new(0, -14, -2.5) 
bars = Instance.new("Part") 
bars.Size = Vector3.new(2, 2, 2) 
bars.BrickColor = BrickColor.new("Really red")
bars.Anchored = false 
bars.Locked = true 
bars.CanCollide = true 
bars.TopSurface = "Smooth" 
bars.BottomSurface = "Smooth" 
bars.Parent = model 
bars:BreakJoints() 
barsm = Instance.new("CylinderMesh", bars) 
barsm.Bevel = 0.25 
barsw = Instance.new("Weld") 
barsw.Parent = seat 
barsw.Part0 = bars 
barsw.Part1 = seat 
barsw.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -5, 6) 
local shoot = Instance.new("ClickDetector", bars) 
for _,v in pairs(model:GetChildren()) do 
v.Name = "TANKPART" 
end 
function shoots() 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.BrickColor = BrickColor.new("Dark stone grey") 
shot.Size = Vector3.new(2, 4, 2) 
shot.CanCollide = false 
shot.Name = "SHOT" 
shot.CFrame = bar.CFrame 
shot.TopSurface = "Smooth" 
shot.Velocity = bars.CFrame.lookVector * 750 
local shotm = Instance.new("CylinderMesh", shot) 
shotm.Bevel = 0.75
shot.Touched:connect(function(hit) 
if hit.Name ~= "TANKPART" and hit.Name ~= "Base" and hit.Name ~= "SHOT" then 
local ex = Instance.new("Explosion", workspace) 
ex.Position = shot.Position 
wait(0.25) 
shot:remove() 
end 
end) 
end 

shoot.MouseClick:connect(shoots) 

function cmds(msg) 
if msg == "door" and open == false then 
open = true
for i = 0, 1, 0.1 do 
w1d.C1 = CFrame.new(math.rad(180*i), 0, 0) 
w1f.C1 = CFrame.new(math.rad(-180*i), 0, 0) 
wait() 
end 
else 
if msg == "door" and open == true then 
for i = 0, 1, 0.1 do 
w1d.C1 = CFrame.new(math.rad(180-180*i), 0, 0) 
w1f.C1 = CFrame.new(math.rad(-180+180*i), 0, 0) 
wait() 
end 
open = false 
end 
end 
end 

pf = game:GetService("Players") 
pf[me].Chatted:connect(cmds) 

while true do 
wait() 
if seat.Throttle == 1 then 
seat.Velocity = seat.CFrame.lookVector * 50 
end 
if seat.Throttle == 0 then 
seat.Velocity = seat.CFrame.lookVector 
end 
if seat.Throttle == -1 then 
seat.Velocity = seat.CFrame.lookVector * -50 
end 
if seat.Steer == 1 then 
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, -0.314, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == 0 then 
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == -1 then 
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.314, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end  

function T(h) 
if h.Parent.Name == me then return end 
if h.Parent:findFirstChild("Torso") ~= nil then 
h.Parent.Torso.Velocity = part.CFrame.lookVector * 750 
end 
if h.Parent:findFirstChild("Humanoid") ~= nil then 
h.Parent.Humanoid.PlatformStand = true 
end 
end 
