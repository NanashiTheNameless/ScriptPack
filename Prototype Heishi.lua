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
local Effects = {}
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

--Angles For RootJoint `~`
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
--Save Shoulders/Hips 
RSH, LSH = nil, nil 
RHS, LHS = nil, nil 
--Shoulders
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
--Hips
RH = Instance.new("Weld") 
LH = Instance.new("Weld")
--
Player = Player 
ch = Character
LHS = Torso["Left Hip"]
RHS = Torso["Right Hip"]
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--
LHS.Parent = nil
RHS.Parent = nil
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
--
LH.Name = "LH"
LH.Part0 = ch.Torso 
LH.C0 = cn(-0.5, -2, 0) 
LH.Part1 = ch["Left Leg"] 
LH.Parent = ch.Torso 
--
RH.Name = "RH"
RH.Part0 = ch.Torso 
RH.C0 = cn(0.5, -2, 0)
RH.Part1 = ch["Right Leg"] 
RH.Parent = ch.Torso 

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
text4 = makelabel(framesk4, '[q] Jikishi')
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
gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 1e7
gyro.D = 1e3
gyro.MaxTorque = Vector3.new(0,1e7,0)

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

function CheckClose(Obj,Dist)
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Character then
			local DistFromTorso = (v.Torso.Position - Obj.Position).magnitude
			if DistFromTorso < Dist then
				return v
			end
		end
	end
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

