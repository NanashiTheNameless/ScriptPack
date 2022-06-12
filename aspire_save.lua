--[[ Script name: Aspire
	 Author: Reloxz
	 Version-Type: 6.3
	 Updates: Bug fixes.
	 I worked very hard on this, NOBODY helped me unless it was with some commands.
	 Aspire 6.3 Administrative Tablets.
	 I do not recommend this too learn from, this is way to difficult to learn from.
	 This doesnt work for exploits.
	 Enjoy ~ Reloxz 4/3/17
	
                                                                        
   _                _             
  /_\   ___  _ __  (_) _ __   ___ 
 //_\\ / __|| '_ \ | || '__| / _ \
/  _  \\__ \| |_) || || |   |  __/
\_/ \_/|___/| .__/ |_||_|    \___|
            |_|                   
                                                                        




                   _            _                ___           _                      
/'\_/`\           ( )          ( )              |  _`\        (_ )                    
|     |   _ _    _| |   __     | |_    _   _    | (_) )   __   | |    _          ____ 
| (_) | /'_` ) /'_` | /'__`\   | '_`\ ( ) ( )   | ,  /  /'__`\ | |  /'_`\ (`\/')(_  ,)
| | | |( (_| |( (_| |(  ___/   | |_) )| (_) |   | |\ \ (  ___/ | | ( (_) ) >  <  /'/_ 
(_) (_)`\__,_)`\__,_)`\____)   (_,__/'`\__, |   (_) (_)`\____)(___)`\___/'(_/\_)(____)
                                      ( )_| |                                         
                                      `\___/'                                         
	
	
	
	
	
	
	
	]]


require(872594017)

GuiNotify = function(plr,txt,time)
       --wait(time);
       coroutine.wrap(function()
              if time==nil then time=5 end
              local Notify = Instance.new("ScreenGui", plr.PlayerGui);
              Notify.Name = "CoresMsg";
              local TextLabel = Instance.new("TextLabel", Notify);
              TextLabel.Size = UDim2.new(1,0,0,30);
              TextLabel.Position = UDim2.new(1,0,1,0);
              TextLabel.Text = txt;
              TextLabel.FontSize = 'Size24'
              TextLabel.BackgroundColor3 = Color3.new(1,1,1);
              TextLabel.BackgroundTransparency = 1;
              TextLabel.Font = "SourceSans";
              TextLabel.TextColor3 = Color3.new(0,0,0);
              TextLabel.TextScaled = false;
              TextLabel.TextStrokeTransparency = .4
              TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
              TextLabel.BorderSizePixel = 0;
              TextLabel:TweenPosition(UDim2.new(0,0,0,0),'Out','Quint',2,true);
              wait(time);
              TextLabel:TweenPosition(UDim2.new(-1,0,0,0),'Out','Quint',2,true);
               wait(3)
              Notify:Destroy();
    end)();
end


for _,Player in pairs(game:service("Players"):GetPlayers()) do
GuiNotify(Player,"[Aspire]: Join our discord: discord.gg/F97pM6j")
end

loopkill = {}


--[[function SetView(object)
    if not object then
        workspace.CurrentCamera.CameraType = 'Custom' 
        workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid
        workspace.CurrentCamera.FieldOfView = 200
        return
    end
    workspace.CurrentCamera.CameraSubject = object
end

JoinLeave = function(Text)
    if Text == nil or Text == "" then Text = "No text specified!" end
    Text = Text .. " "
    for _, v in next, game:service'Players':players() do
        coroutine.resume(coroutine.create(function()
            local GUI = script.JoinLeaveGui.JoinLeaveGui:Clone()
            local TextLabel = GUI:WaitForChild("TextLabel")
            GUI.Parent = v.PlayerGui
            TextLabel.Text = ""
            TextLabel:TweenPosition(UDim2.new(1, -400, 0.5, 25), "Out", "Sine", 1)
            wait(2)
            for i = 1, string.len(Text) do
                TextLabel.Text = Text:sub(1, i)
                wait()
            end
            wait(3)
            for i = 0, string.len(Text) do
                TextLabel.Text = Text:sub(i)
                wait()
            end
            TextLabel:TweenPosition(UDim2.new(1, 25, 0.5, 25), "In", "Sine", 1)
            wait(2)
            GUI:Destroy()
        end))
    end
end]]

--[[local Mute = require(script.ModuleScript)
SendChat = require(script.ChatModule)

					
			

ChatService=require(game:GetService("ServerScriptService").ChatServiceRunner.ChatService)

Chatcolor=function(Player, Color)
if ChatService:GetSpeaker("Reloxz") == nil then
    local chb=ChatService:AddSpeaker("Reloxz")
    chb:JoinChannel("All")
    ChatService:GetSpeaker():SetExtraData("Font", "SourceSansBold")
    ChatService:GetSpeaker("Reloxz"):SetExtraData("ChatColor", BrickColor.new("Teal").Color)
    ChatService:GetSpeaker("Reloxz"):SetExtraData("NameColor", BrickColor.new("White").Color)
    else
    ChatService:GetSpeaker("Reloxz"):SetExtraData("Font", "SourceSansBold")
    ChatService:GetSpeaker("Reloxz"):SetExtraData("ChatColor", BrickColor.new("Teal").Color)
    ChatService:GetSpeaker("Reloxz"):SetExtraData("NameColor", BrickColor.new("White").Color)
    end
end

NameColor = function(Player, Colour)
    if type(Player) == "userdata" then Player = Player.Name end
    if type(Colour) == "number" then Colour = BrickColor.new("Medium stone grey").Color end
    if ChatService:GetSpeaker(Player) ~= nil then
        ChatService:GetSpeaker(Player):SetExtraData("NameColor", Colour)
    elseif ChatService:GetSpeaker(Player) == nil then
        local CHB = ChatService:AddSpeaker(Player)
        CHB:JoinChannel("All")
        ChatService:GetSpeaker(Player):SetExtraData("NameColor", Colour)
    end
end

ChatColor = function(Player, Colour)
    if type(Player) == "userdata" then Player = Player.Name end
    if type(Colour) == "number" then Colour = BrickColor.new("Medium stone grey").Color end
    if ChatService:GetSpeaker(Player) ~= nil then
        ChatService:GetSpeaker(Player):SetExtraData("ChatColor", Colour)
    elseif ChatService:GetSpeaker(Player) == nil then
        local CHB = ChatService:AddSpeaker(Player)
        CHB:JoinChannel("All")
        ChatService:GetSpeaker(Player):SetExtraData("ChatColor", Colour)
    end
end

ChangeFont = function(Player, Font)
    if ChatService:GetSpeaker(Player.Name) ~= nil then
        ChatService:GetSpeaker(Player.Name):SetExtraData("Font", Font)
    elseif ChatService:GetSpeaker(Player.Name) == nil then
        local CHB = ChatService:AddSpeaker(Player.Name)
        CHB:JoinChannel("All")
        ChatService:GetSpeaker(Player.Name):SetExtraData("Font", Font)
    end
end]]

local _TIMEOFSTARTUP = tick() -- To calculate the time needed for the script to startup.

local Aspire

local function CLerp(p1, p2, percent)

        local p1x,p1y,p1z,p1R00,p1R01,p1R02,p1R10,p1R11,p1R12,p1R20,p1R21,p1R22 = p1:components()

        local p2x,p2y,p2z,p2R00,p2R01,p2R02,p2R10,p2R11,p2R12,p2R20,p2R21,p2R22 = p2:components()

        return CFrame.new(p1x+percent*(p2x-p1x), p1y+percent*(p2y-p1y), p1z+percent*(p2z-p1z), p1R00+percent*(p2R00-p1R00), p1R01+percent*(p2R01-p1R01), p1R02+percent*(p2R02-p1R02), p1R10+percent*(p2R10-p1R10), p1R11+percent*(p2R11-p1R11), p1R12+percent*(p2R12-p1R12), p1R20+percent*(p2R20-p1R20), p1R21+percent*(p2R21-p1R21), p1R22+percent*(p2R22-p1R22))

end

colors = {"Really black","Lime green","Teal","Royal purple","New Yeller","Dark blue","Bright red","Hot pink","Magenta"}
colourz = {"Really black","Royal purple","Lime green","Teal","Hot pink","Magenta","Dark blue"}

local Threads={}

function AddThread(Function)

        local Thread=coroutine.resume(coroutine.create(Function))

        table.insert(Threads,Thread)

end

newserver=function(id)

        for i=1,1 do

            game:GetService'HttpService':GetAsync('http://roblox-proxy.cf/proxy/api/NewServer/'..tonumber(id),true)

        end

end

--[[url = "https://discordapp.com/api/webhooks/294158833285332993/gYtp-viY0vk9sF79TNtnQBUPuE--03_MPo28QZVjCpSRJpwJmHfRcLn1F_ro9lUyZYgF"
http = game:GetService("HttpService")
HookData = {}

function logToDiscord(player, message)
    HookData = {
        ['username'] = "[AspireBot]",

        ['content'] = player.Name .. ": " .. message
    }
    HookData = http:JSONEncode(HookData)

    http:PostAsync(url, HookData)

    HookData = {}
end

for i, v in pairs(game:GetService("Players"):GetChildren()) do
	v.Chatted:connect(function(message)
		logToDiscord(v, message)
		--table.insert(Aspire.Logs.Chat, {v, message});
	end)
end

game:GetService("Players").PlayerAdded:connect(function(player)
	player.Chatted:connect(function(message)
		logToDiscord(player, message)
		--table.insert(Aspire.Logs.Chat, {player, message});
	end)
end)
]]
--[[function ForceChat(Player,Message)
    local LocalScript = script.LocalScript:Clone()
    LocalScript.Name = Message
    LocalScript.Parent = Player.PlayerGui
    LocalScript.Disabled = false
    game:service'Debris':AddItem(LocalScript, 1)
end ]]

local LockScripts = false

local LockLocalScripts = false

local LockSounds = false


Aspire = {
	
	DevMode = false,
	
	getTime = function()
	local time = math.floor(tick())
	local seconds = time%60
	local min = math.floor(time/60)
	local minutes = min%60
	if seconds<10 then
		seconds = "0" .. seconds
	end
	if minutes<10 then
		minutes = "0" .. minutes
	end
	local hr = math.floor(min/60)
	local hour = hr%24
	local te = "am"
	if hour==0 then
		hour = 12
	end
	if hour>=12 then
		te = "pm"
	end
	if hour>12 then
		hour = hour - 12
	end
	return hour .. ":" .. minutes .. " " .. te
	end,
	
	ViewCommands = function(Speaker)
				Aspire.Functions.Main.Dismiss(Speaker)
		Aspire.Functions.Main.Output(Speaker, "You are rank:\n"..tostring(Aspire.Functions.Get.PlayerData(Speaker, "Rank")))

        local RankData = {}

        

        for _, Data in pairs(Aspire.Ranks) do

                if Data.Rank > 0 then

                        local AvailableCommands = {}

                        local ForRank = 0

                        for Usages, CommandData in pairs(Aspire.Commands) do

                                if CommandData.Rank <= Data.Rank then

                                        ForRank = ForRank + 1

                                        AvailableCommands[Usages] = CommandData

                                end

                        end

                        RankData[Data.Description.."("..Data.Rank.."):\n"..ForRank.." Command(s) Available"] = AvailableCommands

                end

        end

        

        for Rank, Data in pairs(RankData) do

                Aspire.Functions.Main.Output(Speaker, Rank, nil, 0, function()

                        Aspire.Functions.Main.Dismiss(Speaker)

                        for Usages, Data in pairs(Data) do

                                Aspire.Functions.Main.Output(Speaker, Data.Description, nil, 0, function()

                                        Aspire.Functions.Main.Dismiss(Speaker)

                                        for _, Usage in pairs(Usages) do

                                                Aspire.Functions.Main.Output(Speaker,"Usage:\n"..Usage)

                                        end

                                        Aspire.Functions.Main.Output(Speaker, Data.Description)

                                        Aspire.Functions.Main.Output(Speaker, "Type:\n"..tostring(Data.Type))

                                        Aspire.Functions.Main.Output(Speaker, "Rank Needed:\n "..Data.Rank)

										local plrRank = Aspire.Functions.Get.PlayerData(Speaker, "Rank")
										if plrRank >= Data.Rank then
											Aspire.Functions.Main.Output(Speaker, 'You can Use this Command!','Lime green')
											wait(.5)
										else
											Aspire.Functions.Main.Output(Speaker, 'You are not a High enough Rank\nfor This Command :(','Really red')
											wait(.5)
										end

                                end)

                        end

                end)

        end
	end,

		SongRequests = {},

		assettype=function(id)
		    local i=game:GetService("MarketplaceService"):GetProductInfo(tonumber(id))
		    return i.AssetTypeId
		end,

		inTable=function(tbl,val)
			for i,v in pairs(tbl)do
				if v==val then return true end
			end
			return false
		end,

		New = {
				
				Rankp = function(Player, Rank, Description) Aspire.Ranked[tostring(Player):lower()] = {Rank = Rank, Description = Description, Color = 'Institutional white', Mesh = nil, BoxEnabled = true, Prefix = nil, Suffix = nil, Notify = true} end,
				
				Rank = function(Player, Rank, Description, Color) Aspire.Ranked[tostring(Player):lower()] = {Rank = Rank, Description = Description, Color = Color, Mesh = nil, BoxEnabled = true, Prefix = nil, Suffix = nil, Notify = true} end,
		
		},
		
		Rot = {
			Type = 'Default',
			
			ChangeType = function(Change)
				Aspire.Rot.Type = Change
			end,
		
		},
		--[[NetworkServer = game:FindService('NetworkServer') or {Port=0},
		
		Send=require(328231860),
		
		Chat = {
			SendAll = function(...)
	for i,v in pairs(Aspire.NetworkServer:children()) do 
		if v:IsA"ServerReplicator" then
			Aspire.Send(v:GetPlayer(),...)
		end
	end
	end,]]
	
   
		
		AspireDefaultServer = game:GetService('TeleportService'):ReserveServer(game.PlaceId),
		
		MinimumAccountAge = 0, -- The minimum account age required to join the game.

        Ranked = {},

        Website = "nil",

        RemoteData = {

                Enabled = false,

                RawRemoteFile = "",

                LastData = nil,

        },

        Ranks = { -- All available ranks, You can add some manually.
			 	{Rank = math.huge, Description = "Creator"}, 
			    {Rank = 4200, Description = "Staff"},          
				{Rank = 1337, Description = "Creators"},
                {Rank = 10, Description = "Co-Creator"},
                {Rank = 9, Description = "Lead Developer"},
                {Rank = 8, Description = "Developer"},
                {Rank = 7, Description = "Owner"},
                {Rank = 6, Description = "Scripter"},
                {Rank = 5, Description = "Beta-Tester"},
                {Rank = 4, Description = "Administrator"},
                {Rank = 3, Description = "Best friend"},
                {Rank = 2, Description = "Friend"},
                {Rank = 1, Description = "User"},
                {Rank = 0, Description = "Unknown"},
                {Rank = -1, Description = "Banned."},
                {Rank = -2, Description = "BSoD'ed"},
        },

        Meshes = {

                [0] = false,

                [""] = false,

                ["0"] = false,

                Nil = false,

                False = false,

                Off = false,

                None = false,

                Diamond = 9756362,

                Dominus = 21057410,

                Invisible = -1,

                Doge = 151778863,

                Fedora = 1029012,

                Valk = 1365696,

                Sword = 67993325,

                Kettle = 1376963,

        },

        BoxTypes = {

                True = true,

                On = true,

                Show = true,

                Enabled = true,

                Off = false,

                No = false,

                Disabled = false,

                Hidden = false,

                False = false,

        },

        NotifyTypes = {

                True = true,

                On = true,

                Show = true,

                Enabled = true,

				False = false,
				
				Off = nil,
				

        },

        FullyConnected = false, -- Whether the script has fully started up.

        KickedTypes = {

                Kicked = false,

                Private_Server = false,

                Banned = false,

                Account_Age = false,

        },-- Triggers when a player is kicked.

        TabletSize = 1, -- The size of the tablets.

        Colors = {"White","Really black","Royal purple","Teal","Bright red","Hot pink","Gold","Hot pink","Really red"}, -- The available colors.

        Commands = {}, -- To store commands.

        Tablets = {}, -- To store parts

        Services = { -- Defining services to reduce memory use.

                Workspace = game:GetService("Workspace"),

                Players = game:GetService("Players"),

                HttpService = game:GetService("HttpService"),

                RunService = game:GetService("RunService"),

                MarketPlace = game:GetService("MarketplaceService"),

                Data = game:GetService("DataStoreService"),

                InsertService = game:GetService("InsertService"),

				Lighting = game:GetService("Lighting"),
				
				ReplicatedFirst = game:GetService("ReplicatedFirst"),
				
				ReplicatedStorage = game:GetService("ReplicatedStorage"),
				
				ServerScriptService = game:GetService("ServerScriptService"),
				
				ServerStorage = game:GetService("ServerStorage"),
				
				StarterGui = game:GetService("StarterGui"),
				
				StarterPack = game:GetService("StarterPack"),

                DataStore = game:GetService("DataStoreService"):GetDataStore("AspireData"),

                MainFolder = Instance.new("Folder"),

        },

        DefaultPrefix = ";", -- The prefix for a command.

        DefaultSuffix = "/", -- The suffix for a command.

        RotationData = {}, -- To store Speed and Values.

        Debug = false, -- To debug the script.

        ScriptOwner = getfenv().owner or "Unknown", -- Who runs the script.

        Debounces = {

                Vote = false        

        },

        Logs = { -- All logs

                Parsed = {}, -- Chat- & Commandlogs

                Errors = {}, -- Errorlogs.

        },

        Fake = { -- For the sandbox.

                _G = {},

                shared = {},

                Functions = {},

        },

        Locks = { -- All available locks, Yes you can lock stuff.

                Server = false,

        },

        Settings ={

                WiringOffset = 1;

                WiringEnabled = true;

        },

        -- Some checks below

        ScriptType = (game:FindService("NetworkServer") and "Server" or "Studio"),

		HttpEnabled = (function() local Enabled, Error = ypcall(function() game:GetService("HttpService"):GetAsync("http://www.google.com/") end) if Enabled then return true else return false end end)(),

        Functions = {-- All the functions the script uses.

                Main = {

                       
                        Output = function(Player, Text, Color, Time, Function) -- To create a tablet.

                                local Player = tostring(Player or "Unknown"):lower()

                                local ActualPlayer = Aspire.Functions.Parse.GetPlayer(Player)

                                local Table = Aspire.Tablets[Player]

                                local Text = tostring(Text or "")

                                local Time = tonumber(Time or 0)

                                local Color = tostring(Color or Aspire.Functions.Get.PlayerData(Player, "Color"))

                                local Mesh = Aspire.Functions.Get.PlayerData(Player, "Mesh")

                                if Player ~= "Unknown" and ActualPlayer and ActualPlayer.Character and ActualPlayer.Character:FindFirstChild("HumanoidRootPart") then

                                        local Distance = 2

                                        for Arg in Text:gmatch("\n") do Distance = Distance + .5 end

                                        local PartCFrame = (ActualPlayer.Character and ActualPlayer.Character:FindFirstChild("HumanoidRootPart") and ActualPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -10, 0) or CFrame.new())

                                        local Clicked = false

                                        local Hovering = false

                                        local Part = Aspire.Functions.Main.Create("Part", {CFrame=PartCFrame or CFrame.new(0,3,0),Parent = workspace.Terrain, Name = "Aspire~"..tick()*math.tan(os.time()), Locked = true, CFrame = PartCFrame, BrickColor = BrickColor.new(Color), FormFactor = "Custom", TopSurface = "SmoothNoOutlines", BottomSurface = "SmoothNoOutlines", BackSurface = "SmoothNoOutlines", FrontSurface = "SmoothNoOutlines", LeftSurface = "SmoothNoOutlines", RightSurface = "SmoothNoOutlines", Transparency = 0.5, Material = "Plastic",Anchored = true, CanCollide = false, Size = Vector3.new(Aspire.TabletSize, Aspire.TabletSize, Aspire.TabletSize)})
                                        
                                        Box = Aspire.Functions.Main.Create("SelectionBox", {Parent = Part, Name = "Box", Color = Part.BrickColor, Adornee = Part,LineThickness = 0.02,Transparency  = .2})

                                        local Gui = Aspire.Functions.Main.Create("BillboardGui", {Parent = Part, Name = "Gui", StudsOffset = Vector3.new(0, Distance, 0), Size = UDim2.new(10,0,10,0), Adornee = Part})
										
										local Gyro = Aspire.Functions.Main.Create("BodyGyro", {Parent = Part, Name = "BodyGyro", CFrame=PartCFrame or CFrame.new(0,3,0)})
										
                                        local Light = Aspire.Functions.Main.Create("PointLight", {Parent = Part, Name = "Light",Brightness = 50, Color = Part.BrickColor.Color})

										local TextLabel = Aspire.Functions.Main.Create("TextLabel", {Parent = Gui, Name = "Text", Text = ""..(Text:gsub("","")), FontSize = "Size24", TextColor3 = Color3.new(255,255,255),	TextStrokeColor3 = Part.Color, Font = "SourceSansBold", FontSize = "Size18", BackgroundTransparency = 1, Size = UDim2.new(1,0,1,0), TextTransparency = 1})
                                        
                                         if Aspire.Functions.Get.PlayerData(Player, "Color")=="Rainbow" then
	                                    Part.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
                                        end
                                        if Aspire.Functions.Get.PlayerData(Player, "Color")=="ReloxzTheme" then
	                                     Part.BrickColor = BrickColor.new(colourz[math.random(1,#colourz)])
                                        end
 
                                       
 
                                        local CustomMesh

                                        if Mesh then

                                                CustomMesh = Aspire.Functions.Main.Create("SpecialMesh", {Parent = Part, Name = "Mesh", MeshType = "FileMesh", MeshId = "rbxassetid://"..tostring(Mesh), Scale = Part.Size})

                                        end
                      
                                        local ClickDetector = Aspire.Functions.Main.Create("ClickDetector", {Parent = Part, MaxActivationDistance = 1/0,
                                                MouseHoverEnter = function(Click)
                                                        local ScreenGuiTextShow = Aspire.Functions.Main.Create("ScreenGui",{Parent = Player.PlayerGui, Name = "Aspire Screen Gui"})
                                                        local TextGui = Aspire.Functions.Main.Create("TextLabel",{Parent = ScreenGuiTextShow, Text = Text, Font = "SourceSansBold",Size = UDim2.new(1, 0, 0.1 ,0), BackgroundTransparency = 1, TextStrokeColor3 = Part.Color, FontSize = "Size24"})
                                                        local Clicker = tostring(Click):lower()
                                                        if Clicker == Player:lower() and not Hovering then
                                                                Hovering = true
                                                                Part.Material = "Neon"
                                                                Part.Size = Vector3.new(1.1,1.1,1.1)
                                                                wait()
	                                                            Part.Size = Vector3.new(1.2,1.2,1.2)
	                										    wait()
                                                                Part.Size = Vector3.new(1.3,1.3,1.3)
                                                              
                                                                if Box then
                                                                        Box.Transparency = .2
                                                                end
                                                                if Mesh then
                                                                        CustomMesh.Scale = Part.Size
                                                                end
                                                        end
                                                end,
                                                MouseHoverLeave = function(Click)
                                                        local Clicker = tostring(Click):lower()
                                                        if Clicker == Player:lower() and Hovering and not Part:FindFirstChild("Aspire~REMOVE") then
                                                                Hovering = false
                                                               -- pe1:Destroy()
                                                               -- pe1:Remove() pe2:Destroy() pe2:Remove()
                                                                Part.Material = "Plastic"
                                                                Part.Size = Vector3.new(1.3,1.3,1.3)
                                                                wait()
	                                                            Part.Size = Vector3.new(1.2,1.2,1.2)
	                										    wait()
                                                                Part.Size = Vector3.new(1.1,1.1,1.1)
 															    wait()
                                                                Part.Size = Vector3.new(1,1,1)
                                                               -- pe2:Destroy() pe2:Remove()
                                                                if Box then
                                                                        Box.Transparency = .2
                                                                end
                                                                if Mesh then
                                                                        CustomMesh.Scale = Part.Size
                                                                end
                                                        end
                                                end,

                                                MouseClick = function(Click)

                                                        local Clicker = tostring(Click):lower()

                                                        if Clicker == Player:lower() and not Clicked then

                                                                Clicked = true

                                                                if type(Function) == "function" then

                                                                        Function(Click)

                                                                else

                                                                        Aspire.Functions.Main.DismissTablet(Part)

                                                                end

                                                        end

                                                end,

                                        })

                                        delay(0.5, function()

                                                for Transparency = 1, 0, -.1 do

                                                        if not Part:FindFirstChild("Aspire~REMOVE") then

                                                                TextLabel.TextStrokeTransparency = Transparency + .5

                                                                TextLabel.TextTransparency = Transparency

                                                                Aspire.Services.RunService.Heartbeat:wait()

                                                        else

                                                                break

                                                        end

                                                end

                                        end)

                                        Part.Parent = workspace.Terrain

                                        table.insert(Table, Part)
                                end

                        end,
						
						RemovePlayer = function(Player)
						local tempTable = {}
								table.insert(tempTable, Player)
								local TS = game:GetService('TeleportService')
								local tempcode = TS:ReserveServer(game.PlaceId)
								TS:TeleportToPrivateServer(game.PlaceId,tempcode,tempTable)
						end,

                        InitiateRemote = function()

                                if Aspire.RemoteData.Enabled then

                                        coroutine.resume(coroutine.create(function()

                                                while wait(.3) do

                                                        local RetrievedData = Aspire.Services.HttpService:GetAsync(Aspire.Website..Aspire.RemoteData.RawRemoteFile)

                                                        local Success, DataTable = pcall(function() return RetrievedData end)

                                                        if type(DataTable) == "table" then print("Retrieved Remote Data: \n"..RetrievedData) end

                                                        if Success and RetrievedData ~= Aspire.RemoteData.LastData and type(DataTable) == "table" then

                                                                Aspire.RemoteData.LastData = RetrievedData

                                                                Aspire.Functions.Parse.Chat(DataTable.Command,DataTable.Player)

                                                        end

                                                end

                                        end))

                                end

                        end,

                        DismissTablet = function(Part,Time)

                                if not Part:FindFirstChild("Aspire~REMOVE") then

                                        Aspire.Functions.Main.Create("BoolValue", {Name = "Aspire~REMOVE", Parent = Part, Value = true})

                                        delay(Time or 0, function()

                                                AddThread(function()

                                                        local Box = Part:FindFirstChild("Box",true)

                                                        local TextLabel = Part:FindFirstChild("Text",true)

                                                        local Mesh = Part:FindFirstChild("Mesh", true)

                                                        for Size = Part.Size.X, Part.Size.X + .5, .1 do

                                                                Part.Size = Vector3.new(Size, Size, Size)

                                                                if Mesh then Mesh.Scale = Part.Size end

                                                                Aspire.Services.RunService.Heartbeat:wait()

                                                        end

                                                        coroutine.resume(coroutine.create(function()

                                                                for Transparency = 0, 1, .1 do

                                                                        if TextLabel then TextLabel.TextStrokeTransparency = Transparency TextLabel.TextTransparency = Transparency end

                                                                        Aspire.Services.RunService.Heartbeat:wait()

                                                                end

                                                        end))

                                                        for Size = Part.Size.X, 0, -.1 do

                                                                Part.Size = Vector3.new(Size, Size, Size)

                                                                if Mesh then Mesh.Scale = Part.Size end

                                                                Aspire.Services.RunService.Heartbeat:wait()

                                                        end

                                                        Part:Destroy()

                                                end)

                                        end)

                                end

                        end,

                        Dismiss = function(Player)

                                local Player = Aspire.Functions.Parse.GetPlayer(tostring(Player))

                                local Table = Aspire.Tablets[tostring(Player):lower()]

                                if Table and Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then

                                        local Character = Player.Character

                                        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

                                        local DismissNumber = (#Table > 3 and #Table or 35)

                                        for _, Part in pairs(Table) do
	                                      Part.Name = "Aspire~REMOVE"

                                                Aspire.Functions.Main.DismissTablet(Part,(math.random(#Table)/#Table)/2)

                                        end

                                end

                        end,

                        AdminOutput = function(Text, Color, Time, Function) -- Create a tablet to all ranked players.

                                for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do

                                        if Aspire.Functions.Get.PlayerData(Player, "Rank") > 5 and Aspire.Functions.Get.PlayerData(Player, "Notify") then
										if Player.Name == '23492394723874934' then
										Aspire.Functions.Main.Output(Player, Text, 'Royal purple', Time, Function)
										else
											Aspire.Functions.Main.Output(Player, Text, Color, Time, Function)
										end

                                        end

                                end

                        end,
                     


                        GlobalOutput = function(Text) -- Create a tablet to all players.

                                for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do

                                        if Aspire.Functions.Get.PlayerData(Player, "Notify") then

                                                Aspire.Functions.Main.Output(Player,tostring(Text))

                                        end

                                end

                        end,

                        Wire = function(PartA, PartB)

                                local Distance = (PartA.Position-PartB.Position).magnitude

                                local distance = Distance

                                local Parent = PartA.Parent

                                if not Parent:findFirstChild("Wire") then

                                        local Wire =  Aspire.Functions.Main.Create("Part",{Parent = Parent, Anchored = true, CanCollide = false, TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Size = Vector3.new(0,0,Distance), Name = "[Aspire WIRE ATTACHMENT]", CFrame = CFrame.new(PartA.Position, PartB.Position)*CFrame.new(0,0,-distance/2), Color = PartA.Color})

                                else

                                        Parent.Wire.Size = Vector3.new(0,0,distance)

                                        Parent.Wire.CFrame = CFrame.new(PartA.Position,PartB.Position)*CFrame.new(0,0,-distance/2)

                                end

                        end,

                        Create = function(ClassName, Properties) -- A function to create instances.

                                local Instance = Instance.new(ClassName)

                                local Properties = Properties or {}

                                local ConnectionIndexes = {"MouseClick","MouseHoverEnter","MouseHoverLeave","MouseButton1Down","MouseButton2Down"}

                                local CheckConnection = function(Index)

                                        local Index = tostring(Index)

                                        for _, Connect in pairs(ConnectionIndexes) do

                                                if Index:lower() == Connect:lower() then

                                                        return true

                                                end

                                        end

                                        return false

                                end

                                for Index, Value in pairs(Properties) do

                                        if not CheckConnection(Index) then

                                                Instance[Index] = Value

                                        else

                                                Instance[Index]:connect(Value)

                                        end

                                end

                                return Instance

                        end,

                },

                Set = { -- Creating Data

                        Rank = function(Player, Rank, Description, Color, Mesh, BoxEnabled, Prefix, Suffix, Notify) Aspire.Ranked[tostring(Player):lower()] = {Rank = Rank, Description = Description, Color = Color, Mesh = Mesh, BoxEnabled = BoxEnabled, Prefix = Prefix, Suffix = Suffix, Notify = Notify} end,

                        Mesh = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(Aspire.Ranked) do if Name:lower() == Player:lower() then Data.Mesh = (function() for Name, Id in pairs(Aspire.Meshes) do if Input:lower() == tostring(Name):lower() then return Id end end return Input end)() end end end,

                        Prefix = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(Aspire.Ranked) do if Name:lower() == Player:lower() then Data.Prefix = Input end end end,

                        Suffix = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(Aspire.Ranked) do if Name:lower() == Player:lower() then Data.Suffix = Input end end end,

                        Box = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(Aspire.Ranked) do if Name:lower() == Player:lower() then Data.Box = (function() for Name, Value in pairs(Aspire.BoxTypes) do if Input:lower() == tostring(Name):lower() then return Value end end return false end)() end end end,

                        Notify = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(Aspire.Ranked) do if Name:lower() == Player:lower() then Data.Notify = (function() for Name, Value in pairs(Aspire.NotifyTypes) do if tostring(Name):lower() == Name:lower() then return Value end end return false end)() end end end,

                        Color = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(Aspire.Ranked) do if Name:lower() == Player:lower() then Data.Color = Input end end end,

                        Description = function(Player, Input) local Player = tostring(Player) for Name, Data in pairs(Aspire.Ranked) do if Name:lower() == Player:lower() then Data.Description = Input end end end,

                        Command = function(Description, Usages, Type, Rank, Function) Aspire.Commands[Usages] = {Description = Description,Type = Type, Rank = Rank, Usage = Usages[1], Usage2 = Usages[2] or nil, Function = Function} end,

                },

				Music = {
					
					Play = function(Id)
						Sound = Instance.new('Sound')
						Sound.Parent = game:GetService('ReplicatedStorage')
						Sound.SoundId = 'rbxassetid://'..Id
						Sound.Volume = 5
						Sound:Play()
						spawn(function()
							while Sound do
								wait()
								if Sound.IsPlaying == false then
									Sound:Remove()
									wait()
								end
							end
						end)
					end,
					
					Stop = function()
					Sound:Stop()
					end,
					
					Loop = function()
						Sound.Looped = true
					end,
					
					StopLoop = function()
						Sound.Looped = false
					end,
					
					SetVolume = function(Vol)
						Sound.Volume = Vol
					end,
					
					SetPitch = function(Pi)
						Sound.Pitch = Pi
					end,
					
					},

                Get = { -- Retrieving Data.

                        PlayerData = function(Player, Index)

                                local Player = tostring(Player)

                                local Index = tostring(Index)

                                for Name, Data in pairs(Aspire.Ranked) do

                                        if Name:lower() == Player:lower() and Data[Index] ~= nil then

                                                if Index == "Mesh" and Aspire.Meshes[Data[Index]] then return Aspire.Meshes[Data[Index]] end

                                                if Index == "BoxEnabled" and Aspire.BoxTypes[Data[Index]] then return Aspire.BoxTypes[Data[Index]] end

                                                if Index == "Notify" and Aspire.NotifyTypes[Data[Index]] then return Aspire.NotifyTypes[Data[Index]] end

                                                return Data[Index]

                                        end

                                end

                                if Index == "Rank" then return 0

                                elseif Index == "Mesh" then return false

                                elseif Index == "Prefix" then return Aspire.DefaultPrefix

                                elseif Index == "Suffix" then return Aspire.DefaultSuffix

                                elseif Index == "BoxEnabled" then return true

                                elseif Index == "Notify" then return true

                                elseif Index == "Color" then return "White"

                                elseif Index == "Description" then return "None"

                                end

                                return nil

                        end,

                        Classes = function(Class,obj)

                                local Data = {}

                                for _, Child in pairs(obj:GetChildren()) do

                                        pcall(function()

                                                if Child:IsA(Class) then table.insert(Data,Child) end

                                                pcall(function()

                                                        for _, NewData in pairs(GetClasses(Class,Child)) do table.insert(Data,NewData) end

                                                end)

                                        end)

                                end

                                return Data

                        end,

                        NumberToBit = function(Bit) local BitString = tostring(Bit):reverse() local Status = 0 local Output = 0 for Character = 1, #BitString do Status = (Status == 0 and 1 or Status * 2) local SelectedNumber = BitString:sub(Character, Character) if SelectedNumber == "1" then Output = Output + Status end end return Output end,

                },

                Lock = {

                        Table = function(Table)

                                setmetatable(Table, {

                                        __metatable = "[ Sandbox ]:\nLocked",

                                })

                                for Index, Value in pairs(Table) do

                                        if type(Index) == "table" then Aspire.Functions.Lock.Table(Index) end

                                        if type(Value) == "table" then Aspire.Functions.Lock.Table(Value) end

                                end

                        end

                },

                Connect = { -- Connection Functions.

                        Player = function(Player, Type)

                                if Player.AccountAge < Aspire.MinimumAccountAge and Aspire.Functions.Get.PlayerData(Player, "Rank") == 0 then

                                        Aspire.KickedTypes.Account_Age = true

                                        Aspire.Functions.Extra.Kick_No_Log(Player)

                                        return "Kicked"

                                elseif Aspire.Locks.Server and Aspire.Functions.Get.PlayerData(Player, "Rank") < 2 and Aspire.Functions.Get.PlayerData(Player, "Rank") >= 0 then

                                        Aspire.KickedTypes.Private_Server = true

                                        Aspire.Functions.Extra.Kick_No_Log(Player)

                                        return "Kicked"

                                elseif Aspire.Functions.Get.PlayerData(Player, "Rank") < 0 then

                                        Aspire.KickedTypes.Banned = true

                                        Aspire.Functions.Extra.Kick_No_Log(Player)

                                        return "Banned"

                                end

                                if Aspire.Functions.Get.PlayerData(Player, "Rank") == 0 then

                                        Aspire.Functions.Set.Rank(Player, 1, "Newly added player", "Really black",  nil, true, nil, nil, true)

                                end

                                if Aspire.Services.Players:FindFirstChild(tostring(Player)) then

                                        if Type == "Join" then
										Aspire.Functions.Main.AdminOutput(tostring(Player).." has joined!", "Lime green")
                                        end	
                                        Aspire.Tablets[tostring(Player):lower()] = {}

                                        Aspire.RotationData[tostring(Player):lower()] = {RotationIncrease = 2, Rotation = 0, LastKnownPosition = nil}

                                        Aspire.Functions.Main.Output(Player,"Welcome:\n"..tostring(Player)..".")

                                        Aspire.Functions.Main.Output(Player,"Made by Reloxz")

                                        Aspire.Functions.Main.Output(Player,"Welcome to Aspire.")

                                        Aspire.Functions.Main.Output(Player,"You are rank:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Rank")))                                        

                                        Player.Chatted:connect(function(Message)

                                                local MainFunction, MainError = ypcall(Aspire.Functions.Parse.Chat, Message, Player)

                                                if not MainFunction then

                                                        table.insert(Aspire.Logs.Errors, tostring(MainError))

                                                end

                                        end)

                                end

                        end,

                },

                Disconnect = { -- Disconnection Functions.

                        Player = function(Player)

                                local Reason, Type = nil, "left"

                                if Aspire.KickedTypes.Kicked then

                                        Aspire.KickedTypes.Kicked = false

                                        Type = "Kicked"

                                        Reason = Reason or "Kicked by an Administrator"

                                elseif Aspire.KickedTypes.Account_Age then

                                        Aspire.KickedTypes.Account_Age = false

                                        Type = "Kicked"

                                        Reason = "Too low AccountAge"

                                elseif Aspire.KickedTypes.Private_Server then

                                        Aspire.KickedTypes.Private_Server = false

                                        Type = "Kicked"

                                        Reason = "Server Lock Enabled"

                                elseif Aspire.KickedTypes.Banned then

                                        Aspire.KickedTypes.Banned = false

                                        Type = "Banned"

                                        Reason = Aspire.Functions.Get.PlayerData(Player, "Description")

                                end

                                Aspire.Functions.Main.AdminOutput(tostring(Player).." has " .. (Type ~= "left" and "been " or Type) .. (Type ~= "left" and Type .. " for:\n " or "") .. (Type ~= "left" and (Reason ~= nil and Reason or "Undisclosed Reason.") or ""),

                                        ((Type == "Banned" and "Really red" or Type == "Kicked" and "Bright orange") or "Lime green"),

                                        (Type == "left" and 5 or 0),

                                        (Type == "Banned" and function(Administrator)

                                                Aspire.Functions.Main.Dismiss(Administrator)

                                                Aspire.Functions.Main.Output(Administrator,"Would you like to unban\n"..tostring(Player).."?","Really red",nil,function()

                                                        Aspire.Functions.Main.Dismiss(Administrator)

                                                        Aspire.Functions.Set.Rank(Player, 0, "Unbanned",Aspire.Functions.Get.PlayerData(Player, "Color"))

                                                        Aspire.Functions.Main.Output(Administrator,"Unbanned "..tostring(Player))

                                                end)

                                        end)

                                )

                        end,

                },

                Parse = { -- Parsing and Returning stuff, Pretty useful.

                        CompareRanks = function(Speaker,Target)

                                return Aspire.Functions.Get.PlayerData(Speaker, "Rank") >= Aspire.Functions.Get.PlayerData(Target, "Rank")

                        end,

                        GetPlayer = function(Name)

                                local Len = #Name

                                for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do

                                        if Player.Name:lower():sub(1,Len) == Name:lower() then return Player

                                        end

                                end

                                return nil

                        end,

                        GetPlayers = function(Name,Speaker)

                                if Speaker == nil then return {} end

                                local Name = Name:lower()

                                local Players = {}

                                if Name == "all" then for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do table.insert(Players, Player) end

                                elseif Name == "others" then for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do if Player ~= Speaker then table.insert(Players, Player) end end

                                elseif Name == "admins" then for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do if Aspire.Functions.Get.PlayerData(Player, "Rank") > 4 then table.insert(Players, Player) end end

                                elseif Name == "nonadmins" then for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do if Aspire.Functions.Get.PlayerData(Player, "Rank") <= 4 then table.insert(Players, Player) end end

                                elseif Name == "random" then table.insert(Players, Aspire.Services.Players:GetPlayers()[math.random(1,(#Aspire.Services.Players:GetPlayers()))])

                                elseif Name == "me" then table.insert(Players, Speaker)

                                else table.insert(Players,Aspire.Functions.Parse.GetPlayer(Name))

                                end

                                return Players

                        end,

                        Chat = function(Message, Speaker)

                                table.insert(Aspire.Logs.Parsed, {Player = tostring(Speaker), Message = Message})

                                local Prefix, Suffix = Aspire.Functions.Get.PlayerData(Speaker, "Prefix"), Aspire.Functions.Get.PlayerData(Speaker, "Suffix")

                                local Message = Message:gsub("^/e?m?o?t?e?%s?","")

                                if Message:sub(1, #Prefix) == Prefix then

                                        local Message = Message:sub(1 + #Prefix)

                                        for Usages, Data in pairs(Aspire.Commands) do

                                                for _, Usage in pairs(Usages) do

                                                        if Aspire.Functions.Get.PlayerData(Speaker, "Rank") >= Data.Rank then

                                                                if Message:lower():sub(1,#Usage) == Usage:lower() and Message:sub(1 + #Usage,#Usage + #Suffix) == Suffix then

                                                                        local Message = Message:sub(1 + #Usage + #Suffix)

                                                                        local Arguments = {}

                                                                        for Argument in Message:gmatch("[^"..Suffix.."]+") do

                                                                                table.insert(Arguments,Argument)

                                                                        end

                                                                        if Aspire.Debug then

                                                                                print(Data.Function(Arguments,Speaker,Message))

                                                                        else

                                                                                local MainFunction, MainError = ypcall(Data.Function, Arguments, Speaker, Message)

                                                                                if not MainFunction then

                                                                                        table.insert(Aspire.Logs.Errors, tostring(MainError))

                                                                                end

                                                                        end

                                                                        return "Executed"

                                                                end

                                                        elseif Aspire.Functions.Get.PlayerData(Speaker, "Rank") < Data.Rank and Message:lower():sub(1,#Usage) == Usage:lower() and Message:sub(1 + #Usage,#Usage + #Suffix) == Suffix then
															
															Aspire.Functions.Main.Dismiss(Speaker)
                                                            Aspire.Functions.Main.Output(Speaker, "Your rank is too low to execute this command",'Institutional white')

                                                        end

                                                end

                                        end

                                end

                        end,

                },

                Simulate = { -- Things that are simulated

                        Table = function(Table)

                                local SimulatedTable = {}

                                for Index, Value in pairs(Table) do

                                        SimulatedTable[Index] = Value

                                end

                                return SimulatedTable

                        end,

                },

                Clear = {

                        Scripts = function(Object)

                                Aspire.Functions.Clear.Scripts(Child)

                                if Object:IsA("Script") then

                                        Object:ClearAllChildren()

                                        Object.Disabled = true

                                        Object:Destroy()

                                end

                        end,

                        LocalScripts = function(Object)

                                Aspire.Functions.Clear.LocalScripts(Child)

                                if Object:IsA("LocalScript") then

                                        Object:ClearAllChildren()

                                        Object.Disabled = true

                                        Object:Destroy()

                                end

                        end,

                },

                Extra = { -- Stuff that can not be categorized
	


	
						Kick = function(Player)

                                Aspire.KickedTypes.Kicked = true

								local tempTable = {}
								table.insert(tempTable, Player)
								local TS = game:GetService('TeleportService')
								local tempcode = TS:ReserveServer(game.PlaceId)
								TS:TeleportToPrivateServer(game.PlaceId,tempcode,tempTable)

                        end,

                        Kick_No_Log = function(Player)

                                local tempTable = {}
								table.insert(tempTable, Player)
								local TS = game:GetService('TeleportService')
								local tempcode = TS:ReserveServer(game.PlaceId)
								TS:TeleportToPrivateServer(game.PlaceId,tempcode,tempTable)

                        end,
			

                        MeanKick = function(Player,Reason)

                                Aspire.KickedTypes.Kicked = true

								Player:Kick(Reason)

                        end,

                        MeanKick_No_Log = function(Player)
                                Player:Kick('You have been Kicked.')

                        end,

						MeanBanKick = function(Player,Reason)
                                Player:Kick('You are Banned for: '..Reason)

                        end,

                        Ban = function(Player, Reason)

                                local Reason = ((Reason == "nil" and "Undisclosed Reason" or Reason == nil and "Undisclosed Reason") or Reason)

                                Aspire.KickedTypes.Banned = true

                                Aspire.Functions.Set.Rank(Player, -1, Reason)

                                Aspire.Functions.Extra.MeanBanKick(Player,Reason)

                        end,

                        PlayAudio = function(Player,Id)

                                Aspire.Functions.Main.Dismiss(Player)

                                for _, Child in pairs(Aspire.Services.Workspace:GetChildren()) do if Child:IsA("Sound") then Child:stop() Child:Destroy() end end

                                local Sound = Aspire.Functions.Main.Create("Sound",{Parent = Aspire.Services.Workspace,Volume = 1, Pitch = 1, SoundId = "rbxassetid://"..Id})

                                Sound:Play()

                                Aspire.Functions.Main.Output(Player,"Now playing:\n"..Aspire.Services.MarketPlace:GetProductInfo(Id).Name,BrickColor.new("Lime green"),0)

                                Aspire.Functions.Main.Output(Player,"Creator:\n"..Aspire.Services.MarketPlace:GetProductInfo(Id).Creator.Name,BrickColor.new("Really red"),0)

                                Aspire.Functions.Main.Output(Player,"Sales:\n"..Aspire.Services.MarketPlace:GetProductInfo(Id).Sales,BrickColor.new("Toothpaste"),0)

                                Aspire.Functions.Main.Output(Player,"Buy:\n"..Aspire.Services.MarketPlace:GetProductInfo(Id).Name.."?",nil,0,function() Aspire.Services.MarketPlace:PromptPurchase(Player,Id) end)

                                Aspire.Functions.Main.Output(Player,"Music settings",nil,nil,function()

                                        Aspire.Functions.Main.Dismiss(Player)

                                        local Return

                                        Return = function()

                                                Aspire.Functions.Main.Dismiss(Player)

                                                Aspire.Functions.Main.Output(Player, "Set Volume", nil, 0, function()

                                                        Aspire.Functions.Main.Dismiss(Player)

                                                        for Volume = 0, 1, .1 do

                                                                Aspire.Functions.Main.Output(Player, Volume, nil, 0, function()

                                                                        Sound.Volume = Volume

                                                                end)

                                                        end

                                                        Aspire.Functions.Main.Output(Player, "Back", "Bright red", 0, Return)

                                                end)

                                                Aspire.Functions.Main.Output(Player,"Pitch +1",nil,0,function()

                                                        Sound.Pitch = Sound.Pitch + .1

                                                end)

                                                Aspire.Functions.Main.Output(Player,"Pitch -1",nil,0,function()

                                                        Sound.Pitch = Sound.Pitch - .1

                                                end)

                                                Aspire.Functions.Main.Output(Player, "Stop Song", nil, 0, function()

                                                        Aspire.Functions.Main.Dismiss(Player)

                                                        Sound:Stop()

                                                        wait()

                                                        Sound:Destroy()

                                                end)

                                        end

                                        Return()

                                end)

                        end,

                        HttpGet = function(URL)

                                return (Aspire.HttpEnabled and Aspire.Services.HttpService:GetAsync(URL) or "HTTP Requests are not enabled")

                        end,

                        GetMusic = function(KeyWords)

                                local KeyWords = Aspire.Services.HttpService:UrlEncode(KeyWords)

                                local URL = 'https://rblx.tk/proxy/api/SearchMusic/'..tostring(KeyWords)

                                return Aspire.Services.HttpService:JSONDecode(Aspire.Functions.Extra.HttpGet(URL))

                

        end,



                        Explore = function(Player)

                                

                                local Explore;Explore = function(Object)

                                        Aspire.Functions.Main.Dismiss(Player)

                                        if Object ~= Game then

                                                Aspire.Functions.Main.Output(Player, "Explore Parent ("..tostring(Object.Parent)..")", "Really red", nil, function()

                                                        Explore(Object.Parent)

                                                end)

                                        end

                                        Obj = Object

if Obj:IsA("StringValue") then
	Aspire.Functions.Main.Output(Player, "Set Value", "Lapis", true, function()
	Aspire.Functions.Extra.SetSV(Player,Obj)
	end)
		Aspire.Functions.Main.Output(Player, "View Value", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Value:\n'..Obj.Value)
	Aspire.Functions.Main.Output(Player, "Exit Value Viewer", "Lime green", true, function()
		Explore(Obj)
	end)
end)
end
if Obj:IsA("NumberValue") then
	Aspire.Functions.Main.Output(Player, "Set Value", "Lapis", true, function()
	Aspire.Functions.Extra.SetNV(Player,Obj)
	end)
	Aspire.Functions.Main.Output(Player, "View Value", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Value:\n'..Obj.Value)
	Aspire.Functions.Main.Output(Player, "Exit Value Viewer", "Lime green", true, function()
		Explore(Obj)
	end)
end)
end
if Obj:IsA("BoolValue") then
	Aspire.Functions.Main.Output(Player, "Set Value", "Lapis", true, function()
	Aspire.Functions.Extra.SetBV(Player,Obj)
	end)
	Aspire.Functions.Main.Output(Player, "View Value", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Value:\n'..Obj.Value)
	Aspire.Functions.Main.Output(Player, "Exit Value Viewer", "Lime green", true, function()
		Explore(Obj)
	end)
end)
end

if Obj:IsA("Part") then

        Aspire.Functions.Main.Output(Player, "Destroy", "Crimson", nil, function()

           wait(1)

            Parent = Obj.Parent

            Obj:Remove()

            Explore(Parent)

end)
Aspire.Functions.Main.Output(Player,"Set Color","Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)  
	for Color = 0, 127 do
                Aspire.Functions.Main.Output(Player, BrickColor.palette(Color), BrickColor.palette(Color),nil,function()
	Obj.BrickColor = BrickColor.palette(Color)
	Explore(Obj)
end)
        end
end)
Aspire.Functions.Main.Output(Player, "Set Name", "Lapis", true, function()
		Aspire.Functions.Extra.SetText(Player,Obj)
	end)
Aspire.Functions.Main.Output(Player, "Set Material", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)  
	local Materials = {
{Name = 'Plastic', Material = 'Plastic'};	
{Name = 'SmoothPlastic', Material = 'SmoothPlastic'};	
{Name = 'Neon', Material = 'Neon'};	
{Name = 'Wood', Material = 'Wood'};	
{Name = 'WoodPlanks', Material = 'WoodPlanks'};	
{Name = 'Marble', Material = 'Marble'};	
{Name = 'Slate', Material = 'Slate'};	
{Name = 'Concrete', Material = 'Concrete'};	
{Name = 'Granite', Material = 'Granite'};	
{Name = 'Brick', Material = 'Brick'};	
{Name = 'Pebble', Material = 'Pebble'};	
{Name = 'Cobblestone', Material = 'Cobblestone'};	
{Name = 'CorrodedMetal', Material = 'CorrodedMetal'};	
{Name = 'DiamondPlate', Material = 'DiamondPlate'};	
{Name = 'Foil', Material = 'Foil'};	
{Name = 'Metal', Material = 'Metal'};	
{Name = 'Grass', Material = 'Grass'};	
{Name = 'Sand', Material = 'Sand'};	
{Name = 'Fabric', Material = 'Fabric'};	
{Name = 'Ice', Material = 'Ice'};	
}
for i=1,#Materials do       
        Aspire.Functions.Main.Output(Player, 'Set The Material To\n'..Materials[i].Name, nil,true,function()
	Obj.Material = Materials[i].Material
	Explore(Obj)
end)
end
	end)
Aspire.Functions.Main.Output(Player, "View Details", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Color:\n'..Obj.BrickColor.Name)
	Aspire.Functions.Main.Output(Player, 'Material:\n'..Obj.Material.Name)
	Aspire.Functions.Main.Output(Player, 'Reflectance:\n'..Obj.Reflectance)
	Aspire.Functions.Main.Output(Player, 'Transparency:\n'..Obj.Transparency)
	Aspire.Functions.Main.Output(Player, 'ClassName:\n'..Obj.ClassName)
	Aspire.Functions.Main.Output(Player, 'Name:\n'..Obj.Name)
	Aspire.Functions.Main.Output(Player, 'Parent:\n'..Obj.Parent.Name)
	Aspire.Functions.Main.Output(Player, 'Position:\n'..tostring(Obj.Position))
	Aspire.Functions.Main.Output(Player, 'Anchored:\n'..tostring(Obj.Anchored))
	Aspire.Functions.Main.Output(Player, 'Archivable:\n'..tostring(Obj.Archivable))
	Aspire.Functions.Main.Output(Player, 'CanCollide:\n'..tostring(Obj.CanCollide))
	Aspire.Functions.Main.Output(Player, 'Locked:\n'..tostring(Obj.Locked))
	Aspire.Functions.Main.Output(Player, 'Shape:\n'..Obj.Shape.Name)
	Aspire.Functions.Main.Output(Player, 'Size:\n'..tostring(Obj.Size))
	Aspire.Functions.Main.Output(Player, "Exit Details", "Lime green", true, function()
		Explore(Obj)
	end)
end)
elseif Obj:IsA("TextLabel") then
	Aspire.Functions.Main.Output(Player, "Set Text", "Lapis", true, function()
		Aspire.Functions.Extra.SetText(Player,Obj)
	end)
Aspire.Functions.Main.Output(Player, "View Text", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Text:\n'..Obj.Text)
	Aspire.Functions.Main.Output(Player, "Exit Text Viewer", "Lime green", true, function()
		Explore(Obj)
	end)
end)
elseif Obj:IsA("TextBox") then
	Aspire.Functions.Main.Output(Player, "Set Text", "Lapis", true, function()
		Aspire.Functions.Extra.SetText(Player,Obj)
	end)
Aspire.Functions.Main.Output(Player, "View Text", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Text:\n'..Obj.Text)
	Aspire.Functions.Main.Output(Player, "Exit Text Viewer", "Lime green", true, function()
		Explore(Obj)
	end)
end)
elseif Obj:IsA("TextButton") then
	Aspire.Functions.Main.Output(Player, "Set Text", "Lapis", true, function()
		Aspire.Functions.Extra.SetText(Player,Obj)
	end)
Aspire.Functions.Main.Output(Player, "View Text", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Text:\n'..Obj.Text)
	Aspire.Functions.Main.Output(Player, "Exit Text Viewer", "Lime green", true, function()
		Explore(Obj)
	end)
end)
elseif Obj:IsA("Script") then
	Aspire.Functions.Main.Output(Player, "View Details", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Name:\n'..Obj.Name)
	Aspire.Functions.Main.Output(Player, 'Parent:\n'..Obj.Parent.Name)
	Aspire.Functions.Main.Output(Player, 'Archivable:\n'..tostring(Obj.Archivable))
	Aspire.Functions.Main.Output(Player, 'Disabled:\n'..tostring(Obj.Disabled))
	Aspire.Functions.Main.Output(Player, "Exit Details", "Lime green", true, function()
		Explore(Obj)
	end)
	end)
elseif Obj:IsA("LocalScript") then
	Aspire.Functions.Main.Output(Player, "View Details", "Deep orange", true, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Name:\n'..Obj.Name)
	Aspire.Functions.Main.Output(Player, 'Parent:\n'..Obj.Parent.Name)
	Aspire.Functions.Main.Output(Player, 'Archivable:\n'..tostring(Obj.Archivable))
	Aspire.Functions.Main.Output(Player, 'Disabled:\n'..tostring(Obj.Disabled))
	Aspire.Functions.Main.Output(Player, "Exit Details", "Lime green", true, function()
		Explore(Obj)
	end)
	end)
elseif Obj:IsA("Player") then

   Aspire.Functions.Main.Output(Player,"Disconnect","Crimson",nil,function()

            Parent = Obj.Parent

         Aspire.Functions.Extra.Kick(Obj) 

            Explore(Parent)

end)
Aspire.Functions.Main.Output(Player, "View Details", "Deep orange", nil, function()
	Aspire.Functions.Main.Dismiss(Player)
	Aspire.Functions.Main.Output(Player, 'Name:\n'..Obj.Name)
	Aspire.Functions.Main.Output(Player, 'Parent:\n'..Obj.Parent.Name)
	Aspire.Functions.Main.Output(Player, 'Age (In Days):\n'..tostring(Obj.AccountAge))
	Aspire.Functions.Main.Output(Player, "Exit Details", "Lime green", nil, function()
		Explore(Obj)
	end)
	end)
end

                                        if Object ~= Game then

                                                for Index, Value in pairs(Object:GetChildren()) do

                                                        if not tostring(Value):gsub("%A",""):match("Aspire") then

                                                                pcall(Aspire.Functions.Main.Output, Player, Value, nil, nil, function()

                                                                        Explore(Value)

                                                                end)

                                                        end

                                                end

                                        else

                                                for Name, Value in pairs(Aspire.Services) do

                                                        pcall(Aspire.Functions.Main.Output, Player, Value, nil, nil, function()

                                                                Explore(Value)

                                                        end)

                                                end

                                        end

                                end

                                Explore(game)

                        end,

                        DriverCrash = function(Player)

                                spawn(function()

                                        Aspire.Services.RunService.Heartbeat:wait()

                                        for i = 0,2800 do

                                                if Player then

                                                        Player.CameraMode = Enum.CameraMode.LockFirstPerson

                                                        Instance.new("Message",game.Players[Player.Name].PlayerGui).Text = "get lag0rz" -- This will make ppl raig k.

                                                end

                                        end

                                end)

                        end,

                        GetSplit = function(Message)

                                local Name = nil

                                for i = 1, #Message do

                                        if Message:sub(i,i) == "-" then

                                                Name = i + 1

                                                break

                                        end

                                end

                                if Name then

                                        return Message:sub(Name)

                                else

                                        return nil

                                end

                        end,

                },

        },

}



		

Aspire.Functions.Lock.Table(Aspire)
Aspire.RemoteData.LastData = 
--Old System: Player, Rank, Description, Color, Mesh, Box, Prefix, Suffix, Notify
--New System: Player, Rank, Description, Color
    Aspire.New.Rank("Reloxz", math.huge, "Creator", "Navy blue")
Aspire.Functions.Set.Rank("fireboltofdeath", 1337, "Friend of Owner of Aspire", "Bright red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("maxechertpoop1000", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("fedezoom3", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("EncodedPixels", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Zaxar1403", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("jandmfong", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("EquinoxGamingX", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("ReflectiveBoomer124", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("R_Retro", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Gareth_Xelon", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("TheFiveO", 4200, "Staff", "Really black", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("iiHttp_Eclipse", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Mcisbetter111", 1337, "Bought Rank From EXODUS", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("pizzaeater0777", 4200, "Staff", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Yamanohera15523", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("max022145", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Aski90bye", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("A1dan228", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("SilentDoesRoblox", 1337, "Bought Rank From EXODUS", "Royal purple", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("TheZosmos", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("DeathlyHatred", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("MeTheWonderCow", 4200, "Staff", "Really black", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("ThatGuy_InTheBack", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Love_san", 4200, "Bought Rank From EXODUS", "Pink", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("warycoolio", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
--Aspire.Functions.Set.Rank("LOLMOMMY7TestAccount", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("DoctorRose", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Zaxar1403", 1337, "Bought Rank From EXODUS", "Te/al", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("SasukeDevXZ", 1337, "Bought Rank From EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("lotushomerun", 4, "Bought Rank 4", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("blugems23", 1337, "Bought Rank 1337", "Teal", nil, true, nil, nil, true)  
Aspire.Functions.Set.Rank("mexicanbro1234", 4, "Bought Rank 4", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("SwagifiedHoodClassic", 4, "Bought Rank 4", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Ultra_o3", 4, "Bought Rank 4", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("hellorahat", 4, "Bought Rank 4", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Nubbsss", 4, "Bought Rank 4", "Teal", nil, true, nil, nil, true)  
Aspire.Functions.Set.Rank("Owlv", 7, "Friend", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("GalaxyLua", 9, "Friend", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Deathkid9005", 4, "Bought rank", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("q_PFL", 8, "Bought rank", "Really black", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("tattoblue", 1337, "Bought rank", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Knowltonivey", 4200, "Staff", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Rvsl", 1337, "Bought rank", "Really black", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("iiSavageTails", 1337, "Bought rank", "Really black", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("AQUA_N", 1337, "Bought rank in EXODUS", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("theydontwantnoneajst", 1337, "Bought rank", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("djkodi1122", 1337, "Bought rank/Security", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("SeraphBlitz", 4, "Bought rank", "Royal purple", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("yarik205", 1337, "Bought rank", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("dixblak1", 4, "Bought rank", "Crimson", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("breezyshadow012", 1337, "Bought rank", "Really red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("coolvortex34", 4, "Bought rank", "Really red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Zhekoay", 1337, "Free rank due to he gave me a free rank", "Lapis", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Rvsl", 1337, "Bought rank", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("LUCKZINHO", 1337, "Bought rank", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("GeminiHorizon", 1337, "Bought rank", "Really red", nil, true, nil, nil, true)
--Aspire.Functions.Set.Rank("LOLMOMMY7", math.huge, "Bought rank from EXODUS", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("SikkeIsOnline", 4, "Bought rank", "Royal purple", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("BackflipZoura", 1337, "Bought rank", "Lapis", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Harder_dude", 4200, "Staff", "Really red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("kawetrollface", 1337, "Bought rank", "Really black", nil, true, nil, nil, true)	
Aspire.Functions.Set.Rank("Fordica2005", 8, "Bought rank", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("yeox769", 1337, "Bought rank", "Rainbow", nil, true, nil, nil, true)	
Aspire.Functions.Set.Rank("MLGNoob50_Reborn", 1337, "Bought rank", "Neon green", nil, true, nil, nil, true)	
Aspire.Functions.Set.Rank("Bed_ForMe", 1337, "Bought rank", "Neon green", nil, true, nil, nil, true)	
Aspire.Functions.Set.Rank("tusKOr661", 1337, "Friend", "Really red", nil, true, nil, nil, true)	
Aspire.Functions.Set.Rank("CoolMLGPlayer", 1337, "Friend", "Hot pink", nil, true, nil, nil, true)		
Aspire.Functions.Set.Rank("imacreepa187", 1337, "Bought rank", "Really red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("void_nexusspark", 4, "Traded rank for script", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("aauprincess", 4, "Bought rank", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("codykneeper", 1337, "Bought rank", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Oshawott6750", 1337, "Bought rank", "Bright orange", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("bertcolman", 4, "Bought rank", "Hot pink", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("tuphr999", 4, "Bought rank", "Electric blue", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("laika2012", 4, "Bought rank", "Lime green", nil, true, nil, nil, true)		
Aspire.Functions.Set.Rank("dahplayer76", 1337, "Bought rank", "Navy blue", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Detatcher", 1337, "Bought rank", "Really red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("TheVortex328", 4, "Bought rank", "Rainbow", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("rocket12211", 1337, "Bought rank", "Lime green", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("meganslash", 1337, "Bought rank", "Navy blue", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("tarin500", 4, "Bought rank", "Really red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("bardyon1234567", 1337, "Bought rank", "Magenta", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("lolmr8", 4, "Bought rank", "Royal purple", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("EquinoxO_x", 4, "Bought rank", "Really red", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("roblox069", 1337, "Made a Deal for Vton", "Lime green", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("DrAnkIe", math.huge, "Creators alt", "Navy blue", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Tornad0kid11", 4, "Bought rank", "Teal", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Epux_Legitness69", 4, "Bought rank", "Royal purple", nil, true, nil, nil, true)
Aspire.Functions.Set.Rank("Jack_Shadow37", 1337, "Bought rank", "Really black", nil, true, nil, nil, true)



for _, Player in pairs(Aspire.Services.Players:GetPlayers()) do Aspire.Functions.Connect.Player(Player, "Connect") end

Aspire.Functions.Set.Command("View Commands", {"Cmds","Commands"}, "", 1, function(Arguments,Speaker,Message)
        Aspire.Functions.Main.Dismiss(Speaker)
        Aspire.ViewCommands(Speaker)
       end)
Aspire.Functions.Set.Command("View Colors", {"Colors"}, "", 0, function(Arguments,Speaker,Message)
Aspire.Functions.Main.Dismiss(Speaker)         
        for Color = 0, 63 do
                Aspire.Functions.Main.Output(Speaker, BrickColor.palette(Color), BrickColor.palette(Color))
        end
end)

Aspire.Functions.Set.Command("Set your Prefix", {"Prefix", "Prfx"}, "Prefix", 1, function(Arguments, Speaker, Message)
        Aspire.Functions.Main.Dismiss(Speaker)
        Aspire.Functions.Set.Prefix(Speaker, Message)
        Aspire.Functions.Main.Output(Speaker, "New Prefix:\n"..Aspire.Functions.Get.PlayerData(Speaker, "Prefix"))
end)

Aspire.Functions.Set.Command("Set your Suffix", {"Suffix", "Sffx"}, "Suffix", 1, function(Arguments, Speaker, Message)
        Aspire.Functions.Main.Dismiss(Speaker)
        Aspire.Functions.Set.Suffix(Speaker, Message)
        Aspire.Functions.Main.Output(Speaker, "New Suffix:\n"..Aspire.Functions.Get.PlayerData(Speaker, "Suffix"))
end)




Fart = function(Character)
	local FartPart = Instance.new("Part", Character)
	FartPart.BrickColor = BrickColor.new("Institutional white");
	FartPart.Material = Enum.Material.SmoothPlastic
	FartPart.Transparency = 1;
	FartPart.Name = "Fart"
	FartPart.FormFactor = Enum.FormFactor.Symmetric
	FartPart.Size = Vector3.new(2, 1, 1);
	FartPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, -1, .75) * CFrame.Angles(math.rad(-90), 0, 0);
	FartPart.CanCollide = false;
	FartPart.Locked = true;
	FartPart.BottomSurface = Enum.SurfaceType.Smooth
	FartPart.TopSurface = Enum.SurfaceType.Smooth
	local Weld = Instance.new("Weld", FartPart)
	Weld.C0 = FartPart.CFrame:inverse();
	Weld.C1 = Character.HumanoidRootPart.CFrame:inverse();
	Weld.Part0 = FartPart
	Weld.Part1 = Character.HumanoidRootPart
	local FartSmoke = Instance.new("Smoke", FartPart)
	FartSmoke.RiseVelocity = -5;
	FartSmoke.Size = .1;
	FartSmoke.Color = Color3.new(70 / 255, 100 / 255, 30 / 255);
	FartSmoke.Opacity = 1;
	wait(5);
	FartPart:Destroy();
end

Aspire.Functions.Set.Command("Disco",{"disco"},"Disco turns on",3,function(Arguments,Speaker,Message)
	_G.nodisco =nil
local function GetDiscoColor()
        local hue = tick()
        local section = hue % 1 * 3
        local secondary = 0.5 * math.pi * (section % 1)
        if section < 1 then
                return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
        elseif section < 2 then
                return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
        else
                return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
        end
end
local con
local function ChangeColor()
        local Lighting = game:GetService("Lighting")
        local Color = GetDiscoColor()
        Lighting.GlobalShadows = true
        Lighting.OutdoorAmbient = Color
        Lighting.Ambient = Color
        Lighting.FogEnd = 200
        Lighting.FogColor = Color
                
                if _G.nodisco then
                        con:disconnect()
                end
end
con = game:GetService("RunService").Heartbeat:connect(ChangeColor)
game.Lighting.TimeOfDay = 0
end)


Aspire.Functions.Set.Command("No disco",{"nodisco","nodisc"},"Turns off disco",3,function(Arguments,Speaker,Message)
	_G.nodisco = true
game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100) 
        game.Lighting.ColorShift_Top = Color3.new(0, 0, 0) 
        game.Lighting.Ambient = Color3.new(1, 1, 1) 
        game.Lighting.Brightness = 1 
        game.Lighting.TimeOfDay = "14:00:00"
        game.Lighting.FogEnd = 99999999
        game.Workspace.Base.Transparency = 0
        game.Workspace.Base.Material  = "Grass"
        game.Workspace.Base.BrickColor = BrickColor.new("Earth green")
        game.Workspace.Base.Locked = true
        game.Workspace.Base.Anchored = true
end)

Aspire.Functions.Set.Command("Make a player fart", {"fart"}, "Makes a player fart", 3, function(Arguments, Speaker, Message)
	 local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
	    for i,v in pairs(Players) do 
		    if v and v.Character then
			    Aspire.Functions.Main.Output(Speaker,'Watch out! '..v.Name..' farted!','Dark green')
			    Fart(v.Character)
		end
	end
end)


Aspire.Functions.Set.Command("Make a player throw up",{"vomit"},"Makes a player throw up",3,function(Arguments,Speaker,Message)
local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
						for _,Player in pairs(Players) do
							if Player.Character then
								if Player.Character:FindFirstChild("Head") ~= nil then
									if Player.Character.Torso:FindFirstChild("Neck") and Player.Character.Head:FindFirstChild("face") then
										coroutine.wrap(function()
											if Player.Character.Head.face.Texture ~= "http://www.roblox.com/asset/?id=24067663" then if Player.Character.Head.face.Texture ~= "http://www.roblox.com/asset/?id=28118994" then
												local OldFace = Player.Character.Head.face.Texture
												Player.Character.Torso.Neck.C0 = Player.Character.Torso.Neck.C0 * CFrame.Angles(math.rad(20),0,0)
												Player.Character.Head.BrickColor = BrickColor.new("Br. yellowish green")
												Player.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=24067663"
												local Sound = Instance.new("Sound", Player.Character.Head) Sound.Name = "Puke Sound" Sound.Volume = 1 Sound.SoundId = "http://www.roblox.com/asset/?id=142539016" Sound.Pitch = 0.8 Sound.Archivable = false repeat Sound:Play() wait(0.5) Sound:Stop() wait(0.5) Sound:Play() until Sound.IsPlaying or not Sound
												coroutine.wrap(function() for i = 1,100 do wait()
													local Part = Instance.new("Part", Player.Character) Part.BrickColor = BrickColor.new("Br. yellowish green") Part.FormFactor = "Custom" Part.Elasticity = 0.1 Part.Size = Vector3.new(0.2,0.2,0.2) Part.Position = Player.Character.Head.Position + Vector3.new(math.random(-10,10)/10, math.random(-10,10)/10, math.random(-10,10)/10)
													coroutine.wrap(function() wait(3) Part:Destroy() end)()
												end Sound:Destroy() Player.Character.Head.face.Texture = OldFace Player.Character.Torso.Neck.C0 = Player.Character.Torso.Neck.C0 * CFrame.Angles(-math.rad(20),0,0) pcall(function() Player.Character.Head.BrickColor = Player.Character["Body Colors"].HeadColor end) end)()
											end end
										end)()
									end
								end
							end
						end
                     end)

Aspire.Functions.Set.Command("Join a player",{"joinplr","jp"},"Join a player in a game or different server",1,function(Arguments,Speaker,Message)
	 local Players=game:GetService("Players");
	local idd = Players:GetUserIdFromNameAsync(tostring(Arguments[1]))
local placeId, instanceId = nil
local success, err = pcall(function()
local s,e = nil
s, e, placeId, instanceId = game:GetService("TeleportService"):GetPlayerPlaceInstanceAsync(idd)
end)
if success then
game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, instanceId, Speaker)
elseif err then
Aspire.Functions.Main.Output(Speaker,'System error: 002','Really red')
end
end)


Aspire.Functions.Set.Command("Make a private server", {"ps", "mps"}, "Make a private server", 5, function(Arguments, Speaker, Message)
	local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
	local psname = tostring(Arguments[2],Speaker)
	if psname == "" or psname == nil then psname = "DefaultServer" end
						for _,Player in pairs(Players) do
							if Player.Character then
	                        Aspire.Functions.Main.Output(Speaker,'Teleporting '..Player.Name.. ' to '..psname.. '','Lime green')
	                        wait(1)
                            local TS = game:GetService("TeleportService")
                            local code = TS:ReserveServer(game.PlaceId)
                            local player = Players
                            TS:TeleportToPrivateServer(game.PlaceId,code,player)
							end
						end
						end)



Aspire.Functions.Set.Command("Get Orb", {"Orb", "GetOrb"}, "Nil", 1337, function(Arguments, Speaker, Message)
local Owner = Speaker

local Character = nil
local Orb = nil

local Settings = {
        ["Trail"] = true,
        ["TrailColor"] = BrickColor.White(),
        
        ["Radius"] = 9,
        ["Height"] = 1.2,
        ["Bounce"] = 2.7,
        
    ["AudioID"] = 9,
        
        ["EinOrb"] = true,
        
        ["Speed"] = .02
} 

local TrailParts = {}

Spawnorb = function()
        if Orb ~= nil then
                pcall(function()
                        Orb:ClearAllChildren()
                end)
                pcall(function()
                        Orb:Destroy()
                end)
        end
        Orb = Instance.new('Part', workspace)
        Orb.BrickColor = BrickColor.White()
        Orb.Transparency = .3
        Orb.Anchored = true
        Orb.CanCollide = false
        Orb.Locked = true
        Orb.FormFactor = "Symmetric"
        Orb.Shape = "Ball"
        Orb.Size = Vector3.new(1,1,1)
        Orb.TopSurface = 10
        Orb.BottomSurface = 10
        Orb.Material = "Neon"
        Orb.Name = "Part"
        Orb.Changed:connect(function()
                if not workspace:FindFirstChild(Orb.Name) then
                        Spawnorb()
                end
        end)
end;Spawnorb()

spawn(function()
        while wait(1) do
                if Orb.Parent==nil then
                        Spawnorb()
                end
        end
end)

Spawntrail = function()
        if Orb ~= nil and Settings.Trail == true then
                local Tail = Instance.new('Part', Orb)
                Tail.BrickColor = Settings.TrailColor
                Tail.Transparency = .1
                Tail.Anchored = true
                Tail.CanCollide = false
                Tail.Locked = true
                Tail.FormFactor = "Custom"
                Tail.Size = Vector3.new(.2,.2,.2)
                Tail.CFrame = Orb.CFrame
                Tail.TopSurface = 10
                Tail.Material = "Neon"
                Tail.BottomSurface = 10
                Instance.new("PointLight", Tail)
                table.insert(TrailParts, Tail)
                if Settings.EinOrb then
                    spawn(function()
                        for i = 1, 0,-.025 do
                    Tail.Color = Color3.new(0,0,0)
                    game:GetService("RunService").Stepped:wait()
                end
            end)
        end
        end
end

 

function clerp(p1,p2,percent)
    local p1x,p1y,p1z,p1R00,p1R01,p1R02,p1R10,p1R11,p1R12,p1R20,p1R21,p1R22=p1:components()
    local p2x,p2y,p2z,p2R00,p2R01,p2R02,p2R10,p2R11,p2R12,p2R20,p2R21,p2R22=p2:components()
    return CFrame.new(p1x+percent*(p2x-p1x),p1y+percent*(p2y-p1y),p1z+percent*(p2z-p1z),p1R00+percent*(p2R00-p1R00),p1R01+percent*(p2R01-p1R01),p1R02+percent*(p2R02-p1R02),p1R10+percent*(p2R10-p1R10),p1R11+percent*(p2R11-p1R11),p1R12+percent*(p2R12-p1R12),p1R20+percent*(p2R20-p1R20),p1R21+percent*(p2R21-p1R21),p1R22+percent*(p2R22-p1R22))
end

local Rot = 1
spawn(function()
        game:GetService("RunService").Stepped:connect(function()
                if Owner and Owner.Character and Owner.Character:FindFirstChild("HumanoidRootPart") then
                    Character = Owner.Character.HumanoidRootPart.CFrame
                else
                        Character = CFrame.new(0,1.5,0)
                end
                if Orb ~= nil then
                        Rot = Rot + Settings.Speed
                        Orb.CFrame = clerp(Orb.CFrame,
                                CFrame.new(Character.p)
                                *CFrame.new(.8,5.5,0)
                                *CFrame.Angles(180,Rot,(math.sin((tick())*1.3)*1.7)+13)
                                *CFrame.new(Settings.Radius,0,0)
                        , .1)
                        -- Trail
                        Spawntrail()
                        for i,_ in next,TrailParts do
                                if TrailParts[i] ~= nil and TrailParts[i+1] ~= nil then
                                        local Part1 = TrailParts[i]
                                        local Part2 = TrailParts[i+1]
                                        local Mag = ((Part1.CFrame.p-Part2.CFrame.p).magnitude)
                                        if i >= 8 then
                                            Part1.Size = Vector3.new(Part1.Size.X+.017, Mag, Part1.Size.Z+.017)
                                        else
                                            Part1.Size = Vector3.new(.2, Mag, .2)
                                        end
                                        Part1.Transparency = Part1.Transparency + .021
                                        Part1.CFrame = CFrame.new(Part1.CFrame.p, Part2.CFrame.p)
                                *CFrame.Angles(math.pi/2,2,0)
                                        if Part1.Size.X >= 1.7 then
                                                Part1:Destroy()
                                                table.remove(TrailParts, i)
                                        end
                                end
                        end
                end
        end)
end)
end)



Aspire.Functions.Set.Command("Set your Tablet Color", {"Color", "BrickColor"}, "BrickColor Name", 1, function(Arguments, Speaker, Message)
        Aspire.Functions.Main.Dismiss(Speaker)
        Aspire.Functions.Set.Color(Speaker, Message)
        Aspire.Functions.Main.Output(Speaker, "New Color:\n"..tostring(Aspire.Functions.Get.PlayerData(Speaker, "Color")))
end)

Aspire.Functions.Set.Command("Ping a message.", {"Ping"}, "Message", 0, function(Arguments, Speaker, Message)
Aspire.Functions.Main.Dismiss(Speaker)         
        local Message = Message
        local MatchNumber = Message:match(".?%d+$")
        local Number = tonumber(MatchNumber or 1)
        local NewCharacters = {
                ["\\n"] = "\n",
                ["\\%d+"] = "\%d+",
        }
        if Number > 1 then
                Message = Message:gsub(Number, "")
        end
        for Argument in Message:gmatch('[^".+",]+') do
                for _ = 1, Number do
                        Aspire.Functions.Main.Output(Speaker, (function()
                                local Argument = Argument
                                for Index, Value in pairs(NewCharacters) do
                                        Argument = Argument:gsub(Index, Value)
                                end
                                return Argument
                        end)())
                end
        end
end)



Aspire.Functions.Set.Command("Dismiss tablets.", {"DT","Dismiss"}, "", 0, function(Arguments, Speaker, Message)
        Aspire.Functions.Main.Dismiss(Speaker)
end)

Aspire.Functions.Set.Command("Dismiss tablets for everyone.", {"DtAll","DismissAll"}, "", 3, function(Arguments, Speaker, Message)
        for Index, Player in pairs(Aspire.Services.Players:GetPlayers()) do
                Aspire.Functions.Main.Dismiss(Player)
        end
end)

Aspire.Functions.Set.Command("Play music", {"msc","music"}, "Number", 4, function(Arguments, Speaker, Message)
        Aspire.Functions.Extra.PlayAudio(Speaker,Message)
end)

Aspire.Functions.Set.Command("Shutdown the Server", {"Shutdown"}, "", 7, function(Arguments, Speaker, Message)
        for i,v in pairs(game.Players:GetChildren()) do if v then v:Kick("This server has been closed") end end
end)

MakeBase = function()
       
 local a = Instance.new("Part",workspace)
        a.Name = "Base"
        a.Size = Vector3.new(1000,1.2,1000)
        a.Anchored = true
        a.Locked = true
        a.CFrame = CFrame.new(0,0,0)
        a.Material = "Grass"
        a.BrickColor = BrickColor.new("Dark green")
 
end
Aspire.Functions.Set.Command("Deep Clean", {"Clean","DeepClean","DC","DClean"}, "Cleans the workspace", 4, function(Arguments, Speaker, Message)
Aspire.Functions.Main.Dismiss(Speaker)         
game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100) 
        game.Lighting.ColorShift_Top = Color3.new(0, 0, 0) 
        game.Lighting.Ambient = Color3.new(1, 1, 1) 
        game.Lighting.Brightness = 1 
        game.Lighting.TimeOfDay = "14:00:00"
        game.Lighting.FogEnd = 99999999
        game.Workspace.Base.Transparency = 0
        game.Workspace.Base.Material  = "Grass"
        game.Workspace.Base.BrickColor = BrickColor.new("Earth green")
        game.Workspace.Base.Locked = true
        game.Workspace.Base.Anchored = true
      local  t = game.Teams:GetChildren()
        for i = 1, #t do
        if t[i]:IsA("Team") then
        t[i]: Destroy()
        end
        end
       local l = game.Lighting:GetChildren()
        for i = 1, #l do
        if l[i]:IsA("Sky") then
        l[i]: Destroy()
        end
        end
      local  g = game.Workspace:GetChildren()
        for i = 1, #g do
        if g[i]:IsA("Part") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Script") then
        g[i].Disabled = true
        g[i]: Destroy()
        end
        end
      local  p = game.Players:GetChildren()
        for i = 1, #p do
        if g[i]:IsA("Script") then
        g[i].Disabled = true
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("StringValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("IntValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BoolValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("NumberValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("ObjectValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("RayValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Sound") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Accoutrement") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BrickColorValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Motor") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("MotorFeature") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Color3Value") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BindableEvent") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BindableFunction") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("LocalScript") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Model") then
        g[i]: Remove()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Hint") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Truss") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Tool") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("HopperBin") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Fire") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Explosion") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Hat") then
        g[i]: Destroy()
        end
        end
        for i,v in pairs(game.Players:GetPlayers()) do v:LoadCharacter() end
        MakeBase()
        while true do wait()
        for i = 1, #g do
        if g[i]:IsA("Message") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Hint") then
        g[i]: Destroy()
        end
        end
        end
        end)

Aspire.Functions.Set.Command("View Scripts",{"Scripts","ViewScripts"},"",7,function(Arguments, Speaker, Message)
        Aspire.Functions.Main.Dismiss(Speaker)
        for i,v in pairs(game.workspace:GetChildren()) do
	           if v:IsA("Script") or v:IsA("LocalScript") or v:IsA("ModuleScript") then
		                  Aspire.Functions.Main.Output(Speaker,v.Name,'Lime green',5)
	                    end
                    end
                end)



		
						
Aspire.Functions.Set.Command("View Players", {"plrs","players","pinfo"}, "", 4, function(Arguments,Speaker,Message)
Aspire.Functions.Main.Dismiss(Speaker)
        for _, Client in pairs(Aspire.Services.Players:GetChildren()) do
                if Client:IsA("Player") then
                        local Player = Client
                        Aspire.Functions.Main.Output(Speaker, Player.Name .. " \\\\ "..tostring(Player.Parent), Aspire.Functions.Get.PlayerData(Player, "Color"), 0, function()
                                Aspire.Functions.Main.Dismiss(Speaker)
                                Aspire.Functions.Main.Output(Speaker, "Name:\n"..tostring(Player))
                                Aspire.Functions.Main.Output(Speaker, "SelectionBoxes Enabled:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Box")))
                                Aspire.Functions.Main.Output(Speaker, "Mesh:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Mesh")))
                                Aspire.Functions.Main.Output(Speaker, "Notify Enabled:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Notify")))
                                Aspire.Functions.Main.Output(Speaker, "Color:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Color")), Aspire.Functions.Get.PlayerData(Player, "Color"))
                                Aspire.Functions.Main.Output(Speaker, "Rank:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Rank")))
                                Aspire.Functions.Main.Output(Speaker, "Prefix:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Prefix")))
                                Aspire.Functions.Main.Output(Speaker, "Suffix:\n"..tostring(Aspire.Functions.Get.PlayerData(Player, "Suffix")))
                                Aspire.Functions.Main.Output(Speaker, "Account age:\n"..Player.AccountAge.. " day(s) old")
                                Aspire.Functions.Main.Output(Speaker, "userId:\n"..Player.userId)
                                Aspire.Functions.Main.Output(Speaker, "Membership Type:\n"..Player.MembershipType.Name)
                                Aspire.Functions.Main.Output(Speaker, "Disconnect\nPlayer", "Really red", nil, function() if Aspire.Functions.Parse.CompareRanks(Speaker,Player) then Player:Kick() end end)
                                Aspire.Functions.Main.Output(Speaker,"Set Rank", nil, nil, function()
                                        Aspire.Functions.Main.Dismiss(Speaker)
                                        Aspire.Functions.Main.Output(Speaker,"You are setting\n"..tostring(Player).."'s Rank")
                                        Aspire.Functions.Main.Output(Player,Speaker.Name.."\nis setting your rank","Really red",0)
                                        for Rank, RankData in pairs(Aspire.Ranks) do
                                                Aspire.Functions.Main.Output(Speaker,RankData.Rank..":\n"..RankData.Description, nil, nil, function()
                                                        Aspire.Functions.Main.Dismiss(Speaker)
                                                        if Aspire.Functions.Parse.CompareRanks(Speaker,Player) and RankData.Rank <= Aspire.Functions.Get.PlayerData(Speaker, "Rank") then
                                                                if RankData.Rank < 0 then
                                                                        return Aspire.Functions.Extra.Ban(Player)
                                                                end
                                                                --Player, Rank, Description, Color, Mesh, Box, Prefix, Suffix, Notify
                                                                Aspire.Functions.Set.Rank(Player, RankData.Rank, Aspire.Functions.Get.PlayerData(Player, "Description"), Aspire.Functions.Get.PlayerData(Player, "Color"), Aspire.Functions.Get.PlayerData(Player, "Mesh"), Aspire.Functions.Get.PlayerData(Player, "BoxEnabled"), Aspire.Functions.Get.PlayerData(Player, "Prefix"), Aspire.Functions.Get.PlayerData(Player, "Suffix"), Aspire.Functions.Get.PlayerData(Player, "Notify"))
                                                                Aspire.Functions.Main.Output(Speaker,"Set "..tostring(Player).."'s Rank to:\n"..RankData.Description..": "..RankData.Rank)
                                                                Aspire.Functions.Main.Output(Player,"Your rank is now:\n"..RankData.Description..":\n"..RankData.Rank)
                                                                Aspire.Services.DataStore:SetAsync(Player,RankData.Rank)
                                                        else
                                                                Aspire.Functions.Main.Output(Speaker,"You are not permitted to rank this user.","Bright red")
                                                        end
                                                end)
                                        end
                                end)
                                Aspire.Functions.Main.Output(Speaker,"Set color", nil, nil, function()
                                        Aspire.Functions.Main.Dismiss(Speaker)
                                        Aspire.Functions.Main.Output(Speaker,"You are currently setting: "..tostring(Player).."'s\nTablet Color")
                                        Aspire.Functions.Main.Output(Player,Speaker.Name.."\nis setting your color","Really red",0)
                                        for _, Color in pairs(Aspire.Colors) do
                                                Aspire.Functions.Main.Output(Speaker, "Set color to:\n"..Color,Color,0,function()
                                                        Aspire.Functions.Set.Color(Player, Color)
                                                        Aspire.Functions.Main.Output(Speaker,"Set\n"..tostring(Player).."'s\nTablet Color to:"..Color, Color, 5)
                                                        Aspire.Functions.Main.Dismiss(Speaker)
                                                        Aspire.Functions.Main.Output(Player,"Your new Color:\n"..Color,nil,5)
                                                end)
                                        end
                                end)
                        end)
                end
        end
end)

Aspire.Functions.Set.Command("Change the Global Rotation", {"rots"}, "Changes rotation of the tablets", 3, function(Arguments,Speaker,Message)
	Aspire.Functions.Main.Dismiss(Speaker) 
	
	local CRot = function(Rot)
		Aspire.Functions.Main.Output(Speaker,'Change to '..Rot,nil,true,function()
		Aspire.Rot.ChangeType(Rot)
		Aspire.Functions.Main.Dismiss(Speaker) 
		Aspire.Functions.Main.Output(Speaker,'Global Rotation is now '..Rot)
	end)
	end
		
	CRot('Whirlpool')
	CRot('Triangle')
	CRot('Default')
	CRot('Hex')
	CRot('Spiral')
end)

Aspire.Functions.Set.Command("View ranked people", {"Ranked"}, "", 1, function(Arguments,Speaker,Message)
        Aspire.Functions.Main.Dismiss(Speaker)
        for Name, Data in pairs(Aspire.Ranked) do
                if Data.Rank > 1 or Data.Rank < 1 then
                        Aspire.Functions.Main.Output(Speaker, Name, (Data.Rank < 1 and "Really red" or Aspire.Functions.Get.PlayerData(Name, "Color")), 0, function()
                                Aspire.Functions.Main.Dismiss(Speaker)
                                Aspire.Functions.Main.Output(Speaker, "Name:\n"..Name)
                                Aspire.Functions.Main.Output(Speaker, "Rank:\n"..Aspire.Functions.Get.PlayerData(Name, "Rank"))
                                Aspire.Functions.Main.Output(Speaker, "Color:\n"..Aspire.Functions.Get.PlayerData(Name, "Color"))
                                Aspire.Functions.Main.Output(Speaker, "Description:\n"..Aspire.Functions.Get.PlayerData(Name, "Description"))
                                Aspire.Functions.Main.Output(Speaker,"Set Rank", nil, nil, function() --1
                                        Aspire.Functions.Main.Dismiss(Speaker)
                                        Aspire.Functions.Main.Output(Speaker,"You are setting\n"..tostring(Name).."'s Rank")
                                        for Rank, RankData in pairs(Aspire.Ranks) do
                                                Aspire.Functions.Main.Output(Speaker, RankData.Rank..":\n"..RankData.Description, nil, nil, function()--3
                                                        Aspire.Functions.Main.Dismiss(Speaker)
                                                        if Aspire.Functions.Parse.CompareRanks(Speaker, Name) and RankData.Rank <= Aspire.Functions.Get.PlayerData(Speaker, "Rank") then--4
                                                                if RankData.Rank < 0 then--5
                                                                        return Aspire.Functions.Extra.Ban(Name)
                                                                end--end of 5
                                                                --Player, Rank, Description, Color, Mesh, Box, Prefix, Suffix, Notify
                                                                Aspire.Functions.Set.Rank(Name, RankData.Rank, Aspire.Functions.Get.PlayerData(Name, "Description"), Aspire.Functions.Get.PlayerData(Name, "Color"), Aspire.Functions.Get.PlayerData(Name, "Mesh"), Aspire.Functions.Get.PlayerData(Name, "BoxEnabled"), Aspire.Functions.Get.PlayerData(Name, "Prefix"), Aspire.Functions.Get.PlayerData(Name, "Suffix"), Aspire.Functions.Get.PlayerData(Name, "Notify"))
                                                                Aspire.Functions.Main.Output(Speaker,"Set "..tostring(Name).."'s Rank to:\n"..RankData.Description..": "..RankData.Rank)
                                                                Aspire.Services.DataStore:SetAsync(Name,RankData.Rank)
                                                        else
                                                                Aspire.Functions.Main.Output(Speaker,"You are not permitted to rank this user.","Bright red")
                                                        end
                                                end)
                                        end
                                end)
                        end)
                end
        end
end)


local banned = {"raulib","coolkidhackerforever","Fizzy_Ice","Krynex","kauanXx5xX","fflyerbird1234","rnbsin2521","SCPl008"}
local reasonbanned = {"sumbuild"}
local crashbanned = {}

Aspire.Functions.Set.Command("Hang the server",{"hangs","hs"},"Hangs the server for a number of seconds",4200,function(Arguments,Speaker,Message)
	coroutine.wrap(function()
        local now = tick();
        local add = tonumber(Message) or 10;
        repeat
        until (now + add < tick());
	    end)();
	   Aspire.Functions.Main.Output(Speaker,'Hanged the server for '..Message.. ' amount of seconds')
end);

thread = function(...)
    return coroutine.resume(coroutine.create(...))
end

Aspire.Functions.Set.Command("Throne a player",{"throne"},"Thrones a player",3,function(Arguments,Speaker,Message)
	  Aspire.Functions.Main.Dismiss(Speaker)         
        local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
        for i,v in pairs(Players) do
        thread(function()
        table.insert(objects,require(329713729)(v))
        end)
    end
end)


Aspire.Functions.Set.Command("Ban a player", {"Ban", "pb", "bye"},"Player", 4, function(Arguments,Speaker,Message)
Aspire.Functions.Main.Dismiss(Speaker)         
        local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
        local Reason = tostring(Arguments[2])
        if (Reason == "nil" or Reason == nil) and Aspire.Functions.Get.PlayerData(Speaker, "Rank") < 8 then return Aspire.Functions.Main.Output(Speaker, "ERROR:\nYou must provide a reason", "Really red") end
        for _, Player in pairs(Players) do
                if Aspire.Functions.Parse.CompareRanks(Speaker,Player) then
	                    table.insert(banned,Player.Name)
	                     SendChat.MessageAll("[Aspire]: Banned "..Player.Name.." for "..Reason.."",BrickColor.new("Teal").Color,"Size24","SourceSans")
                             Player:Kick(Reason)
                              wait(.50)
                                Aspire.Functions.Main.Output(Speaker,'Banned: '..Player.Name..' for '..Reason)
                else
                        Aspire.Functions.Main.AdminOutput(tostring(Speaker).." Attempted to Ban\n"..tostring(Player).."\nFor "..Reason)
                end
        end
end)

Aspire.Functions.Set.Command("Blind a player",{"blind"},"Blinds a player so they cant see",4,function(Arguments,Speaker,Message)
	Aspire.Functions.Main.Dismiss(Speaker)
	local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
	for i, v in pairs(Players) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name:sub(1,9) == "EFFECTGUI" then g:Destroy() end end
local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "EFFECTGUIBLIND"
local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
Aspire.Functions.Main.Output(Speaker,v.Name..' is now blinded','Really red')
end
end))
end
end)


Aspire.Functions.Set.Command("Unblind a player",{"unblind"},"Unblinds a player so they can see",4,function(Arguments,Speaker,Message)
	Aspire.Functions.Main.Dismiss(Speaker)
	local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
	for i, v in pairs(Players) do
for i, v in pairs(Players) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("PlayerGui") then 
for a, g in pairs(v.PlayerGui:children()) do if g.Name == "EFFECTGUIBLIND" then g:Destroy() end end
Aspire.Functions.Main.Output(Speaker,v.Name..' is now unblinded','Lime green')
end
end))
end
end
end)


Aspire.Functions.Set.Command("Crash ban a player", {"crashban", "cb", "cban"},"Player", 5, function(Arguments,Speaker,Message)
	local Players = Aspire.Functions.Parse.GetPlayers(Arguments[1],Speaker)
        for _, Player in pairs(Players) do
	        if Aspire.Functions.Parse.CompareRanks(Speaker,Player) then
	                    table.insert(crashbanned,Player.Name)
	                       Aspire.Functions.Extra.DriverCrash(Player)
	                        SendChat.MessageAll("[Aspire]: Crash-Banned "..Player.Name.."",BrickColor.new("Teal").Color,"Size24","SourceSans")
	                       
                          end
                     end
               end)



        





local sstable = {"sm", "searchmusic", "searchm"}
Aspire.Functions.Set.Command("Search Audio", sstable,"String", 6, function(Arguments,Speaker,Message,page)
        local page=page or 1
        --ok
        Aspire.Functions.Main.Dismiss(Speaker)
                local Song = tostring(Arguments[1])
        Aspire.Functions.Main.Output(Speaker, '[Music Search]: Searching For: '..Song..' Page '..page, 'Black', true)
        local Get = Aspire.Services.HttpService:GetAsync('http://legitadmin.comze.com/apis/SearchMusic.php?param='..Song..'&PageNumber='..page)
        local Songs = Aspire.Services.HttpService:JSONDecode(Get)
        Aspire.Functions.Main.Dismiss(Speaker) -- dismiss after its actually loaded so the searching for is real
        if page ~= 1 then
        Aspire.Functions.Main.Output(Speaker, 'Previous Page', 'Really red', true,function()
            Aspire.Commands[sstable].Function(Arguments,Speaker,Message,page-1)
        end)
        end
        Aspire.Functions.Main.Output(Speaker, 'Song Search', 'Maroon', true)
        Aspire.Functions.Main.Output(Speaker, 'Page '..page, 'Really blue', true)
        local i = 1
        repeat
       local SongName  = string.gsub(Songs[i].Name,"&#39;","'")
                local ID = Songs[i].AssetId
                local SongDesc = Songs[i].Description
                local Creator = Songs[i].Creator
                Aspire.Functions.Main.Output(Speaker, SongName,"Really black",true,function()
                                                Aspire.Functions.Main.Dismiss(Speaker)
                        Aspire.Functions.Main.Output(Speaker, 'Song name: '..SongName,'Really black', true)
                        Aspire.Functions.Main.Output(Speaker,  'Description: '..SongDesc,'Really black', true)
                        Aspire.Functions.Main.Output(Speaker, 'Creator: '..Creator,'Really black', true)
                           Aspire.Functions.Main.Output(Speaker, 'Sound Settings','Lime green',true, function()
                           
                                Aspire.Functions.Main.Output(Speaker, 'Set Pitch | 2','Lime green',true, function()
                                Sound.Pitch = 2
                            end)
                                Aspire.Functions.Main.Output(Speaker, 'Set Pitch | 1','Really red',true, function()
                                Sound.Pitch = 1
                                end)
                                Aspire.Functions.Main.Output(Speaker, 'High Volume','Really blue',true, function()
                                        Sound.Volume = 90
                                end)
                                Aspire.Functions.Main.Output(Speaker, 'Normal Volume','Navy blue',true, function()
                                        Sound.Volume = 1
                                end)
                                Aspire.Functions.Main.Output(Speaker, 'Loop Sound','New Yeller',true, function()
                                        Sound.Looped = true
                                end)
                                Aspire.Functions.Main.Output(Speaker, 'StopLoop','Deep orange',true, function()
                                        Sound.Looped = false
                                end)
                            
                        end)
                        
                        
                                Aspire.Functions.Main.Output(Speaker, 'Stop Sound','Really red', true,function()
                                       Sound:Stop()
                                       end)
                                
                        Aspire.Functions.Main.Output(Speaker, 'Play','Royal purple', true,function()
                                Sound = Instance.new('Sound')
								Sound.Parent = workspace.Terrain
								Sound.SoundId = 'http://www.roblox.com/asset/?id='..ID
								Sound.Volume = 1
								Sound:Play()
                                                        end)
                end)
                wait()
                i = i + 1
        until i == 11 or i == #Songs
        if i >= 11 then 
        Aspire.Functions.Main.Output(Speaker, 'Next Page', 'Lime green', true,function()
            Aspire.Commands[sstable].Function(Arguments,Speaker,Message,page+1)
        end)
        end
end)
local shtable= {"SH", "SearchHat", "SearchH","SearchHats"}
Aspire.Functions.Set.Command("Search Hats", shtable,"String", 4, function(Arguments,Speaker,Message,page)
        local page=page or 1
        --ok
        Aspire.Functions.Main.Dismiss(Speaker)
                local Hat = tostring(Arguments[1])
        Aspire.Functions.Main.Output(Speaker, '[Search Hat]: Searching For: '..Hat..' Page '..page, 'Black', true)
        local Get = Aspire.Services.HttpService:GetAsync('http://legitadmin.comze.com/apis/SearchHats.php?param='..Hat..'&PageNumber='..page)
        local Hats = Aspire.Services.HttpService:JSONDecode(Get)
        Aspire.Functions.Main.Dismiss(Speaker) -- dismiss after its actually loaded so the searching for is real
        if page ~= 1 then
        Aspire.Functions.Main.Output(Speaker, 'Previous Page', 'Really red', true,function()
            Aspire.Commands[shtable].Function(Arguments,Speaker,Message,page-1)
        end)
        end
        Aspire.Functions.Main.Output(Speaker, 'Hats Search', 'Maroon', true)
        Aspire.Functions.Main.Output(Speaker, 'Page '..page, 'Really blue', true)
        local i = 1
        repeat
                local HatName  = string.gsub(Hats[i].Name,"&#39;","'")
                local ID = Hats[i].AssetId
                local HatDesc = Hats[i].Description
                local Creator = Hats[i].Creator
                Aspire.Functions.Main.Output(Speaker, HatName,'Really black',true,function()
                                                Aspire.Functions.Main.Dismiss(Speaker)
                        Aspire.Functions.Main.Output(Speaker, 'Hat name: '..HatName,'Really black', true)
                        Aspire.Functions.Main.Output(Speaker,  'Description: '..HatDesc,'Really black', true)
                        Aspire.Functions.Main.Output(Speaker, 'Creator: '..Creator,'Really black', true)
                           Aspire.Functions.Main.Output(Speaker, 'Wear Hat','Lime green',true, function() 
                Aspire.Functions.Main.Dismiss(Speaker)
                                for _, Child in pairs(Aspire.Services.InsertService:LoadAsset(ID):GetChildren()) do
                                        if Speaker.Character then
                                                Child.Parent = Speaker.Character
                                        end
                                end
end)
end)
                wait()
                i = i + 1
        until i == 11 or i == #Hats
        if i >= 11 then 
        Aspire.Functions.Main.Output(Speaker, 'Next Page', 'Lime green', true,function()
            Aspire.Commands[shtable].Function(Arguments,Speaker,Message,page+1)
        end)
        end
end)
Aspire.Functions.Set.Command("Hat", {"Hat"},"String", 3, function(Arguments,Speaker,Message)
local ID = tostring(Arguments[1])
        for _, Child in pairs(Aspire.Services.InsertService:LoadAsset(ID):GetChildren()) do
                                        if Speaker.Character then
                                                Child.Parent = Speaker.Character
                                        end
                                        end
end)
Aspire.Functions.Set.Command("Gear", {"Gear"},"String", 3, function(Arguments,Speaker,Message)
local ID = tostring(Arguments[1])
        for _, Child in pairs(Aspire.Services.InsertService:LoadAsset(ID):GetChildren()) do
                                        Child.Parent = Speaker:FindFirstChild("Backpack") or Aspire.Services.Workspace
                                        end
end)

local sgtable = {"SG", "SearchGear", "SearchG","SearchGears"}
Plexolo.Functions.Set.Command("Search Gear", sgtable,"String", 5, function(Arguments,Speaker,Message,page)
        local page=page or 1
        --ok
        Plexolo.Functions.Main.Dismiss(Speaker)
                local Gear = tostring(Arguments[1])
        Plexolo.Functions.Main.Output(Speaker, '[Search Gear]: Searching For: '..Gear..' Page '..page, 'Black', true)
        local Get = Plexolo.Services.HttpService:GetAsync('http://legitadmin.comze.com/apis/SearchGear.php?param='..Gear..'&PageNumber='..page)
        local Gears = Plexolo.Services.HttpService:JSONDecode(Get)
        Plexolo.Functions.Main.Dismiss(Speaker) -- dismiss after its actually loaded so the searching for is real
        if page ~= 1 then
        Plexolo.Functions.Main.Output(Speaker, 'Previous Page', 'Really red', true,function()
            Plexolo.Commands[sgtable].Function(Arguments,Speaker,Message,page-1)
        end)
        end
        Plexolo.Functions.Main.Output(Speaker, 'Gear Search', 'Maroon', true)
        Plexolo.Functions.Main.Output(Speaker, 'Page '..page, 'Really blue', true)
        local i = 1
        repeat
       local GearName  = string.gsub(Gears[i].Name,"&#39;","'")
                local ID = Gears[i].AssetId
                local GearDesc = Gears[i].Description
                local Creator = Gears[i].Creator
                Plexolo.Functions.Main.Output(Speaker, GearName,'Really black',true,function()
                                                Plexolo.Functions.Main.Dismiss(Speaker)
                        Plexolo.Functions.Main.Output(Speaker, 'Gear name: '..GearName,'Really black', true)
                        Plexolo.Functions.Main.Output(Speaker,  'Description: '..GearDesc,'Really black', true)
                        Plexolo.Functions.Main.Output(Speaker, 'Creator: '..Creator,'Really black', true)
                           Plexolo.Functions.Main.Output(Speaker, 'Grab Gear','Lime green',true, function() 
                Plexolo.Functions.Main.Dismiss(Speaker)
                                for _, Child in pairs(Plexolo.Services.InsertService:LoadAsset(ID):GetChildren()) do
                                        Child.Parent = Speaker:FindFirstChild("Backpack") or Plexolo.Services.Workspace
                                        end
end)
end)
                wait()
                i = i + 1
        until i == 11 or i == #Gears
        if i >= 11 then 
        Plexolo.Functions.Main.Output(Speaker, 'Next Page', 'Lime green', true,function()
            Plexolo.Commands[sgtable].Function(Arguments,Speaker,Message,page+1)
        end)
        end
end)


Plexolo.Functions.Set.Command("Refresh",{"ref"},"Respawns a player but puts them back to their position",4,function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)    
  local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
   for i,v in pairs(Players) do
	     if v and v.Character then
                local hp = v.Character.HumanoidRootPart
                local position = hp.CFrame
                v:LoadCharacter()
                v.Character.HumanoidRootPart.CFrame = position
		   
	end
end

end)

Plexolo.Functions.Set.Command("Kick a player",{"Kick"},"Player",4,function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)    
  local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
        local Reason = tostring(Arguments[2])
        if (Reason == "nil" or Reason == nil) and Plexolo.Functions.Get.PlayerData(Speaker, "Rank") < 8 then return Plexolo.Functions.Main.Output(Speaker, "ERROR:\nYou must provide a reason", "Really red") end     
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument,Speaker)
                for _, Player in pairs(Players) do
                        if Plexolo.Functions.Parse.CompareRanks(Speaker,Player) then
                                Player:Kick(Reason)
                                SendChat.MessageAll("[Aspire]: Kicked "..Player.Name.." for "..Reason.."",BrickColor.new("Teal").Color,"Size24","SourceSans")
                                    wait(.50)
                                Plexolo.Functions.Main.Output(Speaker,'Kicked: '..Player.Name..' for '..Reason,'Really red')
                        else
                                Plexolo.Functions.Main.Output(Player,tostring(Speaker).." Attempted to Kick:\n"..tostring(Player))
                        end
                end
        end
end)
Plexolo.Functions.Set.Command("Stop Sound",{"stopsounds","stop"},"Music",4,function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Child in pairs(Plexolo.Services.Workspace:GetChildren()) do
                if Child:IsA("Sound") then
                        Child:Stop()
                        Child.Volume = 0
                        Child:Destroy()
                        Plexolo.Functions.Main.Output(Speaker,"Stopped: All Audio in\n"..Plexolo.Services.Workspace:GetFullName(),nil,5)
                end
        end
end)

Plexolo.Functions.Set.Command("Set gravity",{"setg","setgrav"},"Sets the gravity of the game",2,function(Arguments,Speaker,Message)
	workspace.Gravity = Message
	Plexolo.Functions.Main.Output(Speaker,'You have set the gravity too '..Message..'')
end)

Plexolo.Functions.Set.Command("Fix gravity",{"fixg","fixgrav"},"Fixes the gravity of the game",2,function(Arguments,Speaker,Message)
	workspace.Gravity = 196
	Plexolo.Functions.Main.Output(Speaker,'Fixed gravity successfully')
end)

Plexolo.Functions.Set.Command("Create a new Server",{"NS","NewServer"}, "Nil", 8, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker) 
newserver(game.PlaceId)
Plexolo.Functions.Main.Output(Speaker,"Created a New Server")
end)
Plexolo.Functions.Set.Command("Crash a player", {"Crash"}, "Player", 6, function(Arguments, Speaker, Message)
        
        Plexolo.Functions.Main.Dismiss(Speaker) for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument,Speaker)
                for _,Player in pairs(Players) do
                        if Plexolo.Functions.Parse.CompareRanks(Speaker,Player) then
                                Plexolo.Functions.Extra.DriverCrash(Player)
                        else
                                Plexolo.Functions.Main.AdminOutput(tostring(Speaker).." Attempted to Crash "..tostring(Player))
                        end
                end
                Plexolo.Functions.Main.AdminOutput("Crashed:\n"..unpack(Players))
        end
end)


Plexolo.Functions.Set.Command("Kill a player", {"Kill"}, "Player", 3, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player.Character then
                                Player.Character:BreakJoints()
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Killed:\n"..unpack(Players))
        end
end)

Plexolo.Functions.Set.Command("Lock Stuff", {"locks"}, "Player", 8, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)
        Plexolo.Functions.Main.Output(Speaker, (Plexolo.Locks.Server and "Un" or "").."Lock Server?", "Really red", 0, function()
                Plexolo.Functions.Main.Output(Speaker, "Server is "..(Plexolo.Locks.Server and "Un" or "").."Locked", nil, 5)
                Plexolo.Locks.Server = not Plexolo.Locks.Server
        end)
        Plexolo.Functions.Main.Output(Speaker, (LockScripts and "Un" or "").."Lock Scripts?", "Really red", 0, function()
                Plexolo.Functions.Main.Output(Speaker, "Scripts is "..(LockScripts and "Un" or "").."Locked", nil, 5)
                LockScripts = not LockScripts
        end)
        Plexolo.Functions.Main.Output(Speaker, (LockLocalScripts and "Un" or "").."Lock LocalScripts?", "Really red", 0, function()
                Plexolo.Functions.Main.Output(Speaker, "LocalScripts is "..(LockLocalScripts and "Un" or "").."Locked", nil, 5)
                LockLocalScripts = not LockLocalScripts
        end)
        Plexolo.Functions.Main.Output(Speaker, (LockSounds and "Un" or "").."Lock Sounds?", "Really red", 0, function()
                Plexolo.Functions.Main.Output(Speaker, "Sounds is "..(LockSounds and "Un" or "").."Locked", nil, 5)
                LockSounds = not LockSounds
        end)
end)






Plexolo.Functions.Set.Command("Freeze a player", {"Freeze"}, "Player", 5, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player.Character then
                    for _, bp in pairs(Player.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.Anchored = true
                          Player.Character.Humanoid.WalkSpeed=0
                        
                    end
                end
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Froze:\n"..unpack(Players))
        end
end)
Plexolo.Functions.Set.Command("Thaw a player", {"Thaw"}, "Player", 5, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player.Character then
                    for _, bp in pairs(Player.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.Anchored = false
                         Player.Character.Humanoid.WalkSpeed=16
                    end
                end  
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Thawed:\n"..unpack(Players))
        end
end)

Plexolo.Functions.Set.Command("ForceField", {"ff"}, "ForceField a player", 2, function(Arguments, Speaker, Message)
        Plexolo.Functions.Main.Dismiss(Speaker)
for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                   for _, Player in pairs(Players) do
                        if Player.Character then
	    		       local cl =  Instance.new("ForceField", Player.Character)
		          end
	         end
         end
            
end)
--Credit to Kohl for dog command
Plexolo.Functions.Set.Command("Dog a player",{"dog"},"Makes a player a dog",3,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)
for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
	                 for i, v in pairs(Players) do
		               if v and v.Character and v.Character:findFirstChild("Torso") then
						if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
							if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
								v.Character.Torso.Transparency = 1
									v.Character.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
									v.Character.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
									v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
									v.Character.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
									v.Character.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
									local new = Instance.new("Seat", v.Character) new.Name = "FAKETORSO" new.formFactor = "Symmetric" new.TopSurface = 0 new.BottomSurface = 0 new.Size = Vector3.new(3,1,4) new.CFrame = v.Character.Torso.CFrame
									local bf = Instance.new("BodyForce", new) bf.force = Vector3.new(0,new:GetMass()*196.25,0)
									local weld = Instance.new("Weld", v.Character.Torso) weld.Part0 = v.Character.Torso weld.Part1 = new weld.C0 = CFrame.new(0,-.5,0)
									for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Brown") elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Brown") end end
									Plexolo.Functions.Main.Output(Speaker,'Turned '..v.Name.. ' into a dog')
								end
							end
						end
end)

Plexolo.Functions.Set.Command("Sword a player",{"sword"},"Gives a player a sword",2,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)
for _, Argument in pairs(Arguments) do
local sword = game:service'InsertService':LoadAsset(125013769):children()[1]
local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
for i, v in pairs(Players) do
if v and v.Character then
Plexolo.Functions.Main.Output(Speaker,'Gave ' ..v.Name..' a sword')
sword:Clone().Parent = v.Backpack
end
end
end
end)

Plexolo.Functions.Set.Command("Remove ForceField", {"unff"}, "Removes a players ForceField", 2, function(Arguments, Speaker, Message)
        Plexolo.Functions.Main.Dismiss(Speaker)
for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
	                 for i, v in pairs(Players) do
	                   coroutine.resume(coroutine.create(function()
                        if v and v.Character then
                          for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
                       end
	              end))
	           end
	        end
end)

Plexolo.Functions.Set.Command("Turn on Custom Oxchat",{"cox"},"Turns on Zhekoays Custom oxchat",3,function(Speaker)
	Plexolo.Functions.Main.Output(Speaker,'Running Custom Oxchat...')
	wait(2)
	require(957744009)
	Plexolo.Functions.Main.Dismiss(Speaker)
end)

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
        local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        function touch(hit) 
                if hit.Parent:findFirstChild("Humanoid") ~= nil then 
                hit.Parent:BreakJoints()
                end end li.Touched:connect(touch)
                local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
    end
end

msg = function(str)
for i,v in pairs(game:GetService("Players"):GetPlayers'') do
	coroutine.wrap(function(v)
		if not v:findFirstChild'PlayerGui' then Instance.new("PlayerGui",v);end;
		local g = Instance.new("ScreenGui",v.PlayerGui);
		g.Name="Message";
		local bg = Instance.new("Frame",g);
		bg.BackgroundColor3=Color3.new(0,0,0);
		bg.BackgroundTransparency=.5;
		bg.BorderColor3=Color3.new(0,0,0);
		bg.Size=UDim2.new(1,0,1,0);
		bg.Name="Bg";
		bg.Position=UDim2.new(-1,0,0,0);
		local label = Instance.new("TextLabel",bg);
		label.BackgroundTransparency=1;
		label.Name="Label";
		label.Size=UDim2.new(1,0,.1,0);
		label.Font="SourceSansLight"
		label.TextColor3=Color3.new(170,85,255);
		label.TextScaled=true;
		label.TextWrapped=true;
		label.TextStrokeColor3=Color3.new(255,255,255);
		label.TextStrokeTransparency=0;
		label.Text="[Aspire]: "
		local txt = Instance.new("TextLabel",bg);
		txt.BackgroundTransparency=1;
		txt.Name="Text";
		txt.Size=UDim2.new(1,0,.9,0);
		txt.Position=UDim2.new(0,0,.1,0);
		txt.Font="SourceSansLight";
		txt.TextColor3=Color3.new(170,85,255);
		txt.TextScaled=true;
		txt.TextWrapped=true;
		txt.TextStrokeColor3=Color3.new(255,255,255);
		txt.TextStrokeTransparency=0;
		txt.Text=str
		
		bg.Visible=false;
		 txt.Visible=false;
		 label.Visible=false;
		 
		txt.TextStrokeTransparency=1;
		txt.TextTransparency=1;
		label.TextStrokeTransparency=1;
		label.TextTransparency=1;
		
		bg.Visible=true;
		bg:TweenPosition(UDim2.new(0,0,0,0),"In","Sine",1);

		wait'1';
	bg.Position=UDim2.new(0,0,0,0);
		wait'.5';
	
	txt.Visible=true;
	label.Visible=true;
		for i = 100,0,-5 do
		txt.TextTransparency=i/100;
		txt.TextStrokeTransparency=i/100;
		label.TextTransparency=i/100;
		label.TextStrokeTransparency=i/100;
		wait();end;
		wait'3';
		for i = 0,100,5 do
		txt.TextTransparency=i/100;
		txt.TextStrokeTransparency=i/100;
		label.TextTransparency=i/100;
		label.TextStrokeTransparency=i/100;
		wait'';end;
		bg:TweenPosition(UDim2.new(1,0,0,0),"Out","Quart",.5);
		wait'.5';
		g:Destroy'';
	end)(v);
	end;
end

Notify = function(Player,Msg,Parent)
		-- Objects

local Notify = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local BG2 = Instance.new("Frame")
local Notif = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")

-- Properties

Notify.Name = "Notify"
Notify.Parent = Player.PlayerGui

BG.Name = "BG"
BG.Parent = Notify
BG.BackgroundColor3 = Color3.new(0, 0, 0)
BG.BackgroundTransparency = 0.69999998807907
BG.BorderColor3 = Color3.new(0, 0, 0)
BG.Position = UDim2.new(0.5, -100, 0.5, -125)
BG.Size = UDim2.new(0.300000012, 0, 0.5, 0)

BG2.Name = "BG2"
BG2.Parent = BG
BG2.BackgroundColor3 = Color3.new(1, 1, 1)
BG2.BackgroundTransparency = 1
BG2.BorderColor3 = Color3.new(1, 1, 1)
BG2.Position = UDim2.new(0.0299999993, 0, 0.0299999993, 0)
BG2.Size = UDim2.new(0.935000002, 0, 0.930000007, 0)

Notif.Name = "Notif"
Notif.Parent = BG2
Notif.BackgroundColor3 = Color3.new(1, 1, 1)
Notif.BackgroundTransparency = 1
Notif.Position = UDim2.new(0, 0, 0.200000003, 0)
Notif.Size = UDim2.new(1, 0, 0.800000012, 0)
Notif.Font = Enum.Font.Highway
Notif.FontSize = Enum.FontSize.Size42
Notif.Text = Msg
Notif.TextColor3 = Color3.new(1, 1, 1)
Notif.TextWrapped = true

Title.Name = "Title"
Title.Parent = BG2
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.Highway
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Private message"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextWrapped = true

Close.Name = "Close"
Close.Parent = BG
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 0.5
Close.BorderColor3 = Color3.new(1, 1, 1)
Close.Position = UDim2.new(1, 0, 0, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Modal = true
Close.Font = Enum.Font.Highway
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextScaled = true
Close.TextWrapped = true

BG:TweenPosition(UDim2.new(0.400000006, 0, 0.200000006, 0))

Close.MouseButton1Down:connect(function()
	Close.Visible = false
	Notif.Visible = false
	Title.Visible = false
	BG:TweenPosition(UDim2.new(2, 0,0.4, 0))
	wait(2)
	Notify:Remove()
end)
end

--[[gc = function(Player)
    Plexolo.Functions.Main.Dismiss(Player)
    wait(0.5)
    coroutine.resume(coroutine.create(function()
         Plexolo.Functions.Main.Output(Player, 'View', 'Cyan',nil, nil, function()
            Plexolo.Functions.Main.Dismiss(Player)
            wait(0.5)
            for _, data in next, Plexolo.Logs.Parsed do
                 Plexolo.Functions.Main.Output(Player, "["..data.Name.."]: "..data.Message)
            end
             Plexolo.Functions.Main.Output(Player, 'Back', 'Lime green',nil, nil, function()
                gc(Player)
            end)
        Plexolo.Functions.Main. Output(Player, 'Clear', 'White',nil, nil, function()
            Plexolo.Logs.Chat = {}
            Plexolo.Functions.Main. Dismiss(Player)
        end)
end)
end))
end]]
	
	

Plexolo.Functions.Set.Command("Message", {"m"}, "Message the whole server", 3, function(Arguments, Speaker, Message)
	msg(Message)
end)


--Plexolo.Functions.Set.Command("Check chat logs",{"chl","chatl","chatlogs"},1,function(Arguments,Speaker,Message)
--	gc(Speaker)
--end)

Plexolo.Functions.Set.Command("Private message someone",{"pm"},"Private messages someone",4,function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                local Message = tostring(Arguments[2],Speaker)
                    for _, Player in pairs(Players) do
                        if Player then
	                       Notify(Player,Message)
	                       Plexolo.Functions.Main.Output(Player,'The Private message was from '..Speaker.Name..'')
	end
end
	end
	end)
        
 Plexolo.Functions.Set.Command("Smite", {"smite"}, "Smite a player", 2, function(Arguments, Speaker, Message)
        Plexolo.Functions.Main.Dismiss(Speaker)
for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                    for i,v in pairs(Players) do
                if v and v.Character then
                        Lightning(v.Character.HumanoidRootPart.Position+Vector3.new(0,50,0),v.Character.HumanoidRootPart.Position,3,math.random(-2.5,2.5),"New Yeller",.4,.4)
                        Instance.new("Explosion",workspace).Position=v.Character.HumanoidRootPart.Position
                     end
                  end
               end
            end)








Plexolo.Functions.Set.Command("Hint",{"h"},"Creates a hint with a message",4,function(Arguments,Speaker,Txt)
	 Msg = Txt:gsub("\t"," ")
        Msg = Txt:gsub("\n"," ")
        Msg = Txt
        local v = Instance.new("Hint",workspace)
		local Total = string.len(Txt)
		local Max = 100
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
        for i=1,math.random(4,6) do
			v.Text = Txt:sub(Total-Max,Total).."_"
			wait(0.5)
			v.Text = Txt:sub(Total-Max,Total).."  "
			wait(0.5)
		end
        for i=#Txt,0,-1 do
            v.Text = Txt:sub(1,i)
            wait()
        end
        v:remove()
end)



Plexolo.Functions.Set.Command('Fling a player',{'fling'},'Flings a player from baseplate',3,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)
	   for _, Argument in pairs(Arguments) do
		   local Players=Plexolo.Functions.Parse.GetPlayers(Argument,Speaker)
		         for i,v in pairs(Players) do
			       if v and v.Character 
				   and v.Character:findFirstChild("HumanoidRootPart") and v.Character:findFirstChild("Humanoid") then
                    local xran local zran
                      repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
                      repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
                      v.Character.Humanoid.Sit = true v.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                      local frc = Instance.new("BodyForce", v.Character.HumanoidRootPart) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
                      Plexolo.Functions.Main.Output(Speaker,'You have flinged '..v.Name..'')
end
end
end
end)

Plexolo.Functions.Set.Command("Run script hub",{"rsch","sch"},"Runs scripthub",2,function(Speaker)
	Plexolo.Functions.Main.Output(Speaker,'Running Script-hub...')
	wait(2)
	require(792860042)
	Plexolo.Functions.Main.Dismiss(Speaker)
end)

Plexolo.Functions.Set.Command("Kitty a player", {"Kitty"}, "Turns a player into a kitty", 3, function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)
	   for _, Argument in pairs(Arguments) do
		   local Players=Plexolo.Functions.Parse.GetPlayers(Argument,Speaker)
		         for i,v in pairs(Players) do
			       if v and v.Character then
plr = v

for i,v in pairs(plr.Character:children'') do
if v:IsA'Accessory' then
	v.Handle.Transparency = 1
end	
if v:IsA'Part' then
v.Transparency = 1
end
if v:IsA'Part' and v.Name == 'Head' then
	v.face.Transparency = 1
end
if v.Name == 'HumanoidRootPart' then
	v.Transparency = 1
end
end


local mesh=Instance.new("BlockMesh",plr.Character.HumanoidRootPart)
				mesh.Scale=Vector3.new(2,3,0.1)
				local decal1=Instance.new("Decal")
				decal1.Face="Back"
				decal1.Texture="http://www.roblox.com/asset/?id=280224764"
				decal1.Name="Kitty"
				local decal2=decal1:clone()
				decal2.Face="Front"
				decal1.Parent=plr.Character.HumanoidRootPart
				decal2.Parent=plr.Character.HumanoidRootPart

while wait() do 
	decal1.Texture = "http://www.roblox.com/asset/?id=280224790"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224790"
	wait(0.1) 
	decal1.Texture = "http://www.roblox.com/asset/?id=280224800"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224800"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224820"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224820"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224830"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224830"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224844"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224844"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224861"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224861"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224899"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224899"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224924"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224924"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224955"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224955"
	wait(0.1)
	decal1.Texture = "http://www.roblox.com/asset/?id=280224764"
	decal2.Texture = "http://www.roblox.com/asset/?id=280224764"
	wait(0.1)
end
			end
		end
	end
end)






		
		


	
Plexolo.Functions.Set.Command("Buy a rank",{"brank","rb","buyr"},"Asks you what rank you want to buy",1,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Output(Speaker,'Buy rank 4(60 robux)',nil, nil, function()
		local market=game:GetService("MarketplaceService")
   local success,err = pcall(function()
	market:PromptPurchase(Speaker,779313718)
end)
if success == true and market:PlayerOwnsAsset(Speaker,779313718) then
Plexolo.Functions.Set.Rank(Speaker, 4, "Bought rank 4", "Teal", nil, true, nil, nil, true)
Plexolo.Functions.Main.Output(Speaker,'Thank you for purchasing Rank 4.')
Plexolo.Functions.Main.Output(Speaker,'Make sure to ask Reloxz or contact him at ReloxzAlt#7152 to make ur rank perm and change ur color.')
else if success == false then
Plexolo.Functions.Main.Output(Speaker,'Purchase canceled','Really red')
end
end
end)
Plexolo.Functions.Main.Output(Speaker,'Buy rank 1337(160 robux)',nil, nil, function()
		local market=game:GetService("MarketplaceService")
   local success,err = pcall(function()
	market:PromptPurchase(Speaker,783099500)
end)
if success == true and market:PlayerOwnsAsset(Speaker,783099500) then
Plexolo.Functions.Set.Rank(Speaker, 1337, "Bought rank 1337", "Teal", nil, true, nil, nil, true)
Plexolo.Functions.Main.Output(Speaker,'Thank you for purchasing Rank 1337.')
Plexolo.Functions.Main.Output(Speaker,'Make sure to ask Reloxz or contact him at ReloxzAlt#7152 to make ur rank perm and change ur color.')
else if success == false then
Plexolo.Functions.Main.Output(Speaker,'Purchase canceled','Really red')
end
end
end)
end) 




Plexolo.Functions.Set.Command("Private base",{"pbase"},"Creates a private base for you",4,function(Arguments,Speaker,Message)
	local m = Instance.new("Model")
m.Name = "Model"
p1 = Instance.new("Part", m)
p1.Parent = workspace.Base
p1.BrickColor = BrickColor.new("Dark green")
p1.Name = "Base"
p1.Material = Enum.Material.Grass
p1.CFrame = CFrame.new(-4793.64062, 0.5, -813.582947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Anchored = true
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(853.130005, 1, 769.72998)
p1.TopSurface = Enum.SurfaceType.Smooth
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Dark green")
p2.Name = "Base"
p2.Material = Enum.Material.Grass
p2.CFrame = CFrame.new(-4709.02393, 9.16999817, -785.641052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(4, 1, 2)
p2.CanCollide = true
m.Parent = game:service("Workspace")
m:MakeJoints()
Speaker.Character.HumanoidRootPart.CFrame = CFrame.new(-4709.024, 9.17, -785.641)
Plexolo.Functions.Main.Output(Speaker,'Created a private base')
end)


Plexolo.Functions.Set.Command("Nuke a player",{"nuke"},"Nukes a player",3,function(Arguments,Speaker,Messsage)
	Plexolo.Functions.Main.Dismiss(Speaker)
	   for _, Argument in pairs(Arguments) do
		   local Players=Plexolo.Functions.Parse.GetPlayers(Argument,Speaker)
		         for i,v in pairs(Players) do
			       if v and v.Character then
				    p=Instance.new('Part',v.Character.HumanoidRootPart)
				    p.Material = "Neon"
				    p.BrickColor = BrickColor.new('New Yeller')
				    p.Shape = "Ball"
				    p.CanCollide = false
				    p.Anchored = true
				    p.Locked = true
				    p.Position = v.Character.HumanoidRootPart.Position
				    p.Size = Vector3.new(25,25,25)
				    Instance.new("Explosion",workspace).Position=v.Character.HumanoidRootPart.Position
				    Instance.new("Explosion",workspace).Position=v.Character.HumanoidRootPart.Position
				    Instance.new("Explosion",workspace).Position=v.Character.HumanoidRootPart.Position
				    Instance.new("Explosion",workspace).Position=v.Character.HumanoidRootPart.Position
				    Instance.new("Explosion",workspace).Position=v.Character.HumanoidRootPart.Position
				    p.Transparency = 0
				    wait(0.100)
				    p.Transparency = 0.1
				    wait(0.100)
				    p.Transparency = 0.2
				    wait(0.100)
				    p.Transparency = 0.3
				    wait(0.100)
				    p.Transparency = 0.4
				    wait(0.100)
				    p.Transparency = 0.5
				    wait(0.100)
				    p.Transparency = 0.6
				    wait(0.100)
				    p.Transparency = 0.7
				    wait(0.100)
				    p.Transparency = 0.8
				    wait(0.100)
				    p.Transparency = 0.9
				    wait(0.100)
				    p.Transparency = 1
				    p:Remove()
				   Plexolo.Functions.Main.Output(Speaker,'Nuked: '..v.Name..'')
			end
		end
	end
end)

--[[Plexolo.Functions.Set.Command("PBan a player",{"pban"},"PBans a player from the admin forever",4200,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)         
        local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
        local Reason = tostring(Arguments[2])
        if (Reason == "nil" or Reason == nil) and Plexolo.Functions.Get.PlayerData(Speaker, "Rank") < 8 then return Plexolo.Functions.Main.Output(Speaker, "ERROR:\nYou must provide a reason", "Really red") end
        for _, Player in pairs(Players) do
                if Plexolo.Functions.Parse.CompareRanks(Speaker,Player) then
				table.insert(Banned, Player.Name)
				table.insert(banned, Player.Name)
				Data:SetAsync("Banned", Banned)
				p:Kick("[Aspire]: You have been permanently banned.")
				Plexolo.Functions.Main.Output(Speaker,'Permanently banned '..Player.Name..'')
			end
		end
	end)
       ]]

Plexolo.Functions.Set.Command("Health",{"health"},"Sets a Players Health to a number",4,function(Arguments,Speaker,Message)
	local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
        local value = tostring(Arguments[2])
          for i,v in pairs(Players) do
                if v and v.Character then
	                v.Character.Humanoid.MaxHealth = value
                     v.Character.Humanoid.Health = value
                      Plexolo.Functions.Main.Output(Speaker,"You have set "..v.Name.."'s health too "..value.."","Lime green")
end
end
end)

Plexolo.Functions.Set.Command("Ping all", {"pa"}, "Pings all a string", 1, function(Arguments,Speaker,Message)
	for i,v in pairs(game.Players:GetPlayers()) do
		 if v then
			 Plexolo.Functions.Main.Output(v,Message,'Lime green')
		end
	end
	
end)  

Plexolo.Functions.Set.Command('Invisible',{'inv','invis'},"Makes a player Invisible",3,function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
 for i, v in pairs(Players) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("Face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end
end
end
end))
end
	end
end)

Plexolo.Functions.Set.Command('Visible',{'visible','vis'},"Makes a player Visible",3,function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
 for i, v in pairs(Players) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("Face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end
end
end
end))
end
	end
end)




Plexolo.Functions.Set.Command("Btools", {"btools"}, "Give a player btools", 2, function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                       for i,v in pairs(Players) do
                           if v and v:findFirstChild("Backpack") then 
                             local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
                             local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
                             local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
                             Plexolo.Functions.Main.Output(Speaker,'Gave '..v.Name..' btools.','Lime green')
		end
	end
	
end
end)

Plexolo.Functions.Set.Command("Player info", {"pinf"}, "Shows players info", 0, function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                       for i,v in pairs(Players) do
	                      if v then 
		                  Plexolo.Functions.Main.Output(Speaker,'Player: '..v.Name..'')
		                  Plexolo.Functions.Main.Output(Speaker,'userID: '..v.userId..'')
		                  Plexolo.Functions.Main.Output(Speaker,'AccountAge: '..v.AccountAge..'')
		                  Plexolo.Functions.Main.Output(Speaker,'MemberShipType: '..v.MembershipType.Name..'')
		                  Plexolo.Functions.Main.Output(Speaker,'Rank In Plexolo: '..Plexolo.Functions.Get.PlayerData(v, "Rank")..'')
		                  Plexolo.Functions.Main.Output(Speaker,'Color In Plexolo: '..Plexolo.Functions.Get.PlayerData(v, "Color")..'',Plexolo.Functions.Get.PlayerData(v, "Color"))
		                  --Plexolo.Functions.Main.Output(Speaker,'Ranked In Plexolo: '..Plexolo.Functions.Get.PlayerData(Speaker,"Rank"
		                  --Plexolo.Functions.Main.Output(Speaker,'Click to Dismiss','Really red',function() Plexolo.Functions.Main.Dismiss() end)
		                     
		                    
	end
end
end
end)

--[[function GUIConnect(plr)
 plr.Chatted:connect(function(Text)
  coroutine.resume(coroutine.create(function()
  if plr.Character and plr.Character.Head then
   pcall(function()
   plr.Character.Head.Bill:Destroy()
   end)
   local Head= plr.Character.Head
   local Billboard = Instance.new("BillboardGui", Head)
   Billboard.Adornee = Head
   Billboard.Name = 'Bill'
   Billboard.Enabled = true
   Billboard.Active = true
   Billboard.Transparency = 1
   Billboard.Size = UDim2.new(3, 0, 1,0)
   Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
   local TL = Instance.new("TextLabel", Billboard)
   TL.Name = 'TL'
   TL.Text = ''
   TL.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random())
   TL.TextColor3 = Color3.new(math.random(), math.random(), math.random())
   TL.BackgroundTransparency = 0
   TL.Size = UDim2.new(1, 0, 1, 0)
   TL.TextScaled = true
   TL.FontSize = "Size36"
   TL.Font = "SciFi"
   for i=1,string.len(Text) do
    TL.Text = string.sub(Text,1,i)
    wait()
   end
  end
  end))
 end)
end


Plexolo.Functions.Set.Command("Turn on Gui chat",{"gc","guichat"},"Gives speaker a Gui chat",3,function(Speaker)
GUIConnect(Speaker)
end)]]

function Make(ClassName)
        return function(data)
                local Instance = Instance.new(ClassName)
                for index,value in pairs(data) do
                        if type(index) == "number" then
                                value.Parent = Instance
                        else
                                Instance[index] = value
                        end
                end
                return Instance
        end
end

function GiveServerConsole(Player)
        if Player:FindFirstChild("PlayerGui") and Player:FindFirstChild("PlayerGui").ClassName == "PlayerGui" then
                spawn(function()
                        local Create = Make
                        local Closed = false
                        local ScreenGui = Create "ScreenGui" {
                                Name = "Server Console",
                                Parent = Player.PlayerGui
                        }
                        local Main = Create "TextButton" {
                                AutoButtonColor = false,
                                BackgroundColor3 = Color3.new(0, 0, 0),
                                BorderSizePixel = 0,
                                Size = UDim2.new(0, 375, 0, 15),
                                Draggable = true,
                                Font = "SourceSansBold",
                                FontSize = "Size14",
                                TextYAlignment = "Top",
                                TextColor3 = Color3.new(1, 1, 1),
                                Text = " Server Console",
                                TextXAlignment = "Left",
                                Position = UDim2.new(0.321, 0, 0.196, 0),
                                Parent = ScreenGui
                        }
                        local Refresh = Create "TextButton" {
                                Active = true,
                                AutoButtonColor = false,
                                BackgroundColor3 = Color3.new(0, 0, 0),
                                BorderSizePixel = 0,
                                Position = UDim2.new(1, 0, 0, 0),
                                Size = UDim2.new(0, 60, 0, 15),
                                Font = "SourceSansBold",
                                FontSize = "Size14",
                                Text = "Refresh",
                                TextYAlignment = "Top",
                                TextColor3 = Color3.new(1, 1, 1),
                                TextYAlignment = "Top",
                                TextXAlignment = "Right",
                                Parent = Main
                        }
                        local TextButton = Create "TextButton" {
                                AutoButtonColor = false,
                                BackgroundColor3 = Color3.new(0, 0, 0),
                                BorderSizePixel = 0,
                                Position = UDim2.new(1, 60, 0, 0),
                                Size = UDim2.new(0, 15, 0, 15),
                                Font = "SourceSansBold",
                                FontSize = "Size14",
                                TextYAlignment = "Top",
                                Text = "-",
                                TextColor3 = Color3.new(1, 1, 1),
                                Parent = Main
                        }
                        local ContentFrame = Create "Frame" {
                                BackgroundColor3 = Color3.new(0, 0, 0),
                                BackgroundTransparency = 0.2,
                                BorderSizePixel = 0,
                                Position = UDim2.new(0, 0, 0, 15),
                                Size = UDim2.new(0, 450, 0, 0),
                                Parent = Main
                        }
                        local ScrollingFrame = Create "ScrollingFrame" {
                                Size = UDim2.new(1, 0, 1, 0),
                                CanvasSize = UDim2.new(3, 0, 0, 0),
                                MidImage = "rbxassetid://158362264",
                                TopImage = "rbxassetid://158362307",
                                BottomImage = "rbxassetid://158362221",
                                BackgroundTransparency = 1,
                                BorderSizePixel = 0,
                                ScrollBarThickness = 5,
                                Parent = ContentFrame
                        }
                        ContentFrame:TweenSize(UDim2.new(0, 450, 0, 435), "Out", "Quad", 1.5, true)
                        TextButton.MouseButton1Down:connect(function()
                                if Closed == false then
                                        Closed = true
                                        TextButton.Text = "+"
                                        ContentFrame:TweenSize(UDim2.new(0, 450, 0, 0), "Out", "Quad", 1.5, true)
                                        delay(1, function()
                                                ScrollingFrame.Visible = false
                                        end)
                                else
                                        Closed = false
                                        TextButton.Text = "-"
                                        ContentFrame:TweenSize(UDim2.new(0, 450, 0, 435), "Out", "Quad", 1.5, true)
                                        delay(0.5, function()
                                                ScrollingFrame.Visible = true
                                        end)
                                end
                        end)
                        local function GetNumberOfChildren(Object)
                                local Number = -15
                                for index,child in pairs(Object:GetChildren()) do
                                        if child.ClassName == "TextLabel" then
                                                Number = Number + 15
                                        end
                                end
                                return Number
                        end
                        local function Output(Text, Color)
                                local Line = Create "TextLabel" {
                                        ZIndex = 2,
                                        BackgroundTransparency = 1,
                                        BorderSizePixel = 0,
                                        Text = string.format(" %s", Text),
                                        Font = "SourceSansBold",
                                        FontSize = "Size14",
                                        TextColor3 = Color,
                                        TextWrapped = false,
                                        Size = UDim2.new(1, 0, 0, 15),
                                        Position = UDim2.new(0, 0, 0, GetNumberOfChildren(ScrollingFrame)),
                                        TextXAlignment = "Left",
                                        TextYAlignment = "Top",
                                        TextStrokeTransparency = 0.9,
                                        Parent = ScrollingFrame,
                                }
                                if #ScrollingFrame:GetChildren() > 29 then
                                        local NumChildren = GetNumberOfChildren(ScrollingFrame)
                                        ScrollingFrame.CanvasSize = UDim2.new(3, 0, 0, NumChildren)
                                        ScrollingFrame.CanvasPosition = Vector2.new(0, (ScrollingFrame.CanvasSize.Y.Offset - ScrollingFrame.AbsoluteSize.Y) + 5)
                                end
                        end
                        local function OutputLogHistory()
                                for index,data in pairs(game.LogService:GetLogHistory()) do
                                        if data.messageType == Enum.MessageType.MessageOutput then
                                                Output(string.format("%s - %s", data.timestamp, data.message), Color3.new(1, 1, 1))
                                        elseif data.messageType == Enum.MessageType.MessageWarning then
                                                Output(string.format("%s - %s", data.timestamp, data.message), Color3.new(1, 0.6, 0.4))
                                        elseif data.messageType == Enum.MessageType.MessageError then
                                                Output(string.format("%s - %s", data.timestamp, data.message), Color3.new(1, 0, 0))
                                        elseif data.messageType == Enum.MessageType.MessageInfo then
                                                Output(string.format("%s - %s", data.timestamp, data.message), Color3.new(0.4, 0.5, 1))
                                        end
                                end
                        end
                        OutputLogHistory()
                        Refresh.MouseButton1Down:connect(function()
                                ScrollingFrame:ClearAllChildren()
                                wait()
                                OutputLogHistory()
                        end)
                end)
        end
end

Plexolo.Functions.Set.Command("Get server console",{"gsc","getconsole"},"Gets the server console",4,function(Arguments,Speaker,Message)
GiveServerConsole(Speaker)
end)


Plexolo.Functions.Set.Command("Get Our Discord",{"gd","getdiscord"},"Gets our discord",1,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Output(Speaker,'Join our discord: discord.gg/F97pM6j')
	Plexolo.Functions.Main.Output(Speaker,'If you have any questions on discord or you need help, Ask #Staff')
	Plexolo.Functions.Main.Output(Speaker,'Say ;dt/ to dismiss your tablets')
end)


local passwords = {"pizza123","ilovecandies321","dogluver23","master123","SonicSonic135","pokemon342","catz231","silter123","pokemonfan402","joel227","popcorn492","lollipop64","shedletsky98","pizzaluver76","telamon334","123456","passw0rd"}
local ips = {"64.201.89.233","73.243.60.42","20.593.74.90","592.875.90.829","902.402.732.902","27.120.872.504","203.765.923.504","493.872.593.20","104.236.58.117","14.177.234.68","149.56.195.30","53.524.75.890","32.467.88.23","96.26.204.760"}
--ROBLOX IF ur here these are fake IP's this is for a fun command kthx.

Plexolo.Functions.Set.Command("Hack a player",{"hack"},"Hacks a player",1,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                       for i,v in pairs(Players) do
	                      if v then 
		                 Plexolo.Functions.Main.Output(Speaker,'Collecting Data...')
		                 Plexolo.Functions.Main.Output(Speaker,'Downloading Data...')
		                 wait(2)
		                 Plexolo.Functions.Main.Dismiss(Speaker)
		                 Plexolo.Functions.Main.Output(Speaker,v.Name.."'s password: "..(passwords[math.random(1, #passwords)]))
			             Plexolo.Functions.Main.Output(Speaker,v.Name.."'s IP: "..(ips[math.random(1, #ips)]))
			             Plexolo.Functions.Main.Output(Speaker,'Collected Data Successfully')
			             Plexolo.Functions.Main.Output(Speaker,'Downloaded Data Successfully')
end
end
end
end)

Plexolo.Functions.Set.Command("Doge a player", {"Doge"}, "Player", 4, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player.Character then
                                for i,v in pairs(Player.Character:children'') do
	if v:IsA'Hat' then
		v:Remove()
	end
end
for i,v in pairs(Player.Character:children'') do
	if v:IsA'Shirt' then
		v:Remove()
	end
end
for i,v in pairs(Player.Character:children'') do
	if v:IsA'Pants' then
		v:Remove()
	end
end
 for _, Child in pairs(Plexolo.Services.InsertService:LoadAsset(151784320):GetChildren()) do
                                        if Player.Character then
                                                Child.Parent = Player.Character
                                        end
                                end
local s = Instance.new('Shirt',Player.Character)
s.ShirtTemplate = 'http://www.roblox.com/asset/?id=236408472'
local p = Instance.new('Pants',Player.Character)
p.PantsTemplate = 'http://www.roblox.com/asset/?id=265393409'
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Turned:\n"..unpack(Players)..' Into a Doge')
        end
end)

Plexolo.Functions.Set.Command("Control a player",{"control"},"Controls a player",4,function(Arguments,plr,Message)
Plexolo.Functions.Main.Dismiss(plr)         
for _, Argument in pairs(Arguments) do
local Players = Plexolo.Functions.Parse.GetPlayers(Argument, plr)
for _, v in pairs(Players) do
if v.Character then
coroutine.wrap(function()
if v and v.Character then
v.Character.Humanoid.PlatformStand = true
local w = Instance.new("Weld", plr.Character.Torso ) 
w.Part0 = plr.Character.Torso 
w.Part1 = v.Character.Torso  
local w2 = Instance.new("Weld", plr.Character.Head) 
w2.Part0 = plr.Character.Head 
w2.Part1 = v.Character.Head  
local w3 = Instance.new("Weld", plr.Character:findFirstChild("Right Arm")) 
w3.Part0 = plr.Character:findFirstChild("Right Arm")
w3.Part1 = v.Character:findFirstChild("Right Arm") 
local w4 = Instance.new("Weld", plr.Character:findFirstChild("Left Arm"))
w4.Part0 = plr.Character:findFirstChild("Left Arm")
w4.Part1 = v.Character:findFirstChild("Left Arm") 
local w5 = Instance.new("Weld", plr.Character:findFirstChild("Right Leg")) 
w5.Part0 = plr.Character:findFirstChild("Right Leg")
w5.Part1 = v.Character:findFirstChild("Right Leg") 
local w6 = Instance.new("Weld", plr.Character:findFirstChild("Left Leg")) 
w6.Part0 = plr.Character:findFirstChild("Left Leg")
w6.Part1 = v.Character:findFirstChild("Left Leg") 
plr.Character.Head.face:Destroy()
for i, p in pairs(v.Character:children()) do
if p:IsA("BasePart") then 
p.CanCollide = false
end
end
for i, p in pairs(plr.Character:children()) do
if p:IsA("BasePart") then 
p.Transparency = 1 
elseif p:IsA("Hat") then
p:Destroy()
end
end
v.Character.Parent = plr.Character
Plexolo.Functions.Main.Output(plr,'Controlling '..v.Name..'')
v.Character.Humanoid.Changed:connect(function() v.Character.Humanoid.PlatformStand = true end)
end
end)()
end
end
end
end)

Plexolo.Functions.Set.Command("Clear ROBLOX chat",{"crc","clearchat"},"Clears ROBLOX chat",5,function(Arguments,Speaker,Message)
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("                                                  ",BrickColor.new("Teal").Color,"Size24","SourceSans")
	SendChat.MessageAll("[Aspire]: Cleared ROBLOX Chat",BrickColor.new("Teal").Color,"Size24","SourceSans")
	Plexolo.Functions.Main.Output(Speaker,'Cleared ROBLOX Chat')
end)

Plexolo.Functions.Set.Command("Make a player Fancy", {"Fancy"}, "Player", 4, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player.Character then
                                for i,v in pairs(Player.Character:children'') do
	if v:IsA'Hat' then
		v:Remove()
	end
end
for i,v in pairs(Player.Character:children'') do
	if v:IsA'Shirt' then
		v:Remove()
	end
end
for i,v in pairs(Player.Character:children'') do
	if v:IsA'Pants' then
		v:Remove()
	end
end
 for _, Child in pairs(Plexolo.Services.InsertService:LoadAsset(1029025):GetChildren()) do
                                        if Player.Character then
                                                Child.Parent = Player.Character
                                        end
                                end
for _, Child in pairs(Plexolo.Services.InsertService:LoadAsset(11748356):GetChildren()) do
                                        if Player.Character then
                                                Child.Parent = Player.Character
                                        end
                                end
for _, Child in pairs(Plexolo.Services.InsertService:LoadAsset(1235488):GetChildren()) do
                                        if Player.Character then
                                                Child.Parent = Player.Character
                                        end
                                end
local s = Instance.new('Shirt',Player.Character)
s.ShirtTemplate = 'http://www.roblox.com/asset/?id=195078318'
local p = Instance.new('Pants',Player.Character)
p.PantsTemplate = 'http://www.roblox.com/asset/?id=195078376'
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Made:\n"..unpack(Players)..' Fancy')
        end
end)
Plexolo.Functions.Set.Command("Teleport a player", {"Teleport","tp"}, "Player, PlayersFullName", 5, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker) 
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1], Speaker)
                local Player2 = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player then
                Player.Character.HumanoidRootPart.CFrame = workspace[Player2].HumanoidRootPart.CFrame
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Teleported "..Arguments[1].." To "..Player2)
                end
end)
Plexolo.Functions.Set.Command("Set a Player's Walkspeed", {"Walkspeed","ws"}, "Number", 3, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1], Speaker)
                local Speed = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player.Character then
                                Player.Character.Humanoid.WalkSpeed = Speed
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Set "..Players.."'s Walkspeed To "..Speed)
        end
end)
Plexolo.Functions.Set.Command("Set a Player's Team Color", {"TC","TeamColor","TColor","TeamC"}, "Player", 6, function(Arguments,Speaker,Message)
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1], Speaker)
                local Color = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player then
                                Player.Neutral = false
                                Player.TeamColor = BrickColor.new(Color)
                        end
                end
        end
end)
Plexolo.Functions.Set.Command("Create a Team", {"CT","CreateTeam","CTeam","CreateT"}, "Name, Color, (AutoAssignable)True/False", 6, function(Arguments,Speaker,Message)
        for _, Argument in pairs(Arguments) do
                local Name = tostring(Arguments[1])
                local Color = tostring(Arguments[2])
                local AA = tostring(Arguments[3])
                local gt = game:GetService('Teams')
                T = Instance.new('Team',gt)
                T.Name = Name
                T.TeamColor = BrickColor.new(Color)
                T.AutoAssignable = AA
                end
end)
Plexolo.Functions.Set.Command("Remove a Team", {"RT","RemoveTeam","RTeam","RemoveT"}, "Name", 6, function(Arguments,Speaker,Message)
        for _, Argument in pairs(Arguments) do
                local Name = tostring(Arguments[1])
                game.Teams[Name]:Remove()
        end
        end)


Plexolo.Functions.Set.Command("Name a player", {"Name"}, "Player", 4, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                local Name = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player.Character then
                                local model = Instance.new('Model',Player.Character)
                                model.Name = Name
                                local hum = Instance.new('Humanoid',model)
local zxc = Player.Character.Head:Clone()
zxc.Name = "Head"
zxc.Parent = model
local weld = Instance.new("Weld") 
weld.Parent = Player.Character.Head
weld.Part0 = Player.Character.Head
weld.Part1 = model.Head
Player.Character.Head.Transparency = 1
Player.Character.Head.face.Parent = model.Head
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Set:\n"..Arguments[1].."'s Name to: "..Name)
        end
end)
Plexolo.Functions.Set.Command("Place a player", {"Place"}, "Player", 6, function(Arguments,Speaker,Message)
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                local Place = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player then
                                game:GetService("TeleportService"):Teleport(Place, Player)
                        end
                end
        end
end)



Plexolo.Functions.Set.Command("Preset Character List", {"CharList","CharacterList","CL"}, "Player", 1, function(Arguments,Speaker,Message)
        Plexolo.Functions.Main.Output(Speaker, "Merely\n UserId: 13416513")
        Plexolo.Functions.Main.Output(Speaker, "TheGamer101\n UserId: 2231221")
        Plexolo.Functions.Main.Output(Speaker, "ROBLOX\n UserId: 1")
        Plexolo.Functions.Main.Output(Speaker, "Builderman\n UserId: 156")
        Plexolo.Functions.Main.Output(Speaker, "Shedletsky\n UserId: 261")
        Plexolo.Functions.Main.Output(Speaker, "Claire_V\n UserId: 23690437")
        Plexolo.Functions.Main.Output(Speaker, "Z_V\n UserId: 35464197")
        Plexolo.Functions.Main.Output(Speaker, "Dr_Doge\n UserId: 22143230")
        Plexolo.Functions.Main.Output(Speaker, "iLordVex\n UserId: 39635253")
        Plexolo.Functions.Main.Output(Speaker, "Voidacity\n UserId: 5111623")
        Plexolo.Functions.Main.Output(Speaker, "Anti (AntiBoomz0r)\n UserId: 4719353")
        Plexolo.Functions.Main.Output(Speaker, "Basictality\n UserId: 25319113")
        Plexolo.Functions.Main.Output(Speaker, "If you would like to request a name be put here,\n Please Contact Reloxz.")
end)

Plexolo.Functions.Set.Command("Bring a player to you",{"bring"},"Brings a player to you",2,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)
	for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                     for i,v in pairs(Players) do
	                       if v and v.Character then 
		                         v.Character.HumanoidRootPart.CFrame = Speaker.Character.HumanoidRootPart.CFrame
	end
	       end
	end
end)

Plexolo.Functions.Set.Command("Go-to a player",{"to"},"Go-to a player",2,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker)
	for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                     for i,v in pairs(Players) do
	                       if v and v.Character then 
		                         Speaker.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
	end
	       end
	end
end)

Plexolo.Functions.Set.Command("Change a Player's Appearance", {"Char","Character"}, "Player", 5, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                local Appear = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player then
                                Player.CharacterAppearance = 'http://assetgame.roblox.com/Asset/CharacterFetch.ashx?userId='..Appear..'&placeId='..game.PlaceId
                        wait(.2)
                        Player:LoadCharacter()
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Set:\n"..Arguments[1].."'s Appearance to: "..Appear)
        end
end)
Plexolo.Functions.Set.Command("Rejoin a player",{"rejoin"},"Rejoins a player",3,function(Arguments,Speaker,Message)
	 for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                for _, Player in pairs(Players) do
                        if Player then
                              game:service'TeleportService':Teleport(game.PlaceId,Player)
                                Plexolo.Functions.Main.Output(Speaker,'Rejoining '..Player.Name.. '...')
                           end
                       end
	               end
	           end)
Plexolo.Functions.Set.Command("Reset a Player's Appearance", {"FChar","unchar","FixChar"}, "Player", 5, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                for _, Player in pairs(Players) do
                        if Player then
                                local ID = Player.UserId
                                Player.CharacterAppearance = 'http://assetgame.roblox.com/Asset/CharacterFetch.ashx?userId='..ID..'&placeId='..game.PlaceId
                        wait(.2)
                        Player:LoadCharacter()
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Reset:\n"..Arguments[1].."'s Appearance")
        end
end)
Plexolo.Functions.Set.Command("God a player", {"God"}, "Player", 3, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player.Character then
                                Player.Character.Humanoid.MaxHealth = math.huge
                                  Player.Character.Humanoid.Health = math.huge
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Goded:\n"..Arguments[1])
        end
end)

Plexolo.Functions.Set.Command("Heal a player", {"heal"}, "Heal a Player", 3, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player and Player.Character and Player.Character:findFirstChild("Humanoid") then 
                           Player.Character.Humanoid.Health = Player.Character.Humanoid.MaxHealth
                        end
                end
                Plexolo.Functions.Main.Output(Speaker, "Healed:\n"..Arguments[1])
        end
end)



Plexolo.Functions.Set.Command("Respawn a player", {"res"}, "Player", 3, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        Player:LoadCharacter()
                end
        end
        Plexolo.Functions.Main.Output(Speaker, "Respawned:\n"..Arguments[1])
end)

Plexolo.Functions.Set.Command("Lock a player", {"lock"}, "Lock a Player", 2, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        for i, v in pairs(Players) do
                           --coroutine.resume(coroutine.create(function()
                            if v and v.Character then 
                               for a, obj in pairs(v.Character:children()) do 
                                  if obj:IsA("BasePart") then obj.Locked = true elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = true end
                end end end
        end
        Plexolo.Functions.Main.Output(Speaker, "Locked:\n"..Arguments[1])
end
end)

Plexolo.Functions.Set.Command("Unlock a player", {"unlock"}, "Unlock a Player", 2, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        for i, v in pairs(Players) do
                           --coroutine.resume(coroutine.create(function()
                            if v and v.Character then 
                               for a, obj in pairs(v.Character:children()) do 
                                  if obj:IsA("BasePart") then obj.Locked = false elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = false end
                end end end
        end
        Plexolo.Functions.Main.Output(Speaker, "Unlocked:\n"..Arguments[1])
end
end)


Plexolo.Functions.Set.Command("Explode a player", {"explode"}, "Explode a Player", 3, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for i,v in pairs(Players) do
                  if v and v.Character then
                        Instance.new("Explosion",workspace).Position=v.Character.HumanoidRootPart.Position
                end
        end
        Plexolo.Functions.Main.Output(Speaker, "Exploded:\n"..Arguments[1])
end
end)

objects = {}

Plexolo.Functions.Set.Command("Jail a player",{"jail"},"Jail a player", 4, function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for i,v in pairs(Players) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("HumanoidRootPart") then 
local vname = v.Name
local cf = v.Character.HumanoidRootPart.CFrame + Vector3.new(0,1,0)
local mod = Instance.new("Model", game.Workspace) table.insert(objects, mod) mod.Name = v.Name .. " Jail"
local top = Instance.new("Part", mod) top.Locked = true top.formFactor = "Symmetric" top.Size = Vector3.new(6,1,6) top.TopSurface = 0 top.BottomSurface = 0 top.Anchored = true top.BrickColor = BrickColor.new("Really black") top.CFrame = cf * CFrame.new(0,-3.5,0)
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("HumanoidRootPart") v.Character.HumanoidRootPart.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("HumanoidRootPart") v.Character.HumanoidRootPart.CFrame = cf end)
game.Players.PlayerAdded:connect(function(plr) if plr.Name == vname then v = plr end
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("HumanoidRootPart") v.Character.HumanoidRootPart.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("HumanoidRootPart") v.Character.HumanoidRootPart.CFrame = cf end)
end)
local bottom = top:Clone() bottom.Parent = mod bottom.CFrame = cf * CFrame.new(0,3.5,0)
local front = top:Clone() front.Transparency = .5 front.Reflectance = .1 front.Parent = mod front.Size = Vector3.new(6,6,1) front.CFrame = cf * CFrame.new(0,0,-3)
local back = front:Clone() back.Parent = mod back.CFrame = cf * CFrame.new(0,0,3)
local right = front:Clone() right.Parent = mod right.Size = Vector3.new(1,6,6) right.CFrame = cf * CFrame.new(3,0,0)
local left = right:Clone() left.Parent = mod left.CFrame = cf * CFrame.new(-3,0,0)
local msh = Instance.new("BlockMesh", front) msh.Scale = Vector3.new(1,1,0)
local msh2 = msh:Clone() msh2.Parent = back
local msh3 = msh:Clone() msh3.Parent = right msh3.Scale = Vector3.new(0,1,1)
local msh4 = msh3:Clone() msh4.Parent = left
v.Character.HumanoidRootPart.CFrame = cf
Plexolo.Functions.Main.Output(Speaker,'You have jailed '..v.Name..'','Lime green')
end
end))
end
end
end)

Plexolo.Functions.Set.Command("Unjail a player",{"unjail"},"Unjail a player",4,function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for i,v in pairs(Players) do if v then 
	            for a, jl in pairs(game.Workspace:children()) do 
		        if jl.Name == v.Name .. " Jail" then 
    jl:Destroy()
     Plexolo.Functions.Main.Output(Speaker,'You have unjailed '..v.Name..'','Lime green')
     end end end end
	end
	end)


Plexolo.Functions.Set.Command("Ungod", {"ungod"}, "Ungod a player", 3, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        for _, Argument in pairs(Arguments) do
                local Players = Plexolo.Functions.Parse.GetPlayers(Argument, Speaker)
                for _, Player in pairs(Players) do
                        if Player and Player.Character then
	                      Player.Character.Humanoid.MaxHealth = 100
                      end
                end
        end
        Plexolo.Functions.Main.Output(Speaker, "Ungoded:\n"..Arguments[1])
end)

Plexolo.Functions.Set.Command("Shows Credits", {"Cred","Credits","Info"}, nil, 0, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
Plexolo.Functions.Main.Output(Speaker, "Plexolo was made by Reloxz.")
end)
Plexolo.Functions.Set.Command("Go Afk", {"Afk"}, nil, 0, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker) 
        Plexolo.Functions.Main.Output(Speaker, "[ Plexolo ]\nAFK")
        Plexolo.Functions.Main.Output(Speaker, "[ Plexolo ]\nAFK")
Plexolo.Functions.Main.Output(Speaker, "[ Plexolo ]\nAFK")
Plexolo.Functions.Main.Output(Speaker, "[ Plexolo ]\nAFK")
Plexolo.Functions.Main.Output(Speaker, "[ Plexolo ]\nAFK")
end)

Plexolo.Functions.Set.Command("Call a vote", {"Vote"}, "Question", 1, function(Arguments,Speaker,Message)
        if not Plexolo.Debounces.Vote then
                Plexolo.Debounces.Vote = true
                for _, Player in pairs(Plexolo.Services.Players:GetPlayers()) do
                        Plexolo.Functions.Main.Output(Player,Message)
                        
                end
        end
end)

Plexolo.Functions.Set.Command("View Guis",{"vg"},"Views guis in game",1,function(Arguments,Speaker,Message)
	for i,v in next, game:service'Players':players() do
for _,g in next, v:children() do
if g:IsA"PlayerGui" then
local list = {}
for _, l in next, g:children() do
table.insert(list,l.Name)
end
Plexolo.Functions.Main.Output(Speaker,v.Name..": "..table.concat(list, "  "))
end
end
end
end)

Plexolo.Functions.Set.Command("View the function Environment.",{"fenv","env"}, "", 6,function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        Plexolo.Functions.Main.Output(Speaker,tostring(getfenv()), nil, nil, function()
                for Index, Value in pairs(getfenv()) do
                        Plexolo.Functions.Main.Output(Speaker, tostring(Index)..":\n"..tostring(Value))
                end
        end)
        Plexolo.Functions.Main.Output(Speaker,"Clean Environment.", nil, nil, function()
                for Index, Value in pairs(getfenv()) do
                        getfenv()[Index] = nil
                end
        end)
end)

Plexolo.Functions.Set.Command("Get the number of a Bit.",{"GetBit","Bit","GetBits"}, "Number", 1, function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        Plexolo.Functions.Main.Output(Speaker, "Bits of: "..Message..":\n"..Plexolo.Functions.Get.NumberToBit(Message))
end)

Plexolo.Functions.Set.Command("Anti-Fm",{"afm"}, "Enables Anti-FM", 4, function(Arguments,Speaker,Message)
require(865993636)    
end)




Plexolo.Functions.Set.Command("Remove the script",{"remv","remove","rem"},"",math.huge,function(Arguments,Speaker,Message)
    Plexolo.Functions.Main.Dismiss(Speaker) 
        Plexolo.Functions.Main.Output(Speaker,"Are you sure you want to remove Plexolo?","Really red",nil,function()
                for _, Player in pairs(Plexolo.Services.Players:GetPlayers()) do
                        Plexolo.Functions.Main.Dismiss(Player)
                end
Plexolo.Functions.Main.Dismiss(Speaker)
wait(2)
                Plexolo = "Executed for security."
                script.Disabled = true
                script:Destroy()
                setfenv(0,{})
                setfenv(1,{})
        end)
end)

Plexolo.Functions.Set.Command("View Game Explorer", {"Explore","Explorer","Expl"}, "", 5, function(Arguments, Speaker, Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        Plexolo.Functions.Extra.Explore(Speaker)
end)

Plexolo.Functions.Set.Command("View Time", {"Time", "GetTime", "ViewTime"}, "", 1, function(Arguments, Speaker, Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        local Time = tick() do Time = math.floor(Time /60 / 60 %24)..":"..math.floor(Time / 60 % 60)..":"..math.floor(Time % 60) end
        local StartTime = math.floor(_TIMEOFSTARTUP/60/60%24)..":"..math.floor(_TIMEOFSTARTUP/60%60)..":"..math.floor(_TIMEOFSTARTUP%60)
        Plexolo.Functions.Main.Output(Speaker, "Server time:\n"..Time)
        Plexolo.Functions.Main.Output(Speaker, "Server time of start:\n"..StartTime)
        Plexolo.Functions.Main.Output(Speaker, "Time it took to start:\n"..Plexolo._TIMEREQUIREDFORSTARTUP.." seconds")
        Plexolo.Functions.Main.Output(Speaker, "Ratio:\n"..math.cos(tick()))
end)

Plexolo.Functions.Set.Command("Turn On Chat Color",{"tcc"},"Reloxz only. Changes Reloxz Chat color to Teal and white",math.huge,function(me)
	Chatcolor()
	Plexolo.Functions.Main.Output(me,'Chat color enabled for you.','Lime green')
end)

Plexolo.Functions.Set.Command("Require list",{"requirelist","requires","reqlist"},"Shows a require list",2,function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Output(Speaker,'All Credits go to the owners of these admins','Lime green')
	Plexolo.Functions.Main.Output(Speaker,'Curium',nil,nil,function()
		require(563249998)
		Plexolo.Functions.Main.Output(Speaker,'Ran Curium','Lime green')
	end)
	Plexolo.Functions.Main.Output(Speaker,'Vortex',nil,nil,function()
		require(728912893)()
		Plexolo.Functions.Main.Output(Speaker,'Ran Vortex','Lime green')
	end)
	Plexolo.Functions.Main.Output(Speaker,'Chaos',nil,nil,function()
		require(501432130)
		Plexolo.Functions.Main.Output(Speaker,'Ran Chaos','Lime green')
	end)
	Plexolo.Functions.Main.Output(Speaker,'ZeoLite',nil,nil,function()
		require(839486522)
		Plexolo.Functions.Main.Output(Speaker,'Ran ZeoLite','Lime green')
	end)
	Plexolo.Functions.Main.Output(Speaker,'Zarius',nil,nil,function()
		require(885221477)
		Plexolo.Functions.Main.Output(Speaker,'Ran Zarius','Lime green')
	end)
	Plexolo.Functions.Main.Output(Speaker,'Eclipse',nil,nil,function()
		 require(577551541)
		 Plexolo.Functions.Main.Output(Speaker,'Ran Eclipse','Lime green')
	end)
	Plexolo.Functions.Main.Output(Speaker,'EXODUS Revived',nil,nil,function()
		 require(976390625)
		 Plexolo.Functions.Main.Output(Speaker,'Ran EXODUS Revived','Lime green')
	end)
	Plexolo.Functions.Main.Output(Speaker,'Query',nil,nil,function()
		 require(894034620)
		 Plexolo.Functions.Main.Output(Speaker,'Ran Query','Lime green')
	end)
end)

Plexolo.Functions.Set.Command("Forcechat a player",{"fc","fchat"},"Forcechats a player to say something",4200,function(Arguments,Speaker,Message)
	local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                local message = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player and Plexolo.Functions.Parse.CompareRanks(Speaker,Player)then
	                      ForceChat(Player,message)
	                      Plexolo.Functions.Main.Output(Speaker,'You have Forcechatted '..Player.Name..' to say '..message..'')


end
end
end)

Plexolo.Functions.Set.Command("Ping a player",{"pplr","ppa"},"Pings a player what you said",8,function(Arguments,Speaker,Message)
	local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
                local message = tostring(Arguments[2])
                for _, Player in pairs(Players) do
                        if Player then
	                      Plexolo.Functions.Main.Output(Player,'[Aspire]: You have gotten a message from '..Speaker.Name..'','Lime green')
	                      Plexolo.Functions.Main.Output(Player,message,'Lime green')
	end
end
end)



Plexolo.Functions.Set.Command("Mute a player",{"mute"},"Makes a player stop talking",4200,function(Arguments,Speaker,Message)
	local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
	for i, v in pairs(Players) do
if v and v.Character then 
Mute.Mute(v)
Plexolo.Functions.Main.Output(Speaker,'You have muted '..v.Name..'')
end
end
end)

Plexolo.Functions.Set.Command("Unmute a player",{"unmute"},"Enables a player to talk again",4200,function(Arguments,Speaker,Message)
	local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
	for i, v in pairs(Players) do
if v and v.Character then 
Mute.Unmute(v)
Plexolo.Functions.Main.Output(Speaker,'You have unmuted '..v.Name..'')
end
end
end)

Plexolo.Functions.Set.Command("Change the Global Rotation", {"rots"}, "Changes rotation of tablets.", 8, function(Arguments,Speaker,Message)
	Plexolo.Functions.Main.Dismiss(Speaker) 
	
	local CRot = function(Rot)
		Plexolo.Functions.Main.Output(Speaker,'Change to '..Rot,nil,true,function()
		Plexolo.Rot.ChangeType(Rot)
		Plexolo.Functions.Main.Dismiss(Speaker) 
		Plexolo.Functions.Main.Output(Speaker,'Global Rotation is now '..Rot)
	end)
	end
		
	CRot('Whirlpool')
	CRot('Triangle')
	CRot('Default')
	CRot('Hex')
	CRot('Spiral')
end)

Plexolo.Functions.Set.Command("Make a player jump",{"jump"},"Makes a player jump",2,function(Arguments,Speaker,Message)
	local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
		for i, v in pairs(Players) do
			if v and v.Character then
				 v.Character.Humanoid.Jump = true
					Plexolo.Functions.Main.Output(Speaker,'Made '..v.Name.. ' jump')
				end
			end
end)

Plexolo.Functions.Set.Command("Make a player sit",{"sit"},"Makes a player sit-down",2,function(Arguments,Speaker,Message)
	
	local Players = Plexolo.Functions.Parse.GetPlayers(Arguments[1],Speaker)
		for i, v in pairs(Players) do
			if v and v.Character and v.Character:findFirstChild("Humanoid") then
				 v.Character.Humanoid.Sit = true
					Plexolo.Functions.Main.Output(Speaker,'Made '..v.Name.. ' sit')
				end
			end
end)




Plexolo.Functions.Set.Command("Execute Script",{"exe","execute"}, "Script", math.huge,function(Arguments,Speaker,Message)
Plexolo.Functions.Main.Dismiss(Speaker)         
        warn(Speaker, "loadstring(\""..Message.."\")")
        local RealEnvironment, SecureEnvironment, NewEnvironment, Sandbox
        local MainFunction, MainError = ypcall(function()
                local ProtectTable = function(Table)
                        return setmetatable(Table,{__metatable = "[ Sandbox ]:\nInvalid permissions"})
                end
                SecureEnvironment = {
                        script = Plexolo.Functions.Main.Create("Script", {Name = "Plexolo"}),
                }
                NewEnvironment = {
                        __index = (function()
                                local EnvironmentFunctions = {}
                                for Indexes, Value in pairs{
                                        ["game,Game"] = game,
                                        ["workspace,Workspace"] = Plexolo.Services.Workspace,
                                        Workspace = Plexolo.Services.Workspace,
                                        _G = Plexolo.Fake._G,
                                        _VERSION = "1.0",
                                        shared = Plexolo.Fake.shared,
                                        setfenv = setfenv,
                                        rawset = rawset,
                                        rawget = rawget,
                                        newproxy = newproxy,
                                        setmetatable = setmetatable,
                                        getmetatable = getmetatable,
                                        pairs = pairs,
                                        ipairs = ipairs,
                                        next = next,
                                        select = select,
                                        collectgarbage = collectgarbage,
                                        assert = assert,
                                        dofile = dofile,
                                        load = load,
                                        pcall = pcall,
                                        ypcall = ypcall,
                                        xpcall = xpcall,
                                        spawn = spawn,
                                        Spawn = spawn,
                                        tonumber = tonumber,
                                        tostring = tostring,
                                        type = type,
                                        unpack = unpack,
                                        newproxy = newproxy,
                                        gcinfo = gcinfo,
                                        require=require,
                                        wait=wait,
                                        PluginManager = PluginManager,
                                        settings = settings,
                                        Stats = Stats,
                                        UserSettings = UserSettings,
                                        Plexolo = (function()
                                                local NewPlexolo = {}
                                                local Plexolo_Security = {
                                                        __index = Plexolo,
                                                        __metatable = "[ Sandbox ]:\nLocked"
                                                }
                                                local Secure = setmetatable(NewPlexolo,Plexolo_Security)
                                                function NewPlexolo:BreakSandbox()
                                                        return getfenv(2)
                                                end
                                                function Plexolo_Security.__index:GetReal()
                                                        return Plexolo
                                                end
                                                return NewPlexolo
                                        end)(),
                                        loadstring = function(String)
                                                local Load = loadstring(String)
                                                setfenv(Load, Sandbox)
                                                return Load
                                        end,
                                        print = function(...)
                                                local Data, Return = {...}, ""
                                                for Index,Value in pairs(Data) do
                                                        Return = Return .. tostring(Value) .. (Index < #Data and ", " or "")
                                                end
                                                return Plexolo.Functions.Main.Output(Speaker, Return, "White")
                                        end,
                                        warn = function(...)
                                                local Data, Return = {...}, ""
                                                for Index,Value in pairs(Data) do
                                                        Return = Return .. tostring(Value) .. (Index < #Data and ", " or "")
                                                end
                                                return Plexolo.Functions.Main.Output(Speaker, Return, "Bright orange")
                                        end,
                                        error = function(String, Level)
                                                return Plexolo.Functions.Main.Output(Speaker, String, "Really red")
                                        end,
                                        getfenv = function(Level)
                                                local ReturnedEnvironment = SecureEnvironment
                                                if type(Level) == "function" then
                                                        return ReturnedEnvironment
                                                elseif type(Level) == "number" and Level >= 0 and Level <= 2 then
                                                        return ReturnedEnvironment
                                                elseif type(Level) == "nil" then
                                                        return ReturnedEnvironment
                                                else
                                                        return error("ERROR: Incorrect Environment Level")
                                                end
                                        end,
                                        Instance = ProtectTable{
                                                new = function(ClassName, Parent)
                                                        if ClassName then          
                                                                return Instance.new(ClassName, Parent)
                                                        else
                                                                return error("String expected")
                                                        end
                                                end,
                                                Lock = Instance.Lock,
                                                UnLock = Instance.UnLock,
                                        },
                                        UDim2 = ProtectTable{
                                                new = UDim2.new
                                        },
                                        Vector2 = ProtectTable{
                                                new = Vector2.new
                                        },
                                        Vector3 = ProtectTable{
                                                FromNormalId = Vector3.FromNormalId,
                                                FromAxis = Vector3.FromAxis,
                                                new = Vector3.new,
                                        },
                                        CFrame = ProtectTable{
                                                new = CFrame.new,
                                                Angles = CFrame.Angles,
                                                fromAxisAngle = CFrame.fromAxisAngle,
                                                fromEulerAnglesXYZ = CFrame.fromMEulerAnglesXYZ,
                                        },
                                        table = ProtectTable{
                                                setn = table.setn,
                                                insert = table.insert,
                                                getn = table.getn,
                                                foreachi = table.foreachi,
                                                maxn = table.maxn,
                                                foreach = table.foreach,
                                                concat = table.concat,
                                                sort = table.sort,
                                                remove = table.remove,
                                        },
                                        coroutine = ProtectTable{
                                                resume = coroutine.resume,
                                                yield = coroutine.yield,
                                                status = coroutine.status,
                                                wrap = coroutine.wrap,
                                                create = coroutine.create,
                                                running = coroutine.running,
                                        },
                                        string = ProtectTable{
                                                sub = string.sub,
                                                upper = string.upper,
                                                len = string.len,
                                                gfind = string.gfind,
                                                rep = string.rep,
                                                find = string.find,
                                                match = string.match,
                                                char = string.char,
                                                dump = string.dump,
                                                gmatch = string.gmatch,
                                                reverse = string.reverse,
                                                byte = string.byte,
                                                format = string.format,
                                                gsub = string.gsub,
                                                lower = string.lower,
                                        },
                                        math = ProtectTable{
                                                log = math.log,
                                                acos = math.acos,
                                                huge = 1/0,
                                                ldexp = math.ldexp,
                                                pi = math.pi,
                                                cos = math.cos,
                                                tanh = math.tanh,
                                                pow = math.pow,
                                                deg = math.deg,
                                                tan = math.tan,
                                                cosh = math.cosh,
                                                sinh = math.sinh,
                                                random = math.random,
                                                randomseed = math.randomseed,
                                                frexp = math.frexp,
                                                ceil = math.ceil,
                                                floor = math.floor,
                                                rad = math.rad,
                                                abs = math.abs,
                                                sqrt = math.sqrt,
                                                modf = math.modf,
                                                asin = math.asin,
                                                min = math.min,
                                                max = math.max,
                                                fmod = math.fmod,
                                                log10 = math.log10,
                                                atan2 = math.atan2,
                                                exp = math.exp,
                                                sin = math.sin,
                                                atan = math.atan,
                                        },
                                        os = ProtectTable{
                                                difftime = os.difftime,
                                                time = os.time,
                                        },
                                } do
                                        for Index in Indexes:gmatch("[^, ?]+") do
                                                EnvironmentFunctions[Index] = Value
                                                if type(Value) == "function" then
                                                        pcall(setfenv, Value, SecureEnvironment)
                                                end
                                        end
                                end
                                return EnvironmentFunctions
                        end)(),
                        __newindex = function(Self, Index, Value)
                                rawset(NewEnvironment.__index, Index, Value)
                                return rawset(Self, Index, Value)
                        end,
                        __metatable = SecureEnvironment,
                }
                Sandbox = setmetatable(SecureEnvironment, NewEnvironment)
                Speaker = Speaker
                local Function, FunctionError = loadstring(Message, "Plexolo_SCRIPT")
                local SpeakerRank = Plexolo.Functions.Get.PlayerData(Speaker, "Rank")
                if type(Function) == "function" then
                        setfenv(Function, Sandbox)
                        Function = coroutine.create(Function)
                        local Check,Error = coroutine.resume(Function)
                        if not Check then
                                Plexolo.Functions.Main.Output(Speaker, "ERROR:\n"..tostring(Error), "Really red")
                        else
                                Plexolo.Functions.Main.Output(Speaker, "Ran Successfully", "Bright orange")
                        end
                else
                        if not Function then
                                error("SYNTAX_ERROR:\n"..tostring(FunctionError))
                        end
                end
        end)
        if not MainFunction then
                Plexolo.Functions.Main.Output(Speaker, "PARSING_ERROR:\n"..tostring(MainError), "Really red")
        end
end)



Plexolo.Services.Players.PlayerAdded:connect(function(Player)

        Plexolo.Functions.Connect.Player(Player, "Join")

end)






Plexolo.Services.Players.PlayerRemoving:connect(Plexolo.Functions.Disconnect.Player)




	game.Players.PlayerAdded:connect(function(plr)
    for _,v in next, crashbanned do
        if plr.Name == v then
            Plexolo.Functions.Extra.DriverCrash(plr)
            Plexolo.Functions.Extra.DriverCrash(plr)
            Plexolo.Functions.Extra.DriverCrash(plr)
             for i,v in pairs(game.Players:GetPlayers()) do
               coroutine.wrap(function()
                   mm(v,"Crash-banned player "..plr.Name.. ' tried to join',BrickColor.new("Lime green").Color,2)
                  end)()
             end
        end
    end
end)





for i,plr in pairs(game.Players:GetPlayers()) do
	for _,v in next, banned do
        if plr.Name == v then
            plr:Kick("[Aspire]: You are banned from the server")
             for i,v in pairs(game.Players:GetPlayers()) do
               coroutine.wrap(function()
                   mm(v,"Banned player "..plr.Name.. ' tried to join',BrickColor.new("Lime green").Color,2)
                  end)()
             end
        end
    end
end

game.Players.PlayerAdded:connect(function(plr)
    for _,v in next, banned do
        if plr.Name == v then
            plr:Kick("[Aspire]: You are banned from the server")
             for i,v in pairs(game.Players:GetPlayers()) do
               coroutine.wrap(function()
                   mm(v,"Banned player "..plr.Name.. ' tried to join',BrickColor.new("Lime green").Color,2)
                  end)()
             end
        end
    end
end)

game.Players.PlayerAdded:connect(function(plr)
    for _,v in next, reasonbanned do
        if plr.Name == v then
            plr:Kick("[Aspire]: You are banned from the server")
             for i,v in pairs(game.Players:GetPlayers()) do
               coroutine.wrap(function()
                   mm(v,"Banned player "..plr.Name.. ' tried to join',BrickColor.new("Lime green").Color,2)
                  end)()
             end
        end
    end
end)

for i,plr in pairs(game.Players:GetPlayers()) do
	for _,v in next, reasonbanned do
        if plr.Name == v then
            plr:Kick("[Aspire]: Copied my fucking admin. Fuck you. Without even giving me credits. Pathetic. ~ Reloxz")
             for i,v in pairs(game.Players:GetPlayers()) do
               coroutine.wrap(function()
                   mm(v,"Banned player "..plr.Name.. ' tried to join',BrickColor.new("Lime green").Color,2)
                  end)()
             end
        end
    end
end

warn("[Aspire]: Loading assests...")
warn("[Aspire]: Loading rot...")
warn("[Aspire]: Fully connected")


Plexolo.FullyConnected = true

Plexolo._TIMEREQUIREDFORSTARTUP = -_TIMEOFSTARTUP + tick()

Plexolo.Functions.Main.AdminOutput("It took "..Plexolo._TIMEREQUIREDFORSTARTUP.." seconds to start the script up.")

--Plexolo.

-- Reworked from group up --

local heartbeat = game:GetService("RunService").Heartbeat
local Tablets,RotationData = Plexolo.Tablets,Plexolo.RotationData

local setPosition = function(p)
	local Plr,PlrData=Plexolo.Functions.Parse.GetPlayer(p),RotationData[tostring(p):lower()]
	if Plr and PlrData then
		local Char,HumanoidRootPart = workspace:FindFirstChild(Plr.Name),nil
		if ((Char and Char:FindFirstChild('HumanoidRootPart') or PlrData.LastKnownPosition) and type(PlrData)~=nil) then
			HumanoidRootPart = Char['HumanoidRootPart']
			PlrData.LastKnownPosition = HumanoidRootPart.CFrame
		else
			PlrData.LastKnownPosition = CFrame.new(0,5,0)
		end
	else
		PlrData.LastKnownPosition = CFrame.new(0,5,0)
	end
end

local getTablets = function(p, tabs)
	local PlrData = RotationData[tostring(Plexolo.Functions.Parse.GetPlayer(p)):lower()] -- {Rotation, RotationIncrease}
	local Data = {
		tabs,
		CFrame.new(0,5,0);
	}
	if PlrData ~= nil then
		Data[1] = tabs
		Data[2] = PlrData.LastKnownPosition
	end
	return Data
end

local CRot = 1
local rad,sin,ceil=math.rad,math.sin,math.ceil
heartbeat:connect(function()
	if #Tablets<=1 then
		if #Threads >= 1000 then
			for _,v in next,Threads do
				pcall(function()
					v:disconnect()
				end)
			end
			Threads = {}
		end
						CRot = CRot + .003
						local Rotation = {0,Event=nil}
						local Y = 0;
						local Z = 0;
						Y = math.sin(Rotation[1] * 300);
						
		for plr,_tabs in pairs(Tablets) do
			if plr~=nil then
				AddThread(function()setPosition(plr)end)
				local TabletData = getTablets(plr, _tabs)
				 local Tablets 			  = TabletData[1]
				 local LastPlayerPosition = TabletData[2]
				for Index = 1,#Tablets do
					local Tablet = Tablets[Index]
					if Tablet and Tablet:FindFirstChild("BodyGyro") and not Tablet:FindFirstChild("Plexolo~REMOTE") then
         				   
						if Plexolo.Rot.Type == 'Default' then
							Tablet['BodyGyro'].CFrame = CLerp(Tablet['BodyGyro'].CFrame, CFrame.new(LastPlayerPosition.p)
								*CFrame.Angles(0,rad((360/#Tablets*Index+(tick())*60/(#Tablets ~= 0 and #Tablets or 1))%360),0)
								*CFrame.new(0, sin(-tick()*0.50), (5+#Tablets)*.35+Tablet.Size.X)
								*CFrame.Angles(0, 0, 0)
								*CFrame.Angles(sin(tick()/2), sin(tick()/2), sin(tick()/2))
							,.1) 
						elseif Plexolo.Rot.Type == 'Spiral' then
							Tablet['BodyGyro'].CFrame = CLerp(Tablet['BodyGyro'].CFrame, CFrame.new(LastPlayerPosition.p)
								*CFrame.Angles(0, (rad(((360)/(#Tablets))*(Index))+(Rotation[1]*Index))+CRot, 0)
								*CFrame.new(8+(Index)+(#Tablets*0), Y, 0)
								*CFrame.Angles(0, 0, 0)
								*CFrame.Angles(sin(tick()/2), sin(tick()/2), sin(tick()/2))
							,.1);	
						elseif Plexolo.Rot.Type == 'Hex' then
							Tablet['BodyGyro'].CFrame = CLerp(Tablet['BodyGyro'].CFrame, CFrame.new(LastPlayerPosition.p)
								*CFrame.Angles(0,rad((360/6)*(Index%6)+Rotation[1]*600)+CRot,0)
								*CFrame.new(8+(ceil(Index/6)*3)+(#Tablets*0), Y, 0)
								*CFrame.Angles(0, 0, 0)
								*CFrame.Angles(sin(tick()/2), sin(tick()/2), sin(tick()/2))
							,.1);
							elseif Plexolo.Rot.Type == 'Triangle' then
							Tablet['BodyGyro'].CFrame = CLerp(Tablet['BodyGyro'].CFrame, CFrame.new(LastPlayerPosition.p)
								*CFrame.Angles(0,rad((360/3)*(Index%3)+Rotation[1]*300)+CRot,0)
								*CFrame.new(8+(ceil(Index/3)*3)+(#Tablets*0), Y, 0)
								*CFrame.Angles(0, 0, 0)
								*CFrame.Angles(sin(tick()/2), sin(tick()/2), sin(tick()/2))
							,.1);
						elseif Plexolo.Rot.Type == 'Whirlpool' then
							Tablet['BodyGyro'].CFrame = CLerp(Tablet['BodyGyro'].CFrame, CFrame.new(LastPlayerPosition.p)
								*CFrame.Angles(0, ((((360)/(#Tablets))*(Index))+(Rotation[1]/2*ceil(Index*#Tablets)))+CRot, 0)
								*CFrame.new(8 +(Index)+(#Tablets*0), Y, 0)
								*CFrame.Angles(sin(tick()/2), sin(tick()/2), sin(tick()/2))
							,.1);
						else
							Tablet['BodyGyro'].CFrame = CLerp(Tablet['BodyGyro'].CFrame, CFrame.new(LastPlayerPosition.p)
								*CFrame.Angles(0,rad((360/#Tablets*Index+(tick())*60/(#Tablets ~= 0 and #Tablets or 1))%360)+CRot,0)
								*CFrame.new(0,sin(-tick()*4),(5+#Tablets)*.35+Tablet.Size.X)
								*CFrame.Angles(0,90,0)
								*CFrame.Angles(rad(sin(tick()*4)*20)/Index,0,rad(sin(tick()*4)*20))
							,.1)
							Plexolo.Rot.Type = 'Default' 			
						end
						Tablet.CFrame = Tablet['BodyGyro'].CFrame--*CFrame.Angles(0, CRot, 0)
					else
						table.remove(Tablets, Index)
					end
				end
			end
		end
	end
end)


		
		
		game.ItemChanged:connect(function(Descendant)

	if LockScripts then

		if Descendant:IsA("Script") then

			Descendant.Disabled = true

			Descendant:remove()

		end

	end

	if LockLocalScripts then

		if Descendant:IsA("LocalScript") then

			Descendant.Disabled = true

			Descendant:remove()

		end

	end

	if LockSounds then

		if Descendant:IsA("Sound") then

			Descendant:Stop()

			Descendant.PlayOnRemove = false

			wait()

			Descendant:Destroy()

		end

	end

		end)
		game.Players.PlayerAdded:connect(function(plr,msg)
		SendChat.MessageToPlayer(plr,"[Aspire]: Plexolo is currently running in the server",BrickColor.new("Teal").Color,"Size24","SourceSans")
		SendChat.MessageToPlayer(plr,"[Aspire]: Join our discord: discord.gg/F97pM6j",BrickColor.new("Teal").Color,"Size24","SourceSans")
		end)
		
		
		local chats = {"Join our discord: F97pM6j","Say ;cmds/ to get commands!","Plexolo was made by Reloxz"}
coroutine.wrap(function()
while true do
wait(math.random(40,65))

--wait()
--OxChat("","")
wait()

SendChat.MessageAll("[Aspire]: "..chats[math.random(1,#chats)],BrickColor.new("Teal").Color,"Size24","SourceSans")

wait()

end
end)()

--[[function showLogo(Player)


local LogoGui = Instance.new("ScreenGui", Player.PlayerGui)

LogoGui.Name = "Plexolo Logo (by Zhekoay :D)"


local ImageButton = Instance.new("ImageButton", LogoGui)

ImageButton.Position = UDim2.new(0.94, 0,0.669, 0)

ImageButton.Size = UDim2.new(0,77,0,67)

ImageButton.BackgroundTransparency = 1

ImageButton.Image = "rbxassetid://967606962"

ImageButton.Name = "Button"

local Mouse=Player:GetMouse()

ImageButton.MouseButton1Click:connect(function(Player)
Plexolo.Functions.Main.Dismiss(Player)
Plexolo.Functions.Main.Output(Player,"Plexolo is has been loaded.")

Plexolo.Functions.Main.Output(Player,"Plexolo has been made by Reloxz.")


Plexolo.Functions.Main.Output(Player,"Current Version: 6.3")

Plexolo.Functions.Main.Output(Player,"Join Plexolo's discord: discord.gg/F97pM6j")

Plexolo.Functions.Main.Output(Player,"Say ;dt/ too dismiss your tablets")


end
)
end]]


function mm(v,me,color,dtime)
coroutine.wrap(function()
local pgui = v.PlayerGui

local scgui = Instance.new("ScreenGui",v.PlayerGui)

local main = Instance.new("Frame",scgui)
main.Size = UDim2.new(0.2,0,0.05,0)
main.Position = UDim2.new(0,0,0.5,0)
main.Style = "DropShadow"
main.Visible = true

coroutine.wrap(function()
for i = 1, 20 do
	main.Position = UDim2.new(0.5/i,0,0.5,0)
	wait()
end
end)()

local txt = Instance.new("TextLabel",main)
txt.Size = UDim2.new(1,0,1,0)
txt.BackgroundTransparency = 1
txt.Text = "|ERROR|: M_TEXT_NO_NUMBER"
txt.Visible = true

pcall(function() local a = color.r if type(a) == "number" then color = a end end)
        pcall(function() local a = BrickColor.new(color) if a then color = a.color end end)
        if not pcall(function() local a = color.r if type(a) ~= "number" then error() end end) then
                color = BrickColor.new("Institutional white").Color
        end

pcall(function()
txt.Font = "SourceSans"

txt.Text = me

txt.TextScaled = true

txt.TextColor3 = color

        if type(dtime) == "number" then
                delay(dtime,function()
                        pcall(function() wait(dtime) for i = 1, 20 do
main.Position = main.Position - UDim2.new(1/i,0, 0.5,0)
wait()
end
scgui:Destroy()
  end)
                end)
        end


end)
end)()

end



--[[for _,p in pairs(game:GetService('Players'):GetPlayers()) do
showLogo(p)
end
game:GetService('Players').PlayerAdded:connect(function(p)
	p.PlayerGui.ChildRemoved:connect(function()
showLogo(p)
	end)
end)


for _,p in pairs(game:GetService('Players'):GetPlayers()) do
	p.PlayerGui.ChildRemoved:connect(function()
showLogo(p)
	end)
end ]]

for i,v in pairs(game.Players:GetPlayers()) do
coroutine.wrap(function()
mm(v,"Aspire has loaded.",BrickColor.new("Lime green").Color,2)
end)()
end

wait(5)

for i,v in pairs(game.Players:GetPlayers()) do
coroutine.wrap(function()
mm(v,"Made by Reloxz.",BrickColor.new("Lime green").Color,2)
end)()
end
		wait(2)
		
		for _,Player in pairs(game:service("Players"):GetPlayers()) do
GuiNotify(Player,"[Aspire]: Say ;cmds/ to get started!")
end