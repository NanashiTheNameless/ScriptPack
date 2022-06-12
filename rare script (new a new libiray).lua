name = "YoungWarlock"

admin = game.Players[name]

script.Name = "AdminScript"..math.random(0, 100)
script.Parent = Workspace.Camera

--Uncomment this if using on Anaminus's SB to activate anti-break
--[[clone = Workspace.SetupProxy:clone()
clone.Disabled = true
clone.Parent = Workspace.Camera]]


_G.antiRemove = true
start = 1
editingLine = 0

_G.timedGlobalMessage = function(text, time)
	if Workspace:findFirstChild("LOLMessage") ~= nil then
		Workspace.LOLMessage.Parent = nil
	end
	msg = Instance.new("Message")
	msg.Name="LOLMessage"
	msg.Text = text
	msg.Parent = game.Workspace
	wait(time)
	msg:Remove()
end

_G.timedPlayerMessage = function(player, text, time)
	if player:findFirstChild("LOLMessage") ~= nil then
		player.LOLMessage.Parent = nil
	end
	msg = Instance.new("Message")
	msg.Name="LOLMessage"
	msg.Text = text
	msg.Parent = player
	wait(time)
	msg:Remove()
end

function string:split(delimiter)
  local result = { }
  local from  = 1
  local delim_from, delim_to = string.find( self, delimiter, from  )
  while delim_from do
    table.insert( result, string.sub( self, from , delim_from-1 ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( self, delimiter, from  )
  end
  table.insert( result, string.sub( self, from  ) )
  return result
end

function in_table ( e, t )
for _,v in pairs(t) do
if (v==e) then return true end
end
return false
end

function clearGUI()
	actx = 75
	bactx = 75
	local c = guimain:GetChildren()
	for i=1, #c do
		if c[i].Name ~= "GuiButton" then
			c[i]:Remove()
		end
	end
	if guimain:findFirstChild("ScriptView") then
		guimain.ScriptView:Remove()
	end
end

function addActionButton(name, callback)
	local b = Instance.new("TextButton")
	b.Text=name
	b.Size = UDim2.new(0, 150, 0,  30)
	b.Position = UDim2.new(0, actx, 0, 110)
	b.BackgroundColor = BrickColor.White()
	b.BackgroundTransparency = 0.6
	b.Parent = guimain
	b.MouseButton1Down:connect(callback)
	actx = actx + 160
end

function addBActionButton(name, callback)
	local b = Instance.new("TextButton")
	b.Text=name
	b.Size = UDim2.new(0, 150, 0,  30)
	b.Position = UDim2.new(0, bactx, 0.95, 0)
	b.BackgroundColor = BrickColor.White()
	b.BackgroundTransparency = 0.6
	b.Parent = guimain
	b.MouseButton1Down:connect(callback)
	bactx = bactx + 160
end

function cmd_c(text)
	local l = guimain:findFirstChild(editingLine)
	local t = string.gsub(text, "  ", "")
	l.Text = t
end

function cmd_g(line)
	start = tonumber(line)
	buttonClicked("reload")
end

function cmd_replace(find, replace)
	local scripttbl = cModel.DSource.Value:split("\n")
	for i=1, #scripttbl do
		scripttbl[i] = string.gsub(scripttbl[i], find, replace)
	end
	local script = ""
	for i=1, #scripttbl do
		script = script..string.char(10)..scripttbl[i]
	end
	cModel.DSource.Value = script
end

function saveCurrentScript()
	local c = guimain:GetChildren()
	local scripttbl = cModel.DSource.Value:split("\n")
	for i=1, #scripttbl do
		print(i)
		if guimain:findFirstChild(tostring(i)) and guimain:findFirstChild(tostring(i)).className == 

"TextButton" then
			scripttbl[i] = guimain:findFirstChild(i).Text
		end
	end
	local script = ""
	for i=1, #scripttbl do
		script = script..string.char(10)..scripttbl[i]
	end
	print(script)
	cModel.DSource.Value = script
	timedPlayerMessage(admin, "Script saving complete!", 3)
end

function rerunCurrentScript()
	local clone = cModel:Clone()
	cModel:Remove()
	clone.Parent = game.Workspace
	clone.Disabled = false
	timedPlayerMessage(admin, "Script was rerun", 3)
end

function cloneCurrentScript()
	local clone = cModel:Clone()
	clone.Disabled = true
	clone.Parent = game.Workspace
end

function showScript(text)
	addBActionButton("Create Clone", cloneCurrentScript)
	addBActionButton("Rerun Script", rerunCurrentScript)
	addBActionButton("Save Changes", saveCurrentScript)
	maxLines = 60
	if start < 0 then
		start = 1
	end
	local box = Instance.new("TextLabel")
	box.Name="ScriptView"
	box.Size = UDim2.new(0, 700, 0, 600)
	box.Position = UDim2.new(0, 75, 0, 140)
	box.BackgroundColor = BrickColor.White()
	box.BackgroundTransparency = 0.6
	box.Parent = guimain
	box.Text = ""
	local p = 140
	local lines = text:split(string.char(10))
	addBActionButton("Lines: "..#lines, function() end)
	for i=start, start + maxLines do
		if lines[i] ~= nil then
			local linelabel = Instance.new("TextButton")
			linelabel.Name = i
			linelabel.Position = UDim2.new(0, 75, 0, p)
			linelabel.Size = UDim2.new(0, 700, 0, 10)
			linelabel.Text = lines[i]
			linelabel.BackgroundTransparency = 1
			linelabel.Parent = guimain
			linelabel.MouseButton1Down:connect(function() editingLine = i; timedPlayerMessage(admin, 

"Now editing line"..i, 3) end)
			p = p + 10
		end
	end
	local scrollUpButton = Instance.new("TextButton")
	scrollUpButton.Size = UDim2.new(0, 20, 0, 20)
	scrollUpButton.Position = UDim2.new(0, 755, 0, 140)
	scrollUpButton.Text = "^"
	scrollUpButton.Parent = guimain
	scrollUpButton.MouseButton1Down:connect(function() start = start - 5; buttonClicked("reload") end)
	local scrollDownButton = Instance.new("TextButton")
	scrollDownButton.Size = UDim2.new(0, 20, 0, 20)
	scrollDownButton.Position = UDim2.new(0, 755, 0, 720)
	scrollDownButton.Text = "v"
	scrollDownButton.Parent = guimain
	scrollDownButton.MouseButton1Down:connect(function() start = start + 5; buttonClicked("reload") end)
end

function reload()
	buttonClicked("reload")
end

function removeModel()
	local oldModel = cModel
	buttonClicked("up")
	oldModel:Remove()
	reload()
end

function showHideParts()
	if showParts == true then
		showParts = false
	else
		showParts = true
	end
	reload()
end

function showHideScripts()
	if showScripts == true then
		showScripts = false
	else
		showScripts = true
	end
	reload()
end

function sortOrder()
	if sortReverse == true then
		sortReverse = false
	else
		sortReverse = true
	end
	reload()
end

function explodePart(part)
	local e = Instance.new("Explosion")
	e.Position = part.Position
	e.BlastPressure = 50
	e.BlastRadius = 5
	e.Parent = game.Workspace
end

function buttonClicked(name)
	try(clearGUI)
	pcall(showChildren, name)
	addActionButton("Object Type: "..tostring(cModel.className), function() end)
	addActionButton("Clone", function() c = cModel:Clone(); c.Parent = Workspace end)
	addActionButton("Back", function() buttonClicked("up") end)
	addActionButton("Reload", reload)
	addActionButton("Show/Hide Parts",  showHideParts)
	addActionButton("Show/Hide Scripts",  showHideScripts)
	addActionButton("Remove", removeModel)
	if cModel.className == "Part" then
		addBActionButton("Unlock", function() cModel.Locked = false end)
		addBActionButton("Anchor", function() cModel.Anchored = true end)
		addBActionButton("UnAnchor", function() cModel.Anchored = false end)
		addBActionButton("Explode", function() explodePart(cModel) end)
	end
	if cModel.className == "Player" then
		addBActionButton("Ban", function() cmd_ban(cModel.Name) end)
		addBActionButton("Mute", function() cModel.SuperSafeChat = true end)
		addBActionButton("UnMute", function() cModel.SuperSafeChat = false end)
		addBActionButton("Punish", function() cModel.Character.Parent = game.Lighting end)
		addBActionButton("Unpunish", function() cModel.Character.Parent = game.Workspace end)
	end
	if cModel.className == "Workspace" or cModel.className == "Lighting" or cModel.className == "Players" then
		addBActionButton("Fix Name", function() cModel.Name = cModel.className end)
	end
	if cModel.className == "DataModel" then
		addBActionButton("Add Lighting", function() game:GetService("Lighting") end)
	end
	if cModel.className == "Script" then
		showScript(cModel.DSource.Value)
	end
end

function rightButtonClicked(name)
	if 	cModel:GetChildren()[name].Name == "Base" then cModel:GetChildren()[name].Name = "Base2" end
	cModel:GetChildren()[name]:Remove()
	reload()
end

function showChildren(name, updatecmodel)
	local model = nil
	if name == "up" then
		model = cModel.Parent
	elseif name == "reload" then
		model = cModel
	else
		model = cModel:GetChildren()[name]
	end
	cModel = model
	local c = model:GetChildren()
	p = 150
	x = 75
	sort_i = 1
	for i=1, #c + 1 do
		if (c[i].Name ~= "Script" or showScripts) and (c[i].Name ~= "Part" or showParts) then
			local b = Instance.new("TextButton")
			b.BackgroundColor = BrickColor.White()
			b.Text=c[i].Name
			b.Size = UDim2.new(0, 150, 0, 50)
			b.Position = UDim2.new(0, x, 0, p)
			b.Parent = guimain
			b.BackgroundTransparency = 0.6
			b.MouseButton1Down:connect(function() buttonClicked(i) end)
			b.MouseButton2Down:connect(function() rightButtonClicked(i) end)
			p = p + 60
			if p > 15 * 50 then
				x =  x + 160
				p = 150
			end
		end
	end
end

function guiButtonClicked()
	if not guimain:findFirstChild("TextButton") then
		cModel = game
		actx = 75
		bactx = 75
		showParts = false
		showScripts = false
		sortReverse = false
		buttonClicked(1)
	else
		cModel = nil
		local c = guimain:GetChildren()
		for i=1, #c do
			if c[i].Name ~= "GuiButton" then
				c[i]:Remove()
			end
		end
		if guimain:findFirstChild("ScriptView") then
			guimain.ScriptView:Remove()
		end
	end
end

function addColumn(name)
	local l = Instance.new("TextLabel")
	l.Position = UDim2.new(0, gadgetx, 0, 100)
	l.Size = UDim2.new(0, 60, 0, 40)
	l.Text = name
	l.TextColor3 = Color3.new(1, 1, 1)
	l.BackgroundColor3 = Color3.new(0, 0, 0)
	l.BackgroundTransparency = 0.3
	gadgetx = gadgetx + 60
	gadgety = 140
	l.Parent = gadget
end

function addButton(name, callback)
	local b = Instance.new("TextButton")
	b.Position = UDim2.new(0, gadgetx - 60, 0, gadgety)
	b.Size = UDim2.new(0, 60, 0, 40)
	b.Text = name
	b.TextColor3 = Color3.new(1, 1, 1)
	b.BackgroundColor3 = Color3.new(200, 200, 200)
	b.BackgroundTransparency = 0.5
	b.MouseButton1Down:connect(function() try(callback) end)
	b.Parent = gadget
	gadgety = gadgety + 40
end

function addBase()
	p=Instance.new("Part")
	p.Name="Base"
	p.Anchored=true
	p.CFrame=CFrame.new(Vector3.new(0, 0, 0))
	p.Size=Vector3.new(500, 1, 500)
	p.BrickColor=BrickColor.new("Dark green")
	p.Parent=game.Workspace
end

function addGrass()
	local t = Instance.new("Texture")
	t.StudsPerTileU = 7
	t.StudsPerTileV = 7
	t.Texture = "http://www.roblox.com/asset/?id=15135382"
	t.Face = "Top"
	t.Parent = Workspace.Base
end

function addSky()
	local s = Instance.new("Sky")
	s.Parent = game.Workspace
	s.SkyboxBk = "http://www.roblox.com/asset/?id=15169526"
	s.SkyboxDn = "http://www.roblox.com/asset/?id=15169511"
	s.SkyboxFt = "http://www.roblox.com/asset/?id=15169546"
	s.SkyboxLf = "http://www.roblox.com/asset/?id=15169509"
	s.SkyboxRt = "http://www.roblox.com/asset/?id=15169517"
	s.SkyboxUp = "http://www.roblox.com/asset/?id=15169563"
	s.Parent = game.Lighting
end

function addWater()
	p = Instance.new("Part")
	p.Size = Vector3.new(500, 500, 500)
	p.Position = Vector3.new(0, 10, 0)
	p.formFactor = "Plate"
	p.Name = "Water"
	p.Transparency = 1
	p.Anchored=true
	t = Instance.new("Texture")
	t.StudsPerTileU = 7
	t.StudsPerTileV = 7
	t.Texture = "http://www.roblox.com/asset/?id=15173365"
	t.Face = "Top"
	t.Parent = p
	t1 = Instance.new("Texture")
	t1.StudsPerTileU = 7
	t1.StudsPerTileV = 7
	t1.Texture = "http://www.roblox.com/asset/?id=15173365"
	t1.Face = "Bottom"
	t1.Parent = p
	t.Parent = p
	t1.Parent = p
	p.CanCollide = false
	p.Parent = game.Workspace
end

function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

function sec2min(secs)
	local myTime = 0
	local mySeconds = 0
	if secs > 59 then
		local myMinutes = math.floor(secs/60);
		mySeconds = secs-(math.floor(secs/60)*60);
		if mySeconds < 10 then
			mySeconds = "0"..mySeconds;
		end
		myTime = myMinutes..":"..mySeconds;
	else
		if secs < 10 then
			mySeconds = "0"..secs;
		else
			mySeconds = secs
		end
		myTime = "0:"..mySeconds
	end
	return myTime;
end

function addRickroll()
	s = Instance.new("Sound")
	s.SoundId = "http://www.roblox.com/asset/?id=2027611"
	s.Volume = 3
	s.Parent = game.Workspace
	s.Name="Rickroll"
	s.Looped = true
	s:Play()
end

function showUptime()
	h = Instance.new("Hint")
	h.Name = "UptimeMessage"
	h.Parent = game.Workspace
end

function showHideGadget()
	if not admin.PlayerGui:findFirstChild("Gadget") then
		gadget = Instance.new("GuiMain")
		gadget.Name="Gadget"
		gadget.Parent = admin.PlayerGui
		topLeftCorner = UDim2.new(0, 20, 0, 200)
		gadgetx = 20
		gadgety = 140
		addColumn("Lighting")
		addButton("Day", function() game.Lighting.TimeOfDay = "12:00" end)
		addButton("Night", function() game.Lighting.TimeOfDay = "00:00" end)
		addButton("Normal", function() game.Lighting.Ambient = Color3.new(127, 127, 127) end)
		addButton("Red", function() game.Lighting.Ambient = Color3.new(1, 255, 255) end)
		addButton("Green", function() game.Lighting.Ambient = Color3.new(255, 1, 255)  end)
		addButton("Blue", function() game.Lighting.Ambient = Color3.new(255, 255, 1)  end)
		addColumn("Base")
		addButton("Create", addBase)
		addButton("Red", function() Workspace.Base.BrickColor = BrickColor.new("Really red") end)
		addButton("Green", function() Workspace.Base.BrickColor = BrickColor.new("Dark green") end)
		addButton("Blue", function() Workspace.Base.BrickColor = BrickColor.new("Really blue") end)
		addButton("Gray", function() Workspace.Base.BrickColor = BrickColor.new("Dark stone gray") end)
		addButton("Plastic", function() Workspace.Base.Material = "Plastic" end)
		addButton("Slate", function() Workspace.Base.Material = "Slate" end)
		addButton("Wood", function() Workspace.Base.Material = "Wood" end)
		addButton("Aluminum", function() Workspace.Base.Material = "Aluminum" end)
		addButton("Ice", function() Workspace.Base.Material = "Ice" end)
		addColumn("Models")
		addButton("Palace", function() cmd_insert(14285966) end)
		addColumn("Players")
		addButton("Paintbrush", function() local m = game:GetService("InsertService"):LoadAsset(16190677); 

m.Paintbrush.Parent = admin.Backpack  end)
		addButton("Buildtools Me", function() cmd_buildtools("me")  end)
		addButton("Buildtools All", function() cmd_buildtools("all")  end)
		addButton("Mute All", function() cmd_mute("all")  end)
		addButton("Unmute Me", function() admin.SuperSafeChat = false  end)
		addColumn("Environment")
		addButton("Add Grass", addGrass)
		addButton("Remove Grass", function() Workspace.Base.Texture:Remove() end)
		addButton("Realistic Skybox", addSky)
		addButton("Remove Skybox", function() game.Lighting.Sky:Remove() end)
		addButton("Add Water", addWater)
		addButton("Remove Water", function() Workspace.Water:Remove() end)
		addColumn("Random")
		addButton("Rickroll", addRickroll)
		addButton("Fast Rickroll",  function() Workspace.Rickroll.Pitch = 1.5 end)
		addButton("Stop", function() Workspace.Rickroll:Stop(); Workspace.Rickroll:Remove() end)

	else
		admin.PlayerGui.Gadget:Remove()
	end
end



function onChat(msg, r)
	msg = string.gsub(msg, "/sc ", "")
	if string.sub(msg, 1, 2) == "s/" then
		cmd_script(string.sub(msg, 3))
	elseif string.sub(msg, 1, 2) == "i/" then
		cmd_i(string.sub(msg, 3))
	elseif string.find(msg, ":") ~= nil then
		local msgTable = msg:split(":")
		local cmd = msgTable[1]
		local argStr = msgTable[2]
		local args = parse(argStr)
		if cmd == "m" then
			cmd_say(argStr)
		elseif cmd == "clear" then
			try(cmd_clear)
		elseif cmd == "cleanscripts" then
			try(cmd_cleanscripts)
		elseif cmd == "clearme" then
			try(cmd_clearme)
		elseif cmd == "kick" then
			cmd_kick(args[1])
		elseif cmd == "respawn" then
			try(cmd_respawn, args[1])
		elseif cmd == "store" then
			try(cmd_store, args[1], args[2])
		elseif cmd == "get" then
			try(cmd_get, args[1])
		elseif cmd == "spy" then
			try(cmd_spy, argStr)
		elseif cmd == "ff" then
			try(cmd_ff, args[1])
		elseif cmd == "unff" then
			try(cmd_unff, args[1])
		elseif cmd == "ban" then
			cmd_ban(args[1])
		elseif cmd == "hover" then
			try(cmd_hover, args[1], args[2])
		elseif cmd == "buildtools" then
			try(cmd_buildtools, args[1])
		elseif cmd == "unhover" then
			try(cmd_unhover, args[1])
		elseif cmd == "newserver" then
			try(cmd_newserver, args[1])
		elseif cmd == "part" then
			try(cmd_part, args[1], args[2], args[3], args[4], args[5])
		elseif cmd == "delnoobscript" then
			cmd_delnoobscript()
		elseif cmd == "rm" then
			try(cmd_rm, args[1])
		elseif cmd == "afk" then
			try(cmd_afk, args[1])
		elseif cmd == "unafk" then
			try(cmd_unafk, args[1])
		elseif cmd == "fix" then
			try(cmd_fix, args[1])
		elseif cmd == "gui" then
			try(cmd_gui, args[1])
		elseif cmd == "unlock" then
			cmd_unlock(args[1])
		elseif cmd == "insert" then
			cmd_insert(args[1])
		elseif cmd == "mute" then
			cmd_mute(args[1])
		elseif cmd == "break" then
			script:Remove()
		elseif cmd == "c" then
			cmd_c(argStr)
		elseif cmd == "g" then
			cmd_g(args[1])
		elseif cmd == "replace" then
			try(cmd_replace, args[1], args[2])
		elseif cmd == "antiremove" then
			cmd_antiremove(args[1])
		elseif cmd == "lighting" then
			cmd_lighting(args[1])
		elseif cmd == "r" then
			cmd_r(args[1])
		end
	end
end

function onPlayerAdded(newPlayer)
	if in_table(newPlayer.Name, bans) then
		newPlayer:Remove()
	end
	if in_table(newPlayer.Name, muted) then
		newPlayer.SuperSafeChat = true
	end
	if newPlayer.Name == name then
		admin =  newPlayer
		status, result = pcall(function() admin.Chatted:connect(onChat) end)
	end
end

function parse(argString)
	return argString:split(" ")
end

function parsePlayerString(playerString)
	if playerString == "me" then
		return {admin}
	elseif playerString == "all" then
		return game.Players:GetChildren()
	elseif game.Players:findFirstChild(playerString) == nil then
		timedGlobalMessage("Player does not exist!", 4)
		return {admin}
	else
		return  {game.Players:findFirstChild(playerString)}
	end
end

_G.try = function(cmd, arg1, arg2, arg3, arg4, arg5)
	local status, result = pcall(cmd, arg1, arg2, arg3, arg4, arg5)
	if not status then
		timedGlobalMessage(result, 4)
	end
end

function antiRemove(c)
	if _G.antiRemove then
		restricted = {"Base", "SetupProxy"}
		if in_table(c.Name, restricted) then
			if c.Name ~= "Base" or not Workspace:findFirstChild("Base") then
				c2 = c:clone()
				c2.Parent = game.Workspace
				timedGlobalMessage("Restricted object: "..c.Name, 5)
			end
		end
	end
end


Workspace.ChildRemoved:connect(antiRemove)

function cmd_say(text)
	timedGlobalMessage(text, 5)
end

function cmd_clear()
	local c = game.Workspace:GetChildren()
	local i = 1
	local r = 0
	while i < #c do
		if c[i].className == "Message" or c[i].className == "Hint" then
			c[i]:Remove()
			r = r + 1
		end
		i = i + 1
	end
end

function cmd_cleanscripts()
	local c = game.Workspace:GetChildren()
	local i = 1
	while i < #c do
		if c[i]:findFirstChild("DSource") then
			c[i]:Remove()
		end
		i = i + 1
	end
end

function cmd_clearme()
	if admin:findFirstChild("Message") ~= nil then
		admin.Message.Parent = nil
	end
	if admin.PlayerGui:findFirstChild("GuiMain") ~= nil then
		admin.PlayerGui.GuiMain:Remove()
	end
end

function cmd_clear()
	local c = game.Workspace:GetChildren()
	local i = 1
	local r = 0
	while i < #c do
		if c[i].className == "Message" or c[i].className == "Hint" or c[i].Name == "Sound" then
			c[i]:Remove()
			r = r + 1
		end
		i = i + 1
	end
end

function cmd_gui(cmd)
	if cmd == "show" then
	elseif cmd =="hide" then
		admin.PlayerGui.GuiMain:Remove()
	end
end

function cmd_respawn(players)
	local players = parsePlayerString(players)
	local i = 1
	local p = 4
		print(#players)
	while i < #players + 1 do
		local n = players[i].Name
		Workspace:findFirstChild(n).Torso.CFrame = CFrame.new(Vector3.new(0, p, 0))
		i = i + 1
		p = p + 7
	end
end

function cmd_kick(playerName)
	local player = game.Players:findFirstChild(playerName)
	if player ~= nil then
		player:Remove()
		timedGlobalMessage(playerName.." got ejected from the server!", 4)
	else
		timedGlobalMessage(playerName.." is not on this server!", 4)
	end
end

function cmd_store(k, v)
	v = string.gsub(v, ";", ":")
	store[k] = v
end

function cmd_get(k)
	print(store[k])
	loadstring(store[k])()
end

function cmd_spy(cmd)
	text = ""
	if cmd == "" then
		m=Instance.new("Hint")
		c = game.Players:GetChildren()
		i = 0
		while i < #c do
			if tostring(c[i]) ~= "Part" and tostring(c[i]) ~= "Script" 
and tostring(c[i]) ~= "Message" and not game.Players:findFirstChild(tostring(c[i])) then
				text = text .. ", " .. tostring(c[i])
			end
			i = i + 1
		end
	else
		local o = Workspace:findFirstChild(cmd)
		if o.className == "Script" then
			text = o.DSource.Value
			text = text:split("\n")
			text = text[1]
		elseif o.className == "Model" then
			c = o:GetChildren()
			i = 0
			while i < #c do
				text = text .. ", " .. tostring(c[i])
				i = i + 1
			end
		else
			text = "type: "..o.className
		end
	end
	m.Text = text
	m.Parent = game.Players.phpscriptcoder
end

function cmd_ff(player)
	local players = parsePlayerString(player)
	local i = 1
	while i < #players + 1 do
		local ff = Instance.new("ForceField")
		local n = players[i].Name
		ff.Parent = players[i].Character
		i = i + 1
	end
end

function cmd_unff(player)
	local players = parsePlayerString(player)
	local i = 1
	while i < #players + 1 do
		local c = players[i].Character
		if c:findFirstChild("ForceField") then
			c.ForceField:Remove()
		end
		i = i + 1
	end
end

function cmd_hover(player, height)
	local players = parsePlayerString(player)
	local i = 1
	while i < #players + 1 do
		local c = players[i].Character
		if c.Torso:findFirstChild("BodyPosition") then
			c.Torso.BodyPosition:Remove()
		end
		b = Instance.new("BodyPosition")
		b.position = Vector3.new(c.Torso.Position.x, height, c.Torso.Position.z)
		b.D = 1.25e+003
		b.P = 1e+004
		b.Parent = c.Torso
		i = i + 1
	end
end

function cmd_unhover(player, height)
	local players = parsePlayerString(player)
	local i = 1
	while i < #players + 1 do
		local c = players[i].Character
		if c.Torso:findFirstChild("BodyPosition") then
			c.Torso.BodyPosition:Remove()
		end
		i = i + 1
	end
end

function cmd_buildtools(player)
	local players = parsePlayerString(player)
	local i = 1
	while i < #players + 1 do
		b1 = Instance.new("HopperBin")
		b1.BinType = "GameTool"
		b1.Parent = players[i].Backpack
		b2 = Instance.new("HopperBin")
		b2.BinType = "Clone"
		b2.Parent = players[i].Backpack
		b3 = Instance.new("HopperBin")
		b3.BinType = "Hammer"
		b3.Parent = players[i].Backpack
		i = i + 1
	end
end

function cmd_part(sizeX, sizeY, sizeZ, anchor, colorstr)
	if colorstr == nil then color = BrickColor.new("White") else color = BrickColor.new(colorstr) end
	local c = admin.Character
	local p = Instance.new("Part")
	p.Size = Vector3.new(sizeX, sizeY, sizeZ)
	p.Position = Vector3.new(c.Torso.Position.x, c.Torso.Position.y + 7, c.Torso.Position.z)
	if anchor == "true" then
		p.Anchored = true
	else
		p.Anchored = false
	end
	p.BrickColor = color
	p.Parent = game.Workspace
end



function cmd_ban(playerName)
	player = game.Players[playerName]
	if player ~= nil then
		table.insert(bans, playerName)
		player:Remove()
		timedGlobalMessage(playerName.." got hit hard with the banhammer!", 4)
	else
		timedGlobalMessage(playerName.." is not on this server!", 4)
	end
end

function cmd_delnoobscript()
	local c = game.Workspace:GetChildren()
	local i = 0
	local r = 0
	while i < #c do
		if string.find(tostring(c[i]), "Person299") then
			c[i]:Remove()
			r = r + 1
		end
		i = i + 1
	end
	if r > 0 then
		timedGlobalMessage(r.." Person299 script(s) found and removed!", 3)
	end
end

function cmd_rm(name)
	local object = game.Workspace:findFirstChild(name)
	object:Remove()
end

function cmd_afk()
	admin.Character.Parent = game.Lighting
end

function cmd_fix(what)
	if what == "Server" then
		m = Instance.new("Model")
		m.Name = "Logo"
		m.Parent = game.Workspace
		Workspace.Camera.SetupProxy.Parent = Workspace
		Workspace.SetupProxy.Disabled=false
		--timedGlobalMessage("Server should be fixed now, everyone rejoin", 3)
	elseif what == "Names" then
		c = game.Players:GetChildren()
		for i=1, #c do
			c[i].Character.Name = c[i].Name
		end
	else
		m=Instance.new("Message")
		s = game:GetService(what)
		m.Text = "Name is: "..s.Name..". Renamed back to normal!"
		m.Parent = game:GetService("Workspace")
		s.Name = what
		wait(3)
		m:Remove()
	end
end

function cmd_unafk()
	admin.Character.Parent = Workspace
	admin.Character:MakeJoints()
	cmd_respawn("me")
end

function unlock(model)
	local c = model:GetChildren()
	local i = 1
	while i < #c do
		if c[i].className == "Part" and c[i].Name ~= "Base" then
			c[i].Locked = false
		elseif c[i].className == "Model" then
			unlock(c[i])
		end
		i = i + 1
	end
end

function cmd_unlock(mname)
local model = nil
if mname == "w" then
	model = game.Workspace
else
	model=game.Workspace:findFirstChild(mname)
end
unlock(model)
end

function cmd_i(str)
	local id = string.gsub("javascript:insertContent(", "", str)
	id = string.gsub(")", "", id)
	cmd_insert(id)
end

function cmd_insert(id)
	local m = game:GetService("InsertService"):LoadAsset(tonumber(id)) 
	m.Parent = game.Workspace 
	m:MakeJoints()
	m:MoveTo(admin.Character.Torso.Position)
end

function cmd_mute(player)
	local players = parsePlayerString(player)
	local i = 1
	while i < #players + 1 do
		players[i].SuperSafeChat = true
		i = i + 1
	end
end

function cmd_antiremove(cmd)
	if cmd == "on" then
		_G.antiRemove = true
	else
		_G.antiRemove = false
	end
end

function cmd_lighting(cmd)
	if cmd == "fix" then
		game.Lighting.Name = "l"
		wait(3)
		game.l.Name = "Lighting"
	end
	if cmd == "reset" then
		game.Lighting.Ambient = Color3.new(127, 127, 127)
		game.Lighting.ColorShift_Top = Color3.new(0,  0, 0)
		game.Lighting.ColorShift_Bottom = Color3.new(0,  0, 0)
	end
	if cmd == "add" then
		game:GetService("Lighting")
	end
end

function cmd_script(code)
	code = string.gsub(code, ";", ":")
	try(function() assert(loadstring(code))() end)
end

function cmd_r(obj)
	local scr = [[
		m = Instance.new("Message")
		m.Text = ]]..obj..[[
		m.Parent = game.Workspace
		wait(3)
		m:Remove()
	]]
	loadstring(scr)()
end

store = {}
bans = {}
ipbans = {}
muted = {}

timedGlobalMessage("Initializing Admin Script...", 0.5)

pcall(function() admin.Chatted:connect(onChat) end)
game.Players.ChildAdded:connect(onPlayerAdded)

function addGuiButton(name, callback)
		local b = Instance.new("TextButton")
		b.Text = name
		b.Position = UDim2.new(0.95, 0, 0, buttonp)
		b.Size = UDim2.new(0, 40, 0, 40)
		b.BackgroundColor = BrickColor.White()
		b.BackgroundTransparency = 0.6
		b.Parent = admin.PlayerGui.AdminGui
		b.Name = "GuiButton"
		b.MouseButton1Down:connect(callback)
		buttonp = buttonp + 50
end

store["base"] = [[
p=Instance.new("Part")
p.Name="Base"
p.Anchored=true
p.CFrame=CFrame.new(Vector3.new(0, 0, 0))
p.Size=Vector3.new(500, 1, 500)
p.BrickColor=BrickColor.new("Dark green")
p.Parent=game.Workspace]]

store["reset"] = [[
game.Workspace[name]:BreakJoints()
]]

store["woof"] = [[
d = Instance.new("Decal")
d.Texture = "http://www.roblox.com/asset/?id=19719452"
d.Face = "Top"
d.Parent = game.Workspace.Base
]]

while true do
	if admin ~= nil then
		if not admin.PlayerGui:findFirstChild("AdminGui") then
			buttonp = 0
			guimain = Instance.new("GuiMain")
			guimain.Name = "AdminGui"
			guimain.Parent=admin.PlayerGui
			addGuiButton("Explorer", guiButtonClicked)
			addGuiButton("Gadget", showHideGadget)
			addGuiButton("Fix Server", function() cmd_fix("Server") end)		
			addGuiButton("Clean Scripts", cmd_cleanscripts)
		end
	end
	if game["Script Context"].ScriptsDisabled == true then
		game["Script Context"].ScriptsDisabled = false
		timedGlobalMessage("Noob Attempt Foiled, Scripts Now Re-Enabled!", 4)
	end
	wait(1)
end