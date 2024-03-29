if script == nil then
	local Hint = Instance.new("Hint", Workspace)
	Hint.Text = "[CoolCMDs] Script not found."
	wait(3)
	Hint:Remove()
	return
end

if script:FindFirstChild("DynamicSource") ~= nil then
	local Debug = script:FindFirstChild("Debug") ~= nil and true or false
	local Source = script.DynamicSource.Value
	if string.sub(Source, 0, 1) == "=" then
		Source = "print(" ..string.sub(Source, 2).. ")"
	end
	local _, Error = loadstring(Source)
	if Error ~= nil then
		if Debug == true then
			local ErrorMessage = Instance.new("Hint", Workspace)
			ErrorMessage.Text = "[CoolCMDs.DynamicSource.Value, " ..string.sub(Error, 9)
			game:GetService("Debris"):AddItem(ErrorMessage, 10)
		end
		script:Remove()
	else
		if Debug == true then
			local SuccessMessage = Instance.new("Hint", Workspace)
			SuccessMessage.Text = "[CoolCMDs] Running script..."
			game:GetService("Debris"):AddItem(SuccessMessage, 1)
			game:GetService("Debris"):AddItem(SuccessMessage, 1)
		end
		wait()
		Source = string.gsub(Source, "print%(", "CoolCMDsPrint(")
		Source = string.gsub(Source, "print'", "CoolCMDsPrint '")
		Source = string.gsub(Source, "print\"", "CoolCMDsPrint \"")
		Source = string.gsub(Source, "print '", "CoolCMDsPrint '")
		Source = string.gsub(Source, "print \"", "CoolCMDsPrint \"")
		Source = 'function CoolCMDsPrint(...)\
	local Arguments = {...}\
	local Result = tostring(Arguments[1])\
	for i = 2, #Arguments do Result = Result.. "\t" ..tostring(Arguments[i]) end\
	local Display = Instance.new("Hint", Workspace)\
	Display.Text = "[CoolCMDs] " ..Result\
	game:GetService("Debris"):AddItem(Display, 10)\
	print(Result)\
	return Result\
end\
function printf(...)\
	CoolCMDsPrint(string.format(...))\
end\
' ..Source
		loadstring(Source)()
	end
else

script.Name = "��" ..string.char(1).. "Cool" ..string.char(1).. "CMDs" ..string.char(1).. "��"
script.Parent = game:GetService("ScriptContext")

CoolCMDs = {}
CoolCMDs.Data = {}
CoolCMDs.Players = {}
CoolCMDs.CommandHandles = {}
CoolCMDs.GroupHandles = {}
CoolCMDs.Functions = {}
CoolCMDs.Modules = {}

CoolCMDs.Initialization = {}
CoolCMDs.Initialization.StartTime = Workspace.DistributedGameTime
CoolCMDs.Initialization.FinishTime = -1
CoolCMDs.Initialization.ElapsedTime = -1
CoolCMDs.Initialization.InstanceNumber = 0
if type(_G.CoolCMDs) ~= "table" then _G.CoolCMDs = {} end
table.insert(_G.CoolCMDs, {})
for i = 1, #_G.CoolCMDs do CoolCMDs.Initialization.InstanceNumber = CoolCMDs.Initialization.InstanceNumber + 1 end
if CoolCMDs.Initialization.InstanceNumber == 0 then CoolCMDs.Initialization.InstanceNumber = 1 end
_G.CoolCMDs[CoolCMDs.Initialization.InstanceNumber].GetInstance = function(_, Code)
	if Code == CoolCMDs.Data.AccessCode then
		return script, script.Parent
	else
		error("Access denied to CoolCMDs " ..CoolCMDs.Data.Version.. ", instance " ..CoolCMDs.Initialization.InstanceNumber.. ". Incorrect access code \"" ..(Code == nil and "nil" or tostring(Code)).. "\".")
	end
end
_G.CoolCMDs[CoolCMDs.Initialization.InstanceNumber].GetTable = function(_, Code)
	if Code == CoolCMDs.Data.AccessCode then
		return CoolCMDs
	else
		error("Access denied to CoolCMDs " ..CoolCMDs.Data.Version.. ", instance " ..CoolCMDs.Initialization.InstanceNumber.. ". Incorrect access code \"" ..(Code == nil and "nil" or tostring(Code)).. "\".")
	end
end
_G.CoolCMDs[CoolCMDs.Initialization.InstanceNumber].Remove = function(_, Code)
	if Code == CoolCMDs.Data.AccessCode then
		CoolCMDs.Functions.LoadModule(false, nil, true)
		_G.CoolCMDs[CoolCMDs.Initialization.InstanceNumber] = nil
		CoolCMDs = nil
		local Message = Instance.new("Hint", Workspace)
		Message.Text = "CoolCMDs successfully unloaded."
		wait(5)
		Message.Parent = Workspace
		Message.Text = "Removing script..."
		wait(1)
		Message:Remove()
		script.Parent = script.Parent
		for i = 1, 10 do if script ~= nil then script:Remove() end end
		if script.Parent ~= nil then
			local Message = Instance.new("Hint", Workspace)
			Message.Text = "Error: Script was not removed!"
			wait(5)
			Message:Remove()
		end
		return true, script
	else
		CoolCMDs.Functions.CreateMessage("Hint", "Warning: Failed removal of CoolCMDs " ..CoolCMDs.Data.Version.. ", instance " ..CoolCMDs.Initialization.InstanceNumber.. ".", 5)
		wait(5)
		CoolCMDs.Functions.CreateMessage("Hint", "Reason: Incorrect access code \"" ..(Code == nil and "nil" or Code).. "\".", 5)
		return false, Code
	end
end

CoolCMDs.Data.SplitCharacter = ";"
CoolCMDs.Data.AccessCode = nil
CoolCMDs.Data.Version = "3.7.0"

CoolCMDs.Functions.CreateMessage = function(Format, MessageText, ShowTime, MessageParent)
	if Format == "Default" or Format == nil then Format = "Message" end
	if MessageParent == nil then MessageParent = Workspace end
	if MessageParent:IsA("Player") then
		if MessageParent:FindFirstChild("PlayerGui") == nil then return end
		MessageParent = MessageParent.PlayerGui
	end
	local Message = Instance.new(Format)
	Message.Text = MessageText ~= nil and MessageText or ""
	Message.Parent = MessageParent
	if ShowTime ~= nil then
		coroutine.wrap(function()
			wait(ShowTime)
			Message:Remove()
		end)()
	end
	return Message
end
CoolCMDs.Functions.CreatePlayerTable = function(Player, PlayerGroup)
	if Player == nil then return false end
	if pcall(function() return Player.Name end) == false then return false end
	if not Player:IsA("Player") then return false end
	Player.Chatted:connect(function(Message) CoolCMDs.Functions.CatchMessage(Message, Player) end)
	table.insert(CoolCMDs.Players, {Name = Player.Name, Group = PlayerGroup ~= nil and PlayerGroup or CoolCMDs.Functions.GetLowestGroup().Name})
	return true
end
CoolCMDs.Functions.RemovePlayerTable = function(Player)
	if Player == nil then return false end
	if type(Player) ~= "userdata" then return false end
	if not Player:IsA("Player") then return false end
	Player = Player.Name
	for i = 1, #CoolCMDs.Players do
		if CoolCMDs.Players[i].Name == Player then
			table.remove(CoolCMDs.Players, i)
		end
	end
	return true
end
CoolCMDs.Functions.RemovePlayer = function(Player)
	if Player == nil then return false end
	if type(Player) ~= "userdata" then return false end
	if not Player:IsA("Player") then return false end
	local Tag = Instance.new("Model")
	Tag.Name = Player.Name
	Tag.Parent = game:GetService("Players")
	pcall(function() Player:Remove() end)
end
CoolCMDs.Functions.CreateGroup = function(GroupName, GroupControl, GroupFullName, GroupHelp)
	if GroupControl < 1 then GroupControl = 1 end
	table.insert(CoolCMDs.GroupHandles, {Name = GroupName, Control = GroupControl, FullName = GroupFullName, Help = GroupHelp})
	return true
end
CoolCMDs.Functions.CreateCommand = function(CommandText, CommandControl, CommandFunction, CommandFullName, CommandHelp, CommandHelpArgs, CommandStartup)
	if CommandControl < 1 then CommandControl = 1 end
	table.insert(CoolCMDs.CommandHandles, {Command = CommandText, Control = CommandControl, Trigger = CommandFunction, FullName = CommandFullName, Help = CommandHelp, HelpArgs = CommandHelpArgs, Enabled = false})
	if CommandStartup ~= nil then CommandStartup(CoolCMDs.Functions.GetCommand(CommandFullName, "ByFullName")) end
	return true
end
CoolCMDs.Functions.RemoveCommand = function(Command)
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
CoolCMDs.Functions.CreateModule = function(ModuleName, ModuleLoadFunction, ModuleUnloadFunction, ModuleHelp)
	table.insert(CoolCMDs.Modules, {Name = ModuleName, Load = ModuleLoadFunction, Unload = ModuleUnloadFunction == nil and function() return true end or ModuleUnloadFunction, Help = ModuleHelp, Enabled = false})
	return true
end
CoolCMDs.Functions.LoadModule = function(RestartModule, ModuleName, ShowMessage)
	if ModuleName == nil then ModuleName = "" end
	local Unloaded = 0
	local Loaded = 0
	local LoadFailed1 = 0
	local LoadFailed2 = nil
	local StartTime = Workspace.DistributedGameTime
	for i = 1, #CoolCMDs.Modules do
		if string.match(CoolCMDs.Modules[i].Name, ModuleName) then
			local StatusMessage = CoolCMDs.Functions.CreateMessage("Hint")
			local StatusMessagePrefix = "[Module: " ..CoolCMDs.Modules[i].Name.. "] "
			StatusMessage.Changed:connect(function(Property)
				if Property == "Text" then
					if string.sub(StatusMessage.Text, 0, string.len(StatusMessagePrefix)) == StatusMessagePrefix then return false end
					StatusMessage.Text = StatusMessagePrefix .. StatusMessage.Text
				end
			end)
			if ShowMessage == false then StatusMessage.Parent = nil end
			StatusMessage.Text = "Waiting for module to be unloaded..."
			while CoolCMDs.Modules[i].Load == nil do wait() end
			StatusMessage.Text = "Unloading module (1/3)..."
			CoolCMDs.Modules[i].Unload(CoolCMDs.Modules[i], StatusMessage)
			StatusMessage.Text = "Unloading module (2/3)..."
			local TemporaryModule = CoolCMDs.Modules[i].Load
			CoolCMDs.Modules[i].Load = nil
			StatusMessage.Text = "Unloading module (3/3)..."
			CoolCMDs.Modules[i].Load = TemporaryModule
			CoolCMDs.Modules[i].Enabled = false
			Unloaded = Unloaded + 1
			if RestartModule == true then
				StatusMessage.Text = "Loading module..."
				CoolCMDs.Modules[i].Enabled = true
				local LoadCompleted = CoolCMDs.Modules[i].Load(CoolCMDs.Modules[i], StatusMessage)
				if LoadCompleted ~= true then
					StatusMessage.Text = "Module failed to load successfully. Unloading..."
					CoolCMDs.Functions.LoadModule(false, CoolCMDs.Modules[i].Name, false)
					CoolCMDs.Modules[i].Enabled = false
					StatusMessage.Text = "Module unloaded."
					LoadFailed1 = LoadFailed1 + 1
					LoadFailed2 = LoadFailed2 == nil and CoolCMDs.Modules[i].Name or LoadFailed2.. ", " ..CoolCMDs.Modules[i].Name
					LoadFailed2 = LoadFailed2.. " (" ..tostring(LoadCompleted).. ")"
				else
					Loaded = Loaded + 1
				end
			end
			StatusMessage:Remove()
		end
	end
	local FinishTime = Workspace.DistributedGameTime
	local ElapsedTime = FinishTime - StartTime
	if ShowMessage == true then
		local StatusMessage = CoolCMDs.Functions.CreateMessage("Hint")
		StatusMessage.Text = "Module(s) unloaded: " ..Unloaded.. ". Module(s) loaded: " ..Loaded.. ". Module(s) failed: " ..LoadFailed1.. ". Elapsed time: " ..ElapsedTime.. " seconds."
		wait(5)
		if LoadFailed1 > 0 and LoadFailed2 ~= nil then
			StatusMessage.Text = "The following " ..LoadFailed1.. " module(s) failed to load: " ..LoadFailed2
			wait(5)
		end
		StatusMessage:Remove()
	end
	return Unloaded, Loaded, StartTime, FinishTime, ElapsedTime
end
CoolCMDs.Functions.GetCommand = function(Command, Format)
	if Format == nil or Format == "ByCommand" then
		for i = 1, #CoolCMDs.CommandHandles do
			if type(CoolCMDs.CommandHandles[i].Command) == "string" then
				if CoolCMDs.CommandHandles[i].Command == Command then
					return CoolCMDs.CommandHandles[i]
				end
			elseif type(CoolCMDs.CommandHandles[i].Command) == "table" then
				for x = 1, #CoolCMDs.CommandHandles[i].Command do
					if CoolCMDs.CommandHandles[i].Command[x] == Command then
						return CoolCMDs.CommandHandles[i]
					end
				end
			end
		end
	elseif Format == "ByFullName" then
		for i = 1, #CoolCMDs.CommandHandles do
			if CoolCMDs.CommandHandles[i].FullName == Command then
				return CoolCMDs.CommandHandles[i]
			end
		end
	elseif Format == "ByControl" then
		for i = 1, #CoolCMDs.CommandHandles do
			if CoolCMDs.CommandHandles[i].Control == Command then
				return CoolCMDs.CommandHandles[i]
			end
		end
	end
	return nil
end
CoolCMDs.Functions.GetGroup = function(Group, Format)
	if Format == nil or Format == "ByName" then
		for i = 1, #CoolCMDs.GroupHandles do
			if CoolCMDs.GroupHandles[i].Name == Group then
				return CoolCMDs.GroupHandles[i]
			end
		end
	elseif Format == "ByFullName" then
		for i = 1, #CoolCMDs.GroupHandles do
			if CoolCMDs.GroupHandles[i].FullName == Group then
				return CoolCMDs.GroupHandles[i]
			end
		end
	elseif Format == "ByControl" then
		for i = 1, #CoolCMDs.GroupHandles do
			if CoolCMDs.GroupHandles[i].Control == Group then
				return CoolCMDs.GroupHandles[i]
			end
		end
	end
	return nil
end
CoolCMDs.Functions.GetLowestGroup = function()
	local Max = math.huge
	for i = 1, #CoolCMDs.GroupHandles do
		if CoolCMDs.GroupHandles[i].Control < Max then
			Max = CoolCMDs.GroupHandles[i].Control
		end
	end
	return CoolCMDs.Functions.GetGroup(Max, "ByControl")
end
CoolCMDs.Functions.GetHighestGroup = function()
	local Max = -math.huge
	for i = 1, #CoolCMDs.GroupHandles do
		if CoolCMDs.GroupHandles[i].Control > Max then
			Max = CoolCMDs.GroupHandles[i].Control
		end
	end
	return CoolCMDs.Functions.GetGroup(Max, "ByControl")
end
CoolCMDs.Functions.GetModule = function(ModuleName)
	for i = 1, #CoolCMDs.Modules do
		if CoolCMDs.Modules[i].Name == ModuleName then
			return CoolCMDs.Modules[i]
		end
	end
	return nil
end
CoolCMDs.Functions.IsModuleEnabled = function(ModuleName)
	for i = 1, #CoolCMDs.Modules do
		if CoolCMDs.Modules[i].Name == ModuleName then
			return CoolCMDs.Modules[i].Enabled
		end
	end
	return nil
end
CoolCMDs.Functions.GetPlayerTable = function(Player)
	for i = 1, #CoolCMDs.Players do
		if CoolCMDs.Players[i].Name == Player then
			return CoolCMDs.Players[i]
		end
	end
end
do
	local Base = script:Clone()
	CoolCMDs.Functions.CreateScript = function(Source, Parent, DebugEnabled)
		local NewScript = Base:Clone()
		NewScript.Disabled = false
		NewScript.Name = "QuickScript (" ..Workspace.DistributedGameTime.. ")"
		local DynamicSource = Instance.new("StringValue")
		DynamicSource.Name = "DynamicSource"
		DynamicSource.Value = Source
		DynamicSource.Parent = NewScript
		if DebugEnabled == true then
			local Debug = Instance.new("IntValue")
			Debug.Name = "Debug"
			Debug.Parent = NewScript
		end
		NewScript.Parent = Parent
	end
end
CoolCMDs.Functions.Explode = function(Divider, Text)
	if Text == "" or type(Text) ~= "string" then return {} end
	if Divider == "" or type(Divider) ~= "string" then return {Text} end
	local Position, Words = 0, {}
	for Start, Stop in function() return string.find(Text, Divider, Position, true) end do
		table.insert(Words, string.sub(Text, Position, Start - 1))
		Position = Stop + 1
	end
	table.insert(Words, string.sub(Text, Position))
	return Words
end
CoolCMDs.Functions.GetRecursiveChildren = function(Source, Name, SearchType, Children)
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
			CoolCMDs.Functions.GetRecursiveChildren(Child, Name, SearchType, Children)
		end)
	end
	return Children
