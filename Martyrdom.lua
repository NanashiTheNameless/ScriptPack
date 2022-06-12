function _G.Martyr(Player)
	local Exploding = false
	local ExplodingTime = 0
	local Looping = true
	local Backpack = Instance.new("Part", Player.Character)
	Backpack.Name = "Backpack"
	Backpack.TopSurface = 0
	Backpack.BottomSurface = 0
	Backpack.BrickColor = BrickColor.new("Reddish brown")
	Backpack.FormFactor = "Custom"
	Backpack.Size = Vector3.new(2.1, 2.75, 1.25)
	local Weld = Instance.new("Weld", Backpack)
	Weld.Part0 = Player.Character:FindFirstChild("Torso")
	Weld.Part1 = Backpack
	Weld.C0 = CFrame.new(0, 0, 0.75)
	for i = 0, 10 do
		local Antenna = Instance.new("Part", Player.Character)
		Antenna.Name = "Antenna"
		Antenna.TopSurface = 0
		Antenna.BottomSurface = 0
		Antenna.BrickColor = BrickColor.new("Black")
		Antenna.FormFactor = "Custom"
		Antenna.Size = Vector3.new(((1 - (i / 10)) * 0.3) + 0.2, 0.2, ((1 - (i / 10)) * 0.3) + 0.2)
		local Weld = Instance.new("Weld", Antenna)
		Weld.Part0 = Player.Character:FindFirstChild("Torso")
		Weld.Part1 = Antenna
		Weld.C0 = CFrame.new(0.7, Backpack.Size.y / 2 + 0.1 + (0.2 * i), 0.75)
		Instance.new("CylinderMesh", Antenna)
	end
	local Light = Instance.new("Part", Player.Character)
	Light.Name = "Light"
	Light.TopSurface = 0
	Light.BottomSurface = 0
	Light.Transparency = 0.5
	Light.BrickColor = BrickColor.new("Really red")
	Light.FormFactor = "Custom"
	Light.Size = Vector3.new(0.25, 0.25, 0.25)
	local Weld = Instance.new("Weld", Light)
	Weld.Part0 = Backpack
	Weld.Part1 = Light
	Weld.C0 = CFrame.new(0.7, Backpack.Size.y / 2 + 2.25, 0)
	Instance.new("SpecialMesh", Light).MeshType = "Sphere"
	Player.Chatted:connect(function(Message)
		if Message:lower():match("allah") or Message:lower():match("muhammed") or Message:lower():match("muhammad") or Message:lower():match("boom") or Message:lower():match("bomb") or Message:lower():match("great satan") or Message:lower():match("islam") or Message:lower():match("martyr") or Message:lower():match("die") or Message:lower():match("purge") or Message:lower():match("evil") or Message:lower():match("praise") or Message:lower():match("allahu") or Message:lower():match("akbar") or Message:lower():match("alala") or Message:lower():match("lalal") or Message:lower():match("hey, over here") or Message:lower():match("hey over here") then
			Exploding = true
		end
	end)
	coroutine.wrap(function()
		while Looping == true do
			game:GetService("Chat"):Chat(Player.Character:FindFirstChild("Head"), (function()
				local Chat = math.random(1, 10)
				if Chat == 1 then
					return "For Allah!"
				elseif Chat == 2 then
					return "For the glory of Allah!"
				elseif Chat == 3 then
					return "The Great Satan must die!"
				elseif Chat == 4 then
					return "Allahu ackbar!"
				elseif Chat == 5 then
					return "Alalalalalalala!"
				elseif Chat == 6 then
					return "Take me, Muhammad!"
				elseif Chat == 7 then
					return "To Paradise!"
				elseif Chat == 8 then
					return "Filthy Americans!"
				elseif Chat == 9 then
					return "You disgrase the great Allah!"
				elseif Chat == 10 then
					return "You will die!"
				end
			end)(), Enum.ChatColor.Red)
			wait(math.random() * 5)
		end
	end)()
	coroutine.wrap(function()
		local BeepSound = Instance.new("Sound", Backpack)
		BeepSound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
		BeepSound.Pitch = 2.5
		BeepSound.Volume = 0.25
		BeepSound.Looped = false
		while true do
			if pcall(function() if Player.Character.Humanoid.Health <= 0 then error() end end) == false then break end
			if math.random(1, 10) == 1 or Exploding == true then
				BeepSound:Play()
			end
			if Exploding == true then
				ExplodingTime = ExplodingTime + math.random(1, 10) / 1000
				if ExplodingTime > 1 then break end
				BeepSound.Pitch = 2.5 + (ExplodingTime * 5)
				pcall(function() Player.Character.Animate:Remove() end)
				pcall(function() Player.Character.Humanoid.WalkSpeed = 16 + (ExplodingTime * 25) end)
				pcall(function()
					Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.sin(tick() * 12.5), 0, 0)
					Player.Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0)
				end)
				pcall(function()
					Player.Character.Torso["Left Shoulder"].DesiredAngle = math.sin(tick() * -12.5) - math.rad(180)
					Player.Character.Torso["Left Shoulder"].MaxVelocity = 0.5
				end)
				pcall(function()
					Player.Character.Torso["Right Shoulder"].DesiredAngle = -math.sin(tick() * 12.5) + math.rad(180)
					Player.Character.Torso["Right Shoulder"].MaxVelocity = 0.5
				end)
				pcall(function()
					Player.Character.Torso["Left Hip"].DesiredAngle = math.sin(tick() * 7.5)
					Player.Character.Torso["Left Hip"].MaxVelocity = 0.25
				end)
				pcall(function()
					Player.Character.Torso["Right Hip"].DesiredAngle = math.sin(tick() * 7.5)
					Player.Character.Torso["Right Hip"].MaxVelocity = 0.25
				end)
			end
			wait()
		end
		pcall(function() Player.Character:BreakJoints() end)
		local ExplosionSound = Instance.new("Sound", Backpack)
		ExplosionSound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
		ExplosionSound.Pitch = 0.25
		ExplosionSound.Volume = 1
		ExplosionSound.Looped = false
		ExplosionSound:Play()
		local Explosion = Instance.new("Explosion")
		Explosion.BlastPressure = 500000
		Explosion.BlastRadius = 25
		Explosion.Position = Backpack.Position
		Explosion.Parent = Workspace
		Looping = false
	end)()
end

--[
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	_G.Martyr(Player)
end
--]]
--_G.Martyr(game:GetService("Players").yfc)