--// Made by Cronizete
--// There's some secret functions c;

plr = game:GetService("Players").LocalPlayer
char = plr.Character
hum = char:FindFirstChildOfClass'Humanoid'
hum.BodyDepthScale.Value = 1
hum.BodyHeightScale.Value = 1
hum.BodyWidthScale.Value = 1
hum.HeadScale.Value = 1
lclick = false
mouse = plr:GetMouse()
size = 1
rlick = false
human = char.Humanoid
root = char.HumanoidRootPart
head = char.Head
lshold = char["LeftUpperArm"].LeftShoulder
rshold = char["RightUpperArm"].RightShoulder
lelbow = char["LeftLowerArm"].LeftElbow
relbow = char["RightLowerArm"].RightElbow
lelbo = lelbow.C0
relbo = relbow.C0
rsho = rshold.C0
lsho = lshold.C0
jumping = false
chipmesh = ""
rad = math.rad
shield = false
disguise = ""
step = workspace:WaitForChild('Base')
slam = false
ff=Instance.new('ForceField', char)
ff.Visible = false
dis = false
neck = char.Head.Neck
local ang = -5
local ang2 = -5
local sine = 0
local change = 0.5
arm = 0
char:FindFirstChild'Animate':Destroy()
hum.Animator.Parent = nil
nec = neck.C0
punch = false
spikek = false
cooldown = true
random = math.random
mainc = char.Head.BrickColor
chip = false
color = char.Head.BrickColor
mainf = char.Head.face.Texture
wings = false
face = mainf
lleg = char["LeftUpperLeg"].LeftHip
rleg = char["RightUpperLeg"].RightHip
rle = rleg.C0
lle = lleg.C0
torso = char:FindFirstChild('UpperTorso')
butf = false
previ = ""
jir = false
legslam = false
waist = torso.Waist
wais = waist.C0
rtorso = char.LowerTorso.Root
rtors = rtorso.C0
float = false
signs = false
fold = Instance.new('Folder', char)
sat = false
asdasd = false

--// Configs

vol1 = 6
vol2 = 3
parts = 30
damage = 50
size = Vector3.new(27.67, 0.05, 25.43)

--// Sfx

local s1 = Instance.new('Sound', lleg.Parent) -- Explosion
s1.SoundId = "rbxassetid://138210320"

local s2 = Instance.new('Sound', char.RightUpperArm) -- Punch
s2.SoundId = "rbxassetid://145486953"

local s3 = Instance.new('Sound', char.HumanoidRootPart) -- Wings
s3.SoundId = "rbxassetid://999998561"
s3.Looped = true

local s4 = Instance.new('Sound', char.Head) -- Crunch
s4.SoundId = "rbxassetid://181027147"
s4.Looped = false

local s5 = Instance.new('Sound', char.LeftFoot) -- walk (grass)
s5.Volume = 6
s5.SoundId = "rbxassetid://429617891"
s5.Looped = true

local s6 = Instance.new('Sound', char.LeftFoot) -- walk (metals)
s6.Volume = 6
s6.SoundId = "rbxassetid://174216216"
s6.Looped = true

local s7 = Instance.new('Sound', char.LeftFoot) -- walk (sand)
s7.Volume = 6
s7.SoundId = "rbxassetid://336575096"
s7.Looped = true

local s8 = Instance.new('Sound', char.LeftFoot) -- walk (ice)
s8.Volume = 6
s8.SoundId = "rbxassetid://138214900"
s8.Looped = true

local s9 = Instance.new('Sound', char.LeftHand) -- Chips take out
s9.Volume = 6
s9.SoundId = "rbxassetid://873073853"
s9.Looped = false

local s10 = Instance.new('Sound', char.LeftHand) -- Jutsu
s10.Volume = 4
s10.SoundId = "rbxassetid://147722098"
s10.Looped = false

local s11 = Instance.new('Sound') -- Jutsu
s11.Volume = 4
s11.SoundId = "rbxassetid://158712406"
s11.Looped = false

local s12 = Instance.new('Sound', char.LeftFoot) -- walk (metal)
s12.Volume = 6
s12.SoundId = "rbxassetid://549006073"
s12.Looped = true

local s13 = Instance.new('Sound', char.LeftFoot) -- walk (bricks and stuff)
s13.Volume = 6
s13.SoundId = "rbxassetid://156659098"
s13.Looped = true

local s14 = Instance.new('Sound', char.LeftFoot) -- walk (carpet)
s14.Volume = 9
s14.SoundId = "rbxassetid://133705377"
s14.Looped = true

local s15 = Instance.new('Sound', char.HumanoidRootPart) -- smoke
s15.Volume = 3
s15.SoundId = "rbxassetid://722960601"
s15.Looped = false

--// Outfit

for _, a in pairs(char:children()) do
	if a:IsA('Pants') or a:IsA('Shirt') or a:IsA('CharacterMesh') or a:IsA('Accessory') then
		a:Destroy()
	end
end

