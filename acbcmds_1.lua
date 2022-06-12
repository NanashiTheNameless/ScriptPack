-- AcbCMDS 1 by acb227.
-- Add your commands, modules and groups where indicated, near the bottom.


if script == nil then
	local Hint = Instance.new("Hint", workspace)
	Hint.Text = "[AcbCMDS Fatal Error] Cannot run; script object not found!"
	wait(5)
	Hint:Remove()
	return
end

script.Name = "AcbCMDS"
script.Parent = game

_C = {}
_C.Data = {}
_C.Players = {}
_C.Commands = {}
_C.Groups = {}
_C.Functions = {}
_C.Modules = {}

_C.Data.Starter = "!"
_C.Data.Split = ";"
_C.Data.FullSplit = " \\ "
_C.Data.ELSplitLeft = "!{{"
_C.Data.ELSplitRight = "}}"
_C.Data.Version = "1 :D"

_C.Init = {}
setmetatable(_C.Init, {__call = function()
	game:service("Players").ChildAdded:connect(function(Player) _C.Functions.CreatePlayerTable(Player) end)
	game:service("Players").ChildRemoved:connect(function(Player) _C.Functions.RemovePlayerTable(Player) end)
	for _, Player in pairs(game:service("Players"):GetPlayers()) do pcall(function() _C.Functions.CreatePlayerTable(Player) end) end
	_C.Functions.LoadModule(true, nil, false)
	_C.Init.FinishTime = tick()
	_C.Init.ElapsedTime = _C.Init.FinishTime - _C.Init.StartTime
	for _, Player in pairs(game:service("Players"):GetPlayers()) do
		if Player:FindFirstChild("PlayerGui") ~= nil then
			coroutine.wrap(function()
				local Gui = Instance.new("ScreenGui", Player.PlayerGui)
				Gui.Name = "AcbCMDS Gui"
				local Button = Instance.new("ImageButton", Gui)
				Button.Name = "Button"
				Button.AutoButtonColor = false
				Button.Size = UDim2.new(0, 0, 0, 0)
				Button.Position = UDim2.new(0.5, 0, 0.5, 0)
				Button.BackgroundTransparency = 0.5
				Button.BackgroundColor3 = Color3.new(0, 0, 0)
				Button.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
				Button.Image = ""
				Button:TweenSizeAndPosition(UDim2.new(0, 400, 0, 400), UDim2.new(0.5, -200, 0.5, -200), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1.5, false)
				local Label = Instance.new("TextLabel", Gui)
				Label.Size = UDim2.new(0, 400, 0, 30)
				Label.Position = UDim2.new(0.5, -200, 0.5, -230)
				Label.BackgroundColor3 = Color3.new(0, 0, 0)
				Label.BackgroundTransparency = 1
				Label.TextTransparency = 1
				Label.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
				Label.Text = ""
				Label.TextColor3 = Color3.new(1, 1, 1)
				Label.FontSize = Enum.FontSize.Size12
				wait(1.5)
				local Clicked = false
				coroutine.wrap(function()
					while Gui.Parent ~= nil and Clicked == false do
						Button.Image = "http://www.roblox.com/Asset/?id=54995031"
						Label.Text = "AcbCMDS version " .._C.Data.Version.. " loaded successfully."
						wait(2.5)
						Button.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=400&y=400&Format=Png&username=acb227"
						Label.Text = "Created by acb227."
						wait(2.5)
					end
				end)()
				for i = 1, 0, -0.05 do
					Label.TextTransparency = i
					Label.BackgroundTransparency = (i * 0.5) + 0.5
					wait()
				end
				Label.BackgroundTransparency = 0.5
				Label.TextTransparency = 0
				Button.MouseButton1Up:connect(function()
					if Clicked == true then return end
					Clicked = true
					Label.Text = ""
					Button:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 1, false)
					Label:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 1, false)
					wait(1)
					Gui:Remove()
				end)
				end)()
		end
	end
end})
_C.Init.StartTime = tick() --lego
_C.Init.FinishTime = -1
_C.Init.ElapsedTime = -1
_C.Init.InstanceNum = 0
if type(_G.AcbCMDS) ~= "table" then _G.AcbCMDS = {} end
table.insert(_G.AcbCMDS, {})
for i = 1, #_G.AcbCMDS do _C.Init.InstanceNum = _C.Init.InstanceNum + 1 end
if _C.Init.InstanceNum == 0 then _C.Init.InstanceNum = 1 end
_G.AcbCMDS[_C.Init.InstanceNum].GetInstance = function(Self, Code)
	if Self ~= _G.AcbCMDS[_C.Init.InstanceNum] then return end
	if Code == _C.Data.AccessCode then
		return script, script.Parent
	else
		error(string.format(_C.Data.AccessDenied, _C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end
_G.AcbCMDS[_C.Init.InstanceNum].GetTable = function(Self, Code)
	if Self ~= _G.AcbCMDS[_C.Init.InstanceNum] then return end
	if Code == _C.Data.AccessCode then
		return _C
	else
		error(string.format(_C.Data.AccessDenied, _C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end
_G.AcbCMDS[_C.Init.InstanceNum].Remove = function(Self, Code)
	if Self ~= _G.AcbCMDS[_C.Init.InstanceNum] then return false end
	if Code == _C.Data.AccessCode then
		_C.Functions.LoadModule(false, nil, false)
		_G.AcbCMDS[_C.Init.InstanceNum] = nil
		_C = nil
		local Msg = Instance.new("Hint", workspace)
		Msg.Text = "[AcbCMDS] Removed."
		wait(1)
		Msg:Remove()
		if pcall(function() script:Remove() end) == false then
			local Msg = Instance.new("Hint", workspace)
			Msg.Text = "[AcbCMDS Error] Script was not removed!"
			wait(5)
			Msg:Remove()
		end
		return true, script
	else
		error(string.format(_C.Data.AccessDenied, _C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end

_C.Functions.Msg = function(Format, Text, Time, Parent)
	if Parent == nil then Parent = workspace end
	if Format == "Default" or Format == nil then Format = "Message" end
	if Parent:IsA("Player") == true and Parent:FindFirstChild("PlayerGui") ~= nil then Parent = Parent.PlayerGui end
	if type(Text) == "string" then
		local Text2 = ""
		for i = 1, Text:len() do
			Text2 = Text2 .. string.sub(Text, i, i) .. string.char(2)
		end
		Text = Text2
		Text2 = nil
	end
	if Format == "Hint" or Format == "Message" then
		local Msg = Instance.new(Format)
		Msg.Name = Format
		Msg.Text = Text ~= nil and Text or ""
		Msg.Parent = Parent
		if Time ~= nil then
			coroutine.wrap(function()
				wait(Time)
				Msg:Remove()
			end)()
		end
		return Msg
	elseif Format == "NewHint" then
		local HintSpace = 0
		for _, Part in pairs(Parent:children()) do
			if Part.Name == "AcbCMDS NewHint" then
				HintSpace = HintSpace + 1
			end
		end
		local Gui = Instance.new("ScreenGui", Parent)
		Gui.Name = "AcbCMDS NewHint"
		local Hint = Instance.new("TextLabel", Gui)
		Hint.Name = "Hint"
		Hint.Size = UDim2.new(1, 0, 0, 20)
		Hint.Position = UDim2.new(0, 0, 0, (HintSpace * 20) - 20)
		Hint.BackgroundColor3 = Color3.new(0, 0, 0)
		Hint.BorderSizePixel = 0
		Hint.Text = Text
		Hint.TextColor3 = Color3.new(1, 1, 1)
		Hint.FontSize = Enum.FontSize.Size12
		Hint:TweenPosition(UDim2.new(0, 0, 0, HintSpace * 20), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.5, false)
		if Time ~= nil then
			coroutine.wrap(function()
				wait(Time)
				pcall(function()
					Gui.Name = "AcbCMDS Old NewHint"
					Hint:TweenPosition(UDim2.new(0, 0, 0, -20), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, false)
				end)
				local i = 0
				for _, Part in pairs(Parent:children()) do
					if Part.Name == "AcbCMDS NewHint" then
						pcall(function() Part.Hint:TweenPosition(UDim2.new(0, 0, 0, i * 20), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, true) end)
						i = i + 1
					end
				end
				wait(0.5)
				if Gui.Parent == Parent then Gui:Remove() end
			end)()
		end
		return Gui
	end
end
_C.Functions.CreatePlayerTable = function(Player, PlayerGroup)
	if Player == nil then return false end
	if pcall(function() return Player.Name end) == false then return false end
	if not Player:IsA("Player") then return false end
	table.insert(_C.Players, {Name = Player.Name, Group = PlayerGroup ~= nil and PlayerGroup or _C.Functions.GetLowestGroup().Name, Connection = Player.Chatted:connect(function(Msg) _C.Functions.CatchChat(Msg, Player) end)})
	return true
end
_C.Functions.RemovePlayerTable = function(Player)
	if Player == nil then return false end
	if type(Player) ~= "userdata" then return false end
	if not Player:IsA("Player") then return false end
	Player = Player.Name
	for i = 1, #_C.Players do
		if _C.Players[i] ~= nil then
			if _C.Players[i].Name == Player then
				pcall(function() _C.Players[i].Connection:disconnect() end)
				table.remove(_C.Players, i)
			end
		end
	end
	return true
end
_C.Functions.RemovePlayer = function(Player)
	if Player == nil then return false end
	if type(Player) ~= "userdata" then return false end
	if not Player:IsA("Player") then return false end
	local Tag = Instance.new("Model")
	Tag.Name = Player.Name
	Tag.Parent = game:service("Players")
	pcall(function() Player:Remove() end)
end
_C.Functions.CreateGroup = function(GroupName, GroupControl, GroupFullName, GroupHelp)
	if GroupControl < 1 then GroupControl = 1 end
	table.insert(_C.Groups, {Name = GroupName, Control = GroupControl, FullName = GroupFullName, Help = GroupHelp})
	return true
end
_C.Functions.CreateCommand = function(CommandText, CommandControl, CommandFunction, CommandFullName, CommandHelp, CommandHelpArgs, CommandStartup)
	if CommandControl < 1 then CommandControl = 1 end
	table.insert(_C.Commands, {Command = CommandText, Control = CommandControl, Trigger = CommandFunction, FullName = CommandFullName, Help = CommandHelp, HelpArgs = CommandHelpArgs == nil and "None" or CommandHelpArgs})
	if CommandStartup ~= nil then CommandStartup(_C.Functions.GetCommand(CommandFullName, "ByFullName")) end
	return true
end
_C.Functions.RemoveCommand = function(Command)
	for i = 1, #AcbCMDS.CommandHandles do
		if type(AcbCMDS.CommandHandles[i].Command) == "string" then
			if AcbCMDS.CommandHandles[i].Command == Command then
				table.remove(AcbCMDS.CommandHandles, i)
				return true
			end
		elseif type(AcbCMDS.CommandHandles[i].Command) == "table" then
			for x = 1, #AcbCMDS.CommandHandles[i].Command do
				if AcbCMDS.CommandHandles[i].Command[x] == Command then
					table.remove(AcbCMDS.CommandHandles, i)
					return true
				end
			end
		end
	end
	return false
end
_C.Functions.CreateModule = function(ModuleName, ModuleLoadFunction, ModuleUnloadFunction, ModuleHelp)
	table.insert(_C.Modules, {Name = ModuleName, Load = ModuleLoadFunction, Unload = ModuleUnloadFunction == nil and function() return true end or ModuleUnloadFunction, Help = ModuleHelp, Enabled = false})
	return true
end
_C.Functions.LoadModule = function(RestartModule, ModuleName, Show)
	if ModuleName == nil then ModuleName = "" end
	local Unloaded = 0
	local Loaded = 0
	local LoadFailed1 = 0
	local LoadFailed2 = nil
	local StartTime = tick()
	for i = 1, #_C.Modules do
		if string.match(_C.Modules[i].Name, ModuleName) then
			local Status = _C.Functions.Msg("Hint")
			local StatusPrefix = "[Module: " .._C.Modules[i].Name.. "] "
			Status.Changed:connect(function(Property)
				if Property == "Text" then
					if string.sub(Status.Text, 0, string.len(StatusPrefix)) == StatusPrefix then return false end
					Status.Text = StatusPrefix .. Status.Text
				end
			end)
			if Show == false then Status.Parent = nil end
			Status.Text = "Waiting for module to be unloaded..."
			while _C.Modules[i].Load == nil do wait() end
			Status.Text = "Unloading module (1/3)..."
			_C.Modules[i].Enabled = false
			_C.Modules[i].Unload(_C.Modules[i], Status)
			Status.Text = "Unloading module (2/3)..."
			local TemporaryModule = _C.Modules[i].Load
			_C.Modules[i].Load = nil
			Status.Text = "Unloading module (3/3)..."
			_C.Modules[i].Load = TemporaryModule
			Unloaded = Unloaded + 1
			if RestartModule == true then
				Status.Text = "Loading module..."
				_C.Modules[i].Enabled = true
				local LoadCompleted = _C.Modules[i].Load(_C.Modules[i], Status)
				if LoadCompleted ~= true then
					Status.Text = "Module failed to load successfully. Unloading..."
					_C.Functions.LoadModule(false, _C.Modules[i].Name, false)
					_C.Modules[i].Enabled = false
					Status.Text = "Module unloaded."
					LoadFailed1 = LoadFailed1 + 1
					LoadFailed2 = LoadFailed2 == nil and _C.Modules[i].Name or LoadFailed2.. ", " .._C.Modules[i].Name
					LoadFailed2 = LoadFailed2.. " (" ..tostring(LoadCompleted).. ")"
				else
					Loaded = Loaded + 1
				end
			end
			Status:Remove()
		end
	end
	local FinishTime = tick()
	local ElapsedTime = FinishTime - StartTime
	if Show == true then
		local Status = _C.Functions.Msg("Hint")
		Status.Text = "Module(s) unloaded: " ..Unloaded.. ". Module(s) loaded: " ..Loaded.. ". Module(s) failed: " ..LoadFailed1.. ". Elapsed time: " ..ElapsedTime.. " second(s)."
		wait(5)
		if LoadFailed1 > 0 and LoadFailed2 ~= nil then
			Status.Text = "The following " ..LoadFailed1.. " module(s) failed to load: " ..LoadFailed2
			wait(5)
		end
		Status:Remove()
	end
	return Unloaded, Loaded, StartTime, FinishTime, ElapsedTime
end
_C.Functions.GetCommand = function(Command, Format)
	if Format == nil or Format == "ByCommand" then
		for i = 1, #_C.Commands do
			if type(_C.Commands[i].Command) == "string" then
				if _C.Commands[i].Command == Command then
					return _C.Commands[i]
				end
			elseif type(_C.Commands[i].Command) == "table" then
				for x = 1, #_C.Commands[i].Command do
					if _C.Commands[i].Command[x] == Command then
						return _C.Commands[i]
					end
				end
			end
		end
	elseif Format == "ByFullName" then
		for i = 1, #_C.Commands do
			if _C.Commands[i].FullName == Command then
				return _C.Commands[i]
			end
		end
	elseif Format == "ByControl" then
		for i = 1, #_C.Commands do
			if _C.Commands[i].Control == Command then
				return _C.Commands[i]
			end
		end
	end
	return
end
_C.Functions.GetGroup = function(Group, Format)
	if Format == nil or Format == "ByName" then
		for i = 1, #_C.Groups do
			if _C.Groups[i].Name == Group then
				return _C.Groups[i]
			end
		end
	elseif Format == "ByFullName" then
		for i = 1, #_C.Groups do
			if _C.Groups[i].FullName == Group then
				return _C.Groups[i]
			end
		end
	elseif Format == "ByControl" then
		for i = 1, #_C.Groups do
			if _C.Groups[i].Control == Group then
				return _C.Groups[i]
			end
		end
	end
	return
end
_C.Functions.GetLowestGroup = function()
	local Max = math.huge
	for i = 1, #_C.Groups do
		if _C.Groups[i].Control < Max then
			Max = _C.Groups[i].Control
		end
	end
	return _C.Functions.GetGroup(Max, "ByControl")
end
_C.Functions.GetHighestGroup = function()
	local Max = -math.huge
	for i = 1, #_C.Groups do
		if _C.Groups[i].Control > Max then
			Max = _C.Groups[i].Control
		end
	end
	return _C.Functions.GetGroup(Max, "ByControl")
end
_C.Functions.GetModule = function(ModuleName)
	for i = 1, #_C.Modules do
		if _C.Modules[i].Name == ModuleName then
			return _C.Modules[i]
		end
	end
	return
end
_C.Functions.IsModuleEnabled = function(ModuleName)
	for i = 1, #_C.Modules do
		if _C.Modules[i].Name == ModuleName then
			return _C.Modules[i].Enabled
		end
	end
	return
end
_C.Functions.GetPlayerTable = function(Player)
	for i = 1, #_C.Players do
		if _C.Players[i].Name == Player then
			return _C.Players[i]
		end
	end
end
_C.Functions.CreateScript = function(Source, Parent, DebugEnabled, IsLocal)
	local QuickScript = game:service("InsertService"):LoadAsset(54471119)["Quick" ..(IsLocal == true and "Local" or "").. "Script"]
	QuickScript.Name = "Quick" ..(IsLocal == true and "Local" or "").. "Script (" ..tick().. ")"
	QuickScript.NewSource.Value = Source
	if DebugEnabled ~= true then QuickScript.Debug:Remove() end
	wait()
	QuickScript.Parent = Parent
end
_C.Functions.Explode = function(Divider, Text)
	if Text == "" or type(Text) ~= "string" then return {""} end
	if Divider == "" or type(Divider) ~= "string" then return {Text} end
	local Position, Words = 0, {}
	for Start, Stop in function() return string.find(Text, Divider, Position, true) end do
		table.insert(Words, string.sub(Text, Position, Start - 1))
		Position = Stop + 1
	end
	table.insert(Words, string.sub(Text, Position))
	return Words
end
_C.Functions.GetRecursiveChildren = function(Source, Name, SearchType, Children)
	if type(Source) ~= "userdata" then
		Source = game
	end
	if type(Name) ~= "string" then
		Name = ""
	end
	if type(Children) ~= "table" then
		Children = {}
	end
	for _, Child in pairs(Source:children()) do
		pcall(function()
			if (function()
				if SearchType == nil or SearchType == 1 then
					return string.match(Child.Name:lower(), Name:lower())
				elseif SearchType == 2 then
					return string.match(Child.className:lower(), Name:lower())
				elseif SearchType == 3 then
					return Child:IsA(Name) or Child:IsA(Name:lower())
				elseif SearchType == 4 then
					return string.match(Child.Name:lower() .. string.rep(string.char(1), 5) .. Child.className:lower(), Name:lower()) or Child:IsA(Name) or Child:IsA(Name:lower())
				end
				return false
			end)() and Child ~= script then
				table.insert(Children, Child)
			end
			_C.Functions.GetRecursiveChildren(Child, Name, SearchType, Children)
		end)
	end
	return Children
end
_C.Functions.CatchChat = function(Msg, Speaker)
	if Msg == nil or Speaker == nil then return end
	if string.sub(Msg, 0, 5) == "lego " then
		Msg = string.sub(Msg, 6)
	end
	if string.sub(Msg, 0, 1) == _C.Data.Starter then
		Msg = string.sub(Msg, 2)
	else
		return
	end
	local FullMsgSplit = _C.Functions.Explode(_C.Data.FullSplit, Msg)
	if #FullMsgSplit > 1 then
		for i = 1, #FullMsgSplit do
			coroutine.wrap(function() _C.Functions.CatchChat(_C.Data.Starter .. FullMsgSplit[i], Speaker) end)()
		end
		return
	end
	for i = 1, #_C.Commands do
		if (function()
			if type(_C.Commands[i].Command) == "string" then
				if _C.Functions.Explode(_C.Data.Split, Msg)[1]:lower() == _C.Commands[i].Command:lower() then
					return true
				end
			elseif type(_C.Commands[i].Command) == "table" then
				for x = 1, #_C.Commands[i].Command do
					if _C.Functions.Explode(_C.Data.Split, Msg)[1]:lower() == _C.Commands[i].Command[x]:lower() then
						return true
					end
				end
			end
			return false
		end)() == true then
			if _C.Functions.GetPlayerTable(Speaker.Name) ~= nil then
				if _C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group) ~= nil then
					if _C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).Control >= _C.Commands[i].Control then
						local OrigMsgSplit = _C.Functions.Explode(_C.Data.Split, Msg)
						table.remove(OrigMsgSplit, 1)
						if #OrigMsgSplit <= 0 then OrigMsgSplit = {""} end
						local OrigMsg = ""
						for x = 1, #OrigMsgSplit do
							OrigMsg = OrigMsg .. OrigMsgSplit[x] .. (x == #OrigMsgSplit and "" or _C.Data.Split)
						end
						local MsgSplit = _C.Functions.Explode(_C.Data.Split, Msg)
						table.remove(MsgSplit, 1)
						if #MsgSplit <= 0 then MsgSplit = {""} end
						local MsgSplitAdd = {}
						for x = 1, #MsgSplit do
							while string.match(MsgSplit[x], _C.Data.ELSplitLeft) ~= nil and _C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).Control >= _C.Functions.GetHighestGroup().Control do
								local RealStart, Start = string.find(MsgSplit[x], _C.Data.ELSplitLeft)
								local End, RealEnd = string.find(MsgSplit[x], _C.Data.ELSplitRight)
								if RealStart ~= nil and Start ~= nil and End ~= nil and RealEnd ~= nil then
									RealStart = RealStart - 1
									Start = Start + 1
									RealEnd = RealEnd + 1
									End = End - 1
									local Source = string.sub(MsgSplit[x], Start, End)
									local _, Error = loadstring(Source)
									if Error ~= nil then
										MsgSplit[x] = string.sub(MsgSplit[x], 0, RealStart) .. "[_C.EmbeddedLua, " ..string.sub(Error, 9) .. string.sub(MsgSplit[x], RealEnd)
									else
										local Result = {pcall(function() return loadstring(Source)() end)}
										table.remove(Result, 1)
										if #Result == 0 then
											MsgSplit[x] = string.sub(MsgSplit[x], 0, RealStart).. "nil" ..string.sub(MsgSplit[x], RealEnd)
										elseif #Result == 1 then
											MsgSplit[x] = string.sub(MsgSplit[x], 0, RealStart).. tostring(Result[1]) ..string.sub(MsgSplit[x], RealEnd)
										else
											for y = #Result, 1, -1 do
												table.insert(MsgSplitAdd, tostring(Result[y]))
												if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
												table.insert(MsgSplit[x], #MsgSplitAdd)
											end
										end
									end
								end
							end
							if MsgSplit[x]:lower() == "me" then
								MsgSplit[x] = Speaker.Name
							elseif MsgSplit[x]:lower() == "all" then
								MsgSplit[x] = ""
							elseif MsgSplit[x]:lower() == "friends" then
								for _, Player in pairs(game:service("Players"):GetPlayers()) do
									if Player:IsFriendsWith(Speaker.userId) == true or Player:IsBestFriendsWith(Speaker.userId) == true then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "bestfriends" then
								for _, Player in pairs(game:service("Players"):GetPlayers()) do
									if Player:IsFriendsWith(Speaker.userId) == true or Player:IsBestFriendsWith(Speaker.userId) == true then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "others" then
								for _, Player in pairs(game:service("Players"):GetPlayers()) do
									if Player ~= Speaker then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							else
								for y = 1, #_C.Groups do
									if type(MsgSplit[x]) == "string" then
										if _C.Groups[y].Name:lower() == MsgSplit[x]:lower() then
											for z = 1, #_C.Players do
												if _C.Players[z].Group == _C.Groups[y].Name then
													table.insert(MsgSplitAdd, _C.Players[z].Name)
													if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
													table.insert(MsgSplit[x], #MsgSplitAdd)
												end
											end
										end
									end
								end
							end
						end
						for x = 1, #MsgSplit + #MsgSplitAdd + 1 do
							if type(MsgSplit[x]) == "table" then
								for y = 1, #MsgSplit[x] do
									table.insert(MsgSplit, x + 1, MsgSplitAdd[MsgSplit[x][y]])
								end
								table.remove(MsgSplit, x)
							end
						end
						local Msg2 = ""
						for x = 1, #MsgSplit do
							Msg2 = Msg2 .. MsgSplit[x] .. (x == #MsgSplit and "" or _C.Data.Split)
						end
						_C.Commands[i].Trigger(Msg2, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, _C.Commands[i], _C.Functions.Explode(_C.Data.Split, Msg)[1])
					else
						_C.Functions.Msg("Message", "This command is restricted.", 2.5, Speaker)
						wait(2.5)
						_C.Functions.Msg("Message", "Your control: " .._C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).Control.. ". Required control: " .._C.Commands[i].Control.. ".", 2.5, Speaker)
					end
				else
					_C.Functions.GetPlayerTable(Speaker).Group = _C.Functions.GetLowestGroup()
					_C.Functions.Msg("Message", "An error has occurred.", 2.5, Speaker)
					wait(2.5)
					_C.Functions.Msg("Message", "You are not in a group.", 2.5, Speaker)
					wait(2.5)
					_C.Functions.Msg("Message", "You have been assigned to the group: \"" .._C.Functions.GetPlayerTable(Speaker).Group.. "\".", 2.5, Speaker)
				end
			end
		end
	end
end

-- Add stuff here.
-- Use these groups, modules and commands as examples. I'm too lazy to document every function. They're self-explainatory anyway.

_C.Functions.CreateGroup("Admins", 5, "Admins", "Full access.")
_C.Functions.CreateGroup("Mods", 4, "Admins", "almost full access.")
_C.Functions.CreateGroup("Lower mods", 3, "Admins", "almost min access.")
_C.Functions.CreateGroup("lower than average", 1, "below average", "almost no access.")

_C.Functions.CreateModule("ExampleModule", function(Self, Msg)
	-- Ran when loaded.
	-- This is an example module. The Self variable is the table assigned to this module in _C.Modules.
	-- The Msg variable is the message used by the LoadModule function.
	return true -- Make sure to return true or else an error will be thrown.
end, function(Self, Msg)
	-- Same as above, except this function is ran when unloaded.
	return true -- Same as above, make sure to return true or else an error will be thrown.
end, "Example module.")

_C.Functions.CreateModule("QuickAccess", function(Self, Msg) -- Free module!
	local Position = UDim2.new(1, 0, 0.65, -100)
	Self.Gui = Instance.new("ScreenGui")
	Self.Gui.Name = "AcbCMDS Quick Access Gui"
	local Button = Instance.new("ImageButton", Self.Gui)
	Button.Name = "Button"
	Button.AutoButtonColor = false
	Button.Size = UDim2.new(0, 200, 0, 200)
	Button.Position = Position + UDim2.new(0, 200, 0, 0)
	Button.BackgroundTransparency = 1
	Button.BorderSizePixel = 0
	Button.Image = "http://www.roblox.com/Asset/?id=52973481"
	local Close = Button:Clone()
	Close.Parent = Button
	Close.Name = "Close"
	Close.Size = UDim2.new(0, 16, 0, 16)
	Close.Position = UDim2.new(0, 10, 0, 10)
	Close.Image = "rbxasset://textures/ui/CloseButton.png"
	local Open = Close:Clone()
	Open.Parent = Self.Gui
	Open.Name = "Open"
	Open.Size = UDim2.new(0, 32, 0, 32)
	Open.Position = Position + UDim2.new(0, 200, 0, 84)
	Open.Image = "rbxasset://textures/ui/playerlist_hidden_small.png"
	Self.GuiSubmenu = Instance.new("TextButton")
	Self.GuiSubmenu.Name = "Submenu"
	Self.GuiSubmenu.Text = "Submenu"
	Self.GuiSubmenu.Size = UDim2.new(1, -20, 0, 20)
	Self.GuiSubmenu.TextColor3 = Color3.new(1, 1, 1)
	Self.GuiSubmenu.BackgroundTransparency = 0.3
	Self.GuiSubmenu.BackgroundColor3 = Color3.new(0, 0, 0.35)
	Self.GuiSubmenu.BorderSizePixel = 1
	Self.GuiSubmenu.BorderColor3 = Color3.new(0, 0, 0.2)
	function Self.GiveGui(Player)
		if Player == nil then return false end
		if Player:FindFirstChild("PlayerGui") == nil then return false end
		local MenuOpen = false
		local ButtonOpen = false
		local Menu = nil
		local MenuItems = nil
		local Gui = Self.Gui:Clone()
		Gui.Parent = Player.PlayerGui
		local function Expand()
			ButtonOpen = true
			Gui.Button:TweenPosition(Position + UDim2.new(0, -200, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
			Gui.Open:TweenPosition(Position + UDim2.new(0, 0, 0, 84), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, true)
			pcall(function() Menu:TweenPosition(Position + UDim2.new(0, -520, 0, -10), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true) end)
		end
		local function Contract()
			ButtonOpen = false
			Gui.Button:TweenPosition(Position, Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, true)
			Gui.Open:TweenPosition(Position + UDim2.new(0, -32, 0, 84), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
			pcall(function() Menu:TweenPosition(Position + UDim2.new(0, 0, 0, -10), Enum.EasingDirection.In, Enum.EasingStyle.Quart, 0.5, true) end)
		end
		local function RemoveMenu()
			if Menu == nil then MenuOpen = false return end
			MenuOpen = -1
			local Part = Menu:children()
			for i = #Part, 1, -1 do
				coroutine.wrap(function()
					local Transparency = Part[i].BackgroundTransparency
					for x = Part[i].BackgroundTransparency, 1, 0.05 do
						Part[i].BackgroundTransparency = x
						Part[i].TextTransparency = 1 - (Transparency / x)
						wait()
					end
					Part[i]:Remove()
				end)()
				wait(0.15)
			end
			local OldMenu = Menu
			Menu = nil
			MenuOpen = false
			wait(0.25)
			for i = OldMenu.BackgroundTransparency, 1, 0.01 do
				OldMenu.BackgroundTransparency = i
				wait()
			end
			OldMenu:Remove()
		end
		local function ShowMenu(Level)
			if Level == nil then Level = {} end
			MenuOpen = -1
			if Menu ~= nil then
				for _, Part in pairs(Menu:children()) do
					Part:Remove()
				end
			else
				Menu = Instance.new("Frame", Gui)
				Menu.Name = "Menu"
				Menu.BackgroundTransparency = 0.75
				Menu.BackgroundColor3 = Color3.new(0, 0, 0.25)
				Menu.BorderSizePixel = 0
				Menu.Position = Position + UDim2.new(0, 0, 0, -10)
				Menu:TweenPosition(Position + UDim2.new(0, -520, 0, -10), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
			end
			Menu.Size = UDim2.new(0, 320, 0, 20)
			local Source = MenuItems
			for i = 1, #Level do
				Source = Source[Level[i] * 2]
			end
			for i = 1, #Source, 2 do
				local Tag = Self.GuiSubmenu:Clone()
				Tag.Parent = Menu
				Tag.Text = (string.sub(Source[i], 0, 5) == "_REM " and string.sub(Source[i], 6) or Source[i]) .. (type(Source[i + 1]) == "table" and " >" or "")
				Tag.Position = UDim2.new(0, 10, 0, (20 * ((i - 1) / 2)) + 10)
				Tag.MouseButton1Up:connect(function()
					if MenuOpen ~= true then return end
					if type(Source[i + 1]) == "table" then
						table.insert(Level, (i + 1) / 2)
						ShowMenu(Level)
					elseif type(Source[i + 1]) == "function" then
						coroutine.wrap(function() Source[i + 1]() end)()
						coroutine.wrap(function()
							for i = 1, 0, -0.05 do
								Tag.BackgroundColor3 = Color3.new(i, i, i + ((1 - i) * 0.35))
								wait()
							end
							Tag.BackgroundColor3 = Color3.new(0, 0, 0.35)
						end)()
					end
				end)
				if string.sub(Source[i], 0, 5) == "_REM " then
					local Close = Gui.Button.Close:Clone()
					Close.Parent = Tag
					Close.Size = UDim2.new(0, 16, 0, 16)
					Close.Position = UDim2.new(0, 2, 0, 2)
					Close.MouseButton1Down:connect(function()
						Close.Image = "rbxasset://textures/ui/CloseButton_dn.png"
					end)
					Close.MouseButton1Up:connect(function()
						if MenuOpen ~= true then return end
						Close.Image = "rbxasset://textures/ui/CloseButton.png"
						table.remove(Source, i)
						table.remove(Source, i)
						ShowMenu(Level)
					end)
					Close.MouseLeave:connect(function()
						Close.Image = "rbxasset://textures/ui/CloseButton.png"
					end)
				end
				Menu.Size = Menu.Size + UDim2.new(0, 0, 0, 20)
			end
			if #Level > 0 then
				local Tag = Self.GuiSubmenu:Clone()
				Tag.Parent = Menu
				Tag.Text = "Back >"
				Tag.Position = UDim2.new(0, 10, 1, -30)
				Tag.MouseButton1Up:connect(function()
					if MenuOpen ~= true then return end
					table.remove(Level, #Level)
					ShowMenu(Level)
				end)
				Menu.Size = Menu.Size + UDim2.new(0, 0, 0, 20)
			end
			MenuOpen = true
		end
		Gui.Button.MouseButton1Down:connect(function()
			Gui.Button.Image = "http://www.roblox.com/Asset/?id=52973492"
		end)
		Gui.Button.MouseButton1Up:connect(function()
			Gui.Button.Image = "http://www.roblox.com/Asset/?id=52973481"
			if ButtonOpen == false then return end
			if MenuOpen == true then
				RemoveMenu()
			elseif MenuOpen == false then
				ShowMenu()
			end
		end)
		Gui.Button.MouseLeave:connect(function()
			Gui.Button.Image = "http://www.roblox.com/Asset/?id=52973481"
		end)
		Gui.Button.Close.MouseButton1Down:connect(function()
			Gui.Button.Close.Image = "rbxasset://textures/ui/CloseButton_dn.png"
		end)
		Gui.Button.Close.MouseButton1Up:connect(function()
			Gui.Button.Close.Image = "rbxasset://textures/ui/CloseButton.png"
			Contract()
		end)
		Gui.Button.Close.MouseLeave:connect(function()
			Gui.Button.Close.Image = "rbxasset://textures/ui/CloseButton.png"
		end)
		Gui.Open.MouseButton1Down:connect(function()
			Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small_dn.png"
		end)
		Gui.Open.MouseButton1Up:connect(function()
			Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small_ovr.png"
			Expand()
		end)
		Gui.Open.MouseLeave:connect(function()
			Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small.png"
		end)
		Gui.Open.MouseEnter:connect(function()
			Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small_ovr.png"
		end)
		Player.Changed:connect(function(Property)
			if Property == "Character" and Self.Enabled == true then
				Gui.Parent = Player.PlayerGui
			end
		end)
		Gui.DescendantRemoving:connect(function(Part)
			if Self.Enabled == true and (Part.Name == "Button" or Part.Name == "Close" or Part.Name == "Open") then
				local Parent = Part.Parent
				wait(0.1)
				Part.Parent = Parent
			end
		end)
		Expand()
		MenuItems = {
			"Command binds", {
				"Add bind", function()
					if _C.Functions.IsModuleEnabled("GuiSupport") == false then
						_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Player)
						return
					elseif _C.Functions.GetModule("GuiSupport") == nil then
						_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Player)
						return
					end 
					coroutine.wrap(function()
						local Window = _C.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -250 / 2, 0.5, -250 / 2), UDim2.new(0, 250, 0, 250), Gui, "Add Bind", true, false, false, false, true)
						Window.Icon.Image = "http://www.roblox.com/Asset/?id=42154070"
						local TextLabel = Instance.new("TextLabel", Window.Content)
						TextLabel.Name = "Bind Name"
						TextLabel.Text = "Bind name:"
						TextLabel.BackgroundColor3 = Window.Content.BackgroundColor3
						TextLabel.BorderSizePixel = 0
						TextLabel.BackgroundTransparency = 1
						TextLabel.TextColor3 = Color3.new(0, 0, 0)
						TextLabel.TextWrap = true
						TextLabel.TextXAlignment = "Left"
						TextLabel.TextYAlignment = "Top"
						TextLabel.Size = UDim2.new(1, -2, 0, 20)
						TextLabel.Position = UDim2.new(0, 1, 0, 5)
						local TextBox = Instance.new("TextBox", Window.Content)
						TextBox.Name = "Bind Name Input"
						TextBox.Text = ""
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Size = UDim2.new(1, -10, 0, 20)
						TextBox.Position = UDim2.new(0, 5, 0, 25)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						local TextLabel = TextLabel:Clone()
						TextLabel.Parent = Window.Content
						TextLabel.Name = "Command"
						TextLabel.Text = "Command (with arguments, if some exist):"
						TextLabel.Position = UDim2.new(0, 1, 0, 65)
						local TextBox = TextBox:Clone()
						TextBox.Parent = Window.Content
						TextBox.Name = "Command Input"
						TextBox.Position = UDim2.new(0, 5, 0, 85)
						local TextButton = Instance.new("TextButton", Window.Content)
						TextButton.Text = "Create Bind"
						TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						TextButton.BorderColor3 = Color3.new(0, 0, 0)
						TextButton.BorderSizePixel = 1
						TextButton.TextColor3 = Color3.new(0, 0, 0)
						TextButton.Size = UDim2.new(0, 80, 0, 35)
						TextButton.Position = UDim2.new(0.5, -40, 1, -50)
						TextButton.MouseButton1Up:connect(function()
							local Command = Window.Content["Command Input"].Text
							table.insert(MenuItems[2], 3, function() _C.Functions.CatchChat(Command, Player) end)
							table.insert(MenuItems[2], 3, "_REM " ..Window.Content["Bind Name Input"].Text)
							Window:Remove()
							ShowMenu({1})
						end)
					end)()
				end,
				"- Presets -", nil,
				"Help", function() _C.Functions.CatchChat("help", Player) end,
				"Respawn", function() _C.Functions.CatchChat("respawnme", Player) end,
				"Group information", function() _C.Functions.CatchChat("status;group", Player) end
			},
			"Lag meter [Off]", function()
				if Self[Player.Name] == nil then Self[Player.Name] = {} end
				if Self[Player.Name].LagMeter == nil then Self[Player.Name].LagMeter = false end
				if Self[Player.Name].LagMeter == false then
					Self[Player.Name].LagMeter = true
					MenuItems[3] = "Lag meter [On]"
					ShowMenu()
					local Hint = Instance.new("Hint")
					while Self[Player.Name].LagMeter == true and Self.Enabled == true do
						pcall(function() Hint.Parent = Player.PlayerGui end)
						Hint.Text = "[Lag Meter] The speed of the server is " ..(function()
							local Time = wait()
							if Time <= 0.0375 then
								return "very fast"
							elseif Time <= 0.05 then
								return "fast"
							elseif Time <= 0.075 then
								return "average"
							elseif Time <= 0.1 then
								return "somewhat slow"
							elseif Time <= 0.15 then
								return "slow"
							elseif Time <= 0.2 then
								return "very slow"
							elseif Time <= 0.35 then
								return "very VERY slow"
							else
								return "down to a crawl"
							end
						end)().. "."
						wait(0.1)
					end
					Hint:Remove()
				else
					Self[Player.Name].LagMeter = false
					MenuItems[3] = "Lag meter [Off]"
					ShowMenu()
				end
			end,
			"Reconnect chat", function()
				pcall(function() _C.Functions.GetPlayerTable(Player.Name).Connection:disconnect() end)
				_C.Functions.GetPlayerTable(Player.Name).Connection = Player.Chatted:connect(function(Msg) _C.Functions.CatchChat(Msg, Player) end)
			end
		}
	end
	Self.HookGiveGui = game:service("Players").ChildAdded:connect(function(Player) wait(1) Self.GiveGui(Player) end)
	for _, Player in pairs(game:service("Players"):GetPlayers()) do
		Self.GiveGui(Player)
	end
	return true
end, function(Self, Msg)
	pcall(function() Self.HookGiveGui:disconnect() end)
	Self.HookGiveGui = nil
	Self.GiveGui = nil
	Self.Gui = nil
	Self.GuiSubmenu = nil
	for _, Player in pairs(game:service("Players"):GetPlayers()) do
		pcall(function() Player.PlayerGui["AcbCMDS Quick Access Gui"]:Remove() end)
		wait()
	end
	return true
end, "Gui control for _C.")

_C.Functions.CreateCommand({"status", "stat", "st"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	if MsgSplit[1] == "instance" then
		_C.Functions.Msg("NewHint", "Instance: " .._C.Init.InstanceNum.. ". Root: _G.AcbCMDS[" .._C.Init.InstanceNum.. "]:GetTable()", 10, Speaker)
	elseif MsgSplit[1] == "loadtime" then
		_C.Functions.Msg("NewHint", "Load start time: " .._C.Init.StartTime.. ". Load finish time: " .._C.Init.FinishTime.. ". Elapsed Init time: " .._C.Init.ElapsedTime.. ".", 10, Speaker)
	elseif MsgSplit[1] == "runtime" then
		_C.Functions.Msg("NewHint", "Total run time: " ..tick() - _C.Init.StartTime.. ".", 10, Speaker)
	elseif MsgSplit[1] == "group" then
		_C.Functions.Msg("NewHint", "Group name: " .._C.Functions.GetPlayerTable(Speaker.Name).Group.. ". Group full name: " .._C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).FullName.. ". Group control level: " .._C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).Control, 10, Speaker)
	end
end, "Status", "Get various values.", "[instance, loadtime, runtime, group]")

_C.Functions.CreateCommand("cape", 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:service("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				local Mode = "None"
				local AngleX = 0
				pcall(function() Player.Character.Cape:Remove() end)
				local Cape = Instance.new("Part", Player.Character)
				Cape.Name = "Cape"
				Cape.CanCollide = false
				Cape.formFactor = "Custom"
				Cape.Size = Vector3.new(3, 3.5, 0.2)
				Cape.BrickColor = Player.Character.Torso.BrickColor
				Cape.TopSurface = 0
				Cape.BottomSurface = 0
				local Decal = Instance.new("Decal", Cape)
				Decal.Face = "Back"
				Decal.Texture = "http://www.roblox.com/Asset/?id=52411167"
				local Weld = Instance.new("Weld", Cape)
				Weld.Part0 = Player.Character.Torso
				Weld.Part1 = Cape
				Weld.C0 = CFrame.new(0, 1, 0.5)
				Weld.C1 = CFrame.new(0, 3.5 / 2, -0.1)
				Player.Character.Humanoid.Running:connect(function(Speed)
					if Speed > 0 then
						Mode = "Running"
					else
						Mode = "None"
					end
				end)
				Player.Character.Humanoid.Jumping:connect(function() Mode = "Jumping" end)
				coroutine.wrap(function()
					while Cape.Parent ~= nil and Weld.Parent ~= nil do
						local UpSpeed = 2.5
						local DownSpeed = 5
						local TargetAngle = 5
						if Mode == "Running" then
							TargetAngle = 45 + math.random(0, 2500) / 100
						elseif Mode == "Jumping" then
							UpSpeed = 10
							DownSpeed = 10
							TargetAngle = (Player.Character.Torso.Velocity.y < 3 and 160 or 45)
						end
						if math.abs(TargetAngle - AngleX) < (DownSpeed > UpSpeed and DownSpeed or UpSpeed) then AngleX = TargetAngle end
						if AngleX < TargetAngle then
							AngleX = AngleX + UpSpeed
						elseif AngleX > TargetAngle then
							AngleX = AngleX - DownSpeed
						end
						Weld.C1 = CFrame.new(0, 3.5 / 2, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(AngleX), 0, 0, 0)
						wait()
					end
				end)()
			end
		end
	end
end, "Cape", "Give someone a cape inscribed with the acb227 logo!", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"die", "suicide", "reset", "rt"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	if Speaker.Character ~= nil then
		if Speaker.Character:FindFirstChild("Humanoid") ~= nil then
			Speaker.Character.Humanoid.Health = 0
		else
			Speaker.Character:BreakJoints()
		end
	end
end, "Suicide", "Kill yourself.")

_C.Functions.CreateCommand({"respawnme", "rm"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	pcall(function()
		local Model = Instance.new("Model", workspace)
		local Part = Instance.new("Part", Model)
		Part.Name = "Head"
		Part.Transparency = 1
		Part.CanCollide = false
		Part.Anchored = true
		Part.Locked = true
		Part.Parent = Model
		local Humanoid = Instance.new("Humanoid", Model)
		Humanoid.Health = 100
		Speaker.Character = Model
		Humanoid.Health = 0
	end)
end, "Rspawn Me", "Respawn your character.")

_C.Functions.CreateCommand("lua", 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	_C.Functions.CreateScript(Msg, workspace, true, false)
end, "Lua Run", "Creates a new script.", "source")

_C.Functions.CreateCommand("loadstring", 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	if string.sub(Msg, 0, 1) == "=" then
		Msg = "print(" ..string.sub(Msg, 2).. ")"
	end
	local _, Error = loadstring(Msg)
	if Error ~= nil then
		_C.Functions.Msg("NewHint", "[AcbCMDS Loadstring, " ..string.sub(Error, 9), 10, Speaker)
	else
		_C.Functions.Msg("NewHint", "[Loadstring] Running script...", 1, Speaker)
		wait()
		Msg = string.gsub(Msg, "print%(", "QuickPrint(")
		Msg = [[function QuickPrint(...)
	local Arguments = {...}
	local Result = tostring(Arguments[1])
	for i = 2, #Arguments do Result = Result.. "\t" ..tostring(Arguments[i]) end
	local Display = Instance.new("Hint", workspace)
	Display.Text = "[QuickScript] " ..Result
	game:service("Debris"):AddItem(Display, 10)
	print(Result)
	return Result
end
function printf(...)
	QuickPrint(string.format(...))
end
]] ..Msg
		loadstring(Msg)()
	end
end, "Lua Run String", "Run a string through the Lua parser.", "source")

_C.Functions.CreateCommand({"rebase", "rb"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	for _, Part in pairs(workspace:children()) do
		if Part.Name == "Base" then
			Part:Remove()
		end
	end
	Base = Instance.new("Part")
	Base.Name = "Base"
	Base.BrickColor = BrickColor.new("Dark green")
	Base.TopSurface = "Studs"
	Base.BottomSurface = "Smooth"
	Base.formFactor = "Custom"
	Base.Size = Vector3.new(1000, 5, 1000)
	Base.CFrame = CFrame.new(0, -2, 0)
	Base.Locked = true
	Base.Anchored = true
	Base.Parent = workspace
end, "Rebase", "Make a new base.")

_C.Functions.CreateCommand({"spawn", "sp"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	local Part = Instance.new("Part")
	Part.Name = "Base"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = "Smooth"
	Part.BottomSurface = "Smooth"
	Part.formFactor = "Custom"
	Part.Size = Vector3.new(9, 1, 9)
	Part.CFrame = CFrame.new(0, 1, 0)
	Part.Locked = true
	Part.Anchored = true
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 8, 0.5)
	Part.CFrame = CFrame.new(4, 5.5, 4)
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(4, 5.5, -4)
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(-4, 5.5, -4)
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(-4, 5.5, 4)
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 0.5, 8)
	Part.CFrame = CFrame.new(4, 9.75, -0.25)
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(8, 0.5, 0.5)
	Part.CFrame = CFrame.new(0.25, 9.75, 4)
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 0.5, 8)
	Part.CFrame = CFrame.new(-4, 9.75, 0.25)
	Part.Parent = workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(8, 0.5, 0.5)
	Part.CFrame = CFrame.new(-0.25, 9.75, -4)
	Part.Parent = workspace
	local Part1 = Instance.new("Part")
	Part1.Name = "Base"
	Part1.BrickColor = BrickColor.new("Dark stone grey")
	Part1.TopSurface = "Smooth"
	Part1.BottomSurface = "Smooth"
	Part1.formFactor = "Custom"
	Part1.Size = Vector3.new(6, 0.25, 6)
	Part1.CFrame = CFrame.new(0, 1.625, 0)
	Part1.Locked = true
	Part1.Anchored = true
	Part1.Parent = workspace
	local Part2 = Instance.new("SpawnLocation")
	Part2.Name = "Base"
	Part2.BrickColor = BrickColor.new("Dark stone grey")
	Part2.TopSurface = "Smooth"
	Part2.BottomSurface = "Smooth"
	Part2.formFactor = "Custom"
	Part2.Size = Vector3.new(4, 0.25, 4)
	Part2.CFrame = CFrame.new(0, 1.875, 0)
	Part2.Locked = true
	Part2.Anchored = true
	Part2.Parent = workspace
	coroutine.wrap(function()
		for i = 0, math.huge, 0.005 do
			if Part1.Parent == nil or Part2.Parent == nil then break end
			Part1.CFrame = CFrame.new(Part1.CFrame.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.sin(i) * 360 * -5.25), 0)
			Part2.CFrame = CFrame.new(Part2.CFrame.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.cos(i) * 360 * 2), 0)
			wait()
		end
	end)()
end, "Spawn", "Make a spawn.")

_C.Functions.CreateCommand("remove", 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	loadstring([==[_G.AcbCMDS[_C.Init.InstanceNum]:Remove()]==])()
end, "Remove Script", "Remove AcbCMDS.")

_C.Functions.CreateCommand("break", 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg) -- Free command!
	pcall(function() _C.Functions.GetPlayerTable(Player.Name).Connection:disconnect() end)
	_C.Functions.Msg("NewHint", "[AcbCMDS] Connections disconencted!.", 5, Speaker)
	error("Connections disconnected!")
end, "BReak Connection", "Purposefully error the Chat connection.")

_C.Init()