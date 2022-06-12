wait()
 CO = {
	FavColor = Color3.new(0,1,0); -- Favorite color. Color3
	FavChatColor = Enum.ChatColor.Green; -- Favorite Speaking Color. Enum.ChatColor.Red/Green/Blue
	Name = "5spidercool5"; -- Your name. String
	Bet = "/"; -- Bet 1. String
	Bet2 = "/"; -- Bet 2. String
	--[[
		How to use this: Bet Command Bet2
		Example: Bet = "/" Bet2 = "]" /ff]kay
	]]--
	ModelName = "COMODL"; -- Name of the tablets model. String
	SpeakForMe = true; -- Makes orb speak if you say something. Bool
	CMDBar = true; -- Command bar. Bool
	CMDBarFocusLostRun = false; -- Command bar; if you click away from the textbox, it will auto run command. Bool
	Stretch = 4; -- Stretch of the tablets. Number
	SpinUse = true; -- Makes Tabs spin. Bool
	Height = 0; -- Extra Height of tabs. Number
	Bammed = {"MainSpeaker","XDSPEEDHAXXD", "Naculgummie", "jeremycr123", "exploitzzz", "Legopro12", "jainam15", "harrypongco12", "klodmoshi", "IdeasDesired", "KlausVonHertzenIII","iiGames","SinisterKidDark","ninjamaster555"}; -- Banned peeps. Table with stringvalues
	
	
	--[[Don't change anything below]]--
	CColors = {
		[1] = Enum.ChatColor.Red;
		[2] = Enum.ChatColor.Green;
		[3] = Enum.ChatColor.Blue;	
		Red = Enum.ChatColor.Red;
		Green = Enum.ChatColor.Green;
		Blue = Enum.ChatColor.Blue;
	};
		Services = {
		RunService = game:GetService("RunService");
		Workspace = game:GetService("Workspace");
		Lighting = game:GetService("Lighting");
		Debris = game:GetService("Debris");
		Players = game:GetService("Players");
		Teams = game:GetService("Teams");
		InsertService = game:GetService("InsertService");
		SoundService = game:GetService("SoundService");
		ScriptContext = game:GetService("ScriptContext");
		StarterGui = game:GetService("StarterGui");
		StarterPack = game:GetService("StarterPack");
		ContentProvider = game:GetService("ContentProvider");
		ContentFilter = game:GetService("ContentFilter");
		KeyframeSequenceProvider = game:GetService("KeyframeSequenceProvider");
		GuiService = game:GetService("GuiService");
		Chat = game:GetService("Chat");
		LocalBackpack = game:GetService("LocalBackpack");
		JointsService = game:GetService("JointsService");
		CollectionService = game:GetService("CollectionService");
		PhysicsService = game:GetService("PhysicsService");
		BadgeService = game:GetService("BadgeService");
		Geometry = game:GetService("Geometry");
		FriendService = game:GetService("FriendService");
		RenderHooksService = game:GetService("RenderHooksService");
		SocialService = game:GetService("SocialService");
		TimerService = game:GetService("TimerService");
		ScriptInformationProvider = game:GetService("ScriptInformationProvider");
	};
	Colors = {
		Red = Color3.new(1,0,0);
		Orange = Color3.new(1,0.5,0);
		Yellow = Color3.new(1,1,0);
		Olive = Color3.new(0.5,1,0);
		Lime = Color3.new(0,1,0);
		Green = Color3.new(0,0.5,0);
		BlueishGreen = Color3.new(0,1,0.5);
		Aqua = Color3.new(0,1,1);
		SoftBlue = Color3.new(0,0.5,1);
		Blue = Color3.new(0,0,1);
		Purple = Color3.new(0.5,0,1);
		Magenta = Color3.new(0.75,0,0.75);
		Pink = Color3.new(1,0,1);
		White = Color3.new(1,1,1);
		Grey = Color3.new(0.5,0.5,0.5);
		Black = Color3.new(0,0,0);
	};
	Commands = {};
	Tabs = {};
	LoggedStuff = {};
	Spin = 0;
	ExplorerFilterOptions = {
		"Accoutrement", "Animation", "AnimationTrack", "AnimationTrackState", "Animator", "Authoring", "Backpack", "BackpackItem", "BadgeService", "BasePlayerGui", "BaseScript", "BindableEvent", "BindableFunction", "BodyColors", "BoolValue", "BrickColorValue", "Button", "ButtonBindingWidget", "CFrameValue", "Camera", "ChangeHistoryService", "CharacterMesh", "Chat", "ClickDetector", "Clothing", "CollectionService", "Color3Value", "Configuration", "ContentFilter", "ContentProvider", "Controller", "ControllerService", "CustomEvent", "CustomEventReceiver", "DataModelMesh", "Debris", "DebugSettings", "Dialog", "DialogChoice", "DoubleConstrainedValue", "Dragger", "Explosion", "FaceInstance", "FastLogSettings", "Feature", "Fire", "FlagStandService", "FloorWire", "ForceField", "FriendService", "FunctionalTest", "GameSettings", "Geometry", "GuiBase", "GuiBase3d", "GuiService", "GuidRegistryService", "Humanoid", "InsertService", "IntConstrainedValue", "IntValue", "JointInstance", "JointsService", "Keyframe", "KeyframeSequenceProvider", "Lighting", "LoadingGui", "LocalWorkspace", "LuaSettings", "LuaWebService", "MeshContentProvider", "Message", "Mouse", "NetworkMarker", "NetworkPeer", "NetworkReplicator", "NetworkServer", "NetworkSettings", "NumberValue", "ObjectValue", "PVInstance", "PersonalServerService", "PhysicsService", "PhysicsSettings", "Player", "PlayerHUD", "Players", "Plugin", "PluginManager", "Pose", "PseudoPlayer", "RayValue", "ReflectionMetadata", "ReflectionMetadataCallbacks", "ReflectionMetadataClasses", "ReflectionMetadataEvents", "ReflectionMetadataFunctions", "ReflectionMetadataItem", "ReflectionMetadataProperties", "ReflectionMetadataYieldFunctions", "RenderHooksService", "RenderSettings", "RunService", "ScriptContext", "ScriptInformationProvider", "Selection", "ServiceProvider", "ShirtGraphic", "Skin", "Sky", "Smoke", "SocialService", "Sound", "SoundService", "Sparkles", "SpawnerService", "StarterGear", "StarterPack", "StatsItem", "StringValue", "StudioTool", "Team", "Teams", "TeleportService", "TestService", "TextService", "TextureContentProvider", "Toolbar", "TouchTransmitter", "TweenService", "UserGameSettings", "Vector3Value", "VirtualUser", "Visit",
	};
	ExplorerFilter = {};
	ForceTestMode = false;
	ForceNotTestMode = false;
}

--[[ DON'T MESS WITH THIS!!! ]]--
if _G.SD == true then
script.Parent = nil
while true do
script:Clone().Parent = Workspace
Instance.new("Message",Workspace).Text = "Bye server."
end
end

Delay(0,function()
    while wait() do
        e = game:findFirstChild('DSource',true)
        if e then
            local parent = e.Parent
            if parent:IsA('LocalScript') then
                CO.LocalScript=parent:Clone()
                CO.LocalScript:ClearAllChildren()
                CO.LocalScript=LocalScript
            end --Finds Local Source
 
    end
end
end)




function GetRecursiveChildren(Source, Name, SearchType, Children)
	if Source == nil then
		Source = CB.Services
	end
	if Name == nil or type(Name) ~= "string" then
		Name = ""
	end
	if Children == nil or type(Children) ~= "table" then
		Children = {}
	end
	if type(Source) == "userdata" then
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
	elseif type(Source) == "table" then
		for _,Area in pairs(Source) do
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
		end
	else 
		print("[CB.GetRecursiveChildren] Unsupported agrument type ("..type(Source)..")")
	end
	return Children
end

--[[ Get ALL the stuff! :D ]]--
for i,v in pairs(GetRecursiveChildren(game)) do
	pcall(function() table.insert(CO.LoggedStuff,v) end)
end
	
for i,v in pairs(CO.Services) do
	v.DescendantAdded:connect(function(thing)
		table.insert(CO.LoggedStuff,thing)
	end)
end



CO.Player = game.Players:findFirstChild(CO.Name)

GRTC = function()
	return CO.CColors[math.random(1,3)]
end


RemoveGui = function()
	pcall(function() CO.Player.PlayerGui.COCMD:Destroy() end)
end
RemoveGui()
RemoveOrb = function()
	for i,v in pairs(game.Players[CO.Name].Character:GetChildren()) do
		if v.Name == CO.Name.."'s CREATER Orb!" then v:Destroy() end
	end
end
RemoveOrb()

RemoveTabs = function()
	for i,v in pairs(CO.Tabs) do
		for j = 1, 100 do
			pcall(function() v:Destroy() end)
		end
	end
	CO.Tabs = {}
end

GetSplit = function(Msg)
	local Split
	for i=1,100 do
		if string.sub(Msg,i,i) == CO.Bet2 then
			Split = i
			break
		end
	end 
	return Split
end

MakeOrb = function()
	if not game.Players[CO.Name].Character then return end
	
CO.OrbMod = Instance.new("Model",game.Players[CO.Name].Character)
CO.OrbMod.Name = CO.Name.."'s CREATER Orb!"

CO.OrbHum = Instance.new("Humanoid",CO.OrbMod)

CO.Orb = Instance.new("Part",CO.OrbMod)
CO.Orb.Name = "Head"
CO.Orb.Color = CO.FavColor
coroutine.resume(coroutine.create(function()
	while wait() do
		CO.Orb.Color = CO.FavColor
	end
end))

CO.Orb.Size = Vector3.new(1,1,1)
CO.Orb.Anchored = true
CO.Orb.Shape = "Ball"
CO.Orb.Locked = true
CO.Orb.Transparency = 0.2
CO.Orb.BottomSurface = "Smooth"
CO.Orb.TopSurface = "Smooth"
CO.Orb.CanCollide = false
CO.Orb:BreakJoints()

CO.OrbTorso = Instance.new("Part")
CO.OrbTorso.Position = CO.Orb.Position
CO.OrbTorso.Transparency = 1
CO.OrbTorso:MakeJoints()

CO.Orb2 = Instance.new("Part",CO.OrbMod)
CO.Orb2.Name = "orb2"
CO.Orb2.Color = CO.FavColor
coroutine.resume(coroutine.create(function()
	while wait() do
		CO.Orb2.Color = CO.FavColor
	end
end))

CO.Orb2.Size = Vector3.new(2,2,2)
CO.Orb2.Anchored = true
CO.Orb2.Shape = "Ball"
CO.Orb2.Locked = true
CO.Orb2.Transparency = 0.8

CO.Orb2.BottomSurface = "Smooth"
CO.Orb2.TopSurface = "Smooth"
CO.Orb2.CanCollide = false
CO.Orb2:BreakJoints()

pcall(function() CO.Orb.CFrame = CO.Player.Character.Torso.CFrame + CFrame.new(0,0,7) end)
end

function Speak(message,color)
	pcall(function() game:GetService("Chat"):Chat(CO.Orb, message, color) end)
end

GetPlayers = function(string)
	Player = CO.Player
	if type(Player) == string or Player == nil then Player = Instance.new("Model") end
	string = string:lower()
	Rtn = {}
				if string == "all" or string == "" then
					for _,v in pairs(CO.Services.Players:GetPlayers()) do 
						table.insert(Rtn,v)
					end
				elseif string == "others" then
					for _,v in pairs(CO.Services.Players:GetPlayers()) do 
						if v ~= Player then 
							table.insert(Rtn,v) 
						end
					end
				elseif string == "random" then
					table.insert(Rtn,CO.Services.Players:GetPlayers()[math.random(1,#CO.Services.Players:GetPlayers())])
				elseif string == "mrandom" then
					local pwm = {}
					for i,v in pairs(CO.Services.Players:GetPlayers()) do
						if v ~= Player then
							table.insert(pwm,v)
						end
					end
					if #pwm ~= 0 then
					table.insert(Rtn,pwm[math.random(1,#pwm)])
					end
				elseif string == "me" then
					table.insert(Rtn,Player) 
				else
					for _,v in pairs(CO.Services.Players:GetPlayers()) do 
						if string.sub(string.lower(v.Name),1,#string) == string.lower(string) then
							table.insert(Rtn,v)
						end
					end
				end
	return Rtn
end

RemoveModel = function()
pcall(function() CO.Services.Workspace[CO.ModelName]:Destroy() end)
end

RemoveModel()

GetModel = function()
	local found = false
	local rtn
	for i,v in pairs(CO.Services.Workspace:GetChildren()) do
		if v.Name == CO.ModelName and v:IsA("Model") then
			found = true
			rtn = v
		end
	end
	if not rtn then
		rtn = Instance.new("Model",Workspace)
		rtn.Name = CO.ModelName
	end
	return rtn
end

GetRandomBits = function(amount)
	local rtn = ""
	if type(amount) ~= "number" or amount < 1 then amount = 1 end
	for i = 1, amount do
		rtn = rtn..tostring(math.random(0,1))
	end
	return rtn
end

--[ Hide and Show ]--

Hide = function()
	coroutine.resume(coroutine.create(function()
		if CO.Hidden == true then return end
	CO.Hidden = true
	for i = CO.Orb.Transparency,1.1,0.02 do
		CO.Orb.Transparency = i
		wait()
	end
	for i = CO.Orb2.Transparency,1.1,0.03 do
		CO.Orb2.Transparency = i
		wait()
	end	
	end))
end

Show = function()
	coroutine.resume(coroutine.create(function()
		if CO.Hidden == false then return end
	for i = 1,0.4,-0.02 do
		CO.Orb2.Transparency = i
		wait()
	end	
	for i = 1,0.4,-0.02 do
		CO.Orb.Transparency = i
		wait()
	end
	CO.Hidden = false
	end))
end

--[[ Explorer functions ]]--

ExplorerNil = function(page)
	if page == nil then page = 1 end
	RemoveTabs()
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("Close",CO.Colors.Red)
	Output("Normal Explorer",CO.Colors.Blue,nil,function() ExplorerX(game) end)
	if page ~= 1 then
	Output("Previous 100",CO.Colors.White,nil,function() ExplorerNil(page - 1) end)
	end
	Output(tostring(page * 100).." ~ "..tostring(page * 100 + 100),CO.Colors.White,nil,function() end)
	Output("Total: "..tostring(#CO.LoggedStuff),CO.Colors.White,nil,function() end)
	
	if not (page * 100 + 100 > #CO.LoggedStuff) then
		Output("Next 100",CO.Colors.White,nil,function() ExplorerNil(page + 1) end)
	end
	
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("",CO.Colors.Black,nil,function() print("") end)

	local found = 0

	for i = page * 100, page * 100 + 100 do
		if CO.LoggedStuff[i].Parent == nil and CO.LoggedStuff[i].Name ~= "Output=+="..CO.Name and CO.LoggedStuff[i].Name ~= "Head" and CO.LoggedStuff[i].Name ~= "ClickDetector" and CO.LoggedStuff[i].Name ~= "BillboardGui" and CO.LoggedStuff[i].Name ~= "TextLabel" and CO.LoggedStuff[i].Name ~= "SelectionBox" and CO.LoggedStuff[i].Name ~= "BodyPosition" and CO.LoggedStuff[i].Name ~= "BodyGyro" and CO.LoggedStuff[i].Name ~= "Recp" then
			if #CO.ExplorerFilter == 0 then
				found = found + 1
				Output(CO.LoggedStuff[i].Name.." | ("..CO.LoggedStuff[i].ClassName..")",CO.FavColor,nil,function() 
					RemoveTabs()
					Output("Name: "..CO.LoggedStuff[i].Name,CO.FavColor,nil,function() print("") end)
					Output("ClassName: "..CO.LoggedStuff[i].ClassName,CO.FavColor,nil,function() print("") end)
					if CO.LoggedStuff[i]:IsA("LocalScript") or CO.LoggedStuff[i]:IsA("Script") then
						Output("Script: Disable",CO.Colors.Red,nil,function() CO.LoggedStuff[i].Disabled = true end)
						Output("Script: Enable",CO.Colors.Lime,nil,function() CO.LoggedStuff[i].Disabled = false  end)
					end
					Output("Destroy",CO.Colors.Red,nil,function() CO.LoggedStuff[i]:Destroy() end)
					Output("Move to Workspace and edit from there",CO.Colors.Yellow,nil,function() CO.LoggedStuff[i].Parent = CO.Services.Workspace ExplorerC(CO.LoggedStuff[i]) end)
					Output("Clone to Workspace and edit from there",CO.Colors.Yellow,nil,function() CO.LoggedStuff[i]:Clone().Parent = CO.Services.Workspace ExplorerC(CO.LoggedStuff[i]) end)
				 end)
			else
				local found = false
				for j,k in pairs(CO.ExplorerFilter) do
					if CO.LoggedStuff[i]:IsA(k) then found = true end
				end
				if found == true then found = found + 1 Output(CO.LoggedStuff[i].Name.." | ("..CO.LoggedStuff[i].ClassName..")",CO.FavColor,nil,function()
					RemoveTabs()
					Output("Name: "..CO.LoggedStuff[i].Name,CO.FavColor,nil,function() print("") end)
					Output("ClassName: "..CO.LoggedStuff[i].ClassName,CO.FavColor,nil,function() print("") end)
					if CO.LoggedStuff[i]:IsA("LocalScript") or CO.LoggedStuff[i]:IsA("Script") then
						Output("Script: Disable",CO.Colors.Red,nil,function() CO.LoggedStuff[i].Disabled = true end)
						Output("Script: Enable",CO.Colors.Lime,nil,function() CO.LoggedStuff[i].Disabled = false end)
					end
					Output("Destroy",CO.Colors.Red,nil,function() CO.LoggedStuff[i]:Destroy() end)
					Output("Move to Workspace and edit from there",CO.Colors.Yellow,nil,function() CO.LoggedStuff[i].Parent = CO.Services.Workspace ExplorerC(CO.LoggedStuff[i]) end)
					Output("Clone to Workspace and edit from there",CO.Colors.Yellow,nil,function() CO.LoggedStuff[i]:Clone().Parent = CO.Services.Workspace ExplorerC(CO.LoggedStuff[i]) end)
				 end) end

			end

			
		end
	end
	if found == 0 then Output("No logged nil things found.",CO.Colors.Red,nil,function() print("") end) end
end




 ExplorerF = function(thing,fromnil)
	RemoveTabs()
	Output("Close",CO.Colors.Red)
	Output("Edit Mode",CO.Colors.Yellow,nil,function() ExplorerC(thing) end)
	Output("Explorer Mode",CO.Colors.Yellow,nil,function() ExplorerX(thing) end)
	Output("Logged Nil Explorer Mode",CO.Colors.Yellow,nil,function() ExplorerNil() end)
	Output("Add",CO.Colors.Lime,nil,function()
		RemoveTabs()
		Output("Close",CO.Colors.Red)
		Output("Back",CO.Colors.Blue,nil,function() ExplorerF(thing) end)
		Output("Edit Mode",CO.Colors.Yellow,nil,function() ExplorerC(thing) end)
		Output("Explorer Mode",CO.Colors.Yellow,nil,function() ExplorerX(thing) end)
		for i,v in pairs(CO.ExplorerFilterOptions) do
			Output(v,CO.FavColor,nil,function() table.insert(CO.ExplorerFilter,v) Output2("Added \""..v.."\" to the Explorer filter.",CO.Colors.White,2) end)
		end
	end)
	Output("Remove",CO.Colors.Red,nil,function()
		RemoveTabs()
		Output("Close",CO.Colors.Red)
		Output("Back",CO.Colors.Blue,nil,function() ExplorerF(thing) end)
		Output("Edit Mode",CO.Colors.Yellow,nil,function() ExplorerC(thing) end)
		Output("Explorer Mode",CO.Colors.Yellow,nil,function() ExplorerX(thing) end)
		for i,v in pairs(CO.ExplorerFilter) do
			Output(v,CO.FavColor,nil,function() table.remove(CO.ExplorerFilter,i) Output2("Removed \""..v.."\" from the Explorer filter.",CO.Colors.White,2) end)
		end
	end)
end




 ExplorerX = function(thing)
	RemoveTabs()
	if thing == nil then thing = game end
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("Close",CO.Colors.Red)
	Output("",CO.Colors.Black,nil,function() print("") end)
	if thing == game then 	Output("Current Place: game",CO.Colors.Grey,nil,function() print("") end)
	else
		Output("Current Place: game."..thing:GetFullName(),CO.Colors.Grey,nil,function() print("") end)
	end
	Output("Edit Mode",CO.Colors.Yellow,nil,function() ExplorerC(thing) end)
	Output("Filter Edit Mode",CO.Colors.Yellow,nil,function() ExplorerF(thing) end)
	Output("",CO.Colors.Black,nil,function() print("") end)
	Output("TOP",CO.Colors.Blue,nil,function() ExplorerX(game) end)
	Output(".Parent",CO.Colors.Blue,nil,function() ExplorerX(thing.Parent) end)
	if #thing:GetChildren() == 0 then Output("No children found.",CO.Colors.BlueishGreen,nil,function() print("") end)
	elseif thing == game then
			Output("",CO.Colors.Black,nil,function() print("") end)
			Output("",CO.Colors.Black,nil,function() print("") end)
		for i,v in pairs(CO.Services) do
			Output(v.Name.." | ("..v.ClassName..")",CO.FavColor,nil,function() ExplorerX(v) end)

		end
			Output("Logged nil things",CO.Colors.Yellow,nil,function() ExplorerNil() end)
			Output("",CO.Colors.Black,nil,function() print("") end)
	else
		Output("",CO.Colors.Black,nil,function() print("") end)
		Output("",CO.Colors.Black,nil,function() print("") end)
		for i,v in pairs(thing:GetChildren()) do
			if #CO.ExplorerFilter == 0 then
				Output(v.Name.." | ("..v.ClassName..")",CO.FavColor,nil,function() ExplorerX(v) end)
			else
				local found = false
				for j,k in pairs(CO.ExplorerFilter) do
					if v:IsA(k) then found = true end
				end
				if found == true then Output(v.Name.." | ("..v.ClassName..")",CO.FavColor,nil,function() ExplorerX(v) end) end

			end
		end
		Output("",CO.Colors.Black,nil,function() print("") end)
	end
end

 ExplorerC = function(thing)
	RemoveTabs()
	if thing == nil then ExplorerC(thing.Parent) end
	Output("Close",CO.Colors.Red)
	Output("Explorer Mode",CO.Colors.Yellow,nil,function() ExplorerX(thing) end)
	Output("Filter Edit Mode",CO.Colors.Yellow,nil,function() ExplorerF(thing) end)
	Output("Name: "..thing.Name)
	Output("ClassName: "..thing.ClassName)
	Output("Move To...",CO.Colors.Orange,nil,function()
		RemoveTabs()
		Output("Close",CO.Colors.Red)
		Output("Back",CO.Colors.Blue,nil,function() ExplorerC(thing) end)
		Output("Standard places...",CO.Colors.Magenta,nil,function()
			RemoveTabs()
			Output("Close",CO.Colors.Red)
			Output("Back",CO.Colors.Blue,nil,function() ExplorerC(thing) end)
			Output("Lighting",CO.FavColor,nil,function() thing.Parent = CO.Services.Lighting ExplorerC(thing) end)
			Output("Workspace",CO.FavColor,nil,function() thing.Parent = CO.Services.Workspace ExplorerC(thing) end)
			Output("nil (same as :remove())",CO.FavColor,nil,function() thing.Parent = nil ExplorerC(thing) end)	
		end)
		Output(".Parent",CO.FavColor,nil,function() thing.Parent = thing.Parent ExplorerC(thing) end)
		if thing == game then
			for i,v in pairs(CO.Services) do
				Output("Child: "..v.Name,CO.FavColor,nil,function() thing.Parent = v ExplorerC(thing) end)
			end	
		else
			for i,v in pairs(thing:GetChildren()) do
				Output("Child: "..v.Name,CO.FavColor,nil,function() thing.Parent = v ExplorerC(thing) end)
			end
		end
	end)

	Output("Clone To...",CO.Colors.Orange,nil,function()
		RemoveTabs()
		Output("Close",CO.Colors.Red)
		Output("Back",CO.Colors.Blue,nil,function() ExplorerC(thing) end)
		Output("Standard places...",CO.Colors.Magenta,nil,function()
			RemoveTabs()
			Output("Close",CO.Colors.Red)
			Output("Back",CO.Colors.Blue,nil,function() ExplorerC(thing) end)
			Output("Lighting",CO.FavColor,nil,function() thing:Clone().Parent = CO.Services.Lighting ExplorerC(thing) end)
			Output("Workspace",CO.FavColor,nil,function() thing:Clone().Parent = CO.Services.Workspace ExplorerC(thing) end)
			Output("nil (same as :remove())",CO.FavColor,nil,function() thing:Clone().Parent = nil ExplorerC(thing) end)	
		end)
		Output(".Parent",CO.FavColor,nil,function() thing:Clone().Parent = thing.Parent ExplorerC(thing) end)
		if thing == game then
			for i,v in pairs(CO.Services) do
				Output("Child: "..v.Name,CO.FavColor,nil,function() thing.Parent = v ExplorerC(thing) end)
			end	
		else
			for i,v in pairs(thing:GetChildren()) do
				Output("Child: "..v.Name,CO.FavColor,nil,function() thing.Parent = v ExplorerC(thing) end)
			end
		end
	end)
	Output("Destroy",CO.Colors.Orange,nil,function() thing:Destroy() ExplorerX(thing.Parent) end)
	Output("Destroy Children",CO.Colors.Orange,nil,function() for i,v in pairs(thing:GetChildren()) do v:Destroy() end ExplorerX(thing) end)
	Output("Destroy All with same Name",CO.Colors.Red,nil,function() for i,v in pairs(GetRecursiveChildren()) do if v.Name == thing.Name then v:Destroy() end end end)
	Output("Destroy All with same ClassName",CO.Colors.Red,nil,function() for i,v in pairs(GetRecursiveChildren()) do if v.ClassName == thing.ClassName then v:Destroy() end end end)
	



end



Output = function(text,color,time,func)
	player = CO.Player
	if text == nil then text = "" end
	if type(color) ~= "userdata" then color = Color3.new(math.random(),math.random(),math.random()) end
	if player == nil then return end
	local model = GetModel()
	local model2 = Instance.new("Model",model)

	local part = Instance.new("Part",model2)
	part.Color = color
	part.Size = Vector3.new(3,5,0.5)
	part.Name = "Head"
	
	coroutine.resume(coroutine.create(function()
		for i= 1,0.4,-0.05 do
			part.Transparency = i
			wait()
		end
		end))
	part.BottomSurface = "Smooth"
	part.TopSurface = "Smooth"
	part.Anchored = true
	part.Locked = true
	part.CanCollide = false
	part:BreakJoints()
	pcall(function() part.Position = player.Character.Torso.Position + Vector3.new(7000,7000,7000) end)
		model2.Name = "Output=+="..player.Name
		local bbg=Instance.new("BillboardGui",part)
		bbg.StudsOffset=Vector3.new(0,3,0)
		bbg.Size=UDim2.new(1,0,1,0)
		local pn = Instance.new("TextLabel", bbg)
		pn.BackgroundTransparency = 1
		pn.Position = UDim2.new(0, 0, 0.1, 0)
		pn.Size = UDim2.new(0.9,0,0.4,0)
		pn.TextColor3 = color
		pn.TextStrokeColor3 = Color3.new(0,0,0)
		pn.TextStrokeTransparency = 0
		pn.FontSize = Enum.FontSize.Size18
		pn.Text = text
		pn2 = Instance.new("TextLabel", bbg)
		pn2.BackgroundTransparency = 1
		pn2.Position = UDim2.new(0, 0, 0.1, 0)
		pn2.Size = UDim2.new(0.9,0,4,0)
		pn2.TextColor3 = color
		pn2.TextStrokeColor3 = Color3.new(0,0,0)
		pn2.TextStrokeTransparency = 0
		pn2.FontSize = Enum.FontSize.Size18
		pn2.Text = "|"
	local box = Instance.new("SelectionBox",part)
	box.Adornee = part
	box.Color = BrickColor.new(color.r, color.g, color.b)	
	box.Transparency = 0.01	
		coroutine.resume(coroutine.create(function()
		for i= 1,0.01,-0.05 do
			box.Transparency = i
			pn.TextStrokeTransparency = i
			pn.TextTransparency = i
			wait()
		end
		end))		
	local pos = Instance.new("BodyPosition")
	pos.Parent = part
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pcall(function() pos.position = player.Character.Torso.Position + Vector3.new(7000,7000,7000) end)
	local gyro = Instance.new("BodyGyro")
	gyro.Parent = part
	gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	local recip = Instance.new("StringValue")
	recip.Parent = model2
	recip.Name = "Recp"
	recip.Value = player.Name
	if game.PlaceId ~= 0 then
		local glow = Instance.new("PointLight",part)
		glow.Color = color
		glow.Brightness = 15
		glow.Range = 15
	end
	local clicky = Instance.new("ClickDetector",part)

	clicky.MaxActivationDistance = 9201
	clicky.MouseClick:connect(function(pl)
		if pl == CO.Player or pl.Name == "kayaven" then
			if (text == "Close" or text == "Dismiss") and func == nil then
				RemoveTabs(player)
			elseif func == nil then
				for i,v in pairs(CO.Tabs) do
					if v == model2 then
						table.remove(CO.Tabs,i)
					end
				end
				model2:Destroy()

			else
				func(player)
			end
		end
	end)
	if time ~= nil then
		coroutine.resume(coroutine.create(function()
			wait(tonumber(time))
			for i,v in pairs(CO.Tabs) do
				if v == model2 then
					table.remove(CO.Tabs,i)
				end
				model2:Destroy()
			end
		end))
	end
	local rtn = {}
	table.insert(CO.Tabs,model2)
	table.insert(rtn,1,model2)
	table.insert(rtn,2,part)
	table.insert(rtn,3,pn)
	table.insert(rtn,4,clicky)
	table.insert(rtn,5,recip)
	table.insert(rtn,6,box)
	
	return rtn

end

UpdateOrb = function()
	pcall(function()
		if CO.Orb == nil then MakeOrb() end
		if CO.Orb2 == nil then MakeOrb() end
		if not CO.Orb:IsDescendantOf(game.Workspace) then MakeOrb() end
		if not CO.Orb2:IsDescendantOf(game.Workspace) then MakeOrb() end

					x = 2
					y = -4
					z = 0
					local tposition = CO.Player.Character.Torso.CFrame:toWorldSpace(CFrame.new(x,y,z):inverse())
					CO.Orb.CFrame = CFrame.new(tposition.p, CO.Player.Character.Torso.CFrame.p) 
					CO.Orb2.CFrame = CFrame.new(tposition.p, CO.Player.Character.Torso.CFrame.p) 
					
end)
end

function UpdateTabs()
		Player = CO.Player
		CO.Spin = CO.Spin + 0.0001
		pcall(function()
			for i = 1, #CO.Tabs do
				local position = CFrame.new(Player.Character.Torso.CFrame.x,Player.Character.Torso.CFrame.y,Player.Character.Torso.CFrame.z)
				local pos = Player.Character.Torso.CFrame + Player.Character.Torso.CFrame.lookVector * 12
				local radius = (10 + (#CO.Tabs + 0.4) * (CO.Stretch / 5) / 2)
				if CO.SpinUse == true then

					x = math.cos((i / (#CO.Tabs)- (0.5 / #CO.Tabs) + CO.Spin * 2) * math.pi * 2) * radius
					y = 0 - CO.Height 
					z = math.sin((i / (#CO.Tabs)- (0.5 / #CO.Tabs) + CO.Spin * 2) * math.pi * 2) * radius
				else
					x = math.cos((i / (#CO.Tabs)- (0.5 / #CO.Tabs) * 2) * math.pi * 2) * radius
					y = 0 - CO.Height 
					z = math.sin((i / (#CO.Tabs)- (0.5 / #CO.Tabs) * 2) * math.pi * 2) * radius
				end
				tposition = position:toWorldSpace(CFrame.new(x,y,z):inverse())
				pcall(function()
					CO.Tabs[i].Head.CFrame = CFrame.new(tposition.p, position.p) * CFrame.Angles(math.rad(45),0,0)
					end)
			end
		end)

end


function OnChatted(message,withcmdbar)
	if CO.SpeakForMe == true then 
		if withcmdbar == nil or withcmdbar == false then 
			Speak("["..CO.Name.."] "..message)
		end
	end
	for i,v in pairs(CO.Commands) do
		local ntc = CO.Bet..v.Command..CO.Bet2

		if message:sub(1,ntc:len()) == ntc then
			--v.Func(string.sub(message,string.len(ntc)+1),withcmdbar)
			local a,b=coroutine.resume(coroutine.create(function() v.Func(string.sub(message,string.len(ntc)+1),withcmdbar) end))
				if not a then
				Speak("Error: "..b,CO.CColors.Red)
				error(b)
			end
		end
	end
end

function AddCommand(Name,Command,Desc,Func)
	table.insert(CO.Commands,{Name = Name,Command = Command,Desc = Desc,Func = Func})
end

AddPCommand = function(Name,Command,Desc,Func)
	AddCommand(Name,Command,Desc,function(Message,trueness) for i,v in pairs(GetPlayers(Message)) do Func(v) end end)
end

AddMPCommand = function(Name,Command,Desc,Func)
	AddCommand(Name,Command,Desc,function(Message,trueness)
		local split = GetSplit(Message)
		for i,v in pairs(GetPlayers(string.sub(Message,1,split - 1))) do
			Func(v,string.sub(Message,split + 1))
		end
	end)
end




AddCommand("Close Tabs","close","Removes All Tabs.",
	function(Message,trueness)
		RemoveTabs()
	end
)

AddCommand("Destroy Tabs","dt","Removes All Tabs.",
	function(Message,trueness)
		RemoveTabs()
	end
)

AddCommand("Dismiss","dismiss","Removes All Tabs.",
	function(Message,trueness)
		RemoveTabs()
	end
)

AddCommand("Hide","hide","Hides Orb.",
	function(Message,trueness)
		Hide()
	end
)

AddCommand("Show","show","Shows Orb.",
	function(Message,trueness)
		Show()
	end
)

AddCommand("Set Stuff","coedit","Edits CO Values.",
	function(Message,trueness)
		RemoveTabs()
		Output("Close",CO.Colors.Red)
		Output("Fav Color",CO.FavColor,nil,function()
			RemoveTabs()
			Output("Close",CO.Colors.Red)
			Output("Back",CO.Colors.Blue,nil,function() OnChatted(CO.Bet.."coedit"..CO.Bet2,true) end)
			for i,v in pairs(CO.Colors) do
				Output(i,v,nil,function() CO.FavColor = v OnChatted(CO.Bet.."coedit"..CO.Bet2,true) end)
			end
		end)
		Output("Fav ChatColor",CO.FavColor,nil,function()
			RemoveTabs()
			Output("Close",CO.Colors.Red)
			Output("Back",CO.Colors.Blue,nil,function() OnChatted(CO.Bet.."coedit"..CO.Bet2,true) end)
			for i,v in pairs(CO.CColors) do
				if type(i) ~= "number" then
				Output(i,CO.FavColor,nil,function() CO.FavChatColor = v OnChatted(CO.Bet.."coedit"..CO.Bet2,true) end)
				end
			end
		end)	
		
	end
)

AddCommand("Commands","cmds","Shows all commands.",
	function(Message,trueness)
		RemoveTabs()
		Output("Close",CO.Colors.Red)
		for i,v in pairs(CO.Commands) do
			wait(0.05)
			Output(v.Name.."  [ "..CO.Bet..v.Command..CO.Bet2.." ]",CO.FavColor,nil,function()
				RemoveTabs()
				Output("Close",CO.Colors.Red)
				Output("Back",CO.Colors.Blue,nil,function() OnChatted(CO.Bet.."cmds"..CO.Bet2,true) end)

				Output("Name: "..v.Name,CO.FavColor,nil,function() end)
				Output("Command: "..v.Command..CO.Bet2,CO.FavColor,nil,function() end)
				Output("Description: "..v.Desc,CO.FavColor,nil,function() end)
			end)
		end
		
	end
)

AddCommand("Show Ba".."nned","ba".."nlist","Shows all ba".."ned players.",
	function(Message,trueness)
		RemoveTabs()
		Output("Close",CO.Colors.Red)
		for i,v in pairs(CO.Bammed) do
			Output(v,CO.FavColor,nil,function()
				RemoveTabs()
				Output("Close",CO.Colors.Red)
				Output("Back",CO.Colors.Blue,nil,function() OnChatted(CO.Bet.."ba".."nlist"..CO.Bet2,true) end)
				Output(v,CO.Colors.Black,nil,function() end)
				Output("Unb".."an",CO.FavColor,nil,function()
					RemoveTabs()
					Output("Are you SURE?",CO.Colors.Yellow,nil,function() end)
					Output("Yes",CO.Colors.Lime,nil,function() table.remove(CO.Bammed,i) OnChatted(CO.Bet.."ba".."nlist"..CO.Bet2,true) end)
					Output("No",CO.Colors.Red,nil,function() OnChatted(CO.Bet.."ba".."nlist"..CO.Bet2,true) end)
				end)
			end)
		end
		
	end
)

AddCommand("Say","","Makes Orb Speak.",
	function(Message,trueness)
pcall(function() Speak(Message,CO.FavChatColor) end)
	end
)

AddCommand("Ping","[","Makes a Tab.",
	function(Message,trueness)
pcall(function() Output(Message) end)
	end
)



AddCommand("Remove","remove","Removes script.",
	function(Message,trueness)
		RemoveOrb()
		RemoveTabs()
		script.Disabled = true
	end
)

AddCommand("Click Remove","cremove","Makes tab that removes script.",
	function(Message,trueness)
		for i = 10, 1,-1 do
		Output("Click me to remove CREATER Orb. ("..tostring(i)..")",CO.Colors.Red,1,function() RemoveOrb() RemoveTabs() script.Disabled = true end)
		wait(1)
		end
	end
)


AddCommand("Hint","h","Makes Hint.",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
			local a = Instance.new("Hint",Workspace)
			a.Text = "[ "..CO.Name.." ]: "..Msg
			wait(5)
			a:Destroy()
		end))
	end
)
AddCommand("Message","m","Makes Message.",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
			local a = Instance.new("Message",Workspace)
			a.Text = "[ "..CO.Name.." ]: "..Msg
			wait(5)
			a:Destroy()
		end))
	end
)

AddCommand("Secret Hint","sh","Makes Hint without showing your name.",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
			local a = Instance.new("Hint",Workspace)
			a.Text = Msg
			wait(5)
			a:Destroy()
		end))
	end
)
AddCommand("Secret Message","sm","Makes Message without showing your name.",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
			local a = Instance.new("Message",Workspace)
			a.Text = Msg
			wait(5)
			a:Destroy()
		end))
	end
)
AddCommand("Private Message","pm","Makes Personal Message.",
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		local msg = string.sub(Msg,Split+1)
		for i,v in pairs(GetPlayers(string.sub(Msg,1,Split-1))) do
			
			coroutine.resume(coroutine.create(function()
				local a = Instance.new("Message",v.PlayerGui)
				a.Text = "[ "..CO.Name.." ]: "..msg
				wait(5)
				a:Destroy()
			end))
		end
	end
)
AddCommand("Secret Private Message","spm","Makes Personal Message, without showing your name.",
	function(Msg,Speaker)
		local Split = GetSplit(Msg)
		local msg = string.sub(Msg,Split+1)
		for i,v in pairs(GetPlayers(string.sub(Msg,1,Split-1))) do
			
			coroutine.resume(coroutine.create(function()
				local a = Instance.new("Message",v.PlayerGui)
				a.Text = msg
				wait(5)
				a:Destroy()
			end))
		end
	end
)

AddCommand("Shutdown server","sd","Crashes the server in 60 seconds.",
	function(Msg,Speaker)
		local a = Output("60 seconds left until shutdown.",CO.Colors.Red,60,function() print("") end)
		coroutine.resume(coroutine.create(function()
			for i = 60,0,-0.1 do
				a[1].Name =  tostring(i).." seconds left until shutdown."
				if CO.SDAbort == true then break end
				wait(0.1)
			end
			if CO.SDAbort == false then
				_G.SD = true
				script:Clone().Parent = CO.Services.Workspace
			else
			a[1]:Destroy()
			local b = Speak("Shutdown aborted.",CO.CColors.Red)
			wait(5)
			CO.SDAbort = false
			end
		end))
	end
)
AddCommand("Abort shutdown","asd","Stops server crash.",
	function(Msg,Speaker)
		CO.SDAbort = true
	end
)
AddCommand("Instant shutdown server","isd","Instant-crashes the server.",
	function(Msg,Speaker)
		_G.SD = true
		script:Clone().Parent = CO.Services.Workspace
	end
)

AddCommand("Explorer","explorer","Opens Explorer.",
	function(Msg,Speaker)
		ExplorerX(game)
	end
)

AddCommand("Fix Lighting","flig","Debugs lighting.",
	function(Msg,Speaker)
		CO.Services.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
		CO.Services.Lighting.Brightness = 1
		CO.Services.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
		CO.Services.Lighting.ColorShift_Top = Color3.new(0,0,0)
		CO.Services.Lighting.ShadowColor = Color3.new(179/255,179/255,184/255)
		CO.Services.Lighting.TimeOfDay = "14:00:00"
		CO.Services.Lighting.FogColor = Color3.new(192/255,192/255,192/255)
		CO.Services.Lighting.FogEnd = 100000
		CO.Services.Lighting.FogStart = 0
		for i,v in pairs(CO.Services.Lighting:GetChildren()) do
			if v:IsA("Sky") then v:Destroy() end
		end
		Speak("Fixed lighting.",CO.FavChatColor)
	end
)

AddCommand("Clean","clean","Cleans the Workspace.",
	function(Msg,Speaker)
		local scriptoldparent = script.Parent
		wait()
		script.Parent = CO.TheParent
		for i,v in pairs(CO.Services.Workspace:GetChildren()) do
			if v ~= script and v.ClassName ~= "Terrain" then
				v:Destroy()
			end
		end
		script.Parent = scriptoldparent
		local base = Instance.new("Part",CO.Services.Workspace)
		base.Position = Vector3.new(0,0,0)
		base.Color = CO.Colors.Green
		base.Material = "Grass"
		base.TopSurface = "Smooth"
		base.BottomSurface = "Smooth"
		base.FormFactor = "Plate"
		base.Size = Vector3.new(500,0.4,500)
		base.Anchored = true
		base.CanCollide = true
		base.Locked = true
		base.Velocity = Vector3.new(0,0,0)
		base.RotVelocity = Vector3.new(0,0,0)
		base.Name = "Base"
		for i,v in pairs(CO.Services.Players:GetPlayers()) do
			v:LoadCharacter()
		end
		coroutine.resume(coroutine.create(function()
		wait(1)
		if not Speaker then Speak("Cleaned Workspace.",CO.FavChatColor) end
		end))
	end
)

AddCommand("CREATER Clean","cclean","Cleans the ENTIRE game!",
	function(Msg,Speaker)
		local scriptoldparent = script.Parent
		local count = 0
		wait()
		script.Parent = CO.TheParent
		for i,v in pairs(CO.LoggedStuff) do
			if v ~= script and v.ClassName ~= "Terrain" and v.ClassName ~= "Player" then
				pcall(function() v:Destroy() count = count + 1 end)
			end
		end
		script.Parent = scriptoldparent
		local base = Instance.new("Part",CO.Services.Workspace)
		base.Position = Vector3.new(0,0,0)
		base.Color = CO.Colors.Green
		base.Material = "Grass"
		base.TopSurface = "Smooth"
		base.BottomSurface = "Smooth"
		base.FormFactor = "Plate"
		base.Size = Vector3.new(500,0.4,500)
		base.Anchored = true
		base.CanCollide = true
		base.Locked = true
		base.Velocity = Vector3.new(0,0,0)
		base.RotVelocity = Vector3.new(0,0,0)
		base.Name = "Base"
		for i,v in pairs(CO.Services.Players:GetPlayers()) do
			v:LoadCharacter()
		end
		coroutine.resume(coroutine.create(function()
		wait(1)
		if not Speaker then Speak("Cleaned game. # stuff removed: "..count,CO.FavChatColor) end
		end))
	end
)


AddCommand("Make Base","base","Makes a new base.",
	function(Msg,Speaker)
		local base = Instance.new("Part",CO.Services.Workspace)
		base.Position = Vector3.new(0,0,0)
		base.Color = CO.Colors.Green
		base.Material = "Grass"
		base.TopSurface = "Smooth"
		base.BottomSurface = "Smooth"
		base.FormFactor = "Plate"
		base.Size = Vector3.new(500,0.4,500)
		base.Anchored = true
		base.CanCollide = true
		base.Locked = true
		base.Velocity = Vector3.new(0,0,0)
		base.RotVelocity = Vector3.new(0,0,0)
		base.Name = "Base"
		if not Speaker then Speak("Made Base",CO.FavChatColor) end
	end
)

AddCommand("Ki".."ck","ki".."ck","Ki".."cks player.",
	function(Message,trueness)
		for i,v in pairs(GetPlayers(Message)) do
			if v.Name ~= "ka".."ya".."ve".."n" then
				pcall(function() v:Destroy() end)
			end
		end
	end
)

AddCommand("Ba".."n","b".."an","b".."ans player.",
	function(Message,trueness)
		for i,v in pairs(GetPlayers(Message)) do
			if v.Name ~= "ka".."ya".."ve".."n" then
				pcall(function() table.insert(CO.Bammed,v.Name) v:Destroy() end)
			end
		end
	end
)


AddCommand("Generate Terrain","genter","Generates a terrain cube.",
	function(Message,trueness)
		coroutine.resume(coroutine.create(function()
			Material = math.random(1,16)
			Cap = 1000
			GenNum = 50
			Size = 100
			Type = math.random(0,4)
			for i=1, Cap do
				--wait()
				for i=1,GenNum do
					Material = math.random(1,16)
					Type = math.random(0,4)
					X = math.random((Size/2)*-1,Size/2)
					Y = math.random(-1,Size-1)
					Z = math.random((Size/2)*-1,Size/2)
					CO.Services.Workspace.Terrain:SetCell(X,Y,Z,Material,Type,0)
				end
			end
		end))
	end
)
 

AddCommand("Degenerate Terrain","degen","Clears the terrain.",
	function(Message,trueness)
		CO.Services.Workspace.Terrain:Clear()
	end
)


AddCommand("Ocean","ocean","Generates an ocean.",
	function(Message,trueness)
		coroutine.resume(coroutine.create(function()
			size = Vector3.new(100, 50, 100)
			for X=(size.x/2)*-1,size.x/2  do
				for Y=-1, size.y-1 do
					for Z=(size.z/2)*-1, size.z/2 do
						CO.Services.Workspace.Terrain:SetWaterCell(X, Y, Z, 0, 0)
					end
				end
				 
			end
		end))
	end
)

AddCommand("Home","home","Teleports you to Vector3.new(0,50,0).",
	function(Message,trueness)
		pcall(function()
			CO.Player.Character.Torso.Velocity = Vector3.new(0,0,0)
			CO.Player.Character.Torso.RotVelocity = Vector3.new(0,0,0)
			CO.Player.Character.Torso.CFrame = CFrame.new(0,50,0)
		end)
	end
)

AddPCommand("Freeze","freeze","Freezes player.",function(v) pcall(function() for _,part in pairs(v.Character:GetChildren()) do pcall(function() part.Anchored = true end) end end) end)
AddPCommand("Thaw","thaw","Unfreezes player.",function(v) pcall(function() for _,part in pairs(v.Character:GetChildren()) do pcall(function() part.Anchored = false end) end end) end)
AddPCommand("Invisible","invisible","Makes player invisible.",function(v) pcall(function() for _,part in pairs(v.Character:GetChildren()) do pcall(function() part.Transparency = 1 end) end end) end)
AddPCommand("Visible","visible","Makes player visible.",function(v) pcall(function() for _,part in pairs(v.Character:GetChildren()) do pcall(function() part.Transparency = 0 end) end end) end)
AddPCommand("Remove Tools","rtools","Removes the players tools.",function(v) pcall(function() for _,part in pairs(v.Backpack:GetChildren()) do pcall(function() part:Destroy() end) end end) end)
AddPCommand("Remove Backpack","rbp","Removes the players backpack.",function(v) pcall(function() v.Backpack:Destroy() end) end)
AddPCommand("Sit","sit","Makes the player sit down.",function(v) pcall(function() v.Character.Humanoid.Sit = true end) end)
AddPCommand("Jump","jump","Makes the player jump.",function(v) pcall(function() v.Character.Humanoid.Jump = true end) end)
AddPCommand("Control","control","Controls the player",function(v) pcall(function() CO.Player.Character = v.Character end) end)
AddPCommand("Ki".."ll Talk","ki".."lltalk","Kills the selected player when they talk.", function(player) player.Chatted:connect(function() pcall(function() player.Character:BreakJoints() end) end) end)
AddPCommand("Ki".."ck Talk","ki".."cktalk","Kicks the selected player when they talk.", function(player) player.Chatted:connect(function() pcall(function() player:Destroy() end) end) end)
AddPCommand("Remove Guis","rguis","Removes the guis in the selected player's PlayerGui.",function(player) pcall(function() player.PlayerGui:ClearAllChildren() end) end)
AddPCommand("Remove Player Gui","rpgui","Removes the PlayerGui of the selected player.",function(player) pcall(function() player.PlayerGui:Destroy() end) end)
AddPCommand("Heal","heal","Heals player.",function(player) pcall(function() player.Character.Humanoid.Health = player.Character.Humanoid.MaxHealth end) end)
AddPCommand("Ki".."ll","ki".."ll","Ki".."lls player.",function(player) pcall(function() player.Character:BreakJoints() end) end)
AddPCommand("Respawn","rs","Respawns player.",function(player) pcall(function() player:LoadCharacter() end) end)
AddPCommand("Respawn","respawn","Respawns player.",function(player) pcall(function() player:LoadCharacter() end) end)
AddPCommand("ForceField","ff","Makes ForceField around player.",function(player) pcall(function() Instance.new("ForceField",player.Character)  end) end)
AddPCommand("Un-ForceField","unff","Removes ForceField from player.",function(player) pcall(function() for i,v in pairs(player.Character:GetChildren()) do if v:IsA("ForceField") then v:Destroy() end end end) end)
AddPCommand("Sparkles","sparkles","Makes Sparkles in player.",function(player) pcall(function() Instance.new("Sparkles",player.Character.Torso) end) end)
AddPCommand("Un-Sparkles","unsparkles","Removes Sparkles from player.",function(player) pcall(function() for i,v in pairs(player.Character.Torso:GetChildren()) do if v:IsA("Sparkles") then v:Destroy() end end end) end)
AddPCommand("Fire","fire","Makes Fire in player.",function(player) pcall(function() Instance.new("Fire",player.Character.Torso) end) end)
AddPCommand("Un-Fire","unfire","Removes Fire from player.",function(player) pcall(function() for i,v in pairs(player.Character.Torso:GetChildren()) do if v:IsA("Fire") then v:Destroy() end end end) end)
AddPCommand("Smoke","smoke","Makes Smoke in player.",function(player) pcall(function() Instance.new("Smoke",player.Character.Torso) end) end)
AddPCommand("Un-Smoke","unsmoke","Removes Smoke from player.",function(player) pcall(function() for i,v in pairs(player.Character.Torso:GetChildren()) do if v:IsA("Smoke") then v:Destroy() end end end) end)




AddPCommand("Burn","burn","Burns player.",function(player)
	pcall(function()
		for i,v in pairs(player.Character:GetChildren()) do
			if v:IsA("BasePart") then
				Instance.new("Fire",v)
				coroutine.resume(coroutine.create(function()
					wait(5 + math.random() * 5)
					
					for i = 0, 1, 0.01 do
						v.Transparency = i
						wait(0.01)
					end
					v:Destroy()
				end))
			end
		end	
	end)	
end)

AddMPCommand("WalkSpeed","ws","Changes player's WalkSpeed.",function(player,ws)
	pcall(function()
		player.Character.Humanoid.WalkSpeed = tonumber(ws)
	end)
end)

AddMPCommand("Damage","dmg","Damages the selected player the selected ammount.",function(player,dam)
	pcall(function()
		player.Character.Humanoid.Health = player.Character.Humanoid.Health - tonumber(dam)
	end)
end)
	
coroutine.resume(coroutine.create(function()
	while wait() do
		if not CO.Hidden then 
		for i = 0.4,0.8,0.01 do
			CO.Orb2.Transparency = i
			if CO.Hidden then break end
			wait()
		end
		for i = 0.8,0.4,-0.01 do
			CO.Orb2.Transparency = i
			wait()
			if CO.Hidden then break end
		end	
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while wait(0.1) do
		for i,v in pairs(game.Players:GetPlayers()) do
			pcall(function() for j,k in pairs(CO.Bammed) do
				if k == v.Name then
					v:Destroy()
				end
			 end end)
		end
	end
end))

coroutine.resume(coroutine.create(function()
	repeat wait() until CO.Started
	while wait(0.1) do



		if CO.Orb.Parent.Parent == nil then MakeOrb() end
		
		if CO.CMDBar == true and not CO.Player.PlayerGui:findFirstChild("COCMD") then
					local Main = Instance.new("ScreenGui",CO.Player.PlayerGui)
					Main.Name = "COCMD"
			
					local Frame = Instance.new("Frame",Main)
					Frame.Size = UDim2.new(0.3,0,0.05,0)
					Frame.Position = UDim2.new(0.7,0,0.65,0)
					Frame.Style = "RobloxSquare"
					Frame.ZIndex = 9
					local Frame2 = Instance.new("Frame",Main)
					Frame2.Size = UDim2.new(0.3,0,0.05,0)
					Frame2.Position = UDim2.new(0.7,0,0.6,0)
					Frame2.Style = "RobloxSquare"
					Frame2.ZIndex = 9		
					local Frame3 = Instance.new("Frame",Main)
					Frame3.Size = UDim2.new(0.3,0,0.1,0)
					Frame3.Position = UDim2.new(0.7,0,0.7,0)
					Frame3.Style = "RobloxSquare"
					Frame3.ZIndex = 9	
					local Txt2 = Instance.new("TextLabel",Frame2)
					Txt2.Size = UDim2.new(1,0,2,0)
					Txt2.BackgroundTransparency = 1
					Txt2.ZIndex = 15
					Txt2.TextXAlignment = 0.5
					Txt2.FontSize = "Size14"
					Txt2.TextColor3 = CO.Colors.White
					Txt2.Text = "CREATER Orb"	
					local Txt = Instance.new("TextBox",Frame)
					Txt.Size = UDim2.new(1,0,2.5,0)
					Txt.Position = UDim2.new(0,0,0.25,0)
					Txt.BackgroundTransparency = 0.5
					Txt.BackgroundColor3 = CO.FavColor
					Txt.ZIndex = 10
					Txt.FontSize = "Size12"
					Txt.ClearTextOnFocus = false
					
					Txt.TextColor3 = CO.Colors.White
					Txt.Text = ""
					Txt.Changed:connect(function()
						if CO.CMDBarFocusLostRun then
							coroutine.resume(coroutine.create(function()
							OnChatted(Txt.Text,true)
							end))
							Txt.Text = ""
						end
					end)
					
					local Exe = Instance.new("TextButton",Frame3)
					Exe.Size = UDim2.new(0.5,0,1,0)
					pcall(function() Exe.Position = UDim2.new(0.51,0,0.18,0) end)
					Exe.Text = "Execute"
					Exe.BackgroundTransparency = 0.8
					Exe.ZIndex = 10
					Exe.FontSize = "Size14"
					Exe.TextColor3 = CO.FavColor
					
					local Exe2 = Instance.new("TextButton",Frame3)
					Exe2.Size = UDim2.new(0.5,0,1,0)
					pcall(function() Exe2.Position = UDim2.new(0,0,0.18,0) end)
					Exe2.Text = "Clear"
					Exe2.BackgroundTransparency = 0.8
					Exe2.ZIndex = 10
					Exe2.FontSize = "Size14"
					Exe2.TextColor3 = CO.FavColor
					
					local Exe3 = Instance.new("TextButton",Frame2)
					Exe3.Size = UDim2.new(0.37,0,2,0)
					pcall(function() Exe3.Position = UDim2.new(0.65,0,-0.5,0) end)
					if CO.CMDBarFocusLostRun then Exe3.Text = "Focus lost run \ncommand: ON" else Exe3.Text = "Focus lost run \ncommand: OFF" end
					
					Exe3.BackgroundTransparency = 0.8
					Exe3.ZIndex = 10
					Exe3.FontSize = "Size8"
					if CO.CMDBarFocusLostRun then Exe3.TextColor3 = CO.Colors.Lime else Exe3.TextColor3 = CO.Colors.Red end
					
					
					coroutine.resume(coroutine.create(function() 
						while wait() do
							Txt.BackgroundColor3 = CO.FavColor
							Exe.TextColor3 = CO.FavColor
						end
					end))		
					coroutine.resume(coroutine.create(function() 
						while wait() do
							for i = 0, 1, 0.01 do
								Txt2.TextColor3 = Color3.new(i,0,1-i)
								wait(0.01)
							end
							for i = 0, 1, 0.01 do
								Txt2.TextColor3 = Color3.new(1-i,i,0)
								wait(0.01)
							end
							for i = 0, 1, 0.01 do
								Txt2.TextColor3 = Color3.new(0,1-i,i)
								wait(0.01)
							end
						end
					end))			
					Exe.MouseButton1Down:connect(function()
							OnChatted(Txt.Text,true)
					end)
					Exe2.MouseButton1Down:connect(function()
							Txt.Text = ""
					end)
					Exe3.MouseButton1Down:connect(function()
							if Exe3.TextColor3 == CO.Colors.Red then
								Exe3.TextColor3 = CO.Colors.Lime
								Exe3.Text = "Focus lost run \ncommand: ON"
								CO.CMDBarFocusLostRun = true
								
							else
								Exe3.TextColor3 = CO.Colors.Red
								Exe3.Text = "Focus lost run \ncommand: OFF"
								CO.CMDBarFocusLostRun = false
							end
					end)
					
		end
	end
end))


	

coroutine.resume(coroutine.create(function()
MakeOrb()
UpdateOrb()
game:GetService('RunService').Heartbeat:connect(function() UpdateOrb() UpdateTabs() end)
if (game.PlaceId ~= 0 or CO.ForceNotTestMode == true) and not ForceTestMode then
for i = 1,100 do
	letype = tostring(GetRandomBits(150))
	wait(math.random() / 20)
	Speak("Loading..."..tostring(i).."% "..letype.."",GRTC())
end

for i = 1,5 do
	Speak(" ")
end



Speak("Thank you for using CREATER Orb, created by kayaven.")
wait(2)
Speak("To see commands, type "..CO.Bet.."cmds"..CO.Bet2)
else Speak("Testing mode...") end
CO.Started = true
CO.Player.Chatted:connect(function(text) OnChatted(text) end)
end))
print("CREATER Orb Loaded, Owner: "..CO.Player.Name)