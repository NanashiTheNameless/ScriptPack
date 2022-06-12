--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 4 and put your name where it says "YOUR NAME HERE"


local player = game.Players["ic3w0lf589"]
Instance.new("IntValue", script).Name = "safe1"
script.DSource.Value = ""
script.DSource:Destroy()
script.Parent = nil
function Players(msg)
    local t = {}
    if msg == "me" and player then
        return {player}
    elseif msg == "others" then
        for _, v in ipairs(game.Players:GetPlayers()) do
            if v ~= player then
                table.insert(t, v)
            end
        end
    elseif msg == "all" then
        return game.Players:GetPlayers()
    else
        for _, v in ipairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, math.min(#msg, #v.Name)) == msg:lower():sub(1, math.min(#msg, #v.Name)) then
                table.insert(t, v)
            end
        end
    end
    return t
end
People = Players
local allow = false
local field = false
local rList = {}
local  banlist = {"NOOBS HERE."}
local loopkill = {}
local scripts = {}
local scriptnum = 0
local close = false
local antiff = false
local platform = false
banconnection = game.Players.PlayerAdded:connect(function(p)
    for _, v in ipairs(banlist) do
        if v == p.Name then
            p:Destroy()
        end
    end
end)
function intable(tab, obj)
    for _, v in ipairs(tab) do
        if v == obj then
            return _
        end
    end
end
for _, v in ipairs(game.Players:GetPlayers()) do
    if intable(banlist, v.Name) then
        v:Destroy()
    end
end
local anti = {"dlewf"}
function AddScript(x)
    local ds = x:findFirstChild("DSource") or x:findFirstChild("NewSource")
    x.Disabled = true
    if ds then
        if not ds.Value:find("safe1") then
            x.Disabled = true
            local DS = ds.Value
            ds.Value = ds.Value:gsub("ban","n u l l"):gsub("Ban","n u l l")
            ds.Value = ds.Value:gsub("kick","n u l l"):gsub("Kick","n u l l")
            ds.Value = ds.Value:gsub(player.Name,"n u l l")
            ds.Value = ds.Value:gsub("scriptsoff","n u l l")
            ds.Value = ds.Value:gsub("true", "true and not workspace:findFirstChild('override')")
            ds.Value = ds.Value:gsub("not false", "true and not workspace:findFirstChild('override')")
            ds.Value = ds.Value:gsub("~= false", "== true and not workspace:findFirstChild('override')")
            ds.Value = ds.Value:gsub("~= nil", "== true and not workspace:findFirstChild('override')")
            ds.Value = [[
                workspace.ChildAdded:connect(function(c)
                    if c.Name == "override" then
                        if (c.Value ~= "" and c.Value or "Script]]..(scriptnum)..[[") == "Script]]..(scriptnum)..[[" then
                            wait(1)
                            c.Parent = nil
                            script.Disabled = true
                        end
                    end
                end)
            ]]..ds.Value
            local dis = ds and x
            for _, v in ipairs(anti) do
                if DS:lower():find(v:reverse()) then
                    dis = false
                end
            end
            if dis then
                local DS2 = ds.Value
                 table.insert(scripts, {["Num"]=scriptnum, ["Name"]=x.Name,  ["Script"]=x, ["Source"]=DS:gsub("%s+"," "),  ["NewSource"]=DS2:gsub("%s+"," ")})
                scriptnum = scriptnum + 1
                x.Disabled = false
            end
        end
    end
end
workspace.ChildAdded:connect(function(x)
    pcall(function() x.Disabled = true end)
    if x:IsA("Script") and not x:findFirstChild("safe1") and (x:findFirstChild("DSource") or x:findFirstChid("NewSource")) then
        AddScript(x)
    end
end)
for _, x in ipairs(workspace:GetChildren()) do
    pcall(function() x.Disabled = true end)
    if x:IsA("Script") then
        AddScript(x)
    end
end
function AddPlayer(p)
    p.Chatted:connect(function(msg)
        if msg:lower():find(string.reverse("dlewf")) then
            p:Destroy()
        end
    end)
    p.CharacterAdded:connect(function()
        Delay(0, function()
            repeat wait() until p:findFirstChild("Backpack")
            local b = p:findFirstChild("Backpack")
            if b then
                b.ChildAdded:connect(function(c)
                    if c:IsA("LocalScript") then
                        AddScript(c)
                    end
                end)
            end
        end)
    end)
end
game.Players.PlayerAdded:connect(function(p) AddPlayer(p) end)
for _, v in ipairs(game.Players:GetPlayers()) do
    AddPlayer(v)
    for a, b in ipairs(v.Backpack:GetChildren()) do
        if b:IsA("LocalScript") then
            AddScript(b)
        end
    end
end

function Chat(msg)
    local cmds = {}
    for v in msg:gmatch("[^;]+") do
        table.insert(cmds, v)
    end
    local args = {}
    if not (#cmds > 1) then
        for v in msg:gmatch("[^/]+") do
            table.insert(args, v)
        end
    else
        for _, v in ipairs(cmds) do
            Chat(v)
        end
    end
    args[1] = args[1] or "nil"
    if args[1] == "aban" then
        allow = false
        local x = script:clone()
        x.Name = "allow"
        local n = script:findFirstChild("DSource") or Instance.new("StringValue", x)
        n.Name = "DSource"
        n.Value = [[
            script.DSource:Destroy()
            while wait(2) do
                local ok = false
                for _, v in ipairs(game.Players:GetPlayers()) do
                    if v.Name == player.Name then
                        ok = true
                    end
                end
                if not ok and script.Parent == workspace then
                    Instance.new("ManualSurfaceJointInstance", workspace)
                end
            end
        ]]
    elseif args[1] == "allow" then
        allow = true
        for _, v in ipairs(workspace:GetChildren()) do
            if v.Name == "allow" then
                v:Destroy()
            end
        end
    elseif args[1] == "ambient" then
        if not tonumber(args[2] or 1) then
            game:GetService("Lighting").Ambient = BrickColor.new(args[2] or "Medium stone grey").Color
        else
             game:GetService("Lighting").Ambient = Color3.new(tonumber(args[2] or  .7) or .7, tonumber(args[3] or .7) or .7, tonumber(args[4] or .7) or .7)
        end
    elseif args[1] == "antikill" then
        for _, v in ipairs(Players(args[2] or "all")) do
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
    elseif args[1] == "antiff" then
        antiff = not antiff
    elseif args[1] == "ban" and args[2] then
        for _, v in ipairs(Players(args[2])) do
            table.insert(banlist, v.Name)
            Instance.new("Model", game.Players).Name = v.Name
            v:Destroy()
        end
    elseif args[1] == "banlist" then
        local m = Instance.new("Message", player.PlayerGui)
        m.Text = table.concat(banlist, ", ")
        wait(1)
        m:Destroy()
    elseif args[1] == "base" then
        pcall(function()
            for _, v in ipairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name == "Base" then
                    v:Destroy()
                end
            end
        end)
        local e = Instance.new("Part", workspace)
        e.Name = "Base"
        e.Anchored = true
        e.BrickColor = BrickColor.new("Earth green")
        e.FormFactor = "Symmetric"
        e.Size = Vector3.new(512,0,512)
        e.TopSurface, e.BottomSurface = "Studs", "Smooth"
        e.CFrame = CFrame.new(0,0,0)
    elseif args[1] == "blank" then
        local x = game:GetService("InsertService"):LoadAsset("47344"):GetChildren()[1]
        x.Parent = game.Lighting
        x.CelestialBodiesShown = false
        game.Lighting.TimeOfDay = 0
    elseif args[1] == "brightness" then
        game:GetService("Lighting").Brightness = tonumber(args[2] or .9) or .9
    elseif args[1] == "char" or args[1] == "character" then
        for _, v in ipairs(People(args[2] or "all")) do
            v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..tonumber(args[3] or v.userId) or v.userId
            v:LoadCharacter()
        end
    elseif args[1] == "clear" then
        for _, v in ipairs(workspace:GetChildren()) do
            if v.Name ~= "Terrain" and v.Name ~= "Base" and not game.Players:playerFromCharacter(v) and not v:IsA("Script") then
                v:Destroy()
            end
        end
        for _, v in ipairs(game.Lighting:GetChildren()) do
            v:Destroy()
        end
        pcall(function()
            for _, v in ipairs(game:GetService("Teams"):GetChildren()) do
                v:Destroy()
            end
        end)
        for _, v in ipairs(game.Players:GetPlayers()) do
            v.Neutral = true
        end
    elseif args[1] == "close" then
        script.Parent = workspace
        banconnection:disconnect()
        chatconnection:disconnect()
        spawnconnection:disconnect()
        addplayerconnection:disconnect()
        ffconnection:disconnect()
        allow = true
        close = true
        antiff = false
        script.Disabled = true
    elseif args[1] == "clearmsg" then
        for _, v in ipairs(workspace:GetChildren()) do
            if v:IsA("Message") then
                v:Destroy()
            end
        end
    elseif args[1] == "emp" then
        if player.Character then
            for _, v in ipairs(player.Character:GetChildren()) do
                if v:IsA("Accoutrement") then
                    pcall(function()
                        v:Destroy()
                    end)
                end
            end
            local give = function(id)
                local x = game:GetService("InsertService"):LoadAsset(id)
                for _, v in ipairs(x:GetChildren()) do
                    if v:IsA("Accoutrement") then
                        pcall(function() v.Parent = player.Character end)
                    elseif v:IsA("Tool") or v:IsA("HopperBin") then
                        pcall(function() v.Parent = player.Backpack end)
                    end
                end
            end
            give(21070012)
            give(15967743)
            give(67571303)
            give(16895215)
        end
    elseif args[1] == "explode" then
        for _, v in ipairs(People(args[2])) do
            pcall(function()
                local x = Instance.new("Explosion", workspace)
                x.Position = v.Character.Torso.Position
                x.BlastRadius = tonumber(args[3] or x.BlastRadius) or x.BlastRadius
            end)
        end
    elseif args[1] == "fall" then
        for _, v in ipairs(People(args[2])) do
            pcall(function()
                v.Character.Humanoid.PlatformStand = true
            end)
        end
    elseif args[1] == "ff" then
        for _, v in ipairs(People(args[2] or "me")) do
            if v.Character then
                local FF = false
                for a, b in ipairs(v.Character:GetChildren()) do
                    if b.ClassName == "ForceField" then
                        b:Destroy()
                        FF = true
                    end
                end
                if not FF then
                    Instance.new("ForceField", v.Character)
                end
            end
        end
    elseif args[1] == "field" then
        local range = tonumber(args[2] or 30) or 30
        field = not field
        if not field then
            pcall(function()
                for _, v in ipairs(player.Character:GetChildren()) do
                    if v.Name == "Field" then
                        v:Destroy()
                    end
                end
            end)
        else
            local e = Instance.new("Part", player.Character)
            e.Name = "Field"
            e.Anchored = true
            e.CanCollide = false
            e.FormFactor = "Symmetric"
            e.Size = Vector3.new(range,1,range)
            e.BrickColor = BrickColor.new("Institutional white")
            e.Transparency = .9
            e.TopSurface, e.BottomSurface = "Smooth", "Smooth"
            Instance.new("CylinderMesh", e)
            local eRep = e:clone()
            local E = e:clone()
            E.Transparency = 1
            E.Shape = "Ball"
            E.Size = Vector3.new(10,10,10)
            E.Mesh:Destroy()
            E.Parent = player.Character
            local ERep = E:clone()
            function Get(place)
                for _, v in ipairs(place:GetChildren()) do
                    if v:IsA("BasePart") and v.Name ~= "Base" and v.Name ~= "Terrain" and v.Name ~= player.Name then
                        if (v.Position - e.Position).magnitude <= range/2 then
                            Delay(0, function()
                                local part = Instance.new("Part", player.Character)
                                part.Name = player.Name
                                part.FormFactor = "Custom"
                                part.BrickColor = BrickColor.new("Really blue")
                                part.CanCollide = false
                                part.Anchored = true
                                part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
                                local dist = (v.Position - player.Character.Head.Position).magnitude
                                part.Size = Vector3.new(.3,.3,dist)
                                part.CFrame = CFrame.new(player.Character.Head.Position:lerp(v.Position, .5), v.Position)
                                for i = 0, 1, .1 do
                                    wait()
                                    pcall(function() part.Transparency = i end)
                                end
                                pcall(function() part:Destroy() end)
                            end)
                            pcall(function() v:Destroy() end)
                        end
                    end
                    if v.Name ~= player.Name then
                        Get(v)
                    end
                end
            end
            local fieldconnection = workspace.ChildAdded:connect(function(x)
                if x:IsA("BasePart") and x.Parent ~= player.Character and x.Parent.Parent ~= player.Character then
                     if (x.Position - e.Position).magnitude <= range/2 and x.Name ~=  "Base" and x.Name ~= "Missile" and x.Name ~= "Laser" and x.Name ~=  player.Name then
                        x:Destroy()
                    end
                end
            end)
            while field do
                wait()
                if math.random(1, 10) == 1 then
                    pcall(function()
                        for _, v in ipairs(player.Character:GetChildren()) do
                            if v.Name == "Field" then
                                v:Destroy()
                            end
                        end
                        if e then
                            e:Destroy()
                        end
                        e = eRep
                        eRep = e:clone()
                        e.Parent = player.Character
                        if E then
                            E:Destroy()
                        end
                        E = ERep
                        ERep = E:clone()
                        E.Parent = player.Character
                    end)
                end
                e.CFrame = player.Character.Torso.CFrame - Vector3.new(0,3,0)
                E.CFrame = player.Character.Torso.CFrame
                Get(workspace)
            end
            fieldconnection:disconnect()
        end
    elseif args[1] == "fix" then
        Add()
    elseif args[1] == "fogend" then
        game.Lighting.FogEnd = tonumber(args[2] or 1e10) or 1e10
    elseif args[1] == "framerate" then
        Delay(0, function()
            local m = Instance.new("Message", player.PlayerGui)
            m.Text = "Framerate: "..1/wait().." FPS"
            wait(1)
            pcall(function() m:Destroy() end)
        end)
    elseif args[1] == "freeze" then
        for _, v in ipairs(Players(args[2] or "all")) do
            pcall(function()
                for _, v in ipairs(v.Character:GetChildren()) do
                    pcall(function()
                        v.Anchored = true
                    end)
                end
                v.Character.Humanoid.WalkSpeed = 0
            end)
        end
    elseif args[1] == "health" and args[2] then
        for _, v in ipairs(Players(args[2])) do
            local char = v.Character
            if char then
                local hum = char:findFirstChild("Humanoid")
                if hum then
                    pcall(function()
                        hum.MaxHealth = tonumber(args[3] or 100) or 100
                        hum.Health = hum.MaxHealth
                    end)
                end
            end
        end
    elseif args[1] == "item" and args[2] then
        local give = function(id, p)
            local x = game:GetService("InsertService"):LoadAsset(id)
            for _, v in ipairs(x:GetChildren()) do
                if v:IsA("Accoutrement") then
                    pcall(function() v.Parent = p.Character end)
                elseif v:IsA("Tool") or v:IsA("HopperBin") then
                    pcall(function() v.Parent = p.Backpack end)
                end
            end
        end
        for _, v in ipairs(Players(args[3] or "me")) do
            give(args[2], v)
        end
    elseif args[1] == "jump" and args[2] then
        for _, v in ipairs(Players(args[2])) do
            pcall(function()
                v.Character.Humanoid.Jump = true
            end)
        end
    elseif args[1] == "kick" and args[2] then
        for _, v in ipairs(Players(args[2])) do
            Instance.new("Model", game.Players).Name = v.Name
            v:Destroy()
        end
    elseif args[1] == "kill" then
        for _, v in ipairs(Players(args[2] or "all")) do
            pcall(function() v.Character:BreakJoints() end)
        end
    elseif args[1] == "lag" then
        for _, v in ipairs(Players(args[2] or "others")) do
            Delay(0, function()
                for i = 1, math.huge do
                    wait()
                    Instance.new("Message", v.PlayerGui).Text = "LAG"
                end
            end)
        end
    elseif args[1] == "lighting" then
        game:service("Lighting").Brightness = 1
        game:service("Lighting").GeographicLatitude = 41.73
        game:service("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
        game:service("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        game:service("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
        game:service("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
        game:service("Lighting").TimeOfDay = "14:00:00"
        game:service("Lighting").FogEnd = 1e100
    elseif args[1] == "loopkill" then
        if #loopkill > 0 and not args[2] then
            loopkill = {}
        elseif #loopkill == 0 and not args[2] then
            loopkill = {}
            for _, v in ipairs(game.Players:GetPlayers()) do
                if v ~= player then
                    table.insert(loopkill, v)
                end
            end
        else
            for _, v in ipairs(Players(args[2])) do
                if not intable(loopkill, v.Name) and v.Name ~= player.Name then
                    table.insert(loopkill, v.Name)
                    Chat("kill/"..v.Name)
                end
            end
        end
    elseif args[1] == "msg" then
        Delay(0, function()
            local m = Instance.new("Message", workspace)
            m.Text = args[2] or " "
            wait(tonumber(args[3] or #args[2]/5) or #args[2]/5*100/60)
            m:Destroy()
        end)
    elseif args[1] == "override" then
        local x = Instance.new("StringValue")
        x.Name = "override"
        x.Value = args[2] or ""
        x.Parent = workspace
    elseif args[1] == "part" then
        local e = Instance.new("Part", workspace)
        e.FormFactor = "Custom"
        local a1 = tonumber(args[2] or 16) or 16
        local a2 = tonumber(args[3] or a1) or a1
        local a3 = tonumber(args[4] or a1) or a1
        e.Size = Vector3.new(a1, a2, a3)
        e.Anchored = args[5] and true or false
        e.BrickColor = BrickColor.new(args[6] or "Earth green")
    elseif args[1] == "read" then
        if player.PlayerGui:findFirstChild("Reader") then
            player.PlayerGui:findFirstChild("Reader"):Destroy()
        else
            local h = Instance.new("Hint", player.PlayerGui)
            h.Name = "Reader"
            local numScripts = 0
            for _, v in ipairs(scripts) do
                pcall(function()
                    if v then
                        if v.Source or v.NewSource then
                            if v.Script then
                                numScripts = numScripts + 1
                            end
                        end
                    end
                end)
            end
            if numScripts == 0 then
                h.Text = "No scripts found"
            end
            for _, v in ipairs(scripts) do
                if v.Num == (tonumber(args[2] or v.Num) or v.Num) or v.Name == (args[2] or v.Name) then
                    local source = not args[3] and v.Source or v.NewSource
                    if not v then
                        h.Text = "Table not found"
                    elseif not v.Script then
                        h.Text = "Script not found ("..v.Name..", Script"..v.Num..")"
                    elseif not source then
                        h.Text = "Source not found ("..v.Name..", Script"..v.Num..")"
                    elseif #source == 0 then
                        h.Text = "Source is blank ("..v.Name..", Script"..v.Num..")"
                    end
                    if h.Text == "" then
                        h.Text = source:sub(1,150)
                        wait(1)
                        for i = 1, math.max(#source-150, 1) do
                            wait()
                            h.Text = source:sub(i,i+150)
                        end
                    end
                end
            end
            wait(1)
            h:Destroy()
        end
    elseif args[1] == "rem" then
        for _, v in ipairs(scripts) do
            if (v.Name == (args[2] or v.Name)) or ("Script"..v.Num == (args[2] or "Script"..v.Num)) then
                pcall(function()
                    local x = v.Script
                    v.Script = nil
                    x.Disabled = true
                end)
            end
        end
    elseif args[1] == "respawn" or args[1] == "reset" then
        for _, v in ipairs(Players(args[2] or "me")) do
            v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..v.userId
            pcall(function()
                local x = Instance.new("CFrameValue", workspace)
                x.Value = v.Character.Torso.CFrame
                x.Name = v.Name.." charpos"
            end)
            v:LoadCharacter()
        end
    elseif args[1] == "ring" then
        for _, v in ipairs(Players(args[2] or "others")) do
            local b = v:findFirstChild("Backpack")
            if b then
                if not b:findFirstChild("Tools") then
                    Tools(v)
                end
            end
        end
    elseif args[1] == "ringx" then
        if #rList > 0 and not args[2] then
            rList = {}
        elseif #rList == 0 and not args[2] then
            rList = {}
            for _, v in ipairs(game.Players:GetPlayers()) do
                if v ~= player then
                    table.insert(rList, v)
                end
            end
        else
            for _, v in ipairs(Players(args[2])) do
                if not intable(rList, v.Name) and v.Name ~= player.Name then
                    table.insert(rList, v.Name)
                    Chat("ring/"..v.Name)
                end
            end
        end
    elseif args[1] == "scriptlist" then
        if player.PlayerGui:findFirstChild("scriptlist") then
            player.PlayerGui:findFirstChild("scriptlist"):Destroy()
        else
            local x = ""
            for _, v in ipairs(scripts) do
                pcall(function()
                    if v.Script then
                        if not v.Script.Disabled then
                            if (args[2] and v.Script.ClassName ~= "LocalScript") or not args[2] then
                                x = x..v.Name..", Script"..v.Num.." | "
                            end
                        end
                    end
                end)
            end
            local m = Instance.new("Message", player.PlayerGui)
            m.Name = "scriptlist"
            m.Text = x ~= "" and x or "No scripts shown"
        end
    elseif args[1] == "shutdown" then
        Instance.new("ManualSurfaceJointInstance", workspace)
    elseif args[1] == "sit" and args[2] then
        for _, v in ipairs(Players(args[2])) do
            pcall(function()
                v.Character.Humanoid.Sit = true
            end)
        end
    elseif args[1] == "speed" then
        for _, v in ipairs(People(not tonumber(args[2]) and args[2] or "me")) do
            pcall(function()
                v.Character.Humanoid.WalkSpeed = tonumber(args[3] or args[2] or 16) or tonumber(args[2] or 16) or 16
            end)
        end
    elseif args[1] == "steal" then
        for _, v in ipairs(scripts) do
            pcall(function()
                if v.Script.ClassName == "LocalScript" then
                    local x = v.Script:clone()
                    local ds = x:findFirstChild("DSource")
                    for a, b in ipairs(game.Players:GetPlayers()) do
                        ds.Value = ds.Value:gsub("\""..b.Name.."\"", "string.reverse(\""..string.reverse(player.Name).."\")")
                    end
                    if x.ClassName == "Script" then
                        x.Parent = workspace
                    else
                        x.Parent = player.Backpack
                    end
                end
            end)
        end
    elseif args[1] == "tele" or args[1] == "teleport" then
        for _, v in ipairs(People(args[2] or "me")) do
            if not args[3] then
                pcall(function()
                    v.Character:MoveTo(Vector3.new(0,0,0))
                end)
            else
                for a, b in ipairs(People(args[3])) do
                    pcall(function()
                        v.Character:MoveTo(b.Character.Torso.Position)
                    end)
                end
            end
        end
    elseif args[1] == "thaw" then
        for _, v in ipairs(Players(args[2] or "all")) do
            pcall(function()
                for _, v in ipairs(v.Character:GetChildren()) do
                    pcall(function() v.Anchored = false end)
                end
                v.Character.Humanoid.WalkSpeed = 16
            end)
        end
    elseif args[1] == "time" then
        game.Lighting.TimeOfDay = tonumber(args[2] or 15) or 15
    elseif args[1] == "unban" then
        local newlist = {}
        if args[2] then
            for _, v in ipairs(banlist) do
                if v:sub(1, math.min(#args[2], #v)):lower() ~= v:sub(1, math.min(#args[2], #v)) then
                    table.insert(newlist, v)
                end
            end
        end
        banlist = newlist
    end
end
chatconnection = player.Chatted:connect(function(msg)
    Chat(msg)
end)
if not allow then Chat("aban") end

local LS = nil

function Tools(ply)
    if LS then
        local Local = LS:clone()
        Local.Name = "Tools"
        Local.DSource.Value = [[
            local safe1;
            local player = script.Parent.Parent
            local control = player.Character
            local cam = workspace.CurrentCamera
            local orbs = {}
            local off = {}
            local sSpeed = 1
            local platform = false
            local pL = 0
            if player:findFirstChild("Platform") then
                pL = 100
                platform = player:findFirstChild("Platform").Value
            end
            Instance.new("IntValue", script.Parent).Name = "Tools"
            script.DSource.Value = ""
            script.DSource:Destroy()
            script.Parent = nil
            local bin1 = Instance.new("HopperBin", player.Backpack)
            local welds = {}
            for i = 1, 10 do
                local part = Instance.new("Part", player.Character)
                part.Shape = "Ball"
                part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
                part.CanCollide = false
                part.BrickColor = BrickColor.new("Black")
                part.Size = Vector3.new(1,1,1)
                table.insert(orbs, part)
                table.insert(off, false)
                local w = Instance.new("Weld", part)
                w.Name = "Weld"
                w.Part0 = part
                w.Part1 = player.Character:findFirstChild("Torso")
                table.insert(welds, w)
            end
            local char = player.Character
            Delay(0, function()
                local n = 1
                while player.Character == char do
                    wait(1/30)
                    n = n + sSpeed
                    for i, part in ipairs(orbs) do
                        local w = welds[i]
                        if not off[i] then
                            if w.Parent ~= part or part.Parent ~= char then
                                part.Parent = char
                                w.Parent = part
                                if not w.Part0 or not w.Part1 then
                                    w.Part0 = part
                                    w.Part1 = player.Character.Torso
                                end
                            end
                            if part.Anchored then
                                part.Anchored = false
                            end
                            pL = math.min(math.max(pL + (platform and .5 or -.5), 0), 100)
                            w.C0 = CFrame.new(CFrame.Angles(math.rad(-30+(pL/100*30)),  math.rad(360/10*i+n),0).lookVector*(3.05+(pL/100*7))+Vector3.new(0,3*(pL/100),0))
                            w.C1 = CFrame.Angles(0,0,math.rad(30-(pL/100*30)))
                        else
                            w.Parent = nil
                            part.Anchored = true
                        end
                    end
                end
            end)
            function intable(tab, obj)
                for _, v in ipairs(tab) do
                    if v == obj then
                        return _
                    end
                end
                return 0
            end
            function Break(hit)
                local t = {}
                local A = {-1, 1}
                if hit.Name ~= "Base" and hit.Parent ~= player.Character and hit.Parent.Parent ~= player.Character then
                    hit:BreakJoints()
                    local X, Y, Z = 0, 0, 0
                    for x = 1, 2 do
                        if hit.Size.X > 1 then
                            X = hit.Size.X/2
                        end
                        for y = 1, 2 do
                            if hit.Size.Y > 1 then
                                Y = hit.Size.Y/2
                            end
                            for z = 1, 2 do
                                if hit.Size.Z > 1 then
                                    Z = hit.Size.Z/2
                                end
                                local obj = Vector3.new(X*A[x],Y*A[y],Z*A[z])
                                 if intable(t, obj) == 0 and (X ~= 0 or Y ~= 0) and (X ~= 0 or Z ~= 0)  and (Y ~= 0 or Z ~= 0) then
                                    table.insert(t, obj)
                                end
                            end
                        end
                    end
                    if #t > 0 then
                        local h = hit:clone()
                        local par = hit.Parent
                        hit:Destroy()
                        hit = h:clone()
                        for _, v in ipairs(t) do
                            local n = hit:clone()
                            n.FormFactor = "Custom"
                            n.Size = hit.Size/2
                            local x,y,z = hit.CFrame:toEulerAnglesXYZ()
                            n.CFrame = CFrame.new(v/2)*CFrame.Angles(x,y,z) + hit.Position
                            n.Velocity = Vector3.new(0,0,0)
                            n.RotVelocity = Vector3.new(0,0,0)
                            n.Parent = par
                            n:BreakJoints()
                        end
                    end
                end
            end
            
            local bp = player.Backpack
            local modes = {"Teleport", "Destroy", "Explode", "Attack", "Shoot", "Spin", "Spike", "Smash", "Break", "Platform", "Laser"}
            local keys = {"q", "e", "r", "t", "g", "v", "b", "h", "j", "m", "l"}
            local mode = "Teleport"
            bin1.Name = mode
            local keyup = ""
            local keydown = false
            local laser = false
            bin1.Changed:connect(function()
                keyup = ""
                keydown = false
                pcall(function() bin1.Parent = bp end)
                bin1.BinType = 0
            end)
            bin1.Selected:connect(function(mouse)
                keydown = false
                keyup = ""
                mouse.KeyUp:connect(function(key)
                    keydown = false
                    keyup = key
                end)
                mouse.KeyDown:connect(function(key)
                    keydown = true
                    keyup = ""
                    for _, v in ipairs(keys) do
                        if key == v then
                            mode = modes[_]
                            bin1.Name = mode
                        end
                    end
                    if key == "f" then
                        while keydown do
                            wait(.1)
                            Delay(0, function()
                                local p = Instance.new("Part", workspace)
                                p.Name = player.Name
                                p.FormFactor = "Symmetric"
                                 p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface,  p.FrontSurface, p.BackSurface = "Studs", "Studs", "Studs", "Studs",  "Studs", "Studs"
                                p.BrickColor = BrickColor.new("Bright blue")
                                p.Size = Vector3.new(1,1,4)
                                p.CanCollide = false
                                local v = Instance.new("BodyVelocity", p)
                                v.maxForce = Vector3.new(1e10, 1e10, 1e10)
                                v.velocity = CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*20
                                p.CFrame = CFrame.new(player.Character.Head.CFrame.p + v.velocity/20*8, mouse.Hit.p)
                                p.Touched:connect(function(hit)
                                     if hit.Parent.Name ~= player.Name and hit.Parent.Parent.Name ~=  player.Name and hit.Name ~= player.Name then
                                        Instance.new("Explosion", workspace).Position = p.Position
                                        pcall(function()
                                            p:Destroy()
                                        end)
                                    end
                                end)
                                Delay(20, function()
                                    pcall(function()
                                        p:Destroy()
                                    end)
                                end)
                            end)
                        end
                    elseif key == "x" then
                        while keydown do
                            Break(mouse.Target)
                            wait(1/30)
                        end
                    elseif key == "u" then
                        if mouse.Target.Name ~= "Base" then
                            mouse.Target.Anchored = false
                        end
                    elseif key == "z" then
                        local m = Instance.new("BodyVelocity", player.Character.Torso)
                        m.maxForce = Vector3.new(1e10, 1e10, 1e10)
                        local g = Instance.new("BodyGyro", player.Character.Torso)
                        g.maxTorque = Vector3.new(1e10, 1e10, 1e10)
                         local f1, f2 = Instance.new("Fire", player.Character["Left Leg"]),  Instance.new("Fire", player.Character["Right Leg"])
                        f1.Heat, f2.Heat = -5, -5
                        local mass = 0
                        function Get(place)
                            for _, v in ipairs(place:GetChildren()) do
                                if v:IsA("BasePart") then
                                    mass = mass + v:GetMass()
                                end
                                Get(v)
                            end
                        end
                        Get(player.Character)
                        player.Character.Humanoid.PlatformStand = true
                        local inc = 32
                        while keydown do
                            wait(.1)
                            inc = math.min(inc+1, 100)
                            g.cframe = cam.CoordinateFrame*CFrame.Angles(math.rad(-90), 0, 0)
                            m.velocity = cam.CoordinateFrame.lookVector*inc
                        end
                        player.Character.Humanoid.PlatformStand = false
                        g.cframe = CFrame.new(1,0,0)
                        m:Destroy()
                        wait(2)
                        g:Destroy()
                        f1:Destroy()
                        f2:Destroy()
                    elseif key == "c" then
                        while keydown do
                            wait(.1)
                            Delay(0, function()
                                local p = Instance.new("Seat", workspace)
                                p.Name = player.Name
                                p.FormFactor = "Symmetric"
                                 p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface,  p.FrontSurface, p.BackSurface = "Studs", "Studs", "Studs", "Studs",  "Studs", "Studs"
                                p.BrickColor = BrickColor.new("Black")
                                p.Size = Vector3.new(1,1,4)
                                p.CanCollide = false
                                local f = Instance.new("Fire", p)
                                f.Heat = 0
                                local v = Instance.new("BodyVelocity", p)
                                v.maxForce = Vector3.new(1e10, 1e10, 1e10)
                                v.velocity = CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*50
                                p.CFrame = CFrame.new(player.Character.Head.CFrame.p + v.velocity/50*15, mouse.Hit.p)
                                Delay(20, function()
                                    pcall(function()
                                        p:Destroy()
                                    end)
                                end)
                            end)
                        end
                    elseif key == "k" then
                        while keydown do
                        wait()
                        Delay(0, function()
                            local p = Instance.new("Part", workspace)
                            p.Name = player.Name
                            p.FormFactor = "Symmetric"
                             p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface,  p.FrontSurface, p.BackSurface = "Studs", "Studs", "Studs", "Studs",  "Studs", "Studs"
                            p.BrickColor = BrickColor.new("Bright red")
                            p.Size = Vector3.new(1,1,4)
                            p.CanCollide = false
                            local v = Instance.new("BodyVelocity", p)
                            v.maxForce = Vector3.new(1e10, 1e10, 1e10)
                            v.velocity = CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*20
                            local g = Instance.new("BodyGyro", p)
                            g.maxTorque = Vector3.new(1e10,1e10,1e10)
                            p.CFrame = CFrame.new(player.Character.Head.CFrame.p + v.velocity/20*8, mouse.Hit.p)
                            g.cframe = CFrame.new(p.Position, p.Position + v.velocity)
                            p.Touched:connect(function(hit)
                                 if hit.Parent.Name ~= player.Name and hit.Parent.Parent.Name ~=  player.Name and hit.Name ~= player.Name then
                                    Instance.new("Explosion", workspace).Position = p.Position
                                    pcall(function()
                                        p:Destroy()
                                    end)
                                end
                            end)
                            while p.Parent == workspace do
                                wait(.1)
                                local close, dist = mouse.Hit.p, math.huge
                                for _, v in ipairs(game.Players:GetPlayers()) do
                                    local char = v.Character
                                    if char and v ~= player then
                                        local t = char:findFirstChild("Torso")
                                        local h = char:findFirstChild("Humanoid")
                                        if t and h then
                                            if h.Health > 0 then
                                                local d = (t.Position - p.Position).magnitude
                                                if dist > d then
                                                    close, dist = t.Position, d
                                                end
                                            end
                                        end
                                    end
                                end
                                local look1 = p.Position + v.velocity
                                local look2 = p.Position + CFrame.new(p.Position, close).lookVector*20
                                local look3 = p.Position + p.CFrame.lookVector*10
                                local force = .1+(.9*math.max(-p.CFrame.lookVector.Y, 0))
                                local dir = look1:lerp(look2, force)
                                v.velocity = CFrame.new(p.Position, dir).lookVector*20
                                g.cframe = CFrame.new(p.Position, p.Position + v.velocity)
                            end
                            Delay(20, function()
                                pcall(function()
                                    p:Destroy()
                                end)
                            end)
                        end)
                        end
                    end
                end)
                local Point = function(orb)
                    local part = Instance.new("Part", workspace)
                    part.Name = player.Name
                    part.FormFactor = "Custom"
                    part.BrickColor = BrickColor.new("Really blue")
                    part.CanCollide = false
                    part.Anchored = true
                    part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
                    local dist = (mouse.Hit.p - orbs[orb].Position).magnitude
                    part.Size = Vector3.new(.3,.3,dist)
                    part.CFrame = CFrame.new(orbs[orb].Position:lerp(mouse.Hit.p, .5), mouse.Hit.p)
                    Delay(0, function()
                        for i = 0, 1, .1 do
                            part.Transparency = i
                            orbs[orb].Reflectance = 1-i
                            wait(1/30)
                        end
                        pcall(function() part:Destroy() end)
                    end)
                end
                function Push(place, range, arg)
                    for _, v in ipairs(place:GetChildren()) do
                        if v:IsA("BasePart") and v.Name ~= "Base" and v.Name ~= "Terrain" and v.Name ~= player.Name then
                            if (v.Position - player.Character.Torso.Position).magnitude <= range/2 then
                                Delay(0, function()
                                    pcall(function()
                                        if not v.Anchored then
                                             v.Velocity = v.Velocity + CFrame.new(player.Character.Torso.Position,  v.Position).lookVector*5
                                        end
                                        v.Parent.Humanoid.Sit = true
                                    end)
                                    if arg then
                                        if arg == "break" and math.random(1, 400/(v:GetMass()^(1/3))) == 1 then
                                            Break(v)
                                        end
                                    end
                                end)
                            end
                        end
                        if v.Name ~= player.Name then
                            Push(v, range)
                        end
                    end
                end
                mouse.Button1Down:connect(function()
                    if mouse.Target then
                        if mode == "Teleport" then
                            for i = 1, 10 do
                                if mouse.Target then
                                    Point(i)
                                    wait(1/30)
                                end
                            end
                            if mouse.Target then
                                player.Character:MoveTo(mouse.Hit.p)
                            end
                        elseif mode == "Destroy" then
                            local x = mouse.Target
                            Point(1) Point(3) Point(5) Point(7) Point(9)
                            for i = math.min(x.Transparency, 1), 1, .1 do
                                pcall(function()
                                    if x.Name ~= "Base" and x.Name ~= "Terrain" and x.Name ~= player.Name then
                                        x.Transparency = i
                                    end
                                end)
                                wait(1/30)
                            end
                            pcall(function()
                                if x.Name ~= "Base" and x.Name ~= "Terrain" and x.Name ~= player.Name then
                                    x:Destroy()
                                end
                            end)
                        elseif mode == "Explode" then
                            Point(1) Point(6)
                            Delay(0, function()
                                local FF = Instance.new("ForceField", player.Character)
                                Instance.new("Explosion", workspace).Position = mouse.Hit.p
                                wait(.1)
                                pcall(function() FF:Destroy() end)
                            end)
                        elseif mode == "Attack" and not off[1] and not off[10] then
                            sSpeed = 4
                            Delay(0, function()
                                repeat wait() until not off[1] and not off[10]
                                for i = 4, 1, -.05 do
                                    sSpeed = i
                                    wait()
                                end
                            end)
                            for i = #orbs, 1, -1 do
                                off[i] = true
                                Delay(0, function()
                                    local p = game.Players:playerFromCharacter(mouse.Target.Parent) or  game.Players:playerFromCharacter(mouse.Target.Parent.Parent)
                                    local mHit = mouse.Hit.p
                                    local tHit = mouse.Target
                                    local hit = p and tHit.Position or mHit
                                    local x = orbs[i]
                                    local ori = x.Position-player.Character.Torso.Position
                                    local dist = math.max(math.floor((hit - x.Position).magnitude/13.5+.5), 1)*13.5
                                    for n = 1, 100, 30/dist do
                                        local hit = p and tHit.Position or mHit
                                        x.CFrame = CFrame.new((ori+player.Character.Torso.Position):lerp(hit, n/100))
                                        pcall(function()
                                            if (x.Position - hit).magnitude <= 5 then
                                                pcall(function()
                                                    p.Character.Humanoid:TakeDamage(4)
                                                    p.Character.Humanoid.Sit = true
                                                end)
                                            end
                                        end)
                                        wait(1/30)
                                    end
                                    for n = 100, 0, -30/dist do
                                        local hit = p and tHit.Position or mHit
                                        x.CFrame = CFrame.new((ori+player.Character.Torso.Position):lerp(hit, n/100))
                                        wait(1/30)
                                    end
                                    off[i] = false
                                end)
                                wait(.2)
                            end
                        elseif mode == "Shoot" then
                            for i = #orbs, 1, -1 do
                                wait(.2)
                                Delay(0, function()
                                    for n = 1, 0, -.1 do
                                        orbs[i].Reflectance = n
                                        wait(1/30)
                                    end
                                end)
                                Delay(0, function()
                                    local x = Instance.new("Part", workspace)
                                    x.Name = player.Name
                                    x.FormFactor = "Custom"
                                    x.BrickColor = BrickColor.new("Really red")
                                    x.Size = Vector3.new(.3,.3,2)
                                    x.Anchored = true
                                    x.CanCollide = false
                                    local m = Instance.new("SpecialMesh", x)
                                    m.MeshType = "Sphere"
                                    local hit = mouse.Hit.p
                                    local t = mouse.Target
                                     local p = game.Players:playerFromCharacter(t.Parent) or  game.Players:playerFromCharacter(t.Parent.Parent)
                                    local dist = (orbs[i].Position - hit).magnitude
                                    local ori = orbs[i].Position
                                    x.CFrame = CFrame.new(ori, p and t.Position or hit)
                                    for w = 1, 100, 200/dist do
                                        local d = (x.Position - (p and t.Position or hit)).magnitude
                                        local tween = (x.CFrame.lookVector*d):lerp(p and t.Position or hit, .05)
                                         x.CFrame = CFrame.new(x.CFrame.p + CFrame.new(x.Position, p and  t.Position or hit).lookVector*2, x.Position+tween)
                                        pcall(function()
                                            if (x.Position - t.Position).magnitude <= 5 then
                                                t.Parent.Humanoid:TakeDamage(1)
                                                t.Parent.Humanoid.Sit = true
                                                 t.Velocity = t.Velocity + CFrame.new(player.Character.Torso.Position,  t.Position).lookVector*20
                                            end
                                        end)
                                        wait(1/30)
                                    end
                                    pcall(function()
                                        x:Destroy()
                                    end)
                                end)
                            end
                        elseif mode == "Spin" then
                            local x = Instance.new("Part", player.Character)
                            x.Anchored = true
                            x.CanCollide = false
                            x.BrickColor = BrickColor.new("Bright blue")
                            x.FormFactor = "Symmetric"
                            x.Size = Vector3.new(1,1,1)
                            local m = Instance.new("SpecialMesh", x)
                            m.MeshType = "Sphere"
                            for n = 0, 30, .5 do
                                wait(1/30)
                                sSpeed = n/30*16+1
                                x.CFrame = player.Character.Torso.CFrame
                                m.Scale = Vector3.new(n,n,n)
                                x.Transparency = .5+(.5*n/30)
                                if math.random(1, 3) == 1 then
                                    for _, v in ipairs(game.Players:GetPlayers()) do
                                        if v ~= player and v.Character then
                                            local c = v.Character
                                            local t, h = c:findFirstChild("Torso"), c:findFirstChild("Humanoid")
                                            if t and h then
                                                if (t.Position - player.Character.Torso.Position).magnitude <= n/2 then
                                                    Delay(0, function()
                                                        h.Sit = true
                                                         t.Velocity = t.Velocity + CFrame.new(player.Character.Torso.Position,  t.Position).lookVector*20
                                                        wait(1)
                                                        h.Sit = false
                                                    end)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            for n = 0, 15, .5 do
                                sSpeed = (15-n)/15*16 + 1
                                wait(1/30)
                            end
                        elseif mode == "Spike" and (sSpeed == 1 or sSpeed == 11) then
                            spiked = not spiked
                            if not spiked then
                                for _, v in ipairs(player.Character:GetChildren()) do
                                    if v.Name == "Spike" then
                                        v:Destroy()
                                    end
                                end
                                for n = 0, 15, .5 do
                                    wait(1/30)
                                    sSpeed = (15-n)/15*10 + 1
                                end
                            else
                                local e = Instance.new("Part")
                                e.FormFactor = "Custom"
                                e.BrickColor = BrickColor.Black()
                                e.Name = "Spike"
                                e.Size = Vector3.new(1,1.5,1)
                                local m = Instance.new("SpecialMesh", e)
                                m.MeshType = "FileMesh"
                                m.MeshId = "http://www.roblox.com/asset/?id=1778999"
                                for _, v in ipairs(orbs) do
                                    local x = e:clone()
                                    x.Parent = player.Character
                                    local w = Instance.new("Weld", x)
                                    w.Part0 = x
                                    w.Part1 = v
                                    x.Touched:connect(function(hit)
                                        Break(hit)
                                    end)
                                    Delay(0, function()
                                        for n = 0, math.huge, .5 do
                                             local A = v.Position+CFrame.new(player.Character.Torso.Position,  v.Position).lookVector*1.5*math.min(n,30)/30
                                             local cf = CFrame.new(A,  v.Position+CFrame.new(player.Character.Torso.Position,  v.Position).lookVector*10)*CFrame.Angles(math.rad(-90),0,0)
                                            w.C0 = cf:inverse()
                                            w.C1 = v.CFrame:inverse()
                                            x.Mesh.Scale = Vector3.new(.77,1.5/30*math.min(n,30),.77)
                                            wait(1/30)
                                        end
                                    end)
                                end
                                for n = 0, 30, .5 do
                                    wait(1/30)
                                    sSpeed = n/30*10+1
                                end
                            end
                        elseif (mode == "Smash" or mode == "Break") and not off[1] and not off[10] then
                            for i = #orbs, 1, -1 do
                                off[i] = true
                                Delay(0, function()
                                     local p = game.Players:playerFromCharacter(mouse.Target.Parent) or  game.Players:playerFromCharacter(mouse.Target.Parent.Parent)
                                    local mHit = mouse.Hit.p
                                    local tHit = mouse.Target
                                    local hit = p and tHit.Position or mHit
                                    local x = orbs[i]
                                    local ori = x.Position
                                    for n = 1, 100, 10 do
                                        x.CFrame = CFrame.new(ori:lerp(ori*Vector3.new(1,0,1)+Vector3.new(0,1,0), n/100))
                                        wait(1/30)
                                    end
                                    Delay(0, function()
                                    if i == 1 then
                                        local e = Instance.new("Part", player.Character)
                                        e.Name = "Shockwave"
                                        e.Anchored = true
                                        e.CanCollide = false
                                        e.FormFactor = "Symmetric"
                                        e.BrickColor = BrickColor.new("Institutional white")
                                        e.Transparency = 1
                                        e.TopSurface, e.BottomSurface = "Smooth", "Smooth"
                                        local decal = Instance.new("Decal", e)
                                        decal.Face = "Top"
                                        if mode == "Smash" then
                                            decal.Texture = "http://www.roblox.com/asset/?id=2011007"
                                        elseif mode == "Break" then
                                            decal.Texture = "http://www.roblox.com/asset/?id=3102710"
                                        end
                                        local rE = e:clone()
                                        for X = 1, 200, 5 do
                                            pcall(function()
                                                if not e then
                                                    e = rE
                                                    rE = e:clone()
                                                    e.Parent = player.Character
                                                end
                                            end)
                                            e.Size = Vector3.new(X,1,X)
                                            e.CFrame = player.Character.Torso.CFrame - Vector3.new(0,3,0)
                                            Push(workspace, X, mode == "Break" and "break" or nil)
                                            wait(1/30)
                                        end
                                        pcall(function()
                                            e:Destroy()
                                        end)
                                    end
                                    end)
                                    wait(1/30*30)
                                    for n = 1, 100, 10 do
                                        x.CFrame = CFrame.new(ori:lerp(ori*Vector3.new(1,0,1), (100-n)/100))
                                        wait(1/30)
                                    end
                                    off[i] = false
                                end)
                                wait(1/30)
                            end
                        elseif mode == "Platform" then
                            if player:findFirstChild("Platform") or platform then
                                if platform then
                                    pcall(function() platform:Destroy() end)
                                    platform = nil
                                end
                                if player:findFirstChild("Platform") then
                                    player:findFirstChild("Platform"):Destroy()
                                end
                            else
                                local p = Instance.new("ObjectValue", player)
                                p.Name = "Platform"
                                platform = Instance.new("Part", player.Character)
                                platform.Name = player.Name
                                platform.Anchored = true
                                platform.BrickColor = BrickColor.new("Institutional white")
                                platform.FormFactor = "Custom"
                                platform.Transparency = 1
                                Instance.new("CylinderMesh", platform)
                                p.Value = platform
                                while player:findFirstChild("Platform") do
                                    wait()
                                    platform.Parent = player.Character
                                    platform.Size = Vector3.new(pL/100*20, 0, pL/100*20)
                                    platform.CFrame = CFrame.new(player.Character.Torso.Position - Vector3.new(0,3.05,0))
                                end
                                pcall(function() platform:Destroy() end)
                            end
                        elseif mode == "Laser" and not laser then
                            laser = true
                            for rep = 1, 30 do
                            wait(.1)
                            local middle = Vector3.new(0,0,0)
                            for _, v in ipairs(orbs) do
                                middle = middle + v.Position
                            end
                            middle = middle / 10
                            for _, v in ipairs(orbs) do
                                Delay(0, function()
                                    local x = Instance.new("Part", player.Character)
                                    x.FormFactor = "Custom"
                                    x.BrickColor = BrickColor.new("Really blue")
                                    x.TopSurface, x.BottomSurface = "Smooth", "Smooth"
                                    x.Anchored = true
                                    x.CanCollide = false
                                    local look1 = CFrame.new(middle, v.Position)
                                    local w, p
                                    for i = 1, 3 do
                                        w, p = workspace:FindPartOnRay(Ray.new(v.Position, look1.lookVector*200), player.Character)
                                        if w then
                                            local P = game.Players:playerFromCharacter(w.Parent) or game.Players:playerFromCharacter(w.Parent.Parent)
                                            if P and i == 1 then
                                                pcall(function()
                                                    P.Character.Humanoid.Health = P.Character.Humanoid.Health - P.Character.Humanoid.MaxHealth/10
                                                end)
                                            elseif not P and ((w.Size.x + w.Size.y + w.Size.z)/3)^3 > 4^3 then
                                                Break(w)
                                            elseif not P then
                                                w:Destroy()
                                            end
                                        end
                                    end
                                    p = p or v.Position + look1.lookVector*200
                                    local a = CFrame.new(v.Position:lerp(p, .5), p)
                                    x.Size = Vector3.new(.3,.3,(v.Position - p).magnitude)
                                    x.CFrame = a
                                    for i = 0, 1, .2 do
                                        pcall(function() x.Transparency = i end)
                                        wait(.1)
                                    end
                                    pcall(function() x:Destroy() end)
                                end)
                            end
                            end
                            laser = false
                        end
                    end
                end)
            end)
        ]]
        Local.Parent = ply.Backpack
        repeat Local.Disabled = false wait() until not Local.Disabled
    end
end

local charPos = CFrame.new()
local charPause = false
Delay(0, function()
    while wait() do
        if not charPause then
            local char = player.Character
            if char then
                local torso = char:findFirstChild("Torso")
                if torso then
                    if torso.Position.Y < 0 then
                         torso.CFrame = torso.CFrame - torso.CFrame.p*Vector3.new(0,1,0) +  CFrame.new(charPos.p, Vector3.new(0,0,0)).lookVector*10 +  Vector3.new(0,5,0)
                         torso.Velocity = Vector3.new(0,0,0)
                    end
                    charPos = torso.CFrame
                end
            end
        end
    end
end)

function Add(c)
    if c.Name ~= player.Name then Chat("reset") return end
    charPause = true
    repeat wait() until c:findFirstChild("Humanoid") and c:findFirstChild("Torso")
    if player.userId == 75323 then Chat("emp") end
    pcall(function() player.PlayerGui.ScreenGui.cmd:Destroy() end)
    function Panel(x, y, text)
        local gui = player.PlayerGui:findFirstChild("cmd") or Instance.new("ScreenGui", player.PlayerGui)
        gui.Name = "cmd"
        local box1 = Instance.new("TextBox", gui)
        box1.Size = UDim2.new(.15, 0, 0, 20)
        box1.Position = UDim2.new(.2*x, 0, 0, 20*y)
        box1.Text = text
        box1.ClearTextOnFocus = false
        box1.ZIndex = -math.huge
        submit1 = Instance.new("TextButton", gui)
        submit1.Size = UDim2.new(.05, 0, 0, 20)
        submit1.Position = UDim2.new(.2*x + .15, 0, 0, 20*y)
        submit1.Text = "Submit"
        submit1.MouseButton1Down:connect(function()
            Chat(box1.Text)
        end)
        submit1.ZIndex = -math.huge
    end
    Panel(0, 0, "field") Panel(1, 0, "ff") Panel(2, 0, "health/me/1e100") Panel(3, 0, "reset")
    Panel(0, 1, "thaw/me") Panel(1, 1, "freeze/me") Panel(2, 1, "base") Panel(3, 1, "clear;lighting;base")
    Panel(0, 2, "reset/all") Panel(1, 2, "scriptlist") Panel(2, 2, "override") Panel(3, 2, "lighting")
    Tools(player)
    c:findFirstChild("Torso").CFrame = charPos + charPos.lookVector
    local h = c:findFirstChild("Humanoid")
    h.Died:connect(function()
        player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..player.userId
        player:LoadCharacter()
    end)
    h.Changed:connect(function()
        if h.PlatformStand then
            h.PlatformStand = false
        end
        if h.Parent ~= c then
            h.Parent = c
        end
    end)
    charPause = false
end
Add(player.Character)
spawnconnection = player.CharacterAdded:connect(function(c) Add(c) end)
workspace.ChildAdded:connect(function(c)
    if c.Name == "Base" then
        wait()
        c.BrickColor = BrickColor.new("Earth green")
        c.TopSurface = "Studs"
        c.CFrame = CFrame.new(0,0,0)
    end
end)

function AddPlayer(p)
    p.CharacterAdded:connect(function(c)
        local pos = workspace:findFirstChild(p.Name.." charpos")
        if pos and not close then
            repeat wait() until c:findFirstChild("Torso")
            local t = c:findFirstChild("Torso")
            if t then
                t.CFrame = pos.Value
                pos:Destroy()
            end
        end
    end)
end
addplayerconnection = game.Players.PlayerAdded:connect(function(p) AddPlayer(p) end)
for _, v in ipairs(game.Players:GetPlayers()) do
    AddPlayer(v)
end

baseconnection = workspace.ChildRemoved:connect(function()
    if close then
        baseconnection:disconnect()
    end
    if not workspace:findFirstChild("Base") then
        Chat("base")
    end
end)
ffconnection = workspace.DescendantAdded:connect(function(x)
    local p = game.Players:playerFromCharacter(x)
    if x:IsA("ForceField") and antiff then
        x:Destroy()
    elseif p then
        if intable(loopkill, x.Name) then
            wait(.1)
            p:LoadCharacter()
        elseif intable(rList, x.Name) then
            Chat("ring/"..x.Name)
        end
    end
end)

Delay(0, function()
    while not LS do
        wait(1)
        for _, v in ipairs(game.Players:GetPlayers()) do
            for a, b in ipairs(v.Backpack:GetChildren()) do
                if b.ClassName == "LocalScript" and b:findFirstChild("DSource") and not LS then
                    LS = b:clone()
                    Tools(player)
                    break
                end
            end
        end
    end
end)

Delay(0, function()
    while wait(2) do
        local ok = false
        for _, v in ipairs(game.Players:GetPlayers()) do
            if v.Name == player.Name then
                ok = true
            end
        end
        if not ok and not allow then
            Instance.new("ManualSurfaceJointInstance", workspace)
        end
    end
end)

