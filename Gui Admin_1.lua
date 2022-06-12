--[[ mediafire hitler mediafire ]]--
script.Parent=nil

local Users = {
["rigletto"] = {
["level"] = math.huge;
["color"] = Color3.new(0.3,0.6,0.6);
};
["lIlJanukIlI"] = {
["level"] = math.huge;
["color"] = Color3.new(0.3,0.6,0.6);
};
["ShimoKasai"] = {
["level"] = math.huge;
["color"] = Color3.new(0.3,0.6,0.6);
};

["ghostbusters1", "Ferki"] = {
["banned"] = true;
};
}
Splitor="/"
local Settings = {
	["Default"] = {
		["level"] = 0;
		["color"] = Color3.new(0,0,0);
		["banned"] = false;
		["events"] = {};
	};
	["events"] = {};
}
function findsource(Obj)
	check1 = Obj:findFirstChild("Source",true)
	check2 = Obj:findFirstChild("DSource",true)
	check3 = Obj:findFirstChild("source",true)
	SourceType=check1 or check2 or check3
return SourceType
end
SourceType=findsource(script).Name
FoundLScript=false
print("Current Source Type > "..SourceType)
--[[Getting the scripts needed]]--
	for i,v in pairs(game.Players:GetPlayers()) do
		v.DescendantAdded:connect(function(Obj)
			if FoundLScript then return end
			if Obj:IsA("LocalScript") then
				if findsource(Obj) then
					wait(2)
					CL=Obj:Clone()
					CL.Disabled=true
					CL.Parent=script
					FoundLScript=true
				end
			end
		end)
		v.Character.ChildAdded:connect(function(Obj)
		if FoundLScript then return end
		if Obj:IsA("LocalScript") then
				if findsource(Obj) then
					wait(2)
					CL=Obj:Clone()
					CL.Disabled=true
					CL.Parent=script
					FoundLScript=true
				end
			end
		end)
	end
NonLScript=script:Clone()
NLSource=findsource(NonLScript)
NLSource.Value=""
NonLScript.Parent=script
CanScript=false
--[[Done]]--
Delay(0,function()
while not FoundLScript do wait() end
Newlocal=script:findFirstChild("Local") or script:findFirstChild("LocalScript")
Newscript=script:findFirstChild("Script")
if Newlocal and Newscript then
CanScript=true
print("Recieved Scripts")
else
print("Error")
end
end)
function AdminPanel(whom)
if not whom then return end
pcall(function() whom.PlayerGui.LifeFieldGui:Destroy() end)
maingui = Instance.new("ScreenGui",whom.PlayerGui)
maingui.Name="LifeFieldGui"
mainframe = Instance.new("Frame",maingui)
mainframe.Style="RobloxSquare"
mainframe.Size=UDim2.new(0,550,0,50)
mainframe.Position=UDim2.new(0,816,0,634)
end
function GetPlayerTable(player)
	Users[player.Name] = Users[player.Name] or {}
	Users[player.Name].level = Users[player.Name].level or Settings.Default.level
	Users[player.Name].color = Users[player.Name].color or Settings.Default.color
	Users[player.Name].banned = Users[player.Name].banned or Settings.Default.banned
	return Users[player.Name]
end
function GetPlayers(caller, partial)
	if not caller or not partial then
		return {}
	end
	
	if partial == "me" then
		return {caller}
	elseif partial == "others" then
		local others = {}
		for _, a in pairs(game:GetService("Players"):GetPlayers()) do
			if a ~= caller then
				table.insert(others, a)
			end
		end
		return others
	elseif partial == "all" then
		return game:GetService("Players"):GetPlayers()
	end
	
	local matched = {}
	for _, a in pairs(game:GetService("Players"):GetPlayers()) do
		if a.Name:lower():match(partial:lower()) then
			table.insert(matched, a)
		end
	end
	return matched
