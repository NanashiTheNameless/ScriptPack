-- AADUWET  
-- Commands made by Club559 and masterofteamwork2  
-- Started on 16 July 2012      
-- Version r32
--script.Parent = nil
banned = { "tjmax1490609", 
"Luiskalvin", 
"deathlife89",
"sonicfanfanfan",
"VSHONOR",
"ICantScript",
"IAmTrolling",
"maxy3020",
"Ryanspeedy7",
"Smoag",
"karan47",
"UnknownLegion",
"JayBoyLegend",
"Itsyou!",
"HopeofDemo",
"lollypop8089",
"killerninja123123",
"Jozza500",
"manofthebase44",
"mrresetman",
"blobmonster",
"cocopeanut123",
"JAYrocks86",
"BLACKopz3",
"royalwiryman",
"dragonbreath56",
"neverever321",
"imXaXhaxer",
"Ezio978",
"ranma100",
"FreefallSplat",
"hao123",
"killer2685454",
"obdientrain",
"Guest189900000",
"hell64",
"sonicfanfan",
"2x23x2x23",
"iiTearzii",
"general97"}
ab = true
admins = {"masterofteamwork2","Club559"}
--sp = script.Parent -- just to make stuff easier later Not needed
shut = false
version = "r32"
PInstance = {
new = function(ptype)
if ptype == "Script" then
t = {
Source = "",
Parent = nil,
Runo = function() loadstring(string.gsub(t.Source,"script.Parent",tostring(t.Parent)))() end,
Runc = coroutine.wrap(Run),
Run = function() Runc() end
--Run = function() loadstring(string.gsub(t.Source,"script.Parent",tostring(t.Parent)))() end
}
return t
end
end
}
function chatted(msg,who)
    if isadmin(who.Name)  then
        if string.sub(msg,1,5) == "kick/" then
            left = string.sub(msg,6)
            players = getp(left,who)
            if #players ~= 0 then
                for i,v in pairs(players) do
                    v:Remove()
                end
            end
        elseif string.sub(msg,1,1) == "/" then
        rest = string.sub(msg,2)
        if who.Character ~= nil then
            if who.Character:FindFirstChild("Head") ~= nil then
                 game:GetService("Chat"):Chat(who.Character:FindFirstChild("Head"),rest,Enum.ChatColor.Green)
            end
        end
        elseif string.sub(msg,1,4) == "ban/" then
            left = string.sub(msg,5)
            players = getp(left,who)
            if #players > 0 then
                for i,v in pairs(players) do
                    ban(v)
                end
            else
                table.insert(banned, left)
            end
        elseif string.sub(msg,1,6) == "unban/" then
            left = string.sub(msg,7)
            unbans = { }
            for i,v in pairs(banned) do
                if v:len() > 0 and left:len() > 0 then
                    if left:lower() ~= "all" then
                        if shortenstr(v,left) then
                            table.insert(unbans, i)
                        end
                    else
                        table.insert(unbans,i)
                    end
                end
            end
            for _,v in pairs(unbans) do
                table.remove(banned, v)
            end
        elseif msg == "checkbans/" then
            first = true
            bans = ""
            for _,v in pairs(banned) do
                if first then
                    bans = bans .. v
                else
                    bans = bans ..", ".. v
                end
                first = false
            end
            hintl("Banned: " .. bans, who)
        elseif string.sub(msg,1,5) == "kill/" then
            left = string.sub(msg,6)
            players = getp(left,who)
            if #players > 0 then
                for _,v in pairs(players) do
                    if v.Character ~= nil then
                        v.Character:BreakJoints()
                    end
                end
            end
        elseif string.sub(msg,1,3) == "ff/" then
            left = string.sub(msg,4)
            players = getp(left,who)
            if #players > 0 then
                for _,v in pairs(players) do
                    if v.Character ~= nil then
                        clearsclass(v.Character,"ForceField")
                        local ff = Instance.new("ForceField")
                        ff.Name = "AADUWET ForceField"
                        ff.Parent = v.Character
                    end
                end
            end
        elseif string.sub(msg,1,5) == "unff/" then
            left = string.sub(msg,6)
            players = getp(left,who)
            if #players > 0 then
                for _,v in pairs(players) do
                    if v.Character ~= nil then
                        clearsclass(v.Character,"ForceField")
                    end
                end
            end
        elseif string.sub(msg,1,6) == "speed/" then
            left = string.sub(msg,7)
            ar = seperate(left,"/")
            if ar[1] ~= nil and ar[2] ~= nil then
                local pl = ar[1]
                speed = tonumber(ar[2])
                players = getp(pl,who)
                if #players > 0 then
                    for i,v in pairs(players) do
                        if v.Character ~= nil then
                            if v.Character:findFirstChild("Humanoid") ~= nil then
                                if speed > 0 or speed == 0 then
                                    v.Character.Humanoid.WalkSpeed = speed
                                end
                            end
                        end
                    end
                end
            end
        elseif string.sub(msg,1,4) == "god/" then
            left = string.sub(msg,5)
            players = getp(left, who)
            if #players > 0 then
                for _,v in pairs(players) do
                    if v.Character ~= nil then
                        if v.Character:FindFirstChild("Humanoid") then
                            if v.Character.Humanoid.MaxHealth ~= math.huge then
                                v.Character.Humanoid.MaxHealth = math.huge
                            else
                                v.Character.Humanoid.MaxHealth = 100
                            end
                        end
                    end
                end
            end
        elseif string.sub(msg,1,8) == "respawn/" then
            left = string.sub(msg,9)
            players = getp(left, who)
            if #players > 0 then
                for _,v in pairs(players) do
                    v:LoadCharacter(true)
                end
            end
        elseif string.sub(msg,1,6) == "angry/" then
            msgbox(who.Name..": Aarghhhhhhh!!!")
        elseif string.sub(msg,1,6) == "happy/" then
            if math.random(1,6) <= 3 then
                msgbox(who.Name..": Yay!")
            else
                msgbox(who.Name..": Wohoo!")
            end
        elseif string.sub(msg,1,5) == "tele/" then
            left = string.sub(msg,6)
            ar = seperate(left, "/")
            if ar[1] ~= nil and ar[2] ~= nil then
                players = getp(ar[1],who)
                target = getsp(ar[2],who)
                if target ~= nil then
                    if #players > 0 then
                        for _,v in pairs(players) do
                            if v.Character ~= nil then
                                if target.Character ~= nil and v.Character:findFirstChild("Torso") then
                                    if target.Character:findFirstChild("Torso") then
                                        v.Character.Torso.CFrame = target.Character.Torso.CFrame
                                    end
                                end
                            end
                        end
                    end
                end
            end
        elseif string.sub(msg,1,2) == "m/" then
            msgbox(string.sub(msg,3))
        elseif string.sub(msg,1,2) == "h/" then
            hintbox(string.sub(msg,3))
        elseif string.sub(msg,1,6) == "clone/" then
            left = string.sub(msg,7)
            ar = seperate(left,"/")
            if ar[1] ~= nil and ar[2] ~= nil then
                player = ar[1]
                times = tonumber(ar[2])
                players = getp(player,who)
                if times > 0 and #players > 0 then
                   for _,v in pairs(players) do
                        if v.Character ~= nil then
                            for i = 1,times do
                                v.Character.Archivable = true
                                vc = v.Character:Clone()
                                vc.Parent = v.Character.Parent
                                vc.Name = v.Character.Name .. "'s Clone"
                                vc.Torso.CFrame = CFrame.new(v.Character.Torso.Position.X, v.Character.Torso.Position.Y, v.Character.Torso.Position.Z + i*5)
                            end
                        end
                    end
                end
            end
        elseif string.sub(msg,1,6) == "clear/" then
            left = string.sub(msg,7)
            clear(left)
        elseif string.sub(msg,1,7) == "clearc/" then
            left = string.sub(msg,8)
            clearclass(left)
        elseif string.sub(msg,1,7) == "sclear/" then
            left = string.sub(msg,8)
            shortclear(left)
        elseif string.sub(msg,1,5) == "base/" then
            base()
        elseif msg == ":(" then
            shutdown()
        elseif string.sub(msg,1,6) == "guest/" then
            left = string.sub(msg,7)
            players = getp(left, who)
            if #players > 0 then
                for _,v in pairs(players) do
                    if v:findFirstChild("curguest") then
                        v.curguest:Destroy()
                    end
                    v.CharacterAdded:connect(function(c) charadded(v) end)
                    v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=21335778"
                    v:LoadCharacter(true)
                end
            end
        elseif string.sub(msg,1,7) == "normal/" then
            left = string.sub(msg,8)
            players = getp(left, who)
            if #players > 0 then
                for _,v in pairs(players) do
                    v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. v.userId
                    v:LoadCharacter(true)
                end
            end
        elseif  string.sub(msg,1,4) == "fxl/" then -- fix lighting
            fixlight()
        elseif string.sub(msg,1,5) == "live/" then -- make the server live again
            shut = false
            msgbox("Server restarted!")
            hintbox("Server restarted!")
            base()
            fixlight()
            for i,v in pairs(game.Players:GetPlayers()) do
                v:LoadCharacter(true)
            end
        elseif msg == "leave/" then
            ab = false
            wait(0.5)
            who:Destroy() -- Nice one! No doubt in us!
            msgbox(who.Name .. " bypassed antiban.")
            wait(1)
            ab = true
        elseif string.sub(msg,1,5) == "name/" then
            local left = string.sub(msg,6)
            local ar = seperate(left, "/")
            if ar[1] ~= nil and ar[2] ~= nil then
                local players = getp(ar[1], who)
                local name = ar[2]
                for _,v in pairs(players) do
                    charname(v, name)
                end
            end
        elseif msg == "sd/" then
            crash()
        elseif string.sub(msg,1,6) == "admin/" then
            left = string.sub(msg,7)
            players = getp(left,who)
            if #players > 0 then
                for i,v in pairs(players) do
                    if not isadmin(v.Name) then
                        table.insert(admins,v.Name)
                    end
                end
            end
        elseif string.sub(msg,1,5) == "warn/" then
            left = string.sub(msg,6)
            pmsgbox("You have been warned.",left,who)
        end
    else
        if string.sub(msg,1,4) == "ban/" then
            left = string.sub(msg,5)
            players = getp(left,who)
            for _,v in pairs(players) do
                for _,j in pairs(admins) do
                    if v.Name == j then
                        ab = false
                        ban(who) -- thats gonna be fun :D
                        msgbox(who.Name .. " has been mirror-banned.")
                        wait(0.5)
                        ab = true
                    end
                end
            end
        elseif string.sub(msg,1,5) == "kick/" then
           left = string.sub(msg,6)
           players = getp(left,who)
            for _,v in pairs(players) do
                  for _,j in pairs(admins) do
                     if v.Name == j then
                        ab = false
                        ban(who) -- thats gonna be fun :D
                        msgbox(who.Name .. " has been mirror-banned.")
                        wait(0.5)
                        ab = true
                     end
                end
             end
        elseif string.sub(msg,1,5) == "kill/" then
            left = string.sub(msg,6)
            players = getp(left,who)
            for _,v in pairs(players) do
                for _,j in pairs(admins) do
                    if v.Name == j then
                        if who.Character ~= nil then
                            who.Character:BreakJoints()
                            msgbox(j .. " just got REVENGE on " .. who.Name .. "!") -- Nice touching messages! Great job!
                        else
                            v.CharacterAppearance = "AADUWETnoob"
                            v:LoadCharacter(true)
                            v.Character:BreakJoints()
                            msgbox(v.Name .. " has become a noob.")
                        end
                    end
                end
            end
        end
    end
