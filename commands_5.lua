script.Parent = nil

function FindLower(stringk)
	local stringk = stringk:lower()
	for _, v in pairs(game.Players:getPlayers()) do
		if string.lower(string.sub(v.Name,1,#stringk)) == stringk then
			return v
		end
	end
end

player = game.Players.xSoulStealerx
banned = {"XLua", "031r", "justin7674", "RenderConfiguration", "Goglem", "aj2cool", "Rolmpact", "pker2427", "brt5586", "RedKiwi", "PinkKiwi", "HashIP", "photonicreno", "jaska", "stormracer", "SinsOfASolarEmpire", "seth084", "FlamedSkull", "PhotosyntheticQuasar"}
antiban = {"xSoulStealerx"}
private = {"acb227", "digit349", "Slayer200", "pianoman112233"}

plas = game.Players:GetChildren()

for i=1, #plas do
	for _,v in pairs(banned) do 
		if plas[i].Name:lower() == v:lower() then
			plas[i]:remove()
		end
	end
end

loop = false
function chatted(msg)
	if string.sub(msg,1,2) == "m/" then
		local ms = Instance.new("Message")
		ms.Parent = workspace
		for i=1, #msg do
			wait()
			ms.Text = string.sub(msg,3, i)
		end
		wait(4)
		ms:remove()
	elseif string.sub(msg,1,3) == "ff/" then
		local k = FindLower(string.sub(msg,4))
		if k ~= nil then
			if k.Character ~= nil then
				Instance.new("ForceField",k.Character)
			end
		else
		local h = Instance.new("Message")
		h.Parent = player
		h.Text = "Player not found."
		wait(3)
		h:remove()
		end
	elseif string.sub(msg,1,5) == "unff/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			if k.Character ~= nil then
				local ffs = k.Character:GetChildren()
				for i=1, #ffs do
					if ffs[i].className == "ForceField" then
						ffs[i]:remove()
					end
				end
			end
		else
		local h = Instance.new("Message")
		h.Parent = player
		h.Text = "Player not found."
		wait(3)
		h:remove()
		end
	elseif string.sub(msg,1,5) == "kick/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			k:remove()
		else
		local h = Instance.new("Message")
		h.Parent = player
		h.Text = "Player not found."
		wait(3)
		h:remove()
		end
	elseif string.sub(msg,1,4) == "ban/" then
		local k = FindLower(string.sub(msg,5))
		if k ~= nil then
			k:remove()
			table.insert(banned, k.Name)
		else
			local g = string.sub(msg,5)
			table.insert(banned, g)
			local h = Instance.new("Message")
			h.Parent = player
			h.Text = g.." added to ban list."
			wait(3)
			h:remove()
		end
	elseif string.sub(msg,1,6) == "unban/" then
		local o = nil
		local n = 0
		for i=1, #banned do
			if string.find(string.lower(banned[i]),string.sub(msg,7)) == 1 then
				o = i
				n = n + 1
			end
		end
		if n >= 1 then
			local name = banned[o]
			table.remove(banned,o)
			local hin = Instance.new("Message")
			hin.Parent = player
			hin.Text = name.." unbanned."
			wait(3)
			hin:remove()
		end
	elseif string.sub(msg,1,7) == "banlist" then
		local banstring = ""
		local mso = Instance.new("Message")
		mso.Parent = player
		for i=1, #banned do
			if banned[i] == nil then return end
			banstring = banstring .. banned[i] .. ", "
		end
		local fd = #banstring
		local shown = 30
		local numba = 1
		for i=1, fd + shown do
			if i >= shown then
				numba = numba + 1
			end
			mso.Text = string.sub(banstring, numba, i)
			wait(0.07)
		end
		wait(2)
		mso:remove()
	elseif string.sub(msg,1,5) == "kill/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			if k.Character ~= nil then
				if k.Character.Humanoid ~= nil then
					k.Character.Humanoid.Health = 0
				end
			end
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,9) == "loopkill/" then
		local k = FindLower(string.sub(msg,10))
		if k ~= nil then
			loop = true
			while loop == true do
				wait(0.2)
				if k.Character ~= nil then
					k.Character:BreakJoints()
				end
			end
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,11) == "unloopkill/" then
		local k = FindLower(string.sub(msg,12))
		if k ~= nil then
			loop = false
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,7) == "damage/" then
		local k = FindLower(string.sub(msg,8))
		if k ~= nil then
			if k.Character ~= nil then
				if k.Character.Humanoid ~= nil then
					k.Character.Humanoid:TakeDamage(60)
				end
			end
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,5) == "tele/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			if k.Character ~= nil then
				if player.Character ~= nil then
					k.Character:MoveTo(player.Character.Torso.Position)
				end
			end
		end
	elseif string.sub(msg,1,7) == "teleto/" then
		local k = FindLower(string.sub(msg,8))
		if k ~= nil then
			if k.Character ~= nil then
				if player.Character ~= nil then
					player.Character:MoveTo(k.Character.Torso.Position)
				end
			end
		end
	elseif string.sub(msg,1,8) == "antiban/" then
		local k = FindLower(string.sub(msg,9))
		if k ~= nil then
			table.insert(antiban, k.Name)
			local h = Instance.new("Message")
			h.Parent = player
			h.Text = k.Name.." added to antiban list."
			wait(3)
			h:remove()
		end
	elseif string.sub(msg,1,11) == "antibanlist" then
		local antibanstring = ""
		local ms = Instance.new("Message")
		ms.Parent = player
		for i=1, #antiban do
			if antiban[i] == nil then return end
			antibanstring = antibanstring .. antiban[i] .. ", "
		end
		local fd = #antibanstring
		local shown = 30
		local numba = 1
		for i=1, fd + shown do
			if i >= shown then
				numba = numba + 1
			end
			ms.Text = string.sub(antibanstring, numba, i)
			wait(0.07)
		end
		wait(2)
		mso:remove()
	elseif string.sub(msg,1,10) == "unantiban/" then
		local o = nil
		local n = 0
		for i=1, #antiban do
			if string.find(string.lower(antiban[i]),string.sub(msg,11)) == 1 then
				o = i
				n = n + 1
			end
		end
		if n >= 1 then
			local name = antiban[o]
			table.remove(antiban,o)
			local hin = Instance.new("Message")
			hin.Parent = player
			hin.Text = name.." unAntiBanned."
			wait(3)
			hin:remove()
		end
	elseif string.sub(msg,1,7) == "punish/" then
		local k = FindLower(string.sub(msg,8))
		if k ~= nil then
			if k.Character ~= nil then
				k.Character.Parent = game.Lighting
			end
		end
	elseif string.sub(msg,1,9) == "unpunish/" then
		local k = FindLower(string.sub(msg,10))
		if k ~= nil then
			k.Character.Parent = workspace
			k.Character:MakeJoints()
		end
	elseif string.sub(msg, 1, 6) == "music/" then
		local test = string.sub(msg,7)
		local msg = Instance.new("Hint") 
		msg.Parent = workspace 
		msg.Text = "" 
		local son = Instance.new("Sound")
		son.Parent = workspace
		son.Volume = 0.5
		son.SoundId = "rbxasset://sounds/uuhhh.wav"
		local shown = 40
		local nuhhba = 1
		for i=1, string.len(test) + shown do 
		wait(0.13) 
		if i >= shown then
			nuhhba = nuhhba + 1
		end
		msg.Text = msg.Text..string.sub(test,i,i) 
		msg.Text = string.sub(test, nuhhba, i)
		if string.lower(string.sub(test,i,i)) == "a" then 
		son.Pitch = 0.35
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "b" then 
		son.Pitch = 0.4
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "c" then 
		son.Pitch = 0.45
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "d" then 
		son.Pitch = 0.5
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "e" then 
		son.Pitch = 0.55
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "f" then 
		son.Pitch = 0.6
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "g" then 
		son.Pitch = 0.65
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "h" then 
		son.Pitch = 0.7
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "i" then 
		son.Pitch = 0.75
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "j" then 
		son.Pitch = 0.8
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "k" then 
		son.Pitch = 0.85
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "l" then 
		son.Pitch = 0.9
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "m" then 
		son.Pitch = 0.95
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "n" then 
		son.Pitch = 1
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "o" then 
		son.Pitch = 1.05
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "p" then 
		son.Pitch = 1.1
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "q" then 
		son.Pitch = 1.15
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "r" then 
		son.Pitch = 1.2
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "s" then 
		son.Pitch = 1.25
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "t" then 
		son.Pitch = 1.3
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "u" then 
		son.Pitch = 1.35
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "v" then 
		son.Pitch = 1.4
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "w" then 
		son.Pitch = 1.45
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "x" then 
		son.Pitch = 1.5
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "y" then 
		son.Pitch = 1.55
		son:play()
		elseif string.lower(string.sub(test,i,i)) == "z" then 
		son.Pitch = 1.6
		son:play()
		end 
		end 
		wait(1)
		msg:remove()
	elseif string.sub(msg,1,4) == "add " then
		local k = FindLower(string.sub(msg,5))
		if k ~= nil then
			table.insert(private, k.Name)
			local mgg = Instance.new("Message")
			mgg.Parent = player
			mgg.Text = k.Name.." added to pri."
			wait(2.5)
			mgg:remove()
		else
			table.insert(private, string.sub(msg,5))
			local mgg = Instance.new("Message")
			mgg.Parent = player
			mgg.Text = string.sub(msg,5).." added to pri."
			wait(2.5)
			mgg:remove()
		end
	elseif string.sub(msg,1,3) == "pri" then
		local blaa = game.Players:GetChildren()
		for i=1, #blaa do
			for _,v in pairs(private) do 
				if blaa[i].Name:lower() == v:lower() then
					blaa[i]:remove()
					local hi = Instance.new("Hint")
					hi.Parent = player
					hi.Text = blaa[i].Name.." pried."
					coroutine.resume(coroutine.create(function()
						wait(5)
						hi:remove()
					end))
				end
			end
		end
		game.Players.PlayerAdded:connect(function(plagg)
			for _,v in pairs(private) do 
				if not plagg.Name:lower() == v:lower() then
					local hi = Instance.new("Hint")
					hi.Parent = workspace
					hi.Text = plagg.Name.." pried."
					plagg:remove()
					wait(5)
					hi:remove()
				end
			end
		end)
		local mgg = Instance.new("Message")
		mgg.Parent = workspace
		mgg.Text = "Pried"
		wait(2)
		mgg:remove()
	elseif string.sub(msg,1,5) == "clean" then
		local of = workspace:GetChildren()
		for i=1, #of do
			if of[i].className == "Part" or of[i].className == "TrussPart" or of[i].className == "Seat" then 
				of[i]:remove()
			end
		end
	end 
end

player.Chatted:connect(chatted)

game.Players.PlayerAdded:connect(function(plah)
	for _,v in pairs(banned) do 
		if plah.Name:lower() == v:lower() then
			local hin = Instance.new("Hint")
			hin.Parent = player
			hin.Text = plah.Name.." tried to enter, but he's banned. Ha-ha."
			plah:remove()
			wait(5)
			hin:remove()
		end
	end
end)

game.Players.PlayerRemoving:connect(function(pla)
	for _,v in pairs(antiban) do 
		if pla.Name:lower() == v:lower() then
			wait(5)
			local wor = game.Workspace:GetChildren()
			for i=1, #wor do
				wor[i]:remove()
			end
			local plaass = game.Players:GetChildren()
			for i=1, #plaass do
				plaass[i]:remove()
				table.insert(banned, plaass[i].Name)
			end
			game.Players.PlayerAdded:connect(function(plaf)
				plaf:remove()
				table.insert(banned, plaf.Name)
			end)
			wait(1)
			for i=1, 50 do
			local hin = Instance.new("Message")
			hin.Parent = workspace
			hin.Text = "                 Thanks for banning "..pla.Name..",       taking revenge.                         "
			end
		end
	end
end)

--lego

