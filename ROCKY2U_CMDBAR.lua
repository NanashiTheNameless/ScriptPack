--//----------//----------//----------//----------//----------//----------//----------//----------//----------//----------//--
--//                                                                                                                      //--
--//   _____      _   _     __  __ _ _ _                          _        _____ __  __ _____                _       _    //--
--//  / ____|    | | | |   |  \/  (_) | |                        ( )      / ____|  \/  |  __ \              (_)     | |   //--
--// | (___   ___| |_| |__ | \  / |_| | | ___ __ ___   __ _ _ __ |/ ___  | |    | \  / | |  | |___  ___ _ __ _ _ __ | |_  //--
--//  \___ \ / _ \ __| '_ \| |\/| | | | |/ / '_ ` _ \ / _` | '_ \  / __| | |    | |\/| | |  | / __|/ __| '__| | '_ \| __| //--
--//  ____) |  __/ |_| | | | |  | | | |   <| | | | | | (_| | | | | \__ \ | |____| |  | | |__| \__ \ (__| |  | | |_) | |_  //--
--// |_____/ \___|\__|_| |_|_|  |_|_|_|_|\_\_| |_| |_|\__,_|_| |_| |___/  \_____|_|  |_|_____/|___/\___|_|  |_| .__/ \__| //--
--//                                                                                                          | |         //--
--//                                                                                                          |_|         //--
--//                                                                                                                      //--
--//----------//----------//----------//----------//----------//----------//----------//----------//----------//----------//--

--// SethMilkman //--

--// Credit //--

    --// SethMilkman      // Creating Commands //--
    --// Safazi      // Lib               //--

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local char = Player.Character

local gPlayers = game:GetService('Players')
local admin = gPlayers.LocalPlayer.Name

BannedPlayers = {
	{['NAME'] = 'LordCrazy13',         ['UID'] = '21799524'},
}

local admins = {''} --// won't work

--// declare services // init stuff //--
local services={}
local cmds={}
local std={}

services.players=gPlayers
services.lighting=game:GetService('Lighting')
services.workspace=game:GetService('Workspace')
services.events = {}
local user = gPlayers.LocalPlayer

local cmdprefix=';'
local scriptprefix='\\'
local split=' '


updateevents=function()
    for i,v in pairs(services.events) do services.events:remove(i) v:disconnect() end
    for i,v in pairs(gPlayers:players())do
        local ev = v.Chatted:connect(function(msg) do_exec(msg,v) end)
        services.events[#services.events+1] = ev
    end
end

if game.CoreGui:FindFirstChild('GUI') then
	game.CoreGui.GUI:Destroy()
end

if game.ContextActionService:FindFirstChild('Data') then
	game.ContextActionService.Data:Destroy()
end

--// safazi's lib //--

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

std.list=function(tbl) --// turns table into list with commas
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
    s_cmd = getCmd(str)
    cmd = findCmd(s_cmd[1])
    if cmd == nil then return end
    a = str:sub(string.len(s_cmd[1]) + string.len(split) + 1)
    local args=getArgs(a)
    CapArgs=getCapsArgs(a)

    pcall(function()
    cmd.FUNC(args, plr)
    end)
end

function do_exec(str,plr)
    if not isAdmin(plr.Name)then return end 
    
    str=str:gsub('/e ','')

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
--// game.Players.LocalPlayer.Chatted:connect(doexec)

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
    if name == 'me' then
        return {admin}
    elseif name == 'others' then
        for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then
                if v.Name~=admin then
                    nameTable[#nameTable+1]=v.Name
                end
            end
        end
    elseif name == 'all' then
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

--// My Stuff //--

coroutine.resume(coroutine.create(function()
	repeat
		wait(0.05)
		for i,v in pairs(game.Players:GetChildren()) do
			for i,v in pairs(BannedPlayers) do
				if BannedPlayers[i].NAME == v.Name or BannedPlayers[i].UID == v.UserId then
					v:Remove()
				end
			end
		end
	until false
end))

getCapsArgs = function(str)
    local args = {}
    local new_arg = nil
    local hassplit = nil
    local s = str
    repeat
        new_arg,hassplit = std.endat(s,split)
        if new_arg ~= '' then
            args[#args +1 ] = new_arg
            s = s:sub(string.len(new_arg)+string.len(split)+1)
        end
    until hassplit == false
    return args
end

function getlongstring(lower, startat)
local allargs = ''
for i,ar in pairs(CapArgs) do
	if i > startat then
		if allargs ~= '' then
			allargs = allargs .. ' ' .. ar
		else
			allargs = allargs .. ar
		end
	end
end
	if lower == false then
		return allargs
	else
		return
		string.lower(allargs)
	end
end

--// Command Bar //--

game:GetObjects('http://www.roblox.com/asset/?id=295817093')[1].Parent = game.CoreGui

local CMDbar = game.CoreGui.GUI.CMDbar

local Version = '1.0.6'

local DATA = game:GetObjects('http://www.roblox.com/asset/?id=291592144')[1]
DATA.Parent = game.ContextActionService

local NOTIFY = DATA.Notification
NOTIFY.Parent = game.CoreGui

wait(0.1)

--// CMD List //--

CMDs = {
	'- ff player',
	'- noff player',
	'- fire player <r> <g> <b>',
	'- nofire player',
	'- sp player <r> <g> <b>',
	'- nosp player',
	'- smoke player',
	'- nosmoke player',
	'- btools player',
	'- god player',
	'- sgod player',
	'- ungod player',
	'- heal player',
	'- freeze player',
	'- thaw player',
	'- kill player',
	'- sound <id>',
	'- volume <n>',
	'- pitch <n>',
	'- explode player',
	'- invis player',
	'- vis player',
	'- goto player',
	'- bring player',
	'- tp player player',
	'- char player <id>',
	'- ws player <n>',
	'- time <n>',
	'- kick player',
	'- ban player',
	'- unlockws',
	'- unanchorws',
	'- hat player <id>',
	'- gear player <id>',
	'- pstools player',
	'- skick player',
	'- admin player',
	'- unadmin player',
	'- firstp player',
	'- thirdp player',
	'- chat player <string>',
	'- insert <id>',
	'- name player <string>',
	'- unname player',
	'- stun player',
	'- unstun player',
	'- sit player',
	'- guest player',
	'- damage player',
	'- view player',
	'- unview player',
	'- nolimbs player',
	'- box player <n>',
	'- nobox player',
	'- ghost player',
	'- sphere player',
	'- loadmap <id>',
	'- sky <id>',
	'- ambient <r> <g> <b>',
	'- gui',
	'- jail player',
	'- unjail player',
	'- shutdown',
	'- animation player',
	'- fix player',
	'- creeper player',
	'- uncreeper player',
	'- shrek player',
	'- unshrek player',
	'- spam <string>',
	'- nospam',
	'- control player',
	'- nuke player',
	'- infect player',
	'- uninfect player',
	'- duck player',
	'- unduck player',
	'- disable player',
	'- enable player',
	'- size player <n>',
	'- confuse player',
	'- unconfuse player',
	'- clone player',
	'- spin player',
	'- unspin player',
	'- dog player',
	'- undog player',
	'- tptool',
	'- loopsit player',
	'- unloopsit player',
	'- loopjump player',
	'- unloopjump player',
	'- loopheal player',
	'- unloopheal player',
	'- fling player',
	'- ayylmao player',
	'- nograv player',
	'- grav player',
	'- seizure player',
	'- unseizure player',
	'- cape <n>',
	'- uncape',
	'- paper player',
	'- punish player',
	'- unpunish player',
	'- disco',
	'- undisco',
	'- team player',
	'- serverlock',
	'- unserverlock',
	'- change player stat <n>',
	'- p§e§n§i§s player',
	'- fogend <n>',
	'- float player',
	'- unfloat player',
	'- noclip',
	'- clip',
	'- prefix <string>',
	'- cmds',
	'- version',
}

local usingNOTE = false

function Notify(msg)
	if usingNOTE == false then
		if NOTIFY.NOTIFY and NOTIFY.NOTIFY.NOTE then
			spawn(function()
				NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, 0, 0.7, 0), 'InOut', 'Quad', 0.5, true, nil)
				NOTIFY.NOTIFY.NOTE.Text = msg
				usingNOTE = true
				wait(2.5)
				NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, -200, 0.7, 0), 'InOut', 'Quad', 0.5, true, nil)
				usingNOTE = false
		    end)
		end
	end
