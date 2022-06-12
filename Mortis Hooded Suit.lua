--[[
	@Name: 		Mortis
	@Author: 	iKrypto
	@Date: 		2/23/17
	@Engine: 	Lua 5.1
	
	@Notes:
			- Finished on 2/23/17
			- Get whitelisted to run this by Darkus_Theory or it will just crash you lol (Antileak!)
			- Or just be in https://www.roblox.com/My/Groups.aspx?gid=971711 this will also allow you to run it
	@Movelist:
		~E: Apply DOT
		~R: Teleport
		~Q: Increase DOT damage
		~F: AoE ULT (Applies DOT to everyone in zone)
		~X: SurrenderToMadness > Increases Damage Output but also damages you overtime for increasing percents (Not finished)
		~C: Haunt > Increases Damage for 8 seconds on your target
		~T: Target MousePlayer
		~Y: Target Self
		
		[Targetting anyone will make these abilities go right to them, therefore, target = easy button]
				
]]

wait(0.003)
--print'starting script...'

local startLoad = tick()
script.Name = " Mortis"

local Player = game:service("Players").LocalPlayer
repeat wait() until Player.Character ~= nil

-- todo:

local plrs = game:GetService('Players')
local plr = plrs.LocalPlayer
local char = plr.Character
local bp = plr.Backpack
local hum = char.Humanoid
local T = char.Torso
local Character = char
local Humanoid = hum
local torso = char.Torso
local kick = false
local Char = Player.Character
local char = Char
local mouse = Player:GetMouse()
local Effects = {}
local Backpack = Player.Backpack
local PlayerGui = Player.PlayerGui
local Camera = workspace.CurrentCamera
local damageAmp = 1
local Humanoid = Char:WaitForChild("Humanoid")
local Torso = Char:WaitForChild("Torso")
local Head = Char:WaitForChild("Head")
local ra = Char:WaitForChild("Right Arm")
local la = Char:WaitForChild("Left Arm")
local rl = Char:WaitForChild("Right Leg")
local ll = Char:WaitForChild("Left Leg")
local rs = Torso:WaitForChild("Right Shoulder")
local ls = Torso:WaitForChild("Left Shoulder")
local rh = Torso:WaitForChild("Right Hip")
local lh = Torso:WaitForChild("Left Hip")
local neck = Torso:WaitForChild("Neck")
local rootpart = Char:WaitForChild("HumanoidRootPart")
local rj = rootpart:WaitForChild("RootJoint")
local anim = Char:WaitForChild("Animate")
local RunService = game:GetService("RunService")
local UIA = game:GetService("UserInputService")
local CF = CFrame.new
local CA = CFrame.Angles
local FEA = CFrame.fromEulerAnglesXYZ
local Create = LoadLibrary("RbxUtility").Create
local FAA = CFrame.fromAxisAngle
local V3 = Vector3.new
local CN = Color3.new
local Ice = Instance.new
local BC = BrickColor.new
local UD2 = UDim2.new
local C3 = Color3.new 
local MR = math.rad 
local MP = math.pi 
local MD = math.deg 
local MH = math.huge 
local MS = math.sin 
local MC = math.cos 
local MT = math.tan 
local MAS = math.asin 
local MAC = math.acos 
local MAT = math.atan 
local Keys = {}
local sine = 0
local change = 1.1
local components = CF().components
local State = "Calm"
local Slash = false
local Sheathed = false
local H=true
local it = Instance.new
local vt = Vector3.new
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local angles = CFrame.Angles
local combocounter = 0
local Stealthed = false
local tMesh,asset = "rbxasset://fonts/torso.mesh","rbxassetid://"
local meshes,sounds = {blast = 20329976,ring = 3270017,spike = 1033714,cone = 1082802,crown = 20329976,cloud = 1095708,diamond = 9756362},{laser = 166196553;gun = 131070686;falling = 138206037;hit = 146163493;twirl = 46299547;explosion = 142070127}
local Intellect,Haste,damage = 2,.2,0
local stats,Parts,Cooldowns,Damage,recountData,parts,Damaged,Ally,Buffs,canBeKillt,hold = {},{},{},{},{},{},{},{},{},{},{}
local Ctrl,Cam,lastclick,btimer = false,game.Workspace:FindFirstChild('currentCamera'),tick(),0
game:service'Lighting'.Outlines = false
Cha = char
it=Instance.new
vt=Vector3.new
cn=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
-- if leaked, don't edit this value
-- it lets other scripts know this is
-- a linked script so that you can do
-- extra features such as slowing, stunning
-- buffing, healing etc. Thanks.
local iAmDarkusScript = Instance.new('Model')
iAmDarkusScript.Parent = hum
iAmDarkusScript.Name = 'Property of Darkus_Theory'
Runes = {"rbxassetid://200326272", "rbxassetid://200326330", "rbxassetid://200326394", "rbxassetid://200326465", "rbxassetid://200326593", "rbxassetid://200326667", "rbxassetid://200326796", "rbxassetid://200326880", "rbxassetid://200327025", "rbxassetid://200327088", "rbxassetid://200327279", "rbxassetid://200327394", "rbxassetid://200327439", "rbxassetid://200327517", "rbxassetid://200327625", "rbxassetid://200327725", "rbxassetid://200327804", "rbxassetid://200327922", "rbxassetid://200327991", "rbxassetid://200328063", "rbxassetid://200328131", "rbxassetid://200328211", "rbxassetid://200328319", "rbxassetid://200328365", "rbxassetid://200328401", "rbxassetid://200328461", "rbxassetid://200328530", "rbxassetid://200328645", "rbxassetid://200328713"}
ContentProvider = game:GetService("ContentProvider")
for _,v in pairs(Runes) do
  ContentProvider:Preload(v)
end
humanoid = char:findFirstChild("Humanoid")
hum = humanoid
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
ra.CanCollide = true
la = char:findFirstChild("Left Arm")
la.CanCollide = true
rl = char:findFirstChild("Right Leg")
rl.CanCollide = true
ll = char:findFirstChild("Left Leg")
ll.CanCollide = true
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
camera = workspace.CurrentCamera
plr.CameraMaxZoomDistance = math.huge
for _,x in pairs(char:children()) do
if x:IsA('Shirt') then x:remove() end
if x:IsA('Pants') then x:remove() end
if x:IsA('Accessory') then x:remove() end
end
pcall(function()anim:Destroy()end)
pcall(function()char["Health"]:Destroy() end)
pcall(function()humanoid.Animator:Destroy()end)
pcall(function()head.face:Destroy()end)
local rjo = rootpart.RootJoint:Clone()
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
return wld
end

