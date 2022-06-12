if script == nil then return end


Player = game.Players:FindFirstChild("chrismash")
controlActivated = false
Button1Down = false
swordUp = false
swordSlash = false
swordSlash2 = false
swordLunge = false
swordStab = false
swordType = "normal"


function makeParts()
	local suit = Instance.new("Model")
	suit.Name = "Suit"
	suit.Parent = Player.Character
	local p = Instance.new("Part")
	p.Name = "Torso Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(2, 2, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Torso"
	m.Scale = Vector3.new(0.75, 0.5, 1.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(0, 0.5, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Torso Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(2, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1.01, 1.01, 1.01)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Arm Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1.01, 1.01, 1.01)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Left Arm")
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Arm Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.76, 1.02, 1.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Left Arm")
	w.C0 = CFrame.new(0.13, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Arm Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1.01, 1.01, 1.01)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Right Arm")
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Arm Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.76, 1.02, 1.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Right Arm")
	w.C0 = CFrame.new(-0.13, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Leg Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1.01, 1.01, 1.01)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Left Leg")
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Leg Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.76, 1.02, 1.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Left Leg")
	w.C0 = CFrame.new(-0.13, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Leg Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1.01, 1.01, 1.01)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Right Leg")
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Leg Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.76, 1.02, 1.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Right Leg")
	p.CanCollide = false
	w.C0 = CFrame.new(0.13, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Head Cover"
	p.FormFactor = "Custom"
	p.size = Vector3.new(2, 1, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(1.5, 1.5, 1.5)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Head")
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Glasses"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Bright red")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = suit
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Sphere"
	m.Scale = Vector3.new(1, 0.4, 0.9)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Head")
	w.C0 = CFrame.new(0, -0.25, 0.5)
	w.C1 = CFrame.new()
	w.Parent = p
	local sword1 = Instance.new("Model")
	sword1.Name = "LeftArmParts"
	sword1.Parent = suit
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.Size = Vector3.new(1, 1, 2)
	pm.BrickColor = BrickColor.new("Really black")
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = sword1
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.3, 0.4, 0.75)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = Player.Character:FindFirstChild("Left Arm")
	w.C0 = CFrame.new(0, 1, 0.5)
	w.C1 = CFrame.new()
	w.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Sword Guard"
	p.size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = sword1
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.5, 0.6, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 0.85)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Sword Metal"
	p.size = Vector3.new(1, 1, 3)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.Reflectance = 0.25
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = sword1
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.1, 0.4, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 2.35)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Sword Tip"
	p.size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.Reflectance = 0.25
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = sword1
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.1, 0.4, 0.5)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 4.1) * CFrame.fromEulerAnglesXYZ(0, 0, 3.14)
	w.C1 = CFrame.new()
	w.Parent = p
	local sword2 = Instance.new("Model")
	sword2.Name = "RightArmParts"
	sword2.Parent = suit
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.Size = Vector3.new(1, 1, 2)
	pm.BrickColor = BrickColor.new("Really black")
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = sword2
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.3, 0.4, 0.75)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = Player.Character:FindFirstChild("Right Arm")
	w.C0 = CFrame.new(0, 1, 0.5)
	w.C1 = CFrame.new()
	w.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Sword Guard"
	p.size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = sword2
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.5, 0.6, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 0.85)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Sword Metal"
	p.size = Vector3.new(1, 1, 3)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.Reflectance = 0.25
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = sword2
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.1, 0.4, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 2.35)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Sword Tip"
	p.size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.Reflectance = 0.25
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = sword2
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.1, 0.4, 0.5)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 4.1) * CFrame.fromEulerAnglesXYZ(0, 0, 3.14)
	w.C1 = CFrame.new()
	w.Parent = p
	Player.Character.Humanoid.WalkSpeed = 25
end


function removeParts()
	if Player.Character:FindFirstChild("Suit") ~= nil then
		Player.Character.Suit:Remove()
	end
	Player.Character.Humanoid.WalkSpeed = 16
end


function onDied()
	wait(4.9)
	if script.Parent.Parent == nil then return end
	script.Parent.Parent = nil
	wait(0.1)
	script.Parent = Player.Backpack
	Player.Character.Humanoid.Died:connect(onDied)
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
	local Joint = Instance.new("Motor")
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


