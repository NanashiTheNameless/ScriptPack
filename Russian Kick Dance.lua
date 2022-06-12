Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
it = Instance.new
vt = Vector3.new
cf = CFrame.new
rad = math.rad
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
Mouse = Player:GetMouse()
coroutine.resume(coroutine.create(function()
game.StarterGui:SetCore("ChatMakeSystemMessage", {
	Text = "Fixed by PixelFir3 / Cortana#8155";
	Color = Color3.new(0, 1, 1);
	Font = Enum.Font.Code;
	FontSize = Enum.FontSize.Size24;
})
end))
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = 0.016666666666667
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	
	tf = tf + s
	if frame <= tf then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end
)
local animationspeed = 2
hbwait = function(number)
	
	if number == 0 or number == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, number do
			ArtificialHB.Event:wait()
		end
	end
end

local Stats = Instance.new("Folder", Character)
Stats.Name = "Stats"
local Defense = Instance.new("NumberValue", Stats)
Defense.Name = "Defense"
Defense.Value = 0.1
local Movement = Instance.new("NumberValue", Stats)
Movement.Name = "Movement"
Movement.Value = 0.35
local Damage = Instance.new("NumberValue", Stats)
Damage.Name = "Damage"
Damage.Value = 0
local Mana = Instance.new("NumberValue", Stats)
Mana.Name = "Mana"
Mana.Value = 0
local Rooted = Instance.new("BoolValue", Stats)
Rooted.Name = "Rooted"
Rooted.Value = false
local BlockValue = Instance.new("BoolValue", Stats)
BlockValue.Name = "BlockValue"
BlockValue.Value = false
local StaggerHitAnim = Instance.new("BoolValue", Stats)
StaggerHitAnim.Name = "StaggerHitAnim"
StaggerHitAnim.Value = false
local StaggerAnim = Instance.new("BoolValue", Stats)
StaggerAnim.Name = "StaggerAnim"
StaggerAnim.Value = false
local StunAnim = Instance.new("BoolValue", Stats)
StunAnim.Name = "StunAnim"
StunAnim.Value = false
local StunValue = Instance.new("NumberValue", Stats)
StunValue.Name = "StunValue"
StunValue.Value = 0
local CanCrit = Instance.new("BoolValue", Stats)
CanCrit.Name = "CanCrit"
CanCrit.Value = false
local CritChance = Instance.new("NumberValue", Stats)
CritChance.Name = "CritChance"
CritChance.Value = 20
local CanPenetrateArmor = Instance.new("BoolValue", Stats)
CanPenetrateArmor.Name = "CanPenetrateArmor"
CanPenetrateArmor.Value = false
local AntiTeamKill = Instance.new("BoolValue", Stats)
AntiTeamKill.Name = "AntiTeamKill"
AntiTeamKill.Value = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootCF = angles(rad(-90), 0, rad(180))
local idle = 0
local Anim = "Idle"
local animtype = math.floor(math.random(1, 3))
local attacktype = 1
local attack = false
local equipped = false
local LastPoint = nil
local staggerhitanim = false
local staggeranim = false
local stunanim = false
local CritChanceNumber = 0
local idlen = 0
local donum = 0
local sine = 0
local change = 2 / animationspeed
local walkinganim = false
local handidle = false
local walk = 0
local stundelay = 0
local manadelay = 0
local robloxidleanimation = Instance.new("Animation", Torso)
robloxidleanimation.Name = "robloxidleanimation"
robloxidleanimation.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local Animator = Humanoid:FindFirstChild("Animator")
local Animate = Character:FindFirstChild("Animate")
local HitPlayerSounds = {199149137, 199149186, 199149221, 199149235, 199149269, 199149297}
local HitArmorSounds = {199149321, 199149338, 199149367, 199149409, 199149452}
local HitWeaponSounds = {199148971, 199149025, 199149072, 199149109, 199149119}
local HitBlockSounds = {199148933, 199148947}
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local scrn = Instance.new("ScreenGui", PlayerGui)
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
subtractmana = function(k)
	
	if k <= Mana.Value then
		Mana.Value = Mana.Value - k
	end
end

local co1 = 0
local co2 = 0
local co3 = 0
local co4 = 0
local maxmana = 0
local maxstun = 1
local recovermana = 0
local losestun = 0
local stunwait = 0
local manawait = 0
local skill1mana = 0
local skill2mana = 0
local skill3mana = 0
local skill4mana = 0
local menuupdatespeed = 0
local constantupdate = false
local showstats = false
local allowstunbar = false
local CustomColor = Torso.BrickColor
local Colorpart1 = CustomColor.r
local Colorpart2 = CustomColor.g
local Colorpart3 = CustomColor.b
local InverseColor = BrickColor.new(Color3.new(1 - Colorpart1, 1 - Colorpart2, 1 - Colorpart3))
makeframe = function(par, trans, pos, size, color, name)
	
	local frame = Instance.new("Frame")
	frame.Parent = par
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 2
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	frame.Name = name
	return frame
end

makelabel = function(par, text, trans, stroketrans, name)
	
	local label = Instance.new("TextLabel")
	label.Parent = par
	label.BackgroundTransparency = 1
	label.Size = ud(1, 0, 1, 0)
	label.Position = ud(0, 0, 0, 0)
	label.TextColor3 = c3(255, 255, 255)
	label.TextStrokeTransparency = stroketrans
	label.TextTransparency = trans
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.Legacy
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
	label.Name = name
	return label
end

framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Frame 1")
framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Frame 2")
framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Frame 3")
framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Frame 4")
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(0, 0, 1, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Bar 1")
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(0, 0, 1, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Bar 2")
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(0, 0, 1, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Bar 3")
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(0, 0, 1, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Bar 4")
text1 = makelabel(framesk1, "[C] Ability 3", 1, 1, "Text 1")
text2 = makelabel(framesk2, "[V] Ability 4", 1, 1, "Text 2")
text3 = makelabel(framesk3, "[X] Ability 2", 1, 1, "Text 3")
text4 = makelabel(framesk4, "[Z] Ability 1", 1, 1, "Text 4")
manabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Mana Bar")
manacover = makeframe(manabar, 0, ud(0, 0, 0, 0), ud(0, 0, 1, 0), c3(Colorpart1, Colorpart2, Colorpart3), "Mana Cover")
manatext = makelabel(manabar, "Mana", 1, 1, "Mana Text")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0, 0), c3(1, 0.19607843137255, 0.19607843137255), "Health Bar")
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(0, 0, 1, 0), c3(1, 0.19607843137255, 0.19607843137255), "Health Cover")
healthtext = makelabel(healthbar, "Health", 1, 1, "Health Text")
if allowstunbar == true then
	stunframe = makeframe(scrn, 0.5, ud(0.5, 0, 0.78, 0), ud(0.26, 0, 0, 0), c3(1, 1, 0.19607843137255), "Stun Frame")
	stunbar = makeframe(stunframe, 0, ud(0, 0, 0, 0), ud(0, 0, 1, 0), c3(1, 1, 0.19607843137255), "Stun Bar")
	stuntext = makelabel(stunframe, "Stun", 1, 1, "Stun Text")
end
if showstats == true then
	defenseframe = makeframe(scrn, 0.5, ud(0.23, 0, 0.78, 0), ud(0.075, 0, 0, 0), c3(0.3921568627451, 0.3921568627451, 1), "Defense Frame")
	damageframe = makeframe(scrn, 0.5, ud(0.3225, 0, 0.78, 0), ud(0.075, 0, 0, 0), c3(1, 0.3921568627451, 0.3921568627451), "Damage Frame")
	movementframe = makeframe(scrn, 0.5, ud(0.415, 0, 0.78, 0), ud(0.075, 0, 0, 0), c3(0.3921568627451, 1, 0.3921568627451), "Movement Frame")
	defensetext = makelabel(defenseframe, "Defense: " .. Defense.Value, 1, 1, "Defense Text")
	damagetext = makelabel(damageframe, "Damage: " .. Damage.Value, 1, 1, "Damage Text")
	movementtext = makelabel(movementframe, "Movement: " .. Movement.Value, 1, 1, "Movement Text")
end
NoOutline = function(Part)
	
	Part.TopSurface = 10
end

local weldBetween = function(a, b)
	
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end

nooutline = function(part)
	
	part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	
	local fp = it("Part")
	fp.formFactor = formfactor
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false
	fp.Locked = true
	fp.BrickColor = BrickColor.new(tostring(brickcolor))
	fp.Name = name
	fp.Size = size
	fp.Position = Character.Torso.Position
	nooutline(fp)
	fp.Material = material
	fp:BreakJoints()
	return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
	
	local mesh = it(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

weld = function(parent, part0, part1, c0, c1)
	
	local weld = it("Motor")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0
	weld.C1 = c1
	return weld
end

local WeaponName = "Russian Kick"
local ClassName = "Russian Kick"
local PlayerSize = 1
local RWC0 = cf(-0.5, 0, 0) * angles(rad(0), rad(90), rad(0))
local LWC0 = cf(0.5, 0, 0) * angles(rad(0), rad(-90), rad(0))
if PlayerSize ~= 1 then
	RootPart.Size = RootPart.Size * PlayerSize
	Torso.Size = Torso.Size * PlayerSize
	Head.Size = Head.Size * PlayerSize
	RightArm.Size = RightArm.Size * PlayerSize
	LeftArm.Size = LeftArm.Size * PlayerSize
	RightLeg.Size = RightLeg.Size * PlayerSize
	LeftLeg.Size = LeftLeg.Size * PlayerSize
	RootJoint.Parent = RootPart
	Neck.Parent = Torso
	LS.Parent = Torso
	RS.Parent = Torso
	LH.Parent = Torso
	RH.Parent = Torso
	RootJoint.C0 = RootCF * cf(0 * PlayerSize, 0 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0))
	Neck.C0 = necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(0), rad(0))
	Neck.C1 = angles(rad(90), rad(180), 0) * cf(0, 0, -0.5 * PlayerSize)
	RS.C0 = cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * RWC0
	LS.C0 = cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * LWC0
	RS.C1 = angles(0, rad(90), 0) * cf(0, 0.5 * PlayerSize, -0.5)
	LS.C1 = angles(0, rad(-90), 0) * cf(0, 0.5 * PlayerSize, -0.5)
	RH.C0 = cf(1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(0))
	LH.C0 = cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0))
	RH.C1 = angles(0, rad(90), 0) * cf(0, 1 * PlayerSize, 0.5 * PlayerSize)
	LH.C1 = angles(0, rad(-90), 0) * cf(0, 1 * PlayerSize, 0.5 * PlayerSize)
	for _,v in pairs(Character:GetChildren()) do
		if v.ClassName == "Hat" or v.ClassName == "Accessory" then
			v.Parent = nil
			v.Parent = Character
			v.Handle.Mesh.Scale = v.Handle.Mesh.Scale * PlayerSize
			for _,b in pairs(v.Handle:GetChildren()) do
				if b.ClassName == "Weld" or b.ClassName == "Motor" then
					local p1 = b.Part1
					b.Part1 = nil
					local c01, c02, c03, c04, c05, c06, c07, c08, c09, c010, c011, c012 = b.C0:components()
					local c11, c12, c13, c14, c15, c16, c17, c18, c19, c110, c111, c112 = b.C1:components()
					b.C0 = cf(c01 * PlayerSize, c02 * PlayerSize, c03 * PlayerSize, c04, c05, c06, c07, c08, c09, c010, c011, c012)
					b.C1 = cf(c11 * PlayerSize, c12 * PlayerSize, c13 * PlayerSize, c14, c15, c16, c17, c18, c19, c110, c111, c112)
					b.Part1 = p1
				end
			end
		end
	end
