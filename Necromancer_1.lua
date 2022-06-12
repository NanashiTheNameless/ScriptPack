--[[
Necromancer
Control the rotting flesh of the long dead.
--]]


if script == nil then return end


ModelName = "Necromancer"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Characters = {}
Mana = 0
ManaMax = 100
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(63178291)["CameraPunch"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()


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


function Move(Type, Target, Position)
	for i, Character in pairs(Characters) do
		pcall(function() Character.Moving:Remove() end)
		if Type == 0 then
			pcall(function() Character.Humanoid:MoveTo(Character.Torso.Position, Character.Torso) end)
		else
			local Moving = Instance.new("Configuration", Character)
			Moving.Name = "Moving"
			local Source = ""
			if Type == 2 then
				Source = [[function onTouched(Hit)
	if Character.Humanoid.Health <= 0 then return end
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
	if Humanoid.Parent == Player.Character or Humanoid.Parent:FindFirstChild("Zombie") ~= nil then return end
	if Hit.Parent:FindFirstChild("ForceField") == nil then
		if math.random(1, 50) == 1 then
			Hit:BreakJoints()
			local Sound = Instance.new("Sound", Character.Torso)
			Sound.SoundId = "http://www.roblox.com/Asset/?id=2801263"
			Sound.Volume = 1
			Sound.Pitch = math.random(500, 700) / 1000
			Sound:Play()
			game:GetService("Debris"):AddItem(Sound, 1)
		elseif Humanoid ~= nil then
			local tag = Instance.new("ObjectValue")
			tag.Name = "creator"
			tag.Value = Player
			tag.Parent = Humanoid
			Humanoid:TakeDamage(math.random() * 10)
			wait(0.1)
			tag:Remove()
		end
	end
end
local _, Connection1 = pcall(function() return Character["Left Arm"].Touched:connect(onTouched) end)
local _, Connection2 = pcall(function() return Character["Right Arm"].Touched:connect(onTouched) end)
Moving.Changed:connect(function(Property)
	if Property == "Parent" then
		Connection1:disconnect()
		Connection2:disconnect()
	end
end)]]
			end
			Source = Source.. [[
while Moving.Parent ~= nil do
	]]
			if Type == 1 then
				Source = Source.. [[Character.Humanoid:MoveTo((Player.Character.Torso.CFrame * CFrame.new(]] ..(math.sin((i / #Characters) * math.pi * 2) * math.max(#Characters, 5)).. ", 0, " ..(math.cos((i / #Characters) * math.pi * 2) * math.max(#Characters, 5)).. [[)).p, Player.Character.Torso)
	if Player.Character.Humanoid.Jump == true or Character.Torso.Position.y + 1 < Player.Character.Torso.Position.y or (Player.Character.Torso.Position - Character.Torso.Position).magnitude < 2 then
		Character.Humanoid.Jump = true
	end]]
			elseif Type == 2 then
				Source = Source.. [[local Offset = CFrame.new(]] ..tostring(CFrame.new(Position):toObjectSpace(Target.CFrame):inverse()).. [[)
	Character.Humanoid:MoveTo((Target.CFrame * Offset * CFrame.new(math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000)).p, Target)
	if Character.Torso.Position.y + 1 < Offset.y then
		Character.Humanoid.Jump = true
	end]]
			end
			Source = Source.. [[
	wait()
end]]
			SendToServer(Source, "Zombie Movement", {"Player", Player, "Character", Character, "Target", Target, "Moving", Moving})
		end
	end
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		CanUse = false
		SetSpeed(1, 0.15, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
		SetSpeed(2, 0.15, Player.Character)
		SetAngle(2, math.rad(90), Player.Character)
		wait(0.3)
		local Arm = math.random(1, 2) == 1 and true or false
		local First = true
		while (Button1Down == true or First == true) and Selected == true and CheckPlayer() == true do
			First = false
			pcall(function()
				Arm = not Arm
				SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209897", 0.5, 1, false, Player.Character.Torso)
				Mana = math.max(Mana - 2, 0)
				local Bullet = Instance.new("Part", Workspace)
				Bullet.Name = "Bullet"
				Bullet.TopSurface = 0
				Bullet.BottomSurface = 0
				Bullet.Transparency = 0.5
				Bullet.BrickColor = BrickColor.new("Really black")
				Bullet.Locked = true
				Bullet.FormFactor = "Custom"
				Bullet.Size = Vector3.new(2, 2, 2)
				Bullet.CFrame = CFrame.new((Player.Character[(Arm == true and "Right" or "Left").. " Arm"].CFrame * CFrame.new(0, -4, 0)).p, Mouse.Hit.p)
				Bullet.Elasticity = 0
				Bullet.Friction = 0
				Instance.new("SpecialMesh", Bullet).MeshType = "Sphere"
				tagHumanoid(Bullet)
				local BodyVelocity = Instance.new("BodyVelocity", Bullet)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[(Arm == true and "Right" or "Left").. " Arm"].Position).unit * 50) + Vector3.new(math.random(-400, 400) / 1000, math.random(-400, 400) / 1000, math.random(-400, 400) / 1000)
				game:GetService("Debris"):AddItem(Bullet, 5)
				SendToServer([[Source.Touched:connect(function(Hit)
	if Hit.Name == "Shadow" then return end
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
	if Humanoid ~= nil and Humanoid.Parent:FindFirstChild("Zombie") == nil then
		local creator = Source.creator:Clone()
		local creator = creator:Clone()
		creator.Parent = Humanoid
		Humanoid:TakeDamage(15)
		if Humanoid.Health <= 0 then
			ClientSend([=[for _, Character in pairs(Characters) do
	pcall(function()
		Character.Humanoid.Health = Character.Humanoid.Health + 30
	end)
end
Mana = math.min(Mana + (Humanoid.MaxHealth / 5))]=])
		end
		coroutine.wrap(function() wait(0.1) creator:Remove() end)()
		local Sound = Instance.new("Sound", Hit.Parent)
		Sound.Name = "Drain"
		Sound.SoundId = "http://www.roblox.com/Asset/?id=2785493"
		Sound.Pitch = 2
		Sound.Volume = 1
		Sound:Play()
		game:GetService("Debris"):AddItem(Sound, 1)
		for i = 1, 10 do
			local Shadow = Source:Clone()
			Shadow.Name = "Shadow"
			Shadow.Parent = Workspace
			Shadow.Transparency = 1
			Shadow.Size = Vector3.new(1, 1, 1)
			Shadow.CFrame = Source.CFrame * CFrame.new(math.random(-2500, 2500) / 1000, math.random(-2500, 2500) / 1000, math.random(-2500, 2500) / 1000)
			Shadow.Anchored = true
			Shadow.CanCollide = false
			coroutine.wrap(function()
				wait(math.random() / 2)
				for x = 1, 0, -0.1 do
					Shadow.Mesh.Scale = (Vector3.new(3, 3, 3) * x) + Vector3.new(0.5, 0.5, 0.5)
					Shadow.Transparency = x
					wait()
				end
				Shadow.Anchored = false
				while true do
					if pcall(function() if (Target.Position - Shadow.Position).magnitude < 3 then error() end end) == false then break end
					pcall(function() Shadow.BodyVelocity.velocity = ((Target.Position - Shadow.Position).unit * 50) end)
					wait()
				end
				local Sound = Instance.new("Sound", Target)
				Sound.Name = "Charge"
				Sound.SoundId = "http://www.roblox.com/Asset/?id=2101137"
				Sound.Pitch = 5
				Sound.Volume = 0.1
				Sound:Play()
				SendToClient([=[Mana = math.min(Mana + math.random(0, 2), ManaMax)
Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + math.random(0, 3)]=])
				Shadow.BodyVelocity:Remove()
				Shadow.Anchored = true
				Shadow.CFrame = Target.CFrame * CFrame.new(math.random(-1000, 1000) / 1000, math.random(-1000, 1000) / 1000, math.random(-1000, 1000) / 1000)
				for x = 0, 1, 0.1 do
					Shadow.Anchored = true
					Shadow.Mesh.Scale = (Vector3.new(2, 2, 2) * x) + Vector3.new(0.5, 0.5, 0.5)
					Shadow.Transparency = x
					wait()
				end
				Shadow:Remove()
			end)()
		end
	else
		if Hit:GetMass() < 500 and Hit.Anchored == false and Humanoid == nil then
			Hit:BreakJoints()
			Hit.Velocity = Source.Velocity / 2
		end
		local Shadow = Source:Clone()
		Shadow.Name = "Shadow"
		Shadow.Parent = Workspace
		Shadow.Size = Vector3.new(1, 1, 1)
		Shadow.CFrame = Source.CFrame
		Shadow.Anchored = true
		Shadow.CanCollide = false
		coroutine.wrap(function()
			for x = 0, 1, 0.1 do
				Shadow.Mesh.Scale = (Vector3.new(2, 2, 2) * x) + Vector3.new(2, 2, 2)
				Shadow.Transparency = 0.5 + (x / 2)
				wait()
			end
			Shadow:Remove()
		end)()
	end
	Source:Remove()
end)]], "Necromancer Bullet", {"Source", Bullet, "Target", Player.Character.Torso})
			end)
			SetAngle(Arm == true and 1 or 2, math.rad(150), Player.Character)
			CameraPunch(math.rad(math.random(-1000, 1000) / 1000), math.rad(math.random(-1000, 1000) / 1000))
			wait(0.5)
			SetAngle(Arm == true and 1 or 2, math.rad(90), Player.Character)
		end
		wait(0.1)
		SetAngle(1, 0, Player.Character)
		SetAngle(2, 0, Player.Character)
		wait(0.2)
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
			if Mana < 30 then return end
			CanUse = false
			SoundToServer("Charge", "http://www.roblox.com/Asset/?id=2101137", 0.4, 1, false, Player.Character.Torso)
			Mana = Mana - 30
			SetSpeed(1, 0.05, Player.Character)
			SetAngle(1, math.rad(-20), Player.Character)
			SetSpeed(2, 0.05, Player.Character)
			SetAngle(2, math.rad(-20), Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (20 * i)), 0, math.rad(180)) end)
				wait()
			end
			for i = 1, 3 do
				local Color = math.random(1, 6)
				if Color == 1 then
					Color = BrickColor.new("Olive")
				elseif Color == 2 then
					Color = BrickColor.new("Br. yellowish green")
				elseif Color == 3 then
					Color = BrickColor.new("Grime")
				elseif Color == 4 then
					Color = BrickColor.new("Medium green")
				elseif Color == 5 then
					Color = BrickColor.new("Dark green")
				elseif Color == 6 then
					Color = BrickColor.new("Camo")
				end
				local SkinColor = Player.Character["Body Colors"].HeadColor
				local Character = Instance.new("Model", Workspace)
				Character.Name = Player.Name.. "'s Zombie"
				Instance.new("Configuration", Character).Name = "Zombie"
				local Head = Instance.new("Part", Character)
				Head.Name = "Head"
				Head.BrickColor = Color
				Head.FormFactor = 0
				Head.Size = Vector3.new(2, 1, 1)
				Head.TopSurface = 0
				Head.BottomSurface = "Weld"
				local Mesh = Instance.new("SpecialMesh", Head)
				Mesh.MeshType = "Head"
				Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
				local Face = Instance.new("Decal", Head)
				Face.Name = "face"
				Face.Face = "Front"
				Face.Texture = "rbxasset://textures/face.png"
				local Torso = Instance.new("Part", Character)
				Torso.Name = "Torso"
				Torso.BrickColor = Player.Character["Body Colors"].TorsoColor == SkinColor and Color or Player.Character["Body Colors"].TorsoColor
				Torso.FormFactor = 0
				Torso.Size = Vector3.new(2, 2, 1)
				Torso.TopSurface = "Studs"
				Torso.BottomSurface = "Inlet"
				Torso.LeftSurface = "Weld"
				Torso.RightSurface = "Weld"
				local TShirt = Instance.new("Decal", Torso)
				TShirt.Name = "roblox"
				TShirt.Face = "Front"
				local Limb = Instance.new("Part")
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.TopSurface = "Studs"
				Limb.BottomSurface = "Inlet"
				Limb.BrickColor = BrickColor.new("Black")
				local LeftArm = Limb:Clone()
				LeftArm.Name = "Left Arm"
				LeftArm.BrickColor = Player.Character["Body Colors"].LeftArmColor == SkinColor and Color or Player.Character["Body Colors"].LeftArmColor
				LeftArm.Parent = Character
				local RightArm = Limb:Clone()
				RightArm.Name = "Right Arm"
				RightArm.BrickColor = Player.Character["Body Colors"].RightArmColor == SkinColor and Color or Player.Character["Body Colors"].RightArmColor
				RightArm.Parent = Character
				local LeftLeg = Limb:Clone()
				LeftLeg.Name = "Left Leg"
				LeftLeg.BrickColor = Player.Character["Body Colors"].LeftLegColor == SkinColor and Color or Player.Character["Body Colors"].LeftLegColor
				LeftLeg.Parent = Character
				local RightLeg = Limb:Clone()
				RightLeg.Name = "Right Leg"
				RightLeg.BrickColor = Player.Character["Body Colors"].RightLegColor == SkinColor and Color or Player.Character["Body Colors"].RightLegColor
				RightLeg.Parent = Character
				Character:BreakJoints()
				local Neck = Instance.new("Motor6D")
				Neck.Name = "Neck"
				Neck.Part0 = Torso
				Neck.Part1 = Head
				Neck.C0 = CFrame.new(0, 2, 0)
				Neck.C1 = CFrame.new(0, 0.5, 0)
				Neck.MaxVelocity = 0
				Neck.Parent = Torso
				local LeftShoulder = Instance.new("Motor6D", Torso)
				LeftShoulder.Name = "Left Shoulder"
				LeftShoulder.Part0 = Torso
				LeftShoulder.Part1 = LeftArm
				LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				LeftShoulder.MaxVelocity = 0.5
				local RightShoulder = Instance.new("Motor6D", Torso)
				RightShoulder.Name = "Right Shoulder"
				RightShoulder.Part0 = Torso
				RightShoulder.Part1 = RightArm
				RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				RightShoulder.MaxVelocity = 0.5
				local LeftHip = Instance.new("Motor6D", Torso)
				LeftHip.Name = "Left Hip"
				LeftHip.Part0 = Torso
				LeftHip.Part1 = LeftLeg
				LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				LeftHip.MaxVelocity = 0.1
				local RightHip = Instance.new("Motor6D", Torso)
				RightHip.Name = "Right Hip"
				RightHip.Part0 = Torso
				RightHip.Part1 = RightLeg
				RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				RightHip.MaxVelocity = 0.1
				local Humanoid = Instance.new("Humanoid")
				Humanoid.WalkSpeed = 20
				Humanoid.Parent = Character
				Humanoid.Died:connect(function()
					coroutine.wrap(function()
						for i, Part in pairs(Characters) do
							if Part == Character then
								table.remove(Characters, i)
								return
							end
						end
					end)()
					pcall(function() Character.Moving:Remove() end)
					wait(5)
					Character:Remove()
				end)
				for _, Part in pairs(Player.Character:GetChildren()) do
					if Part:IsA("Clothing") or Part.ClassName == "ShirtGraphic" or Part.ClassName == "BodyColors" or (Part:IsA("Accoutrement") and Part:FindFirstChild("Handle") ~= nil) then
						local Clone = Part:Clone()
						if Clone.ClassName == "BodyColors" then
							Clone.HeadColor = Character.Head.BrickColor
							Clone.TorsoColor = Character.Torso.BrickColor
							Clone.LeftArmColor = Character["Left Arm"].BrickColor
							Clone.RightArmColor = Character["Right Arm"].BrickColor
							Clone.LeftLegColor = Character["Left Leg"].BrickColor
							Clone.RightLegColor = Character["Right Leg"].BrickColor
						end
						Clone.Parent = Character
					end
				end
				coroutine.wrap(function() game:GetService("InsertService"):LoadAsset(55821959)["Animate"].Parent = Character end)()
				Torso.CFrame = Player.Character.Torso.CFrame * CFrame.new(0, -10, 0)
				SendToServer([[coroutine.wrap(function()
	local Angle = ]] ..((i / 3) * math.pi * 2).. [[
	Character.Torso.Anchored = true
	for i = -1, 0, 0.05 do
		Character.Torso.CFrame = Player.Character.Torso.CFrame * CFrame.new(math.sin(Angle) * 5, 0, math.cos(Angle) * 5) * CFrame.new(0, i * 6, 0)
		wait()
	end
	Character.Torso.Velocity = Vector3.new()
	Character.Torso.RotVelocity = Vector3.new()
	Character.Torso.Anchored = false
	Character.Torso.Velocity = Vector3.new()
	Character.Torso.RotVelocity = Vector3.new()
end)()
SoundObjects = {25954372, 25954392, 25954407, 24902268, 24902294}
for i = 1, #SoundObjects do
	local Sound = Instance.new("Sound", Character.Head)
	Sound.SoundId = "http://www.roblox.com/Asset/?id=" ..SoundObjects[i]
	Sound.Volume = 1
	SoundObjects[i] = Sound
end
coroutine.wrap(function()
	while Character.Humanoid.Health > 0 do
		wait(math.random(1, 10))
		local i = math.random(1, #SoundObjects)
		SoundObjects[i].Pitch = math.random(8, 12) / 10
		SoundObjects[i]:Play()
	end
end)()]], "Zombie Sounds", {"Player", Player, "Character", Character})
				table.insert(Characters, Character)
			end
			SetSpeed(1, 0.05, Player.Character)
			SetAngle(1, math.rad(140), Player.Character)
			SetSpeed(2, 0.05, Player.Character)
			SetAngle(2, math.rad(140), Player.Character)
			for i = 0, 1, 0.02 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-110 + (60 * i)), 0, math.rad(180)) end)
				wait()
			end
			SetSpeed(1, 0.15, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.15, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50 - (40 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180)) end)
			CanUse = true
		elseif Key == "e" or Key == "r" or Key == "t" or Key == "y" or Key == "u" then
			CanUse = false
			SetSpeed(1, 0.12, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetSpeed(2, 0.12, Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			for i = 0, 1, 0.06 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0)
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
			end)
			if Key == "e" then
				for _, Character in pairs(Characters) do
					pcall(function()
						Character.Humanoid.Health = 0
						Mana = math.min(Mana + 2, ManaMax)
					end)
				end
				Characters = {}
			elseif Key == "r" then
				Move(1)
			elseif Key == "t" then
				Move(2, Mouse.Target, Mouse.Hit.p)
			elseif Key == "y" then
				Move(0)
			elseif Key == "u" then
				for _, Character in pairs(Characters) do
					if Mana <= 3 then break end
					Mana = Mana - 3
					pcall(function()
						SoundToServer("Charge", "http://www.roblox.com/Asset/?id=2101137", 2, 1, false, Character.Torso)
						Character.Humanoid.Health = Character.Humanoid.Health + 20
						local Shadow = Instance.new("Part", Workspace)
						Shadow.Name = "Shadow"
						Shadow.TopSurface = 0
						Shadow.BottomSurface = 0
						Shadow.Transparency = 0.5
						Shadow.BrickColor = BrickColor.new("Really black")
						Shadow.Locked = true
						Shadow.Anchored = true
						Shadow.CanCollide = false
						Shadow.FormFactor = "Custom"
						Shadow.Size = Vector3.new(4, 5, 4)
						Shadow.CFrame = Character.Torso.CFrame
						Shadow.Elasticity = 0
						Shadow.Friction = 0
						Instance.new("SpecialMesh", Shadow).MeshType = "Sphere"
						coroutine.wrap(function()
							for i = 0, 1, 0.1 do
								Shadow.Mesh.Scale = Vector3.new(1, 1, 1) + (Vector3.new(0.5, 0.5, 0.5) * i)
								Shadow.Transparency = 0.5 + (i * 0.5)
								wait()
							end
							Shadow:Remove()
						end)()
					end)
					wait(0.1)
				end
			end
			SetSpeed(1, 0.06, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.06, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.03 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
				end)
				wait()
			end
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			CanUse = true
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
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
	coroutine.wrap(function()
		while Selected == true do
			script.Parent.Name = "Mana:\n" ..Mana
			wait()
		end
		script.Parent.Name = ModelName
	end)()
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
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	SetSpeed(1, 0.25, Player.Character)
	SetSpeed(2, 0.25, Player.Character)
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
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	coroutine.wrap(loadstring(MouseAim))()
end