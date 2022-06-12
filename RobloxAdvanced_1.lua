script.Parent = nil
script.Name = "RobloxAdvanced"
if _G.RobloxAdvanced ~= nil then
	pcall(function() _G.RobloxAdvanced.Disable() end)
	wait(0.5)
	_G.RobloxAdvanced = nil
	wait(0.5)
end
_G.RobloxAdvanced = {}
_G.RobloxAdvanced.Instance = script
_G.RobloxAdvanced.Connections = {}
_G.RobloxAdvanced.RagdollOnHit = true
_G.RobloxAdvanced.DamageOnHit = true
_G.RobloxAdvanced.CriticalHitsEnabled = true
_G.RobloxAdvanced.RagdollOnDeath = true
_G.RobloxAdvanced.KeepCorpses = true
_G.RobloxAdvanced.KeepCorpsesTime = 20
_G.RobloxAdvanced.ShowDamage = true
_G.RobloxAdvanced.BloodEnabled = true
_G.RobloxAdvanced.BloodGuiEnabled = true
_G.RobloxAdvanced.DeathGuiEnabled = true
_G.RobloxAdvanced.SpawnGuiEnabled = true
_G.RobloxAdvanced.HUDEnabled = true
_G.RobloxAdvanced.HUDTimeReset = function() _G.RobloxAdvanced.HUDTimeOffset = tick() end
_G.RobloxAdvanced.HUDTimeReset()
_G.RobloxAdvanced.HUDRemove = function()
	for _, PlayerList in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function() while true do PlayerList.PlayerGui.RobloxAdvancedHUD:Remove() end end)
	end
end
_G.RobloxAdvanced.HUDShow = function()
	_G.RobloxAdvanced.HUDRemove()
	for _, PlayerList in pairs(game:GetService("Players"):GetChildren()) do
		_G.RobloxAdvanced.HUD(PlayerList)
	end
end
_G.RobloxAdvanced.Disable = function()
	_G.RobloxAdvanced.RagdollOnHit = false
	_G.RobloxAdvanced.DamageOnHit = false
	_G.RobloxAdvanced.CriticalHitsEnabled = false
	_G.RobloxAdvanced.RagdollOnDeath = false
	_G.RobloxAdvanced.KeepCorpses = false
	_G.RobloxAdvanced.ShowDamage = false
	_G.RobloxAdvanced.BloodEnabled = false
	_G.RobloxAdvanced.BloodGuiEnabled = false
	_G.RobloxAdvanced.DeathGuiEnabled = false
	_G.RobloxAdvanced.SpawnGuiEnabled = false
	_G.RobloxAdvanced.HUDEnabled = false
	_G.RobloxAdvanced.HUDRemove()
	pcall(function() _G.RobloxAdvanced.Instance.Disabled = true end)
	for _, Connection in pairs(_G.RobloxAdvanced.Connections) do
		pcall(function() Connection:disconnect() end)
	end
end
_G.RobloxAdvanced.MakeBlood = function()
	local Size = math.random(10, 75) / 100
	local Blood = Instance.new("Part")
	Blood.Name = "Blood"
	Blood.BrickColor = BrickColor.new("Really red")
	Blood.TopSurface = 0
	Blood.BottomSurface = 0
	Blood.FormFactor = "Custom"
	Blood.Size = Vector3.new(Size, Size, Size)
	Blood.CanCollide = false
	Instance.new("SpecialMesh", Blood).MeshType = "Sphere"
	local HasTouched = true
	coroutine.wrap(function()
		wait(0.09)
		HasTouched = false
	end)()
	table.insert(_G.RobloxAdvanced.Connections, Blood.Touched:connect(function(Hit)
		if Hit.Name ~= "Blood" and Hit.Name ~= "Blood Pool" then
			if Hit:GetMass() < 100 and math.random(1, 30) == 1 then
				Hit.BrickColor = BrickColor.new((function()
					local Color = math.random(1, 2)
					if Color == 1 then
						return "Bright red"
					elseif Color == 2 then
						return "Really red"
					end
				end)())
			end
		end
		if Blood.Name == "Blood" and Hit.Name == "Blood Pool" then
			Blood:Remove()
		elseif Blood.Name == "Blood Pool" and Hit.Name == "Blood" then
			if Blood.Size.x > math.random(5, 20) or Blood.Size.z > math.random(5, 20) then return end
			local _, C0, C1, Part1 = pcall(function() return Blood.Weld.C0, Blood.Weld.C1, Blood.Weld.Part1 end)
			Blood.Size = Blood.Size + Vector3.new(Hit.Size.x / 5, 0, Hit.Size.z / 5)
			Blood.CFrame = Part1.CFrame * C0 * C1
			if C0 ~= nil and C1 ~= nil and Part1 ~= nil then
				local Weld = Instance.new("Weld", Blood)
				Weld.Part0 = Blood
				Weld.Part1 = Part1
				Weld.C0 = C0
				Weld.C1 = C1
			end
		elseif HasTouched == false and Hit.Name ~= "Blood" then
			HasTouched = true
			local NewHit, Position = Workspace:FindPartOnRay(Ray.new(Blood.Position + Vector3.new(0, 1, 0), Vector3.new(0, -3, 0)), Blood)
			if NewHit ~= nil and NewHit.Anchored == true then
				Blood.Size = Vector3.new(Size * 2, 0.3, Size * 2)
				Blood.Name = "Blood Pool"
				Blood.CFrame = CFrame.new(Position)
				local Weld = Instance.new("Weld", Blood)
				Weld.Part0 = Blood
				Weld.Part1 = NewHit
				Weld.C0 = Blood.CFrame:inverse() * CFrame.new(Position)
				Weld.C1 = NewHit.CFrame:inverse() * CFrame.new(Position)
			else
				local Weld = Instance.new("Weld", Blood)
				Weld.Part0 = Blood
				Weld.Part1 = Hit
				Weld.C0 = Blood.CFrame:inverse() * CFrame.new(Blood.Position)
				Weld.C1 = Hit.CFrame:inverse() * CFrame.new(Blood.Position)
			end
		end
	end))
	coroutine.wrap(function()
		local Size = Blood.Size
		local Step = math.random(40, 100) / 1000
		while Blood.Transparency < 1 do
			if Blood.Name == "Blood Pool" and Size ~= Blood.Size then
				Step = 0.003
				Size = Blood.Size
				Blood.Transparency = 0
			end
			Blood.Transparency = Blood.Transparency + Step
			wait()
		end
		Blood:Remove()
	end)()
	return Blood
