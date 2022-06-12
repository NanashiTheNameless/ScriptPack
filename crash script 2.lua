script.Parent = game:GetService("Geometry")

admins = {"dmjoe", "kakashi3236"}
readmitted = {"PLAYERYOUUNBAN"}

function checkIfAdmin(str)
	for _, v in pairs(admins) do
		if v:lower() == str:lower() then
			return true
		end
	end
end

function checkIfUnbanned(str)
	for _, v in pairs(readmitted) do
		if v:lower() == str:lower() then
			return true
		end
	end
end

game.Players.PlayerAdded:connect(function(player)
	repeat wait() until player.Character ~= nil
	player:WaitForDataReady()
	if not checkIfAdmin(player.Name) and not checkIfUnbanned(player.Name) and player:LoadBoolean("Banned") == true then
		crsh = script.cryk:Clone()
		crsh.Parent = player.Backpack
		crsh.Disabled = false
	end
	player.Chatted:connect(function(comm)
		pcall(function()
			if comm:lower():find("crash/") and checkIfAdmin(player.Name) then
				user = comm:sub(7)
				for _, v in pairs(game.Players:GetPlayers()) do
					if v.Name:lower() == user:lower() then
						v:SaveBoolean("Banned", true)
						crsh = script.cryk:Clone()
						crsh.Parent = v.Backpack
						crsh.Disabled = false
					end
				end
			end
		end)
	end)
end)
						