HandleA=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleA",Vector3.new(0.200000003, 0.256000012, 0.896000028))
HandleAweld=CreateWeld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.96914959, -0.0125427246, 0.385789871, 1.75864163e-012, -0.999996305, 5.21540642e-007, 1, 1.75863566e-012, 9.87516926e-013, -9.87517793e-013, 5.21538709e-007, 1))
CreateMesh("BlockMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
HandleB=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleB",Vector3.new(0.200000003, 0.256000012, 0.896000028))
HandleBweld=CreateWeld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.96914959, -0.0415725708, 0.385789871, 1.75864163e-012, -0.999996305, 5.21540642e-007, 1, 1.75863566e-012, 9.87516926e-013, -9.87517793e-013, 5.21538709e-007, 1))
CreateMesh("BlockMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
FakeHandleA=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","FakeHandleA",Vector3.new(0.200000003, 0.256000012, 0.496000051))
FakeHandleAweld=CreateWeld(m,HandleA,FakeHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -2.70708814e-020, 0, -2.70708814e-020, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",FakeHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
BarrelA=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","BarrelA",Vector3.new(0.200000003, 0.200000003, 0.512000024))
BarrelAweld=CreateWeld(m,FakeHandleA,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00650787354, -0.375404358, -2.42294502, 4.16033035e-005, -1, 4.46682229e-008, 4.43546014e-007, -4.46531985e-008, -1, 1, 4.16033035e-005, 4.43542376e-007))
CreateMesh("SpecialMesh",BarrelA,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.153600022, 0.140799999, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.28000021))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.119544983, -0.121589661, 1.78291702, -6.37476187e-005, 4.76194713e-013, 0.999996901, -5.47054914e-013, 0.999996901, -7.60343774e-013, -1, -8.91774122e-013, -5.38835739e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.640000045, 0.384000033, 0.339200079))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247545242, 0.00640106201, 0.630371094, -6.47408015e-005, 7.84722764e-014, 0.999998569, -3.66998706e-012, 0.999998569, -1.63487659e-013, -1, -3.82280969e-012, -6.01361753e-005))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.128004074, 0.192035675, -1.79853174e-007, -1, -1.51764738e-007, 0.499996454, -2.21358675e-007, 0.866026282, -0.866026223, 7.98759316e-008, 0.499996454))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78546047, -0.370124817, -0.202838898, -0.99999994, -2.91117576e-005, -0.00038461131, 0.000389215566, 2.89187028e-005, -0.99999851, 2.91230535e-005, -0.999998569, -2.89075051e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.115200005, 0.115200005, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.339200139))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503520966, 0.00640106201, 0.969585419, -9.1756061e-005, 4.99451825e-014, 1, -2.86708916e-012, 1, -5.020821e-014, -1, -2.86709372e-012, -9.1756061e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.512000024, 0.200000003, 0.339200139))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.311544418, -0.12159729, 0.969573975, -6.47460765e-005, -6.7951287e-015, 0.999998569, -3.65221698e-012, 0.999998569, -2.48750727e-013, -1, -3.84057283e-012, -6.01309002e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.384000033, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375535965, -0.121589661, 1.20691872, -6.56298071e-005, 4.76194442e-013, 1, -4.9733736e-013, 1, -4.76227022e-013, -1, -4.97368585e-013, -6.56298071e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.704000056))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.256000012, 0.384000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.127998352, 0, 0.255999565, 0.499999821, 1.38461152e-011, 0.866025269, -1.16909017e-011, 1, -9.23837656e-012, -0.866025209, -5.50542771e-012, 0.499999821))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.128002167, 2.67028809e-005, 2.98034593e-007, -1, 7.74869136e-007, 0.500002921, 8.20073808e-007, 0.866023064, -0.866023004, 1.29332093e-007, 0.500002921))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.640000105))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.243200049, 0.512000024))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 7.62939453e-006, -0.447894096, 0.499994576, 3.01597532e-011, 0.866018713, -2.50146275e-011, 0.999995053, -2.05416344e-011, -0.866017878, -1.14053853e-011, 0.499993682))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.256000012, 0.200000003, 0.249600157))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52622414, 0.138786316, 0.999559402, -0.707390428, -2.36573001e-012, 0.706825316, 7.26157936e-012, 0.999998569, 1.03766258e-011, -0.706822991, 1.242495e-011, -0.707386136))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.384000033, 0.640000045, 0.640000045))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247411728, 0.00640106201, 0.480004311, -1.30890949e-005, 9.87543597e-013, 1, 2.16009654e-012, 1, -9.87514866e-013, -1, 2.16008418e-012, -1.30890949e-005))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.512000024, 0.200000003, 0.339200139))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.311553955, 0.134399414, 0.969578743, -7.60540061e-005, -6.8364368e-015, 1, -3.32184042e-012, 1, 6.58381769e-015, -1, -3.32183955e-012, -7.60540061e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.480007172, -0.247407913, -0.185581207, 1, 4.16033035e-005, -4.7685171e-007, -4.76891728e-007, 9.65081313e-007, -1, -4.16033035e-005, 1, 9.65104618e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.320000023, 0.320000023, 2.08639956))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.256000012, 0.200000003, 0.249600157))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52619648, -0.125507355, 0.999582291, -0.707382321, -9.27554908e-013, 0.706833422, 8.0601914e-012, 0.999998569, 9.14097357e-012, -0.706831098, 1.21153313e-011, -0.70737803))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78546524, -0.370138168, 0.181156158, -0.99999994, -2.91117576e-005, -0.00038461131, 0.000389215566, 2.89187028e-005, -0.99999851, 2.91230535e-005, -0.999998569, -2.89075051e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.115200005, 0.115200005, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.256000012, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-006, 0, -0.448005676, 0.499998838, 4.82502233e-012, 0.866024554, -2.13518244e-012, 1, -4.3588232e-012, -0.866024792, 4.25874071e-013, 0.499998927))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -4.29153442e-005, 0.127996445, -2.58063409e-007, -1, 4.14316702e-007, 0.866026998, -4.30647162e-007, -0.499996841, 0.499996811, 2.29778649e-007, 0.866026998))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.640000105))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.128002167, 0.0639677048, -8.49376818e-007, 1, -1.90735591e-006, 0.500001371, 2.07650851e-006, 0.866023898, 0.866023898, -2.18100411e-007, -0.50000149))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78546524, -0.370138168, 0.181156158, -0.99999994, -2.91117576e-005, -0.00038461131, 0.000389215566, 2.89187028e-005, -0.99999851, 2.91230535e-005, -0.999998569, -2.89075051e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0768000111, 0.0896000117, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.256000012, 0.384000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.128002167, 0, -0.255997658, 0.499999672, 1.36613611e-011, 0.866024077, -1.16269529e-011, 1, -9.08205802e-012, -0.866024315, -5.43262137e-012, 0.499999762))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.256000012, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0639648438, 0.127994537, 6.71324528e-007, 0.999995053, 5.07118841e-007, -0.866017222, 3.278262e-007, 0.499994814, 0.499995708, -7.74842817e-007, 0.866018057))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.640000105))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.512000024, 0.200000003, 0.384000033))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0724544525, 0.735972404, -0.00640106201, -6.44168395e-005, 3.14877468e-007, 0.999998569, -1, -5.96083751e-008, -5.98121624e-005, 5.95880181e-008, -0.999998569, 3.14881191e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.256000012, 0.200000003, 1.61920011))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0555686951, 0.00640106201, 1.60957241, -7.2596129e-005, 5.00198841e-014, 0.999998569, -3.4390624e-012, 0.999998569, -1.35049524e-013, -1, -3.59188373e-012, -6.79914956e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.256000012, 0.896000028))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.49999997, 1.38461196e-011, 0.866025507, -1.16909017e-011, 1, -9.23837656e-012, -0.866025448, -5.50543031e-012, 0.49999997))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.640000045, 0.640000045, 0.640000045))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247545242, 0.00640106201, 0.4799757, -6.47454726e-005, -6.7951287e-015, 0.999998569, -3.65221698e-012, 0.999998569, -2.48750727e-013, -1, -3.84057283e-012, -6.01315041e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.200000003, 1.1456002))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375492096, 0.134399414, 1.85013199, -3.86866304e-005, 4.47896277e-013, 0.999998569, -4.51189823e-012, 0.999998569, -5.32840699e-013, -1, -4.66473214e-012, -3.40820479e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.200000003, 1.1456002))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375541687, -0.121589661, 1.85011864, -6.34202806e-005, 4.76195092e-013, 0.999997139, -5.54160559e-013, 0.999997139, -7.60344316e-013, -1, -8.84668803e-013, -5.42109265e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.256000012, 0.200000003, 0.384000033))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.369918823, 2.35839176, -0.00639343262, -6.70053632e-005, 3.14878548e-007, 1, -1, -5.96450818e-008, -6.70053632e-005, 5.96239929e-008, -1, 3.14882556e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672000051, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78545761, -0.370113373, -0.202846527, -1, -2.91119595e-005, -0.000384613872, 0.000384613057, 2.89192758e-005, -1, 2.91230808e-005, -1, -2.89080763e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0768000111, 0.0896000117, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.61920011))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00845146179, 0.134399414, 1.60957241, -6.47431807e-005, -6.7951287e-015, 0.999998569, -3.65221698e-012, 0.999998569, -2.48750727e-013, -1, -3.84057283e-012, -6.01337961e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.512000024, 1.61920011, 0.384000033))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0725307465, 1.60959148, -0.00640106201, -2.98303694e-005, 3.14878463e-007, 1, -1, -5.96094196e-008, -2.98303694e-005, 5.96000334e-008, -1, 3.14880253e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.640000045, 0.384000033, 0.640000045))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247545242, 0.00640106201, 0.4799757, -6.47453999e-005, -6.7951287e-015, 0.999998569, -3.65221698e-012, 0.999998569, -2.48750727e-013, -1, -3.84057283e-012, -6.01315769e-005))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503547668, 0.00639343262, 1.20689487, -0.000104134786, 2.20283698e-013, 1, -2.54377313e-012, 1, -2.20548514e-013, -1, -2.54379612e-012, -0.000104134786))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 0.704000056))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.479990959, -0.247407913, 0.198421478, 1, 4.16033035e-005, -4.7685171e-007, -4.76891728e-007, 9.65081313e-007, -1, -4.16033035e-005, 1, 9.65104618e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.320000023, 0.320000023, 2.08639956))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.256000012, 0.384000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.127994537, 0, -0.25599575, 0.500000298, 1.36755893e-011, 0.866025329, -1.15810217e-011, 1, -9.1049026e-012, -0.866025269, -5.47700297e-012, 0.500000298))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.384000033, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.3754673, 0.134399414, 1.20693207, -3.41913183e-005, 4.47918449e-013, 0.999998569, -4.64334864e-012, 0.999998569, -5.32845794e-013, -1, -4.79617995e-012, -2.9586743e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.704000056))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.479964256, -0.247545242, 0.262424469, 1, 4.16032526e-005, 6.01762658e-005, 6.47900524e-005, 9.65080972e-007, -0.999998569, -4.16033727e-005, 0.999998569, 9.62580543e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.243199989, 0.243199989, 1.47199988))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.200000003, 1.1456002))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375528336, 0.00639343262, 1.84636974, -0.000123670645, 5.04564869e-013, 0.999998569, -2.03210604e-012, 0.999998569, -5.896105e-013, -1, -2.18498808e-012, -0.000119065939))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.28000021))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.119522095, 0.134399414, 1.78292942, -4.50793596e-005, 4.19445891e-013, 1, -4.32361742e-012, 1, -4.19640776e-013, -1, -4.3236365e-012, -4.50793596e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.479986191, -0.247545242, -0.249576569, 1, 4.16032526e-005, 6.01762658e-005, 6.47900524e-005, 9.65080972e-007, -0.999998569, -4.16033727e-005, 0.999998569, 9.62580543e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.243199989, 0.243199989, 1.47199988))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.61920011))
Partweld=CreateWeld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00845146179, -0.12159729, 1.60957241, -6.47456545e-005, -6.7951287e-015, 0.999998569, -3.65221698e-012, 0.999998569, -2.48750727e-013, -1, -3.84057283e-012, -6.01313222e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
FakeHandleB=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","FakeHandleB",Vector3.new(0.200000003, 0.256000012, 0.496000051))
FakeHandleBweld=CreateWeld(m,HandleB,FakeHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -2.70708814e-020, 0, -2.70708814e-020, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",FakeHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.61920011))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00845146179, -0.121593475, 1.60957336, -6.47457127e-005, -6.3638656e-014, 0.999998569, -3.63800266e-012, 0.999998569, -3.0559317e-013, -1, -3.85478368e-012, -6.0131264e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.28000021))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.119544983, -0.121589661, 1.78291702, -6.37476187e-005, 4.76194713e-013, 0.999996901, -5.47054914e-013, 0.999996901, -7.60343774e-013, -1, -8.91774122e-013, -5.38835739e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.640000045, 0.384000033, 0.339200079))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247545242, 0.00640869141, 0.630371094, -6.47408015e-005, 7.84722764e-014, 0.999998569, -3.66998706e-012, 0.999998569, -1.63487659e-013, -1, -3.82280969e-012, -6.01361753e-005))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.128002167, 0.192035675, -1.79853174e-007, -1, -1.51764738e-007, 0.499996454, -2.21358675e-007, 0.866026282, -0.866026223, 7.98759316e-008, 0.499996454))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78546143, -0.370124817, -0.202846527, -0.99999994, -2.91117576e-005, -0.00038461131, 0.000389215566, 2.89187028e-005, -0.99999851, 2.91230535e-005, -0.999998569, -2.89075051e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.115200005, 0.115200005, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.339200139))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503541946, 0.00639343262, 0.969587326, -8.2750259e-005, -6.86213239e-015, 1, -3.11578432e-012, 1, 6.60430911e-015, -1, -3.11578346e-012, -8.2750259e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.512000024, 0.200000003, 0.339200139))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.311544418, -0.121593475, 0.969573975, -6.47620036e-005, -6.36387644e-014, 0.999998569, -3.63800266e-012, 0.999998569, -3.0559317e-013, -1, -3.85478368e-012, -6.01149695e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.384000033, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.3754673, -0.121593475, 1.20693207, -3.53266842e-005, 4.76335334e-013, 1, -4.61138289e-012, 1, -4.76498127e-013, -1, -4.6113998e-012, -3.53266842e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.704000056))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.256000012, 0.384000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.127998352, 0, 0.255999565, 0.499999821, 1.38461152e-011, 0.866025269, -1.16909017e-011, 1, -9.23837656e-012, -0.866025209, -5.50542771e-012, 0.499999821))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.128002167, 2.67028809e-005, 2.98034593e-007, -1, 7.74869136e-007, 0.500002921, 8.20073808e-007, 0.866023064, -0.866023004, 1.29332093e-007, 0.500002921))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.640000105))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.243200049, 0.512000024))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 1.52587891e-005, -0.447894096, 0.499994576, 3.01597532e-011, 0.866018713, -2.50146275e-011, 0.999995053, -2.05416344e-011, -0.866017878, -1.14053853e-011, 0.499993682))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.256000012, 0.200000003, 0.249600157))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52622414, 0.138793945, 0.999559402, -0.707390428, -2.36573001e-012, 0.706825316, 7.26157936e-012, 0.999998569, 1.03766258e-011, -0.706822991, 1.242495e-011, -0.707386136))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.384000033, 0.640000045, 0.640000045))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247411728, 0.00640106201, 0.480004311, -1.30890949e-005, 9.87543597e-013, 1, 2.16009654e-012, 1, -9.87514866e-013, -1, 2.16008418e-012, -1.30890949e-005))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.512000024, 0.200000003, 0.339200139))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.311553955, 0.134407043, 0.969582558, -7.60542825e-005, -6.36801809e-014, 1, -3.30763455e-012, 1, 6.3428646e-014, -1, -3.30762999e-012, -7.60542825e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.480007172, -0.247407913, -0.185573578, 1, 4.16033035e-005, -4.7685171e-007, -4.76891728e-007, 9.65081313e-007, -1, -4.16033035e-005, 1, 9.65104618e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.320000023, 0.320000023, 2.08639956))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.256000012, 0.200000003, 0.249600157))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52619648, -0.12550354, 0.999582291, -0.707382321, -9.27554908e-013, 0.706833422, 8.0601914e-012, 0.999998569, 9.14097357e-012, -0.706831098, 1.21153313e-011, -0.70737803))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78546524, -0.370138168, 0.181156158, -0.99999994, -2.91117576e-005, -0.00038461131, 0.000389215566, 2.89187028e-005, -0.99999851, 2.91230535e-005, -0.999998569, -2.89075051e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.115200005, 0.115200005, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.256000012, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0, -0.44802475, 0.499999821, 2.87913812e-012, 0.866025627, -5.11821054e-013, 1, -3.0290436e-012, -0.866025567, 1.07127198e-012, 0.499999821))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -4.29153442e-005, 0.127996445, -2.58063409e-007, -1, 4.14316702e-007, 0.866026998, -4.30647162e-007, -0.499996841, 0.499996811, 2.29778649e-007, 0.866026998))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.640000105))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.128002167, 0.0639677048, -8.49376818e-007, 1, -1.90735591e-006, 0.500001371, 2.07650851e-006, 0.866023898, 0.866023898, -2.18100411e-007, -0.50000149))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78546524, -0.370138168, 0.181156158, -0.99999994, -2.91117576e-005, -0.00038461131, 0.000389215566, 2.89187028e-005, -0.99999851, 2.91230535e-005, -0.999998569, -2.89075051e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0768000111, 0.0896000117, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.256000012, 0.384000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.128002167, 7.62939453e-006, -0.255997658, 0.499999672, 1.36613611e-011, 0.866024077, -1.16269529e-011, 1, -9.08205802e-012, -0.866024315, -5.43262137e-012, 0.499999762))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.256000012, 0.256000012, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.0639648438, 0.127996445, 6.71324528e-007, 0.999995053, 5.07118841e-007, -0.866017222, 3.278262e-007, 0.499994814, 0.499995708, -7.74842817e-007, 0.866018057))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.640000105))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.512000024, 0.200000003, 0.384000033))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0724544525, 0.735972404, -0.00640869141, -6.44168395e-005, 3.14877468e-007, 0.999998569, -1, -5.96083751e-008, -5.98121624e-005, 5.95880181e-008, -0.999998569, 3.14881191e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.256000012, 0.200000003, 1.61920011))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0555686951, 0.00640869141, 1.60957241, -7.2596129e-005, 5.00198841e-014, 0.999998569, -3.4390624e-012, 0.999998569, -1.35049524e-013, -1, -3.59188373e-012, -6.79914956e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.256000012, 0.896000028))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.49999997, 1.38461196e-011, 0.866025507, -1.16909017e-011, 1, -9.23837656e-012, -0.866025448, -5.50543031e-012, 0.49999997))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.640000045, 0.640000045, 0.640000045))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247545242, 0.00640869141, 0.4799757, -6.47458946e-005, -6.3638656e-014, 0.999998569, -3.63800266e-012, 0.999998569, -3.0559317e-013, -1, -3.85478368e-012, -6.01310821e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.200000003, 1.1456002))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375492096, 0.134399414, 1.85013199, -3.86866304e-005, 4.47896277e-013, 0.999998569, -4.51189823e-012, 0.999998569, -5.32840699e-013, -1, -4.66473214e-012, -3.40820479e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.200000003, 1.1456002))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375541687, -0.121589661, 1.85011864, -6.34202806e-005, 4.76195092e-013, 0.999997139, -5.54160559e-013, 0.999997139, -7.60344316e-013, -1, -8.84668803e-013, -5.42109265e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.256000012, 0.200000003, 0.384000033))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.369916916, 2.35839176, -0.00639343262, -6.70053632e-005, 3.14878548e-007, 1, -1, -5.96450818e-008, -6.70053632e-005, 5.96239929e-008, -1, 3.14882556e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672000051, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78545856, -0.370113373, -0.202846527, -1, -2.91119595e-005, -0.000384613872, 0.000384613057, 2.89192758e-005, -1, 2.91230808e-005, -1, -2.89080763e-005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0768000111, 0.0896000117, 0.447999448))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.61920011))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00845146179, 0.134407043, 1.60957336, -6.4748041e-005, -6.3638656e-014, 0.999998569, -3.63800266e-012, 0.999998569, -3.0559317e-013, -1, -3.85478368e-012, -6.01289321e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.512000024, 1.61920011, 0.384000033))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0725326538, 1.60959148, -0.00640106201, -2.98303694e-005, 3.14878463e-007, 1, -1, -5.96094196e-008, -2.98303694e-005, 5.96000334e-008, -1, 3.14880253e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.640000045, 0.384000033, 0.640000045))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247545242, 0.00640106201, 0.4799757, -6.47458219e-005, -6.3638656e-014, 0.999998569, -3.63800266e-012, 0.999998569, -3.0559317e-013, -1, -3.85478368e-012, -6.01311513e-005))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503547668, 0.00640106201, 1.20689487, -0.000104134786, 2.20283698e-013, 1, -2.54377313e-012, 1, -2.20548514e-013, -1, -2.54379612e-012, -0.000104134786))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 0.704000056))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.256000012))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.479991913, -0.247407913, 0.198429108, 1, 4.16033035e-005, -4.7685171e-007, -4.76891728e-007, 9.65081313e-007, -1, -4.16033035e-005, 1, 9.65104618e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.320000023, 0.320000023, 2.08639956))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.256000012, 0.384000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.127994537, 7.62939453e-006, -0.25599575, 0.500000298, 1.36755893e-011, 0.866025329, -1.15810217e-011, 1, -9.1049026e-012, -0.866025269, -5.47700297e-012, 0.500000298))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.384000033, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.3754673, 0.134407043, 1.20693207, -3.41913183e-005, 4.47918449e-013, 0.999998569, -4.64334864e-012, 0.999998569, -5.32845794e-013, -1, -4.79617995e-012, -2.9586743e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 0.704000056))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.479966164, -0.247543335, 0.262420654, 1, 4.16032526e-005, 6.01758402e-005, 6.47904744e-005, 9.65080972e-007, -0.999998569, -4.16033727e-005, 0.999998569, 9.62580543e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.243199989, 0.243199989, 1.47199988))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.384000033, 0.200000003, 1.1456002))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375528336, 0.00640106201, 1.84636974, -0.000123670645, 5.04564869e-013, 0.999998569, -2.03210604e-012, 0.999998569, -5.896105e-013, -1, -2.18498808e-012, -0.000119065939))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.28000021))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.119522095, 0.134399414, 1.78292942, -4.50793596e-005, 4.19445891e-013, 1, -4.32361742e-012, 1, -4.19640776e-013, -1, -4.3236365e-012, -4.50793596e-005))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.640000105, 0.640000105, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.479986191, -0.247543335, -0.249576569, 1, 4.16032526e-005, 6.01758402e-005, 6.47904744e-005, 9.65080972e-007, -0.999998569, -4.16033727e-005, 0.999998569, 9.62580543e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.243199989, 0.243199989, 1.47199988))
BarrelB=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","BarrelB",Vector3.new(0.200000003, 0.200000003, 0.512000024))
BarrelBweld=CreateWeld(m,FakeHandleB,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00651550293, -0.375404358, -2.42294502, 4.16033035e-005, -1, 4.46682229e-008, 4.43546014e-007, -4.46531985e-008, -1, 1, 4.16033035e-005, 4.43542376e-007))
CreateMesh("SpecialMesh",BarrelB,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.153600022, 0.140799999, 0.447999448))

