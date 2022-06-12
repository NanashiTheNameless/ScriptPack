--[[
Military Gas Mask
Protects the lungs from harmful things in the air by filtering them out.
Style 1: Single filter, forward.
Style 2: Single filter, left.
Style 3: Single filter, right.
Style 4: Dual filter.
Style 5: Triple filter.
--]]


Style = 1


function GiveHat(Player)
	local Hat = Instance.new("Hat")
	Hat.Name = "Gas Mask"
	Hat.AttachmentPos = Vector3.new(0, 0.5, -0.1)

	local MasterPart = Instance.new("Part", Hat)
	MasterPart.Name = "Handle"
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.BrickColor = BrickColor.new("Really black")
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(1.3, 1.3, 1.3)
	Instance.new("SpecialMesh", MasterPart).MeshType = "Head"

	local Part = Instance.new("Part", Hat)
	Part.Name = "Glass"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Transparency = 0.5
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1.15, 1.15, 1.15)
	Instance.new("SpecialMesh", Part).MeshType = "Head"
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, 0.2)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part", Hat)
	Part.Name = "Cover"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.BrickColor = BrickColor.new("Really black")
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1.15, 0.65, 1.15)
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.255, 0.225)
	Weld.Parent = Weld.Part0

	if Style == 1 or Style == 5 then
		local Part = Instance.new("Part", Hat)
		Part.Name = "Filter Holder"
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Really black")
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.4, 0.3, 0.4)
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.85, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(105), 0, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part", Hat)
		Part.Name = "Filter"
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Grime")
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.7, 0.5, 0.7)
		Instance.new("CylinderMesh", Part).Bevel = 0.05
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1.25, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(105), 0, 0)
		Weld.Parent = Weld.Part0
	end

	if Style == 2 or Style == 4 or Style == 5 then
		local Part = Instance.new("Part", Hat)
		Part.Name = "Filter Holder Left"
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Really black")
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.4, 0.3, 0.4)
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.85, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(105), math.rad(30), 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part", Hat)
		Part.Name = "Filter Left"
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Grime")
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.6, 0.3, 0.6)
		Instance.new("CylinderMesh", Part).Bevel = 0.05
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1.15, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(105), math.rad(30), 0)
		Weld.Parent = Weld.Part0
	end

	if Style == 3 or Style == 4 or Style == 5 then
		local Part = Instance.new("Part", Hat)
		Part.Name = "Filter Holder Right"
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Really black")
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.4, 0.3, 0.4)
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.85, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(105), math.rad(-30), 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part", Hat)
		Part.Name = "Filter Right"
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Grime")
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.6, 0.3, 0.6)
		Instance.new("CylinderMesh", Part).Bevel = 0.05
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1.15, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(105), math.rad(-30), 0)
		Weld.Parent = Weld.Part0
	end

	for _, Part in pairs(Hat:GetChildren()) do
		Part.CanCollide = false
		Part.Locked = true
		if Part:FindFirstChild("Weld") ~= nil then
			local Fixing = false
			local Joint = Part.Weld:Clone()
			Part.ChildRemoved:connect(function()
				if Fixing == false then
					Fixing = true
					Part:BreakJoints()
					wait()
					Joint.Part0.CFrame = Joint.Part1.CFrame * Joint.C1 * Joint.C0:inverse()
					local NewJoint = Joint:Clone()
					NewJoint.Parent = Part
					Part:MakeJoints()
					Fixing = false
				end
			end)
		end
	end

	Hat.AncestryChanged:connect(function(Property)
		local Breathing = true
		coroutine.wrap(function()
			while true do
				if Hat.Parent == nil then break end
				if Hat.Parent:FindFirstChild("Humanoid") == nil then break end
				if Hat.Parent.Humanoid.Health <= 0 then break end
				wait()
			end
			Breathing = false
		end)()
		local Sound1 = Instance.new("Sound", Hat.Handle)
		Sound1.Name = "Hiss 1"
		Sound1.SoundId = "rbxasset://sounds/hit.wav"
		Sound1.Pitch = 5
		Sound1.Looped = true
		local Sound2 = Instance.new("Sound", Hat.Handle)
		Sound2.Name = "Hiss 2"
		Sound2.SoundId = "rbxasset://sounds/hit.wav"
		Sound2.Pitch = 5
		Sound2.Looped = true
		wait(0.1)
		while Breathing == true do
			Sound1.Pitch = 9
			Sound2.Pitch = 8
			Sound1:Play()
			Sound2:Play()
			for i = 0, 0.1, 0.0025 do
				if Breathing == false then break end
				Sound1.Volume = i
				Sound2.Volume = i
				wait()
			end
			Sound1:Stop()
			Sound2:Stop()
			wait(0.25)
			Sound1.Pitch = 6.5
			Sound2.Pitch = 7.5
			Sound1:Play()
			Sound2:Play()
			for i = 0.1, 0, -0.0025 do
				if Breathing == false then break end
				Sound1.Volume = i
				Sound2.Volume = i
				wait()
			end
			Sound1:Stop()
			Sound2:Stop()
			wait(0.5)
		end
		Sound1:Stop()
		Sound2:Stop()
		wait(0.1)
		Sound1:Remove()
		Sound2:Remove()
	end)

	Hat.Parent = Player.Character
end


GiveHat(script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6"))
--[[
while true do
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		pcall(function()
			Player.Character["Gas Mask"]:Remove()
		end)
		pcall(function()
			GiveHat(Player)
		end)
	end
	wait(0.1)
end
--]]