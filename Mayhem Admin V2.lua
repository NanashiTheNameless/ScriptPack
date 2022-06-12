------------------------------------------------------------------------------------------[[ MediaFire ]]------------------------------------------------------------------------------------
if pcall(function() script.Parent = game:GetService("CoreGui") end) then else script.Parent = nil end
Admins = {
    {Name = "rigletto", Rank = 4, Phrase = "Owner :: Win", Avatar = false, PressValueInfo = {PressValue = "100", PressValueOn = false}};
    {Name = "ADMINNAME", Rank = 4,  Phrase = "Owner :: Win", Avatar = false, PressValueInfo = {PressValue = "100", PressValueOn = false}};
    {Name = "ADMINNAME", Rank = 4,  Phrase = "Owner :: Win", Avatar = false, PressValueInfo = {PressValue = "50", PressValueOn = false}};
   {Name = "upquark",--[[actually upquark can stay he's kool ]] Rank = 4,  Phrase = "Owner :: Win", Avatar = false, PressValueInfo = {PressValue = "10", PressValueOn = false}};
   {Name = "ADMINNAME", Rank = 4,  Phrase = "Owner :: Win", Avatar = true, PressValueInfo = {PressValue = "50", PressValueOn = true}};
    {Name = "ADMINNAME", Rank = 4,  Phrase = "Owner :: Win", Avatar = false, PressValueInfo = {PressValue = "100", PressValueOn = false}};--thomas02333's Alt
}

PrivateList = {}

--[[AntiBan = {
    {Name = "LuaModelMaker", Type = "Lag"};
}
]]
 
RankInfo = {
    ["Lag"] = {"Lagged", "Really black"};
    ["Ban"] = {"Banned", "Camo"};
    [0] = {"Guest", "Mid gray"};
    [1] = {"Admin", "Lime green"}; -- Press 25
    [2] = {"Medium admin", "Really red"}; -- Press 50
    [3] = {"Mega Admin", "New Yeller"}; -- Press 45
    [4] = {"Creator", "Really blue", "Really black"}; -- Press 100
}
 
Exiles = {
    {Name = "LastRegicide" , Reason = "Stealing thomas0233's AdminBricks" , Punishment = "Lag"};
    {Name = "eletronix" , Reason = "Hacking." , Punishment = "Lag"};
    {Name = "xROBLOXianBuilderx " , Reason = "Camball. Nuff' said." , Punishment = "Ban"};
    --{Name = "DragonWarlord101" , Reason = "Kicking/Potentially banning thomas0233 " , Punishment = "Lag"};
    {Name = "mountaindew717" , Reason = "Calling MAV2 a free model" , Punishment = "Ban"};
    {Name = "CammyDodger" , Reason = "Abusing CBA" , Punishment = "Ban"};
    --{Name = "jaredvaldez4" , Reason = "Being a nob and stealing places" , Punishment = "Ban"};
    --{Name = "ChanceTK2" , Reason = "being jaredvaldez4's alt" , Punishment = "Ban"};
    {Name = "Eric68" , Reason = "Using MAV1" , Punishment = "Ban"};
    {Name = "CodyStryker12" , Reason = "Using Mayhem Admin V1" , Punishment = "Lag"};
    {Name = "jacoslide101" , Reason = "Exploititng Mayhem Admin V1" , Punishment = "Lag"};
    --{Name = "apokalyps", Reason = "Stealing MAV2", Punishment = "Lag"};
    {Name = "lollypop8089", Reason = "Being a nob and pestering thomas0233 .", Punishment = "Lag"};
    {Name = "takota12345", Reason = "Threatning to hack thomas0233.", Punishment = "Lag"};
    {Name = "ugly65", Reason = "Not giving credit to LuaModelMaker on his pen.", Punishment = "Lag"};
    {Name = "Elduardo4", Reason = "Not giving credit to LuaModelMaker on his pen.", Punishment = "Lag"};
    {Name = "Mariohachem", Reason = "thomas0233's forever enemy.", Punishment = "Lag"};
}
 
Settings = {
    PrivateOn = false;
    PrivateBanType = "Ban"; -- Ban or Lag
    HighlightWaitTime = 3;
    AntiGuest = false;
}
Commands = {"~Test", "~Commands", "~Say: [String]", "~Kill@[Player]","~Kick@[Player]", "~Explode@[Player]", "~Ban@[Player]","~Lag@[Player]", "~Punish@[Player]", "~Unpunish@[Player]", "~Respawn@[Player]", "~Shutdown{MEGA Admins/Creators}", "~Lagdown{Creators}", "~Die{Creators}", "~Sound;Help","~Invisible@[Player]","~Visible@[Player]", "~Data;", "~ff@[Player]", "~Unff@[Player]", "~Clean", "~Awesome@[Players]", "~Pri;(On/Off/Add){Mega Admins/Creators}", "~Avatar","~Midget@[Player]", "~Time", "~Note", "~Ping", "~Rank;(Exiles, Admins)","~HoverSeat@[Player]", "~AntiGuest"}
AllUniversalCommands = {"~UniversalCommands", "~Reset", "~Credit"}
ReleasePhrases = {"~release", "~dismiss"}
RandomLagMessages = {"Joo be laggin bro?", "LAGGG!", "Joo lagger", "LOL LAGGGG!", "W00t lag", "Joo mad Bro", "[ Laggified ]", "I Love[Lag] Joo"} 
MainRanks = {2,3}
AutoRemoveWaitTime = 3
TrigonometryDiskPeople = {"RATSwordsman"}
--[[ Inportant values, DO NOT TOUCH ]]--
FormattedCommands = {}
AllFormattedUniversalCommands = {}
FormattedSounds = {}
AllDisks = {}
SongPlaying = nil
 
Initialize = {
    ["FindRanks"] = function(Rank)
        for _,AllRanks in pairs(Admins) do
            for _, AllAdmins in pairs(Admins) do
                if AllRanks == AllAdmins.Rank then
                    for _,ChosenAdmins in pairs(AllAdmins) do
                        return game:GetService("Players")[ChosenAdmins.Name]
                    end
                end
            end
        end
    end;
    ["Position"] = function(Player)
        CFrameNomral = nil
        CFrameAngles = nil
        Vector3Normal = nil
        if pcall(function() CFrameNormal = Player.Character.Torso.CFrame end) then else CFrameNormal = CFrame.new(0,50,0) end
        if pcall(function() CFrameNormal = Player.Character.Torso.CFrame * CFrame.Angles(0,0,0) end) then else CFrameNormal = CFrame.Angles(0,50,0) end
        if pcall(function() Vector3Normal = Player.Character.Torso.CFrame end) then else Vector3Normal = Vector3.new(0,50,0) end
        return {CFrameNormal, CFrameAngles, Vector3Normal}
    end;
    ["GetTime"] = {
        ["Regular"] = function()
            local SecondsOfToday = math.fmod(tick(), 60*60*24)
            local Hour = math.floor(SecondsOfToday / (60*60))
            local Minute = math.floor(SecondsOfToday/60 - Hour*60)
            local Second = math.floor(math.fmod(SecondsOfToday, 60))
            if Hour > 12 then Hour = Hour - 12 end
            return Hour..":"..Minute..":".. Second
        end;
        ["Lighting"] = function()
            local SecondsOfToday = math.fmod(tick(), 60*60*24)
            local Hour = math.floor(SecondsOfToday / (60*60))
            local Minute = math.floor(SecondsOfToday/60 - Hour*60)
            local Second = math.floor(math.fmod(SecondsOfToday, 60))
            return Hour..":"..Minute..":".. Second
        end;
    };
    ["CreateUniversalValue"] = function(ValueName, Value)
        _G[ValueName] = Value
        return _G[ValueName]
    end;
    ["GetType"] = {
        ["Compare"] = function(MainValue, OtherValues)
            for _, AllOtherValues in pairs(OtherValues) do
                if AllOtherValues == MainValue then
                    return true
                else
                    return false
                end
            end
        end;
        ["Get"] = function(Value)
            return type(Value)
        end;
    };
    ["FindClass"] = function(Path, ClassType)
        for i,v in pairs(Path) do
            if v:isA(ClassType) then
                return v
            end
        end
    end;
    ["Scan"] = function(Object)
        for _,Things in pairs(Object:GetChildren()) do
            return Things
        end
    end;
}
function Highlight(Player, Color)
    for _,Parts in pairs(Player.Character:GetChildren()) do
        if Parts.className == "Part" then
            local Box = Instance.new("SelectionBox", Parts)
            Box.Adornee = Parts
            Box.Color = BrickColor.new(Color)
            Box.Transparency = 0.3
            local Fire = Instance.new("Fire", Parts)
            Fire.Color = BrickColor.new(Color).Color
            Fire.SecondaryColor = BrickColor.new(Color).Color
        end
    end
    wait(Settings.HighlightWaitTime)
    for _,Parts in pairs(Player.Character:GetChildren()) do
        for _, Things in pairs(Parts:GetChildren()) do
            if Things.className == "SelectionBox" or Things.className == "Fire" then Things:remove() end
        end
    end
end
function AreTheyAdmin(PlayerName)--Do not touch anything in this function.
    for _,SubTable in pairs(Admins) do
        if SubTable.Name == PlayerName then
            return true
        else
            return false
        end
    end
end
function LocalScript(Source, Parent, Speaker)
    if game.PlaceId == 20279777 then
        newLocalScript(Source, Parent)
    elseif game.PlaceId == 23232804 then
        NewLocalScript(Source, Parent)
    else
        _G.Output(Speaker,{{"Not able to insert LocalScripts. [Valid ID: 20279777, 23232804 Invalid: "..game.PlaceId.."]", Random}})
    end
end
 
function Highlight(Player, Color)
    for _,Parts in pairs(Player.Character:GetChildren()) do
        if Parts.className == "Part" then
            local Box = Instance.new("SelectionBox", Parts)
            Box.Adornee = Parts
            Box.Color = BrickColor.new(Color)
            Box.Transparency = 0.3
            local Fire = Instance.new("Fire", Parts)
            Fire.Color = BrickColor.new(Color).Color
            Fire.SecondaryColor = BrickColor.new(Color).Color
        end
    end
    coroutine.resume(coroutine.create(function()
        wait(Settings.HighlightWaitTime)
        for _,Parts in pairs(Player.Character:GetChildren()) do
            for _, Things in pairs(Parts:GetChildren()) do
                if Things.className == "SelectionBox" or Things.className == "Fire" then Things:remove() end
            end
        end
    end))
end
 
function LocalScript(Source, Parent, Speaker)
    if game.PlaceId == 20279777 then
        newLocalScript(Source, Parent)
    elseif game.PlaceId == 23232804 then
        NewLocalScript(Source, Parent)
    else
        _G.Output(Speaker,{{"Not able to insert LocalScripts. [Valid ID: 20279777, 23232804 Invalid: "..game.PlaceId.."]", Random}})
    end
end
function FindSemiColon(String)
    local Place = 0
    
    for i = 1, #String do
        if string.sub(String, i, i) == ";" then
            Place = i
            break
        end
    end
    
    if Place ~= 0 then
        return {string.sub(String, 1, Place - 1), string.sub(String, Place + 1, -1)}
    else
        return {"", ""}
    end
end
function CalculateLookVector(Brick, Distance)
    return (Brick.CFrame + (Brick.CFrame.lookVector * Distance)).p
end
function CreateAvatar(Person,King)
    if Person.Character ~= nil then
        
        local Phrase = nil
                
        for _,Things in pairs(Workspace:GetChildren()) do
            for _,OtherThings in pairs(Things:GetChildren()) do
                if OtherThings.Name == Person.Name then Things:remove() end
            end
        end
        local Avatar = Instance.new("Part", Workspace)
        Avatar.Size = Vector3.new(3,4,3)
        Avatar.Name = "Avatar"
        Avatar.Transparency = 0.5
        Avatar.Position = Person.Character.Torso.Position
        Avatar.CanCollide = false
                
        local Mesh = Instance.new("CylinderMesh", Avatar)
                
        local BG = Instance.new("BodyGyro", Avatar)
        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                
        local BP = Instance.new("BodyPosition", Avatar)
        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        BP.position = Person.Character.Torso.Position
                
        local Fire = Instance.new("Fire", Avatar)
        Fire.Heat = 0
        Fire.Size = 7
                
        local Decal = Instance.new("Decal", Avatar)
                
        local Billboard = Instance.new("BillboardGui", Avatar)
        Billboard.Adornee = Avatar
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
        Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
                   
        local Text = Instance.new("TextLabel", Billboard)
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 1, 0)
        Text.FontSize = "Size12"
        Text.Font = "Arial"
        Text.Name = "         TEXT TROLOLOLOLOL         "

        local Check = Instance.new("BoolValue", Avatar)
        Check.Name = Person.Name
        
        local ClickDetector = Instance.new("ClickDetector", Avatar)
        ClickDetector.MaxActivationDistance = math.huge
        ClickDetector.MouseClick:connect(function(Player)
            local function RemoveAvatar(ThePlayer, ChatOne)
                Avatar:remove()
                Note(ThePlayer, {{ChatOne, Random}, {"Rember, you can say ~Avatar for another avatar", Random}})
            end
            if Player == Person then
                RemoveAvatar(Player, "You have just removed your avatar")
            end
            for _,AllAdmins in pairs(Admins) do
                if AllAdmins.Name == Player.Name then
                    if AllAdmins.Name ~= Person.Name then
                        if AllAdmins.Rank == 3 then
                            RemoveAvatar(Person, AllAdmins.Name.." has just removed your avatar because he is a king")
                        end
                    end
                end
            end
        end)
        for _, AllAdmins in pairs(Admins) do
            if Person.Name == AllAdmins.Name then
                Phrase = AllAdmins.Phrase
                if Phrase == nil then Phrase = "[ No Phrase ]" end
                Avatar.BrickColor = BrickColor.new(RankInfo[AllAdmins.Rank][2])
                Fire.Color = BrickColor.new(RankInfo[AllAdmins.Rank][2]).Color
                Fire.SecondaryColor = BrickColor.new(RankInfo[AllAdmins.Rank][2]).Color
                Text.TextColor3 = BrickColor.new(RankInfo[AllAdmins.Rank][2]).Color
                Text.Text = "Mayhem Admin V2 -- "..RankInfo[AllAdmins.Rank][1].."("..AllAdmins.Rank.."/4); "..Person.Name..": "..Phrase
                if AllAdmins.Rank == 4 then
                    local Box = Instance.new("SelectionBox", Avatar)
                    Box.Adornee = Avatar
                    Box.Transparency = 0.4
                    Box.Color = BrickColor.new(RankInfo[AllAdmins.Rank][3])
                end
            end
        end
        coroutine.resume(coroutine.create(function() while wait() do 
            Avatar:BreakJoints()
            BP.position = Person.Character.Torso.CFrame:toWorldSpace(CFrame.new(7,0,-2)).p + Vector3.new(0,6,0)
            BG.cframe = Person.Character.Torso.CFrame
            if pcall(function() Decal.Texture = Person.Character.Head.face.Texture end) then else Decal.Texture = "rbxasset://textures/face.png" end
        end end))
    end
end

function Note(Player, TheTable)   
    wait()
    local Table = TheTable
    Table[#Table + 1] = {"Mayhem Admin V2", "Deep blue"}
    local Spheres = {}
    for Arguments, Objects in pairs(Table) do
        local TheColor = nil
        if Objects[2] == Random then
            TheColor = BrickColor.random()
        else
            TheColor = BrickColor.new(Objects[2])
        end
        
        local Sphere = Instance.new("Part", Workspace)
        Sphere.Size = Vector3.new(2,2,2)
        Sphere.Transparency = 0.5
        Sphere.BrickColor = TheColor
        Sphere.Name = "Sphere"
        Sphere.CanCollide = false
        Sphere.Position = Player.Character.Torso.Position
        Sphere.TopSurface = "Smooth"
        Sphere.BottomSurface = "Smooth"
        Sphere.Shape = "Ball"
        table.insert(Spheres, Sphere)
        
        local Billboard = Instance.new("BillboardGui", Sphere)
        Billboard.Adornee = Disk
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
        Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
        
        local Text = Instance.new("TextLabel", Billboard)
        Text.Text = Objects[1]
        Text.TextColor3 = TheColor.Color
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 1, 0)
        Text.FontSize = "Size12"
        Text.Font = "ArialBold"
        
        local Box = Instance.new("SelectionBox", Sphere)
        Box.Transparency = 0.4
        Box.Adornee = Sphere
        Box.Color = TheColor

        local Fire = Instance.new("Fire", Sphere)
        Fire.Size = 6
        Fire.Heat = 0
        Fire.Color = TheColor .Color
        Fire.SecondaryColor = TheColor.Color
        
        local BP = Instance.new("BodyPosition", Sphere)
        BP.position = Player.Character.Torso.Position
        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        
        local BG = Instance.new("BodyGyro", Sphere)
        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        
        Sphere:BreakJoints()

        function Sin(i)
            return math.sin(math.rad(i))
        end
        function Cos(i)
            return math.cos(math.rad(i))
        end
        for i = 0,380,2.5 do
            BP.position = Player.Character.Torso.CFrame:toWorldSpace(CFrame.new(Vector3.new(Sin(i)*4, 1.5, Cos(i)*4))).p 
            BG.cframe = CFrame.Angles(0,math.rad(i),0)
            wait()
        end
        Sphere:remove()
    end
end

function _G.Output(Player, TheTable)   
    wait()
    local Table = TheTable
    local Disks = {}
    local ClickedObject = nil
    CountedDisks = 0
    Table[#Table + 1] = {"Mayhem Admin V2", "Deep blue"}
    for Arguments, Objects in pairs(Table) do
        local TheColor = nil
        if Objects[2] == Random then
            TheColor = BrickColor.random()
        else
            TheColor = BrickColor.new(Objects[2])
        end
        
        CountedDisks = CountedDisks + 1
        
        local Disk = Instance.new("Part", Workspace)
        Disk.Size = Vector3.new(3, 0.2, 3)
        Disk.Transparency = 0.5
        Disk.BrickColor = TheColor
        Disk.Name = "Disk"
        Disk.CanCollide = false
        Disk.Position = Player.Character.Torso.Position
        table.insert(Disks, Disk)
        
        local Billboard = Instance.new("BillboardGui", Disk)
        Billboard.Adornee = Disk
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
        Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
        
        local Text = Instance.new("TextLabel", Billboard)
        Text.Text = Objects[1]
        Text.TextColor3 = TheColor.Color
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 1, 0)
        Text.FontSize = "Size12"
        Text.Font = "ArialBold"
        
        local Mesh = Instance.new("CylinderMesh", Disk)
        
        local Box = Instance.new("SelectionBox", Disk)
        Box.Transparency = 0.4
        Box.Adornee = Disk
        Box.Color = TheColor
        
        local ClickDetector = Instance.new("ClickDetector", Disk)
        ClickDetector.MaxActivationDistance = math.huge
        
        local function RemoveFunction(Disk)
            DismissTypeUsed = "Click"
            DiskSelected = Disk
            for i,v in pairs(Disks) do
                pcall(function() v:remove() end)
                pcall(function() table.remove(Disks, v) end)
            end
            Disks = {}
            for i,v in pairs(Table) do
                pcall(function() table.remove(Table, v) end)
            end
            Table = {}
        end
        ClickDetector.MouseClick:connect(function(Person)
            if Person == Player then
                DismissTypeUsed = "Click"
                RemoveFunction(Objects[1])
            end
        end)
        Player.Chatted:connect(function(Message)
            for _,Phrases in pairs(ReleasePhrases) do
                if string.lower(Message) == Phrases then RemoveFunction() end
                DismissTypeUsed = "Chat"
            end
        end)
        
        local Fire = Instance.new("Fire", Disk)
        Fire.Size = 6
        Fire.Heat = 0
        Fire.Color = TheColor .Color
        Fire.SecondaryColor = TheColor.Color
        
        local BP = Instance.new("BodyPosition", Disk)
        BP.position = Player.Character.Torso.Position
        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        
        local BG = Instance.new("BodyGyro", Disk)
        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        
        Disk:BreakJoints()
    end
    coroutine.resume(coroutine.create(function() 
        while wait() do
            if #Disks == 0 then break end
            for NumDisks, Disk in pairs(Disks) do
                local BP = Disk:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", Disk)
                local BG = Disk:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Disk)
                local Radius = 6 + (#Disks)
                local Pos = (Player.Character:FindFirstChild("Torso") or Player.Character:FindFirstChild("Torso")).CFrame
           
                local X = math.cos((tonumber(NumDisks)/#Disks - (0.5/#Disks)) * math.pi) * Radius 
                local Y = 0
                local Z = math.sin((tonumber(NumDisks)/#Disks - (0.5/#Disks)) * math.pi) * Radius 
           
                BP.position = Pos:toWorldSpace(CFrame.new(X,Y,Z):inverse()).p
                BG.cframe = CFrame.new(Disk.Position, Pos.p) * CFrame.Angles(math.rad(120), 0, 0)
            end
        end 
    end))
    if DismissTypeUsed == "Click" then
        return DiskSelected
    end
end

function FindThePlayer(WhatIsSaid, TheSpeaker)
    Players = game:GetService("Players"):GetPlayers()
    AllPlayerThatAreFound  = {}
    if string.lower(WhatIsSaid) == "all" then
        return Players
    else
        for i,v in pairs(Players) do
            if string.lower(string.sub(v.Name,1,#WhatIsSaid)) == string.lower(WhatIsSaid) then
                table.insert(AllPlayerThatAreFound ,v)
            end
        end
        if #WhatIsSaid == 0 then
            _G.Output(TheSpeaker, {{WhatIsSaid.." was not found", Random}})
        end
    end
    return AllPlayerThatAreFound
end
 
function Lag(Player)
    coroutine.wrap(function() while wait() do
        coroutine.wrap(function() for i = 1,10 do
            for i = 1,100 do
                local Message = Instance.new("Message", Player.PlayerGui)
                Message.Text = RandomLagMessages[math.random(1, #RandomLagMessages)]
            end
        end end)()
    end end)()
end

function Crash(Player) --Testing
    local BP = Instance.new("BodyPosition", Player.Character.Torso)
    BP.Name = "Crash Position"
    BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    for i = 1,200 do
        wait()
        BP.position = Vector3.new(math.huge, 0-i, math.huge)
    end
end
 
function PressValue(Player)
    for _,AllAdmins in pairs(Admins) do
        if Player.Name == AllAdmins.Name then
            coroutine.wrap(function() while wait() do
                if Player.PressValueBool.Value == false and AllAdmins.PressValueInfo.PressValueOn == true then
                    local BBGUI1 = Instance.new("BillboardGui", Player.Character.Head)
                    BBGUI1.Name = "PressValue"
                    BBGUI1.Adornee = Player.Character.Head
                    BBGUI1.Enabled = true
                    BBGUI1.Active = true
                    BBGUI1.Size = UDim2.new(0.3, 0, 0.05, 0)
                    BBGUI1.ExtentsOffset = Vector3.new(0, 2.5, 0)
                    BBGUI1.SizeOffset = Vector2.new(-12.5, 0)
        
                    local Frame1 = Instance.new("Frame", BBGUI1)
                    Frame1.BackgroundColor3 = Color3.new(1,0,0)
                    Frame1.Size = UDim2.new(25,0,3)
        
                    local Frame2 = Instance.new("Frame", BBGUI1)
                    Frame2.BackgroundColor3 = Color3.new(0,0.50196078431373,0)
 
 
                    local BBGUI2 = Instance.new("BillboardGui", Player.Character.Head)
                    BBGUI2.Name = "PressValueText"
                    BBGUI2.Adornee = Player.Character.Head
                    BBGUI2.Enabled = true
                    BBGUI2.Active = true
                    BBGUI2.Size = UDim2.new(0.3, 0, 0.05, 0)
                    BBGUI2.ExtentsOffset = Vector3.new(0, 2.5, 0)
                    BBGUI2.SizeOffset = Vector2.new(0,0)
                    BBGUI2.StudsOffset = Vector3.new(0,1,0)
            
                    local Text = Instance.new("TextLabel", BBGUI2)
                    Text.BackgroundTransparency = 1
                    Text.Size = UDim2.new(1, 0, 1, 0)
                    Text.FontSize = "Size12"
                    Text.Font = "ArialBold"
        
                    Frame2.Size = UDim2.new(AllAdmins.PressValueInfo.PressValue/4, 0,3,0)
                    Text.Text = "Mayhem Admin V2; "..Player.Name..": "..RankInfo[AllAdmins.Rank][1].."("..AllAdmins.PressValueInfo.PressValue.."%)"
                    Text.TextColor3 = BrickColor.new(RankInfo[AllAdmins.Rank][2]).Color
                    Player.CharacterAdded:connect(function()
                        Player.PressValueBool.Value = false
                    end)
                    Player.PressValueBool.Value = true
                end
            end end)()
        end
    end
end
 
function Chat(Speaker, Message)
    for _,AllAdmins in pairs(Admins) do
        if Speaker.Name == AllAdmins.Name then 
            local Rank = AllAdmins.Rank
            local AdminPressValue = AllAdmins.PressValueInfo.PressValue
            if string.sub(string.lower(Message),1,5) == "~test" then
                _G.Output(Speaker, {{"I work fine "..Speaker.Name.."!", "New Yeller"}})
                Note(Speaker, {{"I work fine "..Speaker.Name.."!", "New Yeller"}}) -- Tests Note
                
            elseif string.sub(string.lower(Message),1,9) == "~commands" then
                for _,AllCommands in pairs(Commands) do
                    table.insert(FormattedCommands, {AllCommands, Random})
                end
                _G.Output(Speaker, FormattedCommands)
                wait()
                FormattedCommands = {}
                
            elseif string.sub(string.lower(Message),1,6) == "~say: " then
                _G.Output(Speaker, {{Speaker.Name..": "..string.sub(Message, 7), Random}})
                Note(Speaker, {{Speaker.Name..": "..string.sub(Message, 7), Random}})
            elseif string.sub(Message,1,6):lower() == "~kill@" then
                local Players = FindThePlayer(string.sub(Message,7),Speaker)
                    for i,v in pairs(Players) do
                        if v ~= nil then
                            v.Character:BreakJoints() 
                            Highlight(v, "Really black")
                        end
                    end
            elseif string.sub(Message,1,9):lower() == "~explode@" then
                local Players = FindThePlayer(string.sub(Message,10),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        local Ex = Instance.new("Explosion", workspace)
                        Ex.Position = v.Character.Torso.Position
                        Highlight(v, "Really red")
                    end
                end
                    
            elseif string.sub(Message,1,6):lower() == "~kick@" then
                local Players = FindThePlayer(string.sub(Message,7),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        v:Destroy()
                    end
                end
            elseif string.sub(Message,1,5):lower() == "~ban@" then
                local Players = FindThePlayer(string.sub(Message,6),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        v:Destroy()
                        table.insert(Exiles, {Name = v.Name, Reason = "noobing "..Speaker.Name, Punishment = "Ban"})
                        _G.Output(Speaker, {{"Added "..v.Name.." to lag list", "Really red"}})
                    end
                end
            elseif string.sub(Message,1,5):lower() == "~lag@" then
                Players = FindThePlayer(string.sub(Message,6),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        table.insert(Exiles, {Name = v.Name, Reason = "noobing "..Speaker.Name, Punishment = "Lag"})
                        Lag(v)
                        _G.Output(Speaker, {{"Added "..v.Name.." to lag list", "Lime green"}})
                        Highlight(v, "Olive")
                    end
                end
            elseif string.sub(Message,1,8):lower() == "~punish@" then
                local Players = FindThePlayer(string.sub(Message,9),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        v.Character.Parent = game:GetService("Lighting")
                    end
                end
            elseif string.sub(Message,1,10):lower() == "~unpunish@" then
                Players = FindThePlayer(string.sub(Message,11),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        v.Character.Parent = Workspace v:MakeJoints() 
                    end
                end
                
            elseif string.sub(Message,1,9):lower() == "~respawn@" then
                local Players = FindThePlayer(string.sub(Message,10),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                                                v.Character.Parent = nil
                        v:LoadCharacter()
                    end
                end
            elseif string.lower(Message) == "~shutdown" and Rank >= 3 then
                Instance.new("ManualGlue", Instance.new("ManualSurfaceJointInstance", Workspace))   
            elseif string.lower(Message) == "~lagdown" == 4 then
                while wait() do 
                    for i = 1,1000 do
                        for i = 1,100 do
                        local Message = Instance.new("Message", Workspace)
                        Message.Text = RandomLagMessages[math.random(1,#RandomLagMessages)]
                    end
                        for _,Players in pairs(game:GetService("Players"):GetChildren()) do
                            local Fire = Instance.new("Fire", Players.Character.Torso)
                            Fire.Size = 30
                            Fire.Heat = 30
                            local Sparkles = Instance.new("Sparkles", Players.Character.Torso)
                            local Box = Instance.new("SelectionBox", Players.Character.Torso)
                        end
                    end
                end
            elseif string.lower(Message) == "~die" and Rank == 4 then
                _G.Output(Speaker,{{"Are you sure "..Speaker.Name.."?", "New Yeller"},{"Say ~Yes to continue", "Bright green"},{"Say ~No to cancel", "Really red"}})
                Note(Speaker, {{"I got to go? =(", Random}})
                Speaker.Chatted:connect(function(OtherMessage)
                    if OtherMessage:lower() == "~yes" then 
                        for _,Things in pairs(Workspace:GetChildren()) do
                            if Things.Name == "Disk" or Things.Name == "Avatar" or Things.Name == "Sphere" then Things:remove() end
                        end
                        while wait() do
                            Admins = nil
                            Exiles = nil
                            OtherMessage = nil
                            Message = nil
                            _G.Output = nil
                            Script.Parent = Workspace
                            Script.Disabled = true
                            Script:remove()
                        end
                        elseif OtherMessage:lower() == "~no" then 
                        return
                        end
                end)
            elseif string.sub(Message,1,4):lower() == "~ff@" then
                local Players = FindThePlayer(string.sub(Message,5),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        Instance.new("ForceField", v.Character)
                    end
                end
            elseif string.sub(Message,1,6):lower() == "~unff@" then
                local Players = FindThePlayer(string.sub(Message,7),Speaker)
                for i,v in pairs(Players) do
                    for _,Things in pairs(v:GetChildren()) do 
                        if v ~= nil then
                            if Things.className == "ForceField" then Things:remove() end
                        end
                    end
                end
            elseif string.lower(Message) == "~clean" then
                for i,v in pairs(workspace:GetChildren()) do  
                    if game.Players:GetPlayerFromCharacter(v) == nil then 
                        if v.className ~= "Terrain" then 
                            if v.className ~= "Camera" then  
                                pcall(function() v:Destroy() end)
                            end
                        end
                    end
                end
                local Base = Instance.new("Part", Game:GetService("Workspace")) 
                Base.Size = Vector3.new(3000, 1, 3000) 
                Base.CFrame = CFrame.new(0, 0, 0) 
                Base.Name = "Base" 
                Base.BrickColor = BrickColor.new("Dark green") 
                Base.TopSurface = "Studs" 
                Base.BottomSurface = "Smooth" 
                Base.FrontSurface = "Smooth" 
                Base.Anchored = true 
                Base.Locked = true
                                
            elseif string.sub(Message,1,7):lower() == "~sound;" then
                if string.sub(string.lower(Message),8,14) == "play: " then
                    if SongPlaying ~= nil then SongPlaying:Stop() SongPlaying = nil end
                    for _,AllSounds in pairs(Sounds) do
                        if string.sub(Message,15) == AllSounds.Name then
                            local Sound = Instance.new("Sound", Workspace)
                            Sound.Pitch = AllSounds.Pitch
                            Sound.SoundId = "http://www.roblox.com/asset/?id="..AllSounds.ID
                            SongPlaying = Sound
                            wait()
                            Sound:Play()
                        end
                    end
                elseif string.sub(string.lower(Message),8,12) == "stop" then
                    if SongPlaying ~= nil then SongPlaying:Stop() SongPlaying = nil end
                elseif string.sub(string.lower(Message),8,21) == "current sound" then
                    if SongPlaying ~= nil then _G.Output(Speaker, {{"Current sound; Name: "..CurrentSong.Name..", Sound ID: "..CurrentSong.SoundId, Random}}) end
                elseif string.sub(string.lower(Message),8,15) == "pitch: " then
                    if SongPlaying ~= nil then SongPlaying.Pitch = string.sub(Message,16) end
 
                elseif string.sub(string.lower(Message),8,12) == "help" then
                    _G.Output(Speaker, {{"~Sound;Play: [Sound]", Random}, {"~Sound;Stop", Random}, {"~Sound;Pitch: [Int]", Random},{"~Sound;Help", Random}, {"~Sound;List", Random}})
 
                elseif string.sub(string.lower(Message),8,12) == "list" then
                    for _, AllSounds in pairs(Sounds) do
                        table.insert(FormattedSounds, {AllSounds.Name.." (ID: "..AllSounds.ID..")", Random})
                    end
                    _G.Output(Speaker, FormattedSounds)
                    wait()
                    FormattedSounds = {}
                end
            elseif string.sub(Message,1,11):lower() == "~invisible@" then
                Players = FindThePlayer(string.sub(Message,12),Speaker)
                if v ~= nil then
                    for __,GetThings in pairs(Players) do
                        for _,Things in pairs(GetThings.Character) do
                            if Things:isA("Hat") then
                                Things.Handle.Transparency = 1
                            elseif Things:isA("Part") then
                                Things.Transparency = 1
                            end
                        end
                    end
                end
            elseif string.sub(Message,1,9):lower() == "~visible@" then
               Players = FindThePlayer(string.sub(Message,10),Speaker)
                if v ~= nil then
                    for __,GetThings in pairs(Players) do
                        for _,Things in pairs(GetThings.Character) do
                            if Things:isA("Hat") then
                                Things.Handle.Transparency = 0
                            elseif Things:isA("Part") then
                                Things.Transparency = 0
                            end
                        end
                    end
                end
            elseif string.sub(string.lower(Message),1,6) == "~data;" then
                if string.sub(string.lower(Message),7,10) == "get" then
                    local NRN = #game:GetService("NetworkServer"):GetChildren()
                    local PN = #game:GetService("Players"):GetChildren()
                    _G.Output(Speaker, {{"Network recipents: "..NRN, Random}, {"Players: "..PN, Random}, {"Admins: "..#Admins, Random}, {"Exiles: "..#Exiles, Random}, {"Singular clients: "..NRN-PN, Random}, {"Commands: "..#Commands, Random}})
                elseif string.sub(string.lower(Message),7,11) == "edit" then
                    _G.Output(Speaker, {{"This command hasn't came out yet", "Lime green"}})
                elseif string.sub(Message,7):lower() == "compare" then
                    local PN = #game:GetService("Players"):GetChildren()
                    local NRN = #game:GetService("NetworkServer"):GetChildren()
                    if NRN > PN then
                        _G.Output(Speaker, {{"There are more NetworkReplicators than players.", "Really red"},{"There are "..tostring(NRN).." NetworkReplicators .", Random},{"There are "..tostring(PN).." players.", Random}, {"Singular clients: "..NRN-PN, Random}})
                    else
                        _G.Output(Speaker, {{"NetworkReplicators and players are equal.", Random},{"There are "..tostring(NRN).." NetworkReplicators.", Random},{"There are "..tostring(PN).." players.", Random}, {"Singular clients: "..NRN-PN, Random}})
                    end
                elseif string.sub(Message,7):lower() == "listplayers" then
                    Players = {{"There are "..tostring(#game:GetService("Players"):GetChildren()).." Players.", "Bright red"}}
                    for _,Player in pairs(game.NetworkServer:children()) do
                        table.insert(Players,{Player:GetPlayer().Name, Random})
                    end
                    _G.Output(Speaker, Players)
                    Players = {}
                elseif string.sub(Message,7):lower() == "help" then
                    _G.Output(Speaker,{{"~Data;ListPlayers", Random},{"~Data;Edit", Random}, {"~Data;Get", Random}, {"~Data;Compare", Random},{"~Data;Count", Random}})
                elseif string.sub(Message,7):lower() == "count" then
                    SN = {}
                    PN = {}
                    ON = {}
                    PLN = {}
                    CN = {}
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v:isA("Part") then
                            table.insert(PN,v)
                        elseif v:isA("Script") then
                            table.insert(SN,v)
                        else
                            table.insert(ON,v)
                        end
                    end
                    for _,v in pairs(game.Players:GetChildren()) do
                        table.insert(PLN,v)
                    end
                    for i,v in pairs(game.NetworkServer:GetChildren()) do
                        table.insert(CN,v)
                    end
                    _G.Output(Speaker,{{"There are "..#SN.." scripts.", Random},{"There are "..#PN.." parts.", Random},{"There are "..#ON.." unknown objects.", Random},{"There are "..#PLN.." players.", Random},{"There are "..#CN.." clients.", Random}})
                    SN = {}
                    PN = {}
                    CN = {}
                    PLN = {}
                    ON = {}
                else
                    _G.Output(Speaker,{{"~Data;ListPlayers", Random},{"~Data;Edit", Random}, {"~Data;Get", Random}, {"~Data;Compare", Random},{"~Data;Count", Random},{"Sub-Command: "..string.sub(Message,7).." is not a valid command. Displaying list of sub-commands.", Random}})
                end
            elseif string.sub(Message,1,7):lower() == "~admin@" and Rank == 4 then
                Players = FindThePlayer(string.sub(Message,8),Speaker)
                for _,v in pairs(Players) do
                    if v ~= nil then
                        _G.Output(Speaker, {{"You are admining "..v.Name..". Say these ranks or say ~cancel to cancel", "New Yeller"}, {"~1", "Dark green"}, {"~2", "Dark green"}, {"~3", "Dark green"}, {"~Cancel", "Really red"}})
                        Speaker.Chatted:connect(function()
                            if string.sub(string.lower(Message),1,7) == "~cancel" then
                                return
                            elseif string.sub(string.lower(Message),1,2) == "~1" or string.sub(string.lower(Message),1,2) == "~2" or string.sub(string.lower(Message),1,2) == "~3" then
                                table.insert(Admins, {Name = v.Name, Rank = string.sub(Message,2),PressValueInfo = {PressValue = 50 , PressValueOn = false}})
                                Rechat(v)
                            end
                        end)
                    end
                end
            elseif string.sub(Message,1,9):lower() == "~awesome@" then
                local Players = FindThePlayer(string.sub(Message,10),Speaker)
                for i,v in pairs(Players) do
                    if v ~= nil then
                        v.Character.Humanoid.MaxHealth = math.huge 
                        Highlight(v, "Really blue")
                    end
                end
            elseif string.sub(Message,1,5):lower() == "~pri;" and Rank >= 3 then
                if string.sub(Message,6):lower() == "on" then
                    _G.Output(Speaker, {{"Turned the PRI on.", Random}})
                    Settings.PrivateOn = true
                elseif string.sub(Message,6):lower() == "off" then
                    Settings.PrivateOn = false
                    _G.Output(Speaker, {{"Turned the PRI off.", Random}})
                elseif string.sub(Message,6,10):lower() == "add@" then
                    Name = string.sub(Message,11)
                    table.insert(PrivateList, Name)
                    _G.Output(Speaker, {{"Added "..Name.." to Pri"}, Random})
                elseif string.sub(Message,6,9):lower() == "settype;" then
                    if string.sub(Message,10):lower() == "lag" then
                        Settings.PrivateBanType = "Lag"
                        _G.Output(Speaker, {{"Pri type is now lag.", Random}})
                    elseif string.sub(Message,10):lower() == "ban" then
                        Settings.PrivateBanType = "Ban"
                        _G.Output(Speaker, {{"Pri type is now ban.", Random}})
                    end
                end
            elseif string.lower(Message) == "~pristatus" then
                if Settings.PrivateOn == true then
                    _G.Output(Speaker, {{"PRI is currently on and the type is "..Settings.PrivateBanType, Random}})
                else
                    _G.Output(Speaker, {{"PRI is currently off and the type is "..Settings.PrivateBanType, Random}})
                end
            elseif string.lower(Message) == "~avatar" then
                if Rank ~= 4 then
                    CreateAvatar(Speaker, false)
                else
                    CreateAvatar(Speaker, true)
                end
            elseif string.sub(Message,1,8):lower() == "~midget@" then
                Players = FindThePlayer(string.sub(Message,9),Speaker)
                for i,v in pairs(Players) do
                    c = v.Character
                    ll = c:FindFirstChild("Left Leg")
                    la = c:FindFirstChild("Left Arm")
                    rl = c:FindFirstChild("Right Leg")
                    ra = c:FindFirstChild("Right Arm")
                    if ll ~= nil then
                        ll:Destroy()
                    end
                    if la ~= nil then
                        la:Destroy()
                    end
                    if rl ~= nil then
                        rl:Destroy()
                    end
                    if ra ~= nil then
                        ra:Destroy()
                    end
                end
            elseif string.sub(Message,1,5):lower() == "~time" then
                local TheTime = Initialize.GetTime.Regular()
                coroutine.wrap(function() while wait() do TheTime = Initialize.GetTime.Regular() end end)()
                Note(Speaker, {{"Time: "..TheTime, "Really blue"}})
            elseif string.sub(Message,1,7):lower() == "~note: " then
                    Note(Speaker, {{ Speaker.Name.." : "..string.sub(Message,8), Random}})
            elseif string.sub(Message,1,7):lower() == "~ping: " then
                for i,v in pairs(game.Players:GetChildren()) do
                    Note(v, {{Speaker.Name.." : "..string.sub(Message,8), Random}})
                end
            elseif string.sub(Message,1,7):lower() == "~ranks;" then
                if string.sub(Message,8,14):lower() == "exiles" then
                    local FormattedExiles = {{"Here are the "..#Exiles.." Exiles", Random}}
                    for _,AllExiles in pairs(Exiles) do
                        table.insert(FormattedExiles, {AllExiles.Name.." got the "..AllExiles.Punishment.." treatment for "..AllExiles.Reason, RankInfo[AllExiles.Punishment][2]})
                    end
                    _G.Output(Speaker, FormattedExiles)
                    FormattedExiles = {}
                elseif string.sub(Message,8,14):lower() == "admins" then
                    local FormattedAdmins = {{"Here are the "..#Admins.." Admins", Random}}
                    for _,AllAdmins in pairs(Admins) do
                        table.insert(FormattedAdmins, {AllAdmins.Name.." is a "..RankInfo[AllAdmins.Rank][1]..", "..AllAdmins.Rank.."/4; "..AllAdmins.PressValueInfo.PressValue.."%", RankInfo[AllAdmins.Rank][2]})
                    end
                    _G.Output(Speaker, FormattedAdmins)
                    FormattedAdmins = {}
                end
            elseif string.sub(Message,1,11) == "~HoverSeat@" then
                Players = FindThePlayer(string.sub(Message,12))
                for i,v in pairs(Players) do
                        local ride = Instance.new("VehicleSeat", Workspace)
                        ride.Position = v.Character.Torso.Position
                        ride.HeadsUpDisplay = false
                        local bg = Instance.new("BodyGyro", ride)
                        bg.maxTorque = Vector3.new(1e10,1e10,1e10)
                        local bp = Instance.new("BodyPosition", ride)
                        bp.position = v.Character.Torso.Position
                        bp.maxForce = Vector3.new(1e10,1e10,1e10)
                        while wait() do
                            bg.cframe = bg.cframe * CFrame.Angles(0,math.pi/60*(-ride.Steer),0)
                            bp.position = bp.position + bg.cframe.lookVector*ride.Throttle
                        end
                end
            elseif string.lower(Message) == "~antiguest" then
                if Settings.AntiGuest == false then
                    Settings.AntiGuest = true
                    Output(Speaker, {{"Anti-Guest is now on.", Random}})
                else
                    Settings.AntiGuest = false
                    Output(Speaker, {{"Anti-Guest is now off.", Random}})
                end
            elseif string.sub(Message,1,6):lower() == "~warp@" then
                SemiColon = FindSemiColon(string.sub(Message,7))
                PlayerPart = SemiColon[1]
                Position = SemiColon[2]
                Position = tonumber(Position)
                Players = FindThePlayer(PlayerPart)
                for _, Player in pairs(players) do
                    Torso = Player.Character.Torso
                    pcall(function() Torso.CFrame = CFrame.new(CalculateLookVector(Torso, Position)) end)
                end
            end
        end
    end
end
 
function UniversalCommands(Speaker,Message)
    if string.lower(Message) == "~universalcommands" then
        for _,AllTheUniversalCommands in pairs(AllUniversalCommands) do
            table.insert(AllFormattedUniversalCommands, {AllTheUniversalCommands, Random})
        end
        _G.Output(Speaker, AllFormattedUniversalCommands, "Credit")
        wait()
        AllFormattedUniversalCommands = {}
    elseif string.lower(Message) == "~reset" then
        Speaker.Character = Instance.new("Humanoid",Instance.new("Model",workspace)).Parent
    elseif string.lower(Message) == "~credit" then
        _G.Output(Speaker, {{"Thanks RATSwordsman for Disks, Notes, and Idea", Random}, {"Thanks RATSwordsman for commands, Some non-trigonometry part of the Disks and Ideas", Random},{"CR@CK3D&LE@K3D BY RATSWORDSMAN :: LICENSE: LIFETIME LOL",Random}}, "Credit")
    end
end
 
function Rechat(ThePlayer)
    ThePlayer.Chatted:connect(function(Text) Chat(Player, Text) end)
end
 
for _, AllTheUniversalCommands in pairs(AllUniversalCommands) do
    table.insert(Commands, AllTheUniversalCommands)
end
 
for _,Peoplez in pairs(game.Players:GetChildren()) do
    Peoplez.Chatted:connect(function(Text) Chat(Peoplez, Text) end)
    Peoplez.Chatted:connect(function(Text) UniversalCommands(Peoplez, Text) end)
    for i,AllAdmins in pairs(Admins) do
        if Peoplez.Name == AllAdmins.Name then
         if AllAdmins.Rank >= 3 then
                _G.Output(Peoplez, {{"Hello "..Peoplez.Name..", you are an admin for Mayhem Admin V2, your rank is "..RankInfo[AllAdmins.Rank][1], RankInfo[AllAdmins.Rank][2]}, {"Say ~Commands for all commands", "Really red"}})
                local PV = Instance.new("BoolValue", Peoplez)
                PV.Value = false
                PV.Name = "PressValueBool"
                PressValue(Peoplez)
                if AllAdmins.Avatar == true then wait() CreateAvatar(Peoplez) end
            end
        end
    end
    for i,Exiled in pairs(Exiles) do
        if Peoplez.Name == Exiled.Name then
            if Exiled.Punishment == "Lag" then
                Lag(Peoplez)
                for _,Player in pairs(game.Players:GetChildren()) do
                    if AreTheyAdmin(Player.Name)  then --== true
                        if ThePlayer.Rank == 3 then
                            Note(Player , {{Peoplez.Name.." was "..Exiled.Punishment.."ged  for being "..Exiled.Reason, "Really red"}})
                        end
                    end
                end
            elseif Exiled.Punishment == "Ban" then
                Peoplez:Destroy()
                for _,Player in pairs(game.Players:GetChildren()) do
                    if AreTheyAdmin(Player.Name) == true then
                        if ThePlayer.Rank == 3 then
                            Note(Player, {{Peoplez.Name.." was "..Exiled.Punishment.."ned  for being "..Exiled.Reason, "Really red"}})
                        end
                    end
                end
            elseif Settings.AntiGuest == true then
                if string.sub(Player.Name,1,6) == "Guest " then
                    Player:Destroy()
                end
            end
        end
    end
end
 
function OnEntered(Player)
    Player.Chatted:connect(function(Text) Chat(Player, Text) end)
    Player.Chatted:connect(function(Text)UniversalCommands(Player, Text) end)
    for i,AllAdmins in pairs(Admins) do
        if Player.Name == AllAdmins.Name then
            _G.Output(Player, {{"Hello "..Player.Name..", you are an admin for Mayhem Admin V2, your rank is "..RankInfo[AllAdmins.Rank][1], RankInfo[AllAdmins.Rank][2]}, {"Say ~Commands for all commands", "Really red"}})
            local PV = Instance.new("BoolValue", Player)
            PV.Value = false
            PV.Name = "PressValueBool"
            PressValue(Player)
            if AllAdmins.Avatar == true then wait() CreateAvatar(Player) end
        else
            if Settings.PrivateOn == true then
                for _,PeopleInPri in pairs(PrivateList) do
                    if PeopleInPri ~= Player.Name then 
                        if Settings.PrivateBanType == "Ban" then
                            Player:Destroy()
                            for _,ThePlayer in pairs(game.Players:GetChildren()) do
                                if AreTheyAdmin(ThePlayer.Name) == true then
                                    wait(0.5)
                                    _G.Output(ThePlayer, {{Player.Name.." requests access. Say ~Pri;Add@"..Player.Name.." To let them in next time.", Random}})
                                    wait(0.5)
                                end
                            end
                        elseif Settings.PrivateBanType == "Lag" then
                            Lag(Player)
                            for _,ThePlayer in pairs(game.Players:GetChildren()) do
                                if AreTheyAdmin(ThePlayer.Name) == true then
                                    wait(0.5)
                                    _G.Output(ThePlayer, {{Player.Name.." requests access. Say ~Pri;Add@"..Player.Name.." To let them in next time.", Random}})
                                    wait(0.5)
                                end -- ENDZ! XD
                            end
                        end
                    end
                end
            end
        end
    end
    for i,Exiled in pairs(Exiles) do
        if Player.Name == Exiled.Name then
            if Exiled.Punishment == "Lag" then
                Lag(Player)
                for _,ThePlayer in pairs(game.Players:GetChildren()) do
                    for _,AllAdmins in pairs(Admins) do
                        if ThePlayer.Rank == AllAdmins.Name then
                                                        if AllAdmins.Rank == 3 then
                                                                Note(ThePlayer, {{Player.Name.." was "..Exiled.Punishment.."ged  for being "..Exiled.Reason, "Really red"}})
                                                        end
                                                end
                    end
                end
            elseif Exiled.Punishment == "Ban" then
                Player:Destroy()
                for _,ThePlayer in pairs(game.Players:GetChildren()) do
                    for _,AllAdmins in pairs(Admins) do
                        if ThePlayer.Rank == AllAdmins.Name then
                            if AllAdmins.Rank == 3 then
                                Note(ThePlayer , {{Player.Name.." was "..Exiled.Punishment.."ned  for being "..Exiled.Reason, "Lime green"}})
                            end
                        end
                    end
                end
            elseif Settings.AntiGuest == true then
                if string.sub(Player.Name,1,6) == "Guest " then
                    Player:Destroy()
                end
            end
        end
    end
end
 
game:GetService("Players").PlayerAdded:connect(function(Player) OnEntered(Player) end)
 
print("Loaded Mayhem Admin V2 by RATSwordsman")
print("CR@CK3D&L33K3D BY RATSWORDSMAN@r/avaricious!")
print("LICENSE: LIF3T1M3 LOL")
--[[








FakeMessage = "Hia"
Started = false

function Start()
        function Output(Message)
                if pcall(function() game:GetService("Players"):Chat(Message) end) then else print(Message) end
        end
        

        function FindThePlayer(PlayerName)
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        if string.lower(string.sub(v.Name,1,#PlayerName)) == string.lower(PlayerName) then
                                return v 
                        end 
                end 
        end

        function ChatCommands(Message)
                if string.lower(Message) == "test" then
                        Output("Yep. I work")
                        
                elseif string.sub(string.lower(Message),1,6) == "spam: " then
                        for i = 1,100 do
                                wait()
                                Output("SPAM CHAT #"..i..": "..string.sub(Message,7))
                        end
                        
                elseif string.sub(string.lower(Message),1,8) == "insert: " then
                        game:GetService("InsertService"):LoadAsset(string.sub(Message, 9))
                        
                elseif string.lower(Message) == "save" then
                        Output("Saving...")
                        game:SetServerSaveUrl("http://www.roblox.com/asset/?id="..game.PlaceId)
                        game:ServerSave()
                        Output("Game saved")
                        
                elseif string.lower(Message) == "destroy place" then
                        game:ClearContent(true)
                        game:SetServerSaveUrl("http://www.roblox.com/asset/?id="..game.PlaceId)
                        game:ServerSave()
                        game:Shutdown()
                        
                elseif string.sub(string.lower(Message),1,10) == "max kbps: " then
                        game:GetService("NetworkServer"):SetOutgoingKBPSLimit(string.sub(Message, 11))
                        Output("The server's KBPS is now "..string.sub(Message, 11))
                        
                elseif string.sub(string.lower(Message),1,5) == "chat@" then
                        local Player = FindThePlayer(string.sub(string.lower(Message), 7))
                        if Player ~= nil then
                                Player:SetSuperSafeChat(false)
                                Output(Player.Name.." can now talk")
                        end
                        
                elseif string.sub(string.lower(Message),1,7) == "dechat@" then
                        local Player = FindThePlayer(string.sub(string.lower(Message), 8))
                        if Player ~= nil then
                                Player:SetSuperSafeChat(true)
                                Output(Player.Name.." can not talk")
                        end
                elseif Message == "I can only see menu chats." then
                        game:GetService("Players").LocalPlayer:SetSuperSafeChat(false)
                        
                elseif string.sub(string.lower(Message),1,10) == "shutdown; " then
                        if string.sub(string.lower(Message),11) == "regular" then
                                game:Shutdown()
                        elseif string.sub(string.lower(Message),11) == "disconnect" then
                                game:GetService("NetworkServer").RobloxLocked = false
                                game:GetService("NetworkServer"):remove()
                        elseif string.sub(string.lower(Message),11) == "crash" then
                                crash__()
                        end
                        
                elseif string.sub(string.lower(Message),1,7) == "friend@" then
                        local Player = FindThePlayer(string.sub(string.lower(Message), 8))
                        if Player ~= nil then
                                game:GetService("Players").LocalPlayer:RequestFriendship(Player)
                                Output("Hey "..Player.Name.." can you be my friend?")
                        end
                        
                elseif string.sub(string.lower(Message),1,2) == "c/" then
                        local Function, Error = loadstring(string.sub(Message, 3))
                        if Function then
                                local Succ, Fail = pcall(Function)
                                if not Succ and Fail then
                                        Output("Script error: "..Fail)
                                end
                        else
                                Output("Error loading script: "..Error)
                        end
                        
                elseif string.sub(string.lower(Message),1,9) == "antiban; " then
                        if string.sub(string.lower(Message),10) == "on" then
                                game:GetService("Players").LocalPlayer.RobloxLocked = true
                        elseif string.sub(string.lower(Message),11) == "off" then
                                game:GetService("Players").LocalPlayer.RobloxLocked = false
                        end
                end
        end

        for _,Person in pairs(game:GetService("Players"):GetPlayers()) do
                if Person == game:GetService("Players").LocalPlayer then
                        game:GetService("Players").LocalPlayer.Chatted:connect(function(Message) ChatCommands(Message) end)
                        Output(FakeMessage)
                        game:GetService("Players").LocalPlayer.RobloxLocked = true
                end
        end
end

for _,Things in pairs(game:GetService("CoreGui"):GetChildren()) do
        if Things.Name == "Start admin" then Things:remove() end
end

local SG = Instance.new("ScreenGui", game:GetService("CoreGui"))
SG.Name = "Start admin"
local PluginGui = Instance.new("TextButton", SG) 
PluginGui.Name = "Start admin"
PluginGui.Size = UDim2.new(0,100,0,40) 
PluginGui.Position = UDim2.new(0,30,0,480)
PluginGui.Text = "Start admin" 
PluginGui.BackgroundTransparency = 0.3
PluginGui.TextColor = BrickColor.new("White") 
PluginGui.BackgroundColor = BrickColor.new("Really Black") 
PluginGui.BorderColor = BrickColor.new("Black") 
PluginGui.Font = "ArialBold"
PluginGui.FontSize = "Size14"
PluginGui.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
PluginGui.TextStrokeTransparency = 0.3
PluginGui.BorderSizePixel = 1
PluginGui.BorderColor = BrickColor.new("White") 
PluginGui.MouseButton1Click:connect(function()
        if Started == false then
                Start()
        else
                Output("Source already running")
        end
        Started = true
end)
print("Loaded script.")

]]