end

--// Cape Function //--

local capeColor = 1012

function Cape(playerCaped)

if playerCaped.Character:FindFirstChild('Cape') ~= nil then
	playerCaped.Character.Cape:Destroy()
end

repeat
	wait()
until playerCaped and playerCaped.Character and playerCaped.Character:FindFirstChild('Torso')

local Torso = playerCaped.Character.Torso

local Cape = Instance.new('Part', Torso.Parent)
Cape.Name = 'Cape'
Cape.Anchored = false
Cape.CanCollide = false
Cape.TopSurface = 0
Cape.BottomSurface = 0
Cape.BrickColor = BrickColor.new('' .. capeColor)
Cape.Material = 'Neon'
Cape.formFactor = 'Custom'
Cape.Size = Vector3.new(0.2,0.2,0.2)

local msh = Instance.new('BlockMesh', Cape)
msh.Scale = Vector3.new(9,17.5,.5)

local motor1 = Instance.new('Motor', Cape)
motor1.Part0 = Cape
motor1.Part1 = Torso

motor1.MaxVelocity = 1
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)

local wave = false

repeat wait(1/44)
local ang = 0.2
local oldmag = Torso.Velocity.magnitude
local mv = .1

if wave then
	ang = ang + ((Torso.Velocity.magnitude/10) * .05) + 1
	wave = false
else
	wave = false
end
ang = ang + math.min(Torso.Velocity.magnitude/30, 1)
motor1.MaxVelocity = math.min((Torso.Velocity.magnitude/10), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.05 and motor1.DesiredAngle > -.05 then
	motor1.MaxVelocity = .04
end
repeat
	wait()
until 
motor1.CurrentAngle == motor1.DesiredAngle or math.abs(Torso.Velocity.magnitude - oldmag)  >= (Torso.Velocity.magnitude/10) + 1
if Torso.Velocity.magnitude < .1 then
	wait(.1)
end
until not Cape or Cape.Parent ~= Torso.Parent
end

game.Lighting.Outlines = false --// Outlines are disgusting

--// Commands //--

addcmd('ff','gives ff to player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        Instance.new('ForceField', pchar)
    end
end)

addcmd('noff', 'takes away ff from player',{'unff'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar:GetChildren()) do
			if v1:IsA('ForceField') then
				v1:Destroy()
			end
		end
    end
end)

addcmd('fire', 'set a player on fire',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        local Fire1 = Instance.new('Fire', pchar.Head)
        local Fire2 = Instance.new('Fire', pchar.Torso)
        local Fire3 = Instance.new('Fire', pchar['Left Arm'])
        local Fire4 = Instance.new('Fire', pchar['Right Arm'])
        local Fire5 = Instance.new('Fire', pchar['Left Leg'])
        local Fire6 = Instance.new('Fire', pchar['Right Leg'])
        Fire1.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire1.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire2.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire2.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire3.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire3.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire4.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire4.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire5.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire5.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
        Fire6.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Fire6.SecondaryColor = Color3.new((args[2]),(args[3]),(args[4]))
    end
end)

addcmd('nofire', 'extinguish a player',{'unfire'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Head:GetChildren()) do
			if v1:IsA('Fire') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar.Torso:GetChildren()) do
			if v1:IsA('Fire') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Left Arm']:GetChildren()) do
			if v1:IsA('Fire') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Right Arm']:GetChildren()) do
			if v1:IsA('Fire') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Left Leg']:GetChildren()) do
			if v1:IsA('Fire') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Right Leg']:GetChildren()) do
			if v1:IsA('Fire') then
				v1:Destroy()
			end
		end
    end
end)

addcmd('sp', 'give a player sparkles',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        local Sparkles1 = Instance.new('Sparkles', pchar.Head)
        local Sparkles2 = Instance.new('Sparkles', pchar.Torso)
        local Sparkles3 = Instance.new('Sparkles', pchar['Left Arm'])
        local Sparkles4 = Instance.new('Sparkles', pchar['Right Arm'])
        local Sparkles5 = Instance.new('Sparkles', pchar['Left Leg'])
        local Sparkles6 = Instance.new('Sparkles', pchar['Right Leg'])
        Sparkles1.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles2.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles3.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles4.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles5.Color = Color3.new((args[2]),(args[3]),(args[4]))
        Sparkles6.Color = Color3.new((args[2]),(args[3]),(args[4]))
    end
end)

addcmd('nosp', 'remove sparkles from a player',{'unsp'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Head:GetChildren()) do
			if v1:IsA('Sparkles') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar.Torso:GetChildren()) do
			if v1:IsA('Sparkles') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Left Arm']:GetChildren()) do
			if v1:IsA('Sparkles') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Right Arm']:GetChildren()) do
			if v1:IsA('Sparkles') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Left Leg']:GetChildren()) do
			if v1:IsA('Sparkles') then
				v1:Destroy()
			end
end
        for j,v1 in pairs(pchar['Right Leg']:GetChildren()) do
			if v1:IsA('Sparkles') then
				v1:Destroy()
			end
		end
    end
end)

addcmd('smoke', 'give a player smoke',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        Instance.new('Smoke', pchar.Torso)
    end
end)

addcmd('nosmoke', 'remove smoke from a player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Torso:GetChildren()) do
			if v1:IsA('Smoke') then
				v1:Destroy()
			end
		end
    end
end)

addcmd('btools', 'gives a player btools',{},
function(args)
    local players = getPlayer(args[1])
    if players ~= nil then
		for i, v in pairs(players) do
	  		Instance.new('HopperBin', gPlayers[v].Backpack).BinType = 2
			Instance.new('HopperBin', gPlayers[v].Backpack).BinType = 3
			Instance.new('HopperBin', gPlayers[v].Backpack).BinType = 4
		end
	end
end)

addcmd('god', 'gods player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.MaxHealth=math.huge end
    end
end)

addcmd('sgod', 'silently gods player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        spawn(function()
            pchar.Humanoid.MaxHealth = 10000000
			wait()
			pchar.Humanoid.Health = 10000000
        end)
    end
end)

addcmd('ungod', 'removes god from a player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then 
			pchar.Humanoid.MaxHealth=100 
			pchar.Humanoid.Health=100
		end
    end
end)

addcmd('heal', 'resets a players health',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.Health=pchar.Humanoid.MaxHealth;end
    end
end)

addcmd('frz', 'freezes a player',{'freeze'},
function(args)
	local players = getPlayer(args[1])
	if players ~= nil then
		for i, v in pairs(players) do
			_char(v).Torso.Anchored = true
		end
	end
end)

addcmd('thaw', 'freezes a player',{},
function(args)
	local players = getPlayer(args[1])
	if players ~= nil then
		for i, v in pairs(players) do
			_char(v).Torso.Anchored = false
		end
	end
end)

addcmd('kill', 'kills a player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.MaxHealth=0;pchar.Humanoid.Health=0;end
    end
end)

addcmd('sound', 'plays a sound',{},
function(args)
    local function dels(instance)
        for i,v in pairs(instance:GetChildren())do
            if v:IsA'Sound'then v:Destroy()end
            dels(v)
        end
    end
    dels(workspace)

    local c = args[1] or 'stop'
    if std.inTable({'stop'}, c:lower()) then return end
	local s = Instance.new('Sound', workspace)
	s.Name = 'DuckSong'
	s.Looped = true
	s.SoundId = 'rbxassetid://' .. c
    s.Volume = 1
	s:Play()
end)

