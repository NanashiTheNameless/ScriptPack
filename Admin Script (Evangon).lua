owner = "yfc"
banned = { }
admins = {"yfc"}
mods = { "" } -- Add more if you'd like.
superusers = {}
powerusers = { }

function checkIfAdmin(name)
	for i =1,#admins do
		if name==admins[i] then
			return true
		else
			return false
		end
	end
end
function filler(name)
	return true
end
function checkIfMod(name)
	for i =1,#mods do
		if name==mods[i] then
			return true
		else
			return false
		end
	end
end
function checkIfSuperUser(name)
	for i =1,#superusers do
		if name==superusers[i] then
			return true
		else
			return false
		end
	end
end
function checkIfPowerUser(name)
	for i =1,#powerusers do
		if name==powerusers[i] then
			return true
		else
			return false
		end
	end
end
function showMsgAll(text)
	local m = Instance.new("Hint")
	m.Parent = game.Workspace
	m.Text = text
	wait(3)
	m.Parent = nil
end
function checkIfBanned(player)
	for i = 1,#banned do
		if player.Name == banned[i] then
			player:Remove()
		end
	end
end
function ban(player)
	if player~=nil then
		table.insert(banned, player.Name)
		player:Remove()
	end
end
function kick(player)
	if player~=nil then
		player:Remove()
	end
end
function showMsg(parent, text)
	local m = Instance.new("Hint")
	m.Parent = parent
	m.Text = text
	wait(3)
	m.Parent = nil
end
function getCall(call, parent)
	if call == "" then
		showMsg(parent, "Derpy's Admin Commands Script Loaded (V1.7); General Info Accessed.")
		showMsg(parent, "Type help/ [item name]/ for help in that topic.")
		showMsg(parent, "Commands:")
		showMsg(parent, "Type help/give/ [Info on Giving Hopperbins/Tools.")
		showMsg(parent, "Type help/sb/ [Info on Script Builder; Select Few Only.")
		showMsg(parent, "Type help/setlvl/ [Info on Setting Levels. Owner Only.]")
		showMsg(parent, "Type help/s/ [Info on Shoutouts; Select Few Only.")
		showMsg(parent, "Type help/kill/ [Info on KillScript; Select Few Only.]")
		showMsg(parent, "Type help/ban/ [Info on Banning Users; Select Few Only.]")
		showMsg(parent, "Type help/kick/ [Info on Kicking Users; Select Few Only.]")
		showMsg(parent, "Type help/maxp/ [Info on Setting Max Players; Select Few Only.]")
		showMsg(parent, "Type help/debris/ [Info on Setting Lag-Debris Amount; Owner Only.]")
		showMsg(parent, "Type help/ for a list of options according to the script.")
		showMsg(parent, "Type help/updates/ for a list of upcoming updates. Free to use.]")
		showMsg(parent, "Type help/time/ [Info on Setting Daylight Time; Select Few Only.")
	end
	if call == "give/" then
		showMsg(parent, "Give Toolbar Opened. Type give/[BinType]/[Name]")
		showMsg(parent, "To Use, type: give/[BinType]/[Name]")
		showMsg(parent, "What it does: Gives a Hopperbin to Name, BinType is set by the BinType section.")
	end
	if call == "sb/" then
		showMsg(parent, "Script Builder Toolbar Opened. Type sb/[Script]")
		showMsg(parent, "To Use, type: sb/[Script]")
		showMsg(parent, "What it does: Makes a script. It's source is 'Script'.")
	end
	if call == "setlvl/" then
		showMsg(parent, "Setlvl Toolbar Opened. Type setlvl/[Level]/[Name]")
		showMsg(parent, "To Use, type: setlvl/[Level]/[Name]")
		showMsg(parent, "What it does: Sets User's name to a certain level, on Dignity's Chart.")
		showMsg(parent, "Levels vary. Dignity selects whom may use this script. PM him or rogue658 for info regarding this.")
	end
	if call == "s/" then
		showMsg(parent, "Shoutout Toolbar Opened. Type s/[Message]")
		showMsg(parent, "To Use, type: s/[Message]")
		showMsg(parent, "What it does: Shouts a message of your choice. Use this considerably.")
	end
	if call == "kill/" then
		showMsg(parent, "Kill Toolbar Opened. Type kill/[Name]")
		showMsg(parent, "To use, type: kill/[Name]")
		showMsg(parent, "What it does: Kills whoevers name I, or any of the admins choose to put there.")
	end
	if call == "ban/" then
		showMsg(parent, "Ban Toolbar Opened. Type bye [Name]")
		showMsg(parent, "To use, type: bye [Name]")
		showMsg(parent, "What it does: Permanently bans Name until changed from edit mode. Used only by Dignity.")
	end
	if call == "kick/" then
		showMsg(parent, "Kick Toolbar Opened. Type kick/[Name]")
		showMsg(parent, "To use, type: kick/[Name]")
		showMsg(parent, "What it does: Temporarily kicks user from the server. Admin Only.")
	end
	if call == "maxp/" then
		showMsg(parent, "MaxPlayers Toolbar Opened. Type maxp/[Number]")
		showMsg(parent, "To use, type: maxp/[Number]")
		showMsg(parent, "What it does: Sets MaxPlayers to Number given. Owner Only.")
	end
	if call == "debris/" then
		showMsg(parent, "Debris Toolbar Opened. Type debris/[Item]")
		showMsg(parent, "To Use, type: debris/[Item]")
		showMsg(parent, "What it does: Deletes Item server-PERMANENTLY. Creates fix. Owner Only.")	
	end
	if call == "help/" then
		showMsg(parent, "Help Toolbar Opened.")
		showMsg(parent, "To use, type: help/[Command]")
		showMsg(parent, "What it does: Shows help file for Command, Command can be blank.")
	end
	if call == "updates/" then
		showMsg(parent, "Updates Toolbar Opened. Type updates/")
		showMsg(parent, "To use, type: updates/")
		showMsg(parent, "What it does: Shows current updates, and changes to Dignity's ScriptBuilder.")
	end
	if call == "time/" then
		showMsg(parent, "Time Settings Toolbar Opened. Type time/[TimeOfDay]")
		showMsg(parent, "To use, type: time/[game.Lighting.TimeOfDay =]")
		showMsg(parent, "What it does: Sets time to the amount of time given. Use considerably.")
	end
