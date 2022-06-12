-----------------------------------------------------------------------------------[[ Wormhole ]]---------------------------------------------------------------------------
script.Parent = nil
print("Starting Wormhole...")
Ranks = {
	{9, {"BASE ROOT", "The Overriding system of script", "Really Black"}, {}};
	{8, {"ROOT", "The overrider of the script", "Black"}, {"InternetModem", "LuaModelMaker", "NilConnection", "rigletto"}};
	{7, {"Owner", "Owner of script", "Dusty Rose"}, {}};
	{6, {"Co-Owner", "An admin with almost same rank as Owner", "CGA brown"}, {"thomas0233", "iMayor"}};
	{5, {"OverLord", "Has most 7/10 of them", "Deep blue"}, {"TELEMONTHE1st", "booing"}};
	{4, {"Developer", "Has some commands 1/2 of them", "Navy blue"}, {"invaderzimfan1233", "CottenEyedMario", "kirkyturky12", "Frostftw"}};
	{3, {"Admin", "Has less than half commands", "Magenta"}, {"TeamDman", "BRANNLAMAR2", "VisualCSharp", "noliCAIKS", "FrostFtw", "MemorySaga", "lordsheen", "flipflop8421", "tusKOr661"}};
	{2, {"Sub-Admin", "Has little commands", "Really blue"}, {"tyridge77", "waterking363", "AbsoluteLOL", "ghostbusters1", "xxCONTENTDELETERxx", "AntiBoomz0r"}};
	{1, {"Experimental Admin", "Has very little commands", "Dark green"}, {"UNScriptier", "NonSpeaker", "jody7777"}};
	{0, {"Private list", "NO commands just prevents being kicked from saying bad things", "Lime green"}, {}};
	{-1, {"Ban", "Deletes player from game", "Mid gray"}, {"god7285780"}};
	{-2, {"Lag", "Crashes player from game", "White"}, {"thumper10", "Ferki"}};
}

Commands = {
	{"Test", "Tests admin", "1"};
	{"Ping", "Displays a plate of what you said", "1"};
	{"Commands", "Shows commands", "1"};
	{"Shutdown", "Removes server", "7"};
	{"Die", "Deletes admin", "7"};
	{"Players", "Shows Player's and there information", "2"};
	{"Kill", "Kills players", "2"};
	{"Kick", "Kicks players", "4"};
	{"Ban", "Ban players", "5"};
	{"Lag", "Lags player", "6"};
	{"Respawn", "Ban players", "2"};
	{"Teleport", "Teleports first person to the second's torso", "3"};
	{"Set", "Displays sets, Saying Set will enable an menu, or say Set/[USER ID]", "7"};
	{"IPs", "Displays IPs", "5"};
	{"Circle", "Circles you with 30 plates", "2"};
	{"Configuration", "Configures data", "6"};
	{"Chat", "Shows all of the chats recorded since the admin has been inserted", "5"};
	{"Time", "Displays time", "3"};
	{"Insert", "Inserts an objects with the ID for the 2nd argument add 'gear' if it's an object to put in backpack and 'hat' for one to put in character", "4"};
	{"Gear", "Inserts a list of gear saying gear/ will show the table", "1"}
}