addcmd('volume','changes volume of sound',{},
function(args)
	for i,v in pairs(game.Workspace:GetChildren())do
		if v:IsA('Sound') and v.Name == 'DuckSong' then
			v.Volume = args[1]
		end
	end
end)

addcmd('pitch','changes pitch of sound',{},
function(args)
	for i,v in pairs(game.Workspace:GetChildren())do
		if v:IsA('Sound') and v.Name == 'DuckSong' then
			v.Pitch = args[1]
		end
	end
end)

addcmd('explode', 'explode a player', {},
function(args)
    local players = getPlayer(args[1])
    for i, v in pairs(players) do
        local char = _char(v)
        if char:FindFirstChild('Torso') then
            Instance.new('Explosion', char).Position = char.Torso.Position					
        end
    end
end)

addcmd('invis', 'make a player invisible',{},
function(args)
    local players = getPlayer(args[1])
    for i, v in pairs(players) do
        for k, v2 in pairs(_char(v):GetChildren()) do
			if v2.className == 'Part' then
                if v2.Name ~= 'HumanoidRootPart' then v2.Transparency = 1 end
            elseif v2.className == 'Hat' then
                if v2:FindFirstChild('Handle') then
                    v2.Handle.Transparency = 1 
                end
			end
            if v2:FindFirstChild('face') then
                v2.face:Destroy()
			end
		end
    end
end)

addcmd('vis', 'make a player visible',{},
function(args)
    local players = getPlayer(args[1])
    for i, v in pairs(players) do
        for k, v2 in pairs(_char(v):GetChildren()) do
            if v2.className == 'Part' then
				if v2.Name ~= 'HumanoidRootPart' then v2.Transparency = 0 end
				elseif v2.className == 'Hat' then
                if v2:FindFirstChild('Handle') then v2.Handle.Transparency = 0 end
            end
			if v2:FindFirstChild('face') then
				v2.face:Destroy()
			end
		end
    end
end)

addcmd('goto', 'go to a player',{},
function(args)
    local players = getPlayer(args[1])
	if players ~= nil and _char(players[1]):FindFirstChild('HumanoidRootPart') then
		_char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
	end
end)

addcmd('bring', 'bring a player to you',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		if _char(v):FindFirstChild('HumanoidRootPart') then
			_char(v).HumanoidRootPart.CFrame = _char(admin).HumanoidRootPart.CFrame	
		end
	end
end)

addcmd('tp', 'teleport player 1 to player 2',{},
function(args)
    local players1=getPlayer(args[1])
    local players2=getPlayer(args[2])
    if not players2[1] then return end
    for i,v in pairs(players1) do
		if _char(v):FindFirstChild('HumanoidRootPart') and _char(players2[1]):FindFirstChild('HumanoidRootPart') then
			_char(v).HumanoidRootPart.CFrame = _char(players2[1]).HumanoidRootPart.CFrame
		end		
	end
end)

addcmd('char', 'change a players appearance',{'charapp'},
function(args)
    local players = getPlayer(args[1])
    if not args[1]or not args[2]then return end
    local id=args[2]
	if players ~= nil then
		for i,v in pairs(players) do
			gPlayers[v].CharacterAppearance = 'http://www.roblox.com/Asset/CharacterFetch.ashx?userId='..id
			if _char(v):FindFirstChild('Head') then
				_char(v).Head:Destroy()	
			end
		end
	end
end)

addcmd('ws', 'change a players walkspeed',{},
function(args)
    local players = getPlayer(args[1])
    if not args[1]or not args[2]then return end
    local num=args[2]
	for i,v in pairs(players) do
		if _char(v):FindFirstChild('Humanoid') then
			_char(v).Humanoid.WalkSpeed=tonumber(num)
		end
	end
end)

addcmd('time', 'change the time of day',{},
function(args)
    if not args[1]then return end
    local time_=tonumber(args[1])
    
    game.Lighting:SetMinutesAfterMidnight(time_*60)
end)

addcmd('kick', 'kick a player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		Notify('Kicked ' .. gPlayers[v].Name)
		gPlayers[v]:Destroy()
	end
end)

addcmd('ban','ban a player',{},
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v]:Destroy()
        bannedplyrs[#bannedplyrs + 1] = v
		gPlayers[v].Character:Destroy()
		Notify('Banned' .. gPlayers[v].Name)
	end
end)

addcmd('unlockws', 'unlock the whole workspace',{'unlock'},
function(args)
    local function unlock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA('BasePart') then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
end)

addcmd('unanchorws', 'unanchor the whole workspace',{'unanchor', 'unanchr'},
function(args)
   local function unanchor(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA('BasePart') then
                v.Anchored=false
            end
            unanchor(v)
        end
    end
    unanchor(workspace)
end)

addcmd('hat', 'give player a hat ingame',{},
function(args)
    if not args[1] or not args[2] then return end
	local players = getPlayer(args[1])
    local id=args[2]
	local hat = game:GetObjects('rbxassetid://'..id)[1]
	if hat:IsA('Hat') then
		for i,v in pairs(players) do
			hat:clone().Parent = _char(v)
		end		
	end
	hat:Destroy()
end)

addcmd('gear', 'give player a gear ingame',{},
function(args)
	spawn(function()
	    if not args[1] or not args[2] then return end
		local players = getPlayer(args[1])
	    local id=args[2]
		local model = game:GetService('InsertService'):LoadAsset(id)
		for i,v in pairs(players) do
			for _,j in pairs(model:GetChildren()) do
				if j:IsA('Tool') then
					j:Clone().Parent = gPlayers[v].Backpack
				end
			end
		end
		model:Destroy()
	end)
end)

addcmd('pstools', 'give player personal server tools',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].PersonalServerRank = 240
	end
end)

addcmd('skick','kicks a player by shutting them down, takes a few seconds',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		spawn(function()
			gPlayers[v].PersonalServerRank = 240
			gPlayers[v].Backpack:WaitForChild('ClassicTool')
			gPlayers[v].PersonalServerRank = 0
		end)
	end
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

addcmd('firstp', 'forces player to go into first person',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        gPlayers[v].CameraMode = 'LockFirstPerson'
    end
end)

addcmd('thirdp', 'allows player to go into third person',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        gPlayers[v].CameraMode = 'Classic'
    end
end)

addcmd('chat', 'forces player to chat what you input',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        game.Chat:Chat(gPlayers[v].Character.Head, getlongstring(false, 1))
    end
end)

addcmd('insert', 'inserts a model',{},
function(args)
    local model = game:GetObjects('http://www.roblox.com/asset/?id='..(args[1]))[1]
    model.Parent = game.Workspace
    model:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
    model:MakeJoints()
end)

addcmd('name', 'names player',{},
function(args)
    local players = getPlayer(args[1])
    local name = getlongstring(false, 1)
	for i,v in pairs(players) do
		for a, mod in pairs(gPlayers[v].Character:children()) do
		if mod:FindFirstChild('TAG') then
		gPlayers[v].Character.Head.Transparency = 0
		mod:Destroy()
		end
		end
		
		local char = gPlayers[v].Character
		local model = Instance.new('Model', char)
		local clone = char.Head:Clone()
		local hum = Instance.new('Humanoid', model)
		local weld = Instance.new('Weld', clone)
			model.Name = name
			clone.Parent = model
			hum.Name = 'TAG'
			hum.MaxHealth = 100
			hum.Health = 100
			weld.Part0 = clone
			weld.Part1 = char.Head
			char.Head.Transparency = 1
	end
end)

addcmd('unname', 'unnames player',{},
function(args)
    local players = getPlayer(args[1])
    local name = (args[2])
	for i,v in pairs(players) do
		for a, mod in pairs(gPlayers[v].Character:children()) do
			if mod:FindFirstChild('TAG') then
				gPlayers[v].Character.Head.Transparency = 0
				mod:Destroy()
			end
		end
	end
end)

addcmd('stun', 'stuns player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.PlatformStand = true
	end
end)

addcmd('unstun', 'stuns player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.PlatformStand = false
	end
end)

addcmd('sit', 'stuns player',{},
function(args)
    local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.Sit = true
	end
end)

addcmd('guest', 'ew a guest',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].CharacterAppearance = 'http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1'
		gPlayers[v].Character:BreakJoints()
	end
end)

