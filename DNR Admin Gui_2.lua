-- [[ LEGO ]] --

function FindChildren(Parent, Child)
    local ReturnValue = nil 

    if (Child ~= "Character") then 
        pcall(function() ReturnValue = Parent:findFirstChild(Child) end)
    elseif (Child == "Character") then 
        pcall(function() ReturnValue = Parent[Child] end)
    end 

    return ReturnValue
end 

local ScriptName = "yfc's Admin Gui"
local OldScript = FindChildren(game:GetService("Workspace"), ScriptName)

if (OldScript) then 
    game:GetService("Debris"):AddItem(OldScript, 0)
end 

script.Name = ScriptName

local LastChatted = nil 
local Ranks = { 
    { "Administrator" , { "yfc" } },
    { "Moderator" , { "" } },
    { "Mini Moderator" , { "" } },
}

function CreateScreenGui(Player)
    if (Player) then 
        local PlayerGui = FindChildren(Player, "PlayerGui")

        if (PlayerGui) then 
            for _,PlayerGui in pairs(PlayerGui:GetChildren()) do 
                if (PlayerGui.Name == Player.Name.. "'s Admin Gui [ By DNR and xXxXxDragonxXxXx ]") then 
                    PlayerGui:Remove()
                end 
            end 
            
            local ScreenGui = Instance.new("ScreenGui")
            ScreenGui.Parent = PlayerGui
            ScreenGui.Name = Player.Name.. "'s Admin Gui [ By DNR and xXxXxDragonxXxXx ]"

            local CurrentPosition = 0.685
            local CurrentTransparency = 0
            
            for i = 1, 15 do 
                local TextLabel = Instance.new("TextLabel")
                TextLabel.Name = "Information TextLabel_".. i
                TextLabel.Parent = ScreenGui
                TextLabel.Position = UDim2.new(0.001, 0, CurrentPosition, 0)
                TextLabel.Size = UDim2.new(1, 0, 0.017, 0)
                TextLabel.Text = ""
                TextLabel.TextColor3 = Color3.new(1, 1, 1)
                TextLabel.TextXAlignment = "Left"
                TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
                TextLabel.BackgroundTransparency = CurrentTransparency
                TextLabel.BorderColor3 = Color3.new(1, 1, 1)
                TextLabel.BorderSizePixel = 1
                TextLabel.FontSize = "Size10"

                CurrentPosition = CurrentPosition + 0.017
                CurrentTransparency = CurrentTransparency + 0.05
            end 
        end 
    end 
end 

function CheckPlayer(Player)
    local ReturnValue = false 

    for Check_1 = 1, #Ranks do 
        local Check_2 = Ranks[Check_1][2]
        
        for Check_3 = 1, #Check_2 do 
            if (string.lower(Player.Name) == string.lower(Check_2[Check_3])) then 
                ReturnValue = true 
            end 
        end 
    end 
    
    return ReturnValue
end 

function CheckPlayerRank(Player)
    local ReturnValue = 0
    
    for Check_1 = 1, #Ranks do 
        local Check_2 = Ranks[Check_1][2]
        
        for Check_3 = 1, #Check_2 do 
            if (Player == Check_2[Check_3]) then 
                ReturnValue = Ranks[Check_1][1]
            end 
        end 
    end 
    
    if (ReturnValue == "Mini Moderator") then 
        ReturnValue = 1
    elseif (ReturnValue == "Moderator") then 
        ReturnValue = 2
    elseif (ReturnValue == "Administrator") then 
        ReturnValue = 3
    end 
    
    return ReturnValue
end 

function ScrollChat(Player, Text_)
    if (Player) then 
        local PlayerGui = FindChildren(Player, "PlayerGui")

        if (PlayerGui) then 
            local ScreenGui = FindChildren(PlayerGui, Player.Name.. "'s Admin Gui [ By DNR and xXxXxDragonxXxXx ]")
            
            if (ScreenGui) then 
                local CurrentSlide = 1
                
                for i = 1, 15 do 
                    local CurrentSlide_ = FindChildren(ScreenGui, "Information TextLabel_".. CurrentSlide)
                    
                    if (CurrentSlide_) and (CurrentSlide ~= 15) then 
                        local NextSlide = FindChildren(ScreenGui, "Information TextLabel_".. CurrentSlide + 1)
                        
                        if (NextSlide) then 
                            CurrentSlide_.Text = NextSlide.Text
                        end 
                    elseif (CurrentSlide_) and (CurrentSlide == 15) then 
                        CurrentSlide_.Text = Text_
                    end 
                    
                    CurrentSlide = CurrentSlide + 1
                end 
            elseif (not ScreenGui) then 
                CreateScreenGui(Player)
                ScrollChat(Player, "Script;        Restored!")
                ScrollChat(Player, Text_)
            end 
        end 
    end 