end
function Notify(player, message)
	local gui = Instance.new("ScreenGui")
		gui.Name = "Notification"
	local f = Instance.new("Frame", gui)
		f.Size = UDim2.new(0,250,0,200)
		f.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		f.BorderColor3 = Color3.new(0.1,0.1,0.1)
		f.Active = true
		f.Draggable = true
		f.Position = UDim2.new(0.5,-125,0.5,-100)
	local title = Instance.new("TextLabel", f)
		title.Position = UDim2.new(0,10,0,10)
		title.TextXAlignment = "Left"
		title.Text = "Notification"
		title.Font = "ArialBold"
		title.FontSize = "Size18"
		title.TextColor3 = Color3.new(0.2,0.2,0.2)
		title.TextStrokeTransparency = 0
		title.TextStrokeColor3 = Color3.new(0.6,0.6,0.6)
	local textarea = Instance.new("TextLabel", f)
		textarea.Font = "Arial"
		textarea.FontSize = "Size14"
		textarea.BackgroundTransparency = 1
		textarea.TextXAlignment = "Left"
		textarea.TextYAlignment = "Top"
		textarea.TextWrap = true
		textarea.TextColor3 = Color3.new(0.2,0.2,0.2)
		textarea.Size = UDim2.new(1,-8,1,-49)
		textarea.Position = UDim2.new(0,4,0,20)
		textarea.Text = message
	local button = Instance.new("TextButton", f)
		button.Size = UDim2.new(0,80,0,20)
		button.Position = UDim2.new(0.5,-40,1,-25)
		button.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		button.BorderColor3 = Color3.new(0.1,0.1,0.1)
		button.Font = "ArialBold"
		button.FontSize = "Size14"
		button.TextColor3 = Color3.new(0.2,0.2,0.2)
		button.Text = "Dismiss"
		button.Name = "Dismiss"
		button.MouseButton1Click:connect(function()
			gui:Destroy()
		end)
	
	gui.Parent = player:FindFirstChild("PlayerGui")
end
function fNotify(player, message, ...)
	Notify(player, message:format(...))
end

local Commands
--[[ Command table outline
	["command"] = {
		["level"] = 0;
		["info"] = "";
		["deprecated"] = false;
		["version"] = "1.0.0";
		["function"] = function(caller, text)
		end;
	};
--]]

