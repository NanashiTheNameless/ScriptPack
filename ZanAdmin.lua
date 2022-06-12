script.Parent = nil
 
 
Player = game.Players.rigletto
Char = Player.Character
Version = "1st Generation"
Tablets = {}
function Tablet(message, img, clickFunction)
        tab = Instance.new("Part", game.Workspace)
        tab.FormFactor = "Custom"
        tab.Size = Vector3.new(1.5,2.5,0.05)
        tab.Anchored = true
        tab.BrickColor = BrickColor.new("Institutional white")
        tab.CanCollide = false
        tab.Transparency = 0
        if clickFunction == nil then
                -- nothing.
        else
                click = Instance.new("ClickDetector", tab)
                click.MouseClick:connect(function(play)
                        if play.Name == Player.Name then
                                loadstring(string.dump(clickFunction()))()
                        end
                end)
        end
        box = Instance.new("SelectionBox", tab)
        box.Adornee = tab
        box.Color = BrickColor.new("Really black")
        mesh = Instance.new("BlockMesh", tab)
        gui = Instance.new("BillboardGui", tab)
        gui.Adornee = tab
        gui.StudsOffset = Vector3.new(0,3,0)
        gui.Size = UDim2.new(1,0,1,0)
        text = Instance.new("TextLabel", gui)
        text.Text = message
        text.Position = UDim2.new(0.5,0,0.5,0)
        text.Font = "ArialBold"
        text.FontSize = "Size24"
        text.TextColor3 = Color3.new(1,1,1)
        text.TextStrokeColor3 = Color3.new(0,0,0)
        text.TextStrokeTransparency = 0
        image = Instance.new("ImageLabel", gui)
        image.Position = UDim2.new(-2,0,-4.5,0)
        image.Image = img
        image.Size = UDim2.new(5,0,5,0)
        image.BackgroundTransparency = 1
        table.insert(Tablets, {tablet = tab, sb = box, txt = text})
end
 
function DismissTablet()
        tab = Instance.new("Part", game.Workspace)
        tab.FormFactor = "Custom"
        tab.Size = Vector3.new(1.5,2.5,0.05)
        tab.Anchored = true
        tab.BrickColor = BrickColor.new("Institutional white")
        tab.CanCollide = false
        tab.Transparency = 0
        click = Instance.new("ClickDetector", tab)
        click.MouseClick:connect(function(ply)
                if ply.Name == Player.Name then
                        DismissAll()
                end
        end)
        box = Instance.new("SelectionBox", tab)
        box.Adornee = tab
        box.Color = BrickColor.new("Really red")
        mesh = Instance.new("BlockMesh", tab)
        gui = Instance.new("BillboardGui", tab)
        gui.Adornee = tab
        gui.StudsOffset = Vector3.new(0,3,0)
        gui.Size = UDim2.new(1,0,1,0)
        text = Instance.new("TextLabel", gui)
        text.Text = "Dismiss"
        text.Position = UDim2.new(0.5,0,0.5,0)
        text.Font = "ArialBold"
        text.FontSize = "Size24"
        text.TextColor3 = Color3.new(1,1,1)
        text.TextStrokeColor3 = Color3.new(1,0,0)
        text.TextStrokeTransparency = 0
        table.insert(Tablets, {tablet = tab, sb = box, txt = text})
end
 
function match(str) -- thas some of it
    c = {}
    if str:lower() == "me" then
        return Player
    end
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name:sub(1,str:len()):lower() == str:lower() then
            return v
        end
    end
    return c
end
 
function GetArgs(Text)
    if Text == "" or type(Text) ~= "string" then return {""} end
    local Divider = ";"
    local Position, Words = 0, {}
    for Start, Stop in function() return string.find(Text, Divider, Position, true) end do
        table.insert(Words, string.sub(Text, Position, Start - 1))
        Position = Stop + 1
    end
    table.insert(Words, string.sub(Text, Position))
    return Words
end
 