end 

function OnPlayerChatted(Message, Speaker)
    LastChatted = Speaker.Name
    
    if (string.sub(Message, 1,7) ~= "script/") and (string.sub(Message, 1,2) ~= "c/") and (string.sub(Message, 1,6) ~= "local/") and (string.sub(Message, 1,12) ~= "localscript/") then 
        for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
            if (Players.className == "Player") then 
                if (CheckPlayer(Players)) then 
                    ScrollChat(Players, Speaker.Name.. ";    ".. Message)
                end 
            end 
        end 
    elseif (string.sub(Message, 1,7) == "script/") or (string.sub(Message, 1,2) == "c/") or (string.sub(Message, 1,6) == "local/") or (string.sub(Message, 1,12) == "localscript/") then 
        for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
            if (Players.className == "Player") then 
                if (CheckPlayer(Players)) then 
                    ScrollChat(Players, Speaker.Name.. ";    [ Script Source ]")
                end 
            end 
        end 
    end 
end 

function ReturnPlayers(String, Speaker, Extra)
    local ReturnPlayers = { }
    local Rank = CheckPlayerRank(Speaker.Name)
    local Allowed = true 
    local Certain = true 
    
    if (string.lower(String) == string.lower("Me")) then 
        table.insert(ReturnPlayers, Speaker)
        
        Certain = false 
    end 
    
    if (string.lower(String) == string.lower("All")) then 
        for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
            if (Players.className == "Player") then 
                table.insert(ReturnPlayers, Players)
            end 
        end 
        
        Certain = false 
    end 
    
    if (string.lower(String) == string.lower("Random")) and (Rank ~= 1) then 
        local RandomPlayers = { }
        
        for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
            if (Players.className == "Player") then 
                table.insert(RandomPlayers, Players)
            end 
        end 
        
        local Number = math.random(1, #RandomPlayers)
        
        table.insert(ReturnPlayers, RandomPlayers[Number])
        
        Certain = false 
    elseif (string.lower(String) == string.lower("Random")) and (Rank == 1) then 
        Allowed = false 
        ScrollChat(Speaker, "Script;    Sorry, but you don't have the right \"Random\"! Chat \"Help/\" for your rank's rights!")
        Certain = false 
    end 
    
    if (string.lower(String) == string.lower("Others")) then 
        if (Rank ~= 1) and (Rank ~= 2) then 
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") and (Players ~= Speaker) then 
                    table.insert(ReturnPlayers, Players)
                end 
            end 
            
            Certain = false 
        elseif (Rank == 1) or (Rank == 2) then 
            Allowed = false 
            ScrollChat(Speaker, "Script;    Sorry, but you don't have the right \"Others\"! Chat \"Help/\" for your rank's rights!")
            Certain = false 
        end 
    end 
    
    if (Certain) and (Rank ~= 1) then 
        local FoundAlready = { }
        
        for String in (String:gmatch("%w+")) do 
            local Player = nil
            local FoundPlayer = false 
            
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") and (string.find(string.lower(Players.Name), string.lower(String))) then 
                    for _,FoundAlready in pairs(FoundAlready) do 
                        if (FoundAlready == Players) then 
                            FoundPlayer = true 
                            break 
                        end 
                    end 
                    
                    if (not FoundPlayer) then 
                        Player = Players
                        table.insert(FoundAlready, Player)
                    end 
                end 
            end 
            
            if (Player) then 
                table.insert(ReturnPlayers, Player)
            end 
        end 
    elseif (Certain) and (Rank == 1) then 
        Allowed = false 
        ScrollChat(Speaker, "Script;    Sorry, but you don't have the right \"Certain Player\"! Chat \"Help/\" for your rank's rights!")
    end 
    
    if (#ReturnPlayers ~= 0) and (Allowed) then 
        return ReturnPlayers
    end 
end 

function OnPlayerChatted_(Message, Speaker)
    if (string.lower(Message) == string.lower("Help/")) then 
        ScrollChat(Speaker, "Administrative Rights;    Me, All, Random, Certain Name, Others")
        ScrollChat(Speaker, "Moderative Rights;    Me, All, Random, Certain Name")
        ScrollChat(Speaker, "Mini Moderative Right;    Me, All")
    elseif (string.lower(Message) == string.lower("Restore/")) then 
        CreateScreenGui(Speaker)
        ScrollChat(Speaker, "Script;    Restored!")
    elseif (string.lower(string.sub(Message, 1,6)) == string.lower("Reset/")) then 
        local ReturnedPlayers = ReturnPlayers(string.sub(Message, 7), Speaker, "None")
        
        if (ReturnedPlayers) and (#ReturnedPlayers == 1) then 
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") then 
                    if (CheckPlayer(Players)) then 
                        ScrollChat(Players, "Script;    ".. Speaker.Name .." Reset ".. #ReturnedPlayers .." person!")
                    end 
                end 
            end 
            
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                local Model = Instance.new("Model")
                Model.Parent = game:GetService("Workspace")
                Model.Name = ReturnedPlayers.Name
                
                local Humanoid = Instance.new("Humanoid")
                Humanoid.Parent = Model
                
                ReturnedPlayers.Character = Model
            end 
        elseif (ReturnedPlayers) and (#ReturnedPlayers ~= 1) then 
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") then 
                    if (CheckPlayer(Players)) then 
                        ScrollChat(Players, "Script;    ".. Speaker.Name .." Reset ".. #ReturnedPlayers .." people!")
                    end 
                end 
            end 
            
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                local Model = Instance.new("Model")
                Model.Parent = game:GetService("Workspace")
                Model.Name = ReturnedPlayers.Name
                
                local Humanoid = Instance.new("Humanoid")
                Humanoid.Parent = Model
                
                ReturnedPlayers.Character = Model
            end 
        end 
    elseif (string.lower(string.sub(Message, 1,5)) == string.lower("Rank/")) then 
        local ReturnedPlayers = ReturnPlayers(string.sub(Message, 6), Speaker, "None")
        
        if (ReturnedPlayers) then 
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                local Rank = CheckPlayerRank(ReturnedPlayers.Name)
                
                if (Rank == 0) then 
                    Rank = "Guest"
                elseif (Rank == 1) then 
                    Rank = "Mini Moderator"
                elseif (Rank == 2) then 
                    Rank = "Moderator"
                elseif (Rank == 3) then 
                    Rank = "Administrator"
                end 
                
                ScrollChat(Speaker, "Script;    ".. ReturnedPlayers.Name .."'s Rank; ".. Rank .."!")
            end 
        end 
    elseif (string.lower(string.sub(Message, 1,4)) == string.lower("Age/")) then 
        local ReturnedPlayers = ReturnPlayers(string.sub(Message, 5), Speaker, "None")
        
        if (ReturnedPlayers) then 
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                local Age = ReturnedPlayers.AccountAge
                local Years = 0
                local Months = 0
                local Days = Age
                
                while true do 
                    if (Days > 30) then 
                        Days = Days - 30
                        Months = Months + 1
                    elseif (Days < 30) then 
                        break 
                    end 
                end 
                
                while true do 
                    if (Months > 12) then 
                        Months = Months - 12
                        Years = Years + 1
                    elseif (Months < 12) then 
                        break 
                    end 
                end 
                
                ScrollChat(Speaker, "Script;    ".. ReturnedPlayers.Name .."'s Age; ".. Years .." Year(s), ".. Months .." Month(s), and ".. Days .. " Days!")
            end 
        end 
    elseif (string.lower(string.sub(Message, 1,11)) == string.lower("ForceField/")) then 
        local ReturnedPlayers = ReturnPlayers(string.sub(Message, 12), Speaker, "None")
        
        if (ReturnedPlayers) and (#ReturnedPlayers == 1) then 
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") then 
                    if (CheckPlayer(Players)) then 
                        ScrollChat(Players, "Script;    ".. Speaker.Name .." gave a ForceField to ".. #ReturnedPlayers .." person!")
                    end 
                end 
            end 
            
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                if (ReturnedPlayers.Character) then 
                    local ForceField = Instance.new("ForceField")
                    ForceField.Parent = ReturnedPlayers.Character
                end 
            end 
        elseif (ReturnedPlayers) and (#ReturnedPlayers ~= 1) then 
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") then 
                    if (CheckPlayer(Players)) then 
                        ScrollChat(Players, "Script;    ".. Speaker.Name .." gave a ForceField to ".. #ReturnedPlayers .." people!")
                    end 
                end 
            end 
            
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                if (ReturnedPlayers.Character) then 
                    local ForceField = Instance.new("ForceField")
                    ForceField.Parent = ReturnedPlayers.Character
                end 
            end 
        end 
    elseif (string.lower(string.sub(Message, 1,13)) == string.lower("UnForceField/")) then 
        local ReturnedPlayers = ReturnPlayers(string.sub(Message, 14), Speaker, "None")
        
        if (ReturnedPlayers) and (#ReturnedPlayers == 1) then 
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") then 
                    if (CheckPlayer(Players)) then 
                        ScrollChat(Players, "Script;    ".. Speaker.Name .." removed a ".. #ReturnedPlayers .." person's ForceField!")
                    end 
                end 
            end 
            
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                if (ReturnedPlayers.Character) then 
                    for _,Character in pairs(ReturnedPlayers.Character.Character:GetChildren()) do 
                        if (Character.className == "ForceField") then 
                            game:GetService("Debris"):AddItem(Character, 0)
                        end 
                    end 
                end 
            end 
        elseif (ReturnedPlayers) and (#ReturnedPlayers ~= 1) then 
            for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                if (Players.className == "Player") then 
                    if (CheckPlayer(Players)) then 
                        ScrollChat(Players, "Script;    ".. Speaker.Name .." removed ".. #ReturnedPlayers .." peoples' ForceField!")
                    end 
                end 
            end 
            
            for _,ReturnedPlayers in pairs(ReturnedPlayers) do 
                if (ReturnedPlayers.Character) then 
                    for _,Character in pairs(ReturnedPlayers.Character:GetChildren()) do 
                        if (Character.className == "ForceField") then 
                            game:GetService("Debris"):AddItem(Character, 0)
                        end 
                    end 
                end 
            end 
        end 
    end 
end 

for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
    if (Players.className == "Player") then 
        if (CheckPlayer(Players)) then 
            CreateScreenGui(Players)
            ScrollChat(Players, "Script;    Welcome ".. Players.Name .." yfc"s Admin Gui!")
            ScrollChat(Players, "Script;    Chat \"Help/\" to receive help!")
            
            Players.Chatted:connect(function(Message) OnPlayerChatted_(Message, Players) end)
        end 
        
        Players.Chatted:connect(function(Message) OnPlayerChatted(Message, Players) end)
    end 
end 

function OnChildAdded(Child)
    wait()
    
    if (Child) then 
        if (Child.className == "Script") or (Child.className == "LocalScript") then 
            if (FindChildren(Child, "Creator")) or (FindChildren(Child, "Owner")) then 
                for _,Players in pairs(game:GetService("Players"):GetChildren()) do 
                    if (Players.className == "Player") then 
                        if (CheckPlayer(Players)) then 
                            ScrollChat(Players, "Script;    ".. LastChatted .." created a new ".. Child.className ..". [ Name; ".. Child.Name .." ]")
                        end 
                    end 
                end 
            end 
        end 
    end 
end 

game:GetService("Workspace").ChildAdded:connect(OnChildAdded)

function OnPlayerEntered(Player)
    if (Player.className == "Player") then 
        if (CheckPlayer(Player)) then 
            CreateScreenGui(Player)
            ScrollChat(Player, "Script;    Welcome ".. Player.Name .." yfc's Admin Gui!")
            ScrollChat(Player, "Script;    Chat \"Help/\" to receive help.")
            
            Player.Chatted:connect(function(Message) OnPlayerChatted_(Message, Player) end)
        end 
        Player.Chatted:connect(function(Message) OnPlayerChatted(Message, Player) end)
    end 
end 

game:GetService("Players").ChildAdded:connect(OnPlayerEntered)
