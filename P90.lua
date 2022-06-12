--[[
Fabrique Nationale Herstal Project-90 Personal Defence Weapon. Commonly known as the P90.
The P90 uses the highly capable 5.7x28mm round, that can travel at near rifle speeds, and have 
twice the penetration. The P90 also uses unique 50 round magazines.
Designed in compliance to a request put out for a PDW by the US Military.
Sight0 = Iron Sights
Sight1 = EoTech Holographic
Sight2 = AimPoint Red Dot Scope
--]]


if script == nil then return end


Player = game:GetService("Players").LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end

Name = "FN P90"
MC = BrickColor.new("Really black")
Spread = 900000
Attachment = true
Sight = 1
Mode = 0
MR = 0.01
MagSize = 50
Chamber = 2
Jammed = false
Reliability = 280
selected = false
Holstered = true
canDual = true
dual = false
Button1Down = false
damage = 12
canFire = true
canFire2 = false
readyTime = 0.07
automatic = true
burst = false
burstCount = 0
burstCountMax = 3
canSilence = true
silenced = false
canZoom = true
zoom = false
switchToSingle = true
switchToBurst = true
switchToAutomatic = true


ammoGui = Instance.new("ScreenGui")
ammoGui.Name = Name
local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.Size = UDim2.new(0, 165, 0, 60)
frame.Position = UDim2.new(0, 0, 1, -400)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = ammoGui
local label = Instance.new("TextLabel")
label.Name = "Weapon"
label.Text = "Weapon: " ..Name
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundColor3 = Color3.new(1, 0, 0)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "MagazinePrefix"
label.Text = "    Magazine:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 20)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Magazine"
label.Text = "0/0"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 20)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "AmmoPrefix"
label.Text = "    5.7x28mm:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 40)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Ammo"
label.Text = "0/0"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 40)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame


function updateGui()
	if selected == false then return end
	if Player:FindFirstChild("PlayerGui") == nil then Instance.new("PlayerGui").Parent = Player end
	if Player.PlayerGui:FindFirstChild(Name) == nil then
		ammoGui:Clone().Parent = Player.PlayerGui
	end
	Player.PlayerGui[Name].Frame.Magazine.Text = tostring(magazine.Value).. "/" ..tostring(magazineMax.Value)
	Player.PlayerGui[Name].Frame.Ammo.Text = tostring(ammo.Value).. "/" ..tostring(ammoMax.Value)
end


