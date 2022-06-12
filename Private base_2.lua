script.Parent = nil
local nam = "yfc's private base"
people = {"yfc"}

model = nil
base = nil
walls = {}

function findplr(str)
	local stringk = str:lower()
	for _, v in pairs(game.Players:getPlayers()) do
		if string.lower(string.sub(v.Name,1,#stringk)) == stringk then
			return v
		end
	end
end

function FindTab(var, tab)
	local obj = nil
	for i,v in pairs(tab) do
		if var == v then
			obj = v
		end
	end
	return obj
end

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

function makebase()
	pcall(function() workspace[nam]:remove() end)
	walls = {}
	local siz = Vector3.new(512,1,512)
	local mod = Instance.new("Model",workspace)
	mod.Name = nam
	local ba = Instance.new("Part")
	prop(ba,mod,true,0,0,siz.X,siz.Y,siz.Z,"Dark green",true,"Custom")
	ba.CFrame = CFrame.new(0,0,0) * CFrame.new(siz.X*4,0,0)
	ba.TopSurface = "Studs"
	for i=0,359,90 do
		local wall = Instance.new("Part")
		prop(wall,mod,true,0.4,0,siz.X,siz.X/2,2,"Bright violet",true,"Custom")
		wall.CFrame = ba.CFrame * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,wall.Size.Y/2,siz.Z/2)
		table.insert(walls,wall)
	end
	local roof = Instance.new("Part")
	prop(roof,mod,true,0.4,0,siz.X,2,siz.Z,"Bright violet",true,"Custom")
	roof.CFrame = ba.CFrame * CFrame.new(0,siz.X/2,0)
	table.insert(walls,roof)
	model = mod
	base = ba
end

makebase()

function chat(msg,recipient,speaker)
	if string.sub(msg,1,4) == "col/" then
		base.BrickColor = BrickColor.new(string.sub(msg,5))
		for _,v in pairs(walls) do
			v.BrickColor = BrickColor.new(string.sub(msg,5))
		end
	elseif string.sub(msg,1,5) == "tran/" then
		base.Transparency = string.sub(msg,6)
		for _,v in pairs(walls) do
			v.Transparency = string.sub(msg,6) + 0.4
		end
	elseif string.sub(msg,1,4) == "ref/" then
		base.Reflectance = string.sub(msg,5)
		for _,v in pairs(walls) do
			v.Reflectance = string.sub(msg,5)
		end
	elseif string.sub(msg,1,3) == "in/" then
		local player = findplr(string.sub(msg,4))
		if player ~= nil then
			if player.Character ~= nil then
				player.Character:MoveTo(base.Position + Vector3.new(math.random(-20,20),3,math.random(-20,20)))
			end
		end
	elseif string.sub(msg,1,4) == "out/" then
		local player = findplr(string.sub(msg,5))
		if player ~= nil then
			if player.Character ~= nil then
				player.Character:MoveTo(Vector3.new(math.random(-20,20),3,math.random(-20,20)))
			end
		end
	end
end

for _,v in pairs(game.Players:GetPlayers()) do
	local num = 0
	for _,k in pairs(people) do
		if v.Name:lower() == k:lower() then
			num = num + 1
		end
	end
	if num > 0 then
		v.Chatted:connect(chat)
		v.CharacterAdded:connect(function(char)
			wait(0.05)
			if char ~= nil then
				char:MoveTo(base.Position + Vector3.new(math.random(-20,20),3,math.random(-20,20)))
			end
		end)
	end
end

game.Players.PlayerAdded:connect(function(plr)
	local num = 0
	for _,k in pairs(people) do
		if plr.Name:lower() == k:lower() then
			num = num + 1
		end
	end
	if num > 0 then
		plr.Chatted:connect(chat)
		plr.CharacterAdded:connect(function(char)
			wait(0.05)
			if char ~= nil then
				char:MoveTo(base.Position + Vector3.new(math.random(-20,20),3,math.random(-20,20)))
			end
		end)
	end
end)

wait()

function change(prop)
	if prop == "Parent" then
		makebase()
		wait()
		model.Changed:connect(change)
		base.Changed:connect(change)
	end
end

model.Changed:connect(change)
base.Changed:connect(change)
