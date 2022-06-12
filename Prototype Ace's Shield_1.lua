--i used stravants Beautifier so it might look a bit wonky
Meshes = {
	Blast = '20329976',
	Crown = '1323306',
	Ring = '3270017',
	Claw = '10681506',
	Crystal = '9756362',
	Coil = '9753878',
	Cloud = '1095708',
}
clangsounds = {
	'199149119',
	'199149109',
	'199149072',
	'199149025',
	'199148971'
}
hitsounds = {
	'199149137',
	'199149186',
	'199149221',
	'199149235',
	'199149269',
	'199149297'
}
blocksounds = {
	'199148933',
	'199148947'
}
armorsounds = {
	'199149321',
	'199149338',
	'199149367',
	'199149409',
	'199149452'
}
woosh = {
	Heavy1 = '320557353',
	Heavy2 = '320557382',
	Heavy3 = '320557453',
	Heavy4 = '199144226',
	Heavy5 = '203691447',
	Heavy6 = '203691467',
	Heavy7 = '203691492',
	Light1 = '320557413',
	Light2 = '320557487',
	Light3 = '199145095',
	Light4 = '199145146',
	Light5 = '199145887',
	Light6 = '199145913',
	Light7 = '199145841',
	Medium1 = '320557518',
	Medium2 = '320557537',
	Medium3 = '320557563',
	Medium4 = '199145204'
}
music = {--i like music a lot
	Breaking = '179281636',
	FinalReckoning = '357375770',
	NotDeadYet = '346175829',
	Intense = '151514610',
	JumpP1 = '160536628',
	JumpP2 = '60536666',
	SonsOfWar = '158929777',
	WrathOfSea = '165520893',
	ProtecTorsofEarth = '160542922',
	SkyTitans = '179282324',
	ArchAngel = '144043274',
	Anticipation = '168614529',
	TheMartyred = '186849544',
	AwakeP1 = '335631255',
	AwakeP2 = '335631297',
	ReadyAimFireP1 = '342455387',
	ReadyAimFireP2 = '342455399',
	DarkLordP1 = '209567483',
	DarkLordP2 = '209567529',
	BloodDrainP1 = '162914123',
	BloodDrainP2 = '162914203',
	DanceOfSwords = '320473062',
	Opal = '286415112',
	Calamity = '190454307',
	Hypnotica = '155968128',
	Nemisis = '160453802',
	Breathe = '276963903',
	GateToTheRift = '270655227',
	InfernalBeserking = '244143404',
	Trust = '246184492',
	AwakeningTheProject = '245121821',
	BloodPain = '242545577',
	Chaos = '247241693',
	NightmareFictionHighStake = '248062278',
	TheWhiteWeapon = '247236446',
	Gale = '256851659',
	ImperialCode = '256848383',
	Blitzkrieg = '306431437',
	RhapsodyRage = '348690251',
	TheGodFist = '348541501',
	BattleForSoul = '321185592',
	TheDarkColossus = '305976780',
	EmpireOfAngels = '302580452',
	Kronos = '302205297',
	Exorcist = '299796054',
	CrimsonFlames = '297799220',
	UltimatePower = '295753229',
	DrivingInTheDark = '295753229',
	AscendToPower = '293860654',
	GodOfTheSun = '293612495',
	DarkRider = '293861765',
	Vengeance = '293375555',
	SoundOfWar = '293376196',
	HellsCrusaders = '293012202',
	Legend = '293011823',
	RisingSouls = '290524959'
}
misc = {
	GroundSlam = '199145477',
	LaserSlash = '199145497',
	RailGunFire = '199145534',
	Charge1 = '199145659',
	Charge2 = '169380469',
	Charge3 = '169380479',
	EmptyGun = '203691822',
	GunShoot = '203691837',
	Stomp1 = '200632875',
	Stomp2 = '200632561',
	TelsaCannonCharge = '169445572',
	TelsaCannonShoot = '169445602',
	AncientHymm = '245313442'
}
wait(1 / 60)
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
--cam.CameraSubject = Head
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = 'none'
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 10--how long it will take for skill to cooldown
local co2 = 15
local co3 = 15
local co4 = 25
local inputserv = game:GetService('UserInputService')
local typing = false
local crit = false
local critchance = 2--critical chance percentage
local critdamageaddmin = 3--minimum amount of critical damage being added to regular damage
local critdamageaddmax = 7--maximum amount
local maxstamina = 100--max amount of stamina
local stamina = 0--stamina you start out with
local skill1stam = 10--how much stamina is needed for a skill
local skill2stam = 10
local skill3stam = 20
local skill4stam = 30
local recovermana = 3--how much mana per second
local defensevalue = 1--how much defense this character has
local speedvalue = 1--how much speed this character has
--speed is 16*speedvalue
local mindamage = 5--self explanatory
local maxdamage = 7--self explanatory
local damagevalue = 1--how much damage this character has
--damage is math.random(mindamage,maxdamage)*damagevalue
--damage(hit, mindamage, maxdamage, 1, 1, RootPart) 
--asd
local cn = CFrame.new-- make things easier :)
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)--color scheme for skills lol
--asd
local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()