local lasrs = {} 
local lasrspd = 6 
local maxTravelDistance = 100 
local maxRebounds = 5 

function RAY(pos, dir, collidedlist, startpos, endpos, distleft) 
	collidedlist = collidedlist or {Character} 
	startpos = startpos or pos 
	distleft = distleft or dir.unit * dir.magnitude 
	endpos = endpos or pos + distleft 
	local ray = Ray.new(pos, distleft) 
	local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist) 
	if hitz ~= nil and not hitz.Parent:findFirstChild("Humanoid") then 
		if hitz.CanCollide == false then 
			table.insert(collidedlist, hitz) 
			local newpos = enz 
			local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude) 
			if newdistleft then 
				return RAY(newpos-(dir*0.01), dir, collidedlist, startpos, endpos, newdistleft+(dir*0.01)) 
			end 
		end 
	end 
	return hitz, enz, ray 
end 

function FindSurface(part, position) 
	local obj = part.CFrame:pointToObjectSpace(position) 
	local siz = part.Size/2 
	for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
		local vec = Vector3.FromNormalId(v) 
		local wvec = part.CFrame:vectorToWorldSpace(vec) 
		local vz = (obj)/(siz*vec) 
		if (math.abs(vz.X-1) < 0.001 or math.abs(vz.Y-1) < 0.001 or math.abs(vz.Z-1) < 0.001) then
			return wvec,vec 
		end 
	end 
	if part.className == "WedgePart" then 
		local pos = (part.CFrame * CFrame.new(0,part.Size.y/2,part.Size.z/2)).p 
		local apos = (part.CFrame * CFrame.Angles(-math.atan2(part.CFrame:pointToObjectSpace(pos).y,part.CFrame:pointToObjectSpace(pos).z),0,0) * CFrame.new(0,1,0)).p 
		local wvec,vec = (apos - part.Position).unit, part.CFrame:pointToObjectSpace(apos) 
		return wvec,vec
	elseif part.className == "Part" and (part.Shape.Name == "Ball" or part.Shape.Name == "Cylinder") then 
		return (position - part.Position).unit, part.CFrame:vectorToObjectSpace((position - part.Position).unit) 
	end 