bc = char:FindFirstChild('Body Colors')
bc.HeadColor = BrickColor.new('Light orange')
bc.LeftArmColor = BrickColor.new('Light orange')
bc.RightArmColor = BrickColor.new('Light orange')
bc.LeftLegColor = BrickColor.new('Light orange')
bc.RightLegColor = BrickColor.new('Light orange')
bc.TorsoColor = BrickColor.new('Light orange')

local p1 = Instance.new('Part', char)
p1.Anchored = false
p1.CanCollide = false
p1.BrickColor = BrickColor.new('Rust')
local w = Instance.new('Weld', p1)
w.Part0 = p1
w.Part1 = char:FindFirstChild'Head'
w.C0 = CFrame.new(0,1,-1.3)
local m1 = Instance.new('SpecialMesh', p1)
m1.MeshId = "rbxassetid://560193297"
m1.TextureId = ""
m1.Scale = Vector3.new(6,5,5)

local p = Instance.new('Part', char)
p.Anchored = false
p.CanCollide = false
local w = Instance.new('Weld', p)
w.Part0 = p
w.Part1 = char:FindFirstChild'Head'
w.C0 = CFrame.new(0, -0.35, 0)
local m = Instance.new('SpecialMesh', p)
m.MeshId = "http://www.roblox.com/asset/?id=1286425"
m.TextureId = "rbxassetid://999070662"
m.Scale = Vector3.new(1.01, 1.01, 1.01)

char.Head:FindFirstChild('face').Texture = "rbxassetid://0"

local s = Instance.new('Shirt', char)
s.ShirtTemplate = "rbxassetid://274369116"
local p2 = Instance.new('Pants', char)
p2.PantsTemplate = "rbxassetid://56461131"

char.Archivable = true

--// Functions

function wsfx(a)
	coroutine.resume(coroutine.create(function()
		s11.Parent = a
		s11:Play()
		wait(1)
		s11:Stop()
	end))
end

function sit()
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	for i = 0,1,0.1 do
		wait()
		rtorso.C0 = rtorso.C0:lerp(rtors*CFrame.new(0, -1.143, 0),i)
		neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(-17.303), 0, 0),i)
		rshold.C0 = rshold.C0:lerp(rsho*CFrame.Angles(0, 0, math.rad(9.454)),i)
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(0, 0, math.rad(-11.001)),i)
		lleg.C0 = lleg.C0:lerp(lle *CFrame.new(-0.016, -0.459, 0.002) * CFrame.Angles(math.rad(89.725), math.rad(-2.005), math.rad(-8.881)), i)
		rleg.C0 = rleg.C0:lerp(rle * CFrame.new(0.039, -0.426, -0.167) * CFrame.Angles(math.rad(88.236), math.rad(2.177), math.rad(7.219)), i)
	end
end

function stand()
	hum.WalkSpeed = 16
	hum.JumpPower = 50
	for i = 0,1,0.1 do
		wait()
		rtorso.C0 = rtorso.C0:lerp(rtors,i)
		neck.C0 = neck.C0:lerp(nec,i)
		rshold.C0 = rshold.C0:lerp(rsho,i)
		lshold.C0 = lshold.C0:lerp(lsho,i)
		lleg.C0 = lleg.C0:lerp(lle, i)
		rleg.C0 = rleg.C0:lerp(rle, i)
	end
end

function hands()
	local a = 5
	local b = 1
	local c = 8
	for i = 0,1,0.1 do
		wait()
		rshold.C0 = rshold.C0:lerp(rsho*CFrame.new(-0.065, -0.142, -0.077) * CFrame.Angles(math.rad(71.448), 0, math.rad(-26.413)),i)
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.new(0.183, -0.23, -0.159) * CFrame.Angles(math.rad(71.448), math.rad(-0.401), math.rad(35.122)),i)
		relbow.C0 = relbow.C0:lerp(relbo*CFrame.Angles(0, 0, math.rad(-42.284)),i)
		lelbow.C0 = lelbow.C0:lerp(lelbo*CFrame.Angles(0, 0, math.rad(42.972)),i)
	end
	wait(.2)
	s10:Play()
	wait(.8)
	for i = 0,1,0.1 do
		wait()
		rshold.C0 = rshold.C0:lerp(rsho,i)
		lshold.C0 = lshold.C0:lerp(lsho,i)
		relbow.C0 = relbow.C0:lerp(relbo,i)
		lelbow.C0 = lelbow.C0:lerp(lelbo,i)
	end
	wait(.05)
	for i = 1,20 do
		local p = Instance.new('Part', workspace)
		previ = p
		p.BrickColor = BrickColor.new('Burnt Sienna')
		p.Material = 'Concrete'
		p.Anchored = true
		p.CanCollide = false
		p.Size = Vector3.new(2.79, 26.82, 2.88)
		p.Position = char.HumanoidRootPart.Position + char.HumanoidRootPart.CFrame.lookVector * a
		p.Position = p.Position + Vector3.new(0,-27,0)
		a = a + 5
		for i = 1,8 do
			wait()
			p.Position = p.Position + Vector3.new(0,b,0)
			b = b + 1
		end
		b = 1
		p.Touched:connect(function(hit)
			if hit.Parent and hit.Parent:FindFirstChildOfClass'Humanoid' then
				targ = hit.Parent
				humtarg = targ:FindFirstChildOfClass'Humanoid'
				humtarg:TakeDamage(humtarg.MaxHealth/2/2)
			end
		end)
	end