local theme_songs = {{300612771,1}}
print('Theme songs: '..#theme_songs)
local sund = Instance.new('Sound', head)
sund.SoundId = ''--601852677 (Pumped up kicks) --196838861(libera me from hell) --144390446 (mememe) --276298931 (ending theme gurren lagann) -- 274555117 (gurren lagann midway music) -- 335167645 (one punch man theme saitama) -- 337732102 (Another one punch man song) -- 441375145 ( gurren lagann pretty sad song)
local ggg = theme_songs[math.random(1,#theme_songs)]
sund.SoundId = 'rbxassetid://'..ggg[1]
sund.Pitch = ggg[2]
sund.Volume = .35
sund.MaxDistance = 100
sund.Name = 'Mesh'
sund.Changed:connect(function(a)
	sund.Name = tick()
	if a == 'Volume' then
	sund.Volume = 1
	elseif a=='MaxDistance' then
	sund.MaxDistance = 200
	end
end)


local berserk = false
local keepPlaying = true

coroutine.wrap(function()
wait(5)
	while not berserk do
		if not sund.Playing and keepPlaying then
			local selected = theme_songs[math.random(1,#theme_songs)]
			sund:Stop()
			sund.SoundId = 'rbxassetid://'..selected[1]
			sund.Pitch = selected[2]
			wait()
			sund:Play()
		end
		wait()
	end
end)()

Ally[hum] = true

local mult = 1

la.Size = la.Size * mult
ra.Size = ra.Size * mult
ll.Size = ll.Size * mult
rl.Size = rl.Size * mult
torso.Size = torso.Size * mult
head.Size = head.Size * mult
rootpart.Size = rootpart.Size * mult

local lm = newWeld(torso, la, -1.5*mult, 0.5*mult, 0)
lm.C1 = CFrame.new(0, 0.5*mult, 0)
local rm = newWeld(torso, ra, 1.5*mult, 0.5*mult, 0)
rm.C1 = CFrame.new(0, 0.5*mult, 0)
local neck = newWeld(torso, head, 0, mult, 0)
local llegm = newWeld(torso, ll, -0.5*mult, -1*mult, 0)
llegm.C1 = CFrame.new(0, mult, 0)
local rlegm = newWeld(torso, rl, 0.5*mult, -1*mult, 0)
rlegm.C1 = CFrame.new(0, mult, 0)
local rj = rjo:Clone()
rj.Part0 = rootpart
rj.Part1 = torso
rj.Parent = rootpart
neck.C1 = CFrame.new(0, -(mult/2), 0)
neckc0 = neck.C0
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
rootc1 = rj.C1
wait()

local shirt = Instance.new('Shirt', char)
shirt.Name = 'Wild Gladiator\'s Felweave Raiment'
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=166273878'
local pants = Instance.new('Pants', char)
pants.Name = 'Wild Gladiator\'s Felweave Trousers'
pants.PantsTemplate = 'http://www.roblox.com/asset/?id=166273938'
local h = Instance.new('Part',  char)
h.Name = 'DK Hood'
h.TopSurface,h.BottomSurface = 0,0
h.Size = Vector3.new(2.3*mult, 2.3*mult, 2.3*mult)
h.CFrame = torso.CFrame
h.CanCollide = false
h.BrickColor = BrickColor.new('Really black')
h:BreakJoints()
local m = Instance.new('SpecialMesh', h)
m.Name = "Wild Gladiator's Felweave Cowl"
m.MeshType = 'FileMesh'
m.Scale = Vector3.new(mult, mult, mult)
m.MeshId = 'http://www.roblox.com/asset/?id=16952952'
m.VertexColor = Vector3.new(1,1,1)
local Weld = Instance.new("Weld")
Weld.Part0 = char.Head
Weld.Part1 = h
Weld.Parent = char.Head
Weld.C0 = CFrame.new(0, .3*mult, 0)

local holdah = char
local Aur = Instance.new('Part')
Aur.Transparency = .55
Aur.BrickColor = BrickColor.new'Royal purple'
Aur.Name = 'Aura'
Aur.Locked = true
Aur.Size = Vector3.new(1.05*mult,2.05*mult,1.05*mult)
Aur.Material = 'Neon'

local asdddd = {ra,la,rl,ll}

for q,e in next, asdddd do
	local asdfert = Aur:Clone()
	asdfert.Parent = holdah
	local wlder = Instance.new('Weld')
	wlder.Parent = holdah
	wlder.Part0 = asdfert
	wlder.Part1 = e
end

Aur.Parent = holdah
Aur.Size = Vector3.new(2.05*mult, 2.05*mult, 1.05*mult)
local w = Instance.new('Weld')
w.Parent = holdah
w.Part0 = torso
w.Part1 = Aur

local fakehead = head:Clone()
fakehead.Parent = holdah
fakehead.Transparency = .55
fakehead.BrickColor = BrickColor.new'Royal purple'
fakehead.Name = 'Aura'
fakehead.Size = Vector3.new(1.05*mult,1.05*mult,1.05*mult)
fakehead.Material = 'Neon'
local w = Instance.new('Weld')
w.Parent = holdah
w.Part0 = head
w.Part1 = fakehead

local h = Instance.new('Part',  char)
h.Name = 'DK HoodM'
h.TopSurface,h.BottomSurface = 0,0
h.Size = Vector3.new(2.3*mult, 2.3*mult, 2.3*mult)
h.CFrame = torso.CFrame
h.CanCollide = false
h.Parent = holdah
h.Transparency = .55
h.BrickColor = BrickColor.new'Royal purple'
h.Name = 'Aura'
h.Material = 'Neon'
h:BreakJoints()
local m = Instance.new('SpecialMesh', h)
m.Name = "Wild Gladiator's Felweave CowlM"
m.MeshType = 'FileMesh'
m.Scale = Vector3.new(mult+.06, mult+.06, mult+.06)
m.MeshId = 'http://www.roblox.com/asset/?id=16952952'
m.VertexColor = Vector3.new(1,1,1)
local Weld = Instance.new("Weld")
Weld.Part0 = char.Head
Weld.Part1 = h
Weld.Parent = char.Head
Weld.C0 = CFrame.new(0, .3*mult, 0)

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = true
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end


function Creat(Instanc,prop)
local p=Instance.new(Instanc)
for i,v in pairs(prop) do
p[i]=v
end
return p
end

function weldya(thing1,thing2)
local a = Instance.new('Weld');
pcall(function()
--a.Parent = thing1;
a.Part0 = thing1;
a.Part1 = thing2;
end)
return a
end

function Dmg()
local partofdeath = Instance.new'Part'
local function CreateRegion3FromLocAndSize(Position, Size)
	local SizeOffset = Size/2
	local Point1 = Position - SizeOffset
	local Point2 = Position + SizeOffset
	return Region3.new(Point1, Point2)
end
local reg = CreateRegion3FromLocAndSize(partofdeath.Position, partofdeath.Size)
for i, v in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do
	spawn(function()
	end)
end
end

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or char)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

local pony = Instance.new('PointLight', Torso)
pony.Name = 'LePontyPontz'
pony.Brightness = 1
pony.Color = Color3.new(0, 0, 0)

coroutine.wrap(function()
	game:service'RunService'.Stepped:connect(function()
		pony.Range = 8+math.abs(math.sin(tick()/2))*4
	end)
end)()

local function setupPart(part)
    part.Anchored = true
    part.FormFactor = 'Custom'
    part.CanCollide = false
    part.BrickColor = BrickColor.new("Sea green")
    part.Material = "Neon"
    part.TopSurface = 'SmoothNoOutlines'
    part.BottomSurface = 'SmoothNoOutlines'
    part.FrontSurface = 'SmoothNoOutlines'
    part.BackSurface = 'SmoothNoOutlines'
    part.LeftSurface = 'SmoothNoOutlines'
    part.RightSurface = 'SmoothNoOutlines'
end


function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(char, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1b",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2b",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end


function getDPS(override)
        local crit = math.random(1,15)
        local DPS = ((stats.Intellect) * (crit > 11 and stats.CriticalStrikeBonus or 1.2))
        DPS = math.ceil(DPS)
        lastdps = tick()
        if berserk then DPS = DPS * 2 end
        if cheating then DPS = DPS * 1.5 end
        if damageAmp>0 then DPS=DPS*damageAmp end
        return DPS,((crit > 13) and true or false)
end

function newStat(stat, typeof, value)
        if stats[stat] then return end
        stats[stat] = value
    return stats[stat]
end

local function Implode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(1,1,1)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.Transparency = 1
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(30,30,30)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency -0.1
sm.Scale = sm.Scale - Vector3.new(3,3,3)
swait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(30,30,30)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
ax.Transparency = 1
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size - Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency -0.1
ax.CFrame = cf
swait()
end
ax:Destroy()
end)()
end
local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
swait()
end
f:Destroy()
end)()
if BBoom then do
local zs = BBoom
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = zs
ax.Anchored = true
local SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
SMMx.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,20 do
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency +0.05
ax.CFrame = zs
swait()
end
ax:Destroy()
end)()
end 
end
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
local SMMx do if SMM then
SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = SMM
SMMx.Scale = Vector3.new(1,1,1)
end 
end
coroutine.wrap(function()
for i = 1,20 do
if SMM then
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
else
ax.Size = ax.Size + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
end
ax.Transparency = ax.Transparency +0.05
ax.CFrame = cf
swait()
end
ax:Destroy()
end)()
end

function NoOutline(Part)
    Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
    
function nooutline(part)
    part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

function checkload()
end

local gui=it("GuiMain") 
gui.Parent=Player.PlayerGui 
gui.Name="WeaponGUI" 
local frame=it("Frame") 
frame.Parent=gui
frame.BackgroundColor3=Color3.new(255,255,255) 
frame.BackgroundTransparency=1 
frame.BorderColor3=Color3.new(17,17,17) 
frame.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
frame.Position=UDim2.new(0.4,0,0.1,0)
local barmana1=it("TextLabel") 
barmana1.Parent=frame 
barmana1.Text=" " 
barmana1.BackgroundTransparency=0 
barmana1.BackgroundColor3=Color3.new(0,0,0) 
barmana1.SizeConstraint="RelativeXY" 
barmana1.TextXAlignment="Center" 
barmana1.TextYAlignment="Center" 
barmana1.Position=UDim2.new(0,0,0,0)
barmana1.Size=UDim2.new(4,0,0.2,0)
local barmana2=it("TextLabel") 
barmana2.Parent=frame 
barmana2.Text=" " 
barmana2.BackgroundTransparency=0 
barmana2.BackgroundColor3=Torso.Color
barmana2.SizeConstraint="RelativeXY" 
barmana2.TextXAlignment="Center" 
barmana2.TextYAlignment="Center" 
barmana2.Position=UDim2.new(0,0,0,0)
barmana2.Size=UDim2.new(4*100/100,0,0.2,0)
local barmana4=it("TextLabel") 
barmana4.Parent=frame 
barmana4.Text="Energy [100]"
barmana4.BackgroundTransparency=1 
barmana4.BackgroundColor3=Color3.new(0,0,0) 
barmana4.SizeConstraint="RelativeXY" 
barmana4.TextXAlignment="Center" 
barmana4.TextYAlignment="Center" 
barmana4.Position=UDim2.new(0,0,-0.3,0)
barmana4.Size=UDim2.new(4,0,0.2,0)
barmana4.FontSize="Size9"
barmana4.TextStrokeTransparency=0
barmana4.TextColor=BrickColor.new("White")

    local Create = LoadLibrary("RbxUtility").Create
function party(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
    local fp = Create("Part"){
        formFactor = formfactor,
        Parent = parent,
        Reflectance = reflectance,
        Transparency = transparency,
        CanCollide = false,
        Locked = true,
        BrickColor = BrickColor.new(tostring(brickcolor)),
        Name = name,
        Size = size,
        Position = Character.Torso.Position,
        Material = material,
    }
    nooutline(fp)
    return fp
end
    
function mesh(Mesh, part, meshtype, meshid, offset, scale)
    local Msh = Create(Mesh){
        Parent = part,
        Offset = offset,
        Scale = scale,
    }
    if Mesh == "SpecialMesh" then
        Msh.MeshType = meshtype
        Msh.MeshId = meshid
    end
    return Msh
end 

function rayCast(Pos, Dir, Max, Ignore)
    return game:service("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 


function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type, typ)
if Part.Name=='Base' then return end
for _,c in pairs(workspace:children()) do
local hum=searchForHumanoid(c)
if hum~=nil then
local head=c:findFirstChild("HumanoidRootPart")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
local mult = getDPS()+(math.random(mindam,maxdam)/2)
damageHuman(hum, mult, head, typ)--Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,"Hit1",1)
end
end
end
end
end



local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

function useMana(amount)
    local precalc = stats['Mana']-amount
    
    if stats['Mana'] < 0 then return false end
    if precalc < 0 then return false end
    
    stats['Mana'] = precalc
    
    return true
end

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function recount()
    
    local totl = {}

    local function addUp(tbl)
        local total = 0
        for i,v in next,tbl do
            total = total + v
        end
    return total
    end
    
    local function avg(tbl)
    
    local num = #tbl
    local nom = addUp(tbl)
    
    return (nom/num)
    end

    warn('RECOUNT - All Data')
    for i,v in pairs(recountData) do
        local qq = addUp(v)
        print(i..': '..qq..' ('..math.ceil(avg(v))..')')
        table.insert(totl, qq)
    end
    
    warn('TOTAL: '..addUp(totl))

end

function logDamage(skill, damage)

    if not recountData[skill] then recountData[skill] = {} end
    
    local tbl = recountData[skill]
    table.insert(tbl, damage)

end
cn,ca,bc,v3,r = CFrame.new,CFrame.Angles,BrickColor.new,Vector3.new,function(a)return (math.random()-.5)*2*(a or 1) end
deg,nf,c3,ins,ma,pi,mr = math.deg,math.floor,Color3.new,Instance.new,math.abs,math.pi,math.rad
local part = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
        local p = ins(typ or "Part")
        p.FormFactor = "Custom"
        p.Material = mat
        p.Transparency = tra
        p.CanCollide = canc
        p.Anchored = anc
        p.BrickColor = bc(col)
        p.Size = siz
        p.CFrame = cfr
        p.Parent = prnt
        p.Locked = true
        p.TopSurface,p.BottomSurface = 0,0
        p:BreakJoints()
        return p
end
local mesh = function(typ,prnt,scal,mtyp,mid,mtx)
        local m = ins(typ or "SpecialMesh")
        if mtyp then m.MeshType = mtyp end
        if mid then m.MeshId = mid end
        if mtx then m.TextureId = mtx end
        if scal then m.Scale = scal end
        m.Parent = prnt
        return m
end
local weldy = function(prt1,prt2,c0,c1)
        local w = ins("Weld",prt1)
        w.Part0 = prt1
        w.Part1 = prt2
        w.C0,w.C1 = c0 or cn(),c1 or cn()
        return w
end
function explosion(where,heat,size,pres)
        a = Instance.new("Explosion",Workspace)
        a.BlastRadius = size
        a.BlastPressure = pres
        a.Position = where.Position
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
        f:Remove()
end
function flame(cf,heat,size,instant)
    local p = Instance.new("Part")
    p.formFactor = 3
    p.Anchored = true
    p.CanCollide = false
    p.Locked = true
    p.Transparency = 1
    p.Size = Vector3.new()
    p.CFrame = cf
    p.Parent = char
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
    game.Debris:AddItem(p,1.1)
    delay(0.1,function()
        f.Enabled = false
        if instant then
            p:Destroy()
        end
    end)
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,100)
end

function getHumanoid(v)
    if v and v.Parent then
        local h = v.Parent:findFirstChild("Humanoid")
        if not h then
            for _,p in ipairs(v.Parent:GetChildren()) do
                if p:isA("Humanoid") then
                    h = p
                end
            end
            if not h and v.Parent.Parent and v.Parent.Parent ~= game and v.Parent.Parent ~= workspace then
                for _,p in ipairs(v.Parent.Parent:GetChildren()) do
                    if p:isA("Humanoid") then
                        h = p
                    end
                end
            end
        end
        return h
    end
end
function advRay(start,point)
    local dis = (start-(start+point)).magnitude
    local dir = ((start+point)-start).unit
    if dis > 999 then
        dis = 999
    end
    point = dis*dir
    hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character})
    if hit and not hit.CanCollide and not getHumanoid(hit) then
        function persistentRay(list)
            hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character,unpack(list)})
            if hit and not hit.CanCollide and not getHumanoid(hit) then
                hit,pos = persistentRay({hit,unpack(list)})
            end
            return hit,pos
        end
        hit,pos = persistentRay({hit})
    end
    return hit,pos
end

function ParticleEmit(Object,Color,Duration)
local Counter = 0
coroutine.wrap(function()
while Wait(0.3)do
if Counter == Duration then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = Color and(type(Color)== 'userdata' and Color or BrickColor.new(Color))
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
swait()
end
p:Destroy()
end)()
end 
end)()
if Duration == math.huge then return end
coroutine.wrap(function()
while Wait(1)do
Counter = Counter +1
if Counter == Duration then
break
end 
end 
end)()
end

