local new = Instance.new
script.Name = "NewChat"
script.Parent = nil
if _G.NewChat ~= nil then
	if _G.NewChat.Disable ~= nil then
		coroutine.wrap(function() _G.NewChat:Disable() end)()
		wait(5.5)
	end
end
NewChat = {}
NewChat.Connections = {}
NewChat.Chatted = {}
NewChat.Chatted.Connections = {}
NewChat.Enabled = true
NewChat.MaxLines = 6
NewChat.Position = UDim2.new(0, 15, 0, 30)
NewChat.AllTalk = false
NewChat.Disable = function()
	pcall(function() NewChat:Chat("[System Message] NewChat disabled.", Color3.new(0, 0, 0)) end)
	wait(2.5)
	pcall(function() NewChat.Enabled = false end)
	pcall(function() _G.NewChat.Enabled = false end)
	pcall(function()
		for i = 1, #NewChat.Connections do
			pcall(function() NewChat.Connections[i]:disconnect() end)
		end
	end)
	pcall(function()
		for i = 1, #NewChat.Chatted.Connections do
			pcall(function() NewChat.Chatted.Connections[i]:disconnect() end)
		end
	end)
	wait(2.5)
	return true
end
NewChat.Chatted.connect = function(_, Connector)
	table.insert(NewChat.Chatted.Connections, {
		Connected = true,
		Trigger = Connector,
		disconnect = function(Source) rawset(Source, "Connected", false) end
	})
	return Source.Connections[#Source.Connections]
end
NewChat.Time = function()
	local Hours = math.floor((tick() / 3600) % 24)
	local Minutes = math.floor((tick() % 3600) / 60)
	local Seconds = math.floor(tick() % 60)
	local Section = ""
	if Hours == 24 or Hours < 12 then
		Section = "AM"
	else
		Section = "PM"
	end
	if Hours > 12 then
		Hours = Hours - 12
	end
	if Minutes <= 9 then
		Minutes = "0" ..tostring(Minutes)
	end
	if Seconds <= 9 then
		Seconds = "0" ..tostring(Seconds)
	end
	return Hours.. ":" ..Minutes.. "." ..Seconds.. " " ..Section
end
NewChat.GetChannelID = function(_, ChannelName)
	local Parts = {}
	if tonumber(ChannelName) ~= nil then return tonumber(ChannelName) end
	ChannelName = tostring(ChannelName)
	if ChannelName == nil then return 0 end
	for i = 1, string.len(ChannelName) do
		local Byte = tostring(ChannelName:byte(i))
		local Code = 0
		for x = 1, string.len(Byte) do
			Code = Code + tonumber(Byte:sub(x, x)) + math.floor(math.floor(Byte:len() / x)^1.5)
		end
		table.insert(Parts, tostring(Code))
	end
	return tonumber(table.concat(Parts, ""))
end
NewChat.HasChannel = function(_, Player, Channel)
	if Player.ClassName ~= "Player" then return false end
	if Channel == 0 then return true end
	for _, Channels in pairs(NewChat:GetChannels(Player)) do
		if Channels == Channel then
			return true
		end
	end
	return false
end
NewChat.GetChannels = function(_, Player)
	if Player.ClassName ~= "Player" then return false end
	local Channels = {}
	for _, Part in pairs(Player.Channels:GetChildren()) do
		table.insert(Channels, tonumber(Part.Name))
	end
	if Player.Neutral == false then
		table.insert(Channels, Player.TeamColor.Name)
	end
	return Channels
end
NewChat.Chat = function(_, Message, Color, Channels, Sources, Areas)
	if NewChat.Enabled == false then return end
	if Channels == nil then Channels = {0} end
	if Sources == nil then Sources = {Vector3.new()} end
	if Areas == nil then Areas = {0} end
	if Message == nil then Message = "" end
	if Color == nil then Color = Color3.new(1, 1, 1) end
	for i = 1, #NewChat.Chatted.Connections do
		if NewChat.Chatted.Connections[i].Connected == true then
			NewChat.Chatted.Connections[i].Trigger(Channels, Sources, Areas, Message, Color)
		end
	end
	for i = 1, #Channels do
		if type(Channels[i]) ~= "number" then
			Channels[i] = NewChat:GetChannelID(Channels[i])
		end
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if Player:FindFirstChild("Channels") == nil then
			local Channels = new("Configuration", Player)
			Channels.Name = "Channels"
		end
		pcall(function()
			if Player.PlayerGui:FindFirstChild("NewChatGui") == nil then
				coroutine.wrap(function()
					local NewChatGui = new("ScreenGui")
					while true do
						if Player:FindFirstChild("PlayerGui") ~= nil and NewChat.Enabled == true then
							if Player.PlayerGui:FindFirstChild("NewChatGui") == nil then
								NewChatGui.Name = "NewChatGui"
								NewChatGui.Parent = Player.PlayerGui
							end
						else
							NewChatGui:Remove()
						end
						wait()
					end
				end)()
			end
			local ChannelsInRange = {}
			for i = 1, #Channels do
				local Add = false
				if NewChat:HasChannel(Player, Channels[i]) == true then
					if pcall(function() return Player.Character.Torso end) == true then
						if (Player.Character.Torso.Position - Sources[i]).magnitude <= Areas[i] or Areas[i] == 0 or (NewChat.AllTalk == true and Channels[i] == 0) then
							Add = true
						elseif Areas[i] == -1 then
							if Player.Character.Torso.Position == Sources[i] then
								Add = true
							end
						end
					else
						Add = true
					end
				end
				if Add == true then
					table.insert(ChannelsInRange, Channels[i])
				end
			end
			if #ChannelsInRange ~= 0 then
				local Prefix = ""
				for i = 1, #ChannelsInRange do
					Prefix = (Prefix == "" and "[" ..NewChat:Time().. " | " or Prefix.. ", ") .. (ChannelsInRange[i] == 0 and (NewChat.AllTalk == true and "AllTalk" or "Area") or "C" ..tostring(ChannelsInRange[i]))
				end
				Prefix = Prefix.. "] "
				for _, Part in pairs(Player.PlayerGui.NewChatGui:GetChildren()) do
					Part.Position = Part.Position - UDim2.new(0, 0, 0, Part.Size.Y.Offset)
					if Part.Position.Y.Offset < NewChat.Position.Y.Offset then
						Part:Remove()
					end
				end
				local Tag = new("TextLabel", Player.PlayerGui.NewChatGui)
				Tag.Name = tick()
				Tag.Text = Prefix .. Message
				Tag.Size = UDim2.new(0, Tag.Text:len() * 7, 0, 15)
				Tag.Position = NewChat.Position + UDim2.new(0, 0, 0, Tag.Size.Y.Offset * (NewChat.MaxLines - 1))
				Tag.FontSize = "Size10"
				Tag.TextColor3 = Color
				Tag.TextWrap = false
				Tag.TextXAlignment = "Left"
				Tag.BackgroundColor3 = Color3.new(0.55, 0.55, 0.55)
				Tag.BackgroundTransparency = 0.5
				Tag.BorderSizePixel = 0
			end
		end)
	end
end
NewChat.Connect = function(_, Player)
	coroutine.wrap(function()
		while Player.Character == nil do wait() end
		local Remove = game:GetService("InsertService"):LoadAsset(55834902):GetChildren()[1]
		Remove.Disabled = true
		Remove.Parent = Player.Character
		wait(0.1)
		Remove.Disabled = false
	end)()
	table.insert(NewChat.Connections, Player.Chatted:connect(function(Message)
		local IsNil, Team, Yelling, Whispering, Action, Channels, Sources, Areas, Color = false, false, false, false, false, {}, {}, {}, Color3.new(1, 1, 1)
		if string.match(Message, "lego") or string.match(Message, "minecraft") or string.match(Message, "runescape") then
			table.insert(Channels, 0)
			table.insert(Sources, Vector3.new())
			table.insert(Areas, 0)
			Color = Color3.new(0.4, 0.4, 0.4)
			Message = "< Hidden >"
		elseif pcall(function() table.insert(Sources, Player.Character.Torso.Position) end) == false then
			IsNil = true
			table.insert(Channels, 0)
			table.insert(Sources, Vector3.new())
			table.insert(Areas, 0)
			Color = Color3.new(0.4, 0.4, 0.4)
		else
			if string.sub(Message, 0, 9) == "/whisper " or string.sub(Message, 0, 1) == "$" then
				if NewChat.AllTalk == false then
					Whispering = true
					table.insert(Channels, 0)
					table.insert(Areas, 7.5)
					Color = Color3.new(0.25, 0.25, 1)
					Message = string.sub(Message, 0, 9) == "/whisper " and string.sub(Message, 10) or string.sub(Message, 2)
				else
					NewChat:Chat("[System Message] You cannot whisper while AllTalk is on!", Color3.new(0, 0, 0), {0}, {Player.Character.Torso.Position}, {-1})
					return
				end
			elseif string.sub(Message, 0, 4) == "/me " or (string.sub(Message, 0, 1) == "*" and string.sub(Message, string.len(Message)) == "*") then
				Action = true
				table.insert(Channels, 0)
				table.insert(Areas, 200)
				Color = Color3.new(0, 0.8, 0)
				Message = string.sub(Message, 0, 4) == "/me " and string.sub(Message, 5) or string.sub(Message, 2, string.len(Message) - 1)
			else
				if string.sub(Message, 0, 6) == "/yell " or (Message:upper() == Message and Message:lower() ~= Message and string.len(Message) > 4) then
					Yelling = true
					table.insert(Areas, 150)
					Color = Color3.new(0.9, 0, 0)
					Message = string.sub(Message, 0, 6) == "/yell " and string.sub(Message, 7) or Message
				else
					table.insert(Areas, 25)
					Color = Color3.new(1, 1, 1)
				end
				if string.sub(Message, 0, 6) == "/team " or string.sub(Message, 0, 1) == "%" then
					if Player.Neutral == false then
						table.insert(Channels, NewChat:GetChannelID(Player.TeamColor.Name))
						Color = Player.TeamColor.Color
						Message = string.sub(Message, 0, 6) == "/team " and string.sub(Message, 7) or string.sub(Message, 2)
					else
						NewChat:Chat("[System Message] No team to talk to!", Color3.new(0, 0, 0), {0}, {Player.Character.Torso.Position}, {-1})
						return
					end
				else
					table.insert(Channels, 0)
				end
			end
		end
		for _, Channel in pairs(Player.Channels:GetChildren()) do
			local Continue = true
			if Channel:FindFirstChild("CanSend") ~= nil then
				if Channel.CanSend.Value == false then
					Continue = false
				end
			end
			if Continue == true then
				table.insert(Channels, Channel.Name)
				table.insert(Sources, Channel:FindFirstChild("Source") ~= nil and Channel.Source.Value or (pcall(function() return Player.Character.Torso end) == true and Player.Character.Torso.Position or Vector3.new()))
				table.insert(Areas, Channel:FindFirstChild("Area") ~= nil and Channel.Area.Value or 0)
			end
		end
		NewChat:Chat((Team == true and "[Team] " or "") .. (IsNil == true and "[Nil] " or "") .. (Yelling == true and "[Yell] " or "") .. (Whispering == true and "[Whisper] " or "") .. (Action == true and "*" or "") .. Player.Name .. (Action == true and " " or ": ") .. Message .. (Action == true and "*" or ""), Color, Channels, Sources, Areas)
	end))
	table.insert(NewChat.Connections, Player.Changed:connect(function(Property)
		if Property == "Character" then
			pcall(function()
				for _, Channel in pairs(Player.Channels:GetChildren()) do
					Channel:Remove()
				end
			end)
		end
	end))
end
_G.NewChat = {}
_G.NewChat.GetConnections = function() return NewChat.Connections end
_G.NewChat.Chatted = {}
_G.NewChat.Chatted.connect = function(_, Connector) return NewChat.Chatted:connect(Connector) end
_G.NewChat.Chatted.GetConnections = function() return NewChat.Chatted.Connections end
_G.NewChat.SetMaxLines = function(_, MaxLines) NewChat.MaxLines = MaxLines end
_G.NewChat.SetPosition = function(_, Position) NewChat.Position = Position end
_G.NewChat.SetAllTalk = function(_, AllTalk) NewChat.AllTalk = AllTalk end
_G.NewChat.Disable = NewChat.Disable
_G.NewChat.Time = NewChat.Time
_G.NewChat.GetChannelID = NewChat.GetChannelID
_G.NewChat.HasChannel = NewChat.HasChannel
_G.NewChat.GetChannels = NewChat.GetChannels
_G.NewChat.Chat = NewChat.Chat
_G.NewChat.Connect = NewChat.Connect
_G.NewChat.GetInstance = function() return script, script.Parent end


for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	NewChat:Connect(Player)
end
table.insert(NewChat.Connections, game:GetService("Players").ChildAdded:connect(function(Player)
	if Player.ClassName ~= "Player" then return end
	NewChat:Connect(Player)
	NewChat:Chat("[System Message] Player \"" ..Player.Name.. "\" has joined.", Color3.new(0, 0, 0))
end))
table.insert(NewChat.Connections, game:GetService("Players").ChildRemoved:connect(function(Player)
	if Player.ClassName ~= "Player" then return end
	NewChat:Chat("[System Message] Player \"" ..Player.Name.. "\" has left.", Color3.new(0, 0, 0))
end))
NewChat:Chat("[System Message] NewChat v5 R1 loaded.", Color3.new(0, 0, 0))
NewChat:Chat("[System Message] Your normal ROBLOX chat has been removed.", Color3.new(0, 0, 0))
NewChat:Chat("[System Message] Script by DarkShadow6, ChatHud remover by xSource and DarkShadow6.", Color3.new(0, 0, 0))