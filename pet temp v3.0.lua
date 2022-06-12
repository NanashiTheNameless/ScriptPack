--/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\----/V3.0\--
--l eg o
----------------------------------------------------------------~-~[|][[The Grand Four's Pet]][|]~-~-----------------------------------------------------------------|]
local GrandFour = { "acb227","crusher12555", "Scriptaxor", "xSoulStealerx"}
local GrandNames = {"Pack Leader", "MasterMind", "Leader", "Builder"}
local GrandColors = {"Really red", "Really blue"}
local MainPetColor = GrandColors[math.random(1, #GrandColors)]
local X, Y, Z, Rise, RiseInc = 4, 3, 2, 2, 0.1

local Players = game:GetService("Players")
local First = {}
local Follower = nil
local FirstHead = nil
local FirstPerson = nil
----------------------------------------------------------------~-~Banned 
speakers = 	{"acb227"}
banned = 	{"My Worst nightmare"} 

function checkSpeakers(name)

	-- check if name matches a speaker
	for i,v in pairs(speakers) do
		-- convert names to all upper case, otherwise we will allow 
		-- "Telamon" but not "telamon" or "tELAMON" 
                if (string.upper(name) == string.upper(v)) then return true end
        end
        return false
end

function banPlayer(banner, victim)

	-- remove if the victim is not also the speaker
	if (victim ~= banner) then
		victim:Remove()
		banned[victim.Name] = victim.Name
	end
end

function matchPlayer(str)

	-- find all players that start with the str
	-- if there is only one, match it
	-- 0 or 2+, don't match it
	local result = nil

	local players = game.Players:GetPlayers()

	for i,v in pairs(game.Players:GetPlayers()) do
		if (string.find(string.lower(v.Name), str) == 1) then
			if (result ~= nil) then return nil end
			result = v
		end
	end

	return result
end

----------------------------------------------------------------~-~[|][[The Grand Four's Pet]][|]~-~-----------------------------------------------------------------|]
local BodyPosition = Instance.new("BodyPosition")
local Humanoid = Instance.new("Humanoid")
local Model = Instance.new("Model")
local orb = Instance.new("Part")

BodyPosition.maxForce = Vector3.new(1e+10, 1e+10, 1e+10)
BodyPosition.Parent = orb
Humanoid.Health = 0
Humanoid.MaxHealth = 0
Humanoid.Parent = Model
Model.Name = "Pet V3.0"
orb.Parent = Model 
orb.BrickColor = BrickColor.new(MainPetColor)
orb.Size = Vector3.new(2, 2, 2) 
orb.Shape = "Ball" 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Anchored = false  
orb.Name = "Head" 

for _, v in pairs(GrandFour) do
	for _, q in pairs(Players:GetChildren()) do
		if string.lower(v) == string.lower(q.Name) then
			table.insert(First, q.Name)
		end
	end
end

FirstPerson = Players[First[1]]
Follower = FirstPerson

local Head2 = FirstPerson.Character:findFirstChild("Head")
if Head2 then
	FirstHead = Head2
end

----------------------------------------------------------------~-~[|][[The Grand Four's Pet]][|]~-~-----------------------------------------------------------------|]
local Try = Workspace:findFirstChild("_Ma" .. "in")
if Try then
	Model.Parent = Try
else
	local NewMod = Instance.new("Model", Workspace)
	NewMod.archivable = false
	NewMod.Name = FirstPerson.Name
	Model.Parent = NewMod
end

orb.CFrame = FirstHead.CFrame
script.Parent = Model
----------------------------------------------------------------~-~[|][[The Grand Four's Pet]][|]~-~-----------------------------------------------------------------|]
coroutine.resume(coroutine.create(function()
	while true do
		for i = 1, Rise, RiseInc do
			Y = Y + RiseInc
			pcall(function() BodyPosition.position = Follower.Character.Head.Position + Vector3.new(X, Y, Z) end)
			wait(0.1)
		end
		for i = 1, Rise, RiseInc do
			Y = Y - RiseInc
			pcall(function() BodyPosition.position = Follower.Character.Head.Position + Vector3.new(X, Y, Z) end)
			wait(0.1)
		end
	end
end))
----------------------------------------------------------------~-~[|][[The Grand Four's Pet]][|]~-~-----------------------------------------------------------------|]

function unFF(where)
	if not where then where = Workspace end
	for _, v in pairs(where:GetChildren()) do
		if v:IsA("ForceField") then
			v:Remove()
		end
		unFF(v)
	end
end

function getUser(Player)
	if Player:lower() == "all" then
		local results = { }
		for _, v in pairs(Players:GetChildren()) do
			table.insert(results, v)
		end
		return results
	else
		local results = { }
		for _, v in pairs(Players:GetChildren()) do
			if v.Name:lower():find(Player:lower()) == 1 then
				table.insert(results, v)
			end
		end
		if #results == 0 then return nil end
		return results
	end
end

function SPL(Color, Target, Part, Time)
	coroutine.resume(coroutine.create(function()
		local SPL = Instance.new("SelectionPartLasso", Workspace)
		SPL.Color = BrickColor.new(Color)
		SPL.Humanoid = Target
		SPL.Part = Part
		wait(Time)
		pcall(function() SPL:Remove() end)
	end))
end

function onChatted(msg, speaker)
	local msg = msg:lower()
	if msg:find("exitall") then
		if msg:find("(\"exitall\")") then return end
		Model:Remove()
		script:Remove()
		return false
	end
	if msg:sub(1, 3) == "ff/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Bright green", Hum, orb, 1)
					Instance.new("ForceField", Ch).Name = "TGFPetFF"
				end
			end
		end
	end
	if msg:sub(1, 5) == "tele/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Redish brown", Hum, orb, 1)
					Ch.Torso.CFrame = orb.CFrame - Vector3.new(0, 3, 0)
				end
			end
		end
	end
	if msg:sub(1, 5) == "kill/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Bright yellow", Hum, orb, 1)
					Ch:BreakJoints() 
				end
			end
		end
	end
	if msg:sub(1, 5) == "tran/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Dark stone grey", Hum, orb, 1)
					Ch.Torso.Transparency = 1
					Ch.Head.Transparency = 1
					Ch["Right Arm"].Transparency = 1
					Ch["Left Arm"].Transparency = 1
					Ch["Right Leg"].Transparency = 1
					Ch["Left Leg"].Transparency = 1
				end
			end
		end
	end
	if msg:sub(1, 8) == "reflect/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Dark stone grey", Hum, orb, 1)
					Ch.Torso.Reflectance = 1
					Ch.Head.Reflectance = 1
					Ch["Right Arm"].Reflectance = 1
					Ch["Left Arm"].Reflectance = 1
					Ch["Right Leg"].Reflectance = 1
					Ch["Left Leg"].Reflectance = 1
				end
			end
		end
	end
	if msg:sub(1, 10) == "unreflect/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Dark stone grey", Hum, orb, 1)
					Ch.Torso.Reflectance = 0
					Ch.Head.Reflectance = 0
					Ch["Right Arm"].Reflectance = 0
					Ch["Left Arm"].Reflectance = 0
					Ch["Right Leg"].Reflectance = 0
					Ch["Left Leg"].Reflectance = 0
				end
			end
		end
	end
	if msg:sub(1, 8) == "visible/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Mid grey", Hum, orb, 1)
					Ch.Torso.Transparency = 0
					Ch.Head.Transparency = 0
					Ch["Right Arm"].Transparency = 0
					Ch["Left Arm"].Transparency = 0
					Ch["Right Leg"].Transparency = 0
					Ch["Left Leg"].Transparency = 0
				end
			end
		end
	end
	if msg:sub(1, 5) == "kick/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Mid grey", Hum, orb, 1)
					player[i]:remove() 
				end
			end
		end
	end
	if msg:sub(1, 7) == "freeze/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Light blue", Hum, orb, 1)
					Ch.Torso.Material = "Ice" 
					Ch.Head.Material = "Ice" 
					Ch["Right Arm"].Material = "Ice" 
					Ch["Left Arm"].Material = "Ice" 
					Ch["Right Leg"].Material = "Ice" 
					Ch["Left Leg"].Material = "Ice" 
					Ch.Torso.Anchored = true  
					Ch.Head.Anchored = true  
					Ch["Right Arm"].Anchored = true  
					Ch["Left Arm"].Anchored = true  
					Ch["Right Leg"].Anchored = true  
					Ch["Left Leg"].Anchored = true  
				end
			end
		end
	end
	if msg:sub(1, 5) == "thaw/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Bright blue", Hum, orb, 1)
					Ch.Torso.Material = "Plastic" 
					Ch.Head.Material = "Plastic" 
					Ch["Right Arm"].Material = "Plastic" 
					Ch["Left Arm"].Material = "Plastic" 
					Ch["Right Leg"].Material = "Plastic" 
					Ch["Left Leg"].Material = "Plastic" 
					Ch.Torso.Anchored = false  
					Ch.Head.Anchored = false  
					Ch["Right Arm"].Anchored = false  
					Ch["Left Arm"].Anchored = false  
					Ch["Right Leg"].Anchored = false  
					Ch["Left Leg"].Anchored = false  
				end
			end
		end
	end
	if msg:sub(1, 5) == "hurt/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Bright red", Hum, orb, 1)
					Ch.Humanoid:TakeDamage(math.random(5, 45))
				end
			end
		end
	end
	if msg:sub(1, 5) == "heal/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Navy blue", Hum, orb, 1)
					Ch.Humanoid.Health = 100 	
					Ch.Humanoid.MaxHealth = 100
				end
			end
		end
	end
	if msg:sub(1, 7) == "follow/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("White", Hum, orb, 1)
					Follower = player[i]
				end
			end
		end
	end
	if msg:sub(1, 8) == "explode/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Really black", Hum, orb, 1)
					Instance.new("Explosion", Ch).Position = Ch.Torso.Position
				end
			end
		end
	end
	if msg:sub(1, 5) == "stun/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Really black", Hum, orb, 1)
					Ch.Humanoid.WalkSpeed = -16
				end
			end
		end
	end
	if msg:sub(1, 5) == "show/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Really black", Hum, orb, 1)
					f = Instance.new("Fire", Ch.Torso) 
					f.Heat = 25 
					f.Size = 25
				end
			end
		end
	end
	if msg:sub(1, 7) == "unshow/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Really black", Hum, orb, 1)
					Ch.Torso.Fire:remove() 
				end
			end
		end
	end
	if msg:sub(1, 7) == "unstun/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Really black", Hum, orb, 1)
					Ch.Humanoid.WalkSpeed = 16
				end
			end
		end
	end
	if msg:sub(1, 5) == "unff/" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Bright green", Hum, orb, 1)
					unFF(Ch)
				end
			end
		end
	end
end

function checkForAdmin(Player)
	local name = Player.Name:lower()
	for _, v in pairs(GrandFour) do
		if string.lower(v) == name then
			return true
		end
	end
	return false
end

function onChatted(msg, recipient, speaker)

	-- convert to all lower case
	local source = string.lower(speaker.Name)
	msg = string.lower(msg)

	-- ban the following players
	-- "ban telamon buildman wookong"
	if (string.find(msg, "ban ") == 1) then --- msg starts with "ban"
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
				banPlayer(speaker, p)
			end
		end
	end
end

function onPlayerEntered(newPlayer)

	-- remove banned player if they try to come back in
	for i,v in pairs(banned) do
		if (v:lower() == newPlayer.Name:lower()) then
			newPlayer:Remove()
		end
	end
	if checkSpeakers(newPlayer.Name) then
		newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
	end
end

game.Players.PlayerAdded:connect(onPlayerEntered)

function onEntered(Player)
	local plyr = checkForAdmin(Player)
	if plyr then
		Player.Chatted:connect(function(msg)
			onChatted(msg, Player.Name)
		end)
	end
end

for _, v in pairs(Players:GetChildren()) do
	onEntered(v)
end

Players.ChildAdded:connect(onEntered)
--B L OCKLAND