function Burn(v)
    coroutine.wrap(function()
        local Colors = {"Really black", 'Mulberry', 'Royal purple'}
        local calc = getDPS()*.5
        if v:IsA("Model")and v ~= char and not v:findFirstChild("Burnt")then
            local h = v:findFirstChild("Humanoid")
            if h then
                if h.Health > 0 then
                    local t = v:findFirstChild("Torso")
                    if t then
                        if(t.Position -T.Position).magnitude <= 20 then
                            local f = Instance.new("StringValue",v)
                            f.Name = "Burnt"
                            ParticleEmit(v.Torso,BrickColor.new("Royal purple"),10)
                            for m,c in pairs(v:GetChildren())do
                                if c:IsA("BasePart")then
                                    local ss = Instance.new("Fire",c)
                                    ss.Size = c.Size.y +2
                                    ss.Color = BrickColor.new(Colors[math.random(1,#Colors)]).Color
                                    ss.SecondaryColor = Color3.new(0,0,0)
                                    ss.Heat = 100
                                        delay(10,function()
                                        local size = ss.Size
                                            for i = size,0,-1 do
                                                ss.Size = i
                                                swait()
                                            end
                                        ss:Destroy()
                                        end)
                                    end 
                                end
                            h.PlatformStand = true
                                coroutine.wrap(function()
                                    for i = 1,10 do
                                        h:TakeDamage(calc)
                                        logDamage('Fire',calc)
                                        Wait(1)
                                    end 
                                end)()
                            Game:GetService("Debris"):AddItem(f,10)
                        end 
                    end 
                end 
            end 
        end
    end)()
end;
function AoE(point,radius,damage,push,trip)
    --ypcall(function()
        local push = push or Vector3.new()
        local hit = getRegion(point,radius,{char})
        local humanoidList = {}
        for _,v in pairs(hit) do
            local h = getHumanoid(v)
            if not v.Anchored then
                if h then
                    if not humanoidList[h] then
                        if Damaged[h] and tick()-Damaged[h]<.2 then return end
                        humanoidList[h] = true
                        Damaged[h] = tick()
                        damageHuman(h,damage,h.Parent:findFirstChild'Head')
                        Burn(h.Parent)
                        if h.Parent:findFirstChild("Torso") and h.Parent.Torso:isA("BasePart") then
                            if push.magnitude > 0 then
                                local v = Instance.new("BodyVelocity",h.Parent.Torso)
                                v.maxForce = Vector3.new(1,1,1)*10000000000
                                v.velocity = push/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                            if trip then
                                local v = Instance.new("BodyAngularVelocity",h.Parent.Torso)
                                v.maxTorque = Vector3.new(1,1,1)*10000000000
                                v.angularvelocity = Vector3.new(math.pi,0,math.pi)/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                        end
                    end
                else v:BreakJoints()
                    v.Velocity = v.Velocity+push/v:GetMass()
                end
            end
        end
    --end)
end
function crownExplode(cf,col,scl)
        local p = part(char,cf,v3(1,1,1),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("FileMesh",p,nil,nil,asset..meshes.crown)
        Spawn(function()
                for i=.1,1.1,.025 do
                        p.Transparency = i
                        pm.Scale = pm.Scale + v3(scl,scl,scl)
						p.CFrame = cf
                        swait()
                end
                p:Destroy()
        end)
end
function crater(cf,dist,siz,col,mat)
        local num = math.random(13,18)
        for i=1,num do
                game:service("Debris"):AddItem(part(char,cf*ca(0,pi*2/num*i,0)*cn(0,0,dist)*ca(r(2),r(2),r(2)),v3(ma(r(siz)),ma(r(siz)),ma(r(siz))),col,true,true,0,mat),3)
        end
end
function quickSound(id,par,pi)
        local s = Instance.new("Sound")
		local pis = {1.5,1.55,1.6,1.65,1.7,1.75,1.8,1.85,1.9,1.95,2,2.05,2.1,2.15,2.2,2.25,2.3,2.35,2.4,2.45,2.5}
        s.Pitch = pis[math.random(1,#pis)]
        s.SoundId = asset..id
        s.Parent = par
        swait()
        s:Play()
    return s
end
function newSound(id,par,pi)
        local s = Instance.new("Sound",par)
        s.Pitch = pi or 1
        s.Volume = .3
        s.SoundId = asset..id
        s:Play()
        return s
end

local Num = 0
local Anchored = {}

function GetMesh(Obj)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("DataModelMesh") then
			return v
		end
	end
end

function GetCFrame(Obj)
	if Obj == nil then
		return
	end
	if Obj == Workspace then
		return CFrame.new(0,0,0)
	end
	if Obj:IsA("Model") then
		return Obj:GetModelCFrame()
	end
	if Obj:IsA("BasePart") then
		return Obj.CFrame
	end
	return
end

function GetSize(Obj)
	if Obj == nil then
		return
	end
	if Obj == Workspace then
		return Vector3.new(0,0,0)
	end
	if Obj:IsA("Model") then
		return Obj:GetModelSize()
	end
	if Obj:IsA("BasePart") then
		return Obj.Size
	end
	return
end

function SaveWelds(Obj,Welds,Scale)
	if Welds == nil then
		local Welds = {}
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("JointInstance") then
				Welds[#Welds+1] = {v,v.Part0,v.Part1,v.C0,v.C1,v.Parent}
				v.Parent = nil
			end
			SaveWelds(v,Welds,Scale)
		end
		return Welds
	else
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("JointInstance") then
				Welds[#Welds+1] = {v,v.Part0,v.Part1,v.C0,v.C1,v.Parent}
				v.Parent = nil
			end
			SaveWelds(v,Welds,Scale)
		end
	end
end

function GetMass(Obj)
	local Mass = 0
	if Obj:IsA("BasePart") then
		Mass = Mass+Obj:GetMass()
	end
	for i,v in pairs(Obj:GetChildren()) do
		Mass = Mass+GetMass(v)
	end
	return Mass
end

function SaveConnectedParts(Obj,Welds)
	if Welds == nil then
		local Welds = {}
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("BasePart") then
				for i2,v2 in pairs(v:GetConnectedParts()) do
					Welds[#Welds+1] = {Instance.new("Weld"),v,v2,v.CFrame:toObjectSpace(v2.CFrame),CFrame.new(0,0,0),v}
				end
				v:BreakJoints()
			end
			SaveConnectedParts(v,Welds)
		end
		return Welds
	else
		for i,v in pairs(Obj:GetChildren()) do
			if v:IsA("BasePart") then
				for i2,v2 in pairs(v:GetConnectedParts()) do
					Welds[#Welds+1] = {Instance.new("Weld"),v,v2,v.CFrame:toObjectSpace(v2.CFrame),CFrame.new(0,0,0),v}
				end
				v:BreakJoints()
			end
			SaveConnectedParts(v,Welds)
		end
	end
end

function ResizeWelds(Welds,Scale)
	for i,v in pairs(Welds) do
		v[1].Parent = v[6]
		v[1].Part0 = v[2]
		v[1].Part1 = v[3]
		local Vec = v[4].p
		local Vec2 = v[5].p
		v[1].C0 = CFrame.new(Vec*Scale)*(v[4]-Vec)
		v[1].C1 = CFrame.new(Vec2*Scale)*(v[5]-Vec2)
	end
end

function AnchorParts(Obj)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("BasePart") and v.Anchored == false then
			v.Anchored = true
			Anchored[v] = v
		end
		AnchorParts(v)
	end
end

function ResizeFunc(Obj,Scale,Welds,Center)
	Center = Center or CFrame.new(0,0,0)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("BasePart") then
			--[[Num = Num+1
			if Num == 100 then
				wait(0.25)
				Num = 0
			end]]
			local Size = v.Size
			for i2,v2 in pairs(v:GetChildren()) do
				if v2.Name == "ScaleInserted" then
					Size = Size*v2.Scale
					v2:Destroy()
				elseif v2.Name:sub(1,14) == "ScaleInserted:" then
					local X,Y,Z;
					for Match in v2.Name:sub(15):gmatch("[^,%s]+") do
						if Y ~= nil then
							Z = tonumber(Match)
						elseif X ~= nil then
							Y = tonumber(Match)
						else
							X = tonumber(Match)
						end
					end
					Size = Vector3.new(X,Y,Z)
					v2:Destroy()
				end
			end
			pcall(function() v.FormFactor = "Custom" end)
			local CFr = v.CFrame
			local Want = Size*Scale
			v.Size = Want
			if v:IsA("VehicleSeat") then
				Seats[#Seats+1] = v
			end
			if v.Size ~= Want then
				local Name = ""
				for Match in v.Name:gmatch("[^%s]+") do
					Name = Name..Match
				end
				local CharMesh = nil
				for i,v in pairs(Obj:GetChildren()) do
					if v:IsA("CharacterMesh") and tostring(v.BodyPart):sub(15) == Name then
						CharMesh = v
					end
				end
				if CharMesh == nil then
					local Mesh = GetMesh(v)
					if Mesh == nil then
						local Mesh;
						if v:IsA("WedgePart") then
							Mesh = Instance.new("SpecialMesh",v)
							Mesh.MeshType = "Wedge"
						else
							local HasShape = pcall(function() return v.Shape end)
							if HasShape then
								if v.Shape == "Ball" then
									Mesh = Instance.new("SpecialMesh",v)
									Mesh.MeshType = "Sphere"
								elseif v.Shape == "Cylinder" then
									Mesh = Instance.new("SpecialMesh",v)
									Mesh.MeshType = "Cylinder"
								else
									Mesh = Instance.new("BlockMesh",v)
								end
							else
								Mesh = Instance.new("BlockMesh",v)
							end
						end
						Mesh.Scale = Want/v.Size
						Mesh.Name = "ScaleInserted"
					else
						if (Mesh.ClassName == "SpecialMesh" and Mesh.MeshType ~= Enum.MeshType.FileMesh) or Mesh.ClassName ~= "SpecialMesh" then
							Mesh.Scale = Want/v.Size*Mesh.Scale
						end
					end
				else
					local Mesh = Instance.new("SpecialMesh",v)
					Mesh.Name = "ScaleInserted:"..tostring(Want)
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = "rbxassetid://"..CharMesh.MeshId
					--Mesh.TextureId = CharMesh.BaseTextureId
					Mesh.Scale = Vector3.new(1,1,1)*Want.X/Scale
				end
			end
			v:BreakJoints()
			local Rel = Center:toObjectSpace(CFr)
			local New = CFrame.new(Rel.p*Scale)*(Rel-Rel.p)
			v.CFrame = Center*New
			v:BreakJoints()
		elseif v:IsA("DataModelMesh") then
		    if v.ClassName == "SpecialMesh" then
		    	if v.MeshType == Enum.MeshType.FileMesh then
		    		v.Scale = v.Scale*Scale
		    	end
	    	else
		    	--v.Scale = v.Scale*Scale
		    end
		end
		ResizeFunc(v,Scale,Welds,Center)
	end
end

function Resize(Obj,Scale,Break)
	local Welds = SaveWelds(Obj,nil,Scale)
	SaveConnectedParts(Obj,Welds)
	local Mass = GetMass(Obj)
	local Center = GetCFrame(Obj)
	if Center ~= nil and Workspace:FindFirstChild("Base") ~= nil then
		--Center = Center-Vector3.new(0,GetSize(Obj).Y/2,0)
		Center = CFrame.new(Center.X,Workspace.Base.Position.Y+Workspace.Base.Size.Y/2,Center.Z)*(Center-Center.p)
	end
	Seats = {}
	ResizeFunc(Obj,Scale,Welds,Center)
	ResizeWelds(Welds,Scale)
	local Mass2 = GetMass(Obj)
	for i,v in pairs(Seats) do
		v.Torque = Mass2*(v.Torque/Mass)
		v.TurnSpeed = v.TurnSpeed*Scale
		v.MaxSpeed = v.MaxSpeed*Scale
	end
end
        
function cylinderOpen(cf,col,col2)
    local p = part(char,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
    local pm = mesh("CylinderMesh",p)
    local p2 = part(char,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
    local p2m = mesh("CylinderMesh",p2)
    Spawn(function()
            for i=.1,1.1,.0125 do
                    p.Transparency = i
                    p2.Transparency = i
                    pm.Scale = pm.Scale + v3(.8,0,.8)
                    p2m.Scale = p2m.Scale + v3(.5,0,.5)
                    swait()
            end
            p:Destroy()
            p2:Destroy()
    end)
end
function cylinderOpen2(cf,col,col2)
        local p = part(workspace,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("CylinderMesh",p)
        local p2 = part(workspace,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
        local p2m = mesh("CylinderMesh",p2)
        Spawn(function()
                for i=.1,1.1,.025 do
                        p.Transparency = i
                        p2.Transparency = i
                        pm.Scale = pm.Scale + v3(.7,0,.7)
                        p2m.Scale = p2m.Scale + v3(.6,0,.6)
                        swait()
                end
                wait(10)
                p:Destroy()
                p2:Destroy()
        end)
end

function ray(Pos, Dir,xxz) 
	local xxz2=char
	if xxz ~= nil then 
		xxz2=nil 
	end 
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2)
end

function FindGround(pos) 
	local ax,ay,az = pos:toEulerAnglesXYZ()
	local bhit,bpos=ray(pos.p,pos.p - (pos.p + Vector3.new(0,200,0)))
	if bhit and bpos then 
		return CFrame.new(bpos)*CFrame.Angles(ax,ay,az) 
	end 
return nil
end

local lastdps = tick()
local ohp = hum.Health
local berserk = false
hum.Changed:connect(function(val)
if val == 'Health_XML' then
    if hum.Health < ohp then
        lastdps = tick()
    end
    ohp = hum.Health

elseif val =='PlatformStand' then
hum.PlatformStand = false
elseif val == 'MaxHealth' then
hum.MaxHealth = 650
hum.Health = 650
elseif val == "Sit" then
hum.Sit = false
elseif val == "WalkSpeed" then
end
end)

local LastTrail = nil
local Trails = {}

function Disable(Humanoid)

    if Humanoid == hum then return end

    ypcall(function()

        for i = 10,0,-1 do

            if not Humanoid.Parent then break end
            if Humanoid.WalkSpeed > 5 then
            if Humanoid.Health <= 0 then break end

            if Humanoid:findFirstChild'Property of Darkus_Theory' then
                Humanoid.WalkSpeed = 3
                Humanoid.JumpPower = 0
            end
        --Humanoid.JumpMana = 0
        end

        wait(1)

        end

        if Humanoid.WalkSpeed > 5 then
            if Humanoid:findFirstChild'Property of Darkus_Theory' then
            Humanoid.JumpPower = 50
            Humanoid.WalkSpeed = 16
            end
        end

    end)
end



function Ringz(part,col)
	local modle = Instance.new('Model', char)
	for i = 1,6 do
	local p = Instance.new("Part", modle)
	p.Name = "BlastRing"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.Anchored = true
	p.BrickColor = BrickColor.new(col)
	p.Size = Vector3.new(1,1,1)
	p.CFrame = CFrame.new(part.Position - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
	local rm = Instance.new("SpecialMesh",p)
	rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rm.Name = "BlastMesh"
	rm.Scale = Vector3.new(1,1,1)
	coroutine.wrap(function()
		for n = 1,25 do
		rm.Scale = rm.Scale + Vector3.new(1.2 +1 +i/5,1.2 +1 +i/5,0.1)*.8
		if 1 +i/5 == 1.2 then
		rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
		end
		p.Transparency = n/15
		p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/70,0)
		swait()
		end
	p:Destroy()
	end)()
	end
	game:service'Debris':AddItem(modle, 10)
end

local DOTTED = {}
local unique = 'Agony'..Player.Name..tick()
function damageHuman(hum, d, hit, ticklul)
if not hum:IsA('Humanoid') then hum.Parent:breakJoints() return end
pcall(function() hum.Parent.Health.Disabled = true end)
if hum.Health <= 0 then return end
if hum == Humanoid then return end
if hum.MaxHealth > 1000000 then hum.Parent:breakJoints() end
if not hum:findFirstChild(unique) and ticklul=='Apply' then
local Agony = Instance.new('Model', hum)
Agony.Name = unique
DOTTED[hum] = {Dot = Agony, Tix = 15, DPSX = 1, LastT = tick(), Haste = 1}
--print('applying to '..hum.Parent.Name)
elseif ticklul=='Refresh' and hum:findFirstChild(unique) and DOTTED[hum].Tix > 0 then
DOTTED[hum].Tix = 15
--print('refreshing on '..hum.Parent.Name)
elseif ticklul=='Apply' and DOTTED[hum].Tix <= 1 then
DOTTED[hum].Tix = 8
--print('reapplying on '..hum.Parent.Name)
end
if Ally[hum] then return end
local crit = math.random(1,15)
local DPS = ((d) * (crit > 11 and stats.CriticalStrikeBonus or 1))
Title("-"..math.ceil(DPS), ((hit.Parent and hit.Parent~='Workspace') and (hit.Parent:findFirstChild'Head' or Instance.new('Model'))), (crit < 12 and Color3.new(0/255,0/255,200/255) or Color3.new(230/255,0/255,150/255)),true,false)
hum.Health = hum.Health - math.ceil(DPS)
if hum.Health <= 0 then logDamage('Kills', 1) Alert('You killed '..hum.Parent.Name..'!', 'Yellow') spawn(function() damageAmp = damageAmp+.35 wait(10) damageAmp = damageAmp-.35 end) end
end

function healHuman(hum, d, hit)
if not hum:IsA('Humanoid') then hum.Parent:breakJoints() return end
pcall(function() hum.Parent.Health.Disabled = true end)
if hum.Health <= 0 then return end
local crit = math.random(1,15)
local DPS = ((d) * (crit > 11 and stats.CriticalStrikeBonus or 1))
Title("+"..math.ceil(DPS), ((hit.Parent and hit.Parent~='Workspace') and (hit.Parent:findFirstChild'Head' or Instance.new('Model'))), (crit > 11 and Color3.new(200/255,200/255,0/255) or Color3.new(0/255,230/255,0/255)),true,false)
hum.Health = hum.Health + math.ceil(DPS)
end


function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = plr
c.Name = "creator"
end

function CloneCharacter()
Character.Archivable = true
local Clone = Character:Clone()
    for i,v in pairs(Clone:GetChildren())do
        if v:IsA("BasePart") then
        v.Transparency = .1
        v.Reflectance = .1
        end
    end
Character.Archivable = false
Clone.Parent = game:service('Workspace')
Clone.Archivable = false
game:service('Debris'):AddItem(Clone,9)
return Clone
end
function searchForHumanoid(thing)
for _,v in pairs(thing:children()) do
if v:IsA('Humanoid') then
return v
end
end
return false
end


function Title(txt,part,color,rise,spell)
    local col = color
    local Gui = Instance.new("BillboardGui",part)
    Gui.Name = "3DGUI"
    Gui.ExtentsOffset = Vector3.new(math.random(-3,3),math.random(2,3),math.random(-3,3))
    Gui.Size = UDim2.new(8,0,2,0)
    local Tit = Instance.new("TextLabel",Gui)
    Tit.Name = "Gooey"
    Tit.TextColor3 = col
    Tit.TextTransparency = 0.25
    Tit.TextStrokeColor3 = col
    Tit.TextStrokeTransparency = 1
    Tit.Size = UDim2.new(1,0,1,0)
    Tit.BackgroundTransparency = 1
    Tit.Font = "Arial"
    Tit.TextScaled = true
    Tit.Text = txt
    if rise then
    if not tonumber(rise) then rise = 6 end
    coroutine.wrap(function()
    local randvar = (spell and 0 or math.random(-4,4))
    while Tit.Parent and Gui.Parent and wait() do
    Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0.025*randvar,0.025*rise,0.025*randvar)
    end
    end)()
    end
    game:service('Debris'):AddItem(Gui,1.5)
    return Tit
end 

function DamageNear(Pos,Mag,Dmg,x)
local Targets,HitAlready = {},{}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")then
    for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
    if(Pos -x.Position).magnitude <= Mag then
    table.insert(Targets,v)
    end 
end 
    end 
end 
    end
    for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
    ypcall(function()
    end)
HitAlready[v.Name] = true
end 
    end 
end

function weld(thing1,thing2)
local a = Instance.new('Weld');
pcall(function()
a.Parent = thing1;
a.Part0 = thing1;
a.Part1 = thing2;
a.C0 = thing1.CFrame:inverse()*thing2.CFrame 
end)
return a
end

function IsNear(Position,Distance,SinglePlayer,db)
    if SinglePlayer then 
return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance 
    end
local List = {}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")then
    if v:findFirstChild("Torso")then
--if (v ~= char and not db) then
    if(v.Torso.CFrame.p -Position).magnitude < Distance then
    table.insert(List,v)
    end 
--end 
    end 
end 
    end
return List
end

function createOrb()
 
local Orb = Instance.new("Model")
Orb.Name = "OrbModel"
local PurplePart = Instance.new("Part", Orb)
PurplePart.BrickColor = BrickColor.new("Black")
PurplePart.Anchored = true
PurplePart.Locked = true
PurplePart.CanCollide = false
PurplePart.Name = 'PurplePart'
PurplePart.Material = 'Neon'
PurplePart.Size = Vector3.new(1, 1, 1)
PurplePart.BottomSurface = Enum.SurfaceType.Smooth
PurplePart.TopSurface = Enum.SurfaceType.Smooth
PurpleMesh = Instance.new("SpecialMesh", PurplePart)
PurpleMesh.MeshType = Enum.MeshType.FileMesh
PurpleMesh.Name = "Mesh"
PurpleMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
PurpleMesh.VertexColor = Vector3.new(1, 0, 1)
 
local Ring = Instance.new("Part", PurplePart)
Ring.Name = "BlastRing"
Ring.TopSurface = 0
Ring.BottomSurface = 0
Ring.CanCollide = false
Ring.Anchored = true
Ring.Locked = true
Ring.BrickColor = BrickColor.new('Dark indigo')
Ring.Size = Vector3.new(1,1,1)
local RingMesh = Instance.new("SpecialMesh",Ring)
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Name = "BlastMesh"
 
 
Orb.Parent = char
OrbModel = Orb
 
local Light = Instance.new("PointLight", PurplePart)
Light.Name = "HeadLight"
Light.Color = Color3.new(1,0,1)
Light.Range = 6
Light.Brightness = 20
 
local con = game:GetService("RunService").RenderStepped:connect(function()
local Targ
if not currentTarget then Targ = hum else Targ = currentTarget end
 
    if Targ:FindFirstChild('MarkOfDeath') then
        PurplePart.BrickColor = BrickColor.new'Really red'
        Ring.BrickColor = BrickColor.new'White'
    else
        PurplePart.BrickColor = BrickColor.new'Black'
        Ring.BrickColor = BrickColor.new'Dark indigo'
    end
   
    local c = math.abs(math.cos(tick()))
   
    if c <= .5 then c = .5 end
   
    PurpleMesh.Scale = Vector3.new(c*.7, c*1.1, c*.7)
    RingMesh.Scale = Vector3.new(c*.9, c*.9, c*.9)
 
PurplePart.CFrame = PurplePart.CFrame:lerp((Targ.Parent and Targ.Parent or char).Head.CFrame*CFrame.new(0,3,0),.5) 
Ring.CFrame = PurplePart.CFrame* CFrame.fromEulerAnglesXYZ(-math.rad(90+(math.sin(tick())*6)), 0, -math.rad(90+(math.sin(tick())*6)))
end)
 
local chnge = function(a)
    if a=='Name' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    elseif a=='Parent' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    elseif a=='Locked' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    elseif a=='Anchored' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    end
end
 
Orb.Changed:connect(chnge)
Ring.Changed:connect(chnge)
PurplePart.Changed:connect(chnge)
return Orb
end



function isFriendly()

if currentTarget == hum then return end

if Ally[currentTarget] then return true end

return false
end

function toggleFriendly()

--if currentTarget == hum then return end

pcall(function()if Ally[currentTarget] then  Ally[currentTarget] = nil  else Ally[currentTarget] = true end end)

end

--SlashDamage = Damage(TrailPart)

asd = function(parent,string) 
  repeat swait() until parent:FindFirstChild(string)
  swait()
  return parent:FindFirstChild(string)
end

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)

local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)

return wld
end


Search = false

function shadowSight()

if Search == false then
    Search = true
    for i,v in pairs(game.Players:getPlayers()) do
        if v.Name~=char.Name and v.Character then
            for j,k in pairs(v.Character:GetChildren()) do
                if k:IsA("BasePart") and k.Transparency >= 1 then
                    bawx=Instance.new("SelectionBox",camera)
                    bawx.Color = BrickColor.new("Bright red")
                    bawx.Transparency = .5
                    bawx.Adornee = k
                end
            end
        end
    end
    camera.CameraSubject = OrbModel.PurplePart
elseif Search == true then
    Search = false
    for i, v in pairs(camera:GetChildren()) do
        if v:IsA("SelectionBox") then
            v:Destroy()
        end
    end
    camera.CameraSubject = hum
end

end


newStat("Mana", 'NumberValue', 100)
newStat("Intellect", 'NumberValue', Intellect)
newStat("Haste", 'NumberValue', Haste)
newStat("CriticalStrikeBonus", 'NumberValue', 1.25)

hum.JumpPower = 100
hum.WalkSpeed = 22
hum.MaxHealth = 650
hum.Health = 650

Alert = function(txt, color, font, fontsize)
local Colorz = {
        ["Red"]     = Color3.new(255/255,0,0);
        ["Green"]   = Color3.new(0,255/255,0);
        ["Blue"]    = Color3.new(0,0,255/255);
        ["Purple"]  = Color3.new(255/255,255/255,0);
        ["Black"]   = Color3.new(0,0,0);
        ["White"]   = Color3.new(1,1,1);
        ['Orange'] = Color3.new(1,0.5,0);
        ['Yellow'] = Color3.new(1,1,0);
    };

game:GetService('StarterGui'):SetCore('ChatMakeSystemMessage', {
    Text = (txt and txt or 'nil'),
    Color = (color and Colorz[color] or Color3.new(.8,0,0)),
    Font = (font and font or 'SourceSansLight'),
    FontSize = (fontsize and fontsize or 'Size14'),
    })
end

function giveBuff(buffName, stat, duration, addition, targ)

end

hum.ChildAdded:connect(function(obj)

end)

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function lerp(weld,beglerp,endlerp,speed)
		if weld.ClassName =='Weld' or weld.ClassName == 'Motor6D' then
        weld.C0 = clerp(beglerp, endlerp, speed)
		else
		weld.CFrame = clerp(beglerp, endlerp, speed)
		end
        return (weld.ClassName =='Weld' or weld.ClassName == 'Motor6D' and weld.C0 or weld.CFrame)
end

function IsNear(Position,Distance,SinglePlayer,db)
    if SinglePlayer then 
return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance 
    end
local List = {}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")then
    if v:findFirstChild("Torso")then
--if (v ~= char and not db) then
    if(v.Torso.CFrame.p -Position).magnitude < Distance then
    table.insert(List,v)
    end 
--end 
    end 
end 
    end
return List
end

regening = false
lastdps = tick()
function regenHealth()
if regening then return end
if (tick()-lastdps < 15) then return end
    regening = true
    local s = wait(1)
    local health = hum.Health
    if health > 0 and health < hum.MaxHealth then
    local newHealthDelta = hum.MaxHealth * .03
    health = health + newHealthDelta
    hum.Health = math.min(health,hum.MaxHealth)
    end

regening = false
end

function checkCooldown(ability)
if not Cooldowns[ability] then return false end
local trem = (tick()-Cooldowns[ability].startTime)
if (trem <= Cooldowns[ability].timeRequired) then return true end
return false
end

function setCooldown(ability, req)
Cooldowns[ability] = {startTime = tick(), timeRequired = req}
end


applyCameraShake=function(Noob,Intens,Time)
	Intens = Intens / 5.2
	if game.Players:GetPlayerFromCharacter(Noob)~=nil then
		local ss=Nethex.CamShake:clone()
		ss.Disabled=false
		ss.intensity.Value=Intens
		ss.times.Value=Time
		ss.Parent=Noob
	end
end

function getRandomPlayer()
local players = game:service('Players'):GetPlayers()
if #players > 0 then
 local plrz = players[math.random(#players)]
 if plrz.Name == plr.Name then
 repeat swait() plrz = players[math.random(#players)] until plrz.Name ~= plr.Name
 currentTarget = plrz
 Target(plrz)
 end
 return plrz
end
end

partyy = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end
meshy = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  if id == "Whoosh" then
    num = math.random(1, 3)
    if num == 1 then
      id = "200633968"
    else
      if num == 2 then
        id = "200634020"
      else
        if num == 3 then
          id = "200634043"
        end
      end
    end
  end
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end), sou)
  game:GetService("Debris"):AddItem(sou, 6)
end

function getTarget()
    return currentTarget
end

local Blocking = false
local Charging = false
local Burst = true
local lastpress = tick()
local Keys = {}

function createBlast()

local aiming = true
local fxholder = Instance.new('Model' ,char)
local rune = Instance.new('Part')
rune.Size = Vector3.new(13,1,13)
rune.Transparency = 1
rune.CanCollide = false
rune.Anchored = true
local mash=Instance.new("BlockMesh",rune)
mash.Scale=Vector3.new(1,.1,1)
local texturr=Instance.new("Texture",rune)
texturr.Texture = "http://www.roblox.com/asset/?id=139222366"
texturr.Face="Top"  
local texturr=Instance.new("Texture",rune)
texturr.Texture = "http://www.roblox.com/asset/?id=139222366"
texturr.Face="Bottom" 
rune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0))
rune.Parent = fxholder

spawn(function()
	local i = 0
	while aiming do	
		i = i + 15
		otheranims = true
		rootpart.Anchored = true
		rootpart.CFrame = CFrame.new(rootpart.Position, ((currentTarget and currentTarget.Health>0 and currentTarget.Parent:findFirstChild'HumanoidRootPart'.Position) or mouse.Hit.p))
		rune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0)) * CFrame.Angles(math.rad(0), math.rad(i), math.rad(0))
		Mode = 'CastingSingle'
	swait()
	end
end)

wait(.35)


local Blast = Instance.new('Part')
Blast.Name = 'Blasty'
Blast.Size = Vector3.new(1,1,1)
Blast.TopSurface,Blast.BottomSurface = 0,0
Blast.BrickColor = BrickColor.new('Royal purple')
Blast.Anchored = true
local BMesh = Instance.new('SpecialMesh', Blast)
BMesh.MeshType = 'Sphere'
BMesh.Scale = Vector3.new(1, 1, 2)
Blast.CFrame = rune.CFrame
swait()

wait(.2)

local Ring = Instance.new("Part")
Ring.Name = "BlastRing"
Ring.TopSurface = 0
Ring.BottomSurface = 0
Ring.CanCollide = false
Ring.Anchored = true
Ring.Locked = true
Ring.BrickColor = BrickColor.new('Mulberry')
Ring.Size = Vector3.new(1,1,1)
local RingMesh = Instance.new("SpecialMesh",Ring)
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Name = "BlastMesh"

Ring.CFrame = rune.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(90),0,0)
Ring.Parent = fxholder

spawn(function()
	for i = 0,1,.05 do
	RingMesh.Scale = RingMesh.Scale+Vector3.new(1.5,1.5,1)
	Ring.Transparency = Ring.Transparency + .05
	swait()
	end
end)

aiming = false
otheranims = false
rootpart.Anchored = false

swait()
torso.Velocity = -(rune.CFrame*CFrame.Angles(-math.pi/2,0,0)).lookVector*100

local mh = ((currentTarget and currentTarget.Health>0 and currentTarget.Parent:findFirstChild'HumanoidRootPart'.Position) or mouse.Hit.p)
local hit,pos = rayCast(Blast.Position,CFrame.new(Blast.Position,mh).lookVector,999,char:children'')

spawn(function()
	Blast.CFrame = CFrame.new(Blast.Position, pos)
	Blast.Parent = fxholder  
	repeat Blast.CFrame = Blast.CFrame:lerp(CFrame.new(pos, ra.Position), .4) swait() until (Blast.Position-mh).magnitude < 5
	MagniDamage(Blast.Position,Blast,15,14,18,1,'Normal', 'Apply')
	local asd = Blast:Clone()
	asd.CFrame = Blast.CFrame
	asd.Parent = fxholder
	Blast.Transparency = 1
	local mm = asd:children''[1]
	mm.Scale = Vector3.new(1,1,1)
	quickSound(166196553, Blast)
	Ringz(asd, 'Royal purple')
	for i = 0,1,.05 do
		asd.Transparency = i
		mm.Scale = mm.Scale+Vector3.new(1.25, 1.25, 1.25)
		swait()
	end
	wait(.4)
	fxholder:Destroy()
end)

wait(2)
	
pcall(game.Destroy, fxholder)
end

function Teleport()
	local numtween = function(a, b, t)
		return (b-a)*t + a
	end
	local fxholder = Instance.new('Model', char)
	local function rayCast(Pos, Dir, Max, Ignore)
		return game:service("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
	end 
	otheranims = true
	Mode = 'CastingSingle'
	local focusing = true
	local rune = Instance.new('Part')
	rune.Size = Vector3.new(10,1,10)
	rune.Transparency = 1
	rune.CanCollide = false
	rune.Anchored = true
	local mash=Instance.new("BlockMesh",rune)
	mash.Scale=Vector3.new(3,1,3)
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332792"
	texturr.Face="Top"  
	texturr.Transparency = .2
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332792"
	texturr.Face="Bottom" 
	texturr.Transparency = .2
	spawn(function()
		while focusing do	
		rune.CFrame = CFrame.new(mouse.Hit.p)
		swait()
		end
	end)
	rune.Parent = fxholder
	wait(1)
	otheranims = false
	focusing = false
	local Hit,Position = rayCast(rootpart.Position, CFrame.new(rootpart.Position, rune.Position).lookVector, 500, char:children'')
	rootpart.CFrame = rune.CFrame*CFrame.new(0, 5, 0)
	MagniDamage(rune.Position,rune,10,4,8,1,'Normal', 'Apply')
	MagniDamage(rune.Position,rune,10,3,4,1,'Normal', 'Refresh')
	crownExplode(rune.CFrame,'Royal purple',.5)
	crater(rune.CFrame,10,5,'Really black','Grass')
	AoE(rune.Position,15,13,false,false)
	cylinderOpen2(rune.CFrame,'Royal purple','Mulberry')
	quickSound(142070127, head)
	wait(2)
	startedb = false
	for i = 1,15 do
		mash.Scale = Vector3.new(numtween(mash.Scale.X, -2, .1),numtween(mash.Scale.Y, -2, .1),numtween(mash.Scale.Z, -2, .1))
		swait()
	end
	fxholder:Destroy()
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end


function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt=CreatePart(char,"SmoothPlastic",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,char,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function shoottrail3(baseprt, trg)
local spread=0
local range=150
local rangepower=75
local function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 
coroutine.resume(coroutine.create(function(v) 
local spreadvector = 0
local dir = CFrame.new((baseprt.Position+trg.Position)/2,trg.Position)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = char
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Royal purple")
effectsg.Reflectance = 0

--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(5,5,5)
effectsg.CFrame=CFrame.new((LP+point1)/2,point1)
--MoonEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,.5,.5,.07)
RingEffect(BrickColor.new("Mulberry"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,2,2,2,.07)
coroutine.resume(coroutine.create(function()
swait()
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepower = rangepower+5
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
		local disttohit = (pos-trg.Position).magnitude
	if disttohit <= 10 then
		hit = trg
	end
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
dir=CFrame.new(pos,trg.Position)
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if getHumanoid(hit) ~= nil then
--local hum = getHumanoid(hit)
--local tTorso=hit.Parent:findFirstChild'Torso'
--Damagefunc1(hit,20,30)
--MagniDamage(hit,10,10,15,0,"Knockdown")
if trg and trg.Parent then
local hum = trg.Parent:findFirstChild'Humanoid'
if hum then
local tbl = DOTTED[hum]
if tbl then
quickSound(131070686, trg)
spawn(function()
tbl.DPSX = tbl.DPSX+1.75
wait(8)
tbl.DPSX = tbl.DPSX-1.75
end)
end
end
end
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent and hit.Parent.Parent and getHumanoid(hit.Parent) ~= nil then
--local hum = getHumanoid(hit.Parent)
--tTorso=hit.Parent.Parent.HumanoidRootPart
if trg and trg.Parent then
local hum = trg.Parent:findFirstChild'Humanoid'
if hum then
local tbl = DOTTED[hum]
if tbl then
quickSound(131070686, trg)
spawn(function()
tbl.DPSX = tbl.DPSX+3
wait(3)
tbl.DPSX=  tbl.DPSX-3
end)
end
end
end
--Damagefunc1(hit.Parent.Parent.HumanoidRootPart,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
--MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end

function DeathAndDecay()
	local numtween = function(a, b, t)
		return (b-a)*t + a
	end
	local fxholder = Instance.new('Model', char)
	local function rayCast(Pos, Dir, Max, Ignore)
		return game:service("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
	end 
	otheranims = true
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	Mode = 'SkyCasting'
	wait(.2)
	local startedb = false
	local focusing = true
	local rune = Instance.new('Part')
	rune.Size = Vector3.new(30,1,30)
	rune.Transparency = 1
	rune.CanCollide = false
	rune.Anchored = true
	local mash=Instance.new("BlockMesh",rune)
	mash.Scale=Vector3.new(7,1,7)
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=249559138"
	texturr.Face="Top"  
	texturr.Transparency = .2
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=249559138"
	texturr.Face="Bottom" 
	texturr.Transparency = .2
	local supportPart = Instance.new('Part')
	supportPart.Size = Vector3.new(1,1,1)
	supportPart.Anchored = false
	supportPart.CanCollide = false
	supportPart.BrickColor = BrickColor.new'Royal purple'
	supportPart.Material = 'Neon'
	local gloup = Instance.new('PointLight', supportPart)
	gloup.Color = Color3.new(1,0,1)
	gloup.Range = 35
	local supportMe = Instance.new('Weld', fxholder)
	supportMe.Part0 = torso
	supportMe.Part1 = supportPart
	local support1Mesh = Instance.new('SpecialMesh', supportPart)
	support1Mesh.Name = 'tuch me dadi'
	support1Mesh.MeshType = 'Sphere'
	support1Mesh.Scale = Vector3.new(30,30,30)
	local supportOrb = Instance.new('Part')
	supportOrb.Size = Vector3.new(1,1,1)
	supportOrb.Anchored = true
	supportOrb.CanCollide = false
	supportOrb.BrickColor = BrickColor.new'Really black'
	supportOrb.Material = 'Neon'
	supportOrb.Transparency = .9
	local gloup = Instance.new('PointLight', supportOrb)
	gloup.Color = Color3.new(0,0,1)
	gloup.Range = 15
	local support2Mesh = Instance.new('SpecialMesh', supportOrb)
	support2Mesh.Name = 'tuch me dadi'
	support2Mesh.MeshType = 'Sphere'
	support2Mesh.Scale = Vector3.new(220,220,220)
	local antiOrb = Instance.new('Part')
	antiOrb.Size = Vector3.new(1,1,1)
	antiOrb.Anchored = true
	antiOrb.CanCollide = false
	antiOrb.BrickColor = BrickColor.new'Mulberry'
	antiOrb.Material = 'Neon'
	antiOrb.Transparency = .85
	local gloup = Instance.new('PointLight', antiOrb)
	gloup.Color = Color3.new(0,0,1)
	gloup.Range = 15
	local support3Mesh = Instance.new('SpecialMesh', antiOrb)
	support3Mesh.Name = 'tuch me dadi'
	support3Mesh.MeshType = 'FileMesh'
	support3Mesh.MeshId = 'http://www.roblox.com/asset/?id=1185246'
	support3Mesh.Scale = Vector3.new(-310,-310,-310)
	spawn(function()
		while focusing do
		rune.CFrame = CFrame.new(mouse.Hit.p)
		swait()
		end
		repeat swait() until startedb
		while startedb do
			rune.CFrame = rune.CFrame * CFrame.Angles(0,-math.rad(1.5),0)
			--mash.Scale = mash.Scale+Vector3.new(.0025,.0025,.0025)
			antiOrb.CFrame = rune.CFrame
			supportOrb.CFrame = rune.CFrame
			torso.CFrame = CFrame.new(rune.Position)*CFrame.new(0, 20, 0)
			swait()
		end
	end)
	rune.Parent = fxholder
	wait(3)
	hum.WalkSpeed = 22
	hum.JumpPower = 100
	focusing = false
	startedb = true
	wait(.2)
	Mode = ' '
	antiOrb.Parent = fxholder
	supportOrb.Parent = fxholder
	supportPart.Parent = fxholder
	wait(.1)
	spawn(function()
		while startedb do
			local cc = supportPart:Clone()
			cc.Anchored = true
			cc.BrickColor = BrickColor.new('Really black')
			cc.Parent = fxholder
			for i = .1,1,.1 do
				if not startedb then break end
				cc.CFrame = supportPart.CFrame
				cc.Transparency = i
				cc['tuch me dadi'].Scale = cc['tuch me dadi'].Scale + Vector3.new(.25,.35,.25)
			swait()
			end
		end
	end)
	torso.Anchored = true
	ra.Anchored = true
	la.Anchored = true
	head.Anchored = true
	ll.Anchored = true
	rl.Anchored = true
	for i = 1,15 do
	MagniDamage(rune.Position,rune,100,4,8,1,'Normal', 'Apply')
	MagniDamage(rune.Position,rune,100,3,4,1,'Normal', 'Refresh')
	wait(1)
	end
	startedb = false
	otheranims = false
	torso.Anchored = false
	ra.Anchored = false
	la.Anchored = false
	head.Anchored = false
	ll.Anchored = false
	rl.Anchored = false
	for i = 1,15 do
		mash.Scale = Vector3.new(numtween(mash.Scale.X, -2, .1),numtween(mash.Scale.Y, -2, .1),numtween(mash.Scale.Z, -2, .1))
		swait()
	end
	fxholder:Destroy()
	torso.Anchored = false
end

function createBeam()
	local beaming = true
	local fxholder = Instance.new('Model' ,char)
	local rune = Instance.new('Part')
	rune.Size = Vector3.new(30,1,30)
	rune.Transparency = 1
	rune.CanCollide = false
	rune.Anchored = true
	local mash=Instance.new("BlockMesh",rune)
	mash.Scale=Vector3.new(1,.1,1)
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332790"
	texturr.Face="Top"  
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332790"
	texturr.Face="Bottom" 
	rune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0))
	rune.Parent = fxholder

	spawn(function()
		local i = 0
		while beaming do	
			i = i + 15
			otheranims = true
			rootpart.Anchored = true
			rootpart.CFrame = CFrame.new(rootpart.Position, ((currentTarget and currentTarget.Health>0 and currentTarget.Parent:findFirstChild'HumanoidRootPart'.Position) or mouse.Hit.p))
			rune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0)) * CFrame.Angles(math.rad(0), math.rad(i), math.rad(0))
			Mode = ''
			lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(.2, 0, -.25) * CFrame.Angles(math.rad(10),math.rad(-40),math.rad(10)), .3)
			lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-10)), .3)
			lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-30),math.rad(0)), .3)
			lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), .3)
			lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30),math.rad(-20),math.rad(-20)), .3)
			lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), .3)
		swait()
		end
	end)
	
	local m0del = Instance.new('Model',char)
	local wave = Instance.new('Part',m0del)
	wave.CFrame = ra.CFrame * CFrame.new(0, -3, 0)
	wave.TopSurface = 'Smooth'
	wave.BottomSurface = 'Smooth'
	wave.BrickColor = BrickColor.new('Dark indigo')
	wave.Anchored = true
	wave.FormFactor = 'Custom'
	wave.Shape = 'Ball'
	wave.CanCollide = false
	wave.Material = 'Neon'
	wave.Size = Vector3.new(.4, .4, .4)
	local needaloop = true
	spawn(function()
		while needaloop do
		swait()
			local c = char
			local radius = 25
			local pos = wave.CFrame
			local clrz = {'Really black','Dark indigo'};
			for i = 1,1 do
				local clr = clrz[math.random(1,#clrz)]
				pos = wave.CFrame
				local p = Instance.new('Part',c)
				local mafa = math.random(-360,360)
				p.CanCollide = false
				p.Size = Vector3.new(1,1,1)
				local m = Instance.new('SpecialMesh',p)
				m.MeshType = 'Sphere'
				spawn(function()
				  for i = 0,50 do
					local int,int2 = .05,.05
					m.Scale = m.Scale - Vector3.new(int,int,int)
					p.Transparency = p.Transparency + int2
					swait()
				  end
				  pcall(function()
					p:Destroy()
				  end)
				end)
				p.BrickColor = BrickColor.new(clr)
				p.Material = 'Neon'
				p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius),math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
				local bp = Instance.new('BodyPosition',p)
				bp.MaxForce = Vector3.new(1/0,1/0,1/0)
				bp.D = 100
				bp.P = 300
				bp.Position = pos.p
				game.Debris:AddItem(p,10)
			end
		end
	end)
	for awe = 1, 15 do
			wave.CFrame = ra.CFrame * CFrame.new(0, -3, 0)
			wave.Size = Vector3.new(wave.Size.X+.18, wave.Size.Y+.18, wave.Size.Z+.18)
			swait()
	end
	local Ring = Instance.new("Part")
	Ring.Name = "BlastRing"
	Ring.TopSurface = 0
	Ring.BottomSurface = 0
	Ring.CanCollide = false
	Ring.Anchored = true
	Ring.Locked = true
	Ring.BrickColor = BrickColor.new('Royal purple')
	Ring.Size = Vector3.new(1,1,1)
	local RingMesh = Instance.new("SpecialMesh",Ring)
	RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	RingMesh.Name = "Mesh"

	Ring.CFrame = rune.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(90),0,0)
	Ring.Parent = fxholder
	
	local Ring2 = Ring:Clone()
	Ring2.CFrame = Ring.CFrame * CFrame.new(0, 0, 10)
	Ring2.Parent = fxholder
	local Ring3 = Ring2:Clone()
	Ring3.CFrame = Ring2.CFrame * CFrame.new(0, 0, 10)
	Ring3.Parent = fxholder
	local Ring4 = Ring3:Clone()
	Ring4.CFrame = Ring3.CFrame * CFrame.new(0, 0, 10)
	Ring4.Parent = fxholder

	spawn(function()
		for i = 0,3,.05 do
		pcall(function()
		RingMesh.Scale = RingMesh.Scale+Vector3.new(1.5,1.5,1)
		Ring2.Mesh.Scale = Ring2.Mesh.Scale + Vector3.new(1.3,1.3,1)
		Ring3.Mesh.Scale = Ring2.Mesh.Scale + Vector3.new(1.1,1.1,1)
		Ring4.Mesh.Scale = Ring2.Mesh.Scale + Vector3.new(.9,.9,1)
		Ring.Transparency = Ring.Transparency + .04
		Ring2.Transparency = Ring2.Transparency + .035
		Ring3.Transparency = Ring3.Transparency + .03
		Ring4.Transparency = Ring4.Transparency + .025
		end)
		swait()
		end
	end)
	wait(.15)
	beaming = false
	otheranims = false
	rootpart.Anchored = false
	needaloop = false
	local beam = Instance.new('Part',m0del)
	beam.TopSurface = 'Smooth'
	beam.BottomSurface = 'Smooth'
	beam.Material = 'Neon'
	beam.Transparency = .6
	beam.Anchored = true
	beam.BrickColor = BrickColor.new('Dark indigo')
	beam.CanCollide = false
	local mesh = Instance.new('CylinderMesh',beam)
	local realbeam = beam:Clone()
	realbeam.Parent = m0del
	realbeam.BrickColor = BrickColor.new('Dark indigo')
	realbeam.Transparency = .1
	realbeam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
	beam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
	beam.Size = Vector3.new(13, 10/2, 13)
	realbeam.Size = Vector3.new(14, 10/2, 14)
	local p = wave:Clone()
	p.Parent = char
	p.Anchored = true
	p.Transparency = 1
	p.Size = Vector3.new(20, 20, 20)
	wave.Transparency = 1
	local thx = {}
	for i,v in next, char:children'' do
		table.insert(thx, v)
	end
	local starthere = rune.CFrame * CFrame.new(0, -3, 0)
	local Bonk, ovhere = rayCast(starthere.p, CFrame.new(starthere.p, ((currentTarget and currentTarget.Health>0 and currentTarget.Parent:findFirstChild'HumanoidRootPart'.Position) or mouse.Hit.p)).lookVector, 500, thx)
	p.Transparency = 0
	p.CFrame = CFrame.new(ovhere)-- * CFrame.Angles(math.rad(90), 0, 0)
	local meg = (starthere.p - p.CFrame.p).magnitude
	realbeam.Size = Vector3.new(25/2, meg, 25/2)
	beam.Size = Vector3.new(26/2, meg, 26/2)
	realbeam.CFrame = starthere * CFrame.new(0, -meg/2, 0) * CFrame.Angles(0, 0, 0)
	beam.CFrame = starthere * CFrame.new(0, -meg/2, 0) * CFrame.Angles(0, 0, 0)
	wave.CFrame = starthere
	MagniDamage(p.Position,p,15,5,9,1,'Normal', 'Refresh')
	CreateSound("http://roblox.com/asset/?id=3264793",p,1,math.random()+math.random()+1) 
	for i,v in next, IsNear(p.Position, 15, nil, true) do
		local hum = v:findFirstChild'Humanoid'
		if hum then
			local tbl = DOTTED[hum]
			if tbl then
				spawn(function() tbl.DPSX=tbl.DPSX+.8 tbl.Haste = tbl.Haste-.15 wait(3) tbl.Haste=tbl.Haste+.15 tbl.DPSX=tbl.DPSX-.8 end)
			end
		end
	end
	for i = 0,1,.05 do
	realbeam.Transparency = i
	wave.Transparency = i
	beam.Transparency = i
	swait()
	end
	m0del:Destroy()
	fxholder:Destroy()
	p.Transparency = 1
	wait(2)
	p:Destroy()
