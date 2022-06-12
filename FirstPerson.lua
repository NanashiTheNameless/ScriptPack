--[[
FirstPerson v37
Variables:

FirstPersonOffset
Player
ModelName

Functions:

UpdateFirstPerson
--]]


FirstPersonOffset = FirstPersonOffset or CFrame.new()


local WeaponClone = nil
local BodyClone = nil
local Check = false
local FirstRun = false


function UpdateFirstPerson(Override)
	if (Selected == true or CanUse == false) and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character.Humanoid.Health > 0 and Workspace.CurrentCamera.CameraSubject == Player.Character.Humanoid and Player.Character:FindFirstChild("Torso") ~= nil and Player.Character:FindFirstChild(ModelName) ~= nil and (Workspace.CurrentCamera.CoordinateFrame.p - Workspace.CurrentCamera.Focus.p).magnitude <= 1 then
		if (BodyClone == nil or WeaponClone == nil) or Override == true then
			pcall(function() WeaponClone:Remove() end)
			WeaponClone = nil
			pcall(function() BodyClone:Remove() end)
			BodyClone = nil
			if (Player.Character.Torso:FindFirstChild("Left Shoulder") == nil and Player.Character.Torso:FindFirstChild("Left Shoulder 2") == nil) or (Player.Character.Torso:FindFirstChild("Right Shoulder") == nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") == nil) then
				return
			end
			BodyClone = Instance.new("Model", Workspace.CurrentCamera)
			BodyClone.Name = "Body Clone"
			local Torso = Instance.new("Part", BodyClone)
			Torso.Name = "Torso"
			Torso.FormFactor = "Custom"
			Torso.Size = Vector3.new(0.2, 0.2, 0.2)
			Torso.Transparency = 1
			Torso:BreakJoints()
			local Weld = Instance.new("Weld", Torso)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = Player.Character.Torso
			Weld.C1 = Check == true and CFrame.new() or FirstPersonOffset
			local LeftArm = Player.Character:FindFirstChild("Left Arm")
			if LeftArm ~= nil and Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
				LeftArm = LeftArm:Clone()
				LeftArm.Parent = BodyClone
				local Motor6D = Instance.new("Motor6D", Torso)
				Motor6D.Name = "Left Shoulder"
				Motor6D.Part0 = Motor6D.Parent
				Motor6D.Part1 = LeftArm
				Motor6D.C0 = Player.Character.Torso["Left Shoulder 2"].C0
				Motor6D.C1 = Player.Character.Torso["Left Shoulder 2"].C1
				Motor6D.CurrentAngle = Player.Character.Torso["Left Shoulder 2"].CurrentAngle
				Motor6D.DesiredAngle = Player.Character.Torso["Left Shoulder 2"].DesiredAngle
				Motor6D.MaxVelocity = Player.Character.Torso["Left Shoulder 2"].MaxVelocity
				Player.Character.Torso["Left Shoulder 2"].Changed:connect(function(Property)
					pcall(function() Motor6D[Property] = Player.Character.Torso["Left Shoulder 2"][Property] end)
				end)
			end
			local RightArm = Player.Character:FindFirstChild("Right Arm")
			if RightArm ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				RightArm = RightArm:Clone()
				RightArm.Parent = BodyClone
				local Motor6D = Instance.new("Motor6D", Torso)
				Motor6D.Name = "Right Shoulder"
				Motor6D.Part0 = Motor6D.Parent
				Motor6D.Part1 = RightArm
				Motor6D.C0 = Player.Character.Torso["Right Shoulder 2"].C0
				Motor6D.C1 = Player.Character.Torso["Right Shoulder 2"].C1
				Motor6D.CurrentAngle = Player.Character.Torso["Right Shoulder 2"].CurrentAngle
				Motor6D.DesiredAngle = Player.Character.Torso["Right Shoulder 2"].DesiredAngle
				Motor6D.MaxVelocity = Player.Character.Torso["Right Shoulder 2"].MaxVelocity
				Player.Character.Torso["Right Shoulder 2"].Changed:connect(function(Property)
					pcall(function() Motor6D[Property] = Player.Character.Torso["Right Shoulder 2"][Property] end)
				end)
			end
			Instance.new("Humanoid", BodyClone)
			BodyClone.Humanoid.MaxHealth = math.huge
			BodyClone.Humanoid.Health = math.huge
			for _, Part in pairs(Player.Character:GetChildren()) do
				if Part.ClassName == "Shirt" then
					Part:Clone().Parent = BodyClone
				elseif Part.ClassName == "CharacterMesh" then
					if Part.BodyPart.Name == "LeftArm" or Part.BodyPart.Name == "RightArm" then
						Part:Clone().Parent = BodyClone
					end
				end
			end
			WeaponClone = Player.Character[ModelName]:Clone()
			WeaponClone.Parent = Workspace.CurrentCamera
			local _, WeaponCloneDual = pcall(function() return Player.Character[ModelName.. " (Dual)"]:Clone() end)
			if type(WeaponCloneDual) == "userdata" then
				for _, Part in pairs(WeaponCloneDual:GetChildren()) do
					Part.Name = Part.Name.. " Dual"
					Part.Parent = WeaponClone
				end
			end
			for _, Part in pairs(WeaponClone:GetChildren()) do
				pcall(function()
					Part.Velocity = Vector3.new(0, 0, 0)
					Part.RotVelocity = Vector3.new(0, 0, 0)
					Part.CanCollide = false
				end)
				for _, Part2 in pairs(Part:GetChildren()) do
					if Part2.ClassName == "Fire" or Part2.ClassName == "Smoke" then
						pcall(function() Part2:Remove() end)
					end
				end
			end
			for i = 1, 2 do
				for _, Part in pairs(WeaponClone:GetChildren()) do
					if i == 2 and (Part.Name == "Handle" or Part.Name == "Handle Dual") then
						pcall(function()
						local Source = Part.Name == "Handle" and Player.Character[ModelName]["Handle"] or Player.Character[ModelName.. " (Dual)"]["Handle"]
							local Weld = Instance.new("Weld", Part)
							Weld.Part0 = Weld.Parent
							Weld.Part1 = BodyClone:FindFirstChild(Source.Weld.Part1.Name)
							Weld.C0 = Source.Weld.C0
							Weld.C1 = Source.Weld.C1
						end)
					else
						for _, Part2 in pairs(Part:GetChildren()) do
							if Part2:IsA("JointInstance") then
								if Part2.Part0 == nil or Part2.Part1 == nil then
									Part:Remove()
								elseif (Part2.Part1.Name == "Torso" or Part2.Part1.Name == "Left Arm" or Part2.Part1.Name == "Right Arm") and Part.Name ~= "Handle" and Part.Name ~= "Handle Dual" then
									Part:Remove()
								end
							end
						end
					end
				end
				for _, Model in pairs(Player.Character:GetChildren()) do
					if Model.Name == ModelName or Model.Name == ModelName.. " (Dual)" then
						for _, Part in pairs(Model:GetChildren()) do
							Part.Changed:connect(function(Property)
								if Model ~= Player.Character:FindFirstChild(ModelName) and Model ~= Player.Character:FindFirstChild(ModelName.. " (Dual)") then return end
								if Property == "Transparency" or Property == "Reflectance" then
									pcall(function() WeaponClone[Part.Name .. (Model.Name == ModelName.. " (Dual)" and " Dual" or "")][Property] = Part[Property] end)
								end
							end)
							for _, Joint in pairs(Part:GetChildren()) do
								if Joint:IsA("JointInstance") then
									Joint.Changed:connect(function(Property)
										if Model ~= Player.Character:FindFirstChild(ModelName) and Model ~= Player.Character:FindFirstChild(ModelName.. " (Dual)") then return end
										pcall(function() WeaponClone[Part.Name .. (Model.Name == ModelName.. " (Dual)" and " Dual" or "")][Joint.Name][Property] = Part[Joint.Name][Property] end)
									end)
								end
							end
						end
					end
				end
			end
		end
	else
		pcall(function() WeaponClone:Remove() end)
		WeaponClone = nil
		pcall(function() BodyClone:Remove() end)
		BodyClone = nil
	end
end


while true do
	UpdateFirstPerson()
	if BodyClone ~= nil then
		if CanUse == true then
			BodyClone.Torso.Weld.C1 = FirstPersonOffset
			Check = false
			FirstRun = true
		elseif CanUse == false then
			if FirstRun == true then
				Check = not Button1Down
				FirstRun = false
			end
			if Check == true then
				BodyClone.Torso.Weld.C1 = CFrame.new()
			end
		end
	end
	wait()
end