end 

function Reflect(direction, normal) 
	return direction - 2 * normal:Dot(direction) * normal 
end 

function ReflectShot(mouse,asd) 
	local dir = (mouse.Hit.p - Torso.Position).unit 
	local tabl 
	local tablnum = 0 
	for i, v in pairs(lasrs) do 
		if not v[1] then 
			tabl = v 
			tablnum = i 
			break 
		end 
	end 
	if not tabl then 
		tablnum = #lasrs + 1 
		tabl = {false,nil,nil,0,0,1,{},{},{},{}} 
		for i = 1, 2 do 
			for j = 1, 6 do 
				local p = Instance.new("Part") 
				p.FormFactor = "Custom" 
				p.CanCollide = false 
				p.Anchored = true 
				p.Locked = true 
				p.BrickColor = BarrelA.BrickColor 
				p.TopSurface = 10 
				p.BottomSurface = 10 
				p.RightSurface = 10 
				p.LeftSurface = 10 
				p.FrontSurface = 10 
				p.BackSurface = 10 
				p.Size = Vector3.new(.5,.5,.5) 
				p.Material = "Neon"
				p.Transparency = i == 1 and 0 or 0.6 
				local mesh = Instance.new("CylinderMesh",p) 
				table.insert(tabl[6+i],p) 
				table.insert(tabl[8+i],mesh) 
	end
		end 
		table.insert(lasrs,tabl) 
	end 
	-- isMoving,direction,lastPosition,rebounds,distance,recycleCount,middleLayer,outerLayer
	tabl[4],tabl[5] = 0,0 
	tabl[3] = asd.Position 
	tabl[2] = dir 
	tabl[1] = true 