end
CoolCMDs.Functions.CatchMessage = function(Message, Speaker)
	if Message == nil or Speaker == nil then return end
	if string.sub(Message, 0, 4) == "/sc " then
		Message = string.sub(Message, 5)
	elseif string.sub(Message, 0, 5) == "lego " then
		Message = string.sub(Message, 6)
	elseif string.sub(Message, 0, 10) == "minecraft " or string.sub(Message, 0, 10) == "runescape " then
		Message = string.sub(Message, 11)
	end
	for i = 1, #CoolCMDs.CommandHandles do
		if (function()
			if type(CoolCMDs.CommandHandles[i].Command) == "string" then
				if CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message)[1]:lower() == CoolCMDs.CommandHandles[i].Command:lower() then
					return true
				end
			elseif type(CoolCMDs.CommandHandles[i].Command) == "table" then
				for x = 1, #CoolCMDs.CommandHandles[i].Command do
					if CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message)[1]:lower() == CoolCMDs.CommandHandles[i].Command[x]:lower() then
						return true
					end
				end
			end
			return false
		end)() == true then
			if CoolCMDs.Functions.GetPlayerTable(Speaker.Name) ~= nil then
				if CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Speaker.Name).Group) ~= nil then
					if CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Speaker.Name).Group).Control >= CoolCMDs.CommandHandles[i].Control then
						local Message2 = ""
						for x = 2, #CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message) - 1 do
							Message2 = Message2 .. CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message)[x] .. CoolCMDs.Data.SplitCharacter
						end
						for x = #CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message), #CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message) do
							Message2 = Message2 .. CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message)[x]
						end
						pcall(function() if Message2 == CoolCMDs.CommandHandles[i].Command:lower() then Message2 = "" end end)
						pcall(function() for x = 1, #CoolCMDs.CommandHandles[i].Command do if Message2:lower() == CoolCMDs.CommandHandles[i].Command[x]:lower() then Message2 = "" end end end)
						local Message3 = nil
						for x = 1, #CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message2) do
							if Message3 == nil then Message3 = {} end
							table.insert(Message3, CoolCMDs.Functions.Explode(CoolCMDs.Data.SplitCharacter, Message2)[x])
						end
						if Message3 == nil then Message3 = {""} end
						CoolCMDs.CommandHandles[i].Trigger(Message2, Message3, Speaker, CoolCMDs.CommandHandles[i])
					else
						CoolCMDs.Functions.CreateMessage("Message", "This command is restricted.", 2.5, Speaker)
						wait(2.5)
						CoolCMDs.Functions.CreateMessage("Message", "Your control: " ..CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Speaker.Name).Group).Control.. ". Required control: " ..CoolCMDs.CommandHandles[i].Control.. ".", 2.5, Speaker)
					end
				else
					CoolCMDs.Functions.GetPlayerTable(Speaker).Group = CoolCMDs.Functions.GetLowestGroup()
					CoolCMDs.Functions.CreateMessage("Message", "An error has occurred.", 2.5, Speaker)
					wait(2.5)
					CoolCMDs.Functions.CreateMessage("Message", "You are not in a group.", 2.5, Speaker)
					wait(2.5)
					CoolCMDs.Functions.CreateMessage("Message", "You have been assigned to the group: \"" ..CoolCMDs.Functions.GetPlayerTable(Speaker).Group.. "\".", 2.5, Speaker)
				end
			end
		end
	end
end

CoolCMDs.Functions.CreateGroup("guest", 1, "Guest", "The guest group has no privilages.")
CoolCMDs.Functions.CreateGroup("pguest", 2, "Privilaged Guest", "A privilaged guest has a few abilities.")
CoolCMDs.Functions.CreateGroup("miniadmin", 3, "Mini-Administrator", "The Mini-Administrator group can only use some low-level commands.")
CoolCMDs.Functions.CreateGroup("admin", 4, "Administrator", "The Administrator group can use most commands.")
CoolCMDs.Functions.CreateGroup("superadmin", 5, "Super Administrator", "The Super Administrator group can use all commands.")

CoolCMDs.Functions.CreateModule("GuiSupport", function(Self, Message)
	function Self.WindowDisappear(Part, Factor)
		for _, Children in pairs(Part:children()) do
			pcall(function() Children.BackgroundTransparency = Factor end)
			pcall(function() Children.TextTransparency = Factor end)
			Self.WindowDisappear(Children, Factor)
		end
	end
	function Self.WindowEffect(Part, Format, ...)
		Args = {...}
		if Part == nil then return false end
		if Format == 1 or Format == "FadeIn" then
			for i = 1, 0, Args[1] == nil and -0.075 or -math.abs(Args[1]) do
				Part.Size = Part.Size - UDim2.new(0, 2, 0, 2)
				Part.Position = Part.Position + UDim2.new(0, 1, 0, 1)
			end
			for i = 1, 0, Args[1] == nil and -0.075 or -math.abs(Args[1]) do
				Part.Size = Part.Size + UDim2.new(0, 2, 0, 2)
				Part.Position = Part.Position - UDim2.new(0, 1, 0, 1)
				Self.WindowDisappear(Part, i)
				wait()
			end
			Self.WindowDisappear(Part, 0)
		elseif Format == 2 or Format == "FadeOut" then
			if Args[2] == true then
				local NewWindow = Part:Clone()
				local function CleanGui(Child)
					for _, Part in pairs(Child:children()) do
						if not Part:IsA("GuiObject") then
							pcall(function() Part.Disabled = true end)
							Part:Remove()
						else
							pcall(function() Part.Active = false end)
							pcall(function() Part.AutoButtonColor = false end)
							CleanGui(Part)
						end
					end
				end
				CleanGui(NewWindow)
				NewWindow.Parent = Part.Parent
				Part:Remove()
				Part = NewWindow
				NewWindow = nil
			end
			for i = 0, 1, Args[1] == nil and 0.05 or math.abs(Args[1]) do
				Part.Size = Part.Size + UDim2.new(0, 5, 0, 5)
				Part.Position = Part.Position - UDim2.new(0, 5 / 2, 0, 5 / 2)
				Self.WindowDisappear(Part, i)
				wait()
			end
			for i = 0, 1, Args[1] == nil and 0.05 or math.abs(Args[1]) do
				Part.Size = Part.Size - UDim2.new(0, 5, 0, 5)
				Part.Position = Part.Position + UDim2.new(0, 5 / 2, 0, 5 / 2)
			end
			Self.WindowDisappear(Part, 1)
			if Args[2] == true then
				Part:Remove()
			end
		elseif Format == 3 or Format == "SimpleSlide" then
			local OldPos = Part.Position
			if Args[1] == nil then return false end
			for i = 0, 1, Args[2] == nil and 0.05 or Args[2] do
				Part.Position = UDim2.new(OldPos.X.Scale * (1 - i), OldPos.X.Offset * (1 - i), OldPos.Y.Scale * (1 - i), OldPos.Y.Offset * (1 - i)) + UDim2.new(Args[1].X.Scale * i, Args[1].X.Offset * i, Args[1].Y.Scale * i, Args[1].Y.Offset * i)
				wait()
			end
			Part.Position = Args[1]
		elseif Format == 4 or Format == "SmoothSlide" then
			local OldPos = Part.Position
			if Args[1] == nil then return false end
			while true do
				local XS = Args[1].X.Offset - OldPos.X.Scale
				local XO = Args[1].X.Offset - OldPos.X.Offset
				local YS = Args[1].Y.Offset - OldPos.Y.Scale
				local YO = Args[1].Y.Offset - OldPos.Y.Offset
				XO = (XO / (Args[2] == nil and 5 or Args[2]))
				YO = (YO / (Args[2] == nil and 5 or Args[2]))
				if math.abs(XO) < 0.5 and math.abs(YO) < 0.5 then break end
				Part.Position = UDim2.new(OldPos.X.Scale, OldPos.X.Offset + XO, OldPos.Y.Scale, OldPos.Y.Offset + YO)
				OldPos = UDim2.new(OldPos.X.Scale, OldPos.X.Offset + XO, OldPos.Y.Scale, OldPos.Y.Offset + YO)
				wait()
			end
			Part.Position = Args[1]
		end
		return true
	end
	function Self.WindowCreate(WindowPosition, WindowSize, WindowParent, WindowName, WindowFadeIn, WindowFadeOut, WindowCanExit, WindowCanMinimize, WindowCanMaximize, WindowCanResize, WindowCanMove, WindowExitFunction, WindowMinimumSize)
		if WindowPosition == nil then WindowPosition = UDim2.new(0, 0, 0, 0) end
		if WindowSize == nil then WindowSize = UDim2.new(0, 300, 0, 175) end
		if WindowCanClose == nil then WindowCanClose = true end
		if WindowCanMinimize == nil then WindowCanMinimize = true end
		if WindowCanMaximize == nil then WindowCanMaximize = true end
		if WindowCanResize == nil then WindowCanResize = true end
		if WindowCanMove == nil then WindowCanMove = true end
		if WindowName == nil then WindowName = "Window" end
		if WindowMinimumSize == nil then WindowMinimumSize = UDim2.new(0, 100, 0, 100) end
		local WindowMoveXScale = 0
		local WindowMoveYScale = 0
		local WindowMoveXOffset = 0
		local WindowMoveYOffset = 0
		local WindowMoveXMouse = 0
		local WindowMoveYMouse = 0
		local WindowResizeXScale = 0
		local WindowResizeYScale = 0
		local WindowResizeXOffset = 0
		local WindowResizeYOffset = 0
		local WindowResizeXMouse = 0
		local WindowResizeYMouse = 0
		local WindowMove = false
		local WindowIsMinimized = false
		local WindowMinimizedPosition = nil
		local WindowMinimizedSize = nil
		local WindowUnminimizedText = nil
		local WindowResize = false
		local WindowMaximizedDelay = false
		local WindowIsMaximized = false
		local WindowUnmaximizedPosition = nil
		local WindowUnmaximizedSize = nil
		local Window = Instance.new("Frame")
		Window.Name = WindowName
		Window.Size = WindowSize
		Window.Position = WindowPosition
		Window.BorderSizePixel = 0
		Window.BackgroundTransparency = 1
		Window.Parent = WindowParent
		local WindowTitleBar = Instance.new("TextButton")
		WindowTitleBar.Name = "TitleBar"
		WindowTitleBar.Size = UDim2.new(1, 0, 0, 25)
		WindowTitleBar.BackgroundColor3 = Color3.new(0.1, 0.1, 0.9)
		WindowTitleBar.BorderColor3 = Color3.new(0, 0, 0)
		WindowTitleBar.AutoButtonColor = false
		WindowTitleBar.Changed:connect(function(Property)
			if Property == "Text" then
				if string.sub(WindowTitleBar.Text, 0, 5) ~= string.rep(" ", 5) then
					WindowTitleBar.Text = string.rep(" ", 5) ..WindowTitleBar.Text
				end
			end
		end)
		WindowTitleBar.Text = WindowName
		WindowTitleBar.TextColor3 = Color3.new(1, 1, 1)
		WindowTitleBar.TextWrap = true
		WindowTitleBar.TextXAlignment = "Left"
		WindowTitleBar.FontSize = "Size14"
		WindowTitleBar.Parent = Window
		WindowTitleBar.MouseButton1Down:connect(function(x, y)
			if WindowIsMinimized == true or WindowIsMaximized == true or WindowCanMove == false then return false end
			WindowMoveXScale = Window.Position.X.Scale
			WindowMoveYScale = Window.Position.Y.Scale
			WindowMoveXOffset = Window.Position.X.Offset
			WindowMoveYOffset = Window.Position.Y.Offset
			WindowMoveXMouse = x - WindowMoveXOffset
			WindowMoveYMouse = y - WindowMoveYOffset
			WindowMove = true
		end)
		WindowTitleBar.MouseMoved:connect(function(x, y)
			if WindowMove == true then
				Window.Position = UDim2.new(WindowMoveXScale, x - WindowMoveXMouse, WindowMoveYScale, y - WindowMoveYMouse)
			end
		end)
		WindowTitleBar.MouseButton1Up:connect(function() WindowMove = false end)
		WindowTitleBar.MouseLeave:connect(function() WindowMove = false end)
		WindowTitleBar.Changed:connect(function(Property)
			if Property == "Text" then
				if string.sub(WindowTitleBar.Text, 0, 5) ~= string.rep(" ", 5) then
					WindowTitleBar.Text = string.rep(" ", 5) .. WindowTitleBar.Text
				end
			end
		end)
		WindowIcon = Instance.new("ImageLabel")
		WindowIcon.Name = "Icon"
		WindowIcon.Size = UDim2.new(0, 16, 0, 16)
		WindowIcon.Position = UDim2.new(0, 16 / 4, 0, 16 / 4)
		WindowIcon.BackgroundColor3 = Color3.new(0.1, 0.1, 0.9)
		WindowIcon.BorderSizePixel = 0
		WindowIcon.BackgroundTransparency = 1
		WindowIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and WindowIcon.BackgroundTransparency ~= 1 then WindowIcon.BackgroundTransparency = 1 wait() WindowIcon.BackgroundTransparency = 1 end end)
		WindowIcon.Parent = Window
		local WindowExitButton = Instance.new("TextButton")
		WindowExitButton.Name = "ExitButton"
		WindowExitButton.Size = UDim2.new(0, 55, 0, 12.5)
		WindowExitButton.Position = UDim2.new(1, -WindowExitButton.Size.X.Offset, 0, 0)
		WindowExitButton.BackgroundColor3 = WindowCanExit == false and Color3.new(0.5, 0.25, 0.25) or Color3.new(1, 0, 0)
		WindowExitButton.BorderColor3 = Color3.new(0, 0, 0)
		WindowExitButton.Text = "Close"
		WindowExitButton.TextColor3 = Color3.new(0, 0, 0)
		WindowExitButton.TextWrap = false
		WindowExitButton.Parent = Window
		WindowExitButton.MouseButton1Up:connect(function()
			if WindowCanExit == false then return false end
			if WindowExitFunction ~= nil then
				WindowExitFunction(Window)
			else
				if WindowFadeOut == true then
					Self.WindowEffect(Window, 2)
				end
				Window:Remove()
			end
		end)
		local WindowMinimizeButton = Instance.new("TextButton")
		WindowMinimizeButton.Name = "MinimizeButton"
		WindowMinimizeButton.Size = UDim2.new(0, 55, 0, 12.5)
		WindowMinimizeButton.Position = UDim2.new(1, -WindowMinimizeButton.Size.X.Offset, 0, WindowMinimizeButton.Size.Y.Offset + 1)
		WindowMinimizeButton.BackgroundColor3 = WindowCanMinimize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
		WindowMinimizeButton.BorderColor3 = Color3.new(0, 0, 0)
		WindowMinimizeButton.Text = "- Minimize"
		WindowMinimizeButton.TextColor3 = Color3.new(0, 0, 0)
		WindowMinimizeButton.TextWrap = false
		WindowMinimizeButton.Parent = Window
		WindowMinimizeButton.MouseButton1Up:connect(function()
			if WindowCanMinimize == false then return false end
			if WindowIsMinimized == false then
				WindowIsMinimized = true
				WindowMinimizeButton.Text = "+ Maximize"
				WindowUnminimizedPosition = Window.Position
				WindowUnminimizedSize = Window.Size
				WindowUnminimizedText = Window.TitleBar.Text
				Window.Position = UDim2.new(0, 0, 1, -45)
				Window.Size = UDim2.new(0, 175, 0, 25)
				Window.TitleBar.Text = string.sub(Window.TitleBar.Text, 0, 8).. "..."
				Window.Content.Position = Window.Content.Position + UDim2.new(0, 100000, 0, 0)
				Window.StatusBar.Position = Window.StatusBar.Position + UDim2.new(0, 100000, 0, 0)
				Window.ResizeButton.Position = Window.ResizeButton.Position + UDim2.new(0, 100000, 0, 0)
			else
				WindowIsMinimized = false
				WindowMinimizeButton.Text = "- Minimize"
				Window.Position = WindowUnminimizedPosition
				Window.Size = WindowUnminimizedSize
				Window.TitleBar.Text = WindowUnminimizedText
				Window.Content.Position = Window.Content.Position - UDim2.new(0, 100000, 0, 0)
				Window.StatusBar.Position = Window.StatusBar.Position - UDim2.new(0, 100000, 0, 0)
				Window.ResizeButton.Position = Window.ResizeButton.Position - UDim2.new(0, 100000, 0, 0)
			end
		end)
		local WindowContent = Instance.new("Frame")
		WindowContent.Name = "Content"
		WindowContent.Size = UDim2.new(1, 0, 1, -45)
		WindowContent.Position = UDim2.new(0, 0, 0, 25)
		WindowContent.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		WindowContent.BorderColor3 = Color3.new(0, 0, 0)
		WindowContent.Parent = Window
		local WindowStatusBar = Instance.new("TextLabel")
		WindowStatusBar.Name = "StatusBar"
		WindowStatusBar.Size = UDim2.new(1, 0, 0, 20)
		WindowStatusBar.Position = UDim2.new(0, 0, 1, -WindowStatusBar.Size.Y.Offset)
		WindowStatusBar.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		WindowStatusBar.BorderColor3 = Color3.new(0, 0, 0)
		WindowStatusBar.Changed:connect(function(Property)
			if Property == "Text" then
				if string.sub(WindowStatusBar.Text, 0, 1) ~= " " then
					WindowStatusBar.Text = " " ..WindowStatusBar.Text
				end
			end
		end)
		WindowStatusBar.Text = ""
		WindowStatusBar.TextColor3 = Color3.new(1, 1, 1)
		WindowStatusBar.TextWrap = true
		WindowStatusBar.TextXAlignment = "Left"
		WindowStatusBar.Parent = Window
		local WindowResizeButton = Instance.new("TextButton")
		WindowResizeButton.Name = "ResizeButton"
		WindowResizeButton.Size = UDim2.new(0, 20, 0, 20)
		WindowResizeButton.Position = UDim2.new(1, -WindowResizeButton.Size.X.Offset, 1, -WindowResizeButton.Size.Y.Offset)
		WindowResizeButton.BackgroundColor3 = WindowCanResize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
		WindowResizeButton.BorderColor3 = Color3.new(0, 0, 0)
		WindowResizeButton.BorderSizePixel = 1
		WindowResizeButton.AutoButtonColor = false
		WindowResizeButton.Text = "< >"
		WindowResizeButton.TextColor3 = Color3.new(0, 0, 0)
		WindowResizeButton.TextWrap = false
		WindowResizeButton.Parent = Window
		WindowResizeButton.MouseButton1Down:connect(function(x, y)
			if WindowCanResize == false then return false end
			if WindowMaximizedDelay == true then
				WindowMaximizedDelay = false
				if WindowIsMaximized == false then
					WindowIsMaximized = true
					WindowResizeButton.Text = "> <"
					WindowUnmaximizedPosition = Window.Position
					WindowUnmaximizedSize = Window.Size
					Window.Position = UDim2.new(0, 0, 0, 0)
					Window.Size = UDim2.new(1, 0, 1, 20)
				else
					WindowIsMaximized = false
					WindowResizeButton.Text = "< >"
					Window.Position = WindowUnmaximizedPosition
					Window.Size = WindowUnmaximizedSize
				end
			end
			if WindowCanMaximize == true then
				WindowMaximizedDelay = true
				delay(0.5, function() WindowMaximizedDelay = false end)
			end
			if WindowIsMinimized == true or WindowIsMaximized == true then return false end
			WindowResizeXScale = Window.Size.X.Scale
			WindowResizeYScale = Window.Size.Y.Scale
			WindowResizeXOffset = Window.Size.X.Offset
			WindowResizeYOffset = Window.Size.Y.Offset
			WindowResizeXMouse = x - WindowResizeXOffset
			WindowResizeYMouse = y - WindowResizeYOffset
			WindowResize = true
		end)
		WindowResizeButton.MouseMoved:connect(function(x, y)
			if WindowResize == true then
				Window.Size = UDim2.new(WindowResizeXScale, x - WindowResizeXMouse, WindowResizeYScale, y - WindowResizeYMouse)
				if Window.Size.X.Scale < WindowMinimumSize.X.Scale then Window.Size = UDim2.new(WindowMinimumSize.X.Scale, Window.Size.X.Offset, Window.Size.Y.Scale, Window.Size.Y.Offset) end
				if Window.Size.X.Offset < WindowMinimumSize.X.Offset then Window.Size = UDim2.new(Window.Size.X.Scale, WindowMinimumSize.X.Offset, Window.Size.Y.Scale, Window.Size.Y.Offset) end
				if Window.Size.Y.Scale < WindowMinimumSize.Y.Scale then Window.Size = UDim2.new(Window.Size.X.Scale, Window.Size.X.Offset, WindowMinimumSize.Y.Scale, Window.Size.Y.Offset) end
				if Window.Size.Y.Offset < WindowMinimumSize.Y.Offset then Window.Size = UDim2.new(Window.Size.X.Scale, Window.Size.X.Offset, Window.Size.Y.Scale, WindowMinimumSize.Y.Offset) end
			end
		end)
		WindowResizeButton.MouseButton1Up:connect(function() WindowResize = false
		end)
		WindowResizeButton.MouseLeave:connect(function() WindowResize = false end)
		coroutine.wrap(function() if WindowFadeIn == true then Self.WindowEffect(Window, 1) end end)()
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
	function Self.WindowControls.CheckBox.New(IsOn)
		local IsOn = IsOn == nil and false or IsOn
		local CheckBox = Instance.new("TextButton")
		CheckBox.Name = "CheckBox"
		CheckBox.Text = IsOn == true and "X" or ""
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
			Box.Text = "X"
			return true
		end
	end
	function Self.WindowControls.CheckBox.ToggleCheckBox(Box, IsOn)
		if Box.Text == "X" then
			Box.Text = ""
			return false
		else
			Box.Text = "X"
			return true
		end
	end
	function Self.WindowControls.CheckBox.GetCheckBoxState(Box) return Box.Text == "X" and true or false end
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
			local Parts = CoolCMDs.Functions.Explode("\t", ListContent[i])
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
	local WindowExitFunction = function(Window)
		coroutine.wrap(function()
			CoolCMDs.Functions.GetModule("GuiSupport").WindowEffect(Window, 4, UDim2.new(0.5, -250 / 2, 0, -120))
			pcall(function() Window.Parent:Remove() end)
		end)()
	end
	return true
