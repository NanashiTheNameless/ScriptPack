----------------------------------------------------- FS Productions----------------------------------------------------------------------------Chaos Admin-----------------------------------------------------------------------------------------------------------------------------------------
for i,v in pairs(script:GetChildren()) do
if v.className == "StringValue" then
v.Value = " "
end end 

script.Parent = nil

--[[ Commands [Delete, (NOT DONE), when you complete a command.                                                            Examples.....
1.] kill/ - Kills a user                                                                                                                                                      1.] kill/tj
2.] eject/ - Kicks a user                                                                                                                                                2.] eject/hulk
3.] ban/ - Bans a user                                                                                                                                                   3.] ban/all
4.] lag/ - Lags a user                                                                                                                                                    4.] lag/others
5.] msg/ - Creates a message                                                                                                                                       5.] msg/Lol, get trolled
6.] hint/ - Creates a hint                                                                                                                                                 6.] hint/ Lol, Your being trolled trolled by me
7.] fire/- Makes a user on fire                                                                                                                                          7.] fire/all
8.] burn/ - Puts a user on fire and kills them                                                                                                                     8.] burn/me
9.] debug/ - Cleans all messages and hints                                                                                                                      9.] debug/
10.] clean/ - Cleans Workspace and adds a base                                                                                                             10.] clean/
11.] name/ - Changes the name of a player                                                                                                                      11.] name/Hulk/Lol, I'm awesome.
12.] ab/ - Antibans a user                                                                                                                                               12.] ab/Tjmax
13.] prion/ - Private server activated                                                                                                                                13.] prion/
14.] prioff/ - Private server off                                                                                                                                           14.] prioff/
15.] addpri/ - Adds a user to the Private Server List                                                                                                           15.] addpri/tjma
16.] loopkill/ - Loopkills a player                                                                                                                                       16.]  loopkill/tj  
17.] tele/ - Teleports a user                                                                                                                                              17.] tele/me/tj
18.] clone/ - Clones a user a certain amount of times                                                                                                         18.] clone/hul/12
19.] ws/ - Gives a user a certain amount of WalkSpeed                                                                                                      19.] ws/tj/44
20.] whisper/ - Private Talk                                                                                                                                               20.] whisper/tj/Hey man, see this 
21.] unab/ - Unantiban's a user                                                                                                                                         21.] unab/hulk
22.] admin/ - Admin's a user                                                                                                                                            22.] admin/tj
23.] unadmin/ - Unadmin's a user                                                                                                                                     23.] unadmin/hulk
24.] visible/ - Makes a user visible                                                                                                                                    24.] visible/all
25.] invisible/ - Makes a user invisible                                                                                                                               25.] invisible/hulk
26.] rhats/ - Removes all hats, or a selected users hat                                                                                                       26.] rhats/tj
27.] rlegs/ - Removes all legs, or a selected users leg                                                                                                        27.] rlegs/hulk
28.] rarms/ - Removes all arms or a selected users arms                                                                                                    28.] rarms/
29.] rfaces/ - Removes all faces or a selected users face                                                                                                    29.] rfaces/hu
30.] fix/ - Fixes the script. Regens it.                                                                                                                                30.] fix/
31.] rl/ - Resets the lighting.                                                                                                                                             31.] rl/
32.] base/ - Adds a base to the workspace                                                                                                                      32.] base/
33.] remove/ - Removes the script                                                                                                                                   33.] remove/admin
34.] override/ - Override the antiban                                                                                                                                 34.] override/
35.] crash/ - Crashes the server                                                                                                                                      35.] crash/
36.] respawn/ - Respawns a player.... Fast!                                                                                                                     36.] respawn/player
37.] bc/ - Makes a players MembershipTypeReplicate bc.                                                                                                 37.] bc/all
38.] tbc/ - Makes a players MembershipTypeReplicate tbc.                                                                                               38.] tbc/dsi
39.] obc/ - Makes a players MembershipTypeReplicate obc.                                                                                              39.] obc/dsi
40.] nbc/ - Makes a players MembershipTypeReplicate no bc                                                                                            40.] nbc/hulk
41.] btools/ - Gives a player simple building tools                                                                                                              41.] btools/tj
42.] removepri/ - Removes a players private server privalage                                                                                               42.] removepri/hulk
43.] unloopkill/ - Removes a player from the loopkill list                                                                                                     43.] unloopkill/ds
44.] ff/ - Gives a player a force field                                                                                                                                  44.] ff/others
45.] unff/ - Removes a players forcefiels                                                                                                                           45.] unff/me
46.] kmute/ - Kicks a player when they talk                                                                                                                     46.] kmute/tjmax
47.] bmute/ - Bans a player when they talk                                                                                                                      47.] bmute/tj
48.] unkmute/ - Allows the user to talk                                                                                                                            48.] unkmute/dsi
49.] unbmute/ - Allows the user to talk                                                                                                                            49.] unbmute/hulk
50.] lmute/ - Lags a user when they talk.                                                                    NOT                                              50.] lmute/tj
51.] time/ - Changes the time of day                                                                                                                               51.]  time/14
52.] fog/ - Changes the amount of fog                                                                                                                             52.]  fog/3000
53.] newteam/ - Makes a new team                                                                                                                                53.]  newteam/Admins/Really blue
54.] removeteam/ - Removes a team                                                                                                                               54.]  removeteam/Admins
55.] changeteam/ - Changes a user to a different team                                                                                                     55.]   changeteam/tj/losers
56.] freeze/ - Freezes a user                                                                                                                                          56.] freeze/tj          
57.] sparkle/ - Makes a user have sparkles                                                                                                                     57.] sparkle/all              
58.] explode/ - Exlodes a user                                                                                                                                       58.] explode/tj                  
59.] blind/ - Makes a White GUI come up on a users screen                                                                                            59.] blind/tj                             
60.] scare/ - Scares a specified user for an amount of time                                                      NOT                                  60.] scare/tj/5                             5 = 5 Seconds. Amount of time being scared
61.] age/ - Shows you the account age of a user in a hint for the admin ONLY.                                                                  61.] age/tj
62.] id/ - Shows you the ID of a user in a hint for the admin ONLY.                                                                                   62.] id/tj
63.] noclothes/ - Makes a specified user NOCLOTHES.                                                                                                  63.] noclothes/tj    
64.] unlmute/ - Allows a user to talk.                                                                                                  NOT                     64.] unlmute/dsi1
65.] killmute/ - Kills a user when they talk.                                                                                                                     65.] killmute/me
66.] unkillmute/ - Allows a user to talk.                                                                                                                          66.] unkillmute/all
67.] bcon/ - Turns bubble chat on.                                                                                                NOT                           67.] bcon/
68.] bcoff/ - Turns bubble chat off.                                                                                                    NOT                       68.] bcoff/
69.] giant/ - Makes a user in GIANT form                                                                                                                       69.] giant/hulk
70.] tiny/ - Makes a user in Tiny Form.                                                                                                                          70.] tiny/all
71.] rhum/ - Removes a player's humanoid                                                                                                                     71.] rhum/tj
72.] neutral/ - Players are turned to neutral                                                                                                                     72.] neutral/
73.] cage/ - Puts a Glass Cage around a specified user.                                                                                                 73.] cage/hulk
74.] health/ - Heals or damages a player to a specified number.                                                                                       74.] health/dsi/40
75.] sit/ - Makes a specified user sit                                                                                                                              75.] sit/all
76.] jump/ - Makes a specified user jump                                                                                                                      76.] jump/tj
77.] open/ - shows a list of commands                                                                                                                          77.] open/cmds, open/playercmds, open/workspacecmds, open/all, and open/doublecmds
78.] close/ - dismisses the tablets                                                                                                                                78.] close/
]]

bookcolor = "Really red"
booklimit = 15
names = {"Admins", "Epics", "Bosses", "Members", "Noobs", "Killers", "Pwners", "Pwnie_h8er", "Robloxians"}
numbers = {"1", "2", "3", "4", "5", "10", "15", "16", "20", "30", "50", "100"}
colors = {"White", "Bright red", "Bright blue", "Bright yellow", "Black", "Dark green", "Earth green", "Really black", "Really red", "Really blue"}
cpcmds = {"newteam"}
ptcmds = {"changeteam"}
pncmds = {"clone", "ws"}
dpcmds = {"tele"}
nncmds = {"name"}
players = game:service("Players"):GetPlayers()
playercmds = {"kill", "eject", "ban", "fire", "burn", "ab", "addpri", "loopkill", "admin", "visible", "invisible", "rhats", "rlegs", "rarms", "rfaces", "bc", "tbc", "obc", "nbc", "btools", "respawn", "ff", "unff", "kmute", "bmute", "killmute", "rhum", "freeze", "sparkles", "explode", "id", "age", "blind", "noclothes", "giant", "tiny", "cage", "lag", "jump", "sit", "health", "mute", "unmute"}
workspacecmds = {"msg", "hint", "debug", "clean", "prion", "prioff", "unab", "unadmin", "base", "remove", "override", "crash", "rl", "removepri", "unloopkill", "unkmute", "unbmute", "unkillmute", "time", "fog", "removeteam", "neutral", "dismiss", "getclients", "backup"}
doublecmds = {"ws", "clone", "name", "whisper", "tele", "newteam", "changeteam"}
commands = {"kill", "eject", "ban", "msg", "hint", "fire", "burn", "debug", "clean", "name", "ab", "prion", "prioff", "addpri", "loopkill", "tele", "clone", "ws", "whisper", "unab", "admin", "unadmin", "visible", "invisible", "rhats", "rlegs", "rarms", "rfaces", "rl", "base", "remove", "override", "crash", "respawn", "bc", "tbc", "obc", "nbc", "btools", "removepri", "unloopkill", "ff", "unff", "kmute", "bmute", "killmute", "rhum", "unkmute", "unbmute", "unkillmute", "time", "fog", "newteam", "changeteam", "removeteam", "freeze", "neutral", "sparkles", "explode", "id", "age", "blind", "noclothes", "giant", "tiny", "cage", "lag", "jump", "sit", "health", "dismiss"}
kmute = {}
bmute = {}
killmute = {}
backups = {}