end
	m = Instance.new("Model", Character)
	m.Name = WeaponName
	Effects = Instance.new("Folder", m)
	Effects.Name = "Effects"
	Humanoid.Died:connect(function()
	
	attack = true
	for _,v in pairs(Character:GetChildren()) do
		if v.ClassName == "Model" then
			v:Destroy()
		end
	end
end
)
	for i,v in pairs(Character:GetChildren()) do
		if v.ClassName == "Model" then
			for _,c in pairs(v:GetChildren()) do
				if c.ClassName == "Part" then
					c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
				end
			end
		end
	end
	print(ClassName .. " loaded.")
	clerp = function(a, b, t)
return a:lerp(b, t)
end

	positiveangle = function(number)
	
	if number > 0 then
		number = 0
	end
	return number
end

	negativeangle = function(number)
	
	if number < 0 then
		number = 0
	end
	return number
end

	so = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = "http://roblox.com/asset/?id=" .. id
		hbwait()
		sou:play()
		game:GetService("Debris"):AddItem(sou, 10)
	end
))
end

	GetDistance = function(Part1, Part2, magnitude)
	
	local target = Part1.Position - Part2.Position
	local mag = target.magnitude
	if mag <= magnitude then
		return true
	else
		return false
	end
end

	rayCast = function(Pos, Dir, Max, Ignore)
	
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

	DamageStatLabel = function(labeltype, cframe, text, color)
	
	local c = part(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", vt(0, 0, 0))
	c.CFrame = cf(cframe.p + vt(0, 1.5, 0))
	game:GetService("Debris"):AddItem(c, 5)
	Instance.new("BodyGyro", c)
	local f = Instance.new("BodyPosition", c)
	f.P = 2000
	f.D = 100
	f.maxForce = vt(math.huge, math.huge, math.huge)
	if labeltype == "Normal" then
		f.position = c.Position + vt(math.random(-2, 2), 6, math.random(-2, 2))
	else
		if labeltype == "Debuff" then
			f.position = c.Position + vt(math.random(-2, 2), 8, math.random(-2, 2))
		else
			if labeltype == "Interruption" then
				f.position = c.Position + vt(math.random(-2, 2), 8, math.random(-2, 2))
			end
		end
	end
	game:GetService("Debris"):AddItem(c, 5)
	local bg = Instance.new("BillboardGui", c)
	bg.Adornee = c
	bg.Size = UDim2.new(2.5, 0, 2.5, 0)
	bg.StudsOffset = vt(-2, 2, 0)
	bg.AlwaysOnTop = false
	local tl = Instance.new("TextLabel", bg)
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(2.5, 0, 2.5, 0)
	tl.Text = text
	tl.Font = Enum.Font.SourceSans
	tl.FontSize = Enum.FontSize.Size42
	tl.TextColor3 = color
	tl.TextScaled = false
	tl.TextStrokeTransparency = 0
	tl.TextScaled = true
	tl.TextWrapped = true
	f.Parent = c
	coroutine.resume(coroutine.create(function(Part, BodyPosition, TextLabel)
		
		wait(0.25)
		for i = 1, 5 do
			wait()
			BodyPosition.position = Part.Position - vt(0, 0.5, 0)
		end
		wait(1.25)
		for i = 1, 5 do
			wait()
			TextLabel.TextTransparency = TextLabel.TextTransparency + 0.2
			TextLabel.TextStrokeTransparency = TextLabel.TextStrokeTransparency + 0.2
			BodyPosition.position = Part.Position + vt(0, 0.5, 0)
		end
		Part.Parent = nil
	end
), c, f, tl)
end

	IncreaseStat = function(Location, Stat, Amount, Duration, ShowTheStat)
	
	-- DECOMPILER ERROR at PC28: Unhandled construct in 'MakeBoolean' P1

	-- DECOMPILER ERROR at PC28: Unhandled construct in 'MakeBoolean' P1

	if Location:FindFirstChild("Stats") ~= nil and Location.Stats:FindFirstChild("BlockValue") ~= nil and Location.Stats:FindFirstChild("BlockValue").Value ~= true and Location.Stats[Stat] ~= nil then
		Location.Stats[Stat].Value = Location.Stats[Stat].Value + Amount
		if ShowTheStat == true then
			if Stat == "Defense" then
				DamageStatLabel("Debuff", Location.Head.CFrame, "+Defense", c3(1, 1, 1))
			else
				if Stat == "Damage" then
					DamageStatLabel("Debuff", Location.Head.CFrame, "+Damage", c3(1, 1, 1))
				else
					if Stat == "Movement" then
						DamageStatLabel("Debuff", Location.Head.CFrame, "+Movement", c3(1, 1, 1))
					end
				end
			end
		end
		coroutine.resume(coroutine.create(function(CurrentDecrease)
		
		wait(Duration)
		CurrentDecrease.Value = CurrentDecrease.Value - Amount
	end
), Location.Stats[Stat])
	end
	DamageStatLabel("Interruption", Location.Head.CFrame, "Blocked!", Color3.new(0, 0.3921568627451, 1))
end

	DecreaseStat = function(Location, Stat, Amount, Duration, ShowTheStat)
	
	-- DECOMPILER ERROR at PC28: Unhandled construct in 'MakeBoolean' P1

	-- DECOMPILER ERROR at PC28: Unhandled construct in 'MakeBoolean' P1

	if Location:FindFirstChild("Stats") ~= nil and Location.Stats:FindFirstChild("BlockValue") ~= nil and Location.Stats:FindFirstChild("BlockValue").Value ~= true and Location.Stats[Stat] ~= nil then
		Location.Stats[Stat].Value = Location.Stats[Stat].Value - Amount
		if ShowTheStat == true then
			if Stat == "Defense" then
				DamageStatLabel("Debuff", Location.Head.CFrame, "-Defense", c3(1, 1, 1))
			else
				if Stat == "Damage" then
					DamageStatLabel("Debuff", Location.Head.CFrame, "-Damage", c3(1, 1, 1))
				else
					if Stat == "Movement" then
						DamageStatLabel("Debuff", Location.Head.CFrame, "-Movement", c3(1, 1, 1))
					end
				end
			end
		end
		coroutine.resume(coroutine.create(function(CurrentDecrease)
		
		wait(Duration)
		CurrentDecrease.Value = CurrentDecrease.Value + Amount
	end
), Location.Stats[Stat])
	end
	DamageStatLabel("Interruption", Location.Head.CFrame, "Blocked!", Color3.new(0, 0.3921568627451, 1))
end

	Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staggerhit, ranged, DecreaseTheStat, DecreaseAmount, DecreaseDuration, ShowDecreasedStat)
	
	if hit.Parent == nil then
		return 
	end
	h = hit.Parent:FindFirstChild("Humanoid")
	for _,v in pairs(hit.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if hit.Name == "Hitbox" and ranged ~= true and hit.Parent ~= m then
		StaggerHitAnim.Value = true
		so(HitWeaponSounds[math.random(1, #HitWeaponSounds)], hit, 1, 1)
		return 
	end
	if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
		h = hit.Parent.Parent:FindFirstChild("Humanoid")
	end
	if hit.Parent.className == "Hat" then
		hit = hit.Parent.Parent:FindFirstChild("Head")
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:FindFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
			return 
		end
		if AntiTeamKill.Value == true and Player.Neutral == false and game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor == Player.TeamColor then
			return 
		end
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid").Health <= 0 then
			return 
		end
		if hit.Parent:FindFirstChild("Stats") ~= nil and hit.Parent.Stats:FindFirstChild("StunValue") ~= nil then
			hit.Parent.Stats:FindFirstChild("StunValue").Value = hit.Parent.Stats:FindFirstChild("StunValue").Value + incstun
		end
		if hit.Parent:FindFirstChild("Stats") ~= nil and hit.Parent.Stats:FindFirstChild("StaggerAnim") ~= nil and stagger == true then
			hit.Parent.Stats:FindFirstChild("StaggerAnim").Value = true
		end
		if hit.Parent:FindFirstChild("Stats") ~= nil and hit.Parent.Stats:FindFirstChild("BlockValue") ~= nil and hit.Parent.Stats:FindFirstChild("BlockValue").Value == true then
			if hit.Parent.Stats:FindFirstChild("BlockDebounce") == nil then
				DamageStatLabel("Interruption", hit.Parent.Head.CFrame, "Blocked!", Color3.new(0, 0.3921568627451, 1))
				local BlockDebounce = Instance.new("BoolValue", hit.Parent.Stats)
				BlockDebounce.Name = "BlockDebounce"
				BlockDebounce.Value = true
				game:GetService("Debris"):AddItem(BlockDebounce, 0.1)
			end
			do
				if ranged ~= true then
					do
						if hit.Parent.Stats:FindFirstChild("BlockDebounce2") == nil then
							local BlockDebounce2 = Instance.new("BoolValue", hit.Parent.Stats)
							BlockDebounce2.Name = "BlockDebounce2"
							BlockDebounce2.Value = true
							game:GetService("Debris"):AddItem(BlockDebounce2, 0.1)
							so(HitBlockSounds[math.random(1, #HitBlockSounds)], hit, 1, 1)
						end
						hit.Parent.Stats:FindFirstChild("BlockValue").Value = false
						StaggerAnim.Value = true
						do return  end
						if DecreaseTheStat ~= nil and hit.Parent:FindFirstChild("Stats") ~= nil then
							if DecreaseTheStat == "Defense" then
								DecreaseStat(hit.Parent, "Defense", DecreaseAmount, DecreaseDuration, ShowDecreasedStat)
							else
								if DecreaseTheStat == "Damage" then
									DecreaseStat(hit.Parent, "Damage", DecreaseAmount, DecreaseDuration, ShowDecreasedStat)
								else
									if DecreaseTheStat == "Movement" then
										DecreaseStat(hit.Parent, "Movement", DecreaseAmount, DecreaseDuration, ShowDecreasedStat)
									end
								end
							end
						end
						local D = math.random(minim, maxim) * Damage.Value
						if hit.Parent:FindFirstChild("Stats") ~= nil then
							if hit.Parent.Stats:FindFirstChild("Defense") then
								if CanPenetrateArmor.Value == true then
									D = D / hit.Parent.Stats:FindFirstChild("Defense").Value
									-- DECOMPILER ERROR at PC377: Unhandled construct in 'MakeBoolean' P1

									if hit.Parent.Stats:FindFirstChild("Defense") ~= nil or CanCrit.Value == true then
										CritChanceNumber = math.random(1, CritChance.Value)
										if CritChanceNumber == CritChance.Value then
											D = D * 2
										end
									end
									D = math.floor(D)
									h.Health = h.Health - D
									if D <= 3 and staggerhit == true then
										if ranged ~= true then
											StaggerHitAnim.Value = true
										end
										if ranged ~= true then
											so(HitArmorSounds[math.random(1, #HitArmorSounds)], hit, 1, 1)
										end
									else
										if D > 3 and ranged ~= true then
											so(HitPlayerSounds[math.random(1, #HitPlayerSounds)], hit, 1, 1)
										end
									end
									if D > 3 and D < 20 then
										if CanCrit.Value == true and CritChanceNumber == CritChance.Value then
											DamageStatLabel("Normal", hit.Parent.Head.CFrame, "Crit! " .. D, Color3.new(0.7843137254902, 0, 0))
											so("296102734", hit, 1, 1)
										else
											DamageStatLabel("Normal", hit.Parent.Head.CFrame, D, Color3.new(1, 0.86274509803922, 0))
										end
									else
										if D >= 20 then
											if CanCrit.Value == true and CritChanceNumber == CritChance.Value then
												DamageStatLabel("Normal", hit.Parent.Head.CFrame, "Crit! " .. D, Color3.new(0.7843137254902, 0, 0))
												so("296102734", hit, 1, 1)
											else
												DamageStatLabel("Normal", hit.Parent.Head.CFrame, D, Color3.new(1, 0, 0))
											end
										else
											if D <= 3 then
												if CanCrit.Value == true and CritChanceNumber == CritChance.Value then
													DamageStatLabel("Normal", hit.Parent.Head.CFrame, "Crit! " .. D, Color3.new(0.7843137254902, 0, 0))
													so("296102734", hit, 1, 1)
												else
													DamageStatLabel("Normal", hit.Parent.Head.CFrame, D, Color3.new(0.88235294117647, 0.88235294117647, 0.88235294117647))
												end
											end
										end
									end
									do
										if Type == "Normal" then
											local vp = Instance.new("BodyVelocity")
											vp.P = 500
											vp.maxForce = vt(math.huge, 0, math.huge)
											if KnockbackType == 1 then
												vp.Velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
											else
												if KnockbackType == 2 then
													vp.Velocity = Property.CFrame.lookVector * knockback
												end
											end
											if knockback > 0 then
												vp.Parent = hit.Parent.Torso
											end
											game:GetService("Debris"):AddItem(vp, 0.5)
										end
										local DebounceHit = Instance.new("BoolValue", hit.Parent)
										DebounceHit.Name = "DebounceHit"
										DebounceHit.Value = true
										game:GetService("Debris"):AddItem(DebounceHit, Delay)
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

	MagniDamage = function(Part, magni, mindam, maxdam, knock, Type, Property, Delay, KnockbackType, incstun, stagger, staggerhit, ranged, MagicDecreaseTheStat, MagicDecreaseAmount, MagicDecreaseDuration, MagicShowDecreasedStat)
	
	for _,c in pairs(workspace:GetChildren()) do
		local hum = (c:FindFirstChild("Humanoid"))
		local head = nil
		if hum ~= nil then
			head = c:FindFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					Damagefunc(head, mindam, maxdam, knock, Type, Property, Delay, KnockbackType, incstun, stagger, staggerhit, ranged, MagicDecreaseTheStat, MagicDecreaseAmount, MagicDecreaseDuration, MagicShowDecreasedStat)
				end
			end
			do
				for _,d in pairs(c:GetChildren()) do
					if d.ClassName == "Model" and ranged ~= true then
						head = d:FindFirstChild("Hitbox")
						if head ~= nil then
							local targ = head.Position - Part.Position
							local mag = targ.magnitude
							if mag <= magni and c.Name ~= Player.Name then
								local hitrefpart = part(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", vt())
								hitrefpart.Anchored = true
								hitrefpart.CFrame = cf(head.Position)
								so(HitWeaponSounds[math.random(1, #HitWeaponSounds)], hitrefpart, 1, 1)
								StaggerHitAnim.Value = true
							end
						end
					end
				end
				do
					-- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out DO_STMT

					-- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_THEN_STMT

					-- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_STMT

				end
			end
		end
	end
end

	MagniBufforDebuff = function(Part, Magni, Type, Stat, Amount, Duration, ShowTheBufforDebuff, ApplyToOthersInstead)
	
	if Player.Neutral == true then
		if Type == "Buff" then
			IncreaseStat(Character, Stat, Amount, Duration, ShowTheBufforDebuff)
		else
			if Type == "Debuff" then
				DecreaseStat(Character, Stat, Amount, Duration, ShowTheBufforDebuff)
			end
		end
	end
	for _,c in pairs(workspace:GetChildren()) do
		local hum = (c:FindFirstChild("Humanoid"))
		local head = nil
		if hum ~= nil then
			head = c:FindFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				-- DECOMPILER ERROR at PC83: Unhandled construct in 'MakeBoolean' P1

				if ApplyToOthersInstead == true and mag <= Magni and c.Name ~= Player.Name and Player.Neutral == false and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
					if Type == "Buff" then
						IncreaseStat(head.Parent, Stat, Amount, Duration, ShowTheBufforDebuff)
					else
						if Type == "Debuff" then
							DecreaseStat(head.Parent, Stat, Amount, Duration, ShowTheBufforDebuff)
						end
					end
				end
			end
		end
		if ApplyToOthersInstead == false and mag <= Magni and Player.Neutral == false and game.Players:GetPlayerFromCharacter(head.Parent) ~= nil and game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
			if Type == "Buff" then
				IncreaseStat(head.Parent, Stat, Amount, Duration, ShowTheBufforDebuff)
			else
				if Type == "Debuff" then
					DecreaseStat(head.Parent, Stat, Amount, Duration, ShowTheBufforDebuff)
				end
			end
		end
	end
end

	Lightning = function(p0, p1, tym, ofs, brickcolor, material, th, tra, last)
	
	local magz = p0 - p1.magnitude
	local curpos = p0
	local trz = {-ofs, ofs}
	for i = 1, tym do
		local li = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt(th, th, magz / tym))
		do
			li.Anchored = true
			local ofz = vt(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
			local trolpos = cf(curpos, p1) * cf(0, 0, magz / tym).p + ofz
			if tym == i then
				local magz2 = curpos - p1.magnitude
				li.Size = vt(th, th, magz2)
				li.CFrame = cf(curpos, p1) * cf(0, 0, -magz2 / 2)
			else
				do
					do
						li.CFrame = cf(curpos, trolpos) * cf(0, 0, magz / tym / 2)
						curpos = li.CFrame * cf(0, 0, magz / tym / 2).p
						game.Debris:AddItem(li, last)
						coroutine.resume(coroutine.create(function()
		
		while li.Transparency ~= 1 do
			for i = 0, 1, last do
				hbwait()
				li.Transparency = li.Transparency + 0.1 / last
			end
		end
	end
))
					end
					-- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_ELSE_STMT

					-- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_STMT

					-- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out DO_STMT

				end
			end
		end
	end
end

	MagicRing = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicWave = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, -0.1 * z1), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicBlock = function(brickcolor, material, rotate, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			if rotate == true then
				Part.CFrame = Part.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			end
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicBlock2 = function(brickcolor, material, rotate, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	CF = prt.CFrame
	num = math.random(5, 20)
	coroutine.resume(coroutine.create(function(Part, Mesh, CF2, Num)
		
		for i = 0, 1, delay do
			hbwait()
			if rotate == true then
				Part.CFrame = CF2 * cf(0, i * Num, 0) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			else
				Part.CFrame = CF2 * cf(0, i * Num, 0)
			end
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh, CF, num)
end

	MagicCylinder = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicCircle = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicHead = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	BreakEffect = function(brickcolor, material, rotate, cframe, x1, y1, z1, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, CF, Numbb, randnumb)
		
		CF = Part.CFrame
		Numbb = 0
		randnumb = math.random() - math.random()
		for i = 0, 1, delay do
			hbwait()
			CF = CF * cf(0, 1, 0)
			if rotate == true then
				Part.CFrame = CF * angles(Numbb, 0, 0)
			else
				if rotate == false then
					Part.CFrame = CF
				end
			end
			Part.Transparency = i
			Numbb = Numbb + (randnumb)
		end
		Part.Parent = nil
	end
), prt, CF, Numbb, randnumb)
end

	ElecEffect = function(brickcolor, material, cf, x, y, z, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cf
	xval = math.random()
	yval = math.random()
	zval = math.random()
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x, y, z))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh, xvaal, yvaal, zvaal)
		
		for i = 0, 1, delay do
			hbwait()
			Part.CFrame = Part.CFrame
			xvaal = xvaal - 0.1 * (delay * 10)
			yvaal = yvaal - 0.1 * (delay * 10)
			zvaal = zvaal - 0.1 * (delay * 10)
			Mesh.Scale = Mesh.Scale + vt(xvaal, yvaal, zvaal)
			Part.Transparency = i
		end
		Part.Parent = nil
	end
), prt, msh, xval, yval, zval)
end

	TrailEffect = function(brickcolor, material, currentcf, oldcf, meshtype, reflectance, size, x, y, z, delay)
	
	local magnitudecframe = currentcf.p - oldcf.p.magnitude
	if magnitudecframe > 0.01 then
		local prt = part(3, Effects, material, reflectance, 0, brickcolor, "Effect", vt(1, magnitudecframe, 1))
		prt.Anchored = true
		prt.CFrame = cf((currentcf.p + oldcf.p) / 2, oldcf.p) * angles(rad(90), 0, 0)
		local TheMeshType = "BlockMesh"
		if meshtype == "Cylinder" then
			TheMeshType = "CylinderMesh"
		end
		local msh = mesh(TheMeshType, prt, "", "", vt(0, 0, 0), vt(0 + size, 1, 0 + size))
		game:GetService("Debris"):AddItem(prt, 10)
		coroutine.resume(coroutine.create(function(Part, Mesh, TheCurrentCFrame, TheLastCFrame)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x, y, z)
		end
		Part.Parent = nil
	end
), prt, msh, currentcf, oldcf)
	end
end

	ClangEffect = function(brickcolor, material, cframe, angle, duration, size, power, reflectance, x, y, z, delay)
	
	local prt = part(3, Effects, material, 0, 1, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(0, 0, 0))
	game:GetService("Debris"):AddItem(prt, 10)
	local TheLastPoint = cframe
	coroutine.resume(coroutine.create(function(Part)
		
		for i = 1, duration do
			hbwait()
			Part.CFrame = Part.CFrame * angles(rad(angle), 0, 0) * cf(0, power, 0)
			TrailEffect(brickcolor, material, Part.CFrame, TheLastPoint, "Cylinder", reflectance, size, x, y, z, delay)
			TheLastPoint = Part.CFrame
		end
		Part.Parent = nil
	end
), prt)
end

	MagicCone = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1778999", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicFlatCone = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1033714", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicSpikedCrown = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1323306", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicCrown = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1078075", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	MagicSkull = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = part(3, Effects, material, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=4770583", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			hbwait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	local startequipped = true
	local startequippedwithequipanimation = false
	local disableanimator = true
	local disableanimate = true
	local alternatewalk = false
	local hidemenu = false
	local allowmenutofunction = false
	local allowabilitiestofunction = false
	local canunequiporequip = false
	local allowwalking = false
	local disablemovingarms = false
	local usemotorsinsteadofwelds = false
	local leftarm = false
	local rightarm = false
	local allowhopperbin = false
	local showstunbar = false
	local walkspeeddependsonmovementvalue = true
	local alternatemanaregensystem = false
	local showhealthmanaandstunnumbers = false
	local changebarcolorsifnotenoughmana = false
	local disablejump = false
	if hidemenu == true or allowmenutofunction == false then
		for _,v in pairs(scrn:GetChildren()) do
			if v.ClassName == "Frame" or v.ClassName == "TextLabel" then
				v.Visible = false
				v.BorderSizePixel = 0
			end
		end
	end
	do
		Humanoid.Changed:connect(function(Jump)
	
	if Jump == "Jump" and disablejump == true then
		Humanoid.Jump = false
	end
end
)
		if allowmenutofunction == true then
			for _,v in pairs(scrn:GetChildren()) do
				if v.ClassName == "Frame" then
					for _,b in pairs(v:GetChildren()) do
						if b.ClassName == "TextLabel" then
							coroutine.resume(coroutine.create(function(TheTextLabel)
	
	wait(menuupdatespeed)
	for i = 1, 0, -0.1 do
		hbwait()
		TheTextLabel.TextTransparency = i
		TheTextLabel.TextStrokeTransparency = i
	end
	TheTextLabel.TextTransparency = 0
	TheTextLabel.TextStrokeTransparency = 0
end
), b)
							if showstats == true then
								coroutine.resume(coroutine.create(function(TheTextLabel)
	
	wait(menuupdatespeed)
	for i = 1, 0, -0.1 do
		hbwait()
		TheTextLabel.TextTransparency = i
		TheTextLabel.TextStrokeTransparency = i
	end
	TheTextLabel.TextTransparency = 0
	TheTextLabel.TextStrokeTransparency = 0
end
), b)
							end
							if showstunbar == true then
								coroutine.resume(coroutine.create(function(TheTextLabel)
	
	wait(menuupdatespeed)
	for i = 1, 0, -0.1 do
		hbwait()
		TheTextLabel.TextTransparency = i
		TheTextLabel.TextStrokeTransparency = i
	end
	TheTextLabel.TextTransparency = 0
	TheTextLabel.TextStrokeTransparency = 0
end
), b)
							end
							if allowabilitiestofunction == true then
								coroutine.resume(coroutine.create(function(TheTextLabel)
	
	wait(menuupdatespeed)
	for i = 1, 0, -0.1 do
		hbwait()
		TheTextLabel.TextTransparency = i
		TheTextLabel.TextStrokeTransparency = i
	end
	TheTextLabel.TextTransparency = 0
	TheTextLabel.TextStrokeTransparency = 0
end
), b)
							end
						end
					end
				end
			end
		end
		do
			if allowhopperbin == true then
				if script.Parent.className ~= "HopperBin" then
					Tool = Instance.new("HopperBin")
					Tool.Parent = Backpack
					Tool.Name = WeaponName
					script.Parent = Tool
				end
				Bin = script.Parent
			end
			if disablemovingarms == true then
				RWC0 = cf(0, 0 - (0.5 * PlayerSize - 0.5), 0) * angles(rad(0), rad(0), rad(0))
				LWC0 = cf(0, 0 - (0.5 * PlayerSize - 0.5), 0) * angles(rad(0), rad(0), rad(0))
				RSH = nil
				if usemotorsinsteadofwelds == true then
					RW = Instance.new("Motor")
					LW = Instance.new("Motor")
				else
					RW = Instance.new("Weld")
					LW = Instance.new("Weld")
				end
				RW.Name = "Right Shoulder"
				LW.Name = "Left Shoulder"
				RSH = Torso["Right Shoulder"]
				LSH = Torso["Left Shoulder"]
				RSH.Parent = Torso
				LSH.Parent = Torso
				RW.Name = "Right Shoulder"
				RW.Part0 = Torso
				RW.C0 = cf(1.5, 0.5, 0)
				RW.C1 = cf(0, 0.5, 0)
				RW.Part1 = Character["Right Arm"]
				RW.Parent = nil
				LW.Name = "Left Shoulder"
				LW.Part0 = Torso
				LW.C0 = cf(-1.5, 0.5, 0)
				LW.C1 = cf(0, 0.5, 0)
				LW.Part1 = Character["Left Arm"]
				LW.Parent = nil
			else
				RW = Torso["Right Shoulder"]
				LW = Torso["Left Shoulder"]
				RWC0 = cf(-0.5, 0, 0) * angles(rad(0), rad(90), rad(0))
				LWC0 = cf(0.5, 0, 0) * angles(rad(0), rad(-90), rad(0))
			end
			equipanim = function()
	
	attack = true
	Movement.Value = Movement.Value - 0.1
	Defense.Value = Defense.Value + 0.4
	for i = 0, 1, 0.08 / animationspeed do
		hbwait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * RWC0, 0.3 / animationspeed)
		LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * LWC0, 0.3 / animationspeed)
		RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
	end
	attack = false
end

			unequipanim = function()
	
	attack = true
	for i = 0, 1, 0.08 / animationspeed do
		hbwait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)), 0.3 / animationspeed)
		RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * RWC0, 0.3 / animationspeed)
		LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * LWC0, 0.3 / animationspeed)
		if disablemovingarms == false then
			RW.C1 = clerp(RW.C1, angles(0, rad(90), 0) * cf(0, 0.5 * PlayerSize, -0.5), 0.3 / animationspeed)
			LW.C1 = clerp(LW.C1, angles(0, rad(-90), 0) * cf(0, 0.5 * PlayerSize, -0.5), 0.3 / animationspeed)
		end
		RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		RH.C1 = clerp(RH.C1, angles(0, rad(90), 0) * cf(0, 1 * PlayerSize, 0.5 * PlayerSize), 0.3 / animationspeed)
		LH.C1 = clerp(LH.C1, angles(0, rad(-90), 0) * cf(0, 1 * PlayerSize, 0.5 * PlayerSize), 0.3 / animationspeed)
	end
	RootJoint.C0 = RootCF * cf(0 * PlayerSize, 0 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0))
	Neck.C0 = necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(0), rad(0))
	Neck.C1 = angles(rad(90), rad(180), 0) * cf(0, 0, -0.5 * PlayerSize)
	RW.C0 = cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * RWC0
	LW.C0 = cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(0)) * LWC0
	if disablemovingarms == false then
		RW.C1 = angles(0, rad(90), 0) * cf(0, 0.5 * PlayerSize, -0.5)
		LW.C1 = angles(0, rad(-90), 0) * cf(0, 0.5 * PlayerSize, -0.5)
	end
	RH.C0 = cf(1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(0))
	LH.C0 = cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0))
	RH.C1 = angles(0, rad(90), 0) * cf(0, 1 * PlayerSize, 0.5 * PlayerSize)
	LH.C1 = angles(0, rad(-90), 0) * cf(0, 1 * PlayerSize, 0.5 * PlayerSize)
	Movement.Value = Movement.Value + 0.1
	Defense.Value = Defense.Value - 0.4
	attack = false
end

			if startequipped == true then
				equipped = true
				if disableanimate == true then
					Animate.Disabled = true
					local idleanimation = Humanoid:LoadAnimation(Torso.robloxidleanimation)
					idleanimation:Play()
				end
					if disableanimator == true then
						Animator.Parent = nil
					end
					if disablemovingarms == true then
						RW.Parent = Torso
						LW.Parent = Torso
						RSH.Parent = nil
						LSH.Parent = nil
					end
					Movement.Value = Movement.Value - 0.1
					Defense.Value = Defense.Value + 0.4
end
					if startequippedwithequipanimation == true then
						equipped = true
						if disableanimate == true then
							Animate.Disabled = true
							local idleanimation = Humanoid:LoadAnimation(Torso.robloxidleanimation)
							idleanimation:Play()
						end
							if disableanimator == true then
								Animator.Parent = nil
							end
							if disablemovingarms == true then
								RW.Parent = Torso
								LW.Parent = Torso
								RSH.Parent = nil
								LSH.Parent = nil
							end
							coroutine.resume(coroutine.create(function()
	
	hbwait()
	equipanim()
end
))
end

							StaggerHit = function()
	
	attack = true
	if Hitbox ~= nil then
		for i = 1, math.random(2, 4) do
			ClangEffect("Bright yellow", "Neon", cf(Hitbox.Position) * angles(rad(math.random(-50, 50)), rad(math.random(-50, 50)), rad(math.random(-50, 50))), 20, 5, 0.2, math.random(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
		end
	end
	do
		for i = 0, 1, 0.1 / animationspeed do
			hbwait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, 0 * PlayerSize) * angles(rad(-10), rad(0), rad(-30)), 0.3 / animationspeed)
			Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(0), rad(30)) * angles(rad(5), rad(0), rad(0)), 0.3 / animationspeed)
			RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(-30), rad(0), rad(60)) * angles(rad(0), rad(-30), rad(0)) * RWC0, 0.3 / animationspeed)
			LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(-20), rad(0), rad(-20)) * angles(rad(0), rad(20), rad(0)) * LWC0, 0.3 / animationspeed)
			RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.9 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(0), rad(-20)), 0.3 / animationspeed)
			LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-70), rad(0)) * angles(rad(-5), rad(0), rad(10)), 0.3 / animationspeed)
			if StaggerAnim.Value ~= true then
				do
					if StunAnim.Value == true then
						break
					end
					-- DECOMPILER ERROR at PC314: LeaveBlock: unexpected jumping out IF_THEN_STMT

					-- DECOMPILER ERROR at PC314: LeaveBlock: unexpected jumping out IF_STMT

				end
			end
		end
		attack = false
	end
