--[[
Sticky Grenade
Throw it at any surface and it will stick!
--]]


if script == nil then return end


ModelName = "Sticky Grenade"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Primed = false
Thrown = false
ProjectileData = [[Blast_Size = 20
Blast_Strength = 20
Blast_Strength_PushOverride = 50
Blast_Sound = false
]] ..game:GetService("InsertService"):LoadAsset(60548640)["ProjectileData"].Value
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

	local MasterPart = Instance.new("Part")
	MasterPart.Name = "Handle"
	MasterPart.BrickColor = BrickColor.new("Dark stone grey")
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(0.8, 0.8, 0.8)
	MasterPart.Parent = Parts
	Instance.new("SpecialMesh", MasterPart).MeshType = "Sphere"
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
		Weld.C0 = CFrame.new(0, -0.8, -0.8)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.new(-1.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(90))
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Button"
	Part.BrickColor = BrickColor.new("Toothpaste")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.3, 0.3)
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(1, 0.05 / 0.1, 1)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.35, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Ring"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.81, 0.2, 0.81)
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90)) 
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Ring"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.81, 0.2, 0.81)
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Ring"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.81, 0.2, 0.81)
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) 
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
	if CheckPlayer() == false or Primed == true or Thrown == true or CanUse == false then return end
	CanUse = false
	Primed = true
	SoundToServer("Button", "http://www.roblox.com/Asset/?id=2697295", 3, 1, false, Player.Character[ModelName].Handle)
	SoundToServer("Beep", "http://www.roblox.com/Asset/?id=15666462", 4, 0.5, true, Player.Character[ModelName].Handle)
	SendToServer([[if Source.Parent:FindFirstChild("Button") ~= nil then
	local Position1 = Source.Parent.Button.Position
	local Position2 = Position1
	while true do
		if Source.Parent == nil then break end
		if Source.Parent:FindFirstChild("Button") == nil then break end
		Position2 = Position1
		Position1 = Source.Parent.Button.Position
		local Trail = Instance.new("Part", Workspace)
		Trail.Name = "Sticky Grenade Trail"
		Trail.BrickColor = Source.Parent.Button.BrickColor
		Trail.TopSurface = 0
		Trail.BottomSurface = 0
		Trail.FormFactor = "Custom"
		Trail.Size = Vector3.new(0.3, 1, 0.3)
		Trail.Transparency = 0.3
		Trail.Anchored = true
		Trail.CanCollide = false
		Trail.CFrame = CFrame.new((Position1 + Position2) / 2, Position2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		local Mesh = Instance.new("CylinderMesh", Trail)
		Mesh.Scale = Vector3.new(1, (Position2 - Position1).magnitude, 1)
		coroutine.wrap(function()
			for i = Trail.Transparency, 1, 0.05 do
				Trail.Transparency = i
				wait()
			end
			Trail:Remove()
		end)()
		wait()
	end
end
]] ..ProjectileData, "Sticky Grenade", {"Source", Player.Character[ModelName].Handle})
	Player.Character[ModelName].Button.BrickColor = BrickColor.new("Really red")
	Player.Character[ModelName].Changed:connect(function(Property)
		if Property == "Parent" then
			while CanUse == false do wait() end
			EnableLimb(1, Player.Character)
			UpdateFirstPerson()
			script.Parent:Remove()
		end
	end)
	CanUse = true
end


function onButton1Up(Mouse)
	if Button1Down == false then return end
	Button1Down = false
	if CanUse == false then return end
	if Player.Character:FindFirstChild(ModelName) ~= nil and Thrown == false then
		Thrown = true
		SetSpeed(1, 0.75, Player.Character)
		SetAngle(1, 0, Player.Character)
		wait()
		pcall(function() Player.Character[ModelName].Handle.Weld:Remove() end)
		for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
			pcall(function() Part.CanCollide = true end)
		end
		local BodyVelocity = Instance.new("BodyVelocity")
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = (Mouse.Hit.p - Player.Character[ModelName].Handle.Position).unit * 100
		BodyVelocity.Parent = Player.Character[ModelName].Handle
		game:GetService("Debris"):AddItem(BodyVelocity, 0.1)
		game:GetService("Debris"):AddItem(Player.Character[ModelName], 10)
		wait(0.1)
		tagHumanoid(Player.Character[ModelName].Handle)
		Instance.new("Configuration", Player.Character[ModelName].Handle).Name = "CanExplode"
		SendToServer([[local Beep = Source.Beep
for i = 4, 10, 0.075 do
	Beep.Pitch = i
	wait()
end
Beep:Stop()
if Source.Parent == nil then return end
Source.Parent.Parent = Workspace
Source:BreakJoints()
for i = 1, 10 do
	local Sound = Instance.new("Sound")
	Sound.Name = "Explode"
	Sound.SoundId = "rbxasset://sounds/collide.wav"
	Sound.Volume = 1
	Sound.Pitch = math.random(700, 900) / 1000
	Sound.Parent = Source
	Sound:Play()
end
]] ..ProjectileData, "Sticky Grenade", {"Source", Player.Character[ModelName].Handle})
		TouchedToServer([[if Hit.Parent == Source.Parent then return end
if Hit.Name == "Sticky Grenade Trail" then return end
local Weld = Instance.new("Weld")
Weld.Part0 = Source
Weld.Part1 = Hit
Weld.C0 = Source.CFrame:inverse() * CFrame.new(Source.Position)
Weld.C1 = Hit.CFrame:inverse() * CFrame.new(Source.Position)
Weld.Parent = Source
]], Player.Character[ModelName].Handle)
		Player.Character[ModelName].Parent = Workspace
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
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		elseif Key == "g" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			SetSpeed(1, 0.75, Player.Character)
			SetAngle(1, 0, Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(7)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			CameraSlide(math.rad(-15), 0, 0.2)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, math.rad(200), Player.Character)
			CameraSlide(math.rad(15), 0, 0.25)
			CanUse = true
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
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
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, math.rad(200), Player.Character)
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
	ResetLimbCFrame(1, Player.Character)
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