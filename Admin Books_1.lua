Admins = {
    [""] = 3,
    ["yfc"] = 3,
    [""] = 3,
    [""] = 3
}
 local Levels = {
    [0] = {"Peasant", BrickColor.new("Medium stone grey")};
    [1] = {"Knight", BrickColor.new("Bright red")};
    [2] = {"Lord", BrickColor.new("Navy blue")};
    [3] = {"King", BrickColor.new("Bright red")}
}
 Players = Game:GetService("Players")
 Workspace = Game:GetService("Workspace")
 Debris = Game:GetService("Debris")
 Lighting = Game:GetService("Lighting")
 
 Teams = Game:GetService("Teams")
 MR = math.rad
 MD = math.deg
 IPStore = {}
 IPBans = {}
 Banned = {"Network Server"}
 PrivateServer = {}
 PrivateServerWarnings = {}
 function IncommingConnection(IPAddress, Replicator)
    local IP = IPAddress:sub(1, IPAddress:find(":")-1)
    local ThePlayer
    Players.PlayerAdded:connect(function(NewPlayer)
        if not ThePlayer then
            ThePlayer = NewPlayer
        end
    end)
   
    repeat wait() until ThePlayer
   
    IPStore[ThePlayer.Name] = IP
   
    for i=1, #IPBans do
        if IPBans[i] == IP then
            ThePlayer:Remove()
        end
    end