end
_G.RobloxAdvanced.HUD = function(Player)
	if _G.RobloxAdvanced.HUDEnabled == false then return end
	local PlayerGui = Player:FindFirstChild("PlayerGui")
	if PlayerGui == nil then return end
	coroutine.wrap(function()
		while _G.RobloxAdvanced.HUDEnabled == true do
			pcall(function()
				PlayerGui.HealthGUI:Remove()
			end)
			wait()
		end
	end)()
	local Gui = Instance.new("ScreenGui")
	Gui.Name = "RobloxAdvancedHUD"
	local Frame = Instance.new("Frame")
	Frame.Name = "Background"
	Frame.Size = UDim2.new(0, 500, 0, 15)
	Frame.Position = UDim2.new(0.5, (-500 / 2), 1, -15)
	Frame.BackgroundTransparency = 1
	Frame.BorderSizePixel = 0
	Frame.Parent = Gui
	local Kills = Instance.new("TextLabel")
	Kills.Name = "Kills"
	Kills.Size = UDim2.new(1 / 5, 0, 1, 0)
	Kills.Position = UDim2.new(0, 0, 0, 0)
	Kills.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	Kills.BorderSizePixel = 1
	Kills.BorderColor3 = Color3.new(1, 1, 1)
	Kills.TextColor3 = Color3.new(1, 1, 1)
	Kills.Parent = Frame
	coroutine.wrap(function()
		while true do
			Kills.Text = "Kills: " ..(Player:FindFirstChild("RobloxAdvancedKills") ~= nil and Player.RobloxAdvancedKills.Value or 0)
			wait(0.5)
		end
	end)()
	Frame.Parent = Gui
	local Killstreak = Instance.new("TextLabel")
	Killstreak.Name = "Killstreak"
	Killstreak.Size = UDim2.new(1 / 5, 0, 1, 0)
	Killstreak.Position = UDim2.new(1 / 5, 0, 0, 0)
	Killstreak.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	Killstreak.BorderSizePixel = 1
	Killstreak.BorderColor3 = Color3.new(1, 1, 1)
	Killstreak.TextColor3 = Color3.new(1, 1, 1)
	Killstreak.Parent = Frame
	coroutine.wrap(function()
		while true do
			Killstreak.Text = "Streak: " ..(Player:FindFirstChild("RobloxAdvancedKillstreak") ~= nil and Player.RobloxAdvancedKillstreak.Value or 0)
			wait(0.5)
		end
	end)()
	local Deaths = Instance.new("TextLabel")
	Deaths.Name = "Deaths"
	Deaths.Size = UDim2.new(1 / 5, 0, 1, 0)
	Deaths.Position = UDim2.new(1 / 5 * 2, 0, 0, 0)
	Deaths.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	Deaths.BorderSizePixel = 1
	Deaths.BorderColor3 = Color3.new(1, 1, 1)
	Deaths.TextColor3 = Color3.new(1, 1, 1)
	Deaths.Parent = Frame
	coroutine.wrap(function()
		while true do
			Deaths.Text = "Deaths: " ..(Player:FindFirstChild("RobloxAdvancedDeaths") ~= nil and Player.RobloxAdvancedDeaths.Value or 0)
			wait(0.5)
		end
	end)()
	local Health = Instance.new("TextLabel")
	Health.Name = "Health"
	Health.Size = UDim2.new(1 / 5, 0, 1, 0)
	Health.Position = UDim2.new(1 / 5 * 3, 0, 0, 0)
	Health.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	Health.BorderSizePixel = 1
	Health.BorderColor3 = Color3.new(1, 1, 1)
	Health.TextColor3 = Color3.new(1, 1, 1)
	Health.Parent = Frame
	coroutine.wrap(function()
		for i = 0, math.huge, 0.5 do
			if pcall(function() local _ = Player.Character.Humanoid end) == true then
				if Player.Character.Humanoid.Health == math.huge or Player.Character.Humanoid.MaxHealth == math.huge then
					Health.Text = "Invincible"
					Health.BackgroundColor3 = Color3.new(0, 0, 0.5)
				else
					Health.Text = "Health: " ..math.floor(Player.Character.Humanoid.Health).. "/" ..math.floor(Player.Character.Humanoid.MaxHealth)
					Health.BackgroundColor3 = Color3.new((1 - (Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth)) * 0.9, (Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth) * 0.5, 0)
				end
				if Player.Character:FindFirstChild("ForceField") ~= nil then
					Health.BackgroundColor3 = Color3.new(((math.sin(i) + 1) / 2), 0, 1 - ((math.sin(i) + 1) / 2))
				end
			else
				Health.Text = "Health: Nil"
				Health.BackgroundColor3 = Color3.new(0, 0, 0)
			end
			wait(0.05)
		end
	end)()
	local Time = Instance.new("TextLabel")
	Time.Name = "Time"
	Time.Size = UDim2.new(1 / 5, 0, 1, 0)
	Time.Position = UDim2.new(1 / 5 * 4, 0, 0, 0)
	Time.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	Time.BorderSizePixel = 1
	Time.BorderColor3 = Color3.new(1, 1, 1)
	Time.TextColor3 = Color3.new(1, 1, 1)
	Time.Parent = Frame
	coroutine.wrap(function()
		while true do
			local Total = tick() - _G.RobloxAdvanced.HUDTimeOffset
			local Minutes = math.floor(Total / 60)
			local Seconds = math.floor(Total % 60)
			if string.len(Minutes) == 1 then Minutes = "0" ..Minutes end
			if string.len(Seconds) == 1 then Seconds = "0" ..Seconds end
			Time.Text = "Time: " ..Minutes.. ":" ..Seconds
			wait(0.05)
		end
	end)()
	Gui.Parent = PlayerGui