addcmd('damage', 'damages a player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.Health = gPlayers[v].Character.Humanoid.Health - 25
	end
end)

addcmd('view', 'views player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		game.Workspace.CurrentCamera.CameraSubject = gPlayers[v].Character
	end
end)

addcmd('unview', 'stops viewing player',{},
function()
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end)

addcmd('nolimbs', 'removes limbs from player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		for i,v in pairs(gPlayers[v].Character:GetChildren()) do
			if v:IsA('BasePart') and
				v.Name == 'Right Leg' or
				v.Name == 'Left Leg' or
				v.Name == 'Right Arm' or
				v.Name == 'Left Arm' then
				v:Remove()
			end
		end
	end	
end)

addcmd('box', 'creates a box around player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        local SB = Instance.new('SelectionBox', pchar)
        SB.Adornee = SB.Parent
        SB.Color = BrickColor.new('' .. (args[2]))
    end
end)

addcmd('nobox', 'takes away box from player',{'unbox'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        for i,v in pairs(gPlayers[v].Character:GetChildren()) do
			if v:IsA('SelectionBox') then
				v:Destroy()
			end
	    end
    end
end)

addcmd('ghost', 'ghostifys player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=gPlayers[v].Character
        pchar.Head.Transparency = 0.5
        pchar.Torso.Transparency = 0.5
        pchar['Left Arm'].Transparency = 0.5
        pchar['Right Arm'].Transparency = 0.5
        pchar['Left Leg'].Transparency = 0.5
        pchar['Right Leg'].Transparency = 0.5
    end
end)

addcmd('sphere', 'puts sphere around player',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=gPlayers[v].Character
        local SS = Instance.new('SelectionSphere', pchar)
        SS.Adornee = SS.Parent
    end
end)

addcmd('loadmap','loads map from model',{},
function(args)
    pcall(function()
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name~='Camera' and v.Name~='Terrain' then
			v:Destroy()
		end
	end
	workspace.Terrain:Clear()
	for i,v in pairs(game.Players:GetChildren()) do
		local plr = v
		local prt = Instance.new('Model', workspace)
		Instance.new('Part', prt).Name='Torso'
		Instance.new('Part', prt).Name='Head'
		Instance.new('Humanoid', prt).Name='Humanoid'
		plr.Character = prt
	end
	if (args[1]) == 'sfotho' then
	    local b = game:GetObjects('http://www.roblox.com/asset/?id=296400126')[1]
	    b.Parent = game.Workspace
	    b:MakeJoints()
	end
	local b = game:GetObjects('http://www.roblox.com/asset/?id='..(args[1]))[1]
	b.Parent = game.Workspace
	b:MakeJoints()
end)
Notify('Loaded Map')
end)

addcmd('sky','changes skybox',{},
function(args)
    pcall(function()
	    local ID = (args[1])
		local sky = Instance.new('Sky', game.Lighting)
		sky.SkyboxBk = 'rbxassetid://' .. ID
		sky.SkyboxDn = 'rbxassetid://' .. ID
		sky.SkyboxFt = 'rbxassetid://' .. ID
		sky.SkyboxLf = 'rbxassetid://' .. ID
		sky.SkyboxRt = 'rbxassetid://' .. ID
		sky.SkyboxUp = 'rbxassetid://' .. ID
	end)
end)

addcmd('ambient','changes ambient',{},
function(args)
	game.Lighting.Ambient = Color3.new(args[1],args[2],args[3])
end)

addcmd('gui','gives YourMom GUI',{},
function(args)
	loadstring(game:GetObjects('rbxassetid://289110135')[1].Source)()
end)

addcmd('jail','jails player',{},
function(args)
	local players = getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=gPlayers[v].Character
        local JailPlayer = DATA.JAIL:Clone()
	    JailPlayer.Parent = game.Workspace
	    JailPlayer:MoveTo(pchar.Torso.Position)
	    JailPlayer.Name = 'JAIL_' .. gPlayers[v].Name
		if pchar:FindFirstChild('HumanoidRootPart') then
			pchar.HumanoidRootPart.CFrame = JailPlayer.MAIN.CFrame
		end		
    end
end)

addcmd('unjail','unjails player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		game.Workspace['JAIL_' .. gPlayers[v].Name]:Destroy()
	end
end)

addcmd('shutdown', 'shuts the server down',{},
function(args)
	local function ShutDown(Base)
		for i,v in pairs(Base:GetChildren()) do
			v:Destroy()
		end
	end
	ShutDown(game.Players)
end)

addcmd('animation','makes player animate',{'anim'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
        local ID = args[2]

        if args[2] == 'climb' then
	        ID = '180436334'
    end
        if args[2] == 'fall' then
	        ID = '180436148'
    end
        if args[2] == 'jump' then
	        ID = '125750702'
    end
        if args[2] == 'sit' then
	        ID = '178130996'
    end
        for _,x in pairs(gPlayers[v].Character.Animate:GetChildren()) do
            if x:IsA('StringValue') then
                for _,c in pairs(x:GetChildren()) do
	                if c:IsA('Animation') then
	            	    c.AnimationId = 'rbxassetid://' .. ID
	                end
	            end
            end
        end
    end
end)

addcmd('fix','turns player back to normal',{},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
		
	    pchar.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
	    pchar.Torso['Right Shoulder'].C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso['Left Shoulder'].C0 = CFrame.new(-1,0.5,0) * CFrame.Angles(0,math.rad(-90),0)
	    pchar.Torso['Right Hip'].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso['Left Hip'].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
	
	    for i,v in pairs(pchar.Head:GetChildren()) do
		    if v:IsA('SpecialMesh') then
			    v:Destroy()
		    end
	    end
	
		if Player.Character:FindFirstChild('Shirt') ~= nil then	
			Player.Character.Shirt:Destroy()	
		end
		if Player.Character:FindFirstChild('Pants') ~= nil then
			Player.Character.Pants:Destroy()
		end
		if Player.Character:FindFirstChild('Shirt Graphic') ~= nil then
			Player.Character['Shirt Graphic'].Graphic = ''
		end
		
		local HeadMesh = Instance.new('SpecialMesh', pchar.Head)
		HeadMesh.MeshType = 'Head'
		HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
		
		Player.Character['Body Colors'].HeadColor = BrickColor.new('Cool yellow')
		Player.Character['Body Colors'].LeftArmColor = BrickColor.new('Cool yellow')
		Player.Character['Body Colors'].LeftLegColor = BrickColor.new('Medium blue')
		Player.Character['Body Colors'].RightArmColor = BrickColor.new('Cool yellow')
		Player.Character['Body Colors'].RightLegColor = BrickColor.new('Medium blue')
		Player.Character['Body Colors'].TorsoColor = BrickColor.new('Bright blue')
		for _,v in pairs(Player.Character:GetChildren()) do
			if v:IsA('Hat') then
				v:Destroy()
			end
		end
    end
end)

addcmd('creeper','make the player a creeper',{'crpr'},
function(args)
    local players = getPlayer(args[1])
    for i,v in pairs(players)do
	local pchar = gPlayers[v].Character
        if gPlayers[v] and pchar and pchar:findFirstChild('Torso') then
            if pchar:FindFirstChild('Shirt') then
	            pchar.Shirt.Parent = pchar.Torso
            end
            if pchar:FindFirstChild('Pants') then
	            pchar.Pants.Parent = pchar.Torso
            end
            if pchar:FindFirstChild('Shirt Graphic') then
	            pchar['Shirt Graphic'].Graphic = ''
            end
            for i,v in pairs(pchar:GetChildren()) do
	            if v:IsA('Hat') then
		            v:Destroy()
	            end
            end
            pchar.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
            pchar.Torso['Right Shoulder'].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
            pchar.Torso['Left Shoulder'].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
            pchar.Torso['Right Hip'].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
            pchar.Torso['Left Hip'].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
            pchar['Body Colors'].HeadColor = BrickColor.new('Bright green')
            pchar['Body Colors'].LeftArmColor = BrickColor.new('Bright green')
            pchar['Body Colors'].LeftLegColor = BrickColor.new('Bright green')
            pchar['Body Colors'].RightArmColor = BrickColor.new('Bright green')
            pchar['Body Colors'].RightLegColor = BrickColor.new('Bright green')
            pchar['Body Colors'].TorsoColor = BrickColor.new('Bright green')
        end
    end
end)

addcmd('uncreeper','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd('fix' .. gPlayers[v], Player)
	end
end)

addcmd('shrek', 'makes player shrek',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players) do
		local pchar = gPlayers[v].Character
		for i,v in pairs(pchar:GetChildren()) do
			if v:IsA('Hat') or v:IsA('CharacterMesh') or v:IsA('Shirt') or v:IsA('Pants') then
				v:Destroy()
			end
		end
		for i,v in pairs(pchar.Head:GetChildren()) do
			if v:IsA('Decal') or v:IsA('SpecialMesh')then
				v:Destroy()
			end
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

addcmd('unshrek','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd('fix' .. gPlayers[v], Player)
	end
end)

local Spamming = false

addcmd('spam','spams text',{},
function(args)
	Spamming = true
	spawn(function()
		while wait(0) do
			if Spamming == true then
	            while wait(0.1) do
		            if Spamming == true then
			            game.Players:Chat(''  .. getlongstring(false, 1))
		        elseif Spamming == false then
			            return
			        end
			    end
	        end
	    end
	end)
end)

addcmd('nospam','stops spamming',{},
function(args)
	Spamming = false
end)

addcmd('control','controls player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
		if gPlayers[v] and pchar then
			pchar.Humanoid.PlatformStand = true
			local w = Instance.new('Weld', Player.Character.Torso) 
			w.Part0 = Player.Character.Torso 
			w.Part1 = pchar.Torso  
			local w2 = Instance.new('Weld', Player.Character.Head) 
			w2.Part0 = Player.Character.Head 
			w2.Part1 = pchar.Head  
			local w3 = Instance.new('Weld', Player.Character:findFirstChild('Right Arm')) 
			w3.Part0 = Player.Character:findFirstChild('Right Arm')
			w3.Part1 = pchar:findFirstChild('Right Arm') 
			local w4 = Instance.new('Weld', Player.Character:findFirstChild('Left Arm'))
			w4.Part0 = Player.Character:findFirstChild('Left Arm')
			w4.Part1 = pchar:findFirstChild('Left Arm') 
			local w5 = Instance.new('Weld', Player.Character:findFirstChild('Right Leg')) 
			w5.Part0 = Player.Character:findFirstChild('Right Leg')
			w5.Part1 = pchar:findFirstChild('Right Leg') 
			local w6 = Instance.new('Weld', Player.Character:findFirstChild('Left Leg')) 
			w6.Part0 = Player.Character:findFirstChild('Left Leg')
			w6.Part1 = pchar:findFirstChild('Left Leg') 
			char.Head.face:Destroy()
			for i,v in pairs(pchar:GetChildren()) do
				if v:IsA('BasePart') then 
					v.CanCollide = false
				end
			end
			for i,v in pairs(char:GetChildren()) do
				if v:IsA('BasePart') then
					v.Transparency = 1 
				elseif v:IsA('Hat') then
					v:Destroy()
				end
			end
			pchar.Parent = char
			pchar.Humanoid.Changed:connect(function()
				pchar.Humanoid.PlatformStand = true
			end)
		end
		end
end)

addcmd('nuke','nukes player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
		if gPlayers[v] and pchar and pchar:FindFirstChild('Torso')  then
			local nuke = Instance.new('Part', game.Workspace)
			nuke.Anchored = true
			nuke.CanCollide = false
			nuke.FormFactor = 'Symmetric'
			nuke.Shape = 'Ball'
			nuke.Size = Vector3.new(1,1,1)
			nuke.BrickColor = BrickColor.new('New Yeller')
			nuke.Transparency = 0.5
			nuke.Reflectance = 0.2
			nuke.TopSurface = 0
			nuke.BottomSurface = 0
			nuke.Touched:connect(function (hit)
				if hit and hit.Parent then
					local boom = Instance.new('Explosion', game.Workspace)
					boom.Position = hit.Position
					boom.BlastRadius = 11
					boom.BlastPressure = math.huge
				end
			end)
			local CF = pchar.Torso.CFrame
			nuke.CFrame = CF
			for i = 1,333 do
				nuke.Size = nuke.Size + Vector3.new(3,3,3)
				nuke.CFrame = CF
				wait(1/44)
			end
			nuke:Destroy()
		end
	end
end)

addcmd('infect','infects player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		function infect(rip)
		local pchar = gPlayers[v].Character
			for i,v in pairs(pchar:GetChildren()) do
				if v:IsA('Hat') or v:IsA('Shirt') or v:IsA('Pants') then
					v:Destroy()
				end
			end
			if pchar.Torso:FindFirstChild('roblox') then
				pchar.Torso.roblox:Destroy()
			end
			if pchar.Head:FindFirstChild('face') then
				pchar.Head.face.Texture = 'http://www.roblox.com/asset/?id=94634491'
			end
			if pchar:FindFirstChild('Body Colors') then
				local Colors = pchar['Body Colors']
				local Skin = BrickColor.new('Pastel green')
				local Clothes = BrickColor.new('Reddish brown')
				Colors.HeadColor = Skin
				Colors.LeftArmColor = Skin
				Colors.RightArmColor = Skin
				Colors.LeftLegColor = Clothes
				Colors.RightLegColor = Clothes
				Colors.TorsoColor = Clothes
			end
			local w1 = Instance.new('Weld', pchar)
			w1.Part0 = pchar['Right Arm']
			w1.Part1 = pchar.Torso
			w1.C0 = CFrame.new(-1.5, 0.5, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0))
			local w2 = Instance.new('Weld', pchar)
			w2.Part0 = pchar['Left Arm']
			w2.Part1 = pchar.Torso
			w2.C0 = CFrame.new(1.5, 0.5, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0))
			local rip = false
			local connect1 = pchar['Left Arm'].Touched:connect(function(hit)
				if connect1 == false then
					connect1 = true
					if game.Players:FindFirstChild(hit.Parent.Name) then
						infect(game.Players[hit.Parent.Name])
					end
					wait(0.5)
					connect1 = true
				end
			end)
			local connect2 = pchar['Right Arm'].Touched:connect(function(hit)
				if connect2 == false then
					connect2 = true
					if game.Players:FindFirstChild(hit.Parent.Name) then
						infect(game.Players[hit.Parent.Name])
					end
					wait(0.5)
					connect2 = true
				end
			end)
			local IV = Instance.new('IntValue', pchar)
			IV.Name = 'Infected'
			IV.Value = 0
			IV.Changed:connect(function()
				connect1:disconnect()
				connect2:disconnect()
			end)
		end
		infect(v)
	end
end)