--Angles For RootJoint And Hips `~`
local ch = Character
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0,1.6,0)
local LHCF = CFrame.fromEulerAnglesXYZ(0,-1.6,0)
--Save Shoulders/Hips 
RSH, LSH = nil, nil 
--Shoulders
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
--Hips
RH = ch.Torso["Right Hip"]
LH = ch.Torso["Left Hip"]
--
Player = Player 
ch = Character
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--
RW.Name = "RW"
RW.Part0 = ch.Torso 
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
-- 
LW.Name = "LW"
LW.Part0 = ch.Torso 
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end
function makelabel(par, text)
	local label = Instance.new('TextLabel', par)
	label.BackgroundTransparency = 1
	label.Size = ud(1, 0, 1, 0)
	label.Position = ud(0, 0, 0, 0)
	label.TextColor3 = c3(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansBold
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end
framesk1 = makeframe(scrn, .5, ud(.23, 0, .93, 0), ud(.26, 0, .06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, .5, ud(.5, 0, .93, 0), ud(.26, 0, .06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, .5, ud(.5, 0, .86, 0), ud(.26, 0, .06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, .5, ud(.23, 0, .86, 0), ud(.26, 0, .06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, '[3] Skill3')
text2 = makelabel(framesk2, '[4] Skill4')
text3 = makelabel(framesk3, "[2] Skill2")
text4 = makelabel(framesk4, '[1] Rush Charge')
staminabar = makeframe(scrn, .5, ud(.23, 0, .82, 0), ud(.26, 0, .03, 0), c3(61 / 255, 171 / 255, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(61 / 255, 171 / 255, 1))
staminatext = makelabel(staminabar, 'Mana')
healthbar = makeframe(scrn, .5, ud(.5, 0, .82, 0), ud(.26, 0, .03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 46 / 255, 49 / 255))
healthtext = makelabel(healthbar, 'Health')

local stats = Instance.new('Folder', Character)
stats.Name = 'Stats'
local block = Instance.new('BoolValue', stats)
block.Name = 'Block'
block.Value = false
local stun = Instance.new('BoolValue', stats)
stun.Name = 'Stun'
stun.Value = false
local defense = Instance.new('NumberValue', stats)
defense.Name = 'Defence'
defense.Value = defensevalue
local speed = Instance.new('NumberValue', stats)
speed.Name = 'Speed'
speed.Value = speedvalue
local damagea = Instance.new('NumberValue', stats)
damagea.Name = 'Damage'
damagea.Value = damagevalue

function atktype(s, e)
	coroutine.resume(coroutine.create(function()
		attacktype = e
		wait(1.5)
		attacktype = s
	end))
end

function turncrit()
	coroutine.resume(coroutine.create(function()
		print'CRITICAL!'
		crit = true
		wait(.25)
		crit = false
	end))
end

function subtractstamina(k)
	if stamina >= k then
		stamina = stamina - k
	end
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

function randomizer(percent)
	local randomized = math.random(0, 100)
	if randomized <= percent then
		return true
	elseif randomized >= percent then
		return false
	end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
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
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(pos, dir, maxl, ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore) 
end 
--Effects
function makeeffect(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
	local p = Instance.new('Part', par or workspace)
	p.CFrame = pos1
	p.Anchored = true
	p.Material = 'SmoothPlastic'
	p.CanCollide = false
	p.TopSurface = 0
	p.Size = Vector3.new(1, 1, 1)
	p.BottomSurface = 0
	p.Transparency = trans
	p.FormFactor = 'Custom'
	RemoveOutlines(p)
	local mesh = Instance.new('SpecialMesh', p)
	mesh.Scale = size
	if id ~= nil and type == nil then
		mesh.MeshId = 'rbxassetid://'..id
	elseif id == nil and type ~= nil then
		mesh.MeshType = type
	elseif id == nil and type == nil then
		mesh.MeshType = 'Brick'
	end
	coroutine.wrap(function()
		for i = 0, delay1, .1 do
			wait(1 / 60)
			p.CFrame = p.CFrame
			mesh.Scale = mesh.Scale + howmuch
			p.Transparency = p.Transparency + trans1
		end
		p:Destroy()
	end)()
	return p
end
function clangy(cframe)
	wait(1 / 60)
	local clang = {}
	local dis = 0
	local part = Instance.new('Part', nil)
	part.CFrame = cframe
	part.Anchored = true
	part.CanCollide = false
	part.BrickColor = BrickColor.new('New Yeller')
	part.FormFactor = 'Custom'
	part.Name = 'clanger'
	part.Size = Vector3.new(.2, .2, .2)
	part.TopSurface = 10
	part.BottomSurface = 10
	part.RightSurface = 10
	part.LeftSurface = 10
	part.BackSurface = 10
	part.FrontSurface = 10
	--part.Material='Neon'
	part:BreakJoints()
	local mesh = Instance.new('BlockMesh', part)
	coroutine.wrap(function()
		for i = 1, 7 do
			wait(1 / 60)
			dis = dis + .2
			local partc = part:clone()
			partc.Parent = workspace
			partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
			partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
			table.insert(clang, partc)
		end
		for i, v in pairs(clang) do
			coroutine.wrap(function()
				for i = 1, 10 do
					wait(.01)
					v.Transparency = v.Transparency + .1
				end
				v:destroy()
			end)()
		end
	end)()
end
--damage effects
function circle(color, pos1)
	local p = Instance.new('Part', m)
	p.BrickColor = BrickColor.new(color)
	p.CFrame = pos1
	p.Anchored = true
	p.Material = 'Plastic'
	p.CanCollide = false
	p.TopSurface = 0
	p.Size = Vector3.new(1, 1, 1)
	p.BottomSurface = 0
	p.Transparency = 0.35
	p.FormFactor = 'Custom'
	local mesh = Instance.new('CylinderMesh', p)
	mesh.Scale = Vector3.new(0, 0, 0)
	coroutine.wrap(function()
		for i = 0, 5, .1 do
			wait(1 / 60)
			p.CFrame = p.CFrame
			mesh.Scale = mesh.Scale + Vector3.new(.5, 0, .5)
			p.Transparency = p.Transparency + .025
		end
		p:Destroy()
	end)()
end
function firespaz1(color, pos1)
	local p = Instance.new('Part', m)
	p.BrickColor = BrickColor.new(color)
	p.CFrame = pos1
	p.Anchored = true
	p.Material = 'Plastic'
	p.CanCollide = false
	p.TopSurface = 0
	p.Size = Vector3.new(1, 1, 1)
	p.BottomSurface = 0
	p.Transparency = 0.5
	p.FormFactor = 'Custom'
	local mesh = Instance.new('BlockMesh', p)
	mesh.Scale = Vector3.new(1, 1, 1)
	coroutine.wrap(function()
		for i = 0, 15, .1 do
			wait(1 / 30)
			p.CFrame = p.CFrame * CFrame.new(0, .1, 0)
			mesh.Scale = mesh.Scale - Vector3.new(.1, .1, .1)
			p.Transparency = p.Transparency + .025
		end
		p:Destroy()
	end)()
end

function pickrandom(tablesa)
	local randomized = tablesa[math.random(1, #tablesa)]	
	return randomized
end
function sound(id, pitch, volume, par, last)
	local s = Instance.new('Sound', par or Torso)
	s.SoundId = 'rbxassetid://'..id
	s.Pitch = pitch or 1
	s.Volume = volume or 1
	wait()
	s:play()
	game.Debris:AddItem(s, last or 120)
end
function clangy(cframe)
	wait(1 / 60)
	local clang = {}
	local dis = 0
	local part = Instance.new('Part', nil)
	part.CFrame = cframe
	part.Anchored = true
	part.CanCollide = false
	part.BrickColor = BrickColor.new('New Yeller')
	part.FormFactor = 'Custom'
	part.Name = 'clanger'
	part.Size = Vector3.new(.2, .2, .2)
	part.TopSurface = 10
	part.BottomSurface = 10
	part.RightSurface = 10
	part.LeftSurface = 10
	part.BackSurface = 10
	part.FrontSurface = 10
	--part.Material='Neon'
	part:BreakJoints()
	local mesh = Instance.new('BlockMesh', part)
	coroutine.wrap(function()
		for i = 1, 7 do
			wait(1 / 60)
			dis = dis + .2
			local partc = part:clone()
			partc.Parent = workspace
			partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
			partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
			table.insert(clang, partc)
		end
		for i, v in pairs(clang) do
			coroutine.wrap(function()
				for i = 1, 10 do
					wait(.01)
					v.Transparency = v.Transparency + .1
				end
				v:destroy()
			end)()
		end
	end)()
end
--damage effects
--Effects
so = function(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		wait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

function makegui(cframe, text)
	local a = math.random(-10, 10) / 100
	local c = Instance.new("Part")
	c.Transparency = 1
	Instance.new("BodyGyro").Parent = c
	c.Parent = m
	c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
	local f = Instance.new("BodyPosition")
	f.P = 2000
	f.D = 100
	f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	f.position = c.Position + Vector3.new(0, 3, 0)
	f.Parent = c
	game:GetService("Debris"):AddItem(c, .5 + 6)
	c.CanCollide = false
	m.Parent = workspace
	c.CanCollide = false
	local bg = Instance.new('BillboardGui', m)
	bg.Adornee = c
	bg.Size = UDim2.new(1, 0, 1, 0)
	bg.StudsOffset = Vector3.new(0, 0, 0)
	bg.AlwaysOnTop = false
	local tl = Instance.new('TextLabel', bg)
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.Text = text
	tl.Font = 'SourceSansBold'
	tl.FontSize = 'Size42'
	if crit == true then
		tl.TextColor3 = Color3.new(180 / 255, 0, 0)
	else
		tl.TextColor3 = Color3.new(255, 180 / 255, 51 / 255)
	end
	tl.TextStrokeTransparency = 0
	tl.TextScaled = true
	tl.TextWrapped = true
	coroutine.wrap(function()
		wait(2)
		for i = 1, 10 do
			wait()
			tl.TextTransparency = tl.TextTransparency + .1
		end
	end)()
end

function tag(hum, Player)
	local creator = Instance.new('ObjectValue', hum)
	creator.Value = Player
	creator.Name = 'creator'
end
function untag(hum)
	if hum ~= nil then
		local tag = hum:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end

function tagPlayer(h)
	coroutine.wrap(function()
		tag(h, Player)
		wait(1)
		untag(h)
	end)()
end
function damage(hit, mind, maxd, knock, type, prop)
	--[[
		to apply it to a Player directly, make the first arg go to the Players Torso
		1 - normal type(damage and knockback)
		2 - drain type(damage no knockback)
		3 - lifesteal(absorbs hp) crit does not have an effect on how much life is absorbed
		4 - heal(heals target)
		5 - subtracts enemies defense
		6 - subtracts enemies speed
		7 -  
	]]
	if hit.Name:lower() == 'Hitbox' then
		local pos = CFrame.new(0, 1, -1)
		sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, Torso, 6)
		coroutine.wrap(function()
			for i = 1, 4 do
				clangy(Torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
			end
		end)()
	end
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for i, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if hit.Parent.Parent:FindFirstChild('Torso') ~= nil then
		h = hit.Parent.Parent:FindFirstChild('Humanoid')
	end
	if hit.Parent:IsA('Hat') then
		hit = hit.Parent.Parent:findFirstChild('Head')
	end
	local D = math.random(mind, maxd) * damagea.Value
	if h.Parent:FindFirstChild('Stats') then
		D = D / h.Parent:FindFirstChild('Stats').Defence.Value
	elseif not h.Parent:FindFirstChild('Stats') then
		D = D
	end
	if h then
		makegui(h.Parent.Head.CFrame, tostring(math.floor(D + .5)))
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if type == 1 then
			tagPlayer(h)
			local asd = randomizer(critchance)
			if asd == true then
				turncrit()
			end
			if crit == false then
				h.Health = h.Health - D
			else
				h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
			end
			so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
			local vp = Instance.new('BodyVelocity')
			vp.P = 500
			vp.maxForce = Vector3.new(math.huge, 0, math.huge)
			vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
			if knock > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif type == 2 then
			so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
			local asd = randomizer(critchance)
			if asd == true then
				turncrit()
			end
			if crit == false then
				h.Health = h.Health - D
			else
				h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
			end
			tagPlayer(h)
		elseif type == 3 then
			tagPlayer(h)
			local asd = randomizer(critchance)
			if asd == true then
				turncrit()
			end
			if crit == false then
				h.Health = h.Health - D
			else
				h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
			end
			Character.Humanoid.Health = Character.Humanoid.Health + D / 2
			so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
			for i = 1, 10 do
				firespaz1('Bright red', hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
			end
		elseif type == 4 then
			h.Health = h.Health + D
			so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
			circle('Dark green', h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
		end
	end
end

function subtrackstamina(k)
	if stamina >= k then
		stamina = stamina - k
	end
end

Handle=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,1,"Pastel light blue","Handle",Vector3.new(0.549599648, 1, 1.01160002))
Handleweld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0937860012, 0.00657367706, 0.00419616699, 5.96046448e-008, 0.999994755, 5.96095191e-008, 1, -5.96043037e-008, -4.8416058e-007, -4.8416058e-007, 5.96092349e-008, -1))
Hitbox=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,1,"Pastel light blue","Hitbox",Vector3.new(4.54959965, 0.600000024, 6.41160011))
Hitboxweld=CreateWeld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.200000048, -0.599998474, 0.100006104, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.728999913, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748267651, 0.374885559, -0.163708687, 0.259237081, -0.965813696, 8.29293697e-007, -1.94643121e-006, -1.38109544e-006, -1, 0.965813696, 0.259237081, -2.23792108e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.549599648, 1.16819978, 0.210000008))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.15255737e-007, -0.0840969086, -0.409217834, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.668091297, 1.44761658, 2.02336073, -0.259194463, 0.96582514, 3.82060307e-006, 4.7164408e-006, -2.69006023e-006, 1, 0.96582514, 0.259194463, -3.85800831e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.387033463, -0.748291492, -2.00602722, 0.932904124, 0.250400364, 0.258823335, -0.259233505, 0.965814769, -1.51112181e-006, -0.249975771, -0.0670942664, 0.96592468))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791927338, 0.0731578469, -2.68690491, 0.258355826, 0.96604985, 1.57819898e-006, 0.96604985, -0.258355826, 4.46641252e-006, 4.72251395e-006, 3.70695147e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748335838, 0.499908447, 0.236524105, 0.259243727, -0.965811968, 2.29213128e-006, 3.49563311e-006, 3.31156821e-006, 1, -0.965811968, -0.259243727, 4.23462734e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 1.31219983))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748334408, 0.354118347, -0.49246645, 0.259243727, -0.965811968, 2.42647434e-006, 3.57742101e-006, 3.47262016e-006, 1, -0.965811968, -0.259243727, 4.35537095e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748334885, -0.354110718, 1.22145891, 0.259243816, -0.965811849, 1.87510204e-006, -3.89473416e-006, -2.98690452e-006, -1, 0.965811849, 0.259243816, -4.53591747e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(1.16639984, 0.437400103, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419552326, 0.645721436, 0.748315811, 0.965813994, 0.259236038, -1.18782089e-006, 8.57471662e-007, 1.38739472e-006, 1, 0.259236038, -0.965813994, 1.1176777e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.728999913, 0.291599989))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.748250961, -1.10388184, 1.00268936, -0.259237349, 0.965813696, -2.95466089e-006, 2.05441142e-006, 3.61067669e-006, 1, 0.965813696, 0.259237349, -2.92020081e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(1.16639984, 0.729000032, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.273701668, -1.10388947, 0.748267174, 0.965814769, 0.259233236, -4.11742462e-007, 3.74089325e-007, 1.94579599e-007, 1, 0.259233236, -0.965814769, 9.09514597e-008))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.71172905, 1.08311462, 1.8220439, -0.258364588, -0.966047525, 4.46861804e-006, -1.88454442e-006, 5.12968245e-006, 1, -0.966047525, 0.258364588, -3.14588783e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.291137397, 0.791987419, -0.0103759766, -0.966036141, 0.258407384, 3.18614229e-006, -0.258407384, -0.966036141, -1.70527414e-006, 2.6372727e-006, -2.47067874e-006, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 2.04120016, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0733758211, 1.59341431, -0.791968346, -0.966033578, 0.258416891, -1.1448418e-006, -1.16560352e-006, 7.2865646e-008, 1, 0.258416891, 0.966033578, 2.30821001e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.291599959, 1.02060008))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791931152, -2.61401367, 0.509956539, 0.258375138, 0.966044664, -2.14422334e-006, 3.80396909e-006, -3.2369876e-006, -1, -0.966044664, 0.258375138, -4.51116148e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.04120016, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.711686134, -1.03097534, -1.82201755, 0.258405864, 0.966036499, -3.94140943e-006, -1.7037512e-006, 4.53571738e-006, 1, 0.966036499, -0.258405864, 2.81794178e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.04120016, 0.437399983))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.711735725, 1.03098297, 1.82195807, 0.258460104, 0.966022015, -2.66190364e-006, 1.11263591e-006, -3.05321805e-006, -1, -0.966022015, 0.258460104, -1.86396585e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.711661339, -1.09309554, 2.978508, -0.258407265, -0.966036081, 3.36418725e-006, 0.966036081, -0.258407265, -8.32808269e-007, 1.67385315e-006, 3.03472257e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.31173015, 0.791917801, -0.0103683472, -0.966039896, 0.258393317, -5.88560738e-007, -0.258393317, -0.966039896, -1.65475512e-006, -9.96150675e-007, -1.44647902e-006, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.280853271, -2.04826355, -0.791953087, -0.933117151, 0.249601856, 0.25882712, 0.25003624, -0.0668830872, 0.965923667, 0.258407503, 0.966036081, 2.45528014e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.801402152, -0.0103759766, -0.791955948, -0.966036141, 0.258407384, -2.41263734e-007, -2.7156463e-007, -8.15671228e-008, 1, 0.258407384, 0.966036141, 1.48971026e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.711751938, -0.947353661, 2.46820831, -0.258386463, -0.966041744, -1.42285126e-006, 0.966041744, -0.258386463, -3.87151067e-006, 3.37239476e-006, -2.37487916e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.711641312, -1.09310102, 2.85347748, 0.258411825, 0.96603483, -3.37836354e-006, 0.96603483, -0.258411825, 1.16675437e-006, 2.54116259e-007, -3.5651201e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.711715698, 0.94726485, -2.46821594, -0.258387119, -0.966041565, -1.17710044e-007, -0.966041565, 0.258387119, 2.52460541e-006, -2.40845884e-006, 7.66038113e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.728999913, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.792075157, 0.374885559, -0.000447571278, 0.258397371, 0.966038823, -3.81478458e-008, 1.99738133e-006, -5.73751208e-007, -1, -0.966038823, 0.258397371, -2.07780386e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.437399983, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.792011261, 2.24951172, 0.145552039, -0.258379161, -0.966043591, -2.21535828e-007, -4.39142241e-006, 9.4521215e-007, 1, -0.966043591, 0.258379161, -4.48652872e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.22946167, 0.791992188, -2.04825592, -0.933117151, 0.249601737, 0.258827031, -0.258407086, -0.966036141, 8.11744485e-007, 0.250036478, -0.066881977, 0.965923727))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.79108429, 0.791954994, -2.04824829, -0.933117151, 0.249601856, 0.25882712, -0.258407176, -0.966036081, 9.06736943e-007, 0.250036567, -0.0668819323, 0.965923727))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.711748123, 0.947217226, -2.34318542, 0.258388281, 0.966041148, 1.08739897e-007, -0.966041148, 0.258388281, -2.73797241e-006, -2.67309088e-006, 6.0241274e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.711779594, -0.947313726, 2.3431778, 0.258389086, 0.966040909, 1.36804704e-006, 0.966040909, -0.258389086, 4.12955433e-006, 4.34280719e-006, 2.54557619e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.79196167, 0.499908447, 0.0733489394, 0.258376598, 0.966044366, 1.46641844e-006, -4.57452143e-006, -2.94468009e-007, 1, 0.966044366, -0.258376598, 4.34310687e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 1.31219983))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791954994, 0.354118347, -0.655609488, 0.258398682, 0.966038465, 1.57091995e-006, -4.80159633e-006, -3.41801865e-007, 1, 0.966038465, -0.258398682, 4.55020563e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.248426437, 2.16902924, -0.79195118, -0.933116436, 0.249601498, -0.25883016, -0.25003925, 0.0668835416, 0.965922832, 0.258407265, 0.966036201, 3.19331264e-008))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(1.16639984, 0.729000032, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.436873257, -1.10388184, -0.79204464, -0.966035903, 0.25840804, -2.51160202e-007, -4.18471444e-008, 8.1551002e-007, 1, 0.25840804, 0.966035903, -7.7699832e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.728999913, 0.291599989))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.791975021, -1.10387421, 1.16587758, -0.258397251, -0.966038764, -2.16711919e-006, -3.48613889e-006, -1.31082766e-006, 1, -0.966038764, 0.258397251, -3.02903118e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.583199918, 0.291599989))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791950226, -1.15602112, 0.145350814, 0.258398414, 0.966038465, 1.00403645e-006, 4.74357103e-006, -2.29488592e-007, -1, -0.966038465, 0.258398414, -4.64177128e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791969299, -0.354118347, 1.38458776, 0.258398414, 0.966038465, 9.90328999e-007, 4.74258241e-006, -2.4341341e-007, -1, -0.966038465, 0.258398414, -4.64441473e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(1.7495997, 4.22819996, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.728473842, 0.0625152588, -0.711821556, -0.96603328, 0.258417934, -4.64850359e-007, -2.20301672e-007, 9.7528698e-007, 1, 0.258417934, 0.96603328, -8.85229781e-007))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.291599959, 1.16639984))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791952133, -1.01022339, 0.582776666, 0.258398414, 0.966038465, 9.73264605e-007, 4.68442522e-006, -2.45521846e-007, -1, -0.966038465, 0.258398414, -4.58877776e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.437399983, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791953087, -0.645729065, 1.23882413, 0.258398414, 0.966038465, 9.85365432e-007, 4.74521448e-006, -2.49255436e-007, -1, -0.966038465, 0.258398414, -4.64846698e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.758653641, 0.791967392, 2.16901398, -0.933116317, 0.249601379, -0.258830756, -0.258406103, -0.966036439, -4.07655898e-006, -0.250040919, 0.0668796301, 0.965922713))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(1.16639984, 0.437400103, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.582713842, 0.645721436, -0.791945457, -0.966035903, 0.258407861, -1.25082556e-006, -1.27987164e-006, 5.58177362e-008, 1, 0.258407861, 0.966035903, 2.76806929e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.291599929, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.792108536, -1.61417389, -0.000424981117, -0.258397162, -0.966038883, -2.09015161e-006, -3.05568869e-006, -1.34629158e-006, 1, -0.966038883, 0.258397162, -2.60403613e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.261831284, 0.7920084, 2.16902924, -0.933116376, 0.249601558, -0.258829921, -0.258406281, -0.966036439, -4.11973315e-006, -0.250040174, 0.0668794289, 0.965923011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748393536, 0.236421585, -2.68690491, 0.259242177, -0.965812325, 9.39434904e-006, -0.965812325, -0.259242177, 1.81594089e-006, 6.81553331e-007, -9.54394636e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.549599648, 0.200000003, 0.611599982))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.400000095, 0, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.633543015, -0.748318195, -2.00602722, 0.932904184, 0.250400394, 0.258823454, -0.259233505, 0.965814769, -1.53903522e-006, -0.24997583, -0.0670942515, 0.965924621))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.668150902, 1.32257843, 2.02337718, 0.259231716, -0.965815246, -5.59616274e-006, -2.02115484e-006, 5.25174482e-006, -1, 0.965815246, 0.259231716, -5.90643424e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.291599959, 1.16639984))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748328209, -1.01021576, 0.419537544, 0.259243816, -0.965811849, 1.82883696e-006, -3.7662528e-006, -2.90451476e-006, -1, 0.965811849, 0.259243816, -4.39046926e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.291599929, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.748274803, -1.61417389, -0.163676262, -0.259237617, 0.965813577, -2.98417535e-006, 1.98260818e-006, 3.62196397e-006, 1, 0.965813577, 0.259237617, -2.85377928e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.583199918, 0.291599989))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748350143, -1.15601349, -0.0178599358, 0.259243816, -0.965811849, 1.85960675e-006, -3.80946062e-006, -2.94797155e-006, -1, 0.965811849, 0.259243816, -4.44346597e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0908699036, 2.12680817, 0.748318195, 0.932903409, 0.250400096, -0.258826435, 0.24997808, 0.067097418, 0.965923846, 0.259234011, -0.96581459, 8.78642084e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601093292, -0.748310566, 2.12677765, 0.93290323, 0.250400156, -0.258826882, -0.259234697, 0.965814352, -3.2069297e-006, 0.249977916, 0.0670999065, 0.965923727))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(1.7495997, 4.22819996, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.565392971, 0.0625152588, 0.668135643, 0.965815246, 0.259231359, -4.91199387e-007, 4.8916678e-007, 7.23472908e-008, 1, 0.259231359, -0.965815246, -5.69332315e-008))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.437399983, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748342991, -0.645713806, 1.0756433, 0.259243816, -0.965811849, 1.8409371e-006, -3.99065493e-006, -2.97727752e-006, -1, 0.965811849, 0.259243816, -4.6260634e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.419418335, -0.748321056, 2.12680054, 0.932903469, 0.250400156, -0.258826196, -0.259234637, 0.965814352, -3.23053882e-006, 0.249977246, 0.0670997277, 0.965924025))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.549599648, 1.16819966, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.15255737e-007, -0.0840959549, 0.40423584, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748373508, -0.236422062, 2.68690491, 0.259242624, -0.965812266, 1.82163058e-006, 0.965812266, 0.259242624, -2.00591694e-006, 1.46509501e-006, 2.27937221e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.668161869, -1.08311462, -1.65887642, -0.259238631, 0.965813279, -4.12923669e-007, 2.22891821e-008, -4.21557132e-007, -1, -0.965813279, -0.259238631, 8.77566961e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.668140888, 1.08312225, 1.65885949, -0.259237617, 0.965813577, 3.65497885e-006, 3.96671521e-006, -2.71963154e-006, 1, 0.965813577, 0.259237617, -3.12607654e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.127997398, -0.748288631, -0.0103759766, 0.96581459, 0.259233892, 3.24961434e-006, -0.259233892, 0.96581459, -2.47951652e-006, -3.78129926e-006, 1.55234306e-006, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.668211937, -0.929962635, 2.97852325, -0.259212017, 0.965820491, 2.54913289e-006, -0.965820491, -0.259212017, -8.96806228e-007, -2.05387948e-007, -2.69446741e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.123281479, -2.00604248, 0.748316288, 0.932904124, 0.250400394, 0.258823514, -0.249975741, -0.0670948401, 0.965924621, 0.259233654, -0.96581471, 9.78878688e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14855218, -0.748366833, -0.0103759766, 0.965815067, 0.259231985, -7.14727889e-007, -0.259231985, 0.965815067, -2.50817857e-006, 4.00949318e-008, 2.60771685e-006, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.728999913, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.04120016, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.668152809, -1.03097534, -1.65887117, 0.259237349, -0.965813637, -3.15378566e-006, 3.45980902e-006, -2.33675905e-006, 1, -0.965813637, -0.259237349, 2.73575552e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.04120016, 0.437399983))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.66814518, 1.03097534, 1.65886927, 0.259237885, -0.965813518, -1.87370847e-006, -2.21794357e-006, 1.34470429e-006, -1, 0.965813518, 0.259237885, -1.79352128e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.668205738, -0.930031061, 2.85346985, 0.259222269, -0.96581769, -2.60306479e-006, -0.96581775, -0.259222299, 1.14704233e-006, -1.7826062e-006, 2.21674713e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 2.04120016, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.236513138, 1.59341431, 0.748343468, 0.965813994, 0.259236038, -1.21717028e-006, 8.87492035e-007, 1.38876521e-006, 1, 0.259236038, -0.965813994, 1.11121904e-006))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.711784363, 1.44760895, 2.18656635, -0.258395731, -0.96603924, 3.16468504e-006, 7.73344993e-007, 3.06908441e-006, 1, -0.96603924, 0.258395731, -4.59567389e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.791934013, -0.0731610656, 2.68690491, 0.258360416, 0.966048717, 8.7551814e-007, -0.966048717, 0.258360416, -1.93419714e-006, -2.09472728e-006, -3.46073136e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.668188095, 0.784166813, -2.46821594, -0.259239137, 0.96581322, -9.58106966e-007, 0.96581322, 0.259239137, 2.45358251e-006, 2.61808077e-006, -2.89287811e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.711663246, -1.08311462, -1.82211637, -0.258347362, -0.966052175, 4.26980762e-007, -6.51804299e-008, -4.24554258e-007, -1, 0.966052175, -0.258347362, 4.67147743e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.66814518, -0.784229279, 2.34318542, 0.259237558, -0.965813577, 2.15522095e-006, -0.965813577, -0.259237558, 4.15574686e-006, -3.45496255e-006, -3.15886746e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.711732864, 1.32258606, 2.18660164, 0.258424789, 0.966031373, -5.72344379e-006, 2.51068946e-006, -6.59633633e-006, -1, -0.966031373, 0.258424789, -4.13006182e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.437399983, 0.291599929))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.748332024, 2.24951172, -0.0176463127, -0.259235293, 0.965814173, -1.04926676e-006, 3.99967757e-006, 2.15996465e-006, 1, 0.965814173, 0.259235293, -4.42288456e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.668171883, 0.784127712, -2.34318542, 0.259238124, -0.965813458, 8.95987228e-007, 0.965813458, 0.259238124, -2.76424407e-006, 2.4374699e-006, 1.58195394e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.63828373, -0.0103759766, 0.748314857, 0.96581459, 0.259233892, -1.77737036e-007, -7.47181232e-008, 9.63997763e-007, 1, 0.259233892, -0.96581459, 9.50412584e-007))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.728999913))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Ice,0,0,"Pastel light blue","Part",Vector3.new(0.200000003, 0.291599959, 1.02060008))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748323441, -2.61401367, 0.346779823, 0.259239912, -0.965812981, -1.30390742e-006, -4.67701739e-006, 9.46744763e-008, -1, 0.965812981, 0.259239912, -4.49258096e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.728999913, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.668186665, -0.784234047, 2.46820831, -0.259239942, 0.965813041, -2.21002483e-006, -0.965813041, -0.259239942, -3.84502073e-006, -4.28649719e-006, 1.1376876e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

