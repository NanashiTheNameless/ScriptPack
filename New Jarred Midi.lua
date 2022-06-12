--

function lerp(a,b,c)
    return a+(b-a)*c
end
local admunz={"Jamie_1","thejonathann","oxcool1",'ClassyUmadbro2bad','MakerModelLua','Nexure','Diitto'}

local fme="YourTrueEnd"

local mid = ""

local guis={}

local xnum = 2

local ynum = 3

local znum = 0

local soundscape = {}

SoundPoint = nil


wait(1)
function WaitChild(par,name)
local obj = par:findFirstChild(name)
while obj == nil do
wait(0.25)
obj = par:findFirstChild(name)
end
return obj
end

reload_B64 = false
SortSongByName = false
Max_SLength = 131070
DisregardMixerVolume = false

local properties = Instance.new("BoolValue",script)
properties.Name = "Properties"
local volume = Instance.new("NumberValue",properties)
volume.Name = "Volume"
volume.Value = 3
local loop = Instance.new("BoolValue",properties)
loop.Name = "Loop"
local playthroughall = Instance.new("BoolValue",properties)
playthroughall.Name = "PlayThroughAll"
local advanced = Instance.new("BoolValue",properties)
advanced.Name = "Advanced"
local tempomod = Instance.new("IntValue",advanced)
tempomod.Name = "TempoMOD"
local songposset = Instance.new("NumberValue",advanced)
songposset.Name = "SongPosSet"
songposset.Value = 761.332
local posget = Instance.new("BoolValue",advanced)
posget.Name = "PosGet"
local play = Instance.new("BoolValue",posget)
play.Name = "Play"
local songpos = Instance.new("NumberValue",posget)
songpos.Name = "SongPos"
local songid = Instance.new("IntValue",posget)
songid.Name = "SongID"
local songlength = Instance.new("NumberValue",posget)
songlength.Name = "SongLength"
local globalpitchmod = Instance.new("NumberValue",advanced)
globalpitchmod.Name = "GlobalPitchMOD"
local formuter = Instance.new("NumberValue",advanced)
formuter.Name = "ForMuter"
formuter.Value = 1
local fastforward = Instance.new("BoolValue",advanced)
fastforward.Name = "Fastforward"
local debug = Instance.new("BoolValue",advanced)
debug.Name = "Debug"
local isplaying = Instance.new("BoolValue",advanced)
isplaying.Name = "isPlaying"
local stop = Instance.new("BoolValue",properties)
stop.Name = "Stop"
local play_2 = Instance.new("BoolValue",properties)
play_2.Name = "Play"
local pause = Instance.new("BoolValue",properties)
pause.Name = "Pause"

local songa = Instance.new("IntValue",script)
songa.Name = "Song"
songa.Value=0
local a = Instance.new("StringValue",songa)
a.Name = "a"
a.Value=[[]]

wait()
function DefSpecialProp()
svolume = WaitChild(prop,"Volume")
Stop = WaitChild(prop,"Stop")
loop = WaitChild(prop,"Loop")
adv = WaitChild(prop,"Advanced")
isPlaying = WaitChild(adv,"isPlaying")
FFwrd = WaitChild(adv,"Fastforward")
fmuter = WaitChild(adv,"ForMuter")
songPS = WaitChild(adv,"SongPosSet")
play = WaitChild(prop,"Play")
tempoMod = WaitChild(adv,"TempoMOD")
gpmod = WaitChild(adv,"GlobalPitchMOD")
pause = WaitChild(prop,"Pause")
pta = WaitChild(prop,"PlayThroughAll")
pget = WaitChild(adv,"PosGet")
sposOBJ = WaitChild(pget,"SongPos")
songLGet = WaitChild(pget,"SongLength")
songGet = WaitChild(pget,"SongID")
end

function FindPlayer(name,Speaker)
    local found,rand = {},math.random(1,game.Players.NumPlayers)
    for word in name:gmatch("%S+")do
        for i,player in pairs(Game.Players:GetPlayers())do
            if player.Name:lower():find(word:lower())== 1
            or word:lower()== "all"
            or word:lower()== "everyone"
            or word:lower()== "everybody"
            or word:lower()== "everypony"
            or word:lower()== "local" and player == Speaker
            or word:lower()== "me" and player == Speaker
            or word:lower()== "others" and player ~= Speaker
            or word:lower()== "random" and i == rand then
            table.insert(found,player)
            end 
        end
    end
    return found
end

function addSS()
    local p = Instance.new("Part",workspace)
    p.Anchored = true
    p.FormFactor = "Custom"
    p:BreakJoints()
    p.TopSurface,p.BottomSurface = 0,0
    p.CanCollide = false
    p.Size = Vector3.new(1,1,1)
    p.Locked = true
    p.CFrame = getMiddleCFrame()
	local PL=Instance.new("PointLight",p)
	PL.Color= BrickColor.new("Royal purple").Color
	PL.Brightness=0
    local SM = Instance.new("SpecialMesh",p)
    SM.MeshId = "http://www.roblox.com/Asset/?id=9856898"
	SM.TextureId = "rbxassetid://3319251"
	SM.VertexColor = Vector3.new(0,0,0)
    SM.Scale = Vector3.new()
    table.insert(soundscape,p)
    return p
end

function strhex(str)
    local res=''
    local hnt=Instance.new('Hint',workspace)
    hnt.Text='Decoding'
        for port in str:gmatch'.'do
            res=res..string.format('%02x',port:byte())
        end
        hnt:Destroy()
    return(res)
end

local debris = game:GetService("Debris")
function newSS(am)
    for i,v in pairs(soundscape) do for _,x in pairs(v:GetChildren()) do debris:AddItem(x,0) end debris:AddItem(v,.05) end
    soundscape = {}
    for i=1,am do
        addSS()
    end
end

function SetStartValues()
	tempoMod.Value = 0
	play.Value = false
	Stop.Value = false
end


function ClrLerp(Mesh,Clr2,Step)
	Clr1 = Mesh.VertexColor
	Mesh.VertexColor = Vector3.new(lerp(Clr1.X,Clr2.X,Step),lerp(Clr1.Y,Clr2.Y,Step),lerp(Clr1.Z,Clr2.Z,Step))
end

function getMiddleCFrame()
    cf = workspace:FindFirstChild(fme) and workspace[fme]:FindFirstChild("Torso") and workspace[fme].Torso:IsA("Part") and workspace[fme].Torso.CFrame + Vector3.new(0,3,0) or CFrame.new(0,10,0)
    return CFrame.new(cf.p)
end

do
    local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
     
    local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
     
    local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

    function clerp(a,b,t)
        local qa = {QuaternionFromCFrame(a)}
        local qb = {QuaternionFromCFrame(b)}
        local ax, ay, az = a.x, a.y, a.z
        local bx, by, bz = b.x, b.y, b.z

        local _t = 1-t
        return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
    end
end 
Num = 0
Rnd = math.random

