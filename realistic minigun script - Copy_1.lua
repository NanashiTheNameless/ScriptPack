--[[
Minigun
Sprays an incredible number of 5mm bullets.
--]]


if script == nil then return end


ModelName = "Minigun"
AmmoType = "5mm"
MagazineCapacity = 150
MagazineCapacityAdd = 0
Player = Game.Players.LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
Selected = false
Connected = false
Button1Down = false
CanUse = true
Spinning = false
SpinningIdle = false

function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


--[[
CameraPunch v5

Functions:
CameraPunch
CameraSlide
--]]


function CameraPunch(X, Y)
	X, Y = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000)
	Workspace.CurrentCamera.CoordinateFrame =
		CFrame.new(Workspace.CurrentCamera.Focus.p) *
		CFrame.fromEulerAnglesXYZ(CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p, Workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) *
		CFrame.fromEulerAnglesXYZ(X, Y, 0) *
		CFrame.new(0, 0, (Workspace.CurrentCamera.CoordinateFrame.p - Workspace.CurrentCamera.Focus.p).magnitude)
end


function CameraSlide(X, Y, Step)
	X, Y, Step = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000), Step or 0.1
	for i = 0, 1, Step do
		CameraPunch(Step * X, Step * Y)
		wait()
	end
end


SoundToServer = function(Name, SoundId, Pitch, Volume, Looped, Parent)
local Sound = Instance.new("Sound") 
Sound.Name = Name
Sound.SoundId = SoundId
Sound.Pitch = Pitch
Sound.Volume = Volume
Sound.Looped = Looped
Sound.Parent = Parent
Sound:Play()
end


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Black")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(1.3, 1.5, 1.3)
	MasterPart1.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-85), 0, 0) * CFrame.new(-1.5, 1.5, -1)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0.1, -2, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, math.rad(20))
	end
	Weld.Parent = Weld.Part0
	Instance.new("CylinderMesh", MasterPart1)

	local Part = Instance.new("Part")
	Part.Name = "Grip 1"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.3, 1.1)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(30), 0, 0) * CFrame.new(0, -1.2, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = " Grip 1 Trigger"
	Part.BrickColor = BrickColor.new("Bright red")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.3)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(30), 0, 0) * CFrame.new(0, -0.95, 0.1)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1 / 0.2, 0.1 / 0.2, 1)

	local Part = Instance.new("Part")
	Part.Name = "Grip 1 Top"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.4, 0.3)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.85, 0.4)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip 1 Bottom"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.6275, 0.3)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1.025, -0.4)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip 2"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.3, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.2, 0.65)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip 2 Ring"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.8, 0.8, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	if Format == 1 then
		Weld.C0 = CFrame.new(0, -0.2, 0.65)
	elseif Format == 2 then
		Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(40), 0, 0) * CFrame.new(0, -0.1, 0.9)
	end
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
	Mesh.Scale = Vector3.new(0.9, 0.9, 0.75)

	local Part = Instance.new("Part")
	Part.Name = "Magazine"
	Part.BrickColor = BrickColor.new("Camo")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1.25, 0.6, 1)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0.4, 0, -0.4)
	Weld.Parent = Weld.Part0

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Name = "Motor"
	MasterPart2.BrickColor = BrickColor.new("Medium stone grey")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(1, 0.1, 1)
	MasterPart2.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	Weld.Part1 = MasterPart1
	Weld.C1 = CFrame.new(0, -0.75, 0.1)
	Weld.Parent = Weld.Part0
	Instance.new("CylinderMesh", MasterPart2)

	for i = 1, 5 do
		local Part = Instance.new("Part")
		Part.Name = "Barrel " ..i
		Part.BrickColor = BrickColor.new("Black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.3, 3, 0.3)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0, 1.6, 0.275) * CFrame.fromEulerAnglesXYZ(0, math.rad(360) * (i / 5), 0)
		Weld.Parent = Weld.Part0
		Instance.new("CylinderMesh", Part)
	end

	for i = 1, 3 do
		local Part = Instance.new("Part")
		Part.Name = "Barrel Holder " ..i
		Part.BrickColor = BrickColor.new("Black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1, 0.2, 1)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0, i * 0.95, 0)
		Weld.Parent = Weld.Part0
		Instance.new("CylinderMesh", Part)
	end

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.CanCollide = false
	Part.Transparency = 1
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 5, 0.2)
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 9
	Fire.Heat = -25
	Fire.Color = Color3.new(1, 0.6, 0.2)
	Fire.SecondaryColor = Color3.new(0.6, 0.1, 0.05)
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 14
	Smoke.RiseVelocity = -15
	Smoke.Color = Color3.new(0.8, 0.8, 0.8)
	Smoke.Opacity = 0.2

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


function SpinUp()
	Spinning = true
	SoundToServer("Spin", Button1Down == true and (script.Magazine.Value <= 0 and "http://www.roblox.com/Asset/?id=10209771" or "http://www.roblox.com/Asset/?id=10209776") or "http://www.roblox.com/Asset/?id=10209780", 1, 0, true, Player.Character[ModelName].Handle)
	SoundToServer("Spin Up", "http://www.roblox.com/Asset/?id=10209788", 1, 1, false, Player.Character[ModelName].Handle)
	for i = 0, 1, 0.05 do
		pcall(function() Player.Character[ModelName].Motor.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(360 * 2) * i * i, 0) end)
		wait()
	end
	pcall(function() Player.Character[ModelName].Handle.Spin.Volume = 1 end)
	coroutine.wrap(function()
		while Spinning == true do
			pcall(function() Player.Character[ModelName].Motor.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, ((tick()) % 1) * 360, 0) end)
			wait()
		end
		CanUse = false
		pcall(function() Player.Character[ModelName].Motor.Weld.C0 = CFrame.new() end)
		pcall(function() Player.Character[ModelName].Handle.Spin.Volume = 0 end)
		--[[for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Spin" then
		coroutine.wrap(function()
			Part:Stop()
			wait()
			Part:Remove()
		end)()
	end
end]]--
		SoundToServer("Spin Down", "http://www.roblox.com/Asset/?id=10209786", 0.8, 1, false, Player.Character[ModelName].Handle)
		for i = 1, 0, -0.012 do
			pcall(function() Player.Character[ModelName].Motor.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(-360 * 10) * i * i, 0) end)
			wait()
		end
		CanUse = true
	end)()
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		CanUse = false
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.5, false, Player.Character[ModelName].Handle)
		if Spinning == false then
			SpinUp()
		else
			for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Spin" then
		Part:Stop()
		wait()
		Part.SoundId = "http://www.roblox.com/Asset/?id=10209771"
		wait()
		Part:Play()
	end
