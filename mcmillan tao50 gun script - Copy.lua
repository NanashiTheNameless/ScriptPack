--[[
An M85 .50 Browning Machine Gun (BMG) Telescopic enhanced Long range Firearm/Rifle.
Goes for 20 Thousand, Parent gun is the Remmington 700,
Which this is a more powerful enhanced gun.
--]]


if script == nil then return end


Player = game:GetService("Players").LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
Name = "McMillan Tac-50"
MC = BrickColor.new("Really black")
DC = BrickColor.new("Dark stone grey")
GC = BrickColor.new("Really black")
BC = BrickColor.new("Really black")
NormalMouse = "http://www.roblox.com/asset/?id=49912389"
ScopeMouse = "http://www.roblox.com/asset/?id=71735463"
CurrentMouse = NormalMouse
GM = "SmoothPlastic"
Raycast = true
Ready = true
AimSpeed = 5
Bipod = true
Chambered = false
LastShot = false
Empty = true
MR = 0
GR = 0
selected = false
canDual = false
dual = false
Button1Down = false
damage = 70
canFire = true
canFire2 = false
readyTime = 1.8
automatic = false
burst = false
burstCount = 0
burstCountMax = 2
canSilence = true
silenced = false
canZoom = true
zoom = false
switchToSingle = false
switchToBurst = false
switchToAutomatic = false


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
label.Text = "    .50 BMG:"
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
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.formFactor = "Symmetric"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = GC
	pm.Reflectance = GR
	pm.CanCollide = false
	pm.Transparency = 1
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 1.1, 0.19)
	m.Offset = Vector3.new(0, -0.25, 0.07)
	m.Parent = pm
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm
		if format == "RightHand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 1.15, 0.7)
			w.C1 = CFrame.new()
		elseif format == "RightHolster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(0.65, -0.85, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(32), math.rad(-90), 0)
			w.C1 = CFrame.new()
			model.Name = Name.. " (Holstered)"
		end
		w.Parent = pm
		model.Parent = Player.Character
	end
	local s = Instance.new("Sound")
	s.Name = "Fire"
	s.SoundId = "http://www.roblox.com/asset/?id=2760979"
	s.Volume = 1
	s.Pitch = 1.2
	s.Looped = false
	s.Parent = pm	
	local s = Instance.new("Sound")
	s.Name = "Fire2"
	s.SoundId = "http://www.roblox.com/asset/?id=2760979"
	s.Volume = 1
	s.Pitch = 1.4
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Fire3"
	s.SoundId = "http://www.roblox.com/asset/?id=2760979"
	s.Volume = 1
	s.Pitch = 0.7
	s.Looped = false
	s.Parent = pm	
	local s = Instance.new("Sound")
	s.Name = "Equip"
	s.SoundId = "http://www.roblox.com/asset/?id=10209881"
	s.Volume = 1
	s.Pitch = 0.6
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Release"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209813"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Reload"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209845"
	s.Volume = 1
	s.Pitch = 8
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Action2"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209894"
	s.Volume = 0.5
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Action1"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209869"
	s.Volume = 0.5
	s.Pitch = 1.5
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Action3"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209845"
	s.Volume = 0.6
	s.Pitch = 2.5
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
	s.Name = "Switch"
	s.SoundId = "http://www.roblox.com/asset/?id=2697295"
	s.Volume = 1
	s.Pitch = 10
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Bullet"
	s.SoundId = "http://www.roblox.com/Asset/?id=18426149"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Jam"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209636"
	s.Volume = 1
	s.Pitch = 2
	s.Looped = false
	s.Parent = pm				
	local p = Instance.new("Part")
	p.Name = "ShellOut"
	p.formFactor = "Custom"
	p.Size = Vector3.new(0.2, 0.2, 0.2)
	p.Transparency = 1
	p.Locked = true
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.06, 0.62, -0.06) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	w.C1 = CFrame.new()
	w.Parent = p--]]
	local pmg = Instance.new("Part")
	pmg.Name = "Magazine"
	pmg.formFactor = "Symmetric"
	pmg.Size = Vector3.new(1, 1, 1)
	pmg.BrickColor = DC
	pmg.CanCollide = false
	pmg.Locked = true
	pmg.TopSurface = 0
	pmg.BottomSurface = 0
	pmg.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.25, 0.44, 0.4)
	m.Parent = pmg
	local w = Instance.new("Weld")
	w.Part0 = pmg
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.3, -0.12)
	w.C1 = CFrame.new()
	w.Parent = pmg
	local p = Instance.new("Part")
	p.Name = "MagazineGrip"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.26, 0.45, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pmg
	w.C0 = CFrame.new(0, 0, -0.18)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "MagazineShell"
	p.formFactor = "Custom"
	p.Size = Vector3.new(0.2, 0.28, 0.2)
	p.BrickColor = BrickColor.new("New Yeller")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.4, 1, 0.4)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pmg
	w.C0 = CFrame.new(0, 0, 0.195)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "TriggerGuard"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "FileMesh"
	m.MeshId = "http://www.roblox.com/asset/?id=3270017"
	m.Scale = Vector3.new(0.34, 0.34, 0.8)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.26, -0.1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	w.C1 = CFrame.new()
	w.Parent = p			
	local p = Instance.new("Part")
	p.Name = "Trigger"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1, 0.1, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.1, -0.28)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "BoltHousing" --------------
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.2, 0.2, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.55, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "BoltHousing" --------------
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.2, 0.3, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p	
	local pb = Instance.new("Part")
	pb.Name = "Bolt"
	pb.formFactor = "Symmetric"
	pb.Size = Vector3.new(1, 1, 1)
	pb.BrickColor = BC
	pb.Reflectance = MR
	pb.Transparency = 0
	pb.CanCollide = false
	pb.Locked = true
	pb.TopSurface = 0
	pb.BottomSurface = 0
	pb.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.14, 0.26, 0.14)
	m.Parent = pb
	local w = Instance.new("Weld")
	w.Part0 = pb
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.2, 0.06)
	w.C1 = CFrame.new()
	w.Parent = pb
	local p = Instance.new("Part")
	p.Name = "Bolt 1"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.16, 0.6, 0.16)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pb
	w.C0 = CFrame.new(0, 0.39, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Bolt 2"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.1602, 0.24, 0.1602)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pb
	w.C0 = CFrame.new(0, 0.05, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local pbb = Instance.new("Part")
	pbb.Name = "BoltKnob"
	pbb.formFactor = "Symmetric"
	pbb.Size = Vector3.new(1, 1, 1)
	pbb.BrickColor = DC
	pbb.Reflectance = MR
	pbb.CanCollide = false
	pbb.Locked = true
	pbb.TopSurface = 0
	pbb.BottomSurface = 0
	pbb.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1, 0.08, 0.08)
	m.Parent = pbb
	local w = Instance.new("Weld")
	w.Part0 = pbb
	w.Part1 = pb
	w.C0 = CFrame.new(-0.15, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(30), 0)
	w.C1 = CFrame.new()
	w.Parent = pbb	
	local p = Instance.new("Part")
	p.Name = "Bolt 3"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Sphere"
	m.Scale = Vector3.new(0.16, 0.16, 0.16)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pbb
	w.C0 = CFrame.new(-0.1, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Barrel"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.18, 2.4, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.8, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	if silenced == false then
		p.Name = "Muzzle"
	else 
		p.Name = "Muzzle 2"
	end
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.181, 0.2, 0.181)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 3, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local s = Instance.new("Smoke")
	s.Enabled = false
	s.Name = "Smoke"
	s.RiseVelocity = -5
	s.Opacity = 0.5
	s.Color = Color3.new(75 / 225, 75 / 225, 75 / 225)
	s.Size = 2.4
	s.Parent = p
	local f = Instance.new("Fire")
	f.Enabled = false
	f.Name = "Fire"
	f.Heat = -20
	f.Size = 3.6
	f.Parent = p
	local p = Instance.new("Part")
	p.Name = "MuzzleHole"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.12, 0.2, 0.12)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 3.004, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	if silenced == false then
		p.Name = "Silencer"
		p.Transparency = 1
	else	
		p.Name = "Muzzle"
		p.Transparency = 0
	end
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
 	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.26, 1, 0.26)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 3.1, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Silencer1"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
 	p.CanCollide = false
	if silenced == false then
		p.Transparency = 1
	else	
		p.Transparency = 0
	end	
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.261, 0.6, 0.261)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 3.1, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Silencer2"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
 	p.CanCollide = false
	if silenced == false then
		p.Transparency = 1
	else	
		p.Transparency = 0
	end		
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.12, 1.002, 0.12)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 3.1, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Body"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Material = GM
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.3, 2.1, 0.25)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.83, -0.06)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Body"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Material = GM
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.29, 2.1, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.82, -0.16) * CFrame.fromEulerAnglesXYZ(math.rad(-2), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p		
	local pg = Instance.new("Part")
	pg.Name = "Stock Grip"
	pg.formFactor = "Symmetric"
	pg.Size = Vector3.new(1, 1, 1)
	pg.BrickColor = GC
	pg.Material = GM
	pg.Material = GM
	pg.CanCollide = false
	pg.Locked = true
	pg.TopSurface = 0
	pg.BottomSurface = 0
	pg.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.3, 0.3, 0.6)
	m.Parent = pg
	local w = Instance.new("Weld")
	w.Part0 = pg
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, -0.38) * CFrame.fromEulerAnglesXYZ(math.rad(55), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pg
	local p = Instance.new("Part")
	p.Name = "Stock Grip"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Material = GM
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.3, 0.35, 0.3)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pg
	w.C0 = CFrame.new(0, 0.2, -0.19) * CFrame.fromEulerAnglesXYZ(math.rad(40), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local psb = Instance.new("Part")
	psb.Name = "Stock Rear"
	psb.CanCollide = false
	psb.formFactor = "Symmetric"
	psb.Size = Vector3.new(1, 1, 1)
	psb.BrickColor = GC
	psb.Material = GM
	psb.Locked = true
	psb.TopSurface = 0
	psb.BottomSurface = 0
	psb.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.3, 1, 0.52)
	m.Parent = psb
	local w = Instance.new("Weld")
	w.Part0 = psb
	w.Part1 = pm
	w.C0 = CFrame.new(0, -1, -0.22) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = psb
	local p = Instance.new("Part")
	p.Name = "Stock Cover"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.31, 0.64, 0.53)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, -0.02, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Cover"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.38, 0.18, 0.26)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, -0.08, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Cover"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.38, 0.18, 0.26)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, 0.04, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Cover"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.38, 0.18, 0.26)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, 0.16, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Cover"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.38, 0.18, 0.26)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, -0.20, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	--[[local p = Instance.new("Part")
	p.Name = "Stock Cover Shell"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("New Yeller")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.37, 0.17, 0.42)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, -0.08, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Cover Shell"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("New Yeller")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.37, 0.17, 0.42)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, 0.04, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Cover Shell"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("New Yeller")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.37, 0.17, 0.42)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, -0.20, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Stock Cover Shell"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("New Yeller")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.37, 0.17, 0.42)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, 0.16, 0)
	w.C1 = CFrame.new()
	w.Parent = p--]]	
	local p = Instance.new("Part")
	p.Name = "StockButt"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.31, 0.2, 0.53)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = psb
	w.C0 = CFrame.new(0, -0.45, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local ps = Instance.new("Part") -- Scope
	ps.Name = "Scope Center 1"
	ps.CanCollide = false
	ps.formFactor = "Symmetric"
	ps.Size = Vector3.new(1, 1, 1)
	ps.BrickColor = DC
	ps.Reflectance = MR
	ps.Locked = true
	ps.TopSurface = 0
	ps.BottomSurface = 0
	ps.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.2, 0.8, 0.2)
	m.Parent = ps
	local w = Instance.new("Weld")
	w.Part0 = ps
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.285, 0.32)
	w.C1 = CFrame.new()
	w.Parent = ps	
	local p = Instance.new("Part")
	p.Name = "Scope Knob"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.18, 0.26, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Scope Knob2"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.16, 0.26, 0.16)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p		
	local p = Instance.new("Part")
	p.Name = "Scope Base"
	p.formFactor = "Symmetric"
	p.CanCollide = false
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1, 0.14, 0.4)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, -0.22, -0.18)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Scope Base"
	p.formFactor = "Symmetric"
	p.CanCollide = false
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1, 0.14, 0.4)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, 0.24, -0.18)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Scope Back"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.24, 0.375, 0.24)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, -0.5, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Scope Front"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.28, 0.6, 0.28)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, 0.66, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Scope Window F"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("White")
	p.Reflectance = 0.3
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.27, 0.6, 0.27)
	m.Offset = Vector3.new(0, -0.003 ,0)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, 0.66, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Scope Window B" 
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("White")
	p.Reflectance = 0.3
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.23, 0.375, 0.23)
	m.Offset = Vector3.new(0, 0.003 ,0)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, -0.5, 0)
	w.C1 = CFrame.new()
	w.Parent = p--]]
	if Bipod == true then
		local pbi = Instance.new("Part") ---Bipod
		pbi.Name = "BipodM" --------------
		pbi.CanCollide = false
		pbi.formFactor = "Symmetric"
		pbi.Size = Vector3.new(1, 1, 1)
		pbi.BrickColor = DC
		pbi.Reflectance = MR
		pbi.Locked = true
		pbi.TopSurface = 0
		pbi.BottomSurface = 0
		pbi.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.17, 0.25, 0.2)
		m.Offset = Vector3.new(0, 0, 0.35)
		m.Parent = pbi
		local w = Instance.new("Weld")
		w.Part0 = pbi
		w.Part1 = pm
		w.C0 = CFrame.new(0, 1.7, 0.08)
		w.C1 = CFrame.new()
		w.Parent = pbi
		local p = Instance.new("Part")
		p.Name = "BipodArm"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.CanCollide = false
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.15, 1, 0.15)
		m.Offset = Vector3.new(0.09, -0.4 ,0.4)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pbi
		w.C0 = CFrame.new()
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "BipodArm"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.CanCollide = false
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.15, 1, 0.15)
		m.Offset = Vector3.new(-0.09, -0.4 ,0.4)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pbi
		w.C0 = CFrame.new()
		w.C1 = CFrame.new()
		w.Parent = p--]]
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
		if Ready == true then
			Player.Character.Humanoid.WalkSpeed = AimSpeed
		else end
		EnableLimb(1, Player.Character)
		EnableLimb(2, Player.Character)
		DisableLimb(2, Player.Character)
		SetSpeed(2, 0.1, Player.Character)
		ForceAngle(2, 0, Player.Character)
		SetAngle(2, math.rad(-50), Player.Character)
		wait(0.25)
		if Player.Character:FindFirstChild(Name.. " (Holstered)") == nil then makeParts("RightHolster") end
		Player.Character[Name.. " (Holstered)"].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name.. " (Holstered)"].Handle
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(0.5, -0.25, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0)
		w.Parent = Player.Character[Name.. " (Holstered)"].Handle
		SetAngle(2, 0, Player.Character)
		wait(0.25)
		DisableLimb(1, Player.Character)
		ForceAngle(1, 0, Player.Character)
		delay(0.3, function() Player.Character[Name.. " (Holstered)"].Handle.Equip:Play() end)
		for i = 0, 1, 0.05 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					w.C0 = CFrame.new(0.5 - (i * (0.5 * 2)), -0.25 - (i * (-0.25 * 2)), -0.75 - (i * (-0.75 * 2))) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (i * 180)), 0)
					w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(50 - i * 25), 0, -math.rad(i * 15))
					wait()
				else return false end
			else return false end
		end
		return playAnimation("hold")
	end
	if format == "unequip" then
		if Ready == true then
			Player.Character.Humanoid.WalkSpeed = 16
		else end	
		Player.Character[Name].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name].Handle
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(0.5, -0.25, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0)
		w.Parent = Player.Character[Name].Handle
		for i = 1, 0, -0.05 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					w.C0 = CFrame.new(0.5 - (i * (0.5 * 2)), -0.25 - (i * (-0.25 * 2)), -0.75 - (i * (-0.75 * 2))) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (i * 180)), 0)
					w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(50 - i * 25), 0, -math.rad(i * 15))
					wait()
				else return false end
			else return false end
		end
		w.C0 = CFrame.new(0.5, -0.25, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0)
		ResetLimbCFrame(1, Player.Character)
		ResetLimbCFrame(2, Player.Character)
		EnableLimb(1, Player.Character)
		EnableLimb(2, Player.Character)
		DisableLimb(2, Player.Character)
		SetSpeed(2, 0.1, Player.Character)
		ForceAngle(2, 0, Player.Character)
		SetAngle(2, math.rad(-50), Player.Character)
		wait(0.25)
		SetAngle(2, 0, Player.Character)
		removeParts("RightHand")
		makeParts("RightHolster")
		wait(0.25)
		makeParts("RightHand")
		removeParts("RightHolster")
		return true
	end
	if format == "hold" then
		if Ready == false then
			for i = 0, 15, 5 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 - i), math.rad(-90))
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
						wait()
					else return false end
				else return false end
			end
		else
			for i = 15, 0, -5 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 - i), math.rad(-90))
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
						wait()
					else return false end
				else return false end
			end	
		end
	end
	if format == "reload" then
		coroutine.resume(coroutine.create(function()
			if Ready ~= false then
				for i = 0, 25, 5 do
					if Player.Character:FindFirstChild("Torso") ~= nil then
						if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
							Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
							Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
							wait()
						else return false end
					else return false end
				end
			else end
			for i = 25, 0, -5 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9 + ((25 - i) / 30), -0.35, 0.51 + ((25 - i) / 25)) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), math.rad((25 * 2) - (i * 2)))
						wait()
					else return false end
				else return false end
			end						
		end))
		Player.Character[Name].Handle.Release:Play()
		Player.Character[Name].Magazine.Transparency = 1
		Player.Character[Name].MagazineGrip.Transparency = 1
		Player.Character[Name].MagazineShell.Transparency = 1	
		Player.Character[Name].Magazine.Weld.C0 = CFrame.new(0, 0.3, -0.22) 	
		local Mag = Instance.new("Model")
		Mag.Name = "Spent Magazine"		
		local source = Player.Character[Name]:FindFirstChild("Magazine")
		if source == nil then return end
		source = source:Clone()
		source.CanCollide = true
		source.Transparency = 0
		source.Parent = Mag
		coroutine.resume(coroutine.create(function() wait(4.5) for i = 0, 1, 0.1 do source.Transparency = i wait() end source:Remove() end))
		for _, Part in pairs(Player.Character[Name]:GetChildren()) do
			if Part.Name == "MagazineGrip" or Part.Name == "MagazineShell" then
				local new = Part:Clone()
				new.Parent = Mag
				if new.Name == "MagazineShell" then
					if Empty == true then
						new.Transparency = 1
					else 
						new.Transparency = 0
					end
				else
					new.Transparency = 0	
				end
				new.CanCollide = true
				local w = Instance.new("Weld", new)
				w.Part0 = w.Parent
				w.Part1 = source
				w.C0 = Part.Weld.C0
				w.C1 = Part.Weld.C1
				coroutine.resume(coroutine.create(function() wait(4.55) for i = 0, 1, 0.1 do new.Transparency = i wait() end new.Parent:Remove() end))
			else end
		end
		Mag.Parent = game.Workspace
		wait(0.2)
		magazineNew = Player.Character[Name].Magazine:Clone()
		magazineNew.Name = "New Magazine"
		magazineNew.Transparency = 0
		magazineNew.Parent = Player.Character[Name]
		local w = Instance.new("Weld")
		w.Part0 = magazineNew
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(0, 1.1, 0)
		w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		w.Parent = magazineNew
		wait(0.2)
		for i = 25, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 + ((i + 10) / 60), 1.2 - ((i + 10) / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - (i - 10)), math.rad(10 + -i * 3.5), math.rad(-90))
					wait()
				else return false end
			else return false end
		end
		Player.Character[Name].Magazine.Transparency = 0
		Player.Character[Name].MagazineGrip.Transparency = 0
		Player.Character[Name].MagazineShell.Transparency = 0
		Empty = false		
		Player.Character[Name]["New Magazine"]:Remove()
		Player.Character[Name].Handle.Jam:Play()
		wait(0.2)
		for i = 0, 10, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.3, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-100 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		wait(0.1)
		for i = 0, 8, 2 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 0.75, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90))
					wait()
				else return false end
			else return false end
		end
		Player.Character[Name].Handle.Reload:Play()	
		Player.Character[Name].Magazine.Weld.C0 = CFrame.new(0, 0.3, -0.12) 					
		for i = 8, 0, -2 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 0.75, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90))
					wait()
				else return false end
			else return false end
		end
		wait(0.1)
		for i = 10, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.3, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-100 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end		
		if Chambered ~= true then
			playAnimation("bolt")
			Chambered = true
		else
			playAnimation("hold")
			return true
		end
	end
	if format == "ready" then
		if Ready == true then
			for i = 0, 15, 5 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 - i), math.rad(-90))
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
						wait()
					else return false end
				else return false end
			end
		else
			for i = 15, 0, -5 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 - i), math.rad(-90))
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
						wait()
					else return false end
				else return false end
			end	
		end
	end
	if format == "bolt" then
		Player.Character[Name].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name].Handle
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(-0.85, -0.3, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(15), math.rad(90), 0)
		w.C1 = CFrame.new(0, 0.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(40), 0, 0)
		w.Parent = Player.Character[Name].Handle
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.4, 0.9, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-10), math.rad(-90))
			else return false end
		else return false end
		wait(0.2)
		Player.Character[Name].Handle.Action1:Play()
		for i = 0, 1, 0.25 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1.2, 0, 0 + i) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end	
		Player.Character[Name].BoltKnob.Weld.C0 = CFrame.new(-0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-15), 0)			
		wait(0.08)
		Player.Character[Name].Handle.Action2:Play()		
		for i = 0, 1, 0.25 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1.2, 0 - (i / 1.5), 0.9) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		Player.Character[Name].Handle.Action3:Play()		
		Player.Character[Name].Bolt.Weld.C0 = CFrame.new(0, -0.55, 0.06)
		if magazine.Value ~= 0 or LastShot == true then
			makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))
			if LastShot == true then LastShot = false end
		else end
		wait(0.08)
		for i = 1, 0, -0.25 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1.2, 0 - (i / 1.5), 0.9) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end	
		Player.Character[Name].Bolt.Weld.C0 = CFrame.new(0, -0.2, 0.06)							
		wait(0.1)
		removeParts("RightHand")
		makeParts("RightHand")
		playAnimation("hold")
		return true				
	end
	if format == "fire" then
		if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
			if silenced then
				Player.Character[Name].Handle.Fire2.Volume = math.random(3, 8) / 10
				Player.Character[Name].Handle.Fire2.Pitch = math.random(20, 25) / 10
				Player.Character[Name].Handle.Fire2:Play()
				CamShake(10, 2000)
			else
				Player.Character[Name].Handle.Fire.Volume = math.random(9, 10) / 10
				Player.Character[Name].Handle.Fire:Play()
				Player.Character[Name].Handle.Fire3:Play()				
				CamShake(10, 2000)
			end
		else return false end
		if Player.Character[Name]:FindFirstChild("Muzzle") ~= nil then
			if silenced == false then
				coroutine.resume(coroutine.create(function() Player.Character[Name].Muzzle.Smoke.Enabled = true Player.Character[Name].Muzzle.Fire.Enabled = true wait(0.1) Player.Character[Name].Muzzle.Smoke.Enabled = false Player.Character[Name].Muzzle.Fire.Enabled = false end))
			else end
		else return false end
		for i = 0, 15, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		for i = 15, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end	
		if magazine.Value == 0 then
			LastShot = true
			Empty = true
			Player.Character[Name].MagazineShell.Transparency = 1
			playAnimation("bolt")
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
	casing.Size = Vector3.new(0.2, 0.28, 0.2)
	casing.CFrame = CFrame.new(part.Position) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
	casing.BrickColor = BrickColor.new("New Yeller")
	local mesh = Instance.new("CylinderMesh")
	mesh.Scale = Vector3.new(0.4, 1, 0.4)
	mesh.Parent = casing
	local s = Instance.new("Sound")
	s.Name = "Ding"
	s.SoundId = "http://www.roblox.com/Asset/?id=13114759"
	s.Volume = 0.4
	s.Pitch = 2.5
	s.Looped = false
	s.Parent = casing		
	casing.Parent = game:GetService("Workspace")
	casing.Ding:Play()	
	casing:BreakJoints()
	casing.Velocity = (part.CFrame.lookVector * 65) + Vector3.new(0, 10, 0)
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
	local damage1 = damage
	if Raycast ~= false then
		if hit ~= nil then
			local Ray = Ray.new(startPoint, (endPoint - startPoint).unit*300)
			local Hit, Position = game.Workspace:FindPartOnRay(Ray, Player.Character)
			if Hit then 
				if Hit.Material == "Grass" then
					damage1 = damage1 / 6
				elseif Hit.Material == "DiamondPlate" then
					damage1 = damage1 / 12
				elseif Hit.Material == "Slate" then
					damage1 = 0
				elseif Hit.Material == "Plastic" then
					damage1 = damage1 / 8
				elseif Hit.Material == "Ice" then
					damage1 = damage1 / 15
				elseif Hit.Material == "Concrete" then
					damage1 = 0
				elseif Hit.Material == "CorrodedMetal" then
					damage1 = damage1 / 10
				elseif Hit.Material == "Foil" then
					damage1 = damage1 / 4
				else end
			end
			if Hit.Parent:FindFirstChild("Humanoid") then
				if Hit.Name == "Head" then
					Hit.Parent.Humanoid:TakeDamage(damage1 * 10)
					damage1 = damage1 / 2						
				elseif Hit.Name == "Torso" then
					Hit.Parent.Humanoid:TakeDamage(damage1 * 2)
					damage1 = damage1 / 2						
				elseif hit.Name == "Left Leg" then
					Hit.Parent.Humanoid:TakeDamage(damage1)
					damage1 = damage1 / 2						
					Hit.Parent.Humanoid.Sit = true	
				elseif hit.Name == "Right Leg" then
					Hit.Parent.Humanoid:TakeDamage(damage1)	
					damage1 = damage1 / 2						
					Hit.Parent.Humanoid.Sit = true											
				else
					Hit.Parent.Humanoid:TakeDamage(damage1)
					damage1 = damage1 / 2						
				end
			end
		else end
	else end
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
				hit.Parent.Humanoid:TakeDamage(damage1 * 10)
			elseif hit.Name == "Torso" then
				hit.Parent.Humanoid:TakeDamage(damage1 * 2)
			elseif hit.Name == "Left Leg" then
				hit.Parent.Humanoid:TakeDamage(damage1)	
				hit.Parent.Humanoid.Sit = true	
			elseif hit.Name == "Right Leg" then
				hit.Parent.Humanoid:TakeDamage(damage1)	
				hit.Parent.Humanoid.Sit = true								
			else
				hit.Parent.Humanoid:TakeDamage(damage1)
			end
			if math.random(1, 3) == 1 then
				hit.Parent.Humanoid.Sit = true
			end
			delay(0.1, function() untagHumanoid(hit.Parent.Humanoid) end)
		end
		if hit.Parent:FindFirstChild("VehicleHealth") ~= nil then
			hit.Parent.VehicleHealth.Value = hit.Parent.VehicleHealth.Value - (damage1 / 5)
		else end				
		if hit.Anchored == false then
			hit.Velocity = hit.Velocity + ((endPoint - startPoint).unit * (damage1 * 4))
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
		mouse.Icon = CurrentMouse
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
			if Ready == true and magazine.Value ~= 0 and Chambered ~= false then
				Chambered = false
				magazine.Value = magazine.Value - 1		
				updateGui()
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
			if fireLeft == true and dual == true and automatic == true then
				if magazine.Value > 0 then
					coroutine.resume(coroutine.create(function()
						wait(readyTime / 2)
						magazine.Value = magazine.Value - 1
						updateGui()
						fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
						playAnimation("leftFire")
					end))
				else
					coroutine.resume(coroutine.create(function()
						wait(readyTime / 2)
						Player.Character[Name].Handle.Empty:Play()
					end))
				end
			end
		end
		canFire = true
		mouse.Icon = CurrentMouse
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
		mouse.Icon = CurrentMouse
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
				fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
			end
			wait(readyTime)
		end
		mouse.Icon = CurrentMouse
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
			if Player.Character:FindFirstChild(Name) == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle 2") == nil then return end
			Player.Character[Name].Muzzle.Transparency = 1
			Player.Character[Name].Silencer1.Transparency = 1
			Player.Character[Name].Silencer2.Transparency = 1						
			Player.Character[Name].Muzzle.Name = "Silencer"
			Player.Character[Name]["Muzzle 2"].Name = "Muzzle"
			if dual == true then
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle 2") == nil then return end
				Player.Character[Name.. " (Left)"].Muzzle.Transparency = 1
				Player.Character[Name.. " (Left)"].Muzzle.Name = "Silencer"
				Player.Character[Name.. " (Left)"]["Muzzle 2"].Name = "Muzzle"
			end
		else
			silenced = true
			if Player.Character:FindFirstChild(Name) == nil then return end
			if Player.Character[Name]:FindFirstChild("Silencer") == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
			Player.Character[Name].Silencer.Transparency = 0
			Player.Character[Name].Silencer1.Transparency = 0
			Player.Character[Name].Silencer2.Transparency = 0									
			Player.Character[Name].Muzzle.Name = "Muzzle 2"
			Player.Character[Name].Silencer.Name = "Muzzle"
			if dual == true then
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Silencer") == nil then return end
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
				Player.Character[Name.. " (Left)"].Silencer.Transparency = 0
				Player.Character[Name.. " (Left)"].Muzzle.Name = "Muzzle 2"
				Player.Character[Name.. " (Left)"].Silencer.Name = "Muzzle"
			end
		end
	end
	if key == "r" and Button1Down == false and canFire == true then
		if zoom == true then
			onKeyDown("y", mouse)
		else end
		if ammo.Value > 0 and magazine.Value ~= magazineMax.Value then
			canFire = false
			burstCount = 0
			mouse.Icon = CurrentMouse
			if magazine.Value > 0 then magazine.Value = 0 end
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
				magazine.Value = magazine.Value + magazineMax.Value
			end
			updateGui()
			mouse.Icon = CurrentMouse
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
				weapon.Name = "Dual"
				weapon.Parent = script
				silenced = false
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
				weapon.Name = Name
				weapon.Parent = Player.Backpack
				silenced = false
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
			CurrentMouse = ScopeMouse
			mouse.Icon = CurrentMouse		
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
			CurrentMouse = NormalMouse
			mouse.Icon = CurrentMouse		
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
	if key == "c" and Button1Down == false and canFire == true and Chambered == false then
		if zoom == true then
			onKeyDown("y", mouse)
		else end
		if magazine.Value ~= 0 then
			canFire = false
			playAnimation("bolt")
			if magazine.Value ~= 0 then
				Chambered = true
			else 
				Chambered = false
			end			
			canFire = true
		end
	end	
	if key == "x" and canFire == true then
		canFire = false
		playAnimation("ready")
		if Ready == false then
			Player.Character.Humanoid.WalkSpeed = AimSpeed
			Ready = true
		else
			Player.Character.Humanoid.WalkSpeed = 16
			Ready = false
		end
		canFire = true
	end		
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	canFire = false
	mouse.Icon = CurrentMouse
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
	mouse.Icon = CurrentMouse
	canFire = true
end


function onDeselected(mouse)
	if selected == false then return end
	Button1Down = false
	while canFire == false do
		wait()
	end
	selected = false
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
		magazineMax.Value = 10
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
		ammoMax.Value = 50
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