end, function(Self, Message)
	Self.WindowDisappear = nil
	Self.WindowEffect = nil
	Self.WindowCreate = nil
	return true
end, "Windows-like Gui support.")

CoolCMDs.Functions.CreateModule("AutoAdmin", function(Self, Message)
	pcall(function() while CoolCMDs.Functions.GetCommand("admin") do CoolCMDs.Functions.RemoveCommand("autoadmin") end end)
	CoolCMDs.Functions.CreateCommand({"administration", "admin", "autoadmin", "aa"}, 5, function(Message, MessageSplit, Speaker, Self)
		local AA = CoolCMDs.Functions.GetModule("AutoAdmin")
		if AA == nil then
			CoolCMDS.Functions.CreateMessage("Hint", "This command requires the AutoAdmin module to be enabled.", 5, Speaker)
			return
		end
		if AA.Enabled == false then
			CoolCMDS.Functions.CreateMessage("Hint", "This command requires the AutoAdmin module to be installed.", 5, Speaker)
			return
		end
		if MessageSplit[1]:lower() == "set" then
			if #MessageSplit <= 2 then return end
			if CoolCMDs.Functions.GetGroup(MessageSplit[#MessageSplit]) == nil then
				CoolCMDs.Functions.CreateMessage("Hint", "[AutoAdmin] Unknown group \"" ..MessageSplit[#MessageSplit].. "\".", 2.5, Speaker)
				return
			end
			for i = 2, #MessageSplit - 1 do
				for x = 1, #CoolCMDs.Players do
					if string.match(CoolCMDs.Players[x].Name:lower(), MessageSplit[i]) then
						CoolCMDs.Players[x].Group = MessageSplit[#MessageSplit]
					end
				end
			end
			CoolCMDs.Functions.CreateMessage("Hint", "[AutoAdmin] Set.", 2.5, Speaker)
		end
		if MessageSplit[1]:lower() == "add" then
			if #MessageSplit <= 2 then return end
			if CoolCMDs.Functions.GetGroup(MessageSplit[#MessageSplit]) == nil then
				CoolCMDs.Functions.CreateMessage("Hint", "[AutoAdmin] Unknown group \"" ..MessageSplit[#MessageSplit].. "\".", 2.5, Speaker)
				return
			end
			for i = 2, #MessageSplit - 1 do
				table.insert(AA.Players, MessageSplit[i].. ", " ..MessageSplit[#MessageSplit])
				if CoolCMDs.Functions.GetPlayerTable(MessageSplit[i]) ~= nil then
					CoolCMDs.Functions.GetPlayerTable(MessageSplit[i]).Group = MessageSplit[#MessageSplit]
				end
			end
			CoolCMDs.Functions.CreateMessage("Hint", "[AutoAdmin] Added.", 2.5, Speaker)
		end
		if MessageSplit[1]:lower() == "remove" then
			for i = 2, #MessageSplit do
				for x = 1, #AA.Players do
					local BreakPosition = string.find(AA.Players[x]:lower(), ", ")
					local FoundStart, FoundEnd = string.find(AA.Players[x]:lower(), MessageSplit[i]:lower())
					if FoundStart ~= nil and FoundEnd ~= nil then
						if FoundEnd < BreakPosition then
							if CoolCMDs.Functions.GetPlayerTable(CoolCMDs.Functions.Explode(", ", AA.Players[x])[1]) ~= nil then
								CoolCMDs.Functions.GetPlayerTable(CoolCMDs.Functions.Explode(", ", AA.Players[x])[1]).Group = CoolCMDs.Functions.GetLowestGroup()
							end
							table.remove(AA.Players, x)
						end
					end
				end
			end
			CoolCMDs.Functions.CreateMessage("Hint", "[AutoAdmin] Removed.", 2.5, Speaker)
		end
		if MessageSplit[1]:lower() == "remove all" then
			local OldGroup = CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Speaker).Group)
			AA.Players = {Speaker.Name.. ", " ..OldGroup}
			for i = 1, #CoolCMDs.Players do
				if CoolCMDs.Players[i].Name ~= Speaker.Name then
					CoolCMDs.Players[i].Group = CoolCMDs.Functions.GetLowestGroup()
				end
			end
			CoolCMDs.Functions.CreateMessage("Hint", "[AutoAdmin] Removed all entries, added entry of \"" ..Speaker.Name.. "\" with group \"" ..OldGroup.FullName.. "\".", 2.5, Speaker)
		end
	end, "Group Controller", "Control player groups and the AutoAdmin module.", "set, add, remove" ..CoolCMDs.Data.SplitCharacter.. "player" ..CoolCMDs.Data.SplitCharacter.. "[...], remove all")
	if Self.Players == nil then
		Self.Players = {
			"Player, superadmin",
			"DarkShadow6, superadmin",
			"fryman987654321, superadmin",
			"DarkShadow6Alt, superadmin",
			"KradWodahs6, superadmin",
			"LocalShadow6, superadmin",
			"ServerShadow6, superadmin",
			"IGrabYourGarkShadow6",
			"Zombie7838408, admin",
			"RickRoIled, admin",
			"EvilDarkShinigami, miniadmin",
			"doomster132, superadmin",
			"ferdf56, superadmin",
			"Shadowpurky, superadmin",
			"leolion113, superadmin",
			"Robert001, admin",
			"booing, superadmin",
			"Ronnie124, superadmin",
			"jojoshshuaua, superadmin",
			"imacowthatsings, superadmin",
			"DarkShadow6Alt, superadmin",
			"popinman322, superadmin",
			"coolblockj, superadmin",
			"LocalChum, superadmin",
			"toadjesse, superadmin",
			"Destroyer97, superadmin",
			"mcfirno10, superadmin",
			"c4rbon, superadmin",
			"Sharp1331, superadmin",
			"koopa13, superadmin"
		}
	end
	local Check = function(Player, Show)
		wait()
		if Player == nil then return false end
		if not Player:IsA("Player") then return false end
		if CoolCMDs.Functions.GetPlayerTable(Player.Name) ~= nil then
			for i = 1, #Self.Players do
				if Player.Name == CoolCMDs.Functions.Explode(", ", Self.Players[i])[1] then
					CoolCMDs.Functions.GetPlayerTable(Player.Name).Group = CoolCMDs.Functions.Explode(", ", Self.Players[i])[2]
					if type(Show) ~= "boolean" then
						Show.Text = "Player \"" ..Player.Name.. "\" is now in the group \"" ..CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Player.Name).Group).FullName.. "\"."
					elseif Show == true then
						wait(1)
						CoolCMDs.Functions.CreateMessage("Hint", "You are now in the group \"" ..CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Player.Name).Group).FullName.. "\".", 5, Player)
					end
				end
			end
		end
	end
	Self.CheckForAutoAdmin = game:GetService("Players").ChildAdded:connect(function(Player) Check(Player, true) end)
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		Message.Text = "Running linking function \"Check\" on player \"" ..Player.Name.. "\"..."
		wait()
		Message.Text = "Player \"" ..Player.Name.. "\" has no status."
		Check(Player, Message)
		wait()
	end
	return true
end, function(Self, Message)
	if Self.CheckForAutoAdmin ~= nil then Self.CheckForAutoAdmin:disconnect() end
	Self.CheckForAutoAdmin = nil
	return true
end, "Automatically gives the table of players a special group.")

CoolCMDs.Functions.CreateModule("RobloxProperties", function(Self, Message)
	Self.PropertiesGlobal = {"Name", "ClassName", "Parent", "archivable"}
	Self.Properties = {"AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "AnimationId", "Adornee", "Axes", "Color", "Visible", "Transparency", "Texture", "TextureId", "Anchored", "BackParamA", "BackParamB", "BackSurface", "BackSurfaceInput", "BottomParamA", "BottomParamB", "BottomSurface", "BottomSurfaceInput", "BrickColor", "CFrame", "CanCollide", "Elasticity", "Friction", "FrontParamA", "FrontParamB", "FrontSurface", "FrontSurfaceInput", "LeftParamA", "LeftParamB", "LeftSurface", "LeftSurfaceInput", "Locked", "Material", "Position", "Reflectance", "ResizeIncrement", "ResizeableFaces", "RightParamA", "RightParamB", "RightSurface", "RightSurfaceInput", "RotVelocity", "Size", "TopParamA", "TopParamB", "TopSurface", "TopSurfaceInput", "Velocity", "AbsolutePosition", "AbsoluteSize", "Active", "Enabled", "ExtentsOffset", "SizeOffset", "StudsOffset", "Scale", "VertexColor", "Offset", "P", "D", "angularVelocity", "maxTorque", "HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor", "force", "maxForce", "position", "cframe", "location", "Value", "CameraSubject", "CameraType", "CoordinateFrame", "Focus", "BaseTextureId", "Bodypart", "MeshId", "OverlayTextureId", "MaxActivationDistance", "CreatorId", "CreatorType", "JobId", "PlaceId", "MaxItems", "Face", "Shiny", "Specular", "ConversationDistance", "InUse", "InitalPrompt", "Purpose", "Tone", "ResponseDialog", "UserDialog", "C0", "C1", "Part0", "Part1", "BaseAngle", "BlastPressure", "BlastRadius", "FaceId", "InOut", "LeftRight", "TopBottom", "Heat", "SecondaryColor", "GripForward", "GripPos", "GripRight", "GripUp", "TeamColor", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "SizeConstant", "Style", "ZIndex", "F0", "F1", "F2", "F3", "Faces", "AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "Text", "BinType", "Health", "Jump", "LeftLeg", "MaxHealth", "PlatformStand", "RightLeg", "Sit", "TargetPoint", "Torso", "WalkSpeed", "WalkToPart", "WalkToPoint", "AutoButtonColor", "Image", "Selected", "Time", "Ambient", "Brightness", "ColorShift_Bottom", "GeographicLatitude", "ShadowColor", "TimeOfDay", "Disabled", "LinkedSource", "Source", "PrimaryPart", "CurrentAngle", "DesiredAngle", "MaxVelocity", "Hit", "Icon", "Origin", "Target", "TargetFilter", "TargetSurface", "UnitRay", "ViewSizeX", "ViewSizeY", "X", "Y", "Ticket", "MachineAddress", "Port", "PantsTemplate", "Shape", "FormFactor", "AccountAge", "Character", "DataReady", "MembershipType", "Neutral", "userId", "Button1DownConnectionCount", "Button1UpConnectionCount", "Button2DownConnectionCount", "Button2UpConnectionCount", "IdleConnectionCount", "KeyDownConnectionCount", "KeyUpConnectionCount", "MouseDelta", "MousePosition", "MoveConnectionCount", "WheelBackwardConnectionCount", "WheelForwardConnectionCount", "WindowSize", "BubbleChat", "ClassicChat", "MaxPlayers", "NumPlayers", "MaskWeight", "Weight", "Sides", "CartoonFactor", "MaxSpeed", "MaxThrust", "MaxTorque", "TargetOffset", "TargetRadius", "ThrustD", "ThrustP", "TurnD", "TurnP", "GarbageCollectionFrequency", "GarbageCollectionLimit", "ScriptsDisabled", "Humanoid", "Part", "Point", "ShirtTemplate", "Graphic", "Controller", "ControllingHumanoid", "Steer", "StickyWheels", "Throttle", "SkinColor", "CelestialBodiesShown", "SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp", "StarCount", "Opacity", "RiseVelocity", "IsPaused", "IsPlaying", "Looped", "Pitch", "PlayOnRemove", "SoundId", "Volume", "AmbientReverb", "DistanceFactor", "DopplerScale", "RolloffScale", "SparkleColor", "AllowTeamChangeOnTouch", "Duration", "MeshType", "ShowDevelopmentGui", "AreArbutersThrottled", "BudgetEnforced", "Concurrency", "NumRunningJobs", "NumSleepingJobs", "NumWaitingJobs", "PriorityMethod", "SchedulerDutyCycle", "SchedulerRate", "SleepAdjustMethod", "ThreadAffinity", "ThreadPoolConfig", "ThreadPoolSize", "ThreadJobSleepTime", "AutoAssignable", "AutoColorCharacters", "Score", "TextBounds", "TextColor3", "TextTransparency", "TextWrap", "TextXAlignment", "TextYAlignment", "Font", "FontSize", "StudsPerTileU", "StudsPerTileV", "AreHingesDetected", "HeadsUpDisplay", "Torque", "TurnSpeed", "Hole", "CurrentCamera", "DistributedGameTime"}
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
				table.insert(Result2, string.upper(string.sub(type(Object[Result1[i]]), 1, 1)) .. string.sub(type(Object[Result1[i]]), 2))
			end
		end
		return Result1, Result2
	end
	return true
end, function(Self, Message)
	Self.PropertiesGlobal = nil
	Self.Properties = nil
	Self.GetProperties = nil
	return true
end, "Usage: Self.GetProperties(Object). Returns properties of an object and property type.")

CoolCMDs.Functions.CreateModule("CharacterSupport", function(Self, Message)
	Self.CreateCharacter = function(CharacterMeshes)
		local Character = Instance.new("Model")
		Character.Name = "Character"
		local Head = Instance.new("Part")
		Head.Name = "Head"
		Head.FormFactor = 0
		Head.Size = Vector3.new(2, 1, 1)
		Head.TopSurface = 0
		Head.BottomSurface = "Weld"
		Head.BrickColor = BrickColor.new("Pastel brown")
		Head.Parent = Character
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
		Torso.Parent = Character
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
		LeftArm.Parent = Character
		local RightArm = Limb:Clone()
		RightArm.Name = "Right Arm"
		RightArm.Parent = Character
		local LeftLeg = Limb:Clone()
		LeftLeg.Name = "Left Leg"
		LeftLeg.Parent = Character
		local RightLeg = Limb:Clone()
		RightLeg.Name = "Right Leg"
		RightLeg.Parent = Character
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
		Humanoid.Parent = Character
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
			BodyColors.Parent = Character
		end)()
		local Shirt = Instance.new("Shirt")
		Shirt.Name = "Shirt"
		Shirt.ShirtTemplate = ""
		Shirt.Parent = Character
		local ShirtGraphic = Instance.new("ShirtGraphic")
		ShirtGraphic.Name = "Shirt Graphic"
		ShirtGraphic.Graphic = ""
		ShirtGraphic.Parent = Character
		local Pants = Instance.new("Pants")
		Pants.Name = "Pants"
		Pants.PantsTemplate = ""
		Pants.Parent = Character
		if CharacterMeshes == true then
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Torso"
			CharacterMesh.BodyPart = "Torso"
			CharacterMesh.MeshId = "27111894"
			CharacterMesh.Parent = Character
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Torso"
			CharacterMesh.BodyPart = "Torso"
			CharacterMesh.MeshId = "27111894"
			CharacterMesh.Parent = Character
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Left Arm"
			CharacterMesh.BodyPart = "LeftArm"
			CharacterMesh.MeshId = "27111419"
			CharacterMesh.Parent = Character
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Right Arm"
			CharacterMesh.BodyPart = "RightArm"
			CharacterMesh.MeshId = "27111864"
			CharacterMesh.Parent = Character
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Left Leg"
			CharacterMesh.BodyPart = "LeftLeg"
			CharacterMesh.MeshId = "27111857"
			CharacterMesh.Parent = Character
			local CharacterMesh = Instance.new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Right Leg"
			CharacterMesh.BodyPart = "RightLeg"
			CharacterMesh.MeshId = "27111882"
			CharacterMesh.Parent = Character
		end
		Character:MoveTo(Vector3.new(0, 10000, 0))
		Character:MakeJoints()
		Character:MoveTo(Vector3.new(0, 100, 0))
		return Character
	end
	return true
end, function(Self, Message)
	Self.CreateCharacter = nil
	return true
end, "Usage: Self.CreateCharacter. Creates and returns pre-formatted character.")

CoolCMDs.Functions.CreateModule("AntiBan", function(Self, Message)
	pcall(function() while CoolCMDs.Functions.GetCommand("antiban") do CoolCMDs.Functions.RemoveCommand("antiban") end end)
	CoolCMDs.Functions.CreateCommand({"antiban", "ab"}, 5, function(Message, MessageSplit, Speaker, Self)
		local AB = CoolCMDs.Functions.GetModule("AntiBan")
		if AB == nil then
			CoolCMDS.Functions.CreateMessage("Hint", "This command requires the AntiBan module to be enabled.", 5, Speaker)
			return
		end
		if AB.Enabled == false then
			CoolCMDS.Functions.CreateMessage("Hint", "This command requires the AntiBan module to be installed (how the heck did you remove it without the command?!).", 5, Speaker)
			return
		end
		if MessageSplit[1]:lower() == "on" then
			AB.AntibanEnabled = true
			CoolCMDs.Functions.CreateMessage("Hint", "[AntiBan] Activated.", 2.5, Speaker)
		end
		if MessageSplit[1]:lower() == "off" then
			AB.AntibanEnabled = false
			CoolCMDs.Functions.CreateMessage("Hint", "[AntiBan] Deactivated.", 2.5, Speaker)
		end
		if MessageSplit[1]:lower() == "add" then
			for i = 2, #MessageSplit do
				table.insert(AB.Players, MessageSplit[i])
			end
			CoolCMDs.Functions.CreateMessage("Hint", "[AntiBan] Added.", 2.5, Speaker)
		end
		if MessageSplit[1]:lower() == "remove" then
			for i = 2, #MessageSplit do
				for x = 1, #AB.Players do
					if string.match(AB.Players[x]:lower(), MessageSplit[i]:lower()) then
						table.remove(AB.Players, x)
					end
				end
			end
			CoolCMDs.Functions.CreateMessage("Hint", "[AntiBan] Removed.", 2.5, Speaker)
		end
		if MessageSplit[1]:lower() == "remove all" then
			AB.Players = {}
			CoolCMDs.Functions.CreateMessage("Hint", "[AntiBan] Removed all entries.", 2.5, Speaker)
		end
	end, "AntiBan Controller", "Control the AntiBan module.", "on, off, [add, remove]" ..CoolCMDs.Data.SplitCharacter.. "player" ..CoolCMDs.Data.SplitCharacter.. "[...], remove all")
	if Self.AntibanEnabled == nil then
		Self.AntibanEnabled = true
	end
	if Self.Players == nil then
		Self.Players = {
			"DarkShadow6",
			"fryman987654321"
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
					local StatusMessage = CoolCMDs.Functions.CreateMessage("Hint")
					local StatusMessagePrefix = "[AntiBan.Players." ..Player.. "] "
					StatusMessage.Changed:connect(function(Property)
						if Property == "Text" then
							if string.sub(StatusMessage.Text, 0, string.len(StatusMessagePrefix)) == StatusMessagePrefix then return false end
							StatusMessage.Text = StatusMessagePrefix .. StatusMessage.Text
						end
					end)
					local Time = Self.Time
					while true do
						if Self.AntibanEnabled == false or Self.AntibanEnabled == nil or Self.Enabled == false or Self.Enabled == nil then
							StatusMessage:Remove()
							return
						end
						local Found, IsPlayer = pcall(function() return game:GetService("Players")[Player]:IsA("Player") end)
						if Found == true and IsPlayer == true then
							wait(0.05)
							if game:GetService("Players"):FindFirstChild(Player) == nil then
								StatusMessage.Text = "Player was removed after reappearing. " ..Self.EvasionPenalty.. " second penalty for evasion!"
								Time = Time - ((2.5 + Self.EvasionPenalty) * 100)
								wait(2.5)
							else
								break
							end
						elseif Found == true and IsPlayer == false then
							StatusMessage.Text = "Non-player object found in the \"Players\" service. " ..Self.EvasionPenalty.. " second penalty for evasion!"
							Time = Time - ((2.5 + Self.EvasionPenalty) * 100)
							pcall(function() game:GetService("Players")[Player]:Remove() end)
							wait(2.5)
						end
						if Time > 0 then
							Time = Time - 5
							StatusMessage.Text = math.floor(Time / 60).. " second(s) until activation."
						end
						if Time <= 0 then
							for _, Part in pairs(CoolCMDs.Functions.GetRecursiveChildren()) do
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
							StatusMessage.Text = "Activated until \"" ..Player.. "\" is found."
						end
						StatusMessage.Parent = Workspace
						wait(0.05)
					end
					Self.AntibanEnabled = false
					wait(0.11)
					Self.AntibanEnabled = true
					StatusMessage.Text = "Player found."
					wait(5)
					StatusMessage:Remove()
					pcall(function() game:GetService("Lighting").AntibanSky:Remove() end)
					Workspace.Name = "Workspace"
					game:GetService("Players").Name = "Players"
				end)()
			end
		end
	end)
	return true
end, function(Self, Message)
	Self.AntibanEnabled = nil
	Self.Players = nil
	Self.Time = nil
	Self.EvasionPenalty = nil
	pcall(function() Self.CheckPlayer:disconnect() end)
	Self.CheckPlayer = nil
	return true
end, "Provides countermeasures for players in certain groups against being removed.")

CoolCMDs.Functions.CreateCommand({"coolcmds help", "ccmds help", "help"}, 1, function(Message, MessageSplit, Speaker, Self)
	if CoolCMDs.Functions.IsModuleEnabled("GuiSupport") == false then
		CoolCMDs.Functions.CreateMessage("Hint", "CoolCMDs Help requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif CoolCMDs.Functions.GetModule("GuiSupport") == nil then
		CoolCMDs.Functions.CreateMessage("Hint", "CoolCMDs Help requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	local Commands = {}
	for i = 1, #CoolCMDs.CommandHandles do
		if (function()
			if type(CoolCMDs.CommandHandles[i].Command) == "string" then
				if string.match(CoolCMDs.CommandHandles[i].Command:lower(), Message:lower()) then
					return true
				end
			elseif type(CoolCMDs.CommandHandles[i].Command) == "table" then
				for x = 1, #CoolCMDs.CommandHandles[i].Command do
					if string.match(CoolCMDs.CommandHandles[i].Command[x]:lower(), Message:lower()) then
						return true
					end
				end
			end
			if string.match(CoolCMDs.CommandHandles[i].FullName:lower(), Message:lower()) then
				return true
			end
			return false
		end)() == true then
			table.insert(Commands, CoolCMDs.CommandHandles[i])
		end
	end
	local Modules = {}
	for i = 1, #CoolCMDs.Modules do
		if string.match(CoolCMDs.Modules[i].Name:lower(), Message:lower()) then
			table.insert(Modules, CoolCMDs.Modules[i])
		end
	end
	local Groups = {}
	for i = 1, #CoolCMDs.GroupHandles do
		if string.match(CoolCMDs.GroupHandles[i].Name:lower(), Message:lower()) or string.match(CoolCMDs.GroupHandles[i].FullName:lower(), Message:lower()) then
			table.insert(Groups, CoolCMDs.GroupHandles[i])
		end
	end
	local Gui = Instance.new("ScreenGui")
	Gui.Parent = Speaker.PlayerGui
	local Window = CoolCMDs.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -150, 0.5, -200), UDim2.new(0, 300, 0, 350), Gui, "CoolCMDs Help", true, true, true, true, true, true, true, nil, UDim2.new(0, 300, 0, 350))
	local TabFrame = CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.TabFrame.New(3)
	TabFrame.Tab1.Text = "Commands"
	TabFrame.Tab2.Text = "Modules"
	TabFrame.Tab3.Text = "Groups"
	TabFrame.Parent = Window.Content
	CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.TabFrame.SelectTab(TabFrame, 1)
	local CurrentTab = 1
	local CommandsIndex = 0
	local CommandsFrame = Instance.new("Frame")
	CommandsFrame.Name = "CommandsFrame"
	CommandsFrame.Position = UDim2.new(0, 5, 0, 27)
	CommandsFrame.Size = UDim2.new(1, -10, 1, -73)
	CommandsFrame.Parent = Window.Content
	if #Commands <= 0 then
		local Warning = Instance.new("TextLabel")
		Warning.Name = "Warning"
		Warning.Text = "No commands match your search."
		Warning.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		Warning.BorderSizePixel = 1
		Warning.TextColor3 = Color3.new(0, 0, 0)
		Warning.Size = UDim2.new(1, -50, 0, 50)
		Warning.Position = UDim2.new(0, 25, 0.5, -25)
		Warning.Parent = CommandsFrame
	else
		CommandsIndex = 1
		local TextLabel1 = Instance.new("TextLabel")
		TextLabel1.Name = "FullName"
		TextLabel1.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel1.BorderSizePixel = 0
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel1.BackgroundTransparency ~= 1 then TextLabel1.BackgroundTransparency = 1 end end)
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
		TextLabel2.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel2.BackgroundTransparency ~= 1 then TextLabel2.BackgroundTransparency = 1 end end)
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
		TextLabel3.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel3.BackgroundTransparency ~= 1 then TextLabel3.BackgroundTransparency = 1 end end)
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
		TextLabel4.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel4.BackgroundTransparency ~= 1 then TextLabel4.BackgroundTransparency = 1 end end)
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
		TextLabel5.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel5.BackgroundTransparency ~= 1 then TextLabel5.BackgroundTransparency = 1 end end)
		TextLabel5.TextColor3 = Color3.new(0, 0, 0)
		TextLabel5.TextWrap = true
		TextLabel5.TextXAlignment = "Left"
		TextLabel5.TextYAlignment = "Top"
		TextLabel5.Size = UDim2.new(1, -20, 0, 60)
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
		local Warning = Instance.new("TextLabel")
		Warning.Name = "Warning"
		Warning.Text = "No modules match your search."
		Warning.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		Warning.BorderSizePixel = 1
		Warning.TextColor3 = Color3.new(0, 0, 0)
		Warning.Size = UDim2.new(1, -50, 0, 50)
		Warning.Position = UDim2.new(0, 25, 0.5, -25)
		Warning.Parent = ModulesFrame
	else
		ModulesIndex = 1
		local TextLabel1 = Instance.new("TextLabel")
		TextLabel1.Name = "FullName"
		TextLabel1.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel1.BorderSizePixel = 0
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel1.BackgroundTransparency ~= 1 then TextLabel1.BackgroundTransparency = 1 end end)
		TextLabel1.TextColor3 = Color3.new(0, 0, 0)
		TextLabel1.TextWrap = true
		TextLabel1.TextXAlignment = "Left"
		TextLabel1.TextYAlignment = "Top"
		TextLabel1.Size = UDim2.new(1, -20, 0, 30)
		TextLabel1.Position = UDim2.new(0, 10, 0, 5)
		TextLabel1.Parent = ModulesFrame
		local TextLabel2 = Instance.new("TextLabel")
		TextLabel2.Name = "Enabled"
		TextLabel2.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel2.BorderSizePixel = 0
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel2.BackgroundTransparency ~= 1 then TextLabel2.BackgroundTransparency = 1 end end)
		TextLabel2.TextColor3 = Color3.new(0, 0, 0)
		TextLabel2.TextWrap = true
		TextLabel2.TextXAlignment = "Left"
		TextLabel2.TextYAlignment = "Top"
		TextLabel2.Size = UDim2.new(1, -20, 0, 30)
		TextLabel2.Position = UDim2.new(0, 10, 0, 65)
		TextLabel2.Parent = ModulesFrame
		local TextLabel3 = Instance.new("TextLabel")
		TextLabel3.Name = "Help"
		TextLabel3.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel3.BorderSizePixel = 0
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel3.BackgroundTransparency ~= 1 then TextLabel3.BackgroundTransparency = 1 end end)
		TextLabel3.TextColor3 = Color3.new(0, 0, 0)
		TextLabel3.TextWrap = true
		TextLabel3.TextXAlignment = "Left"
		TextLabel3.TextYAlignment = "Top"
		TextLabel3.Size = UDim2.new(1, -20, 0, 90)
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
		local Warning = Instance.new("TextLabel")
		Warning.Name = "Warning"
		Warning.Text = "No groups match your search."
		Warning.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		Warning.BorderSizePixel = 1
		Warning.TextColor3 = Color3.new(0, 0, 0)
		Warning.Size = UDim2.new(1, -50, 0, 50)
		Warning.Position = UDim2.new(0, 25, 0.5, -25)
		Warning.Parent = GroupsFrame
	else
		GroupsIndex = 1
		local TextLabel1 = Instance.new("TextLabel")
		TextLabel1.Name = "FullName"
		TextLabel1.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel1.BorderSizePixel = 0
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel1.BackgroundTransparency ~= 1 then TextLabel1.BackgroundTransparency = 1 end end)
		TextLabel1.TextColor3 = Color3.new(0, 0, 0)
		TextLabel1.TextWrap = true
		TextLabel1.TextXAlignment = "Left"
		TextLabel1.TextYAlignment = "Top"
		TextLabel1.Size = UDim2.new(1, -20, 0, 30)
		TextLabel1.Position = UDim2.new(0, 10, 0, 5)
		TextLabel1.Parent = GroupsFrame
		local TextLabel2 = Instance.new("TextLabel")
		TextLabel2.Name = "Control"
		TextLabel2.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel2.BorderSizePixel = 0
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel2.BackgroundTransparency ~= 1 then TextLabel2.BackgroundTransparency = 1 end end)
		TextLabel2.TextColor3 = Color3.new(0, 0, 0)
		TextLabel2.TextWrap = true
		TextLabel2.TextXAlignment = "Left"
		TextLabel2.TextYAlignment = "Top"
		TextLabel2.Size = UDim2.new(1, -20, 0, 30)
		TextLabel2.Position = UDim2.new(0, 10, 0, 65)
		TextLabel2.Parent = GroupsFrame
		local TextLabel3 = Instance.new("TextLabel")
		TextLabel3.Name = "Help"
		TextLabel3.BackgroundColor3 = Window.Content.BackgroundColor3
		TextLabel3.BorderSizePixel = 0
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel3.BackgroundTransparency ~= 1 then TextLabel3.BackgroundTransparency = 1 end end)
		TextLabel3.TextColor3 = Color3.new(0, 0, 0)
		TextLabel3.TextWrap = true
		TextLabel3.TextXAlignment = "Left"
		TextLabel3.TextYAlignment = "Top"
		TextLabel3.Size = UDim2.new(1, -20, 0, 90)
		TextLabel3.Position = UDim2.new(0, 10, 0, 125)
		TextLabel3.Parent = GroupsFrame
	end
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
		if CurrentTab == 1 then
			if #Commands <= 0 then return end
			Center.Text = CommandsIndex.. " of " ..#Commands
			CommandsFrame.FullName.Text = "Name: " ..Commands[CommandsIndex].FullName
			if type(Commands[CommandsIndex].Command) == "string" then
				CommandsFrame.Command.Text = "Command(s): \"" ..Commands[CommandsIndex].Command.. CoolCMDs.Data.SplitCharacter.. "\""
			elseif type(Commands[CommandsIndex].Command) == "table" then
				CommandsFrame.Command.Text = "Command(s): " ..(function() local Command = "\"" ..Commands[CommandsIndex].Command[1] .. CoolCMDs.Data.SplitCharacter.. "\"" for x = 2, #Commands[CommandsIndex].Command do Command = Command.. " or \"" ..Commands[CommandsIndex].Command[x] .. CoolCMDs.Data.SplitCharacter.. "\"" end return Command end)()
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
			ModulesFrame.Enabled.Text = "Enabled: " ..tostring(Modules[ModulesIndex].Enabled):sub(0, 1):upper() .. tostring(Modules[ModulesIndex].Enabled):sub(2)
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
		end
	end
	UpdatePage()
	TabFrame.Tab1.MouseButton1Up:connect(function()
		CurrentTab = 1
		CommandsFrame.Parent = Window.Content
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab2.MouseButton1Up:connect(function()
		CurrentTab = 2
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = Window.Content
		GroupsFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab3.MouseButton1Up:connect(function()
		CurrentTab = 3
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = Window.Content
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
end, "Help", "Gives help for commands, modules and groups.", "search terms (optional)")

CoolCMDs.Functions.CreateCommand({"status", "stat", "st"}, 2, function(Message, MessageSplit, Speaker, Self)
	if MessageSplit[1] == "instance" then
		CoolCMDs.Functions.CreateMessage("Hint", "Instance: " ..CoolCMDs.Initialization.InstanceNumber.. ". Root: _G.CoolCMDs[" ..CoolCMDs.Initialization.InstanceNumber.. "]:GetTable()", 10, Speaker)
	elseif MessageSplit[1] == "loadtime" then
		CoolCMDs.Functions.CreateMessage("Hint", "Load start time: " ..CoolCMDs.Initialization.StartTime.. ". Load finish time: " ..CoolCMDs.Initialization.FinishTime.. ". Elapsed initialization time: " ..CoolCMDs.Initialization.ElapsedTime.. ".", 10, Speaker)
	elseif MessageSplit[1] == "runtime" then
		CoolCMDs.Functions.CreateMessage("Hint", "Total run time: " ..Workspace.DistributedGameTime - CoolCMDs.Initialization.StartTime.. ".", 10, Speaker)
	elseif MessageSplit[1] == "group" then
		CoolCMDs.Functions.CreateMessage("Hint", "Group name: " ..CoolCMDs.Functions.GetPlayerTable(Speaker.Name).Group.. ". Group full name: " ..CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Speaker.Name).Group).FullName.. ". Group control level: " ..CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Speaker.Name).Group).Control, 10, Speaker)
	end
