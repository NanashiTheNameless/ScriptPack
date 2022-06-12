--Original layout used for ROBLOX Hiking http://www.roblox.com/--item?id=5462656

--you don't need to change anything except where it tells you to

function saveScore1(player, score1)
	player:SaveNumber("EXP", score1) --change "EXP" to your 1st stat
end

function saveScore2(player, score2)
	player:SaveNumber("Gold", score2)--change "Gold" to your 2nd stat
end


--if you want data saving for 3 stats  take away these --[[ --]]

--[[ 
function saveScore3(player, score3)
	player:SaveNumber("INSERT STAT HERE", score3)
end
--]] 
function loadScore1(player, money)
local score1 = player:LoadNumber("EXP") --change "EXP" to your 1st stat
local stats = player:FindFirstChild("leaderstats")
		if (stats ~= nil) then 
		local money = stats:FindFirstChild("EXP") --change "EXP" to your 1st stat
		money.Value = score1
		end
end

function loadScore2(player, gold)
local score2 = player:LoadNumber("Gold") 
local stats = player:FindFirstChild("leaderstats")
		if (stats ~= nil) then 
		local gold = stats:FindFirstChild("Gold") --change "Gold" to your 2nd stat
		gold.Value = score2
		end
end

--[[ 
function loadScore3(player, gold)
local score3 = player:LoadNumber("INSERT STAT HERE") 
local stats = player:FindFirstChild("leaderstats")
		if (stats ~= nil) then 
		local three = stats:FindFirstChild("INSERT STAT HERE")
		three.Value = score3
		end
end
--]] 


function onPlayerEntered(newPlayer)

if newPlayer:findFirstChild("leaderstats") ~= nil then
newPlayer.leaderstats:remove()
end

local stats = Instance.new("IntValue")
stats.Name = "leaderstats"
stats.Parent = newPlayer

expinsert = Instance.new("IntValue")
expinsert.Parent = stats
expinsert.Name = "EXP" --change "EXP" to your 1st stat
expinsert.Value = 0

goldinsert = Instance.new("IntValue")
goldinsert.Parent = stats
goldinsert.Name = "Gold" --change "Gold" to your 2nd stat
goldinsert.Value = 0

--[[
threeinsert = Instance.new("IntValue")
threeinsert.Parent = stats
threeinsert.Name = "INSERT STAT HERE"
threeinsert.Value = 0 --starting value of a stat
--]]
print"waiting for data to be ready"
newPlayer:WaitForDataReady() --must have

-- loads the player's score
loadScore1(newPlayer, money)
loadScore2(newPlayer, gold)

--[[
loadScore3(newPlayer, tres)
-]]
end

function onPlayerRemoving(player)
	print("Attempting to save score for " .. player.Name)
	if player.DataReady == true then

	local stats = player:FindFirstChild("leaderstats")
	if (stats ~= nil) then 
		local money = stats:FindFirstChild("EXP") --change "EXP" to your 1st stat

		if (money ~= nil) then
			saveScore1(player, money.Value)
	print("saved money")
		end

		local gold = stats:FindFirstChild("Gold") --change "Gold" to your 2nd stat
		if (gold ~= nil) then
			saveScore2(player, gold.Value)
	print("saved gold")
		end
	end
--[[
		local gold = stats:FindFirstChild("INSERT STAT HERE")
		if (three ~= nil) then
			saveScore3(player, three.Value)
		end
	end
--]]
	end
end


game.Players.PlayerAdded:connect(onPlayerEntered)
game.Players.PlayerRemoving:connect(onPlayerRemoving)