end
		end
		pcall(function()
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Smoke.Enabled = true
		end)
		while Button1Down == true and Selected == true and Spinning == true do
			if script.Magazine.Value <= 0 then
				pcall(function()
					if Player.Character[ModelName].Handle.Spin.SoundId ~= "http://www.roblox.com/Asset/?id=10209771" and HasSetSound ~= true then
						HasSetSound = true
						for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Spin" then
		Part:Stop()
		wait()
		Part.SoundId = "http://www.roblox.com/Asset/?id=10209771"
		wait()
		Part:Play()
	end
end
					end
				end)
				pcall(function()
					Player.Character[ModelName].Source.Fire.Enabled = false
					Player.Character[ModelName].Source.Smoke.Enabled = false
				end)
			elseif script.Magazine.Value > 0 then
				local Bullet = Instance.new("Part", Workspace)
				Bullet.Name = "Bullet"
				Bullet.TopSurface = 0
				Bullet.BottomSurface = 0
				Bullet.BrickColor = BrickColor.new("Really black")
				Bullet.Locked = true
				Bullet.FormFactor = "Custom"
				Bullet.Size = Vector3.new(0.5, 0.5, 0.5)
				Bullet.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, -5, 0)
				Bullet.Elasticity = 0
				Bullet.Friction = 0
				local Mesh = Instance.new("SpecialMesh", Bullet)
				Mesh.MeshType = "Sphere"
				Mesh.Scale = Vector3.new(0.1, 0.1, 0.1)
				tagHumanoid(Bullet)
				local BodyVelocity = Instance.new("BodyVelocity", Bullet)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 200) + Vector3.new(math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000)
				game:GetService("Debris"):AddItem(Bullet, 1.5)
				debounce = false
			Bullet.Touched:connect(function(hit) 
    if debounce == false then
    debounce = true
    isPlayer = hit.Parent:FindFirstChild("Humanoid")
    if isPlayer then
        isPlayer:TakeDamage(20)
        wait(0.5)
    end
    debounce = false
    end
end)
				--TouchedToServer(BulletData, Bullet)
				pcall(function()
					local Shell = Instance.new("Part", Workspace)
					Shell.Name = "Shell"
					Shell.TopSurface = 0
					Shell.BottomSurface = 0
					Shell.FormFactor = "Custom"
					Shell.BrickColor = BrickColor.new("New Yeller")
					Shell.Size = Vector3.new(0.2, 0.3, 0.2)
					Shell.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
					Shell.Velocity = ((Player.Character[ModelName].Handle.Position - (Player.Character[ModelName].Handle.CFrame * CFrame.new(-1, 0, 0)).p).unit) * 100
					Shell:BreakJoints()
					local Mesh = Instance.new("CylinderMesh")
					Mesh.Scale = Vector3.new(0.4, 1, 0.4)
					Mesh.Parent = Shell
					game:GetService("Debris"):AddItem(Shell, 5)
				end)
				script.Magazine.Value = script.Magazine.Value - 1
				CameraPunch(math.rad(math.random(-1000, 1500) / 1000), math.rad(math.random(-1500, 1500) / 1000))
			end
			wait(0.075)
		end
		pcall(function()
			Player.Character[ModelName].Source.Fire.Enabled = false
			Player.Character[ModelName].Source.Smoke.Enabled = false
		end)
		Button1Down = false
		HasSetSound = false
		if SpinningIdle == true then
			for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Spin" then
		Part:Stop()
		wait()
		Part.SoundId = "http://www.roblox.com/Asset/?id=10209780"
		wait()
		Part:Play()
	end