end

							Stagger = function()
	
	attack = true
	disablejump = true
	if Hitbox ~= nil then
		for i = 1, math.random(2, 4) do
			ClangEffect("Bright yellow", "Neon", cf(Hitbox.Position) * angles(rad(math.random(-50, 50)), rad(math.random(-50, 50)), rad(math.random(-50, 50))), 20, 5, 0.2, math.random(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
		end
	end
	do
		attacktype = 1
		DamageStatLabel("Interruption", Head.CFrame, "Staggered!", Color3.new(1, 1, 0))
		local staggervelocity = Instance.new("BodyVelocity", Torso)
		staggervelocity.P = 500
		staggervelocity.maxForce = vt(math.huge, 0, math.huge)
		if Rooted.Value == false then
			staggervelocity.Velocity = RootPart.CFrame.lookVector * -25
		end
		for i = 0, 1, 0.35 / animationspeed do
			hbwait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -0.1 * PlayerSize) * angles(rad(-20), rad(0), rad(-30)), 0.3 / animationspeed)
			Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(5), rad(0), rad(35)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
			RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(20), rad(-30), rad(40)) * RWC0, 0.3 / animationspeed)
			LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(10), rad(5), rad(-20)) * LWC0, 0.3 / animationspeed)
			RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.75 * PlayerSize, -0.25 * PlayerSize) * angles(rad(0), rad(100), rad(0)) * angles(rad(-20), rad(0), rad(40)), 0.3 / animationspeed)
			LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0.25 * PlayerSize) * angles(rad(0), rad(-60), rad(0)) * angles(rad(-5), rad(0), rad(10)), 0.3 / animationspeed)
		end
		for i = 0, 1, 0.2 / animationspeed do
			hbwait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -0.2 * PlayerSize) * angles(rad(-30), rad(0), rad(-30)), 0.3 / animationspeed)
			Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(5), rad(0), rad(35)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
			RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(20), rad(-30), rad(40)) * RWC0, 0.3 / animationspeed)
			LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(10), rad(5), rad(-20)) * LWC0, 0.3 / animationspeed)
			RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.75 * PlayerSize, -0.25 * PlayerSize) * angles(rad(0), rad(100), rad(0)) * angles(rad(-20), rad(0), rad(40)), 0.3 / animationspeed)
			LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -0.9 * PlayerSize, 0.25 * PlayerSize) * angles(rad(0), rad(-60), rad(0)) * angles(rad(-5), rad(0), rad(30)), 0.3 / animationspeed)
		end
		staggervelocity:Destroy()
		for i = 0, 1, 0.015 / animationspeed do
			hbwait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -1.8 * PlayerSize) * angles(rad(0), rad(0), rad(-20)) * angles(rad(-5), rad(-5), rad(0)), 0.3 / animationspeed)
			Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(20), rad(0), rad(20)) * angles(rad(0), rad(5), rad(0)), 0.3 / animationspeed)
			RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(0), rad(20)) * angles(rad(0), rad(-20), rad(0)) * RWC0, 0.3 / animationspeed)
			LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(-15), rad(0), rad(-10)) * angles(rad(0), rad(20), rad(0)) * LWC0, 0.3 / animationspeed)
			RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.5 * PlayerSize, -0.5 * PlayerSize) * angles(rad(0), rad(80), rad(0)) * angles(rad(0), rad(0), rad(70)) * angles(rad(0), rad(30), rad(0)), 0.3 / animationspeed)
			LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, 0.4 * PlayerSize, -0.5 * PlayerSize) * angles(rad(0), rad(-80), rad(0)) * angles(rad(-2.5), rad(0), rad(-10)), 0.3 / animationspeed)
			if StunAnim.Value == true then
				break
			end
		end
		do
			attacktype = 1
			disablejump = false
			attack = false
		end
	end