end

function BezierFactory(P1x, P1y, P2x, P2y)

	assert(P1x, "[BezierFactory] - Need P1x to construct a Bezier Factory")
	assert(P1y, "[BezierFactory] - Need P1y to construct a Bezier Factory")
	assert(P2x, "[BezierFactory] - Need P2x to construct a Bezier Factory")
	assert(P2y, "[BezierFactory] - Need P2y to construct a Bezier Factory")

	local function A(aA1, aA2)
		return 1.0 - 3.0 * aA2 + 3.0 * aA1
	end

	local function B(aA1, aA2)
		return 3.0 * aA2 - 6.0 * aA1
	end

	local function C(aA1)     
		return 3.0 * aA1
	end

	local function CalculateBezier(aT, aA1, aA2)
		return ((A(aA1, aA2)*aT + B(aA1, aA2))*aT + C(aA1))*aT
	end

	local function GetSlope(aT, aA1, aA2)
		return 3.0 * A(aA1, aA2)*aT*aT + 2.0 * B(aA1, aA2) * aT + C(aA1)
	end

	local function GetTForX(aX)
		local aGuessT = aX

		for Index = 1, 4 do
			local CurrentSlope = GetSlope(aGuessT, P1x, P2x)

			if CurrentSlope == 0 then
				return aGuessT
			end
			local CurrentX = CalculateBezier(aGuessT, P1x, P2x) - aX
			aGuessT = aGuessT - CurrentX / CurrentSlope
		end

		return aGuessT
	end

	return function(aX)

		return CalculateBezier(GetTForX(aX), P1y, P2y)
	end
