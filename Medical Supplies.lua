--[[
Medical Supplies
Models:
 - Syringe:
	- 0, Morphene
	- 1, Poison
    - 2, Poison Antidote
    - 3, Adrenaline
    - 4, Metabolism
	- 5, Knock-Out Shot
 - Pill Bottle:
	- 6, Buffout
	- 7, Painkillers
 - Medical Pack, 8
--]]


if script == nil then return end


ModelType = script:FindFirstChild("ModelType") ~= nil and loadstring("return " ..script.ModelType.Value)() or 8
ModelName = (function()
	if ModelType == 0 then
		return "Morphene Shot"
	elseif ModelType == 1 then
		return "Poison Shot"
	elseif ModelType == 2 then
		return "Poison Antidote Shot"
	elseif ModelType == 3 then
		return "Adrenaline Shot"
	elseif ModelType == 4 then
		return "Metabolism Shot"
	elseif ModelType == 5 then
		return "Knock-Out Shot"
	elseif ModelType == 6 then
		return "Buffout"
	elseif ModelType == 7 then
		return "Painkillers"
	elseif ModelType == 8 then
		return "Medical Pack"
	end
end)()
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
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

	if ModelType <= 5 then
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.BrickColor = BrickColor.new("Institutional white")
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.Transparency = 0.5
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(1, 1, 1)
		MasterPart.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C1 = CFrame.new(-0.3, 0.1, -0.6) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(0, 0.1, 1.1) * CFrame.fromEulerAnglesXYZ(math.rad(70), 0, 0)
		end
		Weld.Parent = Weld.Part0
		Instance.new("CylinderMesh", MasterPart).Scale = Vector3.new(0.25, 1, 0.25)

		local Part = Instance.new("Part")
		Part.Name = "Fluid"
		Part.BrickColor = BrickColor.new((function()
			if ModelType == 0 then
				return "Institutional white"
			elseif ModelType == 1 then
				return "Royal purple"
			elseif ModelType == 2 then
				return "New yeller"
			elseif ModelType == 3 then
				return "Neon orange"
			elseif ModelType == 4 then
				return "Neon green"
			elseif ModelType == 5 then
				return "Really blue"
			end
		end)())
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.16, 0.9, 0.16)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.05, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Valve 1"
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Transparency = 0.5
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.15, 0.5, 0.15)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.75, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Valve 2"
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Transparency = 0.5
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.3, 0.01, 0.3)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -1, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Tip"
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.2, 0.1, 0.2)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Needle"
		Part.BrickColor = BrickColor.new(Format == 1 and "Institutional white" or "Silver")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 1, 1)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Format == 1 and Vector3.new(0.15, 0.5, 0.15) or Vector3.new(0.01, 0.5, 0.01)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.75, 0)
		Weld.Parent = Weld.Part0
	elseif ModelType <= 7 then
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.BrickColor = BrickColor.new((function()
			if ModelType == 6 then
				return "Reddish brown"
			elseif ModelType == 7 then
				return "Institutional white"
			end
		end)())
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(0.8, 0.9, 0.8)
		MasterPart.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C1 = CFrame.new(0, 0, 0.7) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(0, 0, 1.1) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		end
		Weld.Parent = Weld.Part0
		Instance.new("CylinderMesh", MasterPart)

		local Part = Instance.new("Part")
		Part.Name = "Base"
		Part.BrickColor = MasterPart.BrickColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.8, 0.4, 0.8)
		Part.Parent = Parts
		Instance.new("SpecialMesh", Part).MeshType = "Head"
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.45, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Neck"
		Part.BrickColor = MasterPart.BrickColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.6, 0.2, 0.6)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.45, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Cap"
		Part.BrickColor = BrickColor.new("White")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.65, 0.2, 0.65)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.65, 0)
		Weld.Parent = Weld.Part0
	else
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.BrickColor = BrickColor.new("Really black")
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(2.2, 0.2, 1.45)
		MasterPart.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Torso")
			Weld.C1 = CFrame.new(0, -0.15, 0.55) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(180), 0)
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(0, 1.15, -0.6)
		end
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Front"
		Part.BrickColor = BrickColor.new("Really red")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(2.25, 0.2, 1.5)
		Part.Parent = Parts
		Instance.new("BlockMesh", Part).Bevel = 0.025
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.11, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Back"
		Part.BrickColor = BrickColor.new("Really red")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(2.25, 0.3, 1.5)
		Part.Parent = Parts
		Instance.new("BlockMesh", Part).Bevel = 0.025
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.16, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Front Cross Background"
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1.3, 0.2, 1)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.115, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Front Cross 1"
		Part.BrickColor = BrickColor.new("Really red")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.8, 0.2, 0.2)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.12, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Front Cross 2"
		Part.BrickColor = BrickColor.new("Really red")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.8)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.12, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Handle Left"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.3)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.4, -0.1, 0.75)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Handle Right"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.3)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(-0.4, -0.1, 0.75)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Handle Top"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 0.2, 0.2)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.1, 0.95)
		Weld.Parent = Weld.Part0
	end

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
	if CheckPlayer() == false then return end
	if CanUse == true then
		local Model = nil
		if Mouse.Target ~= nil then
			if Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil and Mouse.Target.Parent:FindFirstChild("Torso") ~= nil then
				if (Mouse.Target.Parent.Torso.Position - Player.Character[ModelName].Handle.Position).magnitude < 8 then
					Model = Mouse.Target.Parent
				end
			elseif Mouse.Target.Parent.Parent:FindFirstChild("Humanoid") ~= nil and Mouse.Target.Parent.Parent:FindFirstChild("Torso") ~= nil then
				if (Mouse.Target.Parent.Parent.Torso.Position - Player.Character[ModelName].Handle.Position).magnitude < 8 then
					Model = Mouse.Target.Parent.Parent
				end
			end
		end
		if Model == nil then
			if Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Torso") ~= nil then
				Model = Player.Character
			end
		end
		if Model == nil then return end
		if ModelType <= 5 then
			if (ModelType == 0 or ModelType == 7) and Model.Humanoid.Health == Model.Humanoid.MaxHealth then return end
			if ModelType == 1 and Model:FindFirstChild("IsPoisoned") ~= nil then return end
			if ModelType == 2 and Model:FindFirstChild("IsPoisoned") == nil then return end
			if ModelType == 3 and Model:FindFirstChild("WalkSpeedChanged") ~= nil then return end
			if ModelType == 5 and Model:FindFirstChild("IsKnockedOut") ~= nil then return end
			if (ModelType == 4 or ModelType == 6 or ModelType == 7) and (Model:FindFirstChild("IsUsingBuffout") ~= nil or Model:FindFirstChild("IsUsingPills") ~= nil) then return end
			CanUse = false
			ForceAngle(1, math.rad(90), Player.Character)
			if Model == Player.Character then
				SetSpeed(1, 0.2, Player.Character)
				SetAngle(1, math.rad(5), Player.Character)
				for i = 1, 0, -0.1 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				end)
			end
			SoundToServer("Stick", "http://www.roblox.com/Asset/?id=46153268", 5, 0.5, false, Player.Character.Torso)
			for i = 0, 1, 0.2 do
				pcall(function()
					Player.Character[ModelName]["Valve 1"].Weld.C0 = CFrame.new(0, -0.75 + (0.5 * i), 0)
					Player.Character[ModelName]["Valve 2"].Weld.C0 = CFrame.new(0, -1 + (0.5 * i), 0)
					Player.Character[ModelName].Fluid.Mesh.Scale = Vector3.new(0.16, 0.9 * (1 - i), 0.16)
					Player.Character[ModelName].Fluid.Weld.C0 = CFrame.new(0, 0.05 + (0.45 * i), 0)
				end)
				wait()
			end
			if ModelType == 0 then
				Model.Humanoid.Health = math.min(Model.Humanoid.Health + 25, Model.Humanoid.MaxHealth)
			elseif ModelType == 1 then
				SendToServer([[Instance.new("Configuration", Model).Name = "IsPoisoned"
local Victim = game:GetService("Players"):GetPlayerFromCharacter(Model)
if Victim ~= nil then
	if Victim:FindFirstChild("PlayerGui") ~= nil then
		local Gui = Instance.new("ScreenGui", Victim.PlayerGui)
		Gui.Name = "Poison"
		local Frame = Instance.new("Frame", Gui)
		Frame.Name = "Dark Purple"
		Frame.Size = UDim2.new(2, 0, 2, 0)
		Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
		Frame.BackgroundColor3 = Color3.new(0.05, 0, 0.1)
		Frame.BackgroundTransparency = 1
		coroutine.wrap(function()
			while true do
				if Model:FindFirstChild("Humanoid") == nil then break end
				if Model:FindFirstChild("IsPoisoned") == nil then break end
				Frame.BackgroundTransparency = Model.Humanoid.Health / Model.Humanoid.MaxHealth
				wait()
			end
			for i = Frame.BackgroundTransparency, 1, 0.05 do
				Frame.BackgroundTransparency = i
				wait()
			end
			Gui:Remove()
		end)()
	end
end
while true do
	if Model:FindFirstChild("Humanoid") == nil then return end
	if Model:FindFirstChild("IsPoisoned") == nil then return end
	if Model.Humanoid.Health <= 0 then break end
	Model.Humanoid:TakeDamage(0.15)
	wait()
end
for _, Part in pairs(Model:GetChildren()) do
	if Part:IsA("BasePart") then
		coroutine.wrap(function()
			for i = Part.Transparency, 1, 0.01 do
				Part.Transparency = i
				Part.BrickColor = BrickColor.new("Royal purple")
				wait()
			end
			Part:Remove()
		end)()
	end
end
pcall(function() Model.IsPoisoned:Remove() end)]], "Poison", {"Model", Model})
			elseif ModelType == 2 then
				Model.IsPoisoned:Remove()
			elseif ModelType == 3 then
				pcall(function() Model.IsKnockedOut:Remove() end)
				local OldWalkSpeed = Model.Humanoid.WalkSpeed
				for i = 1, 100 do
					Model.Humanoid.WalkSpeed = OldWalkSpeed + 5
				end
			elseif ModelType == 4 then
				SendToServer([[for i = 1, 500 do
	if Model:FindFirstChild("Humanoid") == nil then return end
	if Model:FindFirstChild("IsUsingPills") ~= nil then return end
	if Model.Humanoid.Health <= 0 then return end
	Model.Humanoid.Health = math.min(Model.Humanoid.Health + 0.1, Model.Humanoid.MaxHealth)
	wait()
end]], "Metabolism", {"Model", Model})
			elseif ModelType == 5 then
				SendToServer([[local Down = Instance.new("Configuration", Model)
Down.Name = "IsKnockedOut"
local Victim = game:GetService("Players"):GetPlayerFromCharacter(Model)
if Victim ~= nil then
	if Victim:FindFirstChild("PlayerGui") ~= nil then
		local Gui = Instance.new("ScreenGui", Victim.PlayerGui)
		Gui.Name = "Knock-Out"
		local Frame = Instance.new("Frame", Gui)
		Frame.Name = "Black"
		Frame.Active = true
		Frame.Size = UDim2.new(2, 0, 2, 0)
		Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
		Frame.BackgroundColor3 = Color3.new(0, 0, 0)
		Frame.BackgroundTransparency = 1
		coroutine.wrap(function()
			for i = 1, 0, -0.05 do
				Frame.BackgroundTransparency = i
				wait()
			end
			Frame.BackgroundTransparency = 0
			while Down.Parent ~= nil do wait() end
			pcall(function() Model.Torso.Friction = 0 end)
			pcall(function() Model.Humanoid.PlatformStand = false end)
			for i = 0, 1, 0.01 do
				Frame.BackgroundTransparency = i
				wait()
			end
			Gui:Remove()
		end)()
	end
end
pcall(function() Model.Torso.Friction = 0.5 end)
pcall(function() Model.Humanoid.PlatformStand = true end)
pcall(function()
	Model.Humanoid.Changed:connect(function(Property)
		if Property == "PlatformStand" and Model.Humanoid.PlatformStand == false and Down.Parent ~= nil then
			pcall(function() Model.Humanoid.PlatformStand = true end)
		end
	end)
end)
wait(math.random(50000, 70000) / 1000)
Down:Remove()]], "Knock-Out", {"Model", Model})
			end
			wait(0.5)
			SetAngle(1, math.rad(90), Player.Character)
			if Model == Player.Character then
				for i = 0, 1, 0.1 do
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					wait()
				end
				ResetLimbCFrame(1, Player.Character)
			end
			SoundToServer("Stick", "http://www.roblox.com/Asset/?id=46153268", 4, 0.5, false, Player.Character.Torso)
			for i = 1, 0, -0.075 do
				pcall(function()
					Player.Character[ModelName]["Valve 1"].Weld.C0 = CFrame.new(0, -0.75 + (0.5 * i), 0)
					Player.Character[ModelName]["Valve 2"].Weld.C0 = CFrame.new(0, -1 + (0.5 * i), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName]["Valve 1"].Weld.C0 = CFrame.new(0, -0.75, 0)
				Player.Character[ModelName]["Valve 2"].Weld.C0 = CFrame.new(0, -1, 0)
			end)
			CanUse = true
		elseif ModelType == 6 or ModelType == 7 then
			CanUse = false
			ForceAngle(1, math.rad(90), Player.Character)
			wait(0.1)
			pcall(function() Player.Character[ModelName].Cap:Remove() end)
			wait(0.5)
			if ModelType == 6 then
				SendToServer([[Instance.new("Configuration", Model).Name = "IsUsingBuffout"
pcall(function() Model.Health.Disabled = true end)
local OldHealth = Model.Humanoid.Health
local OldMaxHealth = Model.Humanoid.MaxHealth
Model.Humanoid.MaxHealth = 10000
Model.Humanoid.Health = 10000 * (OldHealth / OldMaxHealth)
wait(math.random(10000, 25000) / 1000)
pcall(function() Model.Health.Disabled = false end)
pcall(function()
	Model.Humanoid.Health = OldHealth * (Model.Humanoid.Health / Model.Humanoid.MaxHealth)
	Model.Humanoid.MaxHealth = OldMaxHealth
end)
pcall(function() Model.IsUsingBuffout:Remove() end)]], "Buffout", {"Model", Model})
			elseif ModelType == 7 then
				SendToServer([[if Model:FindFirstChild("IsUsingPills") ~= nil then
	Model.IsUsingPills:Remove()
	wait(0.1)
end
Instance.new("Configuration", Model).Name = "IsUsingPills"
pcall(function() Model.Health.Disabled = true end)
local OldHealth = Model.Humanoid.Health
Model.Humanoid.Health = math.min(OldHealth + 50, Model.Humanoid.MaxHealth)
for i = Model.Humanoid.Health, OldHealth, -0.05 do
	if Model:FindFirstChild("Humanoid") == nil then return end
	if Model:FindFirstChild("IsUsingPills") == nil then break end
	if Model.Humanoid.Health <= 0 then return end
	if Model.Humanoid.Health <= OldHealth then break end
	Model.Humanoid.Health = Model.Humanoid.Health - 0.05
	wait()
end
pcall(function() Model.Health.Disabled = false end)
pcall(function() Model.Humanoid.Health = OldHealth end)
pcall(function() Model.IsUsingPills:Remove() end)]], "Painkillers", {"Model", Model})
			end
			CanUse = true
		else
			local Sounds = {
				"http://www.roblox.com/Asset/?id=10209902",
				"http://www.roblox.com/Asset/?id=10209869",
				"http://www.roblox.com/Asset/?id=10209845",
				"http://www.roblox.com/Asset/?id=10209834",
				"http://www.roblox.com/Asset/?id=10209813",
				"http://www.roblox.com/Asset/?id=10209810",
				"http://www.roblox.com/Asset/?id=10209636"
			}
			local Hint = Instance.new("Hint", Workspace)
			local function Check()
				if Button1Down == false or Selected == false then
					return false
				end
				if Player.Character == nil then
					return false
				end
				if Model:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Torso") == nil or Model:FindFirstChild("Humanoid") == nil or Player.Character:FindFirstChild("Humanoid") == nil then
					return false
				end
				if (Model.Torso.Position - Player.Character.Torso.Position).magnitude > 8 then
					return false
				end
				return true
			end
			for i = 0, 3, 0.015 do
				if Check() == false then break end
				Hint.Text = "Healing " ..(Model == Player.Character and "yourself" or Model.Name) .. string.rep(".", math.ceil(i))
				if math.random(1, 10) == 1 then
					SoundToServer("Heal", Sounds[math.random(1, #Sounds)], math.random(500, 1500) / 1000, math.random(250, 500) / 1000, false, Player.Character.Torso)
				end
				wait()
			end
			Hint:Remove()
			if Check() == false then return end
			local Health = Model.Humanoid.Health + math.random(85, 110)
			pcall(function()
				if Health > Model.Humanoid.MaxHealth then
					local MaxHealth = Model.Humanoid.MaxHealth + (Health - Model.Humanoid.MaxHealth)
					for i = 1, 100 do
						Model.Humanoid.MaxHealth = MaxHealth
					end
				end
			end)
			wait()
			pcall(function()
				for i = 1, 100 do
					Model.Humanoid.Health = Health
				end
			end)
			if Model:FindFirstChild("Right Arm") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Right Arm"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].RightArmColor)) end)
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Model
				Instance.new("Motor6D", Model.Torso).Name = "Right Shoulder"
				Model.Torso["Right Shoulder"].MaxVelocity = 0.1
				DisableLimb(1, Model)
				EnableLimb(1, Model)
			end
			if Model:FindFirstChild("Left Arm") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Left Arm"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].LeftArmColor)) end)
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Model
				Instance.new("Motor6D", Model.Torso).Name = "Left Shoulder"
				Model.Torso["Left Shoulder"].MaxVelocity = 0.1
				DisableLimb(2, Model)
				EnableLimb(2, Model)
			end
			if Model:FindFirstChild("Right Leg") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Right Leg"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].RightLegColor)) end)
				Limb.TopSurface = 0
				Limb.BottomSurface = 0
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Model
				Instance.new("Motor6D", Model.Torso).Name = "Right Hip"
				Model.Torso["Right Hip"].MaxVelocity = 0.1
				DisableLimb(3, Model)
				EnableLimb(3, Model)
			end
			if Model:FindFirstChild("Left Leg") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Left Leg"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].LeftLegColor)) end)
				Limb.TopSurface = 0
				Limb.BottomSurface = 0
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Model
				Instance.new("Motor6D", Model.Torso).Name = "Left Hip"
				Model.Torso["Left Hip"].MaxVelocity = 0.1
				DisableLimb(4, Model)
				EnableLimb(4, Model)
			end
		end
		Selected = true
		onDeselected(Mouse)
		RemoveParts(Player.Character, 1)
		script.Parent:Remove()
	end
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
			ForceAngle(1, math.rad(90), Player.Character)
			SetSpeed(1, 0.55, Player.Character)
			SetSpeed(2, 0.55, Player.Character)
			SetAngle(1, math.rad(175), Player.Character)
			SetAngle(2, math.rad(175), Player.Character)
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			wait(0.1)
			SetSpeed(1, 0.85, Player.Character)
			SetSpeed(2, 0.85, Player.Character)
			SetAngle(1, math.rad(10), Player.Character)
			SetAngle(2, math.rad(10), Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return (Player.Character[ModelName]:FindFirstChild("Needle") or Player.Character[ModelName].Handle).Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", Player.Character[ModelName]:FindFirstChild("Needle") and 10 or 2, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(20)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			wait(0.1)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.2, Player.Character)
			SetSpeed(2, 0.2, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			wait(0.2)
			CanUse = true
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
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	wait()
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	while CanUse == false do wait() end
	if Selected == true then return end
	CanUse = false
	SetSpeed(1, 0.15, Player.Character)
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	EnableLimb(1, Player.Character)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	Instance.new("IntValue", script).Name = "Magazine"
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