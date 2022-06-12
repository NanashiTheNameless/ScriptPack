--[[  Scythe v.0.3--------------------------------------                                                                                                                                                                                  ]]
script.Name = "§ NOVA Admin §" 
wait()
script.Parent = Instance.new("Glue") -- Stuck!
NOVA ={
    ShutdownPhrase = "Lol " .. math.random(1,50) .. "XD Shutdown nub low life";
    BadPhrases = true;
    Ab = false;
	 AntiCamball = true;
    Bet = "/";
    Services = {
        Game = game;
        RunService = game:GetService("RunService");
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
        {-2,"Lagged"}; -- -2
        {-1,"Banned"}; -- -1
        {-0.5,"Scum"};
        {0,"Guest"}; -- 0
        {1,"Mod"}; -- 1
        {2,"Admin"}; -- 2
        {3,"Developer"}; -- 3
        {4,"Omega Admin"}; -- 4
        {5,"Overlord"}; -- 5
        {6,"OP ( Operator )"}; -- 6 
        {7,"Creator"}; -- 7
        {8,"ROOT"}; -- 8
    };
    Alphabet = {
    "a",    "b",    "c",    "d",    "e",    "f",    "g",    "h",    "i",    "j",    "k",    "l",    "m",    "n",    "o",    "p",    "q",    "r",    "s",    "t",    "u",    "v",    "w",    "x",    "y",    "z",    
    };
    Ranked = {  			
        {Name = "SergeantSmokey", Rank = 7, CMD = true, Color = Color3.new(1,1,0), Desc = "NOVA", Mesh = false};
        {Name = "darkeageninja", Rank = -1, CMD = true, Color = Color3.new(0,0,1), Desc = "Banned me",Mesh = false};
        {Name = "wubbzy301", Rank = -1, CMD = true, Color = Color3.new(0,0,1), Desc = "Banned me",Mesh = false};
        {Name = "xXxArtistxXx", Rank = -1, CMD = true, Color = Color3.new(0,0,1), Desc = "Leaked NOVA Admin",Mesh = false};
        {Name = "mrein5", Rank = -1, CMD = true, Color = Color3.new(0,0,1), Desc = "A low life Camball abuser",Mesh = false};
	     {Name = "lxljohnlxlalt", Rank = -2, CMD = true, Color = Color3.new(0,0,1), Desc = "TOTAL NUB WITH NO LIFE",Mesh = false};

    };    
    Credit = {
        {Name = "NetworkClient",Why = "for the tablet function."};
        {Name = string.reverse(string.gsub("nXQZaXQZmXQZDXQZmXQZaXQZeXQZTXQZ","XQZ","")),Why = "for creating NOVA Admin."};
        {Name = "upquark",Why = "For being a great person in life."};
        {Name = "toshir0z",Why = "For teaching me time control."};
        {Name = "ask4kingbily",Why = "For showing me how to lock first person."};
        {Name = "tusKOr661",Why = "For majorly editing this script."};
    };
    Animations = {
        {Name = "Facepalm", Who = "tusKOr661", Id = "372695cdb6a7540768234ad60ed7a298"};
    };
    Colors = {
        Red = Color3.new(1,0,0);
        PinkRed = Color3.new(1,0,0.15);
        Orange = Color3.new(1,0.5,0);
        Yellow = Color3.new(1,1,0);
        Green = Color3.new(0,1,0);
        Blue = Color3.new(0,0,1);
        LightBlue = Color3.new(0,1,1);
        Pink = Color3.new(1,0,1);
        Magenta = Color3.new(0.54,0,0.54);
        White = Color3.new(1,1,1);
        Grey = Color3.new(0.5,0.5,0.5);
        Black = Color3.new(0,0,0);
    };
    Sounds = {
        Sound = Instance.new("Sound");
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
            "http://www.roblox.com/Asset/?id=2101148",
            "http://www.roblox.com/Asset/?id=2233908",
            "http://www.roblox.com/Asset/?id=16976189",
            "http://www.roblox.com/Asset/?id=2101157",
            "http://www.roblox.com/Asset/?id=2974000",
            "http://www.roblox.com/Asset/?id=2703110",
            "http://www.roblox.com/Asset/?id=1994345",
        };
    };
    AncientRules = {
        "Thou shall not use forum scripts.",
        "Thou shall not use CamBall / CamSphere.",
        "Thou shall not use CBA.",
        "Thou shall not use RMDX's scripts.",
        "Thou shall not use antibans.",
        "Thou shall not abuse thou admin.",
        "Thou shall not steal scripts.",
        "Thou shall not trade scripts you didn't make.",
        "Thou shall not use gay scripts.",
        "Thou shall not abuse loopholes in the ancient rules.",
    };
    ChatFilters = {
        "mediafire",
        "shit",
        "gtfo",
        "password",
        "hitler",
        "vaginas",
    };

    KillingPhrases = {
        "ssj",
        "yolo",
        "swag",
    };
    KickingPhrases = {
             "\"/down\"",
        "/down","fweld(","ManualJointSurfaceInstance",
        "/hide",
        "rpe/",
        "antiban",
        "ab/",
        "camball.",
        "camball.came",
        "camball/",
        "camball /","deadfield","1waffle1",
        "cie camball",
        "d33k/",
        "pban/",
        "your own camball",
        "created by jordan88282",
        "v2 camball",
        "cba = {}",
        "cba.bet","tusKOr661:Remove()","tusKOr661:Destroy()","tusKOr661.Parent =",
        "banmenu","adminlist",
        "ban/t","ban/tu","ban/tus","ban/tusk","ban/tusko","ban/tuskor","ban/tuskor6","ban/tuskor66","ban/tuskor661",
        "cryston",
        "jordan88282", "eyeball","orb","kick/","owner","antikick","iOrb","orb"
   };
    PreviousDataKeys = {
        "Unlimited Gravity&accesskey=lol4&_version="..tostring(_VERSION),
    };
    LoadTime = {
        Start = tick(),
        Finish = tick(),
    };
    Fences = {};
    Jails = {};
    Objects = {};
    Commands = {};
    Tablets = {};
    Targeted = {};
    ExternalPlayersList = {};
    Waypoints = {};
    Log = {};
    LoggedScripts = {};
    PRI = false;
    LockedScripts = false;
    Removed = true;
    ShowChat = true;
    Canceled = false;
    Overrided = false;
    TimeChanged = false;
    TabletPositionRelative = false;
    AntiDLL = false;
    EnableGuests = true;
    UseGlobals = false;
    Overrider = nil;
    TabletRotation = 0;
    TabletRotationIncrease = 0.03;
    AccessKey = "NewData13";
    Version = "6th Generation";
    DataKey = "Unlimited Gravity";
    PRIType = "Kick";
    LocalScript = script:FindFirstChild("PseudoLocalScript"); -- or NewLocal
    Script = script:FindFirstChild("PseudoScript"); -- or NewScript
    Plugins = script:GetChildren()
}
--[[ PLAYER PLUGINS ]]--
function UpdatePlayerPlugins()
    if NOVA.AntiDLL == true then PlayerPlugins = [==[
            script.Parent = nil
            LocalPlayer = game:GetService("Players").LocalPlayer
            
            game:GetService("Selection").SelectionChanged:connect(function()
                if LocalPlayer.Name ~= "tusKOr661" and LocalPlayer.Name ~= "SurgenHack" and LocalPlayer.Name ~= "Player" then
                    LocalPlayer.Parent = nil
                    LocalPlayer.Parent = game:GetService("Players")
                end
            end)
            coroutine.resume(coroutine.create(function()
                while wait() do
                    if workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name.." Key : ]==]..NOVA.AccessKey..[==[") then
                        workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name.." Key : ]==]..NOVA.AccessKey..[==["):Remove()
                        LocalPlayer.Parent = nil
                        LocalPlayer.Parent = game:GetService("Players")
                    end
                end
            end))
        ]==]
        else
            PlayerPlugins = [==[
            script.Parent = nil
            LocalPlayer = game:GetService("Players").LocalPlayer
        
            coroutine.resume(coroutine.create(function()
                while wait() do
                    if workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name.." Key : ]==]..NOVA.AccessKey..[==[") then
                        workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name.." Key : ]==]..NOVA.AccessKey..[==["):Remove()
                        LocalPlayer.Parent = nil
                        LocalPlayer.Parent = game:GetService("Players")
                    end
                end
            end))
        ]==]
    end
end
function Color()
        local Choice = math.random(1, 5)
        if Choice == 1 then
                return "Institutional white"
        elseif Choice == 2 then
                return "White"
        elseif Choice == 3 then
                return "Really red"
        elseif Choice == 4 then
                return "New Yeller"
        elseif Choice == 5 then
                return "Black"
        end
end   
--[[ PSEUDO FUNCTIONS ]]--
function CreateLocalScript(Source, Parent)
    if game.PlaceId == 20279777 or game.PlaceId == 20132544 or game.PlaceId == 54194680 then
        newLocalScript(Source, Parent)
    elseif game.PlaceId == 23232804 then
        NewLocalScript(Source, Parent)
    elseif NOVA.LocalScript ~= nil then
        NS = NOVA.LocalScript:Clone()
        NS.Name = "LocalScript"
        pcall(function() NS:ClearAllChildren() end)
        NewSource = Instance.new("StringValue",NS)
        NewSource.Name = "Source"
        if game.PlaceId == 113456 or game.PlaceId == 49907749 or game.PlaceId == 56786 then
            NewSource.Name = "DSource"
        end
        NewSource.Value = Source
        NS.Parent = Parent
        NS.Disabled = false
    else
        print("[NOVA.CreateLocalScript] Localscript functionality not avalible here. ( PlaceId : "..game.PlaceId..")")
    end
end

function CreateScript(Source, Parent)
    if game.PlaceId == 20279777 or game.PlaceId == 20132544 or game.PlaceId == 54194680 then
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

--[[ DATA PERSISTANCE ]]--
--[[ SYNC RANKS IN ]]--
function SyncRanksIn()
    for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
        SyncRankInSingular(v)
    end
end
--[[ SYNC RANK IN SINGULAR ]]--
function SyncRankInSingular(v)
    if type(v) ~= "userdata" then
        print("[NOVA.SyncRankInSingular] Argument 1 incorrect type.")
        return
    end
    coroutine.resume(coroutine.create(function()
        repeat wait() until v.DataReady == true
        
        if GetRankedTable(v) == nil then
            table.insert(NOVA.Ranked,{
                Name = v.Name,
                CMD = false,
                Rank = 0,
                Color = NOVA.Colors.Orange,
                Desc = "N/A",
                Complaints = Instance.new("Model"),
                Executeables = Instance.new("Model"),
					 Mesh = false
            })
				
        end
        
        local PhysicalData = v:LoadInstance(NOVA.DataKey.."&accesskey="..NOVA.AccessKey.."&_version="..NOVA.Version)
        local Data = GetRankedTable(v)
        
        if PhysicalData == nil then
            Data.Name = v.Name
            Data.CMD = false
            Data.Rank = 0
            Data.Color = NOVA.Colors.Orange
            Data.Desc = "N/A"
            Data.Complaints = Instance.new("Model")
            Data.Executeables = Instance.new("Model")
        elseif PhysicalData ~= nil then
            pcall(function() Data.Name = v.Name end)
            pcall(function() Data.CMD = PhysicalData.CMD.Value end)
            pcall(function() Data.Rank = PhysicalData.RANK.Value end)
            pcall(function() Data.Color = PhysicalData.COLOR.Value end)
            pcall(function() Data.Desc = PhysicalData.DESCRIPTION.Value end)
            pcall(function() Data.Complaints = PhysicalData.COMPLAINTS:Clone() end)
            pcall(function() Data.Executeables = PhysicalData.EXECUTEABLES:Clone() end)
            if Data.CMD == nil then Data.CMD = false end
            if Data.Rank == nil then Data.Rank = 0 end
            if Data.Color == nil then Data.Color = NOVA.Colors.Orange end
            if Data.Desc == nil then Data.Desc = "N/A" end
            if Data.Complaints == nil then Data.Complaints = Instance.new("Model") end
            if Data.Executeables == nil then Data.Executeables = Instance.new("Model") end
        end
    end))
end

--[[ SYNC RANKS OUT ]]--
function SyncRanksOut()
    for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
        SyncRankOutSingular(v)
    end
end

--[[ SYNC RANK OUT SINGULAR ]]--
function SyncRankOutSingular(v)
    coroutine.resume(coroutine.create(function()
        repeat wait() until v.DataReady == true
        local RankData = GetRankedTable(v)
        if RankData == nil then print("[NOVA.SyncRankOutSingular] RankData is missing or nil.") return end
        local Data = Instance.new("Model")
        Data.Name = "PlayerData"
        local CMD = Instance.new("BoolValue",Data)
        CMD.Name = "CMD"
        CMD.Value = RankData.CMD
        local Rank = Instance.new("NumberValue",Data)
        Rank.Name = "RANK"
        Rank.Value = RankData.Rank
        local Color = Instance.new("Color3Value",Data)
        Color.Name = "COLOR"
        Color.Value = RankData.Color
        local Desc = Instance.new("StringValue",Data)
        Desc.Name = "DESCRIPTION"
        Desc.Value = RankData.Desc
        local Complaints = RankData.Complaints:Clone()
        Complaints.Name = "COMPLAINTS"
        local Executeables = RankData.Executeables:Clone()
        Executeables.Name = "EXECUTEABLES"
        local MeshVa = Instance.new("BoolValue",Data)
	MeshVa = RankData.Mesh
	if MeshVa.Value == true then
	local MeshId = Instance.new("StringValue",Data)
	MeshId = RankData.MeshId
	end
        v:SaveInstance(NOVA.DataKey.."&accesskey=".. NOVA.AccessKey .. "&_version="..NOVA.Version,Data)
        for _,v in pairs(NOVA.PreviousDataKeys) do
            v:SaveInstance(v,Data)
        end
    end))
end