end 

gun = false

shoot = false

gunidle = false

local GunA = true
local GunB = false

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.1, 0.1, 0.1))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	Effects[#Effects + 1] = {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3
	} --part, type, delay
end

function Shoot(asd, spread1, spread2)
	local MainPos = asd.Position
	local MainPos2 = mouse.Hit.p
	local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
	local MouseLook = cn((MainPos + MainPos2) / 2, MainPos2 + spread)
	num = 30
	coroutine.resume(coroutine.create(function(Spreaded) 
		repeat
			wait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RootPart.Parent)
			local TheHit = mouse.Hit.p
			local mag = (MainPos - pos).magnitude 
			CylinderEffect(BrickColor.new(asd.BrickColor.Color), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, .5, 0, 1.5, 0.1)
			MainPos = MainPos + (MouseLook.lookVector * 10)
			num = num - 1
			if hit ~= nil then
				num = 0
				local ref = CreatePart(3, workspace, "Neon", 0, 1, BrickColor.new("New Yeller"), "Reference", Vector3.new())
				ref.Anchored = true
				ref.CFrame = cn(pos)
				damage(hit.Parent:WaitForChild("Torso"), math.random(1,3), math.random(3,5), 5, 1, RootPart)
				game:GetService("Debris"):AddItem(ref, 5) 
			end
		until num <= 0
	end))
