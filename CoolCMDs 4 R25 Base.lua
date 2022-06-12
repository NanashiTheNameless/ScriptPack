Players = game:GetService("Players")
Lighting = game:GetService("Lighting")
new = Instance.new
C = {}
C.Data = {}
C.Player = {}
C.CMD = {}
C.Group = {}
C.Function = {}
C.Module = {}
C.Data.Starter = "!"
C.Data.Split = ";"
C.Data.FullSplit = " \\ "
C.Data.ELSplitLeft = "!{{"
C.Data.ELSplitRight = "}}"
C.Data.AccessCode = 7284
C.Data.AccessDenied = "Access denied to CoolCMDs instance %d. Incorrect access code \"%s\"."
C.Data.Version = "4 R25"
C.Init = {}
setmetatable(C.Init, {__call = function(_, Show)
	Players.ChildAdded:connect(C.Function.CreatePlayerTable)
	Players.ChildRemoved:connect(C.Function.RemovePlayerTable)
	for _, Player in pairs(Players:GetPlayers()) do pcall(function() C.Function.CreatePlayerTable(Player) end) end
	C.Function.LoadModule(true, nil, false)
	C.Init.FinishTime = tick()
	C.Init.ElapsedTime = C.Init.FinishTime - C.Init.StartTime
	if Show == true then
		for _, Player in pairs(Players:GetPlayers()) do
			if Player:FindFirstChild("PlayerGui") ~= nil then
				coroutine.wrap(function()
					local Gui = new("ScreenGui", Player.PlayerGui)
					Gui.Name = "CoolCMDs Gui"
					local Button = new("ImageButton", Gui)
					Button.Name = "Button"
					Button.AutoButtonColor = false
					Button.Size = UDim2.new(0, 0, 0, 0)
					Button.Position = UDim2.new(0.5, 0, 0.5, 0)
					Button.BackgroundTransparency = 0.5
					Button.BackgroundColor3 = Color3.new(0, 0, 0)
					Button.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
					Button:TweenSizeAndPosition(UDim2.new(0, 400, 0, 400), UDim2.new(0.5, -200, 0.5, -200), "Out", "Quad", 1.5, false)
					local Label1 = new("TextLabel", Gui)
					Label1.Size = UDim2.new(0, 400, 0, 30)
					Label1.Position = UDim2.new(0.5, -200, 0.5, -230)
					Label1.BackgroundColor3 = Color3.new(0, 0, 0)
					Label1.BackgroundTransparency = 1
					Label1.TextTransparency = 1
					Label1.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
					Label1.Text = ""
					Label1.TextColor3 = Color3.new(1, 1, 1)
					Label1.FontSize = "Size12"
					local Label2 = new("TextLabel", Gui)
					Label2.Size = UDim2.new(0, 400, 0, 30)
					Label2.Position = UDim2.new(0.5, -200, 0.5, 200)
					Label2.BackgroundColor3 = Color3.new(0, 0, 0)
					Label2.BackgroundTransparency = 1
					Label2.TextTransparency = 1
					Label2.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
					Label2.Text = "(Click the image to close this GUI)"
					Label2.TextColor3 = Color3.new(1, 1, 1)
					Label2.FontSize = "Size8"
					wait(1.5)
					local Clicked = false
					coroutine.wrap(function()
						while Gui.Parent ~= nil and Clicked == false do
							Button.Image = "http://www.roblox.com/Asset/?id=54995031"
							Label1.Text = "CoolCMDs version " ..C.Data.Version.. " loaded successfully."
							wait(2.5)
							if Gui.Parent == nil or Clicked == true then break end
							Button.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=400&y=400&Format=Png&username=DarkShadow6"
							Label1.Text = string.reverse(".6wodahSkraD yb detaerC")
							wait(2.5)
						end
					end)()
					for i = 1, 0, -0.05 do
						Label1.TextTransparency = i
						Label1.BackgroundTransparency = (i * 0.5) + 0.5
						Label2.TextTransparency = i
						Label2.BackgroundTransparency = (i * 0.5) + 0.5
						wait()
					end
					Label1.BackgroundTransparency = 0.5
					Label1.TextTransparency = 0
					Label1.BackgroundTransparency = 0.5
					Label1.TextTransparency = 0
					Button.MouseButton1Up:connect(function()
						if Clicked == true then return end
						Clicked = true
						Label1.Text = ""
						Label2.Text = ""
						Button:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Back", 1, false)
						Label1:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Back", 1, false)
						Label2:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Back", 1, false)
						wait(1)
						Gui:Remove()
					end)
				end)()
			end
		end
	end
end})
C.Init.StartTime = tick()
C.Init.FinishTime = -1
C.Init.ElapsedTime = -1
C.Init.InstanceNum = 0
if type(_G.CoolCMDs) ~= "table" then _G.CoolCMDs = {} end
table.insert(_G.CoolCMDs, {})
for i = 1, #_G.CoolCMDs do C.Init.InstanceNum = C.Init.InstanceNum + 1 end
if C.Init.InstanceNum == 0 then C.Init.InstanceNum = 1 end
_G.CoolCMDs[C.Init.InstanceNum].GetInstance = function(Self, Code)
	if Self ~= _G.CoolCMDs[C.Init.InstanceNum] then return end
	if Code == C.Data.AccessCode then
		return script, script.Parent
	else
		error(string.format(C.Data.AccessDenied, C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end
_G.CoolCMDs[C.Init.InstanceNum].GetTable = function(Self, Code)
	if Self ~= _G.CoolCMDs[C.Init.InstanceNum] then return end
	if Code == C.Data.AccessCode then
		return C
	else
		error(string.format(C.Data.AccessDenied, C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end
_G.CoolCMDs[C.Init.InstanceNum].Remove = function(Self, Code)
	if Self ~= _G.CoolCMDs[C.Init.InstanceNum] then return false end
	if Code == C.Data.AccessCode then
		C.Function.LoadModule(false, nil, false)
		_G.CoolCMDs[C.Init.InstanceNum] = nil
		C = nil
		local Msg = new("Hint", Workspace)
		Msg.Text = "[CoolCMDs] Removed."
		wait(1)
		Msg:Remove()
		if pcall(function() script:Remove() end) == false then
			local Msg = new("Hint", Workspace)
			Msg.Text = "[CoolCMDs Error] Script was not removed!"
			wait(5)
			Msg:Remove()
		end
		return true, script
	else
		error(string.format(C.Data.AccessDenied, C.Init.InstanceNum, Code == nil and "nil" or tostring(Code)), 0)
	end
end
C.Function.Msg = function(Format, Text, Time, Parent)
	if Parent == nil then Parent = Workspace end
	if Format == "Default" or Format == nil then Format = "Message" end
	if Parent:IsA("Player") == true then Parent = Parent:FindFirstChild("PlayerGui") end
	if type(Text) == "string" then
		local Text2 = ""
		for i = 1, Text:len() do
			Text2 = Text2 .. string.sub(Text, i, i) .. string.char(2)
		end
		Text = Text2
		Text2 = nil
	end
	if Format == "Hint" or Format == "Message" then
		local Msg = new(Format)
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
		local Gui = new("ScreenGui", Parent)
		Gui.Name = "CoolCMDs NewHint"
		local Hint = new("TextLabel", Gui)
		Hint.Name = "Hint"
		Hint.Size = UDim2.new(1, 0, 0, 20)
		Hint.Position = UDim2.new(0, 0, 0, (HintSpace * 20) - 20)
		Hint.BackgroundColor3 = Color3.new(0, 0, 0)
		Hint.BorderSizePixel = 0
		Hint.Text = Text
		Hint.TextColor3 = Color3.new(1, 1, 1)
		Hint.FontSize = "Size12"
		Hint:TweenPosition(UDim2.new(0, 0, 0, HintSpace * 20), "Out", "Back", 0.5, false)
		if Time ~= nil then
			coroutine.wrap(function()
				wait(Time)
				pcall(function()
					Gui.Name = "CoolCMDs Old NewHint"
					Hint:TweenPosition(UDim2.new(0, 0, 0, -20), "In", "Quad", 0.5, false)
				end)
				local i = 0
				for _, Part in pairs(Parent:children()) do
					if Part.Name == "CoolCMDs NewHint" then
						pcall(function() Part.Hint:TweenPosition(UDim2.new(0, 0, 0, i * 20), "In", "Quad", 0.5, true) end)
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
C.Function.CreatePlayerTable = function(Player, Group)
	if Player == nil then return false end
	if pcall(function() return Player.Name end) == false then return false end
	if not Player:IsA("Player") then return false end
	table.insert(C.Player, {Name = Player.Name, Group = Group ~= nil and Group or C.Function.GetLowestGroup().Name, Connection = Player.Chatted:connect(function(Msg) C.Function.CatchChat(Msg, Player) end)})
	return true
end
C.Function.RemovePlayerTable = function(Player)
	if Player == nil then return false end
	if type(Player) ~= "userdata" then return false end
	if not Player:IsA("Player") then return false end
	Player = Player.Name
	for i = 1, #C.Player do
		if C.Player[i] ~= nil then
			if C.Player[i].Name == Player then
				pcall(function() C.Player[i].Connection:disconnect() end)
				table.remove(C.Player, i)
			end
		end
	end
	return true
end
C.Function.RemovePlayer = function(Player)
	if Player == nil then return false end
	if type(Player) ~= "userdata" then return false end
	if not Player:IsA("Player") then return false end
	local Tag = new("Model")
	Tag.Name = Player.Name
	Tag.Parent = Players
	pcall(function() Player:Remove() end)
end
C.Function.CreateGroup = function(Name, Control, FullName, Help)
	if Control < 1 then Control = 1 end
	table.insert(C.Group, {Name = Name, Control = Control, FullName = FullName, Help = Help})
	return true
end
C.Function.CreateCommand = function(Text, Control, Function, FullName, Help, HelpArgs, Startup)
	if Control < 1 then Control = 1 end
	table.insert(C.CMD, {Command = Text, Control = Control, Trigger = Function, FullName = FullName, Help = Help, HelpArgs = HelpArgs == nil and "None" or HelpArgs})
	if Startup ~= nil then Startup(C.CMD[#C.CMD]) end
	return true
end
C.Function.RemoveCommand = function(Command)
	local i = 1
	while i < #C.CMD do
		if type(C.CMD[i].Command) == "string" then
			if C.CMD[i].Command == Command then
				table.remove(C.CMD, i)
				return true
			else
				i = i + 1
			end
		elseif type(C.CMD[i].Command) == "table" then
			for x = 1, #C.CMD[i].Command do
				if C.CMD[i].Command[x] == Command then
					table.remove(C.CMD, i)
					return true
				else
					i = i + 1
				end
			end
		end
	end
	return false
end
C.Function.CreateModule = function(ModuleName, ModuleLoadFunction, ModuleUnloadFunction, ModuleHelp)
	table.insert(C.Module, {Name = ModuleName, Load = ModuleLoadFunction, Unload = ModuleUnloadFunction == nil and function() return true end or ModuleUnloadFunction, Help = ModuleHelp, Enabled = false})
	return true
end
C.Function.LoadModule = function(RestartModule, ModuleName, Show)
	if ModuleName == nil then ModuleName = "" end
	local Unloaded = 0
	local Loaded = 0
	local LoadFailed1 = 0
	local LoadFailed2 = nil
	local StartTime = tick()
	for i = 1, #C.Module do
		if string.match(C.Module[i].Name, ModuleName) then
			local Status = C.Function.Msg("Hint")
			local StatusPrefix = "[Module: " ..C.Module[i].Name.. "] "
			Status.Changed:connect(function(Property)
				if Property == "Text" then
					if string.sub(Status.Text, 0, string.len(StatusPrefix)) == StatusPrefix then return false end
					Status.Text = StatusPrefix .. Status.Text
				end
			end)
			if Show == false then Status.Parent = nil end
			Status.Text = "Waiting for module to be unloaded..."
			while C.Module[i].Load == nil do wait() end
			Status.Text = "Unloading module (1/3)..."
			C.Module[i].Enabled = false
			C.Module[i].Unload(C.Module[i], Status)
			Status.Text = "Unloading module (2/3)..."
			local TemporaryModule = C.Module[i].Load
			C.Module[i].Load = nil
			Status.Text = "Unloading module (3/3)..."
			C.Module[i].Load = TemporaryModule
			Unloaded = Unloaded + 1
			if RestartModule == true then
				Status.Text = "Loading module..."
				C.Module[i].Enabled = true
				local LoadCompleted = C.Module[i].Load(C.Module[i], Status)
				if LoadCompleted ~= true then
					Status.Text = "Module failed to load successfully. Unloading..."
					C.Function.LoadModule(false, C.Module[i].Name, false)
					C.Module[i].Enabled = false
					Status.Text = "Module unloaded."
					LoadFailed1 = LoadFailed1 + 1
					LoadFailed2 = LoadFailed2 == nil and C.Module[i].Name or LoadFailed2.. ", " ..C.Module[i].Name
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
		local Status = C.Function.Msg("Hint")
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
C.Function.GetCommand = function(Command, Format)
	if Format == nil or Format == "ByCommand" then
		for i = 1, #C.CMD do
			if type(C.CMD[i].Command) == "string" then
				if C.CMD[i].Command == Command then
					return C.CMD[i]
				end
			elseif type(C.CMD[i].Command) == "table" then
				for x = 1, #C.CMD[i].Command do
					if C.CMD[i].Command[x] == Command then
						return C.CMD[i]
					end
				end
			end
		end
	elseif Format == "ByFullName" then
		for i = 1, #C.CMD do
			if C.CMD[i].FullName == Command then
				return C.CMD[i]
			end
		end
	elseif Format == "ByControl" then
		for i = 1, #C.CMD do
			if C.CMD[i].Control == Command then
				return C.CMD[i]
			end
		end
	end
	return
end
C.Function.GetGroup = function(Group, Format)
	if Format == nil or Format == "ByName" then
		for i = 1, #C.Group do
			if C.Group[i].Name == Group then
				return C.Group[i]
			end
		end
	elseif Format == "ByFullName" then
		for i = 1, #C.Group do
			if C.Group[i].FullName == Group then
				return C.Group[i]
			end
		end
	elseif Format == "ByControl" then
		for i = 1, #C.Group do
			if C.Group[i].Control == Group then
				return C.Group[i]
			end
		end
	end
	return
end
C.Function.GetLowestGroup = function()
	local Max = math.huge
	for i = 1, #C.Group do
		if C.Group[i].Control < Max then
			Max = C.Group[i].Control
		end
	end
	return C.Function.GetGroup(Max, "ByControl")
end
C.Function.GetHighestGroup = function()
	local Max = -math.huge
	for i = 1, #C.Group do
		if C.Group[i].Control > Max then
			Max = C.Group[i].Control
		end
	end
	return C.Function.GetGroup(Max, "ByControl")
end
C.Function.GetModule = function(ModuleName)
	for i = 1, #C.Module do
		if C.Module[i].Name == ModuleName then
			return C.Module[i]
		end
	end
	return
end
C.Function.IsModuleEnabled = function(ModuleName)
	for i = 1, #C.Module do
		if C.Module[i].Name == ModuleName then
			return C.Module[i].Enabled
		end
	end
	return
end
C.Function.GetPlayerTable = function(Player)
	for i = 1, #C.Player do
		if C.Player[i].Name == Player then
			return C.Player[i]
		end
	end
end
C.Function.CreateScript = function(Source, Parent, DebugEnabled, IsLocal)
	local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["Quick" ..(IsLocal == true and "Local" or "").. "Script"]
	QuickScript.Name = "Quick" ..(IsLocal == true and "Local" or "").. "Script (" ..tick().. ")"
	QuickScript.DynamicSource.Value = Source
	QuickScript.Debug.Value = DebugEnabled
	wait()
	if Parent.ClassName == "Player" and IsLocal then
		QuickScript.Parent = Parent:FindFirstChild("Backpack") or Parent:FindFirstChild("PlayerGui") or Parent.Character
	else
		QuickScript.Parent = Parent
	end
end
C.Function.Explode = function(Divider, Text)
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
C.Function.GetRecursiveChildren = function(Source, Name, SearchType, Children)
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
			C.Function.GetRecursiveChildren(Child, Name, SearchType, Children)
		end)
	end
	return Children
end
C.Function.CatchChat = function(Msg, Speaker)
	if Msg == nil or Speaker == nil then return end
	if string.sub(Msg, 0, 5) == "lego " then
		Msg = string.sub(Msg, 6)
	end
	if C.Data.Starter ~= nil then
		if string.sub(Msg, 0, C.Data.Starter:len()) == C.Data.Starter then
			Msg = string.sub(Msg, C.Data.Starter:len() + 1)
		else
			return
		end
	end
	local FullMsgSplit = C.Function.Explode(C.Data.FullSplit, Msg)
	if #FullMsgSplit > 1 then
		for i = 1, #FullMsgSplit do
			coroutine.wrap(function() C.Function.CatchChat(C.Data.Starter .. FullMsgSplit[i], Speaker) end)()
		end
		return
	end
	for i = 1, #C.CMD do
		if (function()
			if type(C.CMD[i].Command) == "string" then
				if C.Function.Explode(C.Data.Split, Msg)[1]:lower() == C.CMD[i].Command:lower() then
					return true
				end
			elseif type(C.CMD[i].Command) == "table" then
				for x = 1, #C.CMD[i].Command do
					if C.Function.Explode(C.Data.Split, Msg)[1]:lower() == C.CMD[i].Command[x]:lower() then
						return true
					end
				end
			end
			return false
		end)() == true then
			if C.Function.GetPlayerTable(Speaker.Name) ~= nil then
				if C.Function.GetGroup(C.Function.GetPlayerTable(Speaker.Name).Group) ~= nil then
					if C.Function.GetGroup(C.Function.GetPlayerTable(Speaker.Name).Group).Control >= C.CMD[i].Control then
						local OrigMsgSplit = C.Function.Explode(C.Data.Split, Msg)
						table.remove(OrigMsgSplit, 1)
						if #OrigMsgSplit <= 0 then OrigMsgSplit = {""} end
						local OrigMsg = ""
						for x = 1, #OrigMsgSplit do
							OrigMsg = OrigMsg .. OrigMsgSplit[x] .. (x == #OrigMsgSplit and "" or C.Data.Split)
						end
						local MsgSplit = C.Function.Explode(C.Data.Split, Msg)
						table.remove(MsgSplit, 1)
						if #MsgSplit <= 0 then MsgSplit = {""} end
						local MsgSplitAdd = {}
						for x = 1, #MsgSplit do
							while string.match(MsgSplit[x], C.Data.ELSplitLeft) ~= nil and C.Function.GetGroup(C.Function.GetPlayerTable(Speaker.Name).Group).Control >= C.Function.GetHighestGroup().Control do
								local RealStart, Start = string.find(MsgSplit[x], C.Data.ELSplitLeft)
								local End, RealEnd = string.find(MsgSplit[x], C.Data.ELSplitRight)
								if RealStart ~= nil and Start == nil then
									Start = RealStart
								end
								if End ~= nil and RealEnd == nil then
									RealEnd = End
								end
								if RealStart ~= nil and Start ~= nil and End ~= nil and RealEnd ~= nil then
									RealStart = RealStart - 1
									Start = Start + 1
									RealEnd = RealEnd + 1
									End = End - 1
									local Source = string.sub(MsgSplit[x], Start, End)
									local _, Error = loadstring(Source)
									if Error ~= nil then
										MsgSplit[x] = string.sub(MsgSplit[x], 0, RealStart) .. "[C.EmbeddedLua, " ..string.sub(Error, 9) .. string.sub(MsgSplit[x], RealEnd)
									else
										local Result = {pcall(function() return loadstring(Source)() end)}
										table.remove(Result, 1)
										if #Result == 0 then
											MsgSplit[x] = string.sub(MsgSplit[x], 0, RealStart).. "nil" ..string.sub(MsgSplit[x], RealEnd)
										elseif #Result == 1 then
											MsgSplit[x] = string.sub(MsgSplit[x], 0, RealStart).. tostring(Result[1]) ..string.sub(MsgSplit[x], RealEnd)
										else
											for y = 1, #Result do
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
							elseif MsgSplit[x]:lower() == "vets" or MsgSplit[x]:lower() == "veterans" then
								for _, Player in pairs(Players:GetPlayers()) do
									if Player.AccountAge >= 365 then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "friends" then
								for _, Player in pairs(Players:GetPlayers()) do
									if Player:IsFriendsWith(Speaker.userId) == true or Player:IsBestFriendsWith(Speaker.userId) == true then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "bestfriends" then
								for _, Player in pairs(Players:GetPlayers()) do
									if Player:IsBestFriendsWith(Speaker.userId) == true then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "notfriends" then
								for _, Player in pairs(Players:GetPlayers()) do
									if Player:IsFriendsWith(Speaker.userId) == false and Player:IsBestFriendsWith(Speaker.userId) == false then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "notbestfriends" then
								for _, Player in pairs(Players:GetPlayers()) do
									if Player:IsBestFriendsWith(Speaker.userId) == false then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							elseif MsgSplit[x]:lower() == "others" then
								for _, Player in pairs(Players:GetPlayers()) do
									if Player ~= Speaker then
										table.insert(MsgSplitAdd, Player.Name)
										if type(MsgSplit[x]) ~= "table" then MsgSplit[x] = {} end
										table.insert(MsgSplit[x], #MsgSplitAdd)
									end
								end
							else
								for y = 1, #C.Group do
									if type(MsgSplit[x]) == "string" then
										if C.Group[y].Name:lower() == MsgSplit[x]:lower() then
											for z = 1, #C.Player do
												if C.Player[z].Group == C.Group[y].Name then
													table.insert(MsgSplitAdd, C.Player[z].Name)
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
							Msg2 = Msg2 .. MsgSplit[x] .. (x == #MsgSplit and "" or C.Data.Split)
						end
						C.CMD[i].Trigger(Msg2, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, C.CMD[i], C.Function.Explode(C.Data.Split, Msg)[1])
					else
						C.Function.Msg("Message", "This command is restricted.", 2.5, Speaker)
						wait(2.5)
						C.Function.Msg("Message", "Your control: " ..C.Function.GetGroup(C.Function.GetPlayerTable(Speaker.Name).Group).Control.. ". Required control: " ..C.CMD[i].Control.. ".", 2.5, Speaker)
					end
				else
					C.Function.GetPlayerTable(Speaker).Group = C.Function.GetLowestGroup()
					C.Function.Msg("Message", "An error has occurred.", 2.5, Speaker)
					wait(2.5)
					C.Function.Msg("Message", "You are not in a group.", 2.5, Speaker)
					wait(2.5)
					C.Function.Msg("Message", "You have been assigned to the group: \"" ..C.Function.GetPlayerTable(Speaker).Group.. "\".", 2.5, Speaker)
				end
			end
		end
	end
end