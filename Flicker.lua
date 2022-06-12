script.Name = "FlickerControl"
script.Parent = game
Owner = "DarkShadow6"
Flickers = {}
FlickerTarget = game:GetService("Players")[Owner].Character.Torso
FlickerNoFly = false


function FlickerSpawn(Player)
	local Flicker = Instance.new("Model")
	Flicker.Name = "Flicker"
	local Head = Instance.new("Part")
	Head.Name = "Head"
	Head.FormFactor = "Custom"
	Head.Shape = "Ball"
	Head.Size = Vector3.new(1, 1, 1)
	Head.BrickColor = BrickColor.new("Bright blue")
	Head.Transparency = 0.1
	Head.TopSurface = "Smooth"
	Head.BottomSurface = "Smooth"
	Head.Parent = Flicker
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.3, 0.3, 0.3)
	Mesh.Parent = Head
	local Glow = Instance.new("Part")
	Glow.Name = "Glow"
	Glow.FormFactor = "Custom"
	Glow.Shape = "Ball"
	Glow.Size = Vector3.new(1, 1, 1)
	Glow.BrickColor = BrickColor.new("Bright blue")
	Glow.Transparency = 0.5
	Glow.TopSurface = "Smooth"
	Glow.BottomSurface = "Smooth"
	Glow.Parent = Flicker
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.75, 0.75, 0.75)
	Mesh.Parent = Glow
	local Weld = Instance.new("Weld")
	Weld.Part0 = Head
	Weld.Part1 = Glow
	Weld.Parent = Head
	local BodyPosition = Instance.new("BodyPosition")
	BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	BodyPosition.P = 10000
	BodyPosition.D = 500
	BodyPosition.Parent = Head
	if Player.Character ~= nil then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			Head.BrickColor = Player.Character.Torso.BrickColor
			Glow.BrickColor = Player.Character.Torso.BrickColor
		end
	end
	return Flicker
end


function FlickerSpeak(Flicker, Text)
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Parent = Flicker
	BillboardGui.Adornee = Flicker:FindFirstChild("Head")
	BillboardGui.Size = UDim2.new(1, 0, 1, 0)
	BillboardGui.StudsOffset = Vector3.new(0, 0.5, 0)
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = BillboardGui
	TextLabel.Position = UDim2.new(0, 0, 0, 0)
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.FontSize = "Size14"
	TextLabel.TextColor3 = Flicker.Head.BrickColor.Color
	TextLabel.BackgroundTransparency = 1
	coroutine.wrap(function()
		for i = 1, 100 do
			BillboardGui.StudsOffset = BillboardGui.StudsOffset + Vector3.new(0, 0.025, 0)
			wait()
		end
		for i = 0, 1, 0.05 do
			BillboardGui.StudsOffset = BillboardGui.StudsOffset + Vector3.new(0, 0.025 * (1 - i), 0)
			TextLabel.TextTransparency = i
			wait()
		end
		BillboardGui:Remove()
	end)()
end


