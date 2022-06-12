--{ Fixed by PixelFir3 }--

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
repeat
	wait()
until Player.Character
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
local Camera = workspace.CurrentCamera
Camera:ClearAllChildren()
local AnimScript = Character:WaitForChild("Animate")
local Create = LoadLibrary("RbxUtility").Create
local Equipped = false
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.fromEulerAnglesXYZ
ang = function(x, y, z)
	
	if not x then
		x = 0
	end
	if not y then
		y = 0
	end
	if not z then
		z = 0
	end
	return angles(x, y, z)
end

sin = math.sin
cos = math.cos
rnd = math.random
pi = math.pi
pi2 = pi * 2
local RootPart, Torso, Head, RightArm, LeftArm, RightLeg, LeftLeg = nil, nil, nil, nil, nil, nil, nil
if Humanoid.RigType == Enum.HumanoidRigType.R6 then
	RootPart = Character:WaitForChild("HumanoidRootPart")
	Torso = Character:WaitForChild("Torso")
	Head = Character:WaitForChild("Head")
	RightArm = Character:WaitForChild("Right Arm")
	LeftArm = Character:WaitForChild("Left Arm")
	RightLeg = Character:WaitForChild("Right Leg")
	LeftLeg = Character:WaitForChild("Left Leg")
else
	RootPart = Character:WaitForChild("HumanoidRootPart")
	Torso = Character:WaitForChild("UpperTorso")
	Head = Character:WaitForChild("Head")
	RightArm = Character:WaitForChild("RightUpperArm")
	LeftArm = Character:WaitForChild("LeftUpperArm")
	RightLeg = Character:WaitForChild("RightUpperLeg")
	LeftLeg = Character:WaitForChild("LeftUpperLeg")
end
normalize = function(value, min, max)
	
	return (value - min) / (max - min)
end

lerp = function(a, b, k)
	
	return a + (b - a) * k
end

Color = function(r, g, b)
	
	return Color3.new(r / 255, g / 255, b / 255)
end

joinTables = function(...)
	
	local tabs = {...}
	local newtab = {}
	for i,tab in ipairs(tabs) do
		for i,v in ipairs(tab) do
			table.insert(newtab, v)
		end
	end
	return newtab
end

getAllNonCollidable = function()
	
	local ig = {}
	local get = function(o)
		
		for i,v in ipairs(o:GetChildren()) do
			if v:IsA("BasePart") and v.CanCollide == false then
				table.insert(ig, v)
			end
			--l_0_5_r1(v)
		end
	end

	get(Workspace)
	return ig
end

NoOutline = function(Part)
	
	Part.TopSurface = 10
end

local globalIgnore = {Character}
ray = function(startp, endp, dist, ignore, global)
	
	if not dist then
		dist = 9999
	end
	local r = Ray.new(startp, endp - startp.unit * dist)
	if not ignore then
		local ignore = {}
	end
	if not global then
		ignore = joinTables(ignore, globalIgnore, getAllNonCollidable())
	end
	return workspace:FindPartOnRayWithIgnoreList(r, ignore, nil, true)
end

local Stats = {}
local StatsFolder = Create("Folder")({Name = "Stats", Parent = Character})
Stats.Speed = {Effects = Create("Folder")({Name = "SpeedFolder", Parent = StatsFolder}), Main = Create("NumberValue")({Name = "SpeedStat", Parent = StatsFolder}), Add = function(self, time, amount)
	
	local base = Create("Folder")({})
	do
		if time then
			local timeVal = Create("NumberValue")({Name = "Time", Value = time, Parent = base})
		end
		local amountVal = Create("NumberValue")({Name = "Amount", Value = amount, Parent = base})
		base.Parent = self.Effects
		return base
	end
end
, Update = function(self, step)
	
	local new = 1
	for i,v in ipairs(self.Effects:GetChildren()) do
		local amount = v:FindFirstChild("Amount")
		local time = v:FindFirstChild("Time")
		if amount then
			new = new + amount.Value
			if time then
				time.Value = time.Value - step
				if time.Value <= 0 then
					v:Destroy()
				end
			end
		else
			v:Destroy()
		end
	end
	if new < 0 then
		new = 0
	end
	self.Main.Value = new
	Humanoid.WalkSpeed = 16 * new
end
}
Stats.Damage = {Effects = Create("Folder")({Name = "DamageFolder", Parent = StatsFolder}), Main = Create("NumberValue")({Name = "DamageStat", Parent = StatsFolder}), Add = function(self, time, amount)
	
	local base = Create("Folder")({})
	local timeVal = Create("NumberValue")({Name = "Time", Value = time, Parent = base})
	local amountVal = Create("NumberValue")({Name = "Amount", Value = amount, Parent = base})
	base.Parent = self.Effects
	return base
end
, Update = function(self, step)
	
	local new = 1
	for i,v in ipairs(self.Effects:GetChildren()) do
		local amount = v:FindFirstChild("Amount")
		local time = v:FindFirstChild("Time")
		if amount then
			new = new + amount.Value
			if time then
				time.Value = time.Value - step
				if time.Value <= 0 then
					v:Destroy()
				end
			end
		else
			v:Destroy()
		end
	end
	if new < 0 then
		new = 0
	end
	self.Main.Value = new
end
}
Stats.Defense = {Effects = Create("Folder")({Name = "DefenseFolder", Parent = StatsFolder}), Main = Create("NumberValue")({Name = "DefenseStat", Parent = StatsFolder}), Add = function(self, time, amount)
	
	local base = Create("Folder")({})
	local timeVal = Create("NumberValue")({Name = "Time", Value = time, Parent = base})
	local amountVal = Create("NumberValue")({Name = "Amount", Value = amount, Parent = base})
	base.Parent = self.Effects
	return base
end
, Update = function(self, step)
	
	local new = 1
	for i,v in ipairs(self.Effects:GetChildren()) do
		local amount = v:FindFirstChild("Amount")
		local time = v:FindFirstChild("Time")
		if amount then
			new = new + amount.Value
			if time then
				time.Value = time.Value - step
				if time.Value <= 0 then
					v:Destroy()
				end
			end
		else
			v:Destroy()
		end
	end
	if new < 0 then
		new = 0
	end
	self.Main.Value = new
end
}
DefaultRenderUpdate = function(self)
	--[[local ui = self.UI
	if self.Current <= 0 then
		ui.Text2.TextTransparency = lerp(ui.Text2.TextTransparency, 1, 0.1)
		ui.Text.Size = ud(1, 0, lerp(ui.Text.Size.Y.Scale, 1, 0.1), 0)
	else
		ui.Text2.TextTransparency = lerp(ui.Text2.TextTransparency, 0, 0.1)
		ui.Text.Size = ud(1, 0, lerp(ui.Text.Size.Y.Scale, 0.45, 0.1), 0)
	end
	local c = self.Current
	local m = math.floor(c * 10) / 10
	local t = tostring(m)
	if m % 1 == 0 then
		t = t .. ".0"
	end
	ui.Text2.Text = t--]]
end

local Skills = {
{Key = Enum.KeyCode.E, RawKey = "E", Show = true, Cooldown = 2, Current = 0, Use = function(self)
	
	if self.Current <= 0 then
		self.Current = self.Cooldown
		return true
	else
		return false
	end
end
, CanUse = function(self)
	
	if self.Current <= 0 then
		return true
	else
		return false
	end
end
, Update = function(self, step)
	
	if self.Cooldown and self.Current > 0 then
		self.Current = self.Current - step
		if self.Current < 0 then
			self.Current = 0
		end
	end
end
, RenderUpdate = DefaultRenderUpdate}
, 
{Key = Enum.KeyCode.Z, RawKey = "Z", Show = true, Cooldown = 5, Current = 0, Use = function(self)
	
	if self.Current <= 0 then
		self.Current = self.Cooldown
		return true
	else
		return false
	end
end
, CanUse = function(self)
	
	if self.Current <= 0 then
		return true
	else
		return false
	end
end
, Update = function(self, step)
	
	if self.Current > 0 then
		self.Current = self.Current - step
		if self.Current < 0 then
			self.Current = 0
		end
	end
end
, RenderUpdate = DefaultRenderUpdate}
, 
{Key = Enum.KeyCode.X, RawKey = "X", Show = true, Cooldown = 1, Current = 0, Use = function(self)
	
	if self.Current <= 0 then
		self.Current = self.Cooldown
		return true
	else
		return false
	end
end
, CanUse = function(self)
	
	if self.Current <= 0 then
		return true
	else
		return false
	end
end
, Update = function(self, step)
	
	if self.Current > 0 then
		self.Current = self.Current - step
		if self.Current < 0 then
			self.Current = 0
		end
	end
end
, RenderUpdate = DefaultRenderUpdate}
, 
{Key = Enum.KeyCode.C, RawKey = "C", Show = true, Cooldown = 1, Current = 0, Use = function(self)
	
	if self.Current <= 0 then
		self.Current = self.Cooldown
		return true
	else
		return false
	end
end
, CanUse = function(self)
	
	if self.Current <= 0 then
		return true
	else
		return false
	end
end
, Update = function(self, step)
	
	if self.Current > 0 then
		self.Current = self.Current - step
		if self.Current < 0 then
			self.Current = 0
		end
	end
end
, RenderUpdate = DefaultRenderUpdate}
, 
{Key = Enum.KeyCode.V, RawKey = "V", Show = true, Cooldown = 1, Current = 0, Use = function(self)
	
	if self.Current <= 0 then
		self.Current = self.Cooldown
		return true
	else
		return false
	end
end
, CanUse = function(self)
	
	if self.Current <= 0 then
		return true
	else
		return false
	end
end
, Update = function(self, step)
	
	if self.Current > 0 then
		self.Current = self.Current - step
		if self.Current < 0 then
			self.Current = 0
		end
	end
end
, RenderUpdate = DefaultRenderUpdate}
}
getSkill = function(key)
	
	for i,v in ipairs(Skills) do
		if v.Key == key then
			return v
		end
	end
	return nil