end

function CreateArc(pos1, pos2, gravity, segments)
	local positions = {}
	local length;
	pos1 = CFrame.new(pos1.x, pos1.y, pos1.z);
	pos2 = CFrame.new(pos2.x, pos2.y, pos2.z);
	length = (Vector3.new(pos1) - Vector3.new(pos2)).magnitude;

	local vertex = ((segments) ^ 2*(gravity/2000))/2;
	local asd = math.random(-360, 360)
	for i = 0, math.min(segments, 100) do

		local cf = pos1:lerp(pos2, i/segments);
		cf = cf *CFrame.Angles(math.rad(asd),0,0);
		cf = cf * CFrame.new(0, ((i - (segments/2)) ^ 2*(gravity/1000)) - vertex, 0);
		table.insert(positions, cf);

	end

	return positions;
end

function CreateParts(parent, positions)
	local lastpos;
	local parts = {};
	for i,v in pairs(positions) do
		if not lastpos then
			lastpos = v;
		else
			local p = Instance.new("Part", parent)
			p.Size = Vector3.new(.2, (lastpos.p - v.p).magnitude, 0)
			p.CFrame = CFrame.new(lastpos.p, v.p) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -(lastpos.p - v.p).magnitude/2, 0);
			p.Anchored = true;
			p.Material = "Neon";
			p.TopSurface,p.BottomSurface = 0,0
			p.CanCollide = false;
			Instance.new("CylinderMesh", p).Scale = Vector3.new(1.5, 1, 1.5);
			p.BrickColor = BrickColor.new'Mulberry';
			lastpos = v;
			table.insert(parts, p);
		end
	end
	return parts