end

function hands2()
	for i = 0,1,0.1 do
		wait()
		rshold.C0 = rshold.C0:lerp(rsho*CFrame.new(-0.065, -0.142, -0.077) * CFrame.Angles(math.rad(71.448), 0, math.rad(-26.413)),i)
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.new(0.183, -0.23, -0.159) * CFrame.Angles(math.rad(71.448), math.rad(-0.401), math.rad(35.122)),i)
		relbow.C0 = relbow.C0:lerp(relbo*CFrame.Angles(0, 0, math.rad(-42.284)),i)
		lelbow.C0 = lelbow.C0:lerp(lelbo*CFrame.Angles(0, 0, math.rad(42.972)),i)
	end
	wait(.2)
	s10:Play()
	wait(.8)
	for i = 0,1,0.1 do
		wait()
		rshold.C0 = rshold.C0:lerp(rsho,i)
		lshold.C0 = lshold.C0:lerp(lsho,i)
		relbow.C0 = relbow.C0:lerp(relbo,i)
		lelbow.C0 = lelbow.C0:lerp(lelbo,i)
	end
	wait(.05)
	local num = 0
	local model = Instance.new("Model") 
	model.Name = "Circle" 
	model.Parent = char

	local part = Instance.new('Part')
	part.Transparency = 1
	part.CanCollide = false
	part.Size = Vector3.new(0.2,0.2,0.2)
	part.Position = root.Position + root.CFrame.lookVector * 22

	local position = part.CFrame * CFrame.new(0,-27,0) --Set this to the center of your circle. 
	local number = 70 --Change 10 to the number of sides you want your circle to have. The more bricks you have, the smoother the circle will be. 
	local radius = 16 --Change 5 to the radius you want your circle to be. 
	size = Vector3.new(1, 26, 2) --Set this to the size of each brick in your circle. 

	for i=1, number do 
		local part = Instance.new("Part")
		game.Debris:AddItem(part,30)
		part.BrickColor = BrickColor.new("Burnt Sienna")
		part.Material = 'Concrete'
		part.formFactor = "Symmetric" 
		part.Anchored = true 
		part.CanCollide = true
		part.Parent = model 
		part.Size = size 
		local sine = math.sin((360/number + 360/number*i)/(180/math.pi)) 
		local cosine = math.cos((360/number + 360/number*i)/(180/math.pi)) 
		part.CFrame = position + Vector3.new(radius*sine, 0, radius*cosine) 
		part.CFrame = part.CFrame*CFrame.fromEulerAnglesXYZ(0, (360/number + 360/number*i)/(180/math.pi), 0) 
	end 
	for _, a in pairs(model:children()) do
		if a:IsA('Part') then
			for i = 1, 27 do
				coroutine.resume(coroutine.create(function()
					wait()
					a.CFrame = a.CFrame:lerp(a.CFrame*CFrame.new(0,12,0),.1)
				end))
			end
		end
	end
end

function clear(a)
	for _, b in pairs(a:children()) do
		if b:IsA('Shirt') or b:IsA('Pants') then
			b:Destroy()
		end
	end
end

function sp(a,b,c)
	local s = Instance.new('Shirt', a)
	s.ShirtTemplate = b
	local p2 = Instance.new('Pants', a)
	p2.PantsTemplate = c
end

function unisc()
	d = Instance.new('Part', char)
	d.Transparency = 1
	d.CanCollide = false
	d.Anchored = true
	d.CFrame = char:FindFirstChild'Ino'.HumanoidRootPart.CFrame
	c = d:Clone()
	c.Parent = char
	c.CFrame = char:FindFirstChild'Shikamaru'.HumanoidRootPart.CFrame
	wait(.6)
	smoke(d)
	smoke(c)
	char:FindFirstChild'Shikamaru':Destroy()
	char:FindFirstChild'Ino':Destroy()
end

function isc()
	p1.Transparency = 1
	p.Transparency = 1
	
	local ino = char:Clone()
	local shika = char:Clone()
	
	p1.Transparency = 0
	p.Transparency = 0
	
	ino.Name = "Ino"
	shika.Name = "Shikamaru"
	
	clear(ino)
	clear(shika)
	
	sp(ino,"http://www.roblox.com/asset/?id=45739375","http://www.roblox.com/asset/?id=45739424")
	sp(shika,"rbxassetid://398113258","rbxassetid://398113725")
	
	local p1 = Instance.new('Part', shika)
	p1.Anchored = false
	p1.CanCollide = false
	p1.BrickColor = BrickColor.new('Rust')
	local w = Instance.new('Weld', p1)
	w.Part0 = p1
	w.Part1 = shika:FindFirstChild'Head'
	w.C0 = CFrame.new(0,-0.25,0.499) * CFrame.Angles(rad(0),rad(180),rad(0))
	local m1 = Instance.new('SpecialMesh', p1)
	m1.MeshId = "rbxassetid://524467395"
	m1.TextureId = "rbxassetid://524467404"
	m1.Scale = Vector3.new(0.065,0.065,0.065)
	
	local p1 = Instance.new('Part', ino)
	p1.Anchored = false
	p1.CanCollide = false
	p1.BrickColor = BrickColor.new('Rust')
	local w = Instance.new('Weld', p1)
	w.Part0 = p1
	w.Part1 = ino:FindFirstChild'Head'
	w.C0 = CFrame.new(0,1.8,.399) * CFrame.Angles(rad(0),rad(180),rad(0))
	local m1 = Instance.new('SpecialMesh', p1)
	m1.MeshId = "rbxassetid://521487839"
	m1.TextureId = "rbxassetid://521963117"
	m1.Scale = Vector3.new(0.075,0.07,0.07)
	
	ino.Parent = char
	shika.Parent = char
	
	ino.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(5,0,0)
	shika.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(-5,0,-0)
	
	smoke(ino.HumanoidRootPart)
	smoke(shika.HumanoidRootPart)