end
			CanUse = true
		else
			Spinning = false
		end
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "e" and SpinningIdle == false then
		SpinningIdle = true
		if Spinning == false and CanUse == true then
			CanUse = false
			SpinUp()
			CanUse = true
		end
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
			if script.Magazine.Value >= MagazineCapacity or Player.Backpack.Ammo[AmmoType].Value <= 0 then return end
			CanUse = false
			SoundToServer("Reload 1", "http://www.roblox.com/Asset/?id=10209869", 0.4, 0.5, false, Player.Character[ModelName].Handle)
			pcall(function()
				local Clone = Player.Character[ModelName].Magazine:Clone()
				Clone.CanCollide = true
				Clone.Parent = Workspace
				game:GetService("Debris"):AddItem(Clone, 15)
				Player.Character[ModelName].Magazine.Transparency = 1
			end)
			Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Magazine.Value
			script.Magazine.Value = 0
			SetSpeed(2, 0.2, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.05 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-1.5 + (1.2 * i), 0.5 - (0.25 * i), -0.5 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(40 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(90 * i), 0)
				end)
				CameraPunch(math.rad(-1), math.rad(1))
				wait()
			end
			pcall(function()
				local Magazine = Player.Character[ModelName].Magazine:Clone()
				Magazine.Name = "New Magazine"
				Magazine.Transparency = 0
				Magazine.Parent = Player.Character[ModelName]
				local Weld = Instance.new("Weld", Magazine)
				Weld.Part0 = Weld.Parent
				Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
				Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(50), math.rad(-40)) * CFrame.new(0, 1, 0)
			end)
			SetSpeed(2, 0.1, Player.Character)
			SetAngle(2, math.rad(40), Player.Character)
			SoundToServer("Reload 2", "http://www.roblox.com/Asset/?id=10209801", 1, 1, false, Player.Character[ModelName].Handle)
			for i = 0, 1, 0.05 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-1.5 + (1.2 * i), 0.5 - (0.25 * i), -0.5 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(40 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(90 * i), 0)
					Player.Character[ModelName]["New Magazine"].Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(50), math.rad(-40)) * CFrame.new(0, 1 + i, -0.5 * i)
				end)
				CameraPunch(math.rad(0), math.rad(-1))
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Magazine.Transparency = 0
				Player.Character[ModelName]["New Magazine"]:Remove()
			end)
			if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
				script.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
				Player.Backpack.Ammo[AmmoType].Value = 0
			else
				script.Magazine.Value = script.Magazine.Value + MagazineCapacity
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
			end
			SetAngle(2, math.rad(50), Player.Character)
			wait(0.2)
			SoundToServer("Reload 3", "http://www.roblox.com/Asset/?id=10209636", 1, 1, false, Player.Character[ModelName].Handle)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.3 + (0.3 * i), 0.25, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130) - math.rad(10 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0)
				end)
				CameraPunch(math.rad(0), math.rad(-0.4))
				wait()
			end
			for i = 1, 0, -0.25 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.3 + (0.3 * i), 0.25, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130) - math.rad(10 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0)
				end)
				CameraPunch(math.rad(4), math.rad(1.5))
				wait()
			end
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-0.3, 0.25, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0)
			end)
			SetAngle(2, math.rad(80), Player.Character)
			wait(0.5)
			CanUse = true
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "e" then
		SpinningIdle = false
		if Button1Down == false then
			Spinning = false
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
	SetSpeed(1, 0.25, Player.Character)
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.25, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.5)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	SetSpeed(1, 0.0175, Player.Character)
	SetAngle(1, math.rad(40), Player.Character)
	SetSpeed(2, 0.05, Player.Character)
	SetAngle(2, math.rad(80), Player.Character)
	for i = 0, 1, 0.025 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 - (0.2 * i), 0.5, -0.2 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) + math.rad(20 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.5 + (1.2 * i), 0.5 - (0.25 * i), -0.5 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(40 * i), 0)
			Player.Character.Torso["Left Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(90 * i), 0)
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.1 * (1 - i), -1.5 * (1 - i), 0.435 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(-35 * (1 - i)), 0, math.rad(20 * (1 - i)))
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 =
			CFrame.new(1.3, 0.5, -0.2) * CFrame.fromEulerAnglesXYZ(0, math.rad(110), 0)
		Player.Character.Torso["Right Shoulder 2"].C1 =
			CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Player.Character.Torso["Left Shoulder 2"].C0 =
			CFrame.new(-0.3, 0.25, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130), 0)
		Player.Character.Torso["Left Shoulder 2"].C1 =
			CFrame.new(0, 0.5, 0)
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
	end)
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
	if Spinning == true then
		Spinning = false
		wait(0.1)
	end
	while CanUse == false do wait() end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
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
	SetSpeed(1, 0.0175, Player.Character)
	SetAngle(1, 0, Player.Character)
	SetSpeed(2, 0.05, Player.Character)
	SetAngle(2, 0, Player.Character)
	for i = 1, 0, -0.025 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 - (0.2 * i), 0.5, -0.2 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) + math.rad(20 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.5 + (1.2 * i), 0.5 - (0.25 * i), -0.5 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(40 * i), 0)
			Player.Character.Torso["Left Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(90 * i), 0)
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.1 * (1 - i), -1.5 * (1 - i), 0.435 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(-35 * (1 - i)), 0, math.rad(20 * (1 - i)))
		end)
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
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
	end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	Instance.new("Configuration", Player.Backpack).Name = "Ammo"
		Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
		Player.Backpack.Ammo[AmmoType].Value = MagazineCapacity * 3
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
--[[
MouseAim v11
--]]


