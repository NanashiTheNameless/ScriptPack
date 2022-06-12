--[[
8 Gauge Shotgun
A humungous shotgun that fires 6 deadly 8-gauge shells.
--]]


if script == nil then return end


ModelName = "8 Gauge"
AmmoType = "8-gauge shell"
MagazineCapacity = 6
MagazineCapacityAdd = 1
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Aiming = true
BulletData = [[Velocity_Transfer = 2

Damage_Head = 50
Damage_Torso = 20
Damage_Limb = 20
Damage_Other = 20

Dust_Size_Min = 2
Dust_Size_Max = 5
Dust_Add = 0.02

Spark_Min = 4
Spark_Max = 7
Spark_Size_Min = 4
Spark_Size_Max = 7
Spark_Add = 0.05

Chunk_Min = 1
Chunk_Max = 3
]] ..game:GetService("InsertService"):LoadAsset(60263276)["BulletData"].Value
FirstPerson = [[FirstPersonOffset = CFrame.new(0, -0.5, 0) * CFrame.new(0, math.rad(-10), 0)
]] ..game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
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


loadstring(game:GetService("InsertService"):LoadAsset(65636834)["CFrameTween"].Value)()


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local Handle = Instance.new("Part", Parts)
	Handle.Name = "Handle"
	Handle.BrickColor = BrickColor.new("Black")
	Handle.TopSurface = 0
	Handle.BottomSurface = 0
	Handle.FormFactor = "Custom"
	Handle.Size = Vector3.new(0.5, 0.7, 1.3)
	local Weld = Instance.new("Weld", Handle)
	Weld.Part0 = Weld.Parent
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-40), math.rad(90), 0) * CFrame.new(0, 0, -0.7)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9)
	end

	local Stock1 = Instance.new("Part", Parts)
	Stock1.Name = "Stock 1"
	Stock1.BrickColor = BrickColor.new("Black")
	Stock1.TopSurface = 0
	Stock1.BottomSurface = 0
	Stock1.FormFactor = "Custom"
	Stock1.Size = Vector3.new(0.5, 0.6, 1.6)
	local Weld = Instance.new("Weld", Stock1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0) * CFrame.new(0, 0.43, -1.005)

	local Stock2 = Instance.new("WedgePart", Parts)
	Stock2.Name = "Stock 2"
	Stock2.BrickColor = BrickColor.new("Black")
	Stock2.TopSurface = 0
	Stock2.BottomSurface = 0
	Stock2.FormFactor = "Custom"
	Stock2.Size = Vector3.new(0.5, 0.9, 0.9)
	local Weld = Instance.new("Weld", Stock2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Stock1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(135), 0, 0) * CFrame.new(0, -0.3, -0.15)

	local Pipe1 = Instance.new("Part", Parts)
	Pipe1.Name = "Pipe 1"
	Pipe1.BrickColor = BrickColor.new("Light grey")
	Pipe1.Reflectance = 0.1
	Pipe1.TopSurface = 0
	Pipe1.BottomSurface = 0
	Pipe1.FormFactor = "Custom"
	Pipe1.Size = Vector3.new(0.3, 0.3, 3.2)
	Instance.new("BlockMesh", Pipe1).Bevel = 0.08
	local Weld = Instance.new("Weld", Pipe1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, -0.15, 1.6 + 0.55)

	local Pipe2 = Instance.new("Part", Parts)
	Pipe2.Name = "Pipe 2"
	Pipe2.BrickColor = BrickColor.new("Light grey")
	Pipe2.Reflectance = 0.1
	Pipe2.TopSurface = 0
	Pipe2.BottomSurface = 0
	Pipe2.FormFactor = "Custom"
	Pipe2.Size = Vector3.new(0.3, 0.3, 1.7)
	Instance.new("BlockMesh", Pipe2).Bevel = 0.08
	local Weld = Instance.new("Weld", Pipe2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.15, 0.85 + 0.55)

	local Pipe3 = Instance.new("Part", Parts)
	Pipe3.Name = "Pipe 3"
	Pipe3.BrickColor = BrickColor.new("Light grey")
	Pipe3.Reflectance = 0.1
	Pipe3.TopSurface = 0
	Pipe3.BottomSurface = 0
	Pipe3.FormFactor = "Custom"
	Pipe3.Size = Vector3.new(0.25, 0.25, 1.6)
	Instance.new("BlockMesh", Pipe3).Bevel = 0.065
	local Weld = Instance.new("Weld", Pipe3)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pipe2
	Weld.C0 = CFrame.new(0, 0, 0.8 + 0.7)

	local Pump1 = Instance.new("Part", Parts)
	Pump1.Name = "Pump"
	Pump1.BrickColor = BrickColor.new("Black")
	Pump1.TopSurface = 0
	Pump1.BottomSurface = 0
	Pump1.FormFactor = "Custom"
	Pump1.Size = Vector3.new(0.45, 0.45, 1.1)
	Instance.new("BlockMesh", Pump1).Bevel = 0.1125
	local Weld = Instance.new("Weld", Pump1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pipe3
	Weld.C0 = CFrame.new(0, 0, -0.6)

	local Pump2 = Instance.new("Part", Parts)
	Pump2.Name = "Pump 2"
	Pump2.BrickColor = BrickColor.new("Black")
	Pump2.TopSurface = 0
	Pump2.BottomSurface = 0
	Pump2.FormFactor = "Custom"
	Pump2.Size = Vector3.new(0.5, 0.5, 0.3)
	Instance.new("BlockMesh", Pump2).Bevel = 0.13
	local Weld = Instance.new("Weld", Pump2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pump1
	Weld.C0 = CFrame.new(0, 0, 0.5)

	for i = -20, 200, 20 do
		local TriggerGuard1 = Instance.new("Part", Parts)
		TriggerGuard1.Name = "Trigger Guard 1 " ..i
		TriggerGuard1.BrickColor = BrickColor.new("Black")
		TriggerGuard1.TopSurface = 0
		TriggerGuard1.BottomSurface = 0
		TriggerGuard1.FormFactor = "Custom"
		TriggerGuard1.Size = Vector3.new(0.2, 0.2, 0.2)
		local Mesh = Instance.new("BlockMesh", TriggerGuard1)
		Mesh.Scale = Vector3.new(0.4, 0.6, 0.4)
		Mesh.Bevel = 0.02
		local Weld = Instance.new("Weld", TriggerGuard1)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Handle
		Weld.C0 = CFrame.new(0, 0, -0.2)
		Weld.C1 = CFrame.new(0, -0.45, -0.32) * CFrame.fromEulerAnglesXYZ(math.rad(i), 0, 0)
	end

	local TriggerGuard2 = Instance.new("Part", Parts)
	TriggerGuard2.Name = "Trigger Guard 2"
	TriggerGuard2.BrickColor = BrickColor.new("Black")
	TriggerGuard2.TopSurface = 0
	TriggerGuard2.BottomSurface = 0
	TriggerGuard2.FormFactor = "Custom"
	TriggerGuard2.Size = Vector3.new(0.2, 0.2, 0.3)
	local Mesh = Instance.new("BlockMesh", TriggerGuard2)
	Mesh.Scale = Vector3.new(0.4, 1, 1)
	Mesh.Bevel = 0.02
	local Weld = Instance.new("Weld", TriggerGuard2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.45, -0.2)
	Weld.C1 = CFrame.new(0, 0, -0.32) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, 0)

	local Trigger = Instance.new("Part", Parts)
	Trigger.Name = "Trigger Guard 2"
	Trigger.BrickColor = BrickColor.new("Black")
	Trigger.TopSurface = 0
	Trigger.BottomSurface = 0
	Trigger.FormFactor = "Custom"
	Trigger.Size = Vector3.new(0.2, 0.3, 0.2)
	local Mesh = Instance.new("BlockMesh", Trigger)
	Mesh.Scale = Vector3.new(0.5, 0.9, 0.3)
	Mesh.Bevel = 0.02
	local Weld = Instance.new("Weld", Trigger)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.45, 0.275) * CFrame.fromEulerAnglesXYZ(math.rad(2), 0, 0)

	local Aim = Instance.new("Part", Parts)
	Aim.Name = "Aim"
	Aim.BrickColor = BrickColor.new("Black")
	Aim.TopSurface = 0
	Aim.BottomSurface = 0
	Aim.FormFactor = "Custom"
	Aim.Size = Vector3.new(0.3, 0.2, 0.7)
	local Mesh = Instance.new("BlockMesh", Aim)
	Mesh.Scale = Vector3.new(1, 0.7, 1)
	Mesh.Bevel = 0.05
	local Weld = Instance.new("Weld", Aim)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pipe1
	Weld.C0 = CFrame.new(0, -0.12, 1.1)

	local Aim1 = Instance.new("Part", Parts)
	Aim1.Name = "Aim 1"
	Aim1.BrickColor = BrickColor.new("Black")
	Aim1.TopSurface = 0
	Aim1.BottomSurface = 0
	Aim1.FormFactor = "Custom"
	Aim1.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("BlockMesh", Aim1).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Aim1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Aim
	Weld.C0 = CFrame.new(0.1, -0.1, -0.25)

	local Aim2 = Instance.new("Part", Parts)
	Aim2.Name = "Aim 2"
	Aim2.BrickColor = BrickColor.new("Black")
	Aim2.TopSurface = 0
	Aim2.BottomSurface = 0
	Aim2.FormFactor = "Custom"
	Aim2.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("BlockMesh", Aim2).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Aim2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Aim
	Weld.C0 = CFrame.new(-0.1, -0.1, -0.25)

	local Aim3 = Instance.new("Part", Parts)
	Aim3.Name = "Aim 3"
	Aim3.BrickColor = BrickColor.new("Black")
	Aim3.TopSurface = 0
	Aim3.BottomSurface = 0
	Aim3.FormFactor = "Custom"
	Aim3.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("BlockMesh", Aim3).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Aim3)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Aim
	Weld.C0 = CFrame.new(0, -0.1, 0.25)

	local Flip = Instance.new("Part", Parts)
	Flip.Name = "Flip"
	Flip.BrickColor = BrickColor.new("Light grey")
	Flip.TopSurface = 0
	Flip.BottomSurface = 0
	Flip.FormFactor = "Custom"
	Flip.Size = Vector3.new(0.2, 0.3, 0.6)
	Instance.new("BlockMesh", Flip).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Flip)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(10), 0) * CFrame.new(-0.25, -0.175, 0.2)

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.Transparency = 1
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Handle
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, -0.15, 4.3)
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 10
	Fire.Heat = 20
	Fire.Color = Color3.new(1, 0.6, 0.2)
	Fire.SecondaryColor = Color3.new(0.6, 0.1, 0.05)
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 20
	Smoke.RiseVelocity = 15
	Smoke.Color = Color3.new(0.8, 0.8, 0.8)
	Smoke.Opacity = 0.3

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
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 10, 0.5, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=2697294", 0.75, 1, false, Player.Character[ModelName].Handle)
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = true
				Player.Character[ModelName].Source.Smoke.Enabled = true
			end)
			wait(0.5)
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = false
				Player.Character[ModelName].Source.Smoke.Enabled = false
			end)
		end)()
		for i = 1, 8 do
			local Bullet = Instance.new("Part", Workspace)
			Bullet.Name = "Bullet"
			Bullet.TopSurface = 0
			Bullet.BottomSurface = 0
			Bullet.BrickColor = BrickColor.new("Really black")
			Bullet.Locked = true
			Bullet.FormFactor = "Custom"
			Bullet.Size = Vector3.new(0.2, 0.2, 0.2)
			Bullet.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, 1.5, 0) * CFrame.new(math.random(-750, 750) / 1000, math.random(-750, 750) / 1000, math.random(-750, 750) / 1000)
			Bullet.Elasticity = 0
			Bullet.Friction = 0
			Instance.new("SpecialMesh", Bullet).MeshType = "Sphere"
			tagHumanoid(Bullet)
			local BodyVelocity = Instance.new("BodyVelocity", Bullet)
			BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 100) + Vector3.new(math.random(-9000, 9000) / 1000, math.random(-9000, 9000) / 1000, math.random(-9000, 9000) / 1000)
			game:GetService("Debris"):AddItem(Bullet, 2)
			TouchedToServer(BulletData, Bullet)
		end
		CameraPunch(math.rad(40), 0)
		local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.fromEulerAnglesXYZ(math.rad(-80), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
			0.2, true)
		PropertyCFrameTween(AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(-70), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.5, 0.45, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(110), 0, math.rad(-25)),
			0.2, false)
		wait(0.3)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.2, 0.45, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(105), 0, math.rad(-5)),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
			CFrame.new(-0.1, 0, 0.7),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
			CFrame.new(0, 0, 0.7),
			0.1, false)
		pcall(function() 
			local Shell = Instance.new("Part", Workspace)
			Shell.Name = "Shell"
			Shell.TopSurface = 0
			Shell.BottomSurface = 0
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("Bright blue")
			Shell.Size = Vector3.new(0.25, 0.4, 0.25)
			Shell.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.new(0.5, 0.175, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			Shell.Velocity = ((Player.Character[ModelName].Handle.Position - (Player.Character[ModelName].Handle.CFrame * CFrame.new(-1, 0, 0)).p).unit) * 10
			Shell:BreakJoints()
			Instance.new("CylinderMesh", Shell).Bevel = 0.025
			game:GetService("Debris"):AddItem(Shell, 10)
		end)
		script.Magazine.Value = script.Magazine.Value - 1
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(110), 0, math.rad(-25)),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
			CFrame.new(),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
			CFrame.new(),
			0.1, false)

		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
			0.2, true)
		PropertyCFrameTween(AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
			0.2, false)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "y" and Aiming == false then
		Aiming = true
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C0",
			CFrame.new(),
			0.05, true)
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
			0.05, true)
		PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
			0.05, false)
		CanUse = true
		return
	end
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
			if script.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd then return end
			CanUse = false
			local Loaded = script.Magazine.Value > 0
			local Weld = Player.Character[ModelName].Handle.Weld
			PropertyCFrameTween(Weld, "C1",
				CFrame.fromEulerAnglesXYZ(math.rad(-80), math.rad(40), math.rad(40)) * CFrame.new(-0.2, 0.25, -0.9),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0.3, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), math.rad(-5), math.rad(-10)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(110), math.rad(10), math.rad(-20)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(95), 0, math.rad(-20)),
				0.1, false)
			Weld.C1 = Weld.Part0.CFrame:toObjectSpace(Player.Character["Left Arm"].CFrame):inverse()
			Weld.Part1 = Player.Character["Left Arm"]
			while script.Magazine.Value < (Loaded == true and MagazineCapacity + MagazineCapacityAdd or MagazineCapacity) and Player.Backpack.Ammo[AmmoType].Value > 0 and Button1Down == false do
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(1.5, 0.5, 0),
					0.15, false)
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - 1
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(1.3, 0.35, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(95), 0, math.rad(-45)),
					0.1, false)
				SoundToServer("Reload", "http://www.roblox.com/Asset/?id=10209845", math.random(1900, 2100) / 1000, 0.9, false, Player.Character[ModelName].Handle)
				script.Magazine.Value = script.Magazine.Value + 1
				wait()
			end
			Weld.C1 = Weld.Part0.CFrame:toObjectSpace(Player.Character["Right Arm"].CFrame):inverse()
			Weld.Part1 = Player.Character["Right Arm"]
			if Loaded == false then
				SendToServer([[local Sound = Instance.new("Sound", Source)
Sound.Name = "Reload"
Sound.SoundId = "http://www.roblox.com/Asset/?id=2697294"
Sound.Pitch = 0.75
Sound.Volume = 0
Sound:Play()
wait(0.5)
for i = 0, 1, 0.2 do
	Sound.Volume = i
	wait()
end
Sound.Volume = 1
wait(1.5)
Sound:Remove()]], "Reload", {"Source", Player.Character[ModelName].Handle})

				PropertyCFrameTween(Weld, "C1",
					CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(20), 0) * CFrame.new(0, -0.9, -0.3),
					0.08, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(50), math.rad(5)),
					0.08, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1.4, 0.45, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(125), 0, math.rad(-10)),
					0.08, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(1.1, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(50), math.rad(40), math.rad(-40)),
					0.08, false)

				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(5), math.rad(45), math.rad(10)),
					0.1, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1.4, 0.45, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(20)),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
					CFrame.new(-0.1, 0, 0.7),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
					CFrame.new(0, 0, 0.7),
					0.1, false)

				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(50), math.rad(5)),
					0.1, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1.4, 0.45, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(125), 0, math.rad(-10)),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
					CFrame.new(),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
					CFrame.new(),
					0.1, false)
			end
			PropertyCFrameTween(Weld, "C1",
				CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
				0.05, false)
			wait()
			UpdateFirstPerson(true)
			CanUse = true
		elseif Key == "y" then
			CanUse = false
			PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C0",
				CFrame.fromEulerAnglesXYZ(math.rad(-60), math.rad(3), math.rad(-20)) * CFrame.new(0.5, -0.5, 0.6),
				0.05, true)
			PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
				CFrame.fromEulerAnglesXYZ(math.rad(18), 0, 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
				CFrame.fromEulerAnglesXYZ(0, math.rad(40), 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-40), 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.5, 0.5, 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0),
				0.05, false)
			Aiming = false
		end
	end
