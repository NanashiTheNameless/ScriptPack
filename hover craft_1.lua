who = "yfc" 
color=BrickColor:Black() 
color2=BrickColor.new("Dark stone grey") 
model = Instance.new("Model") 
model.Parent = game.Workspace[who] 

script.Parent = model 

seat = Instance.new("VehicleSeat") 
seat.Size = Vector3.new(4,0.5,4) 
seat.Anchored = false 
seat.Locked = true 
seat.HeadsUpDisplay = false 
seat.CanCollide = true 
seat.TopSurface = 0 
seat.MaxSpeed=750 
seat.BrickColor=color 
seat.BottomSurface = 0 
seat.Parent = model 
seat.CFrame = game.Workspace[who].Torso.CFrame 
gyro = Instance.new("BodyGyro") 
gyro.Parent = seat 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
velo = Instance.new("BodyVelocity") 
velo.Parent = seat 
velo.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
velo.velocity = Vector3.new(0,0,0) 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(3,1,1) 
Tor.BrickColor=color2 
Tor.Reflectance=0 
Tor.Transparency=0 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("CylinderMesh") 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.5,0,2)*CFrame.Angles(0,math.rad(90),math.pi/2) 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(3,1,1) 
Tor.BrickColor=color2 
Tor.Reflectance=0 
Tor.Transparency=0 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("CylinderMesh") 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.5,0,2)*CFrame.Angles(0,math.rad(90),math.pi/2) 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(1,1,1) 
Tor.BrickColor=BrickColor:Red() 
Tor.Reflectance=0.1 
Tor.Transparency=0.2 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("SpecialMesh") 
Mesh.MeshType="Sphere" 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1/1.2,0.9/0.9,1/1.2) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.5,0,2.5)*CFrame.Angles(0,math.rad(90),math.pi/2) 
f=Instance.new("Fire") 
f.Heat=10 
f.Parent=Tor 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(1,1,1) 
Tor.BrickColor=BrickColor:Red() 
Tor.Reflectance=0.1 
Tor.Transparency=0.2 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("SpecialMesh") 
Mesh.MeshType="Sphere" 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1/1.2,0.9/0.9,1/1.2) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.5,0,2.5)*CFrame.Angles(0,math.rad(90),math.pi/2) 
f=Instance.new("Fire") 
f.Heat=10 
f.Parent=Tor 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(3,0.5,4) 
Tor.BrickColor=color 
Tor.Reflectance=0 
Tor.Transparency=0 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("BlockMesh") 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1,0.89,0.9) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(1.55,0,0.35)*CFrame.Angles(0,math.rad(30),0) 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(3,0.5,4) 
Tor.BrickColor=color 
Tor.Reflectance=0 
Tor.Transparency=0 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("BlockMesh") 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1,0.89,0.9) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-1.55,0,0.35)*CFrame.Angles(0,math.rad(-30),0) 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(1,0.5,1) 
Tor.BrickColor=color2 
Tor.Reflectance=0 
Tor.Transparency=0 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("CylinderMesh") 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1,3,1) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-2.8,0.75,0.35)*CFrame.Angles(0,math.rad(270),math.rad(90)) 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(1,0.5,1) 
Tor.BrickColor=color2 
Tor.Reflectance=0 
Tor.Transparency=0 
Tor.Locked=true 
Tor.Name="Body" 
Tor.CanCollide=true 
Tor.Parent=model 
Tor.TopSurface="Smooth" 
Tor.BottomSurface="Smooth" 
Mesh=Instance.new("CylinderMesh") 
Mesh.Parent=Tor 
Mesh.Scale=Vector3.new(1,3,1) 
w = Instance.new("Weld") 
w.Parent = seat 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(2.8,0.75,0.35)*CFrame.Angles(0,math.rad(270),math.rad(90)) 

Speed=40 
while true do wait() 
velo.velocity = seat.CFrame.lookVector * Speed 
if seat.Throttle>=1 then 
gyro.cframe=gyro.cframe*CFrame.Angles(math.rad(-3),0,0) 
end 

if seat.Throttle<=-1 then 
gyro.cframe=gyro.cframe*CFrame.Angles(math.rad(3),0,0) 
end 

if seat.Steer == 1 then 
gyro.cframe = gyro.cframe * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-5)) --seat.CFrame 
end 
if seat.Steer == 0 then 
end 
if seat.Steer == -1 then 
gyro.cframe = gyro.cframe * CFrame.fromEulerAnglesXYZ(0,0,math.rad(5)) --seat.CFrame 
end 
end 