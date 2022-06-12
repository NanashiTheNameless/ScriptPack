--[If you are using this for your own good, then Fk you =P]----------------------------------------------------------------------- 
zeta = game.Players.acb227 
color1 = "Dark grey" 
color2 = "Really black" 
color3 = 23 
color4 = "Really blue" 
mod = Instance.new("Model") 
mod.Parent = game.Workspace.lordsheen 
mod.Name = "Lordsheen-Mobile" 
eng = Instance.new("Part") 
eng.Parent = mod 
eng.Name = "Head" 
eng.Size = Vector3.new(10,2,30) 
eng.BrickColor = BrickColor.new(color1) 
eng.TopSurface = "Smooth" 
eng.BottomSurface = "Smooth" 
eng.Position = zeta.Character.Torso.Position + Vector3.new(0,100,0) 
hum = Instance.new("Humanoid") 
hum.MaxHealth = 0 
hum.Parent = mod 
RK1 = Instance.new("Part") 
RK1.Parent = mod 
RK1.Size = Vector3.new(2,2,2) 
RK1.BrickColor = BrickColor.new(color1) 
RK1.TopSurface = "Smooth" 
RK1.BottomSurface = "Smooth" 
RK1:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = RK1 
weld.C0 = CFrame.new(4,-1,-14) * CFrame.Angles(0,0,math.pi) 
RK2 = Instance.new("Part") 
RK2.Parent = mod 
RK2.Size = Vector3.new(2,2,2) 
RK2.BrickColor = BrickColor.new(color1) 
RK2.TopSurface = "Smooth" 
RK2.BottomSurface = "Smooth" 
RK2:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = RK2 
weld.C0 = CFrame.new(-4,-1,-14) * CFrame.Angles(0,0,math.pi) 
RK3 = Instance.new("Part") 
RK3.Parent = mod 
RK3.Size = Vector3.new(2,2,2) 
RK3.BrickColor = BrickColor.new(color1) 
RK3.TopSurface = "Smooth" 
RK3.BottomSurface = "Smooth" 
RK3:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = RK3 
weld.C0 = CFrame.new(4,-1,14) * CFrame.Angles(0,0,math.pi) 
RK4 = Instance.new("Part") 
RK4.Parent = mod 
RK4.Size = Vector3.new(2,2,2) 
RK4.BrickColor = BrickColor.new(color1) 
RK4.TopSurface = "Smooth" 
RK4.BottomSurface = "Smooth" 
RK4:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = RK4 
weld.C0 = CFrame.new(-4,-1,14) * CFrame.Angles(0,0,math.pi) 
jet = Instance.new("Fire") 
jet.Parent = RK1 
jet.Heat = 25 
jet = Instance.new("Fire") 
jet.Parent = RK2 
jet.Heat = 25 
jet = Instance.new("Fire") 
jet.Parent = RK3 
jet.Heat = 25 
jet = Instance.new("Fire") 
jet.Parent = RK4 
jet.Heat = 25 
ckb = Instance.new("Part") 
ckb.Parent = mod 
ckb.Size = Vector3.new(10,2,10) 
ckb.BrickColor = BrickColor.new(color2) 
ckb.TopSurface = "Smooth" 
ckb.BottomSurface = "Smooth" 
ckb:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = ckb 
weld.C0 = CFrame.new(0,0,20) * CFrame.Angles(0,0,0) 
wal1 = Instance.new("Part") 
wal1.Parent = mod 
wal1.Size = Vector3.new(2,10,10) 
wal1.BrickColor = BrickColor.new(color2) 
wal1.BottomSurface = "Smooth" 
wal1:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = ckb 
weld.Part0 = ckb 
weld.Part1 = wal1 
weld.C0 = CFrame.new(4,6,0) * CFrame.Angles(0,math.pi,0) 
wal2 = Instance.new("Part") 
wal2.Parent = mod 
wal2.Size = Vector3.new(2,10,10) 
wal2.BrickColor = BrickColor.new(color2) 
wal2.BottomSurface = "Smooth" 
wal2:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = ckb 
weld.Part0 = ckb 
weld.Part1 = wal2 
weld.C0 = CFrame.new(-4,6,0) * CFrame.Angles(0,math.pi,0) 
door = Instance.new("Part") 
door.Parent = mod 
door.Size = Vector3.new(6,10,2) 
door.BrickColor = BrickColor.new(color2) 
door.BottomSurface = "Smooth" 
door.Touched:connect( 
function() 
if doordebounce == false then 
doordebounce = true 
door.Transparency = 1 
door.CanCollide = false 
wait(4) 
door.Transparency = 0 
door.CanCollide = true 
doordebounce = false 
end 
end) 
door:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = ckb 
weld.Part0 = ckb 
weld.Part1 = door 
weld.C0 = CFrame.new(0,6,-4) * CFrame.Angles(0,math.pi,0) 
wal5 = Instance.new("Part") 
wal5.Parent = mod 
wal5.Size = Vector3.new(6,10,2) 
wal5.BrickColor = BrickColor.new(color3) 
wal5.BottomSurface = "Smooth" 
wal5.Transparency = 0.5 
wal5:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = ckb 
weld.Part0 = ckb 
weld.Part1 = wal5 
weld.C0 = CFrame.new(0,6,4) * CFrame.Angles(0,math.pi,0) 
control = Instance.new("VehicleSeat") 
control.Parent = mod 
control.Size = Vector3.new(2,1,2) 
control.BrickColor = BrickColor.new("Lime green") 
control.TopSurface = "Smooth" 
control.BottomSurface = "Smooth" 
control:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = control 
weld.C0 = CFrame.new(0,1,20.5) * CFrame.Angles(0,math.pi,0) 
flatbed = Instance.new("Part") 
flatbed.Parent = mod 
flatbed.Size = Vector3.new(30,1,30) 
flatbed.BrickColor = BrickColor.new(color2) 
flatbed.BottomSurface = "Smooth" 
flatbed:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = flatbed 
weld.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(0,math.pi,0) 
s1 = Instance.new("Seat") 
s1.Parent = mod 
s1.Size = Vector3.new(3,1,3) 
s1.BrickColor = BrickColor.new(color4) 
s1.BottomSurface = "Smooth" 
s1:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = flatbed 
weld.Part0 = flatbed 
weld.Part1 = s1 
weld.C0 = CFrame.new(10,0.5,-13) * CFrame.Angles(0,math.pi,0) 
s2 = Instance.new("Seat") 
s2.Parent = mod 
s2.Size = Vector3.new(3,1,3) 
s2.BrickColor = BrickColor.new(color4) 
s2.BottomSurface = "Smooth" 
s2:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = flatbed 
weld.Part0 = flatbed 
weld.Part1 = s2 
weld.C0 = CFrame.new(2,0.5,-13) * CFrame.Angles(0,math.pi,0) 
s3 = Instance.new("Seat") 
s3.Parent = mod 
s3.Size = Vector3.new(3,1,3) 
s3.BrickColor = BrickColor.new(color4) 
s3.BottomSurface = "Smooth" 
s3:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = flatbed 
weld.Part0 = flatbed 
weld.Part1 = s3 
weld.C0 = CFrame.new(-6,0.5,-13) * CFrame.Angles(0,math.pi,0) 