end
_G.RobloxAdvanced.HookPlayerDeath = function(Player)
	table.insert(_G.RobloxAdvanced.Connections, Player.Changed:connect(function(Property)
		if Property == "Character" then
			if Player.Character ~= nil then
				if _G.RobloxAdvanced.SpawnGuiEnabled == true then
					local PlayerGui = Player:FindFirstChild("PlayerGui")
					if PlayerGui == nil then return end
					local Gui = Instance.new("ScreenGui")
					Gui.Name = "Life"
					local Frame = Instance.new("Frame")
					Frame.Name = "White"
					Frame.Size = UDim2.new(2, 0, 2, 0)
					Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
					Frame.BackgroundColor3 = Color3.new(0, 0, 0)
					Frame.BackgroundTransparency = 0
					Frame.Parent = Gui
					Gui.Parent = PlayerGui
					coroutine.wrap(function()
						wait(0.1)
						for i = 0, 1, 0.1 do
							Frame.BackgroundColor3 = Color3.new(i, i, i)
							wait()
						end
						Frame.BackgroundColor3 = Color3.new(1, 1, 1)
						wait(0.3)
						for i = 0, 1, 0.05 do
							Frame.BackgroundTransparency = i
							wait()
						end
						Gui:Remove()
					end)()
				end
				_G.RobloxAdvanced.HUD(Player)
			end
		end
	end))
	_G.RobloxAdvanced.HUD(Player)
	table.insert(_G.RobloxAdvanced.Connections, Player.Chatted:connect(function(Message)
		if string.sub(Message, 0, 5) == "lego " then Message = string.sub(Message, 6) end
		Message = Message:lower()
		if Message == "throw me" or Message == "ragdoll" then
			if Player.Character == nil then return end
			if Player.Character:FindFirstChild("Humanoid") == nil then return end
			if Player.Character:FindFirstChild("Torso") == nil then return end
			Player.Character.Humanoid.Sit = true
			_G.RobloxAdvanced.Ragdoll(true, Player.Character)
			if Message == "throw me" then
				Player.Character.Torso.Velocity = Player.Character.Torso.Velocity + (Player.Character.Torso.CFrame.lookVector * 150) + Vector3.new(0, 50, 0)
			end
		end
	end))