end

Weld = function(X, Y, Zero)
	
	local CJ = CFrame.new(X.Position)
	local C0 = X.CFrame:inverse() * CJ
	local C1 = Y.CFrame:inverse() * CJ
	if Zero then
		C0 = CFrame.new()
	end
	local W = Create("Weld")({Name = "$Weld", Parent = X, Part0 = X, Part1 = Y, C0 = C0, C1 = C1})
	return W
end

WeldModel = function(p, h)
	
	for i,obj in ipairs(p) do
		if obj:IsA("BasePart") or obj:IsA("UnionOperation") then
			Weld(h, obj)
			obj.Anchored = false
		end
		WeldModel(obj:GetChildren(), h)
	end
end

local Sword = nil
local SwordEquipped = false
local LC0, LC1 = cf(), (cf())
local SwordSpeedDebuff = nil
--[[local module = (script:FindFirstChild("MainModule"))
local Module3D = nil
if module then
	Sword = require(module)("Faithkeeper", "4165362574344223726423276122822639517277289664566421966314878576129342837575733331418311751611751892")
	Module3D = require(module)("Module3D", "4165362574344223726423276122822639517277289664566421966314878576129342837575733331418311751611751892")
else
	NS("        Module = require(525992524)\n        Sword = Module(\'Faithkeeper\', \"4165362574344223726423276122822639517277289664566421966314878576129342837575733331418311751611751892\")\n        Sword.Parent = script.Parent\n        Module3D = Module(\'Module3D\', \"4165362574344223726423276122822639517277289664566421966314878576129342837575733331418311751611751892\")\n        Module3D.Parent = script.Parent\n    ", Player.Backpack)
	Sword = Player.Backpack:WaitForChild("Faithkeeper", 10)
	Module3D = Player.Backpack:WaitForChild("Module3D", 10)
end
if Sword == nil then
	error("Couldnt find model")
else
	print("Found model")
end
if Module3D == nil then
	error("Couldnt find Module3D")
else
	print("Found Module3D")
end
Module3D = require(Module3D)--]]
--weapon
local m = Instance.new("Model")
m.Name = "Sword_FaithKeeper"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Smoky grey")
p1.Material = Enum.Material.SmoothPlastic
p1.CFrame = CFrame.new(-25.1591721, 0.222786054, -2.18266439, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p1.Anchored = true
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.200000003, 0.21215865, 0.200000003)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.636476934, 1, 0.636476338)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Medium stone grey")
p2.Material = Enum.Material.SmoothPlastic
p2.CFrame = CFrame.new(-24.0983753, 0.222786725, -0.782416046, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p2.Anchored = true
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.212158918, 0.212158799)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.424317986, 1, 1)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Medium stone grey")
p3.Material = Enum.Material.SmoothPlastic
p3.CFrame = CFrame.new(-25.1485653, 0.222786188, -0.570257962, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p3.Anchored = true
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.424317986, 1, 1)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Smoky grey")
p4.Material = Enum.Material.SmoothPlastic
p4.CFrame = CFrame.new(-24.6499901, 0.222785994, -2.67062855, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p4.Anchored = true
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1.06079471, 0.297022462, 0.46674943)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=9756362"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "ScalingMesh:1, 1, 1"
b4.Scale = Vector3.new(1.06079471, 0.297022462, 0.46674943)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Medium stone grey")
p5.Material = Enum.Material.SmoothPlastic
p5.CFrame = CFrame.new(-24.4696541, 0.222786739, -0.570257008, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p5.Anchored = true
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.424317986, 1, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Medium stone grey")
p6.Material = Enum.Material.SmoothPlastic
p6.CFrame = CFrame.new(-24.2574959, 0.222786725, -0.782416046, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p6.Anchored = true
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 0.212158918, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Smoky grey")
p7.Material = Enum.Material.SmoothPlastic
p7.CFrame = CFrame.new(-25.1591721, 0.22278659, -0.761200964, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p7.Anchored = true
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.21215865, 0.200000003)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.636476934, 1, 0.636476338)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Medium stone grey")
p8.Material = Enum.Material.SmoothPlastic
p8.CFrame = CFrame.new(-24.0453377, 0.222786099, -1.47193253, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p8.Anchored = true
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 1.16687405, 0.200000003)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Smoky grey")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(-25.1697788, 0.222786784, -0.888495624, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p9.Anchored = true
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.636476934, 0.212157682, 0.530396938)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Smoky grey")
p10.Material = Enum.Material.SmoothPlastic
p10.CFrame = CFrame.new(-25.053093, 0.22278659, -0.665728271, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p10.Anchored = true
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.636476934, 0.106079444, 0.424317539)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Smoky grey")
p11.Material = Enum.Material.SmoothPlastic
p11.CFrame = CFrame.new(-25.1061325, 0.222786024, -0.549041986, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p11.Anchored = true
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.21215865, 0.233374655)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.636476934, 1, 1)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Medium stone grey")
p12.Material = Enum.Material.SmoothPlastic
p12.CFrame = CFrame.new(-23.9392586, 0.222786084, -0.188370615, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p12.Anchored = true
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 1.06079447, 0.200000003)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Smoky grey")
p13.Material = Enum.Material.SmoothPlastic
p13.CFrame = CFrame.new(-24.1938496, 0.222786531, -0.549042106, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p13.Anchored = true
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 0.21215865, 0.233374655)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.636476934, 1, 1)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Smoky grey")
p14.Material = Enum.Material.SmoothPlastic
p14.CFrame = CFrame.new(-24.6499901, 0.222785994, -0.0504680015, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p14.Anchored = true
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.200000003, 0.784987628, 1.14565754)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.636476934, 1, 1)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Smoky grey")
p15.Material = Enum.Material.SmoothPlastic
p15.CFrame = CFrame.new(-24.0453358, 0.222786099, -1.07943833, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p15.Anchored = true
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 2.84292889, 0.200000003)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.636476934, 1, 0.318238258)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Medium stone grey")
p16.Material = Enum.Material.SmoothPlastic
p16.CFrame = CFrame.new(-24.8303261, 0.22278665, -0.570257843, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p16.Anchored = true
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p16)
b16.MeshType = Enum.MeshType.Wedge
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.424317986, 1, 1)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Smoky grey")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-24.1408119, 0.222786531, -0.761201322, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p17.Anchored = true
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000003, 0.21215865, 0.200000003)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.636476934, 1, 0.636476338)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Smoky grey")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(-24.1938515, 0.222786531, -2.39482331, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p18.Anchored = true
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.200000003, 0.21215865, 0.233374655)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.636476934, 1, 1)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Medium stone grey")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(-24.1514168, 0.222786725, -0.570257008, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p19.Anchored = true
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.424317986, 1, 1)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Smoky grey")
p20.Material = Enum.Material.SmoothPlastic
p20.CFrame = CFrame.new(-25.0000534, 0.222786576, -0.665728271, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p20.Anchored = true
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p20)
b20.MeshType = Enum.MeshType.Wedge
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.636476934, 0.106079474, 0.106079392)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Smoky grey")
p21.Material = Enum.Material.SmoothPlastic
p21.CFrame = CFrame.new(-24.1408119, 0.222786531, -2.18266439, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p21.Anchored = true
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000003, 0.21215865, 0.200000003)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.636476934, 1, 0.636476338)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Smoky grey")
p22.Material = Enum.Material.SmoothPlastic
p22.CFrame = CFrame.new(-25.2546444, 0.222786754, -1.07943833, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p22.Anchored = true
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.200000003, 2.84292889, 0.200000003)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("BlockMesh", p22)
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.636476934, 1, 0.318238258)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Medium stone grey")
p23.Material = Enum.Material.SmoothPlastic
p23.CFrame = CFrame.new(-25.2016048, 0.222786725, -0.782416046, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p23.Anchored = true
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 0.212158918, 0.212158799)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("BlockMesh", p23)
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.424317986, 1, 1)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Medium stone grey")
p24.Material = Enum.Material.SmoothPlastic
p24.CFrame = CFrame.new(-25.5197392, 0.222786516, 0.476705879, 0.499961555, 4.16871262e-005, -0.866047621, -1.1168755e-005, 1, 4.1687279e-005, 0.866047621, -1.11693644e-005, 0.499961555)
p24.Anchored = true
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.200000003, 0.212158918, 0.318238378)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("BlockMesh", p24)
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.636476338, 1, 1)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Smoky grey")
p25.Material = Enum.Material.SmoothPlastic
p25.CFrame = CFrame.new(-25.1697788, 0.222786784, -1.04761493, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p25.Anchored = true
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.200000003, 0.275806576, 0.200000003)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("SpecialMesh", p25)
b25.MeshType = Enum.MeshType.Wedge
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.636476934, 1, 0.530396998)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Medium stone grey")
p26.Material = Enum.Material.SmoothPlastic
p26.CFrame = CFrame.new(-23.780241, 0.222786069, 0.476706356, -0.500006676, 4.16877519e-005, -0.866021633, 1.11705704e-005, 1, 4.16876355e-005, 0.866021633, 1.11701393e-005, -0.500006676)
p26.Anchored = true
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.212158918, 0.318238378)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("BlockMesh", p26)
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.636476338, 1, 1)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Smoky grey")
p27.Material = Enum.Material.SmoothPlastic
p27.CFrame = CFrame.new(-24.8409328, 0.222786576, -0.549040556, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p27.Anchored = true
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 0.212158918, 0.297022343)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("SpecialMesh", p27)
b27.MeshType = Enum.MeshType.Wedge
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.636476934, 1, 1)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Smoky grey")
p28.Material = Enum.Material.SmoothPlastic
p28.CFrame = CFrame.new(-24.2468891, 0.222786561, -0.665728629, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p28.Anchored = true
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("BlockMesh", p28)
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.636476934, 0.106079444, 0.424317539)
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Medium stone grey")
p29.Material = Enum.Material.SmoothPlastic
p29.CFrame = CFrame.new(-25.1485653, 0.222786725, -1.04761469, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p29.Anchored = true
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.200000003, 0.318238378, 0.200000003)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("SpecialMesh", p29)
b29.MeshType = Enum.MeshType.Wedge
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Smoky grey")
p30.Material = Enum.Material.SmoothPlastic
p30.CFrame = CFrame.new(-24.6499901, 0.222785994, -0.27323392, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p30.Anchored = true
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(1.06079471, 0.297022462, 0.46674943)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/asset/?id=9756362"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "ScalingMesh:1, 1, 1"
b30.Scale = Vector3.new(1.06079471, 0.297022462, 0.46674943)
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Smoky grey")
p31.Material = Enum.Material.SmoothPlastic
p31.CFrame = CFrame.new(-24.1302013, 0.222786635, -1.04761469, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p31.Anchored = true
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.200000003, 0.275806576, 0.200000003)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p31)
b31.MeshType = Enum.MeshType.Wedge
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.636476934, 1, 0.530396998)
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Smoky grey")
p32.Material = Enum.Material.SmoothPlastic
p32.CFrame = CFrame.new(-24.2999287, 0.222786576, -0.665728271, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p32.Anchored = true
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("SpecialMesh", p32)
b32.MeshType = Enum.MeshType.Wedge
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.636476934, 0.106079474, 0.106079392)
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Smoky grey")
p33.Material = Enum.Material.SmoothPlastic
p33.CFrame = CFrame.new(-24.4590473, 0.222786605, -0.549040556, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p33.Anchored = true
p33.CanCollide = false
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.200000003, 0.212158918, 0.297022343)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Wedge
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.636476934, 1, 1)
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Smoky grey")
p34.Material = Enum.Material.SmoothPlastic
p34.CFrame = CFrame.new(-24.1938496, 0.222786531, -0.888495624, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p34.Anchored = true
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("SpecialMesh", p34)
b34.MeshType = Enum.MeshType.Wedge
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.636476934, 0.212158889, 0.106079392)
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Smoky grey")
p35.Material = Enum.Material.SmoothPlastic
p35.CFrame = CFrame.new(-24.2468891, 0.222786561, -0.771808326, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p35.Anchored = true
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("SpecialMesh", p35)
b35.MeshType = Enum.MeshType.Wedge
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.636476934, 0.954715073, 0.424317569)
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Smoky grey")
p36.Material = Enum.Material.SmoothPlastic
p36.CFrame = CFrame.new(-25.053093, 0.22278659, -0.771807492, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p36.Anchored = true
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("SpecialMesh", p36)
b36.MeshType = Enum.MeshType.Wedge
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.636476934, 0.954715073, 0.424317569)
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Smoky grey")
p37.Material = Enum.Material.SmoothPlastic
p37.CFrame = CFrame.new(-25.1061344, 0.22278659, -2.39482331, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p37.Anchored = true
p37.CanCollide = false
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.200000003, 0.21215865, 0.233374655)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("BlockMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.636476934, 1, 1)
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Medium stone grey")
p38.Material = Enum.Material.SmoothPlastic
p38.CFrame = CFrame.new(-24.6499901, 0.222785994, 0.405673832, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p38.Anchored = true
p38.CanCollide = false
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.200000003, 0.212158918, 1.52754343)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("BlockMesh", p38)
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.636476338, 1, 1)
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Medium stone grey")
p39.Material = Enum.Material.SmoothPlastic
p39.CFrame = CFrame.new(-25.0424862, 0.222786725, -0.782416046, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p39.Anchored = true
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.200000003, 0.212158918, 0.200000003)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("SpecialMesh", p39)
b39.MeshType = Enum.MeshType.Wedge
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Medium stone grey")
p40.Material = Enum.Material.SmoothPlastic
p40.CFrame = CFrame.new(-24.6499901, 0.222785994, 0.00257166848, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p40.Anchored = true
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.933499217, 0.200000003, 1.31538463)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("BlockMesh", p40)
b40.Name = "Mesh"
b40.Scale = Vector3.new(1, 0.424317777, 1)
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Pastel light blue")
p41.Material = Enum.Material.Neon
p41.CFrame = CFrame.new(-24.6499901, 0.222785994, -1.47193253, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p41.Anchored = true
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(1.37903297, 0.445533663, 0.445533484)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("SpecialMesh", p41)
b41.MeshType = Enum.MeshType.Sphere
b41.Name = "Mesh"
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Medium stone grey")
p42.Material = Enum.Material.SmoothPlastic
p42.CFrame = CFrame.new(-25.2546444, 0.222786188, -1.47193253, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p42.Anchored = true
p42.CanCollide = false
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.200000003, 1.16687405, 0.200000003)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("BlockMesh", p42)
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Smoky grey")
p43.Material = Enum.Material.SmoothPlastic
p43.CFrame = CFrame.new(-24.1302013, 0.222786635, -0.888495147, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p43.Anchored = true
p43.CanCollide = false
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("BlockMesh", p43)
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.636476934, 0.212157682, 0.530396938)
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Medium stone grey")
p44.Material = Enum.Material.SmoothPlastic
p44.CFrame = CFrame.new(-25.2016048, 0.222786188, -2.16144824, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p44.Anchored = true
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.200000003, 0.212158918, 0.212158799)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("BlockMesh", p44)
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.424317986, 1, 1)
p45 = Instance.new("Part", m)
p45.BrickColor = BrickColor.new("Medium stone grey")
p45.Material = Enum.Material.SmoothPlastic
p45.CFrame = CFrame.new(-24.469656, 0.222786739, -2.37360716, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p45.Anchored = true
p45.CanCollide = false
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("SpecialMesh", p45)
b45.MeshType = Enum.MeshType.Wedge
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.424317986, 1, 1)
p46 = Instance.new("Part", m)
p46.BrickColor = BrickColor.new("Medium stone grey")
p46.Material = Enum.Material.SmoothPlastic
p46.CFrame = CFrame.new(-25.1485653, 0.222786188, -1.89624953, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p46.Anchored = true
p46.CanCollide = false
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.200000003, 0.318238378, 0.200000003)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("SpecialMesh", p46)
b46.MeshType = Enum.MeshType.Wedge
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p47 = Instance.new("Part", m)
p47.BrickColor = BrickColor.new("Medium stone grey")
p47.Material = Enum.Material.SmoothPlastic
p47.CFrame = CFrame.new(-24.8303261, 0.22278665, -2.37360716, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p47.Anchored = true
p47.CanCollide = false
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("SpecialMesh", p47)
b47.MeshType = Enum.MeshType.Wedge
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.424317986, 1, 1)
p48 = Instance.new("Part", m)
p48.BrickColor = BrickColor.new("Smoky grey")
p48.Material = Enum.Material.SmoothPlastic
p48.CFrame = CFrame.new(-24.1302013, 0.222786635, -2.0553689, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p48.Anchored = true
p48.CanCollide = false
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("BlockMesh", p48)
b48.Name = "Mesh"
b48.Scale = Vector3.new(0.636476934, 0.212157682, 0.530396938)
p49 = Instance.new("Part", m)
p49.BrickColor = BrickColor.new("Smoky grey")
p49.Material = Enum.Material.SmoothPlastic
p49.CFrame = CFrame.new(-25.1697788, 0.222786218, -1.89625072, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p49.Anchored = true
p49.CanCollide = false
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.200000003, 0.275806576, 0.200000003)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("SpecialMesh", p49)
b49.MeshType = Enum.MeshType.Wedge
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.636476934, 1, 0.530396998)
p50 = Instance.new("Part", m)
p50.BrickColor = BrickColor.new("Medium stone grey")
p50.Material = Enum.Material.SmoothPlastic
p50.CFrame = CFrame.new(-24.6499901, 0.222785994, 1.47707593, 1, 3.05180438e-005, -3.05171125e-005, -3.05171125e-005, 1, 3.05180474e-005, 3.05180438e-005, -3.05171106e-005, 1)
p50.Anchored = true
p50.CanCollide = false
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.275806665, 0.275806576, 1.97307694)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("SpecialMesh", p50)
b50.MeshId = "http://www.roblox.com/asset/?id=16606212"
b50.TextureId = ""
b50.MeshType = Enum.MeshType.FileMesh
b50.Name = "ScalingMesh:0.479999989, 0.479999989, 0.300000012"
b50.Scale = Vector3.new(0.132387206, 0.132387146, 0.591923118)
p51 = Instance.new("Part", m)
p51.BrickColor = BrickColor.new("Medium stone grey")
p51.Material = Enum.Material.SmoothPlastic
p51.CFrame = CFrame.new(-24.1514168, 0.222786725, -1.89624953, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p51.Anchored = true
p51.CanCollide = false
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.200000003, 0.318238378, 0.200000003)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("SpecialMesh", p51)
b51.MeshType = Enum.MeshType.Wedge
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p52 = Instance.new("Part", m)
p52.BrickColor = BrickColor.new("Smoky grey")
p52.Material = Enum.Material.SmoothPlastic
p52.CFrame = CFrame.new(-24.6499901, 0.222785994, 1.47707593, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180474e-005, -1)
p52.Anchored = true
p52.CanCollide = false
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.275806665, 0.275806576, 1.97307694)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("SpecialMesh", p52)
b52.MeshId = "http://www.roblox.com/asset/?id=16606212"
b52.TextureId = ""
b52.MeshType = Enum.MeshType.FileMesh
b52.Name = "ScalingMesh:0.479999989, 0.479999989, 0.300000012"
b52.Scale = Vector3.new(0.132387206, 0.132387146, 0.591923118)
p53 = Instance.new("Part", m)
p53.BrickColor = BrickColor.new("Smoky grey")
p53.Material = Enum.Material.SmoothPlastic
p53.CFrame = CFrame.new(-25.053093, 0.222786024, -2.17205596, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p53.Anchored = true
p53.CanCollide = false
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b53 = Instance.new("SpecialMesh", p53)
b53.MeshType = Enum.MeshType.Wedge
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.636476934, 0.954715073, 0.424317569)
p54 = Instance.new("Part", m)
p54.BrickColor = BrickColor.new("Smoky grey")
p54.Material = Enum.Material.SmoothPlastic
p54.CFrame = CFrame.new(-24.6499901, 0.222785994, 0.342026085, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p54.Anchored = true
p54.CanCollide = false
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.50918144, 0.297022462, 0.848635197)
p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b54 = Instance.new("SpecialMesh", p54)
b54.MeshId = "http://www.roblox.com/asset/?id=9756362"
b54.TextureId = ""
b54.MeshType = Enum.MeshType.FileMesh
b54.Name = "ScalingMesh:1, 1, 1"
b54.Scale = Vector3.new(0.50918144, 0.297022462, 0.848635197)
p55 = Instance.new("Part", m)
p55.BrickColor = BrickColor.new("Medium stone grey")
p55.Material = Enum.Material.SmoothPlastic
p55.CFrame = CFrame.new(-24.6499901, 0.222785994, -4.18756533, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p55.Anchored = true
p55.CanCollide = false
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(3.5854857, 0.200000003, 1.31538463)
p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b55 = Instance.new("BlockMesh", p55)
b55.Name = "Mesh"
b55.Scale = Vector3.new(1, 0.424317777, 1)
p56 = Instance.new("Part", m)
p56.BrickColor = BrickColor.new("Smoky grey")
p56.Material = Enum.Material.SmoothPlastic
p56.CFrame = CFrame.new(-25.0000534, 0.222786576, -2.27813554, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p56.Anchored = true
p56.CanCollide = false
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b56 = Instance.new("SpecialMesh", p56)
b56.MeshType = Enum.MeshType.Wedge
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.636476934, 0.106079474, 0.106079392)
p57 = Instance.new("Part", m)
p57.BrickColor = BrickColor.new("Smoky grey")
p57.Material = Enum.Material.SmoothPlastic
p57.CFrame = CFrame.new(-24.246891, 0.222786561, -2.27813601, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p57.Anchored = true
p57.CanCollide = false
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b57 = Instance.new("BlockMesh", p57)
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.636476934, 0.106079444, 0.424317539)
p58 = Instance.new("Part", m)
p58.BrickColor = BrickColor.new("Medium stone grey")
p58.Material = Enum.Material.SmoothPlastic
p58.CFrame = CFrame.new(-25.0424862, 0.222786158, -2.16144824, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p58.Anchored = true
p58.CanCollide = false
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.200000003, 0.212158918, 0.200000003)
p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b58 = Instance.new("SpecialMesh", p58)
b58.MeshType = Enum.MeshType.Wedge
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p59 = Instance.new("Part", m)
p59.BrickColor = BrickColor.new("Smoky grey")
p59.Material = Enum.Material.SmoothPlastic
p59.CFrame = CFrame.new(-24.1302013, 0.222786635, -1.89625072, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p59.Anchored = true
p59.CanCollide = false
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.200000003, 0.275806576, 0.200000003)
p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b59 = Instance.new("SpecialMesh", p59)
b59.MeshType = Enum.MeshType.Wedge
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.636476934, 1, 0.530396998)
p60 = Instance.new("Part", m)
p60.BrickColor = BrickColor.new("Smoky grey")
p60.Material = Enum.Material.SmoothPlastic
p60.CFrame = CFrame.new(-24.6499901, 0.222786561, -4.13452244, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p60.Anchored = true
p60.CanCollide = false
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(0.200000003, 3.26724672, 1.27295303)
p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b60 = Instance.new("BlockMesh", p60)
b60.Name = "Mesh"
b60.Scale = Vector3.new(0.636476934, 1, 1)
p61 = Instance.new("Part", m)
p61.BrickColor = BrickColor.new("Medium stone grey")
p61.Material = Enum.Material.SmoothPlastic
p61.CFrame = CFrame.new(-25.1485653, 0.222786725, -2.37360716, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p61.Anchored = true
p61.CanCollide = false
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b61 = Instance.new("BlockMesh", p61)
b61.Name = "Mesh"
b61.Scale = Vector3.new(0.424317986, 1, 1)
p62 = Instance.new("Part", m)
p62.BrickColor = BrickColor.new("Smoky grey")
p62.Material = Enum.Material.SmoothPlastic
p62.CFrame = CFrame.new(-24.246891, 0.222786561, -2.17205667, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p62.Anchored = true
p62.CanCollide = false
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b62 = Instance.new("SpecialMesh", p62)
b62.MeshType = Enum.MeshType.Wedge
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.636476934, 0.954715073, 0.424317569)
p63 = Instance.new("Part", m)
p63.BrickColor = BrickColor.new("Smoky grey")
p63.Material = Enum.Material.SmoothPlastic
p63.CFrame = CFrame.new(-25.053093, 0.22278659, -2.27813554, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p63.Anchored = true
p63.CanCollide = false
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b63 = Instance.new("BlockMesh", p63)
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.636476934, 0.106079444, 0.424317539)
p64 = Instance.new("Part", m)
p64.BrickColor = BrickColor.new("Smoky grey")
p64.Material = Enum.Material.SmoothPlastic
p64.CFrame = CFrame.new(-25.1061344, 0.222786024, -2.0553689, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p64.Anchored = true
p64.CanCollide = false
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b64 = Instance.new("SpecialMesh", p64)
b64.MeshType = Enum.MeshType.Wedge
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.636476934, 0.212158889, 0.106079392)
p65 = Instance.new("Part", m)
p65.BrickColor = BrickColor.new("Smoky grey")
p65.Material = Enum.Material.SmoothPlastic
p65.CFrame = CFrame.new(-25.1697788, 0.222786218, -2.0553689, -9.15499331e-005, 2.79396772e-009, -1, -1, 7.67427029e-013, 9.15499331e-005, -7.67426921e-013, 1, 2.79396772e-009)
p65.Anchored = true
p65.CanCollide = false
p65.FormFactor = Enum.FormFactor.Custom
p65.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b65 = Instance.new("BlockMesh", p65)
b65.Name = "Mesh"
b65.Scale = Vector3.new(0.636476934, 0.212157682, 0.530396938)
p66 = Instance.new("Part", m)
p66.BrickColor = BrickColor.new("Medium stone grey")
p66.Material = Enum.Material.SmoothPlastic
p66.CFrame = CFrame.new(-24.2574959, 0.222786725, -2.16144824, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p66.Anchored = true
p66.CanCollide = false
p66.FormFactor = Enum.FormFactor.Custom
p66.Size = Vector3.new(0.200000003, 0.212158918, 0.200000003)
p66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b66 = Instance.new("SpecialMesh", p66)
b66.MeshType = Enum.MeshType.Wedge
b66.Name = "Mesh"
b66.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p67 = Instance.new("Part", m)
p67.BrickColor = BrickColor.new("Medium stone grey")
p67.Material = Enum.Material.SmoothPlastic
p67.CFrame = CFrame.new(-24.0983772, 0.222786725, -2.16144824, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p67.Anchored = true
p67.CanCollide = false
p67.FormFactor = Enum.FormFactor.Custom
p67.Size = Vector3.new(0.200000003, 0.212158918, 0.212158799)
p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b67 = Instance.new("BlockMesh", p67)
b67.Name = "Mesh"
b67.Scale = Vector3.new(0.424317986, 1, 1)
p68 = Instance.new("Part", m)
p68.BrickColor = BrickColor.new("Smoky grey")
p68.Material = Enum.Material.SmoothPlastic
p68.CFrame = CFrame.new(-24.6499901, 0.222786561, 2.53787088, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p68.Anchored = true
p68.CanCollide = false
p68.FormFactor = Enum.FormFactor.Custom
p68.Size = Vector3.new(0.424317867, 0.297022462, 0.297022343)
p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b68 = Instance.new("SpecialMesh", p68)
b68.MeshId = "http://www.roblox.com/asset/?id=9756362"
b68.TextureId = ""
b68.MeshType = Enum.MeshType.FileMesh
b68.Name = "ScalingMesh:1, 1, 1"
b68.Scale = Vector3.new(0.424317867, 0.297022462, 0.297022343)
p69 = Instance.new("Part", m)
p69.BrickColor = BrickColor.new("Smoky grey")
p69.Material = Enum.Material.SmoothPlastic
p69.CFrame = CFrame.new(-24.2999306, 0.222786576, -2.27813554, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p69.Anchored = true
p69.CanCollide = false
p69.FormFactor = Enum.FormFactor.Custom
p69.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b69 = Instance.new("SpecialMesh", p69)
b69.MeshType = Enum.MeshType.Wedge
b69.Name = "Mesh"
b69.Scale = Vector3.new(0.636476934, 0.106079474, 0.106079392)
p70 = Instance.new("Part", m)
p70.BrickColor = BrickColor.new("Medium stone grey")
p70.Material = Enum.Material.SmoothPlastic
p70.CFrame = CFrame.new(-24.1514168, 0.222786725, -2.37360716, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p70.Anchored = true
p70.CanCollide = false
p70.FormFactor = Enum.FormFactor.Custom
p70.Size = Vector3.new(0.200000003, 0.212158918, 0.318238169)
p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b70 = Instance.new("BlockMesh", p70)
b70.Name = "Mesh"
b70.Scale = Vector3.new(0.424317986, 1, 1)
p71 = Instance.new("Part", m)
p71.BrickColor = BrickColor.new("Smoky grey")
p71.Material = Enum.Material.SmoothPlastic
p71.CFrame = CFrame.new(-24.1938515, 0.222786531, -2.0553689, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p71.Anchored = true
p71.CanCollide = false
p71.FormFactor = Enum.FormFactor.Custom
p71.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b71 = Instance.new("SpecialMesh", p71)
b71.MeshType = Enum.MeshType.Wedge
b71.Name = "Mesh"
b71.Scale = Vector3.new(0.636476934, 0.212158889, 0.106079392)
p72 = Instance.new("Part", m)
p72.BrickColor = BrickColor.new("Medium stone grey")
p72.Material = Enum.Material.SmoothPlastic
p72.Name = "Handle"
p72.CFrame = CFrame.new(-24.6499901, 0.222785994, 1.53011549, -3.26636873e-005, 4.31581502e-005, -1, 9.30280519e-010, 1, 4.31581502e-005, 1, 4.80958384e-010, -3.26636873e-005)
p72.Anchored = true
p72.CanCollide = false
p72.FormFactor = Enum.FormFactor.Custom
p72.Size = Vector3.new(2.12158966, 0.212158918, 0.212158799)
p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b72 = Instance.new("SpecialMesh", p72)
b72.MeshType = Enum.MeshType.Cylinder
b72.Name = "Mesh"
p73 = Instance.new("Part", m)
p73.BrickColor = BrickColor.new("Smoky grey")
p73.Material = Enum.Material.SmoothPlastic
p73.CFrame = CFrame.new(-24.8409348, 0.222786576, -2.39482307, 3.05166468e-005, -9.31322575e-010, -1, -1, 7.67426975e-013, -3.05166468e-005, -7.67426975e-013, 1, -9.31322575e-010)
p73.Anchored = true
p73.CanCollide = false
p73.FormFactor = Enum.FormFactor.Custom
p73.Size = Vector3.new(0.200000003, 0.212158918, 0.297022343)
p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b73 = Instance.new("SpecialMesh", p73)
b73.MeshType = Enum.MeshType.Wedge
b73.Name = "Mesh"
b73.Scale = Vector3.new(0.636476934, 1, 1)
p74 = Instance.new("Part", m)
p74.BrickColor = BrickColor.new("Medium stone grey")
p74.Material = Enum.Material.SmoothPlastic
p74.CFrame = CFrame.new(-25.3607235, 0.222786203, -0.188370615, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p74.Anchored = true
p74.CanCollide = false
p74.FormFactor = Enum.FormFactor.Custom
p74.Size = Vector3.new(0.200000003, 1.06079447, 0.200000003)
p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b74 = Instance.new("SpecialMesh", p74)
b74.MeshType = Enum.MeshType.Wedge
b74.Name = "Mesh"
b74.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p75 = Instance.new("Part", m)
p75.BrickColor = BrickColor.new("Smoky grey")
p75.Material = Enum.Material.SmoothPlastic
p75.CFrame = CFrame.new(-24.4590492, 0.222786605, -2.39482307, -9.15443597e-005, -8.38190317e-009, 1, 1, 7.67537997e-013, 9.15443597e-005, 7.67426975e-013, 1, 8.38190317e-009)
p75.Anchored = true
p75.CanCollide = false
p75.FormFactor = Enum.FormFactor.Custom
p75.Size = Vector3.new(0.200000003, 0.212158918, 0.297022343)
p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b75 = Instance.new("SpecialMesh", p75)
b75.MeshType = Enum.MeshType.Wedge
b75.Name = "Mesh"
b75.Scale = Vector3.new(0.636476934, 1, 1)
p76 = Instance.new("Part", m)
p76.BrickColor = BrickColor.new("Medium stone grey")
p76.Material = Enum.Material.SmoothPlastic
p76.CFrame = CFrame.new(-24.1514168, 0.222786725, -1.04761469, -3.05166468e-005, 9.31322575e-010, 1, -1, -6.10332972e-005, -3.05166468e-005, 6.10332936e-005, -1, 2.79396772e-009)
p76.Anchored = true
p76.CanCollide = false
p76.FormFactor = Enum.FormFactor.Custom
p76.Size = Vector3.new(0.200000003, 0.318238378, 0.200000003)
p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b76 = Instance.new("SpecialMesh", p76)
b76.MeshType = Enum.MeshType.Wedge
b76.Name = "Mesh"
b76.Scale = Vector3.new(0.424317986, 1, 0.530396998)
p77 = Instance.new("Part", m)
p77.BrickColor = BrickColor.new("Smoky grey")
p77.Material = Enum.Material.SmoothPlastic
p77.CFrame = CFrame.new(-25.1061325, 0.22278659, -0.888495147, -3.05166468e-005, 6.10323623e-005, -1, 1, 1.86182092e-009, -3.05166468e-005, 7.67426975e-013, -1, -6.10323623e-005)
p77.Anchored = true
p77.CanCollide = false
p77.FormFactor = Enum.FormFactor.Custom
p77.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b77 = Instance.new("SpecialMesh", p77)
b77.MeshType = Enum.MeshType.Wedge
b77.Name = "Mesh"
b77.Scale = Vector3.new(0.636476934, 0.212158889, 0.106079392)
p78 = Instance.new("Part", m)
p78.BrickColor = BrickColor.new("Medium stone grey")
p78.Material = Enum.Material.SmoothPlastic
p78.CFrame = CFrame.new(-24.6499901, 0.222785994, -6.06516933, -3.26636873e-005, 1, 4.80213203e-010, -1, -3.26636873e-005, 4.3158605e-005, 4.31586013e-005, 9.31322575e-010, 1)
p78.Anchored = true
p78.CanCollide = false
p78.FormFactor = Enum.FormFactor.Custom
p78.Size = Vector3.new(0.200000003, 1.3153851, 0.200000003)
p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b78 = Instance.new("SpecialMesh", p78)
b78.MeshType = Enum.MeshType.Wedge
b78.Name = "Mesh"
b78.Scale = Vector3.new(0.424317986, 1, 0.848635197)
p79 = Instance.new("Part", m)
p79.BrickColor = BrickColor.new("Smoky grey")
p79.Material = Enum.Material.SmoothPlastic
p79.CFrame = CFrame.new(-24.649992, 0.222785994, -5.85301065, 5.34682258e-005, -1, -4.3159529e-005, 1, 5.34682404e-005, 2.30843122e-009, 7.67454785e-013, -4.3159529e-005, 1)
p79.Anchored = true
p79.CanCollide = false
p79.FormFactor = Enum.FormFactor.Custom
p79.Size = Vector3.new(0.200000003, 1.27295351, 0.200000003)
p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b79 = Instance.new("SpecialMesh", p79)
b79.MeshType = Enum.MeshType.Wedge
b79.Name = "Mesh"
b79.Scale = Vector3.new(0.636476934, 1, 0.848635197)
Sword = m
Sword.Parent = Player
local Handle = Sword:WaitForChild("Handle")--Instance.new('Part',Sword) --
--Handle.Transparency = 1
WeldModel(Sword:GetChildren(), Handle)
local SW = Weld(Torso, Handle, true)
SW.Name = "Sword Weld"
SW.C0 = cf(0, 0, 0) * ang(pi / 2, 0, 0)
SW.C1 = cf(-3.5, -0.6, 0) * ang(0, pi + 0.35, 0)
local EC0, EC1 = SW.C0, SW.C1
Sword.Parent = Character
Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=494629509")
ud = UDim2.new
local Screen = Create("ScreenGui")({Parent = Player.PlayerGui})
--[[local UIMid = Create("Frame")({Parent = Screen, Position = ud(0.75, 0, 0.5, 0), Size = ud(0, 0, 0, 0), BackgroundTransparency = 1})
local StatsOffset, SkillsOffset = 0, 0
local StatsSize, SkillsSize = 0, 0
for i,v in ipairs(Skills) do
	if v.Show then
		local bg = Create("Frame")({Parent = UIMid, Size = ud(0, 0, 0, 0), Position = ud(0, 0, 0, 0), Rotation = 0, BackgroundTransparency = 1})
		local Text = (Create("TextLabel")({Parent = bg, Size = ud(1, 0, 0.45, 0), Position = ud(0, 0, 0, 0), BackgroundTransparency = 1, Text = v.RawKey, Font = "Arial", TextScaled = true, TextColor3 = Color(255, 255, 255)}))
		local Text2 = nil
		if v.Cooldown then
			Text2 = Create("TextLabel")({Parent = bg, Size = ud(1, 0, 0.55, 0), Position = ud(0, 0, 0.45, 0), BackgroundTransparency = 1, Text = v.Current, Font = "Arial", TextScaled = true, TextColor3 = Color(255, 255, 255)})
		end
		local Part = Create("Part")({Anchored = true, CanCollide = false, FormFactor = "Custom", Size = vt(0.2, 0.2, 0.2), BrickColor = BrickColor.new("Dark blue"), Transparency = 0.4})
		NoOutline(Part)
		local Mesh = Create("SpecialMesh")({Scale = vt(0.0015, 0.0015, 0.0015), MeshId = "rbxassetid://494629509", Parent = Part})
		--local con = Module3D:Attach3D(bg, Part)
		--con:SetActive(true)
		--v.UI = {bg = bg, p = Part, con = con, Text = Text, Text2 = Text2}
	end
end--]]
updateUI = function(prop)
	
	if prop == "AbsoluteSize" then
		StatsOffset = Screen.AbsoluteSize.x / 10
		SkillsOffset = Screen.AbsoluteSize.x / 12
		StatsSize = 0
		SkillsSize = Screen.AbsoluteSize.y / 20
		print(StatsOffset, SkillsOffset)
		for i,v in ipairs(Skills) do
			local p = pi2 / #Skills * i + pi
			--v.UI.bg:TweenSizeAndPosition(ud(0, SkillsSize, 0, SkillsSize), (ud(0, cos(p) * SkillsOffset - SkillsSize / 2, 0, sin(p) * SkillsOffset - SkillsSize / 2)), nil, nil, 0.2, true)
		end
	end
end

Screen.Changed:connect(updateUI)
updateUI("AbsoluteSize")
print("Getting rig joints:")
local R = {}
getWeldsForRig = function(obj)
	
	for i,v in ipairs(obj) do
		if v:IsA("JointInstance") and v.Name:sub(1, 1) ~= "$" then
			local data = {D0 = v.C0, D1 = v.C1, P0 = v.Part0, P1 = v.Part1, W = v}
			local short = ""
			for c in v.Name:gmatch("%u+") do
				short = short .. c
			end
			R[short] = data
			print("- Joint got: " .. v.Name .. " in " .. v.Parent.Name .. " as \"" .. short .. "\"")
		end
		do
			do
				getWeldsForRig(v:GetChildren())
				-- DECOMPILER ERROR at PC54: LeaveBlock: unexpected jumping out DO_STMT

			end
		end
	end
end

getWeldsForRig(Character:GetChildren())
if R.R then
	R.RJ = R.R
end
a = function(j, c, t)
	
	return j:lerp(c, t)
end

a0 = function(j, c, t, d)
	
	if not d then
		j.W.C0 = a(j.W.C0, j.D0 * c, t)
	else
		j.W.C0 = a(j.W.C0, c, t)
	end
end

a1 = function(j, c, t, d)
	
	if not d then
		j.W.C1 = a(j.W.C1, j.D1 * c, t)
	else
		j.W.C1 = a(j.W.C1, c, t)
	end
end

anim = function(time, func)
	
	local bind = Create("BindableEvent")({})
	local total = 0
	local loop = nil
	loop = game:GetService("RunService").RenderStepped:connect(function(step)
		
		total = total + step
		func(step, total)
		if time and time <= total then
			loop:disconnect()
			bind:Fire()
		end
	end
)
	if time == nil then
		bind.Event:connect(function()
		
		loop:disconnect()
	end
)
	end
	return bind
end

phase = function(t, step)
	
	local b = t * step
	if b > 1 then
		b = 1
	end
	if b < 0 then
		b = 0
	end
	return b
end

local Anim = "Idle"
local time = 0
local CanLegs = true
local CanArms = true
local Debounce = false
game:GetService("RunService").RenderStepped:connect(function(step)
	
	time = time + step
	for i,v in pairs(Stats) do
		v:Update(step)
	end
	for i,v in ipairs(Skills) do
		v:Update(step)
		if v.RenderUpdate ~= nil then
			v:RenderUpdate(step)
		end
		--v.UI.con:SetCFrame(ang(time / 2, 0, time))
	end
end
)

  rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

game:GetService("RunService").RenderStepped:connect(function(step)
	
	if not Equipped then
		return 
	end
	local WalkVel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
	local JumpVel = RootPart.Velocity.y
	local FloorPart, FloorPos = ray(RootPart.Position, RootPart.CFrame * cf(0, -1, 0).p, 4)
      local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
      local velderp = RootPart.Velocity.y
      hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
	--[[if JumpVel > 1 and FloorPart == nil then
		Anim = "Jump"
	elseif JumpVel < -1 and FloorPart == nil then
		Anim = "Fall"
	elseif WalkVel < 1 and FloorPart ~= nil then
		Anim = "Idle"
	elseif WalkVel > 2 and WalkVel > 22 and FloorPart ~= nil then
		Anim = "Walk"
	end--]]
        if 1 < RootPart.Velocity.y and hitfloor == nil then
		Anim = "Jump"
	elseif RootPart.Velocity.y < -1 and hitfloor == nil then
		Anim = "Fall"
	elseif torvel < 1 and hitfloor ~= nil then
		Anim = "Idle"
	elseif 2 < torvel and torvel < 30 and hitfloor ~= nil then
		Anim = "Walk"
	end
	if Anim == "Walk" then
		local t = phase(10, step)
		if SwordEquipped == false then
			if CanLegs then
				a1(R.RH, cf(sin(time * 8 + 1) / 2, sin(time * 8 + 1) / 3, 0) * ang(0, 0, sin(time * 8) * 1.2), WalkVel / 120)
				a1(R.LH, cf(sin(time * 8 + 1) / 2, -sin(time * 8 + 1) / 3, 0) * ang(0, 0, sin(time * 8) * 1.2), WalkVel / 120)
			end
			if CanArms then
				a1(R.RS, cf(0, sin(time * 16) / 20, 0) * angles(0, 0, 0), t)
				a1(R.LS, cf(0, sin(time * 16) / 20, 0) * angles(0, 0, 0), t)
			end
			if not Debounce then
				a0(R.SW, cf(), t)
				a1(R.SW, cf(), t)
				a0(R.RS, cf(0, 0, 0) * ang(-0.1 - sin(time * 4) / 30, sin(time * 8) / 10, sin(time * 8)), WalkVel / 120)
				a0(R.LS, cf(0, 0, 0) * ang(-0.1 - sin(time * 4 + 1) / 30, sin(time * 8) / 10, sin(time * 8)), WalkVel / 120)
				a0(R.RH, cf(), t)
				a0(R.LH, cf(), t)
				a0(R.N, cf(), t)
				a0(R.RJ, cf(0, 0, sin(time * 16) / 20) * ang(0, 0, sin(time * 8) / 20), t)
				a1(R.N, cf() * ang(0.08 + sin(time * 4) / 30, 0, sin(time * 8) / 20), t)
				a1(R.RJ, cf() * ang(-0.1, 0, 0), t)
			end
		else
			if CanLegs then
				a1(R.RH, cf(sin(time * 8 + 1) / 2, sin(time * 8 + 1) / 3, 0) * ang(0, 0, sin(time * 8) * 1.2), WalkVel / 120)
				a1(R.LH, cf(sin(time * 8 + 1) / 2, -sin(time * 8 + 1) / 3, 0) * ang(0, 0, sin(time * 8) * 1.2), WalkVel / 120)
			end
			if CanArms then
				a1(R.RS, cf(0, sin(time) / 30, 0) * angles(0, 0, 0), t)
				a1(R.LS, cf(0, sin(time + 1) / 30, 0) * angles(0, 0, 0), t)
			end
			if not Debounce then
				a0(R.SW, cf(), t)
				a1(R.SW, cf() * ang(0, -0.1, -0.5), t)
				a0(R.RS, cf(0, 0, 0) * ang(-0.3, 0, -0.2), t)
				a0(R.LS, cf(0, 0, 0) * ang(-0.3, sin(time * 8) / 10, cos(time * 8)), WalkVel / 150)
				a0(R.RH, cf(0.1, -sin(time) / 30, 0) * ang(0, 0.35, 0), t)
				a0(R.LH, cf(0, -sin(time) / 30, 0) * ang(0, 0.4, 0), t)
				a0(R.N, cf(), t)
				a0(R.RJ, cf(0, 0, -0.1 + sin(time * 16) / 20) * ang(0, 0, -0.4), t)
				a1(R.N, cf() * ang(sin(time) / 40, 0, -0.4), t)
				a1(R.RJ, cf() * ang(-0.1, 0, 0), t)
			end
		end
	elseif Anim == "Idle" then
				local t = phase(10, step)
				if SwordEquipped == false then
					if CanLegs then
						a1(R.RH, cf(-0.2, -0.1, 0) * ang(0, 0.15, 0), t)
						a1(R.LH, cf(-0.2, 0, 0) * ang(0, -0.15, -0.1), t)
					end
					if CanArms then
						a1(R.RS, cf(0, sin(time) / 30, 0) * angles(0, 0, 0), t)
						a1(R.LS, cf(0, sin(time + 1) / 30, 0) * angles(0, 0, 0), t)
					end
					if not Debounce then
						a0(R.SW, cf(), t)
						a1(R.SW, cf(), t)
						a0(R.RS, cf(0, 0, 0) * ang(-0.1 - sin(time) / 30, 0, 0), t)
						a0(R.LS, cf(0, 0, 0) * ang(-0.1 - sin(time + 1) / 30, 0, 0), t)
						a0(R.RH, cf(0, -sin(time) / 30, 0), t)
						a0(R.LH, cf(0, -sin(time) / 30, 0), t)
						a0(R.N, cf(), t)
						a0(R.RJ, cf(0, 0, -0.1 + sin(time) / 30) * ang(0, 0, 0.1), t)
						a1(R.N, cf() * ang(sin(time) / 40, 0, 0.1), t)
						a1(R.RJ, cf() * ang(0, 0, 0), t)
					end
				else
					if CanLegs then
						a1(R.RH, cf(0.1, -0.1, 0) * ang(0, 0.15, 0.2), t)
						a1(R.LH, cf(0.5, -0.3, 0) * ang(0, -0.15, -0.2), t)
					end
					if CanArms then
						a1(R.RS, cf(0, sin(time) / 30, 0) * angles(0, 0, 0), t)
						a1(R.LS, cf(0, sin(time + 1) / 30, 0) * angles(0, 0, 0), t)
					end
					if not Debounce then
						a0(R.SW, cf(), t)
						a1(R.SW, cf() * ang(0, -0.1, 0.1), t)
						a0(R.RS, cf(0, 0, 0) * ang(-0.3, 0, 0.4), t)
						a0(R.LS, cf(0, 0, 0) * ang(-0.3, 0, -0.8 + cos(time) / 30), t)
						a0(R.RH, cf(0, -sin(time) / 30, 0), t)
						a0(R.LH, cf(0, -sin(time) / 30, 0), t)
						a0(R.N, cf(), t)
						a0(R.RJ, cf(0, 0, -0.3 + sin(time) / 30) * ang(0, 0, -0.4), t)
						a1(R.N, cf() * ang(sin(time) / 40, 0, -0.4), t)
						a1(R.RJ, cf() * ang(-0.1, 0, 0), t)
					end
				end
			elseif Anim == "Jump" then
						local t = phase(6, step)
						if CanLegs then
							a1(R.RH, cf(), t)
							a1(R.LH, cf(), t)
						end
						if CanArms then
							a1(R.RS, cf(0, 0, 0) * angles(0.2, 0, 1), t)
							a1(R.LS, cf(0, 0, 0) * angles(0.2, 0, -1), t)
						end
						if not Debounce then
							a0(R.RS, cf(0, 0, 0), t)
							a0(R.LS, cf(0, 0, 0), t)
							a0(R.RH, cf(0, 0, 0) * ang(-0.2, 0, -0.4), t)
							a0(R.LH, cf(0, 0, 0) * ang(-0.2, 0, 0.4), t)
							a0(R.N, cf(), t)
							a0(R.RJ, ang(-0.1, 0, 0), t)
							a1(R.N, cf() * ang(0.1, 0, 0), t)
							a1(R.RJ, cf() * ang(0, 0, 0), t)
						end
					elseif Anim == "Fall" then
								local t = phase(10, step)
								if CanLegs then
									a1(R.RH, cf(), t)
									a1(R.LH, cf(), t)
								end
								if CanArms then
									a1(R.RS, cf(0, 0, 0) * angles(0.2, 0, -0.5), t)
									a1(R.LS, cf(0, 0, 0) * angles(0.2, 0, 0.5), t)
								end
								if not Debounce then
									a0(R.RS, cf(0, 0, 0), t)
									a0(R.LS, cf(0, 0, 0), t)
									a0(R.RH, cf(0.6, 0.2, 0) * ang(0, 0, 0.4), t)
									a0(R.LH, cf(-0.3, 0.1, 0) * ang(-0.2, 0, -0.1), t)
									a0(R.N, cf(), t)
									a0(R.RJ, ang(0.3, 0, 0), t)
									a1(R.N, cf() * ang(-0.1, 0, 0), t)
									a1(R.RJ, cf() * ang(0, 0, 0), t)
								end
							end
						end
)
EquipSword = function()
	
	Debounce = true
	CanArms = false
	anim(0.2, function(step, total)
		
		local t = phase(20, step)
		a0(R.RS, cf(0.3, 0, -1.2) * ang(1.63, pi / 2, 0), t)
		a0(R.LS, cf(0, 0, 0) * ang(0, 0.2, 0.3), t)
		a0(R.RH, cf(0.2, -0.1, 0) * ang(0, 0, 0.2), t)
		a0(R.LH, cf(-0.1, 0.1, 0) * ang(-0.2, 0, -0.1), t)
		a0(R.N, cf(), t)
		a0(R.RJ, ang(0.1, 0, 0.2), t)
		a1(R.N, cf() * ang(-0.1, 0, 0), t)
		a1(R.RJ, cf() * ang(0, 0, 0), t)
		a1(R.RS, cf(0, 0, 0) * angles(0, 0, 0), t)
		a1(R.LS, cf(0, 0, 0) * angles(0, 0, 0), t)
	end
).Event:Wait()
	R.SW.W:Destroy()
	SW = Weld(RightArm, Handle)
	SW.Name = "Sword Weld"
	LC0 = SW.C0
	R.SW = {D0 = cf(0, -1, 0) * ang(0, pi / 2, 0), D1 = cf(0, 0, 0) * ang(pi / 2, 0, 0), P0 = SW.Part0, P1 = SW.Part1, W = SW}
	SwordSpeedDebuff = Stats.Speed:Add(nil, -0.4)
	anim(0.05, function(step, total)
		
		local t = phase(30, step)
		a0(R.SW, cf() * ang(), t)
		a1(R.SW, cf() * ang(0, 1.5, 0), t)
	end
).Event:Wait()
	anim(0.5, function(step, total)
		
		local t = phase(10, step)
		a0(R.SW, cf(0, 0, 0) * ang(-1, 0, 0), t)
		a1(R.SW, cf() * ang(0, 1.5, 0), t)
		a0(R.RS, cf(0.2, 0, 0) * ang(1.64, 1.5, 0), t)
		a0(R.LS, cf(0, 0, 0) * ang(-0.3, 0, 0), t)
		a0(R.RH, cf(0.2, -0.1, 0) * ang(0, 0, 0.1), t)
		a0(R.LH, cf(-0.1, 0.1, 0) * ang(0, 0.2, -0.1), t)
		a0(R.N, cf(), t)
		a0(R.RJ, ang(0.1, 0, -0.2), t)
		a1(R.N, cf() * ang(0, 0, -0.3), t)
		a1(R.RJ, cf() * ang(0, 0, 0), t)
		a1(R.RS, cf(0, 0, 0) * angles(3.1, 0, 0), t)
		a1(R.LS, cf(0, 0, 0) * angles(0, 0, 0), t)
	end
).Event:Wait()
	SwordEquipped = true
	Debounce = false
	CanArms = true
end

UnequipSword = function()
	
	Debounce = true
	CanArms = false
	anim(0.3, function(step, total)
		
		local t = phase(20, step)
		a0(R.SW, LC0, t, true)
		a1(R.SW, LC1, t, true)
		a0(R.RS, cf(0.3, 0, -1.2) * ang(1.63, pi / 2, 0), t)
		a0(R.LS, cf(0, 0, 0), t)
		a0(R.RH, cf(0.2, -0.1, 0) * ang(0, 0, 0.2), t)
		a0(R.LH, cf(-0.1, 0.1, 0) * ang(-0.2, 0, -0.1), t)
		a0(R.N, cf(), t)
		a0(R.RJ, ang(0.1, 0, -0.2), t)
		a1(R.N, cf() * ang(-0.1, 0, 0), t)
		a1(R.RJ, cf() * ang(0, 0, 0), t)
		a1(R.RS, cf(0, 0, 0) * angles(0, 0, 0), t)
		a1(R.LS, cf(0, 0, 0) * angles(0, 0, 0), t)
	end
).Event:Wait()
	R.SW.W:Destroy()
	SW = Weld(Torso, Handle)
	R.SW = {D0 = EC0, D1 = EC1, P0 = SW.Part0, P1 = SW.Part1, W = SW}
	SwordSpeedDebuff:Destroy()
	SwordEquipped = false
	Debounce = false
	CanArms = true
end

Equip = function()
	
	Debounce = true
	CanLegs = false
	CanArms = false
	Equipped = true
	AnimScript.Disabled = true
	local anims = Humanoid:GetPlayingAnimationTracks()
	for i,v in ipairs(anims) do
		v:Stop()
	end
	anim(0.1, function(step, total)
		
		local t = phase(20, step)
		a0(R.RS, cf(), t)
		a0(R.LS, cf(), t)
		a0(R.RH, cf(), t)
		a0(R.LH, cf(), t)
		a0(R.N, cf(), t)
		a0(R.RJ, cf(), t)
		a1(R.RS, cf(), t)
		a1(R.LS, cf(), t)
		a1(R.RH, cf(), t)
		a1(R.LH, cf(), t)
		a1(R.N, cf(), t)
		a1(R.RJ, cf(), t)
	end
).Event:Wait()
	Debounce = false
	CanLegs = true
	CanArms = true
end

Unequip = function()
	
	Debounce = true
	CanLegs = false
	CanArms = false
	Equipped = false
	AnimScript.Disabled = false
	anim(0.2, function(step, total)
		
		local t = phase(20, step)
		a0(R.RS, cf(), t)
		a0(R.LS, cf(), t)
		a0(R.RH, cf(), t)
		a0(R.LH, cf(), t)
		a0(R.N, cf(), t)
		a0(R.RJ, cf(), t)
		a1(R.RS, cf(), t)
		a1(R.LS, cf(), t)
		a1(R.RH, cf(), t)
		a1(R.LH, cf(), t)
		a1(R.N, cf(), t)
		a1(R.RJ, cf(), t)
	end
).Event:Wait()
	Debounce = false
	CanLegs = true
	CanArms = true
end

local UIS = game:GetService("UserInputService")
local InputHooks = {}
UIS.InputBegan:connect(function(input, gp)
	
	if gp then
		return 
	end
	local key = input.KeyCode
	if key == Enum.KeyCode.F and Debounce == false then
		if Equipped then
			print("Unequipping")
			if SwordEquipped then
				UnequipSword()
			end
			Unequip()
		else
			print("Equipping")
			Equip()
		end
	end
	if not Equipped then
		return 
	end
	for i,v in ipairs(InputHooks) do
		if v.Type == "InputBegan" and (Debounce == false or Debounce ~= true or v.DebounceOverride == true) and v.Key == key then
			v.Hook(input)
		end
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 and M1 then
		M1:Begin()
	end
end
)
UIS.InputEnded:connect(function(input, gp)
	
	if gp then
		return 
	end
	local key = input.KeyCode
	if not Equipped then
		return 
	end
	for i,v in ipairs(InputHooks) do
		if v.Type == "InputEnded" and (Debounce == false or Debounce ~= true or v.DebounceOverride == true) and v.Key == key then
			v.Hook(input)
		end
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 and M1 then
		M1:End()
	end
end
)
addInputHook = function(type, key, hook, override)
	
	local data = {Type = type, Key = key, Hook = hook, DebounceOverride = override}
	table.insert(InputHooks, data)
end

local M1 = {}
M1.EndEvent = Create("BindableEvent")
M1.Begin = function(self)
	
	if Equipped == false or Debounce then
		return 
	end
	if SwordEquipped == false then
	end
end

M1.End = function(self)
	
	if Equipped == false then
		return 
	end
	self.EndEvent:Fire()
end

local E = getSkill(Enum.KeyCode.E)
E.Fire = function()
	
	print("E")
	if E:Use() then
		if SwordEquipped then
			UnequipSword()
		else
			EquipSword()
		end
	end
end

addInputHook("InputBegan", E.Key, E.Fire)
local Z = getSkill(Enum.KeyCode.Z)
Z.Charging = Create("BindableEvent")({})
Z.IsReady = false
Z.Charge = function()
	
	print("Z Start")
	if Z:CanUse() == false or E:CanUse() == false and SwordEquipped == false then
		return 
	end
	Z.HasStarted = true
	if SwordEquipped == false then
		E.Fire()
	end
	Debounce = true
	CanArms = false
	local SpeedDebuff = Stats.Speed:Add(nil, -0.3)
	local loop = anim(nil, function(step, total)
		
		local t = phase(20, step)
		a0(R.SW, cf(0, -0.5, -0.7) * ang(0, 1.4, -0.5), t)
		a1(R.SW, cf(0, 0, 0) * ang(0.4, -0.3, 0), t)
		a0(R.RS, cf(0, 0, 0) * ang(0, 0.5, pi / 2), t)
		a0(R.LS, cf(-0.5, 0, 0) * ang(0, -0.7, -pi / 2), t)
		a0(R.RH, cf(0, 0, 0) * ang(0, 0.3, 0), t)
		a0(R.LH, cf(0, 0, 0) * ang(0, 0.5, 0), t)
		a0(R.N, cf(), t)
		a0(R.RJ, ang(0, 0, -1.3), t)
		a1(R.N, cf() * ang(0, 0, -1), t)
		a1(R.RJ, cf(0, 0, 0.1) * ang(-0.1, 0, 0), t)
		a1(R.RS, cf(0, 0, 0) * angles(0, 0, 0), t)
		a1(R.LS, cf(0, 0, 0) * angles(0, 0, 0), t)
	end
)
	wait(0.5)
	Z.IsReady = true
	Z.Charging.Event:Wait()
	Z.HasStarted = false
	Z.IsReady = false
	loop:Fire()
	Z:Use()
	SpeedDebuff:Destroy()
	SpeedDebuff = Stats.Speed:Add(nil, -math.huge)
	CanLegs = false
	anim(0.4, function(step, total)
		
		local t = phase(15, step)
		a0(R.SW, cf(0, -0.5, -0.7) * ang(0, 1.4, -0.5), t)
		a1(R.SW, cf(0, 0, 0) * ang(0.4, -0.3, 0), t)
		a0(R.RS, cf(0, 0, 0) * ang(0, 0.5, pi / 2 - 0.2), t)
		a0(R.LS, cf(-0.5, 0, 0) * ang(0, -0.7, -pi / 2 + 0.2), t)
		a0(R.RH, cf(0, 0, 0) * ang(0, 0.3, 0), t)
		a0(R.LH, cf(0, 0, 0) * ang(0, 0.5, 0), t)
		a0(R.N, cf(), t)
		a0(R.RJ, ang(0, 0, 1.5), t)
		a1(R.N, cf() * ang(0, 0, 1), t)
		a1(R.RJ, cf(0, 0, 0.1) * ang(-0.1, 0, 0), t)
		a1(R.RS, cf(0, 0, 0) * angles(0, 0, 0), t)
		a1(R.LS, cf(0, 0, 0) * angles(0, 0, 0), t)
		a1(R.RH, cf(-0.5, -0.2, 0) * ang(0, 0.3, 0.2), t)
		a1(R.LH, cf(-0.5, 0.1, 0) * ang(0, -0.15, -0.4), t)
	end
).Event:Wait()
	SpeedDebuff:Destroy()
	Debounce = false
	CanLegs = true
	CanArms = true
end

Z.EndCharge = function()
	
	print("Z End")
	if Z.HasStarted == false then
		return 
	end
	while SwordEquipped == false do
		wait()
	end
	while Z.IsReady == false do
		wait()
	end
	Z.Charging:Fire()
end

addInputHook("InputBegan", Z.Key, Z.Charge)
addInputHook("InputEnded", Z.Key, Z.EndCharge, true)
_G.Stats = Stats
