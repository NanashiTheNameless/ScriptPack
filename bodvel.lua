o = Game.Players.LocalPlayer
o.Character.Humanoid.PlatformStand = true 
bv = Instance.new("BodyAngularVelocity")
bv.Parent = o.Character.Torso
bv.angularvelocity = Vector3.new(0, 500, 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyGyro")
bg.Parent = o.Character.Torso
bg.maxTorque = Vector3.new(0, 0, 0) 
wait(10) 
bv:Remove()
bg:remove() 
o.Character.Humanoid.PlatformStand = false 
script:remove() 