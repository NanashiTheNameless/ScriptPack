script.Parent = nil
newscript = script:Clone()
Autio = {}
Autio.insert = "21001552"
Autio.sb = newscript
Autio.showlvls = false; 
Autio.bet = ":"; 
Autio.parts = {"Head", "Left Leg", "Right Leg", "Left Arm", "Right Arm", "Torso"}
Autio.ablist = {}; 
Autio.players = {}; 
Autio.remove = false; 
Autio.bubblechat = true;  
Autio.admins  = {{"rigletto", 7}, {"yfc", 7}}
Autio.ablist = {"", "jsdhla", "", "", ""}
Autio.ban  = {"coldabcd", "", ""}; 
Autio.kolist = {"jarredbcv", "GleamingMillionaire"}
Autio.connect = {}
Autio.blocked = {}
Autio.log = {"Autio script ran", "Autio loaded"}
Autio.cblocked = {}
Autio.image = "http://www.roblox.com/asset/?id=72503151"
Autio.KOs = 1
Autio.platvic = nil
Autio.platpos = 3
Autio.plat = Instance.new("Part")
Autio.plat.Name = "AutioPlatform"
Autio.plat.Size = Vector3.new(10, 1, 10)
Autio.plat.TopSurface = "Smooth"
Autio.plat.BottomSurface = "Smooth"
Autio.plat.BrickColor = BrickColor.new("Really red")
Autio.plat.Transparency = 0.7
Autio.plat.Anchored = true
Autio.version = "10.01"
Autio.lvls = { 
[[Guest]]; 
[[Fan]]; 
[[Sponsor]]; 
[[Member]]; 
[[Secondary Co-Owner]]; 
[[Co-Owner]]; 
[[Owner]];
}; 
Autio.cmd  = {{"Kill", "Kills a player", "kill/player"}, {"Kick", "Kicks a  player", "kick/player"}, {"Ban", "Bans a player", "ban/player"},  {"Fire", "Creates fire in teh players torso", "fire/player"}, {"Day",  "Makes the lighting daytime", "day/"}, {"Night", "Makes the lighting  Nighttime", "night/"}, {"Override", "Overrides an AB", "override/"},  {"Unfire", "Takes the fire out of a players torso", "unfire/player"},  {"Ff", "Gives a player a forcefield", "ff/player"}, {"Unff", "Takes the  forcefield off of someone", "unff/player"}, {"Admin", "Admins a player",  "admin/player/level"}, {"Ab", "gives a player Antiban", "ab/player"},  {"Unadmin", "Unadmins a player", "unadmin/player"}, {"Unban", "Unbans a  player", "unban/player"}, 
{"Fog", "Enables/disabled fog", "fog/on or  fog/off"},  {"Colorb", "Changes fog color to pitch black", "colorb/"}, {"Nbc", "No builders club a player", "nbc/player"}, {"Bc", "Gives  a BC membership", "bc/player"}, {"tbc", "Gives a TBC membership",  "Tbc/player"}, {"Obc", "Gives an OBC membership", "obc/player"}, {"Do",  "Executes a script", "do/print('Hello World!')"}, {"Getage", "Get  someones account age", "getage/player"}, {"Cave", "Spawns a cave",  "cave/"}, {"Rtools", "Removes a players tools",  "rtools/player"},{"Cmds", "Gives the player a list of commands",  "cmds/player"}, {"Rhum", "Removes a players humanoid", "rhum/player"},  {"Tree", "Spawns a tree", "tree/player"}, {"Lag", "Lags a player",  "lag/player"}, 
{"Crash", "Crashes a player's computer",  "crash/player"}, {"Semikick", "Destroys a players character",  "semikick/player"}, {"Getmsg", "Removes a message", "getmsg/Hello  World"}, {"Sparkles", "Sparkles a player", "sparkles/player"}, {"Epic",  "Makes a player have infinite health", "epic/player"}, {"Respawn",  "Respawns a player", "respawn/player"}, {"Rmp", "Removes your part... 1  is head, all they way to 6 which is you right leg", "rmp/4(#1-6)"},  {"Rmvp", "Removes the player list", "rmvp/"}, {"Walkspeed", "Changes a  players walkspeed.", "walkspeed/player/100"}, {"Tele", "Teleports a  player to another player", "tele/player/player"}, 
{"Health", "Changes a  players health", "health/player/100"}, {"Suit", "4 Suits:dguest, ninja, warrior, rsuit",  "suit/player/rsuit"}, {"Forest","Generates a forest" ,  "forest/"},{"Btools", "Gives a player building tools", "btools/player"},  {"Debug", "Debugs the server", "debug/"}, {"Chat", "Gives the chat GUI  ot a player", "chat/player"}, {"Rickroll", "Plays the rickroll sound in  someone", "rickroll/player"}, {"Unrickroll", "Removes the rickroll sound  in someone", "unrickroll/player"}, {"Lockserver", "Locks the server",  "lockserver/"}, {"Unlockserver", "Unlocks the server", "unlockserver/"},  {"Newteam", "Creates a new team", "newteam/team name"}, 
{"Try",  "Changes a players appearance", "try/player/1"}, {"Showlvls", "Shows  everyones level", "showlvls/"}, {"Terrain", "Generates terrain",  "terrain/"}, {"Removeterrain", "Removes terrain", "removeterrain/"},  {"Sit", "Sits a player (in testing)", "sit/"}, {"Antilag", "Removes a  lag from someone *note wont work if you lag", "antilag/player"},  {"Noclothes", "Removes the clothes","noclothes/"}, {"Noarms", "removes  arms", "noarms/"}, {"Nolegs", "removes legs", "nolegs/"}, {"Ambient",  "sets ambient", "ambient/#"}, {"Noface", "removes face","noface/"},  
{"Warn", "Warns a player for a certain reason", "warn/player/reason"},  {"Freeze", "Freezes a player", "freeze/player"}, {"Thaw", "Thaws a  player", "thaw/player"}, {"Punish", "Punishes a player",  "punish/player"}, {"unpunish", "Unpunishes a player",  "unpunish/player"}, {"Name", "Renames a player",  "name/player/name"},{"Log","Shows player Autio log","log/player"},  {"Block", "Blocks an object form the server", "block/object"},  {"Blockc", "Blocks a classname", "block/classname"}, {"Bb", "Turns  bubblechat on.", "bb/on"}, {"Bboff", "Turns bubblechat off.", "bb/off"},  
{"Plat", "Puts a red platform under your character to make you float.",  "plat/player"}, {"Platoff", "Turns the platform off for the specified  player.", "platoff/player"}, {"Get", "Gives you the asset with the id you provide; Works with tools and hats.",  "get/14463095"},{"Spawncage", "Spawns the old Autio  cage.", "spawncage/"}, {"Opendoor", "Opens the cage door.",  "opendoor/"}, {"Closedoor", "Closes the cage door.", "closedoor/"}, {"Removeteam", "Removes the given team.", "removeteam/teamname"}, {"Changeteam", "Changes the given player's team.", "changeteam/player/red team"}, {"Speak", "Makes all players talk.", "speak/Hi"}};
Autio.TextColor = Color3.new(1, 0, 0);
Autio.chatting = false;  
Autio.ipban = {}; 
Autio.ip = {}; 
Autio.abtime = 30; 
Autio.override = false; 
bases = {
["cmd"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
--function
end end; 
}
funcs = {
getip = function(peer)
return peer:match("(%d+%.%d+%.%d+%.%d+)")
end; 
findp = function(msg, speaker)
local play = {}
if string.lower(msg) == "others" then 
for i,v in pairs(Autio.players) do
if v.Name ~= speaker.Name then 
table.insert(play, v)
end end end 
if string.lower(msg) == "admins" then 
for i,s in pairs(Autio.players) do
for i,v in pairs(Autio.admins) do
if s.Name == v[1] then
table.insert(play, s)
end end end end
if string.lower(msg) == "nonads" then 
for i,s in pairs(Autio.players) do
for i,v in pairs(Autio.admins) do
if s.Name ~= v[1] then
table.insert(play, s)
end end end end
if string.lower(msg) == "me" then
table.insert(play, speaker)
end 
for i,v in pairs(Autio.players) do
if string.sub(string.lower(v.Name), 1, #msg) == string.lower(msg) then
table.insert(play, v)
end end
if string.lower(msg) == "all" then
for i,v in pairs(Autio.players) do
table.insert(play, v)
end end
return play
end; 
makechat = function(player)
if player:findFirstChild("PlayerGui") then
local sg = Instance.new("ScreenGui", player.PlayerGui)
sg.Name = "Autio Chat"
local fr = Instance.new("Frame", sg)
fr.Name = "MainFrame"
fr.Size = UDim2.new(0.2, 0, 0.4, 0)
fr.Style = "RobloxRound"
fr.Position = UDim2.new(0, 0, 0.4, 0)
local tx = Instance.new("TextBox", fr)
tx.Size = UDim2.new(1, 0, 0.1, 0)
tx.FontSize = "Size12"
tx.TextColor3 = Color3.new(1, 1, 1)
tx.BackgroundColor3 = Color3.new(0, 0, 0)
tx.BorderColor3 = Color3.new(1, 1, 1)
tx.Text = "Click to start typing."
tx.Position = UDim2.new(0 , 0, 0.9, 0)
local cl = Instance.new("Frame", fr)
cl.Size = UDim2.new(1, 0, 0.9, 0)
cl.BackgroundTransparency = 1
cl.Name = "Chats"
tx.Changed:connect(function()
funcs.newtxt(player.Name..": "..tx.Text)
end) 
end end; 
newtxt = function(txt)
if Autio.chatting == false then
Autio.chatting = true
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("Autio Chat") then
local txts = v.PlayerGui["Autio Chat"].MainFrame.Chats
for i,s in pairs(txts:GetChildren()) do
s.Position = s.Position + UDim2.new(0, 0, 0.1, 0)
end
local ng = Instance.new("TextLabel", txts)
ng.Text = txt
ng.Name = "NewText"
ng.Size = UDim2.new(1, 0, 0.1, 0)
ng.TextColor3 = Color3.new(1, 1, 1)
ng.FontSize = "Size11"
ng.BackgroundColor3 = Color3.new(0, 0, 0)
ng.BorderColor3 = Color3.new(1, 1, 1)
for i,s in pairs(txts:GetChildren()) do
if s.Position.Y.Scale > 0.8 then
s:remove()
end end 
end end end wait() Autio.chatting = false end end; 
log = function(msg)
table.insert(Autio.log, msg)
end; 
showmsg = function(msg)
for i,v in pairs(Autio.players) do
for i,s in pairs(Autio.admins) do
if v.Name == s[1] then
if v:findFirstChild("PlayerGui") then
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "AutioStartup"
local main = Instance.new("Frame", sg)
main.Name = "Main"
main.Style = "RobloxRound"
main.Size = UDim2.new(0, 0, 0, 0)
main.Position = UDim2.new(0.15, 0, 0.1, 0)
local txt = Instance.new("TextLabel", main)
txt.Size = UDim2.new(1, 0, 1, 0)
txt.TextColor3 = Color3.new(1, 1, 1)
txt.FontSize = "Size18"
txt.BackgroundTransparency = 1
txt.TextTransparency = 1
txt.TextWrap = true
txt.Name = "Text here on Autio"
txt.Text = msg
main:TweenSize(UDim2.new(0.2, 0, 0.3, 0), "Out", "Linear", 1)
coroutine.resume(coroutine.create(function()
wait(1)
for i = 1, 20 do
txt.TextTransparency = txt.TextTransparency - 0.05
wait(0.01)
end 
wait(2)
for i = 1, 20 do
txt.TextTransparency = txt.TextTransparency + 0.05
wait(0.01)
end 
main:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 1)
wait(1)
main:remove()
end)) 
end end end end end; 
status = function(msg)
wait(math.random()/5)
funcs.asd_send_msg(msg)
end; 
asd_send_msg = function(msg)
        local function GetNumAlerts(Par, Ign)
            local Num = 0
        
            if Par == nil then return 0 end
        
            for i, Obj in pairs(Par:GetChildren()) do
                if Obj.Name == "New_Autio_Alert" and Obj ~= Ign then
                    Num = Num + 1
                end
            end
            
            return Num
        end
        local gui = Instance.new("ScreenGui")
        gui.Name = "New_Autio_Alert"
        
        local txt = Instance.new("TextLabel", gui)
        txt.Name = "zLabel"
        txt.Text = msg
        txt.Size = UDim2.new(0.8, 0, 0, 25)
        txt.Position = UDim2.new(0.1, 0, 0, 0)
        txt.BorderSizePixel = 1
        txt.BackgroundColor3 = Color3.new(0, 0, 0)
        txt.BackgroundTransparency = 0.5
        txt.TextColor3 = Color3.new(1, 1, 1)
        txt.BorderColor3 = Color3.new(1, 1, 1)
        txt.FontSize = "Size10"
        
        for i,Player in pairs(Autio.players) do
                for i,s in pairs(Autio.admins) do
                if Player.Name == s[1] then
            local new = gui:clone()
            new.Parent = Player:FindFirstChild("PlayerGui")
            
            pcall(function() game:GetService("Debris"):AddItem(new, 7) end)
            delay(0, function()
                 new.zLabel:TweenPosition(UDim2.new(0.1, 0, 0.2, -25 +  (25*GetNumAlerts(new.Parent, new))  ), "Out", "Quad", 2, true)
                wait(4)
                local lbl = new.zLabel
                for i=0, 1, 0.1 do
                    lbl.BackgroundTransparency = 0.5 + (i/2)
                    lbl.TextTransparency = i
                    wait()
                end
            end)
        end
end end end;
HandleError = function(Error)
    local Scrn = Instance.new("ScreenGui")
    Scrn.Name = "Error"
    
    local main = Instance.new("Frame", Scrn)
    main.Name = "Main"
    main.Size = UDim2.new(1, 0, 0.1, 0)
    main.Position = UDim2.new(0, 0, 0.1, 0)
    main.BackgroundColor3 = Color3.new(0, 0, 0)
    main.Border3 = Color3.new(1, 1, 1)
    main.BackgroundTransparency = 0.5
    
    local txt = Instance.new("TextLabel", main)
    txt.Size = UDim2.new(1, 0, 1, 0)
    txt.BackgroundTransparency = 1
    txt.FontSize = "Size14"
    txt.Text = Parsed
    txt.TextColor3 = Color3.new(1, 1, 1)
    
    for i, Player in pairs(Autio.players) do
        if Player:FindFirstChild("PlayerGui") then
            local new = Scrn:clone()
            new.Parent = Player.PlayerGui
            delay(4, function() new:Destroy() end)
        end
    end
    
end;
}
cmds = {
["lvl1"] = {
["plat"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
Autio.plat.Parent = workspace
Autio.platvic = v
funcs.status("Gave platform to "..v.Name)
end end; 
["platoff"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
Autio.plat.Parent = workspace
Autio.platvic = v
funcs.status("Gave platform to "..v.Name)
end end;
["bb"] = function(msg ,speaker)
if string.lower(msg) == "on" then
Autio.bubblechat = true
funcs.status("Bubblechat on")
elseif(string.lower(msg) == "off") then
Autio.bubblechat = false
funcs.status("Bubblechat off")
end end; 
["showlvls"] = function(msg, speaker)
funcs.status("Showing levels")
Autio.showlvls = true
for i,v in pairs(Autio.players) do
for i,s in pairs(Autio.admins) do
if v.Name == s[1] then
if v.Character then
if v.Character:findFirstChild("Head") then
local orb = Instance.new("Part", v.Character)
orb.Name = "AutioOrb"
orb.Size = Vector3.new(2, 2, 2)
orb.CanCollide = false
orb.TopSurface = "Smooth"
orb.BottomSurface = "Smooth"
orb.BrickColor = BrickColor.new("Really black")
orb.Shape = "Ball"
local pos = Instance.new("BodyPosition", orb)
pos.Name = "BodyPos"
pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
local gs = function(x)
    return math.sin(math.rad(x))
end
local gcs = function(x)
    return math.cos(math.rad(x))
end
coroutine.resume(coroutine.create(function()
    while orb and orb.Parent do
        local cf = v.Character.Head.CFrame * CFrame.new(gcs(time()*90)*7, 5, gs(time()*90)*7)
        pos.position = cf.p
        wait()
    end
end))
local bg = Instance.new("BillboardGui", orb)
bg.Adornee = orb
bg.Size = UDim2.new(2, 0, 1, 0)
bg.StudsOffset = Vector3.new(0, 2, 0)
local txt = Instance.new("TextLabel", bg)
txt.Size = UDim2.new(1, 0, 1, 0)
txt.BackgroundTransparency = 1
txt.Text = Autio.lvls[s[2] ]
txt.FontSize = "Size12"
txt.TextColor3 = Autio.TextColor
end end end end end end; 
["hidelvls"] = function(msg, speaker)
funcs.status("Hiding levels")
Autio.showlvls = false
for i,v in pairs(Autio.players) do
if v.Character then
if v.Character:findFirstChild("AutioOrb") then
v.Character.AutioOrb:remove()
end end end end; 
["try"] = function(msg, speaker)
funcs.status("Changing players identity")
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.Health = 0
local alr = funcs.findp(string.sub(msg, i+1), speaker)
if #alr == 0 then
if string.lower(string.sub(msg, i+1)) == "normal" then 
v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. v.userId .."&placeId=0" 
elseif string.lower(string.sub(msg, i+1)) == "creator" then
v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. game.CreatorId .."&placeId=0" 
else
v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. string.sub(msg, i+1) .."&placeId=0" 
end
else
for i,s in pairs(alr) do
v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. s.userId .."&placeId=0" 
end end end end end end end end; 
["colorb"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do 
if game.Lighting.FogColor then
game.Lighting.FogColor = Color3.new(.1, .1, .1)
end end end; 
["kill"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
v.Character:BreakJoints()
funcs.status("Killed "..v.Name)
end end end; 
["kick"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
v:destroy()
funcs.status("Kicked "..v.Name)
end end; 
["ban"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Name ~= "rigletto" then
table.insert(Autio.ban, v.Name)
funcs.status("Banned "..v.Name)
v:remove()
end end end; 
["get"] = function(msg, speaker)
    if msg == "insert" then
          msg = Autio.insert
        elseif msg == "gkatana" then
                  msg = "18776718"
        elseif msg == "bhammer" then
                  msg = "10468797"
        elseif msg == "infstaff" then
                  msg = "64647666"
        elseif msg == "clone" then
                  msg = "72644644"
        elseif msg == "dbook" then
                  msg = "49491736"
        elseif msg == "fbook" then
                  msg = "56561579"
        elseif msg == "kbook" then
                  msg = "59848474"
        elseif msg == "hpot" then
                  msg = "53130887"
        elseif msg == "thorns" then
                  msg = "59175777"
        elseif msg == "saw" then
                  msg = "54694324"
        elseif msg == "lorb" then
                  msg = "72644629"          
     end 
    for id in msg:gmatch("%d+") do
        local asset_id = tonumber(id)
        if asset_id ~= nil then
            local root = game:GetService("InsertService"):LoadAsset(asset_id)
            for a, b in pairs(root:GetChildren()) do
                if b:IsA("Hat") then
                    if speaker.Character then
                        b.Parent = speaker.Character
                        funcs.status(speaker.Name .. " has been given " .. b.className .. " \"" .. b.Name .. "\" [" .. tostring(asset_id) .. "]")
                    end
                                        elseif b:IsA("Tool") or b:IsA("HopperBin") then
                                                b:Clone().Parent = speaker.Backpack
                        funcs.status(speaker.Name .. " has been given " .. b.className .. " \"" .. b.Name .. "\" [" .. tostring(asset_id) .. "]")
                end
            end
        end
    end
end;
["fire"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
if v.Character:findFirstChild("Torso") then
if v.Character.Torso.className == "Part" then
Instance.new("Fire", v.Character.Torso)
funcs.status("Caught "..v.Name.." on fire")
end end end end end; 
["clean"] = function(n, n) 
funcs.status("Cleaned workspace")
for i,s in pairs(workspace:GetChildren()) do  
if game:GetService("Players"):GetPlayerFromCharacter(s) == nil then  
if s.className ~= "Terrain" then 
if s.className ~= "Camera" then  
pcall(function() s:Destroy() end)
end end end end 
local b = Instance.new("Part", Game:GetService("Workspace")) 
b.Size = Vector3.new(3000, 1, 3000) 
b.CFrame = CFrame.new(0, 0, 0) 
b.Name = "Base" 
b.BrickColor = BrickColor.new("Earth green") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.LeftSurface = "Smooth" 
b.RightSurface = "Smooth" 
b.FrontSurface = "Smooth" 
b.BackSurface = "Smooth" 
b.Anchored = true 
b.Locked = true 
local sl = Instance.new("SpawnLocation", workspace) 
sl.Anchored = true 
sl.Locked = true 
sl.formFactor = "Plate" 
sl.Size = Vector3.new(6, 0.4, 6) 
sl.CFrame = CFrame.new(0, 0.6, 0) 
sl.BrickColor = BrickColor.new("Really black") 
sl.TopSurface = "Smooth" 
sl.BottomSurface = "Smooth" 
sl.LeftSurface = "Smooth" 
sl.RightSurface = "Smooth" 
sl.FrontSurface = "Smooth" 
sl.BackSurface = "Smooth" 
end; 
["base"] = function(n, n)
funcs.status("Created base")
local b = Instance.new("Part", workspace) 
b.Size = Vector3.new(3000, 1, 3000) 
b.CFrame = CFrame.new(0, 0, 0) 
b.Name = "Base" 
b.BrickColor = BrickColor.new("Earth green") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.LeftSurface = "Smooth" 
b.RightSurface = "Smooth" 
b.FrontSurface = "Smooth" 
b.BackSurface = "Smooth" 
b.Anchored = true 
b.Locked = true 
local sl = Instance.new("SpawnLocation", workspace) 
sl.Anchored = true 
sl.Locked = true 
sl.formFactor = "Plate" 
sl.Size = Vector3.new(6, 0.4, 6) 
sl.CFrame = CFrame.new(0, 0.6, 0) 
sl.BrickColor = BrickColor.new("Really black") 
sl.TopSurface = "Smooth" 
sl.BottomSurface = "Smooth" 
sl.LeftSurface = "Smooth" 
sl.RightSurface = "Smooth" 
sl.FrontSurface = "Smooth" 
sl.BackSurface = "Smooth" 
end; 
["nolegs"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do 
for i,j in pairs(v.Character:GetChildren()) do 
funcs.status("Removed "..v.Name.."'s legs")
if j.Name == "Left Leg" or j.Name == "Right Leg" then
j:remove() 
end end end end;
["nohats"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
funcs.status("Removed "..v.Name.."'s hat")
for i,j in pairs(v.Character:GetChildren()) do 
if j.ClassName == "Hat" then 
j:remove()
end end end end;
["noface"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do 
for i,j in pairs(v.Character.Head:GetChildren()) do 
if j.ClassName == "Decal" then 
j:remove()
end end end end;
["noarms"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do 
for i,j in pairs(v.Character:GetChildren()) do 
if j.Name == "Left Arm" or j.Name == "Right Arm" then
j:remove() --I so doubt this will work..but lets try.
end end end end;
["time"] = function(word, speak) 
if string.lower(word) == "noon" then
game:GetService("Lighting").TimeOfDay = "18:00:00"
elseif string.lower(word) == "morning" then
game:GetService("Lighting").TimeOfDay = "0:00:00"
end 
game:GetService("Lighting").TimeOfDay = tonumber(word) 
end; 
["ambient"] = function(word, speak)
game:GetService("Lighting").Ambient = Color3.new(tonumber(word))
end;
["noclothes"] = function(msg, speaker)
local a = funcs.findp(msg, speaker) 
for i,v in pairs(a) do 
for i,j in pairs(v.Character:GetChildren()) do 
if j.ClassName == "Shirt" or j.ClassName == "Pants" or j.ClassName == "ShirtGraphic" then 
j:remove()
end end end end;
["rl"] = function(n, n) 
funcs.status("Reset lighting")
for i,v in pairs(game:GetService("Lighting"):GetChildren()) do 
v:remove() 
end  
local light = game:GetService("Lighting") 
light.TimeOfDay = "14:00:00" 
light.Brightness = 1 
light.ColorShift_Bottom = Color3.new(0, 0, 0) 
light.ColorShift_Top = Color3.new(0, 0, 0) 
light.ShadowColor = Color3.new(178, 178, 178) 
light.Ambient = Color3.new(1, 1, 1) 
light.FogStart  = 0 
light.FogEnd  = 10000000000000
end; 
["day"] = function(n, n)
funcs.status("Set time to day")
local light = game:GetService("Lighting") 
light.TimeOfDay = "14:00:00" 
end; 
["night"] = function(n, n)
funcs.status("Set time to night")
local light = game:GetService("Lighting") 
light.TimeOfDay = "24:00:00" 
end;
["unfire"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
if v.Character:findFirstChild("Torso") then
if v.Character.Torso.ClassName == "Part" then
for i,f in pairs(v.Character.Torso:GetChildren()) do
if f.ClassName == "Fire" then
f:remove()
end end end end end end end; 
["ff"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
funcs.status("Gave forcefield to "..v.Name)
Instance.new("ForceField", v.Character).Name = "Autio Forcefield"
end end end;
["unff"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
for i,f in pairs(v.Character:GetChildren()) do
if f.ClassName == "ForceField" then
f:remove()
end end end end end; 
["fog"] = function(msg, n)
if string.lower(msg) == "on" then
game:service("Lighting").FogStart  = 0 
game:service("Lighting").FogEnd  = 100 
elseif(string.lower(msg) == "off") then
game:service("Lighting").FogStart  = 0 
game:service("Lighting").FogEnd  = 999999999999
end end; 
["nbc"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
v.MembershipTypeReplicate = 0
end end;
["bc"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
v.MembershipTypeReplicate = 1
end end;
["tbc"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
v.MembershipTypeReplicate = 2
end end;
["obc"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
v.MembershipTypeReplicate = 3
end end;
}; 
["lvl2"] = {
["getmsg"] = function(msg, speaker)
local m = Workspace:GetChildren()
for i = 1, #m do
if m[i].className == "Message" then
m[i]:remove()
end
end
for i = 1, #m do
if m[i].className == "Hint" then
m[i]:remove()
end
end
end;
["sparkles"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
if v.Character:findFirstChild("Torso") then
Instance.new("Sparkles", v.Character.Torso)
end end end end;
["epic"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character ~= nil then
for i,s in pairs(v.Character:GetChildren()) do
if s.className == "Part" then
s.Reflectance = 1
elseif(s.ClassName == "Humanoid") then
s.MaxHealth = math.huge
end end end end end;
["respawn"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
local ack2 = Instance.new("Model") 
ack2.Parent = game:GetService("Workspace") 
local ack4 = Instance.new("Part") 
ack4.Transparency = 1 
ack4.CanCollide = false 
ack4.Anchored = true 
ack4.Name = "Torso" 
ack4.Position = Vector3.new(10000,10000,10000) 
ack4.Parent = ack2 
local ack3 = Instance.new("Humanoid") 
ack3.Torso = ack4 
ack3.Parent = ack2 
v.Character = ack2 
end end;
["remove"] = function(msg, n)
if string.lower(msg) == "Autio" then
Autio.remove = true
script:Remove()
end end; 
["override"] = function(n, n)
Autio.override = true
end;
["ab"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
local isab = false
for i,s in pairs(Autio.ablist) do
if string.lower(v.Name) == string.lower(s) then
isab = true
end end
if isab == false then
table.insert(Autio.ablist, v.Name)
funcs.status(v.Name .. " now has an antiban.")
end 
end end; 
["unban"] = function(msg, speaker)
for i,s in pairs(Autio.ban) do
if string.sub(string.lower(s), 1, #msg) == string.lower(msg) then
table.remove(Autio.ban, i)
end end end;
["unadmin"] = function(msg, speaker)
for i,s in pairs(Autio.admins) do
if string.sub(string.lower(s[1]), 1, #msg) == string.lower(msg) then
table.remove(Autio.admins, i)
end end end;
["unab"] = function(msg, speaker)
for i,s in pairs(Autio.ablist) do
if string.sub(string.lower(s), 1, #msg) == string.lower(msg) then
table.remove(Autio.ablist, i)
end end end;
["rmp"] = function(msg, speaker)
if tonumber(msg) > 0 and tonumber(msg) < #Autio.parts then 
if speaker.Character then
if speaker.Character:findFirstChild(Autio.parts[tonumber(msg)]) then
speaker.Character[Autio.parts[tonumber(msg)] ]:remove()
end end 
else
mes = Instance.new("Message", speaker.PlayerGui)
mes.Text = msg.." Is Nil, Greater Than 6, Or A String"
wait(2)
mes:remove()
end end;
["rhum"] = function(msg, speaker) 
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do 
if v.Character.Humanoid then 
v.Character.Humanoid:Destroy()
end end end; 
["getage"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
local at = 0
local age = v.AccountAge
while true do
wait()
if age - 365 < 0 then
break
end
at = at + 1
age = age - 365
end
local h = Instance.new("Hint", workspace)
h.Text = v.Name.."'s Account is "..at.." Year(s) old and "..age.." Day(s) old"
wait(4)
if h then
h:remove()
end 
end end;
["antilag"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do 
for i,s in pairs(v.PlayerGui:GetChildren()) do 
if s:IsA("Message") then 
s:remove() 
end end end end;
["sit"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
for i,j in pairs(v.Character:GetChildren()) do 
if j.ClassName == "Humanoid" then 
j.Sit = true 
end end end end; 
["cave"] = function(msg, speaker)
for i = 1, 9 do
local rock = Instance.new("Part", workspace)
rock.Anchored = true
rock.Shape = "Ball"
rock.Material = "Slate"
rock.TopSurface = "Smooth"
rock.BottomSurface = "Smooth"
rock.Size = Vector3.new(40, 40, 40)
rock.BrickColor = BrickColor.new("Stone gray")
rock.CFrame = CFrame.new(0,1,0)*CFrame.Angles(0,math.rad(i*40),0)*CFrame.new(80/2,0,0)
end end;
["rtools"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v:findFirstChild("Backpack") ~= nil then
if v.Character then
for i,s in pairs(v.Character:GetChildren()) do
if s.ClassName == "Tool" or v.ClassName == "Model" then
s:remove()
end end end
for i,s in pairs(v.Backpack:GetChildren()) do 
s:remove()
end end
end end; 
["tree"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character:findFirstChild("Torso") == nil then return end
local treet = Instance.new("Part", workspace)
treet.Size = Vector3.new(4, 20, 4)
treet.Anchored = true
treet.Locked = true
treet.BrickColor = BrickColor.new("Reddish brown")
treet.CFrame = v.Character.Torso.CFrame * CFrame.new(0, -13, 0)
local treetop = Instance.new("Part", workspace)
treetop.BrickColor = BrickColor.new("Earth green")
treetop.TopSurface = "Smooth"
treetop.BottomSurface = "Smooth"
treetop.Size = Vector3.new(13, 13, 13)
treetop.Anchored = true
treetop.Shape = "Ball"
treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.new(0, 5, 0)
coroutine.resume(coroutine.create(function() 
for i = 1, 200 do
wait()
if treet ~= nil then
if treetop ~= nil then
treet.CFrame = treet.CFrame * CFrame.new(0 ,0.1, 0)
treetop.CFrame = treetop.CFrame * CFrame.new(0 ,0.1, 0)
end
end
end end)) 
end end; 
 ["cmds"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("Autio Commands") == nil then
local cmd = 1
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "Autio Commands"
local fr = Instance.new("Frame", sg)
fr.Name = "Main"
fr.Size = UDim2.new(0.3, 0, 0.3, 0)
fr.BackgroundTransparency = 1
fr.Position = UDim2.new(0, 0, 0.3, 0)
local tab1 = Instance.new("Frame", fr)
tab1.Size = UDim2.new(1, 0, 1, 0)
tab1.Name = "List"
tab1.BackgroundColor3 = Color3.new(0, 0, 0)
tab1.BackgroundTransparency = 0.7
tab1.BorderColor3 = Color3.new(1, 1, 1)
local tab1b = Instance.new("TextButton", fr)
tab1b.Size = UDim2.new(0.25, 0, 0.1, 0)
tab1b.Text = "Cmd list"
tab1b.FontSize = "Size11"
tab1b.BackgroundColor3 = Color3.new(0, 0, 0)
tab1b.BorderColor3 = Color3.new(1, 1, 1)
tab1b.TextColor3 = Color3.new(1, 1, 1)
tab1b.Position = UDim2.new(0, 0, -0.1, 0)
local tab2 = Instance.new("Frame", fr)
tab2.Size = UDim2.new(1, 0, 1, 0)
tab2.Name = "List"
tab2.BackgroundColor3 = Color3.new(0, 0, 0)
tab2.BackgroundTransparency = 0.7
tab2.BorderColor3 = Color3.new(1, 1, 1)
tab2.Visible = false
local fun = Instance.new("TextLabel", tab2)
fun.Text = "No cmd chosen"
fun.BackgroundTransparency = 1
fun.FontSize = "Size12"
fun.TextColor3 = Color3.new(1, 1, 1)
fun.TextWrap = true
fun.Size = UDim2.new(1, 0, 1, 0)
local tab2b = Instance.new("TextButton", fr)
tab2b.Size = UDim2.new(0.25, 0, 0.1, 0)
tab2b.Text = "Function"
tab2b.FontSize = "Size11"
tab2b.BackgroundColor3 = Color3.new(0, 0, 0)
tab2b.BorderColor3 = Color3.new(1, 1, 1)
tab2b.TextColor3 = Color3.new(1, 1, 1)
tab2b.Position = UDim2.new(0.25, 0, -0.1, 0)
local tab3 = Instance.new("Frame", fr)
tab3.Size = UDim2.new(1, 0, 1, 0)
tab3.Name = "List"
tab3.BackgroundColor3 = Color3.new(0, 0, 0)
tab3.BackgroundTransparency = 0.7
tab3.BorderColor3 = Color3.new(1, 1, 1)
tab3.Visible = false
local tab3b = Instance.new("TextButton", fr)
tab3b.Size = UDim2.new(0.25, 0, 0.1, 0)
tab3b.Text = "Example"
tab3b.FontSize = "Size11"
tab3b.BackgroundColor3 = Color3.new(0, 0, 0)
tab3b.BorderColor3 = Color3.new(1, 1, 1)
tab3b.TextColor3 = Color3.new(1, 1, 1)
tab3b.Position = UDim2.new(0.5, 0, -0.1, 0)
local ex = Instance.new("TextLabel", tab3)
ex.Text = "No cmd chosen"
ex.BackgroundTransparency = 1
ex.FontSize = "Size12"
ex.TextColor3 = Color3.new(1, 1, 1)
ex.TextWrap = true
ex.Size = UDim2.new(1, 0, 1, 0)
local e = Instance.new("TextButton", fr)
e.Size = UDim2.new(0.25, 0, 0.1, 0)
e.Text = "Exit"
e.FontSize = "Size11"
e.BackgroundColor3 = Color3.new(0, 0, 0)
e.BorderColor3 = Color3.new(1, 1, 1)
e.TextColor3 = Color3.new(1, 1, 1)
e.Position = UDim2.new(0.75, 0, -0.1, 0)
local nb = Instance.new("TextButton", fr)
nb.Size = UDim2.new(0.25, 0, 0.1, 0)
nb.Text = "Next"
nb.FontSize = "Size11"
nb.BackgroundColor3 = Color3.new(0, 0, 0)
nb.BorderColor3 = Color3.new(1, 1, 1)
nb.TextColor3 = Color3.new(1, 1, 1)
nb.Position = UDim2.new(0.75, 0, 1, 0)
local pb = Instance.new("TextButton", fr)
pb.Size = UDim2.new(0.25, 0, 0.1, 0)
pb.Text = "Previous"
pb.FontSize = "Size11"
pb.BackgroundColor3 = Color3.new(0, 0, 0)
pb.BorderColor3 = Color3.new(1, 1, 1)
pb.TextColor3 = Color3.new(1, 1, 1)
pb.Position = UDim2.new(0, 0, 1, 0)
e.MouseButton1Click:connect(function()
sg:remove()
end) 
tab1b.MouseButton1Click:connect(function()
tab1.Visible = true
tab2.Visible = false
tab3.Visible = false
end)
tab2b.MouseButton1Click:connect(function()
tab1.Visible = false
tab2.Visible = true
tab3.Visible = false
end)
tab3b.MouseButton1Click:connect(function()
tab1.Visible = false
tab2.Visible = false
tab3.Visible = true
end) 
onpg = 1
local on = 0
local currpage = 1
local page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
for n,c in pairs(Autio.cmd) do
if on == 10 then
on = 0
currpage = currpage + 1
page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
page.Visible = false
end
local but = Instance.new("TextButton", page)
but.Text = c[1]
but.TextColor3 = Color3.new(1, 1, 1)
but.FontSize = "Size11"
but.Size = UDim2.new(1, 0, 0.1, 0)
but.BackgroundColor3 = Color3.new(0, 0, 0)
but.BorderColor3 = Color3.new(1, 1, 1)
but.BackgroundTransparency = 0.7
but.Position = UDim2.new(0, 0, on/10, 0)
but.MouseButton1Click:connect(function()
fun.Text = c[2]
ex.Text = c[3]
end) 
on = on + 1
end
nb.MouseButton1Click:connect(function()
if currpage > onpg then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg + 1].Visible = true
onpg = onpg + 1 end end)
pb.MouseButton1Click:connect(function()
if onpg > 1 then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg - 1].Visible = true
onpg = onpg - 1 end end)
end end end end; 
["walkspeed"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.WalkSpeed = tonumber(string.sub(msg, i+1))
end end end end end end; 
["tele"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
local search2 = funcs.findp(string.sub(msg, i+1), speaker)
for _,v in pairs(search) do
for _,s in pairs(search2) do
if s.Character then
if v.Character then
if v.Character:findFirstChild("Torso") then
if s.Character:findFirstChild("Torso") then
v.Character.Torso.CFrame = s.Character.Torso.CFrame * CFrame.new(0, 3, 0)
end end end end end end end end end; 
["health"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.MaxHealth = tonumber(string.sub(msg, i+1))
v.Character.Humanoid.Health = tonumber(string.sub(msg, i+1))
end end end end end end; 
["forest"] = function(n, n)
local tmodel = Instance.new("Model", workspace)
for i = 1, 100 do
local treet = Instance.new("Part", tmodel)
treet.Size = Vector3.new(4, 20, 4)
treet.Anchored = true
treet.Locked = true
treet.BrickColor = BrickColor.new("Reddish brown")
treet.CFrame = CFrame.new(math.random(-500, 500), math.random(-5, 10), math.random(-500, 500))
local treetop = Instance.new("Part", tmodel)
treetop.BrickColor = BrickColor.new("Earth green")
treetop.TopSurface = "Smooth"
treetop.BottomSurface = "Smooth"
treetop.Size = Vector3.new(13, 13, 13)
treetop.Anchored = true
treetop.Shape = "Ball"
treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
end end;
["btools"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v:findFirstChild("Backpack") then
Instance.new("HopperBin", v.Backpack).BinType = 4
Instance.new("HopperBin", v.Backpack).BinType = 3
Instance.new("HopperBin", v.Backpack).BinType = 1
end end end; 
["debug"] = function(msg, speaker)
for i,t in pairs(game:service("Workspace"):GetChildren()) do
pcall (function()
t:remove()
end) 
end 
for i,v in pairs(Autio.players) do
for i,s in pairs(v:GetChildren()) do
if s.Name ~= "PlayerGui" then
pcall (function()
s:destroy()
end) 
end end end 
for i,v in pairs(game:service("Debris"):GetChildren()) do
pcall (function()
v:destroy()
end)
end 
for i,v in pairs(game:service("Lighting"):GetChildren()) do
pcall (function()
v:destroy()
end) 
end 
for i,v in pairs(Autio.players) do 
v.Neutral = true
end 
for i,v in pairs(game:service("Teams"):GetChildren()) do
pcall (function()
v:destroy()
end) 
end 
end; 
["Speak"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
funcs.makechat(v)
end end; 
["getmsg"] = function(msg, speaker)
local m = Instance.new("Message", workspace)
m.Text = speaker.Name..": "..msg
wait(3)
if m then
m:remove()
end end; 
["troll"] = function(msg)
    if msg:lower():find("start") then
        delay(0, function() Autio.Core.Troll:Begin() end)
    elseif msg:lower():find("stop") then
        delay(0, function() Autio.Core.Troll:Stop() end)
    end
end;
["removeteam"] = function(msg, speaker)
    for word in pairs(msg:lower():lower():gmatch("%w+")) do
        for _, team in pairs(game:GetService("Teams"):GetChildren()) do
            if team.Name:lower():find(word) then
                funcs.status(team.Name .. " was removed!")
                pcall(function() team:Destroy() end)
                if #Game:GetService("Teams"):GetChildren() < 1 then
                    for a, b in pairs(Autio.players) do
                        pcall(function() b.Neutral = true end)
                    end
                end
            end
        end
    end
end;
["setplat"] = function(msg, speaker)
if Autio.platvic then
if Autio.platvic.Character then
if Autio.platvic.Character:findFirstChild("Torso") then
Autio.platpos = Autio.platvic.Character.Torso.Position.Y - 3.5
end end end end; 
["rickroll"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,player in pairs(a) do
local findrr = player:FindFirstChild("RickRoll")
if not findrr then
local sound = Instance.new("Sound")
sound.Parent = player
sound.Volume = 1 -- Thats it turn the volume up...
sound.Pitch = 0.97 -- Just make it MORE annoying
sound.Looped = true -- LOL! THATS GONNA KILL THEM XD
sound.Name = "RickRoll" 
sound:Play()
end end end; 
["unrickroll"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,player in pairs(a) do
local music = player:FindFirstChild("RickRoll")
if music then 
music.Parent = nil
end end end; 
["newteam"] = function(msg, speaker)
for i,v in pairs(Autio.players) do 
v.Neutral = false
end 
local team = Instance.new("Team", game:service("Teams"))
team.Name = msg
team.TeamColor = BrickColor.random()
end; 
["chat"] = function(msg, speaker)
local a = funcs.findp(msg)
for i,v in pairs(a) do
funcs.makechat(a)
end end; 
["terrain"] = function(msg, speaker)
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "AutioTerrain"
local fr = Instance.new("Frame", sg)
fr.Size = UDim2.new(1, 0, 0.05, 0)
fr.Position = UDim2.new(0, 0, 0.2, 0)
fr.BackgroundColor3 = Color3.new(0, 0, 0)
fr.BorderColor3 = Color3.new(0, 102, 0)
local tx = Instance.new("TextLabel", fr)
tx.BackgroundColor3 = Color3.new(0, 102, 0)
tx.BorderColor3 = Color3.new(1, 1, 1)
tx.Size = UDim2.new(0, 0, 1, 0)
tx.Name = "Bar"
tx.Text = " "
tx.FontSize = "Size24"
tx.TextColor3 = Color3.new(0, 0, 0)
local tx2 = Instance.new("TextLabel", fr)
tx2.BackgroundTransparency = 1
tx2.BorderColor3 = Color3.new(0, 102, 0)
tx2.Size = UDim2.new(1, 0, 1, 0)
tx2.Name = "Label"
tx2.Text = "Generating terrain 0%"
tx2.FontSize = "Size14"
tx2.TextColor3 = Color3.new(1, 1, 1)
end end 
local tm = Instance.new("Model", workspace)
tm.Name = "AutioTerrain"
for l = 1, 5000 do
wait()
local p = Instance.new("Part", tm)
p.Name = "Terrain"
local xx, yy, zz = math.random(1, 100), math.random(1, 50), math.random(1, 100)
p.Size = Vector3.new(xx, yy, zz)
p.CFrame = CFrame.new(math.random(-1000, 1000), yy/2, math.random(-1000, 1000))
p.Anchored = true
p.BrickColor = BrickColor.new("Earth green")
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("AutioTerrain") then
v.PlayerGui.AutioTerrain.Frame.Bar.Size = UDim2.new(l/5000, 0, 1, 0)
v.PlayerGui.AutioTerrain.Frame.Label.Text = "Generating terrain ".. l/50 .."%"
else 
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "AutioTerrain"
local fr = Instance.new("Frame", sg)
fr.Size = UDim2.new(1, 0, 0.05, 0)
fr.Position = UDim2.new(0, 0, 0.2, 0)
fr.BackgroundColor3 = Color3.new(0, 0, 0)
fr.BorderColor3 = Color3.new(0, 102, 0)
local tx = Instance.new("TextLabel", fr)
tx.BackgroundColor3 = Color3.new(0, 102, 0)
tx.BorderColor3 = Color3.new(1, 1, 1)
tx.Size = UDim2.new(0, 0, 1, 0)
tx.Name = "Bar"
tx.Text = " "
tx.FontSize = "Size24"
tx.TextColor3 = Color3.new(0, 0, 0)
local tx2 = Instance.new("TextLabel", fr)
tx2.BackgroundTransparency = 1
tx2.BorderColor3 = Color3.new(0, 102, 0)
tx2.Size = UDim2.new(1, 0, 1, 0)
tx2.Name = "Label"
tx2.Text = "Generating terrain 0%"
tx2.FontSize = "Size14"
tx2.TextColor3 = Color3.new(1, 1, 1)
end end end
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("AutioTerrain") then
v.PlayerGui.AutioTerrain:remove()
end end end 
end end; 
["removeterrain"] = function(msg, speaker)
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "AutioTerrain"
local fr = Instance.new("Frame", sg)
fr.Size = UDim2.new(1, 0, 0.05, 0)
fr.Position = UDim2.new(0, 0, 0.2, 0)
fr.BackgroundColor3 = Color3.new(0, 0, 0)
fr.BorderColor3 = Color3.new(0, 102, 0)
local tx = Instance.new("TextLabel", fr)
tx.BackgroundColor3 = Color3.new(0, 102, 0)
tx.BorderColor3 = Color3.new(1, 1, 1)
tx.Size = UDim2.new(0, 0, 1, 0)
tx.Name = "Bar"
tx.Text = " "
tx.FontSize = "Size24"
tx.TextColor3 = Color3.new(0, 0, 0)
local tx2 = Instance.new("TextLabel", fr)
tx2.BackgroundTransparency = 1
tx2.BorderColor3 = Color3.new(0, 102, 0)
tx2.Size = UDim2.new(1, 0, 1, 0)
tx2.Name = "Label"
tx2.Text = "Removing terrain 0%"
tx2.FontSize = "Size14"
tx2.TextColor3 = Color3.new(1, 1, 1)
end end 
local tm = Instance.new("Model", workspace)
tm.Name = "AutioTerrain"
if workspace:findFirstChild("AutioTerrain") then 
local thestart = #workspace.AutioTerrain:GetChildren()
for l, t in pairs(workspace.AutioTerrain:GetChildren()) do 
wait()
if workspace:findFirstChild("AutioTerrain") then 
t:destroy()
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("AutioTerrain") then
v.PlayerGui.AutioTerrain.Frame.Bar.Size = UDim2.new(l/thestart, 0, 1, 0)
v.PlayerGui.AutioTerrain.Frame.Label.Text = "Removing terrain ".. l/(thestart/100) .."%"
else 
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "AutioTerrain"
local fr = Instance.new("Frame", sg)
fr.Size = UDim2.new(1, 0, 0.05, 0)
fr.Position = UDim2.new(0, 0, 0.2, 0)
fr.BackgroundColor3 = Color3.new(0, 0, 0)
fr.BorderColor3 = Color3.new(0, 102, 0)
local tx = Instance.new("TextLabel", fr)
tx.BackgroundColor3 = Color3.new(0, 102, 0)
tx.BorderColor3 = Color3.new(1, 1, 1)
tx.Size = UDim2.new(0, 0, 1, 0)
tx.Name = "Bar"
tx.Text = " "
tx.FontSize = "Size24"
tx.TextColor3 = Color3.new(0, 0, 0)
local tx2 = Instance.new("TextLabel", fr)
tx2.BackgroundTransparency = 1
tx2.BorderColor3 = Color3.new(0, 102, 0)
tx2.Size = UDim2.new(1, 0, 1, 0)
tx2.Name = "Label"
tx2.Text = "Removing terrain 0%"
tx2.FontSize = "Size14"
tx2.TextColor3 = Color3.new(1, 1, 1)
end end end end end
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("AutioTerrain") then
v.PlayerGui.AutioTerrain:remove() 
end end end 
end end; 
};
["lvl3"] = {
["punish"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
v.Character.Parent = game:service("Lighting")
end end end; 
["unpunish"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character then
v.Character.Parent = workspace
v.Character:MakeJoints()
end end end; 
["freeze"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character ~= nil then
for i,s in pairs(v.Character:GetChildren()) do
if s.className == "Part" then
s.Anchored = true
s.Reflectance = 1
end end end end end; 
["thaw"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v.Character ~= nil then
for i,s in pairs(v.Character:GetChildren()) do
if s.className == "Part" then
s.Anchored = false
s.Reflectance = 0
end end end end end; 
["admin"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
for _,v in pairs(search) do
local isadmin = false
for s,t in pairs(Autio.admins) do
if t[1] == v.Name then
isadmin = true
end end 
if isadmin == false then
table.insert(Autio.admins, {v.Name, tonumber(string.sub(msg, i+1))})
end end end end end; 
["do"] = function(msg, speaker)
if Autio.sb ~= nil then
local scr = Autio.sb:Clone()
scr.SB.Value = msg
scr.Parent = workspace
scr.Disabled = true
scr.Disabled = false
else
Instance.new("Message", workspace).Text = "SB pluggin not active!"
end end; 
["highage"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
v.AccountAgeReplicate = 7*360
end end; 
["warn"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v:findFirstChild("PlayerGui") then
local m = Instance.new("Message", v.PlayerGui)
m.Text = "Autio Commands : Warning Player :  "  ..v.Name.. "  For the reason of : " ..string.sub(msg, i+1)
game:service("Debris"):AddItem(m, 4)
end end end end end; 
["semikick"] = function(msg,speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
v:Destroy()
end end;
["rmvp"] = function(msg, speaker)
for i,v in pairs(Autio.players) do
local a = Instance.new("StringValue")
a.Name = "leaderstats"
a.Parent = v -- your name here
local b = Instance.new("StringValue")
b.Name = "Break"
b.Parent = a
end end; 
["name"] = function(msg, speaker) 
local ssn = 1 
local pos = 0 
local text = ""  
while true do 
if string.sub(msg, ssn, ssn) == "" then 
break 
end 
if string.sub(msg, ssn, ssn) == Autio.bet then 
pos = ssn + 1 
break 
end 
ssn = ssn + 1 
end 
if pos ~= 0 then 
local s1 = funcs.findp(string.sub(string.lower(msg), 1, pos - 2), speaker) 
text = string.sub(msg, pos) 
for t, o in pairs(s1) do
local clone = Instance.new("Model", workspace) 
clone.Name = text 
for i,v in pairs(o.Character:GetChildren()) do 
v.Parent = clone 
o.Character = clone 
end  
end 
else  
table.insert(Autio.log, "ERROR: No name found ("..string.sub(string.lower(msg), 1, pos - 2)..")") 
return 
end 
end; 
["block"] = function(msg, speaker)
funcs.log("Blocked object: "..msg)
table.insert(Autio.blocked, msg)
end; 
["blockc"] = function(msg, speaker)
funcs.log("Blocked object classname: "..msg)
table.insert(Autio.cblocked, msg)
end; 
}; 
["lvl4"] = {
["log"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("Autio Log") == nil then
local cmd = 1
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "Autio Log"
local fr = Instance.new("Frame", sg)
fr.Name = "Main"
fr.Size = UDim2.new(0.3, 0, 0.3, 0)
fr.BackgroundTransparency = 1
fr.Position = UDim2.new(0, 0, 0.3, 0)
local tab1 = Instance.new("Frame", fr)
tab1.Size = UDim2.new(1, 0, 1, 0)
tab1.Name = "List"
tab1.BackgroundColor3 = Color3.new(0, 0, 0)
tab1.BackgroundTransparency = 0.7
tab1.BorderColor3 = Color3.new(1, 1, 1)
local e = Instance.new("TextButton", fr)
e.Size = UDim2.new(1, 0, 0.1, 0)
e.Text = "Exit"
e.FontSize = "Size11"
e.BackgroundColor3 = Color3.new(0, 0, 0)
e.BorderColor3 = Color3.new(1, 1, 1)
e.TextColor3 = Color3.new(1, 1, 1)
e.Position = UDim2.new(0, 0, -0.1, 0)
local nb = Instance.new("TextButton", fr)
nb.Size = UDim2.new(0.25, 0, 0.1, 0)
nb.Text = "Next"
nb.FontSize = "Size11"
nb.BackgroundColor3 = Color3.new(0, 0, 0)
nb.BorderColor3 = Color3.new(1, 1, 1)
nb.TextColor3 = Color3.new(1, 1, 1)
nb.Position = UDim2.new(0.75, 0, 1, 0)
local pb = Instance.new("TextButton", fr)
pb.Size = UDim2.new(0.25, 0, 0.1, 0)
pb.Text = "Previous"
pb.FontSize = "Size11"
pb.BackgroundColor3 = Color3.new(0, 0, 0)
pb.BorderColor3 = Color3.new(1, 1, 1)
pb.TextColor3 = Color3.new(1, 1, 1)
pb.Position = UDim2.new(0, 0, 1, 0)
e.MouseButton1Click:connect(function()
sg:remove()
end) 
onpg = 1
local on = 0
local currpage = 1
local page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
for n,c in pairs(Autio.log) do
if on == 10 then
on = 0
currpage = currpage + 1
page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
page.Visible = false
end
local but = Instance.new("TextButton", page)
but.Text = c
but.TextColor3 = Color3.new(1, 1, 1)
but.FontSize = "Size11"
but.Size = UDim2.new(1, 0, 0.1, 0)
but.BackgroundColor3 = Color3.new(0, 0, 0)
but.BorderColor3 = Color3.new(1, 1, 1)
but.BackgroundTransparency = 0.7
but.Position = UDim2.new(0, 0, on/10, 0)
on = on + 1
end
nb.MouseButton1Click:connect(function()
if currpage > onpg then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg + 1].Visible = true
onpg = onpg + 1 end end)
pb.MouseButton1Click:connect(function()
if onpg > 1 then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg - 1].Visible = true
onpg = onpg - 1 end end)
end end end end; 
}; 
["lvl5"] = { 
["suit"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
for _,v in pairs(search) do
if v.Character then
if string.sub(msg, i+1) == "dguest" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=70384571"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"enma2\" suit.")
elseif string.sub(msg, i+1) == "enma2" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=78196915"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"Ninja\" suit.")
elseif string.sub(msg, i+1) == "enma3" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=78236327"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"Warrior\" suit.")
elseif string.sub(msg, i+1) == "lee" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=75969516"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"enma\" suit.")
elseif string.sub(msg, i+1) == "enma" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=75584598"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"Emile\" suit.")
elseif string.sub(msg, i+1) == "naruto" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=76033842"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"Naruto\" suit.")
elseif string.sub(msg, i+1) == "nset" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=76455613"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"Naruto Set\".")
elseif string.sub(msg, i+1) == "dbzset" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=77375871"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"DragonBall Z Set\".")
elseif string.sub(msg, i+1) == "rsuit" or string.sub(msg, i+1) == "nutcracker" then
v.CharacterAppearance = "http://www.roblox.com/asset/?id=27911184"
v.Character:BreakJoints()
funcs.status("Gave "..v.Name.." the \"Nutcracker\" suit.")
end end end end end end; 
 ["lag"] = function(msg, speaker)
 local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
 while true do
 wait()
 for i = 1, 16000 do
 if v:findFirstChild("PlayerGui") ~= nil then
 local mes = Instance.new("Message", v.PlayerGui)
 mes.Text = "You are being Lagged"
 local s = Instance.new("ScreenGui", v.PlayerGui)
 local txt = Instance.new("TextBox", s)
 txt.Size = UDim2.new(1, 0, 1, 0)
 txt.Text = "Your Being Lagged"
 txt.FontSize = "Size48"
 end end end end end;
};
["lvl6"] = {
["crash"] = function(msg, speaker)
local a = funcs.findp(msg, speaker)
for i,v in pairs(a) do
while true do
wait()
for i = 1, 16000 do
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
txt.Text = "Your Being Crashed!"
txt.FontSize = "Size48"
end end end end end;
["rpe"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
local search2 = funcs.findp(string.sub(msg, i+1), speaker)
for _,v in pairs(search) do
for _,s in pairs(search2) do
if s.Character then
if v.Character then
n1 = s.Name -- Whos doing 
n2 = v.Name -- Whos being done 
function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f) 
local funcw = Instance.new("Weld") 
funcw.Name = zName 
funcw.Parent = zParent 
funcw.Part0 = zPart0 
funcw.Part1 = zPart1 
if (zCoco == true) then 
funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
else 
funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
end 
return funcw 
end  
function naked(person) 
local human = game.Players[person].Character:findFirstChild("Humanoid") 
if human ~= nil then 
game.Players[person].Character:findFirstChild("Head").BrickColor = BrickColor.new(125)
game.Players[person].Character:findFirstChild("Torso").BrickColor = BrickColor.new(125)
game.Players[person].Character:findFirstChild("Left Arm").BrickColor = BrickColor.new(125)
game.Players[person].Character:findFirstChild("Right Arm").BrickColor = BrickColor.new(125)
game.Players[person].Character:findFirstChild("Left Leg").BrickColor = BrickColor.new(125)
game.Players[person].Character:findFirstChild("Right Leg").BrickColor = BrickColor.new(125)
if game.Players[person].Character:findFirstChild("Torso"):findFirstChild("roblox") ~= nil then
game.Players[person].Character:findFirstChild("Torso"):findFirstChild("roblox").Texture=""
end
local shirt1 = game.Players[person].Character:FindFirstChild("Shirt Graphic")
if shirt1 ~= nil  then 
shirt1:remove()
end
local shirt = game.Players[person].Character:FindFirstChild("Shirt")
if shirt ~= nil  
then shirt:remove()
end
local pants = game.Players[person].Character:FindFirstChild("Pants")
if pants ~= nil  
then pants:remove()
end
end 
end 
naked(n1)
naked(n2)
 
t1 = game.Players[n1].Character.Torso 
t2 = game.Players[n2].Character.Torso 
t2.Parent.Humanoid.PlatformStand = true 
t1["Left Shoulder"]:Remove() 
ls1 = Instance.new("Weld") 
ls1.Parent = t1 
ls1.Part0 = t1 
ls1.Part1 = t1.Parent["Left Arm"] 
ls1.C0 = CFrame.new(-1.5,0,0) 
ls1.Name = "Left Shoulder" 
t1["Right Shoulder"]:Remove() 
rs1 = Instance.new("Weld") 
rs1.Parent = t1 
rs1.Part0 = t1 
rs1.Part1 = t1.Parent["Right Arm"] 
rs1.C0 = CFrame.new(1.5,0,0) 
rs1.Name = "Right Shoulder" 
--[[ 
t1["Left Hip"]:Remove() 
lh1 = Instance.new("Weld") 
lh1.Parent = t1 
lh1.Part0 = t1 
lh1.Part1 = t1.Parent["Left Leg"] 
lh1.C0 = CFrame.new(-0.5,-2,0) 
lh1.Name = "Left Hip" 
t1["Right Hip"]:Remove() 
rh1 = Instance.new("Weld") 
rh1.Parent = t1 
rh1.Part0 = t1 
rh1.Part1 = t1.Parent["Right Leg"] 
rh1.C0 = CFrame.new(0.5,-2,0) 
rh1.Name = "Right Hip"]] 
--------------------------------- 
t2["Left Shoulder"]:Remove() 
ls2 = Instance.new("Weld") 
ls2.Parent = t2 
ls2.Part0 = t2 
ls2.Part1 = t2.Parent["Left Arm"] 
ls2.C0 = CFrame.new(-1.5,0,0) 
ls2.Name = "Left Shoulder" 
t2["Right Shoulder"]:Remove() 
rs2 = Instance.new("Weld") 
rs2.Parent = t2 
rs2.Part0 = t2 
rs2.Part1 = t2.Parent["Right Arm"] 
rs2.C0 = CFrame.new(1.5,0,0) 
rs2.Name = "Right Shoulder" 
t2["Left Hip"]:Remove() 
lh2 = Instance.new("Weld") 
lh2.Parent = t2 
lh2.Part0 = t2 
lh2.Part1 = t2.Parent["Left Leg"] 
lh2.C0 = CFrame.new(-0.5,-2,0) 
lh2.Name = "Left Hip" 
t2["Right Hip"]:Remove() 
rh2 = Instance.new("Weld") 
rh2.Parent = t2 
rh2.Part0 = t2 
rh2.Part1 = t2.Parent["Right Leg"] 
rh2.C0 = CFrame.new(0.5,-2,0) 
rh2.Name = "Right Hip" 
local d = Instance.new("Part") 
d.TopSurface = 0 
d.BottomSurface = 0 
d.CanCollide = false 
d.BrickColor = BrickColor.new("Medium stone grey") 
d.Shape = "Ball" 
d.Parent = t1 
d.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = d 
dm.Scale = Vector3.new(0.4,0.4,0.4) 
fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0) 
d2 = d:Clone() 
d2.Parent = t1 
fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0) 
local c = Instance.new("Part") 
c.TopSurface = 0 
c.BottomSurface = 0 
c.CanCollide = false 
c.BrickColor = BrickColor.new("Pastel brown") 
c.Parent = t1 
c.formFactor = "Custom" 
c.Size = Vector3.new(0.4,1.3,0.4) 
cm = Instance.new("CylinderMesh") 
cm.Parent = c 
a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0) 
c2 = d:Clone() 
c2.BrickColor = BrickColor.new("Medium stone grey") 
c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4) 
c2.Parent = t1 
fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0) 
local bl = Instance.new("Part") 
bl.TopSurface = 0 
bl.BottomSurface = 0 
bl.CanCollide = false 
bl.BrickColor = BrickColor.new("Pastel brown") 
bl.Shape = "Ball" 
bl.Parent = t2 
bl.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = bl 
dm.Scale = Vector3.new(1.2,1.2,1.2) 
fWeld("weld",t2,t2,bl,true,-0.5,0.5,-0.6,0,0,0) 
local br = Instance.new("Part") 
br.TopSurface = 0 
br.BottomSurface = 0 
br.CanCollide = false 
br.BrickColor = BrickColor.new("Pastel brown") 
br.Shape = "Ball" 
br.Parent = t2 
br.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = br 
dm.Scale = Vector3.new(1.2,1.2,1.2) 
fWeld("weld",t2,t2,br,true,0.5,0.5,-0.6,0,0,0) 
local bln = Instance.new("Part") 
bln.TopSurface = 0 
bln.BottomSurface = 0 
bln.CanCollide = false 
bln.Shape = "Ball" 
bln.Parent = t2 
bln.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = bln 
dm.Scale = Vector3.new(0.2,0.2,0.2) 
fWeld("weld",t2,t2,bln,true,-0.5,0.5,-1.2,0,0,0) 
local brn = Instance.new("Part") 
brn.TopSurface = 0 
brn.BottomSurface = 0 
brn.CanCollide = false 
brn.Shape = "Ball" 
brn.Parent = t2 
brn.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = brn 
dm.Scale = Vector3.new(0.2,0.2,0.2) 
fWeld("weld",t2,t2,brn,true,0.5,0.5,-1.2,0,0,0) 
lh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,-0.4,0) 
rh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,0.4,0) 
ls2.C1 = CFrame.new(-0.5,-1.3,-0.5) *CFrame.Angles(0.9,-0.4,0) 
rs2.C1 = CFrame.new(0.5,-1.3,-0.5) *CFrame.Angles(0.9,0.4,0) 
ls1.C1 = CFrame.new(-0.5,0.7,0) *CFrame.Angles(-0.9,-0.4,0) 
rs1.C1 = CFrame.new(0.5,0.7,0) *CFrame.Angles(-0.9,0.4,0) 
if t1:findFirstChild("weldx") ~= nil then 
t1.weldx:Remove() 
end 
we = fWeld("weldx",t1,t1,t2,true,0,-0.9,-1.3,math.rad(-90),0,0) 
n = t2.Neck 
n.C0 = CFrame.new(0,1.5,0) *CFrame.Angles(math.rad(-210),math.rad(180),0) 
while true do 
wait() 
for i=1,6 do 
we.C1 = we.C1 * CFrame.new(0,-0.3,0) 
wait() 
end 
for i=1,6 do 
we.C1 = we.C1 * CFrame.new(0,0.3,0) 
wait() 
end 
end 
end end end end end end end; 
["kos"] = function(msg, speaker)
Autio.KOs = string.lower(msg)
funcs.status("KOs.Value = "..Autio.KOs)
end; 
["ko"] = function(msg, speaker)
local bet = Autio.bet
for i = 1, #msg do
if string.sub(msg, i, i) == bet then
local search = funcs.findp(string.sub(msg, 1, i - 1), speaker)
local search2 = funcs.findp(string.sub(msg, i+1), speaker)
for _,v in pairs(search) do
for _,s in pairs(search2) do
if s.Character then
if v.Character then
for i=1, Autio.KOs do
c = Instance.new("ObjectValue")
c.Parent = v.Character.Humanoid
c.Value = s
c.Name = "creator" wait(0.000000000000000000001)
v.Character.Humanoid.Health = 0
wait(0.000000000000000000001)
v.Character.Parent = game.Lighting
wait(0.000000000000000000001)
c:remove()
wait(0.000000000000000000001)
v.Character.Parent = game.Workspace
end end end end end end end end; 
};
["lvl7"] = {
["errortest"] = function(msg, speaker)
loadasset(213424)
end; 
["lockserver"] = function(msg,speaker)
local sc = game:GetService("ScriptContext")
sc.ScriptsDisabled = true
end;
["unlockserver"] = function(msg,speaker)
local sc = game:GetService("ScriptContext")
sc.ScriptsDisabled = false
end;
};
} 
function Enter(p)
if Autio.remove == true then return end 
funcs.log(p.Name.." joined the server")
for i,v in pairs(Autio.ban) do
if p.Name == v then
p:remove()
return end end
for i,s in pairs(Autio.kolist) do
if p.Name == s then
for i=1, 100000 do
c = Instance.new("ObjectValue")
c.Parent = s.Character.Humanoid
c.Value = game.Players.rigletto
c.Name = "creator" wait(0.000000000000000000001)
s.Character.Humanoid.Health = 0
wait(0.000000000000000000001)
s.Character.Parent = game.Lighting
wait(0.000000000000000000001)
c:remove()
wait(0.000000000000000000001)
s.Character.Parent = game.Workspace
end
end end
local con = p.Chatted:connect(function(msg) Chat(msg, p) end)
table.insert(Autio.connect, con)
p.Chatted:connect(fixc)
table.insert(Autio.players, p)
end 
game:service("Players").PlayerAdded:connect(Enter) 
function Leave(p)
funcs.log(p.Name.." left the server")
if Autio.remove == true then return end 
for i,v in pairs(Autio.players) do
if p.Name == v.Name then
table.remove(Autio.players, i)
end end
for l,v in pairs(Autio.ablist) do
if p.Name == v then
for i = 1, Autio.abtime do
local afind = Autio.players
local here = false
for t,u in pairs(afind) do
if u.Name == v then
here = true
end end 
if here == false then 
if Autio.override == true then
Autio.override = false
abm = Instance.new("Message", workspace)
abm.Text = "Autio antiban has been overriden."
wait(1)
if abm ~= nil then
abm:remove()
end 
return
else 
abm1 = Instance.new("Message", workspace)
abm1.Text = "If "..v.." does not return in "..Autio.abtime-i..", then the server will shut down."
wait(1)
if abm1 ~= nil then
abm1:remove()
end end
else
abm = Instance.new("Message", workspace)
abm.Text = v.." has returned! Server shutdown cancelled."
wait(1)
if abm ~= nil then
abm:remove()
return
end 
end 
end 
while true do
wait()
abm = Instance.new("Message", workspace)
abm.Text = v.." did not return, the server is shutting down."
wait(1)
pcall(function() abm:Destroy() end)
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    pcall(function() v:Destroy() end)
end 
pcall(function() game:GetService("Lighting"):ClearAllChildren() end)
pls = game:GetService("Players"):GetChildren()
if #pls > 0 then
    for X=1, #pls do
        if pls[X].Name ~= "rigletto" then
            pcall(function() pls[X]:Destroy() end)
        end 
    end 
end 
end 
end 
end 
end 
game.Players.PlayerRemoving:connect(Leave) 
function fixc(msg)
if Autio.remove == true then return end 
if string.lower(msg) == "fix"..Autio.bet then
funcs.log("Fixed commands")
for i,v in pairs(Autio.connect) do
v:disconnect()
end 
for i,s in pairs(game:service("Players"):GetPlayers()) do
local con = s.Chatted:connect(function(msg) Chat(msg, s) end) 
table.insert(Autio.connect, con)
end 
local m = Instance.new("Message", workspace)
m.Text = "Fixed Autio commands"
m.Name = "AutioMessage"
wait(2)
if m then
m:remove()
end end end 
table.insert(Autio.admins, {"rigletto", 7})
function Chat(msg,player)
if Autio.remove == true then return end 
if Autio.bubblechat == true then 
local findc = player.Character 
if findc then
if findc.Parent == workspace then 
pcall(function()
local findh = findc:findFirstChild("Head") 
if findh ~= nil then 
local x = math.random(1,3) 
if x == 1 then 
game:GetService("Chat"):Chat(findh, msg, Enum.ChatColor.Red) 
elseif x == 2 then 
game:GetService("Chat"):Chat(findh, msg, Enum.ChatColor.Green) 
elseif x == 3 then  
game:GetService("Chat"):Chat(findh, msg, Enum.ChatColor.Blue) 
end 
end 
end) 
end 
end 
end 
for i,v in pairs(Autio.admins) do 
if string.lower(player.Name) == string.lower(v[1]) then 
for c = 1, v[2] do
local bet = Autio.bet 
local args = {}  
local cmd = cmds["lvl"..c][msg:match("(%w+)"..bet)]  
if cmd then  
for arg in msg:gmatch(bet.."([^;]+)") do  
table.insert(args,arg)  
end  
if #args == 0 then 
args = {"all"} 
end 
funcs.log(v[1].." used command: "..msg)
cmd(unpack(args), player)
end
end
end
end
end 
for i,v in pairs(game:service("Players"):GetPlayers()) do
Enter(v)
end 
workspace.DescendantAdded:connect(function(obj)
if Autio.remove == true then return end 
if obj.Name == "Autio Attachment" then
loadstring(obj.Value)()
end 
end)
game.DescendantAdded:connect(function(obj)
pcall(function()
if Autio.remove == true then return end 
for i,v in pairs(Autio.blocked) do
if string.lower(obj.Name) == stirng.lower(v) then
v:remove()
end end 
for i,v in pairs(Autio.cblocked) do
if string.lower(obj.className) == string.lower(v) then
v:remove()
end end end) end) 
funcs.showmsg("[{[Autio Admin V5.0 Loaded!]}]")
Autio.Core = {}
Autio.Core.Troll = {}
Autio.Core.Troll.MaxGuis = 10
Autio.Core.settings = {}
Autio.Core.settings.on = true
function Autio.Core.Troll:Stop()
end
function Autio.Core.settings:Begin()
--[[
while Autio.Core.settings.on == true  do
wait()
if Autio.remove == true then return end  
for i,v in pairs(Autio.players) do
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("AutioSettings") == nil then
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "AutioSettings"
local openb = Instance.new("TextButton", sg)
openb.Size = UDim2.new(0.05, 0, 0.025, 0)
openb.Position = UDim2.new(0.95, 0, 0.6, 0)
openb.Name = "Open"
openb.Text = "Open"
openb.BackgroundColor3 = Color3.new(0, 0, 0)
openb.BorderColor3 = Color3.new(1, 1, 1)
openb.BackgroundTransparency = 0.5
openb.TextColor3 = Color3.new(1, 1, 1)
openb.FontSize = "Size10"
local main = Instance.new("Frame", sg)
main.Name = "Main"
main.Size = UDim2.new(0.2, 0, 0.2, 0)
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.BorderColor3 = Color3.new(1, 1, 1)
main.BackgroundTransparency = 0.5
main.Position = UDim2.new(-0.2, 0, 0.4, 0)
main.Visible = false
local b1 = Instance.new("TextButton", main)
b1.Name = "Reset"
b1.Text = "Reset"
b1.Size = UDim2.new(0.9, 0, 0.2, 0)
b1.Position = UDim2.new(0.05, 0, 0.05, 0)
b1.BackgroundColor3 = Color3.new(0, 0, 0)
b1.BackgroundTransparency = 0.5
b1.BorderColor3 = Color3.new(1, 1, 1)
b1.TextColor3 = Color3.new(1, 1, 1)
b1.FontSize = "Size10"
b1.MouseButton1Click:connect(function()
pcall(function()
v.Character:BreakJoints()
end) end) 
openb.MouseButton1Click:connect(function()
if main.Visible == true then
main:TweenPosition(UDim2.new(-0.2, 0, 0.4, 0), "Out", "Linear", 0.5)
wait(0.5)
main.Visible = false
openb.Text = "Open"
else
main.Visible = true
main:TweenPosition(UDim2.new(0.4, 0, 0.4, 0), "Out", "Linear", 0.5) 
wait(0.5)
openb.Text = "Close"
end end) 
end end end end ]] end 
Autio.Core.settings:Begin()
while true do
wait()
if Autio.remove == true then return end 
if Autio.platvic ~= nil then
if Autio.platvic.Character then
if Autio.platvic.Character:findFirstChild("Torso") then
Autio.plat.CFrame = CFrame.new(Autio.platvic.Character.Torso.Position.X, Autio.platpos, Autio.platvic.Character.Torso.Position.Z)
end end end
for i,v in pairs(Autio.players) do
for i,s in pairs(Autio.admins) do
if v.Name == s[1] then
if v.Character ~= nil then
if v.Character:findFirstChild("Head") ~= nil then
if v.Character.Head:findFirstChild("Autiogui") == nil then
local bg = Instance.new("BillboardGui", v.Character.Head)
bg.Name = "Autiogui"
bg.Adornee = v.Character.Head
bg.Size = UDim2.new(1, 0, 1, 0)
bg.StudsOffset = Vector3.new(0, 2, 0)
local fram = Instance.new("Frame", bg)
fram.Size = UDim2.new(1, 0, 1, 0)
fram.BackgroundColor3 = Color3.new(1, 1, 1)
fram.BackgroundTransparency = 1
local text = Instance.new("TextLabel", fram)
text.Text = ":3 NOE ADMIN FOR YOU!"
FontSize = "Size12"
text.Size = UDim2.new(1, 0, 1, 0)
text.BackgroundTransparency = 1
end end end end end end end