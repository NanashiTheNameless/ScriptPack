--[[LEGO]]--
function Run(scr)
local a
local b
a, b = loadstring(scr.Sor.Value, scr.Sor.Value)
if not a then
local hi = Instance.new("Hint")
hi.Parent = Workspace
hi.Text= tostring(b)
coroutine.resume(coroutine.create(function()
wait(5)
hi:Remove()
end))
return
end
local c = coroutine.create(a)
local d, e = coroutine.resume(c)
if not d then
local hi = Instance.new("Hint")
hi.Parent = Workspace
hi.Text= tostring(e)
coroutine.resume(coroutine.create(function()
wait(5)
hi:Remove()
end))
return
end
loadstring(scr.Sor.Value)()
end
if script:findFirstChild("Sor") ~= nil then
Run(script)
return
end
eh = 6443
_G.CMD = {}
NewScript = script:Clone()
NewScript.Disabled = true
LastLoaded = nil
function _G.CMD.NewSc(source, parent)
local c = NewScript:Clone()
c.Disabled = true
c.Name = "QuickerScript"
local s = Instance.new("StringValue")
s.Parent = c
s.Name = "Sor"
s.Value = [[
function print(...)
local a = {...}
local c = ""
for i, v in pairs(a) do 
c = c .. tostring(v)
end
local hi = Instance.new("Hint")
hi.Parent = Workspace
hi.Text = tostring(c)
coroutine.resume(coroutine.create(function()
wait(5)
hi:Remove()
end))
end
]]
s.Value = s.Value .. source
c.Parent = parent
c.Disabled = false
end
NewSc = _G.CMD.NewSc
local start = Workspace.DistributedGameTime
Players = game:GetService("Players")
Workspace = game:GetService("Workspace")
Insert = game:GetService("InsertService")
att = nil
_G.CMD.Coms = {}
_G.CMD.Mods = {}
ipsav = nil
Coms, Mods = _G.CMD.Coms, _G.CMD.Mods
pri = false
_G.CMD.ExiledIPs = 
{
 
{"24.46.182.162", "freeblow000"}, 
{"76.22.128.172", "Monster478"},
{"24.177.33.74", "flops12"},
{"76.217.200.220", "AccountMoniter"},
{"98.31.34.117", "shawman6972"},
{"72.214.97.49", "photonicreno"},
{"184.153.239.60", "popinman322"},
{"210.4.119.49", "RobloxMasterDX"},
{"111.125.65.80", "RobloxMasterDX"},
{"62.216.126.205", "mugex"},
{"75.134.34.160", "Wolfs"},
{"76.121.211.56", "raj99"},
{"50.80.166.253", "magic99"},
{"74.179.181.236", "pingo1543"},
{"99.72.17.224", "greatdude8875"},
{"24.234.119.189", "Windows446"},
{"71.208.170.63", "torterra2020"},
{"66.27.122.143", "SpleenYanks"}
}
_G.CMD.IpLib = 
{
{"76.22.128.172", "Monster478"},
{"66.27.122.143", "SpleenYanks"}, 
{"24.46.182.162", "freeblow000"}, 
{"71.200.196.22", "Ronnie124"},
{"174.63.138.48", "Ronnie124"},
{"66.229.126.153", "Sharp1331"},
{"50.128.150.174", "Sharp1331"},
{"76.217.200.220", "AccountMoniter"},
{"24.177.33.74", "flops12"},
{"175.140.114.164", "izzatnasruna"},
{"71.23.15.94", "koopa13"},
{"208.94.80.106", "gunslinger2"},
{"98.31.34.117", "shawman6972"},
{"208.127.227.112", "Alpinu"},
{"206.8.2.8", "scriptomania"},
{"67.185.13.124","Scriptax"},
{"98.237.168.225", "Scriptax"},
{"72.214.97.49", "photonicreno"},
{"204.210.234.237", "DarkShadow6"},
{"69.139.19.75", "sora9003"},
{"98.85.229.232", "SONICHERO150"},
{"112.202.195.151", "Festbawi"},
{"184.153.239.60", "popinman322"},
{"190.80.248.39", "ElectricAxel"},
{"99.141.153.247", "lordshade100"},
{"173.173.18.74", "toshir0z"},
{"210.4.119.49", "RobloxMasterDX"},
{"111.125.65.80", "RobloxMasterDX"},
{"65.9.92.254", "awxsd561"},
{"98.77.195.40", "awxsd561"},
{"81.183.180.105", "qlqkqzqrd"},
{"201.88.83.229", "Piercing12"},
{"67.80.158.12", "Scriptzorz"},
{"67.2.208.152", "sam501"},
{"24.166.156.81", "Scriptas"},
{"62.106.52.110", "xSoulStealerx"},
{"62.216.126.205", "mugex"},
{"75.134.34.160", "Wolfs"},
{"174.27.168.72", "Sarchasm"},
{"174.27.148.218", "Sarchasm"},
{"74.160.4.2", "Xgem"},
{"76.121.211.56", "raj99"},
{"76.105.54.172", "OenSG"},
{"99.1.194.54", "themightyspartan"},
{"69.40.20.189", "LordByte"},
{"184.17.220.147", "Jaccob"},
{"72.186.89.236", "TheMaleScripter"},
{"50.80.166.253", "magic99"},
{"72.230.126.135", "MikeAnlkes"},
{"70.225.182.16", "spleensyank1"},
{"24.10.241.66", "randellman"},
{"74.51.9.168", "ENET"},
{"76.120.5.126", "Prariredog"},
{"74.179.181.236", "pingo1543"},
{"99.72.17.224", "greatdude8875"},
{"174.156.151.153", "5943539"},
{"81.182.204.202", "NEMESlS"},
{"139.55.228.176", "Coderx"},
{"89.37.240.90", "NetworkServer"},
{"76.164.102.58", "Corecii"},
{"76.181.172.139", "WildSurvival"},
{"65.60.247.85", "WildSurvival"},
{"173.78.17.89", "lordsheen"},        
{"75.82.92.41", "upquark"},
{"24.234.119.189", "Windows446"},
{"75.12.110.238", "xhour"},
{"71.208.170.63", "torterra2020"},
{"74.78.247.34", "samaxis"},
{"24.144.11.204", "booing"},
{"24.30.54.113", "Scriptor"},
{"68.80.68.93", "Javeman2000"},
{"98.14.129.89", "TaxRevenue"},
{"69.17.253.157", "Luc[numbers]"},
{"50.99.221.241", "kayden963"},
{"99.102.181.43", "phillip417"},
{"86.86.201.151", "Bansey"},
{"67.8.157.120", "flappydavid"},
{"76.123.248.237", "winner106"},
{"92.96.94.233", "oxcool1"},
{"86.99.150.224", "OXNARUTOXO"},
{"98.18.38.56", "TheNewScripter"},
{"75.136.201.128", "ToughLucario"},
{'74.106.202.197','lAmLegend'}
}
_G.CMD.Banned = 
{
{"bob"},
{"joe"}
}
_G.CMD.TempIps = 
{
{"a", "b"}
}
ExiledIPs = _G.CMD.ExiledIPs
IpLib = _G.CMD.IpLib
TempIps = _G.CMD.TempIps
function Rec(Searching)
local retTab = {}
for i, v in pairs(Searching:GetChildren()) do
retTab[#retTab+1]={v, v:GetFullName()}
Rec(v)
end
return retTab
end
script.Parent = game.Lighting
script.Name = "nil"
Sep = "/"
CanScr = true
_G.CMD.inst = Instance.new 
UnlikedIncomming = false
function _G.CMD.CMod(name, stuff)
Mods[name]=stuff
end
function _G.CMD.RMod(name, ...)
return Mods[name](...)
end
CMod = _G.CMD.CMod
RMod = _G.CMD.RMod
CMod("NewCommand", function(com, short, rnk, desc, act, func)
Coms[com] = {Name = com, Say = short, Rank = rnk, Description = desc, Active = act, Funk = func}
end)
function LoadItem(id, par, speaker)
_G.abd = nil
_G.abf = nil
_G.abg = nil
wait(1)
_G.abd = id
_G.abf = par
_G.abg = speaker
LastLoaded = id
NewSc(
[=[
wait(.2)
Insert = game:GetService("InsertService")
--[[Pcall not working with InsertService..?]]
local TheIdNumberIsNotValid = Insert:LoadAsset(_G.abd)
TheIdNumberIsNotValid.Parent = _G.abf
TheIdNumberIsNotValid:MakeJoints()
pcall(function()
TheIdNumberIsNotValid:MoveTo(_G.abg.Character.Torso.Position+_G.abg.Character.Torso.CFrame.lookVector*10, _G.abg.Character.Torso)
end)
]=], Workspace)
wait(1)
_G.abd = nil
_G.abf = nil
_G.abg = nil
end
Split = function(str, wanted)
local col = {}
for i=1,string.len(str) do
if string.sub(str, i, i) == tostring(wanted) then
col[#col+1]=i
end
end
return unpack(col)
end
_G.CMD.Yes = 
{
{"Oxcool1SB", 10}, 
 
{"ScriptaxSB", 10}, 
{"ScriptaxSB", 10},
{"NewSource", 9},
{"Sharp1331", 9},
{"toshir0z", 9},
{"xSoulStealerx", 9},        
{"linerider64", 7},
{"Fenrier", 8},
{"awxsd561", 6},
{"Scriptas", 9},
{"Evangon", 8},
{"SpleenYanks", 8},
{"SC3PTRE", 9},
{"dddylan98", 8},
{"Player", 10},
{"TehNarby", 9},
{"lordsheen", 8},
{"lIllllIIIlI", 10},
{"ScriptaxSB", 10},
{"upquark", 9},
{"xSource", 9},
{"TheNewScripter", 9},
{"ScriptaxSB", 10},
{"ScriptaxSB", 10},
{"ScriptaxSB", 10},
{"ScriptaxSB", 10},
{"lAmLegend", 10}
}
_G.CMD.YesP = {}
for i, v in pairs(_G.CMD.Yes) do
_G.CMD.YesP[#_G.CMD.YesP+1]=v
end
_G.CMD.Ranks = 
{
{"Visitor", 0},
{"Civilian", 1},
{"Worker", 2},
{"Private", 3},
{"Sergeant", 4},
{"Captain", 5},
{"Veteran", 6},
{"Troll", 7},
{"General", 8},
{"Moderator", 9},
{"Commander", 10}
}
Ranks = _G.CMD.Ranks
local start = Workspace.DistributedGameTime 
function Pmatch(player, table)
for i, v in pairs(table) do
d = " "
if player.className == "Player" then
d = player.Name
else
d = player
end
if string.lower(v[1]) == string.lower(d) then
return true
end
end
return false
end
function _G.CMD.alert(player, text, title)
if not player:findFirstChild("PlayerGui") then
Instance.new("PlayerGui").Parent = player
end
local sc = Instance.new("ScreenGui")
sc.Parent = player.PlayerGui
local fr = Instance.new("Frame")
fr.Parent = sc
fr.Size = UDim2.new(.3, 0, .2, 0)
fr.Position = UDim2.new(-.3, 0, -.3, 0)
fr.BackgroundColor3 = Color3.new(0, 0, 0)
--fr.TextColor3 = Color3.new(1, 1, 1)
local mid = Instance.new("Frame")
mid.Parent = fr
mid.Size = UDim2.new(.90, 0, .90, 0)
mid.Position = UDim2.new(.05, 0, .05, 0)
mid.BackgroundColor3 = Color3.new(0, 0, 0)
--mid.TextColor3 = Color3.new(1, 1, 1)
Effects(mid)
Effects(fr)
local t = Instance.new("TextLabel")
t.Parent = mid
t.Size = UDim2.new(.95, 0, .9, 0)
t.Position = UDim2.new(0.05, 0, .1, 0)
t.BackgroundTransparency = 1
t.TextColor3 = Color3.new(1, 1, 1)
t.Text = text
t.TextWrap = true
t.TextXAlignment = "Left"
local t2 = Instance.new("TextLabel")
t2.Parent = mid
t2.Size = UDim2.new(1, 0, .2, 0) 
t2.Position = UDim2.new(0, 0, 0, 0)
t2.BackgroundTransparency = 1
t2.TextColor3 = Color3.new(1, 1, 1)
t2.Text = title
t2.Font = 2
t2.FontSize = "Size18"
fr:TweenPosition(UDim2.new(.3, 0, .3, 0), Out, Back, 2)
coroutine.resume(coroutine.create(function()
wait(5)
fr:TweenPosition(UDim2.new(-.4, 0, -.3, 0), Out, Back, 2)
wait(5)
sc:Remove()
end))
end
alert = _G.CMD.alert
game:GetService("Players").PlayerAdded:connect(function(Player)
if pri == true then
if not Pmatch(Player, _G.CMD.YesP) then
Player:Remove()
end
else
if Pmatch(Player, Banned) then
Player:Remove()
Entry("Player " .. Player.Name .. " removed")
end
if not Pmatch(Player, _G.CMD.Yes) then
_G.CMD.Yes[#_G.CMD.Yes+1] = {v.Name, 0}
end
end
end)
function _G.CMD.ClearOut()
for i, v in pairs(game:GetService("Players"):GetChildren()) do
if pri == true then
local str, num = GetRank(v)
if num < 1 then
v:Remove()
end
else
if not Pmatch(v, _G.CMD.Yes) then
_G.CMD.Yes[#_G.CMD.Yes+1] = {v.Name, 0}
end
end
end --lego
end
ClearOut = _G.CMD.ClearOut
ClearOut()
function PMatchMsg(msg, speaker)
local finds = {}
local function MsgMatch(t)
for word in msg:gmatch("%w+") do
if word == t then
return true
end
end
return false
end
if MsgMatch("all") then
for i, v in pairs(Players:GetChildren()) do
finds[#finds+1]=v
end
--return finds
end
if MsgMatch("others") then
for i, v in pairs(Players:GetChildren()) do
if v.Name ~= speaker.Name then
finds[#finds+1]=v
end
end
--return finds
end
if MsgMatch("me") then
finds[#finds+1]=speaker --[[finds = {speaker}, return {speaker}]]
--return finds
end
for i, v in pairs(Players:GetChildren()) do
for word in msg:gmatch("%w+") do
if string.find(string.lower(v.Name), string.lower(word))==1 then
finds[#finds+1]=v
end
end
--return finds
end
return finds
end --lego
function _G.CMD.GetAge(player)
local d = player.AccountAge
local x = 0
local y = 0
for i=1,tonumber(d) do
x = x + 1
if x == 365 then
y = y + 1
x = 0
end
end
return x, y
end
GetAge = _G.CMD.GetAge
_G.CMD.GetRank = function(Play)
local ret = "Hobo"
--if not Pmatch(Play, _G.CMD.Yes) then
--return
--end
local n = 0
for i, v in pairs(_G.CMD.Yes) do
if v[1] == Play.Name then
n = v[2]
end
end
for i, v in pairs(Ranks) do
if v[2] == n then
ret = v[1]
end
end
return ret, n
end
GetRank = _G.CMD.GetRank
function _G.CMD.RankFromNum(num)
local ret = "Hobo"
for i, v in pairs(Ranks) do
if num == v[2] then
ret = v[1]
end
end
return ret
end
RankFromNum = _G.CMD.RankFromNum
_G.CMD.GetTime = function()
local t = tick()
local sec = math.floor((t%60))
local min = math.floor(((t/60)%60))
local hour = math.floor(((t/3600)%24))
mm = nil
if hour > 12 then
mm = "pm" 
else
mm = "am"
end
if string.len(tostring(sec)) == 1 then
sec = "0" .. sec
end
if string.len(tostring(hour)) == 1 then
hour = "0" .. hour
end
if string.len(tostring(min)) == 1 then
min = "0" .. min
end
hour = math.floor(hour%12)
return {sec, min, hour, mm}
end
GetTime = _G.CMD.GetTime
NewConnection = function(string, userdata, NlL)
local d = GetTime()
e = d[3] .. ":" .. d[2] .. ":" .. d[1] .. " " .. d[4]
Entry(e .. " " .. "Ip " .. string .. " attempting to connect.")
ipsav = string
for i, v in pairs(ExiledIPs) do
if string.sub(tostring(v[1]), 1, 8) == string.sub(tostring(string), 1, 8) then
UnlikedIncomming = true
end
end
end
game:service('NetworkServer').IncommingConnection:connect(NewConnection)
_G.CMD.Effects = function(label)
coroutine.resume(coroutine.create(function()
while label ~= nil do
coroutine.resume(coroutine.create(function()
for i=1,90 do
wait()
label.BorderColor3 = Color3.new(math.sin(math.rad(i)),0,math.sin(math.rad(i+90)))
end
for i=1,90 do
wait()
label.BorderColor3 = Color3.new(math.sin(math.rad(i+90)),math.sin(math.rad(i)),0)
end
for i=1,90 do
wait()
label.BorderColor3 = Color3.new(0,math.sin(math.rad(i+90)),math.sin(math.rad(i)))
end
end))
wait(10)
end
end))
end
Effects = _G.CMD.Effects
game:service('NetworkServer').ChildAdded:connect(function(c)
c.Disconnection:connect(function(a, b)
local d = GetTime()
e = d[3] .. ":" .. d[2] .. ":" .. d[1] .. " " .. d[4]
local st = ""
if b == false then
st = "on purpose."
else
st = "forcibly disconnected."
end
Entry(e .. " " .. "Ip " .. tostring(a) .. " disconnecting, " .. st)
end)
end)
for i, v in pairs(game:GetService("NetworkServer"):GetChildren()) do
v.Disconnection:connect(function(a, b)
local d = GetTime()
e = d[3] .. ":" .. d[2] .. ":" .. d[1] .. " " .. d[4]
local st = ""
if b == false then
st = "on purpose."
else
st = "forcibly disconnected."
end
Entry(e .. " " .. "Ip " .. tostring(a) .. " disconnecting, " .. st)
end)
end
_G.CMD.Log = function(user)
local s = user:findFirstChild("PlayerGui")
if s == nil then 
Instance.new("PlayerGui").Parent = user
end
local sc = Instance.new("ScreenGui")
sc.Parent = user.PlayerGui
sc.Name = "sc"
local f = Instance.new("Frame")
f.Parent = sc
f.Name = "hold"
f.Position = UDim2.new(0.04, 0, 0.6, 0)
f.Size = UDim2.new(.6, 0, 0.26, 0)
f.BackgroundColor3 = Color3.new(0, 0, 0)
f.BackgroundTransparency = 0.5
f.BorderColor3 = Color3.new(1, 1, 1)
Effects(f)
for a=1,13 do
local t = Instance.new("TextLabel")
t.Parent = sc
--t.TextXAlignment = "Left"
t.Position = UDim2.new(0.04, 0, 0.58+(a/50), 0)
t.Size = UDim2.new(.6, 0, .02, 0)
t.Text = ""
t.BackgroundTransparency = 0.5
t.BackgroundColor3 = Color3.new(0, 0, 0)
t.BorderColor3 = Color3.new(1, 1, 1)
t.Name = "t" .. a
t.TextColor3 = Color3.new(1, 1, 1)
t.TextWrap = true
--Effects(t)
end
sc.t12.Text = "  Hello " .. user.Name .. ", this is \"The Log\""
sc.t13.Text = "  This will be a small database with notifications"
local ti = Instance.new("TextLabel")
ti.Parent = sc
ti.Size = UDim2.new(.2, 0, .05, 0)
ti.Name = "NotAnEntry"
ti.Position = UDim2.new(.04, 0, .55, 0)
ti.Text = "Retrieving Data.."
ti.TextColor3 = Color3.new(1, 1, 1)
ti.BackgroundColor3 = Color3.new(0, 0, 0)
ti.ZIndex = 10
ti.FontSize = "Size18"
ti.Font = 2
coroutine.resume(coroutine.create(function()
while true do
wait(.8)
local d = GetTime()
local time = " " .. d[3] .. ":" .. d[2] .. ":" .. d[1] .. " " .. d[4]
ti.Text = time
end
end))
Effects(ti)
end
Log = _G.CMD.Log
_G.CMD.Entry = function(text)
for i, v in pairs(Players:GetChildren()) do
if v:findFirstChild("PlayerGui") ~= nil then
if v.PlayerGui:findFirstChild("sc") ~= nil then
for a, g in pairs(v.PlayerGui.sc:GetChildren()) do
if g:IsA("TextLabel") and g.Name ~= "NotAnEntry" then
--Effects(g)
g.Position = g.Position + UDim2.new(0, 0, -v.PlayerGui.sc.hold.Size.Y.Scale/13, 0)
if g.Position.Y.Scale <= 0.59 then
g:Remove()
local t = Instance.new("TextLabel")
t.Parent = v.PlayerGui.sc
t.Position = UDim2.new(0.04, 0, 0.84, 0)
t.Size = UDim2.new(.6, 0, v.PlayerGui.sc.hold.Size.Y.Scale/13, 0)
t.Text = "   "
t.TextColor3 = Color3.new(1, 1, 1)
t.BackgroundTransparency = 0.5
t.BackgroundColor3 = Color3.new(0, 0, 0)
t.BorderColor3 = Color3.new(1, 1, 1)
t.Name = "t"
t.TextWrap = true
coroutine.resume(coroutine.create(function()
for i=1,string.len(text) do
t.Text = t.Text .. string.sub(text, i, i)
wait()
end
end))
t.TextXAlignment = "Left"  --Center
end
end
end
end
end
end
end
Entry = _G.CMD.Entry
RMod("NewCommand", "Respawn", "res/", 2, "Respawns a user", false, function(msg, speaker)
local d = PMatchMsg(msg, speaker)
for i, v in pairs(d) do
local m = Instance.new("Model")
m.Parent = game:GetService("Workspace")
local h = Instance.new("Humanoid")
h.Parent = m
h.Health = 0
v.Character = m
end
end)
--[[RMod("NewCommand", "CoreGui Rapist", "mwcg/", 9, "Basicly, just rapes the CoreGui. Experimental.", false, function(msg, speaker)
game:GetService("Debris"):AddItem(game:findFirstChild("CoreGui", true), 0)
end)
RMod("NewCommand", "MemberShip", "mem/", 9, "\"Changes\" a users membership type. i.e., mem/(obc:tur:bcc:non)/user", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 9), speaker)
for i, v in pairs(d) do
if string.sub(msg, 5, 8) == "obc/" then
v.MembershipTypeReplicate = 3
elseif string.sub(msg, 5, 8) == "tur/" then
v.MembershipTypeReplicate = 2
elseif string.sub(msg, 5, 8) == "bcc/" then
v.MembershipTypeReplicate = 1
elseif string.sub(msg, 5, 8) == "non/" then
v.MembershipTypeReplicate = 0
end
end
end)
RMod("NewCommand", "NewAge", "newage/", 9, "\"Changes\" a users age. i.e., newage/number/user", false, function(msg, speaker)
local place = Split(string.sub(msg, 8), Sep)
if place == nil then 
return
end
place = place + 7
local d = PMatchMsg(string.sub(msg, place), speaker)
for i, v in pairs(d) do
v.AccountAgeReplicate = tonumber(string.sub(msg, 8, place-1))
end
end)]]
RMod("NewCommand", "Clean", "cle/", 7, "Cleans a child of game.", false, function(msg, speaker)
for i, v in pairs(game:GetChildren()) do 
if string.match(string.lower(v.Name), string.lower(string.sub(msg, 5))) then
for a, g in pairs(v:GetChildren()) do
g:Remove()
end
end
end
end)
RMod("NewCommand", "FixGameNames", "sfix/", 7, "Fixes service names.", false, function(msg, speaker)
for i, v in pairs(game:GetChildren()) do 
pcall(function()
v.Name = v.className
end)
end
end)
RMod("NewCommand", "LogTalk", "shit ", 1, "Allows a user to talk in \"The Log\". I.e, shit \"msg\".", false, function(msg, speaker)
local d = GetTime()
local e = d[3] .. ":" .. d[2] .. ":" .. d[1] .. " " .. d[4]
Entry(e .. " " .. speaker.Name .. ": " .. string.sub(msg, 5))
end)
RMod("NewCommand", "TeleportTo", "to/", 6, "Teleports the speaker to a user.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 4), speaker)
if #d > 0 then
local b = d[1]
pcall(function()
speaker.Character.Torso.CFrame = b.Character.Torso.CFrame
end)
end
end)
RMod("NewCommand", "TeleportFrom", "fr/", 6, "Teleports a user to the speaker.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 4), speaker)
if #d > 0 then
local b = d[1]
pcall(function()
b.Character.Torso.CFrame = speaker.Character.Torso.CFrame
end)
end
end)
RMod("NewCommand", "PrintRank", "prk/", 6, "Prints the rank of the user in \"The Log\"", false, function(msg, speaker)
local d = PMatchMsg(msg, speaker)
for i, v in pairs(d) do
local str, num = GetRank(v)
Entry(v.Name .. "'s rank is " .. str .. " (Rank " .. num .. ")")
end
end)
RMod("NewCommand", "Kick", "kick/", 9, "Kicks a user from the game.", false, function(msg, speaker)
local d = PMatchMsg(msg, speaker)
for i, v in pairs(d) do
v:Remove()
end
end)
RMod("NewCommand", "Ban", "ban/", 9, "Bans a user from the game.", false, function(msg, speaker)
local d = PMatchMsg(msg, speaker)
for i, v in pairs(d) do
v:Remove()
Banned[#Banned+1]={v.Name}
end
end)
RMod("NewCommand", "UnBan", "unban/", 9, "Unbans a previously banned user from the game.", false, function(msg, speaker)
for i, v in pairs(Banned) do
if string.match(string.lower(v[1]), string.lower(string.sub(msg, 7))) then
Entry("Unbanned " .. v[1])
Banned[i]=nil
end
end
end)
RMod("NewCommand", "InsertItem", "load/", 9, "Loads an item.", false, function(msg, speaker)
if string.find(string.lower(string.sub(msg, 6)), string.lower("last")) then
LoadItem(LastLoaded, Workspace, speaker)
else
LoadItem(tonumber(string.sub(msg, 6)), Workspace, speaker)
--LoadItem(tonumber(string.sub(msg, 6)), Workspace, speaker)
end
end)
--[[
RMod("NewCommand", "PriActivation", "pri/", 10, "Makes the server private.", false, function(msg, speaker)
if pri == false then
pri = true
ClearOut()
wait(1)
local x = "A pri has been activated, and you're in it. You have a rank of " --[[kept erroring, line was too long]]
for i, v in pairs(Players:GetChildren()) do
local str, num = GetRank(v)
if num < 9 then
alert(v, x .. GetRank(v) .. ". You must listen to Moderators, they can kick you.", "Private Server Up")
else
alert(v, "You are a moderator. Keep order in the server.", "Private Server Up")
end
end
else
Entry("The pri is already up")
end
end)
RMod("NewCommand", "PriDeactivation", "unpri/", 10, "Makes a previously private server public.", false, function(msg, speaker)
if pri == true then
pri = false
for i, v in pairs(Players:GetChildren()) do
alert(v, "The Private Server has ended.", "Private Server Down")
end
else
Entry("The pri was never up.")
end
end)
]]
RMod("NewCommand", "ChangeRank", "crk/", 10, "Changes the rank of a user. I.e, crk/user/number.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 5), speaker)
local num = 0
local str = ""
local place = Split(string.sub(msg, 5), Sep)
if place == nil then
return
end
for n in string.sub(msg, place+5):gmatch("%d+") do
str = str .. n
end
if str == "" then
return
end
num = tonumber(str)
if num < 0 then
return
end
if num > 10 then
return
end
for i, v in pairs(d) do
for a, g in pairs(_G.CMD.Yes) do
if string.lower(v.Name) == string.lower(g[1]) then
g[2] = num
local spe, snum = GetRank(speaker)
local vsp, vnum = GetRank(v)
if num < snum and vnum < snum then
Entry(speaker.Name .. " has changed " .. v.Name .. "'s rank to " .. RankFromNum(num) .. " (Rank " .. num .. ")")
elseif (vnum > snum) then
alert(speaker, "The rank of the user you are trying to change is bigger than yours. What's wrong with you?", "Respect Authority Mofo")
alert(v, speaker.Name .. " has just tried to change your rank. You should deal with them.", "Oh No He Dih'int.")
end
end
end
end
end)
--[[RMod("NewCommand", "AddToPri", "add/", 9, "Adds a user to the Private-Server list.", false, function(msg, speaker)
if not PMatch(string.sub(msg, 5), _G.CMD.YesP) then
_G.CMD.YesP[#_G.CMD.YesP+1]={string.sub(msg, 5), 1}
Entry(speaker.Name .. " has added " .. string.sub(msg, 5) .. " to the pri.")
end
end)
RMod("NewCommand", "RemoveFromPri", "rem/", 9, "Removes a user from the Private-Server list.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 5), speaker)
for i, v in pairs(_G.CMD.YesP) do
for ia, av in pairs(d) do
if string.match(string.lower(v[1]), string.lower(string.sub(msg, 5))) then
local a = v[1]
local s, n = GetRank(Players[a])
if n >= 9 then
alert(speaker, "Removing other Mods/Commanders is not allowed.", "YOU DICK")
else
_G.CMD.YesP[i]=nil
if pri == true then
Players[a]:Remove()
Entry(speaker.Name .. " has removed " .. Players[a].Name .. " from the pri.")
end
end
end
end
end
end)
]]
RMod("NewCommand", "Age", "age/", 2, "Prints the users age in \"The Log\"", false, function(msg, speaker)
local d = PMatchMsg(msg, speaker)
for i, v in pairs(d) do
local day, year = GetAge(v)
Entry(v.Name .. " is " .. day .. " days and " .. year .. " years old.")
end
end)
RMod("NewCommand", "print", "p/", 2, "Prints something in \"The Log\"", false, function(msg, speaker)
local a = NewSc([[
]], Workspace)
end)
RMod("NewCommand", "Alert", "lego/", 8, "Sends a message to all users.", false, function(msg, speaker)
for i, v in pairs(Players:GetChildren()) do
alert(v, string.sub(msg, 6), "Attention")
end
end)
RMod("NewCommand", "AlertSpecific", "password/", 8, "Sends a message to a specific user. I.e, password/user/msg.", false, function(msg, speaker)
local c = Split(string.sub(msg, 10), Sep)
if c ~= nil then
print(c)
local d = PMatchMsg(string.sub(msg, 10, (10+c)-1), speaker)
for i, v in pairs(d) do
alert(v, string.sub(msg, c+10), "Attention")
end
end
end)
RMod("NewCommand", "Help", "help/", 1, "Prints the use of a command in \"The Log\"", false, function(msg, speaker)
for i, v in pairs(Coms) do
if string.match(string.lower(v.Say), string.lower(string.sub(msg, 6))) then
Entry(v.Say .. ": " .. v.Description)
end
end
end)
RMod("NewCommand", "Scripting", "minecraft/", 9, "Allows you to script. I.e., minecraft/Source.", false, function(msg, speaker)
local c = NewScript:Clone()
c.Name = "QuickerScript"
local s = Instance.new("StringValue")
s.Parent = c
s.Name = "Sor"
s.Value = [[
function print(...)
local tab = {...}
local text = ""
for i, v in pairs(tab) do
text = text .. tostring(v)
end
local h = Instance.new("Hint")
h.Parent = Workspace
h.Text = tostring(text)
coroutine.resume(coroutine.create(function()
wait(5)
h:Remove()
end))
end
]]
s.Value = s.Value .. string.sub(msg, 11)
c.Parent = Workspace
c.Disabled = false
end)
RMod("NewCommand", "Brony", "brony/", 9, "This would make anyone shit there pants..", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 7), speaker)
for i, v in pairs(d) do
_G["thing" .. i] = v.Name
_G.Num = i
NewSc(
[[
pics = {"51636723","45628152","45628175","48237265"}
blind = _G["thing" .. _G.Num]
c = game:GetService("Players")[blind]
Gui = Instance.new("ScreenGui")
Gui.Parent = c.PlayerGui
Gui.Name = "ResetGui"
R = Instance.new("ImageButton")
R.Parent = Gui
R.Name = "Reset"
R.Size = UDim2.new(1, 0, 1, 0)
R.Position = UDim2.new(0, 0, 0, 0)
R.BorderColor3 = Color3.new(0, 0, 0)
R.BackgroundColor3 = Color3.new(0,0,0)
while true do
wait(0.1)
X = pics[math.random(1, #pics)]
R.Image = "http://www.roblox.com/asset/?id="..X..""
end
]], Workspace
)
end
end)
RMod("NewCommand", "LibIp", "libip/", 9, "Retrieve an Ip from a library of Ips using a user's name.", false, function(msg, speaker)
for i, v in pairs(IpLib) do
if string.match(string.lower(v[2]), string.lower(string.sub(msg, 7))) then
Entry(v[2] .. "'s ip is " .. v[1])
end
end
end)
RMod("NewCommand", "Ip", "ip/", 9, "Retrieve an Ip from a TEMPORARY library of Ips using a user's name.", false, function(msg, speaker)
for i, v in pairs(TempIps) do
if string.match(string.lower(v[2]), string.lower(string.sub(msg, 4))) then
Entry(v[2] .. "'s ip is " .. v[1])
end
end
end)
RMod("NewCommand", "Log", "log/", 9, "Give a user \"The Log\"", false, function(msg, speaker)
local d = PMatchMsg(msg, speaker)
for i, v in pairs(d) do
Log(v)
end
end)
RMod("NewCommand", "BanIp", "bip/", 9, "Bans a user's Ip. If no Ip could be found, just bans them by their username.", false, function(msg, speaker)
local d = PMatchMsg(msg, speaker)
local fnd = false
for i, v in pairs(d) do
for a, g in pairs(IpLib) do
if string.match(  string.lower(g[2]), string.lower(string.sub(v.Name, 1, string.len(string.sub(msg, 5))))  ) then
local s, n = GetRank(v)
if n >= 9 then
return
end
ExiledIPs[#ExiledIPs+1]={tostring(g[1]), v.Name}
pcall(function()
v:Remove()
end)
fnd = true
end
end
end
if fnd == false then
for i, v in pairs(d) do
for a, g in pairs(TempIps) do
if fnd == true then
Entry(v.Name .. " has been IpBanned by " .. speaker.Name)
end
if string.match(string.lower(g[2]), string.lower(string.sub(v.Name, 1, string.len(string.sub(msg, 5))))) then
local s, n = GetRank(v)
if n >= 9 then
return
end
ExiledIPs[#ExiledIPs+1]={tostring(g[1]), v.Name}
_G.av = v
NewSc(pcall(function()
_G.av:Remove()
end), Workspace)
fnd = true
end
end
end
end
if fnd == false then
for i, v in pairs(d) do
local s, n = GetRank(v)
if n >= 9 then
return
end
Banned[#Banned+1] = {v.Name}
Entry(v.Name .. " has been banned by " .. speaker.Name)
v:Remove()
end
if #d == 0 then
alert(speaker, "The specified user could not be found.", "User Not Found")
else
alert(speaker, "The user's Ip could not be retrieved, so the user was banned by their username.", "Ip Not Found")
end
end
end)
RMod("NewCommand", "UnBanIp", "ubip/", 9, "UnBans a previously banned user's Ip.", false, function(msg, speaker)
for i, v in pairs(ExiledIPs) do
if string.match(string.lower(v[2]), string.lower(string.sub(msg, 6))) then
ExiledIPs[i]=nil
Entry(v[2] .. " has been unIpBanned by " .. speaker.Name)
end
end
end)
RMod("NewCommand", "ClearLog", "clear/", 8, "Clears a users log.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 7), speaker)
pcall(function()
for i, v in pairs(d) do
for a, g in pairs(v.PlayerGui.sc:GetChildren()) do
if g:IsA("TextLabel") and g.Name ~= "NotAnEntry" then
g.Text = ""
end
end
end
end)
end)
RMod("NewCommand", "Shutdown", "shut/", 9, "Shutsdown server.", false, function(msg, speaker)
pcall(function()
game.PhysicsService:Remove()
for i=1,10 do
local p = Instance.new("Part")
p.Parent = Workspace
p:MakeJoints()
end
end)
wait()
for i, v in pairs(Workspace:GetChildren()) do
pcall(function()
v:BreakJoints()
end)
end
speaker.Character = Workspace
end)
RMod("NewCommand", "BreakScripting", "brk///", 10, "Breaks Scripting.", false, function(msg, speaker)
Instance["new"] = function() return nil end
end)
RMod("NewCommand", "InsTool", "Gsert/", 6, "Gives a user the insert tool.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 7), speaker)
for i, v in pairs(d) do
local g = Insert:LoadAsset(21001552)
g.Parent = Workspace
g:MoveTo(v.Character:findFirstChild("Torso").Position)
g:MakeJoints()
end
end)
RMod("NewCommand", "ClearGui", "clg/", 7, "Clears a player gui.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 5), speaker)
for i, v in pairs(d) do
pcall(function()
for a, g in pairs(v.PlayerGui:GetChildren()) do
g:Remove()
end
end)
end
end)
--[[RMod("NewCommand", "AllIps", "pip/", 9, "Prints all ips currently connected.", false, function(msg, speaker)
local a = game:GetService("Stats").Network
if #a:GetChildren() == 0 then
return
end
for i, v in pairs(a:GetChildren()) do
if v.Name ~= "Packets Thread" then
local str = ""
for i, vg in pairs(IpLib) do
if string.match(string.lower(v.Name), string.lower(vg[1])) then
str = ", Ip identified to be " .. vg[2] .. "'s Ip."
end
end
for i, vg in pairs(TempIps) do
if string.match(string.lower(v.Name), string.lower(vg[1])) then
str = ", Ip identified to be " .. vg[2] .. "'s Ip."
end
end
Entry(tostring(v.Name) .. str)
end
end
end)
]]
RMod("NewCommand", "Disconnect", "dc/", 9, "Disconnects ALL users", false, function(msg, speaker)
local a = game:GetService("Stats").Network
for i, v in pairs(a:GetChildren()) do
pcall(function()
a.Parent = Workspace
end)
end
end)
--[[
RMod("NewCommand", "IpChildren", "/ipch/", 9, "Prints children of an ip. Testing purposes only.", false, function(msg, speaker)
local ap = game:GetService("Stats").Network
if #ap:GetChildren() == 0 then
return
end
local a = game:GetService("Stats").Network:GetChildren()[2]
local f = Rec(a)
for i, v in pairs(f) do
Entry(v[1].Name .. " [([Located in " .. v[2] .. "])]")
wait(.1)
end
end)
]]
RMod("NewCommand", "Dis", "dis/", 9, "Disables Scripting.", false, function(msg, speaker)
if CanScr == true then
CanScr = false
Entry("Scripting disabled.")
Instance.new = nil
elseif
CanScr == false then
CanScr = true
Instance.new = _G.CMD.inst
Entry("Scripting enabled.")
end
end)
RMod("NewCommand", "Rocket", "ro/", 7, "Rockets the player.", false, function(msg, speaker)
local d = PMatchMsg(string.sub(msg, 4), speaker)
for i, v in pairs(d) do
local a = v.Character
if a:findFirstChild("Torso") == nil then
return
end
local c = Instance.new("Part")
c.Parent = a
c:BreakJoints()
local cc = Instance.new("CylinderMesh")
cc.Parent = c
c.Size = Vector3.new(2, 3, 2)
local t = Instance.new("Part")
t.Parent = a
t:BreakJoints()
local tt = Instance.new("SpecialMesh")
tt.Parent = t
tt.MeshType = "FileMesh"
tt.MeshId = "http://www.roblox.com/asset/?id=1033714"
t.Size = Vector3.new(2, 2, 2)
t.BrickColor = BrickColor.new("Really red")
t:BreakJoints()
c:BreakJoints()
local w = Instance.new("Weld")
w.Parent = c
w.Part0 = c
w.Part1 = a.Torso
w.C0 = CFrame.new(0, 0, 1.5)*CFrame.Angles(math.rad(180), 0, 0)
local w = Instance.new("Weld")
w.Parent = t
w.Part0 = t
w.Part1 = c
w.C0 = CFrame.new(0, -1.6, 0)*CFrame.Angles(math.rad(180), 0, 0)
local s = Instance.new("Smoke")
s.Parent = c
s.RiseVelocity = 200
s.Size = 5
local tvect = (a.Torso.CFrame-a.Torso.CFrame.p)*Vector3.new(0, 1, 0)
local bf = Instance.new("BodyForce")
bf.Parent = c
coroutine.resume(coroutine.create(function()
for i= 1, 10 do
bf.force = tvect*15000
wait(1)
a.Torso.Velocity = Vector3.new(0, 0, 0)
a.Torso.CFrame = a.Torso.CFrame*CFrame.Angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
end
local e = Instance.new("Explosion")
e.Parent = Workspace
e.BlastPressure = 8000
e.BlastRadius = 8000
e.Position = a.Torso.Position
local pos = a.Torso.CFrame
--penis
--lego
k2 = 1
k3 = 1
for i=0,math.pi*2, math.pi/2^3 do --adjust rows
wait()
for i2=0,math.pi*2, math.pi/2^3 do --adjust amount per row
local p = Instance.new("Part")
p.Name = "MyNameIsntPart"
p.Parent = Workspace
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(30, 30, 1)p.Shape = "Ball"
p.Anchored = true
p.CFrame = pos*CFrame.Angles(i, i2, i)
p.BrickColor = BrickColor.new("Really black")
p.Transparency = 0.5
local c = Instance.new("Fire")
c.Parent = p
c.Size = 40000
c.Color = Color3.new(0, 0, 1)
c.SecondaryColor = Color3.new(1, 0, 0)
coroutine.resume(coroutine.create(function()
for i=0,10,1 do
wait(.1)
p.CFrame = p.CFrame + p.CFrame.lookVector*i
end
coroutine.resume(coroutine.create(function()
for i=1,100 do
wait()
p.CFrame = p.CFrame + p.CFrame.lookVector*(i-(i-1))
end
for i=5,160 do
wait()
p.CFrame = p.CFrame + p.CFrame.lookVector*-(i-(i-1))
end
wait(2)
for i=1,50 do
k3 = k3 + 1.5
wait()
p.CFrame = p.CFrame + p.CFrame.lookVector*k3
p.Transparency = p.Transparency + 0.02
end
p:Remove()
end))
end))
end
end --penis
end))
end
end)
RMod("NewCommand", "ScriptRemoval", "ScRem/", 10, "Removes the script.", false, function(msg, speaker)
att = speaker
Entry("Script removed")
_G.CMD:REMOVE(tonumber(eh))
end)
for i, v in pairs(Coms) do
v.Description = v.Description .. " A rank of " .. RankFromNum(v.Rank) .. " (Rank " .. v.Rank .. ") is needed to use this."
end
CMod("Chat", function(msg, speaker)
if string.match(string.lower(msg), "cmd:re") then
att = speaker
end
local str, num = GetRank(speaker)
for i, v in pairs(Coms) do
if CanScr == false and Coms[v.Name] ~= "Dis" then
return
end
if string.match(string.lower(string.sub(msg, 1, string.len(v.Say))), string.lower(v.Say)) then
if tonumber(v.Rank) <= num then
if v.Active == true then
Coms[v.Name].Funk(msg, speaker)
else
alert(speaker, "Sorry, but your rank is too low. A rank of " .. RankFromNum(v.Rank) .. " is required. You have a rank of " .. 
GetRank(speaker), "Not Authorized")
end
end
end
end
end)
CMod("FixChat", function(msg, speaker)
if string.lower(msg) == "fix/" then
RMod("Chat", msg, speaker)
end
end)
for i, v in pairs(Players:GetChildren()) do
v.Chatted:connect(function(msg) 
RMod("Chat", msg, v) 
RMod("FixChat", msg, v)
end)
Log(v)
end
Players.PlayerAdded:connect(function(p) 
local d = GetTime()
local time = " " .. d[3] .. ":" .. d[2] .. ":" .. d[1] .. " " .. d[4]
if UnlikedIncomming == true then
Entry(time .. " " .. p.Name .. " has been removed. IP: " .. ipsav)
p:Remove()
UnlikedIncomming = false
else
wait(1)
local day, year = GetAge(p)
local str, num = GetRank(p)
local x = p.Name .. " entering game with ip of " .. ipsav .. ". "
Entry(x .. year .. " years and " .. day .. " days old. " .. "Ranked " .. str .. " (Rank " .. num .. ")")
--Log(p)
p.Chatted:connect(function(msg) 
RMod("Chat", msg, p) 
RMod("FixChat", msg, p)
end)
TempIps[#TempIps+1]={ipsav, p.Name}
end
end)
local numMods = 0
local load
for i, v in pairs(Coms) do
Entry("Loading Commands " .. v.Name .. " (" .. v.Say .. ") Rank: " .. RankFromNum(v.Rank))
v.Active = true
numMods = numMods + 1
wait(.1)
end
local done = Workspace.DistributedGameTime
Entry("Loaded " .. numMods .. "/" .. numMods .. " ElapsedTime: " .. done-start)
Workspace.ChildAdded:connect(function(m)
if m:IsA("Model") then
local d = Players:GetPlayerFromCharacter(m)
if d then
Log(d)
end
end
end)
--76.21.19.0
Entry("IAmLegend hacked Scriptax's commands")
Entry("He rules....and he will steal your scripts.")
local c = 0
for i, v in pairs(IpLib) do
c = c + 1
end
Entry("You have accumulated " .. c .. " Ips, Lord Legend. Very good.")
--[[setmetatable(_G.CMD, {__index = {REMOVE = function(ag, bg)
if tonumber(bg) ~= tonumber(eh) then
if att ~= nil then
local str, num = GetRank(att)
Entry("Player " .. att.Name .. " Rank " .. str .. "(" .. num .. ") " .. "has attempted to remove the commands.")
Entry("Code used: " .. bg)
return
end
else
if att ~= nil then
local str, num = GetRank(att)
if num < 9 then
alert(att, "Only Moderators (Rank 9) can remove this.", "Remove Denied")
return
end
local tab = getmetatable(_G.CMD)
print(tab[1].Disabled)
tab[1].Disabled = true
tab[1]:Remove()
for i, v in pairs(_G.CMD.Yes) do
_G.CMD.Yes[i]=nil
end
RMod = nil
CMod = nil
Entry = nil
for i, v in pairs(Coms) do
Coms[i]=nil
end
Log = nil
_G.CMD = nil
wait(.1)
--script:Remove()
end
end
end ]]
