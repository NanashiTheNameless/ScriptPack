--[[
Fire Extinguisher
Extinguishes fire.
--]]


if script == nil then return end


ModelName = "Fire Extinguisher"
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

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Really red")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.9, 2, 0.9)
	MasterPart1.Parent = Parts
	Instance.new("CylinderMesh", MasterPart1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
		Weld.C0 = CFrame.new(0, 0, -0.85) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(10))
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1.2, 1) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Label"
	Part.BrickColor = BrickColor.new("White")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.9001, 0.75, 0.9001)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.3, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Bottom"
	Part.BrickColor = BrickColor.new("Really red")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.9, 0.5, 0.9)
	Part.Parent = Parts
	Instance.new("SpecialMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 1, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Top"
	Part.BrickColor = BrickColor.new("Really red")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.9, 0.75, 0.9)
	Part.Parent = Parts
	Instance.new("SpecialMesh", Part).MeshType = "Sphere"
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Neck"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.2, 0.3)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1.4, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.4, 0.2)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.5, 1, 0.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	Weld.C1 = CFrame.new(0, 1.4, -0.2)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Handle 1"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.75)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.2, 1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1.5, -0.275)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Handle 2"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.5)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.2, 1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(40), 0, 0)
	Weld.C1 = CFrame.new(0, 1.67, 0.1325)
	Weld.Parent = Weld.Part0

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
		CanUse = false
		while Button1Down == true and Selected == true do
			SoundToServer("Whoosh", "rbxasset://sounds/Rocket whoosh 01.wav", 10, 0.5, false, Player.Character[ModelName].Handle)
			local Foam = Instance.new("Part", Workspace)
			Foam.Name = "Foam"
			Foam.TopSurface = 0
			Foam.BottomSurface = 0
			Foam.BrickColor = BrickColor.new("White")
			Foam.Locked = true
			Foam.CanCollide = false
			Foam.FormFactor = "Custom"
			Foam.Size = Vector3.new(1, 1, 1)
			Foam.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, 2, 0)
			Foam.Elasticity = 0
			Foam.Friction = 0
			local Mesh = Instance.new("SpecialMesh", Foam)
			Mesh.MeshType = "Sphere"
			Mesh.Scale = Vector3.new()
			local BodyVelocity = Instance.new("BodyVelocity", Foam)
			BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * math.random(130, 150)) + Vector3.new(math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000)
			TouchedToServer([[if Hit == nil then return end
if Hit.Parent == nil then return end
if Hit.Name ~= "Foam" and Hit:GetMass() < 500 and Hit:FindFirstChild("RealFire") == nil and math.random(1, 5) == 1 then
	Hit.BrickColor = BrickColor.new((function()
		local Color = math.random(1, 4)
		if Color == 1 then
			return "White"
		elseif Color == 2 then
			return "Institutional white"
		elseif Color == 3 then
			return "Medium stone grey"
		elseif Color == 4 then
			return "Phosph. White"
		end
	end)())
end
]], Foam)
			coroutine.wrap(function()
				while Foam.Parent ~= nil do
					Foam.Mesh.Scale = Foam.Mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
					wait()
				end
			end)()
			coroutine.wrap(function()
				wait(math.random(100, 300) / 1000)
				for i = Foam.Transparency, 1, 0.1 do
					Foam.Transparency = i
					wait()
				end
				Foam:Remove()
			end)()
			Foam:BreakJoints()
			CameraPunch(math.rad(math.random(-100, 1000) / 1000), math.rad(math.random(-1000, 1000) / 1000))
			wait()
		end
		CanUse = true
	end
end


function onButton1Up(Mouse)
	if Button1Down == false then return end
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
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 0.9, 1, false, Player.Character:FindFirstChild("Torso"))
			SetSpeed(1, 0.3, Player.Character)
			SetAngle(1, math.rad(200), Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=10209596", 0.8, 0.4, false, Player.Character:FindFirstChild("Torso"))
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(15)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 1.75 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-140 * i), 0, 0)
				end)
				CameraPunch(math.rad(1.6), 0)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 1.75, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(-140), 0, 0)
			end)
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, 0, Player.Character)
			pcall(function() HitConnection:disconnect() end)
			HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=10209596", 0.75, 0.5, false, Player.Character:FindFirstChild("Torso"))
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(20)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			for i = 0, 1, 0.19 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 1.75, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(-140 + (40 * i)), 0, 0)
				end)
				CameraPunch(math.rad(-4), 0)
				wait()
			end
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.075, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			for i = 1, 0, -0.08 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 1.75 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-100 * i), 0, 0)
				end)
				CameraPunch(math.rad(0.5), 0)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			wait(0.1)
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
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
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