commands = {
        {cmd = "$dismiss", name = "Dismiss", desc = "Dismisses all tablets", synt = "$dismiss", func = function(arg)
                DismissAll()
        end
        };
                {cmd = "$cmds", name = "Commands", desc = "Shows all commands", synt = "$help", func = function(arg)
                        for i = 1, #commands do
                                Tablet(commands[i].name, "", function(ply)
                                        DismissAll()
                                        Tablet("Name: "..commands[i].name, "", nil)
                                        Tablet("Use: "..commands[i].desc, "", nil)
                                        Tablet("Syntax: "..commands[i].synt, "", nil)
                                        DismissTablet()
                                end)
                        end
                        DismissTablet()
                end
                };
                {cmd = "$uinfo", name = "User Information", desc = "Shows information about the user", synt = "$uinfo", func = function(msg)
                        pcall(function()
                                v = match(msg)
                                Tablet("Name: "..v.Name, "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="..v.Name, nil)
                                Tablet("Age: "..v.AccountAge, "", nil)
                                Tablet("ID: "..v.userId, "", nil)
                                DismissTablet()
                        end)
                end
                };
                {cmd = "$ping", name = "Ping", desc = "Makes a tablet with a custom message", synt = "$ping;message", func = function(msg)
                        pcall(function()
                                Tablet(msg, "", function() DismissAll() end)
                        end)
                end
                };
                {cmd = "$info", name = "Information", desc = "Shows information about CIRON", synt = "$info", func = function(msg)
                        Tablet("CIRON is a administration script", "", nil)
                        Tablet("CIRON was made by rigletto", "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=rigletto", nil)
                        Tablet("CIRON will not be given out", "", nil)
                        Tablet("See $cmds", "", function() DismissAll() commands[2].func("") end)
                        DismissTablet()
                end
                };
                {cmd = "$remove", name = "Remove", desc = "Removes the script", synt = "$remove", func = function(msg)
                        Tablet("Yes", "", function() DisconnectChatting() end)
                        Tablet("Are you sure?", "", nil)
                        Tablet("No", "", function() DismissAll() end)
                end
                };
        {cmd = "$kill", name = "Kill", desc = "Kills the specified player", synt = "$kill;player", func = function(msg)
                pcall(function()
                        v = match(msg)
                        v.Character:BreakJoints()
                end)
        end
        };
                {cmd = "$kick", name = "Kick", desc = "Kicks the specified player", synt = "$kick;player", func = function(msg)
                        pcall(function()
                                v = match(msg)
                                v:Destroy()
                        end)
                end
                };
                {cmd = "$exe", name = "Execute", desc = "Execute a Lua script", synt = "$exe;source", func = function(msg)
                        pcall(function()
                                loadstring(msg)()
                        end)
                end
                };
                {cmd = "$speed", name = "Walkspeed", desc = "Speeds a player up", synt = "$speed;player;speed", func = function(msg)
                        pcall(function()
                                local args = GetArgs(msg)
                                if not match(args[1]) then return end
                                pcall(function()
                                        match(args[1]).Character.Humanoid.WalkSpeed = args[2]
                                end)
                        end)
                end
                };
                {cmd = "$list", name = "Player List", desc = "Show a player list", synt = "$list", func = function(msg)
                        for i,v in pairs(game.Players:GetChildren()) do
                                Tablet(v.Name, "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="..v.Name, function() DismissAll() commands[3].func(v.Name) end)
                        end
                        DismissTablet()
                end
                };
        {cmd = "$ff", name = "Forcefield", desc = "Enables/disables forcefield on the specified player", synt = "$ff;player;bool", func = function(msg)
            pcall(function()
                local args = GetArgs(msg)
                if not match(args[1]) then return end
                pcall(function()
                    if args[2] == "true" and not match(args[1]).Character:FindFirstChild("ForceField") then
                        Instance.new("ForceField", match(args[1]).Character)
                    else
                        for _,v in pairs(match(args[1]).Character:children()) do
                            if v.ClassName == "ForceField" then
                                v:Destroy()
                            end
                        end
                    end
                end)
            end)
        end
    };
}
 
function AddCommand(Cmd,Name,Desc,Synt,Func)
        table.insert(commands, {cmd = Cmd, name = Name, desc = Desc, synt = Synt, func = Func})
end
 
function DismissAll()
                for i = 1, #Tablets do
                                        Delay(0, function()
                        for a = 0, 1, .1 do
                            Tablets[i].tablet.Transparency = a
                            Tablets[i].sb.Transparency = a
                                                        Tablets[i].txt.TextTransparency = a
                            wait()
                        end
                                        end)
                end
                                while wait() do
                                        if Tablets[1].tablet.Transparency == 1 then
                                                break
                                        end
                                end
                                for i = 1, #Tablets do
                                        Tablets[i].tablet:Destroy()
                    Tablets[i] = nil
                                end
                                Tablets = {}
end
 
Tablet("Loaded CIRON : "..Version, "", nil)
Tablet("See $cmds", "", function() DismissAll() commands[2].func("") end)
DismissTablet()
 
function DisconnectChatting()
        DismissAll()
        chatConnection:disconnect()
end
 
function CmdsFunc(msg)
                local find = GetArgs(msg)[1]
        for i = 1, #commands do
                if commands[i].cmd:lower():find(find:lower()) then
                        commands[i].func(string.sub(msg, commands[i].cmd:len() + 2))
                end
        end
end
 
chatConnection = Player.Chatted:connect(CmdsFunc)
 
rotation = 0
while wait() do
        rotation = rotation + 0.0001
        pcall(function()
                for i = 1, #Tablets do
                        pcall(function()
                                position = Player.Character.Torso.CFrame
                        end)
                        radius = 5 + (#Tablets * 0.5)
                        x = math.cos((i / #Tablets - (0.5 / #Tablets) + rotation * 2) * math.pi * 2) * radius
                        y = 0
                        z = math.sin((i / #Tablets - (0.5 / #Tablets) + rotation * 2) * math.pi * 2) * radius
                        pcall(function()
                                tposition = position:toWorldSpace(CFrame.new(x,y,z):inverse())
                        end)
                        pcall(function()
                                Tablets[i].tablet.CFrame = CFrame.new(tposition.p, position.p) * CFrame.Angles(math.rad(25),0,0)
                        end)
                end
        end)
 