end


function onSelected(Mouse)
	if Selected == true then return end
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
	wait(0.2)
	Player.Character.Torso["Neck"].C0 = CFrame.new(0, 1, 0)
	Player.Character.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0)
	Player.Character.Torso:FindFirstChild("Left Shoulder 2").C0 = CFrame.new(-1.5, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Left Shoulder 2").C1 = CFrame.new(0, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Right Shoulder 2").C0 = CFrame.new(1.5, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Right Shoulder 2").C1 = CFrame.new(0, 0.5, 0)
	local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
	AimGyroAdd.Name = "AimGyroAdd"
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, math.rad(-10)),
		0.15, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(50), 0),
		0.15, true)
	PropertyCFrameTween(AimGyroAdd, "Value",
		CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
		0.15, false)
	wait()
	local Weld = Player.Character[ModelName.. " (Holstered)"].Handle.Weld
	Weld.C0 = Player.Character[ModelName.. " (Holstered)"].Handle.CFrame:toObjectSpace(Player.Character["Right Arm"].CFrame)
	Weld.Part1 = Player.Character["Right Arm"]
	PropertyCFrameTween(Weld, "C0",
		CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0.9, 0.5),
		0.05, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
		0.05, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
		0.05, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
		CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
		0.05, true)
	PropertyCFrameTween(AimGyroAdd, "Value",
		CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
		0.05, false)
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
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso:FindFirstChild("Right Shoulder 2") end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
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
	Player.Character.AimGyroAdd:Remove()

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
		CFrame.new(0, 1, 0),
		0.1, true)

	if Aiming == true then
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.new(-0.2, -0.58, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(60), 0, math.rad(40)),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.5, 0.5, 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), math.rad(-90), 0),
			0.05, false)
	else
		Aiming = true
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C0",
			CFrame.new(),
			0.1, true)
	end

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(50), 0),
		0.05, true)
	PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
		CFrame.new(0.1, 0.3, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(120), 0, math.rad(50)),
		0.05 * 2, false)
	PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
		CFrame.new(-0.65, -0.2, -1.6) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, math.rad(90)),
		0.05 * 2, false)

	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0),
		0.025 * 5, false)
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
		Player.Backpack.Ammo[AmmoType].Value = MagazineCapacity * 2
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(AmmoCounter))()
end