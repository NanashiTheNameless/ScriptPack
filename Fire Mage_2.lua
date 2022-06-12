--[[
Fire Mage
Burn the resistors!
--]]


if script == nil then return end


ModelName = "Fire Mage"
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
Mana = 100
ManaMax = 100



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
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType1"
	tag.Value = ModelName
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType2"
	tag.Value = "shot"
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
		SetSpeed(1, 0.25, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
		SetSpeed(2, 0.25, Player.Character)
		SetAngle(2, math.rad(90), Player.Character)
		wait(0.3)
		local Arm = math.random(1, 2) == 1 and true or false
		local First = true
		while (Button1Down == true or First == true) and Selected == true and CheckPlayer() == true do
			if Mana <= 0 then break end
			First = false
			pcall(function()
				Arm = not Arm
				--SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209897", 1.5, 1, false, Player.Character.Torso)
				Mana = Mana - 2
				local Bullet = Instance.new("Part", Workspace)
				Bullet.Name = "Bullet"
				Bullet.TopSurface = 0
				Bullet.BottomSurface = 0
				Bullet.BrickColor = BrickColor.new("Really red")
				Bullet.Locked = true
				Bullet.FormFactor = "Custom"
				Bullet.Size = Vector3.new(0.5, 0.5, 1)
				Bullet.CFrame = CFrame.new((Player.Character[(Arm == true and "Right" or "Left").. " Arm"].CFrame * CFrame.new(0, -2.5, 0)).p, Mouse.Hit.p)
				Bullet.Elasticity = 0
				Bullet.Friction = 0
				BulletFire = Instance.new("Fire",Bullet)
				Instance.new("SpecialMesh", Bullet).MeshType = "Sphere"
				tagHumanoid(Bullet)
				local BodyVelocity = Instance.new("BodyVelocity", Bullet)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[(Arm == true and "Right" or "Left").. " Arm"].Position).unit * 150) + Vector3.new(math.random(-400, 400) / 1000, math.random(-400, 400) / 1000, math.random(-400, 400) / 1000)
				game:GetService("Debris"):AddItem(Bullet, 5)
			end)
			SetAngle(Arm == true and 1 or 2, math.rad(150), Player.Character)
			--CameraPunch(math.rad(math.random(-1000, 1000) / 1000), math.rad(math.random(-1000, 1000) / 1000))
			wait(0.15)
			SetAngle(Arm == true and 1 or 2, math.rad(90), Player.Character)
			wait(0.05)
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
			if Mana < 25 then return end
			CanUse = false
			--SoundToServer("Charge", "http://www.roblox.com/Asset/?id=2101137", 0.5, 1, false, Player.Character.Torso)
			Mana = Mana - 25
			SetSpeed(1, 0.1, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetSpeed(2, 0.1, Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			local Boulder = Instance.new("Part", Player.Character)
			Boulder.Name = "Boulder"
			Boulder.Locked = true
			Boulder.TopSurface = 0
			Boulder.BottomSurface = 0
			Boulder.BrickColor = BrickColor.new("Really red")
			Boulder.Material = "Concrete"
			Boulder.FormFactor = "Custom"
			Boulder.Size = Vector3.new(4, 4, 4)
			BoulderFire = Instance.new("Fire",Boulder)
			BoulderFire.Heat = 10
			Instance.new("SpecialMesh", Boulder).MeshType = "Sphere"
			local Weld = Instance.new("Weld", Player.Character.Torso)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = Boulder
			Weld.C0 = CFrame.new(0, 0, -4)
			for i = 0, 1, 0.02 do
				Boulder.Mesh.Scale = Vector3.new(i, i, i)
				local Pebble = Instance.new("Part", Player.Character)
				Pebble.Name = "Pebble"
				Pebble.TopSurface = 0
				Pebble.BottomSurface = 0
				Pebble.BrickColor = BrickColor.new("Really red")
				Pebble.Material = "Concrete"
				Pebble.Locked = true
				Pebble.CanCollide = false
				Pebble.FormFactor = "Custom"
				Pebble.Size = Vector3.new(0.2 + (1 - i), 0.2 + (1 - i), 0.2 + (1 - i))
				PebbleFire = Instance.new("Fire",Pebble)
				Pebble.CFrame = Player.Character.Torso.CFrame * CFrame.new(math.random(-10000, 10000) / 1000, -5, -4 + math.random(-10000, 10000) / 1000)
				Instance.new("SpecialMesh", Pebble).MeshType = "Sphere"
				local BodyVelocity = Instance.new("BodyVelocity", Pebble)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				coroutine.wrap(function()
					while Pebble.Parent ~= nil and Boulder.Parent ~= nil do
						if pcall(function() if (Boulder.Position - Pebble.Position).magnitude < math.random(1, 2) then error() end end) == false then break end
						pcall(function() BodyVelocity.velocity = ((Boulder.Position - Pebble.Position).unit * 30) end)
						wait()
					end
					Pebble:Remove()
				end)()
				wait()
			end
			wait(0.5)
			if pcall(function() return Mouse.Hit end) == true then
				--SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209268", 1, 1, false, Player.Character.Torso)
				Boulder:Remove()
				local Boulder = Boulder:Clone()
				Boulder.Transparency = 0
				Instance.new("SpecialMesh", Boulder).MeshType = "Sphere"
				local BodyVelocity = Instance.new("BodyVelocity", Boulder)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character.Torso.Position).unit * 100)
				game:GetService("Debris"):AddItem(Boulder, 5)
				Boulder.Parent = Workspace
				SetSpeed(1, 0.25, Player.Character)
				SetAngle(1, math.rad(120), Player.Character)
				SetSpeed(2, 0.25, Player.Character)
				SetAngle(2, math.rad(120), Player.Character)
				--CameraPunch(math.rad(10), math.rad(math.random(-5000, 5000) / 1000))
				tagHumanoid(Boulder)
				wait(0.1)
			
				wait(0.4)
			else
				Mana = Mana + 40
				--SoundToServer("Decharge", "http://www.roblox.com/Asset/?id=35275769", 1, 1, false, Player.Character.Torso)
				Boulder.Material = "Plastic"
				for i = 0, 1, 0.01 do
					Boulder.Transparency = i
					Boulder.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i)
					wait()
				end
				Boulder:Remove()
			end
			SetSpeed(1, 0.15, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.15, Player.Character)
			SetAngle(2, 0, Player.Character)
			wait(1)
			CanUse = true
		elseif Key == "e" then
			CanUse = false
			KeyEDown = true
			SetSpeed(1, 0.06, Player.Character)
			SetAngle(1, math.rad(40), Player.Character)
			SetSpeed(2, 0.06, Player.Character)
			SetAngle(2, math.rad(40), Player.Character)
			--SoundToServer("Charge", "http://www.roblox.com/Asset/?id=2101144", 1.4, 1, false, Player.Character.Torso)
			for i = 0, 1, 0.09 do
				pcall(function()
					Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + (40 * i)), 0, math.rad(180))
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.2 * i), 0.5, 0.2 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (40 * i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.2 * i), 0.5, 0.2 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (40 * i)), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), 0, math.rad(180))
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.3, 0.5, 0.2) * CFrame.fromEulerAnglesXYZ(0, math.rad(-50), 0)
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.3, 0.5, 0.2) * CFrame.fromEulerAnglesXYZ(0, math.rad(50), 0)
			end)
			while KeyEDown == true and Selected == true and CheckPlayer() == true do
				local Pebble = Instance.new("Part", Player.Character)
				Pebble.Name = "Pebble"
				Pebble.TopSurface = 0
				Pebble.BottomSurface = 0
				Pebble.BrickColor = BrickColor.new("Really red")
				Pebble.Material = "Concrete"
				Pebble.Locked = true
				Pebble.CanCollide = false
				Pebble.FormFactor = "Custom"
				Pebble.Size = Vector3.new(0.3, 0.3, 0.3)
				Pebble.CFrame = CFrame.new(Player.Character.Torso.Position + Vector3.new(math.random(-10000, 10000) / 1000, -8, math.random(-10000, 10000) / 1000))
				Instance.new("SpecialMesh", Pebble).MeshType = "Sphere"
				local BodyVelocity = Instance.new("BodyVelocity", Pebble)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				coroutine.wrap(function()
					local i = 0
					while true do
						i = i + 1
						if i > math.random(120, 350) or CheckPlayer() == false or KeyEDown == false then
							Pebble:Remove()
							return
						end
						if pcall(function() if (Player.Character.Torso.Position - Pebble.Position).magnitude < 1 then error() end end) == false then break end
						pcall(function() BodyVelocity.velocity = ((Player.Character.Torso.Position - Pebble.Position).unit * 10) end)
						wait()
					end
					if Mana < ManaMax then
						Mana = Mana + math.random(1, 3)
					else
						Mana = ManaMax
						pcall(function() Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + 2 end)
					end
					--SoundToServer("Charge", "http://www.roblox.com/Asset/?id=2974249", 3, 1, false, Player.Character.Torso)
					Pebble.Anchored = true
					Pebble.Material = "Plastic"
					local OldPosition = CFrame.new(Pebble.Position)
					local OldSize = Pebble.Size
					for i = 0, 1, 0.1 do
						Pebble.Transparency = i
						Pebble.Size = OldSize + (Vector3.new(5, 5, 5) * i)
						Pebble.CFrame = OldPosition
						wait()
					end
					Pebble:Remove()
				end)()
				wait(0.1)
			end
			KeyEDown = false
			SetAngle(1, 0, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.03 do
				pcall(function()
					Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + (40 * i)), 0, math.rad(180))
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.2 * i), 0.5, 0.2 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (40 * i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.2 * i), 0.5, 0.2 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (40 * i)), 0)
				end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180)) end)
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			CanUse = true
		elseif Key == "r" then
			if Mana < 20 then return end
			CanUse = false
			Mana = Mana - 5
			SetSpeed(1, 0.015, Player.Character)
			SetAngle(1, math.rad(-40), Player.Character)
			SetSpeed(2, 0.015, Player.Character)
			SetAngle(2, math.rad(-40), Player.Character)
			--SoundToServer("Charge", "http://www.roblox.com/Asset/?id=1369158", 0.8, 1, false, Player.Character.Torso)
			for i = 0, 1, 0.03 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (40 * i)), 0, math.rad(180)) end)
				wait()
			end
			local Hit, Position = Workspace:FindPartOnRay(Ray.new((Player.Character.Torso.CFrame * CFrame.new(0, 0, -8)).p, Vector3.new(0, -1000, 0)), Player.Character)
			if Hit ~= nil and Position ~= nil then
				Mana = Mana - 15
				--SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209268", 0.6, 1, false, Player.Character.Torso)
				local Pillar = Instance.new("Part", Workspace)
				Pillar.Name = "Pillar"
				Pillar.TopSurface = 0
				Pillar.BottomSurface = 0
				Pillar.BrickColor = BrickColor.new("Really red")
				Pillar.Material = "Concrete"
				Pillar.Locked = true
				Pillar.Anchored = true
				Pillar.FormFactor = "Custom"
				Pillar.Size = Vector3.new(5, 100, 5)
				Pillar.CFrame = CFrame.new(Position, Vector3.new(Player.Character.Torso.Position.x, Position.y, Player.Character.Torso.Position.z)) * CFrame.new(math.random(-1000, 1000) / 1000, -35, (math.random(-1000, 1000) / 1000)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-2000, 2000) / 1000), math.rad(math.random(-2000, 2000) / 1000), math.rad(math.random(-2000, 2000) / 1000))
				tagHumanoid(Pillar)
				wait(1)
				Pillar:remove()
			
			end
			SetSpeed(1, 0.275, Player.Character)
			SetAngle(1, math.rad(160), Player.Character)
			SetSpeed(2, 0.275, Player.Character)
			SetAngle(2, math.rad(160), Player.Character)
			for i = 0, 1, 0.075 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-130 + (90 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-40), 0, math.rad(180)) end)
			wait(0.5)
			SetSpeed(1, 0.25, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.25, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-40 - (50 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180)) end)
			CanUse = true
		elseif Key == "t" then
			if Mana < 15 then return end
			CanUse = false
			SetSpeed(1, 0.03, Player.Character)
			SetAngle(1, math.rad(-40), Player.Character)
			SetSpeed(2, 0.03, Player.Character)
			SetAngle(2, math.rad(-40), Player.Character)
			for i = 0, 1, 0.06 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (40 * i)), 0, math.rad(180)) end)
				wait()
			end
			local Hit, Position = Workspace:FindPartOnRay(Ray.new(Player.Character.Torso.Position, Vector3.new(0, -4, 0)), Player.Character)
			if Hit ~= nil and Position ~= nil then
				Mana = Mana - 15
				--SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209268", 2, 1, false, Player.Character.Torso)
				local Pillar = Instance.new("Part", Workspace)
				Pillar.Name = "Pillar"
				Pillar.TopSurface = 0
				Pillar.BottomSurface = 0
				Pillar.BrickColor = BrickColor.new("Pastel brown")
				Pillar.Material = "Concrete"
				Pillar.Locked = true
				Pillar.Anchored = true
				Pillar.FormFactor = "Custom"
				Pillar.Size = Vector3.new(2.5, 25, 2.5)
				Pillar.CFrame = CFrame.new(Position) * CFrame.new(0, -20, 0) * CFrame.fromEulerAnglesXYZ(Player.Character.Torso.CFrame:toEulerAnglesXYZ())
			
			end
			SetSpeed(1, 0.3, Player.Character)
			SetAngle(1, math.rad(160), Player.Character)
			SetSpeed(2, 0.3, Player.Character)
			SetAngle(2, math.rad(160), Player.Character)
			for i = 0, 1, 0.09 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-130 + (90 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-40), 0, math.rad(180)) end)
			wait(0.25)
			SetSpeed(1, 0.25, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.25, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-40 - (50 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180)) end)
			CanUse = true
		elseif Key == "y" then
			if Mana < 50 then return end
			CanUse = false
			Mana = Mana - 50
			SetSpeed(1, 0.1, Player.Character)
			SetAngle(1, math.rad(220), Player.Character)
			SetSpeed(2, 0.1, Player.Character)
			SetAngle(2, math.rad(220), Player.Character)
			--SoundToServer("Charge", "http://www.roblox.com/Asset/?id=1369158", 1, 1, false, Player.Character.Torso)
			for i = 0, 1, 0.025 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + (40 * i)), 0, math.rad(180)) end)
				wait()
			end
			coroutine.wrap(function()
				local OldPosition = Player.Character.Torso.CFrame
				for i = 1, 50 do
					local Hit, Position = Workspace:FindPartOnRay(Ray.new((OldPosition * CFrame.new(0, 0, -8 - (i * 2))).p, Vector3.new(0, -50, 0)), Player.Character)
					if Hit ~= nil and Position ~= nil then
						local Pillar = Instance.new("Part", Workspace)
						Pillar.Name = "Pillar"
						Pillar.TopSurface = 0
						Pillar.BottomSurface = 0
						Pillar.BrickColor = BrickColor.new("Pastel brown")
						Pillar.Material = "Concrete"
						Pillar.Locked = true
						Pillar.Anchored = true
						Pillar.FormFactor = "Custom"
						Pillar.Size = Vector3.new(2, 5.5, 2)
						Pillar.CFrame = CFrame.new(Position) * CFrame.fromEulerAnglesXYZ(OldPosition:toEulerAnglesXYZ()) * CFrame.fromEulerAnglesXYZ(math.rad(-50), 0, 0) * CFrame.new(math.random(-500, 500) / 1000, -4, (math.random(-500, 500) / 1000)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-1000, 1000) / 1000), math.rad(math.random(-1000, 1000) / 1000), math.rad(math.random(-1000, 1000) / 1000))
						--SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209268", 2, 1, false, Pillar)
						tagHumanoid(Pillar)
						
					end
					wait()
				end
			end)()
			SetSpeed(1, 0.275, Player.Character)
			SetAngle(1, math.rad(-40), Player.Character)
			SetSpeed(2, 0.275, Player.Character)
			SetAngle(2, math.rad(-40), Player.Character)
			for i = 0, 1, 0.075 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50 - (100 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, math.rad(180)) end)
			wait(1)
			SetSpeed(1, 0.05, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.05, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180 + (90 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180)) end)
			CanUse = true
		elseif Key == "u" then
			if Mana < 100 then return end
			CanUse = false
			Mana = Mana - 100
			SetSpeed(1, 0.005, Player.Character)
			SetAngle(1, math.rad(-40), Player.Character)
			SetSpeed(2, 0.005, Player.Character)
			SetAngle(2, math.rad(-40), Player.Character)
			--SoundToServer("Charge", "http://www.roblox.com/Asset/?id=1369158", 0.5, 1, false, Player.Character.Torso)
			for i = 0, 1, 0.01 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (40 * i)), 0, math.rad(180)) end)
				wait()
			end
			local Hit, Position = Workspace:FindPartOnRay(Ray.new((Player.Character.Torso.CFrame * CFrame.new(0, 0, -15)).p, Vector3.new(0, -10, 0)), Player.Character)
			if Hit ~= nil and Position ~= nil then
				local Wave = Instance.new("Part", Workspace)
				Wave.Name = "Wave"
				Wave.TopSurface = 0
				Wave.BottomSurface = 0
				Wave.BrickColor = BrickColor.new("Pastel brown")
				Wave.Material = "Concrete"
				Wave.Locked = true
				Wave.Anchored = true
				Wave.FormFactor = "Custom"
				Wave.Size = Vector3.new(50, 20, 20)
				Wave.CFrame = CFrame.new(Position) * CFrame.new(0, -10, 0) * CFrame.fromEulerAnglesXYZ(Player.Character.Torso.CFrame:toEulerAnglesXYZ())
				Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
				tagHumanoid(Wave)
				
				coroutine.wrap(function()
					while Wave.Parent ~= nil do
						--SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209268", 0.5, 1, false, Wave)
						wait()
					end
				end)()
			end
			SetSpeed(1, 0.275, Player.Character)
			SetAngle(1, math.rad(160), Player.Character)
			SetSpeed(2, 0.275, Player.Character)
			SetAngle(2, math.rad(160), Player.Character)
			for i = 0, 1, 0.075 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-130 + (90 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-40), 0, math.rad(180)) end)
			wait(0.5)
			SetSpeed(1, 0.25, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.25, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-40 - (50 * i)), 0, math.rad(180)) end)
				wait()
			end
			pcall(function() Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180)) end)
			CanUse = true
		elseif Key == "p" then
			if Mana < 30 then return end
			CanUse = false
			Mana = Mana - 30
			SetSpeed(1, 0.06, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetSpeed(2, 0.06, Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			for i = 0, 1, 0.03 do
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
			local OldPosition = Player.Character.Torso.CFrame
			for i = math.rad(-90), math.rad(90), math.rad(12.5) do
				local Hit, Position = Workspace:FindPartOnRay(Ray.new(OldPosition.p, Vector3.new(0, -4, 0)), Player.Character)
				if Hit ~= nil and Position ~= nil then
					--SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209268", 2, 1, false, Player.Character.Torso)
					local Pillar = Instance.new("Part", Workspace)
					Pillar.Name = "Pillar"
					Pillar.TopSurface = 0
					Pillar.BottomSurface = 0
					Pillar.BrickColor = BrickColor.new("Pastel brown")
					Pillar.Material = "Concrete"
					Pillar.Locked = true
					Pillar.Anchored = true
					Pillar.FormFactor = "Custom"
					Pillar.Size = Vector3.new(2.5, 8, 2.5)
					Pillar.CFrame = CFrame.new(Position) * CFrame.new(0, -5.5, 0) * CFrame.fromEulerAnglesXYZ(OldPosition:toEulerAnglesXYZ()) * CFrame.fromEulerAnglesXYZ(0, i, 0) * CFrame.new(0, 0, -10)
				end
				wait(0.1)
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
		elseif Key == "f" then
			if Mana <= 0 then return end
			CanUse = false
			KeyFDown = true
			SetSpeed(1, 0.06, Player.Character)
			SetAngle(1, math.rad(60), Player.Character)
			SetSpeed(2, 0.06, Player.Character)
			SetAngle(2, math.rad(60), Player.Character)
			local Boulder = Instance.new("Part", Player.Character)
			Boulder.Name = "Boulder"
			Boulder.Locked = true
			Boulder.TopSurface = 0
			Boulder.BottomSurface = 0
			Boulder.BrickColor = BrickColor.new("Pastel brown")
			Boulder.Material = "Concrete"
			Boulder.FormFactor = "Custom"
			Boulder.Size = Vector3.new(4, 0.5, 7)
			Boulder.CFrame = Player.Character.Torso.CFrame * CFrame.new(0, -3, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Instance.new("SpecialMesh", Boulder).MeshType = "Sphere"
			local Weld = Instance.new("Weld", Player.Character.Torso)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = Boulder
			Weld.C0 = CFrame.new(0, -3, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
			AimGyroAdd.Name = "AimGyroAdd"
			pcall(function() Player.Character.Torso.Neck.MaxVelocity = 0 end)
			for i = 0, 1, 0.07 do
				pcall(function() Boulder.Mesh.Scale = Vector3.new(i, i, i) end)
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (80 * i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (80 * i)), 0)
					Player.Character.Torso.Neck.CurrentAngle = math.rad(90 * i)
				end)
				AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * i), 0)
				wait()
			end
			pcall(function() Boulder.Mesh.Scale = Vector3.new(1, 1, 1) end)
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0)
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(10), 0)
			end)
			local BodyVelocity = Instance.new("BodyVelocity", Boulder)
			BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			local BodyGyro = Instance.new("BodyGyro", Boulder)
			BodyGyro.P = 1000
			BodyGyro.D = 500
			BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			local i = 0
			local OldTick = math.huge
			while KeyFDown == true and Selected == true and Mana > 0 do
				if tick() % 1 <= OldTick then
					Mana = Mana - 1
				end
				OldTick = tick() % 1
				pcall(function() Player.Character.Humanoid.PlatformStand = true end)
				if (Boulder.Position - Mouse.Hit.p).magnitude <= 10 then
					i = i - 0.15
				else
					i = i + 0.05
				end
				if i < 0 then
					i = 0
				elseif i > 1 then
					i = 1
				end
				BodyGyro.cframe = CFrame.new(Boulder.Position, Mouse.Hit.p)
				BodyVelocity.velocity = Boulder.CFrame.lookVector * 50 * i
				wait()
			end
			pcall(function() Player.Character.Humanoid.PlatformStand = false end)
			BodyVelocity:Remove()
			BodyGyro:Remove()
			SetSpeed(1, 0.06, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetSpeed(2, 0.06, Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.07 do
				pcall(function() Boulder.Mesh.Scale = Vector3.new(i, i, i) end)
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (80 * i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (80 * i)), 0)
					Player.Character.Torso.Neck.CurrentAngle = math.rad(90 * i)
				end)
				AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * i), 0)
				wait()
			end
			Boulder:Remove()
			pcall(function() Player.Character.Torso.Neck.CurrentAngle = 0 end)
			AimGyroAdd:Remove()
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			CanUse = true
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "e" then
		KeyEDown = false
	elseif Key == "f" then
		KeyFDown = false
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
	end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end