function makeParts(format)
	local model = Instance.new("Model")
	model.Name = Name
	local pm2 = Instance.new("Part")
	pm2.Material = "SmoothPlastic"
	pm2.Name = "WeldPoint"
	pm2.formFactor = "Symmetric"
	pm2.Size = Vector3.new(1, 1, 1)
	pm2.BrickColor = MC
	pm2.Reflectance = MR
	pm2.Transparency = 1
	pm2.CanCollide = false
	pm2.Locked = true
	pm2.TopSurface = 0
	pm2.BottomSurface = 0
	pm2.Parent = model
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm2
		if format == "RightHand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 0.2, 0.71)
			w.C1 = CFrame.new()
		elseif format == "LeftHand" then
			w.Part1 = Player.Character:FindFirstChild("Left Arm")
			w.C0 = CFrame.new(0, 0.2, 0.71)
			w.C1 = CFrame.new()
			model.Name = Name.. " (Left)"
		elseif format == "RightHolster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(0.6, 0.4, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-20))
			model.Name = Name.. " (Holstered)"
		elseif format == "LeftHolster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(0.85, 0.4, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-5))
			model.Name = Name.. " (Holstered, Left)"
		end
		w.Parent = pm2
		model.Parent = Player.Character
	end	
	local pm = Instance.new("Part")
	pm.Material = "SmoothPlastic"
	pm.Name = "Handle"
	pm.formFactor = "Symmetric"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = MC
	pm.Reflectance = MR
	pm.Transparency = 1
	pm.CanCollide = false
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = pm2
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Fire"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209842"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Fire2"
	s.SoundId = "http://roblox.com/asset/?id=2691586"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm		
	local s = Instance.new("Sound")
	s.Name = "Reload"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209636"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Empty"
	s.SoundId = "http://www.roblox.com/asset/?id=2697295"
	s.Volume = 1
	s.Pitch = 5
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Lock"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209845"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Jam"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209636"
	s.Volume = 1
	s.Pitch = 2
	s.Looped = false
	s.Parent = pm			
	local s = Instance.new("Sound")
	s.Name = "Release"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209813"
	s.Volume = 1
	s.Pitch = 4
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Switch"
	s.SoundId = "http://www.roblox.com/asset/?id=2697295"
	s.Volume = 1
	s.Pitch = 10
	s.Looped = false
	s.Parent = pm
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "ShellOut"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.Transparency = 1
	p.Locked = true
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0.5, 0, 0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(45), 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local pc = Instance.new("Part")
	pc.Material = "SmoothPlastic"
	pc.Name = "Magazine"
	pc.formFactor = "Symmetric"
	pc.Size = Vector3.new(1, 1, 1)
	pc.BrickColor = BrickColor.new("New Yeller")
	pc.CanCollide = false
	pc.Locked = true
	pc.TopSurface = 0
	pc.BottomSurface = 0
	pc.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 1.1, 0.15)
	m.Parent = pc
	local w = Instance.new("Weld")
	w.Part0 = pc
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.6, 0)
	w.C1 = CFrame.new()
	w.Parent = pc
	local pb = Instance.new("Part")
	pb.Material = "SmoothPlastic"
	pb.Name = "Bolt"
	pb.CanCollide = false
	pb.formFactor = "Symmetric"
	pb.Size = Vector3.new(1, 1, 1)
	pb.BrickColor = BrickColor.new("Dark stone grey")
	pb.Locked = true
	pb.TopSurface = 0
	pb.BottomSurface = 0
	pb.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.25, 0.4, 0.1)
	m.Parent = pb
	local w = Instance.new("Weld")
	w.Part0 = pb
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.8, -0.125)
	w.C1 = CFrame.new()
	w.Parent = pb
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "BoltPart"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Medium stone grey")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.26, 0.1, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pb
	w.C0 = CFrame.new(0, 0.2, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Base"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.26, 0.6, 0.6)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.18, -0.2)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Base"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.65, 0.3)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.15, -0.05)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Base"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.9, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.25, -0.125)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Base"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.4, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.9, -0.125)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Base"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.15, 0.6)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.148, 0.02)
	w.C1 = CFrame.new()
	w.Parent = p	
	local pg = Instance.new("Part")
	pg.Material = "SmoothPlastic"
	pg.Name = "Grip"
	pg.CanCollide = false
	pg.formFactor = "Symmetric"
	pg.Size = Vector3.new(1, 1, 1)
	pg.BrickColor = MC
	pg.Reflectance = MR
	pg.Locked = true
	pg.TopSurface = 0
	pg.BottomSurface = 0
	pg.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.3, 0.3)
	m.Parent = pg
	local w = Instance.new("Weld")
	w.Part0 = pg
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.1, -0.35)
	w.C1 = CFrame.new()
	w.Parent = pg
	local pq = Instance.new("Part")
	pq.Material = "SmoothPlastic"
	pq.Name = "Grip"
	pq.CanCollide = false
	pq.formFactor = "Symmetric"
	pq.Size = Vector3.new(1, 1, 1)
	pq.BrickColor = MC
	pq.Reflectance = MR
	pq.Locked = true
	pq.TopSurface = 0
	pq.BottomSurface = 0
	pq.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.3, 0.15)
	m.Parent = pq
	local w = Instance.new("Weld")
	w.Part0 = pq
	w.Part1 = pg
	w.C0 = CFrame.new(0, 0.15, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(12), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pq
	local pw = Instance.new("Part")
	pw.Material = "SmoothPlastic"
	pw.Name = "Grip"
	pw.CanCollide = false
	pw.formFactor = "Symmetric"
	pw.Size = Vector3.new(1, 1, 1)
	pw.BrickColor = MC
	pw.Reflectance = MR
	pw.Locked = true
	pw.TopSurface = 0
	pw.BottomSurface = 0
	pw.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.2, 0.15)
	m.Parent = pw
	local w = Instance.new("Weld")
	w.Part0 = pw
	w.Part1 = pq
	w.C0 = CFrame.new(0, 0.22, -0.03) * CFrame.fromEulerAnglesXYZ(math.rad(-12), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pw
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Grip"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.2, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pw
	w.C0 = CFrame.new(0, 0.14, -0.03) * CFrame.fromEulerAnglesXYZ(math.rad(-25), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Grip"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.18, 0.3)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pg
	w.C0 = CFrame.new(0, 0.54, 0.05)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Grip"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.1, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pg
	w.C0 = CFrame.new(0, 1.08, 0.05)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Trigger"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Dark stone grey")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.18, 0.18, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pg
	w.C0 = CFrame.new(0, 0.6, 0.08)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Grip"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.18, 0.05)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pg
	w.C0 = CFrame.new(0, 0.62, 0.01)
	w.C1 = CFrame.new()
	w.Parent = p
	local pe = Instance.new("Part")
	pe.Material = "SmoothPlastic"
	pe.Name = "Grip"
	pe.CanCollide = false
	pe.formFactor = "Symmetric"
	pe.Size = Vector3.new(1, 1, 1)
	pe.BrickColor = MC
	pe.Reflectance = MR
	pe.Locked = true
	pe.TopSurface = 0
	pe.BottomSurface = 0
	pe.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.15, 0.18)
	m.Parent = pe
	local w = Instance.new("Weld")
	w.Part0 = pe
	w.Part1 = pg
	w.C0 = CFrame.new(0, 0.76, -0.055)
	w.C1 = CFrame.new()
	w.Parent = pe
	local pr = Instance.new("Part")
	pr.Material = "SmoothPlastic"
	pr.Name = "Grip"
	pr.CanCollide = false
	pr.formFactor = "Symmetric"
	pr.Size = Vector3.new(1, 1, 1)
	pr.BrickColor = MC
	pr.Reflectance = MR
	pr.Locked = true
	pr.TopSurface = 0
	pr.BottomSurface = 0
	pr.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.1, 0.18)
	m.Parent = pr
	local w = Instance.new("Weld")
	w.Part0 = pr
	w.Part1 = pe
	w.C0 = CFrame.new(0, 0.07, -0.025) * CFrame.fromEulerAnglesXYZ(math.rad(-30), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pr
	local pt = Instance.new("Part")
	pt.Material = "SmoothPlastic"
	pt.Name = "Grip"
	pt.CanCollide = false
	pt.formFactor = "Symmetric"
	pt.Size = Vector3.new(1, 1, 1)
	pt.BrickColor = MC
	pt.Reflectance = MR
	pt.Locked = true
	pt.TopSurface = 0
	pt.BottomSurface = 0
	pt.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.1, 0.18)
	m.Parent = pt
	local w = Instance.new("Weld")
	w.Part0 = pt
	w.Part1 = pr
	w.C0 = CFrame.new(0, 0.05, -0.015) * CFrame.fromEulerAnglesXYZ(math.rad(-30), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pt
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Grip"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.2, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pt
	w.C0 = CFrame.new(0, 0.1, -0.015) * CFrame.fromEulerAnglesXYZ(math.rad(-30), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p											
	local p1 = Instance.new("Part")
	p1.Material = "SmoothPlastic"
	p1.Name = "Rail"
	p1.CanCollide = false
	p1.formFactor = "Symmetric"
	p1.Size = Vector3.new(1, 1, 1)
	p1.BrickColor = MC
	p1.Reflectance = MR
	p1.Locked = true
	p1.TopSurface = 0
	p1.BottomSurface = 0
	p1.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.45, 0.15)
	m.Parent = p1
	local w = Instance.new("Weld")
	w.Part0 = p1
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.2, -0.635) * CFrame.fromEulerAnglesXYZ(math.rad(-80), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p1	
	local p2 = Instance.new("Part")
	p2.Material = "SmoothPlastic"
	p2.Name = "Rail"
	p2.CanCollide = false
	p2.formFactor = "Symmetric"
	p2.Size = Vector3.new(1, 1, 1)
	p2.BrickColor = MC
	p2.Reflectance = MR
	p2.Locked = true
	p2.TopSurface = 0
	p2.BottomSurface = 0
	p2.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.3, 0.15)
	m.Parent = p2
	local w = Instance.new("Weld")
	w.Part0 = p2
	w.Part1 = p1
	w.C0 = CFrame.new(0, 0.15, 0.15) * CFrame.fromEulerAnglesXYZ(math.rad(85), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p2
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Rail"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.3, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = p2
	w.C0 = CFrame.new(0, 0.25, -0.01) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "SightRail"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.24, 0.57, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = p2
	w.C0 = CFrame.new(0, 0.11, 0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Hole"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Reflectance = 0
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.09, 0.2402, 0.09)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.2, -0.125)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	if silenced == false then
		p.Name = "Muzzle"
	else
		p.Name = "Muzzle 2"
	end
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Black")
	p.Reflectance = 0.06
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.11, 0.9, 0.11)
	m.Offset = Vector3.new(0, 0.52, 0)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.38, -0.125)
	w.C1 = CFrame.new()
	w.Parent = p
	local s = Instance.new("Smoke")
	s.Enabled = false
	s.Name = "Smoke"
	s.RiseVelocity = -5
	s.Opacity = 0.3
	s.Color = Color3.new(75 / 225, 75 / 225, 75 / 225)
	s.Size = 1
	s.Parent = p
	local f = Instance.new("Fire")
	f.Enabled = false
	f.Name = "Fire"
	f.Heat = -35
	f.Size = 1
	f.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	if silenced == false then
		p.Name = "Silencer"
		p.Transparency = 1
	else
		p.Name = "Muzzle"
		p.Transparency = 0
	end
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Reflectance = 0
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.2, 0.7, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.6, -0.125)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Silencer1"
	if silenced == false then
		p.Transparency = 1
	else
		p.Transparency = 0
	end
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Black")
	p.Reflectance = 0
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.21, 0.6, 0.21)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.6, -0.125)
	w.C1 = CFrame.new()
	w.Parent = p	
	if Sight == 0 then
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "FrontSight"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.08, 0.08, 0.15)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = p2
		w.C0 = CFrame.new(0, 0.28, 0.08) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "RearSight"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.08, 0.08, 0.15)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = p2
		w.C0 = CFrame.new(0.08, -0.1, 0.08) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "RearSight"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.08, 0.08, 0.15)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = p2
		w.C0 = CFrame.new(-0.08, -0.1, 0.08) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p					
	elseif Sight == 1 then
		local c = Instance.new("Part")
		c.Material = "SmoothPlastic"
		c.Name = "SightCube"
		c.CanCollide = false
		c.formFactor = "Symmetric"
		c.Size = Vector3.new(1, 1, 1)
		c.BrickColor = MC
		c.Reflectance = MR
		c.Transparency = 0.4
		c.Locked = true
		c.TopSurface = 0
		c.BottomSurface = 0
		c.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.25, 0.25, 0.25)
		m.Parent = c
		local w = Instance.new("Weld")
		w.Part0 = c
		w.Part1 = p2
		w.C0 = CFrame.new(0, 0, 0.18) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = c
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "SightBottom"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.2, 0.38, 0.18)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = c
		w.C0 = CFrame.new(0, 0.08, -0.12)
		w.C1 = CFrame.new()
		w.Parent = p		
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Image"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Transparency = 1
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local d = Instance.new("Decal")
		d.Face = "Top"
		d.Texture = "http://www.roblox.com/asset/?id=29712167"
		d.Parent = p
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1, 0.001, 0.1)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = c
		w.C0 = CFrame.new(0, 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p				
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.05, 0.25, 0.25)
		m.Offset = Vector3.new(0.1, 0, 0)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = c
		w.C0 = CFrame.new(0, 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.05, 0.25, 0.25)
		m.Offset = Vector3.new(-0.1, 0, 0)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = c
		w.C0 = CFrame.new(0, 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.25, 0.25, 0.05)
		m.Offset = Vector3.new(0, 0, -0.1)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = c
		w.C0 = CFrame.new(0, 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.25, 0.25, 0.05)
		m.Offset = Vector3.new(0, 0, 0.1)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = c
		w.C0 = CFrame.new(0, 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
	elseif Sight == 2 then
		canZoom = true
		local l = Instance.new("Part") -- Aimpoint Scope
		l.Material = "SmoothPlastic"
		l.Name = "SightBottom"
		l.CanCollide = false
		l.formFactor = "Symmetric"
		l.Size = Vector3.new(1, 1, 1)
		l.BrickColor = MC
		l.Reflectance = MR
		l.Locked = true
		l.TopSurface = 0
		l.BottomSurface = 0
		l.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.2, 0.4, 0.18)
		m.Parent = l
		local w = Instance.new("Weld")
		w.Part0 = l
		w.Part1 = p2
		w.C0 = CFrame.new(0, 0.1, 0.08) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = l
		canZoom = true
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.28, 0.5, 0.28)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "ScopeInt"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = BrickColor.new("White")
		p.Reflectance = 0.3
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.26, 0.604, 0.26)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p		
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.3, 0.1, 0.3)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, -0.25, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.3, 0.1, 0.3)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0.25, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p				
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.12, 0.5, 0.12)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(-0.12, 0, 0.24)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.13, 0.1, 0.13)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(-0.12, 0.25, 0.24)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.13, 0.1, 0.13)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(-0.12, -0.25, 0.24)
		w.C1 = CFrame.new()
		w.Parent = p									
	else end
	if Attachment == true then
		local l = Instance.new("Part")
		l.Material = "SmoothPlastic"
		l.Name = "LightAttach"
		l.formFactor = "Symmetric"
		l.Size = Vector3.new(1, 1, 1)
		l.CanCollide = false
		l.BrickColor = MC
		l.Reflectance = MR
		l.Locked = true
		l.TopSurface = 0
		l.BottomSurface = 0
		l.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.24, 0.45, 0.24)
		m.Parent = l
		local w = Instance.new("Weld")
		w.Part0 = l
		w.Part1 = pm
		w.C0 = CFrame.new(0.2, 1, 0.25)
		w.C1 = CFrame.new()
		w.Parent = l
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "LightAttach"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.21, 0.4, 0.21)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, -0.027, 0)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "LightAttach"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = BrickColor.new("Bright yellow")
		p.Reflectance = 0.3
		if Holstered == false then
			p.Transparency = 0.5
		else
			p.Transparency = 1
		end
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.22, 0.01, 0.22)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0.29, 0)
		w.C1 = CFrame.new()
		w.Parent = p		
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "LightAttach"
		p.CanCollide = false
		p.formFactor = "Custom"
		p.Size = Vector3.new(0.2, 0.2, 0.2)
		p.BrickColor = MC
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("SpecialMesh")
		m.MeshType = "FileMesh"
		m.Scale = Vector3.new(0.12, 0.5, 0.12)
		m.MeshId = "http://www.roblox.com/asset/?id=1033714"
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0.1, 0)
		w.C1 = CFrame.new()
		w.Parent = p					
		local p = Instance.new("Part")
		p.Material = "SmoothPlastic"
		p.Name = "Light"
		p.CanCollide = false
		p.formFactor = "Custom"
		p.Size = Vector3.new(0.2, 0.2, 0.2)
		p.BrickColor = BrickColor.new("Bright yellow")
		p.Locked = true
		if selected == true and Mode == 2 and dual == false then
			p.Transparency = 0.5
		else
			p.Transparency = 1
		end
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("SpecialMesh")
		m.MeshType = "FileMesh"
		m.Scale = Vector3.new(2, 50, 2)
		m.MeshId = "http://www.roblox.com/asset/?id=1033714"
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 19, 0)
		w.C1 = CFrame.new()
		w.Parent = p			
	else end		
	return model