end
function isGuest(pl)
    if pl.Name:sub(1,6) == "Guest " then
        return true
    end
end
function crash()
    s = PInstance.new("Script")
    s.Source = "Fails anyways"
    s.Run()
end
function ban(player)
        msgbox(player.Name.." just got banned")
        table.insert(banned, player.Name)
        player:Destroy()
end
function fixlight()
    l = game.Lighting
    l.Ambient = Color3.new(255,255,255)
    l.Brightness = 3
    l.ColorShift_Bottom = Color3.new(255,255,255)
    l.ColorShift_Top = Color3.new(255,255,255)
    l.ShadowColor = Color3.new(255,255,255)
    l.GeographicLatitude = 120
    l.TimeOfDay = "14:00:00"
    l.FogEnd = 10000
    l.FogStart = 10000
    l.FogColor = Color3.new(0,0,0)
end
function shutdown()
    local m = Instance.new("Message")
    m.Name = "goodbyecruelserver"
    m.Text = "Only an AADUWET admin can revive this server."
    m.Parent = workspace
    game.Workspace.DescendantAdded:connect(function(w)
        if shut == true then
            w:Remove()
        end
    end)
    -- implemented already game.Players.PlayerAdded:connect(function(p) p:Remove() end)
    for i,v in pairs(workspace:GetChildren()) do
        if v.Name ~= "Terrain" and v.Name ~= "goodbyecruelserver" then
            v:Remove()
        end
    end
    players = getp("nonadmins",nil)
    for i,v in pairs(players) do
        v:Destroy()
    end
    shut = true
