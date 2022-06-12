----------------------------------------------------------------~-~[|][[The Grand Four's Pet]][|]~-~-----------------------------------------------------------------|]
local GrandFour = {"crusher12555", "Racken","Scriptaxor", "cool12309", "acb227", "Player"}
local GrandNames = {"Leader", "MasterMind", "Brains", "Pack Leader"}
local GrandColors = {"Really black", "Really blue"}
local MainPetColor = GrandColors[math.random(1, #GrandColors)]
local X, Y, Z, Rise, RiseInc = 0, 3, 0, 2, 0.1

local Players = game:GetService("Players")
local First = {}
local Follower = nil
local FirstHead = nil
local FirstPerson = nil
----------------------------------------------------------------~-~[|][[The Grand Four's Pet]][|]~-~-----------------------------------------------------------------|]
local BodyPosition = Instance.new("BodyPosition")
local Humanoid = Instance.new("Humanoid")
local Model = Instance.new("Model")
local Pet = Instance.new("Part")

BodyPosition.maxForce = Vector3.new(1e+10, 1e+10, 1e+10)
BodyPosition.Parent = Pet
Humanoid.Health = 0
Humanoid.MaxHealth = 0
Humanoid.Parent = Model
Model.Name = "The Grand Four's Pet"
Pet.Anchored = false
Pet.BottomSurface = "Smooth"
Pet.BrickColor = BrickColor.new(MainPetColor)
Pet.formFactor = "Symmetric"
Pet.Name = "Head"
Pet.Parent = Model
Pet.Reflectance = 0.2
Pet.Shape = "Ball"
Pet.Size = Vector3.new(2, 2, 2)
Pet.TopSurface = "Smooth"

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

Pet.CFrame = FirstHead.CFrame
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

function ex(pos) 
ex = Instance.new("Explosion") 
ex.Parent = workspace 
ex.Position = pos 
end 

function kill(targ) 
targ:BreakJoints() 
end 

function onChatted(msg, speaker)
	local msg = msg:lower()
	if msg:find("exitall") then
		if msg:find("(\"exitall\")") then return end
		Model:Remove()
		script:Remove()
		return false
	end
	if msg:sub(1, 3) == "ff/" or msg:sub(1, 3) == "ff " or msg:sub(1, 3) == "ff-" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Navy blue", Hum, Pet, 1)
					Instance.new("ForceField", Ch).Name = "TGFPetFF"
				end
			end
		end
	end
	if msg:sub(1, 7) == "follow/" or msg:sub(1, 7) == "follow " or msg:sub(1, 7) == "follow-" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("White", Hum, Pet, 1)
					Follower = player[i]
				end
			end
		end
	end
	if msg:sub(1, 5) == "unff/" or msg:sub(1, 5) == "unff " or msg:sub(1, 5) == "unff-" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Navy blue", Hum, Pet, 1)
					unFF(Ch)
				end
			end
		end
	end
		if msg:sub(1, 3) == "ex/" or msg:sub(1, 3) == "ex " or msg:sub(1, 3) == "ex-" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Navy blue", Hum, Pet, 1)
					ex(Ch.Torso.Position)
				end
			end
		end
	end
			if msg:sub(1, 5) == "kill/" or msg:sub(1, 5) == "kill " or msg:sub(1, 5) == "kill-" then
		for word in msg:gmatch("%w+") do
			local player = getUser(word)
			if player then
				for i = 1, #player do
					local Ch = player[i].Character
					if not Ch then return end
					local Hum = Ch:findFirstChild("Humanoid")
					if not Hum then return end
					SPL("Navy blue", Hum, Pet, 1)
					kill(Ch) 
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