end
_G.RobloxAdvanced.HookModelDeath = function(Character)
	wait()
	if Character == nil then return end
	if Character:FindFirstChild("Humanoid") == nil then return end
	local RagdollStatus = false
	local ConnectTouched = function(Part)
		if Part.Parent ~= Character then return end
		pcall(function()
			table.insert(_G.RobloxAdvanced.Connections, Part.Touched:connect(function(Hit)
				if Hit == nil then return end
				if Hit.Parent == nil then return end
				if Hit.Parent ~= Character and Hit.Parent.Parent ~= Character and Hit:GetMass() > 3 then
					local Velocity1 = {
						math.abs(Part.Velocity.x),
						math.abs(Part.Velocity.y),
						math.abs(Part.Velocity.z)
					}
					local RotVelocity1 = {
						math.abs(Part.RotVelocity.x),
						math.abs(Part.RotVelocity.y),
						math.abs(Part.RotVelocity.z)
					}
					local Velocity2 = {
						math.abs(Hit.Velocity.x),
						math.abs(Hit.Velocity.y),
						math.abs(Hit.Velocity.z)
					}
					local RotVelocity2 = {
						math.abs(Hit.RotVelocity.x),
						math.abs(Hit.RotVelocity.y),
						math.abs(Hit.RotVelocity.z)
					}
					if RagdollStatus == false and _G.RobloxAdvanced.RagdollOnHit == true then
						for i = 1, 3 do
							local Total = math.abs(Velocity1[i] - Velocity2[i])
							if Total > math.random(85, 150) then
								RagdollStatus = true
							end
						end
						for i = 1, 3 do
							local Total = math.abs(RotVelocity1[i] - RotVelocity2[i])
							if Total > math.random(75, 100) then
								RagdollStatus = true
							end
						end
						if RagdollStatus == true then
							_G.RobloxAdvanced.Ragdoll(true, Character)
							if Character.Humanoid.PlatformStand == true or Character.Humanoid.Sit == true then
								coroutine.wrap(function()
									wait(5)
									RagdollStatus = false
								end)()
							else
								coroutine.wrap(function()
									Character.Humanoid.PlatformStand = true
									wait(1)
									Character.Humanoid.PlatformStand = false
									wait(5)
									RagdollStatus = false
								end)()
							end
						end
					end
					local Damage = 0
					for i = 1, #Velocity1 do Damage = Damage + Velocity1[i] end
					for i = 1, #RotVelocity1 do Damage = Damage + RotVelocity1[i] end
					for i = 1, #Velocity2 do Damage = Damage + Velocity2[i] end
					for i = 1, #RotVelocity2 do Damage = Damage + RotVelocity2[i] end
					Damage = Damage / 60
					if Damage >= 4 and _G.RobloxAdvanced.DamageOnHit == true then
						pcall(function() Character.Humanoid:TakeDamage(math.floor(Damage)) end)
					end
				end
			end))
		end)
	end
	for _, Part in pairs(Character:GetChildren()) do ConnectTouched(Part) end
	table.insert(_G.RobloxAdvanced.Connections, Character.ChildAdded:connect(function(Part) ConnectTouched(Part) end))
	local OldHealth = Character.Humanoid.Health
	table.insert(_G.RobloxAdvanced.Connections, Character.Humanoid.Changed:connect(function(Property)
		if Property == "Health" then
			local Source = nil
			for _, Part in pairs(Character:GetChildren()) do
				if Part:IsA("BasePart") then
					if Source == nil then
						Source = Part
					else
						if math.abs(Part.Velocity.x) + math.abs(Part.Velocity.y) + math.abs(Part.Velocity.z) > math.abs(Source.Velocity.x) + math.abs(Source.Velocity.y) + math.abs(Source.Velocity.z) then
							Source = Part
						end
					end
				end
			end
			if Source == nil then return end
			if math.abs(Character.Humanoid.Health - OldHealth) > math.abs((Character.Humanoid.Health + 0.01 * 1.05 * Character.Humanoid.MaxHealth) - Character.Humanoid.Health) and _G.RobloxAdvanced.ShowDamage == true then
				local Model = Instance.new("Model", Workspace)
				Model.Name = tostring(math.floor(Character.Humanoid.Health - OldHealth))
				Model.Name = Model.Name:sub(0, 1) ~= "-" and Model.Name.. "+" or Model.Name
				local Damage = Instance.new("Part", Model)
				Damage.Name = "Head"
				Damage.BrickColor = BrickColor.new(Model.Name:match("-") and "Really red" or "Lime green")
				if (OldHealth - Character.Humanoid.Health) / Character.Humanoid.MaxHealth > 0.25 then
					coroutine.wrap(function()
						while Damage.Parent ~= nil do
							Damage.BrickColor = BrickColor.new("New Yeller")
							wait()
							Damage.BrickColor = BrickColor.new("Really blue")
							wait()
						end
					end)()
				end
				Damage.TopSurface = 0
				Damage.BottomSurface = 0
				Damage.CanCollide = false
				Damage.FormFactor = "Custom"
				Damage.Size = (OldHealth - Character.Humanoid.Health) / Character.Humanoid.MaxHealth > 0.25 and Vector3.new(1, 1, 1) or Vector3.new(0.5, 0.5, 0.5)
				Damage.CFrame = CFrame.new(Source.Position)
				coroutine.wrap(function()
					while Damage.Parent ~= nil do
						Damage.CanCollide = false
						wait()
					end
				end)()
				local Humanoid = Instance.new("Humanoid", Model)
				Humanoid.Name = "Sign"
				Humanoid.MaxHealth = 0
				Humanoid.Health = 0
				Humanoid.WalkSpeed = 0
				Humanoid.PlatformStand = true
				local BodyVelocity = Instance.new("BodyVelocity", Damage)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = Vector3.new(0, 7, 0)
				coroutine.wrap(function()
					wait(1)
					for i = 0, 1, 0.05 do
						Damage.Transparency = i
						BodyVelocity.velocity = Vector3.new(0, 7 * (1 - i), 0)
						wait()
					end
					Model:Remove()
				end)()
			end
			if OldHealth - Character.Humanoid.Health >= 3 then
				if _G.RobloxAdvanced.BloodEnabled == true then
					local Max = math.ceil((OldHealth - Character.Humanoid.Health) * 2)
					for i = 1, (Max > 20 and 20 or Max + 1) do
						local Blood = _G.RobloxAdvanced.MakeBlood()
						Blood.CFrame = Source.CFrame * CFrame.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
						Blood.Velocity = (Blood.Position - Source.Position).unit * math.random(5, 25)
						Blood.Parent = Workspace
					end
				end
				local Player = game:GetService("Players"):GetPlayerFromCharacter(Character)
				if Player ~= nil and _G.RobloxAdvanced.BloodGuiEnabled == true then
					local PlayerGui = Player:FindFirstChild("PlayerGui")
					if PlayerGui == nil then PlayerGui = Instance.new("PlayerGui", Player) end
					if PlayerGui:FindFirstChild("Pain") ~= nil then PlayerGui.Pain:Remove() end
					local Gui = Instance.new("ScreenGui")
					Gui.Name = "Pain"
					local Frame = Instance.new("Frame")
					Frame.Name = "Red"
					Frame.Size = UDim2.new(2, 0, 2, 0)
					Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
					Frame.BackgroundColor3 = Color3.new(1, 0, 0)
					Frame.BackgroundTransparency = (math.abs(OldHealth - Character.Humanoid.Health) / Character.Humanoid.MaxHealth) * 1.2
					Frame.Parent = Gui
					Gui.Parent = PlayerGui
					coroutine.wrap(function()
						for i = Frame.BackgroundTransparency, 1, 0.05 do
							Frame.BackgroundTransparency = i
							wait()
						end
						Gui:Remove()
					end)()
				end
			end
			if (OldHealth - Character.Humanoid.Health) / Character.Humanoid.MaxHealth > 0.25 and _G.RobloxAdvanced.CriticalHitsEnabled == true and Character.Humanoid.Health > 0 and RagdollStatus == false then
				RagdollStatus = true
				_G.RobloxAdvanced.Ragdoll(true, Character)
				Character.Humanoid.PlatformStand = true
				local Sound = Instance.new("Sound", Character.Torso)
				Sound.SoundId = "http://www.roblox.com/Asset/?id=2801263"
				Sound.Volume = 1
				Sound.Pitch = math.random(500, 700) / 1000
				Sound:Play()
				local Player = game:GetService("Players"):GetPlayerFromCharacter(Character)
				if Player ~= nil then
					local PlayerGui = Player:FindFirstChild("PlayerGui")
					if PlayerGui == nil then return end
					if PlayerGui:FindFirstChild("Pain") ~= nil then PlayerGui.Pain:Remove() end
					if PlayerGui:FindFirstChild("Critical Hit") ~= nil then PlayerGui.Pain:Remove() end
					local Gui = Instance.new("ScreenGui", PlayerGui)
					Gui.Name = "Critical Hit"
					local Frame = Instance.new("Frame", Gui)
					Frame.Name = "Yellow"
					Frame.Size = UDim2.new(2, 0, 2, 0)
					Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
					Frame.BackgroundColor3 = Color3.new(0.9, 0.9, 0)
					Frame.BackgroundTransparency = 0
					coroutine.wrap(function()
						for i = 0, 1, 0.01 do
							Frame.BackgroundTransparency = i
							wait()
						end
						Gui:Remove()
					end)()
					for i = 1, 5 do
						local Label = Instance.new("TextLabel", Frame)
						Label.Name = "Notification"
						Label.Position = UDim2.new(0.5, 0, 0.5, 0)
						Label.Text = "CRITICAL HIT"
						Label.FontSize = "Size18"
						Label.TextColor3 = Color3.new(1, 0.5, 0)
						Label.TextTransparency = 0
						coroutine.wrap(function()
							while Label.Parent ~= nil do
								Label.Position = UDim2.new(0.5, math.random(-25, 25), 0.5, math.random(-25, 25))
								Label.FontSize = "Size" ..tostring((function()
									local Size = math.random(1, 5)
									if Size == 1 then
										return 14
									elseif Size == 2 then
										return 18
									elseif Size == 3 then
										return 24
									elseif Size == 4 then
										return 36
									elseif Size == 5 then
										return 48
									end
								end)())
								wait()
							end
						end)()
						coroutine.wrap(function()
							for i = 0.01, 1, 0.05 do
								Label.TextTransparency = i
								wait()
							end
						end)()
					end
				end
				coroutine.wrap(function()
					wait(3)
					Character.Humanoid.PlatformStand = false
					wait(5)
					RagdollStatus = false
				end)()
			end
			OldHealth = Character.Humanoid.Health
		end
	end))
	table.insert(_G.RobloxAdvanced.Connections, Character.Humanoid.Died:connect(function()
		local Humanoid = Character:FindFirstChild("Humanoid")
		if Humanoid == nil then return end
		local Player = game:GetService("Players"):GetPlayerFromCharacter(Character)
		local Killer = nil
		if Humanoid:FindFirstChild("creator") ~= nil then
			Killer = Humanoid.creator.Value
		end
		if Killer ~= nil then
			if Killer:FindFirstChild("RobloxAdvancedKills") == nil then
				Instance.new("IntValue", Killer).Name = "RobloxAdvancedKills"
			end
			if Killer:FindFirstChild("RobloxAdvancedKillstreak") == nil then
				Instance.new("IntValue", Killer).Name = "RobloxAdvancedKillstreak"
			end
			if Player ~= nil and Player.Neutral == false and Killer.Neutral == false and Player.TeamColor == Killer.TeamColor then
				Killer.RobloxAdvancedKills.Value = Killer.RobloxAdvancedKills.Value - 2
				Killer.RobloxAdvancedKillstreak.Value = 0
			else
				Killer.RobloxAdvancedKills.Value = Killer.RobloxAdvancedKills.Value + 1
				Killer.RobloxAdvancedKillstreak.Value = Killer.RobloxAdvancedKillstreak.Value + 1
			end
		end
		if Player ~= nil then
			if Player:FindFirstChild("RobloxAdvancedDeaths") == nil then
				Instance.new("IntValue", Player).Name = "RobloxAdvancedDeaths"
			end
			if Player:FindFirstChild("RobloxAdvancedKillstreak") == nil then
				Instance.new("IntValue", Player).Name = "RobloxAdvancedKillstreak"
			end
			Player.RobloxAdvancedDeaths.Value = Player.RobloxAdvancedDeaths.Value + 1
			Player.RobloxAdvancedKillstreak.Value = 0
		end
		if _G.RobloxAdvanced.RagdollOnDeath == true then
			_G.RobloxAdvanced.Ragdoll(true, Character, true)
		end
		coroutine.wrap(function()
			if _G.RobloxAdvanced.DeathGuiEnabled == false then return end
			if Player == nil then return end
			local PlayerGui = Player:FindFirstChild("PlayerGui")
			if PlayerGui == nil then return end
			local Gui = Instance.new("ScreenGui")
			Gui.Name = "Death"
			local Frame = Instance.new("Frame")
			Frame.Name = "Black"
			Frame.Size = UDim2.new(2, 0, 2, 0)
			Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
			Frame.BackgroundColor3 = Color3.new(0, 0, 0)
			Frame.BackgroundTransparency = 1
			Frame.Parent = Gui
			local Label = Instance.new("TextLabel")
			Label.Name = "Notification"
			Label.Position = UDim2.new(0.5, 0, 0.5, 0)
			if Killer ~= nil then
				if Killer == Player then
					Label.Text = "You have killed yourself."
				else
					Label.Text = "You have been killed by " ..Killer.Name.. "."
				end
			else
				Label.Text = "You have died."
			end
			Label.FontSize = "Size24"
			Label.TextColor3 = Color3.new(1, 0.5, 0)
			Label.TextTransparency = 1
			Label.Parent = Frame
			Gui.Parent = PlayerGui
			wait(0.5)
			for i = 1, 0, -0.05 do
				Label.TextTransparency = i
				wait()
			end
			Label.BackgroundTransparency = 0
			wait(0.5)
			for i = 1, 0, -0.025 do
				Frame.BackgroundTransparency = i
				wait()
			end
			Frame.BackgroundTransparency = 0
			wait(0.5)
			for i = 0, 1, 0.05 do
				Label.TextTransparency = i
				wait()
			end
			Label.BackgroundTransparency = 1
		end)()
		wait(4.5)
		if Character == nil or _G.RobloxAdvanced.KeepCorpses == false then return end
		if Character.Parent == nil then return end
		local ReweldNeck = false
		if Character:FindFirstChild("Torso") ~= nil then
			if Character.Torso:FindFirstChild("Neck") ~= nil then
				ReweldNeck = true
			end
		end
		local Model = Instance.new("Model", Workspace)
		Model.Name = Character.Name.. "'s Corpse"
		for _, Part in pairs(Character:GetChildren()) do
			if Part.ClassName == "CharacterMesh" or Part:IsA("Clothing") or Part.ClassName == "ShirtGraphic" then
				Part:Clone().Parent = Model
			end
			for _, Part2 in pairs(Part:GetChildren()) do
				if Part2.ClassName == "Sound" then
					Part2.SoundId = ""
					Part2.Looped = false
					Part2.PlayOnRemove = false
					Part2.Volume = 0
					Part2.Pitch = 0
					Part2:Stop()
				end
			end
			if Part.ClassName == "Part" then
				pcall(function()
					Part.Parent = Model
					Part.CanCollide = true
				end)
			end
		end
		local Humanoid = Instance.new("Humanoid")
		Humanoid.Name = "Corpse"
		Humanoid.Health = 0
		Humanoid.WalkSpeed = 0
		Humanoid.PlatformStand = true
		Humanoid.Parent = Model
		if ReweldNeck == true then
			local Neck = Instance.new("Weld")
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.Parent = Torso
		end
		game:GetService("Debris"):AddItem(Model, _G.RobloxAdvanced.KeepCorpsesTime)
	end))
	table.insert(_G.RobloxAdvanced.Connections, Character.Humanoid.FallingDown:connect(function() _G.RobloxAdvanced.Ragdoll(true, Character) end))
	table.insert(_G.RobloxAdvanced.Connections, Character.Humanoid.GettingUp:connect(function() _G.RobloxAdvanced.Ragdoll(false, Character) end))
	coroutine.wrap(function()
		local function RemoveLimb(Name)
			if Character:FindFirstChild(Name) == nil then return false end
			local Model = Instance.new("Model")
			Model.Name = "Decapitated Limb"
			for _, Part in pairs(Character:GetChildren()) do
				if Part.ClassName == "CharacterMesh" or Part:IsA("Clothing") then
					Part:Clone().Parent = Model
				end
				if Part.Name == Name then
					pcall(function()
						Part.Parent = Model
						Part.CanCollide = true
						Part:BreakJoints()
					end)
				end
			end
			local Humanoid = Instance.new("Humanoid")
			Humanoid.Name = "Corpse"
			Humanoid.Health = 0
			Humanoid.MaxHealth = 0
			Humanoid.WalkSpeed = 0
			Humanoid.PlatformStand = true
			Humanoid.Parent = Model
			Model.Parent = Workspace
			game:GetService("Debris"):AddItem(Model, _G.RobloxAdvanced.KeepCorpsesTime)
			return true, Model
		end
		while true do
			if Character.Parent == nil then break end
			if Character:FindFirstChild("Torso") == nil then break end
			if Character:FindFirstChild("Humanoid") == nil then break end
			if Character.Torso:FindFirstChild("Left Shoulder") == nil and Character.Torso:FindFirstChild("LeftShoulder") == nil and Character.Torso:FindFirstChild("Left Shoulder 2") == nil then
				local Blood = _G.RobloxAdvanced.MakeBlood()
				Blood.CFrame = Character.Torso.CFrame * CFrame.new(-1.2, 0.5, 0)
				Blood.Velocity = (Blood.Position - (Character.Torso.CFrame * CFrame.new(0, 0.5, 0)).p).unit * math.random(10, 25)
				Blood.Parent = _G.RobloxAdvanced.BloodEnabled == true and Workspace
				if Character:FindFirstChild("Humanoid") ~= nil then Character.Humanoid:TakeDamage(0.25) end
				if Character:FindFirstChild("Left Arm") ~= nil then RemoveLimb("Left Arm") end
			end
			if Character.Torso:FindFirstChild("Right Shoulder") == nil and Character.Torso:FindFirstChild("RightShoulder") == nil and Character.Torso:FindFirstChild("Right Shoulder 2") == nil then
				local Blood = _G.RobloxAdvanced.MakeBlood()
				Blood.CFrame = Character.Torso.CFrame * CFrame.new(1.2, 0.5, 0)
				Blood.Velocity = (Blood.Position - (Character.Torso.CFrame * CFrame.new(0, 0.5, 0)).p).unit * math.random(10, 25)
				Blood.Parent = _G.RobloxAdvanced.BloodEnabled == true and Workspace
				if Character:FindFirstChild("Humanoid") ~= nil then Character.Humanoid:TakeDamage(0.25) end
				if Character:FindFirstChild("Right Arm") ~= nil then RemoveLimb("Right Arm") end
			end
			if Character.Torso:FindFirstChild("Left Hip") == nil and Character.Torso:FindFirstChild("LeftHip") == nil and Character.Torso:FindFirstChild("Left Hip 2") == nil then
				local Blood = _G.RobloxAdvanced.MakeBlood()
				Blood.CFrame = Character.Torso.CFrame * CFrame.new(-0.5, -1.2, 0)
				Blood.Velocity = (Blood.Position - (Character.Torso.CFrame * CFrame.new(-0.5, 0, 0)).p).unit * math.random(4, 8)
				Blood.Parent = _G.RobloxAdvanced.BloodEnabled == true and Workspace
				if Character:FindFirstChild("Humanoid") ~= nil then Character.Humanoid:TakeDamage(0.25) end
				if Character:FindFirstChild("Left Leg") ~= nil then RemoveLimb("Left Leg") end
			end
			if Character.Torso:FindFirstChild("Right Hip") == nil and Character.Torso:FindFirstChild("RightHip") == nil and Character.Torso:FindFirstChild("Right Hip 2") == nil then
				local Blood = _G.RobloxAdvanced.MakeBlood()
				Blood.CFrame = Character.Torso.CFrame * CFrame.new(0.5, -1.2, 0)
				Blood.Velocity = (Blood.Position - (Character.Torso.CFrame * CFrame.new(0.5, 0, 0)).p).unit * math.random(4, 80)
				Blood.Parent = _G.RobloxAdvanced.BloodEnabled == true and Workspace
				if Character:FindFirstChild("Humanoid") ~= nil then Character.Humanoid:TakeDamage(0.25) end
				if Character:FindFirstChild("Right Leg") ~= nil then RemoveLimb("Right Leg") end
			end
			if Character.Torso:FindFirstChild("Neck") == nil then
				local Blood = _G.RobloxAdvanced.MakeBlood()
				Blood.CFrame = Character.Torso.CFrame * CFrame.new(0, 1, 0)
				Blood.Velocity = (Blood.Position - Character.Torso.Position).unit * math.random(25, 75)
				Blood.Parent = _G.RobloxAdvanced.BloodEnabled == true and Workspace
				if Character:FindFirstChild("Head") ~= nil then
					local Blood = _G.RobloxAdvanced.MakeBlood()
					Blood.CFrame = Character.Head.CFrame * CFrame.new(0, -0.5, 0)
					Blood.Velocity = (Blood.Position - Character.Head.Position).unit * math.random(5, 25)
					Blood.Parent = Workspace
				end
			end
			wait(0.11)
		end
	end)()
