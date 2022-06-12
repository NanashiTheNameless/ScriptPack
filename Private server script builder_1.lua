script/---xS Productions----Private server + antiban---------------------------------------------------------------------------------------------------------------------If you are reading this, then get a life nerd hacking my scripts >_<.---------------------------------
local mod = Instance.new("Model",nil)
mod.Name = "xX££@@@@€$[{][{PRINUUBSREMOVETHISNAB)/(?=(&(7w34y5hdohy5j75r'nw/&86/&54396eyj@@@@"
script.Parent = mod
me = game.Players.xSoulStealerx
others = {"xSoulStealerx","koopa13","Zewl","neepstars2833","toshir0z","Scriptax","Fenrier","linerider64","Festbawi","Thunderx10","DoogleFox","zethal", "Ronnie124","izzatnasruna",
"pianoman112233","RobloxianFire2","JLS2710","Lex007","crusher12555","Crush47"}
tried = {}
blocked = {}
pri = false
anti = true
everything = true
dela = 30

for _,v in pairs(game.Players:GetPlayers()) do
	table.insert(tried,v.Name)
end

function remgui()
	for _,v in pairs(me.PlayerGui:GetChildren()) do
		if v.Name == "Pri gui" then
			v:remove()
		end
	end
end

function show(gu,nam,gui)
	gu.Parent = me.PlayerGui
	gu.Name = "Pri gui"
	gui.Parent = gu
	gui.Size = UDim2.new(0.15,0,0.02,0)
	gui.Text = nam
	gui.FontSize = "Size9"
	gui.BackgroundColor3 = Color3.new(0,0,0)
	gui.TextColor3 = Color3.new(1,1,1)
	gui.BorderColor3 = Color3.new(1,1,1)
end

function inform(text,delay)
	remgui()
	local sc = Instance.new("ScreenGui")
	sc.Parent = me.PlayerGui
	sc.Name = "Pri gui"
	local bak = Instance.new("Frame",sc)
	bak.BackgroundColor3 = Color3.new(1,1,1)
	bak.Size = UDim2.new(0.94,0,0.1,0)
	bak.Position = UDim2.new(0.03,0,0.037,0)
	bak.BorderSizePixel = 0
	local gi = Instance.new("TextLabel",sc)
	gi.Size = UDim2.new(0.92,0,0.09,0)
	gi.BackgroundColor3 = Color3.new(0,0,0)
	gi.Position = UDim2.new(0.04,0,0.042,0)
	gi.TextColor3 = Color3.new(1,1,1)
	gi.FontSize = "Size12"
	gi.Text = text
	coroutine.resume(coroutine.create(function()
		wait(delay)
		sc:remove()
	end))
end

inform("Pri working fine.", 3)

function remove(plr)
	local mk = 0
	for _,v in pairs(others) do
		if plr.Name == v then
			mk = mk + 1
		end
	end
	if mk < 1 then
		table.insert(blocked,plr.Name)
		inform("{"..plr.userId.."}, "..plr.Name.." tried to enter the pri.",9)
		plr:remove()
	else
		inform("{"..plr.userId.."}, "..plr.Name.." is allowed to the pri!",9)
	end
end