addcmd('uninfect','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd('fix' .. gPlayers[v], Player)
	end
end)

addcmd('duck','makes players head a duck',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v:IsA('Decal') then
			    v:Destroy()
		    end
	    end
	    for i,v in pairs(pchar:GetChildren()) do
		    if v:IsA('Hat') then
			    v:Destroy()
		    end
	    end
	    for i,v in pairs(pchar.Head:GetChildren()) do
		    if v:IsA('Decal') then
			    v:Destroy()
		    end
	    end
	    local duck = Instance.new('SpecialMesh', pchar.Torso)
	    duck.MeshType = 'FileMesh'
	    duck.MeshId = 'http://www.roblox.com/asset/?id=9419831'
	    duck.TextureId = 'http://www.roblox.com/asset/?id=9419827'
	    duck.Scale = Vector3.new(5, 5, 5)
	    pchar.Head.Transparency = 1
	    pchar['Left Arm'].Transparency = 1
	    pchar['Right Arm'].Transparency = 1
	    pchar['Left Leg'].Transparency = 1
	    pchar['Right Leg'].Transparency = 1
	end
end)

addcmd('unduck','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd('fix' .. gPlayers[v], Player)
	end
end)

addcmd('disable','removes players humanoid',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('Humanoid') then
		   pchar.Humanoid.Name = 'HUMANOID_' .. gPlayers[v].Name
		   local humanoid = pchar['HUMANOID_' .. gPlayers[v].Name]
		   humanoid.Parent = game.ContextActionService
	    end
	end
end)