end
_G.RobloxAdvanced.Ragdoll = function(Format, Character, Force)
	if Force ~= true then
		if Character:FindFirstChild("Ragdoll") ~= nil and Format == true then return false end
		if Character:FindFirstChild("Ragdoll") == nil and Format == false then return false end
	end
	local Head = nil
	local Torso = nil
	local Humanoid = nil
	local Dead = false
	for _, Children in pairs(Character:GetChildren()) do
		if Children.ClassName == "ForceField" then Children:Remove() end
		if Children.Name == "" then Children:Remove() end
		if Children.Name == "Head" then Head = Children end
		if Children.Name == "Torso" then Torso = Children end
		if Children.ClassName == "Humanoid" then Humanoid = Children end
		if Children:IsA("Accoutrement") then
			if Children:FindFirstChild("Handle") ~= nil then
				if math.random(1, 3) == 1 then
					coroutine.wrap(function()
						Children.Parent = Workspace
						wait()
						Children.Parent = Character
						Children.Handle.CanCollide = true
					end)()
				else
					Children.Parent = Workspace
					Children.Handle.CanCollide = true
				end
			else
				Children:Remove()
			end
		end
	end
	if Humanoid ~= nil then
		if Humanoid.Health <= 0 then
			Dead = true
		end
	end
	if Torso ~= nil then
		for _, Children2 in pairs(Torso:GetChildren()) do
			if Children2:IsA("JointInstance") then
				Children2:Remove()
			end
		end
	end
	if Head ~= nil and (function()
		if Dead == true and math.random(1, 2) == 1 then
			return true
		else
			return false
		end
	end)() == false then
		local Neck = Instance.new("Motor6D")
		Neck.Name = "Neck"
		Neck.Part0 = Torso
		Neck.Part1 = Head
		Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
		Neck.C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
		Neck.MaxVelocity = 0.1
		Neck.Parent = Torso
	end
	if Format == true then
		local Ragdoll = Instance.new("IntValue")
		Ragdoll.Name = "Ragdoll"
		Ragdoll.Parent = Character
		if Torso ~= nil then
			Torso.Velocity = Torso.Velocity / 1.25
			Torso.RotVelocity = (Torso.RotVelocity / 1.25) + Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
			if Dead == true then
				if Humanoid ~= nil then
					local Humanoid2 = Humanoid:Clone()
					wait()
					Humanoid:Remove()
					Humanoid2.Parent = Character
					Humanoid = Humanoid2
				end
			end
			local Limb = Character:FindFirstChild("Right Arm")
			if Limb ~= nil then
				Limb.Velocity = Torso.Velocity
				Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "RightShoulder"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.Parent = Torso
				local Weight = Instance.new("Part")
				Weight.Name = ""
				Weight.TopSurface = 0
				Weight.BottomSurface = 0
				Weight.Shape = "Block"
				Weight.FormFactor = "Custom"
				Weight.Size = Vector3.new(1, 1, 1)
				Weight.Transparency = 1
				Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				Weight.Parent = Character
				local Weld = Instance.new("Weld")
				Weld.Part0 = Limb
				Weld.Part1 = Weight
				Weld.C0 = CFrame.new(0, -0.5, 0)
				Weld.Parent = Limb
			end
			local Limb = Character:FindFirstChild("Left Arm")
			if Limb then
				Limb.Velocity = Torso.Velocity
				Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "LeftShoulder"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.Parent = Torso
				local Weight = Instance.new("Part")
				Weight.Name = ""
				Weight.TopSurface = 0
				Weight.BottomSurface = 0
				Weight.Shape = "Block"
				Weight.FormFactor = "Custom"
				Weight.Size = Vector3.new(1, 1, 1)
				Weight.Transparency = 1
				Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				Weight.Parent = Character
				local Weld = Instance.new("Weld")
				Weld.Part0 = Limb
				Weld.Part1 = Weight
				Weld.C0 = CFrame.new(0, -0.5, 0)
				Weld.Parent = Limb
			end
			local Limb = Character:FindFirstChild("Right Leg")
			if Limb then
				Limb.Velocity = Torso.Velocity
				Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "RightHip"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.Parent = Torso
				local Weight = Instance.new("Part")
				Weight.Name = ""
				Weight.TopSurface = 0
				Weight.BottomSurface = 0
				Weight.Shape = "Block"
				Weight.FormFactor = "Custom"
				Weight.Size = Vector3.new(1, 1, 1)
				Weight.Transparency = 1
				Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				Weight.Parent = Character
				local Weld = Instance.new("Weld")
				Weld.Part0 = Limb
				Weld.Part1 = Weight
				Weld.C0 = CFrame.new(0, -0.5, 0)
				Weld.Parent = Limb
			end
			local Limb = Character:FindFirstChild("Left Leg")
			if Limb then
				Limb.Velocity = Torso.Velocity
				Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "LeftHip"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.Parent = Torso
				local Weight = Instance.new("Part")
				Weight.Name = ""
				Weight.TopSurface = 0
				Weight.BottomSurface = 0
				Weight.Shape = "Block"
				Weight.FormFactor = "Custom"
				Weight.Size = Vector3.new(1, 1, 1)
				Weight.Transparency = 1
				Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				Weight.Parent = Character
				local Weld = Instance.new("Weld")
				Weld.Part0 = Limb
				Weld.Part1 = Weight
				Weld.C0 = CFrame.new(0, -0.5, 0)
				Weld.Parent = Limb
			end
			local Weight = Instance.new("Part")
			Weight.Name = ""
			Weight.TopSurface = 0
			Weight.BottomSurface = 0
			Weight.Shape = "Block"
			Weight.FormFactor = "Custom"
			Weight.Size = Vector3.new(1.75, 1.5, 1.1)
			Weight.Transparency = 1
			Weight.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
			Weight.Parent = Character
			local Weld = Instance.new("Weld")
			Weld.Part0 = Torso
			Weld.Part1 = Weight
			Weld.C0 = CFrame.new(0, 0.5, 0)
			Weld.Parent = Torso
		end
	elseif Format == false then
		if Character:FindFirstChild("Ragdoll") ~= nil then Character.Ragdoll:Remove() end
		if Torso ~= nil then
			local Limb = Character:FindFirstChild("Right Arm")
			if Limb ~= nil then
				local Joint = Instance.new("Motor6D")
				Joint.Name = "Right Shoulder"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.MaxVelocity = 0.15
				Joint.Parent = Torso
			end
			local Limb = Character:FindFirstChild("Left Arm")
			if Limb ~= nil then
				local Joint = Instance.new("Motor6D")
				Joint.Name = "Left Shoulder"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.MaxVelocity = 0.15
				Joint.Parent = Torso
			end
			local Limb = Character:FindFirstChild("Right Leg")
			if Limb ~= nil then
				local Joint = Instance.new("Motor6D")
				Joint.Name = "Right Hip"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.MaxVelocity = 0.1
				Joint.Parent = Torso
			end
			local Limb = Character:FindFirstChild("Left Leg")
			if Limb ~= nil then
				local Joint = Instance.new("Motor6D")
				Joint.Name = "Left Hip"
				Joint.Part0 = Torso
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.MaxVelocity = 0.1
				Joint.Parent = Torso
			end
			local Animate = Character:FindFirstChild("Animate")
			if Animate ~= nil then
				local Animate2 = Animate:Clone()
				Animate:Remove()
				Animate2.Parent = Character
			end
		end
	else
		return false
	end
	return true, Format
end
table.insert(_G.RobloxAdvanced.Connections, Workspace.DescendantAdded:connect(_G.RobloxAdvanced.HookModelDeath))
table.insert(_G.RobloxAdvanced.Connections, game:GetService("Players").PlayerAdded:connect(_G.RobloxAdvanced.HookPlayerDeath))
for _, Players in pairs(game:GetService("Players"):GetPlayers()) do
	_G.RobloxAdvanced.HookPlayerDeath(Players)
end
for _, Children in pairs(Workspace:GetChildren()) do
	_G.RobloxAdvanced.HookModelDeath(Children)
end