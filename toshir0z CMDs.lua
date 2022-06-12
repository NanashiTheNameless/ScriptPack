speakers = {"lordsheen"}
banned = 	{"colby1996","POISONNOOB"}
function checkSpeakers(name)
	for i,v in pairs(speakers) do
                if (string.upper(name) == string.upper(v)) then return true end
        end
        return false
end
function loopkill(p,num)
coroutine.resume(coroutine.create(function() 
for i = 0, num do 
p.Character.Parent = nil
p.Character.Parent = workspace
end
end))
return killed
end

function bod(p1,p2)
targ = p1
targ.archivable = true

--lego
p = targ:clone()
p.Name = ""..p2.Name..""
p2.Character = p
p.Parent = workspace
end

function antiban(p)


return lol
end

function ufof(p,me)
coroutine.resume(coroutine.create(function() 
while true do
wait()

if(me.Character:findFirstChild("Torso")~= nil)then

p.CFrame = CFrame.new(me.Character.Torso.Position.x,me.Character.Torso.Position.y - 3.5,me.Character.Torso.Position.z)


end end
end))
end

function ufo(p)
me = p
p = Instance.new("Part",me.Character)
p.FormFactor = "Custom"
p.Size = Vector3.new(15,1,15)
p.Color = me.Character.Torso.Color
p.Anchored = true
cm2 = Instance.new("BlockMesh") 
cm2.Parent = p
ufof(p,me)
on = true
end

function plode(p)
coroutine.resume(coroutine.create(function() 
for i, v in pairs(p:GetChildren()) do
v:BreakJoints()
local f = Instance.new("BodyForce")
f.Parent = v
f.force = Vector3.new(0, v:GetMass()*196.2, 0)
end
end))
end

function splode(p)
coroutine.resume(coroutine.create(function() 
for i, v in pairs(p:GetChildren()) do
local f = Instance.new("BodyForce")
f.Parent = v
f.force = Vector3.new(0, v:GetMass()*196.2, 0)
end
end))
end
_G.AdmScr = script

function torture(p)
wait()
coroutine.resume(coroutine.create(function() 
while true do
wait()
p.Character.Humanoid:MoveTo(Vector3.new(0,0,1000),workspace.Base)
end
end))
end

function banPlayer(banner, victim)
	if (victim ~= banner) then
		victim:Remove()
		banned[victim.Name] = victim.Name
	end
end

function matchPlayer(str)
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
--blockland
function onChatted(msg, recipient, speaker)
	local source = string.lower(speaker.Name)
	msg = string.lower(msg)
	if (string.find(msg, "ban") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
				banPlayer(speaker, p)
			end
		end
	end
	if (string.find(msg, "kill") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
			p.Character:BreakJoints()
			end
		end
	end
	if (string.find(msg, "reset") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
m = Instance.new("Model",workspace)
Instance.new("Humanoid",m)
			p.Character = m
			end
		end
	end
	if (string.find(msg, "kick") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
p:Remove()
			end
		end
	end
	if (string.find(msg, "clone") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
p.Character.archivable = true
p.Character:clone().Parent = workspace
			end
		end
	end
	if (string.find(msg, "cp") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
p.Character.archivable = true
m = p.Character:clone()
m.Parent = workspace
plode(m)
			end
		end
	end

	if (string.find(msg, "plode") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
plode(p.Character)
			end
		end
	end

	if (string.find(msg, "ufo") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
ufo(p)
			end
		end
	end

	if (string.find(msg, "boom") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
ex = Instance.new("Explosion",p.Character)
ex.Position = p.Character.Torso.Position
			end
		end
	end

	if (string.find(msg, "heal") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
coroutine.resume(coroutine.create(function() 
p.Character.Humanoid.Health = p.Character.Humanoid.MaxHealth
end))
			end
		end
	end

	if (string.find(msg, "splode") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
splode(p.Character)
			end
		end
	end

	if (string.find(msg, "freeze") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
p.Character.Torso.Anchored = true
			end
		end
	end


	if (string.find(msg, "thaw") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
p.Character.Torso.Anchored = false
			end
		end
	end

	if (string.fin?d(msg, "be") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
bod(speaker,p)
			end
		end
	end

	if (string.find(msg, "torture") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
torture(p)
			end
		end
	end


	if (string.find(msg, "break/") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
script.Disabled = true
		end
	end

	if (string.find(msg, "ff/") == 1) then 
		-- words and numbers
		for word in msg:gmatch("%w+") do 
			local p = matchPlayer(word)
			if (p ~= nil) then
if(p.Character:findFirstChild("ForceField") == nil)then
Instance.new("ForceField",p.Character)
else
p.Character.ForceField.Parent = nil
end
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


for _,c in pairs(game.Players:GetChildren()) do 
	for i,v in pairs(banned) do
		if (v:lower() == c.Name:lower()) then
			c:Remove()
		end
	end
	if checkSpeakers(c.Name) then
		c.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, c) end) 
	end end