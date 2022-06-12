script.Parent = nil

local Players = game:service("Players")
local rank = {
	upquark = "creator",
	rigletto = "creator",
	positron11111 = "creator",
	electron11111 = "creator",
	PVlnstance = "creator",
	krauqpu = "creator",
	cannunball = "creator",
	wimen = "creator",
	newproxy = "creator",
	WhiteFlamez = "nb",
	ThePC8110 = "nb",
	carter4231 = "untrusted",
	thomas0233 = "troll",
	TeamDman = "llort",
	scripterboy4455 = "banned"
}
local handledconnections = {}
local plconnection = nil

local NLS = NLS or NewLocalScript or function() print("derp") end
local oc = oc or function(func) func() end

rank["16BitTroll"] = "creator"

function DayOfWeek()
	local week = {"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"}
	local day = math.floor((tick()%604800)/86400)+4
	return week[day]
end

function TimeOfDay()
	local hour = math.floor((tick()%86400)/3600)
	local minute = math.floor((tick()%3600)/60)
	local second = math.floor(tick()%60)
	return hour,minute,second
end

function FindRank(arg)
	if arg == "nomercy" or arg == "banned" or arg == "untrusted" or arg == "guest" or arg == "nb" or arg == "troll" then
		return arg
	elseif arg == "-3" then
		return "nomercy"
	elseif arg == "-2" then
		return "banned"
	elseif arg == "-1" then
		return "untrusted"
	elseif arg == "0" then
		return "guest"
	elseif arg == "1" then
		return "nb"
	elseif arg == "2" then
		return "troll"
	end
	return nil
end

