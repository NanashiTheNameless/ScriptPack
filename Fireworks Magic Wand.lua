--[[ MADE BY soso1401/Lua ]]
--[[ Double tap W to dash ]]
--[[ Q and E to swap spells]]
--[[ UPDATE LOG/IDEAS ]----------------------------------------------------------
	+Added Void Crush
	
	*Maybe add sparkles to fireworks (a trail of some kind)
	+Maybe add a puff of smoke to fireworks, from the wand at least
	*SPELL IDEAS: 
		+Stop playing from moving and create a bubble of particles that shoots forward. Use the projectile system?
		+Add a way to lift up players?
		+Invisibility spell, leaves footprints or use the Trail script?
		+Healing spell, shoots a green projectile straight up, rains, each drop heals
		++holding down bubbble spell, low damage, large knock back away from player, slowly float up (short range)
		+teleport opens hole beneath player, opens it above another location
		+++Chain someone to the floor with the new rope/spring stuff. put selection box on torso, use the connected line/wire to a glowing ball. for 3 sec
		+Maybe too hard, copy player, rotate but make it do same motions as player, will make it hard to tell which is the real, others fade/take damage to die
		+Jump slam move, looks up HUUDOKEEEN
		+lazer move, from 1 side to the other, like a wave
--]]
--[[
if script.ClassName == "LocalScript" then --advanced stuff I stole from aerx :)
	if game.PlaceId == 178350907 then 
		script.Parent = nil 
	else 
		local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) 
		local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) 
		Environment.coroutine.yield() 
		oxbox.script:Destroy() 
	end 
end
--]]
----CUSTOMIZATION

local MainColor = "Institutional white"
local CharacterSpeed = 20 --16 is default
local MaxMana = 100
local fireworkSounds = { 
"rbxassetid://160248280", 
"rbxassetid://160248302", 
"rbxassetid://269146157"
}
local magicSounds = {
"rbxassetid://260433768",
"rbxassetid://260433746",
"rbxassetid://260433721",
"rbxassetid://182765513",
}
local Rainbow = { --This is the main color set. Try to use more than just a few, make it fade in order as well
"Crimson", 
"Bright red", 
"Neon orange", 
"Deep orange", 
"Bright yellow", 
"New Yeller", 
"Br. yellowish green", 
"Lime green", 
"Sea green", 
"Bright bluish green",
"Bright blue", 
"Lavender",
"Royal purple",
"Eggplant",
"Hot pink"
} 


--Script starting
local spells = {}

function addSpell(nm,manac,colorz)
	table.insert(spells, { ["Name"] = nm, ["ManaCost"] = manac, ["Color"] = BrickColor.new(colorz)})
end

addSpell("True Form", 100, "Crimson")
addSpell("Void Crush", 30, "Bright green")
addSpell("Firework", 5, "Bright blue")
addSpell("Teleport", 10, "Neon orange")

local player = game:GetService("Players").LocalPlayer
local me = player
repeat wait() until player.Character ~= nil
local char = player.Character
local Character = char
local Humanoid = char.Humanoid
local Mouse = player:GetMouse()
local Backpack = player.Backpack
local PlayerGui = player.PlayerGui
local Camera = workspace.CurrentCamera
local Humanoid = char:WaitForChild("Humanoid")
local torso = char:WaitForChild("Torso")
local head = char:WaitForChild("Head")
local rightArm = char:WaitForChild("Right Arm")
local leftArm = char:WaitForChild("Left Arm")
local rightLeg = char:WaitForChild("Right Leg")
local leftLeg = char:WaitForChild("Left Leg")
local rightShoulder = torso:WaitForChild("Right Shoulder")
local leftShoulder = torso:WaitForChild("Left Shoulder")
local rightHip = torso:WaitForChild("Right Hip")
local leftHip = torso:WaitForChild("Left Hip")
local neck = torso:WaitForChild("Neck")
local rootpart = char:WaitForChild("HumanoidRootPart")
local root = char:WaitForChild("HumanoidRootPart")
local rj = rootpart:WaitForChild("RootJoint")
local anim = char:WaitForChild("Animate")
local TSTable = {}
local SpinTable = {}

local components = CFrame.new().components
rightArm.CanCollide = false
leftArm.CanCollide = false
rightLeg.CanCollide = false
leftLeg.CanCollide = false
camera = workspace.CurrentCamera
player.CameraMaxZoomDistance = math.huge
pcall(function()
	if anim then anim:remove()
    for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
        v:Stop()
    end
end
end)
pcall(function()
	char["Health"].Disabled = true 
end)
pcall(function()
	humanoid.Animator:Destroy()
end)
local rjo = rootpart.RootJoint:Clone()
function createWeld(wp0, wp1, wc0x, wc0y, wc0z)
	local weld = Instance.new("Weld", wp1)
	weld.Part0 = wp0
	weld.Part1 = wp1
	weld.C0 = CFrame.new(wc0x, wc0y, wc0z)
	return weld
end

local leftArmJoint = createWeld(torso, leftArm, -1.5, 0.5, 0)
leftArmJoint.C1 = CFrame.new(0, 0.5, 0)
local rightArmJoint = createWeld(torso, rightArm, 1.5, 0.5, 0)
rightArmJoint.C1 = CFrame.new(0, 0.5, 0)
local neck = createWeld(torso, head, 0, 1, 0)
local leftLegJoint = createWeld(torso, leftLeg, -0.5, -1, 0)
leftLegJoint.C1 = CFrame.new(0, 1, 0)
local rightLegJoint = createWeld(torso, rightLeg, 0.5, -1, 0)
rightLegJoint.C1 = CFrame.new(0, 1, 0)
local rj = rjo:Clone()
rj.Part0 = rootpart
rj.Part1 = torso
rj.Parent = rootpart
neck.C1 = CFrame.new(0, -(1/2), 0)
neckc0 = neck.C0
lsc0 = leftArmJoint.C0
rsc0 = rightArmJoint.C0
llc0 = leftLegJoint.C0
rlc0 = rightLegJoint.C0
rootc0 = rj.C0
rootc1 = rj.C1
wait()

local pressingW = false
local inAction = false
char.Humanoid.WalkSpeed = CharacterSpeed
local beenHit = {}
local jumpPower = 50
--Humanoid.JumpPower = 80


--GUI

local x10Wand = Instance.new("ScreenGui")
local SelectorBox = Instance.new("ImageLabel")

x10Wand.Name = "x10Wand"
x10Wand.Parent = me.PlayerGui

SelectorBox.Name = "SelectorBox"
SelectorBox.Parent = x10Wand
SelectorBox.BackgroundColor3 = Color3.new(1, 1, 1)
SelectorBox.BackgroundTransparency = 1
SelectorBox.Position = UDim2.new(0.5, -50, 1, -100)
SelectorBox.Size = UDim2.new(0, 100, 0, 50)
SelectorBox.ZIndex = 10
SelectorBox.Image = "rbxassetid://129944699"
SelectorBox.ImageColor3 = Color3.new(1, 0, 0)
SelectorBox.ScaleType = Enum.ScaleType.Slice
SelectorBox.SliceCenter = Rect.new(0, 10, 0, 195)