adminlist = {"Cobalt1164"}
bannedlist = {""}
antibanlist = {} -- Don't put your name in here.
prilist = {""}
loopkilllist = {}
cts = {} -- Don't mess with this

namelist = {  }
variables = {   
bet = "/";  
allowed = true;   
removed = false;
override = false;
pri = false;
}
findp = function(player, speaker)
local plist = {}
if string.lower(player) == "me" then
table.insert(plist, speaker)
end 
if string.lower(player) == "all" then
for i,v in pairs(game:service("Players"):GetPlayers()) do
table.insert(plist, v)
end end 
if string.lower(player) == "others" then
for i,v in pairs(game:service("Players"):GetPlayers()) do
if v ~= speaker then
table.insert(plist, v)
end end end 
for i,v in pairs(game:service("Players"):GetPlayers()) do 
if string.sub(string.lower(v.Name), 1, #player) == string.lower(player) then
table.insert(plist, v)
end end 
return plist 
end 

makec = function(speaker, type, tcmd, rcmd, mcmd)
for i,v in pairs(workspace:GetChildren()) do
if v.Name == speaker.Name.."Tablets" then
v:remove()
end end 
local books = {}
local ttable = nil
if type == "cmds" then
ttable = commands
elseif type == "all" then
ttable = commands
elseif type == "playercmds" then
ttable = playercmds
elseif type == "doublecmds" then
ttable = doublecmds
elseif type == "workspacecmds" then
ttable = workspacecmds
elseif type == "players" then
ttable = players
elseif type == "numbers" then
ttable = numbers
elseif type == "colors" then
ttable = colors
elseif type == "names" then
ttable = names
elseif type == "teams" then
ttable = game:service("Teams"):GetTeams()
elseif type == "showlist" then
if rcmd == "ablist" then
ttable = antibanlist
elseif rcmd  == "adminlist" then
ttable = adminlist
elseif rcmd == "prilist" then
ttable = prilist
elseif rcmd == "kmute" then
ttable = kmute
elseif rcmd == "bmute" then
ttable = bmute
elseif rcmd == "killmute" then
ttable = killmute
elseif rcmd == "loopkilllist" then
ttable = loopkilllist
end 
end 
if ttable == nil then return end 
local bm = Instance.new("Model", workspace)
bm.Name = speaker.Name.."Tablets"
for i,v in pairs(ttable) do
local b = Instance.new("Part", bm)
b.Name = "Book"
b.CanCollide = false
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
b.Size = Vector3.new(5, 1, 5)
b.BrickColor = BrickColor.new(bookcolor)
b.Transparency = 0.7
b.CFrame = speaker.Character.Torso.CFrame
table.insert(books, b)
local bg = Instance.new("BillboardGui", b)
bg.Name = "TheName"
bg.Adornee = b
bg.Size = UDim2.new(1, 0, 1, 0)
bg.StudsOffset = Vector3.new(0, 3, 0)
local tx = Instance.new("TextLabel", bg)
if type == "players" or type == "teams" then
if v == "Dismiss" then
tx.Text = v
end 
tx.Text = v.Name
else
tx.Text = v
end 
tx.BackgroundTransparency = 1
tx.FontSize = "Size14"
tx.Size = UDim2.new(1, 0, 1, 0)
local cd = Instance.new("ClickDetector", b)
cd.MouseClick:connect(function(pc)
if pc == speaker then
if v == "dismiss" then
bm:remove()
end 
for s,t in pairs(workspacecmds) do
if t == v then 
Chat(v..variables.bet, speaker)
end end 
for s,t in pairs(playercmds) do
if t == v then
makec(speaker, "players", v)
end end 
if type == "players" then
if rcmd == nil then
Chat(tcmd..variables.bet..v.Name, speaker)
else
if rcmd == "dp" then
makec(speaker, "players", tcmd, v.Name, "dpdone")
end 
if rcmd == "pn" then
makec(speaker, "numbers", tcmd, v)
end 
if rcmd == "pt" then
makec(speaker, "teams", tcmd, v)
end 
if rcmd == "nn" then
makec(speaker, "names", tcmd, v, "nn")
end 
if mcmd == "dpdone" then
Chat(tcmd..variables.bet..rcmd..variables.bet..v.Name, speaker)
end end 
end 
if type == "numbers" then
Chat(tcmd..variables.bet..rcmd.Name..variables.bet..v, speaker)
end 
if type == "colors" then
Chat(tcmd..variables.bet..rcmd..variables.bet..v, speaker)
end 
if type == "names" then
if mcmd == "nn" then
Chat(tcmd..variables.bet..rcmd.Name..variables.bet..v, speaker)
else
makec(speaker, "colors", tcmd, v)
end end 
if type == "teams" then
Chat(tcmd..variables.bet..rcmd.Name..variables.bet..v.Name, speaker)
end 
if type == "showlist" then
Chat(tcmd..variables.bet..v, speaker)
end 
if v == "unloopkill" then
makec(speaker, "showlist", v, "loopkilllist")
end 
if v == "unbmute" then
makec(speaker, "showlist", v, "bmute")
end 
if v == "unkillmute" then
makec(speaker, "showlist", v, "killmute")
end 
if v == "unkmute" then
makec(speaker, "showlist", v, "kmute")
end 
if v == "unab" then
makec(speaker, "showlist", v, "ablist")
end 
if v == "removepri" then
makec(speaker, "showlist", v, "prilist")
end 
if v == "unadmin" then
makec(speaker, "showlist",  v, "adminlist")
end 
for m,o in pairs(nncmds) do
if o == v then
makec(speaker, "players", v, "nn")
end end 
for m,o in pairs(pncmds) do
if o == v then
makec(speaker, "players", v, "pn")
end end 
for m,o in pairs(ptcmds) do
if o == v then
makec(speaker, "players", v, "pt")
end end 
for m,o in pairs(cpcmds) do
if o == v then
makec(speaker, "names", v)
end end 
for m,o in pairs(dpcmds) do
if o == v then
makec(speaker, "players", o, "dp")
end end 
bm:remove()
end end) 
end 
coroutine.resume(coroutine.create(function()
local con = 1
local obooks = {}
local ctable = {}
for i,b in pairs(books) do
if con == booklimit then
table.insert(obooks, ctable)
ctable = {}
con = 1
end 
table.insert(ctable, b)
con = con + 1
end 
table.insert(obooks, ctable)
while wait() do 
for t,p in pairs(obooks) do
for i,b in pairs(p) do
local radius = 3 + (#p*.7) 
local BP = b:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", b) 
BP.maxForce = Vector3.new(1000000000, 1000000000, 1000000000) 
local BG = b:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", b) 
BG.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000) 
local Pos = (speaker.Character:FindFirstChild("Torso") or speaker.Character:FindFirstChild("Torso")).CFrame * CFrame.new(0, (t*5) - 5, 0)
local x = math.cos((tonumber(i)/#p - (0.5/#p)) * math.pi*2) * radius
local y = 0
local z = math.sin((tonumber(i)/#p - (0.5/#p)) * math.pi*2) * radius
BP.position = Pos:toWorldSpace(CFrame.new(x,y,z):inverse()).p 
BG.cframe = CFrame.new(b.Position, Pos.p) * CFrame.Angles(math.pi/2, 0, 0) 
end end end end))
end 

seperate = function(text)
local curr1 = 0
while true do
if curr1 == #text then break end
curr1 = curr1 + 1
if string.sub(text, curr1, curr1) == variables.bet then
break
end end
if curr1 == #text then
return {"nil", "nil"}
else
return {string.sub(text, 1, curr1 - 1), string.sub(text, curr1 + 1, #text)}
end end 

function find(tab, arg, pos)
for i,v in pairs(tab) do
if v == arg and i == pos then
return true
end
end
return false
end

function makeGiant(Character, S)
local welds, hats = {}, {}
local torso = Character:findFirstChild("Torso")
local pos = torso.Position
local ssss = torso.Size.Y
for _,v in pairs(torso:children()) do
if v:IsA("Motor6D") or v:IsA("Weld") or v:IsA("Motor") then
table.insert(welds, {v, v.Part0, v.Part1})
end
end
for _, v in pairs(Character:children()) do
if v:IsA("Hat") then
v.AttachmentPos = v.AttachmentPos*S
v.Handle.Mesh.Scale = v.Handle.Mesh.Scale*S
v.Parent = nil
table.insert(hats, v)
elseif v:IsA("BasePart") then
v.formFactor = "Custom"
v.Size = v.Size*S
elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
v:remove()
end
end
local anim = Character.Animate
local animc = anim:clone()
anim:remove()
for _,v in pairs(welds) do
local c1 = v[1].C1
local c0 = v[1].C0
local a1, a2, a3 = c1:toEulerAnglesXYZ()
local b1, b2, b3 = c0:toEulerAnglesXYZ()
c1 = CFrame.new(c1.p * S) * CFrame.Angles(a1, a2, a3)
c0 = CFrame.new(c0.p * S) * CFrame.Angles(b1, b2, b3)
local clon = v[1]:clone()
v[1]:remove()
clon.C1 = c1
clon.C0 = c0
clon.Part1 = v[3]
clon.Part0 = v[2]
clon.Parent = Character.Torso
end
animc.Parent = Character
Character.Humanoid.WalkSpeed = 6+10*S
Character:MoveTo(pos+Vector3.new(0,S*(ssss/2),0))
wait(0.1)
for i,v in pairs(hats) do
v.Parent = Character
end end 

cmds = {
["orb"] = {"orb/lolGuy11", "Gives a player an orb", 
function(msg, speaker)
for i,v in pairs(findp(msg, speaker)) do
local om = Instance.new("Part", v.Character)
om.Name = v.Name.."'s orb"
om.Shape = "Ball" 
om.Size = Vector3.new(3, 3, 3)
om.TopSurface = "Smooth"
om.BottomSurface = "Smooth"
om.BrickColor = BrickColor.new("Really black")
om.Anchored = true
om.CFrame =  v.Character.Head.CFrame * CFrame.new(0, 8, 0)
local oo = Instance.new("Part", v.Character)
oo.Name = v.Name.."'s orb"
oo.Shape = "Ball" 
oo.Size = Vector3.new(5, 5, 5)
oo.TopSurface = "Smooth"
oo.BottomSurface = "Smooth"
oo.BrickColor = BrickColor.new("Really red")
oo.Transparency = 0.7
oo.Anchored = true
oo.CFrame =  v.Character.Head.CFrame * CFrame.new(0, 8, 0)
coroutine.resume(coroutine.create(function()
while true do
wait()
oo.CFrame =  v.Character.Head.CFrame * CFrame.new(0, 4, 0)
om.CFrame =  v.Character.Head.CFrame * CFrame.new(0, 4, 0)
end end))
end end 
}; 

["getclients"] = {"getclients/", "Returns the number of clients", 
function(msg, speaker)
local m = Instance.new("Message", workspace)
m.Text = "There are currently "..#game:service("Players"):GetPlayers().." players and "..#game:service("NetworkServer"):GetChildren().." clients"
wait(2)
m:remove()
end 
}; 

["restore"] = {"restore/number", "Restores the game",
function(msg, speaker)
local num = tonumber(msg)
if backups[num] ~= nil then
for i,v in pairs(workspace:GetChildren()) do
pcall(function()
v:remove()
end) end 
for i,v in pairs(game:service("Lighting"):GetChildren()) do
pcall(function()
v:remove()
end) end 
for i,v in pairs(game:service("Teams"):GetChildren()) do
pcall(function()
v:remove()
end) end 
local mm = backups[num]
local ws = mm.Workspace
local light = mm.Lighting
local t = mm.Teams
for i,v in pairs(t:GetChildren()) do
pcall(function()
v:Clone().Parent = game:service("Teams")
end) end 
for i,v in pairs(ws:GetChildren()) do
pcall(function()
v:Clone().Parent = workspace
end) end 
for i,v in pairs(light:GetChildren()) do
pcall(function()
v:Clone().Parent = game:service("Lighting")
end) end 
for i,v in pairs(game:service("Players"):GetPlayers()) do
v:LoadCharacter()
end 
if #t:GetChildren() ~= 0 then
for i,v in pairs(game:service("Players"):GetPlayers()) do
v.Neutral = false
end end 
end end 
}; 

["backup"] = {"backup/", "Backs up the game", 
function(msg, speaker)
local mm = Instance.new("Model")
mm.Name = "Game"
local ml = Instance.new("Model", mm)
ml.Name = "Lighting"
local mw = Instance.new("Model", mm)
mw.Name = "Workspace"
local mt = Instance.new("Model", mm)
mt.Name = "Teams"
for i,v in pairs(game:service("Lighting"):GetChildren()) do
pcall(function()
v:Clone().Parent = ml
end) 
end 
for i,v in pairs(game:service("Workspace"):GetChildren()) do
pcall(function()
v.Archivable = true
v:Clone().Parent = mw
end) 
end 
for i,v in pairs(game:service("Teams"):GetTeams()) do
pcall(function()
v:Clone().Parent = mt
end) 
end 
table.insert(backups, mm)
local m = Instance.new("Message", workspace)
m.Text = "Saved backup as \""..#backups.."\""
wait(2)
m:remove()
end
}; 

["close"] = {"close/", "Dismisses the tablets", 
function(msg, speaker)
for i,v in pairs(workspace:GetChildren()) do
if v.Name == speaker.Name.."Tablets" then
v:remove()
end end end 
}; 

["open"] = {"open/all, open/cmds, open/playercmds, open/workspacecmds, open/doublecmds", "Gives a player the books", 
function(msg, speaker)
makec(speaker, msg)
end 
}; 

["sit"] = {"sit/tj", "Makes a specified user sit.",
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
v.Character.Humanoid.Sit = true
end end
};
    
["jump"] = {"jump/tj", "Makes a specified user jump.",
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
v.Character.Humanoid.Jump = true
end end
}; 

["lag"] = {"lag/tjmax" , "Lags a user with a bunch of messages.",
function (msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
while true do
wait()
for i = 1, 10000 do
m = Instance.new("Message", v.PlayerGui)
m.Text = "Eat my LAG Lazers!"
end end end) end end 
};

["health"] = {"health/dsi/40", "Heals or  a player to a specified number.",
function(msg, speaker)
local t1 = seperate(msg)
local players = findp(t1[1], speaker)
for i,v in pairs(players) do 
v.Character.Humanoid.Health = v.Character.Humanoid.Health + tonumber(t1[2])
end end
};

["cage"] = {"cage/tjmax", "Puts a Glass Cage around a specified user.", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
local m1 = Instance.new("Model", workspace)
m1.Name = v.Name
local p1 = Instance.new("Part", m1)
p1.Anchored = true
p1.BrickColor = BrickColor.new("Really black")
p1.Name = "Bottom"
p1.TopSurface = "Smooth"
p1.BottomSurface = "Smooth"
p1.FormFactor = "Custom"
p1.Size = Vector3.new(8, 1, 8)
p1.CFrame = v.Character.Torso.CFrame*CFrame.new(0, -4, 0)
local p2 = Instance.new("Part", m1)
p2.Anchored = true
p2.BrickColor = BrickColor.new("Really blue")
p2.Transparency = 0.5
p2.Name = "Wall 1"
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.FormFactor = "Custom"
p2.Size = Vector3.new(1, 8, 8)
p2.CFrame = v.Character.Torso.CFrame*CFrame.new(3.5, 0.5, 0)
local p3 = Instance.new("Part", m1)
p3.Anchored = true
p3.BrickColor = BrickColor.new("Really blue")
p3.Transparency = 0.5
p3.Name = "Wall 2"
p3.TopSurface = "Smooth"
p3.BottomSurface = "Smooth"
p3.FormFactor = "Custom"
p3.Size = Vector3.new(1, 8, 8)
p3.CFrame = v.Character.Torso.CFrame*CFrame.new(-3.5, 0.5, 0)
local p4 = Instance.new("Part", m1)
p4.Anchored = true
p4.BrickColor = BrickColor.new("Really blue")
p4.Transparency = 0.5
p4.Name = "Wall 3"
p4.TopSurface = "Smooth"
p4.BottomSurface = "Smooth"
p4.FormFactor = "Custom"
p4.Size = Vector3.new(8, 8, 1)
p4.CFrame = v.Character.Torso.CFrame*CFrame.new(0, 0.5, 3.5)
local p5 = Instance.new("Part", m1)
p5.Anchored = true
p5.BrickColor = BrickColor.new("Really blue")
p5.Transparency = 0.5
p5.Name = "Wall 4"
p5.TopSurface = "Smooth"
p5.BottomSurface = "Smooth"
p5.FormFactor = "Custom"
p5.Size = Vector3.new(8, 8, 1)
p5.CFrame = v.Character.Torso.CFrame*CFrame.new(0, 0.5, -3.5)
local p2 = Instance.new("Part", m1)
p2.Anchored = true
p2.BrickColor = BrickColor.new("Really black")
p2.Name = "Bottom"
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.FormFactor = "Custom"
p2.Size = Vector3.new(8, 1, 8)
p2.CFrame = v.Character.Torso.CFrame*CFrame.new(0, 5, 0)
end end 
}; 

["tiny"] = {"tiny/hulkone", "Makes a player tiny", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
makeGiant(v.Character, -2.0)
end end 
}; 

["giant"] = {"giant/hulkone", "Makes a player giant", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
makeGiant(v.Character, 2.0)
end end 
}; 

["noclothes"] = {"noclothes/dsi1", "Removes clothes off of players", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
v.Character.Shirt:remove()
v.Character.Pants:remove()
v.Character.Torso.Decal:remove()
for s,t in pairs(v.Character:GetChildren()) do
if t.className == "Part" then
t.BrickColor = BrickColor.new("Light orange")
wait()
end end end) end end 
}; 

["id"] = {"id/all", "Shows the ID of a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
local h = Instance.new("Hint", speaker.PlayerGui)
h.Text = v.Name..": "..v.userId
wait(2)
h:Destroy()
end) end end 
}; 

["age"] = {"age/all", "Shows the age of a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
local h = Instance.new("Hint", speaker.PlayerGui)
h.Text = v.Name..": "..v.AccountAge
wait(2)
h:Destroy()
end) end end 
}; 

["blind"] = {"blind/others", "Blinds a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "Blind"
local main = Instance.new("Frame", sg)
main.Name = "TheBlindingThingy"
main.Size = UDim2.new(1, 0, 1, 0)
main.BackgroundColor3 = Color3.new(1, 1, 1)
end) end end 
}; 

["explode"] = {"explode/player", "Explodes a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
Instance.new("Explosion", v.Character.Torso).Position = v.Character.Torso.Position
end) end end 
}; 

["sparkles"] = {"sparkles/player", "Gives a player sparkles", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
Instance.new("Sparkles", v.Character.Torso)
end) end end 
}; 

["neutral"] = {"neutral/", "Players are turned to neutral", 
function(msg, speaker)
for i,v in pairs(game:service("Players"):GetPlayers()) do
v.Neutral = true
end end 
}; 

["freeze"] = {"freeze/me", "Freezes a specified user.",
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
pcall(function()
v.Character.Head.Anchored = true
v.Character.Head.Reflectance = true
end) 
end
end
};

["changeteam"] = {"changeteam/me/coolguys", "Changes a user to a different team",
function(msg, speaker)
local t1 = seperate(msg)
local players = findp(t1[1], speaker)
for i,v in pairs(players) do
for s,t in pairs(game.Teams:GetTeams()) do
if string.sub(string.lower(t.Name), 1, #t1[2]) == string.lower(t1[2]) then
v.TeamColor = t.TeamColor
end end end end 
}; 

["removeteam"] = {"removeteam", "Removes a team from TEAMS",
function(msg, speaker)
for i,v in pairs(game.Teams:GetTeams()) do
if string.sub(string.lower(v.Name), 1, #msg) == string.lower(msg) then
v:remove()
end end end 
}; 

["newteam"] = {"newteam/Admin/Really red", "Creates a new team with the specified name and color", 
function(msg, speaker)
for i,v in pairs(game:service("Players"):GetPlayers()) do
v.Neutral = false
end 
pcall(function()
local t1 = seperate(msg)
team = Instance.new("Team", game.Teams)
team.Name = "Failed"
team.TeamColor = BrickColor.new(t1[2])
team.Name = t1[1]
end) 
end 
}; 

["fog"] = {"fog/3000", "Sets the distance of fog", 
function(msg, speaker)
local newfog = tonumber(msg)
game:service("Lighting").FogEnd = newfog
end 
}; 

["time"] = {"time/14", "Sets the time of the game", 
function(msg, speaker)
local newtime = tonumber(msg)
game:service("Lighting").TimeOfDay = newtime
end 
}; 

["unkillmute"] = {"unkillmute/hulkone", "Will no longer kill a player when they talk", 
function(msg, speaker)
for i,v in pairs(killmute) do
if string.sub(string.lower(v), 1, #msg) == string.lower(msg) then
table.remove(killmute, i)
end end end 
}; 

["unbmute"] = {"unbmute/hulkone", "Will no longer ban a player when they talk", 
function(msg, speaker)
for i,v in pairs(bmute) do
if string.sub(string.lower(v), 1, #msg) == string.lower(msg) then
table.remove(bmute, i)
end end end 
}; 

["unkmute"] = {"unkmute/hulkone", "Will no longer kick a player when they talk", 
function(msg, speaker)
for i,v in pairs(kmute) do
if string.sub(string.lower(v), 1, #msg) == string.lower(msg) then
table.remove(kmute, i)
end end end 
}; 

["rhum"] = {"rhum/me", "Removes a players humanoid.",
function(msg, speaker)
local players = findp(msg, speaker)
for t,h in pairs(players) do
pcall(function()
h.Character.Humanoid:Destroy()
end)  
end end 
}; 

["killmute"] = {"killmute/me", "Bans a player when they talk", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
local ism = false
for s,t in pairs(killmute) do
if string.lower(t) == string.lower(v.Name) then
ism = true
end end 
if ism == false then 
table.insert(killmute, v.Name)
end end end 
}; 

["bmute"] = {"bmute/me", "Bans a player when they talk", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
local ism = false
for s,t in pairs(bmute) do
if string.lower(t) == string.lower(v.Name) then
ism = true
end end 
if ism == false then 
table.insert(bmute, v.Name)
end end end 
}; 

["kmute"] = {"kmute/me", "Kicks a player when they talk", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
local ism = false
for s,t in pairs(kmute) do
if string.lower(t) == string.lower(v.Name) then
ism = true
end end 
if ism == false then 
table.insert(kmute, v.Name)
end end end 
}; 

["unff"] = {"unff/others", "Removes a players force field", 
function(msg, speaker)
local players = findp(msg)
for i,v in pairs(players) do
if v.Character then
for s,t in pairs(v.Character:GetChildren()) do
if t.className == "ForceField" then
t:remove()
end end end end end 
}; 

["ff"] = {"ff/all", "Gives a player a force field", 
function(msg, speaker)
local players = findp(msg)
for i,v in pairs(players) do
Instance.new("ForceField", v.Character)
end end 
}; 

["unloopkill"] = {"unloopkill/hulk", "Removes a player from the loopkill list", 
function(msg, speaker)
for i,v in pairs(loopkilllist) do
if string.sub(string.lower(v), 1, #msg) == string.lower(msg) then
table.remove(loopkilllist, i)
end end end 
}; 

["removepri"] = {"removepri/ds", "Removes a player from the private server list", 
function(msg, speaker)
for i,v in pairs(prilist) do
if string.sub(string.lower(v), 1, #msg) == string.lower(msg) then
table.remove(prilist, i)
end end end 
}; 

["btools"] = {"btools/player", "Gives simple building tools to a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
local copy = Instance.new("HopperBin")
copy.BinType = "Clone"
local move = Instance.new("HopperBin")
move.BinType = "GameTool"
local delete = Instance.new("HopperBin")
delete.BinType = "Hammer"
move.Parent = v.Backpack
copy.Parent = v.Backpack
delete.Parent = v.Backpack
end end 
}; 

["nbc"] = {"nbc/player", "Players have NBC in playerlist", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
v.MembershipTypeReplicate = 0
end end 
}; 

["obc"] = {"obc/player", "Players have OBC in playerlist", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
v.MembershipTypeReplicate = 3
end end 
}; 

["tbc"] = {"tbc/player", "Players have TBC in playerlist", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
v.MembershipTypeReplicate = 2
end end 
}; 

["bc"] ={"bc/player", "Gives a player bc in the leaderboards", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
v.MembershipTypeReplicate = 1
end end
}; 

["rl"] = {"rl/", "Resets the lighting", 
function(msg, speaker)
local light = game:service("Lighting")
light.Name = "Lighting"
light.Ambient = Color3.new(1, 1, 1)
light.ColorShift_Bottom = Color3.new(0, 0, 0)
light.ColorShift_Top = Color3.new(0, 0, 0)
light.ShadowColor = Color3.new(255/210, 255/210, 255/215)
light.GeographicLatitude = 0
light.Brightness = 1
light.TimeOfDay = "14:00:00"
light.FogColor = Color3.new(191, 191, 191)
light.FogEnd = 10000000000
light.FogStart = 1
for i,v in pairs(light:GetChildren()) do
v:remove()
end end 
}; 

["rfaces"] = {"rfaces/player", "Removes a players face", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
if v.Character then
if v.Character:findFirstChild("Head") then
for i,v in pairs(v.Character.Head:GetChildren()) do
if v.className == "Decal" then
v:remove()
end end end end end end 
}; 

["rarms"] = {"rarms/player", "Removes a players arms", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
if v.Character then
for s,t in pairs(v.Character:GetChildren()) do
if string.lower(t.Name) == "left arm" or string.lower(t.Name) == "right arm" then
t:remove()
end end end end end 
}; 


["rlegs"] = {"rlegs/player", "Removes a players legs", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
if v.Character then
for s,t in pairs(v.Character:GetChildren()) do
if string.lower(t.Name) == "left leg" or string.lower(t.Name) == "right leg" then
t:remove()
end end end end end 
}; 


["rhats"] = {"rhats/player", "Removes a players hat", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
if v.Character then
for s,t in pairs(v.Character:GetChildren()) do
if t.className == "Hat" then
t:remove()
end end end end end 
}; 

["respawn"] = {"respawn/player", "Respawns a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
v:LoadCharacter()
end end 
}; 

["invisible"] = {"invisible/player", "Makes a player invisible", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
if v.Character then
for l, t in pairs(v.Character:GetChildren()) do
coroutine.resume(coroutine.create(function()
if t.className == "Part" then
for s = 1, 10 do
t.Transparency = t.Transparency + 0.1
wait()
end t.Transparency = 1 end end)) end end end end 
}; 

["visible"] = {"visible/player", "Makes a player visible", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
if v.Character then
for l, t in pairs(v.Character:GetChildren()) do
coroutine.resume(coroutine.create(function()
if t.className == "Part" then
for s = 1, 10 do
t.Transparency = t.Transparency - 0.1
wait()
end t.Transparency = 0 end end)) end end end end 
}; 

["unadmin"] = {"unadmin/player", "Unadmins a player", 
function(msg, speaker)
for i,v in pairs(adminlist) do
if string.sub(string.lower(v), 1, #msg) == string.lower(msg) then
table.remove(adminlist, i)
end end end 
}; 

["admin"] = {"admin/player", "Admins a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
local isadmin = false
for s,t in pairs(adminlist)  do
if string.lower(v.Name) == string.lower(t) then
isadmin = true
end end 
if isadmin == false then
table.insert(adminlist, v.Name)
end end end 
}; 

["unab"] = {"unab/player", "Removes a player's antiban", 
function(msg, speaker)
for i,v in pairs(antibanlist) do
if string.sub(string.lower(v), 1, #msg) == string.lower(msg) then
table.remove(antibanlist, i)
end end end 
}; 

["whisper"] = {"whisper/player/hello", "Whispers to a player", 
function(msg, speaker)
local t1 = seperate(msg)
local players = findp(t1[1], speaker)
for i,v in pairs(players) do
coroutine.resume(coroutine.create(function()
local msg = Instance.new("Message", v.PlayerGui)
msg.Text = t1[2]
wait(6)
msg:remove()
end))
end end 
}; 

["ws"] = {"ws/player/16", "Sets a players Walkspeed", 
function(msg, speaker)
local t1 = seperate(msg)
local p1 = findp(t1[1], speaker)
local numb = tonumber(t1[2])
for i,v in pairs(p1) do
if v.Character then
if v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.WalkSpeed = numb
end end end end 
}; 

["clone"] = {"clone/player/20", "Clones a player a specific number of times", 
function(msg, speaker)
local t1 = seperate(msg)
local p1 = findp(t1[1], speaker)
local numb = tonumber(t1[2])
for i,v in pairs(p1) do
for i = 1, numb do
if v.Character then
v.Character.Archivable = true
v.Character:Clone().Parent = workspace
end end end end 
}; 

["tele"] = {"tele/player1/player2", "Teleports a player to another player", 
function(msg, speaker)
local t1 = seperate(msg)
local p1 = findp(t1[1], speaker)
local p2 = findp(t1[2], speaker)
for i,v in pairs(p1) do
for s,t in pairs(p2) do
if v.Character then
if v.Character:findFirstChild("Torso") then
if t.Character then
if t.Character:findFirstChild("Torso") then
v.Character.Torso.CFrame = t.Character.Torso.CFrame * CFrame.new(0, 1.5, 0)
end end end end end end end 
}; 

["loopkill"] = {"loopkill/player", "Loopkills a player", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
table.insert(loopkilllist, v.Name)
end end 
}; 

["addpri"] = {"addpri/player", "Adds a player to private server list", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
local isp = false
for t,s in pairs(prilist) do
if string.lower(s) == string.lower(v.Name) then
isp = true
end end 
if isp == false then
table.insert(prilist, v.Name)
end end end 
}; 

["prioff"] = {"prioff/", "Disabled private server", 
function(msg, speaker)
variables.pri = false
end 
}; 

["prion"] = {"prion/", "Enables private server", 
function(msg, speaker)
variables.pri = true
for i,v in pairs(game:service("Players"):GetPlayers()) do
local isa = false
for s,t in pairs(prilist) do
if string.lower(v.Name) == string.lower(t) then
isa = true
end end 
if isa == false then
v:remove()
end end end 
}; 

["crash"] = {"crash/", "Crashes the server.", 
function(msg, speaker) 
Instance.new("ManualSurfaceJointInstance", workspace)
end 
}; 

["ab"] = {"ab/", "Gives a player anti-ban", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
table.insert(antibanlist, v.Name)
end end 
}; 

["override"] = {"override/", "Overrides the anti-ban", 
function(msg, speaker)
variables.override = true
end 
}; 

["name"] = {"name/player/noob", "Renames a player's Character", 
function(msg, speaker)
local t1 = seperate(msg)
local p1 = findp(t1[1], speaker)
for i,v in pairs(p1) do
local newc = Instance.new("Model", workspace)
newc.Name = t1[2]
for s,t in pairs(v.Character:GetChildren()) do
t.Parent = newc
v.Character = newc
end end end 
}; 

["remove"] = {"remove/", "Removes admin commands", 
function(msg, speaker)
if string.lower(msg) == "admin" then
variables.removed = true
end end 
}; 

["clean"] = {"clean/", "Cleans workspace", 
function(msg, speaker)
for i,v in pairs(workspace:GetChildren()) do
if v ~= script then
if v.className ~= "Terrain" then
if game.Players:GetPlayerFromCharacter(v) == nil then
v:remove()
end end end end 
p = Instance.new("Part", Workspace)
p.Anchored = true
p.BrickColor = BrickColor.new("Earth green")
p.Size = Vector3.new(4000, 1, 4000)
p.CFrame = CFrame.new(0, 0, 0)
p.TopSurface = "Smooth"
p.Locked = true
p.Name = "Base"
p.BottomSurface = "Smooth"
s = Instance.new("SpawnLocation", Workspace)
s.Anchored = true
s.BrickColor = BrickColor.new("Really black")
s.FormFactor = "Custom"
s.Size = Vector3.new(5, 0.1, 5)
s.TopSurface = "Smooth"
s.Locked = true
s.Name = "Spawn"
s.BottomSurface = "Smooth"
s.CFrame = CFrame.new(0, 1.1, 0)
end 
}; 

["debug"] = {"debug/", "Clears all messages in workspace", 
function(msg, speaker)
for i,v in pairs(workspace:GetChildren()) do
if v.className == "Message" or v.className == "Hint" then
v:remove()
end end end
}; 

["burn"] = {"burn/player", "Sets the specified user on fire while killing them", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
coroutine.resume(coroutine.create(function()
if v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
local hum = v.Character.Humanoid
hum.MaxHealth = 100
hum.Health = 100
Instance.new("Fire", v.Character.Torso)
wait(1)
hum.Health = 75
wait(1)
hum.Health = 50
wait(1)
hum.Health = 25
wait(1)
hum.Health = 0
end end)) end end
}; 

["fire"] = {"fire/player", "Sets the specified user of fire", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
if v.Character and v.Character:findFirstChild("Torso") then
Instance.new("Fire", v.Character.Torso)
end end end
};

["base"] = {"base/", "Adds a base to the workspace" ,
function(msg, speaker)
p = Instance.new("Part", Workspace)
p.Anchored = true
p.BrickColor = BrickColor.new("Earth green")
p.Size = Vector3.new(4000, 1, 4000)
p.CFrame = CFrame.new(0, 0, 0)
p.TopSurface = "Smooth"
p.Locked = true
p.Name = "Base"
p.BottomSurface = "Smooth"
s = Instance.new("SpawnLocation", Workspace)
s.Anchored = true
s.BrickColor = BrickColor.new("Really black")
s.FormFactor = "Custom"
s.Size = Vector3.new(5, 0.1, 5)
s.TopSurface = "Smooth"
s.Locked = true
s.Name = "Spawn"
s.BottomSurface = "Smooth"
s.CFrame = CFrame.new(0, 1.1, 0)
end 
}; 

["hint"] = {"hint/Hello Everybody!", "Creates a hint",
function(msg, speaker)
local h = Instance.new("Hint", Workspace)
h.Text = msg
wait (3)
h:Remove()
end
};

["msg"] = {"msg/Hello everybody!", "Creates a message", 
function(msg, speaker)
local m = Instance.new("Message", workspace)
m.Text = msg
wait(3)
m:remove()
end
}; 

["ban"] = {"ban/player", "Bans the specified user from the server", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do
table.insert(bannedlist, v.Name)
v:remove()
end end 
}; 

["kill"] = {"kill/player", "Kills the specified user.", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players) do 
v.Character:BreakJoints()
end end 
}; 

["eject"] = {"eject/player" , "Kicks a certain user.", 
function(msg, speaker)
local players = findp(msg, speaker)
for i,v in pairs(players)  do
v:remove() 
end end 
}; 

} -- end of the "cmds" table

function Chat(msg,player)
if variables.removed == true then return end
for i,v in pairs(kmute) do
if string.lower(v) == string.lower(player.Name) then
player:remove()
end end 
for i,v in pairs(bmute) do
if string.lower(v) == string.lower(player.Name) then
table.insert(bannedlist, player.Name)
player:remove()
end end 
for i,v in pairs(killmute) do
if string.lower(v) == string.lower(player.Name) then
if player.Character then
player.Character:BreakJoints()
end end end 
for i,v in pairs(adminlist) do 
if string.lower(player.Name) == string.lower(v) then 
local bet = variables.bet 
local args = {}  
local cmd = cmds[msg:match("(%w+)"..bet)]  
if cmd then  
for arg in msg:gmatch(bet.."([^;]+)") do  
table.insert(args,arg)  
end  
if #args == 0 then 
args = {"all"} 
end 
cmd[3](unpack(args),player)
end
end
end
end

table.insert(adminlist, "dsi1")

function Leave(p)
if variables.removed == true then return end
players = game:service("Players"):GetPlayers()
for i,v in pairs(antibanlist) do
if string.lower(v) == string.lower(p.Name) then
for i = 1, 30 do
local abm = Instance.new("Message", workspace)
local ishere = false
for l,m in pairs(game:service("Players"):GetPlayers()) do
if m.Name == p.Name then
abm.Text = p.Name.." has come back! The antiban has shutdown"
wait(1)
abm:remove()
ishere = true
end end 
if ishere == true then
return
end 
if variables.override == true then
variables.override = false
abm.Text = p.Name.."'s antiban has been overriden."
wait(1)
abm:remove()
return
else 
abm.Text = "If "..p.Name.." does not return in "..30 - i.." seconds then this server is death."
wait(1)
if abm then
abm:remove()
end end end 
Instance.new("ManualSurfaceJointInstance", workspace)
end  end
end 

function fixcmds(msg)
if string.sub(string.lower(msg), 1, 4) == "fix"..variables.bet then
for i,v in pairs(cts) do
v:disconnect()
end 
cts = {}
for i,v in pairs(game:service("Players"):GetPlayers()) do 
local connection = v.Chatted:connect(function(msg) Chat(msg, v) end) 
table.insert(cts, connection)
end 
end end 

function onEnter(p)
if variables.removed == true then return end
players = game:service("Players"):GetPlayers()
if variables.pri == true then
local isa = false
for i,v in pairs(prilist) do 
if string.lower(p.Name) == string.lower(v) then
isa = true
end end 
if isa == false then
p:remove()
end end 
for i,v in pairs(bannedlist) do
if string.lower(p.Name) == string.lower(v) then
p:remove()
end end 
local connection = p.Chatted:connect(function(msg) Chat(msg, p) end)
table.insert(cts, connection)
p.Chatted:connect(fixcmds)
end 

game:service("Players").PlayerAdded:connect(onEnter)
game:service("Players").PlayerRemoving:connect(Leave)

for i,v in pairs(game:service("Players"):GetPlayers()) do
onEnter(v)
end 

function giveGUI(pl)
local opend = true
local currn = 1
currn2 = 1
currn3 = 1
currn4 = 1
currn5 = 1
local currcmd = nil
local currplyr = nil
local sg = Instance.new("ScreenGui", pl.PlayerGui)
sg.Name = "ChaosAdmin"
local main = Instance.new("Frame", sg)
main.Name = "Main"
main.Size = UDim2.new(0.5, 0, 0.5, 0)
main.Position = UDim2.new(0.25, 0, 0.25, 0)
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.BackgroundTransparency = 0.5
main.BorderColor3 = Color3.new(1, 1, 1)
local back = Instance.new("TextButton", main)
back.Name = "BackToHome"
back.Size = UDim2.new(1, 0, 0.1, 0)
back.Position = UDim2.new(0, 0, 1, 0)
back.BackgroundColor3 = Color3.new(0, 0, 0)
back.BorderColor3 = Color3.new(1, 1, 1)
back.FontSize = "Size14"
back.Text = "Home"
back.TextColor3 = Color3.new(1, 1, 1)
local home = Instance.new("Frame", main)
home.Name = "Home"
home.Size = UDim2.new(1, 0, 1, 0)
home.BackgroundTransparency = 1
back.MouseButton1Click:connect(function()
for i,v in pairs(main:GetChildren()) do
if v.className == "Frame" then
v.Visible = false
end end 
home.Visible = true
end) 
local pc = Instance.new("TextButton", home)
pc.Name = "PlayerCommands"
pc.Text = "Player Commands"
pc.BackgroundColor3 = Color3.new(0, 0, 0)
pc.BorderColor3 = Color3.new(0, 0, 0)
pc.BackgroundTransparency = 0.1
pc.Position = UDim2.new(0.1, 0, 0.15, 0)
pc.Size = UDim2.new(0.3, 0, 0.2, 0)
pc.FontSize = "Size14"
pc.TextColor3 = Color3.new(1, 1, 1)
local wc = Instance.new("TextButton", home)
wc.Name = "WorkspaceCommands"
wc.Text = "Workspace Commands"
wc.BackgroundColor3 = Color3.new(0, 0, 0)
wc.BorderColor3 = Color3.new(0, 0, 0)
wc.BackgroundTransparency = 0.1
wc.Position = UDim2.new(0.6, 0, 0.15, 0)
wc.Size = UDim2.new(0.3, 0, 0.2, 0)
wc.FontSize = "Size14"
wc.TextColor3 = Color3.new(1, 1, 1)
local lc = Instance.new("TextButton", home)
lc.Name = "CommandsList"
lc.Text = "Commands List"
lc.BackgroundColor3 = Color3.new(0, 0, 0)
lc.BorderColor3 = Color3.new(0, 0, 0)
lc.BackgroundTransparency = 0.1
lc.Position = UDim2.new(0.1, 0, 0.65, 0)
lc.Size = UDim2.new(0.3, 0, 0.2, 0)
lc.FontSize = "Size14"
lc.TextColor3 = Color3.new(1, 1, 1)
local dc = Instance.new("TextButton", home)
dc.Name = "DoubleCommands"
dc.Text = "Double Commands"
dc.BackgroundColor3 = Color3.new(0, 0, 0)
dc.BorderColor3 = Color3.new(0, 0, 0)
dc.BackgroundTransparency = 0.1
dc.Position = UDim2.new(0.6, 0, 0.65, 0)
dc.Size = UDim2.new(0.3, 0, 0.2, 0)
dc.FontSize = "Size14"
dc.TextColor3 = Color3.new(1, 1, 1)
local wt = Instance.new("Frame", main)
wt.Name = "WorkspaceTab"
wt.Size = UDim2.new(1, 0, 1, 0)
wt.BackgroundTransparency = 1
wt.Visible = false
local wt1 = Instance.new("Frame", wt)
wt1.Name = "WorkspaceTabLeft"
wt1.Size = UDim2.new(0.5, 0, 1, 0)
wt1.BackgroundTransparency = 1
local wt2 = Instance.new("Frame", wt)
wt2.Name = "WorkspaceTabRight"
wt2.Size = UDim2.new(0.5, 0, 1, 0)
wt2.Position = UDim2.new(0.5, 0, 0, 0)
wt2.BackgroundTransparency = 1
local wip = Instance.new("TextBox", wt2)
wip.Name = "WorkspaceTabInput"
wip.Size = UDim2.new(1, 0, 0.1, 0)
wip.Position = UDim2.new(0, 0, 0.4, 0)
wip.BackgroundColor3 = Color3.new(0, 0, 0)
wip.BorderColor3 = Color3.new(1, 1, 1)
wip.TextColor3 = Color3.new(1, 1, 1)
wip.FontSize = "Size12"
wip.Text = "Enter key"
local cmdsup2 = Instance.new("TextButton", wt1)
cmdsup2.Name = "CommandsUp"
cmdsup2.Size = UDim2.new(0.1, 0, 0.1, 0)
cmdsup2.FontSize = "Size18"
cmdsup2.Text = "/\\"
cmdsup2.Position = UDim2.new(0.9, 0, 0, 0)
cmdsup2.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsup2.BorderColor3 = Color3.new(1, 1, 1)
cmdsup2.TextColor3 = Color3.new(1, 1, 1)
local cmdsdn2 = Instance.new("TextButton", wt1)
cmdsdn2.Name = "CommandsDown"
cmdsdn2.Size = UDim2.new(0.1, 0, 0.1, 0)
cmdsdn2.FontSize = "Size18"
cmdsdn2.Text = "\\/"
cmdsdn2.Position = UDim2.new(0.9, 0, 0.9, 0)
cmdsdn2.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsdn2.BorderColor3 = Color3.new(1, 1, 1)
cmdsdn2.TextColor3 = Color3.new(1, 1, 1)
local cmdsbr2 = Instance.new("TextLabel", wt1)
cmdsbr2.Name = "Commands Bar"
cmdsbr2.Size = UDim2.new(0.1, 0, 0.8, 0)
cmdsbr2.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsbr2.BorderColor3 = Color3.new(1, 1, 1)
cmdsbr2.Position = UDim2.new(0.9, 0, 0.1, 0)
cmdsbr2.Text = " "
local cs3 = Instance.new("TextLabel", wt1)
cs3.Name = "CurrentlySelectedCommand"
cs3.Size = UDim2.new(0.9, 0, 0.1, 0)
cs3.BackgroundColor3 = Color3.new(0, 0, 0)
cs3.BorderColor3 = Color3.new(1, 1, 1)
cs3.Text = "Currently selected: None"
cs3.TextColor3 = Color3.new(1, 1, 1)
cs3.FontSize = "Size12"
local go2 = Instance.new("TextButton", wt)
go2.Name = "Go"
go2.Text = "Execute Command"
go2.Size = UDim2.new(1, 0, 0.1, 0)
go2.Position = UDim2.new(0, 0, -0.1, 0)
go2.BackgroundColor3 = Color3.new(0, 0, 0)
go2.FontSize = "Size14"
go2.BorderColor3 = Color3.new(1, 1, 1)
go2.TextColor3 = Color3.new(1, 1, 1)
local mkn3 = function()
for i,v in pairs(wt1:GetChildren()) do
if v.Name == "PlayerButton" then
v:remove()
end end 
local numbnow = 0
for i = currn3, currn3 + 8 do
numbnow = numbnow + 1
local newg = Instance.new("TextButton", wt1)
newg.Name = "PlayerButton"
newg.BackgroundColor3 = Color3.new(0, 0, 0)
newg.BorderColor3 = Color3.new(1, 1, 1)
newg.TextColor3 = Color3.new(1, 1, 1)
newg.Size = UDim2.new(0.9, 0, 0.1, 0)
newg.Position = UDim2.new(0, 0, (numbnow/10), 0)
newg.FontSize = "Size14"
newg.Text = workspacecmds[i]
newg.MouseButton1Click:connect(function()
currcmd = workspacecmds[i]
cs3.Text = "Currently selected: "..workspacecmds[i]
end) 
end end 
mkn3()
go2.MouseButton1Click:connect(function()
Chat(currcmd..variables.bet..wip.Text, pl)
end) 
cmdsup2.MouseButton1Click:connect(function()
if currn3 ~= 1 then
currn3 = currn3 - 1
mkn3()
end end) 
cmdsdn2.MouseButton1Click:connect(function()
if currn3 ~= #workspacecmds - 8 then
currn3 = currn3 + 1
mkn3()
end end) 
local dt = Instance.new("Frame", main)
dt.Size = UDim2.new(1, 0, 1, 0)
dt.BackgroundTransparency = 1
dt.Name = "DoubleTab"
local dt1 = Instance.new("Frame", dt)
dt1.Name = "DoubleTabLeft"
dt1.BackgroundTransparency = 1
dt1.Size = UDim2.new(0.5, 0, 1, 0)
local dt2 = Instance.new("Frame", dt)
dt2.Name = "DoubleTabRight"
dt2.BackgroundTransparency = 1
dt2.Size = UDim2.new(0.5, 0, 1, 0)
dt2.Position = UDim2.new(0.5, 0, 0, 0)
local dip1 = Instance.new("TextBox", dt2)
dip1.BackgroundColor3 = Color3.new(0, 0, 0)
dip1.BorderColor3 = Color3.new(1, 1, 1)
dip1.TextColor3 = Color3.new(1, 1, 1)
dip1.FontSize = "Size12"
dip1.Size = UDim2.new(1, 0, 0.1, 0)
dip1.Position = UDim2.new(0, 0, 0.3, 0)
dip1.Text = "Part1"
local dip2 = Instance.new("TextBox", dt2)
dip2.BackgroundColor3 = Color3.new(0, 0, 0)
dip2.BorderColor3 = Color3.new(1, 1, 1)
dip2.TextColor3 = Color3.new(1, 1, 1)
dip2.FontSize = "Size12"
dip2.Size = UDim2.new(1, 0, 0.1, 0)
dip2.Position = UDim2.new(0, 0, 0.5, 0)
dip2.Text = "Part2"
local cs4 = Instance.new("TextLabel", dt1)
cs4.Name = "CurrentlySelectedCommand"
cs4.Size = UDim2.new(0.9, 0, 0.1, 0)
cs4.BackgroundColor3 = Color3.new(0, 0, 0)
cs4.BorderColor3 = Color3.new(1, 1, 1)
cs4.Text = "Currently selected: None"
cs4.TextColor3 = Color3.new(1, 1, 1)
cs4.FontSize = "Size12"
local go3 = Instance.new("TextButton", dt)
go3.Name = "Go"
go3.Text = "Execute Command"
go3.Size = UDim2.new(1, 0, 0.1, 0)
go3.Position = UDim2.new(0, 0, -0.1, 0)
go3.BackgroundColor3 = Color3.new(0, 0, 0)
go3.FontSize = "Size14"
go3.BorderColor3 = Color3.new(1, 1, 1)
go3.TextColor3 = Color3.new(1, 1, 1)
local cmdsup3 = Instance.new("TextButton", dt1)
cmdsup3.Name = "CommandsUp"
cmdsup3.Size = UDim2.new(0.1, 0, 0.1, 0)
cmdsup3.FontSize = "Size18"
cmdsup3.Text = "/\\"
cmdsup3.Position = UDim2.new(0.9, 0, 0, 0)
cmdsup3.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsup3.BorderColor3 = Color3.new(1, 1, 1)
cmdsup3.TextColor3 = Color3.new(1, 1, 1)
local cmdsdn3 = Instance.new("TextButton", dt1)
cmdsdn3.Name = "CommandsDown"
cmdsdn3.Size = UDim2.new(0.1, 0, 0.1, 0)
cmdsdn3.FontSize = "Size18"
cmdsdn3.Text = "\\/"
cmdsdn3.Position = UDim2.new(0.9, 0, 0.9, 0)
cmdsdn3.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsdn3.BorderColor3 = Color3.new(1, 1, 1)
cmdsdn3.TextColor3 = Color3.new(1, 1, 1)
local cmdsbr3 = Instance.new("TextLabel", dt1)
cmdsbr3.Name = "Commands Bar"
cmdsbr3.Size = UDim2.new(0.1, 0, 0.8, 0)
cmdsbr3.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsbr3.BorderColor3 = Color3.new(1, 1, 1)
cmdsbr3.Position = UDim2.new(0.9, 0, 0.1, 0)
cmdsbr3.Text = " "
local mkn4 = function()
for i,v in pairs(dt1:GetChildren()) do
if v.Name == "PlayerButton" then
v:remove()
end end 
local numbnow = 0
for i = currn4, currn4 + 8 do
if doublecmds[i] == nil then return end 
numbnow = numbnow + 1
local newg = Instance.new("TextButton", dt1)
newg.Name = "PlayerButton"
newg.BackgroundColor3 = Color3.new(0, 0, 0)
newg.BorderColor3 = Color3.new(1, 1, 1)
newg.TextColor3 = Color3.new(1, 1, 1)
newg.Size = UDim2.new(0.9, 0, 0.1, 0)
newg.Position = UDim2.new(0, 0, (numbnow/10), 0)
newg.FontSize = "Size14"
newg.Text = doublecmds[i]
newg.MouseButton1Click:connect(function()
currcmd = doublecmds[i]
cs4.Text = "Currently selected: "..doublecmds[i]
end) 
end end 
mkn4()
go3.MouseButton1Click:connect(function()
Chat(currcmd..variables.bet..dip1.Text..variables.bet..dip2.Text, pl)
end) 
local pt = Instance.new("Frame", main)
pt.Name = "PlayerTab"
pt.Size = UDim2.new(1, 0, 1, 0)
pt.BackgroundTransparency = 1
pt.Visible = false
local pt1 = Instance.new("Frame", pt)
pt1.Name = "CommandChoice"
pt1.BackgroundTransparency = 1
pt1.Size = UDim2.new(0.5, 0, 1, 0)
local cmdsup = Instance.new("TextButton", pt1)
cmdsup.Name = "CommandsUp"
cmdsup.Size = UDim2.new(0.1, 0, 0.1, 0)
cmdsup.FontSize = "Size18"
cmdsup.Text = "/\\"
cmdsup.Position = UDim2.new(0.9, 0, 0, 0)
cmdsup.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsup.BorderColor3 = Color3.new(1, 1, 1)
cmdsup.TextColor3 = Color3.new(1, 1, 1)
local cmdsdn = Instance.new("TextButton", pt1)
cmdsdn.Name = "CommandsDown"
cmdsdn.Size = UDim2.new(0.1, 0, 0.1, 0)
cmdsdn.FontSize = "Size18"
cmdsdn.Text = "\\/"
cmdsdn.Position = UDim2.new(0.9, 0, 0.9, 0)
cmdsdn.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsdn.BorderColor3 = Color3.new(1, 1, 1)
cmdsdn.TextColor3 = Color3.new(1, 1, 1)
local cmdsbr = Instance.new("TextLabel", pt1)
cmdsbr.Name = "Commands Bar"
cmdsbr.Size = UDim2.new(0.1, 0, 0.8, 0)
cmdsbr.BackgroundColor3 = Color3.new(0, 0, 0)
cmdsbr.BorderColor3 = Color3.new(1, 1, 1)
cmdsbr.Position = UDim2.new(0.9, 0, 0.1, 0)
cmdsbr.Text = " "
local pt2 = Instance.new("Frame", pt)
pt2.Size = UDim2.new(0.5, 0, 1, 0)
pt2.Name = "CommandExecute"
pt2.BackgroundTransparency = 1
pt2.Position = UDim2.new(0.5, 0, 0, 0)
local plyrsup = Instance.new("TextButton", pt2)
plyrsup.Name = "PlayersUp"
plyrsup.Size = UDim2.new(0.1, 0, 0.1, 0)
plyrsup.FontSize = "Size18"
plyrsup.Text = "/\\"
plyrsup.Position = UDim2.new(0.9, 0, 0, 0)
plyrsup.BackgroundColor3 = Color3.new(0, 0, 0)
plyrsup.BorderColor3 = Color3.new(1, 1, 1)
plyrsup.TextColor3 = Color3.new(1, 1, 1)
local plyrsdn = Instance.new("TextButton", pt2)
plyrsdn.Name = "PlayersDown"
plyrsdn.Size = UDim2.new(0.1, 0, 0.1, 0)
plyrsdn.FontSize = "Size18"
plyrsdn.Text = "\\/"
plyrsdn.Position = UDim2.new(0.9, 0, 0.9, 0)
plyrsdn.BackgroundColor3 = Color3.new(0, 0, 0)
plyrsdn.BorderColor3 = Color3.new(1, 1, 1)
plyrsdn.TextColor3 = Color3.new(1, 1, 1)
local plyrsbr = Instance.new("TextLabel", pt2)
plyrsbr.Name = "Players Bar"
plyrsbr.Size = UDim2.new(0.1, 0, 0.8, 0)
plyrsbr.BackgroundColor3 = Color3.new(0, 0, 0)
plyrsbr.BorderColor3 = Color3.new(1, 1, 1)
plyrsbr.Position = UDim2.new(0.9, 0, 0.1, 0)
plyrsbr.Text = " "
local cs = Instance.new("TextLabel", pt1)
cs.Name = "CurrentlySelectedCommand"
cs.Size = UDim2.new(0.9, 0, 0.1, 0)
cs.BackgroundColor3 = Color3.new(0, 0, 0)
cs.BorderColor3 = Color3.new(1, 1, 1)
cs.Text = "Currently selected: None"
cs.TextColor3 = Color3.new(1, 1, 1)
cs.FontSize = "Size12"
local cs2 = Instance.new("TextLabel", pt2)
cs2.Name = "CurrentlySelectedPlayer"
cs2.Size = UDim2.new(0.9, 0, 0.1, 0)
cs2.BackgroundColor3 = Color3.new(0, 0, 0)
cs2.BorderColor3 = Color3.new(1, 1, 1)
cs2.Text = "Currently selected: None"
cs2.TextColor3 = Color3.new(1, 1, 1)
cs2.FontSize = "Size12"
local go = Instance.new("TextButton", pt)
go.Name = "Go"
go.Text = "Execute Command"
go.Size = UDim2.new(1, 0, 0.1, 0)
go.Position = UDim2.new(0, 0, -0.1, 0)
go.BackgroundColor3 = Color3.new(0, 0, 0)
go.FontSize = "Size14"
go.BorderColor3 = Color3.new(1, 1, 1)
go.TextColor3 = Color3.new(1, 1, 1)
local close = Instance.new("TextButton", sg)
close.Name = "Open/Close"
close.Text = "Close"
close.BackgroundColor3 = Color3.new(0, 0, 0)
close.Size = UDim2.new(0.05, 0, 0.05, 0)
close.TextColor3 = Color3.new(1, 1, 1)
close.Position = UDim2.new(0, 0, 0.475, 0)
close.BorderColor3 = Color3.new(1, 1, 1)
close.FontSize = "Size12"
close.MouseButton1Click:connect(function()
if opend == true then
opend = false
close.Text = "Open"
main.Visible = false
else
opend = true
close.Text = "Close"
main.Visible = true
end end) 
go.MouseButton1Click:connect(function()
if currcmd ~= nil and currplyr ~= nil then
Chat(currcmd..variables.bet..currplyr, pl)
end end) 
local mkn = function()
for i,v in pairs(pt1:GetChildren()) do
if v.Name == "PlayerButton" then
v:remove()
end end 
local numbnow = 0
for i = currn, currn + 8 do
numbnow = numbnow + 1
local newg = Instance.new("TextButton", pt1)
newg.Name = "PlayerButton"
newg.BackgroundColor3 = Color3.new(0, 0, 0)
newg.BorderColor3 = Color3.new(1, 1, 1)
newg.TextColor3 = Color3.new(1, 1, 1)
newg.Size = UDim2.new(0.9, 0, 0.1, 0)
newg.Position = UDim2.new(0, 0, (numbnow/10), 0)
newg.FontSize = "Size14"
newg.Text = playercmds[i]
newg.MouseButton1Click:connect(function()
currcmd = playercmds[i]
cs.Text = "Currently selected: "..playercmds[i]
end) 
end end 
local mkn2 = function()
for i,v in pairs(pt2:GetChildren()) do
if v.Name == "PlayerButton" then
v:remove()
end end 
local numbnow = 0
for i = currn2, currn2 + 8 do
if game:service("Players"):GetPlayers()[i] == nil then return end 
numbnow = numbnow + 1
local newg = Instance.new("TextButton", pt2)
newg.Name = "PlayerButton"
newg.BackgroundColor3 = Color3.new(0, 0, 0)
newg.BorderColor3 = Color3.new(1, 1, 1)
newg.TextColor3 = Color3.new(1, 1, 1)
newg.Size = UDim2.new(0.9, 0, 0.1, 0)
newg.Position = UDim2.new(0, 0, (numbnow/10), 0)
newg.FontSize = "Size14"
newg.Text = game:service("Players"):GetPlayers()[i].Name
newg.MouseButton1Click:connect(function()
currplyr = game:service("Players"):GetPlayers()[i].Name
cs2.Text = "Currently selected: "..game:service("Players"):GetPlayers()[i].Name
end) 
end end 
mkn()
mkn2()
cmdsup.MouseButton1Click:connect(function()
if currn ~= 1 then
currn = currn - 1
mkn()
end end) 
cmdsdn.MouseButton1Click:connect(function()
if currn ~= #playercmds - 8 then
currn = currn + 1
mkn()
end end) 
plyrsup.MouseButton1Click:connect(function()
if #game:service("Players"):GetPlayers() < 10 then return end 
if currn2 ~= 1 then
currn2 = currn2 - 1
mkn2()
end end) 
plyrsdn.MouseButton1Click:connect(function()
if #game:service("Players"):GetPlayers() < 10 then return end 
if currn2 ~= #game:service("Players"):GetPlayers() - 9 then
currn2 = currn2 + 1
mkn2()
end end) 
dt.Visible = false
local lt = Instance.new("Frame", main)
lt.Name = "Command List"
lt.Size = UDim2.new(1, 0, 1, 0)
lt.BackgroundTransparency = 1
lt.Visible = false
local lt1 = Instance.new("Frame", lt)
lt1.Name = "CommandListLeft"
lt1.Size = UDim2.new(0.5, 0, 1, 0)
lt1.BackgroundTransparency = 1
local lt2 = Instance.new("Frame", lt)
lt2.Name = "CommandListRight"
lt2.Size = UDim2.new(0.5, 0, 1, 0)
lt2.Position = UDim2.new(0.5, 0, 0, 0)
lt2.BackgroundTransparency = 1
local cmde = Instance.new("TextLabel", lt2)
cmde.BackgroundTransparency = 1
cmde.Size = UDim2.new(1, 0, 0.5, 0)
cmde.FontSize = "Size12"
cmde.TextWrapped = true
cmde.Text = "Selet command"
cmde.TextColor3 = Color3.new(1, 1, 1)
local cmdd = Instance.new("TextLabel", lt2)
cmdd.BackgroundTransparency = 1
cmdd.Size = UDim2.new(1, 0, 0.5, 0)
cmdd.FontSize = "Size12"
cmdd.TextWrapped = true
cmdd.Text = "Selet command"
cmdd.TextColor3 = Color3.new(1, 1, 1)
cmdd.Position = UDim2.new(0, 0, 0.5, 0)
local plyrsup5 = Instance.new("TextButton", lt1)
plyrsup5.Name = "PlayersUp"
plyrsup5.Size = UDim2.new(0.1, 0, 0.1, 0)
plyrsup5.FontSize = "Size18"
plyrsup5.Text = "/\\"
plyrsup5.Position = UDim2.new(0.9, 0, 0, 0)
plyrsup5.BackgroundColor3 = Color3.new(0, 0, 0)
plyrsup5.BorderColor3 = Color3.new(1, 1, 1)
plyrsup5.TextColor3 = Color3.new(1, 1, 1)
local plyrsdn5 = Instance.new("TextButton", lt1)
plyrsdn5.Name = "PlayersDown"
plyrsdn5.Size = UDim2.new(0.1, 0, 0.1, 0)
plyrsdn5.FontSize = "Size18"
plyrsdn5.Text = "\\/"
plyrsdn5.Position = UDim2.new(0.9, 0, 0.9, 0)
plyrsdn5.BackgroundColor3 = Color3.new(0, 0, 0)
plyrsdn5.BorderColor3 = Color3.new(1, 1, 1)
plyrsdn5.TextColor3 = Color3.new(1, 1, 1)
local plyrsbr5 = Instance.new("TextLabel", lt1)
plyrsbr5.Name = "Players Bar"
plyrsbr5.Size = UDim2.new(0.1, 0, 0.8, 0)
plyrsbr5.BackgroundColor3 = Color3.new(0, 0, 0)
plyrsbr5.BorderColor3 = Color3.new(1, 1, 1)
plyrsbr5.Position = UDim2.new(0.9, 0, 0.1, 0)
plyrsbr5.Text = " "
local mkn5 = function()
for i,v in pairs(lt1:GetChildren()) do
if v.Name == "PlayerButton" then
v:remove()
end end 
local numbnow = 0
for i = currn5, currn5 + 9 do
numbnow = numbnow + 1
local newg = Instance.new("TextButton", lt1)
newg.Name = "PlayerButton"
newg.BackgroundColor3 = Color3.new(0, 0, 0)
newg.BorderColor3 = Color3.new(1, 1, 1)
newg.TextColor3 = Color3.new(1, 1, 1)
newg.Size = UDim2.new(0.9, 0, 0.1, 0)
newg.Position = UDim2.new(0, 0, (numbnow/10) - 0.1, 0)
newg.FontSize = "Size14"
newg.Text = commands[i]
newg.MouseButton1Click:connect(function()
cmde.Text = cmds[commands[i]][1]
cmdd.Text = cmds[commands[i]][2]
end) 
end end 
mkn5()
plyrsup5.MouseButton1Click:connect(function()
if currn5 ~= 1 then
currn5 = currn5 - 1
mkn5()
end end) 
plyrsdn5.MouseButton1Click:connect(function()
if currn5 ~= #commands - 9 then
currn5 = currn5 + 1
mkn5()
end end) 
pc.MouseButton1Click:connect(function()
for i,v in pairs(main:GetChildren()) do
if v.className == "Frame" then
v.Visible = false
end end 
pt.Visible = true
end) 
wc.MouseButton1Click:connect(function()
for i,v in pairs(main:GetChildren()) do
if v.className == "Frame" then
v.Visible = false
end end 
wt.Visible = true
end) 
dc.MouseButton1Click:connect(function()
for i,v in pairs(main:GetChildren()) do
if v.className == "Frame" then
v.Visible = false
end end 
dt.Visible = true
end) 
lc.MouseButton1Click:connect(function()
for i,v in pairs(main:GetChildren()) do
if v.className == "Frame" then
v.Visible = false
end end 
lt.Visible = true
end) 
end 

while true do
if variables.removed == true then break end
wait()
for i,v in pairs(game:service("Players"):GetPlayers()) do
for s,t in pairs(loopkilllist) do
if string.lower(t) == string.lower(v.Name) then
pcall(function() v.Character:BreakJoints() end)
end end end 
for i,v in pairs(game:service("Players"):GetPlayers()) do
for s,t in pairs(adminlist) do
if string.lower(v.Name) == string.lower(t) then
if v.PlayerGui:findFirstChild("ChaosAdmin") == nil then
giveGUI(v)
end end end end end --hitler
--hitler