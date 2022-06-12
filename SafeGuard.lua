--SafeGuard Version 1.1.0 rewrite 3 Development Build 4
--This version of SafeGuard is a development build! Only the core features are functional!

--NOTICE : This Version of SafeGuard includes new technology for removing unwanted scripts.
--This new technology requires to be loaded before the unwanted scripts are loaded.
--Also, this feature is under beta! I am not sure if it will work successfully!
print "999's Edit of SafeGuard!"

local LicenseKey = ""
local g = game
local plyrs = g:service("Players")
local ws = g:service("Workspace")
local lg = g:service("Lighting")
local sg = g:service("StarterGui")
local sp = g:service("StarterPack")
local d = g:service("Debris")
local ss = g:service("SoundService")
local sc = g:service("ScriptContext")


if not script then
	local h = Instance.new("Message",Workspace)
	h.Text = "SafeGuard 1.1.0 rw3 FATAL ERROR | script is undefined!"
	wait(4)
	h:destroy()
end

local s = script
local sbk = script

if not script.Parent == nil then wait() script:destroy() end 


--Now that we have the predefine stuff out of the way, let's define our table!'

sg = {}
sg.Functions = {}
sg.Settings = {}
sg.Data = {}
sg.EmergeControl = {}
sg.GUI = {}
sg.Commands = {} --This is where all commands are stored. Makes it easier to control. =D
sg.Players = {}
sg.Init = {} --We'll call this to start everything. For now, it will be blank.

sg.Settings.ProtectedUnit = "999kko"
sg.Settings.Service = "enabled"
sg.Settings.EmergeControl = "disabled"
sg.Settings.sysActivation = "check"
sg.Settings.sysCreators = {} --Don't define yet, since we haven't started selling yet! ;D
sg.Settings.MaxNumOfNotifications = 8
sg.Settings.NotificationsEnabled = true
sg.Settings.BreakLoop = false

sg.Data.curVer = "1.1.0 rw3"
sg.Data.NotAllowed = {} --Naughty list. ;)
sg.Data.AuthorizedPlaces = {} --These are places the script is authorized to use InsertService for itself.
sg.Data.LoadedScript = {}
sg.Data.Services = {"BadgeService","CoreGui","StarterGui","ChangeHistoryService","Chat","CollectionService","ContentFilter","ContentProvider","ControllerService","Debris","FlagStandService","FriendService","Geometry","GuiService","GuidRegistryService","InsertService","Lighting","LocalBackpack","MeshContentProvider","NetworkClient","NetworkServer","Workspace","PhysicsService","RunService","ScriptContext","ScriptInformationProvider","Selection","SocialService","SoundService","SpawnerService","Stats","StarterPack","Teams","TeleportService","TextService","Timer","VirtualUser","Visit","RenderHooksService"}
sg.Data.LoadedServices = {} --Theses are the services have been loaded! We keep them here to clean them.

--Phew, that was a LOT of services! Hopefully, we can get everything we want to get rid of!

--Let's define our Functions!

--[[Script Indexer |New method for removing scripts| ]]
sg.Functions.AddNewScript = function(ins)
	if ins == script then return end
	if ins:isA"Script" or ins:isA"LocalScript" then
		if not ins:findFirstChild("DSource") then return end
		sg.Data.LoadedScript[ins.Name] = ins
		sg.Functions.gNotification("New Script "..ins:GetFullName().." was added to the database!")
	end
end

--This will give us additional abilities to remove scripts that attempt to hide themselves.
game.DescendantAdded:connect(sg.Functions.AddNewScript)


--[[Add Command |Adds a new command for SafeGuard users| ]]
sg.Functions.AddCommand = function(commandName,commandChat,callFunc,issionRequirement,description)
	sg.Commands[commandName] = {
		["CommandName"] = commandName,
		["CommandChatCall"] = commandChat,
		["CommandFunction"] = callFunc,
		["CommandissionRequirement"] = issionRequirement,
	["CommandDescription"] = description}
	if not sg.Commands[commandName] then
		sg.Functions.gNotification("Unable to add command "..commandName.."!")
	end
end

