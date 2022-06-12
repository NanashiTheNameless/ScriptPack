--[[
Lightsaber
A compact plasma emitter with a self-destruct delay that makes it look like a sword.
Models:
 - 1, Single blade
 - 2, Single blade dual
 - 3, Dual blade
 - 4, Dual blade dual
Good colors:
 - Lime green
 - Really red
 - Royal purple
 - Really blue
 - Institutional white
 - New Yeller
 - Hot pink
 - Neon orange
--]]


if script == nil then return end
ModelName = "Lightsaber"
ModelType = 1
Color = BrickColor.new("Really blue")
Stance = tostring(ModelType / 2):match("%.") and 0 or 1
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6Alt")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Activated = false
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


loadstring(game:GetService("InsertService"):LoadAsset(65636834)["CFrameTween"].Value)()


function onPlasmaTouched(Source, Hit)
	if Activated == false then return end
	if Player.Character == nil or Player.Character:FindFirstChild("Humanoid") == nil or Player.Character.Humanoid.Health <= 0 then return end
	if Hit:IsDescendantOf(Player.Character) then return end
	if Hit.Name == "Lightsaber Effect" then return end
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
	if Humanoid ~= nil and Humanoid.Health > 0 then
		tagHumanoid(Humanoid)
		Humanoid:TakeDamage(2.5)
		coroutine.wrap(function() wait(0.1) untagHumanoid(Humanoid) end)()
	else
		local Dust = Instance.new("Part", Workspace)
		Dust.Name = "Lightsaber Effect"
		Dust.TopSurface = 0
		Dust.BottomSurface = 0
		Dust.BrickColor = Color
		Dust.CanCollide = false
		Dust.Locked = true
		Dust.Anchored = true
		Dust.FormFactor = "Custom"
		Dust.Size = Vector3.new(1, 1, 1)
		Dust.CFrame = Source.CFrame * CFrame.new(math.random(-1000, 1000) / 1000, math.random(-2000, 2000) / 1000, math.random(-1000, 1000) / 1000)
		local Mesh = Instance.new("SpecialMesh", Dust)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0, 0, 0)
		coroutine.wrap(function()
			local Size = math.random(500, 2000) / 1000
			for i = 0, 1, 0.1 do
				Mesh.Scale = Size * i * Vector3.new(1, 1, 1)
				Dust.Transparency = i
				wait()
			end
			Dust:Remove()
		end)()
	end
end


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	elseif Format == 3 or Format == 5 then
		Parts.Name = Parts.Name.. " (Dual)"
	end
	Parts.Parent = Parent
	local Handle = Instance.new("Part", Parts)
	Handle.Name = "Handle"
	Handle.BrickColor = BrickColor.new("Medium stone grey")
	Handle.BottomSurface = 0
	Handle.TopSurface = 0
	Handle.FormFactor = "Custom"
	Handle.Size = Vector3.new(0.35, 1.5, 0.35)
	Instance.new("CylinderMesh", Handle)
	local Weld = Instance.new("Weld", Handle)
	Weld.Part0 = Weld.Parent
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
		Weld.C0 = CFrame.new(-0.7, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
	elseif Format == 2 or Format == 4 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	elseif Format == 3 or Format == 5 then
		Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
		Weld.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	end

	local Part = Instance.new("Part", Parts)
	Part.Name = "Plasma"
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.BottomSurface = 0
	Part.TopSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 3, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0, 1)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, -2.25, 0)
	Weld.C1 = CFrame.new(0, -2.25, 0)

	Part.Touched:connect(function(Hit) onPlasmaTouched(Part, Hit) end)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Plasma Top"
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.BottomSurface = 0
	Part.TopSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 1, 0.2)
	Instance.new("SpecialMesh", Part).MeshType = "Sphere"
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, -3.75, 0)
	Weld.C1 = CFrame.new(0, -3.75, 0)

	if Format > 3 then
		local Part = Instance.new("Part", Parts)
		Part.Name = "Plasma 2"
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.BottomSurface = 0
		Part.TopSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 3, 0.2)
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0, 1)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Handle
		Weld.C0 = CFrame.new(0, 2.25, 0)
		Weld.C1 = CFrame.new(0, 2.25, 0)
		
		Part.Touched:connect(function(Hit) onPlasmaTouched(Part, Hit) end)

		local Part = Instance.new("Part", Parts)
		Part.Name = "Plasma 2 Top"
		Part.BrickColor = BrickColor.new("Institutional white")
		Part.BottomSurface = 0
		Part.TopSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 1, 0.2)
		Instance.new("SpecialMesh", Part).MeshType = "Sphere"
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Handle
		Weld.C0 = CFrame.new(0, 3.75, 0)
		Weld.C1 = CFrame.new(0, 3.75, 0)
	end

	local Part = Instance.new("Part", Parts)
	Part.Name = "Grip 1"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.BottomSurface = 0
	Part.TopSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.36, 0.2, 0.36)
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.4, 0)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Grip 2"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.BottomSurface = 0
	Part.TopSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.36, 0.2, 0.36)
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, -0.4, 0)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Button"
	Part.BrickColor = BrickColor.new("Dark red")
	Part.BottomSurface = 0
	Part.TopSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1 / 0.2, 1, 1)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.-0.3, 0.1)

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
		if Part.Name:match("Plasma") then
			for i = 0.01, 0.14, 0.01 do
				local Clone = Part:Clone()
				Clone.Name = Clone.Name.. " Glow " ..i
				Clone.Transparency = 0.925
				Clone.BrickColor = Color
				Clone.Size = Clone.Size + Vector3.new(i, Part.Name:match("Top") and i or 0, i)
				pcall(function() Clone.Weld:Remove() end)
				Clone.Parent = Parts
				local Weld = Instance.new("Weld", Clone)
				Weld.Part0 = Weld.Parent
				Weld.Part1 = Part
				Part.Mesh.Changed:connect(function(Property)
					Clone.Mesh[Property] = Part.Mesh[Property]
				end)
			end
		end
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