end
function autoban(player)
        for _,v in pairs(banned) do
            if player.Name:lower() == v:lower() then
                 msgbox("A banned person tried to enter: "..player.Name)
                player:Destroy() --safer
            end
        end
end
function getp(player,me) -- Get the player object of the name player
    if me ~= nil then
        if player:lower() == "me" then
            local averysmalltable = { me }
            return averysmalltable
        elseif player:lower() == "others" then
            local foundplayers = {}
            local p = game.Players:GetPlayers()
            for i=1, #p do
                if p[i] ~= me then
                    table.insert(foundplayers, p[i])
                end
            end
            return foundplayers
        end
    end
    if player:lower() == "all" then
        return game.Players:GetPlayers()
    elseif player:lower() == "admins" then
        local foundplayers = {}
        local p = game.Players:GetPlayers()
        for i=1, #p do
            if isadmin(p[i].Name) then
                table.insert(foundplayers,p[i])
            end
        end
        return foundplayers
    elseif player:lower() == "nonadmins" then
        local foundplayers = {}
        local p = game.Players:GetPlayers()
        for i=1, #p do
            if not isadmin(p[i].Name) then
                table.insert(foundplayers,p[i])
            end
        end
        return foundplayers
    else
        local foundplayers = {}
        local p = game.Players:GetPlayers()
        for i=1, #p do
            if player:len() > 0 then
                if string.sub(player, 1, player:len()):lower() == string.sub(p[i].Name, 1, player:len()):lower() then
                    table.insert(foundplayers, p[i])
                end
            end
        end
        return foundplayers
    end