currentSpell = { ["Name"] = spells[(math.floor(#spells/2)+1)].Name, ["ManaCost"] = spells[(math.floor(#spells/2)+1)].ManaCost }
function loadSpellGui()
	currentSpell = { ["Name"] = spells[(math.floor(#spells/2)+1)].Name, ["ManaCost"] = spells[(math.floor(#spells/2)+1)].ManaCost }
	print(currentSpell.Name, currentSpell.ManaCost)
	for i,v in pairs(SelectorBox:GetChildren()) do
		v:Remove()
	end
	local spellPos = -100*(math.floor(#spells/2))
	for i,v in pairs(spells) do
		local Spell = Instance.new("TextLabel")
		Spell.Name = "Spell"
		Spell.Parent = SelectorBox
		Spell.BackgroundColor3 = v.Color.Color
		Spell.BackgroundTransparency = math.abs(((math.floor(#spells/2)+1)-i))*0.2
		if math.abs(((math.floor(#spells/2)+1)-i)) == 1 then 
			Spell.Position = UDim2.new(0,spellPos,0,math.abs(((math.floor(#spells/2)+1)-i))*9)
		elseif math.abs(((math.floor(#spells/2)+1)-i)) == 2 then
			Spell.Position = UDim2.new(0,spellPos,0,math.abs(((math.floor(#spells/2)+1)-i))*14)
		elseif math.abs(((math.floor(#spells/2)+1)-i)) == 3 then
			Spell.Position = UDim2.new(0,spellPos,0,math.abs(((math.floor(#spells/2)+1)-i))*17)
		else
			Spell.Position = UDim2.new(0,spellPos,0,math.abs(((math.floor(#spells/2)+1)-i))*24)
		end
		if ((math.floor(#spells/2)+1)-i) < 0 then
			Spell.Rotation = math.abs(((math.floor(#spells/2)+1)-i))*3
		else
			Spell.Rotation = -math.abs(((math.floor(#spells/2)+1)-i))*3
		end
		Spell.BorderSizePixel = 3
		Spell.Size = UDim2.new(0, 100, 0, 50)
		Spell.Font = Enum.Font.Code
		Spell.FontSize = Enum.FontSize.Size14
		Spell.Text = v.Name
		Spell.ZIndex = (9-(math.abs(((math.floor(#spells/2)+1)-i))))
		Spell.TextColor3 = Color3.new(0, 0, 0)
		Spell.TextWrapped = true

		local ManaCost = Instance.new("TextLabel")
		ManaCost.Name = "ManaCost"
		ManaCost.Parent = Spell
		ManaCost.BackgroundColor3 = Color3.new(1, 1, 1)
		ManaCost.BackgroundTransparency = 1
		ManaCost.Size = UDim2.new(0, 100, 0, 50)
		ManaCost.Font = Enum.Font.Code
		ManaCost.ZIndex = 10000
		ManaCost.FontSize = Enum.FontSize.Size14
		ManaCost.Text = v.ManaCost
		ManaCost.TextColor3 = Color3.new(0.15, 0, 1)
		ManaCost.TextYAlignment = Enum.TextYAlignment.Bottom
		if Spell.Transparency >= 1 then
			Spell.Visible = false
		else
			Spell.Visible = true
		end
		
		spellPos = spellPos + 100
	end
end
loadSpellGui()

local Q = Instance.new("TextLabel")
Q.Name = "Q"
Q.Parent = x10Wand
Q.BackgroundColor3 = Color3.new(1, 1, 1)
Q.BackgroundTransparency = 1
Q.Position = UDim2.new(0.5, -350, 1, -100)
Q.Size = UDim2.new(0, 100, 0, 50)
Q.Font = Enum.Font.Cartoon
Q.FontSize = Enum.FontSize.Size42
Q.Text = "Q"
Q.TextColor3 = Color3.new(1, 1, 1)
Q.TextStrokeTransparency = 0

local E = Instance.new("TextLabel")
E.Name = "E"
E.Parent = x10Wand
E.BackgroundColor3 = Color3.new(1, 1, 1)
E.BackgroundTransparency = 1
E.Position = UDim2.new(0.5, 250, 1, -100)
E.Size = UDim2.new(0, 100, 0, 50)
E.Font = Enum.Font.Cartoon
E.FontSize = Enum.FontSize.Size42
E.Text = "E"
E.TextColor3 = Color3.new(1, 1, 1)
E.TextStrokeTransparency = 0

local Info = Instance.new("TextLabel")
Info.Name = "Info"
Info.Parent = x10Wand
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 1
Info.Draggable = true
Info.Position = UDim2.new(0.5, -200, 1, -30)
Info.Size = UDim2.new(0, 400, 0, 10)
Info.ZIndex = 10
Info.Font = Enum.Font.SourceSans
Info.FontSize = Enum.FontSize.Size18
Info.Text = "B" .. "y | " .. "Th" .. "un" .. "de" .. "r" .. "x" .. tostring(10)
Info.TextColor3 = Color3.new(1, 1, 1)

local ManaFrame = Instance.new("Frame")
ManaFrame.Name = "ManaFrame"
ManaFrame.Parent = x10Wand
ManaFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ManaFrame.BorderSizePixel = 0
ManaFrame.Position = UDim2.new(0.5, 10, 1, -145)
ManaFrame.Size = UDim2.new(0, 204, 0, 24)

local ManaBar = Instance.new("Frame")
ManaBar.Name = "ManaBar"
ManaBar.Parent = ManaFrame
ManaBar.BackgroundColor3 = Color3.new(0, 0.317647, 1)
ManaBar.BorderSizePixel = 0
ManaBar.Position = UDim2.new(0, 2, 0, 2)
ManaBar.Size = UDim2.new(0, 200, 0, 20)
ManaBar.ZIndex = 2

local ManaText = Instance.new("TextLabel")
ManaText.Name = "ManaText"
ManaText.Parent = ManaFrame
ManaText.BackgroundColor3 = Color3.new(1, 1, 1)
ManaText.BackgroundTransparency = 1
ManaText.Size = UDim2.new(0, 204, 0, 24)
ManaText.ZIndex = 4
ManaText.Font = Enum.Font.SciFi
ManaText.FontSize = Enum.FontSize.Size18
ManaText.Text = MaxMana
ManaText.TextColor3 = Color3.new(1, 1, 1)

local HealthFrame = Instance.new("Frame")
HealthFrame.Name = "HealthFrame"
HealthFrame.Parent = x10Wand
HealthFrame.BackgroundColor3 = Color3.new(0, 0, 0)
HealthFrame.BorderSizePixel = 0
HealthFrame.Position = UDim2.new(0.5, -214, 1, -145)
HealthFrame.Size = UDim2.new(0, 204, 0, 24)

local HealthBar = Instance.new("Frame")
HealthBar.Name = "HealthBar"
HealthBar.Parent = HealthFrame
HealthBar.BackgroundColor3 = Color3.new(0, 0.8, 0.02)
HealthBar.BorderSizePixel = 0
HealthBar.Position = UDim2.new(0, 2, 0, 2)
HealthBar.Size = UDim2.new(0, char.Humanoid.Health*2, 0, 20)
HealthBar.ZIndex = 2

local HealthText = Instance.new("TextLabel")
HealthText.Name = "HealthText"
HealthText.Parent = HealthFrame
HealthText.BackgroundColor3 = Color3.new(1, 1, 1)
HealthText.BackgroundTransparency = 1
HealthText.Size = UDim2.new(0, 204, 0, 24)
HealthText.ZIndex = 4
HealthText.Font = Enum.Font.SciFi
HealthText.FontSize = Enum.FontSize.Size18
HealthText.Text = math.ceil(char.Humanoid.Health)
HealthText.TextColor3 = Color3.new(1, 1, 1)

--WEAPON

local model = Instance.new("Model", char)
model.Name = "x10Wand"

local wm = Instance.new("Part", model)
wm.Material = "SmoothPlastic"
wm.BrickColor = BrickColor.new("Really black")
wm.Size = Vector3.new(0,0,0)
wm.CFrame = CFrame.new(0,5,0)
wm.CanCollide = false
wm.TopSurface = "Smooth"
wm.BottomSurface = "Smooth"
local Mesh = Instance.new("CylinderMesh", wm)
Mesh.Scale = Vector3.new(1,9,1)

local wmt = Instance.new("Part", model)
wmt.Material = "SmoothPlastic"
wmt.BrickColor = BrickColor.new(MainColor)
wmt.Size = Vector3.new(0,0,0)
wmt.CanCollide = false
wmt.CFrame = CFrame.new(0,5,0)
wmt.Material = "Neon"
wmt.TopSurface = "Smooth"
wmt.BottomSurface = "Smooth"
local Mesh = Instance.new("CylinderMesh", wmt)
Mesh.Scale = Vector3.new(1.1,1.8,1.1)

local weld = Instance.new("Weld", wmt)
weld.Part0 = wmt
weld.Part1 = wm
weld.C0 = CFrame.new(0, 0.8, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local weaponWeld = Instance.new("Weld") 
weaponWeld.Parent = wm
weaponWeld.Part0 = wm
weaponWeld.Part1 = char["Right Arm"]
weaponWeld.C0 = CFrame.new(0, 0.3, -1)*CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
local weaponWeldc0 = weaponWeld.C0

--FUNCTIONS
print("v2")
function takeDamage(position, damage, distance, platformStand)
	playersHit = {}
	for i,v in pairs(workspace:GetChildren()) do
		currentPlayer = nil
		if v.Name == "Dummy" then
			currentPlayer = v
		else
			if game:GetService("Players"):GetPlayerFromCharacter(v) ~= nil and v.Name ~= me.Name and v:IsA("Model") and v.Name ~= "Script" then
				if v.Name == game:GetService("Players"):GetPlayerFromCharacter(v).Name then
					currentPlayer = v
				end
			end
		end
		if currentPlayer ~= nil then
			if currentPlayer:findFirstChild("Torso") and currentPlayer:findFirstChild("Humanoid") and (currentPlayer.Torso.Position - position).magnitude < distance then
				dealDamage(currentPlayer.Humanoid, damage)
				table.insert(playersHit, currentPlayer)
				currentPlayer.Humanoid.PlatformStand = platformStand
				print(v.Name)
			end
		end
	end
	for i,v in pairs(playersHit) do
		print(i,v)
	end
	return playersHit
end 

function freeze(time)
	local g = Instance.new("BodyGyro", root)
	g.Name = "BodyMovement"
	g.D = 0
	g.CFrame = root.CFrame
	g.MaxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
	g.P = 10000000000
	if time ~= nil then
		game:GetService("Debris"):AddItem(g,time)
	end
end

function unfreeze()
	for i,v in pairs(root:GetChildren()) do
		if v.Name == "BodyMovement" then
			v:Remove()
		end
	end
end

function moveVelocity(direction, speed, time)
	local g = Instance.new("BodyGyro", root)
	g.D = 0
	g.CFrame = root.CFrame
	g.MaxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
	g.P = 10000000000
	local e = Instance.new("BodyVelocity", root)
	e.Velocity = dir.unit * speed
	e.P = 10000
	e.MaxForce = Vector3.new(100000000, 100000000, 100000000)
	game:GetService("Debris"):AddItem(e,time)
end

local SpikeCount = 0
function createPath()
	SpikeCount = SpikeCount + 1
	if SpikeCount >= 10 then
		SpikeCount = 0
		local spike = Instance.new("Part", model)
			table.insert(TSTable, spike)
			spike.Size = Vector3.new(0,0,0)
			spike.Name = "Ring"
			spike.Material = "Neon"
			spike.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
			spike.Anchored = true
			spike.Transparency = 0.3
			spike.CanCollide = false
			spike.CFrame = torso.CFrame*CFrame.new(0,0,3)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
			local spikemesh = Instance.new("SpecialMesh", spike) 
			spikemesh.Name = "SpikeMesh"
			spikemesh.Scale = Vector3.new(5,5,5)
			spikemesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	end
		
	local spike1 = Instance.new("Part", model)
		table.insert(TSTable, spike1)
		spike1.Size = Vector3.new(0,0,0)
		spike1.Material = "Neon"
		spike1.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
		spike1.Anchored = true
		spike1.Transparency = 0
		spike1.CanCollide = false
		spike1.CFrame = torso.CFrame*CFrame.new(0,0,1.5)*CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
		local spikemesh1 = Instance.new("CylinderMesh", spike1) 
		spikemesh1.Name = "SpikeMesh"
		spikemesh1.Scale = Vector3.new(6,10,6)
end

local function CreateRegion3FromLocAndSize(Position, Size)
	local SizeOffset = Size/2
	local Point1 = Position - SizeOffset
	local Point2 = Position + SizeOffset
	return Region3.new(Point1, Point2)
end

function dealDamage(targetHumanoid, damage)
	if targetHumanoid.Health > 100 then
		targetHumanoid.MaxHealth = 100
		targetHumanoid.Health = 100
	end
	targetHumanoid.Health = targetHumanoid.Health - damage
end

function makeParticles()
		local p = Instance.new("Part", char)
		p.CanCollide = false
		p.BrickColor = BrickColor.new(Rainbow[math.random(1,#Rainbow)])
		p.Material = "Neon"
		p.Name = "Particle"
		p.Size = Vector3.new(0,0,0)
		p.CFrame = wmt.CFrame*CFrame.new(math.random(-1,1), math.random(-1,1), math.random(-1,1))*CFrame.Angles(math.rad(math.random(0,360)), math.rad(math.random(0,360)), math.rad(math.random(0,360)))
		game:GetService("Debris"):AddItem(p,3)
		table.insert(currentTable, p)
		local bbp = Instance.new("BodyPosition", p)
		bbp.Name = "forceinward"
		bbp.MaxForce = Vector3.new(math.random(1000, 2000), math.random(1000, 2000), math.random(1000, 2000))
		bbp.P = math.random(3000, 5000)
		if isCharging then
			bbp.Position = wmt.Position
			bbp.D = 1000
		else
			bbp.Position = p.Position + Vector3.new(math.random(-1,1), 1, math.random(-1,1))
			bbp.D = 2000
		end
		table.insert(allbps, bbp)
end

function OriginalProjectile(loc)
	local proj = Instance.new("Part", model)
	proj.CanCollide = false
	proj.Name = "projectile"
	proj.CFrame = wmt.CFrame
	proj.Anchored = true
	proj.Material = "Neon"
	proj.BrickColor = BrickColor.new(Rainbow[rainbowNumber]) 
	proj.CFrame = CFrame.new(proj.Position, loc)
	proj.Size = Vector3.new(0.3, 0.3, 2)
	local s = Instance.new("Sound", wmt)
	s.SoundId = fireworkSounds[math.random(1,#fireworkSounds)]
	s.EmitterSize = 10
	s.Volume = math.random(80,100)/10
	s:Play()
	game:GetService("Debris"):AddItem(s,5)
	local s = Instance.new("Sound", proj)
	s.SoundId = "rbxassetid://84903136"
	s.EmitterSize = 10
	s.Volume = math.random(80,100)/10
	s:Play()
	game:GetService("Debris"):AddItem(s, 5)
	table.insert(projectiles, proj)
end

function createHole(location, height)
	if (torso.Position - location).magnitude < 2000 then
		local hole = Instance.new("Part", model)
		hole.BrickColor = BrickColor.new("Really black")
		hole.Size = Vector3.new(0,0,0)
		hole.Anchored = true
		hole.CFrame = CFrame.new(location.X,location.Y,location.Z)*CFrame.new(0,height,0)
		hole.Material = "SmoothPlastic"
		local cm = Instance.new("CylinderMesh",hole)
		cm.Name = "HoleMesh"
		cm.Scale = Vector3.new(0,0,0)
		table.insert(holeTable, hole)
		local s = Instance.new("Sound", hole) --whole opening
		s.SoundId = magicSounds[math.random(1,#magicSounds)]
		s.EmitterSize = 50
		s.Volume = 100
		s:Play()
		game:GetService("Debris"):AddItem(s,5)
	end
end

function freeze(who)
	for i,v in pairs(who:GetChildren()) do
		if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
			v.Anchored = true
		end
	end
end

function unfreeze(who)
	for i,v in pairs(who:GetChildren()) do
		if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
			v.Anchored = false
		end
	end
end

function castingStart(length)
	local s = Instance.new("Sound", wmt) --wavy noise
	s.SoundId = "rbxassetid://262327541"
	s.EmitterSize = 10
	s.Volume = 100
	s:Play()
	game:GetService("Debris"):AddItem(s,5)
	castRing = Instance.new("Part", model)
	castRing.Size = Vector3.new(0,0,0)
	castRing.Name = "CastingRing"
	castRing.Material = "Neon"
	castRing.BrickColor = BrickColor.new("Industrial white")
	castRing.Anchored = true
	castRing.Transparency = 0.5
	castRing.CanCollide = false
	castRing.CFrame = CFrame.new(Mouse.Hit.p.X,Mouse.Hit.p.Y+0.3,Mouse.Hit.p.Z)*CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local ringmesh = Instance.new("SpecialMesh", castRing) 
	ringmesh.Name = "RingMesh"
	ringmesh.Scale = Vector3.new(2,2,2)
	ringmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	game:GetService("Debris"):AddItem(castRing, length) --casting time
	castCircle = Instance.new("Part", model)
	castCircle.Size = Vector3.new(0,0,0)
	castCircle.Name = "CastingCircle"
	castCircle.Material = "Neon"
	castCircle.Shape = "Cylinder"
	castCircle.BrickColor = BrickColor.new("Industrial white")
	castCircle.Anchored = true
	castCircle.Transparency = 0.2
	castCircle.CanCollide = false
	castCircle.CFrame = CFrame.new(Mouse.Hit.p.X,Mouse.Hit.p.Y+0.3,Mouse.Hit.p.Z)*CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
	local ringmesh = Instance.new("CylinderMesh", castCircle) 
	ringmesh.Name = "RingMesh"
	ringmesh.Scale = Vector3.new(4,0.2,4)
	game:GetService("Debris"):AddItem(castCircle, length) --casting time
	game:GetService("Debris"):AddItem(s, length) --casting time
end

--

rainbowNumber = 1
statRegenNumber = 0
holdingw = false
Mana = 100
currentTable = {}
walkingAnimationSpeed = 3.5
allbps = {}
projectiles = {}
holeTable = {}
rainbowMode = false
int = 0
bodyparts = {}
holdingMouse1 = false
local currentAnim = "walk"
local actionWalking = true
local isCharging = false
local slowingDown = 1
local Smooth = 1
local t = tick()
game:GetService("RunService").Stepped:connect(function()
	t = t+0.5*Smooth
	statRegenNumber = statRegenNumber + 1
	if statRegenNumber >= 10 then
		if currentAnim == "Dashing" then
			if Mana > 0 then
				Mana = Mana - 1
			else
				holdingw = false
			end
		else
			if Mana < MaxMana then
				Mana = Mana + 1
			end
		end
		if char.Humanoid.Health < char.Humanoid.MaxHealth then
			char.Humanoid.Health = char.Humanoid.Health + 1
		end
		statRegenNumber = 0
	end
	HealthText.Text = math.ceil(char.Humanoid.Health)
	if char.Humanoid.Health <= 100 then
		HealthBar.Size = UDim2.new(0, math.ceil(char.Humanoid.Health)*2, 0, 20)
	end
	ManaText.Text = Mana
	if Mana <= 100 then
		ManaBar.Size = UDim2.new(0, Mana*2, 0, 20)
	end
    if not inAction then
    	weaponWeld.C0 = weaponWeld.C0:lerp(weaponWeldc0,0.05)
        if rootpart.Velocity.y > 1 and Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
            currentAnim = "jump"
        elseif rootpart.Velocity.y < -1 then
            currentAnim = "freefall"
        elseif (math.abs(rootpart.Velocity.x) > 2 or math.abs(rootpart.Velocity.z) > 2) and Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
            currentAnim = "walk"
        elseif Vector3.new(rootpart.Velocity.x,0,rootpart.Velocity.y).magnitude < 1 and Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
            currentAnim = "idle"
        end
        
        if currentAnim == "idle" then
			animationSpeed = 0.1
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.Angles(math.rad(-1), math.rad(-1), -(math.sin(t/7)/20)+0.1), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-1), math.rad(0), (math.sin(t/7)/20)-0.1), animationSpeed)
			rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,math.sin(t/7)/30,0)*CFrame.Angles(math.rad(-2), math.rad(0), math.rad(1)), animationSpeed)
			leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,math.sin(t/7)/30,0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-1), math.rad(0), math.rad(-1)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,-math.sin(t/7)/30)*CFrame.Angles(math.rad(-1), math.rad(0), math.rad(0)),animationSpeed)
        elseif currentAnim == "walk" then
			animationSpeed = 0.05
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles((math.sin(t/5)/25)+math.rad(-30), math.rad(-42), math.rad(17)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles((math.sin(t/5)/25)+math.rad(-51), math.rad(42), math.rad(-11)), animationSpeed)
			rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,math.sin(t/5)/25,0)*CFrame.Angles((-math.sin(t/walkingAnimationSpeed)/1)+math.rad(0), math.rad(0), math.rad(0)), 0.4)
			leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,math.sin(t/5)/25,0)*CFrame.Angles((math.sin(t/walkingAnimationSpeed)/1)+math.rad(0), math.rad(0), math.rad(0)), 0.4)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,-math.sin(t/5)/25)*CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)),0.4)
        elseif currentAnim == "jump" then
			animationSpeed = 0.2
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-11), math.rad(-2), math.rad(12)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-8), math.rad(2), math.rad(-17)), animationSpeed)
			rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-11), math.rad(0), math.rad(4)), animationSpeed)
			leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-16), math.rad(1), math.rad(-4)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(8), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
        elseif currentAnim == "freefall" then
			animationSpeed = 0.15
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(-(math.sin(t/4)/7)+math.rad(-15), math.rad(0), -(math.sin(t/5)/10)+math.rad(10)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles((math.sin(t/4)/7)+math.rad(-12), math.rad(4), (math.sin(t/5)/10)+math.rad(-10)), animationSpeed)
			rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,0,0)*CFrame.Angles((math.sin(t/4)/7)+math.rad(-8), math.rad(0), (math.sin(t/5)/10)+math.rad(6)), animationSpeed)
			leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,0,0)*CFrame.Angles(-(math.sin(t/4)/7)+math.rad(0), math.rad(1), (math.sin(t/5)/10)+math.rad(-6)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
        end
    else --starting abilities
		if actionWalking then
			if (math.abs(rootpart.Velocity.x) > 2 or math.abs(rootpart.Velocity.z) > 2) and Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
				rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,math.sin(t/5)/25,0)*CFrame.Angles((-math.sin(t/walkingAnimationSpeed)/1)+math.rad(0), math.rad(0), math.rad(0)), 0.4)
				leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,math.sin(t/5)/25,0)*CFrame.Angles((math.sin(t/walkingAnimationSpeed)/1)+math.rad(0), math.rad(0), math.rad(0)), 0.4)
			else
				rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.05)
				leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.05)
			end
		end
		if currentAnim == "ArmUp" then
			animationSpeed = 0.3
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(79), math.rad(-5), math.rad(1)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(62), math.rad(-3), math.rad(-3)), 0.07)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)),0.07)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
		elseif currentAnim == "Slash1" then
			animationSpeed = 0.15
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-150), math.rad(20), math.rad(40)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(62), math.rad(-3), math.rad(-3)), 0.07)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)),0.07)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
			makeParticles()
		elseif currentAnim == "SlashMini" then
			animationSpeed = 0.3
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(-0.3,0,-1)*CFrame.Angles(math.rad(23), math.rad(-20), math.rad(-62)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-49), math.rad(7), math.rad(-1)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			weaponWeld.C0 = weaponWeld.C0:lerp(weaponWeldc0*CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), animationSpeed)
			makeParticles()
		elseif currentAnim == "Slash2" then
			animationSpeed = 0.3
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(70), math.rad(3), math.rad(-13)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-49), math.rad(7), math.rad(-1)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			weaponWeld.C0 = weaponWeld.C0:lerp(weaponWeldc0*CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), animationSpeed)
			makeParticles()
		elseif currentAnim == "DashDown" then
			animationSpeed = 0.3
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-88), math.rad(-47), math.rad(24)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,-0.5,0)*CFrame.Angles(math.rad(42), math.rad(-5), math.rad(-5)), animationSpeed)
			rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,1.5,-0.5)*CFrame.Angles(math.rad(24), math.rad(3), math.rad(1)), animationSpeed)
			leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-40), math.rad(1), math.rad(-3)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-11), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,-1.3)*CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)),animationSpeed)
			local spike = Instance.new("Part", model)
			table.insert(SpinTable, spike)
			spike.Size = Vector3.new(0,0,0)
			spike.Name = "spinnything"
			spike.Material = "Neon"
			spike.BrickColor = BrickColor.new(MainColor)
			spike.Anchored = true
			spike.Transparency = 0.5
			spike.CanCollide = false
			spike.CFrame = CFrame.new(torso.Position.x,(torso.Position.y - 2.5),torso.Position.z)*CFrame.Angles(math.rad(0), math.rad(math.random(0,180)), math.rad(0))
			local spikemesh = Instance.new("BlockMesh", spike) 
			spikemesh.Name = "SpikeMesh"
			spikemesh.Scale = Vector3.new(5,5,5)
			local ball = Instance.new("Part", model)
			ball.Size = Vector3.new(0,0,0)
			ball.Name = "ballthing"
			ball.Material = "Neon"
			ball.BrickColor = BrickColor.new(MainColor)
			ball.Anchored = true
			ball.Transparency = 0.5
			ball.CanCollide = false
			ball.CFrame = CFrame.new(torso.Position.x,(torso.Position.y - 2.5),torso.Position.z)
			local spikemesh = Instance.new("SpecialMesh", ball) 
			spikemesh.Name = "SpikeMesh"
			spikemesh.MeshType = "Sphere"
			spikemesh.Scale = Vector3.new(5,5,5)
			table.insert(SpinTable,ball)
			makeParticles()
		elseif currentAnim == "Dashing" then
			animationSpeed = 0.3
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles((math.sin(t/4)/7)+math.rad(-66), math.rad(-24), (math.sin(t/5)/10)+math.rad(25)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(-(math.sin(t/4)/7)+math.rad(-64), math.rad(31), -(math.sin(t/5)/10)+math.rad(-25)), animationSpeed)
			rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,0,0)*CFrame.Angles(-(math.sin(t/4)/7)+math.rad(-49), math.rad(-19), math.rad(20)), animationSpeed)
			leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,0,0)*CFrame.Angles((math.sin(t/4)/7)+math.rad(-49), math.rad(13), math.rad(-12)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rootpart.CFrame = rootpart.CFrame*CFrame.new(0,0,-2)
			createPath()
		elseif currentAnim == "DashSlowing" then
			animationSpeed = 0.2
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(12), math.rad(0), math.rad(0)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(28), math.rad(0), math.rad(0)), animationSpeed)
			rightLegJoint.C0 = rightLegJoint.C0:lerp(rlc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(21), math.rad(0), math.rad(3)), animationSpeed)
			leftLegJoint.C0 = leftLegJoint.C0:lerp(llc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(23), math.rad(-1), math.rad(-2)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rootpart.CFrame = rootpart.CFrame*CFrame.new(0,0,-slowingDown)
			slowingDown = slowingDown - 0.05
		elseif currentAnim == "Casting" then
			animationSpeed = 0.3
			rightArmJoint.C0 = rightArmJoint.C0:lerp(rsc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(138), -(math.sin(t/4)/4)+math.rad(0), math.rad(13)), animationSpeed)
			leftArmJoint.C0 = leftArmJoint.C0:lerp(lsc0*CFrame.new(0,0,0)*CFrame.Angles((math.sin(t/5)/25)+math.rad(-21), math.rad(10), math.rad(-11)), animationSpeed)
			neck.C0 = neck.C0:lerp(neckc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			rj.C0 = rj.C0:lerp(rootc0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),animationSpeed)
			weaponWeld.C0 = weaponWeld.C0:lerp(weaponWeldc0*CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), animationSpeed)
			pcall(function()
				castRing.CFrame = CFrame.new(Mouse.Hit.p.X,Mouse.Hit.p.Y+0.3,Mouse.Hit.p.Z)*CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
				castRing.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
				castCircle.CFrame = CFrame.new(Mouse.Hit.p.X,Mouse.Hit.p.Y+0.3,Mouse.Hit.p.Z)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
			end)
			makeParticles()
        end
    end
	if #TSTable > 0 then
		for i,v in pairs(TSTable) do
			if v.Transparency <= 1 then
				v.Transparency = v.Transparency + 0.02
				if v.Name == "Ring" then 
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale - Vector3.new(0.2,0.2,0)
					end)
				elseif v.Name == "SlamRing" then
					v.Transparency = v.Transparency - 0.01
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale + Vector3.new(3,3,3)
					end)
				elseif v.Name == "GRASS" then
					v.Transparency = v.Transparency - 0.016
					if v.Transparency > 0.5 then
						v.CanCollide = false
					end
				elseif v.Name == "firework" then
					v.Transparency = v.Transparency - 0.01
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale - Vector3.new(0.05,0.05,0.05)
					end)
				else
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale - Vector3.new(0.2,0,0.2)
					end)
				end
			else
				table.remove(TSTable, i)
				v:Remove()
			end
		end
	end
	if #currentTable > 0 then
		for i,v in pairs(currentTable) do
			if isCharging then
				v.forceinward.Position = wmt.Position
			end
			v.Transparency = v.Transparency + 0.05
			if v.Transparency >= 1 then
				table.remove(currentTable, i)
				table.remove(allbps, i)
				v:Remove()
			end
		end
	end
	if #holeTable > 0 then
		for i,hole in pairs(holeTable) do
			if hole.HoleMesh.Scale.X < 100 and hole:findFirstChild("BLOCK") == nil then
				hole.HoleMesh.Scale = hole.HoleMesh.Scale + Vector3.new(10,0,10)
			else
				if hole:findFirstChild("BLOCK") == nil then
					local block = Instance.new("Part", hole)
					block.Name = "BLOCK"
					block.Size = Vector3.new(9,0,9)
					block.Anchored = true
					block.CFrame = hole.CFrame*CFrame.new(0,-0.25,0)
					block.Material = "SmoothPlastic"
					block.Reflectance = 0.5
					block.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
					local bv = Instance.new("IntValue", block)
					bv.Name = "goingUp"
					bv.Value = 0
				else
					hole:findFirstChild("BLOCK").goingUp.Value = hole:findFirstChild("BLOCK").goingUp.Value + 1
					if hole:findFirstChild("BLOCK").goingUp.Value <= 6 then 
						local currentC = hole:findFirstChild("BLOCK").CFrame
						hole:findFirstChild("BLOCK").Size = hole:findFirstChild("BLOCK").Size + Vector3.new(0,5,0)
						hole:findFirstChild("BLOCK").CFrame = currentC*CFrame.new(0,-2.5,0)
					elseif hole:findFirstChild("BLOCK").goingUp.Value >= 20 and hole:findFirstChild("BLOCK").Size.Y > 0.3 then
						local currentC = hole:findFirstChild("BLOCK").CFrame
						hole:findFirstChild("BLOCK").Size = hole:findFirstChild("BLOCK").Size + Vector3.new(0,-5,0)
						hole:findFirstChild("BLOCK").CFrame = currentC*CFrame.new(0,2.5,0)
					elseif hole:findFirstChild("BLOCK").goingUp.Value == 7 then
						takeDamage((hole.Position - Vector3.new(0,30,0)), 30, 14, false)
						local e = Instance.new("Explosion", hole)
						e.Position = (hole.Position - Vector3.new(0,30,0))
						e.BlastPressure = 100000
						e.BlastRadius = 6
						e.ExplosionType = "CratersAndDebris"
						e.Visible = false
						local spike = Instance.new("Part", model)
						table.insert(TSTable, spike)
						spike.Size = Vector3.new(0,0,0)
						spike.Name = "SlamRing"
						spike.Material = "Neon"
						spike.BrickColor = BrickColor.new("Industrial white")
						spike.Anchored = true
						spike.Transparency = 0.3
						spike.CanCollide = false
						spike.CFrame = hole.CFrame*CFrame.new(0,-30,0)*CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
						local spikemesh = Instance.new("SpecialMesh", spike) 
						spikemesh.Name = "SpikeMesh"
						spikemesh.Scale = Vector3.new(10,10,10)
						spikemesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
						for ind = 1,8 do
							local pgrass = Instance.new("Part",model)
							pgrass.CanCollide = true
							pgrass.Name = "GRASS"
							pgrass.Anchored = true
							if workspace:findFirstChild("Base") ~= nil then
								pgrass.Material = workspace.Base.Material
								pgrass.BrickColor = workspace.Base.BrickColor
							else
								pgrass.Material = "Grass"
								pgrass.BrickColor = BrickColor.new("Bright green")
							end
							pgrass.Size = Vector3.new(math.random(8,10),math.random(1,2),math.random(8,10))
							pgrass.CFrame = hole.CFrame*CFrame.new(0,-30,0)*CFrame.Angles(math.rad(math.random(-40,40)),0,math.rad(math.random(-40,40)))
							pgrass.CFrame = CFrame.new(hole.CFrame.X, hole.CFrame.Y-30, hole.CFrame.Z) --Start at the center of the circle
												* CFrame.Angles(0, math.rad(ind*(360/8)), math.rad(0)) --Rotate the brick
												* CFrame.new(0, 0, 6) --Move it out by 10 units
												* CFrame.Angles(math.rad(math.random(-35,25)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10)))
							table.insert(TSTable, pgrass)
						end
						local s = Instance.new("Sound", pgrass)
						s.SoundId = "rbxassetid://301184111"
						s.EmitterSize = 10
						s.Volume = 0.3
						s:Play()
						game:GetService("Debris"):AddItem(s, 5)
					elseif hole:findFirstChild("BLOCK").goingUp.Value >= 30 then
						hole:findFirstChild("BLOCK").Transparency = 1
						hole.HoleMesh.Scale = hole.HoleMesh.Scale - Vector3.new(10,0,10)
						if hole.HoleMesh.Scale.X < 0 then
							table.remove(holeTable, i)
							hole:Remove()
						end
					end
				end
			end
		end
	end
	if #SpinTable > 0 then
		for i,v in pairs(SpinTable) do
			if v.Transparency <= 1 then
				if v.Name == "spinnything" then
					v.Transparency = v.Transparency + 0.005
					v.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale + Vector3.new(1,0,1)
					end)
				elseif v.Name == "firework" then
					v.Transparency = v.Transparency + 0.01
					v.BrickColor = BrickColor.new(Rainbow[math.random(1,#Rainbow)])
					local sizeup = 3
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale + Vector3.new(sizeup,sizeup,sizeup)
					end)
				elseif v.Name == "firework1" then
					v.Transparency = v.Transparency + math.random(7,10)/1000
					v.BrickColor = BrickColor.new(Rainbow[math.random(1,#Rainbow)])
					local sizeup = math.random(2,5)/10
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale + Vector3.new(sizeup,sizeup,sizeup)
					end)
				elseif v.Name == "teleball" then
					v.Transparency = v.Transparency - 0.1
					v.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
					local sizeup = 4
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale + Vector3.new(sizeup,sizeup,sizeup)
					end)
				elseif v.Name == "teleballsmall" then
					v.Transparency = v.Transparency + 0.02
					v.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
					local sizeup = -1
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale + Vector3.new(sizeup,sizeup,sizeup)
					end)
				elseif v.Name == "transRainbowPart" then
					v.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
					v.Transparency = v.Transparency + 0.05
				else
					v.Transparency = v.Transparency + 0.005
					v.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
					pcall(function()
						v.SpikeMesh.Scale = v.SpikeMesh.Scale + Vector3.new(1,1,1)
					end)
				end
			else
				v:Remove()
				table.remove(SpinTable, i)
			end
		end
	end
	if #projectiles > 0 then
		for i,v in pairs(projectiles) do
			if (v.Position - rootpart.Position).magnitude > 300 then
				v:Remove()
				table.remove(projectiles, i)
				local ball1 = Instance.new("Part", model)
					ball1.Size = Vector3.new(0,0,0)
					ball1.Name = "firework"
					ball1.Material = "Neon"
					ball1.BrickColor = BrickColor.new(MainColor)
					ball1.Anchored = true
					ball1.Transparency = 0
					ball1.CanCollide = false
					ball1.CFrame = CFrame.new(v.Position.x,v.Position.y,v.Position.z)
					local spikemesh = Instance.new("SpecialMesh", ball1) 
					spikemesh.Name = "SpikeMesh"
					spikemesh.MeshType = "Sphere"
					spikemesh.Scale = Vector3.new(5,5,5)
					table.insert(SpinTable,ball1)
					local s = Instance.new("Sound", ball1) --Crackle
					s.SoundId = "rbxassetid://435195821"
					s.EmitterSize = 100
					s.Volume = 0.6
					s:Play()
					game:GetService("Debris"):AddItem(s, 2)
					local s = Instance.new("Sound", ball1) --boom
					s.SoundId = "rbxassetid://514867425"
					s.EmitterSize = 100
					s.Volume = 100
					s:Play()
					game:GetService("Debris"):AddItem(s, 2)
					game:GetService("RunService").Stepped:wait()
				for i = 1,12 do --THIS IS A GOOD POINT
					local p = Instance.new("Part",ball1)
					p.Name = "firework"
					p.Size = Vector3.new(0,0,0)
					p.Transparency = 0
					p.CanCollide = true
					p.CFrame = ball1.CFrame*CFrame.new(math.random(-4,4),i,math.random(-4,4))
					p.Material = "Neon"
					p.BrickColor = BrickColor.new(Rainbow[i])
					local f = Instance.new("Fire",p)
					f.Color = BrickColor.new(Rainbow[i]).Color
					f.SecondaryColor = Color3.new(1,1,1)
					local spikemesh = Instance.new("BlockMesh", p) 
					spikemesh.Name = "SpikeMesh"
					spikemesh.Scale = Vector3.new(20,20,20)
					table.insert(TSTable, p)
				end
				wait(0.1)
				local e = Instance.new("Explosion", ball1)
					e.Position = ball1.Position
					e.BlastPressure = 100000
					e.BlastRadius = 20
					e.ExplosionType = "CratersAndDebris"
			else
				v.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
				local somethingWasHit = false
				local Region = CreateRegion3FromLocAndSize(v.Position, Vector3.new(1,1,1))
				for _,Part in pairs(workspace:FindPartsInRegion3WithIgnoreList(Region,{char},math.huge)) do
					if not somethingWasHit and Part.Name ~= "firework" and Part.Name ~= "firework1" and Part.Name ~= "projectile" and Part.Name ~= "Particle" then
						somethingWasHit = true
						v:Remove()
						table.remove(projectiles, i)
						takeDamage(v.Position, math.random(10,20), 13, false)
						for i = 1,6 do
							local ball = Instance.new("Part", model)
							ball.Size = Vector3.new(0,0,0)
							ball.Name = "firework1"
							ball.Material = "Neon"
							ball.BrickColor = BrickColor.new(MainColor)
							ball.Anchored = true
							ball.Transparency = 0.5
							ball.CanCollide = false
							if i == 1 then
								ball.CFrame = CFrame.new(v.Position.x,v.Position.y,v.Position.z)
								ball.Transparency = 0
							else
								ball.CFrame = CFrame.new(v.Position.x+math.random(-3,3),(v.Position.y+math.random(-3,3)),v.Position.z+math.random(-3,3))
							end
							local spikemesh = Instance.new("SpecialMesh", ball) 
							spikemesh.Name = "SpikeMesh"
							spikemesh.MeshType = "Sphere"
							spikemesh.Scale = Vector3.new(1,1,1)
							table.insert(SpinTable,ball)
							if i == 1 then
								local s = Instance.new("Sound", ball)
								s.SoundId = "rbxassetid://435195821"
								s.EmitterSize = 20
								s.Volume = 0.5
								s:Play()
								game:GetService("Debris"):AddItem(s, 5)
								local s = Instance.new("Sound", ball) --boom
								s.SoundId = "rbxassetid://540926687"
								s.EmitterSize = 50
								s.Volume = 1
								s:Play()
								game:GetService("Debris"):AddItem(s, 3)
							end
						end
					end
				end
			end
			pcall(function()
				v.CFrame = v.CFrame*CFrame.new(0,0,-3)
			end)
		end
	end
	if rainbowMode then
		Mana = 100
		ManaBar.BackgroundColor3 = BrickColor.new(Rainbow[rainbowNumber]).Color
		HealthBar.BackgroundColor3 = BrickColor.new(Rainbow[rainbowNumber]).Color
		Info.TextColor = BrickColor.new(Rainbow[rainbowNumber])
		Q.TextColor = BrickColor.new(Rainbow[rainbowNumber])
		E.TextColor = BrickColor.new(Rainbow[rainbowNumber])
		for i,v in pairs(char:GetChildren()) do
			if v:isA("Part") then
				v.Transparency = 1
				local cp = v:Clone()
				cp.CanCollide = false
				cp.Anchored = true
				cp.Material = "SmoothPlastic"
				cp.Transparency = 0
				cp.BrickColor = BrickColor.new(Rainbow[rainbowNumber])
				cp.CFrame = v.CFrame --*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20)))
				for _,extra in pairs(cp:GetChildren()) do
					if not extra:isA("SpecialMesh") then
						extra:Remove()
					end
				end
				if v.Name ~= "Head" then
					local mesh = Instance.new("BlockMesh")
					mesh.Parent = cp
					mesh.Scale = Vector3.new(1,1,1)
				end
				cp.Parent = model
				table.insert(bodyparts, cp)
			end
		end
	end
	if #bodyparts > 0 then
		for i,v in pairs(bodyparts) do
			if v.Transparency < 1 then
				v.Transparency = v.Transparency + 0.05
				--v.Mesh.Scale = v.Mesh.Scale-Vector3.new(0.05,0.05,0.05)
			else
				table.remove(bodyparts, i)
				v:Remove()
			end
		end
	end
	if rainbowNumber >= #Rainbow then
		rainbowNumber = 1
	else
		rainbowNumber = rainbowNumber + 1
	end
end)

local wtap = false
Mouse.KeyDown:connect(function(key)
	if key:lower() == "q" then
		spellMover = spells[#spells]
		table.remove(spells, #spells)
		table.insert(spells, 1, spellMover)
		loadSpellGui()
	elseif key:lower() == "e" then
		spellMover = spells[1]
		table.remove(spells, 1)
		table.insert(spells, #spells+1, spellMover)
		loadSpellGui()
	end
	if not inAction then
		if key:lower() == "w" then
			if wtap then
				if Mana > 0 then
					holdingw = true
					inAction = true
					isCharging = true
					char.Humanoid.WalkSpeed = 0
					char.Humanoid.JumpPower = 0
					actionWalking = false
					currentAnim = "DashDown"
					local dashs = Instance.new("Sound", torso) --whole opening
					dashs.SoundId = "rbxassetid://551066808" --ADD DASHING SOUND
					dashs.EmitterSize = 12
					dashs.Volume = 100
					dashs.Looped = true
					dashs:Play()
					wait(0.2)
					isCharging = false
					takeDamage(rootpart.Position, math.random(20,30), 10, false)
					char.Humanoid.WalkSpeed = 1
					currentAnim = "Dashing"
					if holdingw then
						repeat wait() until not holdingw
					else
						wait(0.3)
					end
					dashs:Remove()
					currentAnim = "DashSlowing"
					slowingDown = 1
					wait(0.5)
					char.Humanoid.JumpPower = jumpPower
					wtap = false
					actionWalking = true
					inAction = false
					char.Humanoid.WalkSpeed = CharacterSpeed
				end
			else
				wtap = true
				wait(0.2)
				wtap = false
			end
		end
	end
end)
Mouse.KeyUp:connect(function(key)
	if key:lower() == "w" then
		holdingw = false
	end
end)
Mouse.Button1Down:connect(function()
	holdingMouse1 = true
	if not inAction then
		if Mana >= currentSpell.ManaCost then
			Mana = Mana - currentSpell.ManaCost
			if currentSpell.Name == "Firework" then
				inAction = true
				currentAnim = "ArmUp"
				wait(0.05)
				currentAnim = "Slash1"
				isCharging = true
				wait(0.3)
				currentAnim = "SlashMini"
				wait(0.1)
				currentAnim = "Slash2"
				wait(0.08)
				if holdingMouse1 then 
					repeat if Mana >= currentSpell.ManaCost then Mana = (Mana - currentSpell.ManaCost) else holdingMouse1 = false end OriginalProjectile(Mouse.Hit.p) wait(0.1) currentAnim = "SlashMini" wait(0.2) currentAnim = "Slash2" until not holdingMouse1
				else
					OriginalProjectile(Mouse.Hit.p)
				end
				isCharging = false
				inAction = false
			elseif currentSpell.Name == "Void Crush" then
				inAction = true
				currentAnim = "Casting"
				char.Humanoid.WalkSpeed = CharacterSpeed/1.5
				walkingAnimationSpeed = walkingAnimationSpeed*1.5
				castingStart(1)
				wait(1)
				currentAnim = "SlashMini"
				wait(0.1)
				currentAnim = "Slash2"
				wait(0.08)
				createHole(Mouse.Hit.p, 30)
				char.Humanoid.WalkSpeed = CharacterSpeed
				walkingAnimationSpeed = walkingAnimationSpeed/1.5
				isCharging = false
				inAction = false
			elseif currentSpell.Name == "Teleport" then
				inAction = true
				currentAnim = "Casting"
				char.Humanoid.WalkSpeed = CharacterSpeed/1.5
				walkingAnimationSpeed = walkingAnimationSpeed*1.5
				castingStart(0.7)
				wait(0.5)
				if (torso.Position - Mouse.Hit.p).magnitude <= 3000 then
					local tball1 = Instance.new("Part", model)
					tball1.Size = Vector3.new(0,0,0)
					tball1.Name = "teleball"
					tball1.Material = "Neon"
					tball1.BrickColor = BrickColor.new(MainColor)
					tball1.Anchored = true
					tball1.Transparency = 0.95
					tball1.CanCollide = false
					tball1.CFrame = CFrame.new(Mouse.Hit.p.X, Mouse.Hit.p.Y+3, Mouse.Hit.p.Z)
					local spikemesh = Instance.new("SpecialMesh", tball1) 
					spikemesh.Name = "SpikeMesh"
					spikemesh.MeshType = "Sphere"
					spikemesh.Scale = Vector3.new(1,1,1)
					table.insert(SpinTable,tball1)
					local tball = Instance.new("Part", model)
					tball.Size = Vector3.new(0,0,0)
					tball.Name = "teleball"
					tball.Material = "Neon"
					tball.BrickColor = BrickColor.new(MainColor)
					tball.Anchored = false
					tball.Transparency = 0.95
					tball.CanCollide = false
					tball.CFrame = torso.CFrame
					local spikemesh = Instance.new("SpecialMesh", tball) 
					spikemesh.Name = "SpikeMesh"
					spikemesh.MeshType = "Sphere"
					spikemesh.Scale = Vector3.new(1,1,1)
					table.insert(SpinTable,tball)
					local TWeld = Instance.new("Weld",tball)
					TWeld.Part0 = tball
					TWeld.Part1 = torso
					TWeld.C0 = CFrame.new(0,0,0)
					wait(0.1)
					local s = Instance.new("Sound", torso)
						s.SoundId = "rbxassetid://289556450"
						s.EmitterSize = 5
						s.Volume = 1
						s:Play()
						game:GetService("Debris"):AddItem(s, 3)
					local laser2 = Instance.new("Part", model)
					laser2.Color = BrickColor.White().Color
					laser2.Transparency = 0.1
					laser2.Name = "transRainbowPart"
					laser2.Material = "Neon"
					laser2.Anchored = true
					laser2.CanCollide = false
					laser2.CFrame = CFrame.new(((tball.Position.X + tball1.Position.X) / 2), ((tball.Position.Y + tball1.Position.Y) / 2), ((tball.Position.Z + tball1.Position.Z) / 2))
					laser2.CFrame = CFrame.new(laser2.Position, tball1.Position)
					laser2.Size = Vector3.new(0, 0, (tball.Position - tball1.Position).magnitude)
					local bm = Instance.new("BlockMesh", laser2)
					bm.Scale = Vector3.new(2, 2, 1)
					table.insert(SpinTable,laser2)
					wait(0.1)
					TWeld:Remove()
					tball.CFrame = torso.CFrame
					tball.Anchored = true
					tball.Name = "teleballsmall"
					rootpart.CFrame = tball1.CFrame
					tball1.Name = "teleballsmall"
					end
					char.Humanoid.WalkSpeed = CharacterSpeed
					walkingAnimationSpeed = walkingAnimationSpeed/1.5
					isCharging = false
					inAction = false
			elseif currentSpell.Name == "True Form" then
				inAction = true
				currentAnim = "Casting"
				char.Humanoid.WalkSpeed = CharacterSpeed/1.5
				walkingAnimationSpeed = walkingAnimationSpeed*1.5
				wait(3)
				if rainbowMode then
					rainbowMode = false
					pcall(function()
						rainbows:Remove()
					end)
					for i,v in pairs(char:GetChildren()) do
						if v:isA("Part") then
							if v.Name ~= "HumanoidRootPart" then
								v.Transparency = 0
							end
						elseif v:isA("Accessory") then
							v.Handle.Transparency = 0
						end
					end
					CharacterSpeed = CharacterSpeed/2
					walkingAnimationSpeed = 3.5*1.5
					model.face.Parent = char.Head
					ManaBar.BackgroundColor3 = Color3.new(0, 0.317647, 1)
					HealthBar.BackgroundColor3 = Color3.new(0, 0.8, 0.02)
					Info.TextColor = BrickColor.new(MainColor)
					Q.TextColor = BrickColor.new(MainColor)
					E.TextColor = BrickColor.new(MainColor)
				else
					for i,v in pairs(char:GetChildren()) do
						if v:isA("Part") then
							if v.Name ~= "HumanoidRootPart" then
								v.Transparency = 1
							end
						elseif v:isA("Accessory") then
							v.Handle.Transparency = 1
						end
					end
					CharacterSpeed = CharacterSpeed*2
					walkingAnimationSpeed = 6*1.5
					char.Humanoid.WalkSpeed = CharacterSpeed
					char.Head.face.Parent = model
					rainbowMode = true
					rainbows = Instance.new("Sound", torso) --whole opening
					rainbows.SoundId = "rbxassetid://179794977"
					rainbows.EmitterSize = 6
					rainbows.Volume = 100
					rainbows:Play()
					rainbows.Looped = true
				end
				char.Humanoid.WalkSpeed = CharacterSpeed
				walkingAnimationSpeed = walkingAnimationSpeed/1.5
				isCharging = false
				inAction = false
			end
		else
			print("Not enough mana")
		end
	end
end)
Mouse.Button1Up:connect(function()
	holdingMouse1 = false
end)