function onChatted(Message, Recipient, speaker)
	if script == nil then return end
	if script.Parent == nil then return end
	if string.sub(Message, 0, 4) == "/sc " then
		Message = string.sub(Message, 5)
	elseif string.sub(Message, 0, 5) == "lego " then
		Message = string.sub(Message, 6)
	elseif string.sub(Message, 0, 10) == "minecraft " then
		Message = string.sub(Message, 11)
	elseif string.sub(Message, 0, 10) == "runescape " then
		Message = string.sub(Message, 11)
	end
	if string.sub(Message, 0, 14):lower() == "flicker/spawn/" then
		for i = 1, tonumber(string.sub(Message, 15)) > 10 and 10 or tonumber(string.sub(Message, 15)) do
			coroutine.wrap(function()
				local Flicker = FlickerSpawn(game:GetService("Players")[Owner])
				local Position = 0
				Flicker.Parent = Workspace
				table.insert(Flickers, Flicker)
				if FlickerTarget == nil then
					if pcall(function() local _ = game:GetService("Players")[Owner].Character.Torso end) == true then
						Flicker:MoveTo(game:GetService("Players")[Owner].Character.Torso.Position + Vector3.new(math.random(-10, 10), math.random(8, 12), math.random(-10, 10)))
					else
						Flicker:MoveTo(Vector3.new(0, 10, 0))
					end
				else
					Flicker:MoveTo(FlickerTarget.Position + Vector3.new(0, 50, 0))
				end
				Flicker.Head.BodyPosition.position = Flicker.Head.Position
				FlickerSpeak(Flicker, (function()
					local Speak = math.random(1, 6)
					if Speak == 1 then
						return "Hi!"
					elseif Speak == 2 then
						return "Hey there!"
					elseif Speak == 3 then
						return "Nya~!"
					elseif Speak == 4 then
						return "Nya nya~!"
					elseif Speak == 5 then
						return ":3"
					elseif Speak == 6 then
						return "Whee!"
					end
				end)())
				while true do
					if script == nil then return end
					if script.Parent == nil then return end
					if Flicker.Parent == nil then Flicker.Parent = Workspace end
					if Flicker:FindFirstChild("Head") == nil then break end
					if Flicker.Head:FindFirstChild("Weld") == nil then break end
					if Flicker.Head:FindFirstChild("BodyPosition") == nil then break end
					if Flicker:FindFirstChild("Glow") == nil then break end
					if game:GetService("Players"):FindFirstChild(Owner) == nil then break end
					Position = Position + math.random(30, 80) / 1000
					if FlickerNoFly == false then
						if FlickerTarget ~= nil then
							Flicker.Head.BodyPosition.position = FlickerTarget.Position + Vector3.new(math.sin(Position) * 4, math.sin(Position / 2.175) + 3, math.cos(Position) * 4)
						else
							Flicker.Head.BodyPosition.position = Flicker.Head.BodyPosition.position + Vector3.new(0, math.sin(Position / 2.175) / 50, 0)
						end
					end
					wait()
				end
				for i = 1, #Flickers do
					if Flickers[i] == Flicker then
						table.remove(Flickers, i)
						break
					end
				end
				if Flicker.Parent ~= nil then
					if Flicker:FindFirstChild("Head") ~= nil then
						if Flicker.Head:FindFirstChild("BodyPosition") ~= nil then
							Flicker.Head.BodyPosition:Remove()
						end
						Flicker.Head.BrickColor = BrickColor.new("Really black")
						Flicker.Head.Anchored = true
						FlickerSpeak(Flicker, (function()
							local Speak = math.random(1, 7)
							if Speak == 1 then
								return "Nooo!"
							elseif Speak == 2 then
								return "D:"
							elseif Speak == 3 then
								return "I'm too cute to die!"
							elseif Speak == 4 then
								return "I'm too kawaii to die!"
							elseif Speak == 5 then
								return ":C"
							elseif Speak == 6 then
								return "What have you done?!"
							elseif Speak == 7 then
								return "Oh noes!"
							end
						end)())
					end
					if Flicker:FindFirstChild("Glow") ~= nil then
						Flicker.Glow.BrickColor = BrickColor.new("Really black")
						Flicker.Glow.Anchored = true
					end
					wait(math.random(1, 5))
					if Flicker:FindFirstChild("Head") ~= nil then
						Flicker.Head.Anchored = false
						Flicker.Head.CanCollide = false
					end
					if Flicker:FindFirstChild("Glow") ~= nil then
						Flicker.Glow.Anchored = false
						Flicker.Glow.CanCollide = false
					end
					wait(2)
					Flicker:Remove()
				end
			end)()
			wait(math.random(2, 10) / 10)
		end
	end
	if Message:lower() == "flicker/die/" then
		for i = 1, #Flickers do
			Flickers[i]:BreakJoints()
		end
	end
	if string.sub(Message, 1, 14):lower() == "flicker/color/" then
		for i = 1, #Flickers do
			for _, Children in pairs(Flickers[i]:GetChildren()) do
				if Children:IsA("BasePart") then
					Children.BrickColor = BrickColor.new(string.sub(Message, 15))
				end
			end
			if math.random(1, 3) == 1 then
				FlickerSpeak(Flickers[i], (function()
					local Speak = math.random(1, 7)
					if Speak == 1 then
						return "I feel pretty. Is that wrong?"
					elseif Speak == 2 then
						return "Rockin' the styles!"
					elseif Speak == 3 then
						return "I look gooooood!"
					elseif Speak == 4 then
						return "Nya~!"
					elseif Speak == 5 then
						return "A makeover? Really?"
					elseif Speak == 6 then
						return "This color fits me."
					elseif Speak == 7 then
						return "This color doesn't fit me..."
					end
				end)())
			end
			wait(0.05)
		end
	end
	if Message:lower() == "flicker/come/" then
		FlickerNoFly = false
		if game:GetService("Players")[Owner].Character ~= nil then
			FlickerTarget = game:GetService("Players")[Owner].Character:FindFirstChild("Torso")
			for i = 1, #Flickers do
				if math.random(1, 3) == 1 then
					FlickerSpeak(Flickers[i], (function()
						local Speak = math.random(1, 7)
						if Speak == 1 then
							return "Here I come, " ..Owner.. "!"
						elseif Speak == 2 then
							return "Let's do this!"
						elseif Speak == 3 then
							return "Time to get the lead out."
						elseif Speak == 4 then
							return "Yessir!"
						elseif Speak == 5 then
							return "Yes, sir!"
						elseif Speak == 6 then
							return "Here we go!"
						elseif Speak == 7 then
							return "I'll protect you, " ..Owner.."!"
						end
					end)())
				end
			end
		end
	end
	if string.sub(Message, 1, 14):lower() == "flicker/speak/" then
		local Flicker1 = nil
		for i = 1, 1000 do
			if Flicker1 ~= nil then break end
			Flicker1 = Flickers[math.random(1, #Flickers)]
		end
		if Flicker1 ~= nil then
			FlickerSpeak(Flicker1, string.sub(Message, 15))
		end
	end
	if Message:lower() == "flicker/about/" then
		if #Flickers <= 0 then return end
		local Flicker1 = nil
		local Flicker2 = nil
		local Flicker3 = nil
		while Flicker1 == nil and #Flickers > 0 do
			Flicker1 = Flickers[math.random(1, #Flickers)]
		end
		while Flicker2 == nil and #Flickers > 0 do
			Flicker2 = Flickers[math.random(1, #Flickers)]
		end
		while Flicker2 == nil and #Flickers > 0 do
			Flicker2 = Flickers[math.random(1, #Flickers)]
		end
		if Flicker1 == Flicker2 then Flicker2 = nil end
		if Flicker1 == Flicker3 then Flicker3 = nil end
		if Flicker2 == Flicker3 then Flicker3 = nil end
		if Flicker1 == nil then return end
		FlickerSpeak(Flicker1, "I am a Flicker.")
		wait(3)
		FlickerSpeak(Flicker1, math.random(1, 2) == 1 and "We are floating orbs of magicy stuff." or "We are manifestations of magic.")
		wait(3)
		FlickerSpeak(Flicker1, "No human can describe what we are, really...")
		wait(2)
		local Speak = math.random(1, 3)
		if Speak == 1 and Flicker2 ~= nil and Flicker3 ~= nil then
			FlickerSpeak(Flicker2, "We are what we are!")
			wait(2)
			FlickerSpeak(Flicker3, "We are forever!")
			wait(2)
			FlickerSpeak(Flicker1, "Quiet, you two. I'm telling a story!")
		elseif Speak == 1 and Flicker2 ~= nil and Flicker3 == nil then
			FlickerSpeak(Flicker2, "We are what we are!")
			wait(3)
			FlickerSpeak(Flicker2, "We are forever!")
			wait(2)
			FlickerSpeak(Flicker1, "Quiet, you. I'm telling a story!")
		elseif Speak == 2 and Flicker2 ~= nil and Flicker3 ~= nil then
			FlickerSpeak(Flicker2, "We do not exist!")
			wait(1.5)
			FlickerSpeak(Flicker3, "I'm not even here right now!")
			wait(3)
			FlickerSpeak(Flicker1, "Stop that. You're confusing " ..Owner.. ".")
		elseif Speak == 2 and Flicker2 ~= nil and Flicker3 == nil then
			FlickerSpeak(Flicker2, "I'm not even here right now!")
			wait(2)
			FlickerSpeak(Flicker2, "I do not exist!")
			wait(3)
			FlickerSpeak(Flicker1, "You're getting " ..Owner.. " all confused.")
		elseif Speak == 3 and Flicker2 ~= nil and Flicker3 ~= nil then
			FlickerSpeak(Flicker2, "Don't stare at me too long, you might go blind!")
			wait(2)
			FlickerSpeak(Flicker3, "I work well as a lightbulb!")
			wait(3)
			FlickerSpeak(Flicker1, "No you won't, and no you don't. Now where was I?")
		elseif Speak == 3 and Flicker2 ~= nil and Flicker3 == nil then
			FlickerSpeak(Flicker2, "I also work well as a lightbulb.")
			wait(2)
			FlickerSpeak(Flicker1, "No you don't. Now where was I?")
		end
		wait(3)
		FlickerSpeak(Flicker1, "Somehow we all can reason and think like you humans.")
		wait(2.5)
		FlickerSpeak(Flicker1, "And for some other reason we find happiness in serving people.")
		wait(1)
		local Speak = math.random(1, 2)
		if Speak == 1 and Flicker2 ~= nil and Flicker3 ~= nil then
			FlickerSpeak(Flicker2, "I refuse to put any sort of maid outfit on.")
			wait(1)
			FlickerSpeak(Flicker3, "I bet you'd look good...")
			wait(2)
			FlickerSpeak(Flicker1, "Shut it, you two.")
		elseif Speak == 1 and Flicker2 ~= nil and Flicker3 == nil then
			FlickerSpeak(Flicker2, "I refuse to put any sort of maid outfit on.")
			wait(2)
			FlickerSpeak(Flicker1, "Like you'd fit. Now let me continue.")
		elseif Speak == 2 and Flicker2 ~= nil and Flicker3 ~= nil then
			FlickerSpeak(Flicker2, "HOW MAY I SERVE YOU MASTER.")
			wait(1.5)
			FlickerSpeak(Flicker3, "MAY I FETCH YOU A DRINK?")
			wait(2)
			FlickerSpeak(Flicker1, "Oh for the love of... I'll just continue.")
		elseif Speak == 2 and Flicker2 ~= nil and Flicker3 == nil then
			FlickerSpeak(Flicker2, "HOW MAY I SERVE YOU MASTER?")
			wait(2)
			FlickerSpeak(Flicker1, "Ignore him, I'll just continue.")
		end
		wait(3.5)
		FlickerSpeak(Flicker1, math.random(1, 2) == 1 and "Give us some orders." or "Go ahead and give us some orders.")
		wait(2.5)
		FlickerSpeak(Flicker1, math.random(1, 2) == 1 and "We like it! :3" or "We like it.")
	end
	if string.sub(Message, 1, 15):lower() == "flicker/attack/" then
		FlickerNoFly = true
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), string.sub(Message, 16):lower()) then
				if PlayerList.Character ~= nil and PlayerList.Name ~= Owner then
					if PlayerList.Character:FindFirstChild("Torso") ~= nil and PlayerList.Character:FindFirstChild("Humanoid") ~= nil then
						while PlayerList.Character.Humanoid.Health > 0 and FlickerNoFly do
							for i = 1, #Flickers do
								if pcall(function() local _ = Flickers[i].Parent.Name end) == true then
									if Flickers[i]:FindFirstChild("Head") ~= nil then
										if Flickers[i].Head:FindFirstChild("BodyPosition") ~= nil then
											Flickers[i].Head.BodyPosition.position = PlayerList.Character.Torso.Position
										end
										if (Flickers[i].Head.Position - PlayerList.Character.Torso.Position).magnitude < 3 then
											PlayerList.Character.Humanoid:TakeDamage(math.random(1, 100) / 100)
											if math.random(1, 100) == 1 then
												FlickerSpeak(Flickers[i], (function()
													local Speak = math.random(1, 7)
													if Speak == 1 then
														return "Nom!"
													elseif Speak == 2 then
														return "Om!"
													elseif Speak == 3 then
														return "Om nom nom!"
													elseif Speak == 4 then
														return "Rawr >:3"
													elseif Speak == 5 then
														return "Nya nya~!"
													elseif Speak == 6 then
														return "I eat your soul! Muhahah!"
													elseif Speak == 7 then
														return "Tastes like chicken."
													end
												end)())
											end
										end
									end
								end
							end
							wait()
						end
					end
				end
			end
		end
		FlickerNoFly = false
	end
	if string.sub(Message, 1, 15):lower() == "flicker/follow/" then
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), string.sub(Message, 16):lower()) then
				if PlayerList.Character ~= nil then
					if PlayerList.Character:FindFirstChild("Torso") ~= nil then
						FlickerTarget = PlayerList.Character.Torso
						for i = 1, #Flickers do
							if pcall(function() local _ = Flickers[i].Parent.Name end) == true then
								if math.random(1, 3) == 1 then
									FlickerSpeak(Flickers[i], (function()
										local Speak = math.random(1, 7)
										if Speak == 1 then
											return "Off we go!"
										elseif Speak == 2 then
											return "Yessir!"
										elseif Speak == 3 then
											return "Yes, sir!"
										elseif Speak == 4 then
											return "Ooh, someone new to meet?"
										elseif Speak == 5 then
											return "Hi there, " ..FlickerTarget.Parent.Name.. "!"
										elseif Speak == 6 then
											return "Nice to meet you, " ..FlickerTarget.Parent.Name.. "."
										elseif Speak == 7 then
											return "Cool, where are we going now?"
										end
									end)())
								end
							end
						end
						return
					end
				end
			end
		end
	end
	if Message:lower() == "flicker/stop/" then
		FlickerNoFly = false
		FlickerTarget = nil
		for i = 1, #Flickers do
			if pcall(function() local _ = Flickers[i].Parent.Name end) == true then
				if math.random(1, 2) == 1 then
					FlickerSpeak(Flickers[i], (function()
						local Speak = math.random(1, 7)
						if Speak == 1 then
							return "Aww, why do I have to stop?"
						elseif Speak == 2 then
							return "But I want to go somewhere!"
						elseif Speak == 3 then
							return "Standing still is for losers!"
						elseif Speak == 4 then
							return "But " ..Owner.. "..."
						elseif Speak == 5 then
							return "Stop! Flicker time!"
						elseif Speak == 6 then
							return "I'll stay here."
						elseif Speak == 7 then
							return "I call watchdog!"
						end
					end)())
				end
			end
		end
	end
	if Message:lower() == "flicker/disperse/" then
		FlickerTarget = nil
		for i = 1, #Flickers do
			if pcall(function() local _ = Flickers[i].Parent.Name end) == true then
				if pcall(function() local _ = game:GetService("Players")[Owner].Character.Torso end) == true then
					Flickers[i].Head.BodyPosition.position = game:GetService("Players")[Owner].Character.Torso.Position + Vector3.new(math.random(-15, 15), math.random(8, 25), math.random(-15, 15))
				else
					Flickers[i].Head.BodyPosition.position = Vector3.new(0, 10, 0) + Vector3.new(math.random(-10, 10), math.random(8, 12), math.random(-10, 10))
				end
				if math.random(1, 2) == 1 then
					FlickerSpeak(Flickers[i], (function()
						local Speak = math.random(1, 7)
						if Speak == 1 then
							return "Run!"
						elseif Speak == 2 then
							return "Ninja style!"
						elseif Speak == 3 then
							return "Alley-oop!"
						elseif Speak == 4 then
							return "Get outta' the way!"
						elseif Speak == 5 then
							return "Move yourself!"
						elseif Speak == 6 then
							return "Time to move!"
						elseif Speak == 7 then
							return "Let's get out of here!"
						end
					end)())
				end
			end
		end
	end
	if string.sub(Message, 1, 14):lower() == "flicker/owner/" then
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), string.sub(Message, 15):lower()) then
				local Hint1 = Instance.new("Hint", game:GetService("Players")[Owner].PlayerGui)
				Hint1.Text = "You have given control over the Flickers to " ..PlayerList.Name.. "."
				coroutine.wrap(function() wait(3) Hint1:Remove() end)()
				Owner = PlayerList.Name
				pcall(function() Connection:disconnect() end)
				Connection = game:GetService("Players")[Owner].Chatted:connect(function(Message, Recipient) onChatted(Message, Recipient, game:GetService("Players")[Owner]) end)
				local Hint2 = Instance.new("Hint", game:GetService("Players")[Owner].PlayerGui)
				Hint2.Text = "You have been given control over the Flickers."
				coroutine.wrap(function() wait(3) Hint2:Remove() end)()
				return
			end
		end
	end
end


Connection = game:GetService("Players")[Owner].Chatted:connect(function(Message, Recipient) onChatted(Message, Recipient, game:GetService("Players")[Owner]) end)