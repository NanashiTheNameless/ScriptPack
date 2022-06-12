me = "yfc" 
model = Instance.new("Model") 
model.Parent = Workspace[me] 
model.Name = "Seat" 
script.Parent = Model 
seat = Instance.new("VehicleSeat") 
seat.Size = Vector3.new(10, 0.5, 15) 
seat.Anchored = false 
seat.Locked = true 
seat.HeadsUpDisplay = false 
seat.CanCollide = true 
seat.TopSurface = "Smooth" 
seat.BottomSurface = "Smooth" 
seat.Parent = model 
seat.BrickColor = BrickColor.new("New Yeller")
seat.CFrame = Workspace[me].Torso.CFrame 
gyro = Instance.new("BodyGyro") 
gyro.Parent = seat 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
position = Instance.new("BodyPosition") 
position.maxForce = Vector3.new(0, math.huge, 0) 
position.Parent = seat 
position.position = Vector3.new(0.1, 2.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 5, 15) 
part.BrickColor = BrickColor.new("New Yeller")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(4.5, -2.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 5, 15) 
part.BrickColor = BrickColor.new("New Yeller")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-4.5, -2.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(5, 1, 15) 
part.BrickColor = BrickColor.new("New Yeller")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.6) + Vector3.new(-3, -6.5, 0) 

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