function Weld(x, y)
	weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function onTouched(hit, source, format)
	if hit.Parent == Player.Character or hit.Parent == Player.Character.Suit or hit.Parent == Player.Character.Suit.LeftArmParts or hit.Parent == Player.Character.Suit.RightArmParts then return end
	if format == "sword" then
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= Player.Character then
			tagHumanoid(hit.Parent.Humanoid)
			if swordType == "normal" then
				hit.Parent.Humanoid:TakeDamage(1)
			elseif swordType == "slash" then
				hit.Parent.Humanoid:TakeDamage(10)
			elseif swordType == "lunge" then
				hit.Parent.Humanoid:TakeDamage(10)
				hit.Parent.Humanoid.Sit = true
			elseif swordType == "stab" then
				if Player.Character == nil then return false end
				if Player.Character:FindFirstChild("Suit") == nil then return false end
				if Player.Character.Suit:FindFirstChild("LeftArmParts") == nil then return false end
				if Player.Character.Suit.LeftArmParts:FindFirstChild("Sword Metal") == nil then return false end
				hit.Parent.Humanoid.PlatformStand = true
				Weld(hit, source)
				while hit.Parent.Humanoid ~= nil do
					hit.Parent.Humanoid:TakeDamage(1)
					wait(0.1)
				end
			end
			delay(3, function() untagHumanoid(hit.Parent.Humanoid) end)
		end
	end
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


function onButton1Down(mouse)
	if controlActivated == false then return end
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
	Button1Down = true
	if swordUp == true and swordSlash == false and swordLunge == false and swordStab == false then
		local s = Instance.new("Sound")
		s.SoundId = "rbxasset://sounds\\swordslash.wav"
		s.PlayOnRemove = true
		s.Parent = Player.Character.Torso
		s:Remove()
		swordSlash = true
		swordType = "slash"
		SetSpeed(2, 0.5, Player.Character)
		SetAngle(2, 0, Player.Character)
		delay(0.2, function() if swordLunge ~= true then SetAngle(2, 3.14 / 2, Player.Character) swordType = "normal" end end)
		delay(0.3, function() if swordLunge ~= true then SetSpeed(2, 0.1, Player.Character) swordSlash = false end end)
	elseif swordUp == true and swordSlash == true and swordLunge == false and swordStab == false then
		local s = Instance.new("Sound")
		s.SoundId = "rbxasset://sounds\\swordlunge.wav"
		s.PlayOnRemove = true
		s.Parent = Player.Character.Torso
		s:Remove()
		swordSlash = false
		swordSlash2 = false
		swordLunge = true
		swordType = "lunge"
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, 3.14 / 2, Player.Character)
		SetSpeed(2, 0.5, Player.Character)
		SetAngle(2, 3.14 / 2, Player.Character)
		if Player.Character.Suit.LeftArmParts:FindFirstChild("Handle") ~= nil then
			if Player.Character.Suit.LeftArmParts.Handle:FindFirstChild("Weld") ~= nil then
				OldWeldLeft = Player.Character.Suit.LeftArmParts.Handle.Weld.C0
				Player.Character.Suit.LeftArmParts.Handle.Weld.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(3.14 / 2, 0, 0)
			end
		end
		if Player.Character.Suit.RightArmParts:FindFirstChild("Handle") ~= nil then
			if Player.Character.Suit.RightArmParts.Handle:FindFirstChild("Weld") ~= nil then
				OldWeldRight = Player.Character.Suit.RightArmParts.Handle.Weld.C0
				Player.Character.Suit.RightArmParts.Handle.Weld.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(3.14 / 2, 0, 0)
			end
		end
		Player.Character.Torso.Velocity = Player.Character.Torso.Velocity + ((Player.Character.Torso.CFrame.lookVector * 100) + Vector3.new(0, 10, 0))
		wait(1)
		SetAngle(1, 3.14 / 2, Player.Character)
		SetSpeed(1, 0.3, Player.Character)
		SetAngle(2, 3.14 / 2, Player.Character)
		SetSpeed(2, 0.3, Player.Character)
		SetAngle(3, 3.14 / 2, Player.Character)
		SetSpeed(3, 0.3, Player.Character)
		SetAngle(4, 3.14 / 2, Player.Character)
		SetSpeed(4, 0.3, Player.Character)
		swordType = "normal"
		if Player.Character.Suit.LeftArmParts:FindFirstChild("Handle") ~= nil then
			if Player.Character.Suit.LeftArmParts.Handle:FindFirstChild("Weld") ~= nil then
				Player.Character.Suit.LeftArmParts.Handle.Weld.C0 = OldWeldLeft
			end
		end
		if Player.Character.Suit.RightArmParts:FindFirstChild("Handle") ~= nil then
			if Player.Character.Suit.RightArmParts.Handle:FindFirstChild("Weld") ~= nil then
				Player.Character.Suit.RightArmParts.Handle.Weld.C0 = OldWeldRight
			end
		end
		wait(0.25)
		SetSpeed(1, 0.1, Player.Character)
		SetSpeed(2, 0.1, Player.Character)
		swordLunge = false
	end