game:GetService("RunService").Stepped:connect(function()
	   local mcf = getMiddleCFrame()
    	for i,v in pairs(soundscape) do
    		local snd,m,pl=v:FindFirstChild("Sound"),v:FindFirstChild("Mesh"),v:FindFirstChild("PointLight")
    		if snd and m then
    		    pl.Brightness=snd.Volume
    		    ClrLerp(m,Vector3.new(snd.Volume/2,0,snd.Volume),.05)
    			m.Scale = Vector3.new(.5,math.max(.02,lerp(m.Scale.Y+snd.Volume/2*1.3,snd.Volume,.3)*1.3),.5)
    		elseif m then
    		    pl.Brightness=0
    			m.Scale = Vector3.new(1,.02,1)
    			ClrLerp(m,Vector3.new(0,0,0),.3)
    		end
    		if m then
    			m.Offset = Vector3.new(0,m.Scale.Y/2*v.Size.Y/4,0)
    		end
    		--[[
    		local ran = 4
    		local ang;
    		repeat 
    			ran = ran + .25
    			ang = math.atan(v.Size.X/ran) + math.rad(1)
    		until (#soundscape)*ang < math.pi*2]]
    		ang = math.pi*2 / #soundscape
    		ran = math.max(3,(v.Size.X / math.tan(ang)) + .5)
    		v.CFrame = CFrame.new(i,0,0)--v.CFrame = clerp(v.CFrame,mcf*CFrame.Angles(0,math.pi*2/#soundscape*(i-1),0)*CFrame.new(0,0,-#soundscape*.3)+Vector3.new(0,math.sin((tick()+i)*5),0),.1) 
    	end
end)



song = WaitChild(script,"Song")
prop = WaitChild(script,"Properties")



DefSpecialProp()
GVol = svolume.Value*fmuter.Value

function CompareAndRefresh(old,new)
	gcp = old:GetChildren()
	cp = new:GetChildren()
	
	for i=1,#gcp do
		for ii=1,#cp do
			if gcp[i].Name == cp[ii].Name then
				local Gobj = gcp[i]
				local obj = cp[ii]
				obj.Value = Gobj.Value
				obj.Changed:connect(function() Gobj.Value = obj.Value end)
			end
		end
	end
end

SetStartValues()

if #song:GetChildren() == 1 then
	pta.Value = false
end

if pta.Value == false then
	ResetSongOnDeath = true
end

songs = song:GetChildren()
TheMidi = songs[song.Value]

if songs[song.Value] ~= nil then
mid = songs[song.Value].Value
else
mid = songs[1].Value
end

playDebounce = false

midiplayer = script.Parent

sounds = {}
midichecksum = 365
waitloop = false
tracksOn = 0

tempo = 120

-- {id,tune,startkey,endkey,volume,attack,release,loop}
snap = 12222140
ping = 12221990
bass = 12221831
button = 12221967
clickf = "rbxasset://sounds//clickfast.wav"
clunk = "rbxasset://sounds//flashbulb.wav"

url = "http://www.roblox.com/asset/?id="

-- M_INS
programs = {
{{"12857654",0.3,0,66,0.5},{"12857804",-7,67,71,0.5},{"12857664",-11.5,72,127,0.8}}, -- Banjo
{{"12857637",-3.9,0,64,0.5},{"12857660",-8.4,65,127,0.5}}, -- Banjo 2
{{"13114759",-6,0,127,1}}, -- ding
{{"19344667",-8.6,0,127,0.5}}, -- bell
{{"15666462",-13.5,0,127,0.4}}, -- Beep
{{"13424334",-23.2,0,127,0.5,0,0.5}}, -- piccolo
{{"1089407",8.2,0,57,0.5},{"1089403",3.2,58,127,1}}, -- Electric Guitar
{{"13032199",8.2,0,57,0.5},{"13032178",3.2,58,127,1}}, -- Space Guitar
{{"60661796",-2.5,0,127,0.5,0.3,0.2}}, -- Metal Guitar
{{"13019281",11.2,0,127,0.5}}, -- Ninja Guitar (Twang Twang!)
{{"13019300",11.3,0,127,0.5}}, -- Ninja Guitar (T-T-Twang Twang!)
{{"12892216",-7,0,127,0.5}}, -- Jungle Guitar
{{"10209668",6.5,0,127,0.5}}, -- synth sound 1
{{"11998777",12,0,127,0.5}}, -- synth sound 2
{{"11998796",4.8,0,127,0.5,0,0.15}}, -- synth sound 3
{{bass,11.7,0,127,0.5}}, -- Bass
{{"rbxasset://sounds//uuhhh.wav",0.2,0,127,0.5}}, -- Robloxian Death
{{button,6.7,0,127,0.4}}, -- Button
{{ping,-21.7,0,127,0.5,0,0.2}}, -- Ping!
{{"rbxasset://sounds//Kid saying Ouch.wav",0.9,0,127,0.5}}, -- 'Ouch'
{{"11984351",16.8,0,127,0.3,0.02,0.2}}, -- Long Destructive Synth
-- 										v V Drumset V v
{{"13114759",39.7,26,26,0.5},{snap,37,27,27,0.5,0,0.25},
{"108553903",38,28,28,0.5,0,0,0},
{"18426149",41,29,29,0.4,0,0.25},{"18426149",34,30,30,0.4,0,0.25},{snap,37,31,31,0.2},
{clickf,40,31,31,0.7},{clunk,40,32,32,0.5},{clickf,38,33,34,0.5},
{"56524816",24,34,34,0.3},{"31173820",20,35,35,0.5},{"31173820",24,36,36,0.5},
{"14863866",16,37,37,1},{"31173799",20,38,38,0.7},{"2101148",54,39,39,0.7},{"31173799",20,40,40,0.5},
{"31173881",17,41,41,0.5},
{snap,45,42,42,0.25,0,0.25},{"31173881",19,43,43,0.5},{snap,52,44,44,0.25,0,0.25},
{"31173881",21,45,45,0.5},{"31173735",14,46,46,0.5},{"31173881",23,47,47,0.5},{"31173844",13,48,48,0.5},
{"31173771",14,49,49,0.5},{"31173844",15,50,50,0.5},{"31173898",8,51,51,0.5},{"31173771",5,52,52,0.5},
{"11113679",9.5,53,53,0.5},{snap,34,54,54,0.15,0,0.25},{"31173771",24,55,55,0.5},{snap,14,56,56,0.2},{"57802055",1,56,56,0.3},
{"31173771",7,57,57,0.5},{"31173898",1,59,59,0.5},{"57801983",3,60,60,0.5,0,0.25},{"57801983",-10,61,61,0.5,0,0.25}, -- tuning was -5
{"101088307",24,62,62,0.5,0,0,0},{"57802055",-16,63,63,0.5,0,0.25},{"57802055",-22,64,64,0.5,0,0.25},{"57801983",-15,65,65,0.5,0,0.25}
,{"57801983",-21,66,66,0.5,0,0.25},
{"13114759",-8,67,67,0.5,0,0.25},{"13114759",-14,68,68,0.5,0,0.25},
{snap,22,69,69,0.4},
{snap,32,70,70,0.5,0,0.25},{"28510547",-14.4,71,71,0.4,0,0.25},{"28510547",-18.4,72,72,0.4,0,0.25},{"101180005",-3.4,73,73,0.3,0,0,0},
{"100391463",-4,74,74,0.4,0,0,0},{"15666462",8,75,75,0.4},{"57802055",-2,76,76,0.4},{"57802055",-5,77,77,0.4},{"75338648",-13,78,78,0.6,0,1,0},{"75338648",-31.7,79,79,0.5,0,0,0},
{"19344667",2.5,80,80,0.25,0,0.25},{"19344667",1.5,81,81,0.2},{snap,12,82,82,0.3,0,0.25},{"101093314",-22,83,83,0.4,0,0.25},
{"13061809",-4,84,84,0.4},{"57802055",8,85,85,0.4},{"31173844",-35,86,86,0.4},{"31173844",-36,87,87,0.4}},
-- Horror SFX v v v
{{"13061809",-2,56,64,0.5},{"13061802",-10,65,74,0.5},{"13061810",-23,75,84,0.5},{"11984254",-34,85,127,0.5},
{"rbxasset://sounds//HalloweenThunder.wav",8,48,55,0.5},{"rbxasset://sounds//HalloweenGhost.wav",27,0,47,0.5}},
{{"21338895",0,0,127,0.5}}, -- Maraca
{{"11949128",10,0,127,0.5}}, -- Big Drum (Even though it isn't.)
{{"10209888",13.4,0,127,0.3},{"10209888",14.2,61,127,0.3}}, -- Popcorn
{{"45885030",1.4,0,127,0.3}}, -- KatanaSlash
{{"75421988",33.75,0,80,0.3,0,0.2,1},{"75338648",-24.7,81,127,0.5,0,0.4,1},
{"75338648",-0.7,81,127,0.4,0,0.4,1},{"75338648",11.4,81,127,0.5,0,0.4,1}}, -- ChargeSynth
{{"15666462",52.2,0,127,0.4,0.5,0.5,1}}, -- Hard Synth Bass
{{"11944350",-9.6,0,127,0.5}}, -- Pew
{{"79236960",0,0,127,0.3,0}}, -- Bass Drum
{{"81146867",16,0,127,0.3,0}}, -- Saber Sound
{{"75338648",-13,0,127,0.7,0,0.1,1}}, -- Beep sound
{{"11949128",43,0,127,0.5,0,0.25,1}}, -- Growly Thing
{{"11998796",4.8,0,127,1,0,0.25},{"75421988",33.8,0,80,0.2,0.4,0.4,1},{"75421988",33.9,0,80,0.2,0.4,0.4,1},
{"75338648",-24.7,81,127,0.5,0,0.4,1},{"75338648",-0.7,81,127,0.4,0,0.4,1},{"75338648",11.4,81,127,0.5,0,0.4,1}}, -- Nice Synth
{{"58479648",15.2,0,127,0.5,0,0.25}}, -- 035 Spitsy Bass
{{"58479648",15.2,0,127,0.5,0,0.15,1}}, -- 036 Spitsy Bass/Beep (Loops)
{{"69446845",13.5,0,127,0.5,0,0.15,1}}, -- 037 Dead Synth Strings
{{"75421988",33.7,0,80,0.2,0.4,0.4,1},{"75421988",33.8,0,80,0.2,0.4,0.4,1},{"75338648",-24.7,81,127,0.5,0,0.4,1},{"75338648",-0.7,81,100,0.4,0,0.4,1},{"75338648",11.4,81,86,0.5,0,0.4,1}}, -- 038 Charge Synth Smooth
{{"57802055",-2,0,127,0.5}}, -- 039 Noted Congo
{{bass,23.8,0,127,0.5}}, -- 040 Bass Octave Higher
{{"25641508",-9.5,0,127,0.5}}, -- 041 "Oof!"
-- 42 Fake Piano V2
{{bass,23.8,42,50,0.07},{"12857664",-11.6,36,80,0.6},
{ping,-21.7,82,127,0.5,0,0.15},
{"12857664",-11.6,87,127,0.18},{"12857664",-11.6,81,86,0.3},{bass,23.8,0,41,0.2},
{ping,-21.7,0,81,0.8,0,0.2}},
{{"75338648",-24.7,0,127,0.7,0,0.1,1}}, -- Soft Whistle (Octave lower)
{{"89357191",21.5,0,127,0.7,0,0.1,1}}, -- Lightsaber Hum
{{"13417380",-18.3,0,127,0.7,0,0.1}}, -- Clarinet
{{"13418521",-8,0,127,0.7,0,0.2}}, -- Sax
{{"13414759",4,0,127,0.7,0.5,0.5}}, -- Bagpipe Bass
{{"13414758",14,0,127,0.7,0,0.1,1}}, -- Bagpipes (beeps loop)
{{"13414749",19,0,127,0.7,0,0.1,1}}, -- Bagpipes (beeps2 loop)
{{"75338648",-24.7,0,127,0.5,0,0.1,1},{"75338648",-12.7,0,127,0.5,0,0.1,1},{"75338648",-5.7,0,127,0.7,0,0.1,1},{"75338648",-0.7,0,127,0.5,0,0.1,1}}, -- Ahhh
{{"75338648",-24.7,0,127,0.6,0,0.5,1},{"75338648",-12.7,0,127,0.6,0,0.5,1},{"75338648",-5.7,0,127,0.5,0,0.5,1}}, -- Synth
{{"75338648",-24.7,0,90,0.5,0,0.1,1},{"75338648",-5.7,0,90,0.4,0,0.1,1},{"75338648",-0.7,0,90,0.5,0,0.1,1},
{"75338648",-24.7,91,127,0.25,0,0.1,1},{"75338648",-5.7,91,127,0.15,0,0.1,1},{"75338648",-0.7,91,127,0.25,0,0.1,1}}, -- Organ?
{{"75338648",-24.7,0,127,0.5,0,0.1,1},{"75338648",-0.7,0,127,0.4,0,0.1,1},{"75338648",11.4,0,127,0.5,0,0.1,1}}, -- Organ?
{{ping,-21.7,0,127,0.3,0,0.1},{ping,4.7,0,127,0.2,0,0.1},{ping,14.7,0,127,0.2,0,0.1}}, -- Xylaphone
{{ping,-21.7,0,127,0.5,0,0.25},{ping,14.4,0,127,0.2,0,0.25},{"13114759",6,0,127,0.2,0,0.25}}, -- Marimba
{{bass,23.8,0,127,0.5,0,0.5}}, -- 040 Bass (Quick Rel)
{{"55741744",2.8,54,127,0.5,0,0.5},{"55741275",13.8,0,53,0.5,0,0.5}}, -- Jaw Harp
{{"60871617",-13,0,127,0.5,0,0.5}}, -- Cat Meow
{{"56524816",-13.8,0,127,0.5,0,0.5}}, -- Wizard Wand Ding
{{"31173844",2,0,127,0.5}}, -- Synth Drum
{{"75421988",33.6,0,80,0.2,0.05,0.4,1},{"75421988",33.7,0,80,0.2,0.05,0.4,1},{"75338648",-24.7,81,127,0.5,0.05,0.4,1},{"75338648",-0.7,81,100,0.4,0.05,0.4,1},{"75338648",11.4,81,86,0.5,0.05,0.4,1}}, -- 038 Charge Synth Slow (More Smooth)
{{"57802055",-14,0,127,0.5,0,0.1},{"11949128",10,0,127,0.3,0,0.1}}, -- 062 Pluck
{{"99190550",7.6,0,127,0.3,0,0.1}}, -- 063 E Chug
{{"99170481",8,0,49,0.5,0,0.1},{"99170583",5.1,50,56,0.5,0,0.1},{"99190216",-4,57,66,0.5,0,0.1},{"99170403",-14,67,127,0.5,0,0.1}}, -- EGuitar 4
{{"99666917",2,0,127,0.5,0,0.1}}, -- Sacatto Organ
{{"13414749",-5,0,127,0.4,0,0.2,0},{"75338648",-24.7,0,127,0.5,0,0.1,1}}, -- Dr. Solo
{{"10209257",0,57,127,0.2,0,0,0},{"10209257",0,47,56,0.15,0,0,0},{"10209257",0,0,46,0.1,0,0,0}}, -- Gunshot
{{"106708146",20,0,127,0.4,0.1,0,1}}, -- Applause
{{"75338648",-24.7,0,127,1,0.5,0.1,1},{"75338648",-5.7,0,127,0.2,0.5,0.1,1},{"75338648",-12.7,0,127,0.15,0.5,0.1,1}}, -- Loop flute
{{"75338648",-24.7,0,127,0.7,0,0.1,1},{"75338648",23.8,0,127,0.01,0,0.1,1},{"75338648",-12.7,0,127,0.1,0,0,1}}, -- EPiano 1
{{"108553955",17.1,0,127,0.5,0,0,1},{"75338648",-24.7,46,127,0.4,0,0.1,1},{"75338648",-24.7,0,45,0.7,0,0.1,1}}, -- Whispery Bass Synth
{{"109618842",-24,70,127,0.4,0,0,0},{"109618754",-14,0,56,0.4,0,0,0},{"109618435",-18.8,66,69,0.4,0,0,0},{"109619047",-23,57,59,0.4,0,0,0},{"109618940",-11.9,60,65,0.4,0,0,0}}, -- Celtic Harp
{{"109618842",-24,86,127,0.4,0,0,0},{"109618754",-14,0,59,0.4,0,0,0},{"109618940",-11.9,60,85,0.4,0,0,0}}, -- Piano/Harp
{{"109618435",-18.8,0,127,0.6,0,0.2,0}}, -- Fake Guitar
{{"109619047",-23,0,127,0.4,0,0.2,0}}, -- Fake Guitar 2
-- 										v V Orchestra Drumset V v
{{"12222140",60,27,27,0.5,0,0,0},{"12222140",60,28,28,0.5,0,0,0},
{"31173735",31,29,29,0.4,0,0,0},{"31173898",24,30,30,0.5,0,0,0},{snap,37,31,31,0.2},
{clickf,40,31,31,0.7},{clunk,40,32,32,0.5},{clickf,38,33,34,0.5},
{"56524816",24,34,34,0.3},{"31173820",20,35,35,0.5},{"11949128",10,36,36,0.5,0,0,0},
{"14863866",16,37,37,1},{"112503990",28,38,38,0.8,0,0,0},
{"106543491",20.5,39,39,0.5,0,0,0},{"112503990",26.4,40,40,0.8,0,0,0},
{"11949128",10,41,53,0.5,0,0,0},{snap,34,54,54,0.15,0,0.25},{"31173771",24,55,55,0.5},
{snap,14,56,56,0.2},{"57802055",1,56,56,0.3},{"31173771",12,57,57,0.5,0,0,0},
{"31173771",16,59,59,0.5,0,0,0},
{"57801983",3,60,60,0.5,0,0.25},{"57801983",-10,61,61,0.5,0,0.25},
{"101088307",24,62,62,0.5,0,0,0},{"57802055",-16,63,63,0.5,0,0.25},
{"57802055",-22,64,64,0.5,0,0.25},{"57801983",-15,65,65,0.5,0,0.25},
{"57801983",-21,66,66,0.5,0,0.25},{"13114759",-8,67,67,0.5,0,0.25},
{"13114759",-14,68,68,0.5,0,0.25},
{snap,22,69,69,0.4},{snap,32,70,70,0.5,0,0.25},{"28510547",-14.4,71,71,0.4,0,0.25},
{"28510547",-18.4,72,72,0.4,0,0.25},{"101180005",-3.4,73,73,0.3,0,0,0},
{"100391463",-4,74,74,0.4,0,0,0},{"15666462",8,75,75,0.4},{"57802055",-2,76,76,0.4},
{"57802055",-5,77,77,0.4},{"75338648",-13,78,78,0.6,0,1,0},{"75338648",-31.7,79,79,0.5,0,0,0},
{"19344667",2.5,80,80,0.25,0,0.25},{"19344667",1.5,81,81,0.2},{snap,12,82,82,0.3,0,0.25},
{"101093314",-22,83,83,0.4,0,0.25},
{"13061809",-4,84,84,0.4},
{"57802055",8,85,85,0.4},
{"31173844",-35,86,86,0.4},
{"31173844",-36,87,87,0.4}},
{{"75338648",-24.9,0,67,0.5,0,0.1,0},{"12221990",2.3,0,127,0.5,0,0.1,0},
{"12221990",-9.7,0,69,0.5,0,0.1,0},{"12221990",6,0,127,0.4,0,0.1,0},
{"75338648",-24.8,68,127,0.5,0,0.1,1},{"75338648",-12.8,70,127,0.7,0,0.2,1}},-- Steel drums

{{"109618435",-18.8,0,127,0.4,0,0.1,0},{"75338648",-24.7,0,127,0.7,0,0.1,1}}, -- Atmosphere
{{"12221831",23.8,61,127,0.4,0,0.5,0},{"11949128",10,0,127,0.4,0,0.1,0},
{"12221831",23.8,0,60,0.3,0,0.5,0}}, -- String Pluck 2
{{"108553903",0,0,127,0.5,0,0,0}}, -- Snapper
{{"129562296",-9,0,127,0.17,0,0.4,1}}, -- SquareWave 81
{{"131030037",12,0,127,0.3,0,0.4,1}}, -- SawWave 82
{{"129562240",-9,0,127,0.23,0,0.5,1}}, -- SineWave 83
{{"129562296",-8.9,0,127,0.15,0,0.25,1},{"129562296",-9.1,0,127,0.15,0,0.25,1}}, -- SquareWave2 84
{{"131030037",11.95,0,127,0.3,0,0.2,1},{"131030037",12.05,0,127,0.3,0,0.2,1}}, -- SawWave2 85
{{"129562240",-9,0,127,0.3,0.4,0.1,1},{"129562240",10,0,127,0.05,0.4,0.1,1},{"129562240",3,0,127,0.04,0.4,0.1,1}}, -- Being Replaced With a Real Flute...
{{"9413306",-10,0,127,0.5,0,0,0.5,0}}, -- Quack 87
{{"130818484",-12,0,127,0.9,0,0.25,0}}, -- Trumpet 88
{{"130849959",12,0,89,0.8,0,0.4,1},
{"130849959",12,90,102,0.5,0,0.4,1}}, -- PulseWave 89
{{"130850059",12,0,89,0.8,0,0.4,1},
{"130850059",12,90,102,0.5,0,0.4,1}}, --TriangleWave 90
{{"130851174",0,0,127,0.25,0,0.4,0}}, -- Electric Guitar 91
{{"130850183",0,53,127,0.7,0,0,0}, -- Pizzicato 92
{"130850227",24,0,52,0.3,0,0,0}}, -- 
{{"130850974",2,0,127,0.4,0,0.25,0}}, -- Trombone 93
{{"130944009",0,0,127,0.5,0,0,0}}, -- 94 Tubular Bells
}


for i=1,#programs do
	for ii=1,#programs[i] do
	item = programs[i][ii][1]
		if string.sub(item,1,1) ~= "r" then
		Game:GetService("ContentProvider"):Preload(url .. item)
		end
	end
end

GM = {0,{107},1,{8,106,105},77,{115},18,{9,11},20,{120},24,{48,117},
38,{49,91},39,{116},43,{73,74,75,78,79,80},42,{1,2,3,4},45,{70,72},
46,{22,23,41,65,66,67,68,69,111},47,{42,43,44,59},
51,{51,52,53,54,55,89,92,95,96},52,{17,18,19,45},53,{20},54,
{10,12,14},55,{13},56,{28,29,33,34,35,36,37,38,39,40,86,88},
60,{118,119},61,{50},64,{56},67,{128},68,{123},69,{70,72,90},
70,{5,97,93,94},72,{47},74,{7,16,25},75,{26},78,{100,101},
80,{127},81,{81},82,{82},85,{63,64},88,{57,61},91,{30,31},
92,{46},93,{58},94,{15}}

--M_Func
--==================================
--Small Importaint Functions

--Good for quick reference.
--==================================

function ChangeSongVolume()
	GVol = svolume.Value*fmuter.Value
end
svolume.Changed:connect(ChangeSongVolume)
fmuter.Changed:connect(ChangeSongVolume)


function SortPlaylistByName()
	if SortSongByName == true then
		local c = song:GetChildren()
		nametab = {}
		for i=1,#c do
			table.insert(nametab,c[i].Name)
		end
		
		table.sort(nametab)
		print(table.concat(nametab,' '))
		local hidden = Instance.new("IntValue")
		
		for i=1,#c do
			for ii=1,#c do
				if nametab[i] == c[ii].Name then
					c[ii].Parent = hidden
					break
				end
			end
		end
		
		local c = hidden:GetChildren()
		for i=1,#c do
		print(c[i].Name)
		c[i].Parent = song
		end
	end
end

SortPlaylistByName()

function PlayNextSongIf()
	if stop == false then
	--print("NextSongIf",songPlaying,pta.Value)
		if songPlaying == false then
			if isPlaying.Value == true then
				isPlaying.Value = false
			end
			if pta.Value == true then
				
				if loop.Value == false then
					if song.Value >= #songs then
						return
					end
				end
								
			song.Value = (song.Value%#songs)+1
			songPlaying = true
			end
		end
	end
end

function DeSpaceFile(file,conv)
	local check = ""
	if conv == true then
		check = TheMidi.Value
	else
		check = mid
	end
	if string.sub(check,1,3) ~= "Ukl" and string.sub(check,1,1) ~= "[" then
		if string.sub(check,1,3) ~= "TVR" and string.sub(check,1,1) ~= "X" then
		print("Spaced? Despace!")
		local str = ""
			for v in string.gmatch(check,"%x+") do
			str = str .. v
			end
			
			if conv == true then
			file.Value = str
			mid = file.Value
			else
			mid = str
			end
		end
	end		
end

function Update_NewDeltaTime()
	t,l = wait(0.03)
	if ticks_per_QN ~= nil then
	NewDeltaTime = t*32.17*((tempo+tempoMod.Value)/(1920/ticks_per_QN))
	end
end

function ReadByte(fp)
local subby = string.sub(mid,fp,fp+1)
if subby == "" then print("UNEXPECTED END_OF_FILE!") return 0 end
return tonumber("0x" .. subby)
end

function Read8bit(fp)
local subby = string.sub(mid,fp,fp)
if subby == "" then print("UNEXPECTED END_OF_FILE!") return 0 end
return tonumber("0x" .. subby)
end


function ReadWord(fp)
return ReadByte(fp)*16777216+ReadByte(fp+2)*65536+ReadByte(fp+4)*256+ReadByte(fp+6)
end

function Read3Bytes(fp)
return ReadByte(fp)*65536+ReadByte(fp+2)*256+ReadByte(fp+4)
end

InsNew = Instance.new





function PlayTrack(cpos,program,track,volume,mute,pmod)
-- MTrk here...

-- Midi Controlled
	local expression =  127
	local pbend1 = 0
	local pbend2 = 64
	local semtone = 2
	local LSB = 0
	local MSB = 0
	songPlaying = true
	local midicommand = nil
	local TrackStartPos = 0
	local bank = 0
	local chan = 0
	if TheMidi.className == "StringValue" then
		TParent = TheMidi:GetChildren()
	else
		TParent = TheMidi:GetChildren()[1]:GetChildren()
	end
	
local Trks = TParent


if filehas == 0 then
pcbend1 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
pcbend2 = {64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64}
MSB0 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
LSB0 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
semtone0 = {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}
bank0 = {0,0,0,0,0,0,0,0,0,127,0,0,0,0,0,0}
end


	local function SNum_NextByte()
	cpos = cpos+2
	snum = ReadByte(cpos)
	end

	local function Read127()
		b127 = 0
		if snum >= 128 then
			math127 = 0
			while snum > 127 do
			math127 = (math127+snum-128)*128
			b127 = math127
			SNum_NextByte()
			end
		end
		return b127+snum
	end

	local function NoteOff()
	local snum = ReadByte(cpos+2)
	cpos = cpos+4
		for i=1,#sounds,1 do
			if sounds[i][2] == snum and sounds[i][5] == track then
			sounds[i][3] = 0
			end
		end
	end
	
		local function PitchMath1(noteval,tune)
		return 2^((noteval+tune-60+pmod+((pbend2-64)*128+pbend1)/8192*semtone)/12)
	end
	
	local function PitchMath0(noteval,tune)
		local tp1 = track+1
		return 2^((noteval+tune-60+pmod+((pcbend2[tp1]-64)*128+pcbend1[tp1])/8192*semtone0[tp1])/12)
	end
	
	local function NoteOn()
	noteval = ReadByte(cpos+2)
	velocity = ReadByte(cpos+4)
		if velocity > 0 then
		cpos = cpos+4
		if mute == false then
		if noteval >= 0 and noteval <= 127 then -- If pressed a note key.
			progone = program.Value+1

		if progone == 0 then
		progone = 5
		end

		if programs[progone] ~= nil then
			notevalMod = noteval+pmod
			for v,prog in pairs(programs[progone]) do
				if noteval >= prog[3] and noteval <= prog[4] then

					if filehas ~= 0 then
					mathpitch = PitchMath1(noteval,prog[2])
					else
					mathpitch = PitchMath0(noteval,prog[2])
					end
				-- Lol ^ ^ ^ I really over did the pitch correction thingy...
					if string.sub(prog[1],1,1) ~= "r" then
						soundid = url .. prog[1]
						else
						soundid = prog[1]
						end
					mathvolume = (prog[5]*velocity*volume*GVol)/16129
					local s = nil
					local ctabi = nil
						
						for i=1,#sounds do
							if sounds[i][3] == 0 and sounds[i][1].Volume == 0 then
							s = sounds[i][1]
							ctabi = i
							if (s.Looped == true and prog[8] == 1) or (s.Looped == false and prog[8] ~= 1) then
							break
							else
							s = nil
							end
						end
						end

						   local par = s and s.Parent or (function() for i,v in pairs(soundscape) do if v:IsDescendantOf(game) and #v:GetChildren() == 1 then return v elseif not v:IsDescendantOf(game) then table.remove(soundscape,i) end end return addSS() end)()
                                --local par = workspace.Base
                                if s == nil then
                                    s = Instance.new("Sound",par)                                    
                                    if prog[8] ~= nil and prog[8] == 1 then
                                        s.Looped = true
                                    else
                                        s.Looped = false
                                    end
                                end
                                s:Stop()
                                Delay(.1,function() par.BrickColor = BrickColor.new("Royal purple") end)
                                s.SoundId = soundid
                                s.Pitch = mathpitch
                                if ctabi ~= nil then
                                    table.remove(sounds,ctabi)
                                end
						stab = {}

						table.insert(sounds,stab)
						table.insert(stab,s)
						table.insert(stab,noteval)
						table.insert(stab,1) -- note on
						table.insert(stab,1) -- So the note plays once.
						table.insert(stab,track)
						table.insert(stab,prog[2]) -- additional pitch	
						table.insert(stab,mathvolume) -- max volume

						if prog[6] ~= nil and prog[6] ~= 0 then
						table.insert(stab,prog[6]) -- attack
						s.Volume = 0
						else
						table.insert(stab,0.0001) -- attack
						s.Volume = mathvolume
						end

						if prog[7] ~= nil and prog[7] ~= 0 then
						table.insert(stab,prog[7]) -- release
						else
						table.insert(stab,0.05)
						end
						s:Play()
					end
				end
			end
		end
	end
	else -- Velocity == 0
	NoteOff()
	end
	end


	local function NoteAftertouch()
	--print("Note Aftertouch detected")
	cpos = cpos+2
	end


	local function ControllerChange()
	--print("Midi Controller detected")
	cpos = cpos+2
	convalue = ReadByte(cpos)
	cpos = cpos+2
	convalue2 = ReadByte(cpos)
	
		if convalue == 0 then
			if filehas ~= 0 then
			bank = convalue2
			else
			bank0[track+1] = convalue2
			end
		end
		
		if convalue == 6 then
			if filehas ~= 0 then
				if LSB == 0 and MSB == 0 then
				semtone = convalue2
				end
			else
				if LSB0[track+1] == 0 and MSB0[track+1] == 0 then
				semtone0[track+1] = convalue2
				end
			end
		end

		if convalue == 7 then
		print("Channel Volume Set:",convalue2,volume)
			if volume == 128 or DisregardMixerVolume == true then
				if convalue2 > 5 then
				volume = convalue2
				end
			end
		end	

	if convalue == 100 then
			if filehas ~= 0 then
			LSB = convalue2
			else
			LSB0[track+1] = convalue2
			end
		end
		if convalue == 101 then
			if filehas ~= 0 then
			MSB = convalue2
			else
			MSB0[track+1] = convalue2
			end
		end
		if convalue == 111 then
		TrackStartPos = cpos+2
		end
	end




	local function ProgramChange()
	if mute == false then print("Program change detected: " .. ReadByte(cpos+2)+1,"Track:",track,"Bank:",bank,"Chan:",chan) end
	if program.Value < 0 then
	--local chan = Read8bit(cpos+1)
	local newprog = ReadByte(cpos+2)+1
		if chan ~= 9 then
			foundp = false
			for i=1,#GM,2 do
			local GMtab = GM[i+1]
			local newIns = GM[i]
				if GMtab ~= nil then
					for ii=1,#GMtab do
						if GMtab[ii] == newprog then
						program.Value = newIns
						foundp = true
						break
						end
					end
				end
			end
			if foundp == false then
			program.Value = -1
			end
		else
		program.Value = 21
		if newprog == 49 then
			program.Value = 76
		end
		
		end
	end
	cpos = cpos+2
	end

	local function PitchBend()
	if filehas ~= 0 then
	pbend1 = ReadByte(cpos+2)
	pbend2 = ReadByte(cpos+4)

		for i=1,#sounds,1 do
			if sounds[i][5] == track then
				sounds[i][1].Pitch = 2^((sounds[i][2]+sounds[i][6]-60+((pbend2-64)*128+pbend1)/8192*semtone)/12)
			end
		end
	else
	pcbend1[track+1] = ReadByte(cpos+2)
	pcbend2[track+1] = ReadByte(cpos+4)

		for i=1,#sounds,1 do
			if sounds[i][5] == track then
				sounds[i][1].Pitch = 2^((sounds[i][2]+sounds[i][6]-60+((pcbend2[track+1]-64)*128+pcbend1[track+1])/8192*semtone0[track+1])/12)
			end
		end
	end
	cpos = cpos+4
	end

	local function ChannelAftertouch()
	cpos = cpos+2
	end

local com = {}
com[8] = NoteOff
com[9] = NoteOn
com[10] = NoteAftertouch
com[11] = ControllerChange
com[12] = ProgramChange
com[13] = ChannelAftertouch
com[14] = PitchBend


local chunksize = ReadWord(cpos) -- probably will be used to find the next track.

local step = 0
local dowait = true
local waitbyte = 0
local finalwaitbyte = 0

tracksOn = tracksOn+1
snum = 0
local atTrack = 1

chunksize = ReadWord(cpos)
	-- FIND THE RIGHT TRACK
	while track > atTrack do
	chunksize = ReadWord(cpos)
	cpos = cpos+(chunksize*2)+16
	atTrack = atTrack+1
	end

cpos = cpos+8
TrackStartPos = cpos

	if TrackStartPos >= msize then
		tracksOn = tracksOn-1
		print("ERROR! EOF!")
		return
	end
	
	print("Track pos: " .. cpos)
	print("Start Loop")
	while cpos <= msize do
	snum = ReadByte(cpos)
	--print("Position:",cpos,snum,"stop:",stop)
	
	if dowait == true then -- WAIT COMMAND
		local finalwaitbyte = Read127()
			--print("Wait CLICKS: " .. finalwaitbyte)
			dowait = false
			SNum_NextByte()

	while finalwaitbyte > step do
	wait(0.03)
	step=step+NewDeltaTime
		if stop == true then
		break
		end
	end
	step = step-finalwaitbyte
	finalwaitbyte = 0
	end
	
snum = ReadByte(cpos)

-- META EVENTS
	if snum == 255 then
		dowait = true
	SNum_NextByte()
	local oldcpos = cpos
		if snum == 81 then
		cpos = cpos+4
		
		tempo = 60000000/Read3Bytes(cpos)
		oldtempo = tempo
		--print("Tempo Set To: " .. tempo)
		
		cpos = cpos+4
		snum = -1

		elseif snum == 3 or snum == 6 then
		oldsum = snum

		SNum_NextByte()
		vallength = Read127() --snum
		cpos = cpos+(vallength*2)

		elseif snum == 47 then
			if loop.Value == true and stop == false and pta.Value == false then
			cpos = TrackStartPos-2

			if filehas == 1 or filehas == 2 then
			waitloop = true
			tracksOn = tracksOn-1
				while waitloop do
				wait(0.03)
				end
				tracksOn=tracksOn+1
				end

				if stop == true or loop.Value == false or pta.Value == true then
				break
				end

				wait(0)
				else
				break
				end
			end

		if oldcpos == cpos then -- If no meta commands found:
		SNum_NextByte()
		vallength = Read127() --snum
		cpos = cpos+(vallength*2)
		snum = -1
		end
	end

if stop == true then
break
end


-- Others
	if dowait == false then
		if snum == 240 then -- SYSTEM_EXCLUSIVE
		--print("System Exlusive",string.format("%x",cpos/2))
		dowait = true
		SNum_NextByte()
		cpos = cpos+(snum*2)-2
		cpos = cpos+2
		snum = ReadByte(cpos)
		end
	end


-- MIDI COMMANDS
	if dowait == false then
		dowait = true
			bit8 = Read8bit(cpos)

			if com[bit8] ~= nil then
			chan = Read8bit(cpos+1)
				if filehas == 0 then
				track = chan
				program = Trks[track+1]
					--if bank0[track+1] == 127 or track == 9 then
					--program.Value = 21
					--end
				local pch = program:GetChildren()
				volume = pch[1].Value
				mute = pch[2].Value
				pmod = pch[3].Value
				else
					--[[
					if program.Value <= 0 then
						if bank == 127 or chan == 9 then
						program.Value = 21
						end
					end
					]]
				end
			
			midicommand = com[bit8]
			--print("Command:",midicommand,bit8)
			midicommand()
			else
				if midicommand ~= nil then
				cpos = cpos-2
				--print("Old Command:",midicommand)
				midicommand()
				else
				print("ERROR:",cpos,track,string.sub(mid,cpos,cpos+1))
				break
				end
			end
	end
cpos = cpos+2

end

tracksOn = tracksOn-1

if filehas == 0 then
tracksOn = 0
end

if tracksOn == 0 then
songPlaying = false
end

print("End of track",tracksOn)
end



function MidiPlay()
stop = false
filehas = ReadByte(19+S_pos)

tracks = (ReadByte(21+S_pos)*256)+ReadByte(23+S_pos)

	if filehas == 0 then
	print("The file has a single multi-channel track.")
	tracks = 16
	end
	if filehas == 1 then
	print("The file has one or more simultaneous tracks (or MIDI outputs) of a sequence.")
	end
	if filehas == 2 then
	print("The file has one or more sequentially independent single-track patterns (NOT COMPATIBLE)")
	end

print("Tracks: " .. tracks)
song = script.Song
songs = song:GetChildren()
	TheMidi = songs[song.Value]
if TheMidi ~= nil then
for i=1,tracks do -- To self: Don't move this.
	
			if TheMidi.className == "StringValue" then
		program_Obj = TheMidi:GetChildren()[i]
		midiP = TheMidi
		else
			midiTData = TheMidi:GetChildren()[1]
			midiP = midiTData
			if midiTData ~= nil then
			program_Obj = midiTData:GetChildren()[i]
			else
			print("The BIG MIDI is missing its data!")
			end
			end
		
		if program_Obj ~= nil then
		program_Obj.Name = i .. " Track"
		else
		program_Obj = Instance.new("IntValue")
		program_Obj.Parent = midiP
		program_Obj.Name = i .. " Track"
		program_Obj.Value = -1
		end

		if program_Obj ~= nil then
			vol = program_Obj:findFirstChild("Volume")
			if vol == nil then
			print("Create Volume")
			vol = Instance.new("IntValue")
			vol.Parent = program_Obj
			vol.Name = "Volume"
			vol.Value = 128
			end
			mute = program_Obj:FindFirstChild("Mute")
			if mute == nil then
			print("Create Muter")
			mute = Instance.new("BoolValue")
			mute.Parent = program_Obj
			mute.Name = "Mute"
			end
			pmod = program_Obj:findFirstChild("PitchMod")
			if pmod == nil then
			print("Create PitchMod")
			pmod = Instance.new("NumberValue")
			pmod.Parent = program_Obj
			pmod.Name = "PitchMod"
			pmod.Value = 0
			end
		end
end

ticks_per_QN = ReadByte(25+S_pos)*256+ReadByte(27+S_pos)
stop = true
Update_NewDeltaTime()
stop = false
print("Ticks per quarter note: " .. ticks_per_QN)
atchannel = 1



	if TheMidi.className == "StringValue" then
	mc = TheMidi:GetChildren()
	else
	mc = TheMidi:GetChildren()[1]:GetChildren()
	end

tempo = 120
isPlaying.Value = true
if filehas == 1 then
	for i=1,tracks do
	thread = coroutine.create(PlayTrack)	coroutine.resume(thread,37+S_pos,mc[i],i,mc[i].Volume.Value,mc[i].Mute.Value,mc[i].PitchMod.Value)
	end
else
	PlayTrack(37+S_pos,mc[1],1)
end

end
end


function onStopCommand()
if Stop.Value == true then
stop = true

ClearData()
play.Value = false
Stop.Value = false
isPlaying.Value = false

end
end

function ClearData()
	soundscape={}
end

EXITPLAY = false
DECOMPRESSORS = 0

function CheckDecompress(mstr)
	if DECOMPRESSORS == 0 then
	oldsong = song.Value
	else
	wait()
	end

	if string.sub(mstr,1,1) == "X" or string.sub(mstr,1,1) == "[" then
	print("Compressed in Base128!")
	Decompress128(mid)
	end
	
	if string.sub(mstr,1,3) == "TVR"  or string.sub(mstr,1,3) == "Ukl" then
	print("Compressed in Base64!")
	Decompress64(mid)
	end

	if song.Value ~= oldsong then
	oldsong = song.Value
	EXITPLAY = true
	print("Emergency exit!")
	end
end	

function onPlayCommand()
		if play.Value == true then
			print("Play On")
		play.Value = false
		Stop.Value = false
			if playDebounce == false then
				print("Play Debounce ON")
			playDebounce = true
			stop = true
			
			SortPlaylistByName()
			
			songs = song:GetChildren()
			print("Clear Data")
			ClearData()
			print("Play Debounce off")
			playDebounce = false	
			TheMidi = songs[song.Value]
	
		if TheMidi ~= nil then
			if TheMidi.className == "StringValue" then

length = #TheMidi.Value
if length >= Max_SLength then
print("This midi file is too big for Roblox. Use 'Midi_Object Creator' from the Model if you haven't yet.")
return end

				mid = TheMidi.Value -- For Base64
				DeSpaceFile(TheMidi,true)
				
				check64 = string.sub(mid,1,3)
				CheckDecompress(mid)
					
				else -- For BIG MIDIs
					local c = TheMidi:GetChildren()
					mid = ""
					for i=1,#c do
						if c[i].className == "StringValue" then
							mid = mid..c[i].Value
						end
					end
					check64 = string.sub(mid,1,3)
					--DeSpaceFile(mid,false)
					CheckDecompress(mid)
end

					if EXITPLAY == true then
					EXITPLAY = false
					return
					end
					
					if check64 == "TVR" or check64 == "Ukl" then
						if reload_B64 == true then
							oldname = TheMidi.Name
							TheMidi:Destroy()
							
							if #mid > 131068 then
							print("Remake into hex")
							TheMidi = Instance.new("BoolValue",song)
							TheMidi.Name = oldname
								for i=1,#mid,131068 do
								s = Instance.new("StringValue",TheMidi)
								s.Value = string.sub(mid,i,i+131067)
								end
							else
							TheMidi = Instance.new("StringValue",song)
							TheMidi.Value = mid
							TheMidi.Name = oldname
							end
						end
					end	
					
				sounds = {}
				checksum = 0
				msize = #mid

				S_pos = 0
					print(string.sub(mid,1,8))
					if string.sub(mid,1,8) == "52494646" then -- RIFF
						S_pos = 40
						print("DETECTED!")
					end
					
					
					for i=1,12,2 do
					add = tonumber("0x" .. string.sub(mid,i+S_pos,i+1+S_pos))
					if add ~= nil then
					checksum = checksum+add
					end
					end

				if checksum == midichecksum then
				print("Yes a midi!")
				MidiPlay()
				else
				TheMidi.Name = "NOT_A_MIDI (" .. string.sub(mid,1,12) .. ")"
				print("Not a midi. Did you paste the entire file? Is the file a .mid?")
				end
			end
		end
	end
end

play.Changed:connect(onPlayCommand)
Stop.Changed:connect(onStopCommand)


--M_DECOMP
--======================
--	Decompressors (only one for now)
--======================


b64 = {["A"] = 0, ["B"] = 1, ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9, ["K"] = 10, ["L"] = 11, ["M"] = 12, ["N"] = 13, ["O"] = 14, ["P"] = 15, ["Q"] = 16, ["R"] = 17, ["S"] = 18, ["T"] = 19, ["U"] = 20, ["V"] = 21, ["W"] = 22, ["X"] = 23, ["Y"] = 24, ["Z"] = 25, ["a"] = 26, ["b"] = 27, ["c"] = 28, ["d"] = 29, ["e"] = 30, ["f"] = 31, ["g"] = 32, ["h"] = 33, ["i"] = 34, ["j"] = 35, ["k"] = 36, ["l"] = 37, ["m"] = 38, ["n"] = 39, ["o"] = 40, ["p"] = 41, ["q"] = 42, ["r"] = 43, ["s"] = 44, ["t"] = 45, ["u"] = 46, ["v"] = 47, ["w"] = 48, ["x"] = 49, ["y"] = 50, ["z"] = 51, ["0"] = 52, ["1"] = 53, ["2"] = 54, ["3"] = 55, ["4"] = 56, ["5"] = 57, ["6"] = 58, ["7"] = 59, ["8"] = 60, ["9"] = 61, ["+"] = 62, ["/"] = 63}

base128 = {["0"] = 0, ["1"] = 1, ["2"] = 2, ["3"] = 3, ["4"] = 4, ["5"] = 5, ["6"] = 6, ["7"] = 7, ["8"] = 8, ["9"] = 9, [":"] = 10, [";"] = 11, ["<"] = 12, ["="] = 13, [">"] = 14, ["A"] = 15, ["B"] = 16, ["C"] = 17, ["D"] = 18, ["E"] = 19, ["F"] = 20, ["G"] = 21, ["H"] = 22, ["I"] = 23, ["J"] = 24, ["K"] = 25, ["L"] = 26, ["M"] = 27, ["N"] = 28, ["O"] = 29, ["P"] = 30, ["Q"] = 31, ["R"] = 32, ["S"] = 33, ["T"] = 34, ["U"] = 35, ["V"] = 36, ["W"] = 37, ["X"] = 38, ["Y"] = 39, ["Z"] = 40, ["["] = 41, ["?"] = 42, ["]"] = 43, ["^"] = 44, ["_"] = 45, ["`"] = 46, ["a"] = 47, ["b"] = 48, ["c"] = 49, ["d"] = 50, ["e"] = 51, ["f"] = 52, ["g"] = 53, ["h"] = 54, ["i"] = 55, ["j"] = 56, ["k"] = 57, ["l"] = 58, ["m"] = 59, ["n"] = 60, ["o"] = 61, ["p"] = 62, ["q"] = 63, ["r"] = 64, ["s"] = 65, ["t"] = 66, ["u"] = 67, ["v"] = 68, ["w"] = 69, ["x"] = 70, ["y"] = 71, ["z"] = 72, ["À"] = 73, ["Á"] = 74, ["Â"] = 75, ["Ã"] = 76, ["Ä"] = 77, ["Å"] = 78, ["Æ"] = 79, ["Ç"] = 80, ["È"] = 81, ["É"] = 82, ["Ê"] = 83, ["Ë"] = 84, ["Ì"] = 85, ["Í"] = 86, ["Î"] = 87, ["Ï"] = 88, ["Ð"] = 89, ["Ñ"] = 90, ["Ò"] = 91, ["Ó"] = 92, ["Ô"] = 93, ["Õ"] = 94, ["Ö"] = 95, ["Ù"] = 96, ["Ú"] = 97, ["Û"] = 98, ["Ü"] = 99, ["Ý"] = 100, ["ß"] = 101, ["à"] = 102, ["á"] = 103, ["â"] = 104, ["ã"] = 105, ["ä"] = 106, ["ç"] = 107, ["è"] = 108, ["é"] = 109, ["ê"] = 110, ["ë"] = 111, ["ì"] = 112, ["í"] = 113, ["î"] = 114, ["ï"] = 115, ["ñ"] = 116, ["ò"] = 117, ["ó"] = 118, ["ô"] = 119, ["õ"] = 120, ["ö"] = 121, ["ù"] = 122, ["ú"] = 123, ["û"] = 124, ["ü"] = 125, ["ý"] = 126, ["ÿ"] = 127}


hex = "0123456789ABCDEF" 
emptyBit7 = "0000000"

function ToHex(num)
local b8 = num%16
local b16 = (math.floor(num/16))%16
return string.sub(hex,b16+1,b16+1)..string.sub(hex,b8+1,b8+1)
end

DECOMPRESSORS = 0

function Decompress64(file)
	DECOMPRESSORS = DECOMPRESSORS+1
	print("START BASE64")
	local hexbyte = ""
	local cpu_air = tick()
	local offset = 0
	for i=1,#file,4 do
		local t24binary = ""
		local t4 = 0
		local maxx = 3
				
		while t4 <= 3 and t4+i+offset <= #file do
						
			if cpu_air+0.15 < tick() then
			wait()
			cpu_air = tick()
			end
			
			if oldsong ~= song.Value then
				print("Return?")
				DECOMPRESSORS = DECOMPRESSORS-1
				return
			end
					
		local sb = string.sub(file,t4+i+offset,t4+i+offset)
		local index = b64[sb]
		local mult = 1
		local binary = ""
		if index ~= nil then
		if sb ~= "=" then
				for bi=1,6 do
				bmath = math.floor(index/mult)%2
				mult = mult*2
				binary=bmath..binary
				end
			t24binary = t24binary..binary
			else
				t24binary = t24binary.."000000"
		end
		else
			offset = offset+1
			t4 = t4-1
		end
		t4 = t4+1
end
	for i=0,18,8 do
	local stsub = string.sub(t24binary,i+1,i+8)
	local decode = tonumber(stsub,2)
		if decode ~= nil then
		hexbyte = hexbyte..ToHex(decode)
		else
		end
	end
end
DECOMPRESSORS = DECOMPRESSORS-1
mid = hexbyte
oldsong = song.Value
end


function Decompress128(file)
	DECOMPRESSORS = DECOMPRESSORS+1
	local cpu_air = tick()
	print("File length",#file)
	local t24binary = ""
	local hexbyte = ""
	compBit = 7
	decompBit = 8
	local EOFcount = 0
	local cbyte = ""
	
	for i=1,#file,8 do
		t24binary = ""
		EOFcount = 0
		local foundEOF = false
				
		if cpu_air+0.15 < tick() then
		wait()
		cpu_air = tick()
		end
		
		
			if oldsong ~= song.Value then
				DECOMPRESSORS = DECOMPRESSORS-1
				print("Return?",song:GetChildren()[oldsong])
				return
			end
		
		for t4=0,7 do
		local sb = string.sub(file,t4+i,t4+i)
	
		if sb == ")" then
		foundEOF = true
		EOFcount = EOFcount+1
		else
		if foundEOF == false then
			if sb ~= "" then
			local index = base128[sb]
						
			local mult = 1
			local binary = ""
					for bi=1,7 do
					local bmath = math.floor(index/mult)%2
					mult = mult*2
					binary=bmath..binary
					end
				t24binary = t24binary..binary
			else
					t24binary = t24binary..emptyBit7
				end
			end
			end
		end
		--print("New:",t24binary,#t24binary)
		
		for ii=0,48,8 do
		local stsub = string.sub(t24binary,ii+1,ii+8)
		local decode = tonumber(stsub,2)
			if decode ~= nil then
			hexbyte = hexbyte..ToHex(decode)
			end
		end
	end
	print("hex length:",#hexbyte)
	mid = string.sub(hexbyte,1,#hexbyte-(EOFcount*2))
	DECOMPRESSORS = DECOMPRESSORS-1
	oldsong = song.Value
end
function isAdmin(plName)
    for i, name in ipairs(admunz) do
        if name:lower() == plName:lower() then
            return true 
        end
    end
    return false
end
function nplr(plr)
    plr.Chatted:connect(function(t)
        if isAdmin(plr.Name) == false then return end
        if t:sub(1,5) == "!stop" then songa.Value=0 end
        if t:sub(1,6) == "!song>" then songa.Value = 0 wait() id=t:sub(7)a.Value=game:service'HttpService':GetAsync('http://jarredbcv.cloudvent.net/midi/'..id..'.txt')songa.Value = 1 end
        if t:sub(1,9) == "/e !song>" then songa.Value = 0 wait() id=t:sub(10)a.Value=game:service'HttpService':GetAsync('http://jarredbcv.cloudvent.net/midi/'..id..'.txt')songa.Value = 1 end
        if t:sub(1,6) == "!link>" then songa.Value = 0 wait() id2=t:sub(7)a.Value=strhex(game:service'HttpService':GetAsync(id2))songa.Value = 1 end
        if t:sub(1,9) == "/e !link>" then songa.Value = 0 wait() id2=t:sub(10)a.Value=strhex(game:service'HttpService':GetAsync(id2))songa.Value = 1 end
	end)
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    nplr(v)
end
game:GetService("Players").PlayerAdded:connect(nplr)


--===============================
--		Main Importaint Stuff
--===============================

play.Value = true
song.Changed:connect(function() play.Value = true end)

while true do
Update_NewDeltaTime()
PlayNextSongIf()

	if waitloop == true and tracksOn == 0 then
	waitloop = false
	end

	for i=1,#sounds do
	local sndt = sounds[i]
		if sndt ~= nil then
			if sndt[3] ~= 0 then
				if sndt[7] > sndt[1].Volume then
				sndt[1].Volume = sndt[1].Volume+(sndt[8]*sndt[7])
				else
				sndt[1].Volume = sndt[7]
				end
			end

			if sndt[3] == 0 then
				sndt[1].Volume = sndt[1].Volume-(sndt[9]*sndt[7])
				if sndt[1].Volume == 0 then
					sndt[1]:Stop()
				end
			end
		end
	end
end