end


function removeParts(format)
	if format == "RightHand" then
		pcall(function() Player.Character[Name]:Remove() end)
	elseif format == "LeftHand" then
		pcall(function() Player.Character[Name.. " (Left)"]:Remove() end)
	elseif format == "RightHolster" then
		pcall(function() Player.Character[Name.. " (Holstered)"]:Remove() end)
	elseif format == "LeftHolster" then
		pcall(function() Player.Character[Name.. " (Holstered, Left)"]:Remove() end)
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function playAnimation(format, mouse)
	if format == "equip" then
		Player.Character[Name.. " (Holstered)"].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name.. " (Holstered)"].Handle
		w.Part1 = Player.Character:FindFirstChild("Right Arm")
		w.C0 = CFrame.new(0, 1.2, 0.7)
		w.C1 = CFrame.new()
		w.Parent = Player.Character[Name.. " (Holstered)"].Handle
		for i = 0.01, 1, 0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.55 * i) + (1.5 * (1 - i)), 0.75 * i, 0.35 * i) * CFrame.fromEulerAnglesXYZ(math.rad(315 + ((1 - i) * 50)), 0, math.rad(-90) * i)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new((-1 * i) + (-1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return playAnimation("hold")
	end
	if format == "rightEquip" then
		Player.Character[Name.. " (Holstered)"].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name.. " (Holstered)"].Handle
		w.Part1 = Player.Character:FindFirstChild("Right Arm")
		w.C0 = CFrame.new(0, 1.2, 0.7)
		w.C1 = CFrame.new()
		w.Parent = Player.Character[Name.. " (Holstered)"].Handle
		for i = 0.01, 1, 0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new((-1 * i) + (-1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return playAnimation("rightHold")
	end
	if format == "leftEquip" then
		Player.Character[Name.. " (Holstered, Left)"].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name.. " (Holstered, Left)"].Handle
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(0, 1.2, 0.7)
		w.C1 = CFrame.new()
		w.Parent = Player.Character[Name.. " (Holstered, Left)"].Handle
		for i = 0.01, 1, 0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((1 * i) + (1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return playAnimation("leftHold")
	end
	if format == "unequip" then
		Mode = 0
		if Attachment == true then
			Player.Character[Name].Light.Transparency = 1
		end	
		for i = 1, 0.01, -0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.55 * i) + (1.5 * (1 - i)), 0.75 * i, 0.35 * i) * CFrame.fromEulerAnglesXYZ(math.rad(315 + ((1 - i) * 50)), 0, math.rad(-90) * i)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-1 * i) + (-1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return true
	end
	if format == "leftUnequip" then
		Mode = 0
		if Attachment == true then
			Player.Character[Name].Light.Transparency = 1
			Player.Character[Name.. " (Left)"].Light.Transparency = 1
		end	
		for i = 1, 0.01, -0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((1 * i) + (1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return true
	end
	if format == "rightUnequip" then
		Mode = 0
		if Attachment == true then
			Player.Character[Name].Light.Transparency = 1
			Player.Character[Name.. " (Left)"].Light.Transparency = 1
		end	
		for i = 1, 0.01, -0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-1 * i) + (-1.5 * (1 - i)), 0.5 * i, 0.6 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return true
	end
	if format == "hold" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			else return false end
		else return false end
	end
	if format == "rightHold" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.72, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), math.rad(-5))
			else return false end
		else return false end
	end
	if format == "leftHold" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.72, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(5), math.rad(5))
			else return false end
		else return false end
	end
	if format == "reload" then
		Player.Character[Name].Handle.Empty:Play()
		for i = 0, 25, 7.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i * 1.2), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end	
		Player.Character[Name].Handle.Release:Play()
		Player.Character[Name].Magazine.Transparency = 1
		local magazineDrop = Player.Character[Name].Magazine:Clone()
		magazineDrop.Transparency = 0
		magazineDrop.Parent = game:GetService("Workspace")
		for i = 0, 25, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 + (i / 60), 1.2 - (i / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 + -i * 3.5), math.rad(-90))
					wait()
				else return false end
			else return false end
		end		
		coroutine.resume(coroutine.create(function(part) wait(4.5) for i = 0, 1, 0.1 do part.Transparency = i wait() end part:Remove() end), magazineDrop)
		delay(0.1, function() magazineDrop.CanCollide = true end)		
		Player.Character[Name].Handle.Reload:Play()		
		local magazineNew = Player.Character[Name].Magazine:Clone()
		magazineNew.Name = "New Magazine"
		magazineNew.Transparency = 0
		magazineNew.Parent = Player.Character[Name]
		local w = Instance.new("Weld")
		w.Part0 = magazineNew
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(0, 1.1, 0)
		w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		w.Parent = magazineNew
		for i = 25, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55 + (i / 50), 0.75 - (i / 50), 0.35 + (i / 22.5)) * CFrame.fromEulerAnglesXYZ(math.rad(315 - (i * 2)), math.rad(-i * 3.5), math.rad(-90))
					wait()
				else return false end
			else return false end
		end			
		Player.Character[Name].Magazine.Transparency = 0
		Player.Character[Name]["New Magazine"]:Remove()
		wait(0.1)
		Player.Character[Name].Handle.Lock.Pitch = 3		
		Player.Character[Name].Handle.Lock:Play()			
		for i = 5, 0, -1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90))
					wait()
				else return false end
			else return false end
		end	
		wait(0.14)
		for i = 25, 0, -7.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i * 1.2), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end	
		for i = 0, 10, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		for i = 10, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end	
		if magazine.Value == 0 then
			playAnimation("charge")
			return true
		else end
	end
	if format == "charge" then
		for i = 0, 10, 1.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2 - (i / 10), 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
					wait()
				end
			end
		end	
		Player.Character[Name].Handle.Lock.Pitch = 1.5
		Player.Character[Name].Handle.Lock:Play()		
		Player.Character[Name].Bolt.Weld.C0 = CFrame.new(0, 0.6, -0.125)
		Jammed = false
		if magazine.Value ~= 0 then
			makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))
		else end
		wait(0.2)
		Player.Character[Name].Bolt.Weld.C0 = CFrame.new(0, 0.8, -0.125)
		playAnimation("hold")
		return true
	end
	if format == "reloadDual" then
		for i = 0, 25, 7.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		coroutine.wrap(function()
				Player.Character[Name].WeldPoint.Weld.C0 = CFrame.new(0, 1, 0.71)	
				Player.Character[Name.. " (Left)"].WeldPoint.Weld.C0 = CFrame.new(0, 1, 0.71)						
				for i = 0, 90, 15 do
					pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(i), 0, 0) end)
					pcall(function() Player.Character[Name.. " (Left)"].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(i), 0, 0) end)					
					wait()
				end
				pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) end)
				pcall(function() Player.Character[Name.. " (Left)"].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) end)				
		end)()				
		wait(0.1)
		CamShake(1, 40000)													
		Player.Character[Name].Handle.Release:Play()
		Player.Character[Name].Magazine.Transparency = 1
		local magazineDrop = Player.Character[Name].Magazine:Clone()
		magazineDrop.Transparency = 0
		magazineDrop.Parent = game:GetService("Workspace")
		coroutine.resume(coroutine.create(function(part) wait(4.5) for i = 0, 1, 0.1 do part.Transparency = i wait() end part:Remove() end), magazineDrop)
		delay(0.1, function() magazineDrop.CanCollide = true end)	
		wait(math.random(0.1, 0.25))
		Player.Character[Name].Handle.Release:Play()
		Player.Character[Name.. " (Left)"].Magazine.Transparency = 1
		local magazineDropDual = Player.Character[Name.. " (Left)"].Magazine:Clone()
		magazineDropDual.Transparency = 0
		magazineDropDual.Parent = game:GetService("Workspace")
		coroutine.resume(coroutine.create(function(part) wait(4.5) for i = 0, 1, 0.1 do part.Transparency = i wait() end part:Remove() end), magazineDropDual)
		delay(0.1, function() magazineDropDual.CanCollide = true end)
		for i = 0, 25, 7.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		for i = 125, 0, -15 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(5), 0)					
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		Player.Character[Name].Handle.Reload:Play()		
		Player.Character[Name].Magazine.Transparency = 0
		Player.Character[Name.. " (Left)"].Magazine.Transparency = 0
		coroutine.wrap(function()
				for i = 90, 0, -15 do
					pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(i), 0, 0) end)
					pcall(function() Player.Character[Name.. " (Left)"].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(i), 0, 0) end)					
					wait()
				end
				pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) end)
				pcall(function() Player.Character[Name.. " (Left)"].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) end)
				Player.Character[Name].WeldPoint.Weld.C0 = CFrame.new(0, 0.2, 0.71)	
				Player.Character[Name.. " (Left)"].WeldPoint.Weld.C0 = CFrame.new(0, 0.2, 0.71)								
		end)()	
		for i = 0, 125, 15 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(5), 0)					
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad((-90 - i) + 100), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		if magazine.Value == 0 then
			Player.Character[Name].Handle.Lock.Pitch = 1.5
			Player.Character[Name].Handle.Lock:Play()
			CamShake(1, 30000)	
			CamShake(1, -30000)											
		else end
		for i = 25, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.7, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		playAnimation("rightHold")
		playAnimation("leftHold")
		return true
	end
	if format == "fire" then
		makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))
		if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
			if silenced then
				Player.Character[Name].Handle.Fire2.Volume = math.random(3, 8) / 10
				Player.Character[Name].Handle.Fire2.Pitch = math.random(1.8, 2)
				Player.Character[Name].Handle.Fire2:Play()
				CamShake(15, 50000)
			else
				Player.Character[Name].Handle.Fire.Volume = math.random(8, 12) / 10
				Player.Character[Name].Handle.Fire.Pitch = math.random(25, 35) / 20
				Player.Character[Name].Handle.Fire:Play()
				CamShake(15, 50000)
			end
		else return false end
		if Player.Character[Name]:FindFirstChild("Muzzle") ~= nil then
			if silenced == false then
				coroutine.resume(coroutine.create(function() Player.Character[Name].Muzzle.Smoke.Enabled = true Player.Character[Name].Muzzle.Fire.Enabled = true wait(0.1) Player.Character[Name].Muzzle.Smoke.Enabled = false Player.Character[Name].Muzzle.Fire.Enabled = false end))
			else end
		else return false end
		for i = 0, 6, 3 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		if magazine.Value ~= 0 then
			wait()
		elseif magazine.Value == 0 then
			Player.Character[Name].Handle.Lock.Pitch = 3
			Player.Character[Name].Handle.Lock:Play()
		end--]]
		if math.random(1, Reliability) == 1 then 
			Jammed = true
			Player.Character[Name].Handle.Jam:Play()			
		end		
		for i = 6, 0, -3 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
	end
	if format == "rightFire" then
		if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
			if silenced then
				Player.Character[Name].Handle.Fire2.Volume = math.random(3, 8) / 10
				Player.Character[Name].Handle.Fire2.Pitch = math.random(1.8, 2)
				Player.Character[Name].Handle.Fire2:Play()
				CamShake(15, 50000)
			else
				Player.Character[Name].Handle.Fire.Volume = math.random(8, 12) / 10
				Player.Character[Name].Handle.Fire.Pitch = math.random(25, 35) / 20
				Player.Character[Name].Handle.Fire:Play()
				CamShake(15, 50000)
			end
		else return false end
		if Player.Character[Name]:FindFirstChild("Muzzle") ~= nil then
			if silenced == false then
				coroutine.resume(coroutine.create(function() Player.Character[Name].Muzzle.Smoke.Enabled = true Player.Character[Name].Muzzle.Fire.Enabled = true wait(0.1) Player.Character[Name].Muzzle.Smoke.Enabled = false Player.Character[Name].Muzzle.Fire.Enabled = false end))
			else end
		else return false end
		for i = 0, 10, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.72, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), math.rad(-5))
					wait()
				else return false end
			else return false end
		end
		makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))		
		if magazine.Value ~= 0 then
			wait()
		elseif magazine.Value == 0 then
			Player.Character[Name].Handle.Lock.Pitch = 3
			Player.Character[Name].Handle.Lock:Play()
		end
		for i = 10, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.72, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), math.rad(-5))
					wait()
				else return false end
			else return false end
		end
	end
	if format == "leftFire" then
		if Player.Character[Name.. " (Left)"]:FindFirstChild("Handle") ~= nil then
			if silenced then
				Player.Character[Name.. " (Left)"].Handle.Fire2.Volume = math.random(3, 8) / 10
				Player.Character[Name.. " (Left)"].Handle.Fire2.Pitch = math.random(1.8, 2)
				Player.Character[Name.. " (Left)"].Handle.Fire2:Play()
				CamShake(15, 50000)
			else
				Player.Character[Name.. " (Left)"].Handle.Fire.Volume = math.random(8, 12) / 10
				Player.Character[Name.. " (Left)"].Handle.Fire.Pitch = math.random(25, 35) / 20
				Player.Character[Name.. " (Left)"].Handle.Fire:Play()
				CamShake(15, 50000)
			end
		end
		if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") ~= nil then
			if silenced == false then
				coroutine.resume(coroutine.create(function() Player.Character[Name.. " (Left)"].Muzzle.Smoke.Enabled = true Player.Character[Name.. " (Left)"].Muzzle.Fire.Enabled = true wait(0.1) Player.Character[Name.. " (Left)"].Muzzle.Smoke.Enabled = false Player.Character[Name.. " (Left)"].Muzzle.Fire.Enabled = false end))
			else end
		end
		for i = 0, 10, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.72, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), math.rad(5))
					wait()
				else return false end
			else return false end
		end
		makeShell(Player.Character[Name.. " (Left)"]:FindFirstChild("ShellOut"))		
		if magazine.Value ~= 0 then
			wait()
		elseif magazine.Value == 0 then
			Player.Character[Name].Handle.Lock.Pitch = 3
			Player.Character[Name].Handle.Lock:Play()	
		end
		for i = 10, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 =  CFrame.new(0.72, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(5), math.rad(5))
					wait()
				else return false end
			else return false end
		end
	end
	if format == "silence" then
		Player.Character[Name].Handle.Jam:Play()
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.6, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			else return false end
		else return false end		
		for i = 0, 10, 1.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.4 - (i / 25), 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
					wait()
				end
			end
		end
		for i = 10, 0, -1.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.4 - (i / 25), 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
					wait()
				end
			end
		end
		playAnimation("hold")
		return true
	end	
	if format == "attachment" then
		Player.Character[Name].Handle.Switch:Play()
		for i = 0, 10, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 - (i / 25), 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 - i), math.rad(-90))
					wait()
				end
			end
		end
		for i = 10, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 - (i / 25), 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 - i), math.rad(-90))
					wait()
				end
			end
		end
	end	
	return true