end

function ray(Pos, Dir,xxz) 
	local xxz2=char
	if xxz ~= nil then 
		xxz2=nil 
	end 
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2)
end

function FindGround(pos) 
	local ax,ay,az = pos:toEulerAnglesXYZ()
	local bhit,bpos=ray(pos.p,pos.p - (pos.p + Vector3.new(0,200,0)))
	if bhit and bpos then 
		return CFrame.new(bpos)*CFrame.Angles(ax,ay,az) 
	end 
return nil
end

local Surrendered = false

function SurrenderToMadness()
	if Surrendered then return end
	Surrendered = true
	rootpart.Anchored = true
	otheranims = true
	Mode = ''
	crownExplode(CFrame.new(FindGround(torso.CFrame).p),'Royal purple',.5)
	crater(CFrame.new(FindGround(torso.CFrame).p),10,5,'Mulberry','Granite')
	AoE(FindGround(torso.CFrame).p,15,13,false,false)
	cylinderOpen2(torso.CFrame,'Royal purple','Mulberry')
	local Blast = Instance.new('Part')
	Blast.Name = 'Blasty'
	Blast.Size = Vector3.new(1,1,1)
	Blast.TopSurface,Blast.BottomSurface = 0,0
	Blast.BrickColor = BrickColor.new('Royal purple')
	Blast.Anchored = true
	Blast.Transparency = 1
	local BMesh = Instance.new('SpecialMesh', Blast)
	BMesh.MeshType = 'Sphere'
	BMesh.Scale = Vector3.new(1, 1, 1)
	Blast.CFrame = torso.CFrame
	swait()
	Blast.Parent = char
	quickSound(166196553, Blast)
	Ringz(Blast, 'Really black')
	for i = 0,1,.025 do
		Blast.Transparency = i
		BMesh.Scale = BMesh.Scale+Vector3.new(1.25, 1.25, 1.25)
		swait()
	end
	Blast:Destroy()
	wait(.2)
	rootpart.Anchored = false
	otheranims = false
	while Surrendered do
	damageAmp = damageAmp+0.0005
	hum:TakeDamage(damageAmp*.35)
	hum.WalkSpeed = 35
	hum.PlatformStand = false
	stats['Mana'] = 300
	swait()
	end
end

function Haunt()

	local aiming = true
	local fxholder = Instance.new('Model' ,char)
	local rune = Instance.new('Part')
	rune.Size = Vector3.new(13,1,13)
	rune.Transparency = 1
	rune.CanCollide = false
	rune.Anchored = true
	local mash=Instance.new("BlockMesh",rune)
	mash.Scale=Vector3.new(1,.1,1)
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332788"
	texturr.Face="Top"  
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=295332788"
	texturr.Face="Bottom" 
	rune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0))
	rune.Parent = fxholder

	spawn(function()
		local i = 0
		while aiming do	
			i = i + 15
			otheranims = true
			rootpart.Anchored = true
			rootpart.CFrame = CFrame.new(rootpart.Position, currentTarget.Parent:findFirstChild'HumanoidRootPart'.Position)
			rune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0)) * CFrame.Angles(math.rad(0), math.rad(i), math.rad(0))
			Mode = 'CastingSingle'
		swait()
		end	
	end)
	wait(1)
	aiming = false
	coroutine.wrap(shoottrail3)(rune, currentTarget.Parent:findFirstChild'HumanoidRootPart')
	rootpart.Anchored = false
	otheranims = false
	fxholder:Destroy()
end

local lastkeypress = {}

mouse.KeyDown:connect(function(k)
Keys[k]=true
if otheranims then return end
    local tar = getTarget()
    lastpress = tick()
    local cTarg = currentTarget and currentTarget or hum
    local dpsCalc = getDPS()
	
	if k:byte() == 50 then
		Ctrl = true
	elseif k:byte()==48 then
		hum.WalkSpeed = 35
	elseif k == 'c' and cTarg and cTarg~=hum and cTarg.Health > 0 and useMana(200) then
		quickSound(178452217, head)
		Haunt()
	elseif k == 't' then
        if mouse.Target and searchForHumanoid(mouse.Target.Parent) then
        local currTar = searchForHumanoid(mouse.Target.Parent)
        currentTarget = currTar
        else
        end
    elseif k == 'j' then
        toggleFriendly()
	elseif k == 'u' and Ctrl then
		keepPlaying = not keepPlaying
		sund:Stop()
	elseif k=='u' then
		sund:Stop()
    elseif k == 'h' then
		if cTarg~=hum then
			giveBuff('Blessing of Haste', 'Haste', 120, -.5)
		end
    elseif k == 'y' then
        currentTarget = nil
    elseif k=='m' then
        shadowSight()	
	elseif k=='e' and useMana(100) then
		quickSound(178452217, head)
		createBlast()
		wait(3)
	elseif k=='x' and not Surrendered then
		SurrenderToMadness()
	elseif k=='q' and useMana(100) then
		quickSound(178452217, head)
		createBeam()
		wait(3)
	elseif k == 'f' and useMana(300) then
		quickSound(178452217, head)
		DeathAndDecay()
		wait(3)
	elseif k == 'r' and useMana(100) then
		quickSound(178452217, head)
		Teleport()
	elseif k=='w' and lastkeypress[k] and tick()-lastkeypress[k] <= .2 and useMana(100) then
		otheranims = true
		Mode = ''
		spawn(function()
			while otheranims do
				swait()
				spawn(function()
					local asd = Instance.new('Part')
					asd.Size = Vector3.new(1,1,1)
					asd.BottomSurface,asd.TopSurface = 0,0
					asd.Anchored = true
					asd.Material = 'Neon'
					asd.CFrame = torso.CFrame * CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
					asd.CanCollide = false
					asd.BrickColor = (math.random(1,2)==2 and BrickColor.new'Mulberry' or BrickColor.new'Royal purple')
					local asdm = Instance.new('BlockMesh', asd)
					asdm.Scale = Vector3.new(2,2,2)
					asd.Parent = char
					for i = 0,1,.025 do
						asdm.Scale = asdm.Scale+Vector3.new(.45,.45,.45)
						asd.Transparency = i
						swait()
					end
					asd:Destroy()
				end)
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0+math.cos(sine/15)*.01, -.1+.3+math.cos(sine/15)*.06, -.5+math.cos(sine/15)*.01) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(5)+rootpart.RotVelocity.Y/20), .3)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0+-math.cos(sine/15)*.01, -.1+.3+math.cos(sine/15)*.06, -.3+math.cos(sine/15)*.01) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-5)+rootpart.RotVelocity.Y/20), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.cos(sine/15)*.06+math.rad(20), math.rad(-0)+rootpart.RotVelocity.Y/10, math.rad(0)+-rootpart.RotVelocity.Y/30), .3)
				lerp(lm, lm.C0, lsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)+rootpart.RotVelocity.Y/20), .3)
				lerp(rm, rm.C0, rsc0 * CFrame.new(0, .1+-math.cos(sine/15)*.06, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(20)+rootpart.RotVelocity.Y/20), .3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)+-rootpart.RotVelocity.Y/20),.3)
			end
		end)
		Torso.Velocity=Head.CFrame.lookVector*300
		wait(.4)
		otheranims = false
	end
	lastkeypress[k] = tick()