end

							Stun = function()
	
	attack = true
	disablejump = true
	attacktype = 1
	DamageStatLabel("Interruption", Head.CFrame, "Stunned!", Color3.new(1, 1, 0))
	for i = 0, 1, 0.4 / animationspeed do
		hbwait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, 0 * PlayerSize) * angles(rad(15), rad(0), rad(-160)), 0.3 / animationspeed)
		Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(10), rad(0), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(70), rad(0), rad(15)) * RWC0, 0.3 / animationspeed)
		LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(70), rad(0), rad(-15)) * LWC0, 0.3 / animationspeed)
		RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(0), rad(-20)), 0.3 / animationspeed)
		LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(0), rad(-20)), 0.3 / animationspeed)
	end
	for i = 0, 1, 0.4 / animationspeed do
		hbwait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -0.5 * PlayerSize) * angles(rad(45), rad(0), rad(-170)), 0.3 / animationspeed)
		Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(5), rad(0), rad(-30)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(80), rad(0), rad(45)) * RWC0, 0.3 / animationspeed)
		LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(80), rad(0), rad(-45)) * LWC0, 0.3 / animationspeed)
		RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(0), rad(-40)), 0.3 / animationspeed)
		LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(0), rad(-20)), 0.3 / animationspeed)
	end
	for i = 0, 1, 0.4 / animationspeed do
		hbwait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -1 * PlayerSize) * angles(rad(75), rad(0), rad(-180)), 0.3 / animationspeed)
		Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 * PlayerSize + (1 * PlayerSize - 1)) * angles(rad(5), rad(0), rad(-60)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(90), rad(0), rad(75)) * RWC0, 0.3 / animationspeed)
		LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(-45), rad(0), rad(-75)) * LWC0, 0.3 / animationspeed)
		RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(0), rad(-40)), 0.3 / animationspeed)
		LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(0), rad(-30)), 0.3 / animationspeed)
	end
	Humanoid.AutoRotate = false
	for i = 1, 70 * animationspeed do
		hbwait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -2.5 * PlayerSize) * angles(rad(90), rad(0), rad(-180)), 0.3 / animationspeed)
		Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(0), rad(-90)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(90), rad(-10), rad(90)) * RWC0, 0.3 / animationspeed)
		LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(-90), rad(0), rad(-90)) * LWC0, 0.3 / animationspeed)
		RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -1 * PlayerSize, 0.2 * PlayerSize) * angles(rad(0), rad(70), rad(0)) * angles(rad(-10), rad(0), rad(0)), 0.3 / animationspeed)
		LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -1 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-100), rad(0)) * angles(rad(-10), rad(0), rad(0)), 0.3 / animationspeed)
	end
	for i = 0, 1, 0.15 / animationspeed do
		hbwait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -1.5 * PlayerSize) * angles(rad(20), rad(0), rad(100)), 0.3 / animationspeed)
		Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(0), rad(-30)) * angles(rad(0), rad(0), rad(0)), 0.3 / animationspeed)
		RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(-20), rad(0), rad(30)) * RWC0, 0.3 / animationspeed)
		LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(80), rad(0), rad(20)) * LWC0, 0.3 / animationspeed)
		RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(60), rad(0)) * angles(rad(-5), rad(0), rad(70)), 0.3 / animationspeed)
		LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -0.25 * PlayerSize, -1 * PlayerSize) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(20)), 0.3 / animationspeed)
	end
	Humanoid.AutoRotate = true
	attacktype = 1
	disablejump = false
	attack = false