script.Parent.Selected:connect(function(Mouse)
	while Selected == false do wait() end
	while Selected == true do
		if script.Parent == nil then break end
		if Player.Character:FindFirstChild("Humanoid") == nil or Player.Character:FindFirstChild("Torso") == nil then break end
		if Player.Character.Humanoid.Health > 0 and Player.Character.Humanoid.Sit == false and Player.Character.Humanoid.PlatformStand == false and Player.Character.Torso:FindFirstChild("BodyGyro") == nil and Player.Character.Torso:FindFirstChild("BodyAngularVelocity") == nil and Player.Character:FindFirstChild("Ragdoll") == nil then
			local AimGyro = Instance.new("BodyGyro")
			game:GetService("Debris"):AddItem(AimGyro, 0)
			AimGyro.Parent = Player.Character.Torso
			AimGyro.Name = "AimGyro"
			AimGyro.P = 40000
			AimGyro.D = 300
			AimGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			AimGyro.cframe = CFrame.new(Player.Character.Torso.Position, Vector3.new(Mouse.Hit.p.x, Player.Character.Torso.Position.y, Mouse.Hit.p.z)) * (Player.Character:FindFirstChild("AimGyroAdd") and Player.Character.AimGyroAdd.Value or CFrame.new())
		end
		wait()
	end
end)
	--[[
AmmoCounter v5
--]]


