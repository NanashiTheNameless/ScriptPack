hop = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
hop.Name = "Sword"
T = game.Workspace.anton20["Right Arm"]

hop.Selected:connect(function()
    hilt = Instance.new("Part",Workspace)
	hilt.formFactor = "Custom"
    hilt.Size = Vector3.new(0.2,0.2,1.71) -- ill figure out the size in a bit ill do the weld part now ik how to do the size
    hilt.BrickColor = BrickColor.new("Black")
    
    w = Instance.new("Weld",T)
    w.Part0 = T
    w.Part1 = hilt
    w.C0 = CFrame.new(0,-1,0) *CFrame.Angles(0,0,0)
    
    hilt2 = Instance.new("Part",Workspace)
    hilt2.formFactor = "Custom"
    hilt2.Size = Vector3.new(0.2,0.2,.8) -- ill figure out the size in a bit ill do the weld part now ik how to do the size
    hilt2.BrickColor = BrickColor.new(21)
    
    w2 = Instance.new("Weld",T)
    w2.Part0 = T
    w2.Part1 = hilt2
    w2.C0 = CFrame.new(0,-1,.9) *CFrame.Angles(math.pi/2,0,0)

    hilt3 = Instance.new("Part",Workspace)
    hilt3.formFactor = "Custom"
    hilt3.Size = Vector3.new(0.2,0.2,1.4) -- ill figure out the size in a bit ill do the weld part now ik how to do the size
    hilt3.BrickColor = BrickColor.new(21)
    
    w3 = Instance.new("Weld",T)
    w3.Part0 = T
    w3.Part1 = hilt3
    w3.C0 = CFrame.new(0,-1,-.95) *CFrame.Angles(math.pi/2,0,0)

    sword = Instance.new("Part",Workspace)
    sword.formFactor = "Custom"
    sword.Size = Vector3.new(0.2,5,1.4) -- ill figure out the size in a bit ill do the weld part now ik how to do the size
    sword.BrickColor = BrickColor.new("Black")
    
    w4 = Instance.new("Weld",T)
    w4.Part0 = T
    w4.Part1 = sword
    w4.C0 = CFrame.new(0,-1,-3.5) *CFrame.Angles(math.pi/2,0,0)

	
    sword2 = Instance.new("Part",Workspace)
    sword2.formFactor = "Custom"
    sword2.Size = Vector3.new(0.2,3,1.4) -- ill figure out the size in a bit ill do the weld part now ik how to do the size
    sword2.BrickColor = BrickColor.new("Black")
	sm = Instance.new("SpecialMesh",sword2)
	sm.MeshType = "Wedge"
    
    w5 = Instance.new("Weld",T)
    w5.Part0 = T
    w5.Part1 = sword2
    w5.C0 = CFrame.new(0,-1,-7.44) *CFrame.Angles(math.pi/2,0,math.pi)


	

	
end)

--this is the basic look of the sword i didnt add the diamonds though you should be able to do that