end
function onChatted(msg,recipient,speaker)
	if string.sub(msg,1,5) == "help/" then
		getCall(string.sub(msg,6), speaker)
	end
	if string.sub(msg,1,2) == "s/" and speaker.Level.Value >= 4 then
		showMsgAll(string.sub(msg,3))
	end
	if string.sub(msg,1,3) == "sb/" and speaker.Level.Value >= 4 then
		local s = Instance.new("Script")
		s.Parent = game.Workspace
		s.Disabled = false
		s.Name = "NewScript"
		s.Source = string.sub(msg,4)
		wait(0)
		local new = s:Clone()
		new.Parent = game.Workspace
		s:Remove()
	end
	if string.sub(msg,1,5) == "give/" and speaker.Level.Value >= 4 then
		local p = game.Players:GetChildren()
		for i = 1,#p do
			if p[i].Name == string.sub(msg,9) then
				local h = 	Instance.new("Hopperbin", "Tool")
				h.Parent = p[i].Backpack
				h.BinType = tonumber(string.sub(msg,6,6))
			end
		end
	end
	if string.sub(msg,1,5) == "maxp/" and speaker.Level.Value >= 4 then
		game.Players.MaxPlayers = string.sub(msg,6)
	end
	if string.sub(msg,1,5) == "kill/" and speaker.Level.Value >= 4 then
		local players = game.Players:GetChildren()
		for i = 1,#players do
			if players[i].Name==string.sub(msg,6) then
				if players[i].Character~=nil then
					players[i].Character.Humanoid.Health = 0
				end
			end
		end
	end
	if string.sub(msg,1,5) == "kick/" and speaker.Level.Value >= 4 then
		local players = game.Players:GetChildren()
		for i = 1,#players do
			if players[i].Name==string.sub(msg,6) then
				if players[i].Character~=nil then
					kick(players[i])
				end
			end
		end
	end
	if string.sub(msg,1,4) == "bye " and speaker.Level.Value >= 4 then
		local players = game.Players:GetChildren()
		for i = 1,#players do
			if players[i].Name==string.sub(msg,5) then
				if players[i].Character~=nil then
					ban(players[i])
				end
			end
		end
	end
	if string.sub(msg,1,7) == "debris/" and speaker.Name == owner then
		local g = game.Workspace:GetChildren()
		for i = 1,#g do
			if g[i].Name==string.sub(msg,8) then
				game:GetService("Debris"):AddItem(g[i], 10)
			end
		end
	end 
	if string.sub(msg,1,7) == "setlvl/" and speaker.Level.Value >= tonumber(string.sub(msg,8,8)) then 
		local p = game.Players:GetChildren()
		for i = 1,#p do
			if p[i].Name == string.sub(msg,10) then
				p[i].Level.Value = tonumber(string.sub(msg,8,8))
			end
		end
	end
	if string.sub(msg,1) == "updates/" then
		showMsg(speaker, "Updates:")
		showMsg(speaker, "Derpy's V1.7 Commands Uploaded")
		showMsg(speaker, "Credits: Derp")
		showMsg(speaker, "There will be no further updates to this script, for this map.")
	end
	if string.sub(msg,1,5) == "time/" then
		game.Lighting.TimeOfDay = string.sub(msg,6)
	end
end
function getPlayers(newPlayer)
	local level = Instance.new("IntValue")
	level.Name = "Level"
	local name = newPlayer.Name
	if checkIfAdmin(name) then
		level.Value = 5
	elseif checkIfMod(name)  then
		level.Value = 4
	elseif checkIfSuperUser(name) then
		level.Value = 3
	elseif checkIfPowerUser(name) then
		level.Value = 2
	elseif filler(name) then
		level.Value = 1
	end
	level.Parent = newPlayer
	checkIfBanned(newPlayer)
	newPlayer.Chatted:connect(function(msg,recipient) onChatted(msg,recipient,newPlayer) end)
end
game.Players.ChildAdded:connect(getPlayers)