function Stand()
	if Stance == 0 then
		if ModelType == 2 or ModelType == 4 then
			PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
				CFrame.new(),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-0.7, 0.4, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(20)),
				0.1, true)
		else
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(0, 0.4, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(50)),
				0.1, true)
		end
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.new(),
			0.1, true)
		PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(20), 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-20), 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(20)),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C1",
			CFrame.new(0, 0.5, 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C1",
			CFrame.new(0, 0.5, 0),
			0.1, false)
	elseif Stance == 1 then
		if ModelType == 2 or ModelType == 4 then
			PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
				CFrame.new(),
				0.1, true)
		end
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.fromEulerAnglesXYZ(0, math.rad(20), 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(40), 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-40), 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.3, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(80), 0, math.rad(40)),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C1",
			CFrame.new(0, 0.5, 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(-40), math.rad(-30)),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C1",
			CFrame.new(0, 0.5, 0),
			0.1, false)
	elseif Stance == 2 then
		if ModelType == 2 or ModelType == 4 then
			PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
				CFrame.new(),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.2, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90)),
				0.1, true)
		else
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.2, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-40)),
				0.1, true)
		end
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.new(),
			0.1, true)
		PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(1), 0, math.rad(90)),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C1",
			CFrame.new(0, 0.5, 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C1",
			CFrame.new(0, 0.5, 0),
			0.1, false)
	end
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true and Activated == true then
		CanUse = false
		SetSpeed(1, 0.5, Player.Character)
		while Button1Down == true and Selected == true do
			SoundToServer("Slash", "http://www.roblox.com/Asset/?id=11998777", math.random(800, 1200) / 1000, 1, false, Player.Character[ModelName].Handle)
			local Move = math.random(1, 2)
			if Move == 1 then
				PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
					CFrame.fromEulerAnglesXYZ(0, math.rad(70), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
					CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(100), 0, math.rad(-20)),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1, 0.4, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(20), 0, math.rad(-20)),
					0.2, false)

				if ModelType == 2 or ModelType == 4 then
					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
						0.2, true)
				end

				PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
					CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
					CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(150)),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1, 0.4, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(40), 0, math.rad(-30)),
					0.2, false)

				if Button1Down == true and (ModelType == 2 or ModelType == 4) then
					SoundToServer("Slash", "http://www.roblox.com/Asset/?id=11998777", math.random(1000, 1500) / 1000, 1, false, Player.Character[ModelName].Handle)
					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
						CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
						CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
						CFrame.new(0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(110), 0, math.rad(80)),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
						CFrame.new(-1, 0.375, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(60), 0, math.rad(50)),
						0.2, false)
					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.new(),
						0.2, true)
					wait()
				end
			elseif Move == 2 then
				PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
					CFrame.new(),
					0.2, true)
				PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
					CFrame.fromEulerAnglesXYZ(0, math.rad(20), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(-20), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(1.5, 0.6, 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C1",
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-160), math.rad(20), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1, 0.4, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, math.rad(-30)),
					0.2, false)

				if ModelType == 2 or ModelType == 4 then
					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.fromEulerAnglesXYZ(0, math.rad(-20), 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
						CFrame.new(-1.5, 0.4, 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C1",
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(20), 0),
						0.2, true)
				else
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
						CFrame.new(-1.3, 0.4, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(-80), 0, math.rad(-30)),
						0.2, true)
				end

				PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
					CFrame.fromEulerAnglesXYZ(0, math.rad(25), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(-25), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C1",
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(20), 0),
					0.2, false)

				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C1",
					CFrame.new(0, 0.5, 0),
					0.5, true)
				wait()

				if Button1Down == true and (ModelType == 2 or ModelType == 4) then
					SoundToServer("Slash", "http://www.roblox.com/Asset/?id=11998777", math.random(1000, 1500) / 1000, 1, false, Player.Character[ModelName].Handle)
					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.fromEulerAnglesXYZ(0, math.rad(120), 0),
						0.25, true)
					PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
						CFrame.fromEulerAnglesXYZ(0, math.rad(-40), 0),
						0.25, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
						CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(40), math.rad(-20)),
						0.25, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
						CFrame.new(0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(30), 0, math.rad(30)),
						0.25, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C1",
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-50), 0),
						0.25, false)

					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.fromEulerAnglesXYZ(0, math.rad(170), 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
						CFrame.fromEulerAnglesXYZ(0, math.rad(-80), 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
						CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(30), math.rad(80), math.rad(-30)),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C1",
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-160), math.rad(-20), 0),
						0.2, false)

					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.new(),
						0.4, true)
					PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
						CFrame.fromEulerAnglesXYZ(0, math.rad(-30), 0),
						0.4, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
						CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(30), math.rad(-10)),
						0.4, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C1",
						CFrame.new(0, 0.5, 0),
						0.4, true)
					wait()
				end
			elseif Move == 3 then
				
			end
		end
		Stand()
		CanUse = true
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
		elseif Key == "y" then
			CanUse = false
			Stance = Stance + 1
			if Stance > 2 then
				Stance = 0
			end
			Stand()
			CanUse = true
		elseif Key == "e" then
			CanUse = false
			Activated = not Activated
			if Activated == true then
				SoundToServer("Start", "http://www.roblox.com/Asset/?id=11998796", 1, 0.8, false, Player.Character[ModelName].Handle)
				SoundToServer("Start", "http://www.roblox.com/Asset/?id=11998777", 0.6, 1, false, Player.Character[ModelName].Handle)
				SoundToServer("Start", "http://www.roblox.com/Asset/?id=2974000", 1.8, 0.3, false, Player.Character[ModelName].Handle)
			else
				SoundToServer("Buzz", "http://www.roblox.com/Asset/?id=2974000", -1.3, 1, true, Player.Character[ModelName].Handle)
				SendToServer([[for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Buzz" then
		coroutine.wrap(function()
			wait(0.4)
			for i = Part.Volume, 0, -0.1 do
				Part.Volume = i
				wait()
			end
			wait(1)
			Part:Remove()
			Part:Stop()
		end)()
	end
end]], "Sound Stop", {"Source", Player.Character[ModelName].Handle})
			end
			for i = Activated == true and 1 or 0, Activated == true and 0 or 1, 0.05 * (Activated == true and -1 or 1) do
				pcall(function()
					Player.Character[ModelName].Plasma.Weld.C1 = CFrame.new(0, Player.Character[ModelName].Plasma.Weld.C0.y * i, 0)
					Player.Character[ModelName]["Plasma Top"].Weld.C1 = CFrame.new(0, Player.Character[ModelName].Plasma.Weld.C1.y - ((Player.Character[ModelName].Plasma.Size.y / 2) * i), 0)
					Player.Character[ModelName].Plasma.Mesh.Scale = Vector3.new(1, 1 - i, 1)
					Player.Character[ModelName]["Plasma Top"].Mesh.Scale = Vector3.new(1, 1 - i, 1)
					Player.Character[ModelName.. " (Dual)"].Plasma.Weld.C1 = CFrame.new(0, Player.Character[ModelName].Plasma.Weld.C0.y * i, 0)
					Player.Character[ModelName.. " (Dual)"]["Plasma Top"].Weld.C1 = CFrame.new(0, Player.Character[ModelName].Plasma.Weld.C1.y - ((Player.Character[ModelName].Plasma.Size.y / 2) * i), 0)
					Player.Character[ModelName.. " (Dual)"].Plasma.Mesh.Scale = Vector3.new(1, 1 - i, 1)
					Player.Character[ModelName.. " (Dual)"]["Plasma Top"].Mesh.Scale = Vector3.new(1, 1 - i, 1)
				end)
				pcall(function()
					Player.Character[ModelName]["Plasma 2"].Weld.C1 = CFrame.new(0, Player.Character[ModelName]["Plasma 2"].Weld.C0.y * i, 0)
					Player.Character[ModelName]["Plasma 2 Top"].Weld.C1 = CFrame.new(0, Player.Character[ModelName]["Plasma 2"].Weld.C1.y + ((Player.Character[ModelName]["Plasma 2"].Size.y / 2) * i), 0)
					Player.Character[ModelName]["Plasma 2"].Mesh.Scale = Vector3.new(1, 1 - i, 1)
					Player.Character[ModelName]["Plasma 2 Top"].Mesh.Scale = Vector3.new(1, 1 - i, 1)
					Player.Character[ModelName.. " (Dual)"]["Plasma 2"].Weld.C1 = CFrame.new(0, Player.Character[ModelName]["Plasma 2"].Weld.C0.y * i, 0)
					Player.Character[ModelName.. " (Dual)"]["Plasma 2 Top"].Weld.C1 = CFrame.new(0, Player.Character[ModelName]["Plasma 2"].Weld.C1.y + ((Player.Character[ModelName]["Plasma 2"].Size.y / 2) * i), 0)
					Player.Character[ModelName.. " (Dual)"]["Plasma 2"].Mesh.Scale = Vector3.new(1, 1 - i, 1)
					Player.Character[ModelName.. " (Dual)"]["Plasma 2 Top"].Mesh.Scale = Vector3.new(1, 1 - i, 1)
				end)
				wait()
			end
			if Activated == true then
				pcall(function()
					Player.Character[ModelName].Plasma.Weld.C1 = CFrame.new()
					Player.Character[ModelName]["Plasma Top"].Weld.C1 = CFrame.new()
					Player.Character[ModelName].Plasma.Mesh.Scale = Vector3.new(1, 1, 1)
					Player.Character[ModelName]["Plasma Top"].Mesh.Scale = Vector3.new(1, 1, 1)
					Player.Character[ModelName.. " (Dual)"].Plasma.Weld.C1 = CFrame.new()
					Player.Character[ModelName.. " (Dual)"]["Plasma Top"].Weld.C1 = CFrame.new()
					Player.Character[ModelName.. " (Dual)"].Plasma.Mesh.Scale = Vector3.new(1, 1, 1)
					Player.Character[ModelName.. " (Dual)"]["Plasma Top"].Mesh.Scale = Vector3.new(1, 1, 1)
				end)
				pcall(function()
					Player.Character[ModelName]["Plasma 2"].Weld.C1 = CFrame.new()
					Player.Character[ModelName]["Plasma 2 Top"].Weld.C1 = CFrame.new()
					Player.Character[ModelName]["Plasma 2"].Mesh.Scale = Vector3.new(1, 1, 1)
					Player.Character[ModelName]["Plasma 2 Top"].Mesh.Scale = Vector3.new(1, 1, 1)
					Player.Character[ModelName.. " (Dual)"]["Plasma 2"].Weld.C1 = CFrame.new()
					Player.Character[ModelName.. " (Dual)"]["Plasma 2 Top"].Weld.C1 = CFrame.new()
					Player.Character[ModelName.. " (Dual)"]["Plasma 2"].Mesh.Scale = Vector3.new(1, 1, 1)
					Player.Character[ModelName.. " (Dual)"]["Plasma 2 Top"].Mesh.Scale = Vector3.new(1, 1, 1)
				end)
				SoundToServer("Buzz", "http://www.roblox.com/Asset/?id=11998796", 0.5, 0.4, true, Player.Character[ModelName].Handle)
				coroutine.wrap(function()
					wait(0.9)
					if Activated == false then
						return
					end
					SoundToServer("Buzz", "http://www.roblox.com/Asset/?id=11998796", 0.5, 0.4, true, Player.Character[ModelName].Handle)
				end)()
			end
			CanUse = true
		end
		if Activated == true then
			if Key == "r" then
				CanUse = false
				KeyRDown = true
				PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
					CFrame.fromEulerAnglesXYZ(0, math.rad(50), 0),
					0.15, true)
				PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
					CFrame.fromEulerAnglesXYZ(0, math.rad(80), 0),
					0.15, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-80), 0),
					0.15, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-30)),
					0.15, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1.3, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(60), 0, math.rad(-20)),
					0.15, false)

				PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
					CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0),
					0.2, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(150)),
					0.2, true)
				if ModelType == 2 or ModelType == 4 then
					PropertyCFrameTween(Player.Character[ModelName.. " (Dual)"].Handle.Weld, "C1",
						CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0),
						0.2, true)
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
						CFrame.new(-0.9, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-30)),
						0.2, true)
				else
					PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
						CFrame.new(-1, 0.4, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(80), 0, math.rad(-30)),
						0.2, true)
				end

				local Stop = false
				for i = 80, -math.huge, -25 do
					if KeyRDown == false or Selected == false then
						Stop = true
					end
					if Stop == true and i % 360 < 25 then
						break
					end
					SoundToServer("Slash", "http://www.roblox.com/Asset/?id=11998777", 0.9, 0.3, false, Player.Character[ModelName].Handle)
					Player.Character.AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
					wait()
				end
				Stand()
				CanUse = true
			end
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "r" then
		KeyRDown = false
	end