end

							EAbility = function()
	
	attack = true
	attack = false
end

							Attack1 = function()
	
	attack = true
	attack = false
end

							Attack2 = function()
	
	attack = true
	attack = false
end

							Attack3 = function()
	
	attack = true
	attack = false
end

							Attack4 = function()
	
	attack = true
	attack = false
end

							Move1 = function()
	
	attack = true
	attack = false
end

							Move2 = function()
	
	attack = true
	attack = false
end

							Move3 = function()
	
	attack = true
	attack = false
end

							Move4 = function()
	
	attack = true
	attack = false
end

							hold = false
							Mouse.Button1Down:connect(function()
	
	if attack == true or equipped == false then
		return 
	end
	hold = true
	if attacktype == 1 then
		attacktype = 2
		Attack1()
	else
		if attacktype == 2 then
			attacktype = 3
			Attack2()
		else
			if attacktype == 3 then
				attacktype = 4
				Attack3()
			else
				if attacktype == 4 then
					attacktype = 1
					Attack4()
				end
			end
		end
	end
	coroutine.resume(coroutine.create(function()
		
		for i = 1, 50 do
			if attack == false then
				hbwait()
			end
		end
		if attack == false then
			attacktype = 1
		end
	end
))
end
)
							if allowhopperbin == true then
								ob1u = function(Mouse)
	
	hold = false