end

function GunStance()
attack=true
gun=true
Humanoid.WalkSpeed = 0
gyro.Parent = RootPart
if GunA == true then
for i=0,1,0.2 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(5), math.rad(-90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(30), math.rad(90)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), 5*i, math.rad(0)), .75)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
for i=0,1,0.1 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-10)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
elseif GunB == true then
for i=0,1,0.2 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-5), math.rad(90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(10)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(-30), math.rad(-90)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), 5*i, math.rad(0)), .75)
end
for i=0,1,0.1 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(90)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
end
local offset = nil
gunidle=true
while gun==true do
wait()
local gunpos = Vector3.new(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
offset = (Torso.Position.y - mouse.Hit.p.y) / 60
local mag = (Torso.Position - mouse.Hit.p).magnitude / 80
offset = offset / mag 
if GunA == true and GunB == false then
RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), .5)
elseif GunB == true and GunA == false then
LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), .5)
end
end
if shoot==true then
gunidle=false
if GunA == true then
so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelA, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelA, 1, 1.5)
GunA = false
Shoot(BarrelA, 0, 0)
for i=0,1,0.15 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(5), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(90), math.rad(60), math.rad(80)), .55)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-15)), .3)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, -.1) * angles(math.rad(5), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, .1) * angles(math.rad(-5), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), .75)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), .3)
end
GunB = true
elseif GunB == true then
so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelB, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelB, 1, 1.5)
GunB = false
Shoot(BarrelB, 0, 0)
for i=0,1,0.15 do
wait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-5), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(15)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(90), math.rad(-60), math.rad(-80)), .55)
				RH.C0 = clerp(RH.C0, cn(0.6, -2, .1) * angles(math.rad(-5), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, -.1) * angles(math.rad(5), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), .3)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), .75)
