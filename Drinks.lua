--[[
Drinks
Models:
 - 0, Vodka
 - 1, Liquor
 - 2, Milk
 - 3, Water
 - 4, Coca-Cola
 - 5, Mountan Dew
 - 6, Orange Crush
 - 7, Pepsi
 - 8, Pepsi (New Logo)
 - 9, Sprite
--]]


if script == nil then return end


ModelType = script:FindFirstChild("ModelType") ~= nil and loadstring("return " ..script.ModelType.Value)() or 3
ModelName = (function()
	if ModelType == 0 then
		return "Vodka"
	elseif ModelType == 1 then
		return "Liquor"
	elseif ModelType == 2 then
		return "Milk"
	elseif ModelType == 3 then
		return "Water"
	elseif ModelType == 4 then
		return "Coca-Cola"
	elseif ModelType == 5 then
		return "MtnDew"
	elseif ModelType == 6 then
		return "Orange Crush"
	elseif ModelType == 7 then
		return "PEPSI"
	elseif ModelType == 8 then
		return "pepsi"
	elseif ModelType == 9 then
		return "Sprite"
	end
end)()
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Thrown = false
FirstPerson = game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(63178291)["CameraPunch"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	if ModelType <= 1 then
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.BrickColor = BrickColor.new((function()
			if ModelType == 0 then
				return "Earth green"
			elseif ModelType == 1 then
				return "CGA brown"
			end
		end)())
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(0.6, 1, 0.6)
		MasterPart.Parent = Parts
		Instance.new("CylinderMesh", MasterPart)
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Torso")
			Weld.C0 = CFrame.new(-0.75, 0.55, 0.8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(10))
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 1.2, 0)
		end
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Label"
		Part.BrickColor = BrickColor.new("White")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.6001, 0.4, 0.6001)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Neck Angle"
		Part.BrickColor = MasterPart.BrickColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.6, 0.5, 0.6)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "FileMesh"
		Mesh.MeshId = "http://www.roblox.com/Asset/?id=1033714"
		Mesh.Scale = Part.Size * Vector3.new(0.5, 1.335, 0.5)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.75, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Neck"
		Part.BrickColor = MasterPart.BrickColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.25, 0.5, 0.25)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Cap"
		Part.BrickColor = BrickColor.new("Black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.275, 0.2, 0.275)
		Part.Parent = Parts
		local Mesh = Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1.35, 0)
		Weld.Parent = Weld.Part0
	elseif ModelType <= 3 then
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(1, 1, 1)
		MasterPart.BrickColor = BrickColor.new("Institutional white")
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.Parent = Parts
		Instance.new("CylinderMesh", MasterPart).Scale = Vector3.new(0.8, 1.1, 0.8)
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Torso")
			Weld.C0 = CFrame.new(-0.75, 0.55, 0.8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(10))
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(0, 0, 1.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		end
		Weld.Parent = Weld.Part0
		if ModelType == 3 then Instance.new("Decal", MasterPart).Texture = "http://www.roblox.com/Asset/?id=34403946" end

		local Part = Instance.new("Part")
		Part.Name = "Top"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.Locked = true
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.8, 1, 0.8)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.5, 0)
		Weld.Parent = Part

		local Part = Instance.new("Part")
		Part.Name = "Neck"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.275, 0.25, 0.275)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1.05, 0)
		Weld.Parent = Part

		local Part = Instance.new("Part")
		Part.Name = "Rim"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		local Mesh = Instance.new("CylinderMesh", Part)
		Mesh.Scale = Vector3.new(0.35, 0.05, 0.35)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1.05, 0)
		Weld.Parent = Part

		local Part = Instance.new("Part")
		Part.Name = "Cap"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.BrickColor = BrickColor.new(ModelType == 2 and "Dark stone grey" or "Bright blue")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		local Mesh = Instance.new("CylinderMesh", Part)
		Mesh.Scale = Vector3.new(0.3, 0.2, 0.3)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1.15, 0)
		Weld.Parent = Part
	else
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(1, 1, 1)
		MasterPart.BrickColor = BrickColor.new((function()
			if ModelType == 4 then
				return "Really red"
			elseif ModelType == 5 then
				return "Dark green"
			elseif ModelType == 6 then
				return "Neon orange"
			elseif ModelType == 7 or ModelType == 8 then
				return "Medium stone grey"
			elseif ModelType == 9 then
				return "Really blue"
			end
		end)())
		MasterPart.Reflectance = 0.2
		MasterPart.Locked = true
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.Parent = Parts
		Instance.new("CylinderMesh", MasterPart).Scale = Vector3.new(0.8, 1.1, 0.8)
		Instance.new("Decal", MasterPart).Texture = (function()
			if ModelType == 4 then
				return "http://www.roblox.com/Asset/?id=34592623"
			elseif ModelType == 5 then
				return "http://www.roblox.com/Asset/?id=34395075"
			elseif ModelType == 6 then
				return "http://www.roblox.com/Asset/?id=35501125"
			elseif ModelType == 7 then
				return "http://www.roblox.com/Asset/?id=34399263"
			elseif ModelType == 8 then
				return "http://www.roblox.com/Asset/?id=62696794"
			elseif ModelType == 9 then
				return "http://www.roblox.com/Asset/?id=34402643"
			end
		end)()
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Torso")
			Weld.C0 = CFrame.new(-0.75, 0.55, 0.8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(10))
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(0, 0, 1.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		end
		Weld.Parent = Weld.Part0
	end

	pcall(function()
		if Format == 2 and script.Open.Value == true then
			Parts.Cap.Transparency = 1
		end
	end)

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
	end
end


function RemoveParts(Parent, Format)
	if Format == 1 then
		pcall(function() Parent[ModelName.. " (Holstered)"]:Remove() end)
	elseif Format == 2 then
		pcall(function() Parent[ModelName]:Remove() end)
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor6D")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false or CanUse == false then return end
	CanUse = false
	if script.Open.Value == false then
		pcall(function() Player.Character[ModelName].Cap.Transparency = 1 end)
		SoundToServer("Cap", ModelType <= 3 and "http://www.roblox.com/Asset/?id=2697295" or "http://www.roblox.com/Asset/?id=10721950", 1, 0.5, false, Player.Character:FindFirstChild("Torso"))
		wait(0.5)
		script.Open.Value = true
	elseif script.Full.Value > 0 then
		if ModelType <= 3 then
			for i = 0, 10, 1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - i / 50, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 + i * 2), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				end)
				wait()
			end
			for i = 0, 10, 1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(120 - i * 2), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-i * 4), math.rad(90 - i * 6), 0)
					Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(i / 75, -i / 20, i / 10) * CFrame.fromEulerAnglesXYZ(math.rad(i * 3), 0, 0)
				end)
				wait()
			end
		else
			for i = 0, 10, 1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - i / 50, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 + i * 3.5), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end)
				wait()
			end
			for i = 0, 10, 1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(i * 2), math.rad(135), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end)
				wait()
			end
		end
		while Button1Down == true and Selected == true and script.Full.Value > 0 do
			SendToServer([[for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Drink" then
		coroutine.wrap(function()
			Part:Stop()
			Part.Volume = 0
			wait(0.5)
			Part:Remove()
		end)()
	end
end]], "SoundStop", {"Source", Player.Character:FindFirstChild("Torso")})
			SoundToServer("Drink", "http://www.roblox.com/Asset/?id=10722059", 1, 1, false, Player.Character:FindFirstChild("Torso"))
			pcall(function() Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + (function()
				if ModelType == 0 then
					return math.random(1, 5)
				elseif ModelType == 1 then
					return math.random(2, 6)
				elseif ModelType == 2 then
					return math.random(8, 11)
				elseif ModelType == 3 then
					return math.random(6, 12)
				else
					return math.random(1, 3)
				end
			end)() end)
			script.Full.Value = script.Full.Value - math.random(3, 7)
			if script.Full.Value < 0 then script.Full.Value = 0 end
			script.Parent.Name = script.Full.Value.. "%"
			wait(1)
		end
		script.Parent.Name = ModelName
		if ModelType <= 3 then
			for i = 10, 0, -1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(120 - i * 2), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-i * 4), math.rad(90 - i * 6), 0)
					Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(i / 75, -i / 20, i / 10) * CFrame.fromEulerAnglesXYZ(math.rad(i * 3), 0, 0)
				end)
				wait()
			end
			for i = 10, 0, -1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - i / 50, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 + i * 2), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				end)
				wait()
			end
		else
			for i = 10, 0, -1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(i * 2), math.rad(135), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end)
				wait()
			end
			for i = 10, 0, -1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - i / 50, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 + i * 3.5), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end)
				wait()
			end
		end
	end
	CanUse = true
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Button1Down == false and CanUse == true and CheckPlayer() == true then
		if Key == "q" then
			if Mouse.Target == nil then return end
			if CheckPlayer() == false then return end
			local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
			if NewPlayer == nil then return end
			if NewPlayer.Character == nil then return end
			if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
			onDeselected(Mouse)
			wait()
			RemoveParts(Player.Character, 1)
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		elseif Key == "g" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 1.9, 1, false, Player.Character.Torso)
			SetSpeed(1, 0.55, Player.Character)
			SetAngle(1, math.rad(200), Player.Character)
			wait(0.2)
			SetSpeed(1, 0.7, Player.Character)
			SetAngle(1, 0, Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				if ModelType <= 1 then
					SoundToServer("Bash", "http://www.roblox.com/Asset/?id=10209596", 1, 0.25, false, Player.Character[ModelName].Handle)
				else
					SoundToServer("Stab", "http://www.roblox.com/Asset/?id=10209590", math.random(900, 1100) / 1000, 1, false, Player.Character.Torso)
				end
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(math.random(5000, 25000) / 1000)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			wait(0.3)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.2, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			wait(0.1)
			CanUse = true
		elseif Key == "z" then
			CanUse = false
			local Speed = (script.Full.Value / 100)
			print(Speed)
			SoundToServer("Throw", "http://www.roblox.com/Asset/?id=18426149", 0.9, 1, false, Player.Character.Torso)
			SetSpeed(1, 0.55, Player.Character)
			SetAngle(1, math.rad(200), Player.Character)
			wait(0.2)
			SetSpeed(1, 0.7, Player.Character)
			SetAngle(1, 0, Player.Character)
			wait()
			pcall(function() Player.Character[ModelName].Handle.Weld:Remove() end)
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				pcall(function() Part.CanCollide = true end)
			end
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.velocity = (Mouse.Hit.p - Player.Character[ModelName].Handle.Position).unit * (((1 - Speed) * 25) + 75)
			BodyVelocity.Parent = Player.Character[ModelName].Handle
			game:GetService("Debris"):AddItem(BodyVelocity, 0.25)
			local Find1 = math.random()
			local ParentObject = Instance.new("ObjectValue", Workspace)
			ParentObject.Name = Find1
			ParentObject.Value = Player.Character[ModelName].Handle
			local Find2 = math.random()
			local Clone = script:Clone()
			Clone.Disabled = true
			Clone.Name = Find2
			pcall(function() Clone.Player:Remove() end)
			pcall(function() Clone.ModelType:Remove() end)
			Clone.Parent = Workspace
			tagHumanoid(Player.Character[ModelName].Handle)
			wait(0.05)
			SendToServer([[local Value = Workspace["]] ..Find1.. [["]
local Source = Value.Value
Value:Remove()
local Clone = Workspace["]] ..Find2.. [["]
Clone.Parent = nil
Clone.Disabled = false
Status = 0
Source.Touched:connect(function(Hit)
	if Status == 2 then
		if Hit.Parent == nil then return end
		local Player = game:GetService("Players"):GetPlayerFromCharacter(Hit.Parent)
		if Player ~= nil then
			local ModelType = Instance.new("StringValue", Clone)
			ModelType.Name = "ModelType"
			ModelType.Value = "]] ..ModelType.. [["
			local PlayerValue = Instance.new("ObjectValue", Clone)
			PlayerValue.Name = "Player"
			PlayerValue.Value = Player
			Clone.Parent = Workspace
			Source.Parent:Remove()
		end
	elseif Status == 0 then
		Status = 1
		local Sound = Instance.new("Sound", Source)
		Sound.SoundId = "]] ..(ModelType <= 1 and "http://www.roblox.com/Asset/?id=10209596" or "http://www.roblox.com/Asset/?id=10209590").. [["
		Sound.Pitch = math.random(900, 1100) / 1000
		Sound.Volume = 1
		Sound:Play()
		local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
		if Humanoid ~= nil then
			local creator = Source.creator:Clone()
			creator.Parent = Humanoid
			Humanoid:TakeDamage(]] ..(Speed * 25).. [[ + math.random(-5000, 5000) / 1000)
			wait()
			creator:Remove()
		end
		wait(3)
		Status = 2
	end
end)
wait(25)
Source.Parent:Remove()]], "Throw")
			Player.Character[ModelName].Parent = Workspace
			wait(0.5)
			Selected = true
			Button1Down = false
			CanUse = true
			onDeselected(Mouse)
			RemoveParts(Player.Character, 1)
			script.Parent:Remove()
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil and Player.Character.Torso:FindFirstChild("Left Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.15, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	pcall(function() Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0) end)
	for i = 10, 0, -1 do
		pcall(function() Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 - i), 0) end)
		wait()
	end
	pcall(function() Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), 0) end)
	if script:FindFirstChild("Full") == nil then
		local Value = Instance.new("NumberValue", script)
		Value.Name = "Full"
		Value.Value = 100
	end
	if script:FindFirstChild("Open") == nil then
		local Value = Instance.new("BoolValue", script)
		Value.Name = "Open"
		Value.Value = false
	end
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false or Primed == true then return end
	Selected = false
	while CanUse == false do wait() end
	if Selected == true then return end
	CanUse = false
	SetSpeed(1, 0.15, Player.Character)
	SetAngle(1, 0, Player.Character)
	for i = 0, 10, 1 do
		pcall(function() Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 - i), 0) end)
		wait()
	end
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	ResetLimbCFrame(1, Player.Character)
	DisableLimb(1, Player.Character)
	EnableLimb(1, Player.Character)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
end