end

function redp()
	for i = 0,1,0.1 do
		wait()
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(0, 0, math.rad(20.512)),i)
		neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(-33.976), math.rad(44.118), math.rad(25.096)),i)
	end
	local p = Instance.new('Part', lshold.Parent)
	game:service'Debris':AddItem(p,3.5)
	p.Anchored = false
	p.CanCollide = false
	p.BrickColor = BrickColor.new('Really red')
	p.Size = Vector3.new(0.2,0.2,0.2)
	p.Shape = "Ball"
	local w = Instance.new('Weld', p)
	w.Part0 = p
	w.Part1 = char:FindFirstChild('LeftHand')
	w.C0 = CFrame.new(-0.6, 0, 0)
end

function eat()
	redp()
	wait(.7)
	for i = 0,1,0.1 do
		wait()
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(48.128), 0, 0),i)
		neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(-20.913), math.rad(27.903), math.rad(10.141)),i)
	end	
	wait(1.5)
	for i = 0,1,0.1 do
		wait()
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(95.627), math.rad(19.481), math.rad(52.426)),i)
	end	
	wait(.9)
	for i = 0,1,0.1 do
		wait()
		lshold.C0 = lshold.C0:lerp(lsho,i)
		neck.C0 = neck.C0:lerp(nec,i)
	end	
end

function unwing()
	vol1 = 6
	vol2 = 3
	parts = 30
	damage = 50
	size = Vector3.new(27.67, 0.05, 25.43)
	hum.WalkSpeed = 16
	hum.JumpPower = 50
	
	for i = 0,2 do
		s3.Volume = s3.Volume - 0.1
		wait()
	end
	s3:Stop()
	
	for i = 1,8 do
		wait()
		for _, a in pairs(char:FindFirstChild'UpperTorso':children()) do
			if a.Name == "WingLeft" or a.Name == "WingRight" then
				a.Transparency = a.Transparency + 0.05
			end
		end
	end
	for _, a in pairs(char:FindFirstChild'UpperTorso':children()) do
		if a.Name == "WingLeft" or a.Name == "WingRight" then
			a:Destroy()
		end
	end
end

function wing()
	vol1 = 10
	vol2 = 7
	parts = 75
	damage = 100
	size = Vector3.new(55, 0.05, 55)
	hum.WalkSpeed = 45
	hum.JumpPower = 100
	
	local p1 = Instance.new('Part', char.UpperTorso) -- Left
	p1.Anchored = false
	p1.Name = "WingLeft"
	p1.CanCollide = false
	p1.Transparency = 1
	local w = Instance.new('Weld', p1)
	w.Part0 = p1
	w.Part1 = char:FindFirstChild'UpperTorso'
	w.C0 = CFrame.new(7, -3, 0) * CFrame.Angles(rad(0),rad(35),rad(0))
	local m = Instance.new('SpecialMesh', p1)
	m.MeshId = "http://www.roblox.com/asset/?id=92135524"
	m.TextureId = "http://www.roblox.com/asset/?id=101072441"
	m.Scale = Vector3.new(3, 3, 3)
	
	local p = Instance.new('Part', char.UpperTorso) -- Right
	p.Anchored = false
	p.CanCollide = false
	p.Name = "WingRight"
	p.Transparency = 1
	local w = Instance.new('Weld', p)
	w.Part0 = p
	w.Part1 = char:FindFirstChild'UpperTorso'
	w.C0 = CFrame.new(-7, -3, 0)
	local m = Instance.new('SpecialMesh', p)
	m.MeshId = "http://www.roblox.com/asset/?id=92135508"
	m.TextureId = "http://www.roblox.com/asset/?id=101072441"
	m.Scale = Vector3.new(3, 3, 3)
	
	s3:Play()
	s3.Volume = 0
	
	for i = 1,15 do
		wait()
		s3.Volume = s3.Volume + 0.1
	end
	
	for i = 1,8 do
		wait()
		p1.Transparency = p1.Transparency - 0.05
		p.Transparency = p.Transparency - 0.05
	end
end