end
GunA = true
end
end
gyro.Parent = nil
Humanoid.WalkSpeed = 12
gun=false
gunidle=false
shoot=false
attack=false
end

function Jikishi()
attack = true
gyro.Parent = RootPart
for i = 0,1,0.1 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(10)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-10)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(3), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 10*i, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), -10*i, math.rad(0)), .7)
end
for i = 1,2 do
for i = 0,1,0.3 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
ReflectShot(mouse,BarrelA)
so("http://www.roblox.com/asset/?id=199144089", BarrelA, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelA, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelA, 1, 1.5)
--so("http://www.roblox.com/asset/?id=360087120", Torso, .5, 1)
for i = 0,1,0.35 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .4)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(20)), .4)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.4) * angles(math.rad(150), math.rad(0), math.rad(-20)), .4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(0)), .4)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(20), math.rad(3)), .4)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(20), math.rad(-3)), .4)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
for i = 0,1,0.3 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.2) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(3)), .3)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(-3)), .3)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
ReflectShot(mouse,BarrelB)
so("http://www.roblox.com/asset/?id=199144089", BarrelB, 1, .9)
so("http://www.roblox.com/asset/?id=200633327", BarrelB, 1, 1.2)
so("http://www.roblox.com/asset/?id=200633780", BarrelB, 1, 1.5)
--so("http://www.roblox.com/asset/?id=360087120", Torso, .5, 1)
for i = 0,1,0.35 do 
wait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .4)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-20)), .4)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(0)), .4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, -.4) * angles(math.rad(150), math.rad(0), math.rad(20)), .4)
RH.C0 = clerp(RH.C0, cn(0.55, -2, 0) * angles(math.rad(0), math.rad(-20), math.rad(3)), .4)
LH.C0 = clerp(LH.C0, cn(-0.55, -2, 0) * angles(math.rad(0), math.rad(-20), math.rad(-3)), .4)
FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), 0, math.rad(0)), .7)
end
end
gyro.Parent = nil
attack = false
end