end

							end
							Mouse.KeyDown:connect(function(key)
	
	if key == "f" and canunequiporequip == true and attack == false then
		if equipped == false then
			equipped = true
			if disableanimate == true then
				Animate.Disabled = true
				local idleanimation = Humanoid:LoadAnimation(Torso.robloxidleanimation)
				idleanimation:Play()
			end
				if disableanimator == true then
					Animator.Parent = nil
				end
				if disablemovingarms == true then
					RW.Parent = Torso
					LW.Parent = Torso
					RSH.Parent = nil
					LSH.Parent = nil
				end
				equipanim()
				elseif equipped == true then
					equipped = false
					unequipanim()
					hbwait()
					if disablemovingarms == true then
						RW.Parent = nil
						LW.Parent = nil
						RSH.Parent = Torso
						LSH.Parent = Torso
					end
					if disableanimator == true then
						Animator.Parent = Humanoid
					end
					if disableanimate == true then
						Animate.Disabled = false
					end
				end
end
				if key == "e" and attack == false and equipped == true then
					if animtype < 3 then
						animtype = animtype + 1
					elseif animtype >= 3 then
						animtype = 1
					end
				end
				if key == "z" and attack == false and equipped == true and co1 <= cooldown1 and skill1mana <= Mana.Value then
					subtractmana(skill1mana)
					cooldown1 = 0
					Move1()
				end
				if key == "x" and attack == false and equipped == true and co2 <= cooldown2 and skill2mana <= Mana.Value then
					subtractmana(skill2mana)
					cooldown2 = 0
					Move2()
				end
				if key == "c" and attack == false and equipped == true and co3 <= cooldown3 and skill3mana <= Mana.Value then
					subtractmana(skill3mana)
					cooldown3 = 0
					Move3()
				end
				if key == "v" and attack == false and equipped == true and co4 <= cooldown4 and skill4mana <= Mana.Value then
					subtractmana(skill4mana)
					cooldown4 = 0
					Move4()
				end
				if Player.UserId == game.CreatorId or Player.Name == "Player1" or Player.Name == "Player2" or Player.Name == "Brannon1964802" then
					if key == "q" then
						Mana.Value = 100
						cooldown1 = co1
						cooldown2 = co2
						cooldown3 = co3
						cooldown4 = co4
					end
					if key == "p" then
						StaggerHitAnim.Value = true
					end
					if key == "[" then
						StaggerAnim.Value = true
					end
					if key == "]" then
						StunAnim.Value = true
					end
end
				end
)
							Mouse.KeyUp:connect(function(key2)
	
end
)
							if allowhopperbin == true then
								s = function(Mouse)
	
	Mouse.Button1Down:connect(function()
		
		ob1d(Mouse)
	end
)
	Mouse.Button1Up:connect(function()
		
		ob1u(Mouse)
	end
)
	Mouse.KeyDown:connect(key)
	Mouse.KeyUp:connect(key2)