function attackone()
attack = true
Hitbox.CanCollide = true
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .33)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .33)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.4) * angles(math.rad(85), math.rad(0), math.rad(-70)), .33)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(80), math.rad(0), math.rad(45)), .33)
RH.C0=clerp(RH.C0,cn(1,-1,0)*RHCF*angles(math.rad(-5),math.rad(-20),math.rad(0)),.33)
LH.C0=clerp(LH.C0,cn(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(-20),math.rad(0)),.33)
end
RootPart.Velocity = RootPart.CFrame.lookVector* 70
for i = 0,1,0.13 do
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), .5)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-60)), .5)
RW.C0 = clerp(RW.C0, CFrame.new(1.7, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), .5)
LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.5, -.5)*CFrame.new(0, 0, -.5) * angles(math.rad(80), math.rad(0), math.rad(70)), .5)
RH.C0=clerp(RH.C0,cn(1,-1,0)*RHCF*angles(math.rad(-10),math.rad(-30),math.rad(-10)),.5)
LH.C0=clerp(LH.C0,cn(-1,-1,0)*LHCF*angles(math.rad(-10),math.rad(-30),math.rad(10)),.5)
end
Hitbox.CanCollide = false
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .33)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-60)), .33)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.7) * angles(math.rad(85), math.rad(0), math.rad(-70)), .33)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(20), math.rad(0), math.rad(-10)), .33)
RH.C0=clerp(RH.C0,cn(1,-1,0)*RHCF*angles(math.rad(-5),math.rad(-30),math.rad(0)),.33)
LH.C0=clerp(LH.C0,cn(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(-30),math.rad(0)),.33)
end
for i = 0,1,0.12 do
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .35)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(80)), .35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), .35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(20), math.rad(0), math.rad(-80)), .35)
RH.C0=clerp(RH.C0,cn(1,-1,0)*RHCF*angles(math.rad(-10),math.rad(30),math.rad(0)),.35)
LH.C0=clerp(LH.C0,cn(-1,-1,0)*LHCF*angles(math.rad(-10),math.rad(30),math.rad(0)),.35)
end
attack = false
end

function OrbEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CanCollide=false
	prt.CFrame = cframe*cn(0,-1,0)*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			wait(0)
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x2, y2, z2)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Shockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe*cn(0,-1,0)
	--prt.Material = "Neon"
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			wait(0)
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function attackthree()
attack = true
for i = 0,1,0.1 do
wait()
OrbEffect(Hitbox.BrickColor,cn(LeftArm.Position)*CFrame.new(0,1,-1),.5,.5,.5,.5,.5,.5,0.2)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .33)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), .33)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), .33)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(85), math.rad(0), math.rad(-60)), .33)
RH.C0=clerp(RH.C0,cn(1,-1,0)*RHCF*angles(math.rad(-5),math.rad(40),math.rad(0)),.33)
LH.C0=clerp(LH.C0,cn(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(40),math.rad(0)),.33)
end
RootPart.Velocity = RootPart.CFrame.lookVector* -70
for i = 1,3 do
Shockwave(Hitbox.BrickColor,cn(LeftArm.Position)*CFrame.new(0,1,-1),1,1,1,1,1,1,0.05)
OrbEffect(Hitbox.BrickColor,cn(LeftArm.Position)*CFrame.new(0,1,-1),1,1,1,1,1,1,0.05)
end
for i = 0,1,0.13 do
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-4), math.rad(0), math.rad(40)), .33)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-40)), .33)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), .33)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(120), math.rad(0), math.rad(30)), .33)
RH.C0=clerp(RH.C0,cn(1,-1,0)*RHCF*angles(math.rad(-10),math.rad(-40),math.rad(5)),.33)
LH.C0=clerp(LH.C0,cn(-1,-1,0)*LHCF*angles(math.rad(-10),math.rad(-40),math.rad(-5)),.33)
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and attacktype == 3 then
attacktype = 1
attackthree()
end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
end)