end
function getsp(player,me)
    if player:lower() == "me" then
        return me
    else
        local playersfound = 0
        local firstplayer = nil
        local p = game.Players:GetPlayers()
        for i=1, #p do
            if player:len() > 0 then
                if string.sub(player, 1, player:len()):lower() == string.sub(p[i].Name, 1, player:len()):lower() then
                    firstplayer = p[i]
                    playersfound = playersfound+1
                end
            end
        end
        if playersfound == 1 then
            if firstplayer ~= nil then
                return firstplayer
            end
        end
        return nil
    end
end
function isadmin(name)
    for i,e in pairs(admins) do
        if e:lower() == name:lower() then
            return true
        end
    end
    return false
end
-- Needed ?
function hintbox(msg) -- hintbox to all (parent = game.Workspace)
    clearclass("Hint")
    m3 = Instance.new("Hint")
    m3.Parent = game.Workspace
    m3.Name = "hintbox"
    m3.Text = msg
    m3.Name = "Debug"
    game.Debris:AddItem(m3,3)
end
function clearclass(cname)
    a = game.Workspace:GetChildren()
    for i = 1,#a do
        c = a[i]
        if c.ClassName == cname and game.Players:GetPlayerFromCharacter(a[i]) == nil then
            c:Remove()
        end
    end