end, "Status", "Get various values.", "instance, loadtime, runtime, group")

CoolCMDs.Functions.CreateCommand({"reset", "die", "suicide"}, 1, function(Message, MessageSplit, Speaker, Self)
	if Speaker.Character ~= nil then
		if Speaker.Character:FindFirstChild("Humanoid") ~= nil then
			Speaker.Character.Humanoid.Health = 0
		else
			Speaker.Character:BreakJoints()
		end
	end
end, "Suicide", "Kill yourself.", "None")

CoolCMDs.Functions.CreateCommand({"hint", "h", "whisper"}, 3, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		CoolCMDs.Functions.CreateMessage("Hint", Speaker.Name.. ": " ..MessageSplit[i], 5)
		wait(5)
	end
end, "Hint", "Creates a hint in the Workspace.", "line 1" ..CoolCMDs.Data.SplitCharacter.. "line 2" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"message", "msg", "mes", "m"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		CoolCMDs.Functions.CreateMessage("Message", Speaker.Name.. ": " ..MessageSplit[i], 5)
		wait(5)
	end
end, "Message", "Creates a message in the Workspace.", "line 1" ..CoolCMDs.Data.SplitCharacter.. "line 2" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"messagebox", "mb"}, 5, function(Message, MessageSplit, Speaker, Self)
	if CoolCMDs.Functions.IsModuleEnabled("GuiSupport") == false then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif CoolCMDs.Functions.GetModule("GuiSupport") == nil then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.wrap(function()
			if Player:FindFirstChild("PlayerGui") == nil then return end
			local Gui = Instance.new("ScreenGui")
			Gui.Parent = Player.PlayerGui
			local function WindowExitFunction(Window)
				CoolCMDs.Functions.GetModule("GuiSupport").WindowEffect(Window, 2)
				Gui:Remove()
			end
			local Window = CoolCMDs.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0, 0, 0, 0), UDim2.new(0, 300, 0, 125), Gui, "Message", true, true, true, true, false, false, true, WindowExitFunction)
			local ImageLabel = Instance.new("ImageLabel")
			ImageLabel.Size = UDim2.new(0, 64, 0, 64)
			ImageLabel.Position = UDim2.new(0, 5, 0, 5)
			ImageLabel.BorderSizePixel = 0
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ImageLabel.BackgroundTransparency ~= 1 then ImageLabel.BackgroundTransparency = 1 end end)
			ImageLabel.Parent = Window.Content
			if MessageSplit[1]:lower() == "prompt" then
				ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363872"
				Window.Icon.Image = ImageLabel.Image
				Window.TitleBar.Text = "Prompt"
			elseif MessageSplit[1]:lower() == "warning" then
				ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363725"
				Window.Icon.Image = ImageLabel.Image
				Window.TitleBar.Text = "Warning"
			elseif MessageSplit[1]:lower() == "error" then
				ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
				Window.Icon.Image = ImageLabel.Image
				Window.TitleBar.Text = "Error"
			elseif MessageSplit[1]:lower() == "fatal" or MessageSplit[1]:lower() == "fatal error" then
				ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
				Window.Icon.Image = ImageLabel.Image
				Window.TitleBar.Text = "Fatal Error"
			elseif tonumber(MessageSplit[1]) ~= nil then
				ImageLabel.Image = "http://www.roblox.com/Asset/?id=" ..tonumber(MessageSplit[1])
				Window.Icon.Image = ImageLabel.Image
			else
				ImageLabel:Remove()
				ImageLabel = nil
			end
			for i = ImageLabel ~= nil and 2 or 1, #MessageSplit do
				local TextLabel = Instance.new("TextLabel")
				TextLabel.Text = string.rep(" ", 6) .. MessageSplit[i]
				TextLabel.BackgroundColor3 = Window.Content.BackgroundColor3
				TextLabel.BorderSizePixel = 0
				TextLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel.BackgroundTransparency ~= 1 then TextLabel.BackgroundTransparency = 1 end end)
				TextLabel.TextColor3 = Color3.new(0, 0, 0)
				TextLabel.TextXAlignment = "Left"
				TextLabel.Size = UDim2.new(1, (i <= 5 and ImageLabel ~= nil) and -74 or 0, 0, 15)
				TextLabel.Position = UDim2.new(0, (i <= 5 and ImageLabel ~= nil) and 74 or 0, 0, ((i - 1) * 15))
				TextLabel.Parent = Window.Content
				if string.len(MessageSplit[i]) * 8 > Window.Size.X.Offset then
					Window.Size = UDim2.new(0, string.len(MessageSplit[i]) * 8, 0, Window.Size.Y.Offset + 15)
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
			TextButton.MouseButton1Up:connect(function() WindowExitFunction(Window) end)
			Window.Position = UDim2.new(0.5, -Window.Size.X.Offset / 2, 0.5, -Window.Size.Y.Offset / 2)
		end)()
	end
