local NOCLIP = false
local JESUSFLY = false
local SWIM = false

game:GetService('RunService').Stepped:connect(function()
if NOCLIP then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
elseif JESUSFLY then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(12)
elseif SWIM then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(4)
end
end)

_G.Rc7Notification = function(a,b,c)
game:GetService("CoreGui"):WaitForChild("RobloxGui").SendNotification:Fire(a, b, "rbxassetid://571324445", c)
end

local gPlayers = game:GetService("Players")
local admin = gPlayers.LocalPlayer.Name
local bannedplyrs = {}

local admins = {'NAME','NAME'} -- names here of people who have access to your commands! (Your name doesn't need to be in here.)

-- declare services / init stuff --
local services={}
local cmds={}
local std={}
function KICK(PLAYER_KICK)
if PLAYER_KICK.Character:FindFirstChild('Humanoid') then
local KICK_1 = Instance.new('SkateboardPlatform', PLAYER_KICK.Character)
KICK_1.Name = ''
KICK_1.CFrame = CFrame.new(math.random(-1000, 1000), 1000, math.random(-1000, 1000))
KICK_1.CanCollide = false
KICK_1.Transparency = 1

PLAYER_KICK.Character.Humanoid.WalkSpeed = 0

wait()

local WELD_1 = Instance.new('Weld', KICK_1)
WELD_1.Name = ''
WELD_1.Part0 = PLAYER_KICK.Character.Torso
WELD_1.Part1 = KICK_1
WELD_1.C0 = CFrame.new(0, -400, 0)

wait()

KICK_1.Anchored = true
WELD_1:remove()
end
end


local serverLocked = false

game.Players.PlayerAdded:connect(function(player)
if serverLocked == true then
player.CharacterAdded:connect(function()
wait(2)
KICK(player)
end)
end
end)
function FIX_LIGHTING()
game.Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
game.Lighting.Brightness = 1
game.Lighting.GlobalShadows = true
game.Lighting.Outlines = false
game.Lighting.TimeOfDay = 14
game.Lighting.FogEnd = 100000
end

services.players=gPlayers
services.lighting=game:GetService('Lighting')
services.workspace=game:GetService('Workspace')
services.events = {}
local user = gPlayers.LocalPlayer

local cmdprefix=';'
local scriptprefix='/'
local split=" "


updateevents=function()
for i,v in pairs(services.events) do services.events:remove(i) v:disconnect() end
for i,v in pairs(gPlayers:players())do
local ev = v.Chatted:connect(function(msg) do_exec(msg,v) end)
services.events[#services.events+1] = ev
end
end

-- safazi's lib --

std.inTable=function(tbl,val)
if tbl==nil then return false end

for _,v in pairs(tbl)do
if v==val then return true end
end 
return false
end

std.out=function(str)
print(str)
end

std.list=function(tbl) --turns table into list with commas
local str=''
for i,v in pairs(tbl)do
str=str..tostring(v)
if i~=#tbl then str=str..', ' end
end 
return str
end

std.endat=function(str,val)
local z=str:find(val)
if z then 
return str:sub(0,z-string.len(val)),true
else 
return str,false 
end
end

std.first=function(str) return str:sub(1,1) end

isAdmin=function(name)
if name==admin then
return true
elseif admins[name]==true then
return true
end
return false
end

gPlayers.PlayerAdded:connect(function(player)
for i,v in pairs(bannedplyrs) do
if player == v then player:Destroy() end
end
end)

local exec=function(str)
spawn(function()
local script, loaderr = loadstring(str)
if not script then
error(loaderr)
else
script()
end
end)
end

local findCmd=function(cmd_name)
for i,v in pairs(cmds)do
if v.NAME:lower()==cmd_name:lower() or std.inTable(v.ALIAS,cmd_name:lower())then
return v
end
end
end

local getCmd=function(msg)
local cmd,hassplit=std.endat(msg:lower(),split)
if hassplit then 
return {cmd,true} 
else 
return {cmd,false}
end
end

local getprfx=function(strn)
if strn:sub(1,string.len(cmdprefix))==cmdprefix then return{'cmd',string.len(cmdprefix)+1}
elseif strn:sub(1,string.len(scriptprefix))==scriptprefix then return{'exec',string.len(scriptprefix)+1}
end return
end

local getArgs=function(str)
local args={}
local new_arg=nil
local hassplit=nil
local s=str
repeat
new_arg,hassplit=std.endat(s:lower(),split)
if new_arg~='' then
args[#args+1]=new_arg
s=s:sub(string.len(new_arg)+string.len(split)+1)
end
until hassplit==false
return args
end

local function execCmd(str, plr)
local s_cmd
local a
local cmd
s_cmd = getCmd(str) --separate command from string using split {command name,arg bool (for arg system)}
cmd = findCmd(s_cmd[1]) --get command object {NAME,DESC,{ALIASES},function(args)}
if cmd == nil then return end
a = str:sub(string.len(s_cmd[1]) + string.len(split) + 1)--start string "a" after command and split
local args=getArgs(a)--gets us a nice table of arguments

pcall(function()
cmd.FUNC(args, plr)
end)
end

function do_exec(str,plr)
if not isAdmin(plr.Name)then return end 

str=str:gsub('/e ','')--remove "/e " the easy way!

local t=getprfx(str)
if t==nil then return end
str=str:sub(t[2])
if t[1]=='exec' then
exec(str)
elseif t[1]=='cmd' then
execCmd(str, plr)
end
end

updateevents()
_G.exec_cmd = execCmd
--game.Players.LocalPlayer.Chatted:connect(doexec)

local _char=function(plr_name)
for i,v in pairs(game.Players:GetChildren())do
if v:IsA'Player'then
if v.Name==plr_name then return v.Character end
end
end
return
end

local _plr=function(plr_name)
for i,v in pairs(game.Players:GetChildren())do
if v:IsA'Player'then
if v.Name==plr_name then return v end
end
end
return
end

function addcmd(name,desc,alias,func)
cmds[#cmds+1]=
{
NAME=name;
DESC=desc;
ALIAS=alias;
FUNC=func;
}
end

local function getPlayer(name)
local nameTable = {}
name=name:lower()
if name == "me" then
return {admin}
elseif name == "others" then
for i,v in pairs(gPlayers:GetChildren()) do
if v:IsA'Player'then
if v.Name~=admin then
nameTable[#nameTable+1]=v.Name
end
end
end
elseif name == "all" then
for i,v in pairs(gPlayers:GetChildren()) do
if v:IsA'Player'then 
nameTable[#nameTable+1]=v.Name
end
end
else
for i,v in pairs(gPlayers:GetChildren()) do
local lname = v.Name:lower()
local i,j = lname:find(name)
if i == 1 then
return {v.Name}
end
end
end
return nameTable
end

-- commands --

addcmd('ff',"ff's a player",{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("ForceField", pchar)
end
end)

addcmd('noff',"unff's a player",{'unff'},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar:GetChildren()) do
if v1:IsA("ForceField") then
v1:Destroy()
end
end
end
end)

addcmd('fire','set a player on fire',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("Fire", pchar.Torso)
end
end)

addcmd('nofire','extinguish a player',{'unfire'},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar.Torso:GetChildren()) do
if v1:IsA("Fire") then
v1:Destroy()
end
end
end
end)

addcmd('sp','give a player sparkles',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("Sparkles", pchar.Torso)
end
end)

addcmd('nosp','remove sparkles from a player',{'unsp'},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar.Torso:GetChildren()) do
if v1:IsA("Sparkles") then
v1:Destroy()
end
end
end
end)

addcmd('smoke','give a player smoke',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("Smoke", pchar.Torso)
end
end)

addcmd('nosmoke','remove smoke from a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar.Torso:GetChildren()) do
if v1:IsA("Smoke") then
v1:Destroy()
end
end
end
end)

addcmd('btools','gives a player btools',{},
function(args)
local players=getPlayer(args[1])
if players ~= nil then
for i, v in pairs(players) do
Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 2
Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 3
Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 4
end
end
end)

addcmd('god','gods player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then pchar.Humanoid.MaxHealth=math.huge end
end
end)

addcmd('sgod','silently gods player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
spawn(function()
pchar.Humanoid.MaxHealth = 10000000
wait()
pchar.Humanoid.Health = 10000000
end)
end
end)

addcmd('ungod','removes god from a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then 
pchar.Humanoid.MaxHealth=100 
pchar.Humanoid.Health=100
end
end
end)

addcmd('heal','resets a players health',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then pchar.Humanoid.Health=pchar.Humanoid.MaxHealth;end
end
end)

addcmd('freeze','freezes a player',{},
function(args)
local players = getPlayer(args[1])
if players ~= nil then
for i, v in pairs(players) do
_char(v).Torso.Anchored = true
end
end
end)

addcmd('thaw','freezes a player',{},
function(args)
local players = getPlayer(args[1])
if players ~= nil then
for i, v in pairs(players) do
_char(v).Torso.Anchored = false
end
end
end)

addcmd('kill','kills a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then pchar.Humanoid.MaxHealth=0;pchar.Humanoid.Health=0;end
end
end)

addcmd('sound','plays a sound',{},
function(args)
local function dels(instance)
for i,v in pairs(instance:GetChildren())do
if v:IsA'Sound'then v:Destroy()end
dels(v)
end
end
dels(workspace)

local c=args[1]or'stop'
if std.inTable({'stop'},c:lower())then return end
local s=Instance.new("Sound", workspace)
s.Looped = true
s.SoundId = "rbxassetid://"..c
s.Volume=1
s:Play() s.Name = "Musickek"
end)

addcmd('explode','explode a player', {},
function(args)
local players=getPlayer(args[1])
for i, v in pairs(players) do
local char = _char(v)
if char:FindFirstChild("Torso") then
Instance.new("Explosion", char).Position = char.Torso.Position 
end
end
end)

addcmd('invis','make a player invisible',{},
function(args)
local players=getPlayer(args[1])
for i, v in pairs(players) do
for k, v2 in pairs(_char(v):GetChildren()) do
if v2.className == "Part" then
if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 1 end
elseif v2.className == "Hat" then
if v2:FindFirstChild("Handle") then
v2.Handle.Transparency = 1 
end
end
if v2:FindFirstChild("face") then
v2.face:Destroy()
end
end
end
end)

addcmd('vis','make a player visible',{},
function(args)
local players=getPlayer(args[1])
for i, v in pairs(players) do
for k, v2 in pairs(_char(v):GetChildren()) do
if v2.className == "Part" then
if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 0 end
elseif v2.className == "Hat" then
if v2:FindFirstChild("Handle") then v2.Handle.Transparency = 0 end
end
if v2:FindFirstChild("face") then
v2.face:Destroy()
end
end
end
end)

addcmd('goto','go to a player',{},
function(args)
local players=getPlayer(args[1])
if players ~= nil and _char(players[1]):FindFirstChild("HumanoidRootPart") then
_char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
end
end)

addcmd('bring','bring a player to you',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players) do
if _char(v):FindFirstChild("HumanoidRootPart") then
_char(v).HumanoidRootPart.CFrame = _char(admin).HumanoidRootPart.CFrame 
end
end
end)

addcmd('tp','teleport player 1 to player 2',{},
function(args)
local players1=getPlayer(args[1])
local players2=getPlayer(args[2])
if not players2[1] then return end
for i,v in pairs(players1) do
if _char(v):FindFirstChild("HumanoidRootPart") and _char(players2[1]):FindFirstChild("HumanoidRootPart") then
_char(v).HumanoidRootPart.CFrame = _char(players2[1]).HumanoidRootPart.CFrame
end 
end
end)

addcmd('char','change a players appearance',{},
function(args)
local players=getPlayer(args[1])
if not args[1]or not args[2]then return end
local id=args[2]
if players ~= nil then
for i,v in pairs(players) do
gPlayers[v].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..id
if _char(v):FindFirstChild("Head") then
_char(v).Head:Destroy() 
end
end
end
end)

addcmd('ws','change a players walkspeed',{},
function(args)
local players=getPlayer(args[1])
if not args[1]or not args[2]then return end
local num=args[2]
for i,v in pairs(players) do
if _char(v):FindFirstChild("Humanoid") then
_char(v).Humanoid.WalkSpeed=tonumber(num)
end
end
end)

addcmd('time','change the time of day',{},
function(args)
if not args[1]then return end
local time_=tonumber(args[1])

game.Lighting:SetMinutesAfterMidnight(time_*60)
end)

addcmd('unlockws','unlock the whole workspace',{},
function(args)
local function unlock(instance) 
for i,v in pairs(instance:GetChildren()) do
if v:IsA("BasePart") then
v.Locked = false
end
unlock(v)
end
end
unlock(workspace)
end)

addcmd('unanchorws','unanchor the whole workspace',{},
function(args)
local function unanchor(instance) 
for i,v in pairs(instance:GetChildren()) do
if v:IsA("BasePart") then
v.Anchored=false
end
unanchor(v)
end
end
unanchor(workspace)
end)

addcmd('admin','gives a player admin',{},
function(args)
if not args[1]then return end
local players=getPlayer(args[1])
table.foreach(players,function(k,v)
admins[v]=true
end)
end)

addcmd('unadmin','removes a players admin',{},
function(args)
if not args[1] then return end
local players=getPlayer(args[1])
table.foreach(players,function(k,v)
admins[v]=nil
end)
end)

addcmd('view','view player',{},
function(args)
local players=getPlayer(args[1])
workspace.CurrentCamera.CameraSubject = game.Players[players[1]].Character
end)

addcmd('noclip','noclips local player',nil,
function(args,speaker)
NOCLIP = true
JESUSFLY = false
SWIM = false
end)

addcmd('clip','clips local player',nil,
function(args,speaker)
NOCLIP = false
end)
addcmd('jesusfly','jesusfly',nil,
function(args,speaker)
NOCLIP = false
JESUSFLY = true
SWIM = false
end)
addcmd('nofly','nofly',nil,
function(args)
JESUSFLY = false
end)
addcmd('swim','swim',nil,
function(args)
NOCLIP = false
JESUSFLY = false
SWIM = true
end)
addcmd('noswim','noswim',nil,
function(args)
SWIM = false
end)
addcmd('skybox','sky <id>',nil,
function(args)
for i,v in pairs(game.Lighting:GetChildren()) do
if v:IsA('Sky') then
v:remove()
end
end
local ID = (args[1])
local sky = Instance.new('Sky', game.Lighting)
sky.SkyboxBk = 'rbxassetid://' .. ID
sky.SkyboxDn = 'rbxassetid://' .. ID
sky.SkyboxFt = 'rbxassetid://' .. ID
sky.SkyboxLf = 'rbxassetid://' .. ID
sky.SkyboxRt = 'rbxassetid://' .. ID
sky.SkyboxUp = 'rbxassetid://' .. ID
end)
addcmd('shrek','shrek <p>',nil,
function(args)
local players = getPlayer(args[1])
for i,v in pairs(players) do
local pchar = gPlayers[v].Character
for i,v in pairs(pchar:GetChildren()) do
if v:IsA('Hat') or v:IsA('CharacterMesh') or v:IsA('Shirt') or v:IsA('Pants') then
v:remove()
end
end
for i,v in pairs(pchar.Head:GetChildren()) do
if v:IsA('Decal') or v:IsA('SpecialMesh')then
v:remove()
end
end
if pchar:FindFirstChild('Shirt Graphic') then
pchar['Shirt Graphic'].Archivable = false
pchar['Shirt Graphic'].Graphic = ''
end
local mesh = Instance.new('SpecialMesh', pchar.Head)
mesh.MeshType = 'FileMesh'
pchar.Head.Mesh.MeshId = 'http://www.roblox.com/asset/?id=19999257'
pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)
pchar.Head.Mesh.TextureId = 'http://www.roblox.com/asset/?id=156397869'
local Shirt = Instance.new('Shirt', gPlayers[v].Character)
local Pants = Instance.new('Pants', gPlayers[v].Character)
Shirt.ShirtTemplate = 'rbxassetid://133078194'
Pants.PantsTemplate = 'rbxassetid://133078204'
end
end)
addcmd('ambient','ambient <n> <n> <n>',nil,
function(args)
game.Lighting.Ambient = Color3.new(args[1], args[2], args[3])
end)
addcmd('fetp','fetp',nil,
function(args)
local last_pos = game.Players.LocalPlayer.Character.Torso.CFrame
for _, Player in pairs(game:GetService("Players"):GetChildren()) do
if game.Workspace:findFirstChild(Player.Name) then
local w = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
w.Part0 = w.Parent
w.Part1 = Player.Character.Torso
w.C0 = last_pos
w.C1 = last_pos
wait(0.1)
w:Destroy()
game.Players.LocalPlayer.Character.Torso.CFrame = last_pos
end
end
wait(1)
game.Players.LocalPlayer.Character.Torso.CFrame = last_pos
end)
addcmd('fogend','fogend <n>',nil,
function(args)
game.Lighting.FogEnd = args[1]
end)
addcmd('slock','serverlock',nil,
function(args)
serverLocked = true
end)

addcmd('unslock','unserverlock',nil,
function(args)
serverLocked = false
end)
addcmd('fogend','fogend <n>',{},
function(args)
game.Lighting.FogEnd = args[1]
end)
addcmd('fogcolor','fogcolor <n> <n> <n>',{},
function(args)
game.Lighting.FogColor = Color3.new(args[1], args[2], args[3])
end)
addcmd('fixl','fixlighting',nil,
function(args)
FIX_LIGHTING()
end)
addcmd('particles','particles <p> <id>',{'pts'},
function(args)
local players = getPlayer(args[1])
for i,v in pairs(players) do
local pchar = gPlayers[v].Character
for i,v in pairs(pchar.Torso:GetChildren()) do
if v:IsA('ParticleEmitter') then
v:remove()
end
end
wait()
Instance.new('ParticleEmitter', pchar.Torso).Texture = 'http://www.roblox.com/asset/?id=' .. args[2] - 1
end
end)

_G.Rc7Notification("Loaded 49 Cmds","Raindrop Admin V.1",5)
wait(5)
if game.Workspace.FilteringEnabled == true then
_G.Rc7Notification("Filtering","Fltering is Enabled",5)
else
_G.Rc7Notification("Filtering","Fltering is Disabled",5)
end