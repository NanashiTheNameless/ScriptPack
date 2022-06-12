local Player = game:GetService("Players").DarkShadow6
local Character = Player.Character


local function Antikill()
	Character.Humanoid.Changed:connect(function(Property)
		if Property == "Health" and (Character.Humanoid.Health ~= 100 or Character.Humanoid.MaxHealth ~= 100) then
			pcall(function() Character.Humanoid.MaxHealth = 100 end)
			pcall(function() Character.Humanoid.Health = 100 end)
		end
	end)
	Character.Torso.ChildRemoved:connect(function(Part)
		if Part.Name == "Neck" then
			local Neck = Instance.new("Motor6D")
			Neck.Name = "Neck"
			Neck.Part0 = Character:FindFirstChild("Torso")
			Neck.Part1 = Character:FindFirstChild("Head")
			Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
			Neck.C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
			Neck.MaxVelocity = 0.1
			Neck.Parent = Character:FindFirstChild("Torso")
		end
		if Part.Name == "Left Shoulder" then
			while Character:FindFirstChild("Left Arm") == nil do wait() end
			wait()
			if Character.Torso:FindFirstChild("Left Shoulder") ~= nil or Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then return end
			local Joint = Instance.new("Motor6D")
			Joint.Name = "Left Shoulder"
			Joint.Part0 = Character:FindFirstChild("Torso")
			Joint.Part1 = Character:FindFirstChild("Left Arm")
			Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			Joint.MaxVelocity = 0.15
			Joint.Parent = Joint.Part0
		end
		if Part.Name == "Right Shoulder" then
			while Character:FindFirstChild("Right Arm") == nil do wait() end
			wait()
			if Character.Torso:FindFirstChild("Right Shoulder") ~= nil or Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then return end
			local Joint = Instance.new("Motor6D")
			Joint.Name = "Right Shoulder"
			Joint.Part0 = Character:FindFirstChild("Torso")
			Joint.Part1 = Character:FindFirstChild("Right Arm")
			Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Joint.MaxVelocity = 0.15
			Joint.Parent = Joint.Part0
		end
		if Part.Name == "Left Hip" and Character.Torso:FindFirstChild("Left Hip 2") == nil then
			while Character:FindFirstChild("Left Leg") == nil do wait() end
			wait()
			if Character.Torso:FindFirstChild("Left Hip") ~= nil or Character.Torso:FindFirstChild("Left Hip 2") ~= nil then return end
			local Joint = Instance.new("Motor6D")
			Joint.Name = "Left Hip"
			Joint.Part0 = Character:FindFirstChild("Torso")
			Joint.Part1 = Character:FindFirstChild("Left Leg")
			Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			Joint.MaxVelocity = 0.1
			Joint.Parent = Joint.Part0
		end
		if Part.Name == "Right Hip" and Character.Torso:FindFirstChild("Right Hip 2") == nil then
			while Character:FindFirstChild("Right Leg") == nil do wait() end
			wait()
			if Character.Torso:FindFirstChild("Right Hip") ~= nil or Character.Torso:FindFirstChild("Right Hip 2") ~= nil then return end
			local Joint = Instance.new("Motor6D")
			Joint.Name = "Right Hip"
			Joint.Part0 = Character:FindFirstChild("Torso")
			Joint.Part1 = Character:FindFirstChild("Right Leg")
			Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Joint.MaxVelocity = 0.1
			Joint.Parent = Joint.Part0
		end
		if Part.Name == "roblox" then
			Part:Clone().Parent = Character:FindFirstChild("Torso")
		end
		pcall(function() Character.Animate:Remove() end)
	end)
	Character.ChildRemoved:connect(function(Part)
		if Part.ClassName ~= "Model" and Part.ClassName ~= "ForceField" then
			if Character:FindFirstChild(Part.Name) ~= nil then return end
			local Clone = Part:Clone()
			Clone.Parent = Character
		end
		if Part.ClassName == "Humanoid" then
			Part.Changed:connect(function(Property)
				if Property == "Health" and (Character.Humanoid.Health ~= 100 or Character.Humanoid.MaxHealth ~= 100) then
					pcall(function() Character.Humanoid.MaxHealth = 100 end)
					pcall(function() Character.Humanoid.Health = 100 end)
				end
			end)
		end
	end)
	Character.Changed:connect(function(Property)
		wait()
		if Property == "Parent" and Player.Character == Character then
			Character.Parent = Workspace
		end
	end)
end


Player.Changed:connect(function(Property)
	wait()
	if Property == "Character" and Player.Character ~= Character then
		pcall(function() Player.Character.Torso.CFrame = Character.Torso.CFrame end)
		Character = Player.Character
		pcall(function() Character.ForceField:Remove() end)
		Antikill()
	end
end)


Player.Chatted:connect(function(Message)
	if Message:lower() == "anim" then
		pcall(function() Character.Animate:Remove() end)
	end
	if Message:lower() == "spawn" then
		local NewCharacter = Instance.new("Model")
		NewCharacter.Name = Player.Name
		local NewHead = Instance.new("Part")
		NewHead.Name = "Head"
		NewHead.Transparency = 1
		NewHead.CanCollide = false
		NewHead.Anchored = true
		NewHead.Parent = NewCharacter
		local NewHumanoid = Instance.new("Humanoid")
		NewHumanoid.Parent = NewCharacter
		NewCharacter.Parent = Workspace
		NewHumanoid.Health = 100
		Player.Character = NewCharacter
		NewHumanoid.Health = 0
	end
end)


Antikill()