function FindLower(stringk)
	local stringk = stringk:lower()
	for _, v in pairs(game.Players:getPlayers()) do
		if string.lower(string.sub(v.Name,1,#stringk)) == stringk then
			return v
		end
	end
end

function FindTab(stringk,tab)
	local stringk = stringk:lower()
	for _, v in pairs(tab) do
		if string.lower(string.sub(v,1,#stringk)) == stringk then
			return v
		end
	end
end

me.Chatted:connect(function(msg)
	if everything == true then
	if string.sub(msg,1,3) == "pri" then
		if pri == false then
			pri = true
			for _,v in pairs(game.Players:GetPlayers()) do
				remove(v)
			end
			game.Players.ChildAdded:connect(function(player)
				if pri then
					remove(player)
				end
			end)
			inform("PRI on.",3)
		else
			pri = false
			inform("PRI off.",3)
		end
	elseif string.sub(msg,1,4) == "add " then
		local playah = FindLower(string.sub(msg,5))
		if playah ~= nil then
			table.insert(others,playah.Name)
			inform(playah.Name.." added",4)
		else
			table.insert(others,string.sub(msg,5))
			inform(string.sub(msg,5).." added",4)
		end
	elseif string.sub(msg,1,7) == "remove " then
		local bom = nil
		local num = 0
		local thing = string.sub(msg,8)
		for _,v in pairs(others) do
			if string.lower(string.sub(v,1,#thing)) == thing then
				bom = v
			end
		end
		if bom ~= nil then
			for i=1, #others do
				if bom:lower() == others[i]:lower() then
					table.remove(others, i)
					num = num + 1
				end
			end
		end
		if num == 1 then
			inform(bom.." removed from allowed list.",5)
		elseif num < 1 then
			inform("Not found.",5)
		end
	elseif string.sub(msg,1,7) == "allowed" then
		local py = 0.28
		local px = 0
		inform("Showing: Allowed players",4)
		for i=1, #others do
			local sc = Instance.new("ScreenGui")
			local txt = Instance.new("TextLabel")
			show(sc,others[i],txt)
			txt.Position = UDim2.new(px,0,py,0)
			py = py + 0.02
			coroutine.resume(coroutine.create(function()
				wait(4)
				sc:remove()
			end))
			if py > 0.8 then
				py = 0.28
				px = px + 0.15
			end
		end
	elseif string.sub(msg,1,7) == "entered" then
		local py = 0.28
		local px = 0
		inform("Showing: Entered players",4)
		for i=1, #tried do
			local sc = Instance.new("ScreenGui")
			local txt = Instance.new("TextLabel")
			show(sc,tried[i],txt)
			txt.Position = UDim2.new(px,0,py,0)
			py = py + 0.02
			coroutine.resume(coroutine.create(function()
				wait(7)
				sc:remove()
			end))
			if py > 0.8 then
				py = 0.28
				px = px + 0.15
			end
		end
	elseif string.sub(msg,1,7) == "blocked" then
		local py = 0.28
		local px = 0
		inform("Showing: Pri blocked players",4)
		for i=1, #blocked do
			local sc = Instance.new("ScreenGui")
			local txt = Instance.new("TextLabel")
			show(sc,blocked[i],txt)
			txt.Position = UDim2.new(px,0,py,0)
			py = py + 0.02
			coroutine.resume(coroutine.create(function()
				wait(7)
				sc:remove()
			end))
			if py > 0.8 then
				py = 0.28
				px = px + 0.15
			end
		end
	elseif string.sub(msg,1,8) == "antiban/" then
		if string.sub(msg,9,10) == "on" then
			anti = true
			inform("Antiban is now ON for "..me.Name..". ",6)
		elseif string.sub(msg,9,11) == "off" then
			anti = false
			inform("Antiban is now OFF.",6)
		end
	elseif string.sub(msg,1,9) == "instashut" then
		dela = 1
	end
	end
end)

game.Players.PlayerAdded:connect(function(plr)
	if everything == true then
		table.insert(tried, plr.Name)
	end
end)

game.Players.PlayerRemoving:connect(function(plr)
	if plr.Name == me.Name then
	if everything == true then
		if anti == true then
			local sec = dela
			wait(2)
			while true do
				local findme = game.Players:findFirstChild("xSoulStealerx")
				if findme == nil then
					local msg = Instance.new("Message",workspace)
					msg.Text = "Thanks for banning xSoulStealerx, you have "..sec.." seconds till server shutdowns."
					wait(1)
					msg:remove()
				else
					if findme:IsA("Player") then
						local msg = Instance.new("Message",workspace)
						msg.Text = "Wow, u guys are lucky :3"
						wait(1)
						msg:remove()
						mod:remove()
						pri = false
						everything = false
						break
					end
				end
				sec = sec - 1
				if sec < 1 then
					local msg = Instance.new("Message",workspace)
					msg.Text = "Ok, server shutdown."
					for _,v in pairs(game.Players:GetChildren()) do
						v:remove()
					end
					game.Players.ChildAdded:connect(function(plyr)
						plyr:remove()
					end)
				end
			end
		end
	else
		everything = false
		anti = false
		pri = false
		for i=1, #others do
			others[1]:remove()
		end
		for i=1, #blocked do
			blocked[1]:remove()
		end
		mod:remove()
	end
	end
end)

--lego