function debris(a, b, c)
	for j = 1, c do
        local pr = Instance.new("Part")
        pr.Name = ""
        pr.Anchored = true
        pr.BrickColor = b.BrickColor
        pr.CanCollide = true
        pr.Material = b.Material
        pr.Transparency = b.Transparency
        pr.Size = Vector3.new(math.random(16, 24), math.random(12, 16), math.random(16, 24))
        pr.CFrame = a * CFrame.Angles(0, math.rad(c * j), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
        pr.Parent = workspace
        game.Debris:AddItem(pr, 15)
    end
end

function hit(b)
	for _,v in pairs(workspace:children()) do
		if v:IsA('Model') and v.Name ~= plr.Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid") then
			if (v.HumanoidRootPart.Position-char:FindFirstChild('HumanoidRootPart').Position).magnitude <=b then
				v:FindFirstChildOfClass'Humanoid':TakeDamage(v:FindFirstChildOfClass'Humanoid'.MaxHealth/2)
			end
		end
	end
end

function punchh()
	for i = 0,1,0.2 do
		wait()
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(85.142), 0, 0),i)
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(92.876), math.rad(-13.808), math.rad(29.507)),i)
		neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(-11.345), math.rad(-16.215), math.rad(-3.209)),i)
	end	
	wait(.05)
	for i = 0,1,0.1 do
		wait()
		lshold.C0 = lshold.C0:lerp(lsho,i)
		lshold.C0 = lshold.C0:lerp(lsho,i)
		neck.C0 = neck.C0:lerp(nec,i)
	end
end

function fx()
	local part = Instance.new("Part", workspace)
	part.BrickColor = color
	part.Transparency = 0.2
	part.CFrame = CFrame.new(-66, 12.0000153, 80.3000031, -1, -0, -0, -0, -0, -1, -0, -1, -0)
	part.Anchored = true
	part.CanCollide = false
	part.BrickColor = step.BrickColor
	part.Material = step.Material
	part.FormFactor = Enum.FormFactor.	Symmetric
	part.Size = Vector3.new(0.2,0.2,0.2)
	part.CFrame = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90),math.rad(180),math.rad(90))
	part.BottomSurface = Enum.SurfaceType.Smooth
	part.TopSurface = Enum.SurfaceType.Smooth
	local pa = part:Clone()
	pa.CFrame = char:FindFirstChild'HumanoidRootPart'.CFrame * CFrame.new(0,-2.5,0)
	pa.Parent = workspace
	pa.Size = size
	pa.Transparency = 1
	pa.CanCollide = false
	game.Debris:AddItem(pa, 20)
	local dec = Instance.new('Decal', pa)
	dec.Texture = "http://www.roblox.com/asset/?id=483309292"
	dec.Face = "Top"
	local b1 = Instance.new("SpecialMesh", part)
	b1.MeshId = "http://www.roblox.com/asset/?id=3270017"
	b1.TextureId = ""
	b1.MeshType = Enum.MeshType.FileMesh
	b1.Name = "Mesh"
	b1.Scale = Vector3.new(0.2, 0.2, 0.2)
	s1:Play()
	debris(char:FindFirstChild('HumanoidRootPart').CFrame,step,parts)
	hit(damage)
	for i=0,30,1 do
		wait()
		b1.Scale = b1.Scale + Vector3.new(size,size,size)
		part.Transparency = part.Transparency + 0.05
	end
end

function smoke(a)
	coroutine.resume(coroutine.create(function()
	s15:Play()
	local pe = Instance.new("ParticleEmitter", a)
	pe.Acceleration = Vector3.new(0, 8, 0)
	pe.Lifetime = NumberRange.new(1, 1.5)
	pe.Rate = 20000
	pe.RotSpeed = NumberRange.new(-30, 30)
	pe.Rotation = NumberRange.new(0, 360)
    pe.Size = NumberSequence.new({
       NumberSequenceKeypoint.new(0, 4.38, 0),
       NumberSequenceKeypoint.new(0.672, 4.14, 0),
       NumberSequenceKeypoint.new(1, 1.48, 0)
    })
      pe.Texture = "rbxassetid://244221440"
      pe.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0, 0),
      NumberSequenceKeypoint.new(0.529, 0.3, 0),
      NumberSequenceKeypoint.new(1, 1, 1)
    })
    pe.ZOffset = 5
    pe.VelocitySpread = 360
	pe.Enabled = true
	wait(.2)
    pe.Enabled = false
	end))
end

function transform(a)
	if a == true then
		p1.BrickColor = BrickColor.new('Institutional white')
		p.Transparency = 1
		p2.PantsTemplate = "http://www.roblox.com/asset/?id=44382868"
		s.ShirtTemplate = "http://www.roblox.com/asset/?id=44382849"
		smoke(char.HumanoidRootPart)
	elseif a == false then
		p1.BrickColor = BrickColor.new('Rust')
		p.Transparency = 0
		p2.PantsTemplate = "rbxassetid://56461131"
		s.ShirtTemplate = "rbxassetid://274369116"
		smoke(char.HumanoidRootPart)
	end
end

