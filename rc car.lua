me = "acb227" 
model = Instance.new("Model") 
model.Parent = Workspace[me] 
model.Name = "Seat" 
script.Parent = Model 
seat = Instance.new("VehicleSeat") 
seat.Size = Vector3.new(4, 0.5, 4) 
seat.Anchored = true  
seat.Locked = true 
seat.HeadsUpDisplay = false 
seat.CanCollide = true 
seat.TopSurface = "Smooth" 
seat.BottomSurface = "Smooth" 
seat.Parent = model 
seat.CFrame = Workspace[me].Torso.CFrame 
sea = Instance.new("Part") 
sea.Size = Vector3.new(10, 0.5, 20) 
sea.Anchored = false 
sea.Locked = true 
sea.CanCollide = true 
sea.TopSurface = "Smooth" 
sea.BottomSurface = "Smooth" 
sea.Parent = model 
sea.CFrame = Workspace[me].Torso.CFrame + Vector3.new(0, 0, 15)
gyro = Instance.new("BodyGyro") 
gyro.Parent = sea 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
position = Instance.new("BodyPosition") 
position.maxForce = Vector3.new(0, math.huge, 0) 
position.Parent = sea 
position.position = Vector3.new(0.1, 2.5, 0) 

while true do 
wait() 
if seat.Throttle == 1 then 
sea.Velocity = sea.CFrame.lookVector * 50 
end 
if seat.Throttle == 0 then 
sea.Velocity = sea.CFrame.lookVector 
end 
if seat.Throttle == -1 then 
sea.Velocity = sea.CFrame.lookVector * -50 
end 
if seat.Steer == 1 then 
gyro.cframe = sea.CFrame * CFrame.fromEulerAnglesXYZ(0, -0.314, 0) 
sea.CFrame = sea.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == 0 then 
gyro.cframe = sea.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
sea.CFrame = sea.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == -1 then 
gyro.cframe = sea.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.314, 0) 
sea.CFrame = sea.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end  

function T(h) 
if h.Parent.Name == me then return end 
if h.Parent:findFirstChild("Torso") ~= nil then 
h.Parent.Torso.Velocity = part.CFrame.lookVector * 550 
end 
if h.Parent:findFirstChild("Humanoid") ~= nil then 
h.Parent.Humanoid.PlatformStand = true 
end 
end 

vip = game.Players.acb227 

function onChatted(msg) 
if(msg == "red")then 
sea.BrickColor = BrickColor.new("Bright red")
end 
end 
vip.Chatted:connect(onChatted) 

--[[ Instance.new("Fire", seat) 
function Epic(color) 
for _, v in pairs(model:GetChildren()) do 
if v.className == "Part" or v.className == "WedgePart" or v.className == "VehicleSeat" then 
v.BrickColor = BrickColor.new(color) 
end 
end 
end 
Epic("Really black") ]]--