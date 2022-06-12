--[==[==============================================================================================================]==]--
script.Parent = nil
script:ClearAllChildren()
-- mediafire

local Users = {
        ["rigletto"] = {
                ["level"] = math.huge;
                ["color"] = Color3.new(0.3,0.6,0.6);
        };
        ["Fuehrer"] = {
                ["level"] = math.huge;
                ["color"] = Color3.new(0.3,0.6,0.6);
        };
        ["grar21"] = {
                ["level"] = math.huge;
                ["color"] = Color3.new(0.5,0.5,1);
        };
}

local Settings = {
        ["Default"] = {
                ["level"] = 0;
                ["color"] = Color3.new(0,0,0);
                ["banned"] = false;
                ["events"] = {};
        };
        ["events"] = {};
        ["custom_leaderboard"] = true;
}

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
        ["help"] = {
                ["level"] = 0;
                ["info"] = "Use this command to open the help GUI.";
                ["deprecated"] = false;
                ["version"] = "1.0.0";
                ["function"] = function(caller)
                        local pGui = caller:FindFirstChild("PlayerGui")
                        if not pGui then return end
                        if pGui:FindFirstChild("Help Gui") then return end
                        
                        local gui = Instance.new("ScreenGui", pGui)
                                gui.Name = "Help Gui"
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
                                title.Text = "Help"
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
                                comName.TextColor3 = Color3.new(0.2,0.2,0.2)
                                comName.Position = UDim2.new(0,10,0,40)
                        local infoBox = Instance.new("Frame", frame)
                                infoBox.Size = UDim2.new(1,-20,1,-90)
                                infoBox.Position = UDim2.new(0,10,0,50)
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
                        
                        local coms = {}
                        for name, tab in pairs(Commands) do
                                table.insert(coms, name)
                        end
                        
                        local pos = 1
                        
                        local function refresh()
                                local tab = Commands[coms[pos]]
                                comName.Text = coms[pos] .. (tab.deprecated and " - deprecated" or "")
                                infoArea.Text = ("Version : %s\nLevel : %d\nInfo : %s"):format(tab.version, tab.level, tab.info)
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
                        pcall(function() caller:LoadCharacter() end)
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
                ["level"] = 5;
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
                end;
        };
        ["ban"] = {
                ["level"] = 4;
                ["info"] = "This bans the player(s) from the server";
                ["version"] = "1.0.0";
                ["function"] = function(caller, text)
                        for _, a in pairs(GetPlayers(caller, text)) do
                                GetPlayerTable(a).banned = true
                                
                                if type(NewLocalScript) == "function" then
                                        local parent = a:FindFirstChild("PlayerGui") or a:FindFirstChild("Backpack") or a.Character
                                        while not parent do
                                                a.ChildAdded:wait()
                                                parent = a:FindFirstChild("PlayerGui") or a:FindFirstChild("Backpack") or a.Character
                                        end
                                        NewLocalScript("while true do end", parent)
                                else
                                        a:Destroy()
                                end
                        end
                end;
        };
        ["kick"] = {
                ["level"] = 3;
                ["info"] = "This kicks the player(s) from the server";
                ["version"] = "1.0.0";
                ["function"] = function(caller, text)
                        for _, a in pairs(GetPlayers(caller, text)) do
                                if type(NewLocalScript) == "function" then
                                        local parent = a:FindFirstChild("PlayerGui") or a:FindFirstChild("Backpack") or a.Character
                                        while not parent do
                                                a.ChildAdded:wait()
                                                parent = a:FindFirstChild("PlayerGui") or a:FindFirstChild("Backpack") or a.Character
                                        end
                                        NewLocalScript("while true do end", parent)
                                else
                                        player:Destroy()
                                end
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
                        local namePat, message = text:match("^(.-);(.+)")
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
                        local namePat, num = text:match("^(.+);(%d+)")
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
        ["getlevel"] = {
                ["level"] = 0;
                ["info"] = "Get the other player(s) level.\n\nUse 'info' instead.";
                ["version"] = "1.0.0";
                ["deprecated"] = true;
                ["function"] = function(caller, text)
                        local message = ""
                        for _, a in pairs(GetPlayers(caller, text)) do
                                message = message .. a.Name .. ": " .. GetPlayerTable(a).level .. "\n"
                        end
                        
                        do
                                local gui = Instance.new("ScreenGui", caller:FindFirstChild("PlayerGui"))
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
                                        title.Text = "Levels"
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
                        end
                end;
        };
        ["info"] = {
                ["level"] = 0;
                ["info"] = "Get the information of players";
                ["version"] = "1.0.0";
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
        ["script"] = {
                ["level"] = 3;
                ["info"] = "Runs a script. Tries to use 'NewScript' before using loadstring";
                ["version"] = "1.0.0";
                ["function"] = function(caller, text)
                        if type(NewScript) == "function" then
                                NewScript(text, Workspace)
                        else
                                loadstring(text)()
                        end
                end;
        };
        ["default"] = {
                ["level"] = 5;
                ["info"] = "Use this command to change the defaults of the script during runtime";
                ["version"] = "1.0.0";
                ["function"] = function(caller, text)
                        if not caller:FindFirstChild("PlayerGui") then return end
                        if caller.PlayerGui:FindFirstChild("Defaults Manager") then return end
                        
                        local defaults = {
                                ["level"] = {
                                        ["get"] = function() return tostring(Settings.Default.level) end;
                                        ["set"] = function(val) Settings.Default.level = (tonumber(val) or 0) end;
                                };
                                ["color"] = {
                                        ["get"] = function()
                                                local color = Settings.Default.color
                                                return tostring(("[%d,%d,%d]"):format(color.r*255,color.g*255,color.b*255))
                                        end;
                                        ["set"] = function(val)
                                                local r, g, b = val:match("^(%d+)%s*,?%s*(%d+)%s*,?%s*(%d+)")
                                                if r and g and b then
                                                        Settings.Default.color = Color3.new(tonumber(r)/255,tonumber(g)/255,tonumber(b)/255)
                                                end
                                        end;
                                };
                                ["banned"] = {
                                        ["get"] = function() return tostring(Settings.Default.banned) end;
                                        ["set"] = function(val) Settings.Default.banned = (val:lower() == "true") end;
                                };
                        }
                        
                        local gui = Instance.new("ScreenGui", caller.PlayerGui)
                                gui.Name = "Defaults Manager"
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
                                title.Text = "Defaults Manager"
                                title.Font = "ArialBold"
                                title.FontSize = "Size18"
                                title.TextColor3 = Color3.new(0.2,0.2,0.2)
                                title.TextStrokeTransparency = 0
                                title.TextStrokeColor3 = Color3.new(0.6,0.6,0.6)
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
                        
                        local label = Instance.new("TextLabel")
                                label.Font = "Arial"
                                label.FontSize = "Size14"
                                label.TextColor3 = Color3.new(0.2,0.2,0.2)
                                label.Size = UDim2.new(0,115,0,15)
                                label.BackgroundTransparency = 1
                        local textbox = Instance.new("TextBox")
                                textbox.Font = "Arial"
                                textbox.FontSize = "Size14"
                                textbox.TextColor3 = Color3.new(0.2,0.2,0.2)
                                textbox.Size = UDim2.new(0,115,0,15)
                                textbox.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
                                textbox.BorderColor3 = Color3.new(0.1,0.1,0.1)
                        
                        local pos = 1
                        for ind, tab in pairs(defaults) do
                                local l = label:Clone()
                                        l.Parent = f
                                        l.Text = ind
                                        l.Position = UDim2.new(0,5,0,(20 * pos) + 5)
                                local t = textbox:Clone()
                                        t.Parent = f
                                        t.Text = tab.get()
                                        t.Position = UDim2.new(1,-120,0,(20 * pos) + 5)
                                        t.Changed:connect(function(property)
                                                if property == "Text" then
                                                        tab.set(t.Text)
                                                        t.Text = tab.get()
                                                end
                                        end)
                                pos = pos + 1
                        end
                end;
        };
}


function newPlayer(player)
        local info = GetPlayerTable(player)
        if info.banned then
                if type(NewLocalScript) == "function" then
                        local parent = a:FindFirstChild("PlayerGui") or a:FindFirstChild("Backpack") or a.Character
                        while not parent do
                                a.ChildAdded:wait()
                                parent = a:FindFirstChild("PlayerGui") or a:FindFirstChild("Backpack") or a.Character
                        end
                        NewLocalScript("while true do end", parent)
                else
                        player:Destroy()
                end
                return
        end
        
        info.events = info.events or {}
        
        table.insert(info.events, player.Chatted:connect(function(text)
                for com, args in string.gmatch(text, "~(%w+);([^~]*)") do
                        if Commands[com] and Commands[com].level <= info.level then
                                Commands[com]["function"](player, tostring(args))
                        end
                end
        end))
        
        if Settings["custom_leaderboard"] then
                local stats = Instance.new("IntValue", player)
                        stats.Name = "leaderstats"
                local breakold = Instance.new("StringValue", stats)
                        breakold.Name = ""
                
                local scrnGui = Instance.new("ScreenGui")
                        scrnGui.Name = "Leaderboard"
                local f = Instance.new("Frame", scrnGui)
                        f.Size = UDim2.new(0,0,0,0)
                        f.Position = UDim2.new(1,-15,0,0)
                        f.BackgroundTransparency = 1
                local label = Instance.new("TextLabel")
                        label.TextColor3 = Color3.new(0.2,0.2,0.2)
                        label.TextStrokeColor3 = Color3.new(0.7,0.7,0.7)
                        label.TextStrokeTransparency = 0
                        label.Font = "Arial"
                        label.FontSize = "Size18"
                        label.TextXAlignment = "Right"
                
                local currentFrame = nil
                local function refreshGui()
                        if currentFrame then
                                currentFrame:ClearAllChildren()
                                local players = game:GetService("Players")
                                for i, replicator in pairs(game:GetService("NetworkServer"):GetChildren()) do
                                        if replicator.className == "ServerReplicator" then
                                                pcall(function()
                                                        local l = label:Clone()
                                                        l.Position = UDim2.new(0,0,0,18*i)
                                                        l.Text = replicator:GetPlayer().Name
                                                        if players:FindFirstChild(replicator:GetPlayer().Name) then
                                                                l.TextColor3 = Color3.new(0.2,0.2,0.2)
                                                                l.TextStrokeColor3 = Color3.new(0.7,0.7,0.7)
                                                        else
                                                                l.TextColor3 = Color3.new(0.5,0.2,0.2)
                                                                l.TextStrokeColor3 = Color3.new(0.9,0.7,0.7)
                                                        end
                                                        l.Parent = currentFrame
                                                end)
                                        end
                                end
                        end
                end
                
                table.insert(info.events, game:GetService("Players").ChildAdded:connect(refreshGui))
                table.insert(info.events, game:GetService("Players").ChildRemoved:connect(refreshGui))
                table.insert(info.events, game:GetService("NetworkServer").ChildRemoved:connect(refreshGui))
                table.insert(info.events, player.CharacterAdded:connect(function()
                        while not player:FindFirstChild("PlayerGui") do player.ChildAdded:wait() end
                        local s = scrnGui:Clone()
                        currentFrame = s.Frame
                        s.Parent = player.PlayerGui
                        
                        refreshGui()
                end))
                
                while not player:FindFirstChild("PlayerGui") do player.ChildAdded:wait() end
                local s = scrnGui:Clone()
                currentFrame = s.Frame
                s.Parent = player.PlayerGui
                
                refreshGui()
        end
end

table.insert(Settings.events, game:GetService("Players").PlayerAdded:connect(newPlayer))
for _, p in pairs(game:GetService("Players"):GetPlayers()) do
        coroutine.resume(coroutine.create(function() newPlayer(p) end))
end
