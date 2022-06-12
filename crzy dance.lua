o = Game.Players.LocalPlayer
o.Character.Humanoid.PlatformStand = true 
bv = Instance.new("BodyAngularVelocity")
bv.Parent = o.Character.Torso
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyGyro")
bg.Parent = o.Character.Torso
bg.maxTorque = Vector3.new(0, 0, 0) 

while true do 
local move = math.random(1, 4) 
if move == 1 then 
bv.angularvelocity = Vector3.new(20, 0, 20) 
end 
if move == 2 then 
bv.angularvelocity = Vector3.new(20, 50, 20) 
end 
if move == 3 then 
bv.angularvelocity = Vector3.new(0, 0, 20) 
end 
if move == 4 then 
bv.angularvelocity = Vector3.new(20, 0, 0) 
end 
wait(1) 
end 