inputserv.InputBegan:connect(function(k)
	if k.KeyCode == Enum.KeyCode.One and typing == false and cooldown3 >= co1 and stamina >= skill1stam then
	elseif k.KeyCode == Enum.KeyCode.Two and typing == false and cooldown3 >= co2 and stamina >= skill2stam then
	elseif k.KeyCode == Enum.KeyCode.Three and typing == false and cooldown3 >= co3 and stamina >= skill3stam then
	elseif k.KeyCode == Enum.KeyCode.Four and typing == false and cooldown3 >= co4 and stamina >= skill4stam then
	end
end)

inputserv.InputBegan:connect(function(k)
	if k.KeyCode == Enum.KeyCode.Slash then
		local fin = nil
		typing = true
		fin = inputserv.InputBegan:connect(function(k)
			if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
				typing = false
				fin:disconnect()
			end
		end)
	end
end)

function updateskills()
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 1 / 30
	end
	if cooldown2 <= co2 then
		cooldown2 = cooldown2 + 1 / 30
	end
	if cooldown3 <= co3 then
		cooldown3 = cooldown3 + 1 / 30
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 1 / 30
	end
	if stamina <= maxstamina then
		stamina = stamina + recovermana / 30
	end
end

game:GetService'RunService'.Heartbeat:connect(function()
	updateskills()
	healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), 'Out', 'Quad', .5)
	staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), 'Out', 'Quad', .5)
	bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), 'Out', 'Quad', .5)
	bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), 'Out', 'Quad', .5)
	bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), 'Out', 'Quad', .5)
	bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), 'Out', 'Quad', .5)
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	Character.Humanoid.WalkSpeed = 16 * speed.Value
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil and stun.Value ~= true then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.3) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.8, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil and stun.Value ~= true then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.15+0.1*math.cos(sine/15)) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10-2*math.cos(sine/15)), math.rad(0), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(65), math.rad(30), math.rad(-30+5*math.cos(sine/15))), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10-3*math.cos(sine/15)), math.rad(0), math.rad(-10-3*math.cos(sine/15))), .3)
                RH.C0=clerp(RH.C0,cn(1.05,-.8-0.1*math.cos(sine/15),0)*RHCF*angles(math.rad(-3-3*math.cos(sine/15)),math.rad(30),math.rad(0)),.3)
                LH.C0=clerp(LH.C0,cn(-1.05,-.8-0.1*math.cos(sine/15),0)*LHCF*angles(math.rad(-3-3*math.cos(sine/15)),math.rad(30),math.rad(0)),.3)
			end
		elseif Torsovelocity > 2 and hit ~= nil and stun.Value ~= true then
			Anim = "Walk"
			if attack == false then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10+1*math.cos(sine/15)), math.rad(0), math.rad(0+3*math.cos(sine/15))), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5-1*math.cos(sine/15)), math.rad(0), math.rad(0-1*math.cos(sine/15))), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(50+1*math.cos(sine/15)), math.rad(0), math.rad(20+3*math.cos(sine/15))), .3)
				LW.C0=clerp(LW.C0,CFrame.new(-1.45+.1*math.cos(sine/15),0.5,0-.1*math.cos(sine/15))*angles(math.sin(40)*math.cos(sine/15),math.rad(0),math.rad(-10+1*math.cos(sine/15))),.3)
                RH.C0=clerp(RH.C0,cn(1,-1,0-0.5*math.cos(sine/15)/2)*RHCF*angles(math.rad(-3),math.rad(0),math.rad(40*math.cos(sine/15))),.3)
                LH.C0=clerp(LH.C0,cn(-1,-1,0+0.5*math.cos(sine/15)/2)*LHCF*angles(math.rad(-3),math.rad(0),math.rad(40*math.cos(sine/15))),.3)
			end
		end
	end
end)