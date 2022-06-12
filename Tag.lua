script.Name = "Tag!"
print("Tag script loaded.")


tagged = ""
canTag = true


function SetTag(name, show)
	if canTag == false then return end
	canTag = false
	local old = tagged
	tagged = ""
	if connection0 ~= nil then connection0:disconnect() connection0 = nil end
	if connection1 ~= nil then connection1:disconnect() connection1 = nil end
	if connection2 ~= nil then connection2:disconnect() connection2 = nil end
	if game:GetService("Players"):FindFirstChild(old) ~= nil then
		if game:GetService("Players")[old].Character ~= nil then
			if game:GetService("Players")[old].Character:FindFirstChild("Humanoid") ~= nil then
				game:GetService("Players")[old].Character.Humanoid.WalkSpeed = 16
			end
			if game:GetService("Players")[old].Character:FindFirstChild("Torso") ~= nil then
				if game:GetService("Players")[old].Character.Torso:FindFirstChild("TaggedEffect") ~= nil then
					game:GetService("Players")[old].Character.Torso.TaggedEffect:Remove()
				end
			end
		end
	end
	if name == nil then
		while tagged == "" do
			for _, players in pairs(game:GetService("Players"):GetPlayers()) do
				if math.random(1, #game:GetService("Players"):GetPlayers()) == 1 then
					tagged = players.Name
				end
			end
			wait()
		end
	else
		tagged = name
	end
	if game:GetService("Players"):FindFirstChild(tagged) ~= nil then
		if game:GetService("Players")[tagged].Character ~= nil then
			if game:GetService("Players")[tagged].Character:FindFirstChild("Humanoid") ~= nil then
				game:GetService("Players")[tagged].Character.Humanoid.WalkSpeed = 16 * 1.5
			end
			if game:GetService("Players")[tagged].Character:FindFirstChild("Torso") ~= nil then
				local TaggedEffect = Instance.new("Fire")
				TaggedEffect.Parent = game:GetService("Players")[tagged].Character.Torso
				TaggedEffect.Color = Color3.new(1, 1, 1)
				TaggedEffect.SecondaryColor = Color3.new(0, 0, 1)
				TaggedEffect.Size = 4
				TaggedEffect.Heat = 0
				TaggedEffect.Name = "TaggedEffect"
			end
		end
	end
	connection0 = game:GetService("Players").ChildRemoved:connect(function(Property)
		if Property == tagged then
			SetTag()
		end
	end)
	connection1 = game:GetService("Players")[tagged].Character.Torso.Touched:connect(function(hit)
		if game:GetService("Players"):GetPlayerFromCharacter(hit.Parent) ~= nil then
			if game:GetService("Players"):GetPlayerFromCharacter(hit.Parent).Name ~= tagged then
				SetTag(game:GetService("Players"):GetPlayerFromCharacter(hit.Parent).Name, true)
			end
		end
	end)
	connection2 = game:GetService("Players")[tagged].Changed:connect(function(Property)
		if Property == "Character" then
			wait(0.1)
			if game:GetService("Players"):FindFirstChild(tagged) ~= nil then
				if game:GetService("Players")[tagged].Character ~= nil then
					if game:GetService("Players")[tagged].Character:FindFirstChild("Torso") ~= nil then
						SetTag(tagged)
					end
				end
			end
		end
	end)
	if show == true then
		if m ~= nil then m:Remove() m = nil end
		m = Instance.new("Message")
		if old ~= nil then
			m.Text = "\"" ..old.. "\" is no longer it!"
			m.Parent = Workspace
			wait(2)
		end
		m.Text = "Tag! \"" ..tagged.. "\" is it!"
		m.Parent = Workspace
		wait(2)
		m.Parent = nil
	end
	canTag = true
end


function onPlayerEntered(newPlayer)
	if newPlayer:FindFirstChild("leaderstats") ~= nil then
		newPlayer.leaderstats:Remove()
	end
	local stats = Instance.new("IntValue")
	stats.Name = "leaderstats"
	local wins = Instance.new("IntValue")
	wins.Name = "Wins"
	wins.Value = 0
	local losses = Instance.new("IntValue")
	losses.Name = "Losses"
	losses.Value = 0
	local points = Instance.new("IntValue")
	points.Name = "Total Points"
	points.Value = 0
	wins.Parent = stats
	losses.Parent = stats
	points.Parent = stats
	stats.Parent = newPlayer
end


for _, players in pairs(game:GetService("Players"):GetPlayers()) do onPlayerEntered(players) end
game:GetService("Players").ChildAdded:connect(onPlayerEntered)


while true do
	while canTag == false do wait() end
	if m ~= nil then m:Remove() m = nil end
	m = Instance.new("Message")
	SetTag()
	canTag = false
	m.Text = "Tag! \"" ..tagged.. "\" is it!"
	m.Parent = Workspace
	wait(3)
	m.Text = "Get ready!"
	m.Parent = Workspace
	wait(1)
	m.Text = "Get set!"
	m.Parent = Workspace
	wait(1)
	m.Text = "Go!"
	m.Parent = Workspace
	wait(1)
	m.Parent = nil
	canTag = true
	SetTag(tagged, false)
	h = Instance.new("Hint")
	for i = 60, 0, -1 do
		h.Text = "Time remaining: " ..tostring(i).. " seconds.  |  Tagged: " ..tagged
		h.Parent = Workspace
		if i <= 5 then
			local old = h.Text
			for x = 1, 2 do
				h.Text = ""
				wait(0.25)
				h.Text = old
				wait(0.25)
			end
		elseif i <= 10 then
			local old = h.Text
			h.Text = ""
			wait(0.25)
			h.Text = old
			wait(0.75)
		else
			wait(1)
		end
	end
	h.Parent = nil
	while canTag == false do wait() end
	wait(1)
	canTag = false
	m.Text = "Time up!"
	m.Parent = Workspace
	wait(2)
	m.Text = "Sorry, \"" ..tagged.. "\"! You lose!"
	m.Parent = Workspace
	for _, players in pairs(game:GetService("Players"):GetPlayers()) do
		if players.Name ~= tagged then
			players.leaderstats.Wins.Value = players.leaderstats.Wins.Value + 1
			players.leaderstats["Total Points"].Value = players.leaderstats.Wins.Value + players.leaderstats.Losses.Value
		else
			players.leaderstats.Losses.Value = players.leaderstats.Losses.Value - 1
			players.leaderstats["Total Points"].Value = players.leaderstats.Wins.Value + players.leaderstats.Losses.Value
		end
	end
	wait(1.5)
	if game:GetService("Players"):FindFirstChild(tagged) ~= nil then
		if game:GetService("Players")[tagged].Character ~= nil then
			if game:GetService("Players")[tagged].Character:FindFirstChild("Torso") ~= nil then
				local e = Instance.new("Explosion")
				e.BlastRadius = 10
				e.BlastPressure = 500000
				e.Position = game:GetService("Players")[tagged].Character.Torso.Position
				e.Parent = Workspace
			end
		end
	end
	wait(1.5)
	m.Text = "Better luck next time!"
	m.Parent = Workspace
	wait(2)
	canTag = true
end
--for _, p in pairs(game.Players:GetChildren()) do if p:FindFirstChild("leaderstats") ~= nil then p.leaderstats:Remove() end end