function chips()
	for i = 0,1,0.1 do
		wait()
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(0, 0, math.rad(20.512)),i)
		neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(-33.976), math.rad(44.118), math.rad(25.096)),i)
	end
	wait(1.2)
	local p = Instance.new('Part', lshold.Parent)
	chipmesh = p
	p.Anchored = false
	p.CanCollide = false
	p.Size = Vector3.new(0.2,0.2,0.2)
	local m = Instance.new('SpecialMesh', p)
	m.MeshId = "http://www.roblox.com/asset/?id=19106014"
	m.TextureId = "http://www.roblox.com/asset/?id=342436716"
	local w = Instance.new('Weld', p)
	w.Part0 = p
	w.Part1 = char:FindFirstChild('LeftHand')
	w.C0 = CFrame.new(0,1,0)
	s9:Play()
	for i = 0,1,0.1 do
		wait()
		neck.C0 = neck.C0:lerp(nec,i)
		rshold.C0 = rshold.C0:lerp(rsho*CFrame.Angles(math.rad(65.718), math.rad(0.802), math.rad(-33.174)),i)
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(55.978), 0, 0),i)
		relbow.C0 = relbow.C0:lerp(relbo*CFrame.Angles(math.rad(7.391), math.rad(-3.266), math.rad(-23.606)),i)
		lelbow.C0 = lelbow.C0:lerp(lelbo*CFrame.Angles(0, 0, math.rad(56.322)),i)
	end
end

function nochips()
	chipmesh:FindFirstChildOfClass'Weld':Destroy()
	chipmesh.Anchored = false
	chipmesh.CanCollide = true
	for i = 0,1,0.1 do
		wait()
		neck.C0 = neck.C0:lerp(nec,i)
		rshold.C0 = rshold.C0:lerp(rsho,i)
		lshold.C0 = lshold.C0:lerp(lsho,i)
		relbow.C0 = relbow.C0:lerp(relbo,i)
		lelbow.C0 = lelbow.C0:lerp(lelbo,i)
	end
end

function spike()
	for _, a in pairs(char:children()) do
		if a:IsA('BasePart') and a.Name ~= "HumanoidRootPart" then
			a.Transparency = 1
		end
	end
	for _, a in pairs(char:children()) do
		if a:IsA('Accessory') and a.Name ~= "HumanoidRootPart" then
			a.Handle.Transparency = 1
		end
	end
	hum.WalkSpeed = 85
	hum.JumpPower = 85
	local p = Instance.new('Part', char)
	p.Anchored = true
	p.Name = "SpikeBall"
	p.CanCollide = false
	p.Size = Vector3.new(0.05,0.05,0.05)
	local w = Instance.new('Weld', p)
	w.Part0 = p
	w.Part1 = char:FindFirstChild'HumanoidRootPart'
	w.C0 = CFrame.new(0, 0, 0)
	local m = Instance.new('SpecialMesh', p)
	m.MeshId = "http://www.roblox.com/asset/?id=24388358"
	m.TextureId = "http://www.roblox.com/asset/?id=31538635"
	m.Scale = Vector3.new(17,17,17)
	hum.HipHeight = 6
end

function leg()
	legslam = true
	for i = 0,1,0.1 do
		wait()
		neck.C0 = neck.C0:lerp(nec*CFrame.Angles(rad(12), 0, 0),i)
		lleg.C0 = lleg.C0:lerp(lle*CFrame.new(0, 0.57, -0.725) * CFrame.Angles(math.rad(11.23), 0, 0),i)
	end
	wait(.7)
	for i = 0,1,0.1 do
		wait()
		neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(-20), 0, 0),i)
		lleg.C0 = lleg.C0:lerp(lle*CFrame.new(0, -0.134, -0.71),i)
	end
	fx()
	for i = 0,1,0.1 do
		wait()
		neck.C0 = neck.C0:lerp(nec,i)
		lleg.C0 = lleg.C0:lerp(lle,i)
	end
	legslam = false
end

--// Touched functions

char:FindFirstChild('LeftFoot').Touched:connect(function(hit)
	if hit:IsA('Part') and hit.Parent.Name ~= plr.Name then
		step = hit
	end
end)

char:FindFirstChild('LeftHand').Touched:connect(function(hit)
	if hit.Parent and punch and hit.Parent:FindFirstChildOfClass'Humanoid' then
		local targ = hit.Parent
		punch = false
		s2:Play()
		targ:FindFirstChildOfClass'Humanoid':TakeDamage(targ:FindFirstChildOfClass'Humanoid'.MaxHealth/2)
	end
end)

--// Buttons

