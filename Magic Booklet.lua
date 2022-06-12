--[[
Script Version 1

Magic booklet.
Script by Ronnie124 (revised by DarkShadow6)
--]]


if script == nil then return end


Player = game:GetService("Players").LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:remove()
end
Name = "Magic Booklet"
selected = false
Button1Down = false
canFire = true
spell = 0


function makeParts()
	local model = Instance.new("Model")
	model.Name = Name
	model.Parent = Player.Character
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.FormFactor = "Plate"
	pm.Size = Vector3.new(1, 0.15, 0.5)
	pm.BrickColor = BrickColor.new("Really black")
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "FileMesh"
	m.Scale = Vector3.new(0.7, 0.5, 0.5)
	m.MeshId = "http://www.roblox.com/Asset/?id=1136139"
	m.TextureId = "fb0b0800411509923ef4d41a46888323" 
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = Player.Character:FindFirstChild("Right Arm")
	w.C0 = CFrame.new(0, 1.1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	w.C1 = CFrame.new()
	w.Parent = pm
end


function removeParts()
	if Player.Character:FindFirstChild(Name) ~= nil then
		Player.Character[Name]:Remove()
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
	tag.Value = "killed with magic"
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


function onButton1Down(mouse)
	if selected == false or canFire == false then return end
	if Player.Character == nil then return end
	if Player.Character:FindFirstChild("Humanoid") == nil then return end
	if Player.Character.Humanoid.Health <= 0 then return end
	if Player.Character:FindFirstChild(Name) == nil then return end
	if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
	if mouse == nil then return end
	Button1Down = true
	if spell == 1 then
		canFire = false
		SetAngle(2, math.rad(-45), Player.Character)
		local charge = Instance.new("Part")
		charge.FormFactor = "Custom"
		charge.Size = Vector3.new(1, 1, 1)
		charge.CanCollide = false
		charge.Transparency = 1
		charge.TopSurface = 0
		charge.BottomSurface = 0
		charge.Parent = Player.Character
		local fire = Instance.new("Fire")
		fire.Parent = charge
		fire.Color = Color3.new(1,1,1)
		fire.Size = 2.5
		fire.Heat = -2.5
		local weld = Instance.new("Weld")
		weld.Part0 = charge
		weld.Part1 = Player.Character["Left Arm"]
		weld.C0 = CFrame.new(0, 1.1, 0)
		weld.Parent = charge
		wait(0.5)
		SetAngle(2, math.rad(160), Player.Character)
		for i = 1, 50 do
			coroutine.resume(coroutine.create(function()
				local b = Instance.new("Part", Workspace)
				b.FormFactor = "Custom"
				b.Size = Vector3.new(1, 1, 1)
				b.CanCollide = false 
				b.BrickColor = BrickColor.new("Really black")
				b.TopSurface = 0
				b.BottomSurface = 0
				b.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
				b.CFrame = Player.Character.Torso.CFrame * CFrame.new(math.random(-15, 15), 0, math.random(-15, 15)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
				b:BreakJoints()
				local M = Instance.new("BodyVelocity")
				M.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				M.velocity = Vector3.new(0, 15, 0)
				M.Parent = b
				wait(3)
				M.velocity = Vector3.new(0, 0, 0)
				wait(2)
				M.velocity = Vector3.new(0, math.random(-100, -75), 0)
				while b.Position.y > Player.Character.Torso.Position.y do wait() end
				P = Instance.new("Part")
				P.Parent = Workspace
				P.FormFactor = "Custom"
				P.Size = Vector3.new(8, 8, 8)
				P.BrickColor = BrickColor.new("Really red")
				P.Anchored = true
				P.TopSurface = 0
				P.BottomSurface = 0
				P.CFrame = CFrame.new(b.Position)
				P.Transparency = math.random(2, 5) / 10
				local m = Instance.new("SpecialMesh")
				m.Parent = P
				m.MeshType = "Sphere"
				m.Scale = Vector3.new(math.random(10, 15) / 10, math.random(10, 15) / 10, math.random(10, 15) / 10)
				P.Touched:connect(function(hit)
					if hit.Parent ~= Player.Character then
						hit:BreakJoints()
					end
				end)
				game:GetService("Debris"):AddItem(b, 8)
				game:GetService("Debris"):AddItem(P, 10)
			end))
			wait(math.random(1, 25) / 100)
		end
		charge.Fire.Enabled = false
		SetAngle(2, math.rad(-10), Player.Character)
		wait(1)
		charge:Remove()
		canFire = true
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	Button1Down = false
	while canFire == false do wait() end
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
end


function onKeyDown(key, mouse)
	if selected == false or canFire == false or Button1Down == true then return end
	key = key:lower()
	if key == "q" then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			onDeselected(mouse)
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
	if key == "e" then
		spell = spell - 1
		if spell < 1 then
			spell = 2
		end
	end
	if key == "r" then
		spell = spell + 1
		if spell > 2 then
			spell = 1
		end
	end
	if key == "e" or key == "r" then
		local Message = Instance.new("Message", Player.PlayerGui)
		if spell == 1 then
			Message.Text = "Rise and Fall"
		elseif spell == 2 then
			Message.Text = "Second spell, anyone?"
		end
		delay(2.5, function() Message:Remove() end)
	end
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	makeParts()
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	DisableLimb(2, Player.Character)
	pcall(function() Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(140), 0) end)
	pcall(function() Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) end)
	SetAngle(1, math.rad(75), Player.Character)
	SetAngle(2, math.rad(-10), Player.Character)
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	selected = false
	Button1Down = false
	while canFire == false do
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
	if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end
	removeParts()
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end