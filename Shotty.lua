if script == nil then return end



Player = game:GetService("Players"):FindFirstChild("rigletto")
Name = "870 MCS"
MC = BrickColor.new("Cool yellow")
DC = BrickColor.new("Black")
GC = BrickColor.new("Brown")
BC = BrickColor.new("Medium stone grey")
NormalMouse = "http://www.roblox.com/asset/?id=10722913"
ScopeMouse = "http://www.roblox.com/asset/?id=71735463"
CurrentMouse = NormalMouse
GM = "Plastic"
Spread = 90000
Pellets = 8 / 1
Raycast = false
melee = true
Ready = true
AimSpeed = 14
Chambered = false
LastShot = false
Empty = true
MR = 0.5
GR = 0
selected = false
canDual = false
dual = false
Button1Down = false
damage = 10
canFire = true
canFire2 = false
readyTime = 1.8
automatic = false
burst = false
burstCount = 0
burstCountMax = 2
canSilence = false
silenced = false
canZoom = false
zoom = false
switchToSingle = false
switchToBurst = false
switchToAutomatic = false


ammoGui = Instance.new("ScreenGui")
ammoGui.Name = Name
local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.Style = "RobloxRound"
frame.Size = UDim2.new(0, 165, 0, 60)
frame.Position = UDim2.new(0, 0, 1, -400)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = ammoGui
local label = Instance.new("TextLabel")
label.Name = "Weapon"
label.Text = "Weapon: " ..Name
label.TextColor3 = Color3.new(000)
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
label.TextColor3 = Color3.new(000)
label.Position = UDim2.new(0, 0, 0, 20)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Magazine"
label.Text = "0/0"
label.TextXAlignment = "Right"
label.TextColor3 = Color3.new(000)
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 20)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "AmmoPrefix"
label.Text = "    12GA 8/0 Buck:"
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
	local pm5 = Instance.new("Part")
	pm5.Name = "WeldPoint"
	pm5.formFactor = "Symmetric"
	pm5.Size = Vector3.new(1, 1, 1)
	pm5.CanCollide = false
	pm5.Transparency = 1
	pm5.Locked = true
	pm5.TopSurface = 0
	pm5.BottomSurface = 0
	pm5.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 1.1, 0.19)
	m.Offset = Vector3.new(0, -0.25, 0.07)
	m.Parent = pm5
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm5
		if format == "RightHand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 1.15, 0.7)
			w.C1 = CFrame.new()
		elseif format == "RightHolster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(0.65, -0.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(175), math.rad(-90), 0)
			w.C1 = CFrame.new()
			model.Name = Name.. " (Holstered)"
		end
		w.Parent = pm5
		model.Parent = Player.Character
	end
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.formFactor = "Symmetric"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = GC
	pm.Reflectance = GR
	pm.CanCollide = false
	pm.Transparency = 1
	pm.Locked = true
        pm.Material = "Wood"
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 1.1, 0.19)
	m.Offset = Vector3.new(0, -0.25, 0.07)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = pm5
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pm		
	local s = Instance.new("Sound")
	s.Name = "Fire"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209842" 
	s.Volume = 1
	s.Pitch = 0.6
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
	s.SoundId = "http://www.roblox.com/Asset/?id=10209636"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Reload2"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209869" 
	s.Volume = 0.4
	s.Pitch = 3
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
	s.Volume = 0
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
	local prm = Instance.new("Part")
	prm.Name = "Receiver Main"
	prm.formFactor = "Symmetric"
	prm.Size = Vector3.new(1, 1, 1)
	prm.BrickColor = BrickColor.new("Bright red")
	prm.Transparency = 1
	prm.CanCollide = false
	prm.Locked = true
	prm.TopSurface = 0
	prm.BottomSurface = 0
	prm.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.31, 1, 0.34)
	m.Parent = prm
	local w = Instance.new("Weld")
	w.Part0 = prm
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.28, -0.078)
	w.C1 = CFrame.new()
	w.Parent = prm	
	local p = Instance.new("Part")
	p.Name = "Rearsight"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.13, 0.13, 0.13)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 0.6, 0.14)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Frontsight"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.13, 0.13, 0.13)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 2.05, 0.14)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Rail"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.22, 0.65, 0.13)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 0, 0.135)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Receiver"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = 0.4
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.31, 0.5, 0.34)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, -0.25, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Receiver"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
        p.Reflectance = 0.4
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.31, 0.2, 0.34)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 0.4, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Receiver"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = 0.4
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.31, 1, 0.13)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 0, 0.11)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Receiver"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = 0.4
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.13, 1, 0.34)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0.09, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Receiver"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = 0.4
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.13, 1, 0.19)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(-0.09, 0, -0.075)
	w.C1 = CFrame.new()
	w.Parent = p				
	local p = Instance.new("Part")
	p.Name = "TriggerGuard"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "FileMesh"
	m.MeshId = "http://www.roblox.com/asset/?id=3270017"
	m.Scale = Vector3.new(0.28, 0.28, 0.8)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.26, -0.02, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	w.C1 = CFrame.new()
	w.Parent = p			
	local p = Instance.new("Part")
	p.Name = "Trigger"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
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
	w.C0 = CFrame.new(0, -0.02, -0.28)
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
	m.Scale = Vector3.new(0.28, 0.5, 0.225)
	m.Parent = pb
	local w = Instance.new("Weld")
	w.Part0 = pb
	w.Part1 = prm
	w.C0 = CFrame.new(0, 0.15, 0.02) -- -0.24 back
	w.C1 = CFrame.new()
	w.Parent = pb
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
	w.Part1 = pb
	w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	w.C1 = CFrame.new()
	w.Parent = p--]]	
	local p = Instance.new("Part")
	p.Name = "Grip"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Material = "Wood"
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.26, 0.8, 0.28)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pb
	w.C0 = CFrame.new(0, 1.1, -0.1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Grip1"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.2, 0.8, 0.14)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pb
	w.C0 = CFrame.new(0, 0.5, -0.028)
	w.C1 = CFrame.new()
	w.Parent = p							
	local p = Instance.new("Part")
	p.Name = "Shell"
	p.formFactor = "Custom"
	p.Size = Vector3.new(0.2, 0.32, 0.2)
	p.BrickColor = BrickColor.new("Bright red")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.8, 1, 0.8)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 0.2, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Tube"
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
	m.Scale = Vector3.new(0.16, 1.7, 0.16)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 1.28, -0.08)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Tube Cap"
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
	m.Scale = Vector3.new(0.18, 0.1, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 2.1, -0.08)
	w.C1 = CFrame.new()
	w.Parent = p		
	local p = Instance.new("Part")
	p.Name = "Barrel"
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
	m.Scale = Vector3.new(0.165, 1.6, 0.165)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 1.2, 0.08)
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
	p.BrickColor = MC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.165, 0.2, 0.165)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 2.05, 0.08)
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
	m.Scale = Vector3.new(0.14, 0.2, 0.14)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, 2.054, 0.08)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "StockConnect"
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
	m.Scale = Vector3.new(0.24, 0.3, 0.34)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = prm
	w.C0 = CFrame.new(0, -0.52, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Grip"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Material = "Wood"
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.24, 0.3, 0.7)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.2, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local pt = Instance.new("Part")
	pt.Name = "Stock"
	pt.CanCollide = false
	pt.formFactor = "Symmetric"
	pt.Size = Vector3.new(1, 1, 1)
	pt.BrickColor = GC
	pt.Material = "Wood"
	pt.Locked = true
	pt.TopSurface = 0
	pt.BottomSurface = 0
	pt.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.26, 1.2, 0.26)
	m.Parent = pt
	local w = Instance.new("Weld")
	w.Part0 = pt
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.86, -0) * CFrame.fromEulerAnglesXYZ(math.rad(-8), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pt
	local p = Instance.new("Part")
	p.Name = "StockAngle"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Material = "Wood"
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.26, 1.34, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pt
	w.C0 = CFrame.new(0, 0, -0.24) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "StockCenter"
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
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.2, 0.5, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pt
	w.C0 = CFrame.new(0, -0.26, 0) * CFrame.fromEulerAnglesXYZ(math.rad(270), 0, math.rad(180))
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "StockBack"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Material = "Wood"
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.26, 0.2, 0.6)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pt
	w.C0 = CFrame.new(0, -0.5, -0.24)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "AmmoDetect"
	p.Transparency = 1
	p.formFactor = "Custom"
	p.Size = Vector3.new(0.2, 0.2, 0.2)
	p.BrickColor = BrickColor.new("Black")
	p.Reflectance = 0
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	p.Touched:connect(function(hit) onTouched(hit, p, "Ammo") end)	
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Right Leg")
	w.C0 = CFrame.new(0, 0, 0.4)
	w.C1 = CFrame.new()
	w.Parent = p			
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


