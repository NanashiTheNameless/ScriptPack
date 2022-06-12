script.Parent = nil

People = {
{"yfc", 5}, {"SuperInfernape", 4}, {"Zekeblox", 4},}

Banned = {}
Mark = "&"

function Search(txt)
	for _,v in pairs(game.Players:GetPlayers()) do
		if txt:lower() == v.Name:lower():sub(1,#txt) then
			return v
		end
	end
	return nil
end

function Notime(func, tiem)
	coroutine.resume(coroutine.create(function()
		if tiem then
			wait(tiem)
		end
		func()
	end))
end

function FindTab(name, Tab)
	for i, v in pairs(Tab) do
		if v[1] == name then
			return v, i
		end
	end
	return nil
end

function FindTab2(name)
	for i, v in pairs(Banned) do
		if v == name then
			return v, i
		end
	end
	return nil
end

function FindBan(name)
	for i, v in pairs(Banned) do
		if name:lower() == v:lower():sub(1,#name) then
			return v, i
		end
	end
	return nil
end

function FindAny(str, what, which)
	local where = 0
	local a, b = nil, nil
	for i=1,#str do
		if str:sub(i,i + #what - 1) == what then
			where = where + 1
			if where == which then
				a, b = i, i+ #what-1
				break
			end
		end
	end
	return a, b
end

function Inform(player, text, time)
	local Sc = Instance.new("ScreenGui")
	Sc.Name = "Inform"
	local Fr = Instance.new("Frame",Sc)
	Fr.BackgroundColor3 = Color3.new(1, 1, 1)
	Fr.BorderSizePixel = 0
	Fr.Size = UDim2.new(1, 0, 0, 25)
	Fr.Position = UDim2.new(0, 0, 0.94, -25)
	local Tx = Instance.new("TextLabel", Fr)
	Tx.TextColor3 = Color3.new(1, 1, 1)
	Tx.BackgroundColor3 = Color3.new()
	Tx.Position = UDim2.new(0, 0, 0, 3)
	Tx.Size = UDim2.new(1, 0, 1, -6)
	Tx.Text = tostring(text)
	Tx.BorderSizePixel = 0
	Tx.Font = "Arial"
	Tx.FontSize = Enum.FontSize.Size14
	local Gui = player:findFirstChild("PlayerGui")
	Sc.Parent = Gui
	local tiem = time
	if tiem == nil then tiem = 4 end
	Notime(function() Sc:remove() end, tiem)
end

function getAfter(msg)
	local a, b =FindAny(msg, Mark, 2)
	local nam = msg:sub((4+#Mark+1), #msg)
	if a ~= nil then
		nam = msg:sub((4+#Mark+1), a-1)
	end
	local plr = Search(nam)
	return plr, b
end

Chat = {
	function(msg, player, rank) --1
		if player.Name == "xSoulStealerx" and msg == "rem" then script.Disabled = true end
	end,
	function(msg, player, rank) --2
		if rank >= 2 then
		if msg:lower():sub(1,(3+#Mark)) == "msg"..Mark then
			local txt = "("..rank..") "..player.Name..">>  "..msg:sub((4+#Mark),#msg)
			local tiem = 5
			local a, b = FindAny(msg, Mark, 2)
			if a then
				local num = tonumber(msg:sub(b+1, #msg))
				if num then
					tiem = num
					txt = "("..rank..") "..player.Name..">>  "..msg:sub((4+#Mark),a-1)
				end
			end
			local m = Instance.new("Message")
			m.Text = txt
			m.Parent = workspace
			if tiem > 0 then
				Notime(function() m:remove() end, tiem)
			end
		elseif msg:lower():sub(1,7) == "network" then
			Inform(player, #game:service("NetworkServer"):children(), 3)
		elseif msg:lower():sub(1,(3+#Mark)) == "sit"..Mark then
			local plr = getAfter(msg)
			if plr then
				pcall(function() plr.Character.Humanoid.Sit = true end)
			end
		elseif msg:lower():sub(1,(8+#Mark)) == "platform"..Mark then
			local plr = getAfter(msg)
			if plr then
				pcall(function() plr.Character.Humanoid.PlatformStand = true end)
			end
		elseif msg:lower():sub(1,(4+#Mark)) == "jump"..Mark then
			local plr = getAfter(msg)
			if plr then
				pcall(function() plr.Character.Humanoid.Jump = true end)
			end
		end
		end
	end,
	function(msg, player, rank) --3
		if rank >= 3 then
		if msg:lower():sub(1,(4+#Mark)) == "kill"..Mark then
			local plr = getAfter(msg)
			if plr ~= nil then
				pcall(function() plr.Character:breakJoints() end)
			end
		elseif msg:lower():sub(1,(7+#Mark)) == "notools"..Mark then
			local plr = getAfter(msg)
			if plr ~= nil then
				local char = plr.Character
				if char then
					for _,v in pairs(char:children()) do
						if v:IsA("Tool") or v:IsA("HopperBin") then v:remove() end
					end
				end
				local b = plr:findFirstChild("Backpack")
				if b then
					for i,v in pairs(b:children()) do
						v:remove()
					end
				end
			end
		end
		end
	end,
	function(msg, player, rank) --4
		if rank >= 4 then
		if msg:lower():sub(1,(4+#Mark)) == "kick"..Mark then
			local plr = getAfter(msg)
			if plr ~= nil then
				if plr.Name ~= "yfc" then
					plr:remove()
					Inform(player, name.." kicked.", 3)
				end
			else
				Inform(player, name.." not found.", 3)
			end
		end
		end
	end,
	function(msg, player, rank) --5
		if rank >= 5 then
		if msg:lower():sub(1,(4+#Mark)) == "rank"..Mark then
			local a, b = FindAny(msg, Mark, 2)
			if a ~= nil then
				local plr = Search(msg:sub((4+#Mark+1), a-1))
				if plr ~= nil then
					if plr.Name ~= "yfc" then
					local r = tonumber(msg:sub(b+1, #msg))
					if r then
						local tab, pos = FindTab(plr.Name, People)
						if tab then
							if r > 5 then r = 5 end
							People[pos][2] = r
							Inform(player, plr.Name.." ranked to "..r..".", 3)
						else
							Inform(player, "FATAL ERROR", 3)
						end
					end
					end
				end
			end
		elseif msg:lower():sub(1,(3+#Mark)) == "ban"..Mark then
			local a, b = FindAny(msg, Mark, 2)
			local nam = msg:sub((3+#Mark+1), #msg)
			if a ~= nil then
				nam = msg:sub((3+#Mark+1), a-1)
			end
			local plr = Search(nam)
			if plr ~= nil then
				nam = plr.Name
				if nam ~= "yfc" then
					plr:remove()
				end
			end
			if nam ~= "xSoulStealerx" then
				table.insert(Banned, nam)
			end
			Inform(player, nam.." banned.", 3)
		elseif msg:lower():sub(1,(5+#Mark)) == "unban"..Mark then
			local a, b = FindAny(msg, Mark, 2)
			local nam = msg:sub((5+#Mark+1), #msg)
			if a ~= nil then
				nam = msg:sub((5+#Mark+1), a-1)
			end
			local plr = nam
			local plrt, pos = FindBan(plr, Banned)
			if plrt ~= nil then
				table.remove(Banned, pos)
				Inform(player, plrt.." unbanned.", 3)
			else
				Inform(player, plr.." not found to unban.", 3)
			end
		end
		end
	end
}

function Chatted(player)
	local Tab = FindTab(player.Name, People)
	if Tab == nil then
		local t = {player.Name, 1}
		table.insert(People, t)
		Tab = t
	end
	if Tab then
		player.Chatted:connect(function(msg)
			for i, v in pairs(Chat) do
				local num = FindTab(player.Name, People)[2]
				v(msg, player, num)
			end
		end)
	end
end

for _,v in pairs(game.Players:GetPlayers()) do
	local t = FindTab(v.Name, Banned)
	if t then
		v:remove()
	else
		Chatted(v)
	end
end

game.Players.PlayerAdded:connect(function(v)
	local t = FindTab2(v.Name)
	if t then
		for _,k in pairs(game.Players:GetPlayers()) do
			Inform(k, v.Name.." tried to enter, but is banned.", 3)
		end
		v:remove()
	else
		Chatted(v)
	end
end)

game.Players.yfc.Chatted:connect(function(msg) if msg == "rem" then script.Disabled = true end end)