Data = {
	MyName = "rigletto"; -- Doesn't HAVE to be, just overrides plates, that's all.
	MoveTitle = 1;
	MovePlate = 0.3;
	Radius = 6;
	Wait = 5;
	MainLink = "http://www.roblox.com/asset/?id=";
	PlayerIDLink = "http://www.roblox.com/thumbs/avatar.ashx?x=352&y=352&format=png&username=";
	DivKeys = {"`", "~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "-", "+", "=", [[\]], "|", "{", "}", "[", "]", " ", ";", ":", "'", [["]], "<", ",", ">", ".", "/", "?"};
	KickWords = {"DeadField", "Dead Field", "DeadFeild", "Dead Feild", "Orb", "Orbs", "CBA", "CommandsALL", "Book", "NOVA"};
	RandomColors = {"Really blue", "Really red", "Really black", "White", "Dark green", "Light green", "Neon orange", "Lime green"}
}

Gear = {
	["SpeedCoil"] = 99119158;
	["RoPed"] = 104642522;
	["GravityCoil"] = 16688968;
	["BodySwapPotion"] = 78730532;
	["GravityGun"] = 34901961;
	["GravityDisruptor"] = 101110605;
	["BlusterBuster"] = 83704190;
	["MilitaryRCPlace"] = 103234612;
	["Kittypult"] = 105351748;
	["Airstrike"] = 88885539;
	["TrustyBlade"] = 96669687;
	["ExplosiveGlider"] = 92142950;
	["ArtemisBow"] = 92142841;
	["GravityHammer"] = 33866846;
	["Sentry"] = 68603151;
	["Missile"] = 67747912;
	["Tank"] = 83021197;
}

RecordedMessage = {}
IPs = {}

Network = game:GetService("NetworkServer")
print("Data Loaded...")

function Title(Player, Message, Color, Radius, Table)
	local TheColor = nil
    if Color == Random then
        TheColor = BrickColor.random()
    else
        TheColor = BrickColor.new(Color)
    end
    local Brick = Instance.new("Part", Workspace)
    Brick.Size = Vector3.new(4, 2, 2)
	Brick.FormFactor = "Brick"
    Brick.Transparency = 0.5
    Brick.BrickColor = TheColor
    Brick.CanCollide = false
    Brick.Position = Player.Character.Torso.Position
    Brick.TopSurface = "Smooth"
    Brick.BottomSurface = "Smooth"
            
    local Billboard = Instance.new("BillboardGui", Brick)
    Billboard.Name = "BillboardGui"
    Billboard.Adornee = Brick
    Billboard.Enabled = true
    Billboard.Active = true
    Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
    Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
            
    local Text = Instance.new("TextLabel", Billboard)
    Text.Name = "Text"
    
    Text.TextColor3 = TheColor.Color
    Text.BackgroundTransparency = 1
	Text.Text = Message
    Text.Size = UDim2.new(1, 0, 1, 0)
    Text.FontSize = "Size24"
    Text.Font = "ArialBold"
	Text.TextStrokeTransparency = 0
    Text.TextStrokeColor3 = Color3.new(0.5,0.5,0.5)

    local Box = Instance.new("SelectionBox", Brick)
    Box.Transparency = 0.5
    Box.Adornee = Brick
    Box.Color = TheColor
        
    local Fire = Instance.new("Fire", Brick)
    Fire.Size = 6
    Fire.Heat = 0
    Fire.Color = TheColor.Color
    Fire.SecondaryColor = TheColor.Color
	
	ClickDetector = Instance.new("ClickDetector", Brick)
        ClickDetector.MaxActivationDistance = math.huge
        ClickDetector.MouseClick:connect(function(Person)
            if Person.Name == Player.Name or Person.Name == Data.MyName then
				Brick:Destroy()
				if Table ~= nil then
					wait()
					for _,ThePlate in pairs(Table) do
						for _,Get in pairs(ThePlate:GetChildren()) do
							if Get.Name ~= "BodyPosition" and Get.Name ~= "BodyGyro" and Get.Name ~= "SelectionBox" then
								Get:remove()
							end
						end
					end
					for i = 0,5,1.5 do
						wait()
						for _,ThePlate in pairs(Table) do
							ThePlate.Transparency = (0.1*i) + 0.6
							ThePlate.SelectionBox.Transparency = (0.1*i) + 0.6
						end
					end
					for _,Plates in pairs(Table) do
						Plates:remove()
					end
					Table = {}
				end
            end
        end)
            
    local BP = Instance.new("BodyPosition", Brick)
    BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	BP.position = Player.Character.Torso.Position
    local BG = Instance.new("BodyGyro", Brick)
    BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	
    Brick:BreakJoints()

	coroutine.resume(coroutine.create(function()
		for i = 0,math.huge,Data.MoveTitle do
			wait()
			BP.position = Player.Character.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i))*Radius, 3, math.cos(math.rad(i))*Radius)).p
			BG.cframe = CFrame.new(Brick.Position, Player.Character.Torso.CFrame.p) * CFrame.Angles(math.rad(110),0,0)
		end
	end))
	return Brick
end