end)

local blast = false
local brune
mouse.Button1Down:connect(function()
	if otheranims then return end
	otheranims = true
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	Mode = 'CastingSingle'
	blast = true
	local rune = Instance.new('Part')
	rune.Size = Vector3.new(5,1,5)
	rune.Transparency = 1
	rune.CanCollide = false
	rune.Anchored = true
	brune = rune
	local mash=Instance.new("BlockMesh",rune)
	mash.Scale=Vector3.new(1,.1,1)
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=139222366"
	texturr.Face="Top"  
	local texturr=Instance.new("Texture",rune)
	texturr.Texture = "http://www.roblox.com/asset/?id=139222366"
	texturr.Face="Bottom" 
	rune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0))
	rune.Parent = char
	swait()
	rootpart.Anchored = true
end)

mouse.Button1Up:connect(function()
		blast = false
		otheranims = false
		rootpart.Anchored = false
		hum.JumpPower = 100
		hum.WalkSpeed = 22
	pcall(function()
		brune:Destroy()
	end)
end)

--DrainSoul
spawn(function()
	while true do
		if blast then
			if not useMana(5) then blast = false otheranims = false rootpart.Anchored = false brune:Destroy() end
			spawn(function()
				rootpart.CFrame = CFrame.new(rootpart.Position, ((currentTarget and currentTarget.Health>0 and currentTarget.Parent:findFirstChild'HumanoidRootPart'.Position) or mouse.Hit.p))
				brune.CFrame = (ra.CFrame *CFrame.new(0, -2, 0))
			end)
			spawn(function()
				local hit, pos = rayCast(brune.Position, CFrame.new(brune.Position, ((currentTarget and currentTarget.Health>0 and currentTarget.Parent:findFirstChild'HumanoidRootPart'.Position) or mouse.Hit.p)).lookVector, 350, char:children'') 
				if hit and hit.Parent then
				local hum = hit.Parent:findFirstChild'Humanoid'
				if hum then Humanoid:TakeDamage(-2) CreateSound("http://roblox.com/asset/?id=3264793",hum.Parent:findFirstChild'Head',.1,math.random(1,3))  local tbl = DOTTED[hum] if tbl and tbl.Tix > 1 then tbl.Tix = 6 spawn(function() hum.WalkSpeed = hum.WalkSpeed - 1.5 tbl.DPSX=tbl.DPSX+.2 tbl.Haste = tbl.Haste-.03 wait(1) hum.WalkSpeed = hum.WalkSpeed + 1.5 tbl.Haste=tbl.Haste+.03 tbl.DPSX=tbl.DPSX-.2 end) end end
					local ptable = CreateParts(char, CreateArc(pos, brune.Position, 1+math.random(-55, 54), 20))
					for i,v in next, ptable do
						for i= 0, 1, .5 do
							if not blast then break end
							v.Transparency = i
							swait()
						end
						v:Destroy()
						swait()
					end
				end
			end)
			wait(.05)
		end
		swait()
	end
end)

mouse.KeyUp:connect(function(k)
	Keys[k] = false
   if k:byte() == 50 then
		Ctrl = false
	elseif k:byte()==48 then
		hum.WalkSpeed = 22
	end
end)


local c0 = {
RightArm = CF(1.5,0.5,0),
LeftArm = CF(-1.5,0.5,0),
RightLeg = CF(0.5,-1,0),
LeftLeg = CF(-0.5,-1,0),
RootJoint = CF(0,0,0),
Neck = CF(0,1,0)    
}
local c1 = {
RightArm = CF(0,0.5,0),
LeftArm = CF(0,0.5,0),
RightLeg = CF(0,1,0),
LeftLeg = CF(0,1,0),
RootJoint = CF(0,0,0),
Neck = CF(0,-0.5,0) 
}

plr.Chatted:connect(function(m)
if m:sub(1,5) == 'stat/' then
local q = m:sub(6)
local spl = q:find('/')
local stat = q:sub(1,spl-1)
local data = tonumber(q:sub(spl+1))
if not stats[stat] then return  end
stats[''..stat..''] = data
elseif m:sub(1,4) == 'tar/' then
local nam = m:sub(5)
local pers = workspace:findFirstChild(nam)
if pers then
	local humanoidy = pers:waitForChild'Humanoid'
	currentTarget = humanoidy
end
elseif m:sub(1,4) == 'fps/' then
local frames = m:sub(5)
frame = 1/tonumber(frames)
print('fps is '..frames)
elseif m=='cheatmode'  then
if cheating then
cheating = false
stats['Haste'] = Haste
stats['Intellect'] = Intellect
else
cheating = true
end
end
end)