local Gui = nil


local function Remove()
	if Gui ~= nil then
		local Gui2 = Gui
		Gui = nil
		if Gui2.Parent ~= nil then
			Gui2.AmmoCounter:TweenPosition(UDim2.new(0.35, 0, 1, 0), "In", "Quart", 0.5, true)
			wait(0.5)
		end
		Gui2:Remove()
	end
end


script.Parent.Selected:connect(function(Mouse)
	while Selected == false do wait() end
	local DualConnection1, DualConnection2
	Gui = Instance.new("ScreenGui", Player.PlayerGui)
	Gui.Name = "AmmoCounter"
	local AmmoCounter = Instance.new("Frame", Gui)
	AmmoCounter.Name = "AmmoCounter"
	AmmoCounter.BorderColor3 = Color3.new(0, 0, 0)
	AmmoCounter.BackgroundTransparency = 0.8
	AmmoCounter.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
	AmmoCounter.Size = UDim2.new(0.3, 0, 0, 100)
	AmmoCounter.Position = UDim2.new(0.35, 0, 1, 0)
	AmmoCounter:TweenPosition(UDim2.new(0.35, 0, 1, -200), "Out", "Quart", 0.5, true)
	local Notification = Instance.new("TextLabel", AmmoCounter)
	Notification.Name = "Notification"
	Notification.Text = ""
	Notification.TextTransparency = 1
	Notification.Font = "ArialBold"
	Notification.FontSize = "Size18"
	Notification.BorderColor3 = Color3.new(0, 0, 0)
	Notification.BackgroundTransparency = 0.3
	Notification.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Notification.Size = UDim2.new(1, -10, 0, 20)
	Notification.Position = UDim2.new(0, 5, 0, 5)
	coroutine.wrap(function()
		local Reloading = false
		local OldMagazine = script.Magazine.Value
		local OldMagazineDual = nil
		pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
		while Notification.Parent ~= nil do
			if OldMagazineDual == nil then
				pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
			end
			if Reloading == false then
				if ((script.Magazine.Value > OldMagazine or OldMagazine - script.Magazine.Value > 1) or (Dual == true and (script.Dual.Main.Magazine.Value > OldMagazineDual or OldMagazineDual - script.Dual.Main.Magazine.Value > 1))) and CanUse == false then
					Reloading = true
				end
			else
				if CanUse == true then
					Reloading = false
				end
			end
			OldMagazine = script.Magazine.Value
			pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
			if Reloading == true then
				Notification.TextTransparency = 0
				Notification.TextColor3 = Color3.new(0.1, 0.8, 0.1)
				Notification.Text = "Reloading..."
				wait()
			else
				if (script.Magazine.Value / MagazineCapacity < 0.2) or (Dual == true and (script.Dual.Main.Magazine.Value / MagazineCapacity < 0.2)) then
					Notification.TextColor3 = Color3.new(1, 0.1, 0.05)
					Notification.TextTransparency = 0
				else
					Notification.TextColor3 = CanUse == false and Color3.new(0.8, 0.8, 0.8) or Color3.new(0, 0, 0)
					Notification.TextTransparency = 0
				end
				Notification.Text = "Magazine: " ..script.Magazine.Value .. (Dual == true and ("/" ..script.Dual.Main.Magazine.Value) or "")
				wait()
			end
		end
	end)()
	for x = 1, Dual ~= nil and 2 or 1 do
		for i = 1, MagazineCapacity + MagazineCapacityAdd do
			local Bullet = Instance.new("Frame", AmmoCounter)
			Bullet.Name = i.. ", " ..x
			Bullet.BorderColor3 = Color3.new(0, 0, 0)
			if i > script.Magazine.Value then
				Bullet.BackgroundTransparency = 0.8
				Bullet.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
			else
				Bullet.BackgroundTransparency = 0.3
				Bullet.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
			end
			Bullet.Size = UDim2.new(1 / (MagazineCapacity + MagazineCapacityAdd), -10, 0, Dual ~= nil and 20 or 40)
			Bullet.Position = UDim2.new((i - 1) / (MagazineCapacity + MagazineCapacityAdd), 5, 0, 30 + (20 * (x - 1)))
		end
	end
	local function Check(Value, y)
		return Value.Changed:connect(function()
			for i = 1, MagazineCapacity + MagazineCapacityAdd do
				AmmoCounter[i.. ", " ..y].BackgroundTransparency = 0.8
				AmmoCounter[i.. ", " ..y].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
			end
			for i = 1, Value.Value do
				AmmoCounter[i.. ", " ..y].BackgroundTransparency = 0.3
				AmmoCounter[i.. ", " ..y].BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
			end
		end)
	end
	Check(script.Magazine, 1)
	if Dual == true then
		DualConnection1 = Check(script.Dual.Main.Magazine, 2)
		coroutine.wrap(function()
			while Dual == true do
				wait()
			end
			pcall(function() DualConnection1:disconnect() end)
		end)()
	else
		DualConnection1 = script.ChildAdded:connect(function(Child)
			if Child.Name == "Dual" then
				DualConnection2 = Check(Child.Main.Magazine, 2)
				coroutine.wrap(function()
					wait()
					for i = 1, MagazineCapacity + MagazineCapacityAdd do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.8
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
					end
					for i = 1, Child.Main.Magazine.Value do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.3
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					end
					while Dual == true do
						wait()
					end
					pcall(function() DualConnection2:disconnect() end)
					for i = 1, MagazineCapacity + MagazineCapacityAdd do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.8
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
					end
				end)()
			end
		end)
	end
	local ModelNameLabel = Instance.new("TextLabel", AmmoCounter)
	ModelNameLabel.Name = "ModelNameLabel"
	ModelNameLabel.Text = " " ..ModelName
	ModelNameLabel.TextColor3 = Color3.new(0, 0, 0)
	ModelNameLabel.Font = "ArialBold"
	ModelNameLabel.FontSize = "Size14"
	ModelNameLabel.TextXAlignment = "Left"
	ModelNameLabel.BorderColor3 = Color3.new(0, 0, 0)
	ModelNameLabel.BackgroundTransparency = 0.3
	ModelNameLabel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	ModelNameLabel.Size = UDim2.new(1, -10, 0, 20)
	ModelNameLabel.Position = UDim2.new(0, 5, 0, 75)
	local TotalAmmo = ModelNameLabel:Clone()
	TotalAmmo.Parent = AmmoCounter
	TotalAmmo.Name = "TotalAmmo"
	TotalAmmo.Text = Player.Backpack.Ammo[AmmoType].Value.. " " ..AmmoType.. " "
	TotalAmmo.TextXAlignment = "Right"
	TotalAmmo.BorderSizePixel = 0
	TotalAmmo.BackgroundTransparency = 1
	TotalAmmo.Size = UDim2.new(1, - 10, 0, 20)
	TotalAmmo.Position = UDim2.new(0, 5, 1, -25)
	Player.Backpack.Ammo[AmmoType].Changed:connect(function()
		TotalAmmo.Text = Player.Backpack.Ammo[AmmoType].Value.. " " ..AmmoType.. " "
	end)
	coroutine.wrap(function()
		while Selected == true do
			wait()
		end
		Remove()
		pcall(function() DualConnection1:disconnect() end)
		pcall(function() DualConnection2:disconnect() end)
	end)()
end)
end