end, "Message Box", "Creates a GUI message box in all players.", "[prompt, warning, error, [fatal, fatal error]" ..CoolCMDs.Data.SplitCharacter.. "] line 1" ..CoolCMDs.Data.SplitCharacter.. "line 2" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"hintplayer", "hp"}, 4, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit <= 1 then return false end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if string.match(Player.Name:lower(), MessageSplit[1]:lower()) then
			coroutine.wrap(function()
				for i = 2, #MessageSplit do
					CoolCMDs.Functions.CreateMessage("Hint", Speaker.Name.. ": " ..MessageSplit[i], 5, Player)
					wait(5)
				end
			end)()
		end
	end
end, "Hint (Player)", "Creates a hint in a player.", "player" ..CoolCMDs.Data.SplitCharacter.. "line 1" ..CoolCMDs.Data.SplitCharacter.. "line 2" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"messageplayer", "mp"}, 5, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit <= 1 then return false end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if string.match(Player.Name:lower(), MessageSplit[1]:lower()) then
			coroutine.wrap(function()
				for i = 2, #MessageSplit do
					CoolCMDs.Functions.CreateMessage("Message", Speaker.Name.. ": " ..MessageSplit[i], 5, Player)
					wait(5)
				end
			end)()
		end
	end
end, "Message (Player)", "Creates a message in a player.", "player" ..CoolCMDs.Data.SplitCharacter.. "line 1" ..CoolCMDs.Data.SplitCharacter.. "line 2" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"messageboxplayer", "mbp"}, 5, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit <= 1 then return false end
	if CoolCMDs.Functions.IsModuleEnabled("GuiSupport") == false then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif CoolCMDs.Functions.GetModule("GuiSupport") == nil then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if string.match(Player.Name:lower(), MessageSplit[1]:lower()) then
			coroutine.wrap(function()
				if Player:FindFirstChild("PlayerGui") == nil then return end
				local Gui = Instance.new("ScreenGui")
				Gui.Parent = Player.PlayerGui
				local function WindowExitFunction(Window)
					CoolCMDs.Functions.GetModule("GuiSupport").WindowEffect(Window, 2)
					Gui:Remove()
				end
				local Window = CoolCMDs.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0, 0, 0, 0), UDim2.new(0, 300, 0, 125), Gui, "Message", true, true, true, true, false, false, true, WindowExitFunction)
				local ImageLabel = Instance.new("ImageLabel")
				ImageLabel.Size = UDim2.new(0, 64, 0, 64)
				ImageLabel.Position = UDim2.new(0, 5, 0, 5)
				ImageLabel.BorderSizePixel = 0
				ImageLabel.BackgroundTransparency = 1
				ImageLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ImageLabel.BackgroundTransparency ~= 1 then ImageLabel.BackgroundTransparency = 1 end end)
				ImageLabel.Parent = Window.Content
				if MessageSplit[2]:lower() == "prompt" then
					ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363872"
					Window.Icon.Image = ImageLabel.Image
					Window.TitleBar.Text = "Prompt"
				elseif MessageSplit[2]:lower() == "warning" then
					ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363725"
					Window.Icon.Image = ImageLabel.Image
					Window.TitleBar.Text = "Warning"
				elseif MessageSplit[2]:lower() == "error" then
					ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
					Window.Icon.Image = ImageLabel.Image
					Window.TitleBar.Text = "Error"
				elseif MessageSplit[2]:lower() == "fatal" or MessageSplit[2]:lower() == "fatal error" then
					ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
					Window.Icon.Image = ImageLabel.Image
					Window.TitleBar.Text = "Fatal Error"
				elseif tonumber(MessageSplit[2]) ~= nil then
					ImageLabel.Image = "http://www.roblox.com/Asset/?id=" ..tonumber(MessageSplit[2])
					Window.Icon.Image = ImageLabel.Image
				else
					ImageLabel:Remove()
					ImageLabel = nil
				end
				for i = ImageLabel ~= nil and 3 or 2, #MessageSplit do
					local TextLabel = Instance.new("TextLabel")
					TextLabel.Text = string.rep(" ", 6) .. MessageSplit[i]
					TextLabel.BackgroundColor3 = Window.Content.BackgroundColor3
					TextLabel.BorderSizePixel = 0
					TextLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel.BackgroundTransparency ~= 1 then TextLabel.BackgroundTransparency = 1 end end)
					TextLabel.TextColor3 = Color3.new(0, 0, 0)
					TextLabel.TextXAlignment = "Left"
					TextLabel.Size = UDim2.new(1, (i <= 6 and ImageLabel ~= nil) and -74 or 0, 0, 15)
					TextLabel.Position = UDim2.new(0, (i <= 6 and ImageLabel ~= nil) and 74 or 0, 0, ((i - 2) * 15))
					TextLabel.Parent = Window.Content
					if string.len(MessageSplit[i]) * 8 > Window.Size.X.Offset then
						Window.Size = UDim2.new(0, string.len(MessageSplit[i]) * 8, 0, Window.Size.Y.Offset + 15)
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
				TextButton.MouseButton1Up:connect(function() WindowExitFunction(Window) end)
				Window.Position = UDim2.new(0.5, -Window.Size.X.Offset / 2, 0.5, -Window.Size.Y.Offset / 2)
			end)()
		end
	end
end, "Message Box (Player)", "Creates a GUI message box in a player.", "player" ..CoolCMDs.Data.SplitCharacter.. "[prompt, warning, error, [fatal, fatal error]" ..CoolCMDs.Data.SplitCharacter.. "] line 1" ..CoolCMDs.Data.SplitCharacter.. "line 2" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand("explorer", 5, function(Message, MessageSplit, Speaker, Self)
	if CoolCMDs.Functions.IsModuleEnabled("GuiSupport") == false then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif CoolCMDs.Functions.GetModule("GuiSupport") == nil then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	for i = 1, #MessageSplit do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), MessageSplit[i]:lower()) and Player:FindFirstChild("PlayerGui") ~= nil then
				coroutine.wrap(function()
					local Object = Workspace
					local ObjectChildren = Object:children()
					local SortType = 1
					local Home = game
					local Gui = Instance.new("ScreenGui")
					Gui.Parent = Player.PlayerGui
					local function WindowExitFunction(Frame)
						Object = nil
						UpdatePage = nil
						CoolCMDs.Functions.GetModule("GuiSupport").WindowEffect(Frame, 2)
						Frame:Remove()
					end
					local Window = CoolCMDs.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -550 / 2, 0.5, -355 / 2), UDim2.new(0, 550, 0, 355), Gui, "Explorer v1.7", true, true, true, true, true, true, true, WindowExitFunction, UDim2.new(0, 550, 0, 355))
					Window.Changed:connect(function(Property)
						if Property == "Parent" then
							if Window.Parent == nil then
								wait(2)
								Gui:Remove()
							end
						end
					end)
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
					local ListFrameHeader = CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
					ListFrameHeader.Size = UDim2.new(1, -10, 0, 20)
					ListFrameHeader.Position = UDim2.new(0, 5, 0, 25)
					ListFrameHeader.Parent = Window.Content
					CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameHeader, {"#\tName\tClassName\tParent"}, 2)
					local ListFrame = CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
					ListFrame.Size = UDim2.new(1, -10, 1, -70)
					ListFrame.Position = UDim2.new(0, 5, 0, 45)
					ListFrame.Parent = Window.Content
					local function UpdatePage(...)
						local List = {}
						for i, Part in pairs(ObjectChildren) do
							table.insert(List, i.. "\t" ..(Part.Name == "" and "Nil" or Part.Name).. "\t" ..(Part.ClassName == "" and "Nil" or Part.ClassName).. "\t" ..(Part.Parent == nil and "Nil" or Part.Parent.Name))
						end
						if SortType ~= 1 then
							table.sort(List, function(a, b) return string.lower(CoolCMDs.Functions.Explode("\t", a)[SortType]) < string.lower(CoolCMDs.Functions.Explode("\t", b)[SortType]) end)
						end
						CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrame, List, 1, ...)
						Center.Text = ListFrame.ListIndex.Value.. " to " ..(ListFrame.ListIndex.Value + #ListFrame:children() - 2).. " of " ..#ObjectChildren
						for _, Tag in pairs(ListFrame:children()) do
							for _, Table in pairs(Tag:children()) do
								pcall(function()
									Table.MouseButton1Down:connect(function()
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
						CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrame, {"Loading..."}, 1)
						wait(2.5)
						UpdatePage()
					end)()
					for _, Table in pairs(ListFrameHeader.Tag1:children()) do
						Table.MouseButton1Down:connect(function()
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
						local function WindowExitFunction(Frame)
							CanCreate = false
							CoolCMDs.Functions.GetModule("GuiSupport").WindowEffect(Frame, 2)
							Frame:Remove()
						end
						local Popup = CoolCMDs.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -200 / 2, 0.5, -250 / 2), UDim2.new(0, 200, 0, 250), Gui, "New Object", true, true, true, false, false, false, true)
						Popup.Name = "New Object"
						Popup.Icon.Image = "http://www.roblox.com/Asset/?id=42154070"
						local TextLabel = Instance.new("TextLabel")
						TextLabel.Text = "Instance (ClassName):"
						TextLabel.BorderColor3 = Color3.new(0, 0, 0)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel.BackgroundTransparency ~= 1 then TextLabel.BackgroundTransparency = 1 end end)
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
						TextLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel.BackgroundTransparency ~= 1 then TextLabel.BackgroundTransparency = 1 end end)
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
						TextLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel.BackgroundTransparency ~= 1 then TextLabel.BackgroundTransparency = 1 end end)
						TextLabel.Position = UDim2.new(0, 5, 0, 75)
						TextLabel.Size = UDim2.new(0, 75, 0, 15)
						TextLabel.TextWrap = true
						TextLabel.TextXAlignment = "Left"
						TextLabel.Parent = Popup.Content
						local CheckBox = CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.CheckBox.New(true)
						CheckBox.Name = "ObjectArchivable"
						CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.CheckBox.SelectCheckBox(ChoiceNewRecent[3])
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
								NewObject[2].archivable = CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)
								NewObject[2].Parent = Object
								if NewObject[2].Parent ~= nil then
									pcall(function() NewObject[2].CFrame = Speaker.Character.Torso.CFrame * CFrame.new(0, 6, 0) end)
									ChoiceNewRecent = {Popup.Content.ObjectClassName.Text, Popup.Content.ObjectName.Text, CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)}
									Update()
									WindowExitFunction(Popup)
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
							ChoiceNewRecent = {Popup.Content.ObjectClassName.Text, Popup.Content.ObjectName.Text, CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)}
							WindowExitFunction(Popup)
						end)
						Popup.Parent = Gui
						Window.Changed:connect(function(Property)
							if Property == "Parent" then
								if Window.Parent == nil then
									CanCreate = false
									WindowExitFunction(Popup)
								end
							end
						end)
					end)
					local ChoiceNewIcon = ChoiceIcon:Clone()
					ChoiceNewIcon.Image = "http://www.roblox.com/Asset/?id=42154070"
					ChoiceNewIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ChoiceNewIcon.BackgroundTransparency ~= 1 then ChoiceNewIcon.BackgroundTransparency = 1 end end)
					ChoiceNewIcon.Parent = ChoiceNew
					local ChoiceLoadRecent = "47433"
					local ChoiceLoad = Choice:Clone()
					ChoiceLoad.Text = string.rep(" ", 8).. "Load..."
					ChoiceLoad.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceLoad.Position = UDim2.new(0, 75 + 1, 0, 1)
					ChoiceLoad.Parent = MenuBar1
					ChoiceLoad.MouseEnter:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceLoad.BorderSizePixel = 1 end)
					ChoiceLoad.MouseLeave:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceLoad.BorderSizePixel = 0 end)
					ChoiceLoad.MouseButton1Up:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceLoad.MouseButton1Down:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						local CanClose = true
						local CanCreate = true
						local function WindowExitFunction(Frame)
							if CanClose == false then return end
							CanCreate = false
							CoolCMDs.Functions.GetModule("GuiSupport").WindowEffect(Frame, 2)
							Frame:Remove()
						end
						local Popup = CoolCMDs.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -200 / 2, 0.5, -175 / 2), UDim2.new(0, 200, 0, 175), Gui, "Load from URL", true, true, true, false, false, false, true, WindowExitFunction)
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
						TextLabel.Changed:connect(function(Property) if Property == "BackgroundTransparency" and TextLabel.BackgroundTransparency ~= 1 then TextLabel.BackgroundTransparency = 1 end end)
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
							Popup.StatusBar.Text = "Loading asset \"" ..Popup.Content.ID.Text.. "\"..."
							local NewObject = game:GetService("InsertService"):LoadAsset(tonumber(Popup.Content.ID.Text))
							Popup.StatusBar.Text = "Compiling asset \"" ..Popup.Content.ID.Text.. "\"..."
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
									WindowExitFunction(Popup)
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
							WindowExitFunction(Popup)
						end)
						Popup.Parent = Gui
						Window.Changed:connect(function(Property)
							if Property == "Parent" then
								if Window.Parent == nil then
									CanCreate = false
									while CanClose == false do wait() end
									WindowExitFunction(Popup)
								end
							end
						end)
					end)
					local ChoiceLoadIcon = ChoiceIcon:Clone()
					ChoiceLoadIcon.Image = "http://www.roblox.com/Asset/?id=42183533"
					ChoiceLoadIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ChoiceLoadIcon.BackgroundTransparency ~= 1 then ChoiceLoadIcon.BackgroundTransparency = 1 end end)
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
						local Popup = CoolCMDs.Functions.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -500 / 2, 0.5, -500 / 2), UDim2.new(0, 500, 0, 500), Gui, "Set Propertes", true, true, true, true, true, true, true)
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
						local ListFrameHeader = CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
						ListFrameHeader.Size = UDim2.new(1, -10, 0, 20)
						ListFrameHeader.Position = UDim2.new(0, 5, 0, 5)
						ListFrameHeader.Parent = Popup.Content
						CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameHeader, {"Variable\tType\tValue"}, 2)
						local ListFrameProperties = CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.New()
						ListFrameProperties.Size = UDim2.new(1, -10, 1, -100)
						ListFrameProperties.Position = UDim2.new(0, 5, 0, 25)
						ListFrameProperties.Parent = Popup.Content
						local function UpdateProperties(...)
							local Properties, Types = CoolCMDs.Functions.GetModule("RobloxProperties").GetProperties(Object)
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
							table.sort(List, function(a, b) return string.lower(CoolCMDs.Functions.Explode("\t", a)[SortType2]) < string.lower(CoolCMDs.Functions.Explode("\t", b)[SortType2]) end)
							CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameProperties, List, 1, ...)
							Center.Text = ListFrameProperties.ListIndex.Value.. " to " ..(ListFrameProperties.ListIndex.Value + #ListFrameProperties:children() - 2).. " of " ..#Properties
							for _, Tag in pairs(ListFrameProperties:children()) do
								for _, Table in pairs(Tag:children()) do
									pcall(function()
										Table.MouseButton1Down:connect(function()
											Popup.StatusBar.Text = "Currently, editing properties has not been implimented."
										end)
									end)
								end
							end
						end
						coroutine.wrap(function()
							CoolCMDs.Functions.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameProperties, {"Loading..."}, 1)
							wait(2.5)
							UpdateProperties()
						end)()
						for i, Table in pairs(ListFrameHeader.Tag1:children()) do
							Table.MouseButton1Down:connect(function()
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
					ChoicePropertiesIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ChoicePropertiesIcon.BackgroundTransparency ~= 1 then ChoicePropertiesIcon.BackgroundTransparency = 1 end end)
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
					ChoiceDeleteIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ChoiceDeleteIcon.BackgroundTransparency ~= 1 then ChoiceDeleteIcon.BackgroundTransparency = 1 end end)
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
					ChoiceRefreshIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ChoiceRefreshIcon.BackgroundTransparency ~= 1 then ChoiceRefreshIcon.BackgroundTransparency = 1 end end)
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
					ChoiceUpLevelIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ChoiceUpLevelIcon.BackgroundTransparency ~= 1 then ChoiceUpLevelIcon.BackgroundTransparency = 1 end end)
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
					ChoiceHomeIcon.Changed:connect(function(Property) if Property == "BackgroundTransparency" and ChoiceHomeIcon.BackgroundTransparency ~= 1 then ChoiceHomeIcon.BackgroundTransparency = 1 end end)
					ChoiceHomeIcon.Parent = ChoiceHome
				end)()
			end
		end
	end