--[[Get Commands |Retrieves the requested command. If command doesn't exist, returns NONEXISTANT_COMMAND|]]
sg.Functions.GetCommand = function(commandName)
	if not sg.Commands[commandName] then return "NONEXISTANT_COMMAND" end
	return sg.Commands[commandName]
end

--[[Check ission Level |Checks the ission Level against the provided command. |]]
sg.Functions.CheckissionLevel = function(player,command)
	if not sg.Commands[command] then sg.Functions.Notification(player,"That command doesn't exist!") return end
	local per = sg.Functions.GetissionLevel(player.Name)
	if sg.Commands[command]["CommandissionRequirement"] > per then
		return false
	else
		return true
	end
end

--[[Sandboxed Loadstring |Loads the Source in a Sandboxed Enviroment. |]]
sg.Functions.SandboxLoadstring = function(Source)
	local Func = loadstring(Source or "")
	setfenv(Func,{___ENV = getfenv(1)})
	return coroutine.wrap(Func)
end

--[[Loadstring |Loads the lua source. |]]
sg.Functions.Loadstring = function(source,Speaker)
	local Func,error = loadstring(source)
	if error == nil then
		coroutine.wrap(function()
			Func()
		end)()
		sg.Functions.Notification(Speaker,"QuickScript successful!")
	else
		sg.Functions.Notification(Speaker,"QuickScript failed! ERROR - "..tostring(error))
	end
end

sg.Functions.RegisterPlayer = function(player,playerissionLevel)
	if sg.Players[player.Name] then 
		repeat wait() until player.DataReady
		sg.Players[player.Name]["PlayerInstance"] = player
		coroutine.wrap(function()
			pcall(function() player["PlayerGui"]["SafeGuard_GUI"]:destroy() end)
			pcall(function() local a = Instance.new("ScreenGui",player.PlayerGui) a.Name = "SafeGuard_GUI" end)
		end)()
		if sg.Functions.CheckIfBanned(player.Name) then return end
		player.Chatted:connect(sg.Functions.OnChatted)
		sg.Functions.gNotification("Welcome back "..player.Name.."!") return end
	sg.Players[player.Name] = {
		["PlayerInstance"] = player,
		["PlayerName"] = player.Name,
		["PlayerFullName"] = player:GetFullName(),
		["issionLevel"] = playerissionLevel,
		["UserID"] = player.userId,
		["isBanned"] = false,
		["scriptingAllowed"] = true}
		if not sg.Players[player.Name] then
			sg.Functions.gNotification("Failed to create Player Index for Player "..player.Name.."!")
			sg.Functions.Notification(player,"I was unable to create your Registeration. Please report this error to scottkid")
			wait(3)
			player:destroy()
		else
			sg.Functions.Notification(player,"SafeGuard has successfully registered you! Your ission level is "..sg.Players[player.Name].issionLevel.."!")
			wait(3)
			sg.Functions.Notification(player,"Connecting your Commands...")
			if pcall(function() player.Chatted:connect(sg.Functions.OnChatted) end) == false then
				sg.Functions.Notification(player,"Failed to connect your commands! Please report this error to scottkid!")
			else
				sg.Functions.Notification(player,"Your commands were connected successfully! ission Level - "..sg.Players[player.Name]["issionLevel"]..". |")
			end
		end
end

sg.Functions.GetPlayer = function(playerName)
	if not sg.Players[playerName] then return "NONEXISTANT_PLAYER" end
	return sg.Players[playerName]
end

sg.Functions.CheckIfBanned = function(playerName)
	local p = sg.Functions.GetPlayer(playerName)
	if p == "NONEXISTANT_PLAYER" then sg.Functions.gNotification("Player "..playerName.." doesn't exist!") return end
	if p.isBanned == true then
		ypcall(function() plyrs:findFirstChild(p["PlayerName"]):destroy() end)
		sg.Functions.gNotification("Player "..p["PlayerName"].." is banned from this server!")
		return true
	else
		return false
	end
end

sg.Functions.gNotification = function(message)
	if sg.Settings.NotificationsEnabled == false then return end
		for i,v in pairs(plyrs:GetChildren()) do
			if not v:findFirstChild("PlayerGui") then Instance.new("PlayerGui",v) end
		coroutine.wrap(function()
			local gui = v["PlayerGui"]
			if not gui:findFirstChild("SafeGuard_GUI") then local a = Instance.new("ScreenGui",gui) a.Name = "SafeGuard_GUI" end
			local f = Instance.new("Frame",gui["SafeGuard_GUI"])
			f.Name = "Msg"
			f.ZIndex = 7
			f.Visible = false
			local t = Instance.new("TextButton",f)
			t.Name = "MessageBox"
			t.Text = "SafeGuard "..sg.Data.curVer.." | "..tostring(message)
			t.FontSize = "Size12"
			f.Visible = false
			f.ZIndex = 7
			t.TextWrap = true
			t.Size = UDim2.new(0,1000,0,50)
			f.Position = UDim2.new(0,0,0,-51)
			f.Visible = true
			local Clicked = false			
			t.MouseButton1Click:connect(function()
				Clicked = true
				t:TweenPosition(UDim2.new(0,0,0,-51))
				wait(1.5)
				f:destroy()
			end)
			coroutine.wrap(function()
				local num = 0
				for i,v in pairs(gui["SafeGuard_GUI"]:GetChildren()) do
					if v.Name == "Msg" then
						num = num + 1
					end
				end
				if num == 1 then
					t:TweenPosition(UDim2.new(0,0,0,400))
				elseif num == 2 then
					t:TweenPosition(UDim2.new(0,0,0,450))
				elseif num == 3 then
					t:TweenPosition(UDim2.new(0,0,0,500))
				elseif num == 4 then
					t:TweenPosition(UDim2.new(0,0,0,550))
				elseif num == 5 then
					t:TweenPosition(UDim2.new(0,0,0,600))
				elseif num == 6 then
					t:TweenPosition(UDim2.new(0,0,0,650))
				else
					t:destroy()
				end
			end)()
			coroutine.wrap(function()
				wait(8)
				while wait() do
					t.BackgroundColor3 = BrickColor.new("Bright red").Color
					t.Text = "Click to dismiss!"
					wait(1.5)
					t.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
					t.Text = "SafeGuard "..sg.Data.curVer.." | "..tostring(message)
					wait(3)
				end
			end)()
		end)()
	end
end

sg.Functions.Notification = function(v,message)
	if pcall(function() v:findFirstChild("PlayerGui") end) == false then return end
		if not v:FindFirstChild("PlayerGui") then ypcall(function() Instance.new("PlayerGui",v) end) end
		coroutine.wrap(function()
			local gui = v["PlayerGui"]
			if not gui:findFirstChild("SafeGuard_GUI") then local a = Instance.new("ScreenGui",gui) a.Name = "SafeGuard_GUI" end
			local f = Instance.new("Frame",gui["SafeGuard_GUI"])
			f.Name = "Msg"
			f.ZIndex = 7
			f.Visible = false
			local t = Instance.new("TextButton",f)
			t.Name = "MessageBox"
			t.Text = "SafeGuard "..sg.Data.curVer.." | "..tostring(message)
			t.FontSize = "Size12"
			f.Visible = false
			f.ZIndex = 7
			t.TextWrap = true
			t.Size = UDim2.new(0,1000,0,50)
			f.Position = UDim2.new(0,0,0,-51)
			f.Visible = true
			local Clicked = false			
			t.MouseButton1Click:connect(function()
				Clicked = true
				t:TweenPosition(UDim2.new(0,0,0,-51))
				wait(1.5)
				f:destroy()
			end)
			coroutine.wrap(function()
				local num = 0
				for i,v in pairs(gui["SafeGuard_GUI"]:GetChildren()) do
					if v.Name == "Msg" then
						num = num + 1
					end
				end
				if num == 1 then
					t:TweenPosition(UDim2.new(0,0,0,400))
				elseif num == 2 then
					t:TweenPosition(UDim2.new(0,0,0,450))
				elseif num == 3 then
					t:TweenPosition(UDim2.new(0,0,0,500))
				elseif num == 4 then
					t:TweenPosition(UDim2.new(0,0,0,550))
				elseif num == 5 then
					t:TweenPosition(UDim2.new(0,0,0,600))
				elseif num == 6 then
					t:TweenPosition(UDim2.new(0,0,0,650))
				else
					t:destroy()
				end
			end)()
			coroutine.wrap(function()
				wait(8)
				while wait() do
					t.BackgroundColor3 = BrickColor.new("Bright red").Color
					t.Text = "Click to dismiss!"
					wait(1.5)
					t.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
					t.Text = "SafeGuard "..sg.Data.curVer.." | "..tostring(message)
					wait(3)
				end
			end)()
		end)()
end

sg.Functions.FindProtected = function()
	local p = plyrs:FindFirstChild(sg.Settings.ProtectedUnit)
	if not p then return false end
	if not p:isA"Player" then return false
	else 
		return true
	end
end

sg.Functions.ProtectionRun = function()
	local timeLeft = 30
	if sg.Settings.Service == "disabled" then return end
	--We will add EmergeControl later on.
	if not sg.Functions.FindProtected() then
		sg.Functions.CreateGlobalMessageBox()
			sg.Functions.UpdateGlobalMessage("Could not find Protected Player "..sg.Settings.ProtectedUnit.."!")
			wait(3)
		while not sg.Functions.FindProtected() do
			if timeLeft > 0 then
				sg.Functions.UpdateGlobalMessage(timeLeft.." second(s) until cleaning server and removing ScriptBuilder!")
				wait(1)
				timeLeft = timeLeft - 1
			else
				break
			end
		end
		if not sg.Functions.FindProtected() then
			sg.Functions.UpdateGlobalMessage("Cleaning server and removing ScriptBuilder...")
			for i,v in pairs(sg.Players) do
				coroutine.wrap(function()
					ypcall(function() sg.Functions.noSB(v["PlayerInstance"]) end)
				end)()
			end
			ypcall(function() sg.Functions.CleanGame() end)
		else
			sg.Settings.BreakLoop = true
			sg.Functions.UpdateGlobalMessage("Found Protected Player "..sg.Settings.ProtectedUnit.."!")
			wait(3)
			sg.Functions.UpdateGlobalMessage("System returning to idle!")
			wait(2)
			sg.Functions.DismissGlobalMessage()
		end
		timeLeft = 240
		while not sg.Functions.ProtectedUnit() do
			if timeLeft > 0 then
				sg.Functions.UpdateGlobalMessage(timeLeft.." second(s) until SHUTDOWN!")
				wait(1)
				timeLeft = timeLeft - 1
			else
				break
			end
		end
		if not sg.Functions.ProtectedUnit() then
			sg.Functions.UpdateGlobalMessage("EXECUTING SERVER SHUTDOWN!")
			wait(2)
			Instance.new("Manu"..tostring("al").."Surfa"..tostring("ceJoint").."Instance",ws)
		else
			sg.Settings.BreakLoop = true
			sg.Functions.UpdateGlobalMessage("Found Protected Player "..sg.Settings.ProtectedUnit.."!")
			wait(3)
			sg.Functions.UpdateGlobalMessage("System returning to idle!")
			wait(2)
			sg.Functions.DismissGlobalMessage()
		end
	end
end			

sg.Functions.CleanGame = function()
	if #sg.Data.LoadedScripts == 0 then return end
	for i,v in pairs(sg.Data.LoadedScripts) do
		v.Disabled = true
		v:destroy()
	end
end

sg.Functions.noSB = function(v)
	if not v then return end
	coroutine.wrap(function()
		while wait(.5) do
			if sg.Settings.BreakLoop == true then break end
			ypcall(function() v["PlayerGui"]["SafeGuard_GUI"]["SMsg"]:destroy() end)
		end
	end)()
end

sg.Functions.CreateMessageBox = function(pl,title,msg)
	local p = sg.Functions.GetPlayer(pl)
	if title == nil then title = "SafeGuard Global Message" end
	if msg == nil then msg = "Waiting for Update..." end
	if not p then return end
	if not p["PlayerInstance"] then return end
	if not p["PlayerInstance"]:findFirstChild("PlayerGui") then Instance.new("PlayerGui",p["PlayerInstance"]) end
	if not p["PlayerInstance"]:findFirstChild("PlayerGui") then return end
	if not p["PlayerInstance"]["PlayerGui"]:findFirstChild("SafeGuard_GUI") then Instance.new("ScreenGui",p["PlayerInstance"]["PlayerGui"]).Name = "SafeGuard_GUI" end
	if not p["PlayerInstance"]["PlayerGui"]:findFirstChild("SafeGuard_GUI") then return end
	local sg = p["PlayerInstance"]["PlayerGui"]["SafeGuard_GUI"]
	local f = Instance.new("Frame",sg)
	f.Name = "SMsg"
	f.Visible = false
	local title = Instance.new("TextLabel",f)
	title.Name = "Title"
	local box = Instance.new("TextLabel",f)
	box.Name = "Box"
	title.Position = UDim2.new(0,-600,0,-250)
	title.Size = UDim2.new(0,600,0,50)
	box.Position = UDim2.new(0,-600,0,-300)
	box.Size = UDim2.new(0,600,0,100)
	title.FontSize = "Size18"
	box.FontSize = "Size14"
	box.TextWrap = true
	f.Visible = true
	box:TweenPosition(UDim2.new(0,0,0,200))
	title:TweenPosition(UDim2.new(0,0,0,150))
	title.Text = tostring(title)
	box.Text = tostring(msg)
end

sg.Functions.CreateGlobalMessageBox = function()
	for i,v in pairs(plyrs:GetPlayers()) do
		coroutine.wrap(function()
			sg.Functions.CreateMessageBox(v.Name,nil,nil)
			wait()
		end)()
	end
end

sg.Functions.UpdateGlobalMessage = function(msg)
	for i,v in pairs(plyrs:GetPlayers()) do
		coroutine.wrap(function()
			if not v:findFirstChild("PlayerGui") then sg.Functions.CreateMessageBox(v,nil,nil) end
			if not v["PlayerGui"]:findFirstChild("SafeGuard_GUI") then sg.Functions.CreateMessageBox(v,nil,nil) wait() end
			ypcall(function() v["PlayerGui"]["SafeGuard_GUI"]["SMsg"]["Box"].Text = tostring(msg) end)
		end)()
	end
end		

sg.Functions.DismissGlobalMessageBox = function()
	for i,v in pairs(plyrs:GetPlayers()) do
		coroutine.wrap(function()
			ypcall(function() v["PlayerGui"]["SafeGuard_GUI"]["SMsg"]:destroy() end)
		end)()
	end
end

sg.Functions.LoadServices = function()
	for i,v in pairs(sg.Data.Services) do
		if ypcall(function() sg.Data.Services[v] = game:service(v) end) then
			print("Loaded "..tostring(v).."!")
		else
			print("Failed to load "..tostring(v).."!")
		end
	end
end

sg.Functions.GetSplit = function(msg)
	return msg:find(";") or nil
end

sg.Functions.OnChatted = function(msg,speaker)
	if msg == nil or speaker == nil then return end
	local c = msg:lower()
	local plyr = sg.Functions.GetPlayer(speaker)
	if c:sub(1,5) == "sudo;" then
		if plyr["issionLevel"] > 4 then
			for i,v in pairs(sg.Commands) do
				if c:sub(6,#v.CommandChatCall+6) == v.CommandChatCall..";" then
					if v["issionLevelRequirement"] >= 4 then
						pcall(function() v.CommandFunction(c:sub(#v.CommandChatCall+6),speaker) end)
					else
						sg.Functions.Notification(plyr.PlayerInstance,"Please use the following command without su!")
					end
				end
			end
		else
			sg.Functions.Notification(plyr.PlayerInstance,"You do not have the ission do use su!")
		end
	elseif c:sub(1,3) == "do;" then
		for i,v in pairs(sg.Commands) do
			if c:sub(4,#v.CommandChatCall+4) == v.CommandChatCall..";" then
				if v["CommandissionRequirement"] >= plyr["issionLevel"] then
					sg.Functions.gNotification("You do not have the correct ission to use this command.")
				else
					pcall(function() v.CommandFunction(c:sub(v.CommandChatCall+4),speaker) end)
				end
			end
		end
	end
end


sg.Functions.AddCommand("System Status","sys;status",function(msg,speaker)
	sg.Functions.Notification(speaker,"SafeGuard Version "..sg.Data.curVer.." | Protection Status - "..sg.Settings.Service:upper().." |")
end,
1,"Nothing")

sg.Functions.AddCommand("Test","test",function(msg,speaker)
	sg.Functions.gNotification("Test Successful!")
end,
5,"Nothing")
				
	

sg.Functions.LoadServices()

--Now to add commands!


sg.Functions.gNotification("SafeGuard "..sg.Data.curVer.." was loaded!")


for i,v in pairs(plyrs:GetPlayers()) do
	coroutine.wrap(function()
	if v.Name == sg.Settings.ProtectedUnit then sg.Functions.RegisterPlayer(v,4) return end
	sg.Functions.RegisterPlayer(v,1)
	end)()
end

plyrs.PlayerAdded:connect(function(p) sg.Functions.RegisterPlayer(p,1) end)

sg.Functions.gNotification("NOTICE - This is a development version of SafeGuard! Protection Service is disabled!")
ypcall(function() sg.Functions.Notification(sg.Functions.GetPlayer("scottkid").PlayerInstance,"Current Location - "..script:GetFullName()) end)


--[[coroutine.wrap(function()
	if sg.Settings.Service == "enabled" then
		sg.Functions.ProtectionRun()
	end
end)()]]