mouse.Button1Down:connect(function()
if gun==true and shoot==false then
shoot=true
gun=false
end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k=='e' and gun==false and shoot==false and attack==false then
	GunStance()
	end
	if k=='e'and shoot==false then
		if gun==true then
		gun=false
		end
	end
	if k=='q' and gun==false and shoot==false and attack==false then
	Jikishi()
	end
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

local ReboundCount = 0

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
	gyro.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p -RootPart.CFrame.p).unit * 100)
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
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(50)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-50)), .25)
				RH.C0 = clerp(RH.C0, cn(0.4, -1.5, -.5) * angles(math.rad(-20), math.rad(0), math.rad(-5)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -2, 0) * angles(math.rad(-10), math.rad(0), math.rad(5)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(70)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-70)), .25)
				RH.C0 = clerp(RH.C0, cn(0.6, -1.5, -.3) * angles(math.rad(0), math.rad(0), math.rad(5)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -1.8, -.2) * angles(math.rad(0), math.rad(0), math.rad(-5)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil and stun.Value ~= true then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, -0.1+0.1*math.cos(sine/25), -0.1+0.05*math.cos(sine/25)) * angles(math.rad(0), math.rad(0), math.rad(-30)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10+5*math.cos(sine/25)), math.rad(0), math.rad(30)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.4, -.2) * angles(math.rad(50-5*math.cos(sine/25)), math.rad(0), math.rad(10)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.4, -.2) * angles(math.rad(50-5*math.cos(sine/25)), math.rad(0), math.rad(-10)), .25)
				RH.C0 = clerp(RH.C0, cn(0.7, -1.9-.05*math.cos(sine/25), 0) * angles(math.rad(0), math.rad(30), math.rad(5))* angles(math.rad(-5+1*math.cos(sine/25)), math.rad(0), math.rad(0)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.6, -1.9-.05*math.cos(sine/25), 0) * angles(math.rad(0), math.rad(30), math.rad(-3))* angles(math.rad(-3+1*math.cos(sine/25)), math.rad(0), math.rad(0)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif Torsovelocity > 2 and Torsovelocity < 18 and hit ~= nil and stun.Value ~= true then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(20+1*math.cos(sine/5)), math.rad(0), math.rad(5*math.cos(sine/4.5))), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-5*math.cos(sine/4.5))), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.45, 0) * angles(math.rad(-40), math.rad(0), math.rad(20+1*math.cos(sine/5))), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.45, 0) * angles(math.rad(-40), math.rad(0), math.rad(-20+1*math.cos(sine/5))), .25)
				RH.C0 = clerp(RH.C0, cn(0.55, -2, 1*math.cos(sine/4.5)) * angles(math.rad(-50*math.cos(sine/4.5)), math.rad(0), math.rad(3)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.55, -2, -1*math.cos(sine/4.5)) * angles(math.rad(50*math.cos(sine/4.5)), math.rad(0), math.rad(-3)), .25)
				FakeHandleAweld.C0 = clerp(FakeHandleAweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
				FakeHandleBweld.C0 = clerp(FakeHandleBweld.C0, cn(0, 0, .8) * angles(math.rad(0), math.rad(-170), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif Torsovelocity >= 18 and hit ~= nil and stun.Value ~= true then
			Anim = "Run"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				RH.C0 = clerp(RH.C0, cn(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		elseif stun.Value == true then
			if attack == false then
				Character.Humanoid.WalkSpeed = 0
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				RH.C0 = clerp(RH.C0, cn(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
				LH.C0 = clerp(LH.C0, cn(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .25)
                RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
                LW.C1 = clerp(LW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .3)
			end
		end
	end
	if sprint == true and stun.Value ~= true and equipped == false and on == false then 
		Character.Humanoid.WalkSpeed = 20
	elseif sprint == false and stun.Value ~= true then
		Character.Humanoid.WalkSpeed = 16
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.FromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
	for _, lasr in pairs(lasrs) do 
		for i, v in pairs(lasr[9]) do 
			if lasr[7][i].Parent then 
				v.Scale = v.Scale + Vector3.new(-0.1,0,-0.1) 
				lasr[10][i].Scale = lasr[10][i].Scale + Vector3.new(-0.1,0,-0.1) 
				if v.Scale.x < 0.1 then 
					lasr[7][i].Parent = nil 
					lasr[8][i].Parent = nil 
				end 
			end 
		end 

		if lasr[1] then 
			local hitz, enz = RAY(lasr[3],lasr[2]*lasrspd) 
			lasr[5] = lasr[5] + (lasr[3] - enz).magnitude 

			lasr[7][lasr[6]].Parent = m 
			lasr[7][lasr[6]].CFrame = CFrame.new((lasr[3] + enz)/2,enz) * CFrame.Angles(math.pi/2,0,0) 
			lasr[9][lasr[6]].Scale = Vector3.new(0.7,(lasr[3] - enz).magnitude*5,0.7) 

			lasr[8][lasr[6]].Parent = m 
			lasr[8][lasr[6]].CFrame = lasr[7][lasr[6]].CFrame 
			lasr[10][lasr[6]].Scale = Vector3.new(1.3,(lasr[3] - enz).magnitude*5 + 0.02,1.3) 

			lasr[3] = enz 
			lasr[6] = lasr[6]%#lasr[7] + 1 

			if hitz then 
				lasr[4] = lasr[4] + 1 
				if lasr[4] == maxRebounds then 
					lasr[1] = false 
				so("http://www.roblox.com/asset/?id=200633327", hitz, 1, 2)
                damage(hitz.Parent:WaitForChild("Torso"), math.random(5,10), math.random(10,20), 5, 1, RootPart)
                print(ReboundCount)
				else 
					local norm = FindSurface(hitz,enz) 
					lasr[2] = Reflect(lasr[2],norm)
				so("http://www.roblox.com/asset/?id=200633327", hitz, 1, 2) 
				damage(hitz.Parent:WaitForChild("Torso"), math.random(5,10), math.random(10,20), 5, 1, RootPart)
				print(ReboundCount)
				end 
			end 
			if lasr[5] > maxTravelDistance then 
				lasr[1] = false 
			end 
		end 
	end 
end)