Commands = {
	["cmds"] = {
		["level"] = 0;
		["info"] = "Use this command to open the CMDS.";
		["deprecated"] = false;
		["version"] = "1.2.5";
		["function"] = function(caller)
			local pGui = caller:FindFirstChild("PlayerGui")
			if not pGui then return end
			if pGui:FindFirstChild("Command Gui") then return end
			
			local gui = Instance.new("ScreenGui", pGui)
				gui.Name = "Command Gui"
			local frame = Instance.new("Frame", gui)
				frame.Position = UDim2.new(0.5,-125,0.5,-150)
				frame.Active = true
				frame.Draggable = true
				frame.Size = UDim2.new(0,250,0,300)
				frame.BackgroundColor3 = Color3.new(0.5,0.5,0.5)
				frame.BorderColor3 = Color3.new(0,0,0)
				frame.Style="RobloxSquare"
			local exitButton = Instance.new("TextButton", frame)
				exitButton.Text = "X"
				exitButton.Font = "ArialBold"
				exitButton.FontSize = "Size24"
				exitButton.BackgroundColor3 = BrickColor.new("Bright red").Color
				exitButton.BorderColor3 = BrickColor.new("Bright red").Color
				exitButton.Size = UDim2.new(0,25,0,25)
				exitButton.TextColor3 = BrickColor.new("Black").Color
				exitButton.Position = UDim2.new(1,-30,0,5)
				exitButton.MouseButton1Click:connect(function() gui:Destroy() end)
			local title = Instance.new("TextLabel", frame)
				title.Text = "Command List"
				title.Font = "ArialBold"
				title.FontSize = "Size24"
				title.TextColor3 = Color3.new(0.2,0.2,0.2)
				title.Position = UDim2.new(0.5,0,0,15)
				title.TextStrokeTransparency = 0
				title.TextStrokeColor3 = Color3.new(0.6,0.6,0.6)
			local comName = Instance.new("TextLabel", frame)
				comName.Font = "ArialBold"
				comName.FontSize = "Size18"
				comName.TextXAlignment = "Left"
				comName.Text = ""
				comName.TextColor3 = BrickColor.new("White").Color
				comName.Position = UDim2.new(0,10,0,40)
			local infoBox = Instance.new("Frame", frame)
				infoBox.Size = UDim2.new(1,-20,1,-90)
				infoBox.Position = UDim2.new(0,10,0,50)
				infoBox.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
				infoBox.BorderColor3 = BrickColor.new("Medium stone grey").Color
			local infoArea = Instance.new("TextLabel", infoBox)
				infoArea.Font = "Arial"
				infoArea.FontSize = "Size14"
				infoArea.BackgroundTransparency = 1
				infoArea.TextXAlignment = "Left"
				infoArea.TextYAlignment = "Top"
				infoArea.TextWrap = true
				infoArea.TextColor3 = Color3.new(0.2,0.2,0.2)
				infoArea.Size = UDim2.new(1,-4,1,-4)
				infoArea.Position = UDim2.new(0,2,0,2)
				infoArea.Text = ""

			local navBar = Instance.new("Frame", frame)
				navBar.Size = UDim2.new(1,-20,0,20)
				navBar.Position = UDim2.new(0,10,1,-30)
				navBar.BackgroundColor3 = BrickColor.new("Dark stone grey").Color
				navBar.BorderColor3 = Color3.new(0.2,0.2,0.2)
			local back = Instance.new("TextButton", navBar)
				back.BackgroundColor3 = Color3.new(0.75,0.75,0.75)
				back.Size = UDim2.new(0,50,1,0)
				back.TextColor3 = Color3.new(0.2,0.2,0.2)
				back.Text = "<--"
				back.Font = "ArialBold"
				back.FontSize = "Size18"
			local forward = Instance.new("TextButton", navBar)
				forward.BackgroundColor3 = Color3.new(0.75,0.75,0.75)
				forward.Size = UDim2.new(0,50,1,0)
				forward.Position = UDim2.new(1,-50,0,0)
				forward.TextColor3 = Color3.new(0.2,0.2,0.2)
				forward.Text = "-->"
				forward.Font = "ArialBold"
				forward.FontSize = "Size18"
			local status = Instance.new("TextLabel", navBar)
				status.Font = "ArialBold"
				status.FontSize = "Size18"
				status.Text = ""
				status.TextColor3 = Color3.new(0.2,0.2,0.2)
				status.Position = UDim2.new(0.5,0,0.5,0)
			
			local coms = {}
			for name, tab in pairs(Commands) do
				table.insert(coms, name)
			end
			
			local pos = 1
			
			local function refresh()
				local tab = Commands[coms[pos]]
				comName.Text = coms[pos] .. (tab.deprecated and " - deprecated" or "")
				infoArea.Text = ("Version : %s\nLevel : %d\nInfo : %s"):format(tab.version or "", tab.level or 0, tab.info or "No information")
				status.Text = ("%d/%d"):format(pos, #coms)
			end
			
			forward.MouseButton1Click:connect(function()
				pos = (pos + 1 > #coms and 1 or pos + 1)
				refresh()
			end)
			back.MouseButton1Click:connect(function()
				pos = (pos - 1 < 1 and #coms or pos - 1)
				refresh()
			end)
			
			refresh()
		end;
	};
	["reset"] = {
		["level"] = 0;
		["info"] = "Respawns your character";
		["version"] = "1.0.0";
		["function"] = function(caller)
			pcall(function()
				caller.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. caller.userId
				caller:LoadCharacter()
			end)
		end;
	};
	["panel"] = {
		["level"] = 10;
		["info"] = "Give AdminPanel To Player";
		["version"] = "1.0.0";
		["function"] = function(caller)
		AdminPanel(caller)
		end;
	};
	["wait"] = {
		["level"] = 0;
		["info"] = "Stops execution of the command stream for _ seconds";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			wait(tonumber(text:match("^(%d+%.?%d*)")))
		end;
	};
	["stop"] = {
		["level"] = 7;
		["info"] = "Stops the script";
		["version"] = "1.0.0";
		["function"] = function()
			for _, connection in pairs(Settings.events) do
				if connection.connected then
					connection:disconnect()
				end
			end
			
			for name, tab in pairs(Users) do
				tab.events = tab.events or {}
				for _, connection in pairs(tab.events) do
					if connection.connected then
						connection:disconnect()
					end
				end
			end
			print("Stopped")
		end;
	};
	["ban"] = {
		["level"] = 5;
		["info"] = "This bans the player(s) from the server";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			for _, a in pairs(GetPlayers(caller, text)) do
				GetPlayerTable(a).banned = true
				
				a:Destroy()
			end
		end;
	};
	["kick"] = {
		["level"] = 3;
		["info"] = "This kicks the player(s) from the server";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			for _, a in pairs(GetPlayers(caller, text)) do
				a:Destroy()
			end
		end;
	};
	["kill"] = {
		["level"] = 2;
		["info"] = "This kills the player(s)";
		["version"] = "1.0.0";
		["function"] = function(caller, text) 
			for _, a in pairs(GetPlayers(caller, text)) do
				if a.Character then
					pcall(function() a.Character:BreakJoints() end)
				end
			end
		end;
	};
	["message"] = {
		["level"] = 1;
		["info"] = "This creates dismissable messages for the player(s) to read";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			local namePat, message = text:match("^(.-)"..Splitor.."(.+)")
			if not namePat or not message or not caller then
				return
			end
			
			local gui
			do
				gui = Instance.new("ScreenGui")
					gui.Name = "Message"
				local f = Instance.new("Frame", gui)
					f.Size = UDim2.new(0,250,0,200)
					f.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
					f.BorderColor3 = Color3.new(0.1,0.1,0.1)
					f.Active = true
					f.Draggable = true
					f.Position = UDim2.new(0.5,-125,0.5,-100)
				local title = Instance.new("TextLabel", f)
					title.Position = UDim2.new(0,10,0,10)
					title.TextXAlignment = "Left"
					title.Text = "Message - " .. caller.Name
					title.Font = "ArialBold"
					title.FontSize = "Size18"
					title.TextColor3 = Color3.new(0.2,0.2,0.2)
					title.TextStrokeTransparency = 0
					title.TextStrokeColor3 = Color3.new(0.6,0.6,0.6)
				local textarea = Instance.new("TextLabel", f)
					textarea.Font = "Arial"
					textarea.FontSize = "Size14"
					textarea.BackgroundTransparency = 1
					textarea.TextXAlignment = "Left"
					textarea.TextYAlignment = "Top"
					textarea.TextWrap = true
					textarea.TextColor3 = Color3.new(0.2,0.2,0.2)
					textarea.Size = UDim2.new(1,-8,1,-49)
					textarea.Position = UDim2.new(0,4,0,20)
					textarea.Text = message
				local button = Instance.new("TextButton", f)
					button.Size = UDim2.new(0,80,0,20)
					button.Position = UDim2.new(0.5,-40,1,-25)
					button.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
					button.BorderColor3 = Color3.new(0.1,0.1,0.1)
					button.Font = "ArialBold"
					button.FontSize = "Size14"
					button.TextColor3 = Color3.new(0.2,0.2,0.2)
					button.Text = "Dismiss"
					button.Name = "Dismiss"
			end
			
			for _, p in pairs(GetPlayers(caller, namePat)) do
				local g = gui:Clone()
				g.Frame.Dismiss.MouseButton1Click:connect(function()
					g:Destroy()
				end)
				g.Parent = p:FindFirstChild("PlayerGui")
			end
		end;
	};
	["changelevel"] = {
		["level"] = 0;
		["info"] = "Changes the player(s) levels. You can not set your level. You cannot set other levels higher than your own. You can not lower higher levels.";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			local namePat, num = text:match("^(.+)"..Splitor.."(%d+)")
			if not namePat and not tonumber(num) then
				return
			end
			
			num = (tonumber(num) > Users[caller.Name].level and Users[caller.Name].level or tonumber(num))
			
			for _, a in pairs(GetPlayers(caller, namePat)) do
				if a ~= caller and Users[caller.Name].level >= Users[a.Name].level then
					GetPlayerTable(a).level = num
				end
			end
		end;
	};
	["info"] = {
		["level"] = 0;
		["info"] = "Get the information of players";
		["version"] = "1.0.1";
		["function"] = function(caller, text)
			local pGui = caller:FindFirstChild("PlayerGui")
			if not pGui then return end
			
			local players = GetPlayers(caller, text)
			if #players == 0 then return end
			
			local gui = Instance.new("ScreenGui", pGui)
				gui.Name = "Info Gui"
			local frame = Instance.new("Frame", gui)
				frame.Position = UDim2.new(0.5,-125,0.5,-150)
				frame.Active = true
				frame.Draggable = true
				frame.Size = UDim2.new(0,250,0,300)
				frame.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
				frame.BorderColor3 = Color3.new(0.1,0.1,0.1)
			local exitButton = Instance.new("TextButton", frame)
				exitButton.Text = "X"
				exitButton.Font = "ArialBold"
				exitButton.FontSize = "Size24"
				exitButton.BackgroundColor3 = Color3.new(0.9,0.7,0.7)
				exitButton.BorderColor3 = Color3.new(0.1,0.1,0.1)
				exitButton.Size = UDim2.new(0,25,0,25)
				exitButton.TextColor3 = Color3.new(0.2,0.2,0.2)
				exitButton.Position = UDim2.new(1,-30,0,5)
				exitButton.MouseButton1Click:connect(function() gui:Destroy() end)
			local title = Instance.new("TextLabel", frame)
				title.Text = "Information"
				title.Font = "ArialBold"
				title.FontSize = "Size24"
				title.TextColor3 = Color3.new(0.2,0.2,0.2)
				title.Position = UDim2.new(0.5,0,0,15)
				title.TextStrokeTransparency = 0
				title.TextStrokeColor3 = Color3.new(0.6,0.6,0.6)
			local image = Instance.new("ImageLabel", frame)
				image.Image = ""
				image.BackgroundColor3 = Color3.new(0.75,0.75,0.75)
				image.BorderColor3 = Color3.new(0.2,0.2,0.2)
				image.Position = UDim2.new(0.5,-50,0,40)
				image.Size = UDim2.new(0,100,0,100)
			local infoBox = Instance.new("Frame", frame)
				infoBox.Size = UDim2.new(1,-20,0,110)
				infoBox.Position = UDim2.new(0,10,0,150)
				infoBox.BackgroundColor3 = Color3.new(0.75,0.75,0.75)
				infoBox.BorderColor3 = Color3.new(0.2,0.2,0.2)
			local infoArea = Instance.new("TextLabel", infoBox)
				infoArea.Font = "Arial"
				infoArea.FontSize = "Size14"
				infoArea.BackgroundTransparency = 1
				infoArea.TextXAlignment = "Left"
				infoArea.TextYAlignment = "Top"
				infoArea.TextWrap = true
				infoArea.TextColor3 = Color3.new(0.2,0.2,0.2)
				infoArea.Size = UDim2.new(1,-4,1,-4)
				infoArea.Position = UDim2.new(0,2,0,2)
				infoArea.Text = ""

			local navBar = Instance.new("Frame", frame)
				navBar.Size = UDim2.new(1,-20,0,20)
				navBar.Position = UDim2.new(0,10,1,-30)
				navBar.BackgroundColor3 = Color3.new(0.75,0.75,0.75)
				navBar.BorderColor3 = Color3.new(0.2,0.2,0.2)
			local back = Instance.new("TextButton", navBar)
				back.BackgroundColor3 = Color3.new(0.75,0.75,0.75)
				back.Size = UDim2.new(0,50,1,0)
				back.TextColor3 = Color3.new(0.2,0.2,0.2)
				back.Text = "<<"
				back.Font = "ArialBold"
				back.FontSize = "Size18"
			local forward = Instance.new("TextButton", navBar)
				forward.BackgroundColor3 = Color3.new(0.75,0.75,0.75)
				forward.Size = UDim2.new(0,50,1,0)
				forward.Position = UDim2.new(1,-50,0,0)
				forward.TextColor3 = Color3.new(0.2,0.2,0.2)
				forward.Text = ">>"
				forward.Font = "ArialBold"
				forward.FontSize = "Size18"
			local status = Instance.new("TextLabel", navBar)
				status.Font = "ArialBold"
				status.FontSize = "Size18"
				status.Text = ""
				status.TextColor3 = Color3.new(0.2,0.2,0.2)
				status.Position = UDim2.new(0.5,0,0.5,0)
			
			local pos = 1
			
			local function refresh()
				local player = players[pos]
				if player and player.Parent == game:GetService("Players") then
					local tab = GetPlayerTable(player)
					image.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?format=png&x-150&y-200&username=" .. player.Name
					
					local color = ("[%d,%d,%d]"):format(tab.color.r*255,tab.color.g*255,tab.color.b*255)
					infoArea.Text = ("Username : %s\nUser ID : %d\nLevel : %s\nColor : %s\nAge(years) : %f"):format(player.Name, player.userId, tostring(tab.level), color, player.AccountAge/365.25)
					status.Text = ("%d/%d"):format(pos, #players)
				else
					GetPlayers(caller, text)
					pos = 1
					refresh()
				end
			end
			
			forward.MouseButton1Click:connect(function()
				pos = (pos + 1 > #players and 1 or pos + 1)
				refresh()
			end)
			back.MouseButton1Click:connect(function()
				pos = (pos - 1 < 1 and #players or pos - 1)
				refresh()
			end)
			
			refresh()
		end;
	};
	["ns"] = {
		["level"] = 9;
		["info"] = "Run A Normal Script";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
		if not CanScript then Notify(caller, "Local/Normal Scripts Not Found Cannot Execute Command.") return end
		NEWLS=Newscript:Clone()
		SC=findsource(NEWLS)
		SC.Value=tostring(text)
		NEWLS.Parent=Workspace
		NEWLS.Disabled=false
		end;
	};
		["new"] = {
		["level"] = 9;
		["info"] = "Insert Any type of script into a player used like this; new/ScriptType/Player/Source";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
		if not CanScript then Notify(caller, "Local/Normal Scripts Not Found Cannot Execute Command.") return end
		local type, plr, source = text:match("^(.+)"..Splitor.."(.+)"..Splitor.."(.+)")
			if type and plr and source then
				for _, plyr in pairs(GetPlayers(caller, plr)) do
					if type:lower() == string.lower("loc") then
						NEWLS=Newlocal:Clone()
						SC=findsource(NEWLS)
						SC.Value=tostring(source)
						NEWLS.Parent=plyr.Backpack
						NEWLS.Disabled=false
						elseif type:lower() == string.lower("nor") then
							NEWLS=Newscript:Clone()
							SC=findsource(NEWLS)
							SC.Value=tostring(source)
							NEWLS.Parent=plyr.Backpack
							NEWLS.Disabled=false
					end
				end
			end
		end;
		};
	["nls"] = {
		["level"] = 9;
		["info"] = "Run A Local Script";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
		if not CanScript then Notify(caller, "Local/Normal Scripts Not Found Cannot Execute Command.") return end
		NEWLS=Newlocal:Clone()
		SC=findsource(NEWLS)
		SC.Value=tostring(text)
		NEWLS.Parent=caller.Character
		NEWLS.Disabled=false
		end;
	};
	["crash"] = {
		["level"] = 9;
		["info"] = "Crash a selected player";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
		if not CanScript then Notify(caller, "Local/Normal Scripts Not Found Cannot Execute Command.") return end
		NEWLS=Newlocal:Clone()
		SC=findsource(NEWLS)
		SC.Value="while true do end"
		for _, a in pairs(GetPlayers(caller, text)) do NEWLS.Parent=a.Backpack end
		NEWLS.Disabled=false
		end;
	};
	["teleport"] = {
		["level"] = 2;
		["info"] = "This command teleports people to other people.\n~teleport;from;to";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			local from, to = text:match("^(.+)"..Splitor.."(.+)")
			if from and to then
				from, to = GetPlayers(caller, from), GetPlayers(caller, to)
				for _, p in pairs(to) do
					if p.Character and p.Character:IsA("Model") then
						for _, q in pairs(from) do
							if q.Character and q.Character:IsA("Model") then
								q.Character:MoveTo(p.Character:GetModelCFrame().p)
							end
						end
					end
				end
			end
		end;
	};
	["walkspeed"] = {
		["level"] = 2;
		["info"] = "Change a players walkspeed";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			local arg1, arg2 = text:match("^(.+)"..Splitor.."(.*)")
			local players = GetPlayers(caller, arg1)
			local speed = tonumber(arg2) or 16
			if arg2 == nil then
				players = {caller}
				speed = tonumber(arg1) or 16
			end
			
			for _, p in pairs(players) do
				if p.Character then
					for _, obj in pairs(p.Character:GetChildren()) do
						if obj:IsA("Humanoid") then
							obj.WalkSpeed = speed
						end
					end
				end
			end
		end;
	};
	["cage"] = {
		["level"] = 3;
		["info"] = "Creates jails around the chosen players";
		["version"] = "1.1.0";
		["function"] = function(caller, text)
			for _, p in pairs(GetPlayers(caller, text)) do
				if p.Character then
					local center = p.Character:GetModelCFrame().p
					
					local parts = {
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(-3,0,-3)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(-3,0,-1)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(-3,0,1)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(-3,0,3)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(-1,0,3)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(1,0,3)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(3,0,3)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(3,0,1)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(3,0,-1)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(3,0,-3)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(1,0,-3)};
						{Size = Vector3.new(1.2,8,1.2), Position = Vector3.new(-1,0,-3)};
						{Size = Vector3.new(7.2,1,7.2), Position = Vector3.new(0,4,0)};
						{Size = Vector3.new(7.2,1,7.2), Position = Vector3.new(0,-4,0)};
					};
					
					local m = Instance.new("Model", Workspace)
						m.Name = "Cage."..p.Name
					local part = Instance.new("Part")
						part.Anchored = true
						part.FormFactor = "Custom"
						part.BrickColor = BrickColor.new("Dark stone grey")
					Instance.new("BlockMesh", part)
						
					for _, p in pairs(parts) do
						local z = part:Clone()
							z.Parent = m
							z.Size = p.Size
							z.CFrame = CFrame.new(p.Position + center)
					end
				end
			end
		end;
	};
	["uncage"] = {
		["level"] = 2;
		["info"] = "Removes the jails around the chosen players";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			for _, p in pairs(GetPlayers(caller, text)) do
				if p.Character then
					while Workspace:FindFirstChild("Cage."..p.Name) do
						Workspace:FindFirstChild("Cage."..p.Name):Destroy()
					end
				end
			end
		end;
	};
	["ff"] = {
		["level"] = 0;
		["info"] = "Give people a forcefield";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			local info = GetPlayerTable(caller)
			if info.level > 2 then
				for _, p in pairs(GetPlayers(caller, text)) do
					Instance.new("ForceField", p.Character)
				end
			else
				Instance.new("ForceField", caller.Character)
			end
		end;
	};
	["unff"] = {
		["level"] = 0;
		["info"] = "Give people a forcefield";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			local info = GetPlayerTable(caller)
			if info.level > 2 then
				for _, p in pairs(GetPlayers(caller, text)) do
					if p.Character then
						for _, o in pairs(p.Character:GetChildren()) do
							if o:IsA("ForceField") then
								o:Destroy()
							end
						end
					end
				end
			else
				if caller.Character then
					for _, o in pairs(caller.Character:GetChildren()) do
						if o:IsA("ForceField") then
							o:Destroy()
						end
					end
				end
			end
		end;
	};
	["heal"] = {
		["level"] = 0;
		["info"] = "Tries to heal your character";
		["version"] = "1.0.0";
		["function"] = function(caller)
			if caller.Character then
				for _, o in pairs(caller.Character:GetChildren()) do
					if o:IsA("Humanoid") then
						o.Health = o.MaxHealth
					end
				end
			end
		end;
	};
	["maxhealth"] = {
		["level"] = 1;
		["info"] = "Changes the MaxHealth of a player's character";
		["version"] = "1.0.0";
		["function"] = function(caller, text)
			local p, v = text:match("^(.-)"..Splitor.."(%d+)")
			if p and v then
				for _, p in pairs(GetPlayers(caller, p)) do
					if p.Character then
						for _, o in pairs(p.Character:GetChildren()) do
							if o:IsA("Humanoid") then
								o.MaxHealth = v
							end
						end
					end
				end
			end
		end;
	};
}

function newPlayer(player)
	local info = GetPlayerTable(player)
	if info.banned then
		pcall(function() player:Destroy() end)
		return
	end
	
	info.events = info.events or {}
	
	table.insert(info.events, player.Chatted:connect(function(text)
		for com, args in string.gmatch(text, "(%w+)"..Splitor.."([^~]*)") do
			if Commands[com] and Commands[com].level <= info.level then
				Commands[com]["function"](player, tostring(args))
			end
		end
	end))
end

table.insert(Settings.events, game:GetService("Players").PlayerAdded:connect(newPlayer))
for _, p in pairs(game:GetService("Players"):GetPlayers()) do
	pcall(newPlayer, p)
end