-------AI program-------- 


---Driving Systems--- 
bv = Instance.new("BodyVelocity") 
bv.Parent = eng 
bv.maxForce = Vector3.new(math.huge,0,math.huge) 
bv.velocity = Vector3.new(0,-5,0) 
bav = Instance.new("BodyAngularVelocity") 
bav.Parent = eng 
bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bav.angularvelocity = Vector3.new(0,0,0) 
hov = Instance.new("BodyPosition") 
hov.Parent = eng 
hov.maxForce = Vector3.new(0,math.huge,0) 
hov.position = Vector3.new(0,7,0) 
bg = Instance.new("BodyGyro") 
bg.Parent = eng 
bg.maxTorque = Vector3.new(math.huge,0,math.huge) 
bg.P = 3e+003 
bg.D = 500 
parts = mod:GetChildren() 
for i = 1, #parts do 
if parts[i].className == "Part" or parts[i].className == "WedgePart" then 
parts[i].Locked = true 
end 
end 


while true do 
wait(0) 
if control.Throttle == 1 then 
bv.velocity = eng.CFrame.lookVector*-101 
end 
if control.Throttle == -1 then 
bv.velocity = eng.CFrame.lookVector*101 
end 
if control.Throttle == 0 then 
bv.velocity = Vector3.new(0,0,0) 
end 
if control.Steer == 1 then 
bav.angularvelocity = Vector3.new(0,-5,0) 
end 
if control.Steer == -1 then 
bav.angularvelocity = Vector3.new(0,5,0) 
end 
if control.Steer == 0 then 
bav.angularvelocity = Vector3.new(0,0,0) 
end 
end 
----------------- 