end, "Explorer", "Creates a GUI in a player allowing you to explore the contents of the game. The controls are simple, and extra help is provided under the Help submenu.", "player")

CoolCMDs.Functions.CreateCommand("lighting", 3, function(Message, MessageSplit, Speaker, Self)
	if MessageSplit[1]:lower() == "dawn" then
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(127 / 255, 127 / 255, 150 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 25 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		game:GetService("Lighting").TimeOfDay = "07:00:00"
	end
	if MessageSplit[1]:lower() == "day" then
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(150 / 255, 127 / 255, 150 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(10 / 255, 10 / 255, 10 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		game:GetService("Lighting").TimeOfDay = "12:00:00"
	end
	if MessageSplit[1]:lower() == "dusk" then
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(150 / 255, 110 / 255, 110 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(50 / 255, 10 / 255, 10 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		game:GetService("Lighting").TimeOfDay = "17:55:00"
	end
	if MessageSplit[1]:lower() == "night" then
		game:GetService("Lighting").Brightness = 5
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(20 / 255, 20 / 255, 20 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 25 / 255)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(200 / 255, 200 / 255, 200 / 255)
		game:GetService("Lighting").TimeOfDay = "21:00:00"
	end
	if MessageSplit[1]:lower() == "default" then
		game:GetService("Lighting").Brightness = 1
		game:GetService("Lighting").GeographicLatitude = 41.73
		game:GetService("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
		game:GetService("Lighting").TimeOfDay = "14:00:00"
	end
	if MessageSplit[1]:lower() == "black" then
		game:GetService("Lighting").Brightness = 0
		game:GetService("Lighting").GeographicLatitude = 90
		game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
		game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
		game:GetService("Lighting").ShadowColor = Color3.new(1, 1, 1)
		game:GetService("Lighting").TimeOfDay = "00:00:00"
	end
	if MessageSplit[1]:lower() == "shift" then
		if Self.Shift == nil then Self.Shift = false end
		if Self.ShiftTime == nil then Self.ShiftTime = 10 end
		if Self.Shift == true then Self.Shift = false else Self.Shift = true end
		local h = tonumber(CoolCMDs.Functions.Explode(":", game:GetService("Lighting").TimeOfDay)[1])
		local m = tonumber(CoolCMDs.Functions.Explode(":", game:GetService("Lighting").TimeOfDay)[2])
		local s = tonumber(CoolCMDs.Functions.Explode(":", game:GetService("Lighting").TimeOfDay)[3])
		while Self.Shift == true and CoolCMDs ~= nil do
			s = s + tonumber(MessageSplit[2])
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
	if MessageSplit[1]:lower() == "ambient" then pcall(function() game:GetService("Lighting").Ambient = Color3.new(tonumber(MessageSplit[2]), tonumber(MessageSplit[3]), tonumber(MessageSplit[4])) end) end
	if MessageSplit[1]:lower() == "bottom" then pcall(function() game:GetService("Lighting").ColorShift_Bottom = Color3.new(tonumber(MessageSplit[2]), tonumber(MessageSplit[3]), tonumber(MessageSplit[4])) end) end
	if MessageSplit[1]:lower() == "top" then pcall(function() game:GetService("Lighting").ColorShift_Top = Color3.new(tonumber(MessageSplit[2]), tonumber(MessageSplit[3]), tonumber(MessageSplit[4])) end) end
	if MessageSplit[1]:lower() == "shadow" then pcall(function() game:GetService("Lighting").ShadowColor = Color3.new(tonumber(MessageSplit[2]), tonumber(MessageSplit[3]), tonumber(MessageSplit[4])) end) end
	if MessageSplit[1]:lower() == "brightness" then pcall(function() game:GetService("Lighting").Brightness = Color3.new(tonumber(MessageSplit[2]), tonumber(MessageSplit[3]), tonumber(MessageSplit[4])) end) end
	if MessageSplit[1]:lower() == "latitude" then pcall(function() game:GetService("Lighting").GeographicLatitude = tonumber(MessageSplit[2]) end) end
	if MessageSplit[1]:lower() == "time" or MessageSplit[1]:lower() == "timeofday" then pcall(function() game:GetService("Lighting").TimeOfDay = MessageSplit[2] end) end
end, "Lighting", "Change the lighting color.", "dawn, day, night, default, black, shift, [ambient, bottom, top, shadow]" ..CoolCMDs.Data.SplitCharacter.. "x" ..CoolCMDs.Data.SplitCharacter.. "y" ..CoolCMDs.Data.SplitCharacter.. "z, brightness" ..CoolCMDs.Data.SplitCharacter.. "0-5, latitude" ..CoolCMDs.Data.SplitCharacter.. "0-360, [time, timeofday]" ..CoolCMDs.Data.SplitCharacter.. "0-24:0-60:0-60")

CoolCMDs.Functions.CreateCommand({"lockscript", "lock script", "lockscripts", "lock scripts", "ls"}, 5, function(Message, MessageSplit, Speaker, Self)
	if MessageSplit[1]:lower() == "0" or MessageSplit[1]:lower() == "false" then
		game:GetService("ScriptContext").ScriptsDisabled = false
		if Self.new ~= nil then
			Instance.new = Self.new
			Self.new = nil
		end
		for _, Scripts in pairs(CoolCMDs.Functions.GetRecursiveChildren(nil, "script", 2)) do
			if Scripts:IsA("BaseScript") then
				Scripts.Disabled = false
			end
		end
		CoolCMDs.Functions.CreateMessage("Message", "Scripts unlocked.", 5)
	elseif MessageSplit[1]:lower() == "1" or MessageSplit[1]:lower() == "true" then
		local LockMessage = CoolCMDs.Functions.CreateMessage("Message", "Locking scripts...")
		game:GetService("ScriptContext").ScriptsDisabled = true
		if pcall(function() local _ = Instance.new("Part") end) == true then
			Self.new = Instance.new
			Instance.new = function() error("No objects are currently allowed.") end
		end
		for _, Scripts in pairs(CoolCMDs.Functions.GetRecursiveChildren(nil, "script", 2)) do
			if Scripts:IsA("BaseScript") then
				Scripts.Disabled = true
			end
		end
		LockMessage.Text = "Scripts locked."
		wait(5)
		LockMessage:Remove()
	end
end, "Lock Scripts", "Disables all new scripts and all currently running scripts (besides itself).", "0 (false), 1 (true)")

CoolCMDs.Functions.CreateCommand({"clean", "cl"}, 4, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 3 then return end
	local CleanType = MessageSplit[#MessageSplit - 1]
	if CleanType == nil then CleanType = "1" end
	CleanType = CleanType:lower()
	if CleanType == "1" or CleanType == "name" then CleanType = 1 end
	if CleanType == "2" or CleanType == "class" or CleanType == "classname" then CleanType = 2 end
	if CleanType == "3" or CleanType == "type" or CleanType == "isa" then CleanType = 3 end
	if CleanType == "4" or CleanType == "all" then CleanType = 4 end
	local CleanExtra = MessageSplit[#MessageSplit]
	if CleanExtra == nil then CleanExtra = "" end
	for i = 1, #MessageSplit - 2 do
		for _, Part in pairs(CoolCMDs.Functions.GetRecursiveChildren(nil, MessageSplit[i], CleanType)) do
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
end, "Clean", "Cleans the game of all obejcts with a certain Name or ClassName or inherited class (or all). Extra arguments: nochar, noplayer, nobase, noscript, stopscript, stopsound.", "[name, classname, inherited]" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "[[1, name], [2, class], [3, inherited], [4, all]]" ..CoolCMDs.Data.SplitCharacter.. "extra arguments")

CoolCMDs.Functions.CreateCommand("build", 5, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return end
	local BuildType = MessageSplit[1]
	if BuildType == nil then BuildType = "1" end
	BuildType = BuildType:lower()
	if BuildType == "1" or BuildType == "save" then BuildType = 1 end
	if BuildType == "2" or BuildType == "load" then BuildType = 2 end
	local BuildArg1 = MessageSplit[2]
	if BuildArg1 == nil then BuildArg1 = "default" end
	if Self.Saves == nil then Self.Saves = {} end
	if BuildType == 1 then
		Self.Saves[BuildArg1] = {}
		Self.Saves[BuildArg1].Model = Instance.new("Model")
		for _, Part in pairs(CoolCMDs.Functions.GetRecursiveChildren(Workspace)) do
			if (function()
				for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
					if Part == Player.Character or Part:IsDescendantOf(Player.Character) then
						return false
					end
				end
				return true
			end)() == true then
				pcall(function() Part:Clone().Parent = Self.Saves[BuildArg1].Model end)
			end
		end
		CoolCMDs.Functions.CreateMessage("Hint", "Saved " ..#Self.Saves[BuildArg1].Model:children().. " objects to the save file \"" ..BuildArg1.. "\".", 5)
	elseif BuildType == 2 then
		if Self.Saves[BuildArg1] ~= nil then
			for _, Part in pairs(CoolCMDs.Functions.GetRecursiveChildren(Workspace)) do
				if (function()
					for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
						if Part == Player.Character or Part:IsDescendantOf(Player.Character) then
							return false
						end
					end
					return true
				end)() == true then
					pcall(function() Part.Disabled = true end)
					pcall(function() Part:Remove() end)
				end
			end
			local Loading = CoolCMDs.Functions.CreateMessage("Hint", "Loading " ..#Self.Saves[BuildArg1].Model:children().. " objects from the save file \"" ..BuildArg1.. "\"...")
			for _, Part in pairs(Self.Saves[BuildArg1].Model:children()) do
				pcall(function() local x = Part:Clone() x:MakeJoints() x.Parent = Workspace x:MakeJoints() end)
			end
			Loading:Remove()
			CoolCMDs.Functions.CreateMessage("Hint", "Loaded " ..#Self.Saves[BuildArg1].Model:children().. " objects from the save file \"" ..BuildArg1.. "\" successfully.", 5)
		else
			CoolCMDs.Functions.CreateMessage("Hint", "Save file \"" ..BuildArg1.. "\" does not exist.", 5)
		end
	end
end, "Build Saving and Loading", "Saves and loads builds. save: Saves a build to [save name]. load: Loads a build from [save name].", "[save, load]" ..CoolCMDs.Data.SplitCharacter.. "[save name]")

CoolCMDs.Functions.CreateCommand("health", 3, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return false end
	local Health = MessageSplit[#MessageSplit]
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
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				if PlayerList.Character:FindFirstChild("Humanoid") ~= nil then
					if Health > PlayerList.Character.Humanoid.MaxHealth then
						PlayerList.Character.Humanoid.MaxHealth = Health
					else
						PlayerList.Character.Humanoid.MaxHealth = 100
						if Health > PlayerList.Character.Humanoid.MaxHealth then
							PlayerList.Character.Humanoid.MaxHealth = Health
						end
					end
					PlayerList.Character.Humanoid.Health = Health
				end
			end
		end
	end
end, "Health", "Set the health of a player's character. ", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "[health (number), math.huge, random, my health]")

CoolCMDs.Functions.CreateCommand("lua", 4, function(Message, MessageSplit, Speaker, Self)
	CoolCMDs.Functions.CreateScript(Message, Workspace, true)
end, "Lua Run", "Creates a new script.", "source")

CoolCMDs.Functions.CreateCommand({"luanodebug", "luandb"}, 5, function(Message, MessageSplit, Speaker, Self)
	CoolCMDs.Functions.CreateScript(Message, Workspace, false)
end, "Lua Run (No Debug)", "Creates a new script without error output.", "source")

CoolCMDs.Functions.CreateCommand("loadstring", 4, function(Message, MessageSplit, Speaker, Self)
	Spawn(function() loadstring(Message)() end)
end, "Lua Run", "Creates a new script.", "source")

CoolCMDs.Functions.CreateCommand({"walkspeed", "ws"}, 3, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return false end
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				if PlayerList.Character:FindFirstChild("Humanoid") ~= nil then
					pcall(function() PlayerList.Character.Humanoid.WalkSpeed = tonumber(MessageSplit[#MessageSplit]) end)
				end
			end
		end
	end
end, "WalkSpeed", "Set the WalkSpeed of a player's character. ", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "[speed (number), math.huge, random, my walkspeed]")

CoolCMDs.Functions.CreateCommand({"teleport", "tele", "tp"}, 4, function(Message, MessageSplit, Speaker, Self)
	local Position = MessageSplit[#MessageSplit]:lower()
	local Player = nil
	if Position == "" or Position == "me" then
		if Speaker.Character ~= nil then
			if Speaker.Character:FindFirstChild("Torso") ~= nil then
				Position = Speaker.Character.Torso.CFrame
				Player = Speaker
			end
		end
	elseif #CoolCMDs.Functions.Explode(", ", Position) == 3 then
		Position = CFrame.new(CoolCMDs.Functions.Explode(", ", Position)[1], CoolCMDs.Functions.Explode(", ", Position)[2], CoolCMDs.Functions.Explode(", ", Position)[3])
	else
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), Position:lower()) and PlayerList.Character ~= nil then
				if PlayerList.Character:FindFirstChild("Torso") ~= nil then
					Position = PlayerList.Character.Torso.CFrame
					Player = PlayerList
					break
				end
			end
		end
	end
	if type(Position) == "string" then return end
	local i = 1
	for x = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[x]:lower()) and PlayerList.Character ~= nil and PlayerList ~= Player then
				i = i + 1
				if PlayerList.Character:FindFirstChild("Torso") ~= nil then
					PlayerList.Character.Torso.CFrame = Position * CFrame.new(0, 4 * i, 0)
					PlayerList.Character.Torso.Velocity = Vector3.new(0, 0, 0)
					PlayerList.Character.Torso.RotVelocity = Vector3.new(0, 0, 0)
				else
					PlayerList.Character:MoveTo((Position * CFrame.new(0, 4 * i, 0)).p)
				end
			end
		end
	end
end, "Teleport", "Teleport players to other players. ", "player to teleport" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "player to teleport to, or [x, y, z]")

CoolCMDs.Functions.CreateCommand({"waypoint", "wp"}, 3, function(Message, MessageSplit, Speaker, Self)
	if Speaker.Character == nil then return end
	if Speaker.Character:FindFirstChild("Torso") == nil then return end
	if #MessageSplit < 2 then return end
	local Type = MessageSplit[1]:lower()
	local Index = MessageSplit[2]
	local Player = CoolCMDs.Functions.GetPlayerTable(Speaker.Name)
	if Player.Waypoints == nil then
		Player.Waypoints = {}
	end
	Waypoint = Player.Waypoints
	if Type == "set" then
		Waypoint[Index] = {}
		Waypoint[Index].CFrame = Speaker.Character.Torso.CFrame
		Waypoint[Index].Velocity = Speaker.Character.Torso.Velocity
		Waypoint[Index].RotVelocity = Speaker.Character.Torso.RotVelocity
		CoolCMDs.Functions.CreateMessage("Hint", "[Waypoint \"" ..Index.. "\"] Set at CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
	elseif Type == "get" then
		if Waypoint[Index] ~= nil then
			Speaker.Character.Torso.CFrame = Waypoint[Index].CFrame
			Speaker.Character.Torso.Velocity = Waypoint[Index].Velocity
			Speaker.Character.Torso.RotVelocity = Waypoint[Index].RotVelocity
			CoolCMDs.Functions.CreateMessage("Hint", "[Waypoint \"" ..Index.. "\"] Moved to CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
		else
			CoolCMDs.Functions.CreateMessage("Hint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	elseif Type == "remove" then
		if Waypoint[Index] ~= nil then
			Waypoint[Index] = nil
			CoolCMDs.Functions.CreateMessage("Hint", "[Waypoint \"" ..Index.. "\"] Removed.", 5, Speaker)
		else
			CoolCMDs.Functions.CreateMessage("Hint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	elseif Type == "show" then
		if Waypoint[Index] ~= nil then
			CoolCMDs.Functions.CreateMessage("Hint", "[Waypoint \"" ..Index.. "\"] CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
		else
			CoolCMDs.Functions.CreateMessage("Hint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	end
end, "Waypoint", "Set dynamic waypoints that store your character's position, saved by string indices.", "[set, get]" ..CoolCMDs.Data.SplitCharacter.. "waypoint index")

CoolCMDs.Functions.CreateCommand({"kill", "ki"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				for _, Part in pairs(PlayerList.Character:children()) do
					pcall(function() Part.Health = 0 end)
				end
			end
		end
	end
end, "Kill", "Kills people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"freeze", "f"}, 3, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				for _, Part in pairs(PlayerList.Character:children()) do
					pcall(function() Part.Anchored = true end)
				end
			end
		end
	end
end, "Freeze", "Freeze people in place.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"unfreeze", "unf", "uf", "thaw", "th"}, 3, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				for _, Part in pairs(PlayerList.Character:children()) do
					pcall(function() Part.Anchored = false end)
				end
			end
		end
	end
end, "Unfreeze/Thaw", "Unfreeze/thaw people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"killer frogs", "frogs"}, 3, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return end
	local Frogs = tonumber(MessageSplit[#MessageSplit])
	if Frogs == nil then Frogs = 1 end
	if Frogs > 25 then Frogs = 25 end
	if Frogs <= 0 then Frogs = 1 end
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and pcall(function() local _, _ = PlayerList.Character.Torso.CFrame, PlayerList.Character.Humanoid.Health end) == true then
				for x = 1, Frogs do
					local Frog = Instance.new("Part", Workspace)
					Frog.Name = "Killer Frog"
					Frog.BrickColor = BrickColor.new("Bright green")
					Frog.FormFactor = "Custom"
					Frog.Size = Vector3.new(0.9, 0.9, 0.9)
					Frog.TopSurface = 0
					Frog.BottomSurface = 0
					Frog.CFrame = CFrame.new(PlayerList.Character.Torso.Position) * CFrame.new(math.random(-10, 10), math.random(-1, 1), math.random(-10, 10))
					Frog.Touched:connect(function(Hit) pcall(function() Hit.Parent.Humanoid:TakeDamage(0.5) end) end)
					Instance.new("Decal", Frog).Texture = "rbxasset://textures\\face.png"
					coroutine.wrap(function()
						for i = 1, 0, -0.05 do
							Frog.Transparency = i
							wait()
						end
						Frog.Transparency = 0
						while Frog.Parent ~= nil do
							if pcall(function() local _, _ = PlayerList.Character.Torso.CFrame, PlayerList.Character.Humanoid.Health end) == false then break end
							if PlayerList.Character.Humanoid.Health <= 0 then break end
							wait(math.random(10, 200) / 100)
							Frog.Velocity = Frog.Velocity + ((PlayerList.Character.Torso.Position - Frog.Position).unit * math.random(20, 40)) + Vector3.new(0, math.random(15, 25), 0)
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
end, "Killer Frogs", "Throw some frogs at people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "number of frogs")

CoolCMDs.Functions.CreateCommand({"killer bees", "bees"}, 3, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return end
	local Bees = tonumber(MessageSplit[#MessageSplit])
	if Bees == nil then Bees = 1 end
	if Bees > 50 then Bees = 50 end
	if Bees <= 0 then Bees = 1 end
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and pcall(function() local _, _ = PlayerList.Character.Torso.CFrame, PlayerList.Character.Humanoid.Health end) == true then
				for x = 1, Bees do
					local Bee = Instance.new("Part", Workspace)
					Bee.Name = "Killer Bee"
					Bee.BrickColor = BrickColor.new("Bright yellow")
					Bee.FormFactor = "Custom"
					Bee.Size = Vector3.new(0.4, 0.9, 0.4)
					Bee.TopSurface = 0
					Bee.BottomSurface = 0
					Bee.CFrame = CFrame.new(PlayerList.Character.Torso.Position) * CFrame.new(math.random(-10, 10), math.random(1, 25), math.random(-10, 10))
					Bee.Touched:connect(function(Hit) pcall(function() Hit.Parent.Humanoid:TakeDamage(0.25) end) end)
					Instance.new("SpecialMesh", Bee).MeshType = "Head"
					coroutine.wrap(function()
						for i = 1, 0, -0.05 do
							Bee.Transparency = i
							wait()
						end
						Bee.Transparency = 0
						while Bee.Parent ~= nil do
							if pcall(function() local _, _ = PlayerList.Character.Torso.CFrame, PlayerList.Character.Humanoid.Health end) == false then break end
							if PlayerList.Character.Humanoid.Health <= 0 then break end
							Bee.Velocity = Bee.Velocity + ((PlayerList.Character.Torso.Position - Bee.Position).unit * math.random(15, 20)) + Vector3.new(math.random(-5, 5), math.random(-5, 5) + 2.5, math.random(-5, 5))
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
end, "Killer Bees", "Throw clouds of angry bees at people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "number of bees")

CoolCMDs.Functions.CreateCommand({"blind", "b"}, 5, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
				local Blind = Instance.new("ScreenGui", PlayerList.PlayerGui)
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
						if Blind.Parent ~= PlayerList.PlayerGui then
							Blind.Parent = PlayerList.PlayerGui
						end
					end
				end)
			end
		end
	end
end, "Blind", "Blind people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"unblind", "noblind", "unb", "ub", "nb"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
				pcall(function() while true do PlayerList.PlayerGui.CoolCMDsBlind.Name = "CoolCMDsBlindDisabled" PlayerList.PlayerGui.CoolCMDsBlindDisabled:Remove() end end)
			end
		end
	end
end, "Unblind", "Let people see again.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"nogui", "ng"}, 5, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
				for _, Part in pairs(PlayerList.PlayerGui:children()) do
					if Part:IsA("GuiBase") then
						pcall(function() Part:Remove() end)
					end
				end
			end
		end
	end
end, "No Gui", "Remove all Gui's from a player.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"notools", "nt"}, 5, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
				if PlayerList.Character ~= nil then
					for _, Part in pairs(PlayerList.Character:children()) do
						if Part:IsA("BackpackItem") then
							pcall(function() Part:Remove() end)
						end
					end
				end
				for _, Part in pairs(PlayerList.Backpack:children()) do
					if Part:IsA("BackpackItem") then
						pcall(function() Part:Remove() end)
					end
				end
			end
		end
	end
end, "No Tools", "Remove all tools from a player.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"crush", "cr"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and pcall(function() local _ = PlayerList.Character.Torso.CFrame end) == true and pcall(function() local _ = PlayerList.Character.Humanoid end) == true then
				coroutine.wrap(function()
					local WalkSpeed = PlayerList.Character.Humanoid.WalkSpeed
					PlayerList.Character.Humanoid.WalkSpeed = 0
					wait(3)
					PlayerList.Character.Humanoid.WalkSpeed = WalkSpeed
				end)()
				local Brick = Instance.new("Part", Workspace)
				Brick.Name = "Brick"
				Brick.BrickColor = BrickColor.new("Really black")
				Brick.TopSurface = 0
				Brick.BottomSurface = 0
				Brick.FormFactor = "Custom"
				Brick.Size = Vector3.new(10, 7, 8)
				Brick.CFrame = CFrame.new(PlayerList.Character.Torso.Position) * CFrame.new(0, 200, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(0, 360)), 0)
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
end, "Crush", "WHAM.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"respawn", "rs"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
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
					PlayerList.Character = Model
					Humanoid.Health = 0
				end)
			end
		end
	end
end, "Respawn", "Respawn a player.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"forcefield", "ff", "shield", "sh"}, 3, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				Instance.new("ForceField", PlayerList.Character)
			end
		end
	end
end, "Spawn ForceField", "Spawn a ForceField object in a Player's character.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"unforcefield", "noforcefield", "unff", "uff", "noff", "unshield", "unsh", "ush", "noshield", "nosh"}, 3, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				for _, Part in pairs(PlayerList.Character:children()) do
					if Part:IsA("ForceField") then
						Part:Remove()
					end
				end
			end
		end
	end
end, "Remove ForceField", "Remove all ForceField objects in a Player's character.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"explode", "ex"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				for _, Part in pairs(PlayerList.Character:children()) do
					if Part:IsA("BasePart") then
						local Explosion = Instance.new("Explosion")
						Explosion.BlastPressure = math.random(100000, 1000000)
						Explosion.BlastRadius = math.random(1, 25)
						Explosion.Position = Part.Position
						Explosion.Parent = PlayerList.Character
					end
				end
				PlayerList.Character:BreakJoints()
			end
		end
	end
end, "Explode", "Spawn an explosion in all parts of a player.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand("hax", 4, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return false end
	if CoolCMDs.Functions.IsModuleEnabled("CharacterSupport") == false then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the CharacterSupport module to be enabled.", 5, Speaker)
		return
	elseif CoolCMDs.Functions.GetModule("CharacterSupport") == nil then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the CharacterSupport module to be installed.", 5, Speaker)
		return
	end
	local Characters = tonumber(MessageSplit[#MessageSplit])
	if Characters == nil then Characters = 1 end
	if Characters <= 0 then Characters = 1 end
	if Characters > 10 then Characters = 10 end
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and pcall(function() local _ = PlayerList.Character.Torso end) == true then
				for i = 1, Characters do
					coroutine.wrap(function()
						local Character = CoolCMDs.Functions.GetModule("CharacterSupport").CreateCharacter(true)
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
						Torso.CFrame = CFrame.new(PlayerList.Character.Torso.Position) * CFrame.new(math.sin(math.random(0, (math.pi * 100) * 2) / 100) * 25, 5, math.cos(math.random(0, (math.pi * 100) * 2) / 100) * 25)
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
								if PlayerList.Character == nil then break end
								if PlayerList.Character:FindFirstChild("Torso") == nil or PlayerList.Character:FindFirstChild("Humanoid") == nil or RightArm.Parent ~= Character or Humanoid.Health <= 0 then break end
								if PlayerList.Character.Humanoid.Health <= 0 then break end
								if (Torso.Position - PlayerList.Character.Torso.Position).magnitude > 30 then
									Humanoid:MoveTo(PlayerList.Character.Torso.Position, PlayerList.Character.Torso)
								else
									Humanoid:MoveTo(Torso.Position, Torso)
								end
								Torso.CFrame = CFrame.new(Torso.Position, Vector3.new(PlayerList.Character.Torso.Position.x, Torso.Position.y, PlayerList.Character.Torso.Position.z))
								wait()
							end
							Humanoid:MoveTo(Torso.Position, Torso)
						end)()
						wait(2)
						RightShoulder.DesiredAngle = math.rad(90)
						wait(1)
						while true do
							if PlayerList.Character == nil then break end
							if PlayerList.Character:FindFirstChild("Torso") == nil or PlayerList.Character:FindFirstChild("Humanoid") == nil or RightArm.Parent ~= Character or Humanoid.Health <= 0 then break end
							if PlayerList.Character.Humanoid.Health <= 0 then break end
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
							Monitor.Velocity = ((PlayerList.Character.Torso.Position - Monitor.Position).unit * math.random(100, 500)) + Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
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
end, "Hax", "Summon Dr. Hax on weary travelers.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "number of characters to spawn (max of 10)")

CoolCMDs.Functions.CreateCommand("maul", 4, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return false end
	if CoolCMDs.Functions.IsModuleEnabled("CharacterSupport") == false then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the CharacterSupport module to be enabled.", 5, Speaker)
		return
	elseif CoolCMDs.Functions.GetModule("CharacterSupport") == nil then
		CoolCMDs.Functions.CreateMessage("Hint", "This command requires the CharacterSupport module to be installed.", 5, Speaker)
		return
	end
	local Characters = tonumber(MessageSplit[#MessageSplit])
	if Characters == nil then Characters = 1 end
	if Characters <= 0 then Characters = 1 end
	if Characters > 10 then Characters = 10 end
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and pcall(function() local _ = PlayerList.Character.Torso end) == true and pcall(function() local _ = PlayerList.Character.Humanoid end) == true then
				PlayerList.Character.Humanoid.WalkSpeed = 0
				local Health = PlayerList.Character.Humanoid.Health
				local MaxHealth = PlayerList.Character.Humanoid.MaxHealth
				PlayerList.Character.Humanoid.MaxHealth = 100
				PlayerList.Character.Humanoid.Health = MaxHealth * (Health / MaxHealth)
				for _, Part in pairs(PlayerList.Character:children()) do if Part:IsA("ForceField") then Part:Remove() end end
				for i = 1, Characters do
					coroutine.wrap(function()
						local Character = CoolCMDs.Functions.GetModule("CharacterSupport").CreateCharacter(math.random(1, 2) == 1 and true or false)
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
						Torso.CFrame = CFrame.new(PlayerList.Character.Torso.Position) * CFrame.new(math.sin(math.random(0, (math.pi * 100) * 2) / 100) * 25, 5, math.cos(math.random(0, (math.pi * 100) * 2) / 100) * 25)
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
							if PlayerList.Character == nil then break end
							if PlayerList.Character:FindFirstChild("Torso") == nil or PlayerList.Character:FindFirstChild("Humanoid") == nil or Humanoid.Health <= 0 then break end
							if PlayerList.Character.Humanoid.Health <= 0 then break end
							if Humanoid.Health <= 0 then break end
							Humanoid:MoveTo(PlayerList.Character.Torso.Position + Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)), PlayerList.Character.Torso)
							if (PlayerList.Character.Torso.Position - Torso.Position).magnitude < 5 then
								PlayerList.Character.Humanoid:TakeDamage(math.random(1, 10) / 10)
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
end, "Maul", "Summon flesh-hungry zombies to eat players.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "number of zombies to spawn (max of 10)")

CoolCMDs.Functions.CreateCommand({"ignite", "i"}, 3, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return false end
	local Duration = tonumber(MessageSplit[#MessageSplit])
	if Duration == nil then Duration = 0 end
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and pcall(function() local _ = PlayerList.Character.Torso end) == true and pcall(function() local _ = PlayerList.Character.Humanoid end) == true and pcall(function() local _ = PlayerList.Character.CoolCMDsIsOnFire end) == false then
				local Tag = Instance.new("Model", PlayerList.Character)
				Tag.Name = "CoolCMDsIsOnFire"
				coroutine.wrap(function()
					if Duration <= 0 then return end
					wait(Duration)
					Tag:Remove()
				end)()
				coroutine.wrap(function()
					while true do
						if PlayerList.Character == nil then break end
						if PlayerList.Character:FindFirstChild("Humanoid") == nil or PlayerList.Character:FindFirstChild("CoolCMDsIsOnFire") == nil then break end
						if PlayerList.Character.Humanoid.Health <= 0 then break end
						PlayerList.Character.Humanoid:TakeDamage(0.25)
						wait()
					end
					Tag:Remove()
				end)()
				for _, Part in pairs(PlayerList.Character:children()) do
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
							while pcall(function() local _ = PlayerList.Character.CoolCMDsIsOnFire end) == true do
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
end, "Ignite", "Set players alight. Fire damages a player by 0.25 per milisecond.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "duration (in seconds, <= 0 for infinite)")

CoolCMDs.Functions.CreateCommand({"unignite", "uni", "ui"}, 3, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
				pcall(function() PlayerList.Character.CoolCMDsIsOnFire:Remove() end)
			end
		end
	end
end, "Unignite", "Put a player out.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand("kick", 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList ~= Speaker then
				CoolCMDs.Functions.CreateMessage("Hint", "[Kick] Player(s) removed.", 2.5, Speaker)
				CoolCMDs.Functions.RemovePlayer(PlayerList)
			end
		end
	end
end, "Kick", "Kick (remove) a player from the game.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"votekick", "vk"}, 1, function(Message, MessageSplit, Speaker, Self)
	if Self.VotePlayer ~= nil then
		if Speaker.Name == Self.VotePlayer then
			CoolCMDs.Functions.CreateMessage("Hint", "[VoteKick] You can't use this command right now.", 2.5, Speaker)
		else
			if Message:lower() == "yes" then
				for i = 1, #Self.Votes, 2 do
					if Self.Votes[i] == Speaker.Name then
						Self.Votes[i + 1] = true
						CoolCMDs.Functions.CreateMessage("Hint", "[VoteKick] You changed your vote to \"yes\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
						return
					end
				end
				table.insert(Self.Votes, Speaker.Name)
				table.insert(Self.Votes, true)
				CoolCMDs.Functions.CreateMessage("Hint", "[VoteKick] You voted \"yes\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
			elseif Message:lower() == "no" then
				for i = 1, #Self.Votes, 2 do
					if Self.Votes[i] == Speaker.Name then
						Self.Votes[i + 1] = false
						CoolCMDs.Functions.CreateMessage("Hint", "[VoteKick] You changed your vote to \"no\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
						return
					end
				end
				table.insert(Self.Votes, Speaker.Name)
				table.insert(Self.Votes, false)
				CoolCMDs.Functions.CreateMessage("Hint", "[VoteKick] You voted \"no\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
			elseif Message:lower() == "cancel" and CoolCMDs.Functions.GetGroup(CoolCMDs.Functions.GetPlayerTable(Speaker.Name).Group).Control >= CoolCMDs.Functions.GetHighestGroup().Control then
				Self.VotePlayer = nil
			end
		end
	else
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), Message:lower()) then
				if PlayerList == Speaker then
					CoolCMDs.Functions.CreateMessage("Hint", "[VoteKick] You can't start a vote against yourself.", 2.5, Speaker)
				else
					coroutine.wrap(function()
						Self.VotePlayer = PlayerList.Name
						local Time = Self.VoteTime
						local StatusMessage = CoolCMDs.Functions.CreateMessage("Hint")
						while true do
							StatusMessage.Parent = Workspace
							if Self.VotePlayer == nil then
								StatusMessage.Text = "[VoteKick] The vote was canceled."
								wait(5)
								break
							end
							local Found, IsPlayer = pcall(function() return game:GetService("Players")[Self.VotePlayer]:IsA("Player") end)
							if Found == false or IsPlayer == false then
								StatusMessage.Text = "[VoteKick] Player was not found."
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
							StatusMessage.Text = "[VoteKick] Player \"" ..Self.VotePlayer.. "\" is being voted for. Votes yes: " ..Yes.. ", votes no: " ..No.. "." ..(Time > 0 and " " ..tostring(math.floor(Time / 60)).. " second(s) left." or "")
							if Time <= 0 then
								if Yes == 0 and No == 0 then
									CoolCMDs.Functions.CreateMessage("Message", "[VoteKick] No one voted for or against \"" ..Self.VotePlayer.."\".", 5)
									break
								elseif Yes > No then
									pcall(function() CoolCMDs.Functions.RemovePlayer(game:GetService("Players")[Self.VotePlayer]) end)
									CoolCMDs.Functions.CreateMessage("Message", "[VoteKick] Player \"" ..Self.VotePlayer.."\" was kicked by vote.", 5)
									break
								elseif Yes == No then
									CoolCMDs.Functions.CreateMessage("Message", "[VoteKick] The yes and no votes to kick \"" ..Self.VotePlayer.."\" were tied.", 5)
									break
								else
									CoolCMDs.Functions.CreateMessage("Message", "[VoteKick] Player \"" ..Self.VotePlayer.."\" was not kicked by vote.", 5)
									break
								end
							end
							wait(0.05)
						end
						StatusMessage:Remove()
						Self.Votes = {}
						Self.VotePlayer = nil
					end)()
				end
			return
			end
		end
	end
end, "VoteKick", "Vote for a player to be kicked (removed) from the game.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]", function(Self)
	Self.VotePlayer = nil
	Self.VoteTime = 30 * 60
	Self.Votes = {}
end)

CoolCMDs.Functions.CreateCommand({"banish", "ban"}, 5, function(Message, MessageSplit, Speaker, Self)
	local Type = MessageSplit[1]:lower()
	if Type == "player" or Type == "p" then
		local Completed = false
		for i = 2, #MessageSplit do
			for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
				if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList ~= Speaker then
					table.insert(Self.Bans, PlayerList.Name:lower())
					CoolCMDs.Functions.RemovePlayer(PlayerList)
					Completed = true
				end
			end
		end
		if Completed == true then
			CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Player(s) banned.", 2.5, Speaker)
		else
			CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Player(s) not found!", 2.5, Speaker)
		end
	elseif Type == "name" or Type == "n" then
		for i = 2, #MessageSplit do
			table.insert(Self.Bans, MessageSplit[i]:lower())
		end
		CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Names added.", 2.5, Speaker)
	elseif Type == "remove" or Type == "r" then
		local Completed = false
		for i = 2, #MessageSplit do
			for x = 1, #Self.Bans do
				if string.match(Self.Bans[x]:lower(), MessageSplit[i]:lower()) then
					table.remove(Self.Bans, x)
					Completed = true
				end
			end
		end
		if Completed == true then
			CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Name(s) removed.", 2.5, Speaker)
		else
			CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Name(s) not found!", 2.5, Speaker)
		end
	elseif Type == "remove all" or Type == "ra" then
		Self.Bans = {}
		CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Ban table reset.", 2.5, Speaker)
	end
end, "Ban", "Place a ban (removes the player on entering) on a player from the game. Player: Ban and remove a player from the game. Name: Add a name to the ban list. Remove, Remove All: Remove a name or remove all names from the ban list.", "[[player, p], [name, n], [remove, r]]" ..CoolCMDs.Data.SplitCharacter.. "player" ..CoolCMDs.Data.SplitCharacter.. "[...], remove all", function(Self)
	if Self.Bans == nil then Self.Bans = {"mark1023", "torterra2020", "hutspy", "Mewtwothunder", "strongfreddy", "dsi1", "TheCapacitor", "buildercool101", "PsXboxWii", "Shoemakerlevel9", "Cat123", "Emyle1", "Tessellation", "Shazak", "metroid777777", "joeh1998", "joeh1997401", "superlink2", "tiygamer", "sesor333", "Emyle1", "pantsjk", "cymru72", "BuilderDen", "killthedood", "freddie94", "dman2501", "oddfuturewolfgang", "derekrules", "sonicfan43", "saadman1", "puffy6", "IronInforcersecond", "blox602", "popmanroxout", "crazyAZN320", "gamblerboy54", "TalentedDannybb2134", "dirt97", "Scazzard1", "admin14727", "ToddlerTosser", "DarkShadow6Alts", "TehEpicCaik", "UdderSmacker", "darkmage0292", "KINGkippydizzyzap", "sk8er2859", "Sk8erBoi2859", "jbayan", "jose99", "shotguna99", "dka", "acebailey", "Traase", "iLoveScripts", "coolblocks1234", "purnuttin", "PersonYouWillBan", "TechSmith", "crusher125552", "saber112", "daisy902", "Supdude147", "Supdude147ALT", "Supdude147ALT2", "D1CK5453", "dad8785", "Richard953", "EricWhoNoob", "NoobEricWho", "DieEricWho", "ByeEricWho", "HiEricWho", "SoloScripts", "Idontmakepris", "SpongeBob559", "lilspartacus1337", "ninini550", "xandon", "dmjoe", "fischer9998", "nala779", "Bannana87", "vicman353", "AccountMoniter2", "Peter0The0Blox0Man", "hunta11", "ID18", "xxSNAKExx", "NewlyNewb", "whitetiger446", "belial52", "kellymichael", "Jettsd", "colly101", "SkaterDavid1", "boy678", "NiceNickeyBoot", "Scriptling", "ploop", "Blaze3290", "billilandfan", "scatman88", "Scriptacle", "sucer123", "Scriptus", "SilentFailure", "dragongoblins", "razortorch", "ninjablock1", "PortableSanta", "JuicyNuts", "JuicyNuts2", "JuicyNuts3", "RobloxGamer30001", "Mada98", "Wazakazam111", "AquaticBase", "theultimatej", "elikills", "xXTennisPlayaXx", "t23", "ttyyuu12345", "nicholasvl2", "flappydavid", "jjjj1111222"} end
	if Self.CatchBan == nil then
		Self.CatchBan = game:GetService("Players").ChildAdded:connect(function(Player)
			for i = 1, #Self.Bans do
				if Player.Name:lower() == Self.Bans[i]:lower() then
					CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Player \"" ..Player.Name.. "\" is banned from this server.", 2.5)
					CoolCMDs.Functions.RemovePlayer(Player)
				end
			end
		end)
	end
	for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.wrap(function()
			for i = 1, #Self.Bans do
				if PlayerList.Name:lower() == Self.Bans[i]:lower() then
					CoolCMDs.Functions.CreateMessage("Hint", "[Ban] Player \"" ..PlayerList.Name.. "\" is banned from this server.", 2.5)
					CoolCMDs.Functions.RemovePlayer(PlayerList)
				end
			end
		end)()
	end
end)

CoolCMDs.Functions.CreateCommand({"slap", "sl"}, 3, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 3 then return false end
	local Speed = tonumber(MessageSplit[#MessageSplit - 1])
	local Strength = tonumber(MessageSplit[#MessageSplit])
	if Speed == nil then Speed = 10 end
	if Strength == nil then Strength = 0 end
	Speed = math.abs(Speed)
	Strength = math.abs(Strength)
	for i = 1, #MessageSplit - 2 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				if PlayerList.Character:FindFirstChild("Humanoid") ~= nil then
					PlayerList.Character.Humanoid:TakeDamage(Strength)
					PlayerList.Character.Humanoid.Sit = true
				end
				for _, Children in pairs(PlayerList.Character:children()) do
					if Children:IsA("BasePart") then
						Children.Velocity = Children.Velocity + Vector3.new(math.random(-Speed, Speed), math.random(-Speed, Speed), math.random(-Speed, Speed))
						Children.RotVelocity = Children.RotVelocity + Vector3.new(math.random(-Speed, Speed), math.random(-Speed, Speed), math.random(-Speed, Speed))
					end
				end
			end
		end
	end
end, "Slap", "Slap people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "speed" ..CoolCMDs.Data.SplitCharacter.. "strength")

CoolCMDs.Functions.CreateCommand({"blocker", "blk"}, 5, function(Message, MessageSplit, Speaker, Self)
	if Self.Activated == nil then Self.Activated = false end
	if Self.Type == nil then Self.Type = 1 end
	if Self.Names == nil then Self.Names = {} end
	if Self.ClassNames == nil then Self.ClassNames = {} end
	if MessageSplit[1]:lower() == "on" then
		Self.Activated = true
		CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Activated.", 2.5, Speaker)
	end
	if MessageSplit[1]:lower() == "off" then
		Self.Activated = false
		CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Deactivated.", 2.5, Speaker)
	end
	if MessageSplit[1]:lower() == "name" then
		for i = 2, #MessageSplit do
			table.insert(Self.Names, MessageSplit[i])
		end
		CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Added.", 2.5, Speaker)
	end
	if MessageSplit[1]:lower() == "class" then
		for i = 2, #MessageSplit do
			table.insert(Self.ClassNames, MessageSplit[i])
		end
		CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Added.", 2.5, Speaker)
	end
	if MessageSplit[1]:lower() == "type" then
		if MessageSplit[2] == "match" or MessageSplit[2] == "1" then
			Self.Type = 1
			CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Set evaluation type to match (1).", 2.5, Speaker)
		elseif MessageSplit[2] == "exact" or MessageSplit[2] == "2" then
			Self.Type = 2
			CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Set evaluation type to exact (2).", 2.5, Speaker)
		end
	end
	if MessageSplit[1]:lower() == "remove" then
		for i = 2, #MessageSplit do
			for x = 1, #Self.Names do
				if string.match(Self.Names[x], MessageSplit[i]) then
					table.remove(Self.Names, x)
				end
			end
			for x = 1, #Self.ClassNames do
				if string.match(Self.ClassNames[x], MessageSplit[i]) then
					table.remove(Self.ClassNames, x)
				end
			end
		end
		CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Removed.", 2.5, Speaker)
	end
	if MessageSplit[1]:lower() == "remove all" then
		Self.Names = {}
		Self.ClassNames = {}
		CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] Removed all entries.", 2.5, Speaker)
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
				CoolCMDs.Functions.CreateMessage("Hint", "[Blocker] \"" ..Object.ClassName.. " object (" ..Object.Name.. ") is blocked and has been removed.", 10)
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
end, "Blocker", "Blocks objects by name or ClassName.", "on, off, name" ..CoolCMDs.Data.SplitCharacter.. "object name, class" ..CoolCMDs.Data.SplitCharacter.. "object ClassName, type" ..CoolCMDs.Data.SplitCharacter.. "[match, exact]")

CoolCMDs.Functions.CreateCommand({"characterappearance", "ca"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 2, #MessageSplit - (MessageSplit[1]:lower() == "default" and 0 or 1) do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]) then
				if MessageSplit[1] == "default" then
					PlayerList.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..PlayerList.userId
				elseif MessageSplit[1] == "set" then
					PlayerList.CharacterAppearance = MessageSplit[#MessageSplit]
				elseif MessageSplit[1] == "userid" then
					PlayerList.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..tonumber(MessageSplit[#MessageSplit])
				elseif MessageSplit[1] == "assetid" then
					PlayerList.CharacterAppearance = "http://www.roblox.com/Asset/?id=" ..tonumber(MessageSplit[#MessageSplit])
				end
			end
		end
	end
end, "CharacterAppearance Editor", "See command name.", "default, set, userid, assetid" ..CoolCMDs.Data.SplitCharacter.. "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "[url, userid, assetid]")

CoolCMDs.Functions.CreateCommand({"character", "char", "ch"}, 3, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return end
	for i = 2, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				if PlayerList.Character:FindFirstChild("Humanoid") ~= nil and PlayerList.Character:FindFirstChild("Torso") ~= nil then
					if MessageSplit[1]:lower() == "sit" then
						PlayerList.Character.Humanoid.Sit = true
					elseif MessageSplit[1]:lower() == "jump" then
						PlayerList.Character.Humanoid.Jump = true
					elseif MessageSplit[1]:lower() == "platformstand" or MessageSplit[1]:lower() == "ps" then
						PlayerList.Character.Humanoid.PlatformStand = true
					elseif MessageSplit[1]:lower() == "trip" then
						PlayerList.Character.Humanoid.PlatformStand = true
						PlayerList.Character.Torso.RotVelocity = Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
						coroutine.wrap(function()
							wait(0.5)
							PlayerList.Character.Humanoid.PlatformStand = false
						end)()
					elseif MessageSplit[1]:lower() == "stand" then
						PlayerList.Character.Humanoid.Sit = false
						PlayerList.Character.Humanoid.PlatformStand = false
					end
				end
			end
		end
	end
end, "Character Editor", "Make people do things.", "sit, jump, [platformstand, ps], trip, stand" ..CoolCMDs.Data.SplitCharacter.. "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand("seisure", 5, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 2 then return false end
	local Duration = tonumber(MessageSplit[#MessageSplit])
	if Duration == nil then Duration = math.random(5, 10) end
	for i = 1, #MessageSplit - 1 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				if PlayerList.Character:FindFirstChild("Humanoid") ~= nil then
					coroutine.wrap(function()
						for i = 0, Duration, 0.25 do
							if PlayerList == nil then break end
							if PlayerList.Character == nil then break end
							if PlayerList.Character:FindFirstChild("Humanoid") == nil then break end
							PlayerList.Character.Humanoid.PlatformStand = math.random(1, 3) == 1 and false or true
							for _, Part in pairs(PlayerList.Character:children()) do
								if Part:IsA("BasePart") then
									Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								end
							end
							wait(0.25)
						end
						pcall(function() PlayerList.Character.Humanoid.PlatformStand = false end)
					end)()
				end
			end
		end
	end
end, "Seisure", "Make people have seisures.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "time (seconds)")

CoolCMDs.Functions.CreateCommand("rocket", 5, function(Message, MessageSplit, Speaker, Self)
	if #MessageSplit < 3 then return false end
	local Speed = tonumber(MessageSplit[#MessageSplit - 1])
	local Duration = tonumber(MessageSplit[#MessageSplit])
	if Speed == nil then Speed = 100 end
	if Duration == nil then Duration = math.random(5, 10) end
	for i = 1, #MessageSplit - 2 do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				for _, Children in pairs(PlayerList.Character:children()) do
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
end, "Rocket", "Fires bodyparts into the air that explode after a set time.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]" ..CoolCMDs.Data.SplitCharacter.. "speed" ..CoolCMDs.Data.SplitCharacter.. "duration (in seconds)")

CoolCMDs.Functions.CreateCommand({"jail", "j"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				if PlayerList.Character:FindFirstChild("Torso") ~= nil then
					local Position = PlayerList.Character.Torso.CFrame
					local IsJailed = Instance.new("IntValue")
					IsJailed.Name = "IsJailed"
					IsJailed.Parent = PlayerList
					coroutine.wrap(function()
						while IsJailed.Parent == PlayerList and PlayerList.Parent ~= nil do
							if PlayerList.Character ~= nil then
								if PlayerList.Character:FindFirstChild("Torso") ~= nil then
									if (PlayerList.Character.Torso.Position - Position.p).magnitude > 10 then
										PlayerList.Character.Torso.CFrame = Position * CFrame.new(0, 1.5, 0)
										PlayerList.Character.Torso.Velocity = Vector3.new(0, 0, 0)
										PlayerList.Character.Torso.RotVelocity = Vector3.new(0, 0, 0)
										CoolCMDs.Functions.CreateMessage("Hint", (function()
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
										end)(), 5, PlayerList)
									end
								end
							end
							wait(math.random(1, 10) / 100)
						end
						for _, Part in pairs(Workspace:children()) do
							if string.match(Part.Name, "JailPart") and string.match(Part.Name, PlayerList.Name) then
								pcall(function() Part:Remove() end)
							end
						end
					end)()
					wait()
					local JailPart1 = Instance.new("Part")
					JailPart1.Name = PlayerList.Name.. "JailPart"
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
end, "Jail", "Jail people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"unjail", "unj", "uj"}, 4, function(Message, MessageSplit, Speaker, Self)
	for i = 1, #MessageSplit do
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) and PlayerList.Character ~= nil then
				for _, Part in pairs(PlayerList:children()) do
					if string.match(Part.Name, "IsJailed") then
						Part:Remove()
					end
				end
			end
		end
	end
end, "Unjail", "Unjail people.", "player" ..CoolCMDs.Data.SplitCharacter.. "[...]")

CoolCMDs.Functions.CreateCommand({"rebase", "rb"}, 4, function(Message, MessageSplit, Speaker, Self)
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
end, "Rebase", "Make a new base.", "None")

CoolCMDs.Functions.CreateCommand({"spawn", "sp"}, 5, function(Message, MessageSplit, Speaker, Self)
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
end, "Spawn", "Make a spawn.", "None")

CoolCMDs.Functions.CreateCommand("shutdown", 5, function(Message, MessageSplit, Speaker, Self)
	local Hint = Instance.new("Hint", Workspace)
	for i = 5, 0, -1 do
		Hint.Text = "Shutting down server in " ..i.. "..."
		wait(1)
	end
	pcall(function() game:GetService("Lighting"):Remove() end)
	pcall(function() Instance.new("ManualSurfaceJointInstance", Workspace) end)
	wait(0.5)
	Hint.Text = "Shutdown failed!"
	wait(5)
	Hint:Remove()
end, "Shutdown", "Kill the server.", "None")

CoolCMDs.Functions.CreateCommand("team", 5, function(Message, MessageSplit, Speaker, Self)
	if MessageSplit[1]:lower() == "new" then
		if #MessageSplit < 3 then return end
		local Team = Instance.new("Team", game:GetService("Teams"))
		Team.Name = MessageSplit[2]
		Team.TeamColor = BrickColor.new(MessageSplit[3])
		CoolCMDs.Functions.CreateMessage("Hint", "[Team] Created team \"" ..Team.Name.. "\".", 2.5, Speaker)
	elseif MessageSplit[1]:lower() == "remove" then
		for i = 2, #MessageSplit do
			for _, Part in pairs(game:GetService("Teams"):children()) do
				if string.match(Part.Name:lower(), MessageSplit[i]:lower()) then
					Part:Remove()
				end
			end
		end
		CoolCMDs.Functions.CreateMessage("Hint", "[Team] Removed.", 2.5, Speaker)
	elseif MessageSplit[1]:lower() == "set" then
		if #MessageSplit <= 2 then return end
		if game:GetService("Teams"):FindFirstChild(MessageSplit[#MessageSplit]) == nil then
			CoolCMDs.Functions.CreateMessage("Hint", "[Team] Unknown team \"" ..MessageSplit[#MessageSplit].. "\".", 2.5, Speaker)
			return
		end
		for i = 2, #MessageSplit - 1 do
			for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
				if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
					PlayerList.TeamColor = game:GetService("Teams")[MessageSplit[#MessageSplit]].TeamColor
					PlayerList.Neutral = false
				end
			end
		end
		CoolCMDs.Functions.CreateMessage("Hint", "[Team] Set.", 2.5, Speaker)
	elseif MessageSplit[1]:lower() == "neutral" then
		for i = 2, #MessageSplit do
			for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
				if string.match(PlayerList.Name:lower(), MessageSplit[i]:lower()) then
					PlayerList.Neutral = true
				end
			end
		end
		CoolCMDs.Functions.CreateMessage("Hint", "[Team] Set.", 2.5, Speaker)
	end
end, "Team Control", "Make, remove, and set teams.", "[new" ..CoolCMDs.Data.SplitCharacter.. "name], [set" ..CoolCMDs.Data.SplitCharacter.. "player" ..CoolCMDs.Data.SplitCharacter.. "[...]]")

CoolCMDs.Functions.CreateCommand("remove", 5, function(Message, MessageSplit, Speaker, Self)
	loadstring([==[_G.CoolCMDs[CoolCMDs.Initialization.InstanceNumber]:Remove(CoolCMDs.Data.AccessCode)]==])()
end, "Remove Script", "Remove CoolCMDs.", "None")

game:GetService("Players").ChildAdded:connect(function(Player) CoolCMDs.Functions.CreatePlayerTable(Player) end)
game:GetService("Players").ChildRemoved:connect(function(Player) CoolCMDs.Functions.RemovePlayerTable(Player) end)
for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do pcall(function() CoolCMDs.Functions.CreatePlayerTable(PlayerList) end) end
CoolCMDs.Functions.LoadModule(true, nil, true)
CoolCMDs.Initialization.FinishTime = Workspace.DistributedGameTime
CoolCMDs.Initialization.ElapsedTime = CoolCMDs.Initialization.FinishTime - CoolCMDs.Initialization.StartTime
CoolCMDs.Functions.CreateMessage("Hint", "Command(s) loaded: " ..#CoolCMDs.CommandHandles, 5)
wait(5)
CoolCMDs.Functions.CreateMessage("Hint", "CoolCMDs version " ..CoolCMDs.Data.Version.. " loaded successfully.", 5)

end