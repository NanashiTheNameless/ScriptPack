--[[
Flare Gun
A red flare gun.
--]]


if script == nil then return end


ModelName = "Flare Gun"
AmmoType = "Flare Grenades"
MagazineCapacity = 1
MagazineCapacityAdd = 0
Color = Color3.new(1, 0, 0)
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6Alt")
Selected = false
Connected = false
Button1Down = false
CanUse = true
FirstPerson = game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
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
	end
	Parts.Parent = Parent

	local MasterPart = Instance.new("Part")
	MasterPart.Name = "Handle"
	MasterPart.BrickColor = BrickColor.new(Color)
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(0.3, 0.4, 0.35)
	MasterPart.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0.6, 0.4, 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1.1, -0.3)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Trigger 1"
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.3, -0.075)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.05 / 0.2, 0.01 / 0.2, 0.1 / 0.2)

	local Part = Instance.new("Part")
	Part.Name = "Trigger Guard"
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	Weld.C1 = CFrame.new(0, -0.3, 0.1)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
	Mesh.Scale = Vector3.new(0.25, 0.3, 0.4)

	local Part = Instance.new("Part")
	Part.Name = "Grip 1"
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.29, 0.35, 0.7)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(20), 0, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip 2"
	Part.BrickColor = BrickColor.new("White")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.31, 0.25, 0.6)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(20), 0, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("WedgePart")
	Part.Name = "Handle Body 1"
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.4, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, 0.25)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Wedge"
	Mesh.Scale = Vector3.new(1, 1, 0.15 / 0.2)

	local Part = Instance.new("Part")
	Part.Name = "Handle Body 2"
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.2, 0.35)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.225, 0.15)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.05 / 0.2, 1)

	local Part = Instance.new("Part")
	Part.Name = "Handle Body 3"
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 1, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.75, 0.075)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Barrel"
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.4, 1, 0.4)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.75, 0.2)
	Weld.Parent = Weld.Part0
	Instance.new("CylinderMesh", Part)

	local Part = Instance.new("Part")
	Part.Name = "Barrel Hole"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.2, 0.3)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.151, 0.2)
	Weld.Parent = Weld.Part0
	Instance.new("CylinderMesh", Part)

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Transparency = 1
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 2, 0.2)
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 3
	Fire.Heat = -10
	Fire.Color = Color
	Fire.SecondaryColor = Color3.new(1, 1, 1)

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
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.25, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209248", 1.5, 1, false, Player.Character[ModelName].Handle)
		script.Magazine.Value = script.Magazine.Value - 1
		pcall(function() Player.Character[ModelName].Source.Fire.Enabled = true end)
		local SmokeHolder = Instance.new("Part", Workspace)
		SmokeHolder.Name = "Smoke Holder"
		SmokeHolder.TopSurface = 0
		SmokeHolder.BottomSurface = 0
		SmokeHolder.Transparency = 1
		SmokeHolder.Locked = true
		SmokeHolder.CanCollide = false
		SmokeHolder.Anchored = true
		SmokeHolder.FormFactor = "Custom"
		SmokeHolder.Size = Vector3.new()
		local Smoke = Instance.new("Smoke", SmokeHolder)
		Smoke.Size = 1
		Smoke.RiseVelocity = 5
		Smoke.Color = Color3.new(0.8, 0.8, 0.8)
		Smoke.Opacity = 0.5
		coroutine.wrap(function()
			for i = 1, 0, -0.05 do
				pcall(function() SmokeHolder.CFrame = CFrame.new(Player.Character[ModelName].Source.CFrame.p) end)
				Smoke.Opacity = i
				wait()
			end
			Smoke.Enabled = false
			wait(7)
			SmokeHolder:Remove()
		end)()
		local Flare = Instance.new("Part", Workspace)
		Flare.Name = "Flare"
		Flare.TopSurface = 0
		Flare.BottomSurface = 0
		Flare.BrickColor = BrickColor.new(Color)
		Flare.Locked = true
		Flare.FormFactor = "Custom"
		Flare.Size = Vector3.new(0.6, 0.6, 0.6)
		Flare.CFrame = Player.Character[ModelName].Source.CFrame
		Flare.Elasticity = 1
		Flare.Friction = 1
		local Mesh = Instance.new("SpecialMesh", Flare)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
		local creator = Instance.new("ObjectValue", Flare)
		creator.Name = "creator"
		creator.Value = Player
		local Fire = Instance.new("Fire", Flare)
		Fire.Color = Color
		Fire.SecondaryColor = Color3.new(1, 1, 1)
		Fire.Heat = 0
		Fire.Size = 10
		local BodyForce = Instance.new("BodyForce", Flare)
		BodyForce.force = Vector3.new(0, 40, 0)
		Flare.Velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 175) + Vector3.new(math.random(-7500, 7500) / 1000, math.random(-7500, 7500) / 1000, math.random(-7500, 7500) / 1000)
		CameraPunch(math.rad(30), 0)
		wait(0.1)
		TouchedToServer([[if Hit.Parent == nil or Source.CanCollide == false then return end
Source.Anchored = true
Source.CanCollide = false
Source.Transparency = 1
Source.Fire.Enabled = false
if Hit.Anchored == false then
	game:GetService("InsertService"):LoadAsset(61110829)["RealFire"].Parent = Hit
	Source.creator:Clone().Parent = Hit["RealFire"]
end
wait(7)
Source:Remove()]], Flare)
		pcall(function() Player.Character[ModelName].Source.Fire.Enabled = false end)
		wait(0.5)
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
		elseif Key == "r" then
			if script.Magazine.Value >= MagazineCapacity or Player.Backpack.Ammo[AmmoType].Value <= 0 then return end
			CanUse = false
			DisableLimb(2, Player.Character)
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(2, 0, Player.Character)
			wait(0.1)
			local Flare = Instance.new("Part")
			Flare.Name = "Flare"
			Flare.BrickColor = BrickColor.new(Color)
			Flare.TopSurface = 0
			Flare.BottomSurface = 0
			Flare.FormFactor = "Custom"
			Flare.Size = Vector3.new(0.3, 0.3, 0.3)
			Flare.Locked = true
			Flare.Parent = Workspace
			Instance.new("SpecialMesh", Flare).MeshType = "Sphere"
			local Weld = Instance.new("Weld")
			Weld.Part0 = Flare
			Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
			Weld.C0 = CFrame.new(0, 1, 0)
			Weld.Parent = Weld.Part0
			SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 0.6, 1, false, Player.Character[ModelName].Handle)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(85 * i))
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(45 * i), 0, math.rad(-15 * i))
					Player.Character.Torso["Right Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0)
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(65 * i), 0, math.rad(15 * i))
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0)
				end)
				CameraPunch(math.rad(-1), 0)
				wait()
			end
			script.Magazine.Value = MagazineCapacity
			Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
			Flare:Remove()
			for i = 1, 0, -0.1 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(85 * i))
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(45 * i), 0, math.rad(-15 * i))
					Player.Character.Torso["Right Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0)
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(65 * i), 0, math.rad(15 * i))
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0)
				end)
				CameraPunch(math.rad(1), 0)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			SetAngle(1, math.rad(90), Player.Character)
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			DisableLimb(1, Player.Character)
			wait()
			CanUse = true
		elseif Key == "g" then
			CanUse = false
			SetSpeed(1, 0.45, Player.Character)
			SetAngle(1, math.rad(175), Player.Character)
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			CameraSlide(math.rad(15), 0, 0.15)
			SetSpeed(1, 0.8, Player.Character)
			SetAngle(1, math.rad(10), Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Barrel.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(8)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			CameraSlide(math.rad(-20), 0, 0.15)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.2, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			CameraSlide(math.rad(5), 0, 0.15)
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
	wait()
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	SetSpeed(1, 0.4, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	wait(0.2)
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
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	SetAngle(1, 0, Player.Character)
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
	if Player.Backpack:FindFirstChild("Ammo") == nil then
		Instance.new("Configuration", Player.Backpack).Name = "Ammo"
	end
	if Player.Backpack.Ammo:FindFirstChild(AmmoType) == nil then
		Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
		Player.Backpack.Ammo[AmmoType].Value = 10
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(AmmoCounter))()
end