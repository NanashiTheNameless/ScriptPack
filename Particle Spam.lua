function scale(chr,scl)
		for _,v in pairs(Player.Character:GetChildren()) do
			if v:IsA('Hat') then
				v:Clone()
				v.Parent = game.Lighting
			end
		end
	    local Head = chr['Head']
	    local Torso = chr['Torso']
	    local LA = chr['Left Arm']
	    local RA = chr['Right Arm']
	    local LL = chr['Left Leg']
	    local RL = chr['Right Leg']
	    local HRP = chr['HumanoidRootPart']
	    wait(0.1)
	    Head.formFactor = 3
	    Torso.formFactor = 3
	    LA.formFactor = 3
	    RA.formFactor = 3
	    LL.formFactor = 3
	    RL.formFactor = 3
	    HRP.formFactor = 3
	    Head.Size = Vector3.new(scl * 2, scl, scl)
	    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
	    LA.Size = Vector3.new(scl, scl * 2, scl)
	    RA.Size = Vector3.new(scl, scl * 2, scl)
	    LL.Size = Vector3.new(scl, scl * 2, scl)
	    RL.Size = Vector3.new(scl, scl * 2, scl)
	    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
	    local Motor1 = Instance.new('Motor6D', Torso)
	    Motor1.Part0 = Torso
	    Motor1.Part1 = Head
	    Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    Motor1.Name = 'Neck'
			    
	    local Motor2 = Instance.new('Motor6D', Torso)
	    Motor2.Part0 = Torso
	    Motor2.Part1 = LA
	    Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    Motor2.Name = 'Left Shoulder'
	    
	    local Motor3 = Instance.new('Motor6D', Torso)
	    Motor3.Part0 = Torso
	    Motor3.Part1 = RA
	    Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    Motor3.Name = 'Right Shoulder'
	    
	    local Motor4 = Instance.new('Motor6D', Torso)
	    Motor4.Part0 = Torso
	    Motor4.Part1 = LL
	    Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    Motor4.Name = 'Left Hip'
	    
	    local Motor5 = Instance.new('Motor6D', Torso)
	    Motor5.Part0 = Torso
	    Motor5.Part1 = RL
	    Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    Motor5.Name = 'Right Hip'
	    
	    local Motor6 = Instance.new('Motor6D', HRP)
	    Motor6.Part0 = HRP
	    Motor6.Part1 = Torso
	    Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	        
	end
	
	scale(game.Players.LocalPlayer.Character, 5)
	
	for _,v in pairs(game.Lighting:GetChildren()) do
		if v:IsA('Hat') then
			v.Parent = Player.Character
		end
	end