end


function CamShake(time, freq)
	coroutine.resume(coroutine.create(function()
		local cam = game:GetService("Workspace").CurrentCamera
		local time = 10
		local seed = Vector3.new(math.random(100, 200) / freq, math.random(100, 200) / freq, 0)
		if math.random(1, 2) == 1 then seed = Vector3.new(-seed.x, seed.y, 0) end
		if math.random(1, 2) == 1 then seed = Vector3.new(seed.x, -seed.y, 0) end
		cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(seed.x * time, seed.y * time, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
		for i = 1, time do
			cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(-seed.x, -seed.y, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
			wait()
		end
	end))
end


function makeShell(part)
	if part == nil then return false end
	local casing = Instance.new("Part")
	casing.Name = "Shell"
	casing.formFactor = "Custom"
	casing.Size = Vector3.new(0.2, 0.26, 0.2)
	casing.CFrame = CFrame.new(part.Position) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
	casing.BrickColor = BrickColor.new("New Yeller")
	local mesh = Instance.new("CylinderMesh")
	mesh.Scale = Vector3.new(0.4, 1, 0.4)
	mesh.Parent = casing
	casing.Parent = game:GetService("Workspace")
	casing:BreakJoints()
	casing.Velocity = (part.CFrame.lookVector * 50) + Vector3.new(0, 10, 0)
	coroutine.resume(coroutine.create(function() wait(4.5) for i = 0, 1, 0.1 do casing.Transparency = i wait() end casing:Remove() end))
end


function Weld(x, y)
	local weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType1"
	tag.Value = Name
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType2"
	tag.Value = "shot"
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType1")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType2")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


function fire(startPoint, endPoint, hit)
	local trail = Instance.new("Part")
	trail.Name = "Bullet Trail"
	trail.BrickColor = BrickColor.new("Dark stone grey")
	trail.TopSurface = 0
	trail.BottomSurface = 0
	trail.formFactor = 0
	trail.Size = Vector3.new(1, 1, 1)
	trail.Transparency = 0.5
	trail.Anchored = true
	trail.CanCollide = false
	trail.CFrame = CFrame.new((startPoint + endPoint) / 2, endPoint)
	trail.Parent = game:GetService("Workspace")
	local mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Scale = Vector3.new(0.1, 0.1, (startPoint - endPoint).magnitude)
	mesh.Parent = trail
	coroutine.resume(coroutine.create(function(part) for i = 1, 10 do part.Mesh.Scale = Vector3.new(part.Mesh.Scale.x - 0.01, part.Mesh.Scale.y - 0.01, part.Mesh.Scale.z) wait() end part:Remove() end), trail)
	if hit ~= nil then
		if hit.Parent == nil then return end
		if hit.Parent.ClassName == "Hat" then
			if hit.Parent.Parent.Humanoid ~= nil then
				hit.Parent.Parent.Humanoid:TakeDamage(damage * 5)
			end
		end		
		if hit.Parent:FindFirstChild("Humanoid") ~= nil then
			tagHumanoid(hit.Parent.Humanoid)
			if hit.Name == "Head" then
				hit.Parent.Humanoid:TakeDamage(damage * 10)
			elseif hit.Name == "Torso" then
				hit.Parent.Humanoid:TakeDamage(damage * 2)
			elseif hit.Name == "Left Leg" then
				hit.Parent.Humanoid:TakeDamage(damage)	
				hit.Parent.Humanoid.Sit = true	
			elseif hit.Name == "Right Leg" then
				hit.Parent.Humanoid:TakeDamage(damage)	
				hit.Parent.Humanoid.Sit = true								
			else
				hit.Parent.Humanoid:TakeDamage(damage)
			end
			if math.random(1, 10) == 1 then
				hit.Parent.Humanoid.Sit = true
			end
			delay(0.1, function() untagHumanoid(hit.Parent.Humanoid) end)
		end
		if hit.Anchored == false then
			hit.Velocity = hit.Velocity + ((endPoint - startPoint).unit * (damage * 2))
		end
	end
end


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down == false and canFire == true and (function() if dual == true then if Player.Character:FindFirstChild(Name.. " (Left)") ~= nil then return true else return false end else return true end end)() == true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
		if dual == true then if Player.Character[Name.. " (Left)"]:FindFirstChild("Handle") == nil then return end end
		if dual == true then if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end end
		mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
		Button1Down = true
		canFire = false
		canFire2 = true
		while canFire2 == true do
			local humanoid = Player.Character:FindFirstChild("Humanoid")
			if humanoid == nil then
				canFire2 = false
				break
			end
			if humanoid.Health <= 0 then
				canFire2 = false
				break
			end
			local fireLeft = false
			if automatic == false and burst == false then
				canFire2 = false
			elseif automatic == false and burst == true then
				if burstCount >= burstCountMax then
					canFire2 = false
					burstCount = 0
					break
				end
				burstCount = burstCount + 1
			elseif automatic == true and burst == false then
				fireLeft = true
			end
			if Jammed ~= true then
				if magazine.Value > 0 then
					magazine.Value = magazine.Value - 1
					updateGui()
					if silenced == true then
						CamShake(1, Spread)
					else end
					fire(Player.Character[Name].Muzzle.Position, mouse.Hit.p, mouse.Target)
					coroutine.resume(coroutine.create(function()
						if dual == true then
							playAnimation("rightFire")
						elseif dual == false then
							playAnimation("fire")
						end
					end))
				else
					Player.Character[Name].Handle.Empty:Play()
				end
			else 
				Player.Character[Name].Handle.Empty:Play()
			end					
			if fireLeft == true and dual == true and automatic == true then
				if magazine.Value > 0 then
					coroutine.resume(coroutine.create(function()
						wait(readyTime / 2)
						magazine.Value = magazine.Value - 1
						updateGui()
						fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
						if silenced == true then
							CamShake(1, Spread)
						else end
						playAnimation("leftFire")
					end))
				else
					coroutine.resume(coroutine.create(function()
						wait(readyTime / 2)
						Player.Character[Name].Handle.Empty:Play()
					end))
				end
			end
			wait(readyTime)
		end
		if magazine.Value ~= 0 then
			mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
		else end
		canFire = true
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	Button1Down = false
	canFire2 = false
	burstCount = 0
	while canFire == false do wait() end
	if dual == true and automatic == false then
		if Player.Character[Name.. " (Left)"]:FindFirstChild("Handle") == nil then return end
		if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
		mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
		canFire = false
		canFire2 = true
		while canFire2 == true do
			local humanoid = Player.Character:FindFirstChild("Humanoid")
			if humanoid == nil then
				canFire2 = false
				break
			end
			if humanoid.Health <= 0 then
				canFire2 = false
				break
			end
			if burst == false then
				canFire2 = false
			elseif burst == true then
				if burstCount >= burstCountMax then
					canFire2 = false
					burstCount = 0
					break
				end
				burstCount = burstCount + 1
			end
			if magazine.Value <= 0 then
				Player.Character[Name].Handle.Empty:Play()
			else
				coroutine.resume(coroutine.create(function()
					playAnimation("leftFire")
				end))
				magazine.Value = magazine.Value - 1
				updateGui()
				if silenced == true then
					CamShake(1, Spread)
				else end
				fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
			end
			wait(readyTime)
		end
		if magazine.Value ~= 0 then
			mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
		else end
		canFire = true
	end
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and Button1Down == false and canFire == true then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			if dual == true then onKeyDown("t", mouse) end
			onDeselected(mouse)
			removeParts("RightHolster")
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
	if key == "e" and Button1Down == false and canFire == true and canSilence == true then
		if silenced then
			silenced = false
			Player.Character[Name].Handle.Lock.Pitch = 5
			Player.Character[Name].Handle.Lock:Play()
			if Player.Character:FindFirstChild(Name) == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle 2") == nil then return end
			Player.Character[Name].Muzzle.Transparency = 1
			Player.Character[Name].Silencer1.Transparency = 1			
			Player.Character[Name].Muzzle.Name = "Silencer"
			Player.Character[Name]["Muzzle 2"].Name = "Muzzle"
			if dual == true then
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle 2") == nil then return end
				Player.Character[Name.. " (Left)"].Muzzle.Transparency = 1
				Player.Character[Name.. " (Left)"].Silencer1.Transparency = 1					
				Player.Character[Name.. " (Left)"].Muzzle.Name = "Silencer"
				Player.Character[Name.. " (Left)"]["Muzzle 2"].Name = "Muzzle"
			end
		else		
			silenced = true
			Player.Character[Name].Handle.Lock.Pitch = 5
			Player.Character[Name].Handle.Lock:Play()			
			if Player.Character:FindFirstChild(Name) == nil then return end
			if Player.Character[Name]:FindFirstChild("Silencer") == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
			Player.Character[Name].Silencer.Transparency = 0
			Player.Character[Name].Silencer1.Transparency = 0					
			Player.Character[Name].Muzzle.Name = "Muzzle 2"
			Player.Character[Name].Silencer.Name = "Muzzle"
			if dual == true then
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Silencer") == nil then return end
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
				Player.Character[Name.. " (Left)"].Silencer.Transparency = 0
				Player.Character[Name.. " (Left)"].Silencer1.Transparency = 0						
				Player.Character[Name.. " (Left)"].Muzzle.Name = "Muzzle 2"
				Player.Character[Name.. " (Left)"].Silencer.Name = "Muzzle"
			end
		end
	end
	if key == "r" and Button1Down == false and canFire == true then
		if ammo.Value > 0 and magazine.Value ~= magazineMax.Value + Chamber then
			canFire = false
			burstCount = 0
			mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
			if magazine.Value > 0 then magazine.Value = Chamber end
			updateGui()
			if dual == true then
				playAnimation("reloadDual")
			elseif dual == false then
				playAnimation("reload")
			end
			if ammo.Value - magazineMax.Value < 0 then
				magazine.Value = ammo.Value
				ammo.Value = 0
			elseif ammo.Value - magazineMax.Value >= 0 then
				ammo.Value = ammo.Value - magazineMax.Value
				magazine.Value = magazine.Value + MagSize
			end
			updateGui()
			mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
			canFire = true
		end
	end
	if key == "t" and Button1Down == false and canFire == true and canDual == true then
		canFire = false
		if dual == false then
			local weapon = nil
			for _, p in pairs(Player.Backpack:GetChildren()) do
				if p.Name == Name and p ~= script.Parent then weapon = p break end
			end
			if weapon ~= nil then
				dual = true
				Chamber = 2
				MagSize = MagSize * 2
				weapon.Name = "Dual"
				weapon.Parent = script
				removeParts("RightHand")
				makeParts("RightHand")
				removeParts("RightHolster")
				makeParts("LeftHolster")
				playAnimation("leftEquip")
				removeParts("LeftHolster")
				makeParts("LeftHand")
				magazineMax.Value = math.ceil(magazineMax.Value * 2)
				ammoMax.Value = math.ceil(ammoMax.Value * 2)
				magazine.Value = magazine.Value + weapon.Magazine.Value
				ammo.Value = ammo.Value + weapon.Ammo.Value
				updateGui()
			end
		elseif dual == true then
			local weapon = script:FindFirstChild("Dual")
			if weapon ~= nil then
				dual = false
				Holstered = true
				Chamber = 1
				MagSize = MagSize * 0.5
				weapon.Name = Name
				weapon.Parent = Player.Backpack
				removeParts("RightHand")
				makeParts("RightHand")
				playAnimation("leftUnequip")
				removeParts("LeftHand")
				makeParts("RightHolster")
				playAnimation("hold")
				weapon.Magazine.Value = math.floor(magazine.Value / 2)
				weapon.Ammo.Value = math.floor(ammo.Value / 2)
				magazineMax.Value = math.ceil(magazineMax.Value / 2)
				ammoMax.Value = math.ceil(ammoMax.Value / 2)
				magazine.Value = math.ceil(magazine.Value / 2)
				ammo.Value = math.ceil(ammo.Value / 2)
				updateGui()
			end
		end
		canFire = true
	end
	if key == "y" and canZoom == true then
		if zoom == false then
			zoom = true
			local pos = mouse.Hit.p
			local target = mouse.Target
			local cam = game:GetService("Workspace").CurrentCamera
			focus = Instance.new("Part", workspace)
			focus.Anchored = true
			focus.CanCollide = false
			focus.Transparency = 1
			focus.TopSurface = 0
			focus.BottomSurface = 0
			focus.formFactor = "Plate"
			focus.Size = Vector3.new(0, 0, 0)
			focus.CFrame = CFrame.new(pos) * (CFrame.new(Player.Character.Torso.CFrame.p, pos) - CFrame.new(Player.Character.Torso.CFrame.p, pos).p)
			cam.CameraSubject = focus
			cam.CameraType = "Attach"
			while zoom == true and selected == true do
				local set = false
				if target ~= nil then
					if target.Parent ~= nil then
						if target.Anchored == false then
							focus.CFrame = CFrame.new(target.CFrame.p) * (CFrame.new(Player.Character.Torso.CFrame.p, target.CFrame.p) - CFrame.new(Player.Character.Torso.CFrame.p, target.CFrame.p).p)
							set = true
						end
					end
				end
				if set == false then
					focus.CFrame = CFrame.new(pos) * (CFrame.new(Player.Character.Torso.CFrame.p, pos) - CFrame.new(Player.Character.Torso.CFrame.p, pos).p)
				end
				wait()
			end
			if focus ~= nil then focus:Remove() focus = nil end
			local cam = game:GetService("Workspace").CurrentCamera
			cam.CameraSubject = Player.Character:FindFirstChild("Humanoid")
			cam.CameraType = "Custom"
		else
			zoom = false
		end
	end
	if key == "u" and Button1Down == false and canFire == true then
		if automatic == false and burst == false then
			if switchToBurst == true then
				burst = true
				local m = Instance.new("Message", Player)
				m.Text = "Burst"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			elseif switchToAutomatic == true then
				automatic = true
				local m = Instance.new("Message", Player)
				m.Text = "Automatic"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			end
		elseif automatic == false and burst == true then
			if switchToAutomatic == true then
				automatic = true
				burst = false
				local m = Instance.new("Message", Player)
				m.Text = "Automatic"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			elseif switchToSingle == true then
				burst = false
				local m = Instance.new("Message", Player)
				m.Text = "Single"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			end
		elseif automatic == true and burst == false then
			if switchToSingle == true then
				automatic = false
				local m = Instance.new("Message", Player)
				m.Text = "Single"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			elseif switchToBurst == true then
				automatic = false
				burst = true
				local m = Instance.new("Message", Player)
				m.Text = "Burst"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			end
		end
	end
	if key == "c" and Button1Down == false and canFire == true and dual == false then
		canFire = false
		burstCount = 0
		mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
		if magazine.Value ~= 0 then magazine.Value = magazine.Value - 1 end
		updateGui()
		playAnimation("charge")
		mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
		canFire = true
	end	
	if key == "f" and Button1Down == false and canFire == true and Attachment == true and dual == false then
		if Mode == 0 and Mode ~= 1 then
			Player.Character[Name].Handle.Switch:Play()
			Player.Character[Name].Light.Transparency = 0.6
			Mode = 1
		elseif Mode == 1 and Mode ~= 0 then
			Player.Character[Name].Handle.Switch:Play()		
			Player.Character[Name].Light.Transparency = 1
			Mode = 0
		end
	end	
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	Holstered = false	
	canFire = false
	mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	updateGui()
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	DisableLimb(2, Player.Character)
	ForceAngle(1, 0, Player.Character)
	ForceAngle(2, 0, Player.Character)
	if dual == true then
		coroutine.resume(coroutine.create(function() playAnimation("leftEquip") end))
		playAnimation("rightEquip")
		removeParts("LeftHolster")
		makeParts("LeftHand")
	else
		playAnimation("equip")
	end
	removeParts("RightHolster")
	makeParts("RightHand")
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
	canFire = true
end


function onDeselected(mouse)
	if selected == false then return end
	Button1Down = false
	while canFire == false do
		wait()
	end
	selected = false
	Holstered = true
	if dual == true then
		if math.random(1, 2) == 1 then
			coroutine.resume(coroutine.create(function() playAnimation("leftUnequip") end))
			wait(math.random(1, 10) / 10)
			playAnimation("rightUnequip")
		else
			coroutine.resume(coroutine.create(function() playAnimation("rightUnequip") end))
			wait(math.random(1, 10) / 10)
			playAnimation("leftUnequip")
		end
		removeParts("LeftHand")
		makeParts("LeftHolster")
	else
		playAnimation("unequip")
	end
	removeParts("RightHand")
	makeParts("RightHolster")
	ForceAngle(1, 0, Player.Character)
	ForceAngle(2, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end
	if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
		if Player.Character.WeaponActivated.Value == script.Parent then
			Player.Character.WeaponActivated:Remove()
		end
	end
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	if script.Parent:FindFirstChild("MagazineMax") == nil then
		magazineMax = Instance.new("NumberValue")
		magazineMax.Name = "MagazineMax"
		magazineMax.Value = 50
		magazineMax.Parent = script.Parent
	else
		magazineMax = script.Parent.MagazineMax
	end
	if script.Parent:FindFirstChild("Magazine") == nil then
		magazine = Instance.new("NumberValue")
		magazine.Name = "Magazine"
		magazine.Value = 0
		magazine.Parent = script.Parent
	else
		magazine = script.Parent.Magazine
	end
	if script.Parent:FindFirstChild("AmmoMax") == nil then
		ammoMax = Instance.new("NumberValue")
		ammoMax.Name = "AmmoMax"
		ammoMax.Value = 500000
		ammoMax.Parent = script.Parent
	else
		ammoMax = script.Parent.AmmoMax
	end
	if script.Parent:FindFirstChild("Ammo") == nil then
		ammo = Instance.new("NumberValue")
		ammo.Name = "Ammo"
		ammo.Value = script.Parent.AmmoMax.Value
		ammo.Parent = script.Parent
	else
		ammo = script.Parent.Ammo
	end
	Player = script.Parent.Parent.Parent
	makeParts("RightHolster")
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end