end
 Game:GetService("NetworkServer").IncommingConnection:connect(IncommingConnection)
 function Round(Number, ToWhatExtent)
    if ToWhatExtent then
        return math.floor(Number/ToWhatExtent+0.5)*ToWhatExtent
    else
        return math.floor(Number + 0.5)
    end
 end
 Settings = {
    Color = BrickColor.new("New Yeller"), --Its navyblue...
    Name = "TheWinteryHail Admin",
    Version = "0.0.8"
}
 function ShowInCircle(Prompter,...) 
    local Args = {...}
    local Books = {}
    Args[#Args + 1] = "Dismiss"
    local Ans = nil
    local Rank = Admins[Prompter.Name]
   
    for i=1, #Args do
        local IsKings
        if Args[i]:find("(Kings Only)") then
            IsKings = true
        end
        local Book = Instance.new("Part", Game:GetService("Workspace"))
        Book.Anchored = false
        Book.Locked = true
        Book.CanCollide = false
        Book.TopSurface, Book.BottomSurface = 0, 0
        Book.Transparency = 0.5
        Book.FormFactor = Enum.FormFactor.Custom
        Book.Size = Vector3.new(2.3, 1, 3)
        if IsKings and Admins[Prompter.Name] < 3 then
            Book.BrickColor = BrickColor.new("New Yeller")
        else
            Book.BrickColor = Settings.Color
        end
        table.insert(Books, Book)
       
        local Mesh = Instance.new("SpecialMesh", Book)
        Mesh.MeshId = "http://www.roblox.com/asset/?id=1136139"
        Mesh.MeshType = "FileMesh"
       
        local BG = Instance.new("BodyGyro", Book)
        local BP = Instance.new("BodyPosition", Book)
       
       if (IsKings and Admins[Prompter.Name] == 3) or not IsKings  then
            local Fire = Instance.new("Fire", Book)
            Fire.Heat = 0
            Fire.Color = Settings.Color.Color
            Fire.SecondaryColor = Settings.Color.Color
        end
       
        local Billboard = Instance.new("BillboardGui", Book)
        Billboard.Adornee = Book
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
        Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
       
        local Text = Instance.new("TextLabel", Billboard)
        Text.Text = Args[i]
        if IsKings and Admins[Prompter.Name] ~= 3 then
            Text.TextColor3 = BrickColor.new("New Yeller").Color
        else
            Text.TextColor3 = Settings.Color.Color
        end
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 1, 0)
        
        local ClickDetector = Instance.new("ClickDetector", Book)
        ClickDetector.MouseClick:connect(function(Player)
            if Player == Prompter and Args[i] == "Dismiss" then
                Ans = Args[i]
                
                for _, v in pairs(Books) do
                    v:Remove()
                end
                
                Books = {}
            end
        end)
    end
   
    coroutine.resume(coroutine.create(function()
        local radius = 3 + (#Books*.7)
        
        while wait() do
        if #Books == 0 then break end
        for _, Book in pairs(Books) do
            local BP = Book:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", Book)
            BP.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
            local BG = Book:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Book)
            BG.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
            local Pos = (Prompter.Character:FindFirstChild("Torso") or Prompter.Character:FindFirstChild("Torso")).CFrame
           
            local x = math.cos((tonumber(_)/#Books - (0.5/#Books)) * math.pi*2) * radius -- cos
            local y = 0
            local z = math.sin((tonumber(_)/#Books - (0.5/#Books)) * math.pi*2) * radius -- sin
           
            BP.position = Pos:toWorldSpace(CFrame.new(x,y,z):inverse()).p
            BG.cframe = CFrame.new(Book.Position, Pos.p) * CFrame.Angles(math.pi/2, 0, 0)
        end
       
        end
    end))
end
function Prompt(Prompter, ...)
    local Args = {...}
    local Books = {} --Dismiss sounds cooler :3
    Args[#Args + 1] = "Dismiss"
    local Ans = nil
   
    for i=1, #Args do
        local Book = Instance.new("Part", Game:GetService("Workspace"))
        Book.Anchored = false
        Book.Locked = true
        Book.CanCollide = false
        Book.TopSurface, Book.BottomSurface = 0, 0
        Book.Transparency = 0.5
        Book.FormFactor = Enum.FormFactor.Custom
        Book.Size = Vector3.new(2.3, 1, 3)
        Book.BrickColor = Settings.Color
        table.insert(Books, Book)
       
        local Mesh = Instance.new("SpecialMesh", Book)
        Mesh.MeshId = "http://www.roblox.com/asset/?id=1136139"
        Mesh.MeshType = "FileMesh"
       
        local Fire = Instance.new("Fire", Book)
        Fire.Heat = 0
        Fire.Color = Settings.Color.Color
        Fire.SecondaryColor = Settings.Color.Color
       
        local Billboard = Instance.new("BillboardGui", Book)
        Billboard.Adornee = Book
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
        Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
       
        local Text = Instance.new("TextLabel", Billboard)
        Text.Text = Args[i] 
        Text.TextColor3 = Settings.Color.Color
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 1, 0)
        
        local AttemptToFixPrompt = i
        
        local ClickDetector = Instance.new("ClickDetector", Book)
        ClickDetector.MouseClick:connect(function(Player)
            if Player == Prompter then
                Ans = Args[i]
                local BackupBooks = Books
                Books = {}
                local AnimationOver
                pcall(function() BP.Position = Player.Character.Torso.Position end)
                
                Book.Touched:connect(function(zPart)
                    pcall(function()
                    if zPart == Player.Character.Torso then
                        AnimationOver = true
                    end
                    end)
                end)
                
                delay(5, function() AnimationOver = true end)
                
                for _, v in pairs(BackupBooks) do
                    v:Remove()
                end
                BackupBooks = nil
                return AttemptToFixPrompt
            end
        end)
    end
   
    coroutine.resume(coroutine.create(function()
        local radius = 3 + (#Books)
        
        while wait() do
        if #Books == 0 then break end
        for _, Book in pairs(Books) do
            local BP = Book:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", Book)
            BP.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
            local BG = Book:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Book)
            BG.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
            local Pos = (Prompter.Character:FindFirstChild("Torso") or Prompter.Character:FindFirstChild("Torso")).CFrame
           
            local x = math.cos((tonumber(_)/#Books - (0.5/#Books)) * math.pi) * radius -- cos
            local y = 0
            local z = math.sin((tonumber(_)/#Books - (0.5/#Books)) * math.pi) * radius -- sin
           
            BP.position = Pos:toWorldSpace(CFrame.new(x,y,z):inverse()).p
            BG.cframe = CFrame.new(Book.Position, Pos.p) * CFrame.Angles(math.pi/2, 0, 0)
        end
       
        end
    end))
    
    while (Ans == nil) and (#Books > 0) do
        wait()
    end
    return Ans
 end
 function ParseMessage(Message)
    Message = Message:gsub("lego%s", "")
    Message = Message:gsub("runescape%s", "")
    Message = Message:gsub("minecraft%s", "")
    local Command
    local Args = {}
    for Word in Message:gmatch("%w+") do
        if not Command then
            Command = Word
        else
            table.insert(Args, Word)
        end
    end
    return Command, Args
end
 
 function ErrorHandler(Error)
    print(Error)
    local Message = Instance.new("Message", Workspace)
    Message.Text = "!ERROR!: " .. Error:gsub("(.-:)","")
    Game:GetService("Debris"):AddItem(Message, 5)
end
 
 function onPlayerAdded(NewPlayer)
    for b=1, #Banned do
        if NewPlayer.Name == Banned[b] then
            coroutine.resume(coroutine.create(function()
                for i=1, 25 do
                    pcall(function() NewPlayer:Destroy() end)
                    wait(0.5)
                end
            end))
        end
    end
    
    NewPlayer.Chatted:connect(function(C)
        xpcall(function()
            local a, b = coroutine.resume(coroutine.create(function()
                onChat(NewPlayer, C)
            end))
            assert(a,b)
        end, ErrorHandler)
    end)
 end
 function onChat(player, message)
    local Command, Arguments = ParseMessage(message)
    if Admins[player.Name] ~= nil then
            if Command == "kickmenu" then
                local People = Game:GetService("Players"):GetPlayers()
                    local Names = {}
                    for _, v in pairs(People) do
                        table.insert(Names, v.Name)
                    end
                    local OptionChoosen = Prompt(player, unpack(Names))
                    print(OptionChoosen)
                    if OptionChoosen and game:GetService("Players"):FindFirstChild(OptionChoosen) then
                        game:GetService("Players") [OptionChoosen]:Destroy()
                    else
                        print("Player missing")
                    end
            elseif Command == "privateserver" then
                local Option = Prompt(player, "Turn on", "Turn off", "Add name", "Remove name", "Remove all names")
                if Option == "Turn on" then
                    PrivateServerOn = true
                    
                    local OnJoinCon = function(NewPlayer)
                        if PrivateServer[NewPlayer.Name] == nil then
                            NewPlayer:Remove()
                            if PrivateServerWarnings[NewPlayer.Name] == nil then
                                local AddHim = Prompt(player, "Click me to add " .. NewPlayer.Name .. " to the private server list")
                                if AddHim == "Click me to add " .. NewPlayer.Name .. " to the private server list" then
                                    PrivateServer[NewPlayer.Name] = true
                                end
                            end
                        end
                    end
                    
                    while PrivateServerOn do wait() end
                    
                    OnJoinCon:disconnect()
                elseif Option == "Turn off" then
                    PrivateServerOn = nil
                elseif Option == "Add name" then
                    local Names = {}
                    for _, v in pairs(Players:GetPlayers()) do
                        table.insert(Names, v.Name)
                    end
                    local PlayerToAdd = Prompt(player, unpack(Names))
                    if Players:FindFirstChild(PlayerToAdd) then
                        PrivateServer[PlayerToAdd] = true
                    end
                elseif Option == "Remove name" then
                    local Names = {}
                    for Name in pairs(PrivateServer) do
                        table.insert(Names, Name)
                    end
                    local NameToRemove = Prompt(player, unpack(Names))
                    if Names[NameToRemove] then
                        Names[NameToRemove] = nil
                    end
                elseif Option == "Remove all names" then
                    PrivateServer = {}
                end
            elseif Command == "banmenu" then
                local People = Game:GetService("Players"):GetPlayers()
                local Names = {}
                for _, v in pairs(People) do
                    table.insert(Names, v.Name)
                end
                local OptionChoosen = Prompt(player, unpack(Names))
                print(OptionChoosen)
                if OptionChoosen and game:GetService("Players"):FindFirstChild(OptionChoosen) then
                    table.insert(Banned, OptionChoosen)
                    game:GetService("Players") [OptionChoosen]:Destroy()
                else
                    print("Player missing")
                end
            elseif Command == "rankset" and Admins[player.Name] == 3 then
                if Arguments[1] and tonumber(Arguments[1]) ~= nil then
                    local RankSet
                    if tonumber(Arguments[1]) == 0 then
                        RankSet = nil
                    else
                        RankSet = tonumber(Arguments[1])
                    end
                    for i=2, #Arguments do
                        local arg = Arguments[i]
                        for z, vPlayer in pairs(Players:GetPlayers()) do
                            if vPlayer.Name:lower():find(arg:lower()) == 1 then
                                Admins[vPlayer.Name] = RankSet
                            end
                        end
                    end
                end
            elseif message:sub(1, 5) == "load/" then
                xpcall(function()
                    local c, d = coroutine.resume(coroutine.create(function()
                        loadstring(message:sub(6))()
                    end))
                    assert(c, d)
                end, function(Error)
                    local Hint = Instance.new("Message", Workspace)
                    Hint.Text = "|QUICKSCRIPT ERROR|:| " .. Error:sub("(.-:)")
                    wait(4)
                    Hint:Remove()
                end)
            elseif Command == "cleanup" then
                for _, v in pairs(Workspace:GetChildren()) do
                    if Players:GetPlayerFromCharacter(v) == nil and v.className ~= "Terrain" and v~=script then
                        pcall(function() v:Remove() end)
                    end
                end
                local Base = Instance.new("Part", Workspace)
                Base.Anchored = true
                Base.TopSurface = Enum.SurfaceType.Smooth
                Base.BottomSurface = Enum.SurfaceType.Smooth
                Base.FormFactor = Enum.FormFactor.Symmetric
                Base.BrickColor = BrickColor.new("Earth green")
                Base.Size = Vector3.new(1000, 1, 1000)
                Base.Name = "Base"
                Base.CFrame = CFrame.new(Vector3.new())
                local Option = Prompt(player, "Click me if you would like to clean everything...")
                if Option == "Click me if you would like to clean everything..." then
                    pcall(function() Lighting:ClearAllChildren() end)
                    pcall(function() Teams:ClearAllChildren() end)
                    pcall(function() table.foreach(Players:GetPlayers(), function(_, v) v.Neutral = true end) end)
                end
                local Option = Prompt(player, "Click me if you would like to respawn players...")
                if Option == "Click me if you would like to respawn players..." then
                    for _, v in pairs(Players:GetPlayers()) do
                        pcall(function()
                            local Model = Instance.new("Model", Workspace)
                            Instance.new("Humanoid", Model)
                            v.Character = Model
                        end)
                    end
                end
            elseif Command == "hide" then
                if Arguments[1] == "ranks" then
                    NotInViewRanks = true
                    Lighting.TimeOfDay = "14:00:00"
                    Lighting.Ambient = BrickColor.new("Medium stone grey").Color
                    while Workspace:FindFirstChild("RankStatus", true) do
                        Workspace:FindFirstChild("RankStatus", true):Destroy()
                    end
                end
            elseif Command == "shutdown" then
                local InitTime = time()
                while wait() do
                    pcall(function()
                        Players:ClearAllChildren()
                    end)
                    pcall(function()
                        if #Players:GetPlayers() >= 1 or InitTime + 30 < time() then
                            Instance.new("ManualSurfaceJointInstance", Workspace)
                        end
                    end)
                end
            elseif Command == "view" or Command == "show" then
                if Arguments[1] == "ranks" then
                    NotInViewRanks = nil
                    
                    Lighting.TimeOfDay = "2:00:00"
                    Lighting.Ambient = BrickColor.new("Black").Color
                    
                    local AutoColorConnection = Workspace.ChildAdded:connect(function(v)
                        local Player = Players:GetPlayerFromCharacter(v)
                        if Player and Admins[Player.Name] then
                            local Rank = Admins[Player.Name]
                            coroutine.resume(coroutine.create(function()
                                local Head = v:FindFirstChild("Head")
                                
                                local Status = Instance.new("Part", v)
                                Status.FormFactor = "Symmetric"
                                Status.Shape = "Ball"
                                Status.Name = "Status"
                                Status.TopSurface = 0
                                Status.BottomSurface = 0
                                Status.BrickColor = Levels[Rank][2]
                                Status.CanCollide = false
                                Status.Name = "RankStatus"
                                Status.Transparency = 0.5
                                
                                local Billboard = Instance.new("BillboardGui", Status)
                                Billboard.Adornee = Status
                                Billboard.Enabled = true
                                Billboard.Active = true
                                Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
                                Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
                                
                                local Text = Instance.new("TextLabel", Billboard)
                                Text.Text = Levels[Rank][1] .. " - " .. Player.Name
                                Text.TextColor3 = Levels[Rank][2].Color
                                Text.BackgroundTransparency = 1
                                Text.Size = UDim2.new(1, 0, 1, 0)
                                
                                local Body = Instance.new("BodyPosition", Status)
                                Body.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                
                                local Fire = Instance.new("Fire", Status)
                                Fire.Color = Levels[Rank][2].Color
                                Fire.SecondaryColor = Levels[Rank][2].Color
                                
                                local function gS(i)
                                    return math.sin(math.rad(i))
                                end
                                
                                local function gC(i)
                                    return math.cos(math.rad(i))
                                end
                                
                                for _, v in pairs(v:GetChildren()) do
                                    if v:IsA("Part") and v.Name ~= "RankStatus" then
                                        local Sel = Instance.new("SelectionBox", Status)
                                        Sel.Adornee = v
                                        Sel.Color = Levels[Rank][2]
                                        
                                        local Fir = Instance.new("Fire", Status)
                                        Fir.Color = Levels[Rank][2].Color
                                        Fir.SecondaryColor = Levels[Rank][2].Color
                                    end
                                end
                                
                                while wait() and Head and Head.Parent do
                                    for i = 0, 360, 2 do
                                         Body.position = (CFrame.new(Head.Position) *  CFrame.new(Vector3.new(gS(i)*5, gC(i*5)*2 + 1.5, gC(i)*5))).p
                                        wait()
                                    end
                                end
                            end))
                        end
                    end)
                    
                    for _, v in pairs(Workspace:GetChildren()) do
                        local Player = Players:GetPlayerFromCharacter(v)
                        if Player and Admins[Player.Name] then
                            local Rank = Admins[Player.Name]
                            coroutine.resume(coroutine.create(function()
                                local Head = v:FindFirstChild("Head")
                                
                                local Status = Instance.new("Part", v)
                                Status.FormFactor = "Symmetric"
                                Status.Shape = "Ball"
                                Status.Name = "Status"
                                Status.TopSurface = 0
                                Status.BottomSurface = 0
                                Status.BrickColor = Levels[Rank][2]
                                Status.CanCollide = false
                                Status.Name = "RankStatus"
                                Status.Transparency = 0.5
                                
                                local Billboard = Instance.new("BillboardGui", Status)
                                Billboard.Adornee = Status
                                Billboard.Enabled = true
                                Billboard.Active = true
                                Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
                                Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
                                
                                local Text = Instance.new("TextLabel", Billboard)
                                Text.Text = Levels[Rank][1] .. " - " .. Player.Name
                                Text.TextColor3 = Levels[Rank][2].Color
                                Text.BackgroundTransparency = 1
                                Text.Size = UDim2.new(1, 0, 1, 0)
                                
                                local Body = Instance.new("BodyPosition", Status)
                                Body.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                
                                local Fire = Instance.new("Fire", Status)
                                Fire.Color = Levels[Rank][2].Color
                                Fire.SecondaryColor = Levels[Rank][2].Color
                                
                                local function gS(i)
                                    return math.sin(math.rad(i))
                                end
                                
                                local function gC(i)
                                    return math.cos(math.rad(i))
                                end
                                
                                for _, v in pairs(v:GetChildren()) do
                                    if v:IsA("Part") and v.Name ~= "RankStatus" then
                                        local Sel = Instance.new("SelectionBox", Status)
                                        Sel.Adornee = v
                                        Sel.Color = Levels[Rank][2]
                                        
                                        local Fir = Instance.new("Fire", Status)
                                        Fir.Color = Levels[Rank][2].Color
                                        Fir.SecondaryColor = Levels[Rank][2].Color
                                    end
                                end
                                
                                while wait() and Head and Head.Parent do
                                    for i = 0, 360, 2 do
                                        Body.position = (CFrame.new(Head.Position) * CFrame.new(Vector3.new(gS(i)*5, gC(i*5)*2 + 1.5, gC(i)*5))).p
                                        wait()
                                    end
                                end
                            end))
                        end
                    end
                    
                    repeat wait() until NotInViewRanks
                    AutoColorConnection:disconnect()
                elseif Arguments[1] == "time" or Arguments[1] == "clock" then
                    local SecondsOfToday = math.fmod(tick(), 60*60*24) -- Long story check in wiki...
                    local Hour = math.floor(SecondsOfToday / (60*60))
                    local Minute = math.floor(SecondsOfToday/60 - Hour*60)
                    local Second = math.floor(math.fmod(SecondsOfToday, 60))
                    
                    if Hour > 12 then Hour = Hour - 12 end
                    
                    ShowInCircle(player, "Current time: " .. Hour .. ":" .. Minute .. ":" .. Second, "Server Time: " .. math.floor(time()))
                end
            elseif Command == "kick" then
                for _, Arg in pairs(Arguments) do
                    for k, Player in pairs(Game:GetService("Players"):GetPlayers()) do
                        if Player.Name:lower():match(Arg:lower()) then
                            pcall(function() Player:Destroy() end)
                        end
                    end
                end
            elseif Command == "commands" then
                ShowInCircle(player,
                    "kickmenu", "banmenu", "load/[script]", "cleanup", "hide", "shutdown",
                    "view(or show) [option]", "hide, [option]", "kick [playername]", "rankset (Kings Only)",
                    "ip (Kings Only)", "antiban", "lag (broken)", "breakscripts (Kings Only)",
                    "kill [playername]", "killmenu", "getage", "hack-script", "hack-account", "hack-server", "takeover", "hack-computer", "hack-menu"
                )
            elseif Command == "antiban" then
                local PeopleNames = {}
                for _, v in pairs(Game:GetService("Players"):GetPlayers()) do
                    table.insert(PeopleNames, v.Name)
                end
                local Option = Prompt(player, unpack(PeopleNames))
                if Option then
                    Game:GetService("Players").PlayerRemoving:connect(function(Player)
                        if Player.Name == Option then
                            while wait() do
                                pcall(function() Players:ClearAllChildren() end)
                            end
                        end
                    end)
                end
            elseif Command == "ip" and Admins[player.Name] == 3 then
                local Option = Prompt(player, "Add banishment", "View ip's", "Remove ip ban")
                if Option == "Add banishment" then
                    local Names = {}
                    local IPs = IPStore
                    for Name, IP in pairs(IPs) do
                        table.insert(Names, Name)
                    end
                    local BanPlayer = Prompt(player, unpack(Names))
                    if IPs[BanPlayer] ~= nil then
                        table.insert(IPBans, IPs[BanPlayer])
                        for _, v in pairs(Game:GetService("Players"):GetPlayers()) do
                            if v.Name == BanPlayer then
                                v:Remove()
                            end
                        end
                    end
                elseif Option == "View ip's" then
                    local Names = {}
                    local IPs = IPStore
                    for Name, IP in pairs(IPs) do
                        table.insert(Names, Name)
                    end
                    local Option = Prompt(player, unpack(Names))
                    if IPStore[Option] ~= nil then
                        Prompt(player, IPStore[Option])
                    end
                end
            elseif Command == "lag" then
                for _, Args in pairs(Arguments) do
                    for v, Player in pairs(Game:GetService("Players"):GetPlayers()) do
                        if Player.Name:lower():find(Args:lower()) == 1 then
                            while wait() do
                                for i=1, 10 do
                                    Instance.new("Message", Player:FindFirstChild("PlayerGui") or nil).Text = "I B LAGGIN JOO!"
                                end
                            end
                        end
                    end
                end
            elseif Command == "breakscripts" and Admins[player.Name] == 3 then
                Game:GetService("ScriptContext").ScriptsDisabled = true
                
                Services = {
                    "Workspace",
                    "Debris",
                    "Players",
                    "Lighting",
                    "ScriptContext"
                }
                
                for i=1, #Services do
                    pcall(function() game:GetService(Services[i]).Name = math.random(1000, 10000) end)
                end
                --Idk if this works, just hope :3
                local mt = {__index = function() return function() end end}
                setmetatable(_G, mt)
            elseif Command == "killmenu" then
                local People = Game:GetService("Players"):GetPlayers()
                local Names = {}
                for _, v in pairs(People) do
                    table.insert(Names, v.Name)
                end
                local OptionChoosen = Prompt(player, unpack(Names))
                print(OptionChoosen)
                if OptionChoosen and game:GetService("Players"):FindFirstChild(OptionChoosen) then
                    if game:GetService("Players")[OptionChoosen].Character then
                        game:GetService("Players") [OptionChoosen].Character:BreakJoints()
                    end
                else
                    print("Player missing")
                end
            elseif Command == "kill" then
                for _, Arg in pairs(Arguments) do
                   for k, Player in pairs(Game:GetService("Players"):GetPlayers()) do
                       if Player.Name:lower():find(Arg:lower()) == 1 and Player.Character then
                           Player.Character:BreakJoints()
                       end
                   end
                end
            end
    end
 end
 game:GetService("Players").PlayerAdded:connect(onPlayerAdded)
 
 --[ SB Mode ]--
 for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    onPlayerAdded(player)
 end
 Game:GetService("RunService").Stepped:connect(function()
    local S, E = pcall(function()
    if LastClean == nil or time() - LastClean >= 10 then do 
        collectgarbage("collect")
        LastClean = time()
    end
    end
    if not S then
        ErrorHandler(E)
    end
 end)
 end)