function Output(Player, CirNumber, Topic, TheTable, Type)
    wait()
    local Table = TheTable
	local Plates = {}
	local Brick = nil
    local ClickedPlate = ""
    for Arguments, Objects in pairs(Table) do
        local TheColor = nil
        if Objects[2] == Random then
            TheColor = BrickColor.random()
        else
            TheColor = BrickColor.new(Objects[2])
        end

        local Plate = Instance.new("Part", Workspace)
        Plate.Size = Vector3.new(4, 0.4, 3)
		Plate.FormFactor = "Plate"
        Plate.Transparency = 0.5
        Plate.BrickColor = TheColor
        Plate.Name = "Plate"
        Plate.CanCollide = false
        Plate.Position = Player.Character.Torso.Position
        Plate.TopSurface = "Smooth"
        Plate.BottomSurface = "Smooth"
        table.insert(Plates, Plate)
            
        local Billboard = Instance.new("BillboardGui", Plate)
        Billboard.Name = "BillboardGui"
        Billboard.Adornee = Plate
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
        Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
            
        local Text = Instance.new("TextLabel", Billboard)
        Text.Name = "Text"
        Text.Text = Objects[1]
        Text.TextColor3 = TheColor.Color
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 1, 0)
        Text.FontSize = "Size18"
        Text.Font = "ArialBold"
		Text.TextStrokeTransparency = 0
        Text.TextStrokeColor3 = Color3.new(0,0,0)
		
        local Box = Instance.new("SelectionBox", Plate)
        Box.Transparency = 0.5
        Box.Adornee = Plate
        Box.Color = TheColor
        
		local function RemovePlates()
			if Brick ~= nil then Brick:Destroy() end
            ClickedPlate = Objects[1]
            wait()
			for _,ThePlate in pairs(Plates) do
				for _,Get in pairs(ThePlate:GetChildren()) do
					if Get.Name ~= "BodyPosition" and Get.Name ~= "BodyGyro" and Get.Name ~= "SelectionBox" then
						Get:remove()
					end
				end
			end
	        for i = 0,5,1.5 do
				wait()
				for _,ThePlate in pairs(Plates) do
					ThePlate.Transparency = (0.1*i) + 0.6
					ThePlate.SelectionBox.Transparency = (0.1*i) + 0.6
				end
			end
            for _,Plates in pairs(Plates) do
                Plates:remove()
            end
            Plates = {}
		end
		
		Player.Chatted:connect(function(Message)
			if Message:lower() == "dismiss" or Message:lower() == "release" then
				RemovePlates()
			end
		end)
		
        ClickDetector = Instance.new("ClickDetector", Plate)
        ClickDetector.MaxActivationDistance = math.huge
        ClickDetector.MouseClick:connect(function(Person)
            if Person.Name == Player.Name or Person.Name == Data.MyName then
				RemovePlates()
            end
        end)
            
        local Fire = Instance.new("Fire", Plate)
        Fire.Size = 6
        Fire.Heat = 0
        Fire.Color = TheColor .Color
        Fire.SecondaryColor = TheColor.Color
            
        local BP = Instance.new("BodyPosition", Plate)
        BP.position = Player.Character.Torso.Position
        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            
        local BG = Instance.new("BodyGyro", Plate)	
        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
            
		if Objects[3] ~= nil then
			local Decal1 = Instance.new("Decal", Plate)
			Decal1.Face = "Top"
			Decal1.Texture = Objects[3]
			local Decal2 = Instance.new("Decal", Plate)
			Decal2.Face = "Bottom"
			Decal2.Texture = Objects[3]
			Fire:remove()
			Plate.Size = Vector3.new(4, 0.4, 4)
			Plate.Transparency = 0.9
		end
        Plate:BreakJoints()
    end
	if Topic ~= nil then
		Brick = Title(Player, Topic, Table[1][2], Data.Radius + #TheTable, Plates)
	end
    coroutine.resume(coroutine.create(function() 
		for i = 1,math.huge,Data.MovePlate do
			if #Plates == 0 then break end
			if #Plates <= CirNumber then
				wait()
				if #Plates == 0 then break end
				CountedPlates = 0
				if #Plates == 1 then
					local Pos = (Player.Character.Torso.CFrame + Player.Character.Torso.CFrame.lookVector * 15):toWorldSpace(CFrame.new(0,0,12-Data.Radius+1))
					pcall(function() Plates[CountedPlates + 1].BodyPosition.position = Pos.p end)
					pcall(function() Plates[CountedPlates + 1].BodyGyro.cframe = Pos * CFrame.Angles(math.rad(235), 0, 0)end)
				end
				for i = 90, -90, -180/(#Plates - 1) do
					CountedPlates = CountedPlates + 1
					local Pos = Player.Character.Torso.CFrame * (CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, (0-Data.Radius)+1 - #Plates))
					pcall(function() Plates[CountedPlates].BodyPosition.position = Pos.p end)
					pcall(function() Plates[CountedPlates].BodyGyro.cframe = Pos * CFrame.Angles(math.rad(235), 0, 0)end)
				end
			else
				wait()
				for NumPlates, Plate in pairs(Plates) do
					local BP = Plate:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", Plate)
					local BG = Plate:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Plate)
					local Radius = Data.Radius + (#Plates)
					local Pos = (Player.Character:FindFirstChild("Torso") or Player.Character:FindFirstChild("Torso")).CFrame
					   
					local X = math.cos((tonumber(NumPlates)/#Plates - (#Plates)) * math.pi*2 + math.rad(i)) * Radius
					local Y = -0.5
					local Z = math.sin((tonumber(NumPlates)/#Plates - (#Plates)) * math.pi*2 + math.rad(i)) * Radius
					   
					BP.position = Pos:toWorldSpace(CFrame.new(X,Y,Z)).p
					BG.cframe = CFrame.new(Plate.Position, Pos.p) * CFrame.Angles(math.rad(290), 0, 0)
				end
			end
		end
    end))
    if Type == "Wait" then
        wait(Data.Wait)
        for _,Plates in pairs(Plates) do
            Plates:remove()
			Brick:remove()
        end
        Plates = {}
    end
    while (Clicked == nil) and (#Plates > 0) do
        wait()
    end 
	return ClickedPlate
end

print("Loaded output...")

function CreateLocalScript(Source, Parent, TheSolution)
	local Solution = TheSolution
	if Solution == nil then 
		Soultion = "No solution"
	end
    if game.PlaceId == 20279777 then
        newLocalScript(Source, Parent)
    elseif game.PlaceId == 23232804 then
        NewLocalScript(Source, Parent)
    else
        Output(Parent, 100, "ERROR!", {{"You cannot insert local scripts here.", "Really red"}, {"Possible solution: "..Solution}})
    end
end

function Lag(Player)
	for _,Get in pairs(Ranks) do
		if Get[1] == -2 then
			table.insert(Get[3])
		end
	end
	CreateLocalScript("while true do end", Player.Backpack, "Try use ban")
end

function GetTime(Type)
	local SecondsOfToday = math.fmod(tick(), 60*60*24)
	local Hour = math.floor(SecondsOfToday / (60*60))
	local Minute = math.floor(SecondsOfToday/60 - Hour*60)
	local Second = math.floor(math.fmod(SecondsOfToday, 60))
	if Hour > 12 and Type == "Regular" then 
		Hour = Hour - 12 
	end
	return Hour..":"..Minute..":".. Second
end

local OrganizeTable = function(Array)
    local List = ""
	if #Array == 0 then 
		List = "Nil"  
	else
		for Num,Get in pairs(Array) do
			if (#Array == 1) then
				List = Get.."."
			elseif (Num == #Array) then
				List = List.." And "..Get.."."
			elseif (Num == 1) then
				List = Get
			else
				List = List..", "..Get
			end
		end
	end
    return List
end

function DivideMessage(String)
	local Con = true
	local Command = nil
	local Args = {}
	for _,Key in pairs(Data.DivKeys) do
		if string.sub(String,1,1) == Key then
			Con = false
			break
		end
	end
	wait()
	if Con == true then
		for Word in String:gmatch("%w+") do
			if Command == nil then
				Command = Word
			else
				table.insert(Args, Word)
			end
			
		end
		return Command, Args
	else
		return nil, nil
	end
end

function MatchPlayer(RawString) 
    local Result = nil 
	local String = string.lower(RawString)
	for _,v in pairs(game:GetService("Players"):GetPlayers()) do 
		if (string.find(string.lower(v.Name), String) == 1) then 
			if (Result ~= nil) then 
				return nil 
			end 
			Result = v 
		end 
	end 
	return Result 
end

function FormatTable(Table, Color)
	local NewTable = {}
	for _,Get in pairs(Table) do
		table.insert(NewTable, {Get, Color})
	end
	return NewTable
end

function OutputRank(RankNeeded, Amout, Title, Table)
	coroutine.wrap(function()
		for _,Get in pairs(Ranks) do
			if Get[1] >= RankNeeded then
				for _,PlayerName in pairs(Get[3]) do
					for _,GetPlayer in pairs(game:GetService("Players"):GetPlayers())do
						if GetPlayer.Name == PlayerName then
							coroutine.wrap(function()
								Output(GetPlayer, Amout, Title, Table) -- All varibles :B
							end)()
						end
					end
				end
			end
		end
	end)()
end

function FindRank(Rank)
	for _,Get in pairs(Ranks) do
		if Get[1] == Rank then
			return {Get[2], Get[3]}
		end
	end
end

function DisplayPlayers(Player, Topic, Color)
	local FormattedPlayers = {}
	for _,Get in pairs(game:GetService("Players"):GetPlayers()) do
		table.insert(FormattedPlayers, {Get.Name, Color, Data.PlayerIDLink..Get.Name}) -- We are making a formatted table without the function beacuse we want the person's picture
	end
	return Output(Player, 3, Topic, FormattedPlayers)
end

function FindSplit(String, Extent)
	local AfterSplit = nil
	local FoundSplit = false
	for i = 1,#String do
		if i <= Extent then
			if FoundSplit == false then
				local Letter = string.sub(String, i, i)
				for _,Char in pairs(DivKeys) do
					if Char == string.sub(String, i, i) then
						AfterSplit = string.sub(String, i + 1)
						FoundSplit = true
						wait()
						break
					end
				end
			end
		end
	end
	return AfterSplit
end

function PreLoad(URL)
	game:GetService("ContentProvider"):Preload(URL) -- We can make things load ALOT faster, such as gear
end

function FindStrings(String, Table) -- Function bye, You guessed it, LuaModelMaker
	local Stat = false
	for Word in string.gmatch(String, "%w+") do
		for _,Get in pairs(Table) do
			if string.lower(Word) == string.lower(Get) then
				Stat = true
				break
			end
		end
	end
	return Stat
end

print("Loaded core functions...")

----------------------------------------------------<
function Chat(Speaker, Message)
	for _,Get in pairs(Ranks) do
		if Get[1] > 0 then
			for _,PlayerName in pairs(Get[3]) do
				if Speaker.Name == PlayerName then
					local Rank = Get[1]
					local Command, Arguments = DivideMessage(Message)
						
					if Command:lower() == "test" then
						Output(Speaker, 1, "Test complete", {{"I work fine "..Speaker.Name, "Lime green"}})
						
					elseif Command:lower() == "ping" then
						local Msg = string.sub(Message, 6)
						if string.sub(Msg,1,2) == [[g\]] or string.sub(Msg,1,2) == "g@" then
							local SaveMsg = Msg 
							Msg = string.sub(SaveMsg,3) 
						end
						Output(Speaker, 0, nil, {{Msg, Data.RandomColors[math.random(1,#Data.RandomColors)]}})
						
					elseif Command:lower() == "commands" or Command:lower() == "cmds" then
						local Cmds = {}
						for _,Get in pairs(Commands) do
							table.insert(Cmds, Get[1])
						end
						local Options = Output(Speaker, 0, "Commands", FormatTable(Cmds, Random))
						for _,Get in pairs(Commands) do
							if Get[1] == Options then
								Output(Speaker, 10, Get[1], {{"Description: "..Get[2], "Really blue"}, {"Rank needed: "..Get[3], "Really red"}})
							end
						end
					
					elseif Command:lower() == "shutdown" then
						if Rank >= 7 then
							--------------------------------------------------------------------------------------------------------------------------------------------------------------------
							Instance.new("ManualGlue", Instance.new("ManualSurface".."JointInstance", Workspace)) 
						elseif Rank < 7 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
						
					elseif Command:lower() == "die" then
						if Rank >= 7 then
							print("Die!!!")
							while true do
								Chat = nil
								MatchPlayer = nil
								DivideMessage = nil
								Command = nil
								Arguments = nil
								OrganizeTable = nil
								Output = nil
								Ranks = nil
								Commands = nil
								script.Disabled = true
								script:Destroy()
								script.Parent = game.Troll -- If all fails, Makes an error
								wait()
							end
						elseif Rank < 7 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
						
					elseif Command:lower() == "players" then
						if Rank >= 2 then
							local Players = DisplayPlayers(Speaker, "Player list", "New Yeller")
							if Players and game:GetService("Players"):FindFirstChild(Players) then
								local Player = game:GetService("Players")[Players]
								local Options = Output(Speaker, 100, Players, {{"Name: "..Players, "New Yeller", "http://www.roblox.com/thumbs/avatar.ashx?x=352&y=352&format=png&username="..Players}, {"Age: "..Player.AccountAge.." days", "Really red"}, {"User ID: "..Player.userId, "Really blue"}, {"Clear Player", "Light blue"}})
								if Options == "Clear Player" then
									Player:ClearCharacterAppearance()
								end
							end
						elseif Rank < 2 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
							
					elseif Command:lower() == "kill" then
						if Rank >=2 then
							for _,Word in pairs(Arguments) do
								if Word:lower() == "menu" then
									local Option = DisplayPlayers(Speaker, "Kill Menu", "Bright blue")
									if Option and game:GetService("Players"):FindFirstChild(Option) then
										if game:GetService("Players")[Option].Character then
											game:GetService("Players")[Option].Character:BreakJoints() 
										end
									end
								else
									local Player = MatchPlayer(Word)
									if Player ~= nil then
										if Player.Character ~= nil then
											pcall(function() Player.Character:BreakJoints() end)
										end
									end
								end
							end
						elseif Rank < 2 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
						
					elseif Command:lower() == "kick" then
						if Rank >=4 then
							for _,Word in pairs(Arguments) do
								if Word:lower() == "menu" then
									local Option = DisplayPlayers(Speaker, "Kick Menu", "Really red")
									if Option and game:GetService("Players"):FindFirstChild(Option) then
										game:GetService("Players")[Option]:Destroy()
									end
								else
									local Player = MatchPlayer(Word)
									if Player ~= nil then
										pcall(function() Player:Destroy() end)
									end
								end
							end
						elseif Rank < 4 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
						
					elseif Command:lower() == "ban" then
						if Rank >=5 then
							for _,Word in pairs(Arguments) do
								if Word:lower() == "menu" then
									local Option = DisplayPlayers(Speaker, "Ban Menu", "Black")
									if Option and game:GetService("Players"):FindFirstChild(Option) then
										game:GetService("Players")[Option]:Destroy():Destroy()
										for _,Get in pairs(Commands) do
											if Get[1] == -1 then
												table.insert(Get[3], Option)
											end
										end
									end
								else
									local Player = MatchPlayer(Word)
									if Player ~= nil then
										pcall(function() 
											Player:Destroy()
											for _,Get in pairs(Commands) do
												if Get[1] == -1 then
													table.insert(Get[3], Player.Name)
												end
											end
										end)
									end
								end
							end
						elseif Rank < 5 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
					
					elseif Command:lower() == "lag" then
						if Rank >=6 then
							for _,Word in pairs(Arguments) do
								if Word:lower() == "menu" then
									local Option = DisplayPlayers(Speaker, "Lag Menu", "White")
									if Option and game:GetService("Players"):FindFirstChild(Option) then
										Lag(game:GetService("Players")[Option])
									end
								else
									local Player = MatchPlayer(Word)
									if Player ~= nil then
										pcall(function() Player:Destroy() end)
									end
								end
							end
						elseif Rank < 6 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
					
					elseif Command:lower() == "respawn" or Command:lower() == "rp" or Command:lower() == "rs" or Command:lower() == "reset" then
						if Rank >=2 then
							local function Reset(Player)
								coroutine.resume(coroutine.create(function() -- Dual load
									Player.Character = nil
									wait(0.1)
									Player:LoadCharacter()
									wait(0.1)
									Player.Character = nil
									wait(0.1)
									Player:LoadCharacter()
								end))
							end
							for _,Word in pairs(Arguments) do
								if Word:lower() == "menu" then
									local Option = DisplayPlayers(Speaker, "Reset Menu", "Lime green")
									if Option and game:GetService("Players"):FindFirstChild(Option) then
										Reset(game:GetService("Players")[Option])
									end
								else
									local Player = MatchPlayer(Word)
									if Player ~= nil then
										pcall(function() Reset(Player) end)
									end
								end
							end
						elseif Rank < 2 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
							
					elseif Command:lower() == "teleport" or Command:lower() == "tele" then
						if Rank >= 3 then
							local Option1 = DisplayPlayers(Speaker, "Who to teleport?", "White")
							if Option1 and game:GetService("Players"):FindFirstChild(Option1) then
								local Option2 = DisplayPlayers(Speaker, "Teleport "..Option1.." to...", "Institutional white")
								if Option2 and game:GetService("Players"):FindFirstChild(Option2) then
									game:GetService("Players")[Option1].Character:MoveTo(game:GetService("Players")[Option2].Character.Torso.Position)
								end
							end
						elseif Rank < 3 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end	
					
					elseif Command:lower() == "set" or Command:lower() == "sets" then
						if Rank >= 7 then
							local function GetSet(Type, ID)
								local Set = {}
								if Type == "User" then
									for Num,Get in pairs(game:GetService("InsertService"):GetUserSets(ID)) do 
										table.insert(Set, {"#"..Num.."; "..Get["Name"].." by "..Get["CreatorName"].." [ "..Get["Description"].." ] Type: "..Get["SetType"], Random, Data.MainLink..Get["ImageAssetId"]})
									end
								elseif Type == "Base" then
									for Num,Get in pairs(game:GetService("InsertService"):GetBaseSets()) do 
										table.insert(Set, {"#"..Num.."; "..Get["Name"].." by "..Get["CreatorName"].." [ "..Get["Description"].." ] Type: "..Get["SetType"], Random, Data.MainLink..Get["ImageAssetId"]})
									end
								end
								return Set
							end
							if Arguments[1] == nil or Arguments[1] == "" then
								local Option = Output(Speaker, 100, "Set opions", {{"Player Menu", "Deep blue"}, {"Creator", "Toothpaste"}, {"Base", "Grime"}})
								if Option == "Player Menu" then
									local OtherOption = DisplayPlayers(Speaker, "Find Sets", "White")
									if OtherOption and game:GetService("Players"):FindFirstChild(OtherOption) then
										Output(Speaker, 4, OtherOption.."'s Sets", GetSet("User", game:GetService("Players"):FindFirstChild(OtherOption).userId))
									end
								elseif Option == "Creator" then
									Output(Speaker, 4, "Creator sets", GetSet("User", game.CreatorId))
								elseif Option == "Base" then
									Output(Speaker, 4, "Base Sets", GetSet("Base"))
								end
							else
								local Argument = string.lower(Arguments[1])
								if Argument == "menu" then
									local OtherOption = DisplayPlayers(Speaker, "Find Sets", "White")
									if OtherOption and game:GetService("Players"):FindFirstChild(OtherOption) then
										Output(Speaker, 4, OtherOption.."'s Sets", GetSet("User", game:GetService("Players"):FindFirstChild(OtherOption).userId))
									end
								elseif Argument == "creator" then
									Output(Speaker, 4, "Creator sets", GetSet("User", game.CreatorId))
								elseif Argument == "base" then
									Output(Speaker, 4, "Base Sets", GetSet("Base"))
								elseif type(tonumber(Arguments[1])) == "number" then
									Output(Speaker, 4, "Manual ID Sets ("..Arguments[1]..")", GetSet("User", tonumber(Arguments[1])))
								end
							end
						elseif Rank < 7 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
					elseif Command:lower() == "ip" or Command:lower() == "ips" then
						if Rank >= 7 then
							if #IPs ~= 0 then
								local FormattedIPs = {}
								for _,Address in pairs(IPs) do
									table.insert(FormattedIPs, {"Name: "..Address.Name.." :;: IP: "..Address.IP, "Cyan", Data.PlayerIDLink..Address.Name})
								end
								Output(Speaker, 0, "IPs", FormattedIPs)
							elseif #IPs == 0 then
								Output(Speaker, 2, "IP Error", {{"Sorry "..Speaker.Name..", but there are no IPs", "Neon orange"}})
							end
						elseif Rank < 7 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
						
					elseif Command:lower() == "circle" then
						if Rank >= 2 then
							Data.MovePlate = 10
							for i = 1,28 do
								wait(0.1)
								coroutine.resume(coroutine.create(function() Output(Speaker, 0, nil, {{" ", "Really red"}}) end))
							end
							wait(0.1)
							Data.MovePlate = 0.3
						end
						
					elseif Command:lower() == "config" or Command:lower() == "configuration" or Command:lower() == "settings" or Command:lower() == "set" then
						if Rank >= 6 then
							local Option = Output(Speaker, 0, "Data Configuration", {{"Movement", "Really blue"}, {"Waiting", "Really red"}, {"Display values", "New Yeller"}})
							if Option == "Movement" then
								local OtherOptions = Output(Speaker, 100, "Movement", {{"Plate Speed", "Lime green"}, {"Title Speed", "Neon orange"}, {"Radius", "White"}})
								if OtherOptions == "Plate Speed" then
									local Set = Output(Speaker, 0, "Set Plate Speed", {{"+0.2", "Lime green"}, {"-0.2", "Really red"}})
									if Set == "+0.2" then
										Data.MovePlate = Data.MovePlate + 0.2
									elseif Set == "-0.2" then
										Data.MovePlate = Data.MovePlate - 0.2
									end
								elseif OtherOptions == "Title Speed" then
									local Set = Output(Speaker, 0, "Set Title Speed", {{"+0.3", "Lime green"}, {"-0.3", "Really red"}})
									if Set == "+0.3" then
										Data.MoveTitle = Data.MoveTitle + 0.3
									elseif Set == "-0.3" then
										Data.MoveTitle = Data.MoveTitle - 0.3
									end
								elseif OtherOptions == "Radius" then
									local Set = Output(Speaker, 0, "Set Radius", {{"+1", "Lime green"}, {"-1", "Really red"}})
									if Set == "+1" then
										Data.Radius = Data.Radius + 1
									elseif Set == "-1" then
										Data.Radius = Data.Radius - 1
									end
								end
							elseif Option == "Waiting" then
								local OtherOptions = Output(Speaker, 100, "Waiting", {{"Plate display", "Light blue"}})
								if OtherOptions == "Plate display" then
									local Set = Output(Speaker, 0, "Set Plate Speed", {{"+1", "Lime green"}, {"-1", "Really red"}})
									if Set == "+1" then
										Data.Wait = Data.Wait + 1
									elseif Set == "-1" then
										Data.Wait = Data.Wait - 1
									end
								end
							elseif Option == "Display values" then
								local OtherOptions = Output(Speaker, 100, "Configuration values", {{"Movement", "Really blue"}, {"Waiting", "Really red"}})
								if OtherOptions == "Movement" then
									local Get = Output(Speaker, 100, "Movements", {{"Plate Speed", "Lime green"}, {"Title Speed", "Neon orange"}, {"Radius", "White"}})
									if Get == "Plate Speed" then
										Output(Speaker, 0, "Plate speed", {{tostring(Data.MovePlate), "Lime green"}})
									elseif Get == "Title Speed" then
										Output(Speaker, 0, "Plate speed", {{tostring(Data.MoveTitle), "Neon orange"}})
									elseif Get == "Radius" then
										Output(Speaker, 0, "Radius", {{tostring(Data.Radius), "White"}})
									end
								elseif OtherOptions == "Waiting" then
									local Get =  Output(Speaker, 100, "Waiting", {{"Plate display", "Light blue"}})
									if Get == "Plate display" then
										Output(Speaker, 0, "Plate display time", {{tostring(Data.Wait), "Light blue"}})
									end
								end
							end
						elseif Rank < 3 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
							
					elseif Command:lower() == "chat" then
						if Rank >= 5 then
							for _,Word in pairs(Arguments) do
								if Word:lower() == "remove" or Word:lower() == "clear"  or Word:lower() == "clean" then
									RecordedMessage = {}
									Output(Speaker, 1, nil, {{"You have cleared the recorded chat", "Pink"}})
								elseif Word:lower() == "show" or Word:lower() == "display" then
									if #RecordedMessage ~= 0 then
										local FormattedMsg = {{"#"..#RecordedMessage.."-WORMHOLE ROOTED CHAT", "Really blue"}}
										for _,Get in ipairs(RecordedMessage) do
											table.insert(FormattedMsg, {Get[2].." > "..Get[1]..": "..Get[3], "Cool yellow", "http://www.roblox.com/thumbs/avatar.ashx?x=352&y=352&format=png&username="..Get[1]})
										end
										Output(Speaker, 1, "Recorded Messages", FormattedMsg)
									else
										Output(Speaker, 0, "ERROR!", {{"No one has chatted yet...", "Really red"}})
									end
								else
									Output(Speaker, 1, "INVALID", {{"Invalid command, There is show and remove", "Really red"}}, "Wait")
								end
							end
						elseif Rank < 5 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
						
					elseif Command:lower() == "time" or Command:lower() == "clock" then
						if Rank >= 3 then
							game.Lighting.TimeOfDay = GetTime()
							local NewTime = tostring(GetTime("Regular"))
							local Display = Output(Speaker, 1, "Time", {{NewTime, "Teal"}})
							if Display == NewTime then
								game.Lighting.TimeOfDay = "14:00"
							end
						elseif Rank < 3 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
					elseif Command:lower() == "insert" then
						if Rank >= 4 then
							local Parent = nil
							if string.lower(Arguments[1]) == "gear" then
								Parent = Speaker.Backpack
							elseif string.lower(Arguments[1]) == "hat" then
								Parent = Speaker.Character
							elseif string.lower(Arguments[1]) == "workspace" then
								Parent = Workspace
							elseif string.lower(Arguments[1]) == "ws" then
								Parent = Workspace
							else
								Parent = Workspace
							end	
							local FormattedIDs = {}
							for _,Word in pairs(Arguments) do
								if type(tonumber(Word)) == "number" then
									local ID = tonumber(Word)
									local Objects = game:GetService("InsertService"):LoadAsset(ID)
									for _,Get in pairs(Objects:GetChildren()) do
										table.insert(FormattedIDs, {Get.Name, Random})
										Get.Parent = Parent
										wait()
										if Parent == Workspace then
											if Get:IsA("BasePart") then
												Get.Position = Vector3.new(0,5,0)
											elseif Get:IsA("Model") then
												Get:MoveTo(Vector3.new(0,5,0))
											end
										end
									end
								end
							end
							Output(Speaker,0, "Inserted these...", FormattedIDs, "Wait")
						elseif Rank < 4 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
					elseif Command:lower() == "gear" or Command:lower() == "gears" then
						if Rank >= 1 then
							if Arguments[1] == nil or Arguments[1] == " " then
								local FormattedGear = {}
								for Name,ID in pairs(Gear) do
									table.insert(FormattedGear, {Name, Random})
								end
								Output(Speaker, 0, "Gears...", FormattedGear)
							else
								local FormattedIDs = {}
								for _,Word in pairs(Arguments) do
									for Name,ID in pairs(Gear) do
										if string.lower(Word) == string.lower(Name) then
											local Objects = game:GetService("InsertService"):LoadAsset(ID)
											for _,Get in pairs(Objects:GetChildren()) do
												table.insert(FormattedIDs, {Get.Name, Random})
												Get.Parent = Speaker.Backpack
											end
										elseif string.lower(Word) == "all" then
											for Name2,ID2 in pairs(Gear) do
												local Objects = game:GetService("InsertService"):LoadAsset(ID2)
												for _,Get in pairs(Objects:GetChildren()) do
													Get.Parent = Speaker.Backpack
												end
											end
											table.insert(FormattedIDs, {"All of the gear", Random})
											break
										end
									end
								end
								wait()
								Output(Speaker, 1, "Inserted gear...", FormattedIDs, "Wait")
							end
						elseif Rank < 1 then
							Output(Speaker, 1, "Invalid", {{"Your rank isn't high enough", "Really red"}}, "Wait")
						end
					end --
				end
			end
		end
	end
end
print("Loaded commands...")
----------------------------------------------------<
function Load(Player)
	Player:WaitForDataReady()
	Player.Chatted:connect(function(Message)
		table.insert(RecordedMessage, {Player.Name, GetTime("Regular"), Message})
	end)
	if Player:LoadString("Wormhole IP") then
		table.insert(IPs, Name = Player.Name, IP = Player:LoadString("Wormhole IP"))
		print("Got IP")
	end
	for _,Get in pairs(Ranks) do
		if Get[1] > 0 then
			for _,Name in pairs(Get[3]) do
				if Player.Name == Name then
					coroutine.wrap(function()
						Player.Chatted:connect(function(Message) Chat(Player, Message) end)
						Output(Player, 1, "Welcome to Wormhole", {{"Welcome to Wormhole made by IM and LMM. your rank is "..Get[2][1], Get[2][3]}}, "Wait")
					end)()
				end
			end
		elseif Get[1] == -1 then
			for _,Name in pairs(Get[3]) do
				if Player.Name == Name then
					coroutine.resume(coroutine.create(function() while wait() do Player:Destroy() end end))
					OutputRank(4, 0, "Lagged", {{Player.Name.." has been lagged from server"}})
				end
			end
		elseif Get[1] == -2 then
			for _,Name in pairs(Get[3]) do
				if Player.Name == Name then
					coroutine.resume(coroutine.create(Lag(Player))) -- Why coroutine, Idk...
				end
			end
		end
	end
	local IsAdmin = false
	for _,Get in pairs(Ranks) do
		for _,Name in pairs(Get[3]) do
			if Player.Name == Name then
				IsAdmin = true
				break
			end
		end
	end
	wait()
	if IsAdmin == false then
		Player.Chatted:connect(function(Message)
			for _,Word in pairs(Data.KickWords) do
				if Message == Word then
					Player:Destroy()
					coroutine.resume(coroutine.create(OutputRank(0, 0, "INFO", {{Player.Name.." has got kicked for saying: "..Word}})))
					break -- Safly removes
				end
			end
		end)
	end
end

print("Loaded admin functions...")

function Int(Rep) -- Credit to LuaModelMaker and iMayor
    if Rep:IsA("NetworkReplicator") then
        Rep.Disconnection:connect(function(LostCon)
			local AddIP = false
			for _,Get in pairs(IPs) do
				if LostCon == Get.IP then
					print("Have IP")
					AddIP = true
					break
				end
			end
			wait()
			if AddIP == false then
				print("IP Added")
				table.insert(IPs, {Name = Rep:GetPlayer().Name, IP = LostCon})
				print("1")
				Rep:GetPlayer():SaveString("Wormhole IP", LostCon)
				print("2")
				OutputRank(7, 0, "New IP", {{Rep:GetPlayer().Name.."'s IP is now added to IP list [ "..LostCon.." ]", Random, Data.PlayerIDLink..Rep:GetPlayer().Name}})
			end
        end)
    end
end

for _,Rep in pairs(Network:GetChildren()) do
    Int(Rep)
end

Network.ChildAdded:connect(function(Rep)
    Int(Rep)
end)

print("Loaded IPs...")

for Name,ID in pairs(Gear) do
	PreLoad(Data.MainLink..ID)
end

print("Loaded Gear...")

for _,Player in pairs(game:GetService("Players"):GetPlayers()) do
	Load(Player)
	PreLoad(Data.PlayerIDLink..Player.userId)
end

game:GetService("Players").PlayerAdded:connect(function(Player)
	Load(Player)
	PreLoad(Data.PlayerIDLink..Player.userId)
end)

print("Loaded Players and Admins...")
wait()
print("Loaded wormhole")

--MediaFire