pos = n.CFrame
pos2 = pos * CFrame.new(0,0,-15)
pos3 = pos * CFrame.new(-15,0,0)
bv = Instance.new("BodyPosition",Workspace.acb227.Torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.position = pos2.p
bg = Instance.new("BodyGyro",Workspace.acb227.Torso)
bg.cframe = CFrame.new(pos.p,pos2.p)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 50000

wait(0.5) 
bv.position = pos3.p
bg.cframe = CFrame.new(pos.p,pos3.p)


wait(1) 
bv:remove() 
bg:remove() 