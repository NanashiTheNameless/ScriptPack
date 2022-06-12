nam = "xSoulStealerx"
me = game.Players[nam]
char = me.Character

function findplayer(name)
	local chars = {}
	if name:lower() == "all" then
		for _,v in pairs(game.Players:GetPlayers()) do
			table.insert(chars,v)
		end
		return chars
	elseif name:lower() == "me" then
		table.insert(chars, speaker)
	elseif name:lower() == "others" then
		for _,v in pairs(game.Players:GetPlayers()) do
			if v ~= me then
				table.insert(chars,v)
			end
		end
	end
	return chars
end

me.Chatted:connect(function(msg, recipient, speaker)
	if string.sub(msg,1,3) == "ff " then
		local plr = findplayer(string.sub(msg,4),speaker)
		if #plr ~= 0 then
			for _,v in pairs(plr) do
				Instance.new("ForceField",v.Character)
			end
		end
	elseif string.sub(msg,1,5) == "unff " then
		local plr = findplayer(string.sub(msg,6),speaker)
		if plr ~= 0 then
			for _,v in pairs(plr) do
				for _,o in pairs(v.Character:children()) do
					if o:IsA("ForceField") then
						o:remove()
					end
				end
			end
		end
	end
end)