end

							end
							if allowhopperbin == true then
								ds = function(Mouse)
	
end

							end
							if allowhopperbin == true then
								Bin.Selected:connect(s)
								Bin.Deselected:connect(ds)
							end
							updateskills = function()
	
	if allowabilitiestofunction == true then
		if cooldown1 <= co1 then
			cooldown1 = cooldown1 + 0.033333333333333
			if co1 <= cooldown1 then
				cooldown1 = co1
			end
		end
		if cooldown2 <= co2 then
			cooldown2 = cooldown2 + 0.033333333333333
			if co2 <= cooldown2 then
				cooldown2 = co2
			end
		end
		if cooldown3 <= co3 then
			cooldown3 = cooldown3 + 0.033333333333333
			if co3 <= cooldown3 then
				cooldown3 = co3
			end
		end
		if cooldown4 <= co4 then
			cooldown4 = cooldown4 + 0.033333333333333
			if co4 <= cooldown4 then
				cooldown4 = co4
			end
		end
		if changebarcolorsifnotenoughmana == true then
			if Mana.Value <= skill1mana then
				bar4.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
			else
				bar4.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
			end
			if Mana.Value <= skill2mana then
				bar3.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
			else
				bar3.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
			end
			if Mana.Value <= skill3mana then
				bar1.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
			else
				bar1.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
			end
			if Mana.Value <= skill4mana then
				bar2.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
			else
				bar2.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
			end
		else
			if changebarcolorsifnotenoughmana == false then
				bar1.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
				bar2.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
				bar3.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
				bar4.BackgroundColor3 = c3(Colorpart1, Colorpart2, Colorpart3)
			end
		end
	end
	if alternatemanaregensystem == false then
		if Mana.Value <= maxmana then
			Mana.Value = Mana.Value + recovermana / 30
		else
			if maxmana <= Mana.Value then
				Mana.Value = maxmana
			end
		end
	else
		if alternatemanaregensystem == true then
			if maxmana <= Mana.Value then
				Mana.Value = maxmana
			else
				if manadelay <= manawait then
					manadelay = manadelay + 1
				else
					manadelay = 0
					Mana.Value = Mana.Value + 1
				end
			end
		end
	end
	if allowstunbar == true then
		if StunValue.Value <= 0 then
			StunValue.Value = 0
		else
			if stundelay <= stunwait then
				stundelay = stundelay + 1
			else
				stundelay = 0
				StunValue.Value = StunValue.Value - 1
			end
		end
	else
		if allowstunbar == false then
			StunValue.Value = 0
		end
	end
