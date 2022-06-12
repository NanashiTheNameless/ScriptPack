Owner = game:GetService("Players").DarkShadow6
Name = Owner.Name
Characters = {}


function Match(Msg, Match)
	for Word in Msg:lower():gmatch("%w+") do
		if Word:lower() == Match:lower() then
			return true
		end
	end
	return false
end


Owner.Chatted:connect(function(Msg)
	if string.sub(Msg, 0, 5) == "lego " then
		Msg = string.sub(Msg, 6)
	end
	if Msg == "reset" then
		Characters = {}
		return
	end
	if Msg:sub(0, 6):lower() == "spawn " then
		local Max = tonumber(Msg:sub(7)) or 1
		for i = 1, Max do
			local Character = Instance.new("Model", Workspace)
			coroutine.wrap(function()
				while Character.Parent ~= nil do
					for i, Part in pairs(Characters) do
						if Part == Character then
							Character.Name = Name.. " " ..tostring(i)
						end
					end
					wait()
				end
			end)()
			local Head = Instance.new("Part", Character)
			Head.Name = "Head"
			Head.FormFactor = 0
			Head.Size = Vector3.new(2, 1, 1)
			Head.TopSurface = 0
			Head.BottomSurface = "Weld"
			local Mesh = Instance.new("SpecialMesh", Head)
			Mesh.MeshType = "Head"
			Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
			local Face = Instance.new("Decal", Head)
			Face.Name = "face"
			Face.Face = "Front"
			Face.Texture = "rbxasset://textures/face.png"
			local Torso = Instance.new("Part", Character)
			Torso.Name = "Torso"
			Torso.FormFactor = 0
			Torso.Size = Vector3.new(2, 2, 1)
			Torso.TopSurface = "Studs"
			Torso.BottomSurface = "Inlet"
			Torso.LeftSurface = "Weld"
			Torso.RightSurface = "Weld"
			local TShirt = Instance.new("Decal", Torso)
			TShirt.Name = "roblox"
			TShirt.Face = "Front"
			local Limb = Instance.new("Part")
			Limb.FormFactor = 0
			Limb.Size = Vector3.new(1, 2, 1)
			Limb.TopSurface = "Studs"
			Limb.BottomSurface = "Inlet"
			Limb.BrickColor = BrickColor.new("Black")
			local LeftArm = Limb:Clone()
			LeftArm.Name = "Left Arm"
			LeftArm.Parent = Character
			local RightArm = Limb:Clone()
			RightArm.Name = "Right Arm"
			RightArm.Parent = Character
			local LeftLeg = Limb:Clone()
			LeftLeg.Name = "Left Leg"
			LeftLeg.Parent = Character
			local RightLeg = Limb:Clone()
			RightLeg.Name = "Right Leg"
			RightLeg.Parent = Character
			Character:BreakJoints()
			local Neck = Instance.new("Motor6D")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 2, 0)
			Neck.C1 = CFrame.new(0, 0.5, 0)
			Neck.MaxVelocity = 0
			Neck.Parent = Torso
			local LeftShoulder = Instance.new("Motor6D", Torso)
			LeftShoulder.Name = "Left Shoulder"
			LeftShoulder.Part0 = Torso
			LeftShoulder.Part1 = LeftArm
			LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			LeftShoulder.MaxVelocity = 0.5
			local RightShoulder = Instance.new("Motor6D", Torso)
			RightShoulder.Name = "Right Shoulder"
			RightShoulder.Part0 = Torso
			RightShoulder.Part1 = RightArm
			RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			RightShoulder.MaxVelocity = 0.5
			local LeftHip = Instance.new("Motor6D", Torso)
			LeftHip.Name = "Left Hip"
			LeftHip.Part0 = Torso
			LeftHip.Part1 = LeftLeg
			LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			LeftHip.MaxVelocity = 0.1
			local RightHip = Instance.new("Motor6D", Torso)
			RightHip.Name = "Right Hip"
			RightHip.Part0 = Torso
			RightHip.Part1 = RightLeg
			RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			RightHip.MaxVelocity = 0.1
			local Humanoid = Instance.new("Humanoid")
			Humanoid.Parent = Character
			for _, Part in pairs(Owner.Character:GetChildren()) do
				if Part:IsA("Clothing") or Part.ClassName == "ShirtGraphic" or Part.ClassName == "BodyColors" or (Part:IsA("Accoutrement") and Part:FindFirstChild("Handle") ~= nil) then
					Part:Clone().Parent = Character
				end
			end
			Torso.CFrame = Owner.Character.Torso.CFrame * CFrame.new(math.sin((i / Max) * math.pi * 2) * math.max(Max, 5), 0, math.cos((i / Max) * math.pi * 2) * math.max(Max, 5))
			game:GetService("InsertService"):LoadAsset(55821959)["Animate"].Parent = Character
			table.insert(Characters, Character)
			Humanoid.Died:connect(function()
				coroutine.wrap(function()
					for i, Part in pairs(Characters) do
						if Part == Character then
							table.remove(Characters, i)
							return
						end
					end
				end)()
				pcall(function() Character.Moving:Remove() end)
				wait(5)
				Character:Remove()
			end)
		end
	else
		local Matches = {}
		if Match(Msg, "all") or Match(Msg, "everyone") or Match(Msg, "guys") then
			Matches = Characters
		else
			for i, Character in pairs(Characters) do
				if Match(Msg, tostring(i)) then
					table.insert(Matches, Character)
				end
			end
		end
		for i, Character in pairs(Matches) do
			if Match(Msg, "die") or Match(Msg, "suicide") then
				pcall(function() Character.Humanoid.Health = 0 end)
			elseif Match(Msg, "explode") then
				wait(math.random(1, 500) / 1000)
				pcall(function()
					local Explosion = Instance.new("Explosion", Workspace)
					Explosion.Position = Character.Torso.Position
					Explosion.BlastRadius = 10
					Explosion.BlastPressure = 100000
					for _ = 1, math.random(4, 8) do
						local Sound = Instance.new("Sound", Character.Torso.Position)
						Sound.Name = "Explosion"
						Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
						Sound.Volume = 1
						Sound.Pitch = math.random(600, 1500) / 1000
						Sound.Parent = Torso
						Sound:Play()
					end
				end)
			elseif Match(Msg, "guard") then
				local Past = false
				local Continue = true
				for Word in Msg:lower():gmatch("%w+") do
					if Continue == true then
						for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
							if Past == false and Word:lower() == "guard" then
								Past = true
							elseif Past == true and ((Player == Owner and Word == "me") or Player.Name:lower():match(Word:lower())) then
								pcall(function() Character.Moving:Remove() end)
								local Moving = Instance.new("Configuration", Character)
								Moving.Name = "Moving"
								coroutine.wrap(function()
									while Moving.Parent ~= nil do
										pcall(function()
											Character.Humanoid:MoveTo((Player.Character.Torso.CFrame * CFrame.new(math.sin((i / #Matches) * math.pi * 2) * math.max(#Matches, 5), 0, math.cos((i / #Matches) * math.pi * 2) * math.max(#Matches, 5))).p, Player.Character.Torso)
											if Player.Character.Humanoid.Jump == true or Player.Character.Torso.Position.y > Character.Torso.Position.y + 2 or (Player.Character.Torso.Position - Character.Torso.Position).magnitude < 2 then
												Character.Humanoid.Jump = true
											end
										end)
										wait()
									end
								end)()
								Continue = false
								break
							end
						end
					end
				end
			elseif Match(Msg, "follow") or Match(Msg, "attack") then
				local Past = false
				local Continue = true
				for Word in Msg:lower():gmatch("%w+") do
					if Continue == true then
						for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
							if Past == false and (Word:lower() == "follow" or Word:lower() == "attack") then
								Past = true
							elseif Past == true and ((Player == Owner and Word == "me") or Player.Name:lower():match(Word:lower())) then
								pcall(function() Character.Moving:Remove() end)
								local Moving = Instance.new("Configuration", Character)
								Moving.Name = "Moving"
								coroutine.wrap(function()
									while Moving.Parent ~= nil do
										pcall(function()
											Character.Humanoid:MoveTo(Player.Character.Torso.Position, Player.Character.Torso)
											if Player.Character.Humanoid.Jump == true or Player.Character.Torso.Position.y > Character.Torso.Position.y + 2 then
												Character.Humanoid.Jump = true
											end
											if Match(Msg, "attack") then
												if (Character.Torso.Position - Player.Character.Torso.Position).magnitude <= 3 then
													Player.Character.Humanoid:TakeDamage(0.5)
													Character.Torso["Left Shoulder"].DesiredAngle = math.rad(math.random(170, 110))
													Character.Torso["Right Shoulder"].DesiredAngle = -math.rad(math.random(170, 110))
												end
											end
										end)
										wait()
									end
								end)()
								Continue = false
								break
							end
						end
					end
				end
			elseif Match(Msg, "wander") then
				pcall(function() Character.Moving:Remove() end)
				local Moving = Instance.new("Configuration", Character)
				Moving.Name = "Moving"
				coroutine.wrap(function()
					while Moving.Parent ~= nil do
						pcall(function() Character.Humanoid:MoveTo(Workspace.Base.Position + Vector3.new(math.random(-Workspace.Base.Size.x, Workspace.Base.Size.x), math.random(-Workspace.Base.Size.y, Workspace.Base.Size.y), math.random(-Workspace.Base.Size.z, Workspace.Base.Size.z)) / 2, Workspace.Base) end)
						wait(math.random(1000, 15000) / 1000)
					end
				end)()
			elseif Match(Msg, "stop") or Match(Msg, "halt") then
				pcall(function() Character.Moving:Remove() end)
				pcall(function() Character.Looking:Remove() end)
				pcall(function() Character.Humanoid:MoveTo(Character.Torso.Position, Character.Torso) end)
			end
		end
	end
end)