mouse.KeyDown:connect(function(k)
	if sat == false and k == "q" and cooldown then
		legslam = true
		cooldown = false
		leg()
		cooldown = true
		legslam = false
	end
	if sat == false and k == "z" and cooldown then
		cooldown = false
		signs = true
		hands2()
		signs = false
		cooldown = true
	end
	if sat == false and k == "g" and cooldown then
		cooldown = false
		signs = true
		hands()
		signs = false
		cooldown = true
	end
	if sat == false and k == "e" and chip == false and cooldown then
		cooldown = false
		punch = true
		punchh()
		cooldown = true
		punch = false
	end
	if sat == false and k == "v" and chip == false and cooldown then
		if asdasd == false then
			cooldown = false
			asdasd = true
			isc()
			cooldown = true
		elseif asdasd == true and cooldown and chip == false and sat == false then
			asdasd = false
			cooldown = false
			unisc()
			cooldown = true
		end
	end
	if k == "f" and float == false and cooldown then
		if chip == false then
			chip = true
			cooldown = false
			chips()
			cooldown = true
		elseif chip and cooldown then
			cooldown = false
			nochips()
			chip = false
			cooldown = true
		end
	end
	if sat == false and k == "r" and chip == false and cooldown then
		if butf == false then
			wings = true
			cooldown = false
			butf = true
			eat()
			wait(.5)
			wing()
			float = true
			wings = false
			cooldown = true
		elseif butf == true and cooldown then
			cooldown = false
			butf = false
			unwing()
			float = false
			cooldown = true
		end
	end
	if k == "c" and chip == false and cooldown then
		if sat == false then
			cooldown = false
			sat = true
			sit()
			cooldown = true
		elseif sat == true and cooldown then
			sat = false
			cooldown = false
			stand()
			cooldown = true
		end
	end
end)

--// Left click

mouse.Button1Down:connect(function()
	if chip and cooldown then
		cooldown=false
		hum.WalkSpeed = 0
		chipmesh:FindFirstChildOfClass'Weld':Destroy()
		chipmesh.Anchored = true
		chipmesh.CFrame = char:FindFirstChild'LeftHand'.CFrame * CFrame.new(0,-1,0)
		local p = Instance.new('Part', lshold.Parent)
		p.Anchored = false
		p.CanCollide = false
		p.BrickColor = BrickColor.new('Cool yellow')
		p.Size = Vector3.new(0.2,0.2,0.2)
		local m = Instance.new('SpecialMesh', p)
		m.MeshId = "http://www.roblox.com/asset/?id=20939848"
		m.TextureId = ""
		m.Scale = Vector3.new(0.2, 0.2, 0.2)
		local w = Instance.new('Weld', p)
		w.Part0 = p
		w.Part1 = char:FindFirstChild('LeftHand')
		w.C0 = CFrame.new(0,.5,0)
		for i = 0,1,0.1 do
			wait()
			lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(95.627), math.rad(19.481), math.rad(52.426)),i)
		end
		wait(.005)
		s4:Play()
		p:Destroy()
		for i = 0,1,0.1 do
			wait()
			lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(55.978), 0, 0),i)
		end
		local w = Instance.new('Weld', chipmesh)
		w.Part0 = chipmesh
		w.Part1 = char:FindFirstChild('LeftHand')
		w.C0 = CFrame.new(0,1,0)
		chipmesh.Anchored = false
		if sat == false then
			hum.WalkSpeed = 16
		elseif sat == true then
			hum.WalkSpeed = 0
		end
		cooldown = true
	end
end)

--// Anti Laser

for _, a in pairs(game:service'Players':players()) do
	a.Backpack.ChildAdded:connect(function(p)
		if p:IsA('Tool') and p:FindFirstChildOfClass'Part' and p:FindFirstChildOfClass'LocalScript' then
			p:Destroy()
		end
	end)
end

--// Loops

a = 0
b = 0
c = 30
d = -30

