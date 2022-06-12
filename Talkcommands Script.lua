function onChatted(msg, recipient, speaker)

	-- convert to all lower case

	local source = string.lower(speaker.Name)
	msg = string.lower(msg)

	
	if (msg == "day") then
		game.Lighting.TimeOfDay = "14:00:00"
	end
	

	if (msg == "night") then
		game.Lighting.TimeOfDay = "00:00:00"
	end

	if (msg == "normal") then

		game.Lighting.TimeOfDay = "0:00:00"
		game.Lighting.TopAmbientV9 = Color3.new(215,214,223)
		game.Lighting.SpotLightV9 = Color3.new(197,197,197)
		game.Lighting.BottomAmbientV9 = Color3.new(122,140,120)
		game.Lighting.TimeOfDay = "14:00:00"

	end

	if (msg == "neon") then

		game.Lighting.TopAmbientV9 = Color3.new(0,255,255)
		game.Lighting.SpotLightV9 = Color3.new(0,255,255)
		game.Lighting.BottomAmbientV9 = Color3.new(0,255,255)

	end

	if (msg == "red") then

		game.Lighting.TopAmbientV9 = Color3.new(255,0,0)
		game.Lighting.SpotLightV9 = Color3.new(255,0,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,0,0)

	end

	if (msg == "yellow") then

		game.Lighting.TopAmbientV9 = Color3.new(255,255,0)
		game.Lighting.SpotLightV9 = Color3.new(255,255,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,255,0)

	end

	if (msg == "green") then