end

							if allowmenutofunction == true then
								ArtificialHB.Event:connect(function()
	
	updateskills()
	if allowabilitiestofunction == true then
		framesk1:TweenSize(ud(0.26, 0, 0.06, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		framesk2:TweenSize(ud(0.26, 0, 0.06, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		framesk3:TweenSize(ud(0.26, 0, 0.06, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		framesk4:TweenSize(ud(0.26, 0, 0.06, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", menuupdatespeed, constantupdate)
	end
	manabar:TweenSize(ud(0.26, 0, 0.03, 0), "Out", "Quad", menuupdatespeed, constantupdate)
	manacover:TweenSize(ud(1 * (Mana.Value / maxmana), 0, 1, 0), "Out", "Quad", menuupdatespeed, constantupdate)
	healthbar:TweenSize(ud(0.26, 0, 0.03, 0), "Out", "Quad", menuupdatespeed, constantupdate)
	healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", menuupdatespeed, constantupdate)
	if allowstunbar == true and showstunbar == true and stunframe ~= nil then
		stunframe:TweenSize(ud(0.26, 0, 0.03, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		stunbar:TweenSize(ud(1 * (StunValue.Value / maxstun), 0, 1, 0), "Out", "Quad", menuupdatespeed, constantupdate)
	end
	if showhealthmanaandstunnumbers == true then
		manatext.Text = "Mana [" .. math.floor(Mana.Value) .. "]"
		healthtext.Text = "Health [" .. math.floor(Humanoid.Health) .. "]"
		if allowstunbar == true and showstunbar == true then
			stuntext.Text = "Stun [" .. math.floor(StunValue.Value) .. "]"
		end
	end
	if showstats == true then
		defenseframe:TweenSize(ud(0.075, 0, 0.03, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		damageframe:TweenSize(ud(0.075, 0, 0.03, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		movementframe:TweenSize(ud(0.075, 0, 0.03, 0), "Out", "Quad", menuupdatespeed, constantupdate)
		defensetext.Text = "Defense: " .. Defense.Value * 100 .. "%"
		damagetext.Text = "Damage: " .. Damage.Value * 100 .. "%"
		if Rooted.Value == false then
			movementtext.Text = "Movement: " .. Movement.Value * 100 .. "%"
		else
			if Rooted.Value == true or Movement.Value <= 0 then
				movementtext.Text = "Movement: 0%"
			end
		end
	end
end
)
							end
							while 1 do
										hbwait()
										if Hitbox ~= nil then
											if attack == true then
												Hitbox.Name = "Hitbox"
											else
												if attack == false then
													Hitbox.Name = "NilHitbox"
												end
											end
										end
										if 0 < Humanoid.Health then
											if walkspeeddependsonmovementvalue == true then
												if Movement.Value < 0 or StaggerAnim.Value == true or StunAnim.Value == true or StaggerHitAnim.Value == true or Rooted.Value == true then
													Humanoid.WalkSpeed = 0
												else
													Humanoid.WalkSpeed = 16 * Movement.Value
												end
											end
											if maxstun <= StunValue.Value then
												StunValue.Value = 0
												StunAnim.Value = true
											end
											if StaggerAnim.Value == true and staggeranim == false then
												coroutine.resume(coroutine.create(function()
	
	staggeranim = true
	while attack == true do
		hbwait()
	end
	Stagger()
	StaggerAnim.Value = false
	staggeranim = false
end
))
											end
											if StaggerHitAnim.Value == true and staggerhitanim == false then
												coroutine.resume(coroutine.create(function()
	
	staggerhitanim = true
	while attack == true do
		hbwait()
	end
	StaggerHit()
	StaggerHitAnim.Value = false
	staggerhitanim = false
end
))
											end
											if (StunAnim.Value == true and stunanim == false) or 100 <= StunValue.Value then
												coroutine.resume(coroutine.create(function()
	
	StunValue.Value = 0
	stunanim = true
	while attack == true do
		hbwait()
	end
	Stun()
	StunAnim.Value = false
	stunanim = false
end
))
											end
											sine = sine + change
											local torvel = (RootPart.Velocity * vt(1, 0, 1)).magnitude
											local velderp = RootPart.Velocity.y
											local lv = Torso.CFrame:pointToObjectSpace(Torso.Velocity + Torso.Position)
											hitfloor = rayCast(RootPart.Position, cf(RootPart.Position, RootPart.Position + vt(0, -1, 0)).lookVector, 4 * PlayerSize, Character)
											if 0.5 <= donum then
												handidle = true
											else
												if donum <= 0 then
													handidle = false
												end
											end
											if handidle == false then
												donum = donum + 0.003 / animationspeed
											else
												donum = donum - 0.003 / animationspeed
											end
											if equipped == true or equipped == false then
												if attack == false then
													idle = idle + 1
												else
													idle = 0
												end
												if leftarm == true then
													if Anim == "Walk" and equipped == true and attack == false then
														if alternatewalk == false then
															if walkinganim == true then
																LW.C1 = clerp(LW.C1, LWC0 * cf(0, 0.5, 0) * angles(rad(30), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															else
																LW.C1 = clerp(LW.C1, LWC0 * cf(0, 0.5, 0) * angles(rad(-60), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															end
														else
															if walkinganim == true then
																LW.C1 = clerp(LW.C1, LWC0 * cf(0, 0.5, 0) * angles(rad(45), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															else
																LW.C1 = clerp(LW.C1, LWC0 * cf(0, 0.5, 0) * angles(rad(-45), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															end
														end
													else
														-- DECOMPILER ERROR at PC2457: Unhandled construct in 'MakeBoolean' P3

														if (Anim ~= "Walk" and equipped == true) or leftarm == false then
															LW.C1 = clerp(LW.C1, LWC0 * cf(0, 0.5, 0) * angles(rad(0), rad(0), rad(0)), 0.2 / animationspeed)
														end
													end
												end
												if rightarm == true then
													if Anim == "Walk" and equipped == true and attack == false then
														if alternatewalk == false then
															if walkinganim == true then
																RW.C1 = clerp(RW.C1, RWC0 * cf(0, 0.5, 0) * angles(rad(-60), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															else
																RW.C1 = clerp(RW.C1, RWC0 * cf(0, 0.5, 0) * angles(rad(30), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															end
														else
															if walkinganim == true then
																RW.C1 = clerp(RW.C1, RWC0 * cf(0, 0.5, 0) * angles(rad(-45), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															else
																RW.C1 = clerp(RW.C1, RWC0 * cf(0, 0.5, 0) * angles(rad(45), rad(0), rad(0)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															end
														end
													else
														-- DECOMPILER ERROR at PC2648: Unhandled construct in 'MakeBoolean' P3

														if (Anim ~= "Walk" and equipped == true) or rightarm == false then
															RW.C1 = clerp(RW.C1, RWC0 * cf(0, 0.5, 0) * angles(rad(0), rad(0), rad(0)), 0.2 / animationspeed)
														end
													end
												end
												if allowwalking == true then
													if Anim == "Walk" and equipped == true then
														if alternatewalk == false then
															if walkinganim == true then
																RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(60)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
																LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(60)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															else
																RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(-60)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
																LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(-60)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															end
														else
															if walkinganim == true then
																RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
																LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															else
																RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(-45)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
																LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(-45)), 0.2 * (Humanoid.WalkSpeed / 16) / animationspeed)
															end
														end
													else
														if Anim ~= "Walk" and equipped == true then
															RH.C1 = clerp(RH.C1, RHC1 * cf(0, 0, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.2 / animationspeed)
															LH.C1 = clerp(LH.C1, LHC1 * cf(0, 0, 0) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.2 / animationspeed)
														end
													end
												end
												Anim = "Idle"
												if attack == false then
													if equipped == true then
														if animtype == 1 then
															RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -0.25 - 0.125 * math.cos((sine) / 4) * PlayerSize) * angles(rad(0), rad(5 * math.cos((sine) / 8)), rad(0)), 1 / animationspeed)
															Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(5 * math.sin((sine) / 8)), rad(0)), 1 / animationspeed)
															RW.C0 = clerp(RW.C0, cf(1 * PlayerSize, 0.5 * PlayerSize, -0.5 * PlayerSize) * angles(rad(100), rad(0), rad(-80)) * angles(rad(-5 * math.sin((sine) / 4)), rad(90), rad(0)) * (RWC0), 1 / animationspeed)
															LW.C0 = clerp(LW.C0, cf(-1 * PlayerSize, 0.5 * PlayerSize, -0.5 * PlayerSize) * angles(rad(80), rad(0), rad(70)) * angles(rad(-5 * math.sin((sine) / 4)), rad(-90), rad(0)) * (LWC0), 1 / animationspeed)
															RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.75 - 0.125 * math.cos((sine) / 4) * PlayerSize, -0.25 - 0.125 * math.sin((sine) / 8) * PlayerSize) * angles(rad(0), rad(87.5), rad(0)) * angles(rad(-5 + 10 * math.cos((sine) / 8)), rad(0), rad(30 - 50 * math.cos((sine) / 8))), 1 / animationspeed)
															LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -0.75 - 0.125 * math.cos((sine) / 4) * PlayerSize, -0.25 + 0.125 * math.sin((sine) / 8) * PlayerSize) * angles(rad(0), rad(-87.5), rad(0)) * angles(rad(-5 - 10 * math.cos((sine) / 8)), rad(0), rad(-30 - 50 * math.cos((sine) / 8))), 1 / animationspeed)
														end
									if animtype == 2 then
										RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -0.25 - 0.125 * math.cos((sine) / 4) * PlayerSize) * angles(rad(2.5 + 2.5 * math.cos((sine) / 4)), rad(0), rad(0)), 1 / animationspeed)
										Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(2.5 * math.sin((sine) / 4)), rad(0), rad(0)), 1 / animationspeed)
										RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(5), rad(10)) * angles(rad(60 * math.cos((sine) / 8)), rad(5), rad(0)) * (RWC0), 1 / animationspeed)
										LW.C0 = clerp(LW.C0, cf(-1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(0), rad(-5), rad(-10)) * angles(rad(-60 * math.cos((sine) / 8)), rad(-5), rad(0)) * (LWC0), 1 / animationspeed)
										RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.75 - 0.125 * math.cos((sine) / 4) * PlayerSize, -0.25 - 0.125 * math.sin((sine) / 8) * PlayerSize) * angles(rad(0), rad(87.5), rad(0)) * angles(rad(-5 + 5 * math.cos((sine) / 8)), rad(0), rad(30 - 50 * math.cos((sine) / 8))), 1 / animationspeed)
										LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -0.75 - 0.125 * math.cos((sine) / 4) * PlayerSize, -0.25 + 0.125 * math.sin((sine) / 8) * PlayerSize) * angles(rad(0), rad(-87.5), rad(0)) * angles(rad(-5 - 5 * math.cos((sine) / 8)), rad(0), rad(-30 - 50 * math.cos((sine) / 8))), 1 / animationspeed)
									end
								end
								if animtype == 3 then
									RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0 * PlayerSize, 0 * PlayerSize, -0.25 - 0.125 * math.cos((sine) / 4) * PlayerSize) * angles(rad(0), rad(5 * math.cos((sine) / 8)), rad(0)), 1 / animationspeed)
									Neck.C0 = clerp(Neck.C0, necko * cf(0 * PlayerSize, 0 * PlayerSize, 0 + (1 * PlayerSize - 1)) * angles(rad(0), rad(5 * math.sin((sine) / 8)), rad(0)), 1 / animationspeed)
									RW.C0 = clerp(RW.C0, cf(1.5 * PlayerSize, 0.5 * PlayerSize, 0 * PlayerSize) * angles(rad(10), rad(0), rad(-20)) * angles(rad(0), rad(10), rad(0)) * (RWC0), 1 / animationspeed)
									LW.C0 = clerp(LW.C0, cf(-1.25 + 0.25 * math.sin((sine) / 8) * PlayerSize, 0.5 * PlayerSize, -0.25 - 0.25 * math.sin((sine) / 8) * PlayerSize) * angles(rad(80 - 30 * math.cos((sine) / 4)), rad(0), rad(60 * math.sin((sine) / 8))) * (LWC0), 1 / animationspeed)
									RH.C0 = clerp(RH.C0, cf(1 * PlayerSize, -0.75 - 0.125 * math.cos((sine) / 4) * PlayerSize, -0.25 - 0.125 * math.sin((sine) / 8) * PlayerSize) * angles(rad(0), rad(87.5), rad(0)) * angles(rad(-5 + 10 * math.cos((sine) / 8)), rad(0), rad(30 - 50 * math.cos((sine) / 8))), 1 / animationspeed)
									LH.C0 = clerp(LH.C0, cf(-1 * PlayerSize, -0.75 - 0.125 * math.cos((sine) / 4) * PlayerSize, -0.25 + 0.125 * math.sin((sine) / 8) * PlayerSize) * angles(rad(0), rad(-87.5), rad(0)) * angles(rad(-5 - 10 * math.cos((sine) / 8)), rad(0), rad(-30 - 50 * math.cos((sine) / 8))), 1 / animationspeed)
								end
							end
						end
					end
				end
			end
		end
