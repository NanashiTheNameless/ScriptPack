--[[
Fabrique National Five seveN
Manufactured by Fabrique Nationale (FN), based in Belgium. Fires 10 9mm rounds.
--]]


if script == nil then return end


ModelName = "Five seveN"
AmmoType = "9mm"
MagazineCapacity = 10
MagazineCapacityAdd = 1
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6Alt")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Silenced = false
Dual = script:FindFirstChild("Dual") ~= nil
BulletData = [[Velocity_Transfer = 0.4

Damage_Head = 35
Damage_Torso = 15
Damage_Limb = 10
Damage_Other = 8

Dust_Size_Min = 2
Dust_Size_Max = 4
Dust_Add = 0.3

Spark_Min = 3
Spark_Max = 5
Spark_Size_Min = 3
Spark_Size_Max = 6
Spark_Add = 0.5

Chunk_Min = 2
Chunk_Max = 5
]] ..game:GetService("InsertService"):LoadAsset(60263276)["BulletData"].Value
FirstPerson = [[FirstPersonOffset = CFrame.new(0, -0.5, 0)]] ..game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value
AmmoCounter = game:GetService("InsertService"):LoadAsset(66610412)["AmmoCounter"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
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
	elseif Format == 3 then
		Parts.Name = Parts.Name.. " (Holstered Dual)"
	elseif Format == 4 then
		Parts.Name = Parts.Name.. " (Dual)"
	end
	Parts.Parent = Parent

	local MasterPart = Instance.new("Part")
	MasterPart.Name = "Handle"
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(1, 1, 1)
	MasterPart.BrickColor = BrickColor.new("Really black")
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.Parent = Parts
	local Mesh = Instance.new("BlockMesh", MasterPart)
	Mesh.Scale = Vector3.new(0.3, 0.9, 0.2)
	Mesh.Offset = Vector3.new(0, 0, 0.1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
		Weld.C0 = CFrame.new(-0.65, -0.3, 0) * CFrame.fromEulerAnglesXYZ(math.rad(30), 0, 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.new(0, 1.2, 0.7)
	elseif Format == 3 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
		Weld.C0 = CFrame.new(-0.95, -0.3, 0) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
	elseif Format == 4 then
		Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
		Weld.C0 = CFrame.new(0, 1.2, 0.7)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Underbarrel"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.5, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(1, 1, 0.15 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.7, -0.075)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "ShellOut"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Transparency = 1
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0.5, 0, 0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(45), 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Grip"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.29, 0.5, 0.9)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.05, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Magazine"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.275, 0.475, 0.95 )
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.05, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Trigger Housing 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.1 / 0.2, 1, 0.025 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.2, -0.4)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Trigger Housing 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.1 / 0.2, 1, 0.025 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.02, -0.49) * CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Trigger Housing 3"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.1, 0.025, 0.1) / 0.2
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.426, -0.22)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Trigger"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.1, 0.025, 0.15) / 0.2
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.175, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Barrel"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.6, 0.2)
	Part.BrickColor = BrickColor.new("Silver")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Head"
	Mesh.Scale = Vector3.new(0.5, 1, 0.5)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.67, 0.075)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Muzzle"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.4, 0.2, 0.4)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.97, 0.075)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Slide 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.9, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, 0.1)
	Weld.C1 = CFrame.new(0, (function()
		if Format == 1 or Format == 2 then
			return script.Magazine.Value > 0 and 0 or 0.5
		elseif Format == 3 or Format == 4 then
			return script.Dual.Main.Magazine.Value > 0 and 0 or 0.5
		end
	end)(), 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Slide 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.5, 0.2)
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.7, 0.1)
	if Format == 1 or Format == 2 then
		Weld.C1 = CFrame.new(0, script.Magazine.Value > 0 and 0 or 0.5, 0)
	elseif Format == 3 or Format == 4 then
		Weld.C1 = CFrame.new(0, script.Dual.Main.Magazine.Value > 0 and 0 or 0.5, 0)
	end
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Silencer"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.4, 1, 0.4)
	Part.BrickColor = BrickColor.new("Really black")
	Part.Transparency = Silenced and 0 or 1
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.475, 0.075)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Transparency = 1
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.7, 0.075)
	Weld.Parent = Part
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 2
	Fire.Heat = -7.5
	Fire.Color = Color3.new(1, 0.6, 0.2)
	Fire.SecondaryColor = Color3.new(0.6, 0.1, 0.05)
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 15
	Smoke.RiseVelocity = -10
	Smoke.Color = Color3.new(0.7, 0.7, 0.7)
	Smoke.Opacity = 0.1

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
	elseif Format == 3 then
		pcall(function() Parent[ModelName.. " (Holstered Dual)"]:Remove() end)
	elseif Format == 4 then
		pcall(function() Parent[ModelName.. " (Dual)"]:Remove() end)
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
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.25, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=2920959", Silenced and 8 or math.random(900, 1100) / 1000, Silenced and 0.5 or 1, false, Player.Character[ModelName].Handle)
		script.Magazine.Value = script.Magazine.Value - 1
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = not Silenced
				Player.Character[ModelName].Source.Smoke.Enabled = not Silenced
			end)
			wait(0.1)
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = false
				Player.Character[ModelName].Source.Smoke.Enabled = false
			end)
		end)()
		pcall(function() 
			local Shell = Instance.new("Part", Workspace)
			Shell.Name = "Shell"
			Shell.TopSurface = 0
			Shell.BottomSurface = 0
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("New Yeller")
			Shell.Size = Vector3.new(0.2, 0.3, 0.2)
			Shell.CFrame = Player.Character[ModelName].ShellOut.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			Shell.Velocity = (Player.Character[ModelName].ShellOut.CFrame.lookVector * 50) + Vector3.new(0, 10, 0)
			Shell:BreakJoints()
			local Mesh = Instance.new("CylinderMesh")
			Mesh.Scale = Vector3.new(0.5, 1, 0.5)
			Mesh.Parent = Shell
			game:GetService("Debris"):AddItem(Shell, 10)
		end)
		local Bullet = Instance.new("Part", Workspace)
		Bullet.Name = "Bullet"
		Bullet.TopSurface = 0
		Bullet.BottomSurface = 0
		Bullet.BrickColor = BrickColor.new("Really black")
		Bullet.Locked = true
		Bullet.FormFactor = "Custom"
		Bullet.Size = Vector3.new(0.5, 0.5, 0.5)
		Bullet.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, -1.5, 0)
		Bullet.Elasticity = 0
		Bullet.Friction = 0
		local Mesh = Instance.new("SpecialMesh", Bullet)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.25, 0.25, 0.25)
		tagHumanoid(Bullet)
		local BodyVelocity = Instance.new("BodyVelocity", Bullet)
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 250) + (Vector3.new(math.random(-4000, 4000) / 1000, math.random(-4000, 4000) / 1000, math.random(-4000, 4000) / 1000) * (Silenced and 3 or 1))
		game:GetService("Debris"):AddItem(Bullet, 5)
		TouchedToServer(BulletData, Bullet)
		CameraPunch(math.rad(math.random(0, 2000) / 1000), math.rad(math.random(-2000, 2000) / 1000))
		coroutine.wrap(function()
			for i = 0, 10, 5 do
				pcall(function()
					if Dual == false then Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(i), math.rad(-90)) end
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					Player.Character[ModelName]["Slide 1"].Weld.C1 = CFrame.new(0, i / 20, 0)
					Player.Character[ModelName]["Slide 2"].Weld.C1 = CFrame.new(0, i / 20, 0)
				end)
				wait()
			end
			for i = 10, 0, -5 do
				pcall(function()
					if Dual == false then Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(i), math.rad(-90)) end
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					if script.Magazine.Value > 0 then
						Player.Character[ModelName]["Slide 1"].Weld.C1 = CFrame.new(0, i / 20, 0)
						Player.Character[ModelName]["Slide 2"].Weld.C1 = CFrame.new(0, i / 20, 0)
					end
				end)
				wait()
			end
			pcall(function()
				if Dual == false then Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), 0, math.rad(-90)) end
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
				if script.Magazine.Value > 0 then
					Player.Character[ModelName]["Slide 1"].Weld.C1 = CFrame.new()
					Player.Character[ModelName]["Slide 2"].Weld.C1 = CFrame.new()
				end
			end)
		end)()
		wait(0.075)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	coroutine.wrap(function()
		wait(0.075)
		Button1Down = false
	end)()
	if Dual == true and Button1Down == true and CheckPlayer() == true then
		while CanUse == false do wait() end
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.25, false, Player.Character[ModelName.. " (Dual)"].Handle)
		if script.Dual.Main.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=2920959", Silenced and 8 or math.random(900, 1100) / 1000, Silenced and 0.5 or 1, false, Player.Character[ModelName.. " (Dual)"].Handle)
		script.Dual.Main.Magazine.Value = script.Dual.Main.Magazine.Value - 1
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName.. " (Dual)"].Source.Fire.Enabled = not Silenced
				Player.Character[ModelName.. " (Dual)"].Source.Smoke.Enabled = not Silenced
			end)
			wait(0.1)
			pcall(function()
				Player.Character[ModelName.. " (Dual)"].Source.Fire.Enabled = false
				Player.Character[ModelName.. " (Dual)"].Source.Smoke.Enabled = false
			end)
		end)()
		pcall(function() 
			local Shell = Instance.new("Part", Workspace)
			Shell.Name = "Shell"
			Shell.TopSurface = 0
			Shell.BottomSurface = 0
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("New Yeller")
			Shell.Size = Vector3.new(0.2, 0.3, 0.2)
			Shell.CFrame = Player.Character[ModelName.. " (Dual)"].ShellOut.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			Shell.Velocity = (Player.Character[ModelName.. " (Dual)"].ShellOut.CFrame.lookVector * 50) + Vector3.new(0, 10, 0)
			Shell:BreakJoints()
			local Mesh = Instance.new("CylinderMesh")
			Mesh.Scale = Vector3.new(0.5, 1, 0.5)
			Mesh.Parent = Shell
			game:GetService("Debris"):AddItem(Shell, 10)
		end)
		local Bullet = Instance.new("Part", Workspace)
		Bullet.Name = "Bullet"
		Bullet.TopSurface = 0
		Bullet.BottomSurface = 0
		Bullet.BrickColor = BrickColor.new("Really black")
		Bullet.Locked = true
		Bullet.FormFactor = "Custom"
		Bullet.Size = Vector3.new(0.5, 0.5, 0.5)
		Bullet.CFrame = Player.Character[ModelName.. " (Dual)"].Source.CFrame * CFrame.new(0, -1.5, 0)
		Bullet.Elasticity = 0
		Bullet.Friction = 0
		local Mesh = Instance.new("SpecialMesh", Bullet)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.25, 0.25, 0.25)
		tagHumanoid(Bullet)
		local BodyVelocity = Instance.new("BodyVelocity", Bullet)
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName.. " (Dual)"].Source.Position).unit * 250) + (Vector3.new(math.random(-4000, 4000) / 1000, math.random(-4000, 4000) / 1000, math.random(-4000, 4000) / 1000) * (Silenced and 3 or 1))
		game:GetService("Debris"):AddItem(Bullet, 5)
		TouchedToServer(BulletData, Bullet)
		CameraPunch(math.rad(math.random(0, 2000) / 1000), math.rad(math.random(-2000, 2000) / 1000))
		coroutine.wrap(function()
			for i = 0, 10, 5 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					Player.Character[ModelName.. " (Dual)"]["Slide 1"].Weld.C1 = CFrame.new(0, i / 20, 0)
					Player.Character[ModelName.. " (Dual)"]["Slide 2"].Weld.C1 = CFrame.new(0, i / 20, 0)
				end)
				wait()
			end
			for i = 10, 0, -5 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					if script.Dual.Main.Magazine.Value > 0 then
						Player.Character[ModelName.. " (Dual)"]["Slide 1"].Weld.C1 = CFrame.new(0, i / 20, 0)
						Player.Character[ModelName.. " (Dual)"]["Slide 2"].Weld.C1 = CFrame.new(0, i / 20, 0)
					end
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(5), 0)
				if script.Dual.Main.Magazine.Value > 0 then
					Player.Character[ModelName.. " (Dual)"]["Slide 1"].Weld.C1 = CFrame.new()
					Player.Character[ModelName.. " (Dual)"]["Slide 2"].Weld.C1 = CFrame.new()
				end
			end)
		end)()
		wait(0.075)
		CanUse = true
	end
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
			if Dual == true then RemoveParts(Player.Character, 3) end
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		elseif Key == "r" then
			if Player.Backpack.Ammo[AmmoType].Value <= 0 then return end
			if Dual == true then
				if script.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd and script.Dual.Main.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd then return end
			else
				if script.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd then return end
			end
			CanUse = false
			local Loaded = script.Magazine.Value > 0
			local LoadedDual = true
			pcall(function() LoadedDual = script.Dual.Main.Magazine.Value > 0 end)
			local Add = math.min(script.Magazine.Value, MagazineCapacityAdd)
			local AddDual = nil
			pcall(function() AddDual = math.min(script.Dual.Main.Magazine.Value, MagazineCapacityAdd) end)
			SoundToServer("Reload", "http://www.roblox.com/Asset/?id=2691591", 2.6, 1, false, Player.Character[ModelName].Handle)
			if Dual == true then
				for i = 0, 25, 7.5 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(3), 0)
					wait()
				end
			else
				for i = 0, 25, 5 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55 + (i / 50), 0.75 - (i / 50), 0.35 + (i / 22.5)) * CFrame.fromEulerAnglesXYZ(math.rad(315 - (i * 2)), math.rad(-i * 3.5), math.rad(-90))
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(-2), 0)
					wait()
				end
			end
			Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Magazine.Value - Add
			script.Magazine.Value = Add
			pcall(function()
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Dual.Main.Magazine.Value - AddDual
				script.Dual.Main.Magazine.Value = AddDual
			end)
			pcall(function()
				local Clone = Player.Character[ModelName].Magazine:Clone()
				Clone.CanCollide = true
				Clone.Velocity = (Clone.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)).lookVector * 25
				Clone.Parent = Workspace
				game:GetService("Debris"):AddItem(Clone, 15)
				Player.Character[ModelName].Magazine.Transparency = 1
				if Dual == true then
					local Clone = Player.Character[ModelName.. " (Dual)"].Magazine:Clone()
					Clone.CanCollide = true
					Clone.Velocity = (Clone.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)).lookVector * 25
					Clone.Parent = Workspace
					game:GetService("Debris"):AddItem(Clone, 15)
					Player.Character[ModelName.. " (Dual)"].Magazine.Transparency = 1
				end
			end)
			if Dual == true then
				for i = 125, 0, -15 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(5), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(-2), 0)
					wait()
				end
				pcall(function()
					Player.Character[ModelName].Magazine.Transparency = 0
					Player.Character[ModelName.. " (Dual)"].Magazine.Transparency = 0
				end)
			else
				wait(0.15)
				pcall(function()
					local Magazine = Player.Character[ModelName].Magazine:Clone()
					Magazine.Name = "New Magazine"
					Magazine.Transparency = 0
					Magazine.Parent = Player.Character[ModelName]
					local Weld = Instance.new("Weld", Magazine)
					Weld.Part0 = Weld.Parent
					Weld.Part1 = Player.Character["Left Arm"]
					Weld.C0 = CFrame.new(0, 1.1, 0)
					Weld.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				end)
				for i = 25, 0, -5 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55 + (i / 50), 0.75 - (i / 50), 0.35 + (i / 22.5)) * CFrame.fromEulerAnglesXYZ(math.rad(315 - (i * 2)), math.rad(-i * 3.5), math.rad(-90))
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1 + ((25 - i) / 30), 0.5, 0.6 + ((25 - i) / 25)) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), math.rad((25 * 2) - (i * 2)))
					end)
					CameraPunch(math.rad(1), 0)
					wait()
				end
				pcall(function()
					Player.Character[ModelName].Magazine.Transparency = 0
					Player.Character[ModelName]["New Magazine"]:Remove()
				end)
			end
			if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
				script.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
				Player.Backpack.Ammo[AmmoType].Value = 0
			else
				script.Magazine.Value = script.Magazine.Value + MagazineCapacity
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
			end
			if Dual == true then
				if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
					script.Dual.Main.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
					Player.Backpack.Ammo[AmmoType].Value = 0
				else
					script.Dual.Main.Magazine.Value = script.Dual.Main.Magazine.Value + MagazineCapacity
					Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
				end
			end
			if Dual == true then
				for i = 0, 125, 15 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(5), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(2), 0)
					wait()
				end
				for i = 25, 0, -7.5 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(-3), 0)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(5), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
				end)
			else
				for i = 25, 0, -5 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1 + (i / 30), 0.5, 0.6 + (i / 25)) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), math.rad((25 * 2) - ((25 - i) * 2)))
					end)
					CameraPunch(math.rad(0.9), 0)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), 0, math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
				end)
			end
			if Dual == true then
				if Loaded == false or LoadedDual == false then
					for i = 0, 1, 0.15 do
						pcall(function()
							if LoadedDual == false then Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (10 * i)), math.rad(5), 0) end
							if Loaded == false then Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (10 * i)), math.rad(-5), 0) end
						end)
						CameraPunch(math.rad(0.5), 0)
						wait()
					end
					pcall(function()
						Player.Character[ModelName]["Slide 1"].Weld.C1 = CFrame.new()
						Player.Character[ModelName]["Slide 2"].Weld.C1 = CFrame.new()
						Player.Character[ModelName.. " (Dual)"]["Slide 1"].Weld.C1 = CFrame.new()
						Player.Character[ModelName.. " (Dual)"]["Slide 2"].Weld.C1 = CFrame.new()
					end)
					for i = 1, 0, -0.15 do
						pcall(function()
							if LoadedDual == false then Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (10 * i)), math.rad(5), 0) end
							if Loaded == false then Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (10 * i)), math.rad(-5), 0) end
						end)
						CameraPunch(math.rad(-0.5), 0)
						wait()
					end
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(5), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					end)
				end
			else
				if Loaded == false then
					wait(0.12)
					for i = 0, 5, 1 do
						pcall(function()
							Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90))
						end)
						CameraPunch(math.rad(0.5), math.rad(-0.5))
						wait()
					end
					pcall(function()
						Player.Character[ModelName]["Slide 1"].Weld.C1 = CFrame.new()
						Player.Character[ModelName]["Slide 2"].Weld.C1 = CFrame.new()
					end)
					for i = 5, 0, -1 do
						pcall(function()
							Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90))
						end)
						CameraPunch(math.rad(-0.5), math.rad(0.5))
						wait()
					end
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), 0, math.rad(-90))
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					end)
				end
			end
			if Loaded == true and LoadedDual == true then
				SendToServer([[for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Reload" then
		coroutine.wrap(function()
			Part:Stop()
			Part.Volume = 0
			wait(1)
			Part:Remove()
		end)()
	end
end]], "Sound Stop", {"Source", Player.Character[ModelName].Handle})
			end
			wait()
			CanUse = true
		elseif Key == "g" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			for i = 0, 50, 25 do
				pcall(function()
					if Dual == true then
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					else
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(i), math.rad(-90))
					end
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
				end)
				wait()
			end
			local HasHit = Dual == true and 2 or 1
			local Hit = function(Hit)
				if HasHit <= 0 or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = HasHit - 1
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(10)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end
			local _, HitConnection1 = pcall(function() return Player.Character[ModelName].Barrel.Touched:connect(Hit) end)
			local _, HitConnection2 = pcall(function() return Player.Character[ModelName.. " (Dual)"].Barrel.Touched:connect(Hit) end)
			for i = 50, -80, -30 do
				pcall(function()
					if Dual == true then
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					else
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(i), math.rad(-90))
					end
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
				end)
				wait()
			end
			pcall(function() HitConnection1:disconnect() end)
			pcall(function() HitConnection2:disconnect() end)
			for i = -80, 0, 15 do
				pcall(function()
					if Dual == true then
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					else
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(i), math.rad(-90))
					end
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
				end)
				wait()
			end
			pcall(function()
				if Dual == true then
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(5), 0)
				else
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), 0, math.rad(-90))
				end
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			end)
			CanUse = true
		elseif Key == "e" then
			CanUse = false
			Silenced = not Silenced
			pcall(function() Player.Character[ModelName].Silencer.Transparency = Silenced and 0 or 1 end)
			pcall(function() Player.Character[ModelName.. " (Dual)"].Silencer.Transparency = Silenced and 0 or 1 end)
			CanUse = true
		elseif Key == "y" then
			if Dual == false then
				local Weapon = nil
				for _, Part in pairs(Player.Backpack:GetChildren()) do
					if Part.Name == ModelName and Part ~= script.Parent then
						if Part.Main:FindFirstChild("Dual") == nil then
							Weapon = Part
							break
						end
					end
				end
				if Weapon == nil then return end
				CanUse = false
				for i = 0, 1, 0.05 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(-90 * i), math.rad(-90))
					end)
					wait()
				end
				Weapon.Name = "Dual"
				Weapon.Parent = script
				Dual = true
				RemoveParts(Player.Character, 1)
				CreateParts(Player.Character, 4)
				UpdateFirstPerson(true)
				for i = 0, 1, 0.05 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55 + (1.55 * i), 0.75 - (0.25 * i), 0.35 + (0.25 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(315 - (45 * i)), math.rad(-90 + (95 * i)), math.rad(-90 * (1 - i)))
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(5), 0)
				end)
			else
				for i = 1, 0, -0.05 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55 + (1.55 * i), 0.75 - (0.25 * i), 0.35 + (0.25 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(315 - (45 * i)), math.rad(-90 + (95 * i)), math.rad(-90 * (1 - i)))
					end)
					wait()
				end
				RemoveParts(Player.Character, 4)
				CreateParts(Player.Character, 1)
				UpdateFirstPerson(true)
				Dual = false
				local Weapon = script.Dual
				Weapon.Name = ModelName
				Weapon.Parent = Player.Backpack
				for i = 1, 0, -0.05 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(-90 * i), math.rad(-90))
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), 0, math.rad(-90))
				end)
			end
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
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.05)
	pcall(function() Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new() end)
	if Dual == true then
		for i = 0, 1, 0.05 do
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1.5 - (1.2 * i), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), math.rad(-35 * i))
			end)
			wait()
		end
	end
	pcall(function() Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new() end)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	if Dual == true then
		RemoveParts(Player.Character, 3)
		CreateParts(Player.Character, 4)
	end
	for i = 0, 1, 0.075 do
		pcall(function()
			if Dual == true then
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0.3 + (0.7 * i), 0.5, 0.35 + (0.25 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(90 - (85 * i)), math.rad(-35 * (1 - i)))
			else
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.55 * i) + (1.5 * (1 - i)), 0.75 * i, 0.35 * i) * CFrame.fromEulerAnglesXYZ(math.rad(315 + ((1 - i) * 50)), 0, math.rad(-90) * i)
			end
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new((-1 * i) + (-1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
		end)
		wait()
	end
	pcall(function()
		if Dual == true then
			Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(5), 0)
		else
			Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), 0, math.rad(-90))
		end
		Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	end)
	coroutine.wrap(function()
		while Selected == true do
			script.Parent.Name = script.Magazine.Value.. ":" ..Player.Backpack.Ammo[AmmoType].Value .. (Dual == true and "\n" ..script.Dual.Main.Magazine.Value.. ":" ..string.rep(" ", tostring(Player.Backpack.Ammo[AmmoType].Value):len()) or "")
			wait()
		end
		script.Parent.Name = ModelName
	end)()
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
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		if Dual == true then
			RemoveParts(Player.Character, 4)
			CreateParts(Player.Character, 3)
		end
		SetAngle(1, 0, Player.Character)
		ResetLimbCFrame(1, Player.Character)
		EnableLimb(1, Player.Character)
		SetAngle(2, 0, Player.Character)
		ResetLimbCFrame(2, Player.Character)
		EnableLimb(2, Player.Character)
		return
	end
	if Selected == true then return end
	CanUse = false
	for i = 1, 0, -0.1 do
		pcall(function()
			if Dual == true then
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0.3 + (0.7 * i), 0.5, 0.35 + (0.25 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(90 - (85 * i)), math.rad(-35 * (1 - i)))
			else
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.55 * i) + (1.5 * (1 - i)), 0.75 * i, 0.35 * i) * CFrame.fromEulerAnglesXYZ(math.rad(315 + ((1 - i) * 50)), 0, math.rad(-90) * i)
			end
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new((-1 * i) + (-1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
		end)
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	if Dual == true then
		RemoveParts(Player.Character, 4)
		CreateParts(Player.Character, 3)
		for i = 1, 0, -0.05 do
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(1.5 - (1.2 * i), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), math.rad(-35 * i))
			end)
			wait()
		end
	end
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
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
	if Player.Backpack:FindFirstChild("Ammo") == nil then
		Instance.new("Configuration", Player.Backpack).Name = "Ammo"
	end
	if Player.Backpack.Ammo:FindFirstChild(AmmoType) == nil then
		Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
		Player.Backpack.Ammo[AmmoType].Value = MagazineCapacity * 8
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	if Dual == true then CreateParts(Player.Character, 3) end
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(AmmoCounter))()
end