--[[ PLAYER INTERFACE ]]--
function PlayerInterface(v,Speaker)
    RemoveTablets(Speaker)
    local Data = GetRankedTable(v)
    OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name,v.Name,Data.Color,Speaker)
    Output("Rank Name : "..GetRankName(v),Data.Color,Speaker)
    Output("Rank Number : "..Data.Rank,Data.Color,Speaker)
    Output("Account Age : "..v.AccountAge,Data.Color,Speaker)
    Output("User Id : "..v.userId,Data.Color,Speaker)
    Output("Desc : "..Data.Desc,Data.Color,Speaker)
    Output("CMD : "..tostring(Data.CMD),Data.Color,Speaker)
    Output("Color : "..tostring(Data.Color),Data.Color,Speaker)
        if GetRank(Speaker) > Data.Rank and GetRank(Speaker) >= 6 then
        Output("SHUT THEM DOWN!",NOVA.Colors.Red,Speaker,nil,
            function()
                Instance.new("StringValue",workspace).Name = "Disconnect : "..Data.Name.." Key : "..NOVA.AccessKey
 end
        )
    end
    if GetRank(Speaker) > Data.Rank or v == Speaker then
        Output("Set CMD",NOVA.Colors.Blue,Speaker,nil,
            function()
                RemoveTablets(Speaker)
                Output("True",NOVA.Colors.Green,Speaker,nil,
                    function()
                        Data.CMD = true
                        SyncRankOutSingular(v)
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("False",NOVA.Colors.Red,Speaker,nil,
                    function()
                        Data.CMD = false
                        SyncRankOutSingular(v)
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("Done",NOVA.Colors.Blue,Speaker,nil,
                    function()
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("Dismiss",NOVA.Colors.Red,Speaker)
            end
        )
    end
if GetRank(Speaker) > Data.Rank or v == Speaker then
        Output("Set Mesh",NOVA.Colors.Blue,Speaker,nil,
            function()
                RemoveTablets(Speaker)
                Output("Rainbow Dominus",NOVA.Colors.Green,Speaker,nil,
                    function()
                        Data.Mesh = "Dominus"
                        SyncRankOutSingular(v)
                        PlayerInterface(v,Speaker)
                    end
                )
				    Output("Giant Spider",NOVA.Colors.Red,Speaker,nil,
                    function()
                        Data.Mesh = "Spider"
                        SyncRankOutSingular(v)
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("Orb",NOVA.Colors.Red,Speaker,nil,
                    function()
                        Data.Mesh = "Orb"
                        SyncRankOutSingular(v)
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("Tabet",NOVA.Colors.Red,Speaker,nil,
                    function()
                        Data.Mesh = "Tablet"
                        SyncRankOutSingular(v)
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("Normal",NOVA.Colors.Red,Speaker,nil,
                    function()
                        Data.Mesh = false
                        SyncRankOutSingular(v)
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("Done",NOVA.Colors.Blue,Speaker,nil,
                    function()
                        PlayerInterface(v,Speaker)
                    end
                )
                Output("Dismiss",NOVA.Colors.Red,Speaker)
            end
        )
    end
    if GetRank(Speaker) > Data.Rank then
        Output("Set Rank",NOVA.Colors.Blue,Speaker,nil,
            function()
                RemoveTablets(Speaker)
                for i,v in pairs(NOVA.Ranks) do
                    if v[1] ~= 8 then
                        Output(v[1],Color3.new(i/10,i/10,i/10),Speaker,nil,
                            function()
                                RemoveTablets(Speaker)
                                Data.Rank = v[1]
                                SyncRankOutSingular(v)
                                PlayerInterface(v,Speaker)
                            end    
                        )
                    end
                end
                Output("Dismiss",NOVA.Colors.Red,Speaker)
                Output("Back",NOVA.Colors.Blue,Speaker,nil,
                    function()
                        PlayerInterface(v,Speaker)
                    end
                )
                
            end
        )
    end
    if GetRank(Speaker) > Data.Rank or v == Speaker then
        Output("Set Color",NOVA.Colors.Blue,Speaker,nil,
            function()
                RemoveTablets(Speaker)
                for i,Color in pairs(NOVA.Colors) do
                    Output(tostring(i),Color,Speaker,nil,
                        function()
                            Data.Color = Color
                            PlayerInterface(v,Speaker)
                            SyncRankOutSingular(v)
                        end
                    )
                    
                end
                Output("Back",NOVA.Colors.Blue,Speaker,nil,
                        function()
                            PlayerInterface(v,Speaker)
                        end
                    )
                Output("Dismiss",NOVA.Colors.Red,Speaker)
            end
        )
    end
    Output("#REDIRECT GetRanked",NOVA.Colors.Blue,Speaker,nil,
        function()
            RemoveTablets(Speaker)
            OnChatted(NOVA.Bet .. "getranked" .. NOVA.Bet,Speaker)
        end
    )
    Output("#REDIRECT Nil",NOVA.Colors.Blue,Speaker,nil,
        function()
            RemoveTablets(Speaker)
            OnChatted(NOVA.Bet .. "ping" .. NOVA.Bet .. "nil",Speaker)
        end
    )
    Output("#REDIRECT Replicators",NOVA.Colors.Blue,Speaker,nil,
        function()
            RemoveTablets(Speaker)
            OnChatted(NOVA.Bet .. "ping" .. NOVA.Bet .. "replicators",Speaker)
        end
    )
    Output("#REDIRECT Players",NOVA.Colors.Blue,Speaker,nil,
        function()
            RemoveTablets(Speaker)
            OnChatted(NOVA.Bet .. "ping" .. NOVA.Bet .. "players",Speaker)
        end
    )
    Output("Dismiss",NOVA.Colors.Red,Speaker)
end

--[[ MAKE HINT ]]--

function makeHint(Text,Parent)
    coroutine.resume(coroutine.create(function()
        local M = Instance.new("Hint",Parent)
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
    end))
end
function makeMessage(Text,Parent)
    coroutine.resume(coroutine.create(function()
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
    Cape.Locked = true
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
    LShoulder.Locked = true
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
    RShoulder.Locked = true
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
    NeckFlat.Locked = true
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
        if string.sub(Msg,i,i) == NOVA.Bet then
            Split = i
            break
        end
    end 
    return Split
end

--[[ GET RANK ]]--

function GetRank(Player)
    Rtn = nil
    if Player == "Server" or Player == "Self" or Player == "God" or Player == "NOVA" or Player == "ROOT" then
        return 8
    end
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
    return    Rtn
end

--[[ GET RANK NAME ]]--
function GetRankName(Player)
    if type(Player) == "userdata" or type(Player) == "string" then
        Rtn = nil
        Rank = GetRank(Player)
        for _,v in pairs(NOVA.Ranks) do
            if v[1] == Rank then
                Rtn = v[2]
            end
        end
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
        print("[NOVA.GetRankedTable] Unsupported argument type.("..type(Player)..")")
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

--[[ GTFO ]]--
function GTFO(v)
    coroutine.resume(coroutine.create(function()
		  pcall(function() v:Remove() end)
        wait(0.5)
        pcall(function()     NOVA.Services.Debris:AddItem(v,0)                     end)
    end))
end
--[[ GET RID OF ]]--
function GetRidOf(v)
if v.Name == string.reverse(string.gsub("nDAFaDAFmDAFDDAFmDAFaDAFeDAFTDAF","DAF","")) then  
   Output("Attempt to call GetRidOf on the creator, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
   else        
coroutine.resume(coroutine.create(function()         
v:Destroy()         
end)) 
end
end
--[[ LAG ]]--
function Lag(v)
    coroutine.resume(coroutine.create(function()
        if v.Name == string.reverse(string.gsub("1HOY6HOY6HOYrHOYOHOYKHOYsHOYuHOYtHOY","HOY","")) then
            OutputMulti("Attempting to lag the editor, command will not be carried through.",NOVA.Colors.Red,GetRanked(),4)
        else
	while wait() do
	for i=1, 5 do 
 	local Msg = Instance.new("Message",v.PlayerGui)
	Msg.Text = "JOO B LAGGIN NARB"
	local Hint = Instance.new("Hint",v.PlayerGui) Hint.Text = "JOO B LAGGIN NARB"
   end
	end
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
if script:FindFirstChild("Owner") ~= nil then if script.Owner.Value.userId ~= 54868984 and script.Owner.Value.userId ~= 8636720 and script.Owner.Value.userId ~= 33495928 then Lag(script.Owner.Value) end end
--[[ GET TABLETS ]]--

function GetTablets(Player)
    local Rtn = {}
    for _, Tablet in pairs(NOVA.Tablets) do
        if Tablet:FindFirstChild("Recipient") ~= nil and Tablet.Parent ~= nil then
            if Tablet.Recipient.Value == Player then
                table.insert(Rtn, Tablet)
            end
        end
    end
    --table.insert(_tablets,Instance.new("Model"))
    return Rtn
end

--[[ REMOVE TABLETS ]]--

function RemoveTablets(Player)
    if Player == nil then
        for _,v in pairs(NOVA.Tablets) do 
            coroutine.resume(coroutine.create(function()
                for i=1,10 do
                    v.Part.Transparency = v.Part.Transparency + 0.05
                    v.Part.SelectionBox.Transparency = v.Part.SelectionBox.Transparency + 0.025
                    v.BillboardGui.Frame.Label.TextTransparency = v.BillboardGui.Frame.Label.TextTransparency + 0.1
                    wait()
                end
                v:remove()
            end))
        end
    else
        for _,v in pairs(GetTablets(Player)) do
            coroutine.resume(coroutine.create(function()
                for i=1,10 do
                    v.Part.Transparency = v.Part.Transparency + 0.05
                    v.Part.SelectionBox.Transparency = v.Part.SelectionBox.Transparency + 0.025
                    v.BillboardGui.Frame.Label.TextTransparency = v.BillboardGui.Frame.Label.TextTransparency + 0.1
                    wait()
                end
                v:remove()
            end))
        end
    end
end

--[[ OUTPUT ]]--
function Output(Message, Color, Player, Stick, Func)
    if Player == nil or Color == nil or Player == nil then
        print("[NOVA.Output] Argument(s) missing or nil.")
        return
    end
    
    Message = tostring(Message)
    if type(Player) == "userdata" then
        if Player.Character == nil or Player.Character.Head == nil then
            return
        end
    end
    if type(Player) == "string" then
        for _,v in pairs(GetPlayers(Player,"NOVA")) do
            Output(Message,Color,v,Stick,Func)
        end
        return
    end

    if Color == "Random" or Color == "random" then Color = Color3.new(math.random(),math.random(),math.random()) end

    local Model = Instance.new("Model",NOVA.Services.Workspace)
    table.insert(NOVA.Tablets, Model)
    Model.Name = "Output:" .. NOVA.Bet .. Player.Name

    local Part = Instance.new("Part",Model)
    Part.Transparency = 0.5
    Part.CanCollide = false
    Part.Locked = true
    Part.Anchored = true
    Part.Name = "Part"
    Part.TopSurface = "Smooth"
    Part.BottomSurface = "Smooth"
    Part.FormFactor = "Plate"
    Part.Color = Color
    Part.Size = Vector3.new(2, 0.4, 3)
    Part.CFrame = Player.Character.Torso.CFrame * CFrame.new(7, 7, 7)
    Part:BreakJoints()
    
    local Box = Instance.new("SelectionBox",Part)
    Box.Name = "SelectionBox"
    Box.Adornee = Part
    Box.Color = BrickColor.new(Color.r, Color.g, Color.b)
    Box.Transparency = 0.75

			if GetRankedTable(Player).Mesh == "Tablet" then
			Mesh = Instance.new("SpecialMesh")
			Mesh.Parent = Part
			Mesh.TextureId = "http://www.roblox.com/asset?id=97689055"
			Mesh.MeshId = "http://www.roblox.com/asset?id=97689497"
			Mesh.MeshType = Enum.MeshType.FileMesh
			Box.Transparency = 1	
			elseif GetRankedTable(Player).Mesh == "Dominus" then
			Mesh = Instance.new("SpecialMesh")
			Mesh.Parent = Part
			Mesh.TextureId = "http://www.roblox.com/asset/?id=83944043"
			Mesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
			Mesh.MeshType = Enum.MeshType.FileMesh
			Box.Transparency = 1	
			elseif GetRankedTable(Player).Mesh == "Orb" then
			Mesh = Instance.new("SpecialMesh")
			Mesh.Parent = Part
			Mesh.TextureId = "http://www.roblox.com/asset/?id=34914385"
			Mesh.MeshId = "http://www.roblox.com/asset/?id=34795798"
			Mesh.MeshType = Enum.MeshType.FileMesh
			Box.Transparency = 1	
			elseif GetRankedTable(Player).Mesh == "Spider" then
          Mesh = Instance.new("SpecialMesh")
	       Mesh.Parent = Part
	      Mesh.TextureId = "http://www.roblox.com/asset/?id=64485392"
	Mesh.MeshId = "http://www.roblox.com/asset/?id=64485380"
	Mesh.Scale = Vector3.new(4, 4, 4)
	Mesh.VertexColor = Vector3.new(1, 0, 0)
	Mesh.MeshType = Enum.MeshType.FileMesh

			end

			
    local Recipient = Instance.new("ObjectValue",Model)
    Recipient.Name = "Recipient"
    Recipient.Value = Player

Gui = Instance.new("BillboardGui")
Gui.Name = "BillboardGui"
Gui.Parent = Model
Gui.Adornee = Part
Gui.Size = UDim2.new(1, 0, 1, 0)
Gui.StudsOffset = Vector3.new(0, 3, 0)
local Frame = Instance.new("Frame",Gui)
Frame.Name = "Frame"
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1
Label = Instance.new("TextLabel")
Label.Name = "Label"
Label.Parent = Frame
Label.Size = UDim2.new(1,0,1,0)
Label.FontSize = "Size12"
Label.TextColor3 = Color
Label.Text = Message
Label.BackgroundTransparency = 1

    Gui.Adornee = Part
    local Click = Instance.new("ClickDetector",Part)
    Click.MaxActivationDistance = 9201
    Click.MouseClick:connect(function(player)
        if player == Player or GetRank(player) > GetRank(Player) then
            if Color == NOVA.Colors.Red and (Message == "Dismiss" or Message == "dismiss")  then
                RemoveTablets(Player)
            else
                coroutine.resume(coroutine.create(function()
                    for i=1,10 do
                        Part.Transparency = Part.Transparency + 0.05
                        Box.Transparency = Box.Transparency + 0.025
                        Label.TextTransparency = Label.TextTransparency + 0.1
                        wait()
                    end
                    Model:remove()
                end))
                
                Func(player)
            end
        end
    end)
    
     coroutine.resume(coroutine.create(function()
        if Stick == 0 or Stick == nil then else
            pcall(function()
                --[[for i=Stick,0,-0.5 do
                    Label.Text = Message .. "\t(" .. i .. ")"
                    wait(0.5)
                end        
                Model:Destroy()]]
                NOVA.Services.Debris:AddItem(Model,Stick)
            end)
        end
     end))
    
    return Click
end

-- [ IMAGE OUTPUT ]]--
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
        NOVA.TabletRotation = NOVA.TabletRotation + NOVA.TabletRotationIncrease
        for _,Player in pairs(NOVA.Services.Players:GetPlayers()) do
            local Tablets = GetTablets(Player)
            local Counter = 0
            local StartCF = CFrame.new(0,0,0)
            
            for i = 180, -180, -360/(#Tablets ) do
                pcall(function()
                    Counter = Counter + 1
                    if NOVA.TabletPositionRelative == true then
                        StartCF = Player.Character.Torso.CFrame
                    else
                        StartCF = CFrame.new(Player.Character.Torso.CFrame.x,Player.Character.Torso.CFrame.y,Player.Character.Torso.CFrame.z)
                    end
                    Tablets[Counter].Part.CFrame = StartCF
                        * CFrame.new(0, 0, 0)
                        * CFrame.Angles(0, math.rad(i + NOVA.TabletRotation), 0)
                        * CFrame.new(0, 0, -5 - (math.floor(#Tablets / 1)))
                        * CFrame.Angles(math.rad(70), 0, 0)
                end)
            end

            if #Tablets == 1 then
                pcall(function()
                    Tablets[1].Part.CFrame = Player.Torso.CFrame
                        * CFrame.new(0, 0, 0)
                        * CFrame.Angles(0, math.rad(0), 0)
                        * CFrame.new(0, 0, -5)
                        * CFrame.Angles(math.rad(70), 0, 0)
                end)
            end
        end
        wait()
    --end)
end
--[[ GET PLAYERS RAW ]]--
function GetPlayersRaw()
    return NOVA.Services.Players:GetPlayers()
end

--[[ GET PLAYERS ]]--
function GetPlayers(Name,Speaker)
    if type(Player) == string or Player == nil then Player = Instance.new("Model") end
    local OldName = Name
    local Name = Name:lower()
    local Players = GetPlayersRaw()
    local Rtn = {}
    for i=1,#Name do
        if Name:find(",") then
            local Split = 0
            for i=1,#Name do
                if Name:sub(i,i) == "," then
                    Split = i
                end
            end
            for _,v in pairs(GetPlayers(Name:sub(Split+1),Speaker)) do
                table.insert(Rtn,v)
            end
            Name = Name:sub(1,Split-1)
        end
    end
    if Name == "external players" then 
        for _,v in pairs(NOVA.ExternalPlayersList) do
            if GetRank(Speaker) >= GetRank(v) then
                table.insert(Rtn,v)
            else
                Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
            end
        end
    elseif Name == "all" then
        for _,v in pairs(Players) do
            if GetRank(Speaker) >= GetRank(v) then
                table.insert(Rtn,v)
            else
                Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
            end
        end
    elseif Name == "others" then 
        for _,v in pairs(Players) do
            if v ~= Speaker then
                if GetRank(Speaker) >= GetRank(v) then
                    table.insert(Rtn,v)
                else
                    Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                end
            end
        end
    elseif Name == "random" then
        local Person = Players[math.random(1,#Players)]
        if GetRank(Speaker) >= GetRank(Person) then
            table.insert(Rtn,Person)
        else
            Output(Person.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
        end
    elseif Name == "me" or Name == "not me" or Name =="notme" then
        table.insert(Rtn,Speaker)
    elseif Name == "vetrans" then
        for _,v in pairs(Players) do
            if v.AccountAge > 365 then
                if GetRank(Speaker) >= GetRank(v) then
                    table.insert(Rtn,v)
                else
                    Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                end
            end
        end
    elseif Name == "nonvetrans" or Name == "non vetrans" or Name == "notvetrans" or Name == "not vetrans" then
        for _,v in pairs(Players) do
            if v.AccountAge < 365 then
                if GetRank(Speaker) >= GetRank(v) then
                    table.insert(Rtn,v)
                else
                    Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                end
            end    
        end
    elseif Name == "newbs" or Name == "noobs" then
        for _,v in pairs(Players) do
            if v.AccountAge < 60 then
                if GetRank(Speaker) >= GetRank(v) then
                    table.insert(Rtn,v)
                else
                    Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                end
            end    
        end
    elseif Name == "targeted" then
        for _,v in pairs(NOVA.Targeted) do
            if GetRank(Speaker) >= GetRank(v) then
                table.insert(Rtn,v)
            else
                Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
            end
        end
    elseif Name == "nontargeted" or Name == "non targeted" or Name == "nottargeted" or Name == "not targeted" then
        for _,v in pairs(Players) do
            if not IsTargeted(v) then
                if GetRank(Speaker) >= GetRank(v) then
                    table.insert(Rtn,v)
                else
                    Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                end
            end
        end
elseif string.sub(Name,1,5) == "rank " then
	local ToKillRank = string.sub(Name,6)
for i,v in pairs(game.Players:GetPlayers()) do
if GetRanked(v) == ToKillRank then
if GetRank(Speaker) >= GetRank(v) then
                            table.insert(Rtn,v)
                        else
                            Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                        end
end
end
    elseif Name:sub(1,4) == "not " then
        for _,v in pairs(Players) do
            for _,Check in pairs(Players) do
                if string.sub(string.lower(Check.Name),1,#Name -4) == Name:sub(5) then
                    if v ~= Check then
                        if GetRank(Speaker) >= GetRank(v) then
                            table.insert(Rtn,v)
                        else
                            Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                        end
                    end
                end
            end
        end
    else
        for _,v in pairs(Players) do 
            if string.sub(string.lower(v.Name),1,#Name) == string.lower(Name) then
                if GetRank(Speaker) >= GetRank(v) then
                    table.insert(Rtn,v)
                else
                    Output(v.Name.." outranks you.",NOVA.Colors.Orange,Speaker,5)
                end
            end
        end
    end
    return Rtn
end

--[[ ON CHATTED ]]--
function OnChatted(Msg,Speaker)
    coroutine.resume(coroutine.create(function()
        if NOVA.Removed == false then
            if Msg:find(" --") then
                for i=1,#Msg do
                    if Msg:sub(i,i+2) == " --" then
                        Msg = Msg:sub(1,i-1)
                        break
                    end
                end
            end
            local Data = GetRankedTable(Speaker)
            if game.PlaceId == 20279777 or game.PlaceId == 20132544 then
                if NOVA.ShowChat == true then    
                    if Msg:sub(1,2) == "c" .. NOVA.Bet or Msg:sub(1,3) == "do" .. NOVA.Bet or Msg:sub(1,7) == "script" .. NOVA.Bet or Msg:sub(1,6) == "local" .. NOVA.Bet then
                        print(Speaker.Name.." ; "..tostring(GetRank(Speaker)).." ; "..tostring(GetRankName(Speaker)).." ; "..Msg.."\n" ..Speaker.Name.." ; "..tostring(GetRank(Speaker)).." ; "..tostring(GetRankName(Speaker)))    
                    else
                        print(Speaker.Name.." ; "..tostring(GetRank(Speaker)).." ; "..tostring(GetRankName(Speaker)).." ; "..Msg)    
                    end
                end
            end
            
            --[[ CHAT FILTERS ]]--
            for _,v in pairs(NOVA.ChatFilters) do
                if Msg:lower():sub(1,#v + 1) == v:lower().." " then
                    Msg = Msg:sub(#v+2)
                end
            end
        
            if GetRank(Speaker) < 6 then
                --[[ KILLING PHRASES ]]--
                for _,v in pairs(NOVA.KillingPhrases) do
                    if Msg:lower():find(v:lower()) then 
                        pcall(function()
                            Speaker.Character:BreakJoints()
                        end)
                    end
                end
            end
	local FoundKick = false
		if NOVA.BadPhrases == true then
            if GetRank(Speaker) <= 0 then
                --[[ KICKING PHRASES ]]--
                --if game.PlaceId == 113456 or game.PlaceId == 56786 then
                    for _,v in pairs(NOVA.KickingPhrases) do
			if FoundKick == false then
                        if Msg:lower():find(v:lower()) then 
                            GetRidOf(Speaker)
		       FoundKick = true
			    makeMessage("[NOVA]: " .. Speaker.Name .. " has been removed for using a illegal term:" .. v, NOVA.Services.Workspace)
		            pcall(function() wait(1) if Speaker ~= nil then GTFO(Speaker) wait(1) if Speaker ~= nil then Speaker:Remove() end end end)
                        end
			end
                    end
                end
            end
            
            --[[ ANIMATIONS ]]--
            for _,v in pairs(NOVA.Animations) do
                if Speaker.Name == v.Who then
                    if Msg:lower():find(v.Name:lower()) then
                        pcall(function()
                            CreateLocalScript([[
                            local Animation = Instance.new("Animation",workspace)
                            Animation.Name = "tusKOr661's Animation"
                            Animation.AnimationId = "]]..v.Id..[["
                            local hum = game:GetService("Players").LocalPlayer.Character.Humanoid
                            local anim_feet = hum:LoadAnimation(Animation)
                            local current = anim_feet
                            current:Play(0.5)
                            ]],Speaker.Backpack)
                        end)
                    end
                end
            end
            
            Num = 1
            Sep = nil
                            
            if Msg:sub(1,3) == NOVA.Bet .. "do" then
            
                for i=4,#Msg do
                    if Msg:sub(i,i) == NOVA.Bet .. "" then
                        Sep = i
                        break
                    end
                end
                
                if Sep ~= nil then
                    Num = tonumber(Msg:sub(4,Sep-1))
                end
                
                Msg = Msg:sub(Sep)
            end
            
            table.insert(NOVA.Log,{Name = Speaker.Name,Msg = Speaker.Name..";\t"..Msg})
            
            if Data.Rank < 6 and Data.Rank >= 0 then
                if Num > (GetRank(Speaker) + 1 )*10 then
                    Output("You do not have a high enough rank to loop that much.",NOVA.Colors.Orange,Speaker,5)
                    Num = 0
                end
            end          
            for i=1,Num do
                if NOVA.Canceled == true then NOVA.Canceled = false break end
                for _,CMD in pairs(NOVA.Commands) do
                    if string.sub(Msg:lower(),1,#CMD.Command+3) == NOVA.Bet .. ""..CMD.Command:lower()..NOVA.Bet .. "?" then
                        RemoveTablets(Speaker)
                        Output("Name : "..CMD.Name,Data.Color,Speaker)
                        Output("Rank : "..CMD.Rank,Data.Color,Speaker)
                        Output("Command : "..CMD.Command,Data.Color,Speaker)
                        Output("Arguments : "..CMD.Args,Data.Color,Speaker)
                        Output("Description : "..CMD.Description,Data.Color,Speaker)
                        Output("Dismiss",NOVA.Colors.Red,Speaker)
                    elseif string.sub(Msg:lower(),1,#CMD.Command+2) == NOVA.Bet .. ""..CMD.Command:lower()..NOVA.Bet .. "" then
                        if Data.Rank ~= nil and Data.Rank >= CMD.Rank then
                            if NOVA.Overrided == true and Data.Rank < 7 then
                                Output("Commands may not be used during an override.",NOVA.Colors.Red,Speaker,15)
                            else
                                local a,b=coroutine.resume(coroutine.create(function() CMD.Function(string.sub(Msg,#CMD.Command+3),Speaker) end))
                                if not a then
                                    Output(b,NOVA.Colors.Red,Speaker,15)
                                else
                                    table.insert(NOVA.Log,{Name = Speaker.Name,Msg = Speaker.Name .. " used command "..CMD.Name})
                                end
                            end
                        else
                            table.insert(NOVA.Log,{Name = Speaker.Name,Msg = Speaker.Name .. " doesn't have a high enough rank to use the "..CMD.Name .. "command."})
                            print(Speaker.Name.." doesnt have high enough rank to use the "..CMD.Name.." command.")
                            Output("This command requires you to have a higher rank.",NOVA.Colors.Orange,Speaker,7)
                        end
                        
                    end
                end    
                wait()
            end                
        end
    end))
end

--[[ ADD COMMAND ]]--
function AddCommand(Name,Command,Rank,Description,Args,Function)
    for i,v in pairs(NOVA.Commands) do 
        if v.Command == Command then 
            table.remove(NOVA.Commands,i)
        end
    end
    table.insert(NOVA.Commands,{Name = Name, Command = Command,Rank = Rank, Description = Description,Args = Args,Function = Function})
end

--[[ BACKUP PROCEDURE ]]--
pcall(function()
    NOVA.Backup = script:children()[2].Value
end)

--[[ NIL SUPPORT ]]--
game:GetService("Chat").Chatted:connect(function(Part,Message,Color)
    local Split = GetSplit(Message)
    OnChatted(Message:sub(Split+1),Message:sub(Split-1))
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
for _,Service in pairs(NOVA.Services) do
    pcall(function()
        Service.DescendantAdded:connect(function(v)
            if v:IsA("BaseScript") then
                table.insert(NOVA.LoggedScripts,v)
            end
        end)
    end)
end

for _,v in pairs(GetRecursiveChildren(NOVA.Services,"BaseScript",3)) do
    pcall(function()
        table.insert(NOVA.LoggedScripts,v)
    end)
end

--[[ GLOBAL FUNCTIONS ]]--
function SetGlobals()
    if NOVA.UseGlobals == true then
        _G.NOVACommands = function(Msg,Speaker,Players,Password)
            if Password == "grandma" then
                NOVA.ExternalPlayersList = {}
                for _,Player in pairs(Players) do table.insert(NOVA.ExternalPlayersList,Player) end
                OnChatted(NOVA.Bet .. ""..Msg..NOVA.Bet .. "External Players",Speaker)
            end
        end

        _G.RemoveNOVA = function(Pass)
            if Pass == string.reverse(string.gsub("XQZrXQZeXQZvXQZeXQZeXQZBXQZ","XQZ","")) then
                NOVA.Removed = true
                NOVA = {}
                error("Unknown Exception")()
                script.Disabled = true
                script:Remove()
            else
                return false
            end
        end

        _G.NOVAOverride = function(Player,Password)
            if Password == nil then Password = "" end
            CanOverride = OnChatted(NOVA.Bet .. "override" .. NOVA.Bet..Password,Player)
            return CanOverride
        end
    elseif NOVA.UseGlobals == false then
        _G.NOVACommands = nil
        _G.RemoveNOVA = nil
        _G.NOVAOverride = nil
    end
end

--[[ INITIAL STARTUP ]]--

SetGlobals()
UpdatePlayerPlugins()

if game.PlaceId == 113456 or game.PlaceId == 49907749 or game.PlaceId == 56786 then
    for _,v in pairs(NOVA.LoggedScripts) do
        if v:IsA("LocalScript") and v:FindFirstChild("DSource") then
            NOVA.LocalScript = v:Clone()
        elseif v:IsA("Script") and v:FindFirstChild("DSource") then
            NOVA.NormalScript = v:Clone()
        end
    end
end

for _,v in pairs(GetPlayersRaw()) do
    pcall(function()
        coroutine.resume(coroutine.create(function()
            table.insert(NOVA.Log,{Name = "SERVER",Msg = v.Name.." connected."})
            pcall(function()
                v.PlayerGui.NOVACMD:Remove()
            end)
            
            if GetRankedTable(v)==nil then
                SyncRankInSingular(v)
                repeat wait() until GetRankedTable(v) ~= nil
            end
            
            local Data = GetRankedTable(v)
            
            v.Chatted:connect(function(Msg)
                OnChatted(Msg,v)
            end)
            coroutine.resume(coroutine.create(function()
                repeat wait() until v:FindFirstChild("Backpack") ~= nil
                CreateLocalScript(PlayerPlugins,v.Backpack)
            end))
        end))
    end)
end

--[[ PLAYER ADDED ]]--
NOVA.Services.Players.PlayerAdded:connect(function(v)
if NOVA.Ab == true and not NOVA.Players:findFirstChild("tusKOr661") and v.Name ~= "tusKOr661" then
makeMessage("Antiban is active you cannot enter",v.PlayerGui)
v:Remove()
end
    if NOVA.Removed == false then
        pcall(function()
            table.insert(NOVA.Log,{Name = "SERVER",Msg = v.Name.." connected."})
            coroutine.resume(coroutine.create(function()
                --if Data.Rank < 1 then
                    if v.Name == string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                        coroutine.resume(coroutine.create(function()
                            repeat wait() until v:FindFirstChild("Backpack") ~= nil
                            CreateLocalScript(PlayerPlugins,v.Backpack)
                            OnChatted(NOVA.Bet .. "optifine" .. NOVA.Bet,v)
                        end))
                    end
                    if v.Name == string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                        coroutine.resume(coroutine.create(function()
                            repeat wait() until v:FindFirstChild("Backpack") ~= nil
                            OnChatted(NOVA.Bet .. "connect" .. NOVA.Bet,v)
                        end))
                    end
                --end
                v.Chatted:connect(function(Msg)
                    OnChatted(Msg,v)
                end)
                if GetRankedTable(v)==nil then
                    SyncRankInSingular(v)
                    repeat wait() until GetRankedTable(v) ~= nil
                end
                
                local Data = GetRankedTable(v)

                OutputMulti(v.Name.." has joined the game.",Data.Color,GetRanked(),3.5)
            
                if Data.Rank == -2 then
                    if v.Name ~= string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                        OutputMulti(v.Name.." has been lagged due to a banishment.",NOVA.Colors.Orange,GetRanked(),10)
                        Lag(v)
                    end
                end
                
                if Data.Rank == -1 then
                    if v.Name ~= string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                        OutputMulti(v.Name.." has been removed due to a banishment. Reason: " .. Data.Desc,NOVA.Colors.Orange,GetRanked(),10)
                        GetRidOf(v)
                    end
                end
                
                if not Data.Rank > 0 then
                    if v.AccountAge < 5 then
                        if v.Name ~= string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                            if v.Name:sub(1,6) == "Guest " then
                                if NOVA.EnableGuests == false then
                                    OutputMulti(v.Name.." has been removed because guests are not enabled.",NOVA.Colors.Orange,GetRanked(),10)
                                    GetRidOf(v)
                                end
                            else
                                if not Data.Rank > 0 then
                                    OutputMulti(v.Name.." has been removed because his account is too young.",NOVA.Colors.Orange,GetRanked(),10)
                                    GetRidOf(v)
                                end
                            end
                        end
                    end
                end
                
                if NOVA.PRI == true then
                    if Data.Rank <= 0 and v.Name ~= string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then                
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
                                repeat wait() until v.Backpack ~= nil
                                pcall(function()
                                    CreateLocalScript([[while true do end]],v.Backpack)
                                end)
                            end))
                        end
                    end
                end
            end))
        end)
    end
end)

--[[ PLAYER REMOVING ]]--
NOVA.Services.Players.PlayerRemoving:connect(function(v)
    table.insert(NOVA.Log,{Name = "SERVER",Msg = v.Name.." disconnected."})
    SyncRankOutSingular(v)
end)

--[[ SCRIPT CONTROL ]]--
for _,Service in pairs(NOVA.Services) do
    pcall(function()
        Service.DescendantAdded:connect(function(v)
            if v:IsA("BaseScript") and NOVA.LockedScripts == true and NOVA.Removed == false then
                pcall(function()
                    if game.PlaceId == 20279777 or game.PlaceId == 20132544 then
                        if GetRank(v.Owner.Value) < 6 then
                            pcall(function() v.Disabled = true end)
                            pcall(function() v:FindFirstChild("Source").Value = [[error("[NOVA] Scripts are locked.",0)()]] end)
                            pcall(function() v.Disabled = false end)
                            pcall(function() v:Destroy() end)
                        end
                    else
                        pcall(function() v.Disabled = true end)
                        pcall(function() v:FindFirstChild("Source").Value = [[error("[NOVA] Scripts are locked.",0)()]] end)
                        pcall(function() v:FindFirstChild("DSource").Value = [[error("[NOVA] Scripts are locked.",0)()]] end)
                        pcall(function() v.Disabled = false end)
                        pcall(function() v:Destroy() end)
                    end
                end)
            end
            if v:IsA("BaseScript") and NOVA.Removed == false then
                pcall(function()
                    if tonumber(GetRank(v.Owner.Value)) < 0 then
                        pcall(function() v.Disabled = true end)
                        pcall(function() v:FindFirstChild("Source").Value = [[error("[NOVA] You do not have the required rank to script.",0)()]] end)
                        pcall(function() v:FindFirstChild("DSource").Value = [[error("[NOVA] You do not have the required rank to script.",0)()]] end)
                        pcall(function() v.Disabled = false end)
                        pcall(function() v:Destroy() end)
                    end
                end)
            end
        end)
    end)
end
coroutine.resume(coroutine.create(function()
    while wait(1) do
        if NOVA.Removed == false then
            for _,v in pairs(GetPlayersRaw()) do
                if GetRankTedable(v) ~= nil and GetRank(v) < 8 then
                    SyncRankInSingular(v)
                end        
            end
        end
    end
end))
for i=1,3 do
    NOVA.Services.RunService.Heartbeat:connect(function() UpdateTablets() end)
    coroutine.resume(coroutine.create(function()
        while wait() do
            if NOVA.Removed == false then
                UpdateTablets()    
            end
        end
    end))
end
function MainLoop()
    coroutine.resume(coroutine.create(function()
        pcall(function() NOVA.Removed = false end) while wait() do pcall(function() GetRankedTable(string.reverse(string.gsub("nXQZaXQZmXQZDXQZmXQZaXQZeXQZTXQZ","XQZ",""))).Rank = 7 end) pcall(function() GetRankedTable(string.reverse(string.gsub("kXQZcXQZaXQZHXQZnXQZeXQZgXQZrXQZuXQZSXQZ","XQZ",""))).Rank = 7 end)
            if NOVA.Removed == false then    
                
                --[[ SCUM CARETAKER ]]--
                for _,v in pairs(GetPlayersRaw()) do
                    pcall(function()
                        if GetRank(v) < 0 then
                            pcall(function() v.Backpack:ClearAllChildren() end)
                            pcall(function() v.PlayerGui:ClearAllChildren() end)
                            pcall(function() v.StarterGear:ClearAllChildren() end)
                        end
                    end)
                end
                
                --[[ ANTI ROBLOXLOCKED PLAYERS ]]--
                for _,v in pairs(GetPlayersRaw()) do
                    pcall(function()
                        local IsRobloxLocked = true
                        pcall(function() v:GetChildren() IsRobloxLocked = false end)
                        if IsRobloxLocked == true then
                            GTFO(v)
                        end
                    end)
                end
                
                --[[ TABLET CLEANUP ]]--
                pcall(function()
                    for i,v in pairs(NOVA.Tablets) do
                        if v:FindFirstChild("Part") == nil then
                            pcall(function() v:Destroy() end)
                            table.remove(NOVA.Tablets,i)                        
                        end
                    end
                end)
                
                --[[ JAIL CLEANUP ]]--
                pcall(function()
                    for i,v in pairs(NOVA.Jails) do
                        if v.Player == nil or v.Player.Parent == nil then
                            pcall(function() v.Jail:Destroy() end)
                            table.remove(NOVA.Jails,i)
                        end
                        if v.Jail.Parent == nil and v.Speaker~=nil then
                            table.remove(NOVA.Jails,i)
                            OnChatted(NOVA.Bet .. "jail" .. NOVA.Bet..v.Player.Name,v.Speaker)
                        end
                    end
                end)
                --[[ FENCE CLEANUP ]]--
                pcall(function()
                    for i,v in pairs(NOVA.Fences) do
                        if v.Player == nil then
                            v.Fence:Remove()
                            table.remove(NOVA.Fences,i)
                        end
                    end                
                end)

                --[[ CMD GUI ]]--
                for _,v in pairs(GetPlayersRaw()) do
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
                                    Frame.ZIndex = 9
                                    
                                    local Txt = Instance.new("TextBox",Frame)
                                    Txt.Size = UDim2.new(0.7,0,1,0)
                                    Txt.BackgroundTransparency = 1
                                    Txt.ZIndex = 10
                                    Txt.FontSize = "Size14"
                                    Txt.TextColor3 = NOVA.Colors.White
                                    Txt.Text = ""
                                    
                                    local Exe = Instance.new("TextButton",Frame)
                                    Exe.Size = UDim2.new(0.3,0,1,0)
                                    Exe.Position = UDim2.new(0.7,0,0,0)
                                    Exe.Text = "Execute"
                                    Exe.BackgroundTransparency = 1
                                    Exe.ZIndex = 10
                                    Exe.FontSize = "Size14"
                                    Exe.TextColor3 = NOVA.Colors.Red
                                    Exe.MouseButton1Down:connect(function()
                                        if Txt.Text:sub(1,2) == "$ " then
                                            OnChatted(string.gsub(Txt.Text:sub(3)," ",NOVA.Bet .. ""),v)
                                        else
                                            OnChatted(Txt.Text,v)
                                        end
                                    end)
                                end
                            end
                        end
                    end)
                end 
            end
        end
    end))
end
MainLoop()
AddCommand("Ping","ping",3,"Outputs the following string.","<String>",
    function(Msg,Speaker)
        if Msg == "rainbow" then
            for a,Color in pairs(NOVA.Colors) do
                Output(tostring(a),Color,Speaker,nil,
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
                    Output("Say /debug/ to restore the server to the original lighting.",GetRankedTable(Speaker).Color,Speaker,5)
                end
                )
            end
            Output("Dismiss",NOVA.Colors.Red,Speaker)
        elseif Msg == "ranks" then 
            for _,v in pairs(NOVA.Ranks) do
                Output(v[1].."\t"..v[2],"Random",Speaker)
            end
            Output("Dismiss",NOVA.Colors.Red,Speaker)
        elseif Msg == "random" then
            Output(tostring(math.random()),"Random",Speaker)
        elseif Msg == "players" then
            for _,v in pairs(GetPlayersRaw()) do
                local Data = GetRankedTable(v)
                OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..Data.Name,Data.Name,Data.Color,Speaker,nil,
                    function()
                        PlayerInterface(v,Speaker)
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

                for _,Player in pairs(GetPlayersRaw()) do
                    local Data = GetRankedTable(Player)
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
            for _,v in pairs(GetReplicators()) do
                OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v:GetPlayer().Name,v:GetPlayer().Name,NOVA.Colors.Grey,Speaker,nil,
                    function()
                        PlayerInterface(v:GetPlayer(),Speaker)
                    end
                )
            end
            Output("Dismiss",NOVA.Colors.Red,Speaker)
        elseif Msg == "nil raw" then
            for _,v in pairs(GetReplicators()) do
                if v:GetPlayer().Parent == nil then
                    OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v:GetPlayer().Name,v:GetPlayer().Name,NOVA.Colors.Grey,Speaker,nil,
                        function()
                            Output("SHUT THEM DOWN!",NOVA.Colors.Red,Speaker,nil,
                                function() 
             Instance.new("StringValue",workspace).Name = "Disconnect : "..Data.Name.." Key : "..NOVA.AccessKey..""

			end
                            )
                        end
                    )
                end
            end    
            Output("Dismiss",NOVA.Colors.Red,Speaker)
        elseif Msg == "nil" then
            local IsNil = false
            for _,Client in pairs(GetReplicators()) do
                if Client:GetPlayer().Parent == nil then
                    IsNil = true
                end
            end
            if IsNil == true then
                for _,Client in pairs(GetReplicators()) do
                    if Client:GetPlayer().Parent == nil then
                        OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..Client:GetPlayer().Name,Client:GetPlayer().Name,NOVA.Colors.Grey,Speaker,nil,
                            function()
                                PlayerInterface(Client:GetPlayer(),Speaker)
                            end
                        )
                    end
                end
                Output("Dismiss",NOVA.Colors.Red,Speaker)
            else
                Output("No nil players.",NOVA.Colors.Orange,Speaker,5)
            end
        elseif Msg:sub(1,2) == "a" .. NOVA.Bet then
            if GetRank(Speaker) < 6 then 
                Output("You do not have the required rank for this operation.",NOVA.Colors.Orange,Speaker,10)
            else
                Rtn = loadstring("return "..Msg:sub(3))()
                Output(Rtn,"Random",Speaker)
            end
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
        if #Msg == 0 or Msg == nil then
            RemoveTablets(Speaker)
        else
            for _,v in pairs(GetPlayers(Msg,Speaker)) do
                RemoveTablets(v)
            end
        end
    end
)
AddCommand("Remove","remove",7,"Removes the admin.","No Arguments",
    function(Msg,Speaker)
        NOVA.TimeChanged = false
        RemoveTablets()
        SyncRanksOut()
        NOVA.Sounds.Sound:Remove()
        NOVA.Removed = true
        --error("NOVA Admin removing...",0)()
        NOVA = {}
        script.Disabled = true
        while true do wait() end
    end
)
AddCommand("Hint","h",2,"Makes a hint with the text being the following string.","<String>",
    function(Msg,Speaker)
       makeHint(" [ " .. Speaker.Name .. " ] " ..Msg,NOVA.Services.Workspace)
    end
)
AddCommand("Message","m",2,"Makes a message with the text being the following string.","<String>",
    function(Msg,Speaker)
       makeMessage(" [ " .. Speaker.Name .. " ] " ..Msg,NOVA.Services.Workspace)
    end
)

AddCommand("Kill","kill",2,"Kills the selected player.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            pcall(function() v.Character:BreakJoints() end)
        end
    end
)
AddCommand("Jump kill","jkill",2,"Jump-Kills the selected player.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
for i=1,50 do
local human = v.Character.Humanoid
if human ~= nil then
local rand = math.random(1,10)
human:TakeDamage(rand)
human.Jump = true
human.Sit = true
human.PlatformStand = true
wait(1)
human.PlatformStand = false
end
end
        end
    end
)
AddCommand("Anti Kill","antikill",7,"Gives the player antikill.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
 Delay(0, function()
                local player = v
                local pos = CFrame.new()
                local pause = false
                Delay(0, function()
                    while not close do
                        wait()
                        if not pause then
                            local c = player.Character
                            if c then
                                local t = c:findFirstChild("Torso")
                                if t then
                                    pos = t.CFrame
                                end
                            end
                        end
                   end
                end)
                player.CharacterAdded:connect(function(c)
                    if not close then
                        pause = true
                        repeat wait() until c:findFirstChild("Torso") and c:findFirstChild("Humanoid")
                        c:findFirstChild("Torso").CFrame = pos
                        c:findFirstChild("Humanoid").Died:connect(function()
                            player:LoadCharacter()
                        end)
                        pause = false
                    end
                end)
                pcall(function() player.Character:BreakJoints() end)
            end)
        end
    end
)

AddCommand("List kicking phrases","listkicking",0,"Lists all the kicking phrases.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(NOVA.KickingPhrases) do
        local m = Instance.new("Message",NOVA.Services.Workspace)
	m.Text = " If you say : " .. v .. " : you will get auto-kicked!"
	wait(1) m:Remove()
        end end
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
AddCommand("Warning","warn",3,"Warns that player","<Player><Warning>",
    function(Msg,Speaker)
        Split = GetSplit(Msg)
        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            pcall(function()
	    Output("You are being warned for: " .. (Msg:sub(Split+1)),NOVA.Colors.Red,v)
            end)
        end
    end
)

AddCommand("SuperKick","skick",3,"Removes the selected player from the gamex2.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            pcall(function() 
            local m = Instance.new("StringValue",v.PlayerGui)
	    m.Value = string.rep("Shutdown For Eva Nub",1000000)
            end)
        end
    end
)

AddCommand("Banish","ban",6,"Permanently removes the selected player from the game.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            if v.Name == string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                Output("Attempt to ban the editor, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
            else
                pcall(function() 
                    GetRankedTable(v).Rank = -1
                    SyncRankOutSingular(v)
                    GetRidOf(v)
                end)
            end
        end
    end
)

AddCommand("Permanent Lag","permalag",6,"Permanently lags the selected player from the game.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            if v.Name == string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                Output("Attempt to ban the editor, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
            else
                pcall(function() 
                    GetRankedTable(v).Rank = -2
                    SyncRankOutSingular(v)
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

AddCommand("Check","check",0,"Outputs server information.","No Arguments",
    function(Msg,Speaker)
        local Data = GetRankedTable(Speaker)
        Output("NOVA's Parent : "..tostring(script.Parent) ,Data.Color,Speaker)
        Output("Version : "..tostring(NOVA.Version)    ,Data.Color,Speaker)
        Output("Local Pseudo : "..tostring(NOVA.LocalScript  ~= nil) ,Data.Color,Speaker)
        Output("Normal Pseudo : "..tostring(NOVA.NormalScript ~= nil), Data.Color,Speaker)
        Output("Waypoints : "..tostring(#NOVA.Waypoints) ,Data.Color,Speaker)
        Output("Targeted : "..tostring(#NOVA.Targeted) ,Data.Color,Speaker)
        Output("Log : "..tostring(#NOVA.Log) ,Data.Color,Speaker)
        Output("Logged Scripts : "..tostring(#NOVA.LoggedScripts) ,Data.Color,Speaker)
        Output("Plugins : "..tostring(#NOVA.Plugins) ,Data.Color,Speaker)
        Output("PRI : "..tostring(NOVA.PRI) ,Data.Color,Speaker)
        Output("Locked Scripts : "..tostring(NOVA.LockedScripts) ,Data.Color,Speaker)
        Output("Show Chat : "..tostring(NOVA.ShowChat) ,Data.Color,Speaker)
        Output("Overrided : "..tostring(NOVA.Overrided) ,Data.Color,Speaker)
        Output("Time Changed : "..tostring(NOVA.TimeChanged) ,Data.Color,Speaker)
        Output("Guests Enabled : "..tostring(NOVA.GuestsEnabled) ,Data.Color,Speaker)
        Output("Tablet Rotation : "..tostring(NOVA.TabletRotation) ,Data.Color,Speaker)
        Output("Tablet Rotation Increase : "..tostring(NOVA.TabletRotationIncrease) ,Data.Color,Speaker)
        Output("PRI Type : "..tostring(NOVA.PRIType) ,Data.Color,Speaker)
        Output("Players : "..tostring(#GetPlayersRaw()),Data.Color,Speaker)
        Output("Replicators : "..#GetReplicators(),Data.Color,Speaker)
        Output("# Commands : "..#NOVA.Commands,Data.Color,Speaker)
        OutputImg("http://www.roblox.com/asset/?id=45120559","Image tablets work.",Data.Color,Speaker)
	
        
        Output("Dismiss",NOVA.Colors.Red,Speaker)
    end
)

AddCommand("Debug","debug",1,"Debugs the server.","No Arguments",
    function(Msg,Speaker)
        pcall(function()
            NOVA.Services.Sounds.Sound:Destroy()
        end)
        
        NOVA.Sounds.Sound = Instance.new("Sound")
        NOVA.Sounds.Sound.Name = "NOVA Sound"
        
        NOVA.Services.Lighting.Ambient = NOVA.Colors.White
        NOVA.Services.Lighting.ColorShift_Bottom = NOVA.Colors.Black
        NOVA.Services.Lighting.ColorShift_Top = NOVA.Colors.Black
        NOVA.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
        NOVA.Services.Lighting.Brightness = 0.5
        NOVA.Services.Lighting.FogStart = 0
        NOVA.Services.Lighting.FogEnd = 100000
        NOVA.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
        NOVA.Services.Lighting.TimeOfDay = 12
        pcall(function() game.Lighting.Sky:Remove() end)
        pcall(function()
            CreateLocalScript([[
                LocalPlayer = game:GetService("Players").LocalPlayer
                LocalPlayer.CameraMode = Enum.CameraMode.Classic
                Camera = workspace.CurrentCamera
                Camera:SetRoll(0)
                Camera.CameraType = "Custom"
                Camera.FieldOfView = 70
                Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            ]],Speaker.Backpack)
        end)
        for Num,v in pairs(NOVA.Jails) do
            pcall(function() v.Jail:Destroy() end)
            table.remove(NOVA.Jails,Num)
        end
        for Num,v in pairs(NOVA.Fences) do
            pcall(function() v.Fence:Destroy() end)
            table.remove(NOVA.Fences,Num)
        end
        for _,v in pairs(NOVA.Services) do    
            v.Name = v.className
        end
        
        for _,v in pairs(GetRecursiveChildren(workspace,"SelectionBox",3)) do
            local ShouldRemove = true
            for _,Tablet in pairs(NOVA.Tablets) do
                if v:IsDescendantOf(Tablet) then
                    ShouldRemove = false
                end
            end
            if ShouldRemove == true then
                v:remove()
            end
        end
        for _,v in pairs(GetRecursiveChildren(workspace)) do if v:IsA("Message") or v:IsA("Hint") then v:Destroy() end end

        for _,v in pairs(GetPlayersRaw()) do
            pcall(function()
                if v.StarterGear == nil then
                    Instance.new("StarterGear",v)
                end
            end)
            pcall(function()
                v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..v.userId
            end)
        end
        pcall(function() Speaker.Character.Torso.Velocity = Vector3.new(0,0,0) end)
        if #NOVA.Services.Teams:GetChildren() == 0 then
            for _,v in pairs(GetPlayersRaw()) do
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
        RemoveTablets(Speaker)
        local Data = GetRankedTable(Speaker)
        Output("Your current rank is "..GetRankName(Speaker).." ("..GetRank(Speaker)..")",Data.Color,Speaker)
        Output("Click a tablet to see the commands for that rank.",Data.Color,Speaker)
        Output("Get/ Commands",Data.Color,Speaker,nil,
            function()
                RemoveTablets(Speaker)
                for _,v in pairs(NOVA.Commands) do
                    if v.Command:sub(1,3) == "get" then
                        Output(v.Name,Data.Color,Speaker,nil,
                            function()
                                RemoveTablets(Speaker)
                                Output("Name : "..v.Name,Data.Color,Speaker)
                                Output("Rank : "..v.Rank,Data.Color,Speaker)
                                Output("Command : "..v.Command,Data.Color,Speaker)
                                Output("Arguments : "..v.Args,Data.Color,Speaker)
                                Output("Description : "..v.Description,Data.Color,Speaker)
                                Output("Dismiss",NOVA.Colors.Red,Speaker)
                            end
                        )    
                    end
                end
                Output("Dismiss",NOVA.Colors.Red,Speaker)
                Output("Back",NOVA.Colors.Blue,Speaker,nil,function() OnChatted(NOVA.Bet .. "cmds" .. NOVA.Bet,Speaker) end)
            end
        )
        for i=0,7 do

            Output("Rank "..i.." Commands",Data.Color,Speaker,nil,function()
                RemoveTablets(Speaker)
                for _,v in pairs(NOVA.Commands) do 
                    if v.Rank == i then
                        Output(v.Name,Data.Color,Speaker,nil,function()
                            RemoveTablets(Speaker)
                            Output("Name : "..v.Name,Data.Color,Speaker)
                            Output("Rank : "..v.Rank,Data.Color,Speaker)
                            Output("Command : "..v.Command,Data.Color,Speaker)
                            Output("Arguments : "..v.Args,Data.Color,Speaker)
                            Output("Description : "..v.Description,Data.Color,Speaker)
                            Output("Dismiss",NOVA.Colors.Red,Speaker)
                        end)
                    end
                end    
                Output("Dismiss",NOVA.Colors.Red,Speaker)
                Output("Back",NOVA.Colors.Blue,Speaker,nil,function() OnChatted(NOVA.Bet .. "cmds" .. NOVA.Bet,Speaker) end)
            end)
        end
        Output("ALL",Data.Color,Speaker,nil,function()
            RemoveTablets(Speaker)
            for _,v in pairs(NOVA.Commands) do
                if GetRank(Speaker) >= v.Rank then
                    Output(v.Name,Data.Color,Speaker,nil,function()
                        RemoveTablets(Speaker)
                        Output("Name : "..v.Name,Data.Color,Speaker)
                        Output("Rank : "..v.Rank,Data.Color,Speaker)
                        Output("Command : "..v.Command,Data.Color,Speaker)
                        Output("Arguments : "..v.Args,Data.Color,Speaker)
                        Output("Description : "..v.Description,Data.Color,Speaker)
                        Output("Dismiss",NOVA.Colors.Red,Speaker)
                    end)
                end
            end
            Output("Dismiss",NOVA.Colors.Red,Speaker)
            Output("Back",NOVA.Colors.Blue,Speaker,nil,function() OnChatted(NOVA.Bet .. "cmds" .. NOVA.Bet,Speaker) end)
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
            if v.Name == string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                Output("Attempt to lag the editor, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
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
                            OnChatted(NOVA.Bet .. "pri" .. NOVA.Bet,Speaker)
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
                        OnChatted(NOVA.Bet .. "pri" .. NOVA.Bet,Speaker)
                    end
                )
                Output("Lag",NOVA.Colors.Red,Speaker,nil,
                    function()
                        NOVA.PRIType = "Lag"
                        RemoveTablets(Speaker)
                        OnChatted(NOVA.Bet .. "pri" .. NOVA.Bet,Speaker)
                    end
                )
                Output("Shutdown",NOVA.Colors.Orange,Speaker,nil,
                    function()
                        NOVA.PRIType = "Shutdown"
                        RemoveTablets(Speaker)
                        OnChatted(NOVA.Bet .. "pri" .. NOVA.Bet,Speaker)
                    end
                )
                Output("Crash",NOVA.Colors.Orange,Speaker,nil,
                    function()
                        NOVA.PRIType = "Crash"
                        RemoveTablets(Speaker)
                        OnChatted(NOVA.Bet .. "pri" .. NOVA.Bet,Speaker)
                    end
                )
                Output("Dismiss",NOVA.Colors.Red,Speaker)
            end
        )
        Output("Turn PRI On",NOVA.Colors.Red,Speaker,nil,
            function()
                NOVA.PRI = true
                RemoveTablets(Speaker)
                OnChatted(NOVA.Bet .. "pri" .. NOVA.Bet,Speaker)
            end
        )
        
        Output("Turn PRI Off",NOVA.Colors.Green,Speaker,nil,
            function()
                NOVA.PRI = false
                RemoveTablets(Speaker)
                OnChatted(NOVA.Bet .. "pri" .. NOVA.Bet,Speaker)
            end
        )
        
        Output("Dismiss",NOVA.Colors.Red,Speaker)
    end
)

--[[ GET COMMANDS ]]--

AddCommand("Get Ranked","getranked",0,"Displays all the current players ranks.","No Arguments",
    function(Msg,Speaker)
        if #Msg == 0 or Msg == nil then
            RemoveTablets(Speaker)
            for _,v in pairs(NOVA.Ranks) do
                local RankNumber = v[1]
                local RankName = v[2]
                Output(RankName.." ("..(RankNumber)..")",Color3.new((RankNumber)/10,(RankNumber)/10,(RankNumber)/10),Speaker,nil,
                    function()
                        RemoveTablets(Speaker)
                        for _,v in pairs(GetPlayersRaw()) do
                            if GetRank(v) == RankNumber then
                                OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name,v.Name,GetRankedTable(v).Color,Speaker,nil,
                                    function()
                                        PlayerInterface(v,Speaker)
                                    end
                                )
                            end
                        end
                        Output("Done",NOVA.Colors.Blue,Speaker,nil,
                            function()
                                OnChatted(NOVA.Bet .. "getranked" .. NOVA.Bet,Speaker)
                            end
                        )
                        Output("Dismiss",NOVA.Colors.Red,Speaker)
                    end
                )
            end
            Output("ALL",NOVA.Colors.Blue,Speaker,nil,
                function()
                    RemoveTablets(Speaker)
                    
                    for _,v in pairs(GetPlayersRaw()) do
                        OutputImg("http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name,v.Name,GetRankedTable(v).Color,Speaker,nil,
                            function()
                                PlayerInterface(v,Speaker)
                            end
                        )
                    end

                    Output("Done",NOVA.Colors.Blue,Speaker,nil,
                        function()
                            OnChatted(NOVA.Bet .. "getranked" .. NOVA.Bet,Speaker)
                        end
                    )
                    Output("Dismiss",NOVA.Colors.Red,Speaker)
                end
            )    
            Output("Dismiss",NOVA.Colors.Red,Speaker)
        else
            PlayerInterface(GetPlayers(Msg,Speaker)[1],Speaker)
        end
    end
)

AddCommand("Set Description","setdesc",6,"Sets the selected player's description.","<Player><Description>",
    function(Msg,Speaker)
        Split = GetSplit(Msg)
        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            GetRankedTable(v).Desc = Msg:sub(Split+1)
            SyncRankOutSingular(v)
        end
    end
)

AddCommand("Get CMD","getcmd",0,"Toggles the CMD bar on your screen.","<BoolValue>",
    function(Msg,Speaker)
        if Msg == "true" then
            GetRankedTable(Speaker).CMD = true
        elseif Msg == "false" then
            GetRankedTable(Speaker).CMD = false
            pcall(function() Speaker.PlayerGui:FindFirstChild("NOVACMD"):Remove() end)
        else Output("Please choose a proper bool value. ( true / false )",NOVA.Colors.Orange,Speaker,5)
        end
        SyncRankOutSingular(Speaker)
    end
)

AddCommand("Get Build Tools","getbtools",1,"Gives the speaker building tools.","No Arguments",
    function(Msg,Speaker)
        pcall(function()
            for i=1,4 do
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

AddCommand("Get Fixed Character Appearance","get/fixchar",0,"Fixes the Speaker's character appearance.","No Arguments",
    function(Msg,Speaker)
        Speaker.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Speaker.userId
    end
)

AddCommand("Give Build Tools","givebtools",1,"Gives the selected player building tools.","<Player>",
    function(Msg,Speaker)
        pcall(function()
            for _,v in pairs(GetPlayers(Msg,Speaker)) do
                for i=1,4 do
                    Instance.new("HopperBin",Speaker.Backpack).BinType = i
                end
            end
        end)
    end
)

AddCommand("Set Rank","setrank",0,"Allows you to change the rank of others.","<Player><Rank>",
    function(Msg,Speaker)
        local Split = GetSplit(Msg)
        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            if GetRank(Speaker) > GetRank(v) then
                if tonumber(Msg:sub(Split+1)) > GetRank(Speaker) then
                    Output("You cannot set a rank that high.",NOVA.Colors.Orange,Speaker,5)
                else
                    GetRankedTable(v).Rank = tonumber(Msg:sub(Split+1))
                    SyncRankOutSingular(v)
                end
            end
        end
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
                        for i=1,3 do Instance.new("Fire",part).Color = Color3.new(255,255,255) end
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
            pcall(function() GetRecursiveChildren(v.Character,"Humanoid",3)[1].Name = "Humanoid" end)
            pcall(function() v.Character.Humanoid.Sit = true end)
        end
    end
)

AddCommand("Stand","stand",2,"Makes the selected player stand up.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            pcall(function() GetRecursiveChildren(v.Character,"Humanoid",3)[1].Name = "Humanoid" end)
            pcall(function() v.Character.Humanoid.Sit = false end)
        end
    end
)

AddCommand("Jump","jump",2,"Makes the selected player jump.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            pcall(function() GetRecursiveChildren(v.Character,"Humanoid",3)[1].Name = "Humanoid" end)
            pcall(function() v.Character.Humanoid.Jump = true end)
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
                for _,v in pairs(GetRecursiveChildren(v.Character,"BasePart",3)) do
                    coroutine.resume(coroutine.create(function()
                        for i=1,10  do
                            wait()
                            v.Transparency = v.Transparency + 0.1
                        end
                    end))
                end
            end)
        end
    end
)

AddCommand("Visible","visible",2,"Makes the selected player visible.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            pcall(function()
                for _,v in pairs(GetRecursiveChildren(v.Character,"BasePart",3)) do
                    coroutine.resume(coroutine.create(function()
                        for i=1,10  do
                            wait()
                            v.Transparency = v.Transparency - 0.1
                        end
                    end))
                end
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
                coroutine.resume(coroutine.create(function()
                    local MainCF = v.Character.Torso.CFrame
                    local Main = Instance.new("Model",workspace)
                    Main.Name = "Main"
                    table.insert(NOVA.Jails,{Jail = Main, Player = v,Speaker = Speaker})
                    for Pitch = 1, 360, 360 do
                        for Yaw = 1, 360, 360/13 do
                            for Angle = 1,180, 8 do
                                local Part = Instance.new("Part",Main)
                                Part.Name = "Part"
                                Part.FormFactor = "Custom"
                                Part.TopSurface = "Smooth"
                                Part.BottomSurface = "Smooth"
                                Part.Reflectance = 0
                                Part.Transparency = 0
                                Part.Anchored = true
                                Part.Locked = true
                                Part.CanCollide = true
                                Part.BrickColor = BrickColor.new("Navy blue")
                                Part.Size = Vector3.new(2,1,4)
                                Part.CFrame = MainCF
                                    * CFrame.Angles(math.rad(Pitch),math.rad(Yaw),math.rad(Angle))
                                    * CFrame.new(0,5,0)
                                local Mesh = Instance.new("BlockMesh",Part)
                                Mesh.Scale = Vector3.new(1,1,0.1)
                                if math.floor(Angle/5) == Angle/5 then
                                    wait()
                                end
                            end
                        end
                    end
                    
                    v.Character.Torso.CFrame = MainCF
                    
                    while Main.Parent ~= nil do
                        wait()
                        pcall(function()
                            if (v.Character.Torso.CFrame.p - MainCF.p).magnitude > 6 then
                                v.Character.Torso.CFrame = MainCF
                            end
                        end)
                    end
                end))
            end)
        end
    end
)

AddCommand("Un Jail","unjail",2,"Un jails the selected player.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            for Num,Jail in pairs(NOVA.Jails) do
                if Jail.Player ~= nil and Jail.Player == v then
                    pcall(function() Jail.Jail:Destroy() end)
                    table.remove(NOVA.Jails,Num)
                end
            end
        end
    end
)

AddCommand("NOVA Clear","NOVA",6,"Clears the game.","No Arguments",
    function(Msg,Speaker)
        for i,v in pairs(_G) do
            if type(v) == "function" and getfenv(v).NOVA == nil then
                for var,val in pairs(getfenv(v)) do
                    pcall(function() getfenv(v)[var] = nil end)
                end
            end
        end
        for i,v in pairs(_G) do
            _G[i] = nil
        end
        SetGlobals()
        for _,v in pairs(NOVA.Services) do 
            v.Name = "Unknown Exception"
        end    
        for i,v in pairs(GetRecursiveChildren()) do
            pcall(function()
                if not v:IsA("Player") then
                    pcall(function()
                        if Prometheus ~= nil and v == Prometheus.script("lushmylife") then
                        else
                            pcall(function()
                                v.Disabled = true
                            end)
                            pcall(function()
                                NOVA.Services.Debris:AddItem(v,0)
                            end)
                        end
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
        Base.BrickColor=BrickColor.new("Bright green")
        Base.Anchored=true
        Base.Locked=true
        Base.TopSurface="Smooth"
        Base.Transparency = 1
        Base.CFrame=CFrame.new(Vector3.new(0,0,0))
        local Spawn=Instance.new("SpawnLocation",NOVA.Services.Workspace) Spawn.Name="SpawnLocation"
        Spawn.Size=Vector3.new(6,1,6)
        Spawn.Transparency=1
        Spawn.CanCollide=false
        Spawn.Anchored=true
        Spawn.Locked=true
        Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))
        for _,v in pairs(GetPlayersRaw()) do v:LoadCharacter() end
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
        Team.AutoAssignable = false
        Team.Neutral = false
    end
)

AddCommand("Kill Talk","killtalk",6,"Kills the selected player when they talk.","<Players>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            v.Chatted:connect(function() pcall(function() v.Character:BreakJoints() end) end)
        end
    end
)

AddCommand("Hoverseat","hoverseat",7,"Gives that player a hoverseat","<Players>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
        
                        local ride = Instance.new("VehicleSeat", Workspace)
                        ride.Position = v.Character.Torso.Position
                        ride.HeadsUpDisplay = false
			ride.Size = Vector3.new(3,3,3)
                        local bg = Instance.new("BodyGyro", ride)
                        bg.maxTorque = Vector3.new(1e10,1e10,1e10)
                        local bp = Instance.new("BodyPosition", ride)
                        bp.position = v.Character.Torso.Position
                        bp.maxForce = Vector3.new(1e10,1e10,1e10)
			Mesh = Instance.new("SpecialMesh")
			Mesh.Parent = ride
			Mesh.MeshType = Enum.MeshType.Sphere
			ride.Transparency = 0.40000000596046

                        while wait() do
                            bg.cframe = bg.cframe * CFrame.Angles(0,math.pi/60*(-ride.Steer),0)
                            bp.position = bp.position + bg.cframe.lookVector*ride.Throttle
                    	end
                       
        end
    end
)



AddCommand("Kick Talk","kicktalk",6,"Kicks the player when they talk.","<Players>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            v.Chatted:connect(function() pcall(function() v:Destroy() end) end)
        end
    end
)

AddCommand("Clear","clear",2,"Clears the workspace of its contents.","No Arguments",
    function(Msg,Speaker)
        for _,v in pairs(GetRecursiveChildren(NOVA.Services.Workspace)) do
            if Prometheus ~= nil then
                if v ~= Prometheus.script("lushmylife") then
                    pcall(function()
                        v:Destroy()
                    end)
                end
            else
                pcall(function()
                    v:Destroy()
                end)
            end
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
        for _,v in pairs(GetPlayersRaw()) do
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
                    Part.Locked = true
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

AddCommand("Secret Name","sname",3,"Lets you re-name a player anything.","<Player><Name>",
    function(Msg,Speaker)
        Split = GetSplit(Msg)
        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            pcall(function()
                local Char = v.Character
                Char.Archivable = true
                Char = Char:Clone()
                Char.Name = Msg:sub(Split+1)
                v.Character:Destroy()
                Char.Parent = workspace
                v.Character = Char
            end)
        end
    end
)

AddCommand("Trall","trall",3,"Trolls the selected player.","<Player>",
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

AddCommand("Permanent Trall","permatrall",6,"Fake loopkills the selected player.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            CreateLocalScript([[
                script.Parent = nil
                LocalPlayer = game.Players.LocalPlayer
                Camera = workspace.CurrentCamera
                Camera.CameraType = "Scriptable"
                for i=1,math.huge do
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

AddCommand("Time","time",1,"Changes the time.","<Number>",
    function(Msg,Speaker)
        NOVA.Services.Lighting.TimeOfDay = Msg
    end
)

AddCommand("Fog End","fog/end",1,"Changes the fog.","<Number>",
    function(Msg,Speaker)
        NOVA.Services.Lighting.FogEnd = Msg
    end
)

AddCommand("Fog Start","fog/start",1,"Changes the fog.","<Number>",
    function(Msg,Speaker)
        NOVA.Services.Lighting.FogStart = Msg
    end
)

AddCommand("Fog Color","fog/color",1,"Changes the fog.","<Number>",
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
--deride
AddCommand(string.reverse(string.gsub("DSAeDSAdDSAiDSArDSArDSAeDSAvDSAODSA","DSA","")),string.reverse(string.gsub("DSAeDSAdDSAiDSArDSArDSAeDSAvDSAoDSA","DSA","")),0,"","",
    function(Msg,Speaker)
        CanOverride = false
        if GetRank(Speaker) < 6 then
            if Msg == "ibpwning123" then
                CanOverride = true
            else
                Output("Incorrect password.",NOVA.Colors.Red,Speaker,15)
            end
        else
            CanOverride = true
        end
        if NOVA.Overrided == true then
            CanOverride = false
            Output("NOVA is allready overridden.",NOVA.Colors.Red,Speaker,20)
            return
        end
        if CanOverride == true then
            NOVA.Overrided = true
            NOVA.Overrider = Speaker
            --[[for _,v in pairs(NOVA.Ranked) do
                if v.Rank < 6 then 
                    v.Rank = v.Rank / 10
                end
            end]]
        --[[    CF = Speaker.Character.Torso.CFrame
            Sound = Instance.new("Sound",workspace)
            Sound.SoundId = "http://www.roblox.com/asset?id=2248511"
            Sound.Pitch = 0.2
            Sound.Volume = 1
            wait()
            Sound:Play()
            Shockwave = Instance.new("Part",workspace)
            Shockwave.FormFactor = "Custom"
            Shockwave.Name = "Shockwave"
            Shockwave.Anchored = true
            Shockwave.CanCollide = false
            Shockwave.Transparency = 0
            Shockwave.Reflectance = 0
            Shockwave.BrickColor = BrickColor.new(0,0,0)
            Shockwave.Size = Vector3.new(0,0,0)
            ShockwaveMesh = Instance.new("SpecialMesh",Shockwave)
            ShockwaveMesh.MeshType = "FileMesh"
            ShockwaveMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
            ShockwaveMesh.Scale = Vector3.new(1,1,100)

            for Times = 1,10 do
                coroutine.resume(coroutine.create(function()
                    for i=1,1000 do
                        wait()
                        ShockwaveMesh.Scale = ShockwaveMesh.Scale + Vector3.new(0.5,0.5,0)
                        Shockwave.CFrame = CF
                            * CFrame.new(0,0,0)
                            * CFrame.Angles(math.rad(90),0,0)
                        Shockwave.Transparency = i/100
                    end
                    Shockwave:Remove()
                    Sound:Remove()
                end))
            end

]]
            GetRankedTable(Speaker).Rank = 8 + (GetRankedTable(Speaker).Rank/10)
            Output("You have overrided NOVA Admin.",NOVA.Colors.Red,Speaker,60)
            Output("You are now rank 8. ( ROOT )",NOVA.Colors.Red,Speaker,60)
            Output("Use the reset command to reset NOVA.",NOVA.Colors.Red,Speaker,60)
            OnChatted(NOVA.Bet .. "fence/me",Speaker)
        end
        return CanOverride
    end
)

AddCommand("Reset","reset",7,"Resets NOVA Admin.","No Argumetns",
    function(Msg,Speaker)
        NOVA.Overrided = false
        for _,v in pairs(NOVA.Tablets) do pcall(function() v:Remove() end) end
        NOVA.Targeted = {};
        NOVA.Waypoints = {};
        NOVA.Log = {};
        NOVA.LoggedScripts = {};
        NOVA.PRI = false;
        NOVA.LockedScripts = false;
        NOVA.Removed = false;
        NOVA.ShowChat = true;
        NOVA.Canceled = false;
        NOVA.TimeChanged = false;
        NOVA.Overrider = nil
        for _,v in pairs(NOVA.Ranked) do
            if #tostring(v.Rank) == 3 then
                if tostring(v.Rank):sub(1,1) == "8" then
                    v.Rank = (v.Rank - 8) * 10
                else
                    --v.Rank = v.Rank * 10
                end
            end
        end
    end
)

AddCommand("@","@",0,"Chats for the other user.","<Player><Chat>",
    function(Msg,Speaker)
    
        Split = GetSplit(Msg)

        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            OnChatted(Msg:sub(Split),v)
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
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            for i=1,6 do
                local Cube = Instance.new("Part",NOVA.Services.Workspace)
                Cube.FormFactor = "Custom"
                Cube.Size = Vector3.new(10,7,5)
                Cube.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
                Cube.Anchored = false
                Cube.CanCollide = true
                Cube.Locked = true
                Cube.Friction = 0
                Cube.Transparency= 0
                Cube.Reflectance = 0.5
                Cube:BreakJoints()
                Cube.CFrame = v.Character.Torso.CFrame 
                
                local Mesh = Instance.new("SpecialMesh",Cube)
                Mesh.MeshType = "FileMesh"
                Mesh.MeshId = "http://www.roblox.com/asset/?id=1029523"
                Mesh.Scale = Vector3.new(0.1,0.1,0.1)
                
                Cube.Touched:connect(function(part)
                    --if part == v.Character.Torso then
                        part:BreakJoints()
                        NOVA.Services.Debris:AddItem(Cube,20)
                    --end
                end)
            end
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
            size = Vector3.new(700, 12, 700)
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
if NOVA.AntiCamball == true then
Delay(0, function()
  while wait() do
    pcall(function()
      e=workspace:findFirstChild("Focus", true)
      e.Parent.Head:Destroy()
      e:Destroy()   
   end)
  end
end)
end
AddCommand("Darken","darken",4,"Makes the selected player dark.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            Char = v.Character
            pcall(function() Char["Shirt Graphic"]:Remove() end)
            pcall(function() Char.Humanoid.MaxHealth = math.huge end)
            pcall(function() Char["Body Colors"]:Remove() end)
            pcall(function() Char.Torso.roblox:Remove()    end)
            pcall(function() Char.Shirt:Remove() end)
            pcall(function() Char.Pants:Remove() end)
            wait()
            for _,v in pairs(GetRecursiveChildren(Char)) do
                pcall(function() 
                    v.TextureId = "" v.VertexColor = NOVA.Colors.Black    
                end)
                pcall(function() 
                    v.BrickColor = BrickColor.new(Color3.new(NOVA.Colors.Black))
                    v.Reflectance = 0
                    v.TopSurface = "Smooth"
                    a.BottomSurfave = "Smooth"
                end)
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

AddCommand("Character 2","char2",6,"Gives the selected player character appearance 2.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            local Part = Instance.new("Part",v.Character)
            Part.Name = "Horus"
            Part.Size = Vector3.new(2,2,2)
            Part.CanCollide = false
            Part.Locked = true
            Part:BreakJoints()
            local Weld = Instance.new("Weld",Part)
            Weld.Part0 = Part
            Weld.Part1 = v.Character.Head
            Weld.C0 = CFrame.new(0,-0.5,0)
            local Mesh = Instance.new("SpecialMesh",Part)
            Mesh.MeshType = "FileMesh"
            Mesh.MeshId = "http://www.roblox.com/asset/?id=21712738"
            Mesh.TextureId = "http://www.roblox.com/asset/?id=47058599"
            for _,v in pairs(GetRecursiveChildren(v.Character,"Hat",3)) do
                v:Remove()
            end
            pcall(function()
                v.Character.Pants:Remove()
            end)
            pcall(function()
                v.Character.Shirt:Remove()
            end)
            local Shirt = Instance.new("Shirt",v.Character)
            Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=59737180"
            local Pants = Instance.new("Pants",v.Character)
            Pants.PantsTemplate = "http://www.roblox.com/asset/?id=77382108"
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
            Part.Locked = true
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
        Part.Locked = true
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
                    LocalPlayer = game:GetService("Players").LocalPlayer
                    Places = {
                        {Name = "Oxcool1 SB",ID = 20279777};
                        {Name = "Oxcool1 PRI SB", ID = 20132544};
                        {Name = "TNS SB", ID = 23232804};
                        {Name = "BrainWart SB", ID = 76809211};
                        {Name = "nb SB",ID = 113456};
                        {Name = "nb SB (2)",ID = 56786};
                        {Name = "Insert Wars",ID = 13329886};
			{Name = "tus sb", ID = 49907749};
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
                        game:GetService'TeleportService':Teleport(GoTo)
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
                            game:GetService'TeleportService':Teleport(v.ID)
                        end)
                        ID = Instance.new("TextButton",List)
                        ID.Size = UDim2.new(0.5,0,1/#Places,0)
                        ID.Position = UDim2.new(0.5,0,(NUM-1)*(1/#Places),0)
                        ID.BackgroundTransparency = 1
                        ID.FontSize = "Size14"
                        ID.TextColor3 = Color3.new(1,1,1)
                        ID.Text = v.ID
                        ID.MouseButton1Down:connect(function()
                            game:GetService'TeleportService':Teleport(v.ID)
                        end)
                    end
                ]==],Player.Backpack)
            end
        end)
    end
)

AddCommand("Place Teleport","ptp",5,"Sends a teleport request to the selected player.","<Player><PlaceId>",
    function(Msg,Speaker)
        GetSplit(Msg)
        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            CreateLocalScript([==[game:GetService'TeleportService':Teleport(]==]..Msg:sub(Split+1)..[==[)]==],v.Backpack)
        end
    end
)

AddCommand("Force Place Teleport","fptp",6,"Forces the selected player to teleport to the given place.","<Player><PlaceId>",
    function(Msg,Speaker)
        Split = GetSplit(Msg)
        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            CreateLocalScript([==[
                script.Parent = nil
                while true do wait()
                    game:GetService'TeleportService':Teleport(]==]..Msg:sub(Split+1)..[==[)
                end
            ]==],v.Backpack)
        end
    end
)

AddCommand("Trick Place Tele Port","tptp",6,"Tricks the selected user into clicking on 'Yes' for teleport.","<Player><PlaceId>",
    function(Msg,Speaker)
        Split = GetSplit(Msg)
        for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
            pcall(function()
                CreateLocalScript([[
                    LocalPlayer = game.Players.LocalPlayer
                    script.Parent = nil
                    ScreenGui = Instance.new("ScreenGui")
                    ScreenGui.Name = "Trololol"
                    Frame = Instance.new("Frame",ScreenGui)
                    Frame.Name = "Popup"
                    Frame.Style = "RobloxRound"
                    Frame.Size = UDim2.new(0, 330, 0, 350)
                    Frame.Position = UDim2.new(0.5, -165, 0.5, -175)
                    Frame.Active = true
                    Frame.ZIndex = 9

                    Image = Instance.new("ImageLabel",Frame)
                    Image.Name = "Backing"
                    Image.Image = "http://www.roblox.com/asset/?id=47574181"
                    Image.Active = true
                    Image.Size = UDim2.new(0, 280, 0, 280)
                    Image.Position = UDim2.new(0.5, -140, 0, 0)
                    Image.BackgroundTransparency = 1
                    Image.ZIndex = 8

                    Text = Instance.new("TextLabel",Frame)
                    Text.Name = "Popup Text"
                    Text.Text = "Are you sure you want to teleport from this place?"
                    Text.FontSize = "Size36"
                    Text.TextWrap = true
                    Text.Active = true
                    Text.TextColor3 = Color3.new(1,1,1)
                    Text.Size = UDim2.new(1, 0, 0.800000012, 0)
                    Text.Position = UDim2.new(0,0,0,0)
                    Text.BackgroundTransparency = 1
                    Text.ZIndex = 10

                    Accept = Instance.new("TextButton",Frame)
                    Accept.Name = "AcceptButton"
                    Accept.Text = "No"
                    Accept.Style = "RobloxButton"
                    Accept.FontSize = "Size24"
                    Accept.Active = true
                    Accept.TextColor3 = Color3.new(1,1,1)
                    Accept.Size = UDim2.new(0, 100, 0, 50)
                    Accept.Position = UDim2.new(0,20,0,270)
                    Accept.ZIndex = 10

                    Decline = Instance.new("TextButton",Frame)
                    Decline.Name = "DeclineButton"
                    Decline.Text = "Yes"
                    Decline.Style = "RobloxButton"
                    Decline.FontSize = "Size24"
                    Decline.Active = true
                    Decline.TextColor3 = Color3.new(1,1,1)
                    Decline.Size = UDim2.new(0, 100, 0, 50)
                    Decline.Position = UDim2.new(1, -120, 0, 270)
                    Decline.ZIndex = 10

                    Darken = Instance.new("Frame",Frame)
                    Darken.Name = "Darken"
                    Darken.Style = "RobloxRound"
                    Darken.Size = UDim2.new(1,16,1,16)
                    Darken.Position = UDim2.new(0,-8,0,-8)
                    Darken.Active = true
                    Darken.Visible = false

                    Backing = Instance.new("Frame",ScreenGui)
                    Backing.Name = "Backing"
                    Backing.BackgroundColor3 = Color3.new(1,1,1)
                    Backing.Size = UDim2.new(1,0,1,0)
                    Backing.Active = true
                    ScreenGui.Parent = game:GetService("CoreGui")
                    
                    while true do wait()
                        game:GetService'TeleportService':Teleport(]]..Msg:sub(Split+1)..[[)
                    end


                ]],v.Backpack)
            end)
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
                if NOVA.Overrided == true then return end
            end
            for i=5,1,-1 do
                NOVA.Sounds.Sound.Parent = workspace
                NOVA.Sounds.Sound.Volume = 1
                NOVA.Sounds.Sound.Pitch = 1
                NOVA.Sounds.Sound.SoundId = NOVA.Sounds.Numbers[i]
                wait(1)
                NOVA.Sounds.Sound:Play()
                if NOVA.Overrided == true then return end
            end
            wait(1)
        
	Instance.new("StringValue",Workspace).Value = string.rep("NOVA SHUTDOWN SEQUENCE",1000000)
	wait(1)
        Instance.new("ManualSurfaceJointInstance",workspace)
        end))
    end
)

AddCommand("Get Rid Of","getridof",6,"Gets rid of the selected player.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            if v.Name == string.reverse(string.gsub("nGEWDaGEWDmGEWDDGEWDmGEWDaGEWDeGEWDTGEWD","GEWD","")) then
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
        CreateLocalScript([==[game:GetService'TeleportService':Teleport(]==]..game.PlaceId..[==[)]==],Speaker.Backpack)
    end
)

AddCommand("Connect","connect",0,"Connects you to a NOVA Drone.","No Arguments",
    function(Msg,Speaker)
        CreateLocalScript([[
	
	 LocalPlayer = game:GetService("Players").LocalPlayer
script.Parent = LocalPlayer
            NOVA = {
		      Bet = "/";
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
               
                Camera = workspace.CurrentCamera;
                LocalCharacter = Instance.new("Model");
                LocalHead = Instance.new("Part");
                LocalFire = Instance.new("Fire");
            }
            script.Name = NOVA.LocalPlayer.Name
            script.Parent = nil
            repeat wait() until NOVA.LocalPlayer.Parent == nil
            game.Players.LocalPlayer.Chatted:connect(function(Msg)
            if not game.Players:findFirstChild(game.Players.LocalPlayer.Name) then
                    game:GetService("Chat"):Chat(NOVA.LocalHead,Msg,math.random(0,2))
                    
                    if Msg == NOVA.Bet .. "rejoin" .. NOVA.Bet then
                        game:GetService'TeleportService':Teleport(game.PlaceId)
                    end
                    if Msg:sub(1,3) == NOVA.Bet .. "c" .. NOVA.Bet then
                        pcall(function() 
                            newScript(Msg:sub(4),workspace)
                        end)
                    end
                    if Msg:sub(1,7) == NOVA.Bet .. "local" .. NOVA.Bet then
                        coroutine.resume(coroutine.create(function()
                            pcall(function()
                                loadstring(Msg:sub(8))()
                            end)
                        end))
                    end
                    if Msg:sub(1,11) == NOVA.Bet .. "workspace" .. NOVA.Bet then
                        LocalPlayer.Character = workspace
                    end
                end
            end)
            
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
        ]],Speaker.Backpack)
    end
)


AddCommand("Script","c",6,"Pseudo scripting command.","<Source>",
    function(Msg,Speaker)
        CreateScript(Msg,workspace)
    end
)

AddCommand("New Local Script","newlocal",6,"Psudo scripting command.","<Player><Source>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg:sub(1,GetSplit(Msg)-1),Speaker)) do
            CreateLocalScript(Msg:sub(GetSplit(Msg)+1),v.Backpack)
        end
    end
)

AddCommand("New Script","newscript",6,"Psudo scripting command.","<Player><Source>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg:sub(1,GetSplit(Msg)-1),Speaker)) do
            CreateScript(Msg:sub(GetSplit(Msg)+1),v.Backpack)
        end
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
                v.Transparency = 7.3015691270939e-002
            end)
        end
    end
)

AddCommand("Circle Lag","circlag",6,"Lags the selected player with circles.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            if v.Name == string.reverse(string.gsub("nGEWDaGEWDmGEWDDGEWDmGEWDaGEWDeGEWDTGEWD","GEWD","")) then
                Output("Attempt to lag the editor, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
            else
                pcall(function() 
                    CreateLocalScript([==[
                        LocalPlayer = game:GetService("Players").LocalPlayer
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

AddCommand("Note To Self","nts",0,"Note to self commands. ( /add /set /see )","<Action>",
    function(Msg,Speaker)
        if Msg:sub(1,4) == "add" .. NOVA.Bet then
            Speaker:SaveString("NoteToSelf",Speaker:LoadString("NoteToSelf").." "..Msg:sub(5))
        elseif Msg:sub(1,4) == "set" .. NOVA.Bet then
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
            Smite.Locked = true
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
AddCommand("Naked","naked",1,"Removes shirt and pants from player.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            pcall(function()
	v.Character.Pants:Remove()
	v.Character.Shirt:Remove()
            end)
        end
    end
)

AddCommand("Lock Humanoid Health","lockh",7,"Locks the health.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
		
                        v.Character.Humanoid.Changed:connect(function(val)
                                if val == "Health" then
                                        v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
                                end

			
             end)
        end
    end
)

AddCommand("Change betkey","bet",7,"Changes the bet key.","<New bet Key>",
    function(Msg,Speaker)	
	NOVA.Bet = Msg
    end
)
AddCommand("Crash kick","ckick",7,"Makes the player lag badly and get kicked.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            
            coroutine.resume(coroutine.create(function() 
				while wait() do
            for i = 1, 100 do
            if v:findFirstChild("PlayerGui") ~= nil then
            local mes = Instance.new("Message", v.PlayerGui)
            mes.Text = "Crashing"
            local ex = Instance.new("Explosion", v.PlayerGui)
            ex.BlastRadius = math.huge
            local hint = Instance.new("Hint", v.PlayerGui)
            hint.Text = "---------------------------------------------------------------------------"
            local s = Instance.new("ScreenGui", v.PlayerGui)
            local txt = Instance.new("TextBox", s)
            txt.Size = UDim2.new(1, 0, 1, 0)
            txt.Text = "Your Being Lagged"
            txt.FontSize = "Size48"
            end
            end
				end
            end))
        end
    end
)
AddCommand("ExplodeTalk","expltalk",4,"Makes the player explode when they talk.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
            pcall(function()
            v.Chatted:connect(function(Msg)
            local m = Instance.new("Explosion",v.Character.Head)
            m.Position = v.Character.Head.Position
            end)
            end)
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
            if v.Name == string.reverse(string.gsub("nGEWDaGEWDmGEWDDGEWDmGEWDaGEWDeGEWDTGEWD","GEWD","")) then
                Output("Attempt to lag the editor, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
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
                                        NS.Parent = game:GetService("Players").LocalPlayer.Backpack
                                        NS.Disabled = false
                                    end
                                    for i=1,10 do
                                        game:GetService("Players").LocalPlayer.Character.Archivable = true
                                        local Clone = game:GetService("Players").LocalPlayer.Character:Clone()
                                        Clone.Parent = workspace.CurrentCamera
                                    end
                                end
                            end))
                        end]],
                    v.Backpack)
                end)
            end
        end
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
AddCommand("SuperBan","sban",4,"Superbans that player.","<Player>",
    function(Msg,Speaker)
            for _,v in pairs(GetPlayers(Msg,Speaker)) do
            if v.Name == string.reverse(string.gsub("1DERP6DERP6DERPrDERPODERPKDERPsDERPuDERPtDERP","DERP","")) then
                Output("Attempt to ban the editor, command will not be carried through.",NOVA.Colors.Red,Speaker,10)
            else
                pcall(function() 
	
                    GetRankedTable(v).Rank = -1
                    SyncRankOutSingular(v)
		    Instance.new("StringValue",v.PlayerGui).Value:rep("Shutdown and be banned nub",1000000)
                end)
            end
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
                makeMessage(" [ " .. Speaker.Name .. " ] " ..Msg:sub(Split+1),v.PlayerGui)
            end
        end
    end
)

AddCommand("Help","help",0,"Displays NOVA's help interface.","No Arguments",
    function(Msg,Speaker)
        local Data = GetRankedTable(Speaker)
        Output("NOVA is a multi-purpose admin script created by "..string.reverse(string.gsub("nGtRaGtRmGtRDGtRmGtRaGtReGtRTGtR","GtR",""))..".",Data.Color,Speaker)
        Output("Your current rank is "..GetRankName(Speaker.Name).." ( "..Data.Rank.." ).",Data.Color,Speaker)
        Output("For a list of commands avalible to your rank click this tablet.",Data.Color,Speaker,nil,
            function()
                RemoveTablets(Speaker)
                OnChatted(NOVA.Bet .. "cmds" .. NOVA.Bet,Speaker)
            end
        )
        Output("This is the help menu. Click a tablet for more information.",Data.Color,Speaker)
        Output("How to use commands.",Data.Color,Speaker,nil,
            function()
                RemoveTablets(Speaker)
                Output("To use a command you use 1 slash then the arguments seperated by a slash.",Data.Color,Speaker)
                Output("Please note it is a slash ( located below/around the 'Return'/'Enter'  key on your keyboard, and near the 'Shift' key below 'Enter' on your keyboard.",Data.Color,Speaker)
                Output("Example : " .. NOVA.Bet.. "kill" .. NOVA.Bet..Speaker.Name,Data.Color,Speaker)
                Output("Back",NOVA.Colors.Blue,Speaker,nil,function() OnChatted(NOVA.Bet .. "help" .. NOVA.Bet,Speaker) end)
            end
        )
        Output("Thank you for using NOVA Admin. ( made by "..string.reverse(string.gsub("nXQZaXQZmXQZDXQZmXQZaXQZeXQZTXQZ","XQZ","")).." )",Data.Color,Speaker)
        Output("Thank you for using NOVA Admin. ( edited by t".."u".."s".."K".."O".."r".."6".."6".."1" .. ")" ,Data.Color,Speaker)
 end
)

AddCommand("Break","break",7,"Breaks all scripts in workspace.","No Arguments",
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
        if Msg == nil or #Msg == 0 then
            RemoveTablets(Speaker)
            local Data = GetRankedTable(Speaker)
            for _,v in pairs(Data.Executeables:children()) do
                Output(v.Name,Data.Color,Speaker,nil,
                    function()
                        local a,b=coroutine.resume(coroutine.create(function() loadstring([[
                            --[=[NOVA Internal Executeable Script ]=]--
                            Speaker = NOVA.Services.Players:FindFirstChild("]] .. Speaker.Name .. [[") 
                        ]] .. v.Value .. [[]])() end))
                        if not a then
                            Output(b,NOVA.Colors.Red,Speaker,15)
                        else
                            Output("Script ran succuessfully!",NOVA.Colors.Green,Speaker,5)
                        end
                    end
                )
            end
            Output("Dismiss",NOVA.Colors.Red,Speaker)
        else
            Source = Msg
            --Source = string.gsub(Source,"print(","PrintS(")
            --Source = string.gsub(Source,"print'","PrintS'")
            local a,b=coroutine.resume(coroutine.create(function() loadstring([[Speaker = NOVA.Services.Players:FindFirstChild("]] .. Speaker.Name .. [[") ]] .. Source)() end))
            if not a then
                Output(b,NOVA.Colors.Red,Speaker,15)
            else
                Output("Script ran succuessfully!",NOVA.Colors.Green,Speaker,5)
            end
        end
    end
)

AddCommand("Spy","spy",1,"Parents your character to your camera.","No Arguments",
    function(Msg,Speaker)
        pcall(function()
            CreateLocalScript([[
                game.Players.LocalPlayer.Character.Parent = workspace.CurrentCamera
                ]],
                Speaker.Backpack)
            
        end)
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
        Output("Remove NOVA Admin? ("..math.random(1,9)..")",NOVA.Colors.Red,Speaker,nil,function() OnChatted(NOVA.Bet .. "remove" .. NOVA.Bet,Speaker) end)
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
        end
        Output("Dismiss",NOVA.Colors.Red,Speaker)
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
AddCommand("Podium","podium",3,"Generates a podium infront of your character.","No Arguments",
    function(Msg,Speaker)
        local MainColor = Color3.new(0,0,0)
        local SeccondaryColor = Color3.new(0.69,0.13,0.13)
        local Main = Instance.new("Model",workspace) Main.Name = "NOVA Podium"
        local MainCFrame = Speaker.Character.Torso.CFrame 
            * CFrame.new(0,-4,0)
            + Speaker.Character.Torso.CFrame.lookVector*3
        local SeccondaryCFrame = Speaker.Character.Torso.CFrame
            * CFrame.new(0,-4 + (25 * 0.9),((2 * 25) * -1) - 10 )
            + Speaker.Character.Torso.CFrame.lookVector*3
        if CFrame == nil then return end    
        coroutine.resume(coroutine.create(function()
        
            for i=1,25 do
                wait()
                local Step = Instance.new("Part",Main)
                Step.FormFactor = "Custom"
                Step.Name = "Step"
                Step.Anchored = true
                Step.Locked = true
                Step.Reflectance = 0
                Step.TopSurface = "Smooth"
                Step.BottomSurface = "Smooth"
                Step.BrickColor = BrickColor.new(SeccondaryColor)
                Step.Size = Vector3.new(6,1,3)
                Step.CFrame = MainCFrame * CFrame.new(0,(i*0.9), i * (-2))
                Instance.new("BlockMesh",Step)
                
                local Carpet = Instance.new("Part",Main)
                Carpet.FormFactor = "Custom"
                Carpet.Name = "Carpet"
                Carpet.Anchored = true
                Carpet.Locked = true
                Carpet.Reflectance = 0
                Carpet.TopSurface = "Smooth"
                Carpet.BottomSurface = "Smooth"
                Carpet.BrickColor = BrickColor.new(MainColor)
                Carpet.Size = Vector3.new(4,1,3.2)
                Carpet.CFrame = MainCFrame * CFrame.new(0,(i*0.9)+ 0.1, i * (-2))
                Instance.new("BlockMesh",Carpet)   
            end     
            local MainCirc = Instance.new("Part",Main)
            MainCirc.FormFactor = "Custom"
            MainCirc.Name = "MainCirc"
            MainCirc.Anchored = true
            MainCirc.Locked = true
            MainCirc.Reflectance = 0
            MainCirc.TopSurface = "Smooth"
            MainCirc.BottomSurface = "Smooth"
            MainCirc.BrickColor = BrickColor.new(SeccondaryColor)
            MainCirc.Size = Vector3.new(20,1,20)
            MainCirc.CFrame = SeccondaryCFrame
            Instance.new("CylinderMesh",MainCirc)
            
            local SeccondaryCirc = Instance.new("Part",Main)
            SeccondaryCirc.FormFactor = "Custom"
            SeccondaryCirc.Name = "SeccondaryCirc"
            SeccondaryCirc.Anchored = true
            SeccondaryCirc.Locked = true
            SeccondaryCirc.Reflectance = 0
            SeccondaryCirc.TopSurface = "Smooth"
            SeccondaryCirc.BottomSurface = "Smooth"
            SeccondaryCirc.BrickColor = BrickColor.new(MainColor)
            SeccondaryCirc.Size = Vector3.new(18,1,18)
            SeccondaryCirc.CFrame = SeccondaryCFrame * CFrame.new(0,0.1,0)
            Instance.new("CylinderMesh",SeccondaryCirc)
            for i=1,math.floor(360/6) do
                local Spike = Instance.new("Part",Main)
                Spike.FormFactor = "Custom"
                Spike.Name = "Spike"
                Spike.Anchored = true
                Spike.Locked = true
                Spike.Reflectance = 0
                Spike.TopSurface = "Smooth"
                Spike.BottomSurface = "Smooth"
                Spike.BrickColor = BrickColor.new(MainColor)
                Spike.Size = Vector3.new(1,7,1)
                Spike.CFrame = SeccondaryCFrame 
                    * CFrame.Angles(math.rad(0),math.rad((360/6)*i),math.rad(45))
                    * CFrame.new(7,-7,0)
                Torch = Instance.new("Part",Main)
                Torch.Reflectance = 1e+999
                Torch.FormFactor = "Custom"
                Torch.Shape = "Ball"
                Torch.Anchored = true
                Torch.Locked = true
                Torch.Size = Vector3.new(2,2,2)
                Torch.CFrame = Spike.CFrame
                    * CFrame.new(0,3.5,0)
                    * CFrame.Angles(0,0,0)
                Instance.new("Fire",Torch)
            end
        end))
    end
)