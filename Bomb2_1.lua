--MADE BY OneLegend (NOT THE SCRIPT) Thanks to CyberFromLU for letting me Publish! REGULAR SCRIPT: Go to line 16 and put your name where it says "YOUR NAME HERE"
-------------------------------------------------------------------------------------
--[[
Can Bomb, an improvised explosive device made from ammonium nitrate, a bean can, and a fuse.
Produces a nice medium-pressure explosion.
http://www.roblox.com/asset/?id=10470609 Beans
http://www.roblox.com/asset/?id=45934917 Beans
--]]


if script == nil then return end




Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("yfc")
Name = "Can Bomb"
selected = false
Button1Down = false
thrown = false


function makeParts(format)
	local grenade = Instance.new("Model")
	grenade.Name = Name
	grenade.Parent = Player.Character
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.formFactor = "Symmetric"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Black")
	pm.CanCollide = false
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = grenade
	local m = Instance.new("SpecialMesh")
	m.MeshType = "FileMesh"
	m.Scale = Vector3.new(1, 1, 1)
	m.MeshId = "http://www.roblox.com/asset/?id=10470609"
	m.TextureId = "http://www.roblox.com/asset/?id=45934917"
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	if format == "hand" then
		w.Part1 = Player.Character:FindFirstChild("Right Arm")
		w.C0 = CFrame.new(-1.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(90))
		w.C1 = CFrame.new()
	elseif format == "holster" then
		w.Part1 = Player.Character:FindFirstChild("Torso")
		w.C0 = CFrame.new(0.6, -0.4, 0.6)
		w.C1 = CFrame.new()
		grenade.Name = Name.. " (Holstered)"
	end
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Explode"
	s.SoundId = "rbxasset://sounds\\collide.wav"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Pin"
	s.SoundId = "http://www.roblox.com/Asset/?id=31760113"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = true
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Light"
	s.SoundId = "http://www.roblox.com/Asset/?id=19095020"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Rag"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("White")
	p.CanCollide = false
	p.Transparency = 1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = grenade
	local f = Instance.new("Fire")
	f.Enabled = false
	f.Name = "Fire"
	f.Color = Color3.new(1, 0.5, 0)
	f.SecondaryColor = Color3.new(1, 0.75, 0.5)
	f.Heat = 25
	f.Size = 2
	f.Parent = p
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.15, 0.4, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.6, 0)
	w.C1 = CFrame.new()
	w.Parent = p
end


function removeParts(format)
	if format == "hand" then
		if Player.Character:FindFirstChild(Name) ~= nil then
			Player.Character[Name]:Remove()
		end
	elseif format == "holster" then
		if Player.Character:FindFirstChild(Name.. " (Holstered)") ~= nil then
			Player.Character[Name.. " (Holstered)"]:Remove()
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
	local weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType1"
	tag.Value = Name
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType2"
	tag.Value = "blown up"
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType1")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType2")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


function fire(v)
	if Player.Character:FindFirstChild(Name) == nil then makeParts("hand") end
	if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
	if Player.Character[Name].Handle:FindFirstChild("Weld") ~= nil then Player.Character[Name].Handle.Weld:Remove() end
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	bodyVelocity.velocity = v * 75
	bodyVelocity.Parent = Player.Character[Name].Handle
	wait(0.1)
	bodyVelocity:Remove()
end


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down ~= true and thrown ~= true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		Button1Down = true
		mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
		Player.Character[Name].Handle.Pin:Play()
		Player.Character[Name].Handle.Light:Play()
		Player.Character[Name].Rag.Fire.Enabled = true 
		Player.Character[Name].Handle.CanCollide = true
		Player.Character[Name].Rag.CanCollide = true  
		coroutine.resume(coroutine.create(function()
			wait(math.random(3, 6))
			if Player.Character:FindFirstChild(Name) ~= nil then
				if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
					local e = Instance.new("Explosion")
					e.BlastPressure = 20
					e.BlastRadius = 10
					e.Position = Player.Character[Name].Handle.Position
					e.Parent = game:GetService("Workspace")
					e.Hit:connect(function(hit) if hit.Parent:FindFirstChild("Humanoid") ~= nil then tagHumanoid(hit.Parent.Humanoid) delay(1, function() untagHumanoid(hit.Parent.Humanoid) end) end end)
					Player.Character[Name].Handle.Explode:Play()
					Player.Character[Name].Handle.Transparency = 1
					Player.Character[Name].Handle.CanCollide = false
					Player.Character[Name].Handle.Pin:Stop()
				end
			end
			wait()
			if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
				Player.Character.WeaponActivated:Remove()
			end
			thrown = false
			Button1Down = false
			selected = true
			onDeselected(mouse)
			removeParts("holster")
			script.Parent:Remove()
		end))
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	if Button1Down == true and thrown ~= true then
		thrown = true
		mouse.Icon = "rbxasset://textures\\GunCursor.png"
		SetSpeed(1, 2, Player.Character)
		SetAngle(1, 0, Player.Character)
		EnableLimb(1, Player.Character)
		fire((mouse.Hit.p - Player.Character[Name].Handle.Position).unit)
	end
	Button1Down = false
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and Button1Down == false and thrown ~= true then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			onDeselected(mouse)
			removeParts("holster")
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil or thrown == true do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	removeParts("holster")
	makeParts("hand")
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	SetAngle(1, math.rad(200), Player.Character)
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	selected = false
	while Button1Down == true or thrown == true do
		wait()
	end
	if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
		if Player.Character.WeaponActivated.Value == script.Parent then
			Player.Character.WeaponActivated:Remove()
		end
	end
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if pcall(function() if Player.Character.WeaponActivated.Value.Parent == nil then return true end end) then break end
		wait()
	end
	removeParts("hand")
	makeParts("holster")
	SetAngle(1, 0, Player.Character)
	EnableLimb(1, Player.Character)
end


if script.Parent.className ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.className == "HopperBin" then
	while script.Parent.Parent.className ~= "Backpack" do
		wait()
	end
	Player = script.Parent.Parent.Parent
	makeParts("holster")
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end