function onTouched(hit, source, format)
	if format == "Ammo" then
		if hit.Parent:FindFirstChild("Ammo") ~= nil then
			if melee == true then
				melee = false
				ammo.Value = ammoMax.Value
				updateGui()
				wait(4)
				melee = true
			else end
		else end
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
		coroutine.resume(coroutine.create(function()
			for i = 0, 1, 0.025 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, math.rad(67.5) * i)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 1.85 * i, 0)
					else return false end
				else return false end
				wait()
			end
		end))
		for i = 0, 1, 0.05 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, -0.25 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * i, 0, math.rad(-20) * i)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
				else return false end
			else return false end
			wait()
		end
		removeParts("RightHolster")
		makeParts("RightHand")
		for i = 0, 1, 0.05 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), -0.25 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), 0, math.rad(-20) * (1 - i)) * CFrame.new(1.25 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 0.75 * i, 0.1 * i)
				else return false end
			else return false end
			if Player.Character:FindFirstChild(Name) ~= nil then
				if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
					Player.Character[Name].Handle.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), math.rad(-90) * (1 - i), 0)
				else return false end
			else return false end
			wait()
		end
		makeParts("RightHolster")
		removeParts("RightHand")
		return playAnimation("hold")
	end
	if format == "unequip" then
		Player.Character.Humanoid.WalkSpeed = 16
		coroutine.resume(coroutine.create(function()
			for i = 1, 0, -0.025 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, math.rad(67.5) * i)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 1.85 * i, 0)
					else return false end
				else return false end
				wait()
			end
		end))
		for i = 1, 0, -0.05 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), -0.25 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), 0, math.rad(-20) * (1 - i)) * CFrame.new(1.25 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 0.75 * i, 0.1 * i)
				else return false end
			else return false end
			if Player.Character:FindFirstChild(Name) ~= nil then
				if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
					Player.Character[Name].Handle.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), math.rad(-90) * (1 - i), 0)
				else return false end
			else return false end
			wait()
		end
		makeParts("RightHolster")
		removeParts("RightHand")
		for i = 1, 0, -0.05 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, -0.25 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * i, 0, math.rad(-20) * i)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
				else return false end
			else return false end
			wait()
		end
		removeParts("RightHolster")
		makeParts("RightHand")
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
	if format == "holding" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
				wait()
			else return false end
		else return false end
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
	if format == "reload" then
		coroutine.wrap(function()
				for i = 0, 12, 6 do
					pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-i), math.rad(i * 2), 0) end)
					wait()
				end
				pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-12), math.rad(24), 0) end)
		end)()							
		coroutine.resume(coroutine.create(function()	
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
			for i = 10, 0, -5 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.3, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-100 - i), math.rad(-5), 0)
						wait()
					else return false end
				else return false end
			end	
		end))
		for i = 0, 8, 2 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 0.75, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90))
					wait()
				else return false end
			else return false end
		end
		coroutine.resume(coroutine.create(function()
			Player.Character[Name].Shell.Weld.C0 = CFrame.new(0, 0.02, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(-18), 0, 0)			
			Player.Character[Name].Handle.Reload2:Play()					
			Player.Character[Name].Handle.Reload:Play()		
			wait(0.1)
			Player.Character[Name].Shell.Weld.C0 = CFrame.new(0, 0.1, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0)	
			wait(0.1)
			Player.Character[Name].Shell.Weld.C0 = CFrame.new(0, 0.2, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(-5), 0, 0)	
			wait(0.1)
			Player.Character[Name].Shell.Weld.C0 = CFrame.new(0, 0.2, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0)				
		end))
		wait(0.1)
		coroutine.wrap(function()
				for i = 12, 0, -6 do
					pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-i), math.rad(i * 2), 0) end)
					wait()
				end
				pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) end)
		end)()	
		for i = 8, 0, -2 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 0.75, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90))
					wait()
				else return false end
			else return false end
		end
		if magazine.Value == 0 or Chambered ~= true then
			wait(0.2)
			playAnimation("bolt")
			Chambered = true
		else 
			if Ready ~= false then
				playAnimation("holding")
			else
				playAnimation("hold")	
			end
		end	
	end	
	if format == "bolt" then
		coroutine.wrap(function()
				for i = 0, 10, 5 do
					pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-i * 1.5), math.rad(i), 0) end)
					wait()
				end
				pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-15), math.rad(10), 0) end)
		end)()						
		coroutine.resume(coroutine.create(function()	
			for i = 0, 6, 3 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
						wait()
					else return false end
				else return false end
			end
		end))
		Player.Character[Name].Handle.Action1:Play()
		Player.Character[Name].Handle.Action2:Play()
		Player.Character[Name].Grip1.Transparency = 1				
		Player.Character[Name].Bolt.Weld.C0 = CFrame.new(0, -0.24, 0.02)
		if magazine.Value ~= 0 or LastShot == true then
			makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))
			if LastShot == true then LastShot = false end
		else end		
		for i = 0, 10, 1.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.4 - (i / 20), -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(280), 0, math.rad(-90))
					wait()
				end
			end
		end
		coroutine.wrap(function()
				for i = 10, 0, -5 do
					pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-i * 1.5), math.rad(i), 0) end)
					wait()
				end
				pcall(function() Player.Character[Name].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) end)
		end)()									
		coroutine.resume(coroutine.create(function() wait(0.1) Player.Character[Name].Bolt.Weld.C0 = CFrame.new(0, 0.15, 0.02) Player.Character[Name].Grip1.Transparency = 0 end))		
		for i = 10, 0, -1.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.4 - (i / 20), -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(280), 0, math.rad(-90))
					wait()
				end
			end
		end
		coroutine.resume(coroutine.create(function()
			for i = 6, 0, -3 do
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
						wait()
					else return false end
				else return false end
			end
		end))		
		wait(0.1)
		if Ready ~= false then
			playAnimation("holding")
		else
			playAnimation("hold")	
		end
		return true				
	end
	if format == "fire" then
		if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
			if silenced then
				Player.Character[Name].Handle.Fire.Volume = math.random(3, 8) / 10
				Player.Character[Name].Handle.Fire.Pitch = math.random(20, 25) / 10
				Player.Character[Name].Handle.Fire:Play()
				CamShake(10, 2000)
			else
				Player.Character[Name].Handle.Fire.Volume = math.random(9, 10) / 10
				Player.Character[Name].Handle.Fire:Play()
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
	casing.Size = Vector3.new(0.2, 0.32, 0.2)
	casing.CFrame = CFrame.new(part.Position) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
	casing.BrickColor = BrickColor.new("Bright red")
	local mesh = Instance.new("CylinderMesh")
	mesh.Scale = Vector3.new(0.8, 1, 0.8)
	mesh.Parent = casing
	casing.Parent = game:GetService("Workspace")
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
			hit.Parent.VehicleHealth.Value = hit.Parent.VehicleHealth.Value - (damage1 / 8)
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
				for i = 1, Pellets do
					fire(Player.Character[Name].Muzzle.Position, mouse.Hit.p, mouse.Target)
					CamShake(1, Spread)
				end
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
		if ammo.Value > 0 and magazine.Value ~= magazineMax.Value + 1 then
			canFire = false
			burstCount = 0
			if dual == true then
				playAnimation("reloadDual")
			elseif dual == false then
				playAnimation("reload")
			end
			ammo.Value = ammo.Value - 1
			magazine.Value = magazine.Value + 1
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
			Player.Character.Humanoid.WalkSpeed = 20
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


if script.Parent.className ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.className == "HopperBin" then
	while script.Parent.Parent.className ~= "Backpack" do
		wait()
	end
	if script.Parent:FindFirstChild("MagazineMax") == nil then
		magazineMax = Instance.new("NumberValue")
		magazineMax.Name = "MagazineMax"
		magazineMax.Value = 6
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
		ammoMax.Value = (magazineMax.Value + 1) * 5
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
--mediafire