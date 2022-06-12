who = "yfc" 
model = Instance.new("Model") 
model.Parent = Workspace[who] 
script.Parent = Model 
seat = Instance.new("VehicleSeat") 
seat.Size = Vector3.new(4, 0.5, 4) 
seat.Anchored = false 
seat.Locked = true 
seat.HeadsUpDisplay = false 
seat.CanCollide = true 
seat.TopSurface = "Smooth" 
seat.BottomSurface = "Smooth" 
seat.Parent = model 
seat.CFrame = Workspace[who].Torso.CFrame 
gyro = Instance.new("BodyGyro") 
gyro.Parent = seat 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
posi = Instance.new("BodyPosition") 
posi.maxForce = Vector3.new(0, math.huge, 0) 
posi.Parent = seat 
posi.position = Vector3.new(0.1, 5, 0) 
local brick = Instance.new("Part")
brick.BrickColor = BrickColor.new("Black")
brick.Parent = model 
brick.Size = Vector3.new(1, 3, 3) 
brick.CanCollide = true 
brick.Locked = true 
brick.TopSurface = "Smooth"
brick.BottomSurface = "Smooth"
weld = Instance.new("Weld") 
weld.Parent = model 
weld.Part0 = seat 
weld.Part1 = brick 
weld.C0 = CFrame.new(1.5, -2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
local brick = Instance.new("Part")
brick.BrickColor = BrickColor.new("Black")
brick.Parent = model 
brick.Size = Vector3.new(1, 3, 3) 
brick.CanCollide = true 
brick.Locked = true 
brick.TopSurface = "Smooth"
brick.BottomSurface = "Smooth"
weld = Instance.new("Weld") 
weld.Parent = model 
weld.Part0 = seat 
weld.Part1 = brick 
weld.C0 = CFrame.new(-1.5, -2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
local brick = Instance.new("Part")
brick.BrickColor = BrickColor.new("Black")
brick.Parent = model 
brick.Size = Vector3.new(1, 2, 1) 
brick.CanCollide = true 
brick.Locked = true 
brick.TopSurface = "Smooth"
brick.BottomSurface = "Smooth"
weld = Instance.new("Weld") 
weld.Parent = model 
weld.Part0 = seat 
weld.Part1 = brick 
weld.C0 = CFrame.new(1, 1, -1) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
local brick = Instance.new("Part")
brick.BrickColor = BrickColor.new("Black")
brick.Parent = model 
brick.Size = Vector3.new(1, 2, 1) 
brick.CanCollide = true 
brick.Locked = true 
brick.TopSurface = "Smooth"
brick.BottomSurface = "Smooth"
weld = Instance.new("Weld") 
weld.Parent = model 
weld.Part0 = seat 
weld.Part1 = brick 
weld.C0 = CFrame.new(-1, 1, -1) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
local brick = Instance.new("Part")
brick.BrickColor = BrickColor.new("Reddish brown")
brick.Parent = model 
brick.Size = Vector3.new(2, 1, 1) 
brick.CanCollide = true 
brick.Locked = true 
brick.TopSurface = "Smooth"
brick.BottomSurface = "Smooth"
weld = Instance.new("Weld") 
weld.Parent = model 
weld.Part0 = seat 
weld.Part1 = brick 
weld.C0 = CFrame.new(1.5, 2, -1) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
local brick = Instance.new("Part")
brick.BrickColor = BrickColor.new("Reddish brown")
brick.Parent = model 
brick.Size = Vector3.new(2, 1, 1) 
brick.CanCollide = true 
brick.Locked = true 
brick.TopSurface = "Smooth"
brick.BottomSurface = "Smooth"
weld = Instance.new("Weld") 
weld.Parent = model 
weld.Part0 = seat 
weld.Part1 = brick 
weld.C0 = CFrame.new(-1.5, 2, -1) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 


function T(h) 
if h.Parent.Name == who then return end 
if h.Parent:findFirstChild("Torso") ~= nil then 
h.Parent.Torso.Velocity = part.CFrame.lookVector * 250 
end 
if h.Parent:findFirstChild("Humanoid") ~= nil then 
h.Parent.Humanoid.PlatformStand = true 
end 
end 

Instance.new("Fire", seat) 
function Epic(color) 
for _, v in pairs(model:GetChildren()) do 
if v.className == "Part" or v.className == "WedgePart" or v.className == "VehicleSeat" then 
v.BrickColor = BrickColor.new(color) 
end 
end 
end 
Epic("Really black") 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "down/" then 
posi.position = posi.position - Vector3.new(0, string.sub(msg, 6), 0) 
end 
if string.sub(msg, 1, 3) == "up/" then 
posi.position = posi.position + Vector3.new(0, string.sub(msg, 4), 0) 
end 
end 
game.Players[who].Chatted:connect(onChatted) 
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