addcmd('enable','gives player humanoid',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
		local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('Humanoid') then
		    return
	    else
		    local humanoid = game.ContextActionService['HUMANOID_' .. gPlayers[v].Name]
		    humanoid.Parent = pchar
		    humanoid.Name = 'Humanoid'
	    end
	end
end)

addcmd('size','changes size of player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	local pchar = gPlayers[v].Character
		local function scale(chr,scl)
		
			for _,v in pairs(pchar:GetChildren()) do
				if v:IsA('Hat') then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
				
		    local Head = chr['Head']
		    local Torso = chr['Torso']
		    local LA = chr['Left Arm']
		    local RA = chr['Right Arm']
		    local LL = chr['Left Leg']
		    local RL = chr['Right Leg']
		    local HRP = chr['HumanoidRootPart']
		
		    wait(0.1)
		   
		    Head.formFactor = 3
		    Torso.formFactor = 3
		    LA.formFactor = 3
		    RA.formFactor = 3
		    LL.formFactor = 3
		    RL.formFactor = 3
		    HRP.formFactor = 3
		    
		    Head.Size = Vector3.new(scl * 2, scl, scl)
		    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
		    LA.Size = Vector3.new(scl, scl * 2, scl)
		    RA.Size = Vector3.new(scl, scl * 2, scl)
		    LL.Size = Vector3.new(scl, scl * 2, scl)
		    RL.Size = Vector3.new(scl, scl * 2, scl)
		    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
		    
		    local Motor1 = Instance.new('Motor6D', Torso)
		    Motor1.Part0 = Torso
		    Motor1.Part1 = Head
	    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.Name = 'Neck'
				    
	    	local Motor2 = Instance.new('Motor6D', Torso)
	    	Motor2.Part0 = Torso
	    	Motor2.Part1 = LA
	    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.Name = 'Left Shoulder'
	    	
	    	local Motor3 = Instance.new('Motor6D', Torso)
	   		Motor3.Part0 = Torso
	    	Motor3.Part1 = RA
	    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.Name = 'Right Shoulder'
	    	
	    	local Motor4 = Instance.new('Motor6D', Torso)
	    	Motor4.Part0 = Torso
	    	Motor4.Part1 = LL
	    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.Name = 'Left Hip'
	    	
	    	local Motor5 = Instance.new('Motor6D', Torso)
	    	Motor5.Part0 = Torso
	    	Motor5.Part1 = RL
	    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.Name = 'Right Hip'
	    	
	    	local Motor6 = Instance.new('Motor6D', HRP)
	    	Motor6.Part0 = HRP
	    	Motor6.Part1 = Torso
	    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	    
		end
		
		scale(pchar, args[2])
	
		for _,v in pairs(game.Lighting:GetChildren()) do
			if v:IsA('Hat') then
				v.Parent = pchar
			end
		end
	end
end)