function GetHum(char)
	local hum = {}
	for _,v in pairs(char:children()) do
		if v:IsA("Humanoid") then
			hum[#hum+1] = v
		end
	end
	return hum
end

if DayOfWeek() == "Saturday" or DayOfWeek() == "Sunday" then
	rank.ThePC8110 = "troll"
end

if (DayOfWeek() == "Saturday" or DayOfWeek() == "Sunday") and (TimeOfDay() > 9 and TimeOfDay() < 23) then
	rank.tyridge77 = "nb"
else
	rank.tyridge77 = "guest"
end

if DayOfWeek() == "Saturday" and TimeOfDay() > 4 and TimeOfDay() < 18 then
	rank.thomas0233 = "llort"
end

function TableAdd(tab,val)
	tab[#tab+1] = val
end

function Chicken(player)
	local model = Instance.new("Model")
	model.Name = "Chicken"
	
	local torso = Instance.new("Part", model)
	torso.Anchored = false
	torso.CanCollide = true
	torso.FormFactor = "Custom"
	torso.TopSurface = "Smooth"
	torso.BottomSurface = "Smooth"
	torso.Size = Vector3.new(1, 0.8, 1.2)
	torso.BrickColor = BrickColor.new("Light stone grey")
	torso.Name = "Torso"
	torso.Locked = true
	
	local head = Instance.new("Part", model)
	head.Anchored = false
	head.CanCollide = true
	head.FormFactor = "Custom"
	head.TopSurface = "Smooth"
	head.BottomSurface = "Smooth"
	head.Size = Vector3.new(0.1, 0.1, 0.1)
	head.BrickColor = BrickColor.new("Light stone grey")
	head.Name = "Head"
	head.Locked = true
	
	local vhead = Instance.new("Part", model)
	vhead.Anchored = false
	vhead.CanCollide = true
	vhead.FormFactor = "Custom"
	vhead.TopSurface = "Smooth"
	vhead.BottomSurface = "Smooth"
	vhead.Size = Vector3.new(0.7, 0.6, 0.5)
	vhead.BrickColor = BrickColor.new("Light stone grey")
	vhead.Name = "VisibleHead"
	vhead.Locked = true
	
	local rwing = Instance.new("Part", model)
	rwing.Anchored = false
	rwing.CanCollide = false
	rwing.FormFactor = "Custom"
	rwing.TopSurface = "Smooth"
	rwing.BottomSurface = "Smooth"
	rwing.Size = Vector3.new(0.2, 0.6, 0.8)
	rwing.BrickColor = BrickColor.new("Light stone grey")
	rwing.Name = "Left Arm"
	rwing.Locked = true
	
	local lwing = Instance.new("Part", model)
	lwing.Anchored = false
	lwing.CanCollide = false
	lwing.FormFactor = "Custom"
	lwing.TopSurface = "Smooth"
	lwing.BottomSurface = "Smooth"
	lwing.Size = Vector3.new(0.2, 0.6, 0.8)
	lwing.BrickColor = BrickColor.new("Light stone grey")
	lwing.Name = "Right Arm"
	lwing.Locked = true
	
	local rleg = Instance.new("Part", model)
	rleg.Anchored = false
	rleg.CanCollide = false
	rleg.FormFactor = "Custom"
	rleg.TopSurface = "Smooth"
	rleg.BottomSurface = "Smooth"
	rleg.Size = Vector3.new(0.2, 0.6, 0.2)
	rleg.BrickColor = BrickColor.new("Bright yellow")
	rleg.Name = "Right Leg"
	rleg.Locked = true
	
	local lleg = Instance.new("Part", model)
	lleg.Anchored = false
	lleg.CanCollide = false
	lleg.FormFactor = "Custom"
	lleg.TopSurface = "Smooth"
	lleg.BottomSurface = "Smooth"
	lleg.Size = Vector3.new(0.2, 0.6, 0.2)
	lleg.BrickColor = BrickColor.new("Bright yellow")
	lleg.Name = "Left Leg"
	lleg.Locked = true
	
	Instance.new("BlockMesh", rleg)
	Instance.new("BlockMesh", lleg)
	
	local beak = Instance.new("Part", model)
	beak.Anchored = false
	beak.CanCollide = false
	beak.FormFactor = "Custom"
	beak.TopSurface = "Smooth"
	beak.BottomSurface = "Smooth"
	beak.Size = Vector3.new(0.4, 0.2, 0.4)
	beak.BrickColor = BrickColor.new("Bright yellow")
	beak.Name = "Beak"
	beak.Locked = true
	
	local wattle = Instance.new("Part", model)
	wattle.Anchored = false
	wattle.CanCollide = false
	wattle.FormFactor = "Custom"
	wattle.TopSurface = "Smooth"
	wattle.BottomSurface = "Smooth"
	wattle.Size = Vector3.new(0.3, 0.2, 0.3)
	wattle.BrickColor = BrickColor.new("Bright red")
	wattle.Name = "Wattle"
	wattle.Locked = true
	
	local eye1 = Instance.new("Part", model)
	eye1.Anchored = false
	eye1.CanCollide = false
	eye1.FormFactor = "Custom"
	eye1.TopSurface = "Smooth"
	eye1.BottomSurface = "Smooth"
	eye1.Size = Vector3.new(0.2, 0.2, 0.2)
	eye1.BrickColor = BrickColor.new("Black")
	eye1.Name = "Eye"
	eye1.Locked = true
	
	local eye2 = Instance.new("Part", model)
	eye2.Anchored = false
	eye2.CanCollide = false
	eye2.FormFactor = "Custom"
	eye2.TopSurface = "Smooth"
	eye2.BottomSurface = "Smooth"
	eye2.Size = Vector3.new(0.2, 0.2, 0.2)
	eye2.BrickColor = BrickColor.new("Black")
	eye2.Name = "Eye"
	eye2.Locked = true
	
	local eye1m = Instance.new("BlockMesh", eye1)
	eye1m.Scale = Vector3.new(0.3, 0.3, 0.3)
	
	local eye2m = Instance.new("BlockMesh", eye2)
	eye2m.Scale = Vector3.new(0.3, 0.3, 0.3)
	
	local neck = Instance.new("Motor6D", torso)
	neck.Part0 = torso
	neck.Part1 = head
	neck.C0 = CFrame.Angles(0, math.rad(90), 0) + Vector3.new(0, 0, -0.4)
	neck.C1 = CFrame.Angles(0, math.rad(90), 0) + Vector3.new(0, -0.5, 0)
	neck.Name = "Neck"
	neck.MaxVelocity = math.rad(25)
	
	local vneck = Instance.new("Motor6D", head)
	vneck.Part0 = head
	vneck.Part1 = vhead
	vneck.C0 = CFrame.Angles(math.rad(90), 0, 0)
	vneck.C1 = CFrame.Angles(math.rad(90), 0, 0)
	vneck.Name = "VNeck"
	vneck.MaxVelocity = math.rad(10)
	
	local rsh = Instance.new("Motor6D", torso)
	rsh.Part0 = torso
	rsh.Part1 = rwing
	rsh.C0 = CFrame.Angles(0, math.rad(180), 0) * CFrame.new(0.5, 0.25, 0)
	rsh.C1 = CFrame.Angles(-math.rad(180), 0, 0) + Vector3.new(0, -0.25, 0)
	rsh.Name = "Right Shoulder"
	rsh.MaxVelocity = math.rad(20)
	
	local lsh = Instance.new("Motor6D", torso)
	lsh.Part0 = torso
	lsh.Part1 = lwing
	lsh.C0 = CFrame.new(0.5, 0.25, 0)
	lsh.C1 = CFrame.Angles(-math.rad(180), 0, 0) + Vector3.new(0, -0.25, 0)
	lsh.Name = "Left Shoulder"
	lsh.MaxVelocity = math.rad(20)
	
	local rhi = Instance.new("Motor6D", torso)
	rhi.Part0 = torso
	rhi.Part1 = rleg
	rhi.C0 = CFrame.Angles(0, math.rad(90), 0) + Vector3.new(-0.2, -0.3, 0)
	rhi.C1 = CFrame.new(0, 0.3, 0)
	rhi.Name = "Right Shoulder"
	rhi.MaxVelocity = math.rad(10)
	
	local lhi = Instance.new("Motor6D", torso)
	lhi.Part0 = torso
	lhi.Part1 = lleg
	lhi.C0 = CFrame.Angles(0, -math.rad(90), 0) + Vector3.new(0.2, -0.3, 0)
	lhi.C1 = CFrame.new(0, 0.3, 0)
	lhi.Name = "Left Shoulder"
	lhi.MaxVelocity = math.rad(10)
	
	local bth = Instance.new("Weld", head)
	bth.Part0 = vhead
	bth.Part1 = beak
	bth.C0 = CFrame.new(0, 0, -0.25)
	
	local wth = Instance.new("Weld", head)
	wth.Part0 = vhead
	wth.Part1 = wattle
	wth.C0 = CFrame.new(0, -0.1, -0.25)
	
	local eth1 = Instance.new("Weld", head)
	eth1.Part0 = vhead
	eth1.Part1 = eye1
	eth1.C0 = CFrame.new(0.1, 0.15, -0.25)
	
	local eth2 = Instance.new("Weld", head)
	eth2.Part0 = vhead
	eth2.Part1 = eye2
	eth2.C0 = CFrame.new(-0.1, 0.15, -0.25)
	
	local swoot = Instance.new("Sound", head)
	swoot.Pitch = 8
	swoot.Volume = 0.4
	swoot.SoundId = "http://www.roblox.com/asset/?id=3931318"
	swoot.Looped = true
	
	local cluck1 = Instance.new("Sound", head)
	cluck1.Pitch = 1
	cluck1.Volume = 1
	cluck1.SoundId = "http://www.roblox.com/asset/?id=24111685"
	
	-- http://www.roblox.com/asset/?id=24111685
	-- http://www.roblox.com/asset/?id=24111782
	-- http://www.roblox.com/asset/?id=24111798
	-- http://www.roblox.com/asset/?id=24111823
	
	-- http://www.roblox.com/asset/?id=3931318
	
	local humanoid = Instance.new("Humanoid", model)
	humanoid.Name = "Chickenoid"
	
	humanoid.WalkSpeed = 10
	
	local status = "standing"
	local time = 0
	
	local clt = 0
	local dclt = 2
	
	local mlt = 0
	local dmlt = 2
	
	local function Peck()
		local dmgc = player.Character.Beak.Touched:connect(function(part)
			if part.Parent then
				if part.Name == "Grain" then
					humanoid:TakeDamage(-10)
				elseif part.Parent:IsA("Model") then
					for _,hum in pairs(part.Parent:GetChildren()) do
						if hum:IsA("Humanoid") and hum.Name ~= "Chickenoid" then
							hum:TakeDamage(15)
						end
					end
				end
			end
		end)
		for i = 0, -125, -25 do
			neck.DesiredAngle = math.rad(i)
			wait(0.03)
		end
		for i = -125, 0, 25 do
			neck.DesiredAngle = math.rad(i)
			wait(0.03)
		end
		dmgc:disconnect()
	end
	
	humanoid.Running:connect(function(spd)
		if spd == 0 then
			status = "standing"
		else
			status = "walking"
		end
	end)
	
	humanoid.Climbing:connect(function(active)
		if active then
			status = "walking"
		end
	end)
	
	humanoid.Seated:connect(function(active)
		if active then
			status = "sitting"
		end
	end)
	
	humanoid.Swimming:connect(function(active)
		if active then
			status = "sitting"
		end
	end)
	
	humanoid.FallingDown:connect(function(active)
		if active then
			status = "falling"
		end
	end)
	
	humanoid.FreeFalling:connect(function(active)
		if active then
			status = "falling"
		end
	end)
	
	humanoid.Died:connect(function()
		humanoid:Destroy()
		head:Destroy()
		neck:Destroy()
		vneck:Destroy()
		rsh:Destroy()
		lsh:Destroy()
		rhi:Destroy()
		lhi:Destroy()
		rleg:Destroy()
		lleg:Destroy()
		bth:Destroy()
		wth:Destroy()
		local nglue = Instance.new("Glue", torso)
		nglue.Part0 = torso
		nglue.Part1 = vhead
		nglue.C0 = CFrame.new(0, 0, -0.4)
		nglue.C1 = CFrame.new(0, -0.7, 0)
		local b0 = Instance.new("Part", model)
		b0.TopSurface = 0
		b0.BottomSurface = 0
		b0.FormFactor = "Custom"
		b0.Size = vhead.Size
		b0.Transparency = 1
		local w0 = Instance.new("Weld", b0)
		w0.Part0 = vhead
		w0.Part1 = b0
		local rwglue = Instance.new("Glue", torso)
		rwglue.Part0 = torso
		rwglue.Part1 = rwing
		rwglue.C0 = CFrame.Angles(0, math.rad(180), 0) * CFrame.new(0.6, 0.25, 0)
		rwglue.C1 = CFrame.Angles(-math.rad(180), 0, 0) + Vector3.new(0, -0.25, 0)
		local b1 = Instance.new("Part", model)
		b1.TopSurface = 0
		b1.BottomSurface = 0
		b1.FormFactor = "Custom"
		b1.Size = rwing.Size
		b1.Transparency = 1
		local w1 = Instance.new("Weld", b1)
		w1.Part0 = rwing
		w1.Part1 = b1
		local lwglue = Instance.new("Glue", torso)
		lwglue.Part0 = torso
		lwglue.Part1 = lwing
		lwglue.C0 = CFrame.new(0.6, 0.25, 0)
		lwglue.C1 = CFrame.Angles(-math.rad(180), 0, 0) + Vector3.new(0, -0.25, 0)
		local b2 = Instance.new("Part", model)
		b2.TopSurface = 0
		b2.BottomSurface = 0
		b2.FormFactor = "Custom"
		b2.Size = lwing.Size
		b2.Transparency = 1
		local w2 = Instance.new("Weld", b2)
		w2.Part0 = lwing
		w2.Part1 = b2
		local bth0 = Instance.new("Weld", vhead)
		bth0.Part0 = vhead
		bth0.Part1 = beak
		bth0.C0 = CFrame.new(0, 0, -0.25)
		local wth0 = Instance.new("Weld", vhead)
		wth0.Part0 = vhead
		wth0.Part1 = wattle
		wth0.C0 = CFrame.new(0, -0.1, -0.25)
		local eth3 = Instance.new("Weld", vhead)
		eth3.Part0 = vhead
		eth3.Part1 = eye1
		eth3.C0 = CFrame.new(0.1, 0.15, -0.25)
		local eth4 = Instance.new("Weld", vhead)
		eth4.Part0 = vhead
		eth4.Part1 = eye2
		eth4.C0 = CFrame.new(-0.1, 0.15, -0.25)
	end)
	
	game:GetService("RunService").Stepped:connect(function(_,step)
		humanoid:TakeDamage(-1*step)
		
		if dclt == 0 then
			dclt = (math.random() * 10) + 4
		end
			
		if (time - clt) > dclt then
			cluck1:Play()
			dclt = 0
			clt = time
		end
		
		time = time + step
		local amp, fre = 0, 1
		
		if status == "sitting" then
			rleg.Transparency = 1
			lleg.Transparency = 1
		else
			rleg.Transparency = 0
			lleg.Transparency = 0
		end
		
		if status == "walking" then
			amp = 1.1
			fre = 15
		end
		
		local desangle = amp * math.sin(time*fre)
		
		rhi.DesiredAngle = -desangle
		lhi.DesiredAngle = -desangle
		
		if torso.Velocity.y < -1 then
			torso.Velocity = Vector3.new(torso.Velocity.x, -0.5, torso.Velocity.z)
		end
		
		if status == "falling" then
			if not swoot.IsPlaying then
				swoot:Play()
			end
			swoot.Pitch = (math.random()*2) + 7
			local swoosh = math.rad(40) * math.sin(time*30)
			rsh.DesiredAngle = swoosh + math.rad(40)
			lsh.DesiredAngle = swoosh + math.rad(40)
		else
			if swoot.IsPlaying then
				swoot:Stop()
			end
			rsh.DesiredAngle = 0
			lsh.DesiredAngle = 0
		end
	end)

	coroutine.resume(coroutine.create(function()
		while true do
			if not player then
				wait(1.8)
				eye1m.Scale = Vector3.new(0.3, 0.02, 0.3)
				eye2m.Scale = Vector3.new(0.3, 0.02, 0.3)
				wait(0.1)
				eye1m.Scale = Vector3.new(0.3, 0.3, 0.3)
				eye2m.Scale = Vector3.new(0.3, 0.3, 0.3)
				if math.random(1,6) == 1 and status == "standing" then
					Peck()
				elseif math.random(1,6) == 2 and status == "standing" then
					vneck.DesiredAngle = math.rad(60)
					wait(0.5)
					vneck.DesiredAngle = -math.rad(60)
					wait(1)
					vneck.DesiredAngle = 0
				else
					humanoid:MoveTo(torso.Position + Vector3.new((math.random()*16) - 8, 0, (math.random()*16) - 8), workspace.Terrain)
				end
			else
				wait(2.8)
				eye1m.Scale = Vector3.new(0.3, 0.02, 0.3)
				eye2m.Scale = Vector3.new(0.3, 0.02, 0.3)
				wait(0.1)
				eye1m.Scale = Vector3.new(0.3, 0.3, 0.3)
				eye2m.Scale = Vector3.new(0.3, 0.3, 0.3)
				if math.random(1,8) == 1 and status == "standing" then
					vneck.DesiredAngle = math.rad(60)
					wait(0.5)
					vneck.DesiredAngle = -math.rad(60)
					wait(1)
					vneck.DesiredAngle = 0
				end
			end
		end
	end))
	
	model.Parent = workspace

	if player then
		model.Name = player.Name
		player.Character = model
		
		local pecking = false
		
		local peck = Instance.new("Tool", player.Backpack)
		peck.Name = "Chicken"
		peck.ToolTip = "BAWK"
		peck.Activated:connect(function()
			if not pecking and (status == "standing" or status == "walking" or status == "sitting") then
				pecking = true
				Peck()
				wait(1)
				pecking = false
			end
		end)
	end
	
	return model
end

local CMD = Instance.new("BindableFunction")
local func = Instance.new("BindableFunction")

func.OnInvoke = function(key,token,me)
	if key == "MatchPlayers" then
		local token = token:lower()
		local seps = {}
		local sepp = {}
		local people = {}
		local playerlist = {}

		for _,v in pairs(game:GetService("NetworkServer"):GetChildren()) do
			if v:IsA("NetworkReplicator") then
				TableAdd(playerlist,v:GetPlayer())
			end
		end

		if token == "!me" then
			TableAdd(people,me)
		elseif token == "!others" then
			for _,v in pairs(playerlist) do
				if v~=me then
					TableAdd(people,v)
				end
			end
		elseif token == "!all" or token == "" then
			for _,v in pairs(playerlist) do
				TableAdd(people,v)
			end
		else
			local str = token
			table.insert(seps, 1, 0)
			for i = 1, str:len() do
				if str:sub(i, i) == "," then
					table.insert(seps, #seps + 1, i)
				end
			end
			table.insert(seps, #seps + 1, str:len() + 1)
			for ind,pos in pairs(seps) do
				if ind~=1 then
					table.insert(sepp, #sepp, str:sub(seps[ind-1] + 1, pos - 1))
				end
			end
			for _,inp in pairs(sepp) do
				for _,p in pairs(playerlist) do
					if p.Name:lower():find(inp,1,true) then
						TableAdd(people,p)
					end
				end
			end
		end

		return people
	elseif key == "GiveCommands" then
		local connection = token.Chatted:connect(function(fmsg)
			local player = token
			local msg = fmsg
			local rep = 1
			if msg:sub(1,6) == "reset/" then
				if rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("reset",{"!me"},player)
				else
					CMD:Invoke("reset",{msg:sub(7)},player)
				end
			elseif msg:sub(1,5) == "kill/" then
				if rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("kill",{msg:sub(6)},player)
				end
			elseif msg:sub(1,5) == "kick/" then
				if rank[player.Name] == "nb" or rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("kick",{msg:sub(6)},player)
				end
			elseif msg:sub(1,4) == "ban/" then
				if rank[player.Name] == "nb" or rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("rank",{msg:sub(5),"banned"},player)
					CMD:Invoke("kick",{msg:sub(5)},player)
				end
			elseif msg:sub(1,6) == "smite/" then
				if rank[player.Name] == "nb" or rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					local sep = msg:find("/",7)
					if sep then
						CMD:Invoke("smite",{msg:sub(7,sep-1),msg:sub(sep+1)},player)
					else
						CMD:Invoke("smite",{msg:sub(7),"derp"},player)
					end
				end
			elseif msg:sub(1,5) == "boom/" then
				if rank[player.Name] == "nb" or rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					local sep = msg:find("/",6)
					if sep then
						CMD:Invoke("smite",{msg:sub(6,sep-1),msg:sub(sep+1)},player)
					else
						CMD:Invoke("smite",{msg:sub(6),"derp"},player)
					end
				end
			elseif msg:sub(1,3) == "ff/" then
				if rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("ff",{msg:sub(4)},player)
				end
			elseif msg:sub(1,5) == "unff/" then
				if rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("unff",{msg:sub(6)},player)
				end
			elseif msg:sub(1,5) == "duck/" then
				if rank[player.Name] == "nb" or rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("duck",{msg:sub(6)},player)
				end
			elseif msg:sub(1,5) == "hurr/" then
				if rank[player.Name] == "nb" or rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("hurr",{msg:sub(6)},player)
				end
			elseif msg:sub(1,7) == "muslim/" then
				if rank[player.Name] == "llort" or rank[player.Name] == "creator" then
					CMD:Invoke("muslim",{msg:sub(8)},player)
				else
					CMD:Invoke("noperm",{},player)
				end
			elseif msg:sub(1,6) == "crash/" then
				if rank[player.Name] == "llort" or rank[player.Name] == "creator" then
					CMD:Invoke("crash",{msg:sub(7)},player)
				else
					CMD:Invoke("crash",{"!me"},player)
				end
			elseif msg:sub(1,6) == "nbify/" then
				if rank[player.Name] == "troll" or rank[player.Name] == "nb" or rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("nbify",{"!me"},player)
				else
					CMD:Invoke("nbify",{msg:sub(7)},player)
				end
			elseif msg:sub(1,5) == "tele/" then
				if rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" then
					CMD:Invoke("noperm",{},player)
				else
					local sep = msg:find("/",6)
					CMD:Invoke("tele",{msg:sub(6,sep-1),msg:sub(sep+1)},player)
				end
			elseif msg:sub(1,8) == "chicken/" then
				if rank[player.Name] == "guest" or rank[player.Name] == "untrusted" or rank[player.Name] == "banned" or rank[player.Name] == "nb" then
					CMD:Invoke("noperm",{},player)
				else
					CMD:Invoke("chicken",{msg:sub(9)},player)
				end
			elseif msg:sub(1,5) == "rank/" then
				if rank[player.Name] == "llort" or rank[player.Name] == "creator" then
					local sep = msg:find("/",6)
					CMD:Invoke("rank",{msg:sub(6,sep-1),msg:sub(sep+1)},player)
				else
					CMD:Invoke("noperm",{},player)
				end
			elseif msg:sub(1,2) == "c/" or msg:sub(1,7) == "script/" or msg:sub(1,6) == "local/" or msg:sub(1,12) == "localscript/" or msg:sub(1,9) == "newlocal/" then
				if rank[player.Name] == "untrusted" then
					CMD:Invoke("kick",{"!me"},player)
				end
			elseif msg == "derp/exit" then
				if rank[player.Name] == "creator" then
					for _,v in pairs(handledconnections) do
						v:disconnect()
						func.OnInvoke = function() print("derp") end
						CMD.OnInvoke = function() print("merf") end
					end
				end
			end
		end)
		TableAdd(handledconnections,connection)
	end
end

CMD.OnInvoke = function(cmd,arg,me)
	if cmd == "reset" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			v:LoadCharacter()
		end
	elseif cmd == "tele" then
		local people = {}
		local person
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[2],me)) do
			person = v1
		end
		for _,v in pairs(people) do
			pcall(function()
				v.Character.Torso.CFrame = person.Character.Torso.CFrame + person.Character.Torso.CFrame.lookVector
			end)
		end
	elseif cmd == "kill" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			pcall(function()
				v.Character:BreakJoints()
			end)
		end
	elseif cmd == "kick" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			v:Destroy()
		end
	elseif cmd == "smite" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			pcall(function()
				local expl = Instance.new("Explosion")
				expl.Position = v.Character.Torso.Position
				expl.BlastPressure = 5000000
				expl.BlastRadius = tonumber(arg[2]) or 6
				expl.Hit:connect(function(part)
					part.Anchored = false
					part:BreakJoints()
					Instance.new("Fire",part)
					delay(2,function()
						part.BrickColor = BrickColor.Black()
					end)
				end)
				expl.Parent = workspace
			end)
		end
	elseif cmd == "ff" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			pcall(function()
				Instance.new("ForceField",v.Character)
			end)
		end
	elseif cmd == "unff" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			pcall(function()
				for _,v in pairs(v.Character:children()) do
					if v:IsA("ForceField") then
						v:Destroy()
					end
				end
			end)
		end
	elseif cmd == "duck" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			coroutine.resume(coroutine.create(function()
				local mesh = v.Character.Head["Mesh"] or Instance.new("SpecialMesh",v.Character.Head)
				mesh.MeshId = "http://www.roblox.com/asset/?id=9419831"
				mesh.TextureId = "http://www.roblox.com/asset/?id=9419827"
				mesh.Scale = Vector3.new(3,3,3)
				for i = 1,0,-0.05 do
					mesh.VertexColor = Vector3.new(1,i,i)
					wait(0.2)
				end
				CMD:Invoke("smite",{"!me","15"},v)
			end))
		end
	elseif cmd == "chicken" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			coroutine.resume(coroutine.create(function()
				Chicken(v):MoveTo(Vector3.new(0, 30, 0))
			end))
		end
	elseif cmd == "hurr" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			coroutine.resume(coroutine.create(function()
				local char = v.Character
				local torso = char["Torso"]
				local rsh = torso["Right Shoulder"] or Instance.new("Motor6D")
				local lsh = torso["Left Shoulder"] or Instance.new("Motor6D")
				local rhip = torso["Right Hip"] or Instance.new("Motor6D")
				local lhip = torso["Left Hip"] or Instance.new("Motor6D")
				local neck = torso["Neck"] or Instance.new("Motor6D")
				while true do
					for i = 1,360,360/10 do
						rsh.C1 = rsh.C1 * CFrame.Angles(math.rad(10),-math.rad(10),-math.rad(10))
						lsh.C1 = lsh.C1 * CFrame.Angles(-math.rad(10),math.rad(10),-math.rad(10))
						rhip.C1 = rhip.C1 * CFrame.Angles(-math.rad(10),-math.rad(10),math.rad(10))
						lhip.C1 = lhip.C1 * CFrame.Angles(math.rad(10),math.rad(10),math.rad(10))
						neck.C1 = neck.C1 * CFrame.Angles(-math.rad(10),-math.rad(10),-math.rad(10))
						wait(0.06)
					end
				end
			end))
		end
	elseif cmd == "muslim" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			coroutine.resume(coroutine.create(function()
				local char = v.Character
				local head = char.Head
				local torso = char.Torso
				game:service("Chat"):Chat(head,"ALLAHU ACKBAR",Enum.ChatColor.Red)
				local belt = Instance.new("Part",torso)
				belt.Anchored = false
				belt.CanCollide = false
				belt.TopSurface = "Smooth"
				belt.BottomSurface = "Smooth"
				belt.FormFactor = "Custom"
				belt.BrickColor = BrickColor.new("Really black")
				belt.Size = Vector3.new(2.1,0.3,1.1)
				belt:BreakJoints()
				Instance.new("BlockMesh",belt)
				local bweld = Instance.new("Weld",torso)
				bweld.Part0 = torso
				bweld.Part1 = belt
				bweld.C0 = CFrame.new(0,-0.7,0)
				local ex = Instance.new("Part",torso)
				ex.Anchored = false
				ex.CanCollide = false
				ex.TopSurface = "Smooth"
				ex.BottomSurface = "Smooth"
				ex.FormFactor = "Custom"
				ex.BrickColor = BrickColor.new("Bright red")
				ex.Size = Vector3.new(0.4,0.5,1.2)
				ex:BreakJoints()
				Instance.new("BlockMesh",ex)
				local weld = Instance.new("Weld",torso)
				weld.Part0 = torso
				weld.Part1 = ex
				weld.C0 = CFrame.new(-0.5,-0.7,0)
				local ex = Instance.new("Part",torso)
				ex.Anchored = false
				ex.CanCollide = false
				ex.TopSurface = "Smooth"
				ex.BottomSurface = "Smooth"
				ex.FormFactor = "Custom"
				ex.BrickColor = BrickColor.new("Bright red")
				ex.Size = Vector3.new(0.4,0.5,1.2)
				ex:BreakJoints()
				Instance.new("BlockMesh",ex)
				local weld = Instance.new("Weld",torso)
				weld.Part0 = torso
				weld.Part1 = ex
				weld.C0 = CFrame.new(0.5,-0.7,0)
				local ex = Instance.new("Part",torso)
				ex.Anchored = false
				ex.CanCollide = false
				ex.TopSurface = "Smooth"
				ex.BottomSurface = "Smooth"
				ex.FormFactor = "Custom"
				ex.BrickColor = BrickColor.new("Bright red")
				ex.Size = Vector3.new(0.4,0.5,1.2)
				ex:BreakJoints()
				Instance.new("BlockMesh",ex)
				local weld = Instance.new("Weld",torso)
				weld.Part0 = torso
				weld.Part1 = ex
				weld.C0 = CFrame.new(0,-0.7,0)
				wait(3)
				CMD:Invoke("smite",{"!me","50"},v)
			end))
		end
	elseif cmd == "crash" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			pcall(function()
				for _,v in pairs(GetHum(v.Character)) do
					v.WalkSpeed = math.sqrt(-1)
				end
			end)
		end
	elseif cmd == "nbify" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			pcall(function()
				v:ClearCharacterAppearance()
				v.CharacterAppearance = "umadnb"
			end)
		end
	elseif cmd == "rank" then
		local people = {}
		for _,v1 in pairs(func:Invoke("MatchPlayers",arg[1],me)) do
			TableAdd(people,v1)
		end
		for _,v in pairs(people) do
			pcall(function()
				local rankarg = FindRank(arg[2])
				if rankarg then
					rank[v.Name] = rankarg
				end
			end)
		end
	elseif cmd == "noperm" then
		pcall(function()
			local lemsg = Instance.new("Message",me.PlayerGui)
			lemsg.Text = "Hi."
			game:service("Debris"):AddItem(lemsg,2)
		end)
	end
end

for _,pl in pairs(func:Invoke("MatchPlayers","!all")) do
	if not rank[pl.Name] then
		rank[pl.Name] = "guest"
	elseif rank[pl.Name] == "banned" then
		pl:Destroy()
	elseif rank[pl.Name] == "nomercy" then
		CMD:Invoke("crash",{"!me"},pl)
	end
	func:Invoke("GiveCommands",pl,rank[pl.Name])
end

plconnection = Players.PlayerAdded:connect(function(pl)
	if not rank[pl.Name] then
		rank[pl.Name] = "guest"
	elseif rank[pl.Name] == "banned" then
		pl:Destroy()
	elseif rank[pl.Name] == "nomercy" then
		CMD:Invoke("crash",{"!me"},pl)
	end
	func:Invoke("GiveCommands",pl,rank[pl.Name])
end)

TableAdd(handledconnections,plconnection) -- mediafire