end


function onButton1Up(mouse)
	Button1Down = false
	if swordUp == true and swordSlash2 == false and swordLunge == false and swordStab == false then
		local s = Instance.new("Sound")
		s.SoundId = "rbxasset://sounds\\swordslash.wav"
		s.PlayOnRemove = true
		s.Parent = Player.Character.Torso
		s:Remove()
		swordSlash2 = true
		swordType = "slash"
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, 0, Player.Character)
		delay(0.2, function() if swordLunge ~= true then SetAngle(1, 3.14 / 2, Player.Character) swordType = "normal" end end)
		delay(0.3, function() if swordLunge ~= true then SetSpeed(1, 0.1, Player.Character) swordSlash2 = false end end)
	end
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
end


function onKeyDown(key, mouse)
	key = key:lower()
	if key == "q" then
		if controlActivated == false then
			if Player.Character ~= nil then
				if Player.Character:FindFirstChild("Suit") == nil then
					makeParts()
					controlActivated = true
					local s = Instance.new("Sound")
					s.SoundId = "rbxasset://sounds\\unsheath.wav"
					s.Pitch = 1.1
					s.PlayOnRemove = true
					s.Parent = Player.Character.Torso
					s:Remove()
				end
			end
		elseif controlActivated == true then
			if Player.Character ~= nil then
				if swordSlash == false and swordLunge == false and swordStab == false then
					removeParts()
					ResetLimbCFrame(1, Player.Character)
					ResetLimbCFrame(2, Player.Character)
					controlActivated = false
					local s = Instance.new("Sound")
					s.SoundId = "rbxasset://sounds\\unsheath.wav"
					s.Pitch = 0.9
					s.PlayOnRemove = true
					s.Parent = Player.Character.Torso
					s:Remove()
					EnableLimb(1, Player.Character)
					EnableLimb(2, Player.Character)
					EnableLimb(3, Player.Character)
					EnableLimb(4, Player.Character)
					swordUp = false
				end
			end
		end
	end
	if key == "z" then
		onDeselected(mouse)
		removeParts()
		mouse.Icon = ""
		script.Parent:Remove()
	end
	if controlActivated ~= true then return end
	if key == "f" then
		if swordSlash == false and swordSlash2 == false and swordLunge == false and swordStab == false and swordUp == false then
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			SetAngle(1, 3.14 / 2, Player.Character)
			SetAngle(2, 3.14 / 2, Player.Character)
			swordUp = true
		elseif swordSlash == false and swordSlash2 == false and swordLunge == false and swordStab == false and swordUp == true then
			SetAngle(1, 0, Player.Character)
			SetAngle(2, 0, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			swordUp = false
		end
	end
	if key == "g" then
		if swordSlash == false and swordLunge == false and swordStab == false then
			swordStab = true
			if swordUp == false then
				DisableLimb(1, Player.Character)
				DisableLimb(2, Player.Character)
			end
			local s = Instance.new("Sound")
			s.SoundId = "rbxasset://sounds\\swordslash.wav"
			s.Pitch = 0.75
			s.PlayOnRemove = true
			s.Parent = Player.Character.Torso
			s:Remove()
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(2, 0, Player.Character)
			wait(0.25)
			swordType = "stab"
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, 3.14, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(2, 3.14, Player.Character)
			wait(0.5)
			SetSpeed(1, 0.1, Player.Character)
			SetAngle(1, 3.14 / 1.5, Player.Character)
			SetSpeed(2, 0.1, Player.Character)
			SetAngle(2, 3.14 / 1.5, Player.Character)
			swordType = "normal"
			swordStab = false
		end
	end
	if key == "x" then
		if Player.Character ~= nil then
			if Player.Character:FindFirstChild("Torso") ~= nil then
				Player.Character.Torso.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(0, 2.75, 0))
			end
		end
	end
end


function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	--To do
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = "Suit Control"
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
	Player.Character.Humanoid.Died:connect(onDied)
elseif script.Parent.ClassName == "HopperBin" then
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end