--These colour changes are thanks to clockwork's Avada kadavra! tool.  I just changes the numbers =)
		game.Lighting.TopAmbientV9 = Color3.new(0,255,0)
		game.Lighting.SpotLightV9 = Color3.new(0,255,0)
		game.Lighting.BottomAmbientV9 = Color3.new(0,255,0)

	end

	if (msg == "blue") then

		game.Lighting.TopAmbientV9 = Color3.new(0,0,255)
		game.Lighting.SpotLightV9 = Color3.new(0,0,255)
		game.Lighting.BottomAmbientV9 = Color3.new(0,0,255)

	end

	if (msg == "black") then

		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.TopAmbientV9 = Color3.new(0,0,0)
		game.Lighting.SpotLightV9 = Color3.new(0,0,0)
		game.Lighting.BottomAmbientV9 = Color3.new(0,0,0)

	end

	if (msg == "white") then

		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.TopAmbientV9 = Color3.new(255,255,255)
		game.Lighting.SpotLightV9 = Color3.new(255,255,255)
		game.Lighting.BottomAmbientV9 = Color3.new(255,255,255)

	end

	-- Below is the admin commands.
	if (source ~= "epicikr") then return end --Change brandonhare to your name.

	if (msg == "die") then --Change this if you want.
		local m = Instance.new("Message")
		m.Text = "EVERYONE IS GONNA DIE!!!!!!!!!!"--Change this if you want.
		m.Parent = game.Workspace
		wait(4)
		local c = game.Players:children()
		for i=1,#c do
			if (string.lower(c[i].Name) ~= "epicikr") then
				if (c[i].Character ~= nil and c[i].Character.Humanoid ~= nil) then
					c[i].Character.Humanoid.Health = 0
				end
			end
		end
		wait(2)
		m.Parent = nil
	end

	if (msg == "peoplewhite") then
		local c = game.Players:children()
		for i=1,#c do
			if (string.lower(c[i].Name) ~= "epicikr") then --Change brandonhare to your name.
				if (c[i].Character ~= nil and c[i].Character.Humanoid ~= nil) then
					c[i].Character:findFirstChild("Head").BrickColor = BrickColor.new(1)
					c[i].Character:findFirstChild("Torso").BrickColor = BrickColor.new(1)
					c[i].Character:findFirstChild("Left Arm").BrickColor = BrickColor.new(1)
					c[i].Character:findFirstChild("Right Arm").BrickColor = BrickColor.new(1)
					c[i].Character:findFirstChild("Left Leg").BrickColor = BrickColor.new(1)
					c[i].Character:findFirstChild("Right Leg").BrickColor = BrickColor.new(1)

				end
			end
		end
	end

	if (msg == "freeze") then
		local c = game.Players:children()
		for i=1,#c do
			if (string.lower(c[i].Name) ~= "epicikr") then --Change brandonhare to your name.
				if (c[i].Character ~= nil and c[i].Character.Humanoid ~= nil) then
					c[i].Character:findFirstChild("Torso").Anchored = true

				end
			end
		end
	end

	if (msg == "thaw") then
		local c = game.Players:children()
		for i=1,#c do
			if (string.lower(c[i].Name) ~= "epicikr") then --Change brandonhare to your name.
				if (c[i].Character ~= nil and c[i].Character.Humanoid ~= nil) then
					c[i].Character:findFirstChild("Torso").Anchored = false

				end
			end
		end
	end


	if (msg == "savagebeating") then --You may want to change this.
		local m = Instance.new("Message")
		m.Text = "OH NO!  INVISIBLE MONKEYS ARE GOING TO HURT YOU!!!!"--Change this. It's random.
		m.Parent = game.Workspace
		wait(4)
		local c = game.Players:children()
		for i=1,#c do
			if (string.lower(c[i].Name) ~= "epicikr") then --Change brandonhare to your name.
				if (c[i].Character ~= nil and c[i].Character.Humanoid ~= nil) then
					c[i].Character.Humanoid.Health = 1
				end
			end
		end
		wait(2)
		m.Parent = nil
	end

	if (msg == "zeekyboogydoog") then--Change this to boom! or somthing if you want too.
		local m = Instance.new("Message")
		m.Text = "RANDOM PEOPLE ARE SAYING ZEEKY BOOGY DOOG!!!!!!!"--You may want to change this
		m.Parent = game.Workspace
		wait(4)
		for i=1,100 do
			local x = math.random(17.5,76.5)
			local y = math.random(0,41.6)
			local z = math.random(-115,101)

			local r = math.random(6,16)

			local ex = Instance.new("Explosion")
			ex.Position = Vector3.new(x,y,z)
			ex.BlastRadius = r
			ex.Parent = game.Workspace
			wait(.05)
		end
		wait(2)
		m.Parent = nil
	end

	if (msg == "brandonwantbigboom") then
		local m = Instance.new("Message")
		m.Text = "THIS LEVEL HAS 4 SECONDS TO LIVE!!!! You may touch the teapot after this."
		m.Parent = game.Workspace
		wait(4)


		local ex = Instance.new("Explosion")
		ex.Position = Vector3.new(29.5,0.2,-7)--Change these numbers or the explosion might be somewhere unuseful.
		ex.BlastRadius = 300
		ex.Parent = game.Workspace
		m.Parent = nil
	end

	if (msg == "listen") then

		local m = Instance.new("Message")
		m.Text = "EVERYONE STOP TALKING AND LISTEN TO Epicikr!!!!!!!!"
		m.Parent = game.Workspace --Change BRANDONHARE (above) to your name.
		game.Lighting.TopAmbientV9 = Color3.new(255,0,0)
		game.Lighting.SpotLightV9 = Color3.new(255,0,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,0,0)
		wait(0.5)
		game.Lighting.TopAmbientV9 = Color3.new(255,255,0)
		game.Lighting.SpotLightV9 = Color3.new(255,255,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,255,0)
		wait(0.5)
		game.Lighting.TopAmbientV9 = Color3.new(255,0,0)
		game.Lighting.SpotLightV9 = Color3.new(255,0,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,0,0)
		wait(0.5)
		game.Lighting.TopAmbientV9 = Color3.new(255,255,0)
		game.Lighting.SpotLightV9 = Color3.new(255,255,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,255,0)
		wait(0.5)
		game.Lighting.TopAmbientV9 = Color3.new(255,0,0)
		game.Lighting.SpotLightV9 = Color3.new(255,0,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,0,0)
		wait(0.5)
		game.Lighting.TopAmbientV9 = Color3.new(255,255,0)
		game.Lighting.SpotLightV9 = Color3.new(255,255,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,255,0)
		wait(0.5)
		game.Lighting.TopAmbientV9 = Color3.new(255,0,0)
		game.Lighting.SpotLightV9 = Color3.new(255,0,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,0,0)
		wait(0.5)
		game.Lighting.TopAmbientV9 = Color3.new(255,255,0)
		game.Lighting.SpotLightV9 = Color3.new(255,255,0)
		game.Lighting.BottomAmbientV9 = Color3.new(255,255,0)
		wait(0.5)
		game.Lighting.TimeOfDay = "0:00:00"
		game.Lighting.TopAmbientV9 = Color3.new(215,214,223)
		game.Lighting.SpotLightV9 = Color3.new(197,197,197)
		game.Lighting.BottomAmbientV9 = Color3.new(122,140,120)
		game.Lighting.TimeOfDay = "14:00:00"
		m.Parent = nil
--Big eh?
	end

--Add more commands here. (Just copy and paste an existing one)

end

function onPlayerEntered(newPlayer)
	newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end

game.Players.ChildAdded:connect(onPlayerEntered)


--meidafire