addcmd('confuse','reverses players speed',{'reverse'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Humanoid.WalkSpeed = tonumber(-16)
	end
end)

addcmd('unconfuse','reverses players speed',{'unreverse'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Humanoid.WalkSpeed = tonumber(16)
	end
end)

addcmd('clone','clones player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Archivable = true
	    local clone = pchar:Clone()
	    clone.Parent = game.Workspace
	    clone:MoveTo(pchar:GetModelCFrame().p)
	    clone:MakeJoints()
	    pchar.Archivable = false
	end
end)

addcmd('spin','spins player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == 'Spinning' then
			    v:Destroy()
		    end
	    end
	    local Torso = pchar.Torso
	    local BG = Instance.new('BodyGyro', Torso)
	    BG.Name = 'Spinning'
	    BG.maxTorque = Vector3.new(0, math.huge, 0)
	    BG.P = 11111
	    BG.cframe = Torso.CFrame
	    repeat wait(1/44)
		    BG.CFrame = BG.CFrame * CFrame.Angles(0,math.rad(30),0)
	    until not BG or BG.Parent ~= Torso
	end
end)

addcmd('unspin','stops spinning player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == 'Spinning' then
			    v:Destroy()
		    end
	    end
	end
end)

addcmd('dog','makes player a dog',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('Shirt') then
		    pchar.Shirt:Destroy()
	    end
	    if pchar:FindFirstChild('Pants') then
		    pchar.Pants:Destroy()
	    end
	    if pchar:FindFirstChild('Shirt Graphic') then
		    pchar['Shirt Graphic'].Graphic = ''
	    end
	    pchar.Torso.Transparency = 1
	    pchar.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
	    pchar.Torso['Right Shoulder'].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso['Left Shoulder'].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
	    pchar.Torso['Right Hip'].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
	    pchar.Torso['Left Hip'].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
	    local FakeTorso = Instance.new('Seat', pchar)
	    FakeTorso.Name = 'FakeTorso'
	    FakeTorso.FormFactor = 'Symmetric'
	    FakeTorso.TopSurface = 0
	    FakeTorso.BottomSurface = 0
	    FakeTorso.Size = Vector3.new(3,1,4)
	    FakeTorso.BrickColor = BrickColor.new('Brown')
	    FakeTorso.CFrame = pchar.Torso.CFrame
	    local BF = Instance.new('BodyForce', FakeTorso)
	    BF.Force = Vector3.new(0, FakeTorso:GetMass() * 196.25, 0)
	    local W = Instance.new('Weld', pchar.Torso)
	    W.Part0 = pchar.Torso
	    W.Part1 = FakeTorso
	    W.C0 = CFrame.new(0,-.5,0)
	    local BC = pchar['Body Colors']
	    BC.HeadColor = BrickColor.new('Brown')
	    BC.LeftArmColor = BrickColor.new('Brown')
	    BC.LeftLegColor = BrickColor.new('Brown')
	    BC.RightArmColor = BrickColor.new('Brown')
	    BC.RightLegColor = BrickColor.new('Brown')
	    BC.TorsoColor = BrickColor.new('Brown')
	end
end)

addcmd('undog','makes player back to normal',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    execCmd('fix' .. gPlayers[v], Player)
	end
end)

addcmd('tptool','gives player tptool',{},
function(args)
	local tool = DATA.Teleport:Clone()
	tool.Parent = Player.Backpack
end)

addcmd('loopsit','loop sits player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('LoopSit') then
		    pchar.LoopSit.Name = 'NotLoopSit'
		    wait(0.1)
		    pchar.NotLoopSit:Destroy()
	    end
	    local LoopSit = Instance.new('StringValue', pchar)
	    LoopSit.Name = 'LoopSit'
	    repeat wait(0.1)
		    pchar.Humanoid.Sit = true
	    until LoopSit.Name == 'NotLoopSit'
	end
end)

addcmd('unloopsit','stops loop sit on player',{'noloopsit'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('LoopSit') then
		    pchar.LoopSit.Name = 'NotLoopSit'
		    wait(0.1)
		    pchar.NotLoopSit:Destroy()
	    end
	end
end)

addcmd('loopjump','loop jumps player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('LoopJump') then
		    pchar.LoopJump.Name = 'NotLoopJump'
		    wait(0.1)
		    pchar.NotLoopJump:Destroy()
	    end
	    local LoopJump = Instance.new('StringValue', pchar)
	    LoopJump.Name = 'LoopJump'
	    repeat wait(0.1)
		    pchar.Humanoid.Jump = true
	    until LoopJump.Name == 'NotLoopJump'
	end
end)

addcmd('unloopjump','stops loop jump on player',{'noloopjump'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('LoopJump') then
		    pchar.LoopJump.Name = 'NotLoopJump'
		    wait(0.1)
		    pchar.NotLoopJump:Destroy()
	    end
	end
end)

addcmd('loopheal','loop heals player',{'lheal'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('LoopHeal') then
		    pchar.LoopHeal.Name = 'NotLoopHeal'
		    wait(0.1)
		    pchar.NotLoopHeal:Destroy()
	    end
	    local LoopHeal = Instance.new('StringValue', pchar)
	    LoopHeal.Name = 'LoopHeal'
	    repeat wait(0.1)
		    pchar.Humanoid.Health = pchar.Humanoid.MaxHealth
	    until LoopHeal.Name == 'NotLoopHeal'
	end
end)

addcmd('unloopheal','stops loop heal on player',{'noloopheal'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('LoopHeal') then
		    pchar.LoopHeal.Name = 'NotLoopHeal'
		    wait(0.1)
		    pchar.NotLoopHeal:Destroy()
	    end
	end
end)

addcmd('fling','flings player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
		if pchar:FindFirstChild('Humanoid') then
			local xran
			local zran
			repeat
				xran = math.random(-9999,9999)
			until math.abs(xran) >= 5555
			repeat
				zran = math.random(-9999,9999)
			until math.abs(zran) >= 5555
			pchar.Humanoid.Sit = true
			pchar.Torso.Velocity = Vector3.new(0,0,0)
			local BF = Instance.new('BodyForce', pchar.Torso)
			BF.force = Vector3.new(xran * 4, 9999 * 5, zran * 4)
		end
	end
end)

addcmd('ayylmao','ayy lmao',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('Shirt') then
		    pchar.Shirt:Destroy()
	    end
	    if pchar:FindFirstChild('Pants') then
		    pchar.Pants:Destroy()
	    end
	    if pchar:FindFirstChild('Shirt Graphic') then
		    pchar['Shirt Graphic'].Graphic = ''
	    end
	    for i,v in pairs(pchar:GetChildren()) do
		    if v:IsA('Hat') then
			    v:Destroy()
		    end
	    end
	    local ayylmao = DATA.ayylmao:Clone()
	    ayylmao.Parent = pchar
	    local BC = pchar['Body Colors']
	    BC.HeadColor = BrickColor.new('Fossil')
	    BC.LeftArmColor = BrickColor.new('Fossil')
	    BC.LeftLegColor = BrickColor.new('Fossil')
	    BC.RightArmColor = BrickColor.new('Fossil')
	    BC.RightLegColor = BrickColor.new('Fossil')
	    BC.TorsoColor = BrickColor.new('Fossil')
	end
end)

addcmd('nograv','makes player have moon gravity',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == 'NoGrav' then
			    v:Destroy()
		    end
	    end
	    local BF = Instance.new('BodyForce', pchar.Torso)
	    BF.Name = 'NoGrav'
	    BF.Force = Vector3.new(0,2700,0)
	end
end)

addcmd('grav','makes player have normal gravity',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    for i,v in pairs(pchar.Torso:GetChildren()) do
		    if v.Name == 'NoGrav' then
			    v:Destroy()
		    end
	    end
	end
end)

addcmd('seizure','makes player have a seizure',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('Seizure') then
		    
	    end
	    local Seizure = Instance.new('StringValue', pchar)
	    Seizure.Name = 'Seizure'
	    pchar.Humanoid.PlatformStand = true
		repeat wait()
		    pchar.Torso.Velocity = Vector3.new(math.random(-10,10),-5,math.random(-10,10))
		    pchar.Torso.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
		until Seizure.Name == 'NotSeizure'
	end
end)

addcmd('unseizure','makes player stop having a seizure',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('Seizure') then
	        pchar.Humanoid.PlatformStand = false
		    pchar.Seizure.Name = 'NotSeizure'
		    wait(0.1)
		    pchar.NotSeizure:Destroy()
	    end
	end
end)

addcmd('cape','gives you a cape',{},
function(args)
    if not args[1] then
		args[1] = 1012
	end
	capeColor = args[1]
    Cape(Player)
end)

addcmd('uncape','takes cape away from you',{},
function(args)
	if char:FindFirstChild('Cape') ~= nil then
	    char.Cape:Destroy()
	end
end)

addcmd('paper','makes player thin as paper',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    local LA = DATA.Paper:Clone()
	    LA.Parent = pchar['Left Arm']
	    local RA = DATA.Paper:Clone()
	    RA.Parent = pchar['Right Arm']
	    local LL = DATA.Paper:Clone()
	    LL.Parent = pchar['Left Leg']
	    local RL = DATA.Paper:Clone()
	    RL.Parent = pchar['Right Leg']
	    local T = DATA.Paper:Clone()
	    T.Parent = pchar.Torso
		local H = DATA.Paper:Clone()
		H.Parent = pchar.Head
		pchar.Head.face:Destroy()
	end
end)

addcmd('punish','punishes player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    pchar.Parent = game.Lighting
	end
end)

addcmd('unpunish','unpunishes player',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = game.Lighting['' .. gPlayers[v].Name]
	    pchar.Parent = game.Workspace
	end
end)

Disco = false

addcmd('disco','disco party',{},
function(args)
	Disco = true
	while wait(0.1) do
		if Disco == true then
		    game.Lighting.Ambient = Color3.new(math.random(),math.random(),math.random())
		end
	end
end)

addcmd('undisco','rip disco party',{},
function(args)
	Disco = false
end)

addcmd('team','puts player on team',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    gPlayers[v].TeamColor = BrickColor.new(getlongstring(false, 1))
	end
end)

local ServerLocked = false

game.Players.PlayerAdded:connect(function(Player)
	if ServerLocked == true then
		wait()
		Player:remove()
	end
end)

addcmd('serverlock','locks server',{'slock'},
function(args)
	ServerLocked = true
end)

addcmd('unserverlock','locks server',{'unslock'},
function(args)
	ServerLocked = false
end)

addcmd('change','changes player\'s stats',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if gPlayers[v]:FindFirstChild('leaderstats') then
		    gPlayers[v].leaderstats[args[2]].Value = args[3]
	    end
	end
end)

addcmd('penis','something',{'dick','dong'},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    local person = gPlayers[v].Name
        local color = args[2]
		if args[2]=='black' then
			color='Brown'
		end
		if args[2]=='asian' then
			color='Cool yellow'
		end
		if args[2]=='white' then
			color='Pastel brown'
		end
		if args[2]=='alien' then
			color='Lime green'
		end
		if args[2]=='frozen' then
			color=1019
		end
		if not args[2] then
			color='Pastel brown'
		end
		pcall(function()
			game.Players[person].Character['Nice thing']:Remove()
		end)
		local D = Instance.new('Model', workspace[person])
		D.Name = 'Nice thing'
		
		local BG = Instance.new('BodyGyro',workspace[person].Torso)
		local MAIN = Instance.new('Part', workspace[person]['Nice thing'])
		local M1 = Instance.new('CylinderMesh', MAIN)
		local W1 = Instance.new('Weld', workspace[person].Head)
		local P1 = Instance.new('Part', workspace[person]['Nice thing'])
		local M2 = Instance.new('SpecialMesh', P1)
		local W2 = Instance.new('Weld', P1)
		local B1 = Instance.new('Part', workspace[person]['Nice thing'])
		local M3 = Instance.new('SpecialMesh', B1)
		local W3 = Instance.new('Weld', B1)
		local B2 = Instance.new('Part', workspace[person]['Nice thing'])
		local M4 = Instance.new('SpecialMesh', B2)
		local W4 = Instance.new('Weld', B2)
		
		MAIN.TopSurface = 0
		MAIN.BottomSurface = 0
		MAIN.Name = 'Main'
		MAIN.formFactor = 3
		MAIN.Size = Vector3.new(0.6,2.5,0.6)
		MAIN.BrickColor = BrickColor.new(color)
		MAIN.Position = workspace[person].Head.Position
		MAIN.CanCollide = false
		
		W1.Part0 = MAIN
		W1.Part1 = workspace[person].Head
		W1.C0 = CFrame.new(0,0.25,2.1)*CFrame.Angles(math.rad(45),0,0)
		
		P1.Name = 'Mush'
		P1.BottomSurface = 0
		P1.TopSurface = 0
		P1.FormFactor = 3
		P1.Size = Vector3.new(0.6,0.6,0.6)
		P1.CFrame = CFrame.new(MAIN.Position)
		P1.BrickColor = BrickColor.new('Pink')
		P1.CanCollide = false
		
		M2.MeshType = 'Sphere'
		
		W2.Part0 = MAIN
		W2.Part1 = P1
		W2.C0 = CFrame.new(0,1.3,0)
		
		B1.Name = 'Left Ball'
		B1.BottomSurface = 0
		B1.TopSurface = 0
		B1.CanCollide = false
		B1.formFactor = 3
		B1.Size = Vector3.new(1,1,1)
		B1.CFrame = CFrame.new(workspace[person]['Left Leg'].Position)
		B1.BrickColor = BrickColor.new(color)
		
		M3.Parent = B1
		M3.MeshType = 'Sphere'
		
		W3.Part0 = workspace[person]['Left Leg']
		W3.Part1 = B1
		W3.C0 = CFrame.new(0,0.5,-.5)
		
		B2.Name = 'Right Ball'
		B2.BottomSurface = 0
		B2.CanCollide = false
		B2.TopSurface = 0
		B2.formFactor = 3
		B2.Size = Vector3.new(1,1,1)
		B2.CFrame = CFrame.new(workspace[person]['Right Leg'].Position)
		B2.BrickColor = BrickColor.new(color)
				
		M4.MeshType = 'Sphere'
		
		W4.Part0 = workspace[person]['Right Leg']
		W4.Part1 = B2
		W4.C0 = CFrame.new(0,0.5,-.5)
	end
end)

addcmd('fogend','makes fogend to user input',{},
function(args)
	game.Lighting.FogEnd = args[1]
end)

-- Extras --

Floating = false

addcmd('float', 'makes player float',{},
function(args,speaker)
	Floating = true
	local players = getPlayer(args[1])
	for _,v in pairs(players) do
		local pchar = gPlayers[v].Character
		if gPlayers[v] and pchar and not pchar:FindFirstChild('Float') then
			spawn(function()
				local float = DATA.Float:Clone()
				float.Parent = pchar
				float.CFrame = pchar.Torso.CFrame * CFrame.new(0,-3.5,0)
				spawn(function()
					while wait(0.1) do
						if pchar:FindFirstChild('Float') then
							float.CFrame = pchar.Torso.CFrame * CFrame.new(0,-3.5,0)
						else
							break
						end
					end
				end)
			end)
		end
	end
end)

addcmd('unfloat','disables floating',{},
function(args)
	Floating = false
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	    if pchar:FindFirstChild('Float') then
		    pchar.Float:Destroy()
	    end
	end
end)

local Clip = true

addcmd('noclip','enables noclip',{},
function(args)
Notify('NoClip Enabled')
Clip = false
	wait(1)
	Name = game.Players.LocalPlayer.Name
	game:GetService('Players').LocalPlayer.PlayerGui.ChildAdded:connect(function (NC)
		delay(0, function()
			if NC.Name ~= 'OuputGUI' then
				NC:Destroy()
			end
		end)
	end)
	game:GetService('RunService').Stepped:connect(function ()
    game.Workspace[Name].Torso.CanCollide = Clip
    game.Workspace[Name].Head.CanCollide = Clip
	end)
	game.Workspace[Name].Torso.Changed:connect(function()
    game.Workspace[Name].Torso.CanCollide = Clip
	game.Workspace[Name].Head.CanCollide = Clip
	end)
end)

addcmd('clip','disables noclip',{},
function(args)
	Notify('NoClip Disabled')
	Clip = true
end)

wait(0.1)

addcmd('prefix','changes prefix',{},
function(args)
	cmdprefix = args[1]
	Notify('Changed prefix to \'' .. args[1] .. '\'')
end)

addcmd('version','shows version',{''},
function(args)
	Notify('Version is ' .. Version)
end)

--// Floating //--

Mouse.KeyDown:connect(function (Key)
	if Key:byte() == 29 then
		if Floating == false then
			execCmd('float ' .. Player.Name)
			Floating = true
		elseif Floating == true then
			execCmd('unfloat ' .. Player.Name)
			Floating = false
		end
	end
end)

--// CMDs Gui //--

CMDsFolder = Instance.new('Folder', game.CoreGui)

for i,v in pairs(CMDs) do
	CMDsValue = Instance.new('StringValue', CMDsFolder)
	CMDsValue.Value = v
	CMDsValue.RobloxLocked = true
end

local function commands()
	if game.CoreGui:FindFirstChild('CMDs') then
		game.CoreGui.CMDs:Destroy()
	end
	local cmds = DATA.CMDs:Clone()
	cmds.Parent = game.CoreGui
	cmds.MAIN.Exit.MouseButton1Down:connect(function()
		cmds:Destroy()
	end)
	cmds.MAIN.MM.MouseButton1Down:connect(function()
		if cmds.MAIN.CMDs.Visible == true then
			cmds.MAIN.CMDs.Visible = false
		elseif cmds.MAIN.CMDs.Visible == false then
			cmds.MAIN.CMDs.Visible = true
		end
	end)
	local CMDsV = CMDsFolder:GetChildren()
	for i = 1, #CMDsV do
		local YSize = 25
		local Position = ((i * YSize) - YSize)
		local newcmd = cmds.MAIN.Example:Clone()
		newcmd.Parent = cmds.MAIN.CMDs
		newcmd.Visible = true
		newcmd.Position = UDim2.new(0,5,0, Position + 5)
		newcmd.Text = '' .. CMDsV[i].Value
		cmds.MAIN.CMDs.CanvasSize = UDim2.new(0,0,0, Position + 30)
	end
end

addcmd('cmds','prints cmds',{},
function(args)
	commands()
end)

--// Command Bar //--

CMDbar.FocusLost:connect(function(enterpressed)
	if enterpressed and CMDbar.Text ~= '' then
		pcall(function()
			execCmd(CMDbar.Text, Player)
		end)
	end
	CMDbar:TweenPosition(UDim2.new(0, -200, 1, -75), 'InOut', 'Quad', 0.5, true, nil)
end)

Mouse.KeyDown:connect(function(Key)
	if Key:byte() == 59 then
		CMDbar:TweenPosition(UDim2.new(0, 0, 1, -75), 'InOut', 'Quad', 0.5, true, nil)
		CMDbar:CaptureFocus()
	end
end)

--// Notifications //--

wait(1)

if game.Workspace.FilteringEnabled == true then
	NOTIFY.NOTIFY.BorderColor = BrickColor.new(255,0,0)
	Notify('Filtering is ENABLED.') 
elseif game.Workspace.FilteringEnabled == false then
	NOTIFY.NOTIFY.BorderColor = BrickColor.new(0,255,0)
	Notify('Filtering is Disabled.') 
end

wait(3.5)

NOTIFY.NOTIFY.BorderColor = BrickColor.new(255,255,255)

Notify('Loaded ' .. #cmds .. ' commands!')

wait(3.5)

Notify('Welcome ' .. Player.Name .. '!')

--[[
addcmd('name','desc',{},
function(args)
	local players = getPlayer(args[1])
	for i,v in pairs(players)do
	    local pchar = gPlayers[v].Character
	end
end)
--]]