end


function RemoveParts(Parent, Format)
	if Format == 1 then
		pcall(function() Parent[ModelName.. " (Holstered)"]:Remove() end)
	elseif Format == 2 then
		pcall(function() Parent[ModelName]:Remove() end)
	elseif Format == 3 or Format == 5 then
		pcall(function() Parent[ModelName.. " (Dual)"]:Remove() end)
	end
end


function onSelected(Mouse)
	if script.Parent.Active == false then return end
	if Selected == true then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	if script.Parent.Active == false then return end
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.2)
	RemoveParts(Player.Character, 1)
	if ModelType == 1 or ModelType == 2 then
		CreateParts(Player.Character, 2)
	elseif ModelType == 3 or ModelType == 4 then
		CreateParts(Player.Character, 4)
	end
	if ModelType == 2 then
		CreateParts(Player.Character, 3)
	elseif ModelType == 4 then
		CreateParts(Player.Character, 5)
	end
	Player.Character.Torso["Neck"].C0 = CFrame.new(0, 1, 0)
	Player.Character.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0)
	Player.Character.Torso:FindFirstChild("Left Shoulder 2").C0 = CFrame.new(-1.5, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Left Shoulder 2").C1 = CFrame.new(0, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Right Shoulder 2").C0 = CFrame.new(1.5, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Right Shoulder 2").C1 = CFrame.new(0, 0.5, 0)
	local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
	AimGyroAdd.Name = "AimGyroAdd"
	Stand()
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	Mouse.KeyUp:connect(function(Key) onKeyUp(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	while CanUse == false do wait() end
	if Selected == true then return end
	if Activated == true then
		Selected = true
		onKeyDown("e", Mouse)
		Selected = false
	end
	CanUse = false
	Player.Character.AimGyroAdd:Remove()
	PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
		CFrame.new(),
		0.2, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
		CFrame.new(0, 1, 0),
		0.2, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0),
		0.2, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1.5, 0.5, 0),
		0.2, false)
	RemoveParts(Player.Character, 2)
	RemoveParts(Player.Character, 3)
	RemoveParts(Player.Character, 5)
	CreateParts(Player.Character, 1)
	Player.Character.Torso["Neck"].C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
	Player.Character.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	SetAngle(2, 0, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(2, Player.Character)
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