game:GetService('RunService').RenderStepped:connect(function()
	b = b + 8
	hum.PlatformStand = false
	if char.UpperTorso:FindFirstChild('WingLeft') then
		char.UpperTorso.WingLeft.Weld.C0 = CFrame.new(8, -3, 0) * CFrame.Angles(rad(0),rad(a),rad(0))
		char.UpperTorso.WingRight.Weld.C0 = CFrame.new(-8, -3, 0) * CFrame.Angles(rad(0),rad(-a),rad(0))
	end
	if char:FindFirstChild('SpikeBall') then
		char.SpikeBall.CFrame = char.HumanoidRootPart.CFrame
		char.SpikeBall.Rotation = Vector3.new(b,b,b)
	end
	if spikek then
		hit(10)
		local part = Instance.new('Part', workspace)
		part.Name = "ground"
		part.BrickColor = step.BrickColor
		part.Material = step.Material
		part.Anchored = true
		part.Size = Vector3.new(7.31, 1, 13.74)
		part.CanCollide = false
		part.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0,-6.7,0)
		game.Debris:AddItem(part,0.5)
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	sine = change+sine
	ang = ang+0.08
	ang2 = ang2+0.01
	rad = math.rad
	sin = math.sin
	arm = arm + 0.06
	
	if sat == false and signs == false and chip == false and jumping == false and float == true and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
		lleg.C0 = lleg.C0:lerp(lle * CFrame.Angles(-1, 0, 0), 0.1)
		rleg.C0 = rleg.C0:lerp(rle * CFrame.Angles(-1, 0, 0), 0.1)
		lshold.C0 = lshold.C0:lerp(CFrame.new(0,0,0) * lsho * CFrame.Angles(0, 0, math.rad(-13.579)), 0.1)
		rshold.C0 = rshold.C0:lerp(CFrame.new(0,0,0) * rsho * CFrame.Angles(0, 0, math.rad(15.355)), 0.1)
	end
	
	if sat == false and jumping == false and float == false and punch == false and legslam == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
		lleg.C0 = lleg.C0:lerp(CFrame.new(-0.53,-0.15+0.1*-math.cos(tick()*4),0.2*math.sin(tick()*4))*CFrame.Angles(math.rad(25*-math.sin(tick()*8)),   rad(-1), rad(0)), 1.5) * CFrame.Angles(-0.1, 0, 0)
		rleg.C0 = rleg.C0:lerp(CFrame.new(0.53,-0.15+0.1*math.cos(tick()*4),0.2*-math.sin(tick()*4))*CFrame.Angles(math.rad(25*math.sin(tick()*8)), rad(10), rad(0)), 1.5) * CFrame.Angles(-0.1, 0, 0)
		
		lleg.C0 = lleg.C0:lerp(lle * CFrame.Angles(-0.4, 0, 0), 0.1)
		rleg.C0 = rleg.C0:lerp(rle * CFrame.Angles(0.4, 0, 0), 0.1)
	
	elseif sat == false and jumping == false and float == false and legslam == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude < 2 then
		lleg.C0 = lleg.C0:lerp(lle,0.1)
		rleg.C0 = rleg.C0:lerp(rle,0.1)
	end
	
	if sat == false and signs == false and chip == false and jumping == false and float == false and punch == false and legslam == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
		lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(-25*-math.sin(tick()*8)),   rad(-1), rad(0)), 1.5) * CFrame.Angles(0.1, 0, 0)
		rshold.C0 = rshold.C0:lerp(rsho*CFrame.Angles(math.rad(25*-math.sin(tick()*8)),   rad(-1), rad(0)), 1.5) * CFrame.Angles(0.1, 0, 0)
		
		lshold.C0 = lshold.C0:lerp(CFrame.new(0,0,0) * lsho * CFrame.Angles(0, 0, math.rad(-13.579)), 0.1)
		rshold.C0 = rshold.C0:lerp(CFrame.new(0,0,0) * rsho * CFrame.Angles(0, 0, math.rad(15.355)), 0.1)
	end
	
	if sat == false and signs == false and chip == false and legslam == false and wings == false and punch == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude < 2 then
		lshold.C0 = lshold.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * lsho * CFrame.Angles(-0.1, 0, 0), 0.1)
		rshold.C0 = rshold.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * rsho * CFrame.Angles(-0.1, 0, 0), 0.1)
		neck.C0 = neck.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * nec * CFrame.Angles(-0.1, 0, 0), 0.1)
		lleg.C0 = lleg.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * lle * CFrame.Angles(-0.1, 0, 0), 0.1)
		rleg.C0 = rleg.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * rle * CFrame.Angles(-0.1, 0, 0), 0.1)
		waist.C0 = waist.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * wais * CFrame.Angles(-0.1, 0, 0), 0.1)
	end
	
	if hum:GetState() == Enum.HumanoidStateType.Jumping then
		lshold.C0 = lshold.C0:lerp(CFrame.new(0,0,0) * lsho * CFrame.Angles(0, 0, math.rad(-13.579)), 0.1)
		rshold.C0 = rshold.C0:lerp(CFrame.new(0,0,0) * rsho * CFrame.Angles(0, 0, math.rad(15.355)), 0.1)
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if step.Material == Enum.Material.Grass then
		if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
			s5:Resume()
		else
			s5:Stop()
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if step.Material == Enum.Material.Wood or step.Material == Enum.Material.WoodPlanks or step.Material == Enum.Material.Neon or step.Material == Enum.Material.Plastic or step.Material == Enum.Material.SmoothPlastic then
		if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
			s6:Resume()
		else
			s6:Stop()
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if step.Material == Enum.Material.Sand then
		if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
			s7:Resume()
		else
			s7:Stop()
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if step.Material == Enum.Material.Ice then
		if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
			s8:Resume()
		else
			s8:Stop()
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if step.Material == Enum.Material.Metal or step.Material == Enum.Material.DiamondPlate then
		if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
			s12:Resume()
		else
			s12:Stop()
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if step.Material == Enum.Material.Granite or step.Material == Enum.Material.Brick or step.Material == Enum.Material.CorrodedMetal or step.Material == Enum.Material.Concrete or step.Material == Enum.Material.Pebble or step.Material == Enum.Material.Marble or step.Material == Enum.Material.Cobblestone then
		if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
			s13:Resume()
		else
			s13:Stop()
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if step.Material == Enum.Material.Fabric then
		if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
			s14:Resume()
		else
			s14:Stop()
		end
	end
end)

game:GetService('RunService').RenderStepped:connect(function()
	if Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude < 2 then
		s8:Stop()
		s7:Stop()
		s6:Stop()
		s5:Stop()
		s12:Stop()
		s13:Stop()
	end
end)

while wait() do
	s1.Volume = vol1
	s2.Volume = vol2
	for i = 1,12 do
		wait()
		a = a + 2
	end
	for i = 1,12 do
		wait()
		a = a - 2
	end
end