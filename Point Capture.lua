Respawn = workspace:FindFirstChild("Respawn") and workspace.Respawn:Clone() or nil
MaxScore = 250
Time = 300
Playing = false


function NoRespawn(Player)
	coroutine.wrap(function()
		while Player.Parent ~= nil do
			if Playing == false and Player.Character ~= nil then
				pcall(function()
					local Character = Player.Character
					Player.Character = nil
					Character:Remove()
				end)
			elseif Playing == true and Player.Character == nil then
				local Model = Instance.new("Model", Workspace)
				local Part = Instance.new("Part", Model)
				Part.Name = "Head"
				Part.Transparency = 1
				Part.CanCollide = false
				Part.Anchored = true
				Part.Locked = true
				Part.Parent = Model
				local Humanoid = Instance.new("Humanoid", Model)
				Humanoid.Health = 100
				Player.Character = Model
				Humanoid.Health = 0
			end
			wait()
		end
	end)()
end
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	NoRespawn(Player)
end
game:GetService("Players").PlayerAdded:connect(NoRespawn)


if game:GetService("Players").NumPlayers <= 0 then
	wait(15)
end
local Message = Instance.new("Message", Workspace)
Message.Text = "Welcome to Point Capture version 4!"
wait(5)
Message:Remove()
while true do
	local Message = Instance.new("Message", Workspace)
	for i = 30, 1, -1 do
		Message.Text = "A new game is going to start in " ..i.. " second" ..(i ~= 1 and "s" or "").. "..."
		if i == 5 then
			Playing = true
		end
		wait(1)
	end
	Message.Text = "The game has Playing!"
	wait(2.5)
	Message:Remove()
	local Hint = Instance.new("Hint", Workspace)
	local Winner = nil
	for i = Time, 0, -1 do
		Hint.Text = "[Max score: " ..MaxScore.." | Time left: " ..i.. "] "
		for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
			for _, Part in pairs(Workspace:GetChildren()) do
				if Part.Name == "Flag" and Part.ClassName == "Model" then
					if Part.ControlColor.Value == Team.TeamColor then
						Team.Score = Team.Score + 1
					end
				end
			end
			Hint.Text = Hint.Text .. Team.Name.. ": " ..Team.Score.. ". "
			if Team.Score > MaxScore then
				Winner = Team
				break
			end
		end
		if Winner ~= nil then break end
		wait(1)
	end
	Hint:Remove()
	if Winner == nil then
		local Max = 0
		for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
			if Team.Score > Max then
				Winner = Team
				Max = Team.Score
			end
		end
	end
	Playing = false
	local Message = Instance.new("Message", Workspace)
	Message.Text = "The " ..Winner.Name.. " have won this match!"
	wait(15)
	for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
		Team.Score = 0
	end
	Message.Text = "Cleaning up..."
	for _, Part in pairs(Workspace:GetChildren()) do
		if Part.Name == "Decapitated Limb" or Part.Name == "Bullet" or Part.Name == "Fragment" or Part.Name == "Blood" or Part.Name == "Blood Pool" or Part.Name:match("'s Corpse") or Part:IsA("Accoutrement") then
			pcall(function() Part:Remove() end)
			wait()
		end
	end
	if Respawn ~= nil then
		Message.Text = "Fixing terrain..."
		wait(0.3)
		pcall(function() Workspace.Respawn:Remove() end)
		wait(0.3)
		local Clone = Respawn:Clone()
		Clone.Parent = Workspace
		Clone:MakeJoints()
		wait(0.3)
	end
	Message.Text = "Resetting flags..."
	for _, Part in pairs(Workspace:GetChildren()) do
		if Part.Name == "Flag" and Part.ClassName == "Model" then
			Part.ControlColor.Value = BrickColor.new("White")
			wait(0.5)
		end
	end
	Message:Remove()
end