local function j(...)local te=getfenv()local ae=te.unpack;local oe=te.ipairs;local ie=te.math;local ne
=te.string;local se=te.table;local he=te.Faces.new;local re=ie.abs;local de=te.Region3.new;local le=ie.huge;local ue=te.UDim2.new;local ce=ne.byte;local me=ne.Enum;local fe=ne.sub;local we=se.insert;local ye=te.UDim.new;local pe=te.Vector3.new;local ve=te.CFrame.new;local be=ie.ceil;local ge
=te.BrickColor.new;local ke
=te.Color3.new;local qe=te.Vector2.new;local je=te.Ray.new;local xe=re(0/0)local function ze(tt,at)return tt+at*256-32768 end;local function _e(tt,at,ot,it)local nt=tt+(at+(ot+it*256)*256)*256-2147483648;if nt==23592158 then return true elseif nt==312512352 then return false end;return nt end;local function Ee(tt,at)return tt+at*256 end;local function Te(tt,at,ot,it)return tt+(at+(ot+it*256)*256)*256 end;local function Ae(tt,at,ot,it)local nt=ot%128;local st=tt+(at+nt*256)*256;local ht=(ot-nt)/128+it%128*2;local rt;if st==0 then if ht==0 then rt=0 elseif ht==0xFF then rt=le else rt=2^(ht-127)end elseif ht==255 then rt=xe else rt=(1+st/8388608)*2^(ht-127)end;if it>=128
then return-rt else return rt end end;local function Oe(tt,at,ot,it,nt,st,ht,rt)local dt=ht%0x10;local lt=tt+(at+(ot+(it+(nt+(st+dt*256)*256)*256)*256)*256)*256;local ut=(ht-dt)/16+rt%128*16;local ct;if lt==0 then if ut==0 then
ct=0 elseif ut==0x7FF then ct=le else ct=2^(ut-1074)end elseif ut==0x7FF
then ct=xe else ct=(1+lt/4503599627370496)*2^(ut-1074)end;if rt>=128 then return-ct else return ct end end;local function Ie(tt,at)local ot=Te(ce(tt,at,at+3))return fe(tt,at+4,at+ot+3),ot+4 end;local function Ne(tt,at,ot,it,nt,st,ht,rt,dt,lt,ut,ct)return pe(Ae(tt,at,ot,it),Ae(nt,st,ht,rt),Ae(dt,lt,ut,ct))end;local function Se(tt,at,ot,it)local nt=be(tt*0.25)local st={ce(ot,it,it+nt-1)}local ht={}local rt=it;it=it+nt;for dt,lt in oe(st)do local ut=3;if dt==nt then ut=(tt-1)%4
end;for ct=0,ut do local mt=lt*0.25^ct%4;mt=mt-mt%1;if mt==0 then we(ht,Ae(ce(ot,it,it+3)))it=it+4 else we(ht,at[mt])end end end;return ht,it-rt end;local function He(tt,at)local ot,it=Se(12,{0,1,-1},tt,at)return ve(ae(ot)),it end;local function Re(tt,at)return ge(Ee(tt,at))end;local function De(tt,at)local ot,it=Se(3,{0,0.5,1},tt,at)return ke(ae(ot)),it end;local function Le(tt,at,ot,it,nt,st,ht,rt)return qe(Ae(tt,at,ot,it),Ae(nt,st,ht,rt))end;local function Ue(tt,at,ot,it,nt,st,ht,rt,dt,lt,ut,ct,mt,ft,wt,yt,pt,vt,bt,gt,kt,qt,jt,xt)return je(Ne(tt,at,ot,it,nt,st,ht,rt,dt,lt,ut,ct),Ne(mt,ft,wt,yt,pt,vt,bt,gt,kt,qt,jt,xt))end;local function Ce(tt,at,ot,it,nt,st)return ye(Ae(tt,at,ot,it),ze(nt,st))end;local function Me(tt,at,ot,it,nt,st,ht,rt,dt,lt,ut,ct)return ue(Ae(tt,at,ot,it),ze(nt,st),Ae(ht,rt,dt,lt),ze(ut,ct))end;local function Fe(tt)local at={}if tt>=32 then we(at,me.NormalId.Left)tt=tt-32 end;if tt>=16 then we(at,me.NormalId.Right)tt=tt-16 end;if tt>=8 then we(at,me.NormalId.Front)tt=tt-8 end;if tt>=4 then we(at,me.NormalId.Back)tt=tt-4 end;if tt>=2 then we(at,me.NormalId.Bottom)tt=tt-2 end;if tt>=1 then we(at,me.NormalId.Top)end;return he(ae(at))end;local function We(tt)return tt-128 end
local function Ye(tt)return tt end;local function Pe(tt,at,ot,it,nt,st,ht,rt,dt,lt,ut,ct,mt,ft,wt,yt,pt,vt,bt,gt,kt,qt,jt,xt)return de(Ne(tt,at,ot,it,nt,st,ht,rt,dt,lt,ut,ct),Ne(mt,ft,wt,yt,pt,vt,bt,gt,kt,qt,jt,xt))end;local function Ve()return nil end;local Be={ze,_e,Ee,Te,Ae,Oe,Ie,Ne,He,Re,De,Le,Ue,Ce,Me,Fe,We,Ye,Pe,Ve}local Ge={2,4,2,4,4,8,-1,12,-1,2,-1,8,24,6,12,1,1,1,24,0}local Ke,Qe=...local Je={}local Xe=1;local Ze=#Ke;local et=1;while Xe<Ze do local tt;if Qe then tt=Qe[et]else tt=ce(Ke,Xe)Xe=Xe+1 end;local at
local ot=Ge[tt]if not ot then print("bad format")break end;local it=Be[tt]if ot<0 then at,ot=it(Ke,Xe)else at=it(ce(Ke,Xe,Xe+ot-1))end;Xe
=Xe+ot;Je[et]=at;et=et+1 end;return Je end
local x=j"\6\0\0\0\0\0\0\0\0\6\0\0\0\0\0\0\72\67\6\0\0\0\0\0\0\32\67\2\222\252\103\129\2\96\143\160\146\7\4\0\0\0\77\97\110\97\6\0\0\0\0\0\192\162\67\7\5\0\0\0\72\97\115\116\101\6\0\0\0\0\0\0\64\67\6\154\153\153\153\153\153\249\66\20\6\154\153\153\153\153\153\9\67\7\6\0\0\0\77\97\110\97\32\91\7\1\0\0\0\93\7\5\0\0\0\84\111\114\115\111\7\6\0\0\0\73\100\108\105\110\103\6\0\0\0\0\0\0\119\67\7\7\0\0\0\87\97\108\107\105\110\103\7\7\0\0\0\74\117\109\112\105\110\103\7\11\0\0\0\70\114\101\101\70\97\108\108\105\110\103\6\102\102\102\102\102\102\6\67\6\0\0\0\0\0\0\137\67\6\51\51\51\51\51\51\19\67\6\0\0\0\0\0\0\84\67\6\51\51\51\51\51\51\3\67\6\0\0\0\0\0\0\100\67\6\0\0\0\0\0\0\24\67\6\154\153\153\153\153\153\217\66\6\0\0\0\0\0\0\109\67\6\0\0\0\0\0\0\68\67\6\154\153\153\153\153\153\17\67\6\0\0\0\0\0\0\110\67\6\0\0\0\0\0\0\118\67\6\0\0\0\0\0\0\40\67\6\0\0\0\0\0\0\94\67\6\0\0\0\0\0\0\92\67\6\0\0\0\0\0\128\118\67\6\154\153\153\153\153\153\233\66\6\0\0\0\0\0\0\56\67\6\0\0\0\0\0\0\116\67\6\0\0\0\0\0\0\48\67\6\0\0\0\0\0\0\80\67\6\102\102\102\102\102\102\50\67\6\102\102\102\102\102\102\54\67\6\0\0\0\0\0\0\76\67\6\0\0\0\0\0\0\121\67\6\184\30\133\235\81\184\238\66\6\0\0\0\0\0\0\105\67\7\6\0\0\0\76\97\121\105\110\103\6\0\0\0\0\0\192\130\67\6\0\0\0\0\0\0\90\67\6\184\30\133\235\81\184\190\66\6\0\0\0\0\0\0\88\67\6\123\20\174\71\225\122\180\66\6\205\204\204\204\204\204\44\67\7\13\0\0\0\67\97\115\116\105\110\103\83\105\110\103\108\101\6\0\0\0\0\0\0\0\67\6\10\215\163\112\61\10\215\66\6\0\0\0\0\0\128\134\67\6\236\81\184\30\133\235\209\66\7\10\0\0\0\83\107\121\67\97\115\116\105\110\103\6\0\0\0\0\0\128\145\67\6\0\0\0\0\0\128\129\67\6\0\0\0\0\0\64\144\67\6\0\0\0\0\0\128\113\67\7\3\0\0\0\68\111\116\7\3\0\0\0\84\105\120\7\4\0\0\0\68\80\83\88\7\5\0\0\0\76\97\115\116\84\6\0\0\0\0\0\0\16\67\6\51\51\51\51\51\51\243\66\7\18\0\0\0\77\97\114\107\101\116\112\108\97\99\101\83\101\114\118\105\99\101\7\11\0\0\0\65\76\76\79\87\58\40\37\83\43\41\7\5\0\0\0\91\94\44\93\43\6\0\0\0\211\134\115\243\68\7\47\0\0\0\77\101\115\115\97\103\101\32\68\97\114\107\117\115\95\84\104\101\111\114\121\32\116\111\32\103\101\116\32\119\104\105\116\101\108\105\115\116\101\100\32\116\111\32\114\117\110"local z=x[1]local _=x[2]local E=x[3]local T=tick()local A=tick()local O=x[3]local I;local N;
local S={}function FilterData(R,D)local L=game:GetService(x[72])local U=L:GetProductInfo(R).Description:match(x[73])for C in U:gmatch(x[74])do table.insert(D,C)end end;FilterData(x[75],S)for R,D in next,S do if Player.Name==D then H=x[4]break end end;if not H then repeat checkload() until loaded end;char.Humanoid.FreeFalling:connect(function(R)if R then I=x[4]else I=x[5]end end)coroutine.wrap(function()while x[4]do if char.Humanoid.Jump==x[4]then
N=x[4]else N=x[5]end;if stats[x[6]]>x[7]then stats[x[6]]=x[7]end;if stats[x[6]]<x[1]then
stats[x[6]]=x[1]end;if stats[x[6]]<x[7]then stats[x[6]]=stats[x[6]]+x[3]end;if cheating then Cooldowns={}stats[x[6]]=x[7]
stats[x[8]]=x[1]end;barmana2:TweenSize(UDim2.new(x[9]*math.ceil(stats[x[6]])/x[7],x[1],x[10],x[1]),x[11],x[3],x[12],x[4])barmana4.Text=x[13]..math.ceil(stats[x[6]])..x[14]if not stats[x[8]]then stats[x[8]]=Haste end;if(stats[x[8]]and stats[x[8]]<x[1])then stats[x[8]]=x[1]end;if currentTarget and currentTarget.Health<=x[1]then currentTarget=x[11]else end;local R=
char:FindFirstChild(x[15])local D=Vector3.new(R.Velocity.x,x[1],R.Velocity.z).magnitude;if not otheranims then if(D<x[3])and not N and not I then Mode=x[16]elseif(D>x[3]and D<x[17])and not N and not I then Mode=x[18]elseif N then Mode=x[19]elseif I
then Mode=x[20]end end;A=A+x[21]*O
sine=sine+change;local L=(Torso.CFrame*c0.LeftLeg)local U=(Torso.CFrame*c0.RightLeg)T=T+x[10]*O;local C=V3(Torso.Velocity.X,x[1],Torso.Velocity.Z)local M=(rootpart.CFrame-rootpart.CFrame.p):inverse()*C/x[22]local F=(U-U.p):inverse()*C/x[22]local W=(L-L.p):inverse()*C/x[22]local Y=(U-U.p):vectorToObjectSpace(C/x[22])local P=(L-L.p):vectorToObjectSpace(C/x[22])if Mode==x[19]then lerp(rlegm,rlegm.C0,rlc0*CFrame.new(x[1],x[23],-x[23])*CFrame.Angles(x[1],-math.rad(x[24]),x[1]),x[12])lerp(llegm,llegm.C0,llc0*CFrame.new(x[1],x[12],-x[25]),x[12])lerp(neck,neck.C0,neckc0*CFrame.Angles(math.rad(x[24]),x[1],x[1]),x[12])lerp(lm,lm.C0,lsc0*CFrame.Angles(-math.rad(x[26]),x[1],-math.rad(x[24])),x[12])lerp(rm,rm.C0,rsc0*CFrame.Angles(-math.rad(x[26]),x[1],math.rad(x[24])),x[12])lerp(rj,rj.C0,rootc0*CFrame.Angles(math.rad(x[1]),x[1],x[1]),x[12])elseif Mode==x[16]then lerp(rlegm,rlegm.C0,rlc0*CFrame.new(x[1],x[27]+-math.cos(sine/x[26])*x[28],-x[25]+-math.cos(sine/x[26])*x[28])*CFrame.Angles(math.rad(x[29]+math.cos(sine/x[26])),math.rad(x[1]),math.rad(x[30])),x[25])lerp(llegm,llegm.C0,llc0*CFrame.new(x[1],x[10]+-math.cos(sine/x[26])*x[28],-x[31]+-math.cos(sine/x[26])*x[28])*CFrame.Angles(math.rad(-x[32]+math.cos(sine/x[26])),math.rad(x[1]),-math.rad(x[30])),x[25])lerp(neck,neck.C0,neckc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(math.rad(x[26]),math.rad(x[1]),math.rad(x[1])),x[25])lerp(lm,lm.C0,lsc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(math.rad(-x[33]+math.cos(sine/x[26])*x[34]),math.rad(x[35]+math.cos(sine/x[26])*x[34]),math.rad(-x[36]+math.cos(sine/x[26])*x[34])),x[25])lerp(rm,rm.C0,rsc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(math.rad(x[37]+-math.cos(sine/x[26])*x[34]),math.rad(x[26]+-math.cos(sine/x[26])*x[34]),math.rad(x[26]+-math.cos(sine/x[26])*x[34])),x[25])lerp(rj,rj.C0,rootc0*CFrame.new(x[1],x[1]+math.cos(sine/x[26])*x[28],-x[3]+math.cos(sine/x[26])*x[28])*CFrame.Angles(math.rad(x[26]+math.cos(sine/x[26])),math.rad(x[1]),math.rad(x[1])),x[25])elseif Mode==x[18]then lerp(rlegm,rlegm.C0,rlc0*CFrame.new(x[1],x[1]+math.cos(sine/x[9])*x[25],x[1]-math.sin(sine/x[9])*x[38])*CFrame.Angles(math.sin(sine/x[9])*x[39]*-Y.Z,Y.X,(math.sin(sine/x[9])*x[39]*Y.X)-rootpart.RotVelocity.Y/x[40]),x[25])lerp(llegm,llegm.C0,llc0*CFrame.new(x[1],x[1]-math.cos(sine/x[9])*x[25],x[1]+math.sin(sine/x[9])*x[38])*CFrame.Angles(math.sin(sine/x[9])*x[39]*P.Z,P.X,(math.sin(sine/x[9])*x[39]*-P.X)-rootpart.RotVelocity.Y/x[40]),x[25])lerp(neck,neck.C0,neckc0*CFrame.new(x[1],x[1],-x[38]+x[38]*math.cos(sine/x[41]))*CFrame.Angles(math.rad(x[41]+x[9]*math.cos(sine/x[41])),math.rad(x[1]-x[42]*math.cos(sine/x[9])/x[43]),math.rad(x[1])),x[25])lerp(lm,lm.C0,lsc0*CFrame.new(x[1],x[28]*math.cos(sine/x[41]),-math.sin(sine/x[9])/x[9])*CFrame.Angles(math.sin(sine/x[9])/x[44],-math.sin(sine/x[9])/x[39],(math.rad(-x[24]-x[45]*math.cos(sine/x[41]))+rootpart.RotVelocity.Y/x[46])),x[23])lerp(rm,rm.C0,rsc0*CFrame.new(x[1],-x[28]*math.cos(sine/x[41]),math.sin(sine/x[9])/x[9])*CFrame.Angles(-math.sin(sine/x[9])/x[44],-math.sin(sine/x[9])/x[39],(math.rad(x[24]+x[45]*math.cos(sine/x[41]))+rootpart.RotVelocity.Y/x[46])),x[23])lerp(rj,rj.C0,rootc0*CFrame.new(x[1],x[47]*math.cos(sine/x[41]),x[1])*CFrame.Angles(math.rad(x[9]+x[41]*math.cos(sine/x[41])),math.rad(x[1])+rootpart.RotVelocity.Y/x[46],math.rad(x[1]+x[24]*math.cos(sine/x[9])/x[43])+rootpart.RotVelocity.Y/x[46]),x[25])elseif Mode==x[20]then lerp(rlegm,rlegm.C0,rlc0*CFrame.Angles(math.rad(x[35]),math.rad(x[1]),math.rad(-x[1])),x[25])lerp(llegm,llegm.C0,llc0*CFrame.Angles(math.rad(-x[35]),math.rad(x[1]),math.rad(-x[1])),x[25])lerp(neck,neck.C0,neckc0*CFrame.Angles(math.rad(-x[35]),math.rad(x[1]),math.rad(-x[1])),x[25])lerp(lm,lm.C0,lsc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(math.rad(x[48]),math.rad(-x[30]),math.rad(-x[35])),x[25])lerp(rm,rm.C0,rsc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(math.rad(-x[48]),math.rad(-x[30]),math.rad(x[35])),x[25])lerp(rj,rj.C0,rootc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(math.rad(x[1]),math.rad(x[1]),math.rad(x[1])),x[25])elseif
Mode==x[49]then lerp(rlegm,rlegm.C0,rlc0*CFrame.new(x[1],x[21],-x[10])*CFrame.Angles(math.rad(x[50]),math.rad(-x[30]),math.rad(x[51])),x[25])lerp(llegm,llegm.C0,llc0*CFrame.new(x[1],x[34],-x[27])*CFrame.Angles(math.rad(x[35]),math.rad(x[24]),math.rad(-x[1])),x[25])lerp(neck,neck.C0,neckc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(math.rad(x[42])+-math.cos(sine/x[35])*x[52],math.rad(-x[53]),math.rad(-x[1])),x[25])lerp(lm,lm.C0,lsc0*CFrame.new(x[1],x[1],x[1])*CFrame.Angles(-math.rad(x[26])+-math.cos(sine/x[35])*x[54],math.rad(-x[35]),math.rad(-x[35])),x[25])lerp(rm,rm.C0,rsc0*CFrame.new(-x[25],-x[10],-x[10])*CFrame.Angles(math.rad(x[46])+-math.cos(sine/x[35])*x[54],math.rad(x[42]),math.rad(-x[29])),x[25])lerp(rj,rj.C0,rootc0*CFrame.new(x[1],x[3],-x[55])*CFrame.Angles(-math.rad(x[30]),math.rad(x[30]),math.rad(-x[1])),x[10])elseif Mode==x[56]then lerp(rlegm,rlegm.C0,rlc0*CFrame.new(x[10],x[1]+-math.cos(sine/x[26])*x[28],-x[57])*CFrame.Angles(math.rad(x[24]),math.rad(-x[40]),math.rad(x[24])),x[25])lerp(llegm,llegm.C0,llc0*CFrame.new(x[1],x[1]+-math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(-x[26]),math.rad(x[26]),math.rad(-x[24])),x[25])lerp(neck,neck.C0,neckc0*CFrame.new(x[1],x[1]+-math.cos(sine/x[26])*x[58],x[1])*CFrame.Angles(math.rad(x[1]),math.rad(-x[32]),math.rad(x[1])),x[25])lerp(rm,rm.C0,rsc0*CFrame.new(x[1],x[1]+math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(x[59])+math.cos(sine/x[26])*x[60],math.rad(x[1])+math.cos(sine/x[26])*x[60],math.rad(x[32])+math.cos(sine/x[26])*x[60]),x[25])lerp(lm,lm.C0,lsc0*CFrame.new(x[1],x[1]+math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(-x[32])+-math.cos(sine/x[26])*x[60],math.rad(-x[26])+-math.cos(sine/x[26])*x[60],math.rad(-x[26])+-math.cos(sine/x[26])*x[60]),x[25])lerp(rj,rj.C0,rootc0*CFrame.new(x[1],x[1]+math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(x[1]),math.rad(x[1]),math.rad(x[32])),x[25])elseif Mode==x[61]then lerp(rlegm,rlegm.C0,rlc0*CFrame.new(x[10],x[1]+-math.cos(sine/x[26])*x[28],-x[57])*CFrame.Angles(math.rad(x[1]),math.rad(-x[24]),math.rad(x[1])),x[25])lerp(llegm,llegm.C0,llc0*CFrame.new(x[1],x[1]+-math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(x[1]),math.rad(x[24]),math.rad(x[1])),x[25])lerp(neck,neck.C0,neckc0*CFrame.new(x[1],x[1]+-math.cos(sine/x[26])*x[58],x[1])*CFrame.Angles(math.rad(x[1]),math.rad(-x[24]),math.rad(x[1])),x[25])lerp(rm,rm.C0,rsc0*CFrame.new(x[1],x[1]+math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(x[62]),math.rad(-x[63]),math.rad(x[1])),x[25])lerp(lm,lm.C0,lsc0*CFrame.new(x[1],x[1]+math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(x[64]),math.rad(-x[65]),math.rad(-x[48])),x[25])lerp(rj,rj.C0,rootc0*CFrame.new(x[1],x[1]+math.cos(sine/x[26])*x[28],x[1])*CFrame.Angles(math.rad(x[1]),math.rad(x[1]),math.rad(x[24])),x[25])end;for V,B in next,DOTTED do spawn(function()if V.Health>x[1]then local G=B[x[66]]local K=B[x[67]]local Q=B[x[68]]local J=B[x[69]]local X=B[x[8]]if Q<x[3]then Q=x[3]end;if tick()-J>=X and K>x[1]and V and V.Parent and V.Health>x[1]then DOTTED[V].LastT=tick()local Z=getDPS()*x[70]Z
=Z*(Q) healHuman(hum,Z*.25,head) damageHuman(V,Z,V.Parent.Head,x[11])DOTTED[V].DPSX=DOTTED[V].DPSX+x[71]DOTTED[V].Tix=DOTTED[V].Tix-x[3]end end end)end;swait()end end)()createOrb()