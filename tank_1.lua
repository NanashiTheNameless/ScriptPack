pcall(function() workspace.Base.Tank:remove() end)
local mod = Instance.new("Model", workspace.Base) 
mod.Name = "Tank" 

local base = Instance.new("Part", mod) 
base.Size = Vector3.new(15, 1, 25) 
base.Anchored = false 
base.BrickColor = BrickColor.new("Dark green") 
base.CFrame = CFrame.new(25, 2, 25) 
local basem = Instance.new("BlockMesh", base) 
base:BreakJoints() 
local basep = Instance.new("BodyPosition", base) 
basep.position = Vector3.new(25, 4, 25) 
basep.maxForce = Vector3.new(0, math.huge, 0) 
local baseg = Instance.new("BodyGyro", base) 
local base2 = Instance.new("Part", mod) 
base2.Size = Vector3.new(15, 1, 2) 
base2.Anchored = false 
base2.BrickColor = BrickColor.new("Dark green") 
base2.CFrame = CFrame.new(25, 2, 25) 
local base2m = Instance.new("BlockMesh", base2) 
base2:BreakJoints() 
local base2w = Instance.new("Weld", base2) 
base2w.Part0 = base2 
base2w.Part1 = base 
base2w.C1 = CFrame.new(0, 1, 12) * CFrame.Angles(-0.75, 0, 0) 
local base3 = Instance.new("Part", mod) 
base3.Size = Vector3.new(15, 1, 2) 
base3.Anchored = false 
base3.BrickColor = BrickColor.new("Dark green") 
base3.CFrame = CFrame.new(25, 2, 25) 
local base3m = Instance.new("BlockMesh", base3) 
base3:BreakJoints() 
local base3w = Instance.new("Weld", base3) 
base3w.Part0 = base3 
base3w.Part1 = base 
base3w.C1 = CFrame.new(0, 2.5, 13) * CFrame.Angles(-1.1, 0, 0) 
local base4 = Instance.new("Part", mod) 
base4.Size = Vector3.new(15, 1, 2) 
base4.Anchored = false 
base4.BrickColor = BrickColor.new("Dark green") 
base4.CFrame = CFrame.new(25, 2, 25) 
local base4m = Instance.new("BlockMesh", base4) 
base4:BreakJoints() 
local base4w = Instance.new("Weld", base4) 
base4w.Part0 = base4 
base4w.Part1 = base 
base4w.C1 = CFrame.new(0, 1, -12) * CFrame.Angles(0.75, 0, 0) 
local base5 = Instance.new("Part", mod) 
base5.Size = Vector3.new(15, 1, 2) 
base5.Anchored = false 
base5.BrickColor = BrickColor.new("Dark green") 
base5.CFrame = CFrame.new(25, 2, 25) 
local base5m = Instance.new("BlockMesh", base5) 
base5:BreakJoints() 
local base5w = Instance.new("Weld", base5) 
base5w.Part0 = base5 
base5w.Part1 = base 
base5w.C1 = CFrame.new(0, 2.5, -13) * CFrame.Angles(1.1, 0, 0) 
local seat = Instance.new("VehicleSeat", mod) 
seat.Size = Vector3.new(2, 1, 2) 
seat.Anchored = false 
seat.BrickColor = BrickColor.new("Dark green") 
seat.CFrame = CFrame.new(25, 2, 25) 
local seatm = Instance.new("BlockMesh", seat) 
seat:BreakJoints() 
local seatw = Instance.new("Weld", seat) 
seatw.Part0 = seat 
seatw.Part1 = base 
seatw.C1 = CFrame.new(0, 1, -5) * CFrame.Angles(0, 0, 0) 
velo = Instance.new("BodyVelocity") 
velo.Parent = seat 
velo.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
velo.velocity = Vector3.new(0,0,0) 

while true do 
wait() 
if seat.Throttle == 1 then 
seat.Velocity = seat.CFrame.lookVector * 150 
end 
if seat.Throttle == 0 then 
seat.Velocity = seat.CFrame.lookVector 
end 
if seat.Throttle == -1 then 
seat.Velocity = seat.CFrame.lookVector * -150 
end 
if seat.Steer == 1 then 
baseg.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, -0.314, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == 0 then 
baseg.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == -1 then 
baseg.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.314, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end  

function T(h) 
if h.Parent.Name == me then return end 
if h.Parent:findFirstChild("Torso") ~= nil then 
h.Parent.Torso.Velocity = part.CFrame.lookVector * 250 
end 
if h.Parent:findFirstChild("Humanoid") ~= nil then 
h.Parent.Humanoid.PlatformStand = true 
end 
end 