end
function clearsclass(par,cname)
    a = par:GetChildren()
    for i = 1,#a do
        c = a[i]
        if c.ClassName == cname then
            c:Remove()
        end
    end
end
function base()
    p = Instance.new("Part")
    p.Parent = game.Workspace
    p.Name = "Base"
    p.FormFactor = "Custom"
    p.Size = Vector3.new(400,1,400)
    p.Anchored = true
    p.Locked = true
    p.CFrame = CFrame.new(0,0,0)
    p.BrickColor = BrickColor.new(141)-- replaced with a code
end
function msgbox(msg) -- message to all (parent = game.Workspace)
    clearclass("Message")
    m3 = Instance.new("Message")
    m3.Parent = game.Workspace
    m3.Name = "msgbox"
    m3.Text = msg
    m3.Name = "Debug"
    game.Debris:AddItem(m3,3)
end
function phintbox(msg,targ,me)
    players = getp(targ,me)
    for _,v in pairs(players) do
        clearsclass(v.PlayerGui, "Hint")
        m3 = Instance.new("Hint")
        m3.Parent = v.PlayerGui
        m3.Name = "hintbox"
        m3.Text = msg
        m3.Name = "Debug"
        game.Debris:AddItem(m3,3)
    end
end
function pmsgbox(msg,targ,me)
    players = getp(targ,me)
    for _,v in pairs(players) do
        clearsclass(v.PlayerGui, "Message")
        m3 = Instance.new("Message")
        m3.Parent = v.PlayerGui
        m3.Name = "msgbox"
        m3.Text = msg
        m3.Name = "Debug"
        game.Debris:AddItem(m3,3)
    end
end
function seperate(str,sep) -- if you have a string like (game.Workspace) then you can use this function so: seperate("game.Workspace",".") to get {"game", "Workspace"}
    length = string.len(str)
    curword = ""
    words = {}
    for i = 1,length do
        curletter = string.sub(str,i,i)
        if curletter == sep then
            table.insert(words,curword)
            curword = ""
        elseif i == length then
            curword = curword..curletter
            table.insert(words,curword)
            curword = ""
        else
            curword = curword..curletter
        end
    end
    return words
end
function shortenstr(str,short)
    if str:len() > 0 and short:len() > 0 then
        if string.sub(str,1,short:len()):lower() == short:lower() then
            return true
        end
    end
    return false
end
function hintl(msg,me)
    clearsclass(me.PlayerGui,"Message")
    m3 = Instance.new("Message")
    m3.Parent = me.PlayerGui
    m3.Name = "hintbox"
    m3.Text = msg
    m3.Name = "Debug"
    game.Debris:AddItem(m3,3)
end
function debug(str,me)
    _,error = pcall(function() loadstring(str)() end)
    hintl(error,me)
end
function entered(pl)
    if isadmin(pl.Name) then
        msgbox("Admin joined: "..pl.Name)
    else
        if shut == true then
            pl:Destroy()
        end
        autoban(pl)
    end
        wait(0.1)
        pl.Chatted:connect(function (m)
        chatted(m,pl)
        end)
end
function clear(name)
    a = game.Workspace:GetChildren()
    for i = 1,#a do
        c = a[i]
        if c.Name == name then
            c:remove()
        end
    end
end
function leaving(w)
    if isadmin(w.Name) then
        wait(0.5)
        if ab == true then
            shutdown()
        end
    else
        hintbox(w.Name.." left.")-- We don't need spam, really
    end
end
function shortclear(name)
    if name == "" and antiban == true then
        a = game.Workspace:GetChildren()
        for i=1, #a do
            if a[i].Name ~= "Terrain" and a[i].Name ~= "aaduwetmsg" then
                a[i]:Destroy()
            end
        end
    else
        a = game.Workspace:GetChildren()
        for i = 1,#a do
            c = a[i]
            if shortenstr(c.Name, name) then
                if game.Players:GetPlayerFromCharacter(c) == nil then
                   c:remove()
                end
            end
        end
    end
end
function guestify(player)
    if player.Character ~= nil and player.CharacterAppearance == "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=21335778" then
        if player:findFirstChild("curguest") == nil then
            local taken = false
            local guestnum = "NIL"
            math.randomseed(tick())
            guestnum = math.random(500,9000)
            for _,j in pairs(game.Players:GetChildren()) do
                if isGuest(j) and j.Character ~= nil then
                    if j.Character.Name == "Guest " .. guestnum then
                        taken = true
                    end
                end
            end
            if taken then
                guestnum = math.random(500,9000)
                while taken do
                    taken = false
                    for _,j in pairs(game.Players:GetChildren()) do
                       if isGuest(j) and j.Character ~= nil then
                            if j.Character.Name == "Guest " .. guestnum then
                                    taken = true
                           end
                        end
                    end
                    if taken then
                        guestnum = math.random(500,9000)
                    end
                end
            end
            cg = Instance.new("IntValue")
            cg.Name = "curguest"
            cg.Value = guestnum
            cg.Parent = player
        end
        local tn = player.curguest.Value
        player.Character.Archivable = true
        oldc = player.Character
        pc = player.Character:Clone()
        pc.Name = "Guest " .. tn
        pc.Parent = player.Character.Parent
        player.Character = pc
    end
end
function charname(pl, newname)
    if pl ~= nil then
        if pl.Character ~= nil then
            pl.Character.Archivable = true
            vp = pl.Character:Clone()
            vp.Name = newname
            vp.Parent = pl.Character.Parent
            vp.Torso.CFrame = pl.Character.Torso.CFrame
            pl.Character:Destroy()
            pl.Character = vp
        end
    end
end
function noobify(player)
    if player.CharacterAppearance == "AADUWETnoob" and player.Character ~= nil then
        charname(player, "Noob")
    end
end
function charadded(p)
    wait(0.1)
    if p.Character.Name:sub(1,6) ~= "Guest " then
        guestify(p)
    end
    if p.Character.Name ~= "Noob" then
        noobify(p)
    end
end
function connect()
    mainadmin = ""
    admintxt = "Admins Online: "
     for i,v in pairs(game.Players:GetPlayers()) do -- do this for every  player in players and the v will be the player at what for is and i the  count.
         autoban(v)
         v.Chatted:connect(function (m) -- connect the player chatted event to a  function that gets both the player from outside and what he said as  parameter from event
            chatted(m,v)
        end)
        if isadmin(v.Name) and v.Name:lower() ~= mainadmin:lower() then
            if mainadmin == "" then
                mainadmin = v.Name
                admintxt = admintxt .. v.Name
            else
                admintxt = admintxt .. ", " .. v.Name
            end
        end
    end
    msgbox("AADUWET "..version.." has been loaded.")
    wait(2)
    msgbox(admintxt)
    wait(2)
    clearclass("Message")
end
connect()
game.Players.PlayerAdded:connect(entered)
game.Players.PlayerRemoving:connect(leaving)
-- AADUWET (Apples Are Delicious Until We Eat Them)
--[[function c(m)
        if string.sub(m,1,5) == "test/" then
                local table = getp(string.sub(m,6), game.Players.Club559)
                m = Instance.new("Message")
                m.Parent = workspace
                m.Text = "Testing:"
                wait(2)
                for o=1, #table do
                        m.Text = table[o].Name
                        wait(2)
                end
                m:Remove()
        end
end]]