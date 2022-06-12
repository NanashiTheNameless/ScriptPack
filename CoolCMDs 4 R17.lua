if script == nil then
	local Hint = Instance.new("Hint", Workspace)
	Hint.Text = "[CoolCMDs Fatal Error] Cannot run; script object not found!"
	wait(5)
	Hint:Remove()
	return
end

script.Name = "€£CoolCMDs£€"
script.Parent = game:GetService("ScriptContext")

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
_C.Data.AccessCode = 7284
_C.Data.AccessDenied = "Access denied to CoolCMDs instance %d. Incorrect access code \"%s\"."
_C.Data.Version = "4 R17"

_C.Init = {}
setmetatable(_C.Init, {__call = function()
	game:GetService("Players").ChildAdded:connect(function(Player) _C.Functions.CreatePlayerTable(Player) end)
	game:GetService("Players").ChildRemoved:connect(function(Player) _C.Functions.RemovePlayerTable(Player) end)
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do pcall(function() _C.Functions.CreatePlayerTable(Player) end) end
	_C.Functions.LoadModule(true, nil, false)
	_C.Init.FinishTime = tick()
	_C.Init.ElapsedTime = _C.Init.FinishTime - _C.Init.StartTime
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if Player:FindFirstChild("PlayerGui") ~= nil then
			coroutine.wrap(function()
				local Gui = Instance.new("ScreenGui", Player.PlayerGui)
				Gui.Name = "CoolCMDs Gui"
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
						Label.Text = "CoolCMDs version " .._C.Data.Version.. " loaded successfully."
						wait(2.5)
						Button.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=400&y=400&Format=Png&username=DarkShadow6"
						Label.Text = "Created by DarkShadow6."
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
_C.Init.StartTime = tick()
_C.Init.FinishTime = -1
_C.Init.ElapsedTime = -1
_C.Init.InstanceNum = 0
if type(_G.CoolCMDs) ~= "table" then _G.CoolCMDs = {} end
table.insert(_G.CoolCMDs, {})
for i = 1, #_G.CoolCMDs do _C.Init.InstanceNum = _C.Init.InstanceNum + 1 end
if _C.Init.InstanceNum == 0 then _C.Init.InstanceNum = 1 end
_G.CoolCMDs[_C.Init.InstanceNum].GetInstance = function(Self, Code)
	if Self ~= _G.CoolCMDs[_C.Init.InstanceNum] then return end
	if Code == _C.Data.AccessCode then
		return script, script.Parent
	else
		error(string.format(_C.Data.AccessDenied, _C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end
_G.CoolCMDs[_C.Init.InstanceNum].GetTable = function(Self, Code)
	if Self ~= _G.CoolCMDs[_C.Init.InstanceNum] then return end
	if Code == _C.Data.AccessCode then
		return _C
	else
		error(string.format(_C.Data.AccessDenied, _C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end
_G.CoolCMDs[_C.Init.InstanceNum].Remove = function(Self, Code)
	if Self ~= _G.CoolCMDs[_C.Init.InstanceNum] then return false end
	if Code == _C.Data.AccessCode then
		_C.Functions.LoadModule(false, nil, false)
		_G.CoolCMDs[_C.Init.InstanceNum] = nil
		_C = nil
		local Msg = Instance.new("Hint", Workspace)
		Msg.Text = "[CoolCMDs] Removed."
		wait(1)
		Msg:Remove()
		if pcall(function() script:Remove() end) == false then
			local Msg = Instance.new("Hint", Workspace)
			Msg.Text = "[CoolCMDs Error] Script was not removed!"
			wait(5)
			Msg:Remove()
		end
		return true, script
	else
		error(string.format(_C.Data.AccessDenied, _C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end

_C.Functions.Msg = function(Format, Text, Time, Parent)
	if Parent == nil then Parent = Workspace end
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
			if Part.Name == "CoolCMDs NewHint" then
				HintSpace = HintSpace + 1
			end
		end
		local Gui = Instance.new("ScreenGui", Parent)
		Gui.Name = "CoolCMDs NewHint"
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
					Gui.Name = "CoolCMDs Old NewHint"
					Hint:TweenPosition(UDim2.new(0, 0, 0, -20), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, false)
				end)
				local i = 0
				for _, Part in pairs(Parent:children()) do
					if Part.Name == "CoolCMDs NewHint" then
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
	Tag.Parent = game:GetService("Players")
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
	for i = 1, #CoolCMDs.CommandHandles do
		if type(CoolCMDs.CommandHandles[i].Command) == "string" then
			if CoolCMDs.CommandHandles[i].Command == Command then
				table.remove(CoolCMDs.CommandHandles, i)
				return true
			end
		elseif type(CoolCMDs.CommandHandles[i].Command) == "table" then
			for x = 1, #CoolCMDs.CommandHandles[i].Command do
				if CoolCMDs.CommandHandles[i].Command[x] == Command then
					table.remove(CoolCMDs.CommandHandles, i)
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
	local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["Quick" ..(IsLocal == true and "Local" or "").. "Script"]
	QuickScript.Name = "Quick" ..(IsLocal == true and "Local" or "").. "Script (" ..tick().. ")"
	QuickScript.DynamicSource.Value = Source
	if DebugEnabled ~= true then QuickScript.Debug.Value = false end
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
					return string.match(Child.ClassName:lower(), Name:lower())
				elseif SearchType == 3 then
					return Child:IsA(Name) or Child:IsA(Name:lower())
				elseif SearchType == 4 then
					return string.match(Child.Name:lower() .. string.rep(string.char(1), 5) .. Child.ClassName:lower(), Name:lower()) or Child:IsA(Name) or Child:IsA(Name:lower())
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
								for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
									if Player:IsFriendsWith(Speaker.userId) == true or Player:IsBestFriendsWith(Speaker.userId) == true then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "bestfriends" then
								for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
									if Player:IsFriendsWith(Speaker.userId) == true or Player:IsBestFriendsWith(Speaker.userId) == true then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "others" then
								for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
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

_C.Functions.CreateGroup("guest", 1, "Guest", "The guest group has no privilages.")
_C.Functions.CreateGroup("pguest", 2, "Privilaged Guest", "A privilaged guest has a few abilities.")
_C.Functions.CreateGroup("miniadmin", 3, "Mini-Administrator", "The Mini-Administrator group can only use some low-level commands.")
_C.Functions.CreateGroup("admin", 4, "Administrator", "The Administrator group can use most commands.")
_C.Functions.CreateGroup("superadmin", 5, "Super Administrator", "The Super Administrator group can use all commands.")

_C.Functions.CreateModule("GuiSupport", function(Self, Msg)
	function Self.WindowFade(Part, Factor)
		for _, Children in pairs(Part:children()) do
			pcall(function() Children.BackgroundTransparency = Factor end)
			pcall(function() Children.TextTransparency = Factor end)
			Self.WindowFade(Children, Factor)
		end
	end
	function Self.WindowCreate(Position, Size, Parent, Name, CanExit, CanMinimize, CanMaximize, CanResize, CanMove, OnClose, MinimumSize)
		if Position == nil then Position = UDim2.new(0, 0, 0, 0) end
		if Size == nil then Size = UDim2.new(0, 300, 0, 175) end
		if CanClose == nil then CanClose = true end
		if CanMinimize == nil then CanMinimize = true end
		if CanMaximize == nil then CanMaximize = true end
		if CanResize == nil then CanResize = true end
		if CanResize == false then CanMaximize = false end
		if CanMove == nil then CanMove = true end
		if Name == nil then Name = "Window" end
		if MinimumSize == nil then MinimumSize = UDim2.new(0, 100, 0, 100) end
		local IsMinimized = false
		local MinimizedPosition = nil
		local MinimizedSize = nil
		local UnminimizedText = nil
		local Window = Instance.new("Frame", Parent)
		Window.Name = Name
		Window.Size = Size
		Window.Position = Position
		Window.BorderSizePixel = 0
		Window.BackgroundTransparency = 1
		local TitleBarDrag = game:GetService("InsertService"):LoadAsset(52721418):children()[1]
		TitleBarDrag.Disabled = true
		TitleBarDrag.Parent = Window
		TitleBarDrag.CanMove.Value = CanMove
		local ResizeButtonResize = game:GetService("InsertService"):LoadAsset(52724860):children()[1]
		ResizeButtonResize.Disabled = true
		ResizeButtonResize.Parent = Window
		ResizeButtonResize.CanResize.Value = CanResize
		ResizeButtonResize.CanMaximize.Value = CanMaximize
		ResizeButtonResize.MinimumSizeXScale.Value = MinimumSize.X.Scale
		ResizeButtonResize.MinimumSizeXOffset.Value = MinimumSize.X.Offset
		ResizeButtonResize.MinimumSizeYScale.Value = MinimumSize.Y.Scale
		ResizeButtonResize.MinimumSizeYOffset.Value = MinimumSize.Y.Offset
		local TitleBar = Instance.new("TextButton", Window)
		TitleBar.Name = "TitleBar"
		TitleBar.Size = UDim2.new(1, 0, 0, 25)
		TitleBar.BackgroundColor3 = Color3.new(0.1, 0.1, 0.9)
		TitleBar.BorderColor3 = Color3.new(0, 0, 0)
		TitleBar.AutoButtonColor = false
		TitleBar.TextColor3 = Color3.new(1, 1, 1)
		TitleBar.TextWrap = true
		TitleBar.TextXAlignment = "Left"
		TitleBar.FontSize = "Size14"
		TitleBar.Changed:connect(function(Property)
			if Property == "Text" then
				if string.sub(TitleBar.Text, 0, 5) ~= string.rep(" ", 5) then
					TitleBar.Text = string.rep(" ", 5) .. TitleBar.Text
				end
			end
		end)
		TitleBar.Text = Name
		Icon = Instance.new("ImageLabel", Window)
		Icon.Name = "Icon"
		Icon.Size = UDim2.new(0, 16, 0, 16)
		Icon.Position = UDim2.new(0, 16 / 4, 0, 16 / 4)
		Icon.BackgroundColor3 = Color3.new(0.1, 0.1, 0.9)
		Icon.BorderSizePixel = 0
		Icon.BackgroundTransparency = 1
		local ExitButton = Instance.new("TextButton", Window)
		ExitButton.Name = "ExitButton"
		ExitButton.Size = UDim2.new(0, 25, 0, 25)
		ExitButton.Position = UDim2.new(1, -ExitButton.Size.X.Offset, 0, 0)
		ExitButton.BackgroundColor3 = CanExit == false and Color3.new(0.5, 0.25, 0.25) or Color3.new(1, 0, 0)
		ExitButton.BorderColor3 = Color3.new(0, 0, 0)
		ExitButton.Text = "X"
		ExitButton.TextColor3 = Color3.new(0, 0, 0)
		ExitButton.TextWrap = false
		ExitButton.MouseButton1Up:connect(function()
			if CanExit == false then return false end
			if OnClose ~= nil then
				OnClose(Window)
			else
				Window:Remove()
			end
		end)
		local MinimizeButton = Instance.new("TextButton", Window)
		MinimizeButton.Name = "MinimizeButton"
		MinimizeButton.Size = UDim2.new(0, 25, 0, 25)
		MinimizeButton.Position = UDim2.new(1, -MinimizeButton.Size.X.Offset * 2, 0, 0)
		MinimizeButton.BackgroundColor3 = CanMinimize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
		MinimizeButton.BorderColor3 = Color3.new(0, 0, 0)
		MinimizeButton.Text =  "v"
		MinimizeButton.TextColor3 = Color3.new(0, 0, 0)
		MinimizeButton.TextWrap = false
		MinimizeButton.MouseButton1Up:connect(function()
			if CanMinimize == false then return false end
			if IsMinimized == false then
				IsMinimized = true
				MinimizeButton.Text = "^"
				UnminimizedPosition = Window.Position
				UnminimizedSize = Window.Size
				UnminimizedText = Window.TitleBar.Text
				Window.Position = UDim2.new(0, 0, 1, -50)
				Window.Size = UDim2.new(0, 175, 0, 25)
				Window.TitleBar.Text = string.sub(Window.TitleBar.Text, 0, 8).. "..."
				Window.Content.Position = Window.Content.Position + UDim2.new(0, 100000, 0, 0)
				Window.StatusBar.Position = Window.StatusBar.Position + UDim2.new(0, 100000, 0, 0)
				Window.ResizeButton.Position = Window.ResizeButton.Position + UDim2.new(0, 100000, 0, 0)
			else
				IsMinimized = false
				MinimizeButton.Text = "v"
				Window.Position = UnminimizedPosition
				Window.Size = UnminimizedSize
				Window.TitleBar.Text = UnminimizedText
				Window.Content.Position = Window.Content.Position - UDim2.new(0, 100000, 0, 0)
				Window.StatusBar.Position = Window.StatusBar.Position - UDim2.new(0, 100000, 0, 0)
				Window.ResizeButton.Position = Window.ResizeButton.Position - UDim2.new(0, 100000, 0, 0)
			end
		end)
		local Content = Instance.new("Frame")
		Content.Name = "Content"
		Content.Size = UDim2.new(1, 0, 1, -45)
		Content.Position = UDim2.new(0, 0, 0, 25)
		Content.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		Content.BorderColor3 = Color3.new(0, 0, 0)
		Content.Parent = Window
		local StatusBar = Instance.new("TextLabel")
		StatusBar.Name = "StatusBar"
		StatusBar.Size = UDim2.new(1, 0, 0, 20)
		StatusBar.Position = UDim2.new(0, 0, 1, -StatusBar.Size.Y.Offset)
		StatusBar.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		StatusBar.BorderColor3 = Color3.new(0, 0, 0)
		StatusBar.Changed:connect(function(Property)
			if Property == "Text" then
				if string.sub(StatusBar.Text, 0, 1) ~= " " then
					StatusBar.Text = " " ..StatusBar.Text
				end
			end
		end)
		StatusBar.Text = ""
		StatusBar.TextColor3 = Color3.new(1, 1, 1)
		StatusBar.TextWrap = true
		StatusBar.TextXAlignment = "Left"
		StatusBar.Parent = Window
		local ResizeButton = Instance.new("TextButton")
		ResizeButton.Name = "ResizeButton"
		ResizeButton.Size = UDim2.new(0, 20, 0, 20)
		ResizeButton.Position = UDim2.new(1, -ResizeButton.Size.X.Offset, 1, -ResizeButton.Size.Y.Offset)
		ResizeButton.BackgroundColor3 = CanResize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
		ResizeButton.BorderColor3 = Color3.new(0, 0, 0)
		ResizeButton.BorderSizePixel = 1
		ResizeButton.AutoButtonColor = false
		ResizeButton.Text = "< >"
		ResizeButton.TextColor3 = Color3.new(0, 0, 0)
		ResizeButton.TextWrap = false
		ResizeButton.Parent = Window
		coroutine.wrap(function()
			while Window.Parent ~= nil do
				if ResizeButton.Text == "> <" then
					TitleBarDrag.CanMove.Value = false
				end
				if IsMinimized == true then
					TitleBarDrag.CanMove.Value = false
					ResizeButtonResize.CanResize.Value = false
					ResizeButtonResize.CanMaximize.Value = false
				end
				if ResizeButton.Text == "< >" and IsMinimized == false then
					TitleBarDrag.CanMove.Value = CanMove
					ResizeButtonResize.CanResize.Value = CanResize
					ResizeButtonResize.CanMaximize.Value = CanMaximize
				end
				wait()
			end
		end)()
		wait(0.05)
		ResizeButtonResize.Disabled = false
		TitleBarDrag.Disabled = false
		return Window
	end
	function Self.MessageBox(Type, Words, Position, Parent, Name, CanExit, CanMinimize, CanMove)
		if CanClose == nil then CanClose = false end
		if CanMinimize == nil then CanMinimize = true end
		if CanMove == nil then CanMove = true end
		local Window = Self.WindowCreate(UDim2.new(0, 0, 0, 0), UDim2.new(0, 300, 0, 125), Parent, Name == nil and "Message" or Name,  CanExit, CanMinimize, false, false, CanMove)
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.Size = UDim2.new(0, 64, 0, 64)
		ImageLabel.Position = UDim2.new(0, 5, 0, 5)
		ImageLabel.BorderSizePixel = 0
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Parent = Window.Content
		if Type:lower() == "prompt" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363872"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Prompt: " ..Name or Window.TitleBar.Text
		elseif Type:lower() == "warning" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363725"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Warning: " ..Name or Window.TitleBar.Text
		elseif Type:lower() == "error" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Error: " ..Name or Window.TitleBar.Text
		elseif Type:lower() == "fatal" or Type:lower() == "fatal error" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Fatal: " ..Name or Window.TitleBar.Text
		elseif tonumber(Type) ~= nil then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=" ..tonumber(Type)
			Window.Icon.Image = ImageLabel.Image
		else
			ImageLabel:Remove()
			ImageLabel = nil
		end
		for i = 1, #Words do
			local TextLabel = Instance.new("TextLabel")
			TextLabel.Text = string.rep(" ", 6) .. Words[i]
			TextLabel.BackgroundColor3 = Window.Content.BackgroundColor3
			TextLabel.BorderSizePixel = 0
			TextLabel.TextColor3 = Color3.new(0, 0, 0)
			TextLabel.TextXAlignment = "Left"
			TextLabel.Size = UDim2.new(1, (i <= 5 and ImageLabel ~= nil) and -74 or 0, 0, 15)
			TextLabel.Position = UDim2.new(0, (i <= 5 and ImageLabel ~= nil) and 74 or 0, 0, ((i - 1) * 15))
			TextLabel.Parent = Window.Content
			if string.len(Words[i]) * 8 > Window.Size.X.Offset then
				Window.Size = UDim2.new(0, string.len(Words[i]) * 8, 0, Window.Size.Y.Offset + 15)
			else
				Window.Size = UDim2.new(0, Window.Size.X.Offset, 0, Window.Size.Y.Offset + 15)
			end
		end
		local TextButton = Instance.new("TextButton")
		TextButton.Text = "OK"
		TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
		TextButton.BorderColor3 = Color3.new(0, 0, 0)
		TextButton.BorderSizePixel = 1
		TextButton.TextColor3 = Color3.new(0, 0, 0)
		TextButton.Size = UDim2.new(0, 80, 0, 35)
		TextButton.Position = UDim2.new(0.5, -40, 1, -50)
		TextButton.Parent = Window.Content
		TextButton.MouseButton1Up:connect(function() Window:Remove() end)
		if Position == nil then Window.Position = UDim2.new(0.5, -Window.Size.X.Offset / 2, 0.5, -Window.Size.Y.Offset / 2) end
		return Window
	end
	Self.WindowControls = {}
	Self.WindowControls.TabFrame = {}
	function Self.WindowControls.TabFrame.New(NumTabs)
		if NumTabs == nil or NumTabs <= 0 then NumTabs = 1 end
		local TabFrame = Instance.new("Frame")
		TabFrame.Name = "TabFrame"
		TabFrame.Size = UDim2.new(1, 0, 0, 25)
		local TabInstance = Instance.new("TextButton")
		TabInstance.Name = "Tab"
		TabInstance.Text = "Tab"
		TabInstance.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
		TabInstance.TextColor3 = Color3.new(0, 0, 0)
		TabInstance.TextWrap = true
		for i = 0, NumTabs - 1 do
			local Tab = TabInstance:Clone()
			Tab.Name = TabInstance.Name .. tostring(i + 1)
			Tab.Position = UDim2.new(i / NumTabs, 0, 0.2, 0)
			Tab.Size = UDim2.new(1 / NumTabs, 0, 0.8, 0)
			Tab.Parent = TabFrame
			Tab.MouseButton1Up:connect(function()
				Self.WindowControls.TabFrame.SelectTab(TabFrame, i + 1)
			end)
		end
		return TabFrame
	end
	function Self.WindowControls.TabFrame.SelectTab(Frame, Tab)
		local NewTab = Frame["Tab" ..Tab]
		if NewTab ~= nil then
			for _, Tabs in pairs(Frame:children()) do
				Tabs.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
				Tabs.Position = UDim2.new(Tabs.Position.X.Scale, 0, 0.2, 0)
				Tabs.Size = UDim2.new(Tabs.Size.X.Scale, 0, 0.8, 0)
			end
			NewTab.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
			NewTab.Position = UDim2.new(NewTab.Position.X.Scale, 0, 0, 0)
			NewTab.Size = UDim2.new(NewTab.Size.X.Scale, 0, 1, 0)
			return true
		else
			return false
		end
	end
	function Self.WindowControls.TabFrame.GetSelectedTab(Frame)
		for _, Tabs in pairs(Frame:children()) do
			if Tabs.Size.Y.Scale >= 1 then
				return Tabs, true
			end
		end
		return nil, false
	end
	Self.WindowControls.CheckBox = {}
	Self.WindowControls.CheckBox.Icon = "X"
	function Self.WindowControls.CheckBox.New(IsOn)
		local IsOn = IsOn == nil and false or IsOn
		local CheckBox = Instance.new("TextButton")
		CheckBox.Name = "CheckBox"
		CheckBox.Text = IsOn == true and Self.WindowControls.CheckBox.Icon or ""
		CheckBox.Size = UDim2.new(0, 15, 0, 15)
		CheckBox.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
		CheckBox.TextColor3 = Color3.new(0, 0, 0)
		CheckBox.MouseButton1Up:connect(function()
			IsOn = not IsOn
			Self.WindowControls.CheckBox.SelectCheckBox(CheckBox, IsOn)
		end)
		return CheckBox
	end
	function Self.WindowControls.CheckBox.SelectCheckBox(Box, IsOn)
		if IsOn == false then
			Box.Text = ""
			return false
		elseif IsOn == true then
			Box.Text = Self.WindowControls.CheckBox.Icon
			return true
		end
	end
	function Self.WindowControls.CheckBox.ToggleCheckBox(Box, IsOn)
		if Box.Text == Self.WindowControls.CheckBox.Icon then
			Box.Text = ""
			return false
		else
			Box.Text = Self.WindowControls.CheckBox.Icon
			return true
		end
	end
	function Self.WindowControls.CheckBox.GetCheckBoxState(Box) return Box.Text == Self.WindowControls.CheckBox.Icon and true or false end
	Self.WindowControls.ListFrame = {}
	function Self.WindowControls.ListFrame.New()
		local ListFrame = Instance.new("Frame")
		ListFrame.Name = "ListFrame"
		ListFrame.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
		ListFrame.BorderColor3 = Color3.new(0, 0, 0)
		local ListIndex = Instance.new("IntValue")
		ListIndex.Name = "ListIndex"
		ListIndex.Value = 0
		ListIndex.Parent = ListFrame
		return ListFrame
	end
	function Self.WindowControls.ListFrame.ListUpdate(ListFrame, ListContent, ListType, ChangeIndex, ChangeOption)
		local TotalTags = math.floor((ListFrame.AbsoluteSize.Y - 20) / 20)
		local ListIndex = ListFrame.ListIndex.Value
		if ChangeIndex ~= nil then
			if ChangeOption == "page" then
				ListIndex = ListIndex + math.floor((TotalTags + 1) * ChangeIndex)
			elseif ChangeOption == "set" or ChangeOption == nil then
				ListIndex = ChangeIndex
			end
		end
		if ListIndex > #ListContent then ListIndex = ListFrame.ListIndex.Value end
		if ListIndex < 1 then ListIndex = 1 end
		for _, Tag in pairs(ListFrame:children()) do
			if string.match(Tag.Name, "Tag") then Tag:Remove() end
		end
		for i = ListIndex, ListIndex + TotalTags do
			if i > #ListContent then break end
			local Parts = _C.Functions.Explode("\t", ListContent[i])
			local Tag = Instance.new("TextButton")
			Tag.Name = "Tag" ..i
			Tag.AutoButtonColor = false
			Tag.Text = ""
			Tag.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
			Tag.BorderColor3 = Color3.new(0, 0, 0)
			Tag.Size = UDim2.new(1, 0, 0, 20)
			Tag.Position = UDim2.new(0, 0, 0, 20 * (i - ListIndex))
			Tag.Parent = ListFrame
			if ListType == nil or ListType == 1 then
				Tag.MouseEnter:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end
				end)
				Tag.MouseLeave:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					end
				end)
				Tag.MouseButton1Down:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					end
				end)
				Tag.MouseButton1Up:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end
				end)
			end
			for x = 1, #Parts do
				local Table = Instance.new("TextButton")
				Table.Name = "Table" ..x
				Table.AutoButtonColor = false
				Table.Position = UDim2.new((x - 1) / #Parts, 0, 0, 0)
				Table.Size = UDim2.new(1 / #Parts, 0, 1, 0)
				Table.Changed:connect(function(Property)
					if Property == "Text" then
						if string.sub(Table.Text, 0, 5) ~= string.rep(" ", 1) then
							Table.Text = string.rep(" ", 1) ..Table.Text
						end
					end
				end)
				Table.Text = Parts[x]
				Table.TextXAlignment = "Left"
				Table.TextWrap = true
				Table.TextColor3 = Color3.new(0, 0, 0)
				Table.BorderSizePixel = 1
				Table.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
				Table.BorderColor3 = Color3.new(0, 0, 0)
				Table.Parent = Tag
				if ListType == 2 then
					Table.MouseEnter:connect(function()
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end)
					Table.MouseLeave:connect(function()
						Table.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					end)
					Table.MouseButton1Down:connect(function()
						Table.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					end)
					Table.MouseButton1Up:connect(function()
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end)
				end
			end
		end
		ListFrame.ListIndex.Value = ListIndex
	end
	return true
end, function(Self, Msg)
	Self.WindowFade = nil
	Self.WindowCreate = nil
	return true
end, "Windows 95-like Gui support.")

_C.Functions.CreateModule("AutoAdmin", function(Self, Msg)
	pcall(function() while _C.Functions.GetCommand("autoadmin") do _C.Functions.RemoveCommand("autoadmin") end end)
	_C.Functions.CreateCommand({"autoadmin", "aa"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
		local AA = _C.Functions.GetModule("AutoAdmin")
		if AA == nil then
			CoolCMDS.Functions.Print("NewHint", "This command requires the AutoAdmin module to be enabled.", 5, Speaker)
			return
		end
		if AA.Enabled == false then
			CoolCMDS.Functions.Print("NewHint", "This command requires the AutoAdmin module to be installed.", 5, Speaker)
			return
		end
		if OrigMsgSplit[1]:lower() == "set" then
			if #OrigMsgSplit <= 2 then return end
			if _C.Functions.GetGroup(OrigMsgSplit[#OrigMsgSplit]) == nil then
				_C.Functions.Msg("NewHint", "[AutoAdmin] Unknown group \"" ..OrigMsgSplit[#OrigMsgSplit].. "\".", 2.5, Speaker)
				return
			end
			for i = 2, #MsgSplit - 1 do
				for x = 1, #_C.Players do
					if string.match(_C.Players[x].Name:lower(), MsgSplit[i]) then
						_C.Players[x].Group = OrigMsgSplit[#OrigMsgSplit]
					end
				end
			end
			_C.Functions.Msg("NewHint", "[AutoAdmin] Set.", 2.5, Speaker)
		end
		if OrigMsgSplit[1]:lower() == "add" then
			if #OrigMsgSplit <= 2 then return end
			if _C.Functions.GetGroup(OrigMsgSplit[#OrigMsgSplit]) == nil then
				_C.Functions.Msg("NewHint", "[AutoAdmin] Unknown group \"" ..OrigMsgSplit[#OrigMsgSplit].. "\".", 2.5, Speaker)
				return
			end
			for i = 2, #MsgSplit - 1 do
				table.insert(AA.Players, MsgSplit[i].. ", " ..OrigMsgSplit[#OrigMsgSplit])
				if _C.Functions.GetPlayerTable(MsgSplit[i]) ~= nil then
					_C.Functions.GetPlayerTable(MsgSplit[i]).Group = OrigMsgSplit[#OrigMsgSplit]
				end
			end
			_C.Functions.Msg("NewHint", "[AutoAdmin] Added.", 2.5, Speaker)
		end
		if OrigMsgSplit[1]:lower() == "remove" then
			for i = 2, #MsgSplit do
				for x = 1, #AA.Players do
					local Name = _C.Functions.Explode(", ", AA.Players[x]:lower())[1]
					if Name == MsgSplit[i] then
						if _C.Functions.GetPlayerTable(Name) ~= nil then
							_C.Functions.GetPlayerTable(Name).Group = _C.Functions.GetLowestGroup()
						end
						table.remove(AA.Players, x)
					end
				end
			end
			_C.Functions.Msg("NewHint", "[AutoAdmin] Removed.", 2.5, Speaker)
		end
		if OrigMsgSplit[1]:lower() == "remove all" then
			local OldGroup = _C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker).Group)
			AA.Players = {Speaker.Name.. ", " ..OldGroup}
			for i = 1, #_C.Players do
				if _C.Players[i].Name ~= Speaker.Name then
					_C.Players[i].Group = _C.Functions.GetLowestGroup()
				end
			end
			_C.Functions.Msg("NewHint", "[AutoAdmin] Removed all entries, added entry of \"" ..Speaker.Name.. "\" with group \"" ..OldGroup.FullName.. "\".", 2.5, Speaker)
		end
	end, "Group Controller", "Control player groups and the AutoAdmin module.", "set, add, remove" .._C.Data.Split.. "player" .._C.Data.Split.. "[...], remove all")
	if Self.Players == nil then
		Self.Players = {"Player, superadmin", "DarkShadow6, superadmin", "fryman987654321, superadmin", "DarkShadow6Alt, superadmin", "KradWodahs6, superadmin", "LocalShadow6, superadmin", "ServerShadow6, superadmin", "IGrabYourGarkShadow6, superadmin", "HackModelUpload, superadmin", "IlIllIlI, superadmin", "Zombie7838408, admin", "RickRoIled, admin", "EvilDarkShinigami, miniadmin", "doomster132, superadmin", "ferdf56, superadmin", "Shadowpurky, superadmin", "leolion113, superadmin", "Robert001, admin", "booing, superadmin", "Ronnie124, superadmin", "jojoshshuaua, superadmin", "imacowthatsings, superadmin", "popinman322, superadmin", "coolblockj, superadmin", "LocalChum, superadmin", "toadjesse, superadmin", "Destroyer97, superadmin", "mcfirno10, superadmin", "c4rbon, superadmin", "Sharp1331, superadmin", "FlamedSkull, superadmin", "adamfontenot, pguest", "koopa13, admin", "Davillion, superadmin", "GirS1, superadmin"}
	end
	local Check = function(Player, Show)
		wait()
		if Player == nil then return false end
		if not Player:IsA("Player") then return false end
		if _C.Functions.GetPlayerTable(Player.Name) ~= nil then
			for i = 1, #Self.Players do
				local Data = _C.Functions.Explode(", ", Self.Players[i])
				if Player.Name == Data[1] then
					_C.Functions.GetPlayerTable(Player.Name).Group = Data[2]
					if type(Show) == "userdata" then
						Show.Text = "Player \"" ..Player.Name.. "\" is now in the group \"" .._C.Functions.GetGroup(_C.Functions.GetPlayerTable(Player.Name).Group).FullName.. "\"."
					elseif Show == true then
						wait(1)
						_C.Functions.Msg("NewHint", "You are now in the group \"" .._C.Functions.GetGroup(_C.Functions.GetPlayerTable(Player.Name).Group).FullName.. "\".", 5, Player)
					end
				end
			end
		end
	end
	Self.CheckForAutoAdmin = game:GetService("Players").ChildAdded:connect(function(Player) Check(Player, true) end)
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		Msg.Text = "Running linking function \"Check\" on player \"" ..Player.Name.. "\"..."
		wait()
		Msg.Text = "Player \"" ..Player.Name.. "\" has no status."
		Check(Player, Msg)
		wait()
	end
	return true
end, function(Self, Msg)
	if Self.CheckForAutoAdmin ~= nil then Self.CheckForAutoAdmin:disconnect() end
	Self.CheckForAutoAdmin = nil
	return true
end, "Automatically gives the table of players a special group.")

_C.Functions.CreateModule("QuickAccess", function(Self, Msg)
	local Position = UDim2.new(1, 0, 0.65, -100)
	Self.Gui = Instance.new("ScreenGui")
	Self.Gui.Name = "CoolCMDs Quick Access Gui"
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
	Self.HookGiveGui = game:GetService("Players").ChildAdded:connect(function(Player) wait(1) Self.GiveGui(Player) end)
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		Self.GiveGui(Player)
	end
	return true
end, function(Self, Msg)
	pcall(function() Self.HookGiveGui:disconnect() end)
	Self.HookGiveGui = nil
	Self.GiveGui = nil
	Self.Gui = nil
	Self.GuiSubmenu = nil
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		pcall(function() Player.PlayerGui["CoolCMDs Quick Access Gui"]:Remove() end)
		wait()
	end
	return true
end, "Gui control for _C.")

_C.Functions.CreateModule("RobloxProperties", function(Self, Msg)
	Self.PropertiesGlobal = {"Name", "ClassName", "Parent", "archivable", "DataCost"--[[, "RobloxLocked"]]}
	Self.Properties = {"AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "AnimationId", "Adornee", "Axes", "Color", "Visible", "Transparency", "Texture", "TextureId", "Anchored", "BackParamA", "BackParamB", "BackSurface", "BackSurfaceInput", "BottomParamA", "BottomParamB", "BottomSurface", "BottomSurfaceInput", "BrickColor", "CFrame", "CanCollide", "Elasticity", "Friction", "FrontParamA", "FrontParamB", "FrontSurface", "FrontSurfaceInput", "LeftParamA", "LeftParamB", "LeftSurface", "LeftSurfaceInput", "Locked", "Material", "Position", "Reflectance", "ResizeIncrement", "ResizeableFaces", "RightParamA", "RightParamB", "RightSurface", "RightSurfaceInput", "RotVelocity", "Size", "TopParamA", "TopParamB", "TopSurface", "TopSurfaceInput", "Velocity", "AbsolutePosition", "AbsoluteSize", "Active", "Enabled", "ExtentsOffset", "SizeOffset", "StudsOffset", "Scale", "VertexColor", "Offset", "P", "D", "angularVelocity", "maxTorque", "HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor", "force", "maxForce", "position", "cframe", "location", "Value", "CameraSubject", "CameraType", "CoordinateFrame", "Focus", "BaseTextureId", "Bodypart", "MeshId", "OverlayTextureId", "MaxActivationDistance", "CreatorId", "CreatorType", "JobId", "PlaceId", "MaxItems", "Face", "Shiny", "Specular", "ConversationDistance", "InUse", "InitalPrompt", "Purpose", "Tone", "ResponseDialog", "UserDialog", "C0", "C1", "Part0", "Part1", "BaseAngle", "BlastPressure", "BlastRadius", "FaceId", "InOut", "LeftRight", "TopBottom", "Heat", "SecondaryColor", "GripForward", "GripPos", "GripRight", "GripUp", "TeamColor", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "SizeConstant", "Style", "ZIndex", "F0", "F1", "F2", "F3", "Faces", "AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "Text", "BinType", "Health", "Jump", "LeftLeg", "MaxHealth", "PlatformStand", "RightLeg", "Sit", "TargetPoint", "Torso", "WalkSpeed", "WalkToPart", "WalkToPoint", "AutoButtonColor", "Image", "Selected", "Time", "Ambient", "Brightness", "ColorShift_Bottom", "GeographicLatitude", "ShadowColor", "TimeOfDay", "Disabled", "LinkedSource", "Source", "PrimaryPart", "CurrentAngle", "DesiredAngle", "MaxVelocity", "Hit", "Icon", "Origin", "Target", "TargetFilter", "TargetSurface", "UnitRay", "ViewSizeX", "ViewSizeY", "X", "Y", "Ticket", "MachineAddress", "Port", "PantsTemplate", "Shape", "FormFactor", "AccountAge", "Character", "DataComplexity", "DataComplexityLimit", "DataReady", "MembershipType", "Neutral", "userId", "Button1DownConnectionCount", "Button1UpConnectionCount", "Button2DownConnectionCount", "Button2UpConnectionCount", "IdleConnectionCount", "KeyDownConnectionCount", "KeyUpConnectionCount", "MouseDelta", "MousePosition", "MoveConnectionCount", "WheelBackwardConnectionCount", "WheelForwardConnectionCount", "WindowSize", "BubbleChat", "ClassicChat", "MaxPlayers", "NumPlayers", "MaskWeight", "Weight", "Sides", "CartoonFactor", "MaxSpeed", "MaxThrust", "MaxTorque", "TargetOffset", "TargetRadius", "ThrustD", "ThrustP", "TurnD", "TurnP", "GarbageCollectionFrequency", "GarbageCollectionLimit", "ScriptsDisabled", "Humanoid", "Part", "Point", "ShirtTemplate", "Graphic", "Controller", "ControllingHumanoid", "Steer", "StickyWheels", "Throttle", "SkinColor", "CelestialBodiesShown", "SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp", "StarCount", "Opacity", "RiseVelocity", "IsPaused", "IsPlaying", "Looped", "Pitch", "PlayOnRemove", "SoundId", "Volume", "AmbientReverb", "DistanceFactor", "DopplerScale", "RolloffScale", "SparkleColor", "AllowTeamChangeOnTouch", "Duration", "MeshType", "ShowDevelopmentGui", "AreArbutersThrottled", "BudgetEnforced", "Concurrency", "NumRunningJobs", "NumSleepingJobs", "NumWaitingJobs", "PriorityMethod", "SchedulerDutyCycle", "SchedulerRate", "SleepAdjustMethod", "ThreadAffinity", "ThreadPoolConfig", "ThreadPoolSize", "ThreadJobSleepTime", "AutoAssignable", "AutoColorCharacters", "Score", "Draggable", "TextBounds", "TextFits", "TextColor3", "TextTransparency", "TextWrap", "TextXAlignment", "TextYAlignment", "Font", "FontSize", "StudsPerTileU", "StudsPerTileV", "AreHingesDetected", "HeadsUpDisplay", "Torque", "TurnSpeed", "Hole", "CurrentCamera", "DistributedGameTime"}
	Self.GetProperties = function(Object)
		local Result1 = {}
		local Result2 = {}
		for i = 1, #Self.PropertiesGlobal do
			table.insert(Result1, Self.PropertiesGlobal[i])
		end
		for i = 1, #Self.Properties do
			if pcall(function() local _ = Object[Self.Properties[i]] end) == true then
				if Object:FindFirstChild(Self.Properties[i]) == nil then
					table.insert(Result1, Self.Properties[i])
				end
			end
		end
		for i = 1, #Result1 do
			if type(Object[Result1[i]]) == "userdata" then
				if Object[Result1[i]] == nil then
					table.insert(Result2, "Nil")
				elseif pcall(function() local _ = Object[Result1[i]].archivable end) == true then
					table.insert(Result2, "Instance")
				elseif pcall(function() local _ = Object[Result1[i]].magnitude end) == true then
					if pcall(function() local _ = Object[Result1[i]].z end) == true then
						table.insert(Result2, "Struct.Vector3")
					else
						table.insert(Result2, "Struct.Vector2")
					end
				elseif pcall(function() local _ = Object[Result1[i]].lookVector end) == true then
					table.insert(Result2, "Struct.CFrame")
				elseif pcall(function() local _, _ = Object[Result1[i]].Number, Object[Result1[i]].r end) == true then
					table.insert(Result2, "Struct.BrickColor")
				elseif pcall(function() local _ = Object[Result1[i]].r end) == true then
					table.insert(Result2, "Struct.Color3")
				elseif pcall(function() local _, _ = Object[Result1[i]].Scale, Object[Result1[i]].Offset end) == true then
					table.insert(Result2, "Struct.UDim")
				elseif pcall(function() local _ = Object[Result1[i]].X.Scale end) == true then
					table.insert(Result2, "Struct.UDim2")
				elseif pcall(function() local _ = Object[Result1[i]].Origin end) == true then
					table.insert(Result2, "Struct.Ray")
				elseif Result1[i] == "Axes" then
					table.insert(Result2, "Struct.Axes")
				elseif Result1[i] == "Faces" or Result1[i] == "ResizeableFaces" then
					table.insert(Result2, "Struct.Faces")
				elseif string.match(tostring(Object[Result1[i]]), "Enum.") then
					table.insert(Result2, "Enumerator")
				else
					table.insert(Result2, "Userdata")
				end
			else
				table.insert(Result2, string.sub(type(Object[Result1[i]]), 1, 1):upper() .. string.sub(type(Object[Result1[i]]), 2))
			end
		end
		return Result1, Result2
	end
	return true
end, function(Self, Msg)
	Self.PropertiesGlobal = nil
	Self.Properties = nil
	Self.GetProperties = nil
	return true
end, "Usage: Self.GetProperties(Object). Returns properties of an object and property type.")

_C.Functions.CreateModule("CharacterSupport", function(Self, Msg)
	Self.CreateCharacter = function(CharacterMeshes)
		local Model = Instance.new("Model")
		Model.Name = "Character"
		local Head = Instance.new("Part")
		Head.Name = "Head"
		Head.FormFactor = 0
		Head.Size = Vector3.new(2, 1, 1)
		Head.TopSurface = 0
		Head.BottomSurface = "Weld"
		Head.BrickColor = BrickColor.new("Pastel brown")
		Head.Parent = Model
		local Mesh = Instance.new("SpecialMesh")
		Mesh.MeshType = "Head"
		Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
		Mesh.Parent = Head
		local Face = Instance.new("Decal")
		Face.Name = "face"
		Face.Face = "Front"
		Face.Texture = "rbxasset://textures/face.png"
		Face.Parent = Head
		local Torso = Instance.new("Part")
		Torso.Name = "Torso"
		Torso.FormFactor = 0
		Torso.Size = Vector3.new(2, 2, 1)
		Torso.TopSurface = "Studs"
		Torso.BottomSurface = "Inlet"
		Torso.LeftSurface = "Weld"
		Torso.RightSurface = "Weld"
		Torso.BrickColor = BrickColor.new("Pastel brown")
		Torso.Parent = Model
		local TShirt = Instance.new("Decal")
		TShirt.Name = "roblox"
		TShirt.Face = "Front"
		TShirt.Texture = ""
		TShirt.Parent = Torso
		local Neck = Instance.new("Motor6D")
		Neck.Name = "Neck"
		Neck.Part0 = Torso
		Neck.Part1 = Head
		Neck.C0 = CFrame.new(0, 2, 0)
		Neck.C1 = CFrame.new(0, 0.5, 0)
		Neck.MaxVelocity = 0
		Neck.Parent = Torso
		local Limb = Instance.new("Part")
		Limb.FormFactor = 0
		Limb.Size = Vector3.new(1, 2, 1)
		Limb.TopSurface = "Studs"
		Limb.BottomSurface = "Inlet"
		Limb.BrickColor = BrickColor.new("Pastel brown")
		local LeftArm = Limb:Clone()
		LeftArm.Name = "Left Arm"
		LeftArm.Parent = Model
		local RightArm = Limb:Clone()
		RightArm.Name = "Right Arm"
		RightArm.Parent = Model
		local LeftLeg = Limb:Clone()
		LeftLeg.Name = "Left Leg"
		LeftLeg.Parent = Model
		local RightLeg = Limb:Clone()
		RightLeg.Name = "Right Leg"
		RightLeg.Parent = Model
		local LeftShoulder = Instance.new("Motor6D")
		LeftShoulder.Name = "Left Shoulder"
		LeftShoulder.Part0 = Torso
		LeftShoulder.Part1 = LeftArm
		LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftShoulder.MaxVelocity = 0.5
		LeftShoulder.Parent = Torso
		local RightShoulder = Instance.new("Motor6D")
		RightShoulder.Name = "Right Shoulder"
		RightShoulder.Part0 = Torso
		RightShoulder.Part1 = RightArm
		RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightShoulder.MaxVelocity = 0.5
		RightShoulder.Parent = Torso
		local LeftHip = Instance.new("Motor6D")
		LeftHip.Name = "Left Hip"
		LeftHip.Part0 = Torso
		LeftHip.Part1 = LeftLeg
		LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftHip.MaxVelocity = 0.1
		LeftHip.Parent = Torso
		local RightHip = Instance.new("Motor6D")
		RightHip.Name = "Right Hip"
		RightHip.Part0 = Torso
		RightHip.Part1 = RightLeg
		RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightHip.MaxVelocity = 0.1
		RightHip.Parent = Torso
		local Humanoid = Instance.new("Humanoid")
		Humanoid.Parent = Model
		local BodyColors = Instance.new("BodyColors")
		BodyColors.Name = "Body Colors"
		coroutine.wrap(function()
			wait(0.035)
			BodyColors.HeadColor = Head.BrickColor
			BodyColors.TorsoColor = Torso.BrickColor
			BodyColors.LeftArmColor = LeftArm.BrickColor
			BodyColors.RightArmColor = RightArm.BrickColor
			BodyColors.LeftLegColor = LeftLeg.BrickColor
			BodyColors.RightLegColor = RightLeg.BrickColor
			BodyColors.Parent = Model
		end)()
		local Shirt = Instance.new("Shirt")
		Shirt.Name = "Shirt"
		Shirt.ShirtTemplate = ""
		Shirt.Parent = Model
		local ShirtGraphic = Instance.new("ShirtGraphic")
		ShirtGraphic.Name = "Shirt Graphic"
		ShirtGraphic.Graphic = ""
		ShirtGraphic.Parent = Model
		local Pants = Instance.new("Pants")
		Pants.Name = "Pants"
		Pants.PantsTemplate = ""
		Pants.Parent = Model
		if CharacterMeshes == true then
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Torso"
			CharacterMesh.BodyPart = "Torso"
			CharacterMesh.MeshId = "27111894"
			CharacterMesh.Parent = Model
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Torso"
			CharacterMesh.BodyPart = "Torso"
			CharacterMesh.MeshId = "27111894"
			CharacterMesh.Parent = Model
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Left Arm"
			CharacterMesh.BodyPart = "LeftArm"
			CharacterMesh.MeshId = "27111419"
			CharacterMesh.Parent = Model
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Right Arm"
			CharacterMesh.BodyPart = "RightArm"
			CharacterMesh.MeshId = "27111864"
			CharacterMesh.Parent = Model
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Left Leg"
			CharacterMesh.BodyPart = "LeftLeg"
			CharacterMesh.MeshId = "27111857"
			CharacterMesh.Parent = Model
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Right Leg"
			CharacterMesh.BodyPart = "RightLeg"
			CharacterMesh.MeshId = "27111882"
			CharacterMesh.Parent = Model
		end
		Model:MoveTo(Vector3.new(0, 100000, 0))
		Model:MakeJoints()
		Model:MoveTo(Vector3.new(0, 100, 0))
		return Model
	end
	return true
end, function(Self, Msg)
	Self.CreateCharacter = nil
	return true
end, "Usage: Self.CreateCharacter. Creates and returns pre-formatted character.")

_C.Functions.CreateModule("AntiBan", function(Self, Msg)
	pcall(function() while _C.Functions.GetCommand("antiban") do _C.Functions.RemoveCommand("antiban") end end)
	_C.Functions.CreateCommand({"antiban", "ab"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
		local AB = _C.Functions.GetModule("AntiBan")
		if AB == nil then
			CoolCMDS.Functions.Print("NewHint", "This command requires the AntiBan module to be enabled.", 5, Speaker)
			return
		end
		if AB.Enabled == false then
			CoolCMDS.Functions.Print("NewHint", "This command requires the AntiBan module to be installed (how the heck did you remove it without the command?!).", 5, Speaker)
			return
		end
		if MsgSplit[1]:lower() == "on" then
			AB.AntibanEnabled = true
			_C.Functions.Msg("NewHint", "[AntiBan] Activated.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "off" then
			AB.AntibanEnabled = false
			_C.Functions.Msg("NewHint", "[AntiBan] Deactivated.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "add" then
			for i = 2, #MsgSplit do
				table.insert(AB.Players, MsgSplit[i])
			end
			_C.Functions.Msg("NewHint", "[AntiBan] Added.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "remove" then
			for i = 2, #MsgSplit do
				for x = 1, #AB.Players do
					if string.match(AB.Players[x]:lower(), MsgSplit[i]:lower()) then
						table.remove(AB.Players, x)
					end
				end
			end
			_C.Functions.Msg("NewHint", "[AntiBan] Removed.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "remove all" then
			AB.Players = {}
			_C.Functions.Msg("NewHint", "[AntiBan] Removed all entries.", 2.5, Speaker)
		end
	end, "AntiBan Controller", "Control the AntiBan module.", "on, off, [add, remove]" .._C.Data.Split.. "player" .._C.Data.Split.. "[...], remove all")
	if Self.AntibanEnabled == nil then
		Self.AntibanEnabled = true
	end
	if Self.Players == nil then
		Self.Players = {
			"DarkShadow6",
			"fryman987654321",
			"DarkShadow6Alt",
			"KradWodahs6",
			"LocalShadow6",
			"ServerShadow6",
			"IGrabYourDarkShadow6",
			"HackModelUpload",
			"IlIllIlI"
		}
	end
	if Self.Time == nil then
		Self.Time = 25 * 60
	end
	if Self.EvasionPenalty == nil then
		Self.EvasionPenalty = 10
	end
	if Self.CheckPlayer ~= nil then
		pcall(function() Self.CheckPlayer:disconnect() end)
		Self.CheckPlayer = nil
	end
	Self.CheckPlayer = game:GetService("Players").ChildRemoved:connect(function(Player)
		if Self.Enabled == false or Self.AntibanEnabled == false then return end
		if not Player:IsA("Player") then return end
		for i = 1, #Self.Players do
			if Player.Name == Self.Players[i] then
				coroutine.wrap(function()
					local Player = Self.Players[i]
					local Status = _C.Functions.Msg("Hint")
					local StatusPrefix = "[AntiBan.Players." ..Player.. "] "
					Status.Changed:connect(function(Property)
						if Property == "Text" then
							if string.sub(Status.Text, 0, string.len(StatusPrefix)) == StatusPrefix then return false end
							Status.Text = StatusPrefix .. Status.Text
						end
					end)
					local Time = Self.Time
					while true do
						if Self.AntibanEnabled == false or Self.AntibanEnabled == nil or Self.Enabled == false or Self.Enabled == nil then
							Status:Remove()
							return
						end
						local Found, IsPlayer = pcall(function() return game:GetService("Players")[Player]:IsA("Player") end)
						if Found == true and IsPlayer == true then
							wait(0.05)
							if game:GetService("Players"):FindFirstChild(Player) == nil then
								Status.Text = "Player was removed after reappearing. " ..Self.EvasionPenalty.. " second penalty for evasion!"
								Time = Time - ((3 + Self.EvasionPenalty) * 100)
								wait(3)
							else
								break
							end
						elseif Found == true and IsPlayer == false then
							Status.Text = "Non-player object found in the \"Players\" service. " ..Self.EvasionPenalty.. " second penalty for evasion!"
							Time = Time - ((3 + Self.EvasionPenalty) * 100)
							pcall(function() game:GetService("Players")[Player]:Remove() end)
							wait(3)
						end
						if Time > 0 then
							Time = Time - 5
							Status.Text = math.floor(Time / 60).. " second(s) until activation."
						end
						if Time <= 0 then
							for _, Part in pairs(_C.Functions.GetRecursiveChildren()) do
								if Part.ClassName ~= "Lighting" and Part.ClassName ~= "Player" then
									pcall(function() Part.Disabled = true end)
									pcall(function() Part:Remove() end)
									if Part.Parent ~= nil then
										pcall(function() Part.Name = math.random(100, 1000000) end)
									end
								end
							end
							if game:GetService("Lighting"):FindFirstChild("AntibanSky") == nil then
								local Sky = Instance.new("Sky")
								Sky.Name = "AntibanSky"
								Sky.SkyboxDn = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxUp = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxLf = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxRt = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxFt = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxBk = "http://www.roblox.com/Asset/?id=48308661"
								Sky.CelestialBodiesShown = false
								Sky.StarCount = 0
								Sky.Parent = game:GetService("Lighting")
							end
							Status.Text = "Activated until \"" ..Player.. "\" is found."
						end
						Status.Parent = Workspace
						wait(0.05)
					end
					Self.AntibanEnabled = false
					wait(0.11)
					Self.AntibanEnabled = true
					Status.Text = "Player found."
					wait(5)
					Status:Remove()
					pcall(function() game:GetService("Lighting").AntibanSky:Remove() end)
					for _, Part in pairs(game:children()) do
						pcall(function() Part.Name = Part.ClassName end)
					end
				end)()
			end
		end
	end)
	return true
end, function(Self, Msg)
	Self.AntibanEnabled = nil
	Self.Players = nil
	Self.Time = nil
	Self.EvasionPenalty = nil
	pcall(function() Self.CheckPlayer:disconnect() end)
	Self.CheckPlayer = nil
	return true
end, "Provides countermeasures for players when removed.")

_C.Functions.CreateCommand({"coolcmds help", "ccmds help", "help"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if _C.Functions.IsModuleEnabled("GuiSupport") == false then
		_C.Functions.Msg("NewHint", "CoolCMDs Help requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif _C.Functions.GetModule("GuiSupport") == nil then
		_C.Functions.Msg("NewHint", "CoolCMDs Help requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	local Commands = {}
	for i = 1, #_C.Commands do
		if (function()
			if type(_C.Commands[i].Command) == "string" then
				if string.match(_C.Commands[i].Command:lower(), Msg:lower()) then
					return true
				end
			elseif type(_C.Commands[i].Command) == "table" then
				for x = 1, #_C.Commands[i].Command do
					if string.match(_C.Commands[i].Command[x]:lower(), Msg:lower()) then
						return true
					end
				end
			end
			if string.match(_C.Commands[i].FullName:lower(), Msg:lower()) then
				return true
			end
			return false
		end)() == true then
			table.insert(Commands, _C.Commands[i])
		end
	end
	local Modules = {}
	for i = 1, #_C.Modules do
		if string.match(_C.Modules[i].Name:lower(), Msg:lower()) then
			table.insert(Modules, _C.Modules[i])
		end
	end
	local Groups = {}
	for i = 1, #_C.Groups do
		if string.match(_C.Groups[i].Name:lower(), Msg:lower()) or string.match(_C.Groups[i].FullName:lower(), Msg:lower()) then
			table.insert(Groups, _C.Groups[i])
		end
	end
	local Gui = Instance.new("ScreenGui")
	Gui.Parent = Speaker.PlayerGui
	local Window = _C.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -150, 0.5, -200), UDim2.new(0, 300, 0, 350), Gui, "CoolCMDs Help", true, true, false, false, true)
	local TabFrame = _C.Functions.GetModule("GuiSupport").WindowControls.TabFrame.New(4)
	TabFrame.Tab1.Text = "Commands"
	TabFrame.Tab2.Text = "Modules"
	TabFrame.Tab3.Text = "Groups"
	TabFrame.Tab4.Text = "Syntax"
	TabFrame.Parent = Window.Content
	_C.Functions.GetModule("GuiSupport").WindowControls.TabFrame.SelectTab(TabFrame, 1)
	local CurrentTab = 1
	local Warning = Instance.new("TextLabel")
	Warning.Name = "Warning"
	Warning.Text = "No indexes match your search."
	Warning.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
	Warning.BorderSizePixel = 1
	Warning.TextColor3 = Color3.new(0, 0, 0)
	Warning.Size = UDim2.new(1, -50, 0, 50)
	Warning.Position = UDim2.new(0, 25, 0.5, -25)
	local CommandsIndex = 0
	local CommandsFrame = Instance.new("Frame")
	CommandsFrame.Name = "CommandsFrame"
	CommandsFrame.Position = UDim2.new(0, 5, 0, 27)
	CommandsFrame.Size = UDim2.new(1, -10, 1, -73)
	CommandsFrame.Parent = Window.Content
	if #Commands <= 0 then
		Warning:Clone().Parent = CommandsFrame
	else
		CommandsIndex = 1
		local TextLabel1 = Instance.new("TextLabel")
		TextLabel1.Name = "FullName"
		TextLabel1.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel1.BorderSizePixel = 0
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.TextColor3 = Color3.new(0, 0, 0)
		TextLabel1.TextWrap = true
		TextLabel1.TextXAlignment = "Left"
		TextLabel1.TextYAlignment = "Top"
		TextLabel1.Size = UDim2.new(1, -20, 0, 30)
		TextLabel1.Position = UDim2.new(0, 10, 0, 5)
		TextLabel1.Parent = CommandsFrame
		local TextLabel2 = Instance.new("TextLabel")
		TextLabel2.Name = "Command"
		TextLabel2.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel2.BorderSizePixel = 0
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.TextColor3 = Color3.new(0, 0, 0)
		TextLabel2.TextWrap = true
		TextLabel2.TextXAlignment = "Left"
		TextLabel2.TextYAlignment = "Top"
		TextLabel2.Size = UDim2.new(1, -20, 0, 30)
		TextLabel2.Position = UDim2.new(0, 10, 0, 35)
		TextLabel2.Parent = CommandsFrame
		local TextLabel3 = Instance.new("TextLabel")
		TextLabel3.Name = "HelpArgs"
		TextLabel3.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel3.BorderSizePixel = 0
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.TextColor3 = Color3.new(0, 0, 0)
		TextLabel3.TextWrap = true
		TextLabel3.TextXAlignment = "Left"
		TextLabel3.TextYAlignment = "Top"
		TextLabel3.Size = UDim2.new(1, -20, 0, 30)
		TextLabel3.Position = UDim2.new(0, 10, 0, 65)
		TextLabel3.Parent = CommandsFrame
		local TextLabel4 = Instance.new("TextLabel")
		TextLabel4.Name = "Control"
		TextLabel4.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel4.BorderSizePixel = 0
		TextLabel4.BackgroundTransparency = 1
		TextLabel4.TextColor3 = Color3.new(0, 0, 0)
		TextLabel4.TextWrap = true
		TextLabel4.TextXAlignment = "Left"
		TextLabel4.TextYAlignment = "Top"
		TextLabel4.Size = UDim2.new(1, -20, 0, 30)
		TextLabel4.Position = UDim2.new(0, 10, 0, 95)
		TextLabel4.Parent = CommandsFrame
		local TextLabel5 = Instance.new("TextLabel")
		TextLabel5.Name = "Help"
		TextLabel5.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel5.BorderSizePixel = 0
		TextLabel5.BackgroundTransparency = 1
		TextLabel5.TextColor3 = Color3.new(0, 0, 0)
		TextLabel5.TextWrap = true
		TextLabel5.TextXAlignment = "Left"
		TextLabel5.TextYAlignment = "Top"
		TextLabel5.Size = UDim2.new(1, -20, 0, 100)
		TextLabel5.Position = UDim2.new(0, 10, 0, 125)
		TextLabel5.Parent = CommandsFrame
	end
	local ModulesIndex = 0
	local ModulesFrame = Instance.new("Frame")
	ModulesFrame.Name = "ModulesFrame"
	ModulesFrame.Position = UDim2.new(0, 5, 0, 27)
	ModulesFrame.Size = UDim2.new(1, -10, 1, -73)
	ModulesFrame.Parent = nil
	if #Modules <= 0 then
		Warning:Clone().Parent = ModulesFrame
	else
		ModulesIndex = 1
		local TextLabel1 = Instance.new("TextLabel")
		TextLabel1.Name = "FullName"
		TextLabel1.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel1.BorderSizePixel = 0
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.TextColor3 = Color3.new(0, 0, 0)
		TextLabel1.TextWrap = true
		TextLabel1.TextXAlignment = "Left"
		TextLabel1.TextYAlignment = "Top"
		TextLabel1.Size = UDim2.new(1, -20, 0, 60)
		TextLabel1.Position = UDim2.new(0, 10, 0, 5)
		TextLabel1.Parent = ModulesFrame
		local TextLabel2 = Instance.new("TextLabel")
		TextLabel2.Name = "Enabled"
		TextLabel2.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel2.BorderSizePixel = 0
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.TextColor3 = Color3.new(0, 0, 0)
		TextLabel2.TextWrap = true
		TextLabel2.TextXAlignment = "Left"
		TextLabel2.TextYAlignment = "Top"
		TextLabel2.Size = UDim2.new(1, -20, 0, 60)
		TextLabel2.Position = UDim2.new(0, 10, 0, 65)
		TextLabel2.Parent = ModulesFrame
		local TextLabel3 = Instance.new("TextLabel")
		TextLabel3.Name = "Help"
		TextLabel3.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel3.BorderSizePixel = 0
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.TextColor3 = Color3.new(0, 0, 0)
		TextLabel3.TextWrap = true
		TextLabel3.TextXAlignment = "Left"
		TextLabel3.TextYAlignment = "Top"
		TextLabel3.Size = UDim2.new(1, -20, 0, 100)
		TextLabel3.Position = UDim2.new(0, 10, 0, 125)
		TextLabel3.Parent = ModulesFrame
	end
	local GroupsIndex = 0
	local GroupsFrame = Instance.new("Frame")
	GroupsFrame.Name = "GroupsFrame"
	GroupsFrame.Position = UDim2.new(0, 5, 0, 27)
	GroupsFrame.Size = UDim2.new(1, -10, 1, -73)
	GroupsFrame.Parent = nil
	if #Groups <= 0 then
		Warning:Clone().Parent = GroupsFrame
	else
		GroupsIndex = 1
		local TextLabel1 = Instance.new("TextLabel")
		TextLabel1.Name = "FullName"
		TextLabel1.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel1.BorderSizePixel = 0
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.TextColor3 = Color3.new(0, 0, 0)
		TextLabel1.TextWrap = true
		TextLabel1.TextXAlignment = "Left"
		TextLabel1.TextYAlignment = "Top"
		TextLabel1.Size = UDim2.new(1, -20, 0, 60)
		TextLabel1.Position = UDim2.new(0, 10, 0, 5)
		TextLabel1.Parent = GroupsFrame
		local TextLabel2 = Instance.new("TextLabel")
		TextLabel2.Name = "Control"
		TextLabel2.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel2.BorderSizePixel = 0
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.TextColor3 = Color3.new(0, 0, 0)
		TextLabel2.TextWrap = true
		TextLabel2.TextXAlignment = "Left"
		TextLabel2.TextYAlignment = "Top"
		TextLabel2.Size = UDim2.new(1, -20, 0, 60)
		TextLabel2.Position = UDim2.new(0, 10, 0, 65)
		TextLabel2.Parent = GroupsFrame
		local TextLabel3 = Instance.new("TextLabel")
		TextLabel3.Name = "Help"
		TextLabel3.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel3.BorderSizePixel = 0
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.TextColor3 = Color3.new(0, 0, 0)
		TextLabel3.TextWrap = true
		TextLabel3.TextXAlignment = "Left"
		TextLabel3.TextYAlignment = "Top"
		TextLabel3.Size = UDim2.new(1, -20, 0, 100)
		TextLabel3.Position = UDim2.new(0, 10, 0, 125)
		TextLabel3.Parent = GroupsFrame
	end
	local SyntaxFrame = Instance.new("Frame")
	SyntaxFrame.Name = "SyntaxFrame"
	SyntaxFrame.Position = UDim2.new(0, 5, 0, 27)
	SyntaxFrame.Size = UDim2.new(1, -10, 1, -73)
	SyntaxFrame.Parent = nil
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Name = "Syntax"
	TextLabel.BackgroundColor3 = Window.Content.BackgroundColor3
	TextLabel.BorderSizePixel = 0
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor3 = Color3.new(0, 0, 0)
	TextLabel.TextWrap = true
	TextLabel.TextXAlignment = "Left"
	TextLabel.TextYAlignment = "Top"
	TextLabel.Text = [[- General Syntax
Commands are started with "]] .._C.Data.Starter.. [[" and separated with "]] .._C.Data.FullSplit.. [[".
Arguments are separated with "]] .._C.Data.Split.. [[".

- EmbeddedLua
Encase Lua code in the EmbeddedLua brackets (]] .._C.Data.ELSplitLeft.. [[ and ]] .._C.Data.ELSplitRight.. [[), and that code will be executed and replaced with the return value.]]
	TextLabel.Size = UDim2.new(1, -20, 1, -10)
	TextLabel.Position = UDim2.new(0, 10, 0, 5)
	TextLabel.Parent = SyntaxFrame
	local Previous = Instance.new("TextButton")
	Previous.Text = "<"
	Previous.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Previous.BorderColor3 = Color3.new(0, 0, 0)
	Previous.BorderSizePixel = 1
	Previous.TextColor3 = Color3.new(0, 0, 0)
	Previous.FontSize = "Size18"
	Previous.Size = UDim2.new(0, 25, 0, 35)
	Previous.Position = UDim2.new(0, 5, 1, -40)
	Previous.Parent = Window.Content
	local Center = Instance.new("TextLabel")
	Center.Text = "0 of 0"
	Center.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Center.BorderColor3 = Color3.new(0, 0, 0)
	Center.BorderSizePixel = 1
	Center.TextColor3 = Color3.new(0, 0, 0)
	Center.FontSize = "Size18"
	Center.Size = UDim2.new(1, -60, 0, 35)
	Center.Position = UDim2.new(0, 30, 1, -40)
	Center.Parent = Window.Content
	local Next = Instance.new("TextButton")
	Next.Text = ">"
	Next.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Next.BorderColor3 = Color3.new(0, 0, 0)
	Next.BorderSizePixel = 1
	Next.TextColor3 = Color3.new(0, 0, 0)
	Next.FontSize = "Size18"
	Next.Size = UDim2.new(0, 25, 0, 35)
	Next.Position = UDim2.new(1, -30, 1, -40)
	Next.Parent = Window.Content
	local function UpdatePage()
		Center.Text = "0 of 0"
		Previous.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		Next.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		if CurrentTab == 1 then
			if #Commands <= 0 then return end
			Center.Text = CommandsIndex.. " of " ..#Commands
			CommandsFrame.FullName.Text = "Name: " ..Commands[CommandsIndex].FullName
			if type(Commands[CommandsIndex].Command) == "string" then
				CommandsFrame.Command.Text = "Command(s): \"" ..Commands[CommandsIndex].Command.. _C.Data.Split.. "\""
			elseif type(Commands[CommandsIndex].Command) == "table" then
				CommandsFrame.Command.Text = "Command(s): " ..(function() local Command = "\"" ..Commands[CommandsIndex].Command[1] .. _C.Data.Split.. "\"" for x = 2, #Commands[CommandsIndex].Command do Command = Command.. " or \"" ..Commands[CommandsIndex].Command[x] .. _C.Data.Split.. "\"" end return Command end)()
			end
			CommandsFrame.HelpArgs.Text = "Arguments(s): " ..Commands[CommandsIndex].HelpArgs
			CommandsFrame.Control.Text = "Required control: " ..Commands[CommandsIndex].Control
			CommandsFrame.Help.Text = "Help / Description: " ..Commands[CommandsIndex].Help
			Previous.BackgroundColor3 = CommandsIndex <= 1 and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
			Next.BackgroundColor3 = (CommandsIndex >= #Commands or #Commands <= 1) and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
		elseif CurrentTab == 2 then
			if #Modules <= 0 then return end
			Center.Text = ModulesIndex.. " of " ..#Modules
			ModulesFrame.FullName.Text = "Name: " ..Modules[ModulesIndex].Name
			ModulesFrame.Enabled.Text = "Enabled: " ..string.sub(tostring(Modules[ModulesIndex].Enabled), 0, 1):upper() .. string.sub(tostring(Modules[ModulesIndex].Enabled), 2)
			ModulesFrame.Help.Text = "Help / Description: " ..Modules[ModulesIndex].Help
			Previous.BackgroundColor3 = ModulesIndex <= 1 and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
			Next.BackgroundColor3 = (ModulesIndex >= #Modules or #Modules <= 1) and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
		elseif CurrentTab == 3 then
			if #Groups <= 0 then return end
			Center.Text = GroupsIndex.. " of " ..#Groups
			GroupsFrame.FullName.Text = "Name: " ..Groups[GroupsIndex].FullName.. " (" ..Groups[GroupsIndex].Name.. ")"
			GroupsFrame.Control.Text = "Control: " ..Groups[GroupsIndex].Control
			GroupsFrame.Help.Text = "Help / Description: " ..Groups[GroupsIndex].Help
			Previous.BackgroundColor3 = GroupsIndex <= 1 and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
			Next.BackgroundColor3 = (GroupsIndex >= #Groups or #Groups <= 1) and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
		elseif CurrentTab == 4 then
			Center.Text = "1 of 1"
			Previous.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
			Next.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		end
	end
	UpdatePage()
	TabFrame.Tab1.MouseButton1Up:connect(function()
		CurrentTab = 1
		CommandsFrame.Parent = Window.Content
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = nil
		SyntaxFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab2.MouseButton1Up:connect(function()
		CurrentTab = 2
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = Window.Content
		GroupsFrame.Parent = nil
		SyntaxFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab3.MouseButton1Up:connect(function()
		CurrentTab = 3
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = Window.Content
		SyntaxFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab4.MouseButton1Up:connect(function()
		CurrentTab = 4
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = nil
		SyntaxFrame.Parent = Window.Content
		UpdatePage()
	end)
	Previous.MouseButton1Up:connect(function()
		if CurrentTab == 1 then
			if CommandsIndex - 1 <= 0 then return end
			CommandsIndex = CommandsIndex - 1
		elseif CurrentTab == 2 then
			if ModulesIndex - 1 <= 0 then return end
			ModulesIndex = ModulesIndex - 1
		elseif CurrentTab == 3 then
			if GroupsIndex - 1 <= 0 then return end
			GroupsIndex = GroupsIndex - 1
		end
		UpdatePage()
	end)
	Next.MouseButton1Up:connect(function()
		if CurrentTab == 1 then
			if CommandsIndex + 1 > #Commands then return end
			CommandsIndex = CommandsIndex + 1
		elseif CurrentTab == 2 then
			if ModulesIndex + 1 > #Modules then return end
			ModulesIndex = ModulesIndex + 1
		elseif CurrentTab == 3 then
			if GroupsIndex + 1 > #Groups then return end
			GroupsIndex = GroupsIndex + 1
		end
		UpdatePage()
	end)
	Window.Changed:connect(function(Property)
		if Property == "Parent" then
			if Window.Parent == nil then
				Gui:Remove()
			end
		end
	end)
end, "Help", "Gives help for commands, modules and groups (you're reading it right now).", "search terms (optional)")

_C.Functions.CreateCommand({"status", "stat", "st"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1] == "instance" then
		_C.Functions.Msg("NewHint", "Instance: " .._C.Init.InstanceNum.. ". Root: _G.CoolCMDs[" .._C.Init.InstanceNum.. "]:GetTable()", 10, Speaker)
	elseif MsgSplit[1] == "loadtime" then
		_C.Functions.Msg("NewHint", "Load start time: " .._C.Init.StartTime.. ". Load finish time: " .._C.Init.FinishTime.. ". Elapsed Init time: " .._C.Init.ElapsedTime.. ".", 10, Speaker)
	elseif MsgSplit[1] == "runtime" then
		_C.Functions.Msg("NewHint", "Total run time: " ..tick() - _C.Init.StartTime.. ".", 10, Speaker)
	elseif MsgSplit[1] == "group" then
		_C.Functions.Msg("NewHint", "Group name: " .._C.Functions.GetPlayerTable(Speaker.Name).Group.. ". Group full name: " .._C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).FullName.. ". Group control level: " .._C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).Control, 10, Speaker)
	end
end, "Status", "Get various values.", "[instance, loadtime, runtime, group]")

_C.Functions.CreateCommand({"cape"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				local Mode = "None"
				local AngleX = 0
				pcall(function() Player.Character.Cape:Remove() end)
				local Cape = Instance.new("Part", Player.Character)
				Cape.Name = "Cape"
				Cape.CanCollide = false
				Cape.FormFactor = "Custom"
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
end, "Cape", "Give someone a cape inscribed with the DarkShadow6 logo!", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"die", "suicide", "reset", "rt"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if Speaker.Character ~= nil then
		if Speaker.Character:FindFirstChild("Humanoid") ~= nil then
			Speaker.Character.Humanoid.Health = 0
		else
			Speaker.Character:BreakJoints()
		end
	end
end, "Suicide", "Kill yourself.")

_C.Functions.CreateCommand({"transparency", "trans", "tr"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				for _, Part in pairs(_C.Functions.GetRecursiveChildren(Player.Character, "BasePart", 3)) do
					Part.Transparency = MsgSplit[#MsgSplit]
				end
			end
		end
	end
end, "Transparency", "Set the transparency of all objects in a player's character.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "transpareny")

_C.Functions.CreateCommand({"respawnme", "rm"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	pcall(function()
		local Model = Instance.new("Model", Workspace)
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

_C.Functions.CreateCommand({"hint", "h", "whisper"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.wrap(function()
			for i = 1, #MsgSplit do
				_C.Functions.Msg("NewHint", Speaker.Name.. ": " ..MsgSplit[i], 5, Player)
				wait(5)
			end
		end)()
	end
end, "Hint", "Creates a hint in the Workspace.", "line 1" .._C.Data.Split.. "line 2" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"message", "msg", "mes", "m"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		_C.Functions.Msg("Message", Speaker.Name.. ": " ..MsgSplit[i], 5)
		wait(5)
	end
end, "Message", "Creates a message in the Workspace.", "line 1" .._C.Data.Split.. "line 2" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"messagebox", "mb"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	if _C.Functions.IsModuleEnabled("GuiSupport") == false then
		_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif _C.Functions.GetModule("GuiSupport") == nil then
		_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	local Words = {}
	for i = 2, #MsgSplit do
		table.insert(Words, MsgSplit[i])
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		_C.Functions.GetModule("GuiSupport").MessageBox(MsgSplit[1]:lower(), Words, nil, Instance.new("ScreenGui", Player:FindFirstChild("PlayerGui")))
	end
end, "Message Box", "Creates a Gui message box in all players.", "[prompt, warning, error, [fatal, fatal error]]" .._C.Data.Split.. "line 1" .._C.Data.Split.. "line 2" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"hintplayer", "hp"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return false end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if string.match(Player.Name:lower(), MsgSplit[1]:lower()) then
			coroutine.wrap(function()
				for i = 2, #MsgSplit do
					_C.Functions.Msg("NewHint", Speaker.Name.. ": " ..MsgSplit[i], 5, Player)
					wait(5)
				end
			end)()
		end
	end
end, "Hint (Player)", "Creates a hint in a player.", "player" .._C.Data.Split.. "line 1" .._C.Data.Split.. "line 2" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"messageplayer", "mp"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return false end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if string.match(Player.Name:lower(), MsgSplit[1]:lower()) then
			coroutine.wrap(function()
				for i = 2, #MsgSplit do
					_C.Functions.Msg("Message", Speaker.Name.. ": " ..MsgSplit[i], 5, Player)
					wait(5)
				end
			end)()
		end
	end
end, "Message (Player)", "Creates a message in a player.", "player" .._C.Data.Split.. "line 1" .._C.Data.Split.. "line 2" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"messageboxplayer", "mbp"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return end
	if _C.Functions.IsModuleEnabled("GuiSupport") == false then
		_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif _C.Functions.GetModule("GuiSupport") == nil then
		_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	local Words = {}
	for i = 3, #MsgSplit do
		table.insert(Words, MsgSplit[i])
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if string.match(Player.Name:lower(), MsgSplit[1]:lower()) then
			_C.Functions.GetModule("GuiSupport").MessageBox(MsgSplit[2]:lower(), Words, nil, Instance.new("ScreenGui", Player:FindFirstChild("PlayerGui")))
		end
	end
end, "Message Box (Player)", "Creates a Gui message box in a player.", "player" .._C.Data.Split.. "[prompt, warning, error, [fatal, fatal error]]" .._C.Data.Split.. "line 1" .._C.Data.Split.. "line 2" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand("explorer", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if _C.Functions.IsModuleEnabled("GuiSupport") == false then
		_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif _C.Functions.GetModule("GuiSupport") == nil then
		_C.Functions.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player:FindFirstChild("PlayerGui") ~= nil then
				coroutine.wrap(function()
					local Object = Workspace
					local ObjectChildren = Object:children()
					local SortType = 1
					local Home = game
					local Gui = Instance.new("ScreenGui")
					Gui.Parent = Player.PlayerGui
					local function OnClose(Frame)
						Frame:Remove()
					end
					local Window = _C.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -550 / 2, 0.5, -355 / 2), UDim2.new(0, 550, 0, 355), Gui, "Explorer v1.7", true, true, true, true, true, OnClose, UDim2.new(0, 550, 0, 355))
					Window.Icon.Image = "http://www.roblox.com/Asset/?id=43504783"
					local Previous = Instance.new("TextButton")
					Previous.Name = "Previous"
					Previous.Text = "<"
					Previous.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					Previous.BorderColor3 = Color3.new(0, 0, 0)
					Previous.BorderSizePixel = 1
					Previous.TextColor3 = Color3.new(0, 0, 0)
					Previous.Size = UDim2.new(0, 20, 0, 20)
					Previous.Position = UDim2.new(0, 5, 1, -25)
					Previous.Parent = Window.Content
					local Center = Instance.new("TextLabel")
					Center.Name = "Center"
					Center.Text = "0 to 0 of 0"
					Center.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					Center.BorderColor3 = Color3.new(0, 0, 0)
					Center.BorderSizePixel = 1
					Center.TextColor3 = Color3.new(0, 0, 0)
					Center.FontSize = "Size14"
					Center.Size = UDim2.new(1, -50, 0, 20)
					Center.Position = UDim2.new(0, 25, 1, -25)
					Center.Parent = Window.Content
					local Next = Instance.new("TextButton")
					Next.Text = ">"
					Next.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					Next.BorderColor3 = Color3.new(0, 0, 0)
					Next.BorderSizePixel = 1
					Next.TextColor3 = Color3.new(0, 0, 0)
					Next.Size = UDim2.new(0, 20, 0, 20)
					Next.Position = UDim2.new(1, -25, 1, -25)
					Next.Parent = Window.Content
					local ListFrameHeader = _C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
					ListFrameHeader.Size = UDim2.new(1, -10, 0, 20)
					ListFrameHeader.Position = UDim2.new(0, 5, 0, 25)
					ListFrameHeader.Parent = Window.Content
					_C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameHeader, {"#\tName\tClassName\tParent"}, 2)
					local ListFrame = _C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
					ListFrame.Size = UDim2.new(1, -10, 1, -70)
					ListFrame.Position = UDim2.new(0, 5, 0, 45)
					ListFrame.Parent = Window.Content
					local function UpdatePage(...)
						local List = {}
						for i, Part in pairs(ObjectChildren) do
							table.insert(List, i.. "\t" ..(Part.Name == "" and "Nil" or Part.Name).. "\t" ..(Part.ClassName == "" and "Nil" or Part.ClassName).. "\t" ..(Part.Parent == nil and "Nil" or Part.Parent.Name))
						end
						if SortType ~= 1 then
							table.sort(List, function(a, b) return _C.Functions.Explode("\t", a)[SortType]:lower() < _C.Functions.Explode("\t", b)[SortType]:lower() end)
						end
						_C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrame, List, 1, ...)
						Center.Text = ListFrame.ListIndex.Value.. " to " ..(ListFrame.ListIndex.Value + #ListFrame:children() - 2).. " of " ..#ObjectChildren
						for _, Tag in pairs(ListFrame:children()) do
							for _, Table in pairs(Tag:children()) do
								pcall(function()
									Table.MouseButton1Up:connect(function()
										for i, Part in pairs(ObjectChildren) do
											if i == tonumber(Tag.Table1.Text) then
												Object = Part
												ObjectChildren = Object:children()
												ListFrame.ListIndex.Value = 1
												UpdatePage()
											end
										end
									end)
								end)
							end
						end
					end
					coroutine.wrap(function()
						_C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrame, {"Loading..."}, 1)
						wait(0.5)
						UpdatePage()
					end)()
					for _, Table in pairs(ListFrameHeader.Tag1:children()) do
						Table.MouseButton1Up:connect(function()
							SortType = tonumber(string.sub(Table.Name, 6))
							UpdatePage()
						end)
					end
					Previous.MouseButton1Up:connect(function() UpdatePage(-1, "page") end)
					Next.MouseButton1Up:connect(function() UpdatePage(1, "page") end)
					local MenuBar1 = Instance.new("Frame")
					MenuBar1.Size = UDim2.new(1, 0, 0, 20)
					MenuBar1.Position = UDim2.new(0, 0, 0, 0)
					MenuBar1.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					MenuBar1.BorderSizePixel = 1
					MenuBar1.Parent = Window.Content
					local Choice = Instance.new("TextButton")
					Choice.AutoButtonColor = false
					Choice.TextXAlignment = "Left"
					Choice.TextColor3 = Color3.new(0, 0, 0)
					Choice.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
					Choice.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					Choice.BorderSizePixel = 0
					local ChoiceIcon = Instance.new("ImageLabel")
					ChoiceIcon.Size = UDim2.new(0, 16, 0, 16)
					ChoiceIcon.Position = UDim2.new(0, 4, 0, 1)
					ChoiceIcon.BorderSizePixel = 0
					ChoiceIcon.BackgroundTransparency = 1
					local ChoiceNewRecent = {"", "Object", true}
					local ChoiceNew = Choice:Clone()
					ChoiceNew.Text = string.rep(" ", 8).. "New..."
					ChoiceNew.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceNew.Position = UDim2.new(0, 1, 0, 1)
					ChoiceNew.Parent = MenuBar1
					ChoiceNew.MouseEnter:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceNew.BorderSizePixel = 1 end)
					ChoiceNew.MouseLeave:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceNew.BorderSizePixel = 0 end)
					ChoiceNew.MouseButton1Down:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceNew.MouseButton1Up:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						local CanCreate = true
						local function OnClose(Frame)
							CanCreate = false
							Frame:Remove()
						end
						local Popup = _C.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -200 / 2, 0.5, -250 / 2), UDim2.new(0, 200, 0, 250), Gui, "New Object", true, false, false, false, true)
						Popup.Name = "New Object"
						Popup.Icon.Image = "http://www.roblox.com/Asset/?id=42154070"
						local TextLabel = Instance.new("TextLabel")
						TextLabel.Text = "Instance (ClassName):"
						TextLabel.BorderColor3 = Color3.new(0, 0, 0)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Position = UDim2.new(0, 5, 0, 15)
						TextLabel.Size = UDim2.new(0, 75, 0, 15)
						TextLabel.TextWrap = true
						TextLabel.TextXAlignment = "Left"
						TextLabel.Parent = Popup.Content
						local TextBox = Instance.new("TextBox")
						TextBox.Name = "ObjectClassName"
						TextBox.Text = ChoiceNewRecent[1]
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Position = UDim2.new(0, 85, 0, 15)
						TextBox.Size = UDim2.new(0, 100, 0, 15)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						TextBox.Parent = Popup.Content
						local TextLabel = Instance.new("TextLabel")
						TextLabel.Text = "Name:"
						TextLabel.BorderColor3 = Color3.new(0, 0, 0)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Position = UDim2.new(0, 5, 0, 45)
						TextLabel.Size = UDim2.new(0, 75, 0, 15)
						TextLabel.TextWrap = true
						TextLabel.TextXAlignment = "Left"
						TextLabel.Parent = Popup.Content
						local TextBox = Instance.new("TextBox")
						TextBox.Name = "ObjectName"
						TextBox.Text = ChoiceNewRecent[2]
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Position = UDim2.new(0, 85, 0, 45)
						TextBox.Size = UDim2.new(0, 100, 0, 15)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						TextBox.Parent = Popup.Content
						local TextLabel = Instance.new("TextLabel")
						TextLabel.Text = "Archivable:"
						TextLabel.BorderColor3 = Color3.new(0, 0, 0)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Position = UDim2.new(0, 5, 0, 75)
						TextLabel.Size = UDim2.new(0, 75, 0, 15)
						TextLabel.TextWrap = true
						TextLabel.TextXAlignment = "Left"
						TextLabel.Parent = Popup.Content
						local CheckBox = _C.Functions.GetModule("GuiSupport").WindowControls.CheckBox.New(true)
						CheckBox.Name = "ObjectArchivable"
						_C.Functions.GetModule("GuiSupport").WindowControls.CheckBox.SelectCheckBox(ChoiceNewRecent[3])
						CheckBox.Position = UDim2.new(0, 90, 0, 75)
						CheckBox.Parent = Popup.Content
						local TextButton = Instance.new("TextButton")
						TextButton.Text = "Create"
						TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						TextButton.BorderColor3 = Color3.new(0, 0, 0)
						TextButton.BorderSizePixel = 1
						TextButton.TextColor3 = Color3.new(0, 0, 0)
						TextButton.Size = UDim2.new(0, 80, 0, 35)
						TextButton.Position = UDim2.new(0.5, -40, 0, 115)
						TextButton.Parent = Popup.Content
						TextButton.MouseButton1Up:connect(function()
							if CanCreate == false then return end
							CanCreate = false
							local NewObject = {pcall(function() return Instance.new(Popup.Content.ObjectClassName.Text) end)}
							if NewObject[1] == true then
								NewObject[2].Name = Popup.Content.ObjectName.Text
								NewObject[2].archivable = _C.Functions.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)
								NewObject[2].Parent = Object
								if NewObject[2].Parent ~= nil then
									pcall(function() NewObject[2].CFrame = Speaker.Character.Torso.CFrame * CFrame.new(0, 6, 0) end)
									ChoiceNewRecent = {Popup.Content.ObjectClassName.Text, Popup.Content.ObjectName.Text, _C.Functions.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)}
									UpdatePage()
									OnClose(Popup)
									return
								else
									Popup.StatusBar.Text = "Error: Object removed!"
									CanCreate = true
									return
								end
							elseif NewObject[1] == false then
								Popup.StatusBar.Text = "Error: Unknown Instance type!"
								CanCreate = true
								return
							end
						end)
						local TextButton = Instance.new("TextButton")
						TextButton.Text = "Cancel"
						TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						TextButton.BorderColor3 = Color3.new(0, 0, 0)
						TextButton.BorderSizePixel = 1
						TextButton.TextColor3 = Color3.new(0, 0, 0)
						TextButton.Size = UDim2.new(0, 80, 0, 35)
						TextButton.Position = UDim2.new(0.5, -40, 0, 155)
						TextButton.Parent = Popup.Content
						TextButton.MouseButton1Up:connect(function()
							CanCreate = false
							ChoiceNewRecent = {Popup.Content.ObjectClassName.Text, Popup.Content.ObjectName.Text, _C.Functions.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)}
							OnClose(Popup)
						end)
						Popup.Parent = Gui
						Window.Changed:connect(function(Property)
							if Property == "Parent" then
								if Window.Parent == nil then
									CanCreate = false
									OnClose(Popup)
								end
							end
						end)
					end)
					local ChoiceNewIcon = ChoiceIcon:Clone()
					ChoiceNewIcon.Image = "http://www.roblox.com/Asset/?id=42154070"
					ChoiceNewIcon.Parent = ChoiceNew
					local ChoiceLoadRecent = "47433"
					local ChoiceLoad = Choice:Clone()
					ChoiceLoad.Text = string.rep(" ", 8).. "Load..."
					ChoiceLoad.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceLoad.Position = UDim2.new(0, 75 + 1, 0, 1)
					ChoiceLoad.Parent = MenuBar1
					ChoiceLoad.MouseEnter:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceLoad.BorderSizePixel = 1 end)
					ChoiceLoad.MouseLeave:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceLoad.BorderSizePixel = 0 end)
					ChoiceLoad.MouseButton1Down:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceLoad.MouseButton1Up:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						local CanClose = true
						local CanCreate = true
						local function OnClose(Frame)
							if CanClose == false then return end
							CanCreate = false
							Frame:Remove()
						end
						local Popup = _C.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -200 / 2, 0.5, -175 / 2), UDim2.new(0, 200, 0, 175), Gui, "Load from URL", true, false, false, false, true, OnClose)
						Popup.Name = "Load from URL"
						Popup.Icon.Image = "http://www.roblox.com/Asset/?id=42183533"
						coroutine.wrap(function()
							while Popup.Parent ~= nil do
								if CanClose == false then
									pcall(function() Popup.ExitButton.BackgroundColor3 = Color3.new(0.5, 0.25, 0.25) end)
									pcall(function() Popup.Content.Cancel.BackgroundColor3 = Color3.new(0.55, 0.55, 0.55) end)
									pcall(function() Popup.Content.Cancel.TextColor3 = Color3.new(0.75, 0.75, 0.75) end)
								else
									pcall(function() Popup.ExitButton.BackgroundColor3 = Color3.new(1, 0, 0) end)
									pcall(function() Popup.Content.Cancel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
									pcall(function() Popup.Content.Cancel.TextColor3 = Color3.new(0, 0, 0) end)
								end
								if CanCreate == false then
									pcall(function() Popup.Content.Load.BackgroundColor3 = Color3.new(0.55, 0.55, 0.55) end)
									pcall(function() Popup.Content.Load.TextColor3 = Color3.new(0.75, 0.75, 0.75) end)
								else
									pcall(function() Popup.Content.Load.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
									pcall(function() Popup.Content.Load.TextColor3 = Color3.new(0, 0, 0) end)
								end
								wait()
							end
						end)()
						local TextLabel = Instance.new("TextLabel")
						TextLabel.Text = "ROBLOX Asset ID:"
						TextLabel.BorderColor3 = Color3.new(0, 0, 0)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Position = UDim2.new(0, 5, 0, 15)
						TextLabel.Size = UDim2.new(0, 75, 0, 15)
						TextLabel.TextWrap = true
						TextLabel.TextXAlignment = "Left"
						TextLabel.Parent = Popup.Content
						local TextBox = Instance.new("TextBox")
						TextBox.Name = "ID"
						TextBox.Text = ChoiceLoadRecent
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Position = UDim2.new(0, 85, 0, 15)
						TextBox.Size = UDim2.new(0, 100, 0, 15)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						TextBox.Parent = Popup.Content
						local TextButton = Instance.new("TextButton")
						TextButton.Name = "Load"
						TextButton.Text = "Load"
						TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						TextButton.BorderColor3 = Color3.new(0, 0, 0)
						TextButton.BorderSizePixel = 1
						TextButton.TextColor3 = Color3.new(0, 0, 0)
						TextButton.Size = UDim2.new(0, 80, 0, 35)
						TextButton.Position = UDim2.new(0.5, -40, 0, 45)
						TextButton.Parent = Popup.Content
						TextButton.MouseButton1Up:connect(function()
							if CanCreate == false then return end
							if Popup.Content.ID.Text == "" or Popup.Content.ID.Text == nil or tonumber(Popup.Content.ID.Text) == nil then
								CanClose = true
								CanCreate = true
								Popup.StatusBar.Text = "Asset \"" ..Popup.Content.ID.Text.. "\" invalid!"
								return
							end
							CanClose = false
							CanCreate = false
							Popup.StatusBar.Text = "Preparing InsertService..."
							pcall(function() game:GetService("InsertService"):SetAssetUrl("http://www.roblox.com/Asset/?id=%d") end)
							Popup.StatusBar.Text = "Loading Asset \"" ..Popup.Content.ID.Text.. "\"..."
							local NewObject = game:GetService("InsertService"):LoadAsset(tonumber(Popup.Content.ID.Text))
							Popup.StatusBar.Text = "Compiling Asset \"" ..Popup.Content.ID.Text.. "\"..."
							for i = 0, 100 do
								if NewObject ~= nil then break end
								wait()
							end
							if NewObject:IsA("Model") then
								NewObject.Parent = Object
								if NewObject.Parent ~= nil then
									NewObject:MakeJoints()
									if Speaker.Character ~= nil then
										if Speaker.Character:FindFirstChild("Torso") ~= nil then
											NewObject:MoveTo((Speaker.Character.Torso.CFrame * CFrame.new(0, 0, -10)).p)
										else
											NewObject:MoveTo(Vector3.new(0, 10, 0))
										end
									else
										NewObject:MoveTo(Vector3.new(0, 10, 0))
									end
									Popup.StatusBar.Text = "Asset \"" ..Popup.Content.ID.Text.. "\" loaded successfully."
									ObjectChildren = Object:children()
									UpdatePage()
									ChoiceLoadRecent = Popup.Content.ID.Text
									CanClose = true
									OnClose(Popup)
									return
								else
									Popup.StatusBar.Text = "Error: Object removed!"
									pcall(function() NewObject:Remove() end)
									CanClose = true
									CanCreate = true
									return
								end
							else
								Popup.StatusBar.Text = "Error: Load timed out!"
								pcall(function() NewObject:Remove() end)
								CanClose = true
								CanCreate = true
								return
							end
						end)
						local TextButton = Instance.new("TextButton")
						TextButton.Name = "Cancel"
						TextButton.Text = "Cancel"
						TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						TextButton.BorderColor3 = Color3.new(0, 0, 0)
						TextButton.BorderSizePixel = 1
						TextButton.TextColor3 = Color3.new(0, 0, 0)
						TextButton.Size = UDim2.new(0, 80, 0, 35)
						TextButton.Position = UDim2.new(0.5, -40, 0, 85)
						TextButton.Parent = Popup.Content
						TextButton.MouseButton1Up:connect(function()
							if CanClose == false then return end
							CanCreate = false
							ChoiceLoadRecent = Popup.Content.ID.Text
							OnClose(Popup)
						end)
						Popup.Parent = Gui
						Window.Changed:connect(function(Property)
							if Property == "Parent" then
								if Window.Parent == nil then
									CanCreate = false
									while CanClose == false do wait() end
									OnClose(Popup)
								end
							end
						end)
					end)
					local ChoiceLoadIcon = ChoiceIcon:Clone()
					ChoiceLoadIcon.Image = "http://www.roblox.com/Asset/?id=42183533"
					ChoiceLoadIcon.Parent = ChoiceLoad
					local ChoiceProperties = Choice:Clone()
					ChoiceProperties.Text = string.rep(" ", 8).. "Edit..."
					ChoiceProperties.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceProperties.Position = UDim2.new(0, (75 * 2) + (1 * 2), 0, 1)
					ChoiceProperties.Parent = MenuBar1
					ChoiceProperties.MouseEnter:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceProperties.BorderSizePixel = 1 end)
					ChoiceProperties.MouseLeave:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceProperties.BorderSizePixel = 0 end)
					ChoiceProperties.MouseButton1Down:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceProperties.MouseButton1Up:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						local SortType2 = 1
						local Popup = _C.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -500 / 2, 0.5, -500 / 2), UDim2.new(0, 500, 0, 500), Gui, "Set Propertes", true, true, true, true, true)
						Popup.Icon.Image = "http://www.roblox.com/Asset/?id=43318689"
						local Previous = Instance.new("TextButton")
						Previous.Name = "Previous"
						Previous.Text = "<"
						Previous.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Previous.BorderColor3 = Color3.new(0, 0, 0)
						Previous.BorderSizePixel = 1
						Previous.TextColor3 = Color3.new(0, 0, 0)
						Previous.Size = UDim2.new(0, 20, 0, 20)
						Previous.Position = UDim2.new(0, 5, 1, -75)
						Previous.Parent = Popup.Content
						local Center = Instance.new("TextLabel")
						Center.Name = "Center"
						Center.Text = "0 to 0 of 0"
						Center.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Center.BorderColor3 = Color3.new(0, 0, 0)
						Center.BorderSizePixel = 1
						Center.TextColor3 = Color3.new(0, 0, 0)
						Center.FontSize = "Size14"
						Center.Size = UDim2.new(1, -50, 0, 20)
						Center.Position = UDim2.new(0, 25, 1, -75)
						Center.Parent = Popup.Content
						local Next = Instance.new("TextButton")
						Next.Text = ">"
						Next.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Next.BorderColor3 = Color3.new(0, 0, 0)
						Next.BorderSizePixel = 1
						Next.TextColor3 = Color3.new(0, 0, 0)
						Next.Size = UDim2.new(0, 20, 0, 20)
						Next.Position = UDim2.new(1, -25, 1, -75)
						Next.Parent = Popup.Content
						local ListFrameHeader = _C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
						ListFrameHeader.Size = UDim2.new(1, -10, 0, 20)
						ListFrameHeader.Position = UDim2.new(0, 5, 0, 5)
						ListFrameHeader.Parent = Popup.Content
						_C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameHeader, {"Variable\tType\tValue"}, 2)
						local ListFrameProperties = _C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
						ListFrameProperties.Size = UDim2.new(1, -10, 1, -100)
						ListFrameProperties.Position = UDim2.new(0, 5, 0, 25)
						ListFrameProperties.Parent = Popup.Content
						local function UpdateProperties(...)
							local Properties, Types = _C.Functions.GetModule("RobloxProperties").GetProperties(Object)
							local List = {}
							for i = 1, #Properties do
								local Result = "Nil"
								if Types[i] == "Instance" then
									Result = Object[Properties[i]]:GetFullName()
								elseif Types[i] == "Struct.Vector2" then
									Result = "(" ..Object[Properties[i]].x.. ", " ..Object[Properties[i]].y.. ")"
								elseif Types[i] == "Struct.Vector3" then
									Result = "(" ..Object[Properties[i]].x.. ", " ..Object[Properties[i]].y.. ", " ..Object[Properties[i]].z.. ")"
								elseif Types[i] == "Struct.CFrame" then
									local x, y, z = Object[Properties[i]]:toEulerAnglesXYZ()
									Result = "(" ..Object[Properties[i]].p.x.. ", " ..Object[Properties[i]].p.y.. ", " ..Object[Properties[i]].p.z.. "), (" ..x.. ", " ..y.. ", " ..z.. ")"
								elseif Types[i] == "Struct.BrickColor" then
									Result = Object[Properties[i]].Name.. " (ID " ..Object[Properties[i]].Number.. ", (" ..Object[Properties[i]].r.. ", " ..Object[Properties[i]].g.. ", " ..Object[Properties[i]].b.. ")"
								elseif Types[i] == "Struct.Color3" then
									Result = "(" ..Object[Properties[i]].r.. ", " ..Object[Properties[i]].g.. ", " ..Object[Properties[i]].b.. ")"
								elseif Types[i] == "Struct.UDim" then
									Result = "(" ..Object[Properties[i]].Scale.. ", " ..Object[Properties[i]].Offset.. ")"
								elseif Types[i] == "Struct.UDim2" then
									Result = "(" ..Object[Properties[i]].X.Scale.. ", " ..Object[Properties[i]].X.Offset.. ", " ..Object[Properties[i]].Y.Scale.. ", " ..Object[Properties[i]].Y.Offset.. ")"
								elseif Types[i] == "Struct.Ray" then
									Result = "Origin: " ..Object[Properties[i]].Origin.x.. ", " ..Object[Properties[i]].Origin.y.. ", " ..Object[Properties[i]].Origin.z.. "). Direction: " ..Object[Properties[i]].Direction.x.. ", " ..Object[Properties[i]].Direction.y.. ", " ..Object[Properties[i]].Direction.z.. ")."
								elseif Types[i] == "Struct.Axes" then
									Result = Object[Properties[i]].X.. ", " ..Object[Properties[i]].Y.. ", " ..Object[Properties[i]].Z
								elseif Types[i] == "Faces" then
									if Object[Properties[i]].Right == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Right"
									end
									if Object[Properties[i]].Top == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Top"
									end
									if Object[Properties[i]].Back == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Back"
									end
									if Object[Properties[i]].Left == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Left"
									end
									if Object[Properties[i]].Bottom == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Bottom"
									end
									if Object[Properties[i]].Front == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Front"
									end
								elseif Types[i] == "String" then
									Result = "\"" ..Object[Properties[i]].. "\""
								else
									Result = tostring(Object[Properties[i]])
								end
								table.insert(List, Properties[i].. "\t" ..Types[i].. "\t" ..Result)
							end
							table.sort(List, function(a, b) return _C.Functions.Explode("\t", a)[SortType2]:lower() < _C.Functions.Explode("\t", b)[SortType2]:lower() end)
							_C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameProperties, List, 1, ...)
							Center.Text = ListFrameProperties.ListIndex.Value.. " to " ..(ListFrameProperties.ListIndex.Value + #ListFrameProperties:children() - 2).. " of " ..#Properties
							for _, Tag in pairs(ListFrameProperties:children()) do
								for _, Table in pairs(Tag:children()) do
									pcall(function()
										Table.MouseButton1Up:connect(function()
											Popup.StatusBar.Text = "Currently, editing properties has not been implimented."
										end)
									end)
								end
							end
						end
						coroutine.wrap(function()
							_C.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameProperties, {"Loading..."}, 1)
							wait(0.5)
							UpdateProperties()
						end)()
						for i, Table in pairs(ListFrameHeader.Tag1:children()) do
							Table.MouseButton1Up:connect(function()
								SortType2 = i
								UpdateProperties()
							end)
						end
						Previous.MouseButton1Up:connect(function() UpdateProperties(-1, "page") end)
						Next.MouseButton1Up:connect(function() UpdateProperties(1, "page") end)
						local TextButton = Instance.new("TextButton")
						TextButton.Text = "Apply"
						TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						TextButton.BorderColor3 = Color3.new(0, 0, 0)
						TextButton.BorderSizePixel = 1
						TextButton.TextColor3 = Color3.new(0, 0, 0)
						TextButton.Size = UDim2.new(0, 80, 0, 35)
						TextButton.Position = UDim2.new(1, -105, 1, -45)
						TextButton.Parent = Popup.Content
						TextButton.MouseButton1Up:connect(function()
						end)
						local TextButton = Instance.new("TextButton")
						TextButton.Text = "Refresh"
						TextButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						TextButton.BorderColor3 = Color3.new(0, 0, 0)
						TextButton.BorderSizePixel = 1
						TextButton.TextColor3 = Color3.new(0, 0, 0)
						TextButton.Size = UDim2.new(0, 80, 0, 35)
						TextButton.Position = UDim2.new(0, 25, 1, -45)
						TextButton.Parent = Popup.Content
						TextButton.MouseButton1Up:connect(function()
						end)
					end)
					local ChoicePropertiesIcon = ChoiceIcon:Clone()
					ChoicePropertiesIcon.Image = "http://www.roblox.com/Asset/?id=43318689"
					ChoicePropertiesIcon.Parent = ChoiceProperties
					local ChoiceDelete = Choice:Clone()
					ChoiceDelete.Text = string.rep(" ", 8).. "Delete"
					ChoiceDelete.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceDelete.Position = UDim2.new(0, (75 * 3) + (1 * 3), 0, 1)
					ChoiceDelete.Parent = MenuBar1
					ChoiceDelete.MouseEnter:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceDelete.BorderSizePixel = 1 end)
					ChoiceDelete.MouseLeave:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceDelete.BorderSizePixel = 0 end)
					ChoiceDelete.MouseButton1Down:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceDelete.MouseButton1Up:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						if Object.Parent ~= nil then
							local Delete = Object
							Object = Object.Parent
							if pcall(function() Delete:Remove() end) == false then
								Object = Delete
								ObjectChildren = Object:children()
								UpdatePage()
								Window.StatusBar.Text = "Error: Object could not be removed!"
								wait(5)
								Window.StatusBar.Text = ""
							else
								ObjectChildren = Object:children()
								UpdatePage()
							end
						else
							Window.StatusBar.Text = "Error: Object has no parent!"
							wait(5)
							Window.StatusBar.Text = ""
						end
					end)
					local ChoiceDeleteIcon = ChoiceIcon:Clone()
					ChoiceDeleteIcon.Image = "http://www.roblox.com/Asset/?id=42736686"
					ChoiceDeleteIcon.Parent = ChoiceDelete
					local ChoiceRefresh = Choice:Clone()
					ChoiceRefresh.Text = string.rep(" ", 8).. "Refresh"
					ChoiceRefresh.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceRefresh.Position = UDim2.new(0, (75 * 4) + (1 * 4), 0, 1)
					ChoiceRefresh.Parent = MenuBar1
					ChoiceRefresh.MouseEnter:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceRefresh.BorderSizePixel = 1 end)
					ChoiceRefresh.MouseLeave:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceRefresh.BorderSizePixel = 0 end)
					ChoiceRefresh.MouseButton1Down:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceRefresh.MouseButton1Up:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						ObjectChildren = Object:children()
						UpdatePage()
					end)
					local ChoiceRefreshIcon = ChoiceIcon:Clone()
					ChoiceRefreshIcon.Image = "http://www.roblox.com/Asset/?id=43215825"
					ChoiceRefreshIcon.Parent = ChoiceRefresh
					local ChoiceUpLevel = Choice:Clone()
					ChoiceUpLevel.Text = string.rep(" ", 8).. "Up Level"
					ChoiceUpLevel.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceUpLevel.Position = UDim2.new(0, (75 * 5) + (1 * 5), 0, 1)
					ChoiceUpLevel.Parent = MenuBar1
					ChoiceUpLevel.MouseEnter:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceUpLevel.BorderSizePixel = 1 end)
					ChoiceUpLevel.MouseLeave:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceUpLevel.BorderSizePixel = 0 end)
					ChoiceUpLevel.MouseButton1Down:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceUpLevel.MouseButton1Up:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						if Object.Parent ~= nil then
							Object = Object.Parent
							ObjectChildren = Object:children()
							UpdatePage()
						else
							Window.StatusBar.Text = "Error: Object has no parent!"
							wait(5)
							Window.StatusBar.Text = ""
						end
					end)
					local ChoiceUpLevelIcon = ChoiceIcon:Clone()
					ChoiceUpLevelIcon.Image = "http://www.roblox.com/Asset/?id=42724903"
					ChoiceUpLevelIcon.Parent = ChoiceUpLevel
					local ChoiceHome = Choice:Clone()
					ChoiceHome.Text = string.rep(" ", 8).. "Home"
					ChoiceHome.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceHome.Position = UDim2.new(0, (75 * 6) + (1 * 6), 0, 1)
					ChoiceHome.Parent = MenuBar1
					ChoiceHome.MouseEnter:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceHome.BorderSizePixel = 1 end)
					ChoiceHome.MouseLeave:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceHome.BorderSizePixel = 0 end)
					ChoiceHome.MouseButton1Down:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceHome.MouseButton1Up:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						Object = Home
						ObjectChildren = Object:children()
						UpdatePage()
					end)
					local ChoiceHomeIcon = ChoiceIcon:Clone()
					ChoiceHomeIcon.Image = "http://www.roblox.com/Asset/?id=43216297"
					ChoiceHomeIcon.Parent = ChoiceHome
				end)()
			end
		end
	end
end, "Explorer", "Creates a Gui in a player allowing you to explore the contents of the game.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand("lighting", 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "dawn" then
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(127 / 255, 127 / 255, 150 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 25 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		game:GetService("Lighting").TimeOfDay = "07:00:00"
	end
	if MsgSplit[1]:lower() == "day" then
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(150 / 255, 127 / 255, 150 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(10 / 255, 10 / 255, 10 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		game:GetService("Lighting").TimeOfDay = "12:00:00"
	end
	if MsgSplit[1]:lower() == "dusk" then
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(150 / 255, 110 / 255, 110 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(50 / 255, 10 / 255, 10 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		game:GetService("Lighting").TimeOfDay = "17:55:00"
	end
	if MsgSplit[1]:lower() == "night" then
		game:GetService("Lighting").Brightness = 5
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(20 / 255, 20 / 255, 20 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 25 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(200 / 255, 200 / 255, 200 / 255)
		game:GetService("Lighting").TimeOfDay = "21:00:00"
	end
	if MsgSplit[1]:lower() == "default" then
		game:GetService("Lighting").Brightness = 1
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
		game:GetService("Lighting").TimeOfDay = "14:00:00"
	end
	if MsgSplit[1]:lower() == "black" then
		game:GetService("Lighting").Brightness = 0
		game:GetService("Lighting").GeographicLatitude = 90
		game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(1, 1, 1)
		game:GetService("Lighting").TimeOfDay = "00:00:00"
	end
	if MsgSplit[1]:lower() == "shift" then
		if Self.Shift == nil then Self.Shift = false end
		if Self.ShiftTime == nil then Self.ShiftTime = 10 end
		if Self.Shift == true then Self.Shift = false else Self.Shift = true end
		local h = tonumber(_C.Functions.Explode(":", game:GetService("Lighting").TimeOfDay)[1])
		local m = tonumber(_C.Functions.Explode(":", game:GetService("Lighting").TimeOfDay)[2])
		local s = tonumber(_C.Functions.Explode(":", game:GetService("Lighting").TimeOfDay)[3])
		while Self.Shift == true and CoolCMDs ~= nil do
			s = s + tonumber(MsgSplit[2])
			if s >= 60 then
				m = m + math.floor(s / 60)
				s = 0
			end
			if m > 60 then
				h = h + math.floor(m / 60)
				m = 0
			end
			if h > 24 then
				h = 0
			end
			game:GetService("Lighting").TimeOfDay = h.. ":" ..m.. ":" ..s
			wait()
		end
	end
	if MsgSplit[1]:lower() == "ambient" then pcall(function() game:GetService("Lighting").Ambient = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "bottom" then pcall(function() game:GetService("Lighting").ColorShift_Bottom = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "top" then pcall(function() game:GetService("Lighting").ColorShift_Top = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "shadow" then pcall(function() game:GetService("Lighting").ShadowColor = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "brightness" then pcall(function() game:GetService("Lighting").Brightness = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "latitude" then pcall(function() game:GetService("Lighting").GeographicLatitude = tonumber(MsgSplit[2]) end) end
	if MsgSplit[1]:lower() == "time" or MsgSplit[1]:lower() == "timeofday" then pcall(function() game:GetService("Lighting").TimeOfDay = MsgSplit[2] end) end
end, "Lighting", "Change the lighting color.", "[dawn, day, dusk, night, default, black, shift, [[ambient, bottom, top, shadow]" .._C.Data.Split.. "x" .._C.Data.Split.. "y" .._C.Data.Split.. "z], [brightness" .._C.Data.Split.. "0-5], [latitude" .._C.Data.Split.. "0-360], [[time, timeofday]" .._C.Data.Split.. "0-24:0-60:0-60]")

_C.Functions.CreateCommand({"lockscript", "lock script", "lockscripts", "lock scripts", "ls"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "0" or MsgSplit[1]:lower() == "false" then
		game:GetService("ScriptContext").ScriptsDisabled = false
		if Self.new ~= nil then
			Instance.new = Self.new
			Self.new = nil
		end
		for _, Scripts in pairs(_C.Functions.GetRecursiveChildren(nil, "script", 2)) do
			if Scripts:IsA("BaseScript") then
				Scripts.Disabled = false
			end
		end
		_C.Functions.Msg("Message", "Scripts unlocked.", 5)
	elseif MsgSplit[1]:lower() == "1" or MsgSplit[1]:lower() == "true" then
		local LockMsg = _C.Functions.Msg("Message", "Locking scripts...")
		game:GetService("ScriptContext").ScriptsDisabled = true
		if pcall(function() local _ = Instance.new("Part") end) == true then
			Self.new = Instance.new
			Instance.new = function() error("No objects are currently allowed.") end
		end
		for _, Scripts in pairs(_C.Functions.GetRecursiveChildren(nil, "script", 2)) do
			if Scripts:IsA("BaseScript") then
				Scripts.Disabled = true
			end
		end
		LockMsg.Text = "Scripts locked."
		wait(5)
		LockMsg:Remove()
	end
end, "Lock Scripts", "Disables all new scripts and all currently running scripts (besides itself).", "[[0, false], [1, true]]")

_C.Functions.CreateCommand({"clean", "cl"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return end
	local CleanType = MsgSplit[#MsgSplit - 1]
	CleanType = CleanType:lower()
	if CleanType == "1" or CleanType == "name" then CleanType = 1 end
	if CleanType == "2" or CleanType == "class" or CleanType == "classname" then CleanType = 2 end
	if CleanType == "3" or CleanType == "type" or CleanType == "isa" then CleanType = 3 end
	if CleanType == "4" or CleanType == "all" then CleanType = 4 end
	if type(CleanType) ~= "number" then CleanType = 4 end
	local CleanExtra = MsgSplit[#MsgSplit]
	if CleanExtra == nil then CleanExtra = "" end
	for i = 1, #MsgSplit - 2 do
		for _, Part in pairs(_C.Functions.GetRecursiveChildren(nil, MsgSplit[i], CleanType)) do
			local _, CanClean = pcall(function()
				if Part.ClassName == "Lighting" then return false end
				if string.match(CleanExtra, "nochar") then
					for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
						if Part == Player.Character or Part:IsDescendantOf(Player.Character) then return false end
					end
				end
				if string.match(CleanExtra, "noplayer") then
					for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
						if Part:IsDescendantOf(Player) or Part == Player then return false end
					end
				end
				if string.match(CleanExtra, "nobase") then
					if Part.Parent == Workspace and Part.Name == "Base" then
						return false
					end
				end
				if string.match(CleanExtra, "noscript") then
					if Part:IsA("BaseScript") then
						return false
					end
				end
				if string.match(CleanExtra, "stopscript") then
					if Part:IsA("BaseScript") then
						Part.Disabled = true
					end
				end
				if string.match(CleanExtra, "stopsound") then
					if Part.ClassName == "Sound" then
						Part:Stop()
						Part.Looped = false
						Part.SoundId = ""
						Part.Volume = 0
						Part.Pitch = 0
						wait()
					end
				end
				return true
			end)
			if CanClean == true then
				pcall(function() Part:Remove() end)
			end
		end
	end
end, "Clean", "Cleans the game of all obejcts with a certain Name or ClassName or inherited class (or all). Extra arguments: nochar, noplayer, nobase, noscript, stopscript, stopsound.", "[name, classname, inherited]" .._C.Data.Split.. "[...]" .._C.Data.Split.. "[[1, name], [2, class], [3, inherited], [4, all]]" .._C.Data.Split.. "extra arguments")

_C.Functions.CreateCommand("health", 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	local Health = MsgSplit[#MsgSplit]
	if Health == nil then Health = "" end
	Health = Health:lower()
	if Health == "math.huge" then
		Health = math.huge
	elseif Health == "" or tonumber(Health) == nil then
		Health = 0
	else
		Health = tonumber(Health)
	end
	Health = math.abs(Health)
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					if Health > Player.Character.Humanoid.MaxHealth then
						Player.Character.Humanoid.MaxHealth = Health
					else
						Player.Character.Humanoid.MaxHealth = 100
						if Health > Player.Character.Humanoid.MaxHealth then
							Player.Character.Humanoid.MaxHealth = Health
						end
					end
					Player.Character.Humanoid.Health = Health
				end
			end
		end
	end
end, "Health", "Set the health of a player's character. ", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "[health (number), math.huge, random, my health]")

_C.Functions.CreateCommand("lua", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	_C.Functions.CreateScript(Msg, Workspace, true, false)
end, "Lua Run", "Creates a new script.", "source")

_C.Functions.CreateCommand({"luanodebug", "luandb"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	_C.Functions.CreateScript(Msg, Workspace, false, false)
end, "Lua Run (No Debug)", "Creates a new script without error output.", "source")

_C.Functions.CreateCommand({"lualocal", "lual"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	_C.Functions.CreateScript(Msg, Speaker.Character, true, true)
end, "Lua Local Run", "Creates a new local script.", "source")

_C.Functions.CreateCommand({"lualocalnodebug", "lualndb"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	_C.Functions.CreateScript(Msg, Speaker.Character, false, true)
end, "Lua Local Run (No Debug)", "Creates a new local script without error output.", "source")

_C.Functions.CreateCommand("loadstring", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if string.sub(Msg, 0, 1) == "=" then
		Msg = "print(" ..string.sub(Msg, 2).. ")"
	end
	local _, Error = loadstring(Msg)
	if Error ~= nil then
		_C.Functions.Msg("NewHint", "[CoolCMDs Loadstring, " ..string.sub(Error, 9), 10, Speaker)
	else
		_C.Functions.Msg("NewHint", "[Loadstring] Running script...", 1, Speaker)
		wait()
		Msg = string.gsub(Msg, "print%(", "QuickPrint(")
		Msg = [[function QuickPrint(...)
	local Arguments = {...}
	local Result = tostring(Arguments[1])
	for i = 2, #Arguments do Result = Result.. "\t" ..tostring(Arguments[i]) end
	local Display = Instance.new("Hint", Workspace)
	Display.Text = "[QuickScript] " ..Result
	game:GetService("Debris"):AddItem(Display, 10)
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

_C.Functions.CreateCommand({"walkspeed", "ws"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					pcall(function() Player.Character.Humanoid.WalkSpeed = tonumber(MsgSplit[#MsgSplit]) end)
				end
			end
		end
	end
end, "WalkSpeed", "Set the WalkSpeed of a player's character. ", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "speed")

_C.Functions.CreateCommand({"teleport", "tele", "tp"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Position = MsgSplit[#MsgSplit]:lower()
	local TeleportPlayer = nil
	if #_C.Functions.Explode(", ", Position) == 3 then
		Position = CFrame.new(_C.Functions.Explode(", ", Position)[1], _C.Functions.Explode(", ", Position)[2], _C.Functions.Explode(", ", Position)[3])
	else
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), Position:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Torso") ~= nil then
					Position = Player.Character.Torso.CFrame
					TeleportPlayer = Player
					break
				end
			end
		end
	end
	if type(Position) == "string" then return end
	local i = 1
	for x = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[x]:lower()) and Player.Character ~= nil and Player ~= TeleportPlayer then
				i = i + 1
				if Player.Character:FindFirstChild("Torso") ~= nil then
					Player.Character.Torso.Anchored = true
					wait()
					Player.Character.Torso.CFrame = Position * CFrame.new(0, 4 * i, 0)
					Player.Character.Torso.Velocity = Vector3.new()
					Player.Character.Torso.RotVelocity = Vector3.new()
					wait()
					Player.Character.Torso.Anchored = false
				else
					for y = 1, 100 do
						Player.Character:MoveTo((Position * CFrame.new(0, 4 * i, 0)).p)
					end
				end
			end
		end
	end
end, "Teleport", "Teleport players to other players or positions. ", "player to teleport" .._C.Data.Split.. "[...]" .._C.Data.Split.. "player to teleport to, or [x, y, z]")

_C.Functions.CreateCommand({"waypoint", "wp"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if Speaker.Character == nil then return end
	if Speaker.Character:FindFirstChild("Torso") == nil then return end
	if #MsgSplit < 2 then return end
	local Type = MsgSplit[1]:lower()
	local Index = MsgSplit[2]
	local Player = _C.Functions.GetPlayerTable(Speaker.Name)
	if Player.Waypoints == nil then
		Player.Waypoints = {}
	end
	Waypoint = Player.Waypoints
	if Type == "set" then
		Waypoint[Index] = {}
		Waypoint[Index].CFrame = Speaker.Character.Torso.CFrame
		Waypoint[Index].Velocity = Speaker.Character.Torso.Velocity
		Waypoint[Index].RotVelocity = Speaker.Character.Torso.RotVelocity
		_C.Functions.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] Set at CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
	elseif Type == "get" then
		if Waypoint[Index] ~= nil then
			Speaker.Character.Torso.Anchored = true
			wait()
			Speaker.Character.Torso.CFrame = Waypoint[Index].CFrame
			Speaker.Character.Torso.Velocity = Waypoint[Index].Velocity
			Speaker.Character.Torso.RotVelocity = Waypoint[Index].RotVelocity
			wait()
			Speaker.Character.Torso.Anchored = false
			_C.Functions.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] Moved to CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
		else
			_C.Functions.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	elseif Type == "remove" then
		if Waypoint[Index] ~= nil then
			Waypoint[Index] = nil
			_C.Functions.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] Removed.", 5, Speaker)
		else
			_C.Functions.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	elseif Type == "show" then
		if Waypoint[Index] ~= nil then
			_C.Functions.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
		else
			_C.Functions.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	end
end, "Waypoint", "Set dynamic waypoints that store your character's position, saved by string indices.", "[set, get, remove, show]" .._C.Data.Split.. "waypoint index")

_C.Functions.CreateCommand({"kill", "ki"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:children()) do
					pcall(function() Part.Health = 0 end)
				end
			end
		end
	end
end, "Kill", "Kills people.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"healthbar", "hb"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	local HealthBar = MsgSplit[#MsgSplit]
	if HealthBar ~= "2.0" and HealthBar ~= "3.1" then
		_C.Functions.Msg("NewHint", "[HealthBar] Invalid HealthScript version.", 5, Speaker)
		return
	end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:children()) do
					if string.match(Part.Name, "HealthScript") then
						Part:Remove()
					end
				end
				for _, Part in pairs(Player.PlayerGui:children()) do
					if string.match(Part.Name, "HealthGUI") then
						Part:Remove()
					end
				end
				if HealthBar == "2.0" then
					local HealthScript = game:GetService("InsertService"):LoadAsset(55672625):children()[1]
					HealthScript.Parent = Player.Character
				elseif HealthBar == "3.1" then
					local HealthScript = game:GetService("InsertService"):LoadAsset(55672666):children()[1]
					HealthScript.Parent = Player.Character
				end
			end
		end
	end
end, "HealthBar", "Create new HealthScripts for Players. Types are 2.0 and 3.1.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "type")

_C.Functions.CreateCommand({"setname", "sn"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				local Tools = {}
				local HeldTool = nil
				for _, Part in pairs(Player.Character:children()) do
					if Part:IsA("Tool") then
						Part.Parent = nil
						HeldTool = Part
					elseif Part.ClassName == "ForceField" then
						Part:Remove()
					end
				end
				for _, Tool in pairs(Player.Backpack:children()) do
					Tool.Parent = nil
					table.insert(Tools, Tool)
				end
				Player.Character.archivable = true
				local Clone = Player.Character:Clone()
				Clone.Name = MsgSplit[#MsgSplit]
				Clone.archivable = false
				Player.Character = Clone
				Clone.Parent = Workspace
				wait(0.25)
				if HeldTool ~= nil then
					HeldTool.Parent = Player.Character
				end
				for i = 1, #Tools do
					Tools[i].Parent = Player.Backpack
				end
			end
		end
	end
end, "Set Name", "Set a character's name.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "name")

_C.Functions.CreateCommand("clone", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return end
	local Clones = tonumber(MsgSplit[#MsgSplit])
	if Clones == nil then Clones = 1 end
	if Clones < 1 then Clones = 1 end
	if Clones > 10 then Clones = 10 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for i = 1, Clones do
					Player.Character.archivable = true
					local Clone = Player.Character:Clone()
					Player.Character.archivable = false
					Clone.archivable = false
					Clone.Name = Player.Character.Name.. "'s Clone"
					Clone.Parent = Workspace
					if Clone:FindFirstChild("Humanoid") ~= nil then
						Clone.Humanoid.Died:connect(function()
							wait(5)
							Clone:Remove()
						end)
					end
				end
			end
		end
	end
end, "Clone", "Clone a player.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "number of clones (max 10)")

_C.Functions.CreateCommand({"fixcamera", "fc"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				local Fix = game:GetService("InsertService"):LoadAsset(52948436):children()[1]
				Fix.Disabled = true
				Fix.Parent = Player.Character
				wait(0.05)
				Fix.Disabled = false
			end
		end
	end
end, "Fix Camera", "Fix a player's camera.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"freeze", "f"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:children()) do
					pcall(function() Part.Anchored = true end)
				end
			end
		end
	end
end, "Freeze", "Freeze people in place.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"unfreeze", "unf", "uf", "thaw", "th"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:children()) do
					pcall(function() Part.Anchored = false end)
				end
			end
		end
	end
end, "Unfreeze/Thaw", "Unfreeze/thaw people.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"killer frogs", "frogs"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	local Frogs = tonumber(MsgSplit[#MsgSplit])
	if Frogs == nil then Frogs = 1 end
	if Frogs > 25 then Frogs = 25 end
	if Frogs <= 0 then Frogs = 1 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == true then
				for x = 1, Frogs do
					local Frog = Instance.new("Part", Workspace)
					Frog.Name = "Killer Frog"
					Frog.BrickColor = BrickColor.new("Bright green")
					Frog.FormFactor = "Custom"
					Frog.Size = Vector3.new(0.9, 0.9, 0.9)
					Frog.TopSurface = 0
					Frog.BottomSurface = 0
					Frog.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.random(-10, 10), math.random(-1, 1), math.random(-10, 10))
					Frog.Touched:connect(function(Hit) pcall(function() Hit.Parent.Humanoid:TakeDamage(0.5) end) end)
					Instance.new("Decal", Frog).Texture = "rbxasset://textures\\face.png"
					coroutine.wrap(function()
						for i = 1, 0, -0.05 do
							Frog.Transparency = i
							wait()
						end
						Frog.Transparency = 0
						while Frog.Parent ~= nil do
							if pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == false then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							wait(math.random(10, 200) / 100)
							Frog.Velocity = Frog.Velocity + ((Player.Character.Torso.Position - Frog.Position).unit * math.random(20, 40)) + Vector3.new(0, math.random(15, 25), 0)
						end
						for i = 0, 1, 0.05 do
							Frog.Transparency = i
							wait()
						end
						Frog:Remove()
					end)()
				end
			end
		end
	end
end, "Killer Frogs", "Throw some frogs at people.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "number of frogs (max 25)")

_C.Functions.CreateCommand({"killer bees", "bees"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	local Bees = tonumber(MsgSplit[#MsgSplit])
	if Bees == nil then Bees = 1 end
	if Bees > 50 then Bees = 50 end
	if Bees <= 0 then Bees = 1 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == true then
				for x = 1, Bees do
					local Bee = Instance.new("Part", Workspace)
					Bee.Name = "Killer Bee"
					Bee.BrickColor = BrickColor.new("Bright yellow")
					Bee.FormFactor = "Custom"
					Bee.Size = Vector3.new(0.4, 0.9, 0.4)
					Bee.TopSurface = 0
					Bee.BottomSurface = 0
					Bee.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.random(-10, 10), math.random(1, 25), math.random(-10, 10))
					Bee.Touched:connect(function(Hit) pcall(function() Hit.Parent.Humanoid:TakeDamage(0.25) end) end)
					Instance.new("SpecialMesh", Bee).MeshType = "Head"
					coroutine.wrap(function()
						for i = 1, 0, -0.05 do
							Bee.Transparency = i
							wait()
						end
						Bee.Transparency = 0
						while Bee.Parent ~= nil do
							if pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == false then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							Bee.Velocity = Bee.Velocity + ((Player.Character.Torso.Position - Bee.Position).unit * math.random(15, 20)) + Vector3.new(math.random(-5, 5), math.random(-5, 5) + 2.5, math.random(-5, 5))
							wait(math.random(1, 10) / 100)
						end
						for i = 0, 1, 0.05 do
							Bee.Transparency = i
							wait()
						end
						Bee:Remove()
					end)()
				end
			end
		end
	end
end, "Killer Bees", "Throw clouds of angry bees at people.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "number of bees (max 50)")

_C.Functions.CreateCommand({"blind", "b"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				local Blind = Instance.new("ScreenGui", Player.PlayerGui)
				Blind.Name = "CoolCMDsBlind"
				local Black = Instance.new("Frame", Blind)
				Black.Name = "Black"
				Black.BorderSizePixel = 0
				Black.ZIndex = math.huge
				Black.BackgroundColor3 = Color3.new(0, 0, 0)
				Black.Size = UDim2.new(2, 0, 2, 0)
				Black.Position = UDim2.new(-0.5, 0, -0.5, 0)
				Black.Changed:connect(function(Property)
					if Property == "Parent" then
						if Black.Parent ~= Blind then
							Black.Parent = Blind
						end
					end
				end)
				Blind.Changed:connect(function(Property)
					if Property == "Parent" then
						if Blind.Name == "CoolCMDsBlindDisabled" then return end
						if Blind.Parent ~= Player.PlayerGui then
							Blind.Parent = Player.PlayerGui
						end
					end
				end)
			end
		end
	end
end, "Blind", "Blind people.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"unblind", "noblind", "unb", "ub", "nb"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				pcall(function() while true do Player.PlayerGui.CoolCMDsBlind.Name = "CoolCMDsBlindDisabled" Player.PlayerGui.CoolCMDsBlindDisabled:Remove() end end)
			end
		end
	end
end, "Unblind", "Let people see again.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"nogui", "ng"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				for _, Part in pairs(Player.PlayerGui:children()) do
					if Part:IsA("GuiBase") then
						pcall(function() Part:Remove() end)
					end
				end
			end
		end
	end
end, "No Gui", "Remove all Guis from a player.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"notools", "nt"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				if Player.Character ~= nil then
					for _, Part in pairs(Player.Character:children()) do
						if Part:IsA("BackpackItem") then
							pcall(function() Part:Remove() end)
						end
					end
				end
				for _, Part in pairs(Player.Backpack:children()) do
					if Part:IsA("BackpackItem") then
						pcall(function() Part:Remove() end)
					end
				end
			end
		end
	end
end, "No Tools", "Remove all tools from a player.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"crush", "cr"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso.CFrame end) == true and pcall(function() local _ = Player.Character.Humanoid end) == true then
				coroutine.wrap(function()
					local WalkSpeed = Player.Character.Humanoid.WalkSpeed
					Player.Character.Humanoid.WalkSpeed = 0
					wait(3)
					Player.Character.Humanoid.WalkSpeed = WalkSpeed
				end)()
				local Brick = Instance.new("Part", Workspace)
				Brick.Name = "Brick"
				Brick.BrickColor = BrickColor.new("Really black")
				Brick.TopSurface = 0
				Brick.BottomSurface = 0
				Brick.FormFactor = "Custom"
				Brick.Size = Vector3.new(10, 7, 8)
				Brick.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(0, 200, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(0, 360)), 0)
				Instance.new("SpecialMesh", Brick).MeshType = "Torso"
				local BodyVelocity = Instance.new("BodyVelocity", Brick)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = Vector3.new(0, -300, 0)
				Brick.Touched:connect(function(Hit)
					if Hit.Parent == nil then return end
					if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
						Hit.Parent.Humanoid.MaxHealth = 100
						Hit.Parent.Humanoid.Health = 0
					else
						if Hit:GetMass() > 1000 then return end
						Hit.Anchored = false
						Hit:BreakJoints()
					end
				end)
				coroutine.wrap(function()
					for i = 1, 0, -0.05 do
						Brick.Transparency = i
						wait()
					end
					Brick.Transparency = 0
					wait(2)
					for i = 0, 1, 0.015 do
						Brick.Transparency = i
						wait()
					end
					Brick:Remove()
				end)()
			end
		end
	end
end, "Crush", "WHAM.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"respawn", "rs"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				pcall(function()
					local Model = Instance.new("Model", Workspace)
					local Part = Instance.new("Part", Model)
					Part.Name = "Head"
					Part.Transparency = 1
					Part.CanCollide = false
					Part.Anchored = true
					Part.Locked = true
					Part.Parent = Model
					local Humanoid = Instance.new("Humanoid", Model)
					Humanoid.Health = 100
					Player.Character = Model
					Humanoid.Health = 0
				end)
			end
		end
	end
end, "Respawn", "Respawn a player.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"forcefield", "ff", "shield", "sh"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				Instance.new("ForceField", Player.Character)
			end
		end
	end
end, "Spawn ForceField", "Spawn a ForceField object in a Player's character.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"unforcefield", "noforcefield", "unff", "uff", "noff", "unshield", "unsh", "ush", "noshield", "nosh"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:children()) do
					if Part:IsA("ForceField") then
						Part:Remove()
					end
				end
			end
		end
	end
end, "Remove ForceField", "Remove all ForceField objects in a Player's character.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"explode", "ex"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Pressure = math.random(100000, 1000000)
	local Radius = math.random(5, 25)
	if tonumber(MsgSplit[#MsgSplit]) ~= nil and tostring(tonumber(MsgSplit[#MsgSplit])) == MsgSplit[#MsgSplit] then
		Pressure = tonumber(MsgSplit[#MsgSplit])
		table.remove(MsgSplit, #MsgSplit)
	end
	if tonumber(MsgSplit[#MsgSplit]) ~= nil and tostring(tonumber(MsgSplit[#MsgSplit])) == MsgSplit[#MsgSplit]  then
		Radius = tonumber(MsgSplit[#MsgSplit])
		table.remove(MsgSplit, #MsgSplit)
	end
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:children()) do
					if Part:IsA("BasePart") then
						local Explosion = Instance.new("Explosion")
						Explosion.BlastPressure = Pressure
						Explosion.BlastRadius = Radius
						Explosion.Position = Part.Position
						Explosion.Parent = Player.Character
						Explosion.Hit:connect(function(Part)
							if Hit.Parent == nil then return end
							if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
								Hit.Parent.Humanoid.MaxHealth = 100
								Hit.Parent.Humanoid.Health = 0
							else
								if Hit:GetMass() > 1000 then return end
								Hit.Anchored = false
								Hit:BreakJoints()
							end
						end)
					end
				end
				Player.Character:BreakJoints()
			end
		end
	end
end, "Explode", "Spawn an explosion in all parts of a player and break that player's joints.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "(size" .._C.Data.Split.. "pressure)")

_C.Functions.CreateCommand("hax", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	if _C.Functions.IsModuleEnabled("CharacterSupport") == false then
		_C.Functions.Msg("NewHint", "This command requires the CharacterSupport module to be enabled.", 5, Speaker)
		return
	elseif _C.Functions.GetModule("CharacterSupport") == nil then
		_C.Functions.Msg("NewHint", "This command requires the CharacterSupport module to be installed.", 5, Speaker)
		return
	end
	local Characters = tonumber(MsgSplit[#MsgSplit])
	if Characters == nil then Characters = 1 end
	if Characters <= 0 then Characters = 1 end
	if Characters > 10 then Characters = 10 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso end) == true then
				for i = 1, Characters do
					coroutine.wrap(function()
						local Character = _C.Functions.GetModule("CharacterSupport").CreateCharacter(true)
						Character.Name = "Dr. Hax"
						local Head = Character.Head
						Head.face.Texture = "http://www.roblox.com/Asset/?id=16580646"
						local Torso = Character.Torso
						local RightShoulder = Character.Torso["Right Shoulder"]
						local RightArm = Character["Right Arm"]
						local Humanoid = Character.Humanoid
						Character.Shirt.ShirtTemplate = "http://www.roblox.com/Asset/?id=12702133"
						Character.Pants.PantsTemplate = "http://www.roblox.com/Asset/?id=12702160"
						local Hat = Instance.new("Hat")
						Hat.Name = "White Hair"
						Hat.AttachmentPos = Vector3.new(0, 0.1, 0)
						local Handle = Instance.new("Part")
						Handle.Name = "Handle"
						Handle.FormFactor = 0
						Handle.Size = Vector3.new(2, 1, 1)
						Handle.TopSurface = 0
						Handle.BottomSurface = 0
						Handle.Parent = Hat
						local Mesh = Instance.new("SpecialMesh")
						Mesh.MeshId = "http://www.roblox.com/Asset/?id=13332444"
						Mesh.VertexColor = Vector3.new(1, 1, 1)
						Mesh.Parent = Handle
						Hat.Parent = Character
						local Hat = Instance.new("Hat")
						Hat.Name = "Beard"
						for i = 0, math.pi, math.pi / 10 do Hat.AttachmentForward = Hat.AttachmentForward + Vector3.new(0, math.pi, 0) end
						Hat.AttachmentPos = Vector3.new(0, -0.5, 0.7)
						local Handle = Instance.new("Part")
						Handle.Name = "Handle"
						Handle.FormFactor = 0
						Handle.Size = Vector3.new(1, 1, 1)
						Handle.TopSurface = 0
						Handle.BottomSurface = 0
						Handle.BrickColor = BrickColor.new("Institutional white")
						Handle.Parent = Hat
						local Mesh = Instance.new("CylinderMesh")
						Mesh.Scale = Vector3.new(0.675, 0.199, 0.675)
						Mesh.Parent = Handle
						Hat.Parent = Character
						Torso.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.sin(math.random(0, (math.pi * 100) * 2) / 100) * 25, 5, math.cos(math.random(0, (math.pi * 100) * 2) / 100) * 25)
						Character.Parent = Workspace
						Character:MakeJoints()
						coroutine.wrap(function()
							for i = 1, 0, -0.05 do
								for _, Part in pairs(Character:children()) do
									pcall(function() Part.Transparency = i end)
								end
								wait()
							end
							for _, Part in pairs(Character:children()) do
								pcall(function() Part.Transparency = 0 end)
							end
						end)()
						coroutine.wrap(function()
							while true do
								if Player.Character == nil then break end
								if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Humanoid") == nil or RightArm.Parent ~= Character or Humanoid.Health <= 0 then break end
								if Player.Character.Humanoid.Health <= 0 then break end
								if (Torso.Position - Player.Character.Torso.Position).magnitude > 30 then
									Humanoid:MoveTo(Player.Character.Torso.Position, Player.Character.Torso)
								else
									Humanoid:MoveTo(Torso.Position, Torso)
								end
								Torso.CFrame = CFrame.new(Torso.Position, Vector3.new(Player.Character.Torso.Position.x, Torso.Position.y, Player.Character.Torso.Position.z))
								wait()
							end
							Humanoid:MoveTo(Torso.Position, Torso)
						end)()
						wait(2)
						RightShoulder.DesiredAngle = math.rad(90)
						wait(1)
						while true do
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Humanoid") == nil or RightArm.Parent ~= Character or Humanoid.Health <= 0 then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							if Humanoid.Health <= 0 then break end
							local Monitor = Instance.new("Part")
							Monitor.Name = "Monitor"
							Monitor.FormFactor = 0
							Monitor.Size = Vector3.new(2, 2, 2)
							Monitor.TopSurface = 0
							Monitor.BottomSurface = 0
							Monitor.BrickColor = BrickColor.new("Brick yellow")
							Monitor.Parent = Workspace
							Monitor.CFrame = RightArm.CFrame * CFrame.new(0, -3, 0)
							Monitor.Velocity = ((Player.Character.Torso.Position - Monitor.Position).unit * math.random(100, 500)) + Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
							local HasTouched = false
							Monitor.Touched:connect(function(Hit)
								if Hit.Parent == nil then return end
								if Hit.Parent == Character or string.match("Dr. Hax", Hit.Parent.Name) or Hit.Name == "Monitor" then return end
								local Sound = Instance.new("Sound", Monitor)
								Sound.Name = "Crash"
								Sound.Volume = math.random(10, 90) / 100
								Sound.SoundId = "rbxasset://sounds/Glassbreak.wav"
								Sound.Pitch = math.random(90, 200) / 100
								Sound:Play()
								coroutine.wrap(function()
									wait(math.random(5, 50) / 100)
									for i = Sound.Volume, 0, -math.random(75, 100) / 1000 do
										Sound.Volume = i
										wait()
									end
									Sound:Stop()
									Sound:Remove()
								end)()
								if HasTouched == true then return end
								HasTouched = true
								if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
									Hit.Parent.Humanoid:TakeDamage(math.random(5, 25))
								else
									if Hit.Anchored == true and Hit:GetMass() < 1000 and math.random(1, 3) == 1 then
										Hit.Anchored = false
									end
									if math.random(1, 10) == 1 then Hit:BreakJoints() end
								end
								wait(1)
								for i = 0, 1, 0.05 do
									Monitor.Transparency = i
									wait()
								end
								Monitor:Remove()
							end)
							wait(math.random(1, 500) / 1000)
						end
						if Humanoid.Health > 0 then
							wait(1)
							RightShoulder.DesiredAngle = 0
							wait(2)
						end
						for i = 0, 1, 0.05 do
							for _, Part in pairs(Character:children()) do
								pcall(function() Part.Transparency = i end)
							end
							wait()
						end
						Character:Remove()
					end)()
				end
			end
		end
	end
end, "Hax", "Summon Dr. Hax on weary travelers.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "number of characters to spawn (max 10)")

_C.Functions.CreateCommand("maul", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	if _C.Functions.IsModuleEnabled("CharacterSupport") == false then
		_C.Functions.Msg("NewHint", "This command requires the CharacterSupport module to be enabled.", 5, Speaker)
		return
	elseif _C.Functions.GetModule("CharacterSupport") == nil then
		_C.Functions.Msg("NewHint", "This command requires the CharacterSupport module to be installed.", 5, Speaker)
		return
	end
	local Characters = tonumber(MsgSplit[#MsgSplit])
	if Characters == nil then Characters = 1 end
	if Characters <= 0 then Characters = 1 end
	if Characters > 10 then Characters = 10 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso end) == true and pcall(function() local _ = Player.Character.Humanoid end) == true then
				Player.Character.Humanoid.WalkSpeed = 0
				local Health = Player.Character.Humanoid.Health
				local MaxHealth = Player.Character.Humanoid.MaxHealth
				Player.Character.Humanoid.MaxHealth = 100
				Player.Character.Humanoid.Health = MaxHealth * (Health / MaxHealth)
				for _, Part in pairs(Player.Character:children()) do if Part:IsA("ForceField") then Part:Remove() end end
				for i = 1, Characters do
					coroutine.wrap(function()
						local Character = _C.Functions.GetModule("CharacterSupport").CreateCharacter(math.random(1, 2) == 1 and true or false)
						Character.Name = "Zombie"
						local Head = Character.Head
						Head.face.Texture = "http://www.roblox.com/Asset/?id=16580646"
						Head.BrickColor = BrickColor.new("Br. yellowish green")
						local Torso = Character.Torso
						Torso.BrickColor = BrickColor.new("Reddish brown")
						local LeftShoulder = Character.Torso["Left Shoulder"]
						local RightShoulder = Character.Torso["Right Shoulder"]
						local LeftHip = Character.Torso["Left Hip"]
						local RightHip = Character.Torso["Right Hip"]
						local Humanoid = Character.Humanoid
						Character["Left Arm"].BrickColor = BrickColor.new("Br. yellowish green")
						Character["Right Arm"].BrickColor = BrickColor.new("Br. yellowish green")
						Character["Left Leg"].BrickColor = BrickColor.new("Reddish brown")
						Character["Right Leg"].BrickColor = BrickColor.new("Reddish brown")
						Torso.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.sin(math.random(0, (math.pi * 100) * 2) / 100) * 25, 5, math.cos(math.random(0, (math.pi * 100) * 2) / 100) * 25)
						Character.Parent = Workspace
						Character:MakeJoints()
						coroutine.wrap(function()
							for i = 1, 0, -0.05 do
								for _, Part in pairs(Character:children()) do
									pcall(function() Part.Transparency = i end)
								end
								wait()
							end
							for _, Part in pairs(Character:children()) do
								pcall(function() Part.Transparency = 0 end)
							end
						end)()
						coroutine.wrap(function()
							while true do
								LeftHip.DesiredAngle = math.rad(45)
								RightHip.DesiredAngle = math.rad(45)
								wait(0.5)
								LeftHip.DesiredAngle = math.rad(-45)
								RightHip.DesiredAngle = math.rad(-45)
								wait(0.5)
							end
						end)()
						while true do
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Humanoid") == nil or Humanoid.Health <= 0 then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							if Humanoid.Health <= 0 then break end
							Humanoid:MoveTo(Player.Character.Torso.Position + Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)), Player.Character.Torso)
							if (Player.Character.Torso.Position - Torso.Position).magnitude < 5 then
								Player.Character.Humanoid:TakeDamage(math.random(1, 10) / 10)
								LeftShoulder.DesiredAngle = -math.rad(math.random(0, 180))
								RightShoulder.DesiredAngle = math.rad(math.random(0, 180))
							else
								LeftShoulder.DesiredAngle = -math.rad(90)
								RightShoulder.DesiredAngle = math.rad(90)
							end
							wait()
						end
						for i = 0, 1, 0.05 do
							for _, Part in pairs(Character:children()) do
								pcall(function() Part.Transparency = i end)
							end
							wait()
						end
						Character:Remove()
					end)()
				end
			end
		end
	end
end, "Maul", "Summon flesh-hungry zombies to eat players.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "number of zombies to spawn (max 10)")

_C.Functions.CreateCommand({"ignite", "i"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	local Duration = tonumber(MsgSplit[#MsgSplit])
	if Duration == nil then Duration = 0 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso end) == true and pcall(function() local _ = Player.Character.Humanoid end) == true and pcall(function() local _ = Player.Character.CoolCMDsIsOnFire end) == false then
				local Tag = Instance.new("Model", Player.Character)
				Tag.Name = "CoolCMDsIsOnFire"
				coroutine.wrap(function()
					if Duration <= 0 then return end
					wait(Duration)
					Tag:Remove()
				end)()
				coroutine.wrap(function()
					while true do
						if Player.Character == nil then break end
						if Player.Character:FindFirstChild("Humanoid") == nil or Player.Character:FindFirstChild("CoolCMDsIsOnFire") == nil then break end
						if Player.Character.Humanoid.Health <= 0 then break end
						Player.Character.Humanoid:TakeDamage(0.25)
						wait()
					end
					Tag:Remove()
				end)()
				for _, Part in pairs(Player.Character:children()) do
					if pcall(function() local _ = Part.CFrame end) == true then
						local FireHolder = Instance.new("Part", Workspace)
						FireHolder.Name = "FireHolder"
						FireHolder.FormFactor = "Custom"
						FireHolder.Size = Vector3.new(1, 1, 1)
						FireHolder.Anchored = true
						FireHolder.TopSurface = 0
						FireHolder.BottomSurface = 0
						FireHolder.Transparency = 1
						FireHolder.CanCollide = false
						local Fire = Instance.new("Fire", FireHolder)
						Fire.Heat = 10
						Fire.Size = 5
						local Sound = Instance.new("Sound", FireHolder)
						Sound.Looped = true
						Sound.Pitch = math.random(90, 110) / 100
						Sound.Volume = 1
						Sound.SoundId = "http://www.roblox.com/Asset/?id=31760113"
						Sound:Play()
						coroutine.wrap(function()
							while pcall(function() local _ = Player.Character.CoolCMDsIsOnFire end) == true do
								FireHolder.CFrame = CFrame.new(Part.Position)
								wait()
							end
							Fire.Enabled = false
							for i = 1, 0, -0.05 do
								Sound.Volume = i
								wait()
							end
							Sound:Stop()
							wait(3)
							FireHolder:Remove()
						end)()
					end
				end
			end
		end
	end
end, "Ignite", "Set players alight. Fire damages a player by 0.25 per milisecond.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "duration (in seconds, <= 0 for infinite)")

_C.Functions.CreateCommand({"unignite", "uni", "ui"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				pcall(function() Player.Character.CoolCMDsIsOnFire:Remove() end)
			end
		end
	end
end, "Unignite", "Put a player out.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand("kick", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player ~= Speaker then
				_C.Functions.Msg("NewHint", "[Kick] Player \"" ..Player.Name.. "\" removed.", 2.5, Speaker)
				_C.Functions.RemovePlayer(Player)
			end
		end
	end
end, "Kick", "Kick (remove) a player from the game.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"votekick", "vk"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if Self.VotePlayer ~= nil then
		if Speaker.Name == Self.VotePlayer then
			_C.Functions.Msg("NewHint", "[VoteKick] You can't use this command right now.", 2.5, Speaker)
		else
			if Msg:lower() == "yes" then
				for i = 1, #Self.Votes, 2 do
					if Self.Votes[i] == Speaker.Name then
						Self.Votes[i + 1] = true
						_C.Functions.Msg("NewHint", "[VoteKick] You changed your vote to \"yes\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
						return
					end
				end
				table.insert(Self.Votes, Speaker.Name)
				table.insert(Self.Votes, true)
				_C.Functions.Msg("NewHint", "[VoteKick] You voted \"yes\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
			elseif Msg:lower() == "no" then
				for i = 1, #Self.Votes, 2 do
					if Self.Votes[i] == Speaker.Name then
						Self.Votes[i + 1] = false
						_C.Functions.Msg("NewHint", "[VoteKick] You changed your vote to \"no\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
						return
					end
				end
				table.insert(Self.Votes, Speaker.Name)
				table.insert(Self.Votes, false)
				_C.Functions.Msg("NewHint", "[VoteKick] You voted \"no\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
			elseif Msg:lower() == "cancel" and _C.Functions.GetGroup(_C.Functions.GetPlayerTable(Speaker.Name).Group).Control >= _C.Functions.GetHighestGroup().Control then
				Self.VotePlayer = nil
			end
		end
	else
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), Msg:lower()) then
				if Player == Speaker then
					_C.Functions.Msg("NewHint", "[VoteKick] You can't start a vote against yourself.", 2.5, Speaker)
				else
					coroutine.wrap(function()
						Self.VotePlayer = Player.Name
						local Time = Self.VoteTime
						local Status = _C.Functions.Msg("Hint")
						while true do
							Status.Parent = Workspace
							if Self.VotePlayer == nil then
								Status.Text = "[VoteKick] The vote was canceled."
								wait(5)
								break
							end
							local Found, IsPlayer = pcall(function() return game:GetService("Players")[Self.VotePlayer]:IsA("Player") end)
							if Found == false or IsPlayer == false then
								Status.Text = "[VoteKick] Player was not found."
								wait(5)
								break
							end
							Time = Time - 5
							local Yes = 0
							local No = 0
							for i = 2, #Self.Votes, 2 do
								if Self.Votes[i] == false then
									No = No + 1
								elseif Self.Votes[i] == true then
									Yes = Yes + 1
								end
							end
							Status.Text = "[VoteKick] Player \"" ..Self.VotePlayer.. "\" is being voted for. Votes yes: " ..Yes.. ", votes no: " ..No.. "." ..(Time > 0 and " " ..tostring(math.floor(Time / 60)).. " second(s) left." or "")
							if Time <= 0 then
								if Yes == 0 and No == 0 then
									_C.Functions.Msg("Message", "[VoteKick] No one voted for or against \"" ..Self.VotePlayer.."\".", 5)
									break
								elseif Yes > No then
									pcall(function() _C.Functions.RemovePlayer(game:GetService("Players")[Self.VotePlayer]) end)
									_C.Functions.Msg("Message", "[VoteKick] Player \"" ..Self.VotePlayer.."\" was kicked by vote.", 5)
									break
								elseif Yes == No then
									_C.Functions.Msg("Message", "[VoteKick] The yes and no votes to kick \"" ..Self.VotePlayer.."\" were tied.", 5)
									break
								else
									_C.Functions.Msg("Message", "[VoteKick] Player \"" ..Self.VotePlayer.."\" was not kicked by vote.", 5)
									break
								end
							end
							wait(0.05)
						end
						Status:Remove()
						Self.Votes = {}
						Self.VotePlayer = nil
					end)()
				end
			return
			end
		end
	end
end, "VoteKick", "Vote for a player to be kicked (removed) from the game.", "player" .._C.Data.Split.. "[...]", function(Self)
	Self.VotePlayer = nil
	Self.VoteTime = 30 * 60
	Self.Votes = {}
end)

_C.Functions.CreateCommand({"banish", "ban"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Type = MsgSplit[1]:lower()
	if Type == "player" or Type == "p" then
		local Completed = false
		for i = 2, #MsgSplit do
			for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
				if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player ~= Speaker then
					table.insert(Self.Bans, Player.Name:lower())
					_C.Functions.Msg("NewHint", "[Ban] Player \"" ..Player.Name.. "\" banned.", 2.5, Speaker)
					_C.Functions.RemovePlayer(Player)
				end
			end
		end
	elseif Type == "name" or Type == "n" then
		for i = 2, #MsgSplit do
			table.insert(Self.Bans, MsgSplit[i]:lower())
		end
		_C.Functions.Msg("NewHint", "[Ban] Names added.", 2.5, Speaker)
	elseif Type == "remove" or Type == "r" then
		for i = 2, #MsgSplit do
			for x = 1, #Self.Bans do
				if Self.Bans[x] ~= nil then
					if string.match(Self.Bans[x]:lower(), MsgSplit[i]:lower()) then
						_C.Functions.Msg("NewHint", "[Ban] \"" ..Self.Bans[x].. "\" removed.", 2.5, Speaker)
						table.remove(Self.Bans, x)
					end
				end
			end
		end
	elseif Type == "remove all" or Type == "ra" then
		Self.Bans = {}
		_C.Functions.Msg("NewHint", "[Ban] Ban table reset.", 2.5, Speaker)
	end
end, "Ban", "Place a ban (removes the player on entering) on a player from the game. Player: Ban and remove a player from the game. Name: Add a name to the ban list. Remove, Remove All: Remove a name or remove all names from the ban list.", "[[player, p], [name, n], [remove, r]]" .._C.Data.Split.. "player" .._C.Data.Split.. "[...], remove all", function(Self)
	if Self.Bans == nil then Self.Bans = {"Scripterj0e", "patrickrocks", "rockclan", "mstsman", "ghostbusters2", "Glitch29", "BuildBuilder", "bobthesnailboy", "aaronzepeda33", "willguitar100", "agentxyz2", "Sparky313", "GuiDesigner", "Jidcu", "hurtroboryan", "Fijoe", "mark1023", "hutspy", "Mewtwothunder", "strongfreddy", "dsi1", "DarkShadow6Alts"} end
	if Self.CatchBan == nil then
		Self.CatchBan = game:GetService("Players").ChildAdded:connect(function(Player)
			for i = 1, #Self.Bans do
				if Player.Name:lower() == Self.Bans[i]:lower() then
					_C.Functions.Msg("Hint", "[Ban] Player \"" ..Player.Name.. "\" is banned from this server.", 3)
					_C.Functions.RemovePlayer(Player)
				end
			end
		end)
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		for i = 1, #Self.Bans do
			if Player.Name:lower() == Self.Bans[i]:lower() then
				_C.Functions.Msg("Hint", "[Ban.Startup] Player \"" ..Player.Name.. "\" is banned from this server.", 3)
				_C.Functions.RemovePlayer(Player)
			end
		end
	end
end)

_C.Functions.CreateCommand({"slap", "sl"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return false end
	local Speed = tonumber(MsgSplit[#MsgSplit - 1])
	local Strength = tonumber(MsgSplit[#MsgSplit])
	if Speed == nil then Speed = 10 end
	if Strength == nil then Strength = 0 end
	Speed = math.abs(Speed)
	Strength = math.abs(Strength)
	for i = 1, #MsgSplit - 2 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					Player.Character.Humanoid:TakeDamage(Strength)
					Player.Character.Humanoid.Sit = true
				end
				for _, Children in pairs(Player.Character:children()) do
					if Children:IsA("BasePart") then
						Children.Velocity = Children.Velocity + Vector3.new(math.random(-Speed, Speed), math.random(-Speed, Speed), math.random(-Speed, Speed))
						Children.RotVelocity = Children.RotVelocity + Vector3.new(math.random(-Speed, Speed), math.random(-Speed, Speed), math.random(-Speed, Speed))
					end
				end
			end
		end
	end
end, "Slap", "Slap people.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "speed" .._C.Data.Split.. "strength")

_C.Functions.CreateCommand({"blocker", "blk"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if Self.Activated == nil then Self.Activated = false end
	if Self.Type == nil then Self.Type = 1 end
	if Self.Names == nil then Self.Names = {} end
	if Self.ClassNames == nil then Self.ClassNames = {} end
	if MsgSplit[1]:lower() == "on" then
		Self.Activated = true
		_C.Functions.Msg("NewHint", "[Blocker] Activated.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "off" then
		Self.Activated = false
		_C.Functions.Msg("NewHint", "[Blocker] Deactivated.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "name" then
		for i = 2, #MsgSplit do
			table.insert(Self.Names, MsgSplit[i])
		end
		_C.Functions.Msg("NewHint", "[Blocker] Added.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "class" then
		for i = 2, #MsgSplit do
			table.insert(Self.ClassNames, MsgSplit[i])
		end
		_C.Functions.Msg("NewHint", "[Blocker] Added.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "type" then
		if MsgSplit[2] == "match" or MsgSplit[2] == "1" then
			Self.Type = 1
			_C.Functions.Msg("NewHint", "[Blocker] Set evaluation type to match (1).", 2.5, Speaker)
		elseif MsgSplit[2] == "exact" or MsgSplit[2] == "2" then
			Self.Type = 2
			_C.Functions.Msg("NewHint", "[Blocker] Set evaluation type to exact (2).", 2.5, Speaker)
		end
	end
	if MsgSplit[1]:lower() == "remove" then
		for i = 2, #MsgSplit do
			for x = 1, #Self.Names do
				if string.match(Self.Names[x], MsgSplit[i]) then
					table.remove(Self.Names, x)
				end
			end
			for x = 1, #Self.ClassNames do
				if string.match(Self.ClassNames[x], MsgSplit[i]) then
					table.remove(Self.ClassNames, x)
				end
			end
		end
		_C.Functions.Msg("NewHint", "[Blocker] Removed.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "remove all" then
		Self.Names = {}
		Self.ClassNames = {}
		_C.Functions.Msg("NewHint", "[Blocker] Removed all entries.", 2.5, Speaker)
	end
	if Self.Activated == true then
		if Self.DescendantAdded ~= nil then
			Self.DescendantAdded:disconnect()
			Self.DescendantAdded = nil
		end
		Self.DescendantAdded = game.DescendantAdded:connect(function(Object)
			local Remove = false
			for i = 1, #Self.Names do
				if (Self.Type == 1 and string.match(Object.Name:lower(), Self.Names[i]:lower())) or (Self.Type == 2 and Object.Name:lower() == Self.Names[i]:lower()) then
					Remove = true
				end
			end
			for i = 1, #Self.ClassNames do
				if (Self.Type == 1 and string.match(Object.ClassName:lower(), Self.ClassNames[i]:lower())) or (Self.Type == 2 and Object.ClassName:lower() == Self.ClassNames[i]:lower()) then
					Remove = true
				end
			end
			if Remove == true then
				_C.Functions.Msg("Hint", "[Blocker] \"" ..Object.ClassName.. " object (" ..Object.Name.. ") is blocked and has been removed.", 10)
				pcall(function() Object.Disabled = true end)
				pcall(function() Object.Active = false end)
				pcall(function() Object.Activated = false end)
				pcall(function() Object:Remove() end)
			end
		end)
	else
		if Self.DescendantAdded ~= nil then
			Self.DescendantAdded:disconnect()
			Self.DescendantAdded = nil
		end
	end
end, "Blocker", "Blocks objects by name or ClassName.", "on, off, name" .._C.Data.Split.. "object name, class" .._C.Data.Split.. "object ClassName, type" .._C.Data.Split.. "[match, exact]")

_C.Functions.CreateCommand({"characterappearance", "ca"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 2, #MsgSplit - (MsgSplit[1]:lower() == "default" and 0 or 1) do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]) then
				if MsgSplit[1] == "default" then
					Player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..Player.userId
				elseif MsgSplit[1] == "set" then
					Player.CharacterAppearance = MsgSplit[#MsgSplit]
				elseif MsgSplit[1] == "userid" then d=Instance.new("Message", Workspace)
					Player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..tonumber(MsgSplit[#MsgSplit])
				elseif MsgSplit[1] == "Assetid" then
					Player.CharacterAppearance = "http://www.roblox.com/Asset/?id=" ..tonumber(MsgSplit[#MsgSplit])
				end
			end
		end
	end
end, "CharacterAppearance Editor", "See command name.", "default, set, userid, Assetid" .._C.Data.Split.. "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "[url, userid, Assetid]")

_C.Functions.CreateCommand({"character", "char", "ch"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	for i = 2, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Torso") ~= nil then
					if MsgSplit[1]:lower() == "sit" then
						Player.Character.Humanoid.Sit = true
					elseif MsgSplit[1]:lower() == "jump" then
						Player.Character.Humanoid.Jump = true
					elseif MsgSplit[1]:lower() == "platformstand" or MsgSplit[1]:lower() == "ps" then
						Player.Character.Humanoid.PlatformStand = true
					elseif MsgSplit[1]:lower() == "trip" then
						Player.Character.Humanoid.PlatformStand = true
						Player.Character.Torso.RotVelocity = Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
						coroutine.wrap(function()
							wait(0.5)
							Player.Character.Humanoid.PlatformStand = false
						end)()
					elseif MsgSplit[1]:lower() == "stand" then
						Player.Character.Humanoid.Sit = false
						Player.Character.Humanoid.PlatformStand = false
					end
				end
			end
		end
	end
end, "Character Editor", "Make people do things.", "sit, jump, [platformstand, ps], trip, stand" .._C.Data.Split.. "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand("seizure", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	local Duration = tonumber(MsgSplit[#MsgSplit])
	if Duration == nil then Duration = math.random(5, 10) end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					coroutine.wrap(function()
						for i = 0, Duration, 0.25 do
							if Player == nil then break end
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Humanoid") == nil then break end
							Player.Character.Humanoid.PlatformStand = math.random(1, 3) == 1 and false or true
							for _, Part in pairs(Player.Character:children()) do
								if Part:IsA("BasePart") then
									Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								end
							end
							wait(0.25)
						end
						pcall(function() Player.Character.Humanoid.PlatformStand = false end)
					end)()
				end
			end
		end
	end
end, "Seizure", "Make people have seizures.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "time (seconds)")

_C.Functions.CreateCommand("rocket", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return false end
	local Speed = tonumber(MsgSplit[#MsgSplit - 1])
	local Duration = tonumber(MsgSplit[#MsgSplit])
	if Speed == nil then Speed = 100 end
	if Duration == nil then Duration = math.random(5, 10) end
	for i = 1, #MsgSplit - 2 do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Children in pairs(Player.Character:children()) do
					if Children:IsA("BasePart") then
						coroutine.wrap(function()
							local BodyVelocity = Instance.new("BodyVelocity", Children)
							BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
							local Fire = Instance.new("Fire", Children)
							Fire.Heat = 0
							Fire.Size = 3
							local Smoke = Instance.new("Smoke", Children)
							Smoke.Enabled = false
							Smoke.RiseVelocity = 0
							Smoke.Size = 2.5
							local Sound = Instance.new("Sound", Children)
							Sound.SoundId = "rbxasset://sounds/Shoulder fired rocket.wav"
							Sound.Pitch = 0.8
							Sound.Volume = 1
							Sound:Play()
							Children.Velocity = Children.Velocity + Vector3.new(0, 1000, 0)
							wait(0.25)
							Fire.Size = 10
							Smoke.Enabled = true
							local Sound = Instance.new("Sound", Children)
							Sound.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
							Sound.Pitch = 0.5
							Sound.Volume = 1
							Sound:Play()
							coroutine.wrap(function()
								for i = 0, 1, 0.01 do
									BodyVelocity.velocity = Vector3.new(0, Speed * i, 0)
									wait()
								end
								BodyVelocity.velocity = Vector3.new(0, Speed, 0)
							end)()
							if Duration ~= 0 then
								coroutine.wrap(function()
									wait(Duration)
									BodyVelocity:Remove()
									local Explosion = Instance.new("Explosion", Workspace)
									Explosion.Position = Children.Position
									Explosion.BlastPressure = 50000
									Explosion.BlastRadius = 25
									Fire.Enabled = false
									Smoke.Enabled = false
									Children:BreakJoints()
								end)()
							end
						end)()
					end
				end
				wait(math.random(1, 10) / 10)
			end
		end
	end
end, "Rocket", "Fires bodyparts into the air that explode after a set time.", "player" .._C.Data.Split.. "[...]" .._C.Data.Split.. "speed" .._C.Data.Split.. "duration (in seconds)")

_C.Functions.CreateCommand({"jail", "j"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Torso") ~= nil then
					local Position = Player.Character.Torso.CFrame
					local IsJailed = Instance.new("IntValue")
					IsJailed.Name = "IsJailed"
					IsJailed.Parent = Player
					coroutine.wrap(function()
						while IsJailed.Parent == Player and Player.Parent ~= nil do
							if Player.Character ~= nil then
								if Player.Character:FindFirstChild("Torso") ~= nil then
									if (Player.Character.Torso.Position - Position.p).magnitude > 10 then
										Player.Character.Torso.CFrame = Position * CFrame.new(0, 1.5, 0)
										Player.Character.Torso.Velocity = Vector3.new()
										Player.Character.Torso.RotVelocity = Vector3.new()
										_C.Functions.Msg("NewHint", (function()
											local Text = math.random(1, 12)
											if Text == 1 then
												return "You were put here for a reason."
											elseif Text == 2 then
												return "This is your new home; stay in it."
											elseif Text == 3 then
												return "You can't escape, you know."
											elseif Text == 4 then
												return "Resistance is futile!"
											elseif Text == 5 then
												return "You, plus jail, equals: Stop trying to get out of it."
											elseif Text == 6 then
												return "It's called a \"jail\" for a reason."
											elseif Text == 7 then
												return "This is why we can't have nice things."
											elseif Text == 8 then
												return "You are a reason why we can't have nice things."
											elseif Text == 9 then
												return "Not even God himself can save you now."
											elseif Text == 10 then
												return "Where is your God now?"
											elseif Text == 11 then
												return "Jailed forever."
											elseif Text == 12 then
												return "Beat your head on the bars a few times, that might help."
											end
										end)(), 5, Player)
									end
								end
							end
							wait(math.random(1, 10) / 100)
						end
						for _, Part in pairs(Workspace:children()) do
							if string.match(Part.Name, "JailPart") and string.match(Part.Name, Player.Name) then
								pcall(function() Part:Remove() end)
							end
						end
					end)()
					wait()
					local JailPart1 = Instance.new("Part")
					JailPart1.Name = Player.Name.. "JailPart"
					JailPart1.TopSurface = 0
					JailPart1.BottomSurface = 0
					JailPart1.BrickColor = BrickColor.new("Really black")
					JailPart1.FormFactor = "Custom"
					JailPart1.Anchored = true
					JailPart1.CanCollide = true
					JailPart1.Size = Vector3.new(11, 1, 11)
					local JailPart2 = JailPart1:Clone()
					JailPart2.Size = Vector3.new(0.5, 8, 0.5)
					local JailPart = JailPart1:Clone()
					JailPart.CFrame = Position * CFrame.new(0, -2, 0)
					JailPart.Parent = Workspace
					for i = 5, -4, -1 do
						local JailPart = JailPart2:Clone()
						JailPart.CFrame = Position * CFrame.new(-5, 2, i)
						JailPart.Parent = Workspace
					end
					for i = -5, 4, 1 do
						local JailPart = JailPart2:Clone()
						JailPart.CFrame = Position * CFrame.new(i, 2, -5)
						JailPart.Parent = Workspace
					end
					for i = -5, 4, 1 do
						local JailPart = JailPart2:Clone()
						JailPart.CFrame = Position * CFrame.new(5, 2, i)
						JailPart.Parent = Workspace
					end
					for i = 5, -4, -1 do
						local JailPart = JailPart2:Clone()
						JailPart.CFrame = Position * CFrame.new(i, 2, 5)
						JailPart.Parent = Workspace
					end
					local JailPart = JailPart1:Clone()
					JailPart.CFrame = Position * CFrame.new(0, 6, 0)
					JailPart.Parent = Workspace
				end
			end
		end
	end
end, "Jail", "Jail people.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"unjail", "unj", "uj"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player:children()) do
					if string.match(Part.Name, "IsJailed") then
						Part:Remove()
					end
				end
			end
		end
	end
end, "Unjail", "Unjail people.", "player" .._C.Data.Split.. "[...]")

_C.Functions.CreateCommand({"rebase", "rb"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for _, Part in pairs(Workspace:children()) do
		if Part.Name == "Base" then
			Part:Remove()
		end
	end
	Base = Instance.new("Part")
	Base.Name = "Base"
	Base.BrickColor = BrickColor.new("Dark green")
	Base.TopSurface = "Studs"
	Base.BottomSurface = "Smooth"
	Base.FormFactor = "Custom"
	Base.Size = Vector3.new(1000, 5, 1000)
	Base.CFrame = CFrame.new(0, -2, 0)
	Base.Locked = true
	Base.Anchored = true
	Base.Parent = Workspace
end, "Rebase", "Make a new base.")

_C.Functions.CreateCommand({"spawn", "sp"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Part = Instance.new("Part")
	Part.Name = "Base"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = "Smooth"
	Part.BottomSurface = "Smooth"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(9, 1, 9)
	Part.CFrame = CFrame.new(0, 1, 0)
	Part.Locked = true
	Part.Anchored = true
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 8, 0.5)
	Part.CFrame = CFrame.new(4, 5.5, 4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(4, 5.5, -4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(-4, 5.5, -4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(-4, 5.5, 4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 0.5, 8)
	Part.CFrame = CFrame.new(4, 9.75, -0.25)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(8, 0.5, 0.5)
	Part.CFrame = CFrame.new(0.25, 9.75, 4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 0.5, 8)
	Part.CFrame = CFrame.new(-4, 9.75, 0.25)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(8, 0.5, 0.5)
	Part.CFrame = CFrame.new(-0.25, 9.75, -4)
	Part.Parent = Workspace
	local Part1 = Instance.new("Part")
	Part1.Name = "Base"
	Part1.BrickColor = BrickColor.new("Dark stone grey")
	Part1.TopSurface = "Smooth"
	Part1.BottomSurface = "Smooth"
	Part1.FormFactor = "Custom"
	Part1.Size = Vector3.new(6, 0.25, 6)
	Part1.CFrame = CFrame.new(0, 1.625, 0)
	Part1.Locked = true
	Part1.Anchored = true
	Part1.Parent = Workspace
	local Part2 = Instance.new("SpawnLocation")
	Part2.Name = "Base"
	Part2.BrickColor = BrickColor.new("Dark stone grey")
	Part2.TopSurface = "Smooth"
	Part2.BottomSurface = "Smooth"
	Part2.FormFactor = "Custom"
	Part2.Size = Vector3.new(4, 0.25, 4)
	Part2.CFrame = CFrame.new(0, 1.875, 0)
	Part2.Locked = true
	Part2.Anchored = true
	Part2.Parent = Workspace
	coroutine.wrap(function()
		for i = 0, math.huge, 0.005 do
			if Part1.Parent == nil or Part2.Parent == nil then break end
			Part1.CFrame = CFrame.new(Part1.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.sin(i) * 360 * -5.25), 0)
			Part2.CFrame = CFrame.new(Part2.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.cos(i) * 360 * 2), 0)
			wait()
		end
	end)()
end, "Spawn", "Make a spawn.")

_C.Functions.CreateCommand("shutdown", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Hint = Instance.new("Hint", Workspace)
	for i = 5, 0, -1 do
		Hint.Text = "[Shutdown] Shutting down server in " ..i.. " second(s)..."
		wait(1)
	end
	Hint.Parent = nil
	pcall(function() game:GetService("Lighting"):Remove() end)
	wait()
	pcall(function() Instance.new("ManualSurfaceJointInstance", Workspace) end)
	wait(0.5)
	Hint.Parent = Workspace
	Hint.Text = "Shutdown failed!"
	wait(5)
	Hint:Remove()
end, "Shutdown", "Kill the server.")

_C.Functions.CreateCommand("team", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "new" then
		if #MsgSplit < 3 then return end
		local Team = Instance.new("Team", game:GetService("Teams"))
		Team.Name = MsgSplit[2]
		Team.TeamColor = BrickColor.new(MsgSplit[3])
		Team.AutoAssignable = false
		Team.AutoColorCharacters = false
		_C.Functions.Msg("NewHint", "[Team] Created team \"" ..Team.Name.. "\".", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "remove" then
		for i = 2, #MsgSplit do
			for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
				if Team:IsA("Team") and (string.match(Team.Name:lower(), MsgSplit[i]:lower())) then
					_C.Functions.Msg("NewHint", "[Team] Removed team \"" ..Team.Name.. "\".", 2.5, Speaker)
					Team:Remove()
				end
			end
		end
	elseif MsgSplit[1]:lower() == "remove all" then
		for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
			if Team:IsA("Team") then
				Team:Remove()
			end
		end
		_C.Functions.Msg("NewHint", "[Team] Removed all teams.", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "set" then
		if #MsgSplit <= 2 then return end
		local TeamColor = nil
		for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
			if Team:IsA("Team") and (string.match(Team.Name:lower(), MsgSplit[#MsgSplit]:lower()) or string.match(Team.TeamColor.Name:lower(), MsgSplit[#MsgSplit]:lower()) or string.match(Team.TeamColor.Number, MsgSplit[#MsgSplit]:lower())) then
				TeamColor = Team.TeamColor
				break
			end
		end
		if TeamColor == nil then
			_C.Functions.Msg("NewHint", "[Team] Unknown team name or color \"" ..MsgSplit[#MsgSplit].. "\".", 2.5, Speaker)
			return
		end
		for i = 2, #MsgSplit - 1 do
			for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
				if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
					Player.Neutral = false
					Player.TeamColor = TeamColor
				end
			end
		end
		_C.Functions.Msg("NewHint", "[Team] Set.", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "neutral" then
		for i = 2, #MsgSplit do
			for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
				if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
					Player.Neutral = true
				end
			end
		end
		_C.Functions.Msg("NewHint", "[Team] Set.", 2.5, Speaker)
	end
end, "Team Control", "Make, remove, and set teams.", "[new" .._C.Data.Split.. "name" .._C.Data.Split.. "color], [set" .._C.Data.Split.. "player" .._C.Data.Split.. "[...]]")

_C.Functions.CreateCommand("remove", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	loadstring([==[_G.CoolCMDs[_C.Init.InstanceNum]:Remove(_C.Data.AccessCode)]==])()
end, "Remove Script", "Remove CoolCMDs.")

_C.Functions.CreateCommand("break", 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	pcall(function() _C.Functions.GetPlayerTable(Player.Name).Connection:disconnect() end)
	_C.Functions.Msg("NewHint", "[CoolCMDs] Connections disconencted!.", 5, Speaker)
	error("Connections disconnected!")
end, "BReak Connection", "Purposefully error the Chat connection.")

_C.Init()