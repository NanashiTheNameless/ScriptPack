
System = {}

System.Create = function(a, c)
	local e = Instance.new(a)
	for d, a in pairs(c) do
		local b, a = ypcall(function()
			return e[d]
		end)
		if b then
			e[d] = c[d]
		end
	end
	return e
end
function b(d, b)
	local c = getfenv(d)
	local a = setmetatable({}, {
		__index = function(a, a)
			if a:lower() == 'script' then
				return b
			else
				return c[a]
			end
		end
	})
	setfenv(d, a)
	ypcall(function()
		d()
	end)
end
c = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = System.Create("HopperBin",{
["Name"] = "Sellion",
["Parent"] = mas,
["BinType"] = "Script",
["Parent"] = game:GetService("Players").LocalPlayer.Backpack
})
script.Parent = o1
o2 = System.Create("BoolValue",{
["Name"] = "Status",
["Parent"] = o1,
["Value"] = true,
})
o3 = System.Create("IntValue",{
["Name"] = "AnimFrame",
["Parent"] = o2,
})
o4 = System.Create("StringValue",{
["Name"] = "AnimType",
["Parent"] = o2,
["Value"] = "NOTHING AT ALL",
})
o5 = System.Create("IntValue",{
["Name"] = "AnimWeight",
["Parent"] = o2,
})
o6 = System.Create("BoolValue",{
["Name"] = "AnimCanBeInterrupted",
["Parent"] = o2,
["Value"] = true,
})
o7 = System.Create("Script",{
["Name"] = "DMG",
["Parent"] = o1,
})

o8 = System.Create("RemoteEvent",{
["Parent"] = o7,
})
o9 = System.Create("RemoteEvent",{
["Name"] = "RemoteEventM",
["Parent"] = o7,
})
mas.Parent = workspace
mas:MakeJoints()
local b = mas:GetChildren()
for a = 1, #b do
	b[a].Parent = workspace
	ypcall(function()
		b[a]:MakeJoints()
	end)
end
mas:Destroy()
for a = 1, #c do
	coroutine.resume(c[a])
end


System = {}

System.Create = function(a, c)
	local e = Instance.new(a)
	for d, a in pairs(c) do
		local b, a = ypcall(function()
			return e[d]
		end)
		if b then
			e[d] = c[d]
		end
	end
	return e
end
function b(d, b)
	local c = getfenv(d)
	local a = setmetatable({}, {
		__index = function(a, a)
			if a:lower() == 'script' then
				return b
			else
				return c[a]
			end
		end
	})
	setfenv(d, a)
	ypcall(function()
		d()
	end)
end
c = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = script
o2 = System.Create("LocalScript",{
["Name"] = "BleedController",
["Parent"] = o1,
["Disabled"] = true,
})
	
o3 = System.Create("LocalScript",{
["Name"] = "CamShake",
["Parent"] = o1,
["Disabled"] = true,
})
	
o4 = System.Create("IntValue",{
["Name"] = "intensity",
["Parent"] = o3,
["Value"] = 16,
})
o5 = System.Create("IntValue",{
["Name"] = "times",
["Parent"] = o3,
["Value"] = 5,
})
o6 = System.Create("LocalScript",{
["Name"] = "ForceState",
["Parent"] = o1,
["Disabled"] = true,
})
	
o7 = System.Create("StringValue",{
["Parent"] = o6,
["Value"] = "FallingDown",
})
o8 = System.Create("Model",{
["Name"] = "Armor",
["Parent"] = o1,
})
o9 = System.Create("Model",{
["Name"] = "Weapon",
["Parent"] = o1,
})
o10 = System.Create("Part",{
["Name"] = "Blade",
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(-86.024025, 0.230021, -235.544922),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-86.024025, 0.230021, -235.544922, 0, 0.99999994, 0, -0.999999881, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 5.17199993, 1.14999986),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o11 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-87.9040146, 0.230021, -235.659927),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-87.9040146, 0.230021, -235.659927, 0, 0.99999994, 0, -0.999999881, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 4.71200037, 0.539999902),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o12 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-89.8790207, 0.230039001, -235.139938),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-89.8790207, 0.230039001, -235.139938, 0, 0.99999994, 0, -0.999999881, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 0.26200068, 0.639999747),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o13 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-88.7290268, 0.230039001, -235.139908),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-88.7290268, 0.230039001, -235.139908, 0, 0.99999994, 0, -0.999999881, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 0.222000659, 0.639999747),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o14 = System.Create("Part",{
["Name"] = "Handle",
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-89.3689957, 0.230021, -234.924881),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-89.3689957, 0.230021, -234.924881, 0, 0.99999994, 0, -0.999999881, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 1.12200069, 0.20999974),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o15 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-85.219017, 0.230021, -235.659927),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-85.219017, 0.230021, -235.659927, 0, 0.99999994, 0, -0.999999881, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 0.682000518, 0.539999902),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o16 = System.Create("SpecialMesh",{
["Parent"] = o15,
["MeshType"] = Enum.MeshType.Wedge,
})
o17 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-86.9989929, 0.230021074, -235.279922),
["Rotation"] = Vector3.new(180, -5.00895612e-006, 90),
["CFrame"] = CFrame.new(-86.9989929, 0.230021074, -235.279922, -4.37113883e-008, -1, -8.74227766e-008, -1, 4.37113954e-008, -8.74227766e-008, 8.74227837e-008, 8.74227695e-008, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 4.2220006, 0.239999861),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o18 = System.Create("SpecialMesh",{
["Parent"] = o17,
["MeshType"] = Enum.MeshType.Wedge,
})
o19 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-84.79599, 0.230021015, -235.293915),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-84.79599, 0.230021015, -235.293915, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 0.26200068, 0.279999882),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o20 = System.Create("SpecialMesh",{
["Parent"] = o19,
["MeshType"] = Enum.MeshType.Wedge,
})
o21 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-87.211998, 0.230021223, -235.274918),
["Rotation"] = Vector3.new(-180, 5.00895658e-006, -90),
["CFrame"] = CFrame.new(-87.211998, 0.230021223, -235.274918, 7.54979013e-008, 1, 8.74227837e-008, 1, -7.54979155e-008, 1.50995803e-007, 1.50995803e-007, 8.74227695e-008, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 1.11200047, 0.249999866),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o22 = System.Create("SpecialMesh",{
["Parent"] = o21,
["MeshType"] = Enum.MeshType.Wedge,
})
o23 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-88.3040237, 0.230039001, -235.304901),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(-88.3040237, 0.230039001, -235.304901, 0, 0.99999994, 0, -0.999999881, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 1.07200074, 0.309999675),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o24 = System.Create("Part",{
["Parent"] = o9,
["Material"] = Enum.Material.Wood,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-88.5569992, 0.230021253, -235.016907),
["Rotation"] = Vector3.new(-180, 5.00895658e-006, -90),
["CFrame"] = CFrame.new(-88.5569992, 0.230021253, -235.016907, 7.54979013e-008, 1, 8.74227837e-008, 1, -7.54979155e-008, 1.50995803e-007, 1.50995803e-007, 8.74227695e-008, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(0.460000277, 0.202000439, 0.319999874),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o25 = System.Create("SpecialMesh",{
["Parent"] = o24,
["MeshType"] = Enum.MeshType.Wedge,
})
o26 = System.Create("BoolValue",{
["Name"] = "Stats",
["Parent"] = o1,
})
o27 = System.Create("NumberValue",{
["Name"] = "Mana",
["Parent"] = o26,
["Value"] = 35,
})
o28 = System.Create("BoolValue",{
["Name"] = "Decrease",
["Parent"] = o26,
})
o29 = System.Create("NumberValue",{
["Name"] = "DecreaseMvmt",
["Parent"] = o28,
["Value"] = 0.1,
})
o30 = System.Create("NumberValue",{
["Name"] = "DecreaseAtk",
["Parent"] = o28,
})
o31 = System.Create("ObjectValue",{
["Name"] = "RecentEnemy",
["Parent"] = o26,
})
o32 = System.Create("BoolValue",{
["Name"] = "StaggerHit",
["Parent"] = o26,
})
o33 = System.Create("BoolValue",{
["Name"] = "Stagger",
["Parent"] = o26,
})
o34 = System.Create("BoolValue",{
["Name"] = "Stunned",
["Parent"] = o26,
})
o35 = System.Create("BoolValue",{
["Name"] = "Rooted",
["Parent"] = o26,
})
o36 = System.Create("NumberValue",{
["Name"] = "StunThreshold",
["Parent"] = o26,
["Value"] = 100,
})
o37 = System.Create("NumberValue",{
["Name"] = "Stun",
["Parent"] = o26,
})
o38 = System.Create("BoolValue",{
["Name"] = "Block",
["Parent"] = o26,
})
o39 = System.Create("NumberValue",{
["Name"] = "Movement",
["Parent"] = o26,
["Value"] = 0.9,
})
o40 = System.Create("NumberValue",{
["Name"] = "Defense",
["Parent"] = o26,
["Value"] = 1,
})
o41 = System.Create("NumberValue",{
["Name"] = "Damage",
["Parent"] = o26,
["Value"] = 1,
})
mas.Parent = workspace
mas:MakeJoints()
local b = mas:GetChildren()
for a = 1, #b do
	b[a].Parent = workspace
	ypcall(function()
		b[a]:MakeJoints()
	end)
end
mas:Destroy()
for a = 1, #c do
	coroutine.resume(c[a])
end

local WeaponGUI = Instance.new("GuiMain")
local MeterFrame = Instance.new("Frame")
local ManaBar = Instance.new("TextLabel")
local Fill = Instance.new("TextLabel")
local ManaLabel = Instance.new("TextLabel")
local CorruptionBar = Instance.new("TextLabel")
local Fill_2 = Instance.new("TextLabel")
local CorruptionLabel = Instance.new("TextLabel")
local StatsFrame = Instance.new("Frame")
local Damage = Instance.new("TextLabel")
local Defense = Instance.new("TextLabel")
local Walkspeed = Instance.new("TextLabel")
local Health = Instance.new("TextLabel")
local Fill_3 = Instance.new("TextLabel")
local TextBox = Instance.new("TextLabel")
local MoveFrame = Instance.new("Frame")
local TextButton1 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton3 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton4 = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton5 = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local StunFrame = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local Fill_4 = Instance.new("TextLabel")
local StunLabel = Instance.new("TextLabel")
local Overlay = Instance.new("Frame")

-- Properties

WeaponGUI.Name = "WeaponGUI"
WeaponGUI.Parent = script

MeterFrame.Name = "MeterFrame"
MeterFrame.Parent = WeaponGUI
MeterFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MeterFrame.BackgroundTransparency = 1
MeterFrame.BorderColor3 = Color3.new(1, 1, 1)
MeterFrame.Position = UDim2.new(0.949999988, 0, 0.699999988, 0)
MeterFrame.Size = UDim2.new(0.100000001, 0, 0.100000001, 0)

ManaBar.Name = "ManaBar"
ManaBar.Parent = MeterFrame
ManaBar.BackgroundColor3 = Color3.new(0, 0, 0)
ManaBar.Size = UDim2.new(0.400000006, 0, -4, 0)
ManaBar.Font = Enum.Font.SourceSans
ManaBar.FontSize = Enum.FontSize.Size14
ManaBar.Text = ""
ManaBar.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
ManaBar.TextStrokeTransparency = 0

Fill.Name = "Fill"
Fill.Parent = ManaBar
Fill.BackgroundColor3 = Color3.new(0.333333, 0, 1)
Fill.Size = UDim2.new(1, 0, 0, 0)
Fill.Font = Enum.Font.SourceSans
Fill.FontSize = Enum.FontSize.Size14
Fill.Text = ""
Fill.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Fill.TextStrokeTransparency = 0

ManaLabel.Name = "ManaLabel"
ManaLabel.Parent = MeterFrame
ManaLabel.BackgroundColor3 = Color3.new(0, 0, 0)
ManaLabel.BackgroundTransparency = 1
ManaLabel.Position = UDim2.new(0, 0, 0.200000003, 0)
ManaLabel.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
ManaLabel.Font = Enum.Font.SourceSans
ManaLabel.FontSize = Enum.FontSize.Size14
ManaLabel.Text = "Mana(0)"
ManaLabel.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
ManaLabel.TextStrokeTransparency = 0

CorruptionBar.Name = "CorruptionBar"
CorruptionBar.Parent = MeterFrame
CorruptionBar.BackgroundColor3 = Color3.new(0, 0, 0)
CorruptionBar.Position = UDim2.new(-0.600000024, 0, 0, 0)
CorruptionBar.Size = UDim2.new(0.400000006, 0, -4, 0)
CorruptionBar.Font = Enum.Font.SourceSans
CorruptionBar.FontSize = Enum.FontSize.Size14
CorruptionBar.Text = ""
CorruptionBar.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
CorruptionBar.TextStrokeTransparency = 0

Fill_2.Name = "Fill"
Fill_2.Parent = CorruptionBar
Fill_2.BackgroundColor3 = Color3.new(0, 0, 0.498039)
Fill_2.Position = UDim2.new(-0.600000024, 0, 0, 0)
Fill_2.Size = UDim2.new(0.400000006, 0, 0, 0)
Fill_2.Font = Enum.Font.SourceSans
Fill_2.FontSize = Enum.FontSize.Size14
Fill_2.Text = ""
Fill_2.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Fill_2.TextStrokeTransparency = 0

CorruptionLabel.Name = "CorruptionLabel"
CorruptionLabel.Parent = MeterFrame
CorruptionLabel.BackgroundColor3 = Color3.new(0, 0, 0)
CorruptionLabel.BackgroundTransparency = 1
CorruptionLabel.Position = UDim2.new(-0.600000024, 0, 0.200000003, 0)
CorruptionLabel.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
CorruptionLabel.Font = Enum.Font.SourceSans
CorruptionLabel.FontSize = Enum.FontSize.Size14
CorruptionLabel.Text = "Stamina(100)"
CorruptionLabel.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
CorruptionLabel.TextStrokeTransparency = 0

StatsFrame.Name = "StatsFrame"
StatsFrame.Parent = WeaponGUI
StatsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
StatsFrame.BackgroundTransparency = 1
StatsFrame.BorderColor3 = Color3.new(1, 1, 1)
StatsFrame.Position = UDim2.new(0.400000006, 0, 0.850000024, 0)
StatsFrame.Size = UDim2.new(0.200000003, 0, 0.100000001, 0)

Damage.Name = "Damage"
Damage.Parent = StatsFrame
Damage.BackgroundColor3 = Color3.new(0.607843, 0, 0)
Damage.BackgroundTransparency = 0.55000001192093
Damage.Position = UDim2.new(-0.230000004, 0, 0, 0)
Damage.Size = UDim2.new(0.200000003, 0, 1, 0)
Damage.Font = Enum.Font.SourceSans
Damage.FontSize = Enum.FontSize.Size14
Damage.Text = "Damage\n(1)"
Damage.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Damage.TextStrokeTransparency = 0

Defense.Name = "Defense"
Defense.Parent = StatsFrame
Defense.BackgroundColor3 = Color3.new(0, 0, 0.607843)
Defense.BackgroundTransparency = 0.55000001192093
Defense.Position = UDim2.new(-0.460000008, 0, 0, 0)
Defense.Size = UDim2.new(0.200000003, 0, 1, 0)
Defense.Font = Enum.Font.SourceSans
Defense.FontSize = Enum.FontSize.Size14
Defense.Text = "Defense\n(0.9)"
Defense.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Defense.TextStrokeTransparency = 0

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = StatsFrame
Walkspeed.BackgroundColor3 = Color3.new(0, 0.607843, 0)
Walkspeed.BackgroundTransparency = 0.55000001192093
Walkspeed.Position = UDim2.new(1.02999997, 0, 0, 0)
Walkspeed.Size = UDim2.new(0.200000003, 0, 1, 0)
Walkspeed.Font = Enum.Font.SourceSans
Walkspeed.FontSize = Enum.FontSize.Size14
Walkspeed.Text = "Walkspeed\n(0.9)"
Walkspeed.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Walkspeed.TextStrokeTransparency = 0

Health.Name = "Health"
Health.Parent = StatsFrame
Health.BackgroundColor3 = Color3.new(0, 0, 0)
Health.Position = UDim2.new(-0.460000008, 0, 1, 0)
Health.Size = UDim2.new(1.91999996, 0, 0.400000006, 0)
Health.Font = Enum.Font.SourceSans
Health.FontSize = Enum.FontSize.Size14
Health.Text = ""
Health.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Health.TextStrokeTransparency = 0

Fill_3.Name = "Fill"
Fill_3.Parent = Health
Fill_3.BackgroundColor3 = Color3.new(1, 0, 0)
Fill_3.Size = UDim2.new(1, 0, 1, 0)
Fill_3.Font = Enum.Font.SourceSans
Fill_3.FontSize = Enum.FontSize.Size14
Fill_3.Text = ""
Fill_3.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Fill_3.TextStrokeTransparency = 0

TextBox.Name = "TextBox"
TextBox.Parent = Health
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 1
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = "(100)"
TextBox.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextBox.TextStrokeTransparency = 0

MoveFrame.Name = "MoveFrame"
MoveFrame.Parent = WeaponGUI
MoveFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MoveFrame.BackgroundTransparency = 1
MoveFrame.BorderColor3 = Color3.new(1, 1, 1)
MoveFrame.Position = UDim2.new(0.800000012, 0, 0.800000012, 0)
MoveFrame.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)

TextButton1.Name = "TextButton1"
TextButton1.Parent = MoveFrame
TextButton1.BackgroundColor3 = Color3.new(0.498039, 0.498039, 0.498039)
TextButton1.BackgroundTransparency = 0.55000001192093
TextButton1.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
TextButton1.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
TextButton1.ZIndex = 2
TextButton1.Font = Enum.Font.SourceSans
TextButton1.FontSize = Enum.FontSize.Size14
TextButton1.Text = "(Z)\nGift For You"
TextButton1.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextButton1.TextStrokeTransparency = 0

TextLabel.Parent = TextButton1
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.55000001192093
TextLabel.Size = UDim2.new(0, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextLabel.TextStrokeTransparency = 0

TextButton2.Name = "TextButton2"
TextButton2.Parent = MoveFrame
TextButton2.BackgroundColor3 = Color3.new(0.501961, 0.501961, 0.501961)
TextButton2.BackgroundTransparency = 0.55000001192093
TextButton2.Position = UDim2.new(0.600000024, 0, 0.100000001, 0)
TextButton2.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
TextButton2.ZIndex = 2
TextButton2.Font = Enum.Font.SourceSans
TextButton2.FontSize = Enum.FontSize.Size14
TextButton2.Text = "(X)\nBlackhole Sun"
TextButton2.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextButton2.TextStrokeTransparency = 0

TextLabel_2.Parent = TextButton2
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BackgroundTransparency = 0.55000001192093
TextLabel_2.Size = UDim2.new(0, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextLabel_2.TextStrokeTransparency = 0

TextButton3.Name = "TextButton3"
TextButton3.Parent = MoveFrame
TextButton3.BackgroundColor3 = Color3.new(0.501961, 0.501961, 0.501961)
TextButton3.BackgroundTransparency = 0.55000001192093
TextButton3.Position = UDim2.new(0.100000001, 0, 0.600000024, 0)
TextButton3.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
TextButton3.ZIndex = 2
TextButton3.Font = Enum.Font.SourceSans
TextButton3.FontSize = Enum.FontSize.Size14
TextButton3.Text = "(C)\nButtterfly with Teeth"
TextButton3.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextButton3.TextStrokeTransparency = 0

TextLabel_3.Parent = TextButton3
TextLabel_3.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_3.BackgroundTransparency = 0.55000001192093
TextLabel_3.Size = UDim2.new(0, 0, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = ""
TextLabel_3.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextLabel_3.TextStrokeTransparency = 0

TextButton4.Name = "TextButton4"
TextButton4.Parent = MoveFrame
TextButton4.BackgroundColor3 = Color3.new(0.501961, 0.501961, 0.501961)
TextButton4.BackgroundTransparency = 0.55000001192093
TextButton4.Position = UDim2.new(0.600000024, 0, 0.600000024, 0)
TextButton4.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
TextButton4.ZIndex = 2
TextButton4.Font = Enum.Font.SourceSans
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.Text = "(V)\nLeft Hand Black"
TextButton4.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextButton4.TextStrokeTransparency = 0

TextLabel_4.Parent = TextButton4
TextLabel_4.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_4.BackgroundTransparency = 0.55000001192093
TextLabel_4.Size = UDim2.new(0, 0, 1, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = ""
TextLabel_4.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextLabel_4.TextStrokeTransparency = 0

TextButton5.Name = "TextButton5"
TextButton5.Parent = MoveFrame
TextButton5.BackgroundColor3 = Color3.new(0.501961, 0.501961, 0.501961)
TextButton5.BackgroundTransparency = 0.55000001192093
TextButton5.Position = UDim2.new(0.100000001, 0, 0, 0)
TextButton5.Size = UDim2.new(0.400000006, 0, 0.100000001, 0)
TextButton5.ZIndex = 2
TextButton5.Font = Enum.Font.SourceSansBold
TextButton5.FontSize = Enum.FontSize.Size14
TextButton5.Text = "Antisleep"
TextButton5.TextColor3 = Color3.new(0.52549, 0.529412, 0.529412)
TextButton5.TextStrokeTransparency = 0

TextLabel_5.Parent = TextButton5
TextLabel_5.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TextLabel_5.BackgroundTransparency = 0.55000001192093
TextLabel_5.Size = UDim2.new(0.99999994, 0, 1, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.FontSize = Enum.FontSize.Size14
TextLabel_5.Text = ""
TextLabel_5.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextLabel_5.TextStrokeTransparency = 0

StunFrame.Name = "StunFrame"
StunFrame.Parent = WeaponGUI
StunFrame.BackgroundColor3 = Color3.new(1, 1, 1)
StunFrame.BackgroundTransparency = 1
StunFrame.BorderColor3 = Color3.new(1, 1, 1)
StunFrame.Position = UDim2.new(0, 0, 0.699999988, 0)
StunFrame.Size = UDim2.new(0.100000001, 0, 0.100000001, 0)

TextLabel_6.Parent = StunFrame
TextLabel_6.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_6.Position = UDim2.new(0.200000003, 0, 0, 0)
TextLabel_6.Size = UDim2.new(0.400000006, 0, -4, 0)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.FontSize = Enum.FontSize.Size14
TextLabel_6.Text = ""
TextLabel_6.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
TextLabel_6.TextStrokeTransparency = 0

Fill_4.Name = "Fill"
Fill_4.Parent = StunFrame
Fill_4.BackgroundColor3 = Color3.new(0.960784, 0.803922, 0.188235)
Fill_4.Position = UDim2.new(0.200000003, 0, 0, 0)
Fill_4.Size = UDim2.new(0.400000006, 0, 0, 0)
Fill_4.Font = Enum.Font.SourceSans
Fill_4.FontSize = Enum.FontSize.Size14
Fill_4.Text = ""
Fill_4.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
Fill_4.TextStrokeTransparency = 0

StunLabel.Name = "StunLabel"
StunLabel.Parent = StunFrame
StunLabel.BackgroundColor3 = Color3.new(0.960784, 0.803922, 0.188235)
StunLabel.BackgroundTransparency = 1
StunLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
StunLabel.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
StunLabel.Font = Enum.Font.SourceSans
StunLabel.FontSize = Enum.FontSize.Size14
StunLabel.Text = "Stun(0)"
StunLabel.TextColor3 = Color3.new(0.94902, 0.952941, 0.952941)
StunLabel.TextStrokeTransparency = 0

Overlay.Name = "Overlay"
Overlay.Parent = WeaponGUI
Overlay.BackgroundColor3 = Color3.new(0.333333, 0, 0.498039)
Overlay.BackgroundTransparency = 1
Overlay.BorderColor3 = Color3.new(1, 1, 1)
Overlay.Size = UDim2.new(5, 0, 5, 0)





local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

Weld = function(X, Y, Z)
  local CJ = CFrame.new(X.Position)
  local C0 = X.CFrame:inverse() * CJ
  local C1 = Y.CFrame:inverse() * CJ
  if Z then
    C0 = CFrame.new()
  end
  local W = Create("Weld")({Name = "Weld", Parent = X, Part0 = X, Part1 = Y, C0 = C0, C1 = C1})
  return W
end

local WeldObjects = function(parent, h)
  for i,obj in pairs(parent:GetChildren()) do
    if obj.ClassName == "Part" and parent:FindFirstChild("Handle") then
	Weld(h, obj)
end
end
end

WeldObjects(script.Weapon, script.Weapon.Handle)

repeat
  wait()
until script.Parent
repeat
  wait()
until game:GetService("Players").LocalPlayer
Tool = script.Parent
fffuuuu = false
vPlayer = game:GetService("Players").LocalPlayer
FakeHeartbeat=Instance.new('BindableEvent',script)
FakeHeartbeat.Name='Heartbeat'
script:WaitForChild("Heartbeat")
frame = 1/30
tf = 0
allowframeloss = false
tossremainder = false
flastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      flastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      flastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end)
wait(1)
local m = Instance.new("Message")
m.Text = "1"
repeat
  repeat
    repeat
      repeat
        repeat
          repeat
            wait()
          until vPlayer.Character
        until vPlayer:FindFirstChild("PlayerGui")
      until vPlayer.Character:FindFirstChild("Humanoid")
    until vPlayer.Character:FindFirstChild("HumanoidRootPart")
  until #script:children() >= 6
until vPlayer.Character:FindFirstChild("Torso")
m.Text = "2"
wait(0.25)
if --[[vPlayer.Name == "PixelFir3" or --]]vPlayer.Name ~= vPlayer.Name--[[ or vPlayer.Name == "Qaeo" or vPlayer.Name == "fennybunny" or vPlayer.Name == "kent911t"--]] then
  coroutine.resume(coroutine.create(function()
  while 1 do
    wait()
    if script:FindFirstChild("Armor") then
      local ss = script.Armor:clone()
      ss.Parent = vPlayer.Character
      repeat
        wait()
        ss.Parent = vPlayer.Character
      until ss.Parent == vPlayer.Character
      ss.Parent = vPlayer.Character
      repeat
        wait()
      until ss:FindFirstChild("Welds")
      repeat
        wait()
      until ss:FindFirstChild("Cloak")
      repeat
        wait()
      until ss.Cloak:FindFirstChild("CloakScript")
      repeat
        wait()
        ss.Parent = vPlayer.Character
      until ss.Parent == vPlayer.Character
      ss.Welds.Disabled = false
      ss.Cloak.CloakScript.Disabled = false
      wait(0.66)
      if ss.Parent ~= nil then
        break
      end
    end
  end
  do
    if vPlayer.Character:FindFirstChild("Armor") then
      RootJoint.C0 = RootJointC0 * CFrame.new(0, 0, 0.2)
    end
    wait(0.25)
    script.Armor:Remove()
  end
end))
else
  script.Armor:Remove()
end
repeat
  wait()
until vPlayer:FindFirstChild("PlayerGui") ~= nil
m.Text = "5"
playerstats = vPlayer.Character:FindFirstChild("Stats")
if playerstats == nil then
  playerstats = script.Stats:clone()
  playerstats.Parent = vPlayer.Character
end
onAdd = function(new)
  if new.className == "NumberValue" then
    if new.Name == "DecreaseMvmt" then
      if new.Value >= 0 then
        showDamage(vPlayer.Character, "-Movement", "Debuff", "Normal")
      else
        showDamage(vPlayer.Character, "+Movement", "Debuff", "Normal")
      end
    else
      if new.Name == "DecreaseAtk" then
        if new.Value >= 0 then
          showDamage(vPlayer.Character, "-Damage", "Debuff", "Normal")
        else
          showDamage(vPlayer.Character, "+Damage", "Debuff", "Normal")
        end
      else
        if new.Name == "DecreaseDef" then
          if new.Value >= 0 then
            showDamage(vPlayer.Character, "-Defence", "Debuff", "Normal")
          else
            showDamage(vPlayer.Character, "+Defence", "Debuff", "Normal")
          end
        end
      end
    end
  end
end
playerstats.Decrease.ChildAdded:connect(onAdd)
Grabdone = true
Ult = false
RightShoulder = nil
LeftShoulder = nil
RightHip = nil
LeftHip = nil
Neck = nil
RootJoint = nil
RightShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightHipC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightHipC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftHipC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
NeckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
NeckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Grip = nil
GripC0 = CFrame.new(0, -0.7, 0) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, math.pi)
GripUNC0 = CFrame.new(1.1, -0.85, 0.5) * CFrame.fromEulerAnglesXYZ(math.pi / 2.2, -math.pi / 1.13, math.rad(-90))
Wep = nil
if not vPlayer.Character:FindFirstChild("Weapon") then
  Wep = script.Weapon
  wait()
  Wep.Parent = vPlayer.Character
  repeat
    wait()
  until vPlayer.Character.Weapon:FindFirstChild("Handle") ~= nil
  Grip = Instance.new("Weld", Wep.Handle)
  Grip.C0 = GripUNC0
  Grip.Name = "Grip"
  Grip.Part0 = vPlayer.Character.Torso
  Grip.Part1 = Grip.Parent
end
Wep = vPlayer.Character.Weapon
repeat
  wait()
until vPlayer.Character.Weapon:FindFirstChild("Handle") ~= nil
Grip = vPlayer.Character.Weapon.Handle.Grip
Grip.C0 = GripUNC0
Grip.Part0 = vPlayer.Character.Torso
Grip.Part1 = Grip.Parent
TrackFunction = nil
PlayerAnimationScript = nil
equipdebounce = true
PlayerCanJump = true
PlayerCombatKeys = {}
radiushelp = 0.5
Corruption = 0
MaxStun = 80
Mana = vPlayer.Character.Stats:FindFirstChild("Mana")
Mana.Value = 0
Ragemode = false
SoundTable = {Airdash = "153092348", BarrierHit = "153092205", Grapple = "153092304", Hit_Damage_Heavycut = "153092274", Hit_Damage_Heavydelaysmack = "153092217", Hit_Damage_Heavysmack = "153092227", Hit_Damage_Lightcut = "153092285", Hit_Damage_Lightsmack = "153092249", Hit_Damage_Mediumcut = "153092292", Hit_Damage_Medsmack = "153092238", Hit_Damage_Medsmack_Alt = "153092213", Hit_Damage_Tinycut = "153092296", Overdrive_Begin = "153092315", Overdrive_End = "153092334", none = ""}
BodyVel = Instance.new("BodyVelocity")
BodyVel.Name = "HumanoidMover"
BodyVel.P = 300
BodyVel.maxForce = Vector3.new(1000000, 0, 1000000)
BodyVel.Parent = nil
BodyGyro = Instance.new("BodyGyro")
BodyGyro.P = 13000
BodyGyro.maxTorque = Vector3.new(285000, 285000, 285000)
BodyGyro.D = 400
CanAttack = true
PlayerInputs = {}
PlayerInputCullThreshold = 30
PlayerInputAgeCullFactor = 30
PlayerInputStringFrame = 0.7
DesiredWalkspeed = 16 * playerstats.Movement.Value
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
RageDmgBuff = Instance.new("NumberValue")
RageDmgBuff.Name = "DecreaseAtk"
RageDmgBuff.Value = 0
RageDefBuff = Instance.new("NumberValue")
RageDefBuff.Name = "DecreaseDef"
RageDefBuff.Value = -0.25
RageMvmtBuff = Instance.new("NumberValue")
RageMvmtBuff.Name = "DecreaseMvmt"
RageMvmtBuff.Value = 0
Cooldowns = {["1"] = 8, ["2"] = 12, ["3"] = 13.5, ["4"] = 50, ["5"] = 13.5 --[[["1"] = 0, ["2"] = 0, ["3"] = 0, ["4"] = 0, ["5"] = 0]]}
CooldownsB = {["1"] = 8, ["2"] = 12, ["3"] = 13.5, ["4"] = 50, ["5"] = 13.5 --[[["1"] = 0, ["2"] = 0, ["3"] = 0, ["4"] = 0, ["5"] = 0]]}
TwoDInputs = {}
fwait = function(t)
  if t == nil then
    t = 1/30
  else
    if t == 0 then
      t = 1/30
    end
  end
  local s = 0
  local stime = tick()
  for i_ = 1, t * 30 do
    FakeHeartbeat.Event:wait(0)
  end
  return tick() - stime, workspace.DistributedGameTime
end
--[[fwait=function(num) --RS hooked thread yielding
	if num == 0 or num == nil then
		FakeHeartbeat.Event:wait(0)
	else
		for i = 0, num do
			FakeHeartbeat.Event:wait(0)
		end
	end
end--]]

setlastnormal = function(key)
  lastnormal = key
  coroutine.resume(coroutine.create(function(k, kt)
    while k == lastnormal do
      if kt + 1.2 < tick() then
        break
      end
      fwait()
    end
    lastnormal = ""
  end), lastnormal, tick())
end
BillboardGui = function(image, position, size)
  local billpar = Instance.new("Part")
  billpar.Transparency = 1
  billpar.formFactor = "Custom"
  billpar.Size = Vector3.new(1, 1, 1)
  billpar.Anchored = true
  billpar.CanCollide = false
  billpar.CFrame = CFrame.new(position)
  billpar.Name = "BillboardGuiPart"
  local bill = Instance.new("BillboardGui", billpar)
  bill.Adornee = billpar
  bill.Size = UDim2.new(1, 0, 1, 0)
  bill.SizeOffset = Vector2.new(size, size)
  local d = Instance.new("ImageLabel", bill)
  d.BackgroundTransparency = 1
  d.Size = UDim2.new(1, 0, 1, 0)
  d.Image = image
  return billpar
end
NewPart = function(size, cframe, color, meshtype, meshscale)
  local par = Instance.new("Part")
  par.formFactor = "Custom"
  par.TopSurface = 0
  par.BottomSurface = 0
  par.Size = size
  par.CFrame = cframe
  par.BrickColor = BrickColor.new(color)
  do
    if meshtype then
      local m = Instance.new(meshtype, par)
      m.Scale = meshscale
    end
    return par
  end
end
CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
CameraPlane = function()
  local buttspoop = (workspace.CurrentCamera.CoordinateFrame.p - workspace.CurrentCamera.CoordinateFrame * CFrame.new(0, 0, 5)).p.unit
  return Vector3.new(buttspoop.x, 0, buttspoop.z).unit
end
MousePlane = function()
	local mouse = game.Players.LocalPlayer:GetMouse()
	local buttspoop = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mouse.Hit.p).unit
	return -Vector3.new(buttspoop.x,0,buttspoop.z).unit
end
CanStun = true
InputNormals = {}
GetIgnoreList = function()
  local lel = {}
  local filter = {}
  lol = function(p)
    for _,v in pairs(p) do
      if v:IsA("BasePart") or v.className == "UnionOperation" then
        table.insert(lel, v)
        if #v:children() > 0 then
          lol(v:children())
        end
      end
    end
  end
  lol(workspace:children())
  for _,v in pairs(lel) do
    if v.Parent.className == "Tool" or v.Parent:FindFirstChild("Humanoid") or v.CanCollide == false or v.Parent.className == "Hat" or v.Parent.className == "Model" and v.Parent:FindFirstChild("Humanoid") == nil then
      table.insert(filter, v)
    end
  end
  lel = nil
  return filter
end
InputNormals.E = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 0
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  if Ragemode == false then
    local RageSound = Instance.new("Sound", vPlayer.Character.Torso)
    RageSound.Volume = 1
    RageSound.Pitch = 0.95
    RageSound.SoundId = "http://www.roblox.com/asset/?id=235097614"
    RageSound:Play()
    game:GetService("Debris"):AddItem(RageSound, 5)
    TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes <= 7 then
      cl = cl + rawframes * 0.04
      LerpWelds(clastframe, cl, Animations.SoulExStart.Animation(0))
    elseif rawframes > 7 and rawframes <= 12 then
        LerpWelds(clastframe, 1 + (cl - 1) * (1 - (rawframes - 7) / 5), Animations.SoulExStart.Animation(0))
        if rawframes % 2 == 0 then
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(6, 5, 6))
          pc.Mesh.MeshType = "FileMesh"
          pc.Anchored = true
          pc.CanCollide = false
          pc.Parent = workspace
          pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
          pc.Name = "Shockwave"
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
      for ii = 1, 10 do
        p.Transparency = 0.5 + ii / 20
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(10 + ii), 0) - Vector3.new(0, 0, 0)
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(-0.5, 0.5, -0.5)
        fwait()
      end
      p:Remove()
    end), pc)
          local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(10, 10, 10))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
      local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
      A = vPlayer.Character.Torso.Velocity / 60
      for i = 1, 10 do
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1, 1, 1)
        p.Transparency = 0.5 + i / 20
        p.CFrame = p.CFrame * V + A
        fwait()
      end
      p:Remove()
    end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
        end
      elseif rawframes > 12 and rawframes <= 17 then
            if rawframes == 13 then
              cl = 0
            end
            cl = cl + (rawframes - 13) * 0.11
            LerpWelds({Animations.SoulExStart.Animation(0)}, cl, Animations.SoulExStart.Animation(1))
            local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(10, 10, 10))
            eff.Parent = workspace
            eff.Name = "BloodEffect"
            eff.Anchored = true
            eff.CanCollide = false
            game:GetService("Debris"):AddItem(eff, 5)
            coroutine.resume(coroutine.create(function(p, V, x)
      local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
      A = vPlayer.Character.Torso.Velocity / 60
      for i = 1, 10 do
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(10, 10, 10) / 10
        p.Transparency = 0.5 + i / 20
        p.CFrame = p.CFrame * V + A
        fwait()
      end
      p:Remove()
    end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
          elseif rawframes > 17 and rawframes <= 22 then
                if rawframes == 18 then
                  for sus = 1, 2 do
                    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(1.7, 1.7, 1.7))
                    eff.Parent = workspace
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
      local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
      A = vPlayer.Character.Torso.Velocity / 60
      for i = 1, 15 do
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(10, 10, 10) / 15 * x
        p.Transparency = 0.25 + i / 22.5
        p.CFrame = p.CFrame * V + A
        fwait()
      end
      p:Remove()
    end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))), sus)
                  end
                  local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position + Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(2, 10, 2))
                  pc.Mesh.MeshType = "FileMesh"
                  pc.Anchored = true
                  pc.CanCollide = false
                  pc.Parent = workspace
                  pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                  pc.Name = "Shockwave"
                  game:GetService("Debris"):AddItem(pc, 5)
                  coroutine.resume(coroutine.create(function(p)
      for ii = 1, 15 do
        p.Transparency = ii / 15
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(10 + ii), 0) - Vector3.new(0, 0.5, 0) / 1.5
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(-1.9, 1, -1.9) / 1.5
        fwait()
      end
      p:Remove()
    end), pc)
                  local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position + Vector3.new(0, 0, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(6, 5, 6))
                  pc.Mesh.MeshType = "FileMesh"
                  pc.Anchored = true
                  pc.CanCollide = false
                  pc.Parent = workspace
                  pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                  pc.Name = "Shockwave"
                  game:GetService("Debris"):AddItem(pc, 5)
                  coroutine.resume(coroutine.create(function(p)
      for ii = 1, 15 do
        p.Transparency = ii / 15
        p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(10 + ii), 0) - Vector3.new(0, 0.25, 0) / 1.5
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(-2, 0.5, -2) / 1.5
        fwait()
      end
      p:Remove()
    end), pc)
                  Ragemode = true
                  local RageSound = Instance.new("Sound", vPlayer.Character.Torso)
                  RageSound.Volume = 1
                  RageSound.Pitch = 0.75
                  RageSound.Looped = true
                  RageSound.SoundId = "http://www.roblox.com/asset/?id=188959304"
                  RageSound:Play()
                  coroutine.resume(coroutine.create(function(p)
      local sus = 0
      playerstats.Stun.Value = playerstats.Stun.Value - Corruption / 2
      if playerstats.Stun.Value < 0 then
        playerstats.Stun.Value = 0
      end
      local pargen1 = Instance.new("ParticleEmitter")
      pargen1.Name = "AttackParticleEmitter3"
      pargen1.Texture = "http://www.roblox.com/asset/?id=243086902"
      pargen1.LightEmission = 0.4
      pargen1.ZOffset = 1.6
      pargen1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.7), NumberSequenceKeypoint.new(1, 1)})
      pargen1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3.5), NumberSequenceKeypoint.new(1, 7)})
      pargen1.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0.1, 0.1, 0.1))
      pargen1.Rate = 100
      pargen1.VelocitySpread = 180
      pargen1.Speed = NumberRange.new(0, 0)
      pargen1.Lifetime = NumberRange.new(1.3, 1.8)
      pargen1.Rotation = NumberRange.new(-180, 180)
      pargen1.RotSpeed = NumberRange.new(-70, 70)
      pargen1.Parent = vPlayer.Character.Torso
      local pargen2 = Instance.new("ParticleEmitter")
      pargen2.Name = "AttackParticleEmitter3"
      pargen2.Texture = "http://www.roblox.com/asset/?id=233069772"
      pargen2.LightEmission = 0
      pargen2.ZOffset = 1.65
      pargen2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.95), NumberSequenceKeypoint.new(1, 1)})
      pargen2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2), NumberSequenceKeypoint.new(1, 3)})
      pargen2.Color = ColorSequence.new(Color3.new(0.8, 0.8, 0.8), Color3.new(0.4, 0.4, 0.4))
      pargen2.Rate = 30
      pargen2.VelocitySpread = 180
      pargen2.Speed = NumberRange.new(0, 0)
      pargen2.Lifetime = NumberRange.new(0.5, 0.6)
      pargen2.Rotation = NumberRange.new(-180, 180)
      pargen2.RotSpeed = NumberRange.new(-400, 400)
      pargen2.Parent = vPlayer.Character.Torso
      repeat
        fwait(0.15)
		if Corruption <= 0 then
			Ragemode = false
		end
        pargen1.Acceleration = Vector3.new(math.random(-10, 10) / 10, 0.1, math.random(-10, 10) / 10)
        sus = sus + 1
          if sus == 8 then
            local RageSound = Instance.new("Sound", vPlayer.Character.Torso)
            RageSound.Volume = 0.5
            RageSound.Pitch = 0.8
            RageSound.SoundId = "http://www.roblox.com/asset/?id=238319531"
            RageSound:Play()
            game:GetService("Debris"):AddItem(RageSound, 4)
            sus = 0
          end
            if sus % 5 == 0 then
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(4, 5, 4))
              pc.Mesh.MeshType = "FileMesh"
              pc.Anchored = true
              pc.CanCollide = false
              pc.Parent = workspace
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
              pc.Name = "Shockwave"
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
        for ii = 1, 10 do
          p.Transparency = 0.5 + ii / 20
          p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(5 + ii), 0) - Vector3.new(0, 0.25, 0)
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(-1.4, 0.5, -1.4)
          fwait()
        end
        p:Remove()
      end), pc)
            end
              if sus % 3 == 0 and Corruption > 0 then
                local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(1.7, 1.7, 1.7))
                eff.Parent = workspace
                eff.Name = "BloodEffect"
                eff.Anchored = true
                eff.CanCollide = false
                game:GetService("Debris"):AddItem(eff, 5)
                coroutine.resume(coroutine.create(function(p, V, A)
        local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 70
        A = vPlayer.Character.Torso.Velocity / 60
        for i = 1, 15 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(12, 12, 12) / 15
          p.Transparency = 0.5 + i / 30
          p.CFrame = p.CFrame * V + A
          fwait()
        end
        p:Remove()
      end), eff, CFrame.Angles(math.rad(math.random(-4, 4)), math.rad(math.random(-4, 4)), math.rad(math.random(-4, 4))))
              end
              if Corruption > 0 and vPlayer.Character.Humanoid.Health > 5 then
                --script.Parent.DMG.RemoteEvent:FireServer(vPlayer.Character.Humanoid, 1.5)
				vPlayer.Character.Humanoid:TakeDamage(1.5)
                local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-15, 15) / 10, math.random(-20, 15) / 10, math.random(-5, 5) / 10) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Bright red", "BlockMesh", Vector3.new(1.3, 1.3, 1.3))
                eff.Parent = workspace
                eff.Name = "BloodEffect"
                eff.Anchored = true
                eff.CanCollide = false
                game:GetService("Debris"):AddItem(eff, 5)
                coroutine.resume(coroutine.create(function(p, A, V)
        local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 50
        for i = 1, 12 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.9, 0.9, 0.9) * (1 - i / 12)
          p.Transparency = 0.75 + i / 48
          p.CFrame = p.CFrame * A
          fwait()
        end
        p:Remove()
      end), eff, CFrame.Angles(math.rad(math.random(-4, 4) * 4), math.rad(math.random(-4, 4) * 3), math.rad(math.random(-4, 4) * 2)))
              end
      until Ragemode == false
      pargen1.Enabled = false
      pargen2.Enabled = false
      for i = 1, 60 do
        p.Volume = p.Volume / 1.05
        fwait()
      end
      p:Stop()
      p.Volume = 0
      game:GetService("Debris"):AddItem(p, 2)
      game:GetService("Debris"):AddItem(pargen1, 2)
      game:GetService("Debris"):AddItem(pargen2, 2)
    end), RageSound)
                end
                  LerpWelds(clastframe, 1 + (cl - 1) * (1 - (rawframes - 17) / 5), Animations.SoulExStart.Animation(1))
                  if rawframes > 22 then
                    LerpWelds({Animations.SoulExStart.Animation(1)}, (rawframes - 22) / 9, Animations.Stand2.Animation(0))
                  end
                end
if rawframes == 31 then
                    TrackFunction:disconnect()
                    TrackFunction = nil
                    DesiredWalkspeed = 16 * playerstats.Movement.Value
                    PlayerIsAttacking = false
                    CanInterrupt(true)
                    setlastnormal("")
                    Walk()
                  end
rawframes = rawframes + 1
  end)
elseif Ragemode == true then
      local RageSound = Instance.new("Sound", vPlayer.Character.Torso)
      RageSound.Volume = 1
      RageSound.Pitch = 0.5
      RageSound.SoundId = "http://www.roblox.com/asset/?id=233856130"
      RageSound:Play()
      game:GetService("Debris"):AddItem(RageSound, 5)
      TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes <= 7 then
      cl = cl + rawframes * 0.04
      LerpWelds(clastframe, cl, Animations.SoulExEnd.Animation(0))
    elseif rawframes > 7 and rawframes <= 20 then
        Ragemode = false
        if rawframes == 8 then
          Corruption = math.floor(Corruption / 2)
        end
        Neck.C0 = sNeck.C0 * CFrame.new(0, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(7), -math.rad(4), math.rad(15) + math.sin(math.rad((rawframes - 7) * 30)) / 3)
      elseif rawframes > 20 then
          LerpWelds({Animations.SoulExEnd.Animation(0)}, (rawframes - 20) / 10, Animations.Stand.Animation(0))
    end
  end)
    --if rawframes == 30 then
      TrackFunction:disconnect()
      TrackFunction = nil
      DesiredWalkspeed = 16 * playerstats.Movement.Value
      PlayerIsAttacking = false
      CanInterrupt(true)
      setlastnormal("")
      Walk()
      rawframes = rawframes + 1
	Ragemode = false
    --end
    end
end
WeaponBounce = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 0
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  local pz = Instance.new("BodyPosition", vPlayer.Character.HumanoidRootPart)
  pz.P = 3500
  pz.D = 1500
  pz.maxForce = Vector3.new(280000, 280000, 280000)
  pz.position = vPlayer.Character.HumanoidRootPart.Position - CharacterPlane() * 3
  game:GetService("Debris"):AddItem(pz, 0.15)
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes <= 4 then
      LerpWelds(clastframe, rawframes / 4, Animations.WeaponBounce.Animation(0))
    elseif rawframes > 4 and rawframes <= 8 then
        LerpWelds(clastframe, 1 + (rawframes - 4) * 0.01, Animations.WeaponBounce.Animation(0))
      elseif rawframes > 8 and rawframes <= 12 then
          LerpWelds(clastframe, 1.03 - (rawframes - 8) * 0.01, Animations.WeaponBounce.Animation(0))
        elseif rawframes > 12 then
            local cwalk = "Stand"
            if Ragemode == true then
              cwalk = "Stand2"
            end
            LerpWelds({Animations.WeaponBounce.Animation(0)}, (rawframes - 12) / 7, Animations[cwalk].Animation(0))
    end
      if rawframes == 19 then
        TrackFunction:disconnect()
        TrackFunction = nil
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        Stand()  
    end
rawframes = rawframes + 1
  end)
end
Stunned = false
GetStunnedIdiot = function()
  if Stunned == true or playerstats.Stagger.Value == true then
    return 
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  SetLegs(1)
  if vPlayer.Character.Torso:FindFirstChild("JUMP_PROP") then
    vPlayer.Character.Torso.JUMP_PROP:Remove()
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  DesiredWalkspeed = 0
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  PlayerState = "Stunned"
  Stunned = true
  local stunvel = BodyVel:clone()
  stunvel.maxForce = Vector3.new(0, 500, 0)
  stunvel.P = 50
  stunvel.velocity = Vector3.new(0, -8, 0)
  stunvel.Parent = vPlayer.Character.HumanoidRootPart
  pos = vPlayer.Character.HumanoidRootPart.Position
  local stungyr = BodyGyro:clone()
  stungyr.maxTorque = Vector3.new(500, 500, 500)
  stungyr.cframe = CFrame.new(pos, pos + CharacterPlane() * 5)
  stungyr.Parent = stunvel.Parent
  vPlayer.Character.Humanoid.PlatformStand = true
  local fakehead = vPlayer.Character.Head:clone()
  fakehead:BreakJoints()
  local w = Instance.new("Weld", fakehead)
  w.Part0 = vPlayer.Character.Head
  w.Part1 = fakehead
  fakehead.Name = "fake"
  fakehead.Parent = vPlayer.Character
  fakehead.CanCollide = false
  vPlayer.Character.Head.Mesh.Scale = Vector3.new(0.1, 0.1, 0.1)
  vPlayer.Character.Head.face.Transparency = 1
  playerstats.Stunned.Value = true
  if vPlayer.Character:FindFirstChild("Armor") then
    cwe = vPlayer.Character.Armor.Cloak.HeadCloak.Weld
    ccl = cwe.C0
  end
  showDamage(vPlayer.Character, "Stunned!", "Interrupt", "Normal")
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes <= 7 then
      LerpWelds(clastframe, rawframes / 7, Animations.Stunned.Animation(0))
      w.C0 = w.C0 * CFrame.Angles(0, math.rad(7), 0)
      if cwe then
        cwe.C0 = cwe.C0 * CFrame.Angles(0, math.rad(7), 0)
      end
    else
      if rawframes >= 91 and rawframes <= 100 then
        stunvel.velocity = Vector3.new(0, 2.5, 0)
        vPlayer.Character.Humanoid.PlatformStand = false
        LerpWelds({Animations.Stunned.Animation(0)}, (rawframes - 90) / 9, Animations.LHB.Animation(1))
        if cwe then
          cwe.C0 = cwe.C0 * CFrame.Angles(0, -math.rad(6), 0)
        end
        w.C0 = w.C0 * CFrame.Angles(0, -math.rad(6), 0)
      else
        if rawframes >= 101 then
          stunvel.P = 0
          local cwalk = "Stand"
          if Ragemode == true then
            cwalk = "Stand2"
          end
          LerpWelds({Animations.LHB.Animation(1)}, (rawframes - 100) / 10, Animations[cwalk].Animation(0))
        end
      end
    end
    do
      if rawframes == 110 then
        if cwe then
          cwe.C0 = ccl
        end
        TrackFunction:disconnect()
        TrackFunction = nil
        playerstats.Stun.Value = 0
        playerstats.Stunned.Value = false
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        stunvel:Remove()
        vPlayer.Character.Humanoid.PlatformStand = false
        vPlayer.Character.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
        fakehead:Remove()
        vPlayer.Character.Head.face.Transparency = 0
        stungyr:Remove()
        Stunned = false
        addonCullMovers(vPlayer.Character)
        Stand()
      end
      rawframes = rawframes + 1
    end
  end)
end
GetStaggeredIdiot = function()
  if Stunned == true then
    return 
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  SetLegs(1)
  if vPlayer.Character.Torso:FindFirstChild("JUMP_PROP") then
    vPlayer.Character.Torso.JUMP_PROP:Remove()
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  DesiredWalkspeed = 0
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  PlayerState = "Stunned"
  local stunvel = BodyVel:clone()
  stunvel.maxForce = Vector3.new(0, 500, 0)
  stunvel.P = 50
  stunvel.velocity = Vector3.new(0, -8, 0)
  stunvel.Parent = vPlayer.Character.HumanoidRootPart
  pos = vPlayer.Character.HumanoidRootPart.Position
  local stungyr = BodyGyro:clone()
  stungyr.maxTorque = Vector3.new(500, 500, 500)
  stungyr.cframe = CFrame.new(pos, pos + CharacterPlane() * 7)
  stungyr.Parent = stunvel.Parent
  playerstats.Stagger.Value = false
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes <= 6 then
      LerpWelds(clastframe, rawframes / 6, Animations.Staggered.Animation(0))
    elseif rawframes >= 31 and rawframes <= 38 then
        vPlayer.Character.Humanoid.PlatformStand = false
        LerpWelds({Animations.Staggered.Animation(0)}, (rawframes - 30) / 7, Animations.LHB.Animation(1))
      elseif rawframes >= 39 then
          stunvel.P = 0
          local cwalk = "Stand"
          if Ragemode == true then
            cwalk = "Stand2"
          end
          LerpWelds({Animations.LHB.Animation(1)}, (rawframes - 38) / 8, Animations[cwalk].Animation(0))
        end
      if rawframes == 45 then
        TrackFunction:disconnect()
        TrackFunction = nil
        playerstats.Stagger.Value = false
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        stunvel:Remove()
        stungyr:Remove()
        addonCullMovers(vPlayer.Character)
        Stand()
      end
      rawframes = rawframes + 1
    end)
end
InputNormals.V = function()
  local useRageVer = false
  local locor = 0
  if Mana.Value >= 50 and Cooldowns["4"] == 0 and Ult == false then
    Mana.Value = Mana.Value - 40
    if Ragemode == true and Corruption >= 20 then
      locor = Corruption - 20
      coroutine.resume(coroutine.create(function()
    for lel = 1, 20 do
      fwait()
      if Corruption > 0 then
        Corruption = Corruption - 1
      else
        break
      end
    end
  end))
      useRageVer = true
    end
  else
    return 
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  Ult = true
  Ragemode = false
  CanInterrupt(false)
  PlayerIsAttacking = true
  local cl = 0
  local clastframe = lastframe
  BodyVel.velocity = Vector3.new()
  local CPlane = MousePlane()
  BodyVel.maxForce = Vector3.new(1000000, 1000000, 1000000)
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  BodyGyro.cframe = CFrame.new(vPlayer.Character.HumanoidRootPart.CFrame.p, vPlayer.Character.HumanoidRootPart.CFrame.p + CPlane * 50)
  local cl = 0
  DesiredWalkspeed = 0
  p = Instance.new("Sound", vPlayer.Character.Torso)
  p.Volume = 0.8
  p.Pitch = 1
  p.SoundId = "http://www.roblox.com/asset/?id=240517975"
  p:Play()
  game:GetService("Debris"):AddItem(p, 3)
  local pb = Instance.new("Sound", vPlayer.Character.Torso)
  pb.Volume = 1
  pb.Pitch = 0.85
  pb.SoundId = "http://www.roblox.com/asset/?id=240517987"
  pb:Play()
  game:GetService("Debris"):AddItem(pb, 10)
  do
    for i = 1, 8 do
      fwait()
      cl = cl + i * 0.02
      LerpWelds(clastframe, cl, Animations.LHB.Animation(0))
      if i == 4 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(11, 1, 11))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(10 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.5, 0, 0.5)
      fwait()
    end
    p:Remove()
  end), pc)
      end
    end
  end
  BodyVel.Parent = vPlayer.Character.HumanoidRootPart
  BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
  cl = 0
  clastframe = lastframe
  for i = 1, 6 do
    fwait()
    cl = cl + i * 0.05
    LerpWelds(clastframe, cl, Animations.LHB.Animation(1))
    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
    eff.Parent = workspace
    eff.Name = "BloodEffect"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 12
      p.Transparency = 0.75 + i / 48
      p.CFrame = p.CFrame * V + A
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
    if i ~= 1 and (i ~= 4 or i == 6) then
      local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "White", "SpecialMesh", Vector3.new(8, 1, 8))
      pc.Mesh.MeshType = "FileMesh"
      pc.Anchored = true
      pc.CanCollide = false
      pc.Parent = workspace
      pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
      pc.Name = "Shockwave"
      game:GetService("Debris"):AddItem(pc, 5)
      coroutine.resume(coroutine.create(function(p)
    for ii = 1, 7 do
      p.Transparency = ii / 7
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.4, 0, 1.4)
      fwait()
    end
    p:Remove()
  end), pc)
    end
  end
  fwait()
  for i = 1, 20 do
    do
      CPlane = MousePlane()
      BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
      BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
      if i == 5 or i == 10 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(8, 2, 8))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 13 do
      p.Transparency = ii / 13
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(10 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(3, 0, 3)
      fwait()
    end
    p:Remove()
  end), pc)
      else
        do
          do
            if i == 2 or i == 10 then
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(90), 0, 0), "Really black", "SpecialMesh", Vector3.new(56, 56, 1))
              pc.Mesh.MeshType = "FileMesh"
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
              pc.Parent = workspace
              pc.Anchored = true
              pc.CanCollide = false
              pc.Transparency = 0.5
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
    for ii = 1, 20 do
      p.Transparency = ii / 20
      p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.4, 1.4, 0) * 2
      fwait()
    end
    p:Remove()
  end), pc)
            end
            if i % 4 == 0 then
              for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 35)) do
                applyCameraShake(v, 80 + i * 10, 4)
              end
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "Really black", "SpecialMesh", Vector3.new(18, 2, 18))
              pc.Mesh.MeshType = "FileMesh"
              pc.Anchored = true
              pc.CanCollide = false
              pc.Parent = workspace
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
              pc.Name = "Shockwave"
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(7 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.4, 0, 1.4)
      fwait()
    end
    p:Remove()
  end), pc)
            else
              do
                do
                  if i % 1 == 0 then
                    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(0.7, 0.7, 0.7))
                    eff.Parent = workspace
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 8 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(6, 6, 6) / 8
      p.Transparency = 0.2
      p.CFrame = p.CFrame * V + A
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
                    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
                    eff.Parent = workspace
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 12
      p.Transparency = 0.75 + i / 48
      p.CFrame = p.CFrame * V + A
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
                  end
                  do
                    fwait()
                  end
                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                end
              end
            end
          end
        end
      end
    end
  end
  cl = 0
  clastframe = lastframe
  for i = 1, 6 do
    fwait()
    cl = cl + i * 0.05
    LerpWelds(clastframe, cl, Animations.LHB.Animation(2))
    local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(2.3, 2.3, 2.3))
    pc.CanCollide = false
    pc.Anchored = true
    pc.Parent = workspace
    game:GetService("Debris"):AddItem(pc, 5)
    coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40) + vPlayer.Character.Torso.Velocity / 120
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 30
      p.Transparency = i / 30
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.0054555555555556 * i, 0) + C
      fwait()
    end
    p:Remove()
  end), pc)
  end
  cl = 0
  clastframe = lastframe
  local Grabbee = nil
  for i = 1, 15 do
    fwait()
    do
      if i == 3 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position, vPlayer.Character.Torso.Position + CPlane * 5) * CFrame.Angles(math.rad(90), math.rad(0), 0), "Really black", "SpecialMesh", Vector3.new(8, 2, 8))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(7 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, 0, 1)
      fwait()
    end
    p:Remove()
  end), pc)
      end
      BodyVel.velocity = CPlane * (i * 7.5 + 65)
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + CPlane * 2, 4.75)) do
        Grabbee = v
        do break end
      end
      do
        local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(2.3, 2.3, 2.3))
        pc.CanCollide = false
        pc.Anchored = true
        pc.Parent = workspace
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40) + vPlayer.Character.Torso.Velocity / 120
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 20
      p.Transparency = i / 20
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.0054555555555556 * i, 0) + C
      fwait()
    end
    p:Remove()
  end), pc)
        do
          local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(5, 5, 5))
          pc.CanCollide = false
          pc.Anchored = true
          pc.Parent = workspace
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(5, 5, 5) / 20
      p.Transparency = 0.5 + i / 40
      p.CFrame = p.CFrame * R
      fwait()
    end
    p:Remove()
  end), pc)
          if i <= 6 then
            cl = cl + i * 0.05
            LerpWelds(clastframe, cl, Animations.LHB.Animation(3))
          end
          -- DECOMPILER ERROR at PC1273: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC1273: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
  if Grabbee ~= nil then
    if Grabbee:FindFirstChild("Stats") and Grabbee.Stats.Stunned.Value == false then
      Grabbee.Stats.Stun.Value = 999
    end
    cbuff = Instance.new("NumberValue", playerstats.Decrease)
    cbuff.Name = "DecreaseDef"
    cbuff.Value = -2
    Mana.Value = Mana.Value - 10
    if useRageVer == true then
      borb = math.floor(40 + Mana.Value / 3 + (locor) / 3) * 0.4
    else
      borb = math.floor(40 + Mana.Value / 3) * 0.4
    end
    local Grabdone = false
    gpos = Instance.new("BodyPosition")
    gpos.Name = ":<"
    gpos.Parent = vPlayer.Character.HumanoidRootPart
    gpos.P = 5000
    gpos.D = 600
    gpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    gpos.position = vPlayer.Character.HumanoidRootPart.Position
    coroutine.resume(coroutine.create(function(NNoob)
    nubgyro = nil
    while Grabdone == false and vPlayer.Character.Humanoid.Health > 0 do
      if NNoob.Parent == nil then
        break
      else
        if NNoob.Humanoid.Health < 0 then
          break
        end
      end
      NNoob.Humanoid.PlatformStand = true
      if nubgyro == nil or nubpos == nil then
        if NNoob.Torso:FindFirstChild(":>") then
          NNoob.Torso[":>"]:Remove()
        end
        if NNoob.Torso:FindFirstChild(":<") then
          NNoob.Torso[":<"]:Remove()
        end
        nubgyro = Instance.new("BodyGyro")
        nubgyro.Name = ":>"
        nubgyro.Parent = NNoob.Torso
        nubgyro.P = 5000
        nubgyro.D = 200
        nubgyro.maxTorque = Vector3.new(50000, 50000, 50000) * 5000
        nubgyro.cframe = vPlayer.Character["Left Arm"].CFrame
        nubpos = Instance.new("BodyPosition")
        nubpos.Name = ":<"
        nubpos.Parent = NNoob.Torso
        nubpos.P = 8000
        nubpos.D = 200
        nubpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        nubpos.position = vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.6, 0).p
      else
        if nubgyro.Parent == nil then
          nubgyro = nil
          nubpos = nil
        else
          nubgyro.cframe = vPlayer.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(math.pi / 18, math.pi, 0)
          nubpos.position = vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.4, 0).p - Vector3.new(0, 0.3, 0)
        end
      end
      fwait()
    end
    if nubpos and nubgyro then
      nubpos:Remove()
      nubgyro:Remove()
      if NNoob:FindFirstChild("Humanoid") then
        NNoob.Humanoid.PlatformStand = false
      end
    end
  end), Grabbee)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.9
    p.SoundId = "http://www.roblox.com/asset/?id=240429615"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    BodyVel.velocity = Vector3.new()
    cl = 0
    clastframe = lastframe
    for i = 1, 7 do
      fwait()
      cl = cl + i * 0.036
      LerpWelds(clastframe, cl, Animations.LHB.Animation(4))
    end
    cl = 0
    clastframe = lastframe
    for i = 1, 8 do
      fwait()
      cl = cl + i * 0.028
      LerpWelds(clastframe, cl, Animations.LHB.Animation(5))
    end
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.55
    p.SoundId = "http://www.roblox.com/asset/?id=233856115"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 1
    p.SoundId = "http://www.roblox.com/asset/?id=192410070"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.4
    p.SoundId = "http://www.roblox.com/asset/?id=231917822"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", Grabbee.Torso)
    p.Volume = 1
    p.Pitch = 1
    p.SoundId = "http://www.roblox.com/asset/?id=243711335"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    local sees = math.ceil(Mana.Value / borb)
    local sees2 = (math.ceil(Corruption / borb))
    local partic1, partic2 = nil, nil
    partic1 = Instance.new("ParticleEmitter")
    partic1.Name = "AttackParticleEmitter3"
    partic1.Texture = "http://www.roblox.com/asset/?id=233069772"
    partic1.LightEmission = 0
    partic1.ZOffset = 2
    partic1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
    partic1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5), NumberSequenceKeypoint.new(1, 1)})
    partic1.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0.1, 0.1, 0.1))
    partic1.Rate = 80
    partic1.VelocitySpread = 180
    partic1.Speed = NumberRange.new(6, 10)
    partic1.Lifetime = NumberRange.new(1, 1.2)
    partic1.Rotation = NumberRange.new(-180, 180)
    partic1.RotSpeed = NumberRange.new(-100, 100)
    partic1.Parent = Grabbee.Torso
    if useRageVer then
      partic2 = Instance.new("ParticleEmitter", p)
      partic2.Name = "AttackParticleEmitter3"
      partic2.Texture = "http://www.roblox.com/asset/?id=241409051"
      partic2.LightEmission = 0
      partic2.ZOffset = 1
      partic2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 1)})
      partic2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
      partic2.Color = ColorSequence.new(Color3.new(0.3, 0.3, 0.3), Color3.new(0.2, 0.2, 0.2))
      partic2.Rate = 60
      partic2.VelocitySpread = 180
      partic2.Speed = NumberRange.new(1, 2)
      partic2.Lifetime = NumberRange.new(1, 1.2)
      partic2.Rotation = NumberRange.new(-180, 180)
      partic2.RotSpeed = NumberRange.new(-100, 100)
      partic2.Acceleration = Vector3.new(0, 10, 0)
      partic2.Parent = Grabbee.Torso
    end
    for i = 1, borb + borb % 2 do
      fwait()
      if i % 2 == 0 then
        applyDamage(Grabbee, 3, Vector3.new(), false, false, nil, 0, 0, "", 0, false, false, 0, true, "Pure", true, false)
        local st = Grabbee:FindFirstChild("Stats")
        if st and st:FindFirstChild("Mana") then
          if st.Mana.Value >= 3 then
            --script.Parent.DMG.RemoteEventM:FireServer(st.Mana, 3)
			st.Mana.Value = st.Mana.Value - 3
          else
            st.Mana.Value = 0
          end
        end
      end
      do
        if sees <= Mana.Value then
          Mana.Value = Mana.Value - sees
        else
          Mana.Value = 0
        end
        if useRageVer then
          if sees2 <= Corruption then
            Corruption = Corruption - sees2
          else
            Corruption = 0
          end
        end
        if useRageVer == true and i % 2 == 0 then
          if vPlayer.Character.Humanoid.Health >= 6.5 then
            vPlayer.Character.Humanoid:TakeDamage(1.5)
          end
          local eb = BillboardGui("http://www.roblox.com/asset/?id=233069772", Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 20).p, 0)
          eb.Parent = workspace
          eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
          eb.BillboardGui.Size = UDim2.new(2, 0, 2, 0)
          game:GetService("Debris"):AddItem(eb, 3)
          coroutine.resume(coroutine.create(function(p)
    local r = math.random(-3, 3) * 9
    if r > -12 and r < 1 then
      r = -12
    else
      if r < 12 and r > -1 then
        r = 12
      end
    end
    for i = 1, 12 do
      p.BillboardGui.ImageLabel.ImageTransparency = 0.5 + i / 24
      p.BillboardGui.Size = UDim2.new(3 + i, 0, 3 + i, 0)
      p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r
      fwait()
    end
    p:Remove()
  end), eb)
        end
        do
          local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 8 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 8
      p.Transparency = 0.75 + i / 32
      p.CFrame = p.CFrame * V + A
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
          if i % 5 == 0 then
            for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 35)) do
              applyCameraShake(v, 120, 5)
            end
            applyCameraShake(vPlayer.Character, 120, 5)
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position + Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "Really black", "SpecialMesh", Vector3.new(6, 13, 6))
            pc.Mesh.MeshType = "FileMesh"
            pc.Anchored = true
            pc.CanCollide = false
            pc.Parent = workspace
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
            pc.Name = "Shockwave"
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p)
    for ii = 1, 13 do
      p.Transparency = ii / 13
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(5 + ii), 0) - Vector3.new(0, 0.38461538461538, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, -1, 1)
      fwait()
    end
    p:Remove()
  end), pc)
          end
          do
            if Grabbee.Parent == nil then
              break
            else
              if Grabbee:FindFirstChild("Humanoid") == nil then
                break
              end
            end
            local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-25, 25) / 10, math.random(-20, 20) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(1.1, 1.1, 1.1))
            eff.Parent = workspace
            eff.Name = "BloodEffect"
            eff.Anchored = true
            eff.CanCollide = false
            game:GetService("Debris"):AddItem(eff, 5)
            coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(5, 5, 5) / 12
      p.Transparency = 0.25 + i / 48
      p.CFrame = p.CFrame * V + A
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
            do
              if i % 3 == 0 then
                local pc = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Bright blue", "BlockMesh", Vector3.new(2, 2, 2))
                pc.CanCollide = false
                pc.Anchored = true
                pc.Parent = workspace
                game:GetService("Debris"):AddItem(pc, 5)
                coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40)
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 20
      p.Transparency = i / 20
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.029757575757576 * i, 0)
      fwait()
    end
    p:Remove()
  end), pc)
              end
            end
          end
        end
      end
    end
    cl = 0
    clastframe = lastframe
    for i = 1, 5 do
      wait()
      cl = cl + i * 0.07
      if i == 3 then
        Grabdone = true
        partic1.Enabled = false
        game:GetService("Debris"):AddItem(partic1, 5)
        if partic2 then
          partic2.Enabled = false
          game:GetService("Debris"):AddItem(partic2, 5)
        end
        p = Instance.new("Sound", vPlayer.Character.Torso)
        p.Volume = 1
        p.Pitch = 0.95
        p.SoundId = "http://www.roblox.com/asset/?id=241816029"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
        if Grabbee:FindFirstChild("Stats") then
          if Grabbee.Stats.Mana.Value >= 10 then
            Grabbee.Stats.Mana.Value = Grabbee.Stats.Mana.Value - 10
          else
            Grabbee.Stats.Mana.Value = 0
          end
          if Grabbee.Stats.Stunned.Value == false then
            Grabbee.Stats.Stun.Value = 999
          end
        end
        applyDamage(Grabbee, 15, Vector3.new(0, 30, 0) + CPlane * 40, true, false, addonCullMovers, 0, 0, "", 0, false, false, 0, true, "IgnoreDefense", true, false)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(Grabbee.Torso.Position, Grabbee.Torso.Position + CPlane * 9.5 + Vector3.new(0, 5, 0)) * CFrame.Angles(math.random(-30, 30) / 50, math.random(-30, 30) / 50, math.random(-30, 30) / 50), "Really black", "SpecialMesh", Vector3.new(6, 6, 2))
        pc.Mesh.MeshType = "FileMesh"
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        pc.Parent = workspace
        pc.Anchored = true
        pc.CanCollide = false
        pc.Transparency = 0.5
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 28 do
      p.Transparency = ii / 28
      p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.1)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.8 - ii * 0.05, 1.8 - ii * 0.05, 0)
      fwait()
    end
    p:Remove()
  end), pc)
        for loel = 1, 8 do
          local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(4, 4, 4))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 25 do
      p.Transparency = 0.5 + i / 50
      p.CFrame = p.CFrame + x / 2
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))), Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
        end
        for loel = 1, 3 do
          local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-25, 25) / 10, math.random(-20, 20) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(4, 4, 4))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 25 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(14 + loel * 8, 14 + loel * 8, 14 + loel * 8) / 25
      p.Transparency = 0.25 + i / 18.75
      p.CFrame = p.CFrame * V
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
        end
      end
      do
        do
          LerpWelds(clastframe, cl, Animations.LHB.Animation(6))
          -- DECOMPILER ERROR at PC2735: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    cbuff:Remove()
    gpos:Remove()
  else
    do
      for i = 1, 4 do
        fwait()
        BodyVel.velocity = BodyVel.velocity / 1.25
      end
      do
        cl = 0
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Volume = 1 - i / 30
      fwait()
    end
    p:Stop()
  end), pb)
        clastframe = lastframe
        BodyVel.maxForce = Vector3.new(1000000, 0, 1000000)
        for i = 1, 15 do
          fwait()
          BodyVel.velocity = BodyVel.velocity / 1.2
          LerpWelds(clastframe, i / 15, Animations.Stand.Animation(0))
        end
        if Grabbee == nil then
          Cooldowns["4"] = CooldownsB["4"] / 3
        else
          Cooldowns["4"] = CooldownsB["4"]
        end
      end
    end
  end
        CanInterrupt(true)
        PlayerIsAttacking = false
        BodyVel.Parent = nil
        BodyGyro.Parent = nil
        Ult = false
end
InputNormals.C = function()
  local useRageVer = false
  if Mana.Value >= 35 and Cooldowns["3"] == 0 then
    Mana.Value = Mana.Value - 35
    Cooldowns["3"] = CooldownsB["3"]
    if Ragemode == true and Corruption >= 20 then
      coroutine.resume(coroutine.create(function()
    for lel = 1, 20 do
      fwait()
      if Corruption > 0 then
        Corruption = Corruption - 1
      else
        break
      end
    end
  end))
      useRageVer = true
    end
  else
    return 
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  ccctime = tick()
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  BodyGyro.cframe = CFrame.new(vPlayer.Character.HumanoidRootPart.CFrame.p, vPlayer.Character.HumanoidRootPart.CFrame.p + CPlane * 50)
  local cl = 0
  local clastframe = lastframe
  local cframes = 0
  BodyVel.Parent = vPlayer.Character.HumanoidRootPart
  BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
  BodyVel.maxForce = Vector3.new(1000000, 1000000, 1000000)
  DesiredWalkspeed = 0
  local Grabbed = {}
  TrackFunction = script.Heartbeat.Event:connect(function()
    if rawframes <= 5 then
      CPlane = MousePlane()
      BodyGyro.cframe = clerp(BodyGyro.cframe, CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50), 1)
    end
    if rawframes <= 6 then
      cframes = rawframes
      cl = cl + cframes * 0.05
      LerpWelds(clastframe, cl, Animations.ShatterCannon.Animation(1))
    elseif rawframes > 6 and rawframes <= 10 then
        if rawframes == 7 then
          tpargen1 = Instance.new("ParticleEmitter")
          tpargen1.Name = "AttackParticleEmitter3"
          tpargen1.Texture = "http://www.roblox.com/asset/?id=243086902"
          tpargen1.LightEmission = 0.1
          tpargen1.ZOffset = 1.3
          tpargen1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.65), NumberSequenceKeypoint.new(1, 1)})
          tpargen1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3.6), NumberSequenceKeypoint.new(1, 0)})
          tpargen1.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0.1, 0.1, 0.1))
          tpargen1.Rate = 120
          tpargen1.VelocitySpread = 180
          tpargen1.Acceleration = Vector3.new(0, -15, 0)
          tpargen1.Speed = NumberRange.new(3, 6)
          tpargen1.Lifetime = NumberRange.new(0.6, 0.8)
          tpargen1.Rotation = NumberRange.new(-180, 180)
          tpargen1.RotSpeed = NumberRange.new(-70, 70)
          tpargen1.Parent = Wep.Blade
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 1
          p.Pitch = 0.8
          p.SoundId = "http://www.roblox.com/asset/?id=231917856"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          clastframe = lastframe
          cl = 0
          local par, loc = workspace:FindPartOnRay(Ray.new(vPlayer.Character.Torso.Position, Vector3.new(0, -3, 0)), vPlayer.Character)
          local pz = NewPart(Vector3.new(6, 6, 1), CFrame.new(loc) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "BlockMesh", Vector3.new(1, 1, 0))
          pz.Transparency = 1
          pz.Anchored = true
          pz.CanCollide = false
          pz.Parent = workspace
          pz.Name = "Rune"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Front"
          d1.Name = "d1"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Back"
          d1.Name = "d2"
          coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 5 do
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(10 + i * 2))
        p.d1.Transparency = 0.9 + i / 50
        p.d2.Transparency = 0.9 + i / 50
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, 0)
        fwait()
      end
      p:Remove()
    end), pz, CPlane)
          game:GetService("Debris"):AddItem(pz, 6)
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 0.8
          p.Pitch = 1
          p.SoundId = "http://www.roblox.com/asset/?id=231917934"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(3, 5, 3))
          pc.Mesh.MeshType = "FileMesh"
          pc.Anchored = true
          pc.CanCollide = false
          pc.Parent = workspace
          pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
          pc.Name = "Shockwave"
          pc.Transparency = 0.5
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
      for ii = 1, 15 do
        p.Transparency = ii / 15
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(5 + ii), 0) - Vector3.new(0, 0.25, 0)
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.3, -0.33, 1.3)
        fwait()
      end
      p:Remove()
    end), pc)
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position + CPlane * 6, vPlayer.Character.Torso.Position - CPlane * 9.5) * CFrame.Angles(-math.pi / 2, math.random(-10, 10), 0), "Institutional white", "SpecialMesh", Vector3.new(7.3, 6, 7.3))
          pc.Mesh.MeshType = "FileMesh"
          pc.Parent = workspace
          pc.Anchored = true
          pc.CanCollide = false
          pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
          pc.Name = "Shockwave"
          pc.Transparency = 0.5
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
      for ii = 1, 9 do
        p.Transparency = 0.5 + ii / 18
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(3 + ii), 0) * CFrame.new(0, 1.5, 0)
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, -0.3, 1)
        fwait()
      end
      p:Remove()
    end), pc)
          for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 25)) do
            applyCameraShake(v, 250, 4)
          end
          applyCameraShake(vPlayer.Character, 250, 4)
end
          cframes = rawframes - 7
          cl = cframes * 0.2
          LerpWelds(clastframe, cframes / 3, Animations.ShatterCannon.Animation(2))
          print(cl, "D")
          print(cframes / 3, "DI")
          for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.4)) do
            applyDamage(v, 10, Vector3.new(), false, false, nil, 0.2, 1, "199149269", 0.5, true, true, 10, false, "Normal", false, false)
            applyCameraShake(v, 50, 5)
            -- DECOMPILER ERROR at PC529: Overwrote pending register: R6 in 'AssignReg'

            local lelpos = Instance.new("BodyPosition", v.Torso)
            lelpos.P = 4000
            lelpos.D = 100
            -- DECOMPILER ERROR at PC534: Overwrote pending register: R6 in 'AssignReg'

            -- DECOMPILER ERROR at PC535: Overwrote pending register: R6 in 'AssignReg'

            lelpos.maxForce = Vector3.new(50000000, 50000000, 50000000)
            lelpos.Parent = v
            lelpos.position = v.HumanoidRootPart.Position + CPlane * 3 + BodyVel.velocity / 5
			game:GetService("Debris"):AddItem(lelpos, 0.5)
            -- DECOMPILER ERROR at PC561: Overwrote pending register: R6 in 'AssignReg'

            -- DECOMPILER ERROR at PC562: Overwrote pending register: R6 in 'AssignReg'
            coroutine.resume(coroutine.create(function(p)
      while p.Parent do
        p.position = Wep.Blade.Position + CPlane * 1
        fwait()
      end
    end), lelpos)
            -- DECOMPILER ERROR at PC570: Overwrote pending register: R6 in 'AssignReg'

            DidHit = true
            -- DECOMPILER ERROR at PC572: Overwrote pending register: R6 in 'AssignReg'
            local eff = NewPart(Vector3.new(1, 1, 1), v.Torso.CFrame * CFrame.new(math.random(-15, 15) / 50, math.random(-20, 15) / 50, math.random(-5, 5) / 50) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Bright red", "BlockMesh", Vector3.new(1.3, 1.3, 1.3))
            --local eff = nil
            eff.Parent = workspace
            eff.Name = "BloodEffect"
            eff.Anchored = true
            eff.CanCollide = false
            game:GetService("Debris"):AddItem(eff, 5)
            coroutine.resume(coroutine.create(function(p, A, V)
      local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 50
      for i = 1, 12 do
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.2, 1.2, 1.2) * (1 - i / 12)
        p.Transparency = 0.75 + i / 48
        p.CFrame = p.CFrame * A
        fwait()
      end
      p:Remove()
    end), eff, CFrame.Angles(math.rad(math.random(-4, 4) * 4), math.rad(math.random(-4, 4) * 3), math.rad(math.random(-4, 4) * 2)))
            if v:FindFirstChild("BleedController") == nil then
              s = script.BleedController:clone()
              s.Disabled = false
              s.Parent = v
              showDamage(v, "Bleeding", "Debuff", "IgnoreDefense")
            end
          end
end
              if rawframes >= 23 then
                local cwalk = "Stand"
                if Ragemode == true then
                  cwalk = "Stand2"
                end
                LerpWelds({Animations.ShatterCannon.Animation(2)}, (rawframes - 23) / 10, Animations[cwalk].Animation(0))
              end
              -- DECOMPILER ERROR at PC745: Unhandled construct in 'MakeBoolean' P1

              if useRageVer == false and rawframes >= 9 and rawframes <= 18 then
                if rawframes == 10 then
                  for LOUD = 1, 1 do
                    p = Instance.new("Sound", vPlayer.Character.Torso)
                    p.Volume = 1
                    p.Pitch = 0.8
                    p.SoundId = "http://www.roblox.com/asset/?id=243711322"
                    p:Play()
                    game:GetService("Debris"):AddItem(p, 3)
                  end
                end
                  if rawframes % 2 == 0 then
                    for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.4)) do
                      applyDamage(v, 2, Vector3.new(), false, false, nil, 0, 1, "199149137", math.random(60, 70) / 100, false, true, 3, false, "IgnoreDefense", false, false)
                      applyCameraShake(v, 50, 3)
                      if v:FindFirstChild("BleedController") == nil then
                        s = script.BleedController:clone()
                        s.Disabled = false
                        s.Parent = v--]]
                        -- DECOMPILER ERROR at PC835: Overwrote pending register: R8 in 'AssignReg'

                        showDamage(v, "Bleeding", "Debuff", "IgnoreDefense")
                      end
                      -- DECOMPILER ERROR at PC842: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC847: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC848: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC869: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC870: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC888: Overwrote pending register: R8 in 'AssignReg'
																																																																						--(size, cframe, color, meshtype, meshscale)
                      --[[local eff = NewPart(Vector3.new(1, 1, 1), v.Torso.CFrame * CFrame.new(math.random(-15, 15) / 20, math.random(-20, 15) / 20, math.random(-5, 5) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Bright red", "BlockMesh", Vector3.new(1, 1, 1))
                      eff.Parent = workspace
                      eff.Name = "BloodEffect"
                      eff.Anchored = true
                      eff.CanCollide = false
                      -- DECOMPILER ERROR at PC904: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC907: Overwrote pending register: R8 in 'AssignReg'

                      game:GetService("Debris"):AddItem(eff, 5)--]]
                      -- DECOMPILER ERROR at PC914: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC916: Overwrote pending register: R8 in 'AssignReg'

                      --coroutine.resume(coroutine.create(R8_PC701), R8_PC701, CFrame.Angles(math.rad(math.random(-4, 4) * 4), math.rad(math.random(-4, 4) * 3), math.rad(math.random(-4, 4) * 2)))
                    end
                    print("XXX")
                    for sus = 1, 2 do
                      local px = Instance.new("Part", Wep)
                      px.Name = "Spike"
                      px.formFactor = "Custom"
                      -- DECOMPILER ERROR at PC968: Overwrote pending register: R8 in 'AssignReg'

                      px.Size = Vector3.new(0.2, 0.2, 0.2)
                      px.Anchored = false
                      px.CanCollide = false
                      px.CFrame = vPlayer.Character.Torso.CFrame
                      px:BreakJoints()
                      px.TopSurface = 0
                      px.BottomSurface = 0
                      px.BrickColor = BrickColor.new("Black")
                      px.Material = "Metal"
                      local m = Instance.new("SpecialMesh", px)
                      m.MeshType = "FileMesh"
                      m.MeshId = "http://www.roblox.com/asset/?id=1033714"
                      -- DECOMPILER ERROR at PC998: Overwrote pending register: R8 in 'AssignReg'

                      m.Scale = Vector3.new(0.0375, 0.0375--[[R8_PC701]], math.random(20, 30) / 100)
                      local w = Instance.new("Weld", px)
                      w.Part0 = Wep.Blade
                      w.Part1 = px
                      -- DECOMPILER ERROR at PC1017: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC1026: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC1027: Overwrote pending register: R8 in 'AssignReg'

                      w.C0 = CFrame.new(0, -1.8 + (rawframes - 10) / 3.75 + sus * 0.05, 0)-- * R8_PC701
                      -- DECOMPILER ERROR at PC1048: Overwrote pending register: R8 in 'AssignReg'

                      local pargen1 = Instance.new("ParticleEmitter", px)
                      pargen1.Name = "Emitter"
                      pargen1.Texture = "http://www.roblox.com/asset/?id=243086902"
                      pargen1.LightEmission = 0.15
                      pargen1.ZOffset = 1
                      -- DECOMPILER ERROR at PC1054: Overwrote pending register: R8 in 'AssignReg'

                      -- DECOMPILER ERROR at PC1055: Overwrote pending register: R8 in 'AssignReg'

                      --[[R8_PC701 = R8_PC701({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
                      pargen1.Transparency = R8_PC701
                      R8_PC701 = NumberSequence
                      R8_PC701 = R8_PC701.new
                      R8_PC701 = R8_PC701({NumberSequenceKeypoint.new(0, 1.5), NumberSequenceKeypoint.new(1, 0)})
                      pargen1.Size = R8_PC701
                      R8_PC701 = ColorSequence
                      R8_PC701 = R8_PC701.new
                      R8_PC701 = R8_PC701(Color3.new(0, 0, 0), Color3.new(0.1, 0.1, 0.1))
                      pargen1.Color = R8_PC701
                      pargen1.Rate = 40
                      pargen1.VelocitySpread = 5
                      R8_PC701 = Vector3
                      R8_PC701 = R8_PC701.new
                      R8_PC701 = R8_PC701(0, 0, 0)
                      pargen1.Acceleration = R8_PC701
                      R8_PC701 = NumberRange
                      R8_PC701 = R8_PC701.new
                      R8_PC701 = R8_PC701(8, 13)
                      pargen1.Speed = R8_PC701
                      R8_PC701 = NumberRange
                      R8_PC701 = R8_PC701.new
                      R8_PC701 = R8_PC701(0.5, 0.5)
                      pargen1.Lifetime = R8_PC701
                      R8_PC701 = NumberRange
                      R8_PC701 = R8_PC701.new
                      R8_PC701 = R8_PC701(-180, 180)
                      pargen1.Rotation = R8_PC701
                      R8_PC701 = NumberRange
                      R8_PC701 = R8_PC701.new
                      R8_PC701 = R8_PC701(-80, 80)
                      pargen1.RotSpeed = R8_PC701
                      pargen1.Parent = px
                      R8_PC701 = w.Part1
                      w.Parent = R8_PC701
                      R8_PC701 = game
                      R8_PC701 = R8_PC701(R8_PC701, "Debris")
                      R8_PC701(R8_PC701, px, 7)--]]
                              pargen1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
                              pargen1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.5), NumberSequenceKeypoint.new(1, 0)})
                              pargen1.Color = ColorSequence.new(Color3.new(0.15, 0.05, 0.2), Color3.new(0.1, 0.1, 0.1))
                              pargen1.Rate = 40
                              pargen1.VelocitySpread = 5
                              pargen1.Acceleration = Vector3.new(0, 0, 0)
                              pargen1.Speed = NumberRange.new(8, 13)
                              pargen1.Lifetime = NumberRange.new(0.5, 0.5)
                              pargen1.Rotation = NumberRange.new(-180, 180)
                              pargen1.RotSpeed = NumberRange.new(-80, 80)
                              pargen1.Parent = px
                              w.Parent = w.Part1
                              game:GetService("Debris"):AddItem(px, 7)
                      -- DECOMPILER ERROR at PC1147: Overwrote pending register: R8 in 'AssignReg'

                      local s = math.random(35, 85) / 10--R8_PC701
                      if sus <= 1 then
                        w.C1 = CFrame.new(0, -0.1, 0) * CFrame.Angles(math.pi, 0, 0)
                      else
                        w.C1 = CFrame.new(0, 0.1, 0) * CFrame.Angles(0, 0, 0)
                        -- DECOMPILER ERROR at PC1180: Overwrote pending register: R8 in 'AssignReg'

                      end
                      coroutine.resume(coroutine.create(function(px, s)
      local sz = math.random(35, 85) / 10
      fwait(0.03 * math.random(0, 8))
      for i = 1, 2 do
        px.Weld.C1 = px.Weld.C1 * CFrame.new(0, -(sz / 2) / 2.5 * s, 0)
        px.Mesh.Scale = px.Mesh.Scale + Vector3.new(0, sz / 2, 0)
        fwait()
      end
      fwait(0.03 * math.random(1, 2))
      for i = 1, 5 do
        px.Weld.C1 = px.Weld.C1 * CFrame.new(0, sz / 5 / 2.5 * s, 0)
        px.Mesh.Scale = px.Mesh.Scale + Vector3.new(0, -(sz / 5), 0)
        fwait()
      end
      px.Transparency = 1
      px.Emitter.Enabled = false
    end), px, s)
                    end
end
end
                      if rawframes >= 9 and rawframes <= 21 then
                        if rawframes == 10 then
                          for LOUD = 1, 1 do
                            p = Instance.new("Sound", vPlayer.Character.Torso)
                            p.Volume = 1
                            p.Pitch = 0.58
                            p.SoundId = "http://www.roblox.com/asset/?id=243711322"
                            p:Play()
                            game:GetService("Debris"):AddItem(p, 3)
                          end
                        end
                          if rawframes % 3 == 0 then
                            for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.4)) do
                              applyDamage(v, 4, Vector3.new(), false, false, nil, 0, 1, "199149137", math.random(60, 70) / 100, true, true, 3, false, "IgnoreDefense", true, false)
                              applyCameraShake(v, 50, 3)
                              local eff = NewPart(Vector3.new(1, 1, 1), v.Torso.CFrame * CFrame.new(math.random(-15, 15) / 20, math.random(-20, 15) / 20, math.random(-5, 5) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Bright red", "BlockMesh", Vector3.new(1, 1, 1))
                              eff.Parent = workspace
                              eff.Name = "BloodEffect"
                              eff.Anchored = true
                              eff.CanCollide = false
                              game:GetService("Debris"):AddItem(eff, 5)
                              coroutine.resume(coroutine.create(function(p, A, V)
      local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 50
      for i = 1, 10 do
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.6, 0.6, 0.6) * (1 - i / 10)
        p.Transparency = 0.75 + i / 40
        p.CFrame = p.CFrame * A
        fwait()
      end
      p:Remove()
    end), eff, CFrame.Angles(math.rad(math.random(-4, 4) * 4), math.rad(math.random(-4, 4) * 3), math.rad(math.random(-4, 4) * 2)))
                              if v:FindFirstChild("BleedController") == nil then
                                s = script.BleedController:clone()
                                s.Disabled = false
                                s.Parent = v
                                showDamage(v, "Bleeding", "Debuff", "IgnoreDefense")
                              end
                            end
                          end
                            print("XXX")
                            for sus = 1, 2 do
                              local px = Instance.new("Part", Wep)
                              px.Name = "Spike"
                              px.formFactor = "Custom"
                              px.Size = Vector3.new(0.2, 0.2, 0.2)
                              px.Anchored = false
                              px.CanCollide = false
                              px.CFrame = vPlayer.Character.Torso.CFrame
                              px:BreakJoints()
                              px.TopSurface = 0
                              px.BottomSurface = 0
                              px.BrickColor = BrickColor.new("Black")
                              px.Material = "Metal"
                              local m = Instance.new("SpecialMesh", px)
                              m.MeshType = "FileMesh"
                              m.MeshId = "http://www.roblox.com/asset/?id=1033714"
                              m.Scale = Vector3.new(0.0375, 0.2, math.random(15, 25) / 100)
                              local w = Instance.new("Weld")
                              w.Part0 = Wep.Blade
                              w.Part1 = px
                              w.C0 = CFrame.new(0, -1.8 + (rawframes - 10) / 4.5 + sus * 0.05, 0) * CFrame.Angles(math.pi / 2 + math.rad(math.random(-15, 15) * 3), 0, 0)
                              local pargen1 = Instance.new("ParticleEmitter")
                              pargen1.Name = "Emitter"
                              pargen1.Texture = "http://www.roblox.com/asset/?id=243086902"
                              pargen1.LightEmission = 0.15
                              pargen1.ZOffset = 1
                              pargen1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
                              pargen1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.5), NumberSequenceKeypoint.new(1, 0)})
                              pargen1.Color = ColorSequence.new(Color3.new(0.15, 0.05, 0.2), Color3.new(0.1, 0.1, 0.1))
                              pargen1.Rate = 40
                              pargen1.VelocitySpread = 5
                              pargen1.Acceleration = Vector3.new(0, 0, 0)
                              pargen1.Speed = NumberRange.new(8, 13)
                              pargen1.Lifetime = NumberRange.new(0.5, 0.5)
                              pargen1.Rotation = NumberRange.new(-180, 180)
                              pargen1.RotSpeed = NumberRange.new(-80, 80)
                              pargen1.Parent = px
                              w.Parent = w.Part1
                              game:GetService("Debris"):AddItem(px, 7)
                              px.Anchored = false
                              local s = -1
                              if sus <= 1 then
                                w.C1 = CFrame.new(0, -0.1, 0) * CFrame.Angles(math.pi, 0, 0)
                              else
                                w.C1 = CFrame.new(0, 0.1, 0) * CFrame.Angles(0, 0, 0)
                                s = 1
                              end
                              coroutine.resume(coroutine.create(function(px, s)
      local sz = math.random(40, 80) / 10
      fwait(0.03 * math.random(0, 8))
      for i = 1, 2 do
        px.Weld.C1 = px.Weld.C1 * CFrame.new(0, -(sz / 2) / 2.5 * s, 0)
        px.Mesh.Scale = px.Mesh.Scale + Vector3.new(0, sz / 2, 0)
        fwait()
      end
      for i = 1, 4 do
        px.Weld.C1 = px.Weld.C1 * CFrame.new(0, sz / 4 / 2.5 * s, 0)
        px.Mesh.Scale = px.Mesh.Scale + Vector3.new(0, -(sz / 4), 0)
        fwait()
      end
      px.Transparency = 1
      px.Emitter.Enabled = false
    end), px, s)
                            end
end
                              if rawframes == 20 then
                                tpargen1.Enabled = false
                                game:GetService("Debris"):AddItem(tpargen1, 5)
                              end
                              if rawframes >= 6 and rawframes <= 9 and DidHit == false then
                                BodyVel.velocity = BodyVel.velocity + CPlane * (rawframes * 3.3 + 15)
                              else
                                BodyVel.velocity = BodyVel.velocity / 1.35
                              end
                              if rawframes == 33 then
                                TrackFunction:disconnect()
                                TrackFunction = nil
                                DesiredWalkspeed = 16 * playerstats.Movement.Value
                                PlayerIsAttacking = false
                                CanInterrupt(true)
                                setlastnormal("")
                                BodyVel.maxForce = Vector3.new(1000000, 0, 1000000)
                                Stand()
                              end
rawframes = rawframes + 1
            end)
end
InputNormals.Z = function()
  local StunnedPlayer = nil
  local pos = vPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
    for _,v in pairs(GetNubsInRadius(pos, 6)) do
      if v:FindFirstChild("Stats") and v.Stats:FindFirstChild("Stunned") and v:FindFirstChild("Torso") and v.Stats.Stunned.Value == true and (v.Torso.Position - (pos + MousePlane() * 3)).magnitude <= 4.5 then
        StunnedPlayer = v
        break
      end
    end
    if StunnedPlayer == nil then
      local useRageVer = false
      if Mana.Value >= 20 and Cooldowns["1"] == 0 then
        Mana.Value = Mana.Value - 20
        Cooldowns["1"] = CooldownsB["1"]
        if Ragemode == true and Corruption >= 20 then
          coroutine.resume(coroutine.create(function()
    for lel = 1, 20 do
      fwait()
      if Corruption > 0 then
        Corruption = Corruption - 1
      else
        break
      end
    end
  end))
          useRageVer = true
        end
      else
        return 
      end
      if TrackFunction ~= nil then
        TrackFunction:disconnect()
        TrackFunction = nil
      end
      CanInterrupt(false)
      PlayerIsAttacking = true
      local rawframes = 0
      Tool.Status.AnimFrame.Value = 0
      local DidHit = false
      local CPlane = MousePlane()
      vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
      DesiredWalkspeed = 0
      local cl = 0
      local clastframe = lastframe
      BodyVel.Parent = vPlayer.Character.HumanoidRootPart
      local cwalk = "Stand"
      if Ragemode then
        cwalk = "Stand2"
      end
      local Grabbee = nil
      sos = 0
      BodyVel.maxForce = Vector3.new(1000000, 1000000, 1000000)
      p = Instance.new("Sound", vPlayer.Character.Torso)
      p.Volume = 1
      p.Pitch = 0.9
      p.SoundId = "http://www.roblox.com/asset/?id=241816017"
      p:Play()
      game:GetService("Debris"):AddItem(p, 3)
      TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    CPlane = CharacterPlane()
    if rawframes <= 4 then
      LerpWelds(clastframe, rawframes / 4, Animations.LHB.Animation(2))
      if rawframes == 3 then
        p = Instance.new("Sound", vPlayer.Character["Left Arm"])
        p.Volume = 1
        p.Pitch = 0.55
        p.SoundId = "http://www.roblox.com/asset/?id=233856146"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
      local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -2, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(3, 3, 3))
      pc.CanCollide = false
      pc.Anchored = true
      pc.Parent = workspace
      game:GetService("Debris"):AddItem(pc, 5)
      coroutine.resume(coroutine.create(function(p, x)
      local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
      for i = 1, 15 do
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(3, 3, 3) / 15
        p.Transparency = 0.25 + i / 20 + x
        p.CFrame = p.CFrame * R
        fwait()
      end
      p:Remove()
    end), pc, 0.5 - rawframes / 10)
end
    if rawframes >= 5 and rawframes <= 10 and useRageVer == false then
          cl = cl + (rawframes - 4) * 0.05
          LerpWelds({Animations.LHB.Animation(2)}, cl, Animations.LHB.Animation(3))
        elseif rawframes >= 5 and rawframes <= 17 and useRageVer == true then
            if rawframes <= 10 then
              cl = cl + (rawframes - 4) * 0.05
              LerpWelds({Animations.LHB.Animation(2)}, cl, Animations.LHB.Animation(3))
            end
            if Grabbee and rawframes <= 14 then
              sos = sos + 1
              applyDamage(Grabbee, 1, Vector3.new(), false, false, nil, 0, 1, "231917788", 0.7, false, false, 2, true, "Pure", true, false)
              lelpos.Position = vPlayer.Character.HumanoidRootPart.Position + CPlane * 17
              lelpos.Parent.CFrame = CFrame.new(lelpos.position, vPlayer.Character.HumanoidRootPart.Position)
          end
end
        --if Grabbee then
          if rawframes >= 18 and rawframes <= 22 then
            LerpWelds({Animations.LHB.Animation(3)}, (rawframes - 17) / 4, Animations.LHB.Animation(2))
          elseif rawframes >= 23 and rawframes <= 29 then
              LerpWelds({Animations.LHB.Animation(2)}, (rawframes - 22) / 6, Animations[cwalk].Animation(0))
          end
          if Grabbee and rawframes == 18 then
            if useRageVer == false then
              applyDamage(Grabbee, 10, Vector3.new(0, 20, 0) + CPlane * 32.5, false, false, nil, 0, 1, "", 1, true, true, 15, true, "IgnoreDefense", true, false)
              if Grabbee:FindFirstChild("Stats") then
                cbuff = Instance.new("NumberValue", Grabbee.Stats.Decrease)
                cbuff.Name = "DecreaseDef"
                cbuff.Value = 0.1
                game:GetService("Debris"):AddItem(cbuff, 3)
                if Grabbee:FindFirstChild("Stats") then
--[[                  s = script.ForceGuardDown:clone()
                  s.Disabled = false
                  s.Parent = Grabbee.Stats.Block--]]
                end
              end
            else
              applyDamage(Grabbee, 10, Vector3.new(0, 25, 0) + CPlane * 47.5, false, false, nil, 0, 1, "", 1, true, true, 25, true, "IgnoreDefense", true, false)
              if Grabbee:FindFirstChild("Stats") then
                cbuff = Instance.new("NumberValue", Grabbee.Stats.Decrease)
                cbuff.Name = "DecreaseDef"
                cbuff.Value = 0.15
                game:GetService("Debris"):AddItem(cbuff, 3)
                if Grabbee:FindFirstChild("Stats") then
--[[                  s = script.ForceGuardDown:clone()
                  s.Disabled = false
                  s.Parent = Grabbee.Stats.Block--]]
                end
              end
            end
            lelpos:Remove()
              if Grabbee:FindFirstChild("Stats") then
                local manaobject = Grabbee.Stats:FindFirstChild("Mana")
                if manaobject and manaobject.Value >= 15 then
                  --script.Parent.DMG.RemoteEventM:FireServer(manaobject, 15)
					manaobject.Value = manaobject.Value - 15
                end
              end
              local p = Instance.new("Sound", Grabbee.Torso)
              p.Volume = 1
              p.Pitch = 0.9
              p.SoundId = "http://www.roblox.com/asset/?id=243711369"
              p:Play()
              game:GetService("Debris"):AddItem(p, 3)
                local p = Instance.new("Sound", Grabbee.Torso)
                p.Volume = 1
                p.Pitch = 0.95
                p.SoundId = "http://www.roblox.com/asset/?id=231917833"
                p:Play()
                game:GetService("Debris"):AddItem(p, 3)
                  for LEL = 1, 3 do
                    local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(Grabbee.Torso.Position, Grabbee.Torso.Position + CPlane * 9.5 + Vector3.new(0, 5, 0)) * CFrame.Angles(math.random(-30, 30) / 50, math.random(-30, 30) / 50, math.random(-30, 30) / 50), "Really black", "BlockMesh", Vector3.new(2, 2, 2))
                    pc.Parent = workspace
                    pc.Anchored = true
                    pc.CanCollide = false
                    pc.Transparency = 1
                    game:GetService("Debris"):AddItem(pc, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
      for i = 1, 12 do
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(7 + LEL * 2, 7 + LEL * 2, 7 + LEL * 2) / 12
        p.Transparency = 0.25 + i / 9
        p.CFrame = p.CFrame * V
        fwait()
      end
      p:Remove()
    end), pc, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
                  end
                coroutine.resume(coroutine.create(function(Grabbee)
      for loel = 1, 6 do
        local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-25, 25) / 10, math.random(-20, 20) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(1, 1, 1))
        eff.Parent = workspace
        eff.Name = "BloodEffect"
        eff.Anchored = true
        eff.CanCollide = false
        game:GetService("Debris"):AddItem(eff, 5)
        coroutine.resume(coroutine.create(function(p, V, x)
        for i = 1, 15 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(5, 5, 5) / 15
          p.Transparency = 0.5 + i / 30
          p.CFrame = p.CFrame * V + Vector3.new(0, 0.2, 0)
          fwait()
        end
        p:Remove()
      end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
        fwait(0.2)
      end
    end), Grabbee)
end
                if rawframes == 30 then
                  TrackFunction:disconnect()
                  TrackFunction = nil
                  DesiredWalkspeed = 16 * playerstats.Movement.Value
                  PlayerIsAttacking = false
                  CanInterrupt(true)
                  setlastnormal("")
                  BodyVel.maxForce = Vector3.new(1000000, 0, 1000000)
                  Stand()
                end
                if rawframes >= 18 then
                  LerpWelds({Animations.LHB.Animation(3)}, (rawframes - 17) / 8, Animations[cwalk].Animation(0))
                end
                if rawframes == 25 then
                  BodyVel.maxForce = Vector3.new(1000000, 0, 1000000)
                  TrackFunction:disconnect()
                  TrackFunction = nil
                  DesiredWalkspeed = 16 * playerstats.Movement.Value
                  PlayerIsAttacking = false
                  CanInterrupt(true)
                  setlastnormal("")
                  Stand()
                end
                if rawframes >= 6 and rawframes <= 11 then
                  if useRageVer == false then
                    BodyVel.velocity = CPlane * (rawframes * 6.5 + 40)
                  else
                    BodyVel.velocity = CPlane * (rawframes * 9.5 + 55)
                  end
                  if Grabbee == nil then
                    for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + CPlane * 2.5, 3.5)) do
                      Grabbee = v
                      applyDamage(Grabbee, 6, Vector3.new(), false, false, nil, 0, 1, "153092213", 1.2, false, false, 10, true, "Normal", true, false)
                      p = Instance.new("Sound", Grabbee.Torso)
                      p.Volume = 1
                      p.Pitch = 0.9
                      p.SoundId = "http://www.roblox.com/asset/?id=240429615"
                      p:Play()
                      game:GetService("Debris"):AddItem(p, 3)
                      local par, loc = workspace:FindPartOnRay(Ray.new(Grabbee.Torso.Position, Vector3.new(0, -10, 0)), Grabbee)
                      lelpos = Instance.new("BodyPosition", Grabbee.Torso)
                      lelpos.P = 400
                      lelpos.D = 100
                      lelpos.maxForce = Vector3.new(5000000, 5000000, 5000000)
                      lelpos.position = loc + Vector3.new(0, 3, 0) + CPlane * 6.6
                      do break end
                    end
                  end
                else
                    BodyVel.velocity = BodyVel.velocity / 1.3
                    if Grabbee and useRageVer == false then
                      BodyVel.velocity = BodyVel.velocity / 3
                    end
                      if rawframes >= 5 and rawframes <= 20 then
                        local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -2, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(3, 3, 3))
                        pc.CanCollide = false
                        pc.Anchored = true
                        pc.Parent = workspace
                        game:GetService("Debris"):AddItem(pc, 5)
                        coroutine.resume(coroutine.create(function(p)
      local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
      for i = 1, 18 do
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(3, 3, 3) / 18
        p.Transparency = 0.5 + i / 36
        p.CFrame = p.CFrame * R
        fwait()
      end
      p:Remove()
    end), pc)
                      end
                    end
              --end
        --end
rawframes = rawframes + 1
  end)
    else
        local useRageVer = false
        if Cooldowns["5"] == 0 then
          Cooldowns["5"] = CooldownsB["5"]
          if Ragemode == true and Corruption >= 20 then
            coroutine.resume(coroutine.create(function()
    for lel = 1, 20 do
      fwait()
      if Corruption > 0 then
        Corruption = Corruption - 1
      else
        break
      end
    end
  end))
            useRageVer = true
          end
        else
          return 
        end
        if TrackFunction ~= nil then
          TrackFunction:disconnect()
          TrackFunction = nil
        end
        CanInterrupt(false)
        PlayerIsAttacking = true
        local rawframes = 0
        Tool.Status.AnimFrame.Value = 0
        local DidHit = false
        local dir = (-vPlayer.Character.HumanoidRootPart.Position - StunnedPlayer.Torso.Position).unit
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
        DesiredWalkspeed = 0
        local cl = 0
        local clastframe = lastframe
        if useRageVer == false then
          TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes <= 7 then
      cl = cl + rawframes * 0.036
      LerpWelds(clastframe, cl, Animations.Antisleep.Animation(0))
    elseif rawframes >= 8 and rawframes <= 10 then
        cl = 0
        if rawframes == 8 then
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 1
          p.Pitch = 0.9
          p.SoundId = "http://www.roblox.com/asset/?id=233856140"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          clastframe = lastframe
        end
        if rawframes == 10 then
          for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 25)) do
            applyCameraShake(v, 100, 6)
          end
          cbuff = Instance.new("NumberValue", StunnedPlayer.Stats.Decrease)
          cbuff.Name = "DecreaseMvmt"
          cbuff.Value = 0.15
          game:GetService("Debris"):AddItem(cbuff, 5)
          cbuff = Instance.new("NumberValue", StunnedPlayer.Stats.Decrease)
          cbuff.Name = "DecreaseDef"
          cbuff.Value = 0.15
          game:GetService("Debris"):AddItem(cbuff, 5)
          stp = Instance.new("BodyPosition", StunnedPlayer.Torso)
          stp.position = StunnedPlayer.Torso.Position
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 0.5
          p.Pitch = 1.2
          p.SoundId = "http://www.roblox.com/asset/?id=231917806"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          applyCameraShake(vPlayer.Character, 100, 6)
          applyDamage(StunnedPlayer, 3, Vector3.new(0, 17.5, 0), false, false, addonCullMovers, 0.1, 1, "153092227", 1, false, false, 0, true, "Normal", false, false)
          local par, loc = workspace:FindPartOnRay(Ray.new(vPlayer.Character["Left Leg"].Position, Vector3.new(0, -1, 0)), vPlayer.Character)
          local pz = NewPart(Vector3.new(2, 2, 1), CFrame.new(loc) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "BlockMesh", Vector3.new(2.5, 2.5, 0))
          pz.Transparency = 1
          pz.Anchored = true
          pz.CanCollide = false
          pz.Parent = workspace
          pz.Name = "Rune"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Front"
          d1.Name = "d1"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Back"
          d1.Name = "d2"
          coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 5 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(20 + i * 2))
        p.d1.Transparency = 0.5 + i / 10
        p.d2.Transparency = 0.5 + i / 10
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.5, 1.5, 0)
      end
      p:Remove()
    end), pz, CPlane)
          game:GetService("Debris"):AddItem(pz, 6)
        end
          LerpWelds(clastframe, (rawframes - 7) / 3, Animations.Antisleep.Animation(1))
end
          if rawframes >= 13 and rawframes <= 21 then
            if rawframes == 13 then
              clastframe = lastframe
            end
            cl = cl + (rawframes - 12) * 0.022
            LerpWelds(clastframe, cl, Animations.Antisleep.Animation(2))
          elseif rawframes >= 22 and rawframes <= 27 then
              if rawframes == 22 then
                cl = 0
                clastframe = lastframe
              end
              cl = cl + (rawframes - 21) * 0.054
              LerpWelds(clastframe, cl, Animations.Antisleep.Animation(3))
              if rawframes == 22 then
                p = Instance.new("Sound", vPlayer.Character.Torso)
                p.Volume = 1
                p.Pitch = 1
                p.SoundId = "http://www.roblox.com/asset/?id=233856140"
                p:Play()
                game:GetService("Debris"):AddItem(p, 3)
                clastframe = lastframe
              end
              if rawframes == 24 then
                stp:Remove()
                applyCameraShake(StunnedPlayer, 150, 4)
                applyCameraShake(vPlayer.Character, 150, 4)
                applyDamage(StunnedPlayer, 7, Vector3.new(0, 5, 0) + CPlane * 55, false, false, nil, 0.1, 1, "153092213", 1, false, false, 0, true, "Normal", false, false)
              end
            elseif rawframes >= 28 and rawframes <= 32 then
                LerpWelds(clastframe, 1 + (cl - 1) * (1 - (rawframes - 28) / 4), Animations.Antisleep.Animation(3))
              elseif rawframes >= 33 then
                  if rawframes == 33 then
                    clastframe = lastframe
                  end
                  local cwalk = "Stand"
                  if Ragemode == true then
                    cwalk = "Stand2"
                  end
                  LerpWelds(clastframe, (rawframes - 32) / 5, Animations[cwalk].Animation(0))
                end
            if rawframes == 0 then
              BodyGyro.Parent.CFrame = BodyGyro.cframe
            end
            if rawframes == 37 then
              TrackFunction:disconnect()
              TrackFunction = nil
              DesiredWalkspeed = 16 * playerstats.Movement.Value
              PlayerIsAttacking = false
              CanInterrupt(true)
              setlastnormal("")
              Stand()
            end
            rawframes = rawframes + 1
          end)
          coroutine.resume(coroutine.create(function(stat)
    repeat
      fwait()
    until stat.Value <= 20
    stat.Value = stat.Value + 40
  end), StunnedPlayer.Stats.Stun)
        elseif useRageVer == true then
     TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes <= 7 then
      cl = cl + rawframes * 0.036
      LerpWelds(clastframe, cl, Animations.Antisleep.Animation(0))
    else
      if rawframes >= 8 and rawframes <= 10 then
        cl = 0
        if rawframes == 8 then
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 1
          p.Pitch = 0.9
          p.SoundId = "http://www.roblox.com/asset/?id=233856140"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          clastframe = lastframe
        end
        if rawframes == 10 then
          for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 25)) do
            applyCameraShake(v, 100, 6)
          end
          cbuff = Instance.new("NumberValue", StunnedPlayer.Stats.Decrease)
          cbuff.Name = "DecreaseMvmt"
          cbuff.Value = 0.33
          game:GetService("Debris"):AddItem(cbuff, 4)
          stp = Instance.new("BodyPosition", StunnedPlayer.Torso)
          stp.position = StunnedPlayer.Torso.Position
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 0.5
          p.Pitch = 1.2
          p.SoundId = "http://www.roblox.com/asset/?id=231917806"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          applyCameraShake(vPlayer.Character, 100, 6)
          applyDamage(StunnedPlayer, 3, Vector3.new(0, 10, 0), false, false, addonCullMovers, 0.1, 1, "153092227", 1, false, false, 20, true, "IgnoreDefense", false, false)
          local par, loc = workspace:FindPartOnRay(Ray.new(vPlayer.Character["Left Leg"].Position, Vector3.new(0, -1, 0)), vPlayer.Character)
          local pz = NewPart(Vector3.new(2, 2, 1), CFrame.new(loc) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "BlockMesh", Vector3.new(2.5, 2.5, 0))
          pz.Transparency = 1
          pz.Anchored = true
          pz.CanCollide = false
          pz.Parent = workspace
          pz.Name = "Rune"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Front"
          d1.Name = "d1"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Back"
          d1.Name = "d2"
          coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 5 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(20 + i * 2))
        p.d1.Transparency = 0.5 + i / 10
        p.d2.Transparency = 0.5 + i / 10
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.5, 1.5, 0)
      end
      p:Remove()
    end), pz, CPlane)
          game:GetService("Debris"):AddItem(pz, 6)
        end
          LerpWelds(clastframe, (rawframes - 7) / 3, Animations.Antisleep.Animation(1))
end
end
          if rawframes >= 13 and rawframes <= 24 then
            if rawframes == 13 then
              p = Instance.new("Sound", vPlayer.Character.Torso)
              p.Volume = 1
              p.Pitch = 1
              p.SoundId = "http://www.roblox.com/asset/?id=240428955"
              p:Play()
              game:GetService("Debris"):AddItem(p, 3)
            end
            if rawframes <= 18 then
              LerpWelds({Animations.Antisleep.Animation(1)}, (rawframes - 10) / 4, Animations.Antisleep.Animation(5))
            end
            if rawframes % 4 == 0 then
              applyDamage(StunnedPlayer, 3, Vector3.new(0, -5, 0), false, false, nil, 0, 1, "", 1, false, false, 0, true, "Normal", false, false)
            end
            LeftHip.C0 = sLeftHip.C0 * CFrame.Angles(0, math.cos(math.rad((rawframes - 13) * 360 / 11)) / 7, 0)
          elseif rawframes >= 25 and rawframes <= 33 then
              if rawframes == 25 then
                clastframe = lastframe
              end
              cl = cl + (rawframes - 24) * 0.022
              LerpWelds(clastframe, cl, Animations.Antisleep.Animation(2))
            elseif rawframes >= 34 and rawframes <= 39 then
                if rawframes == 34 then
                  cl = 0
                  clastframe = lastframe
                end
                cl = cl + (rawframes - 33) * 0.054
                LerpWelds(clastframe, cl, Animations.Antisleep.Animation(3))
                if rawframes == 34 then
                  p = Instance.new("Sound", vPlayer.Character.Torso)
                  p.Volume = 1
                  p.Pitch = 1
                  p.SoundId = "http://www.roblox.com/asset/?id=233856140"
                  p:Play()
                  game:GetService("Debris"):AddItem(p, 3)
                  clastframe = lastframe
                end
                if rawframes == 36 then
                  stp:Remove()
                  applyCameraShake(StunnedPlayer, 150, 4)
                  applyCameraShake(vPlayer.Character, 150, 4)
                  applyDamage(StunnedPlayer, 7, Vector3.new(0, 5, 0) + CPlane * 65, false, false, nil, 0.1, 1, "153092213", 1, false, false, 20, true, "IgnoreDefense", false, false)
                end
              elseif rawframes >= 40 and rawframes <= 44 then
                  LerpWelds(clastframe, 1 + (cl - 1) * (1 - (rawframes - 40) / 4), Animations.Antisleep.Animation(3))
                elseif rawframes >= 45 then
                    if rawframes == 45 then
                      clastframe = lastframe
                    end
                    local cwalk = "Stand"
                    if Ragemode == true then
                      cwalk = "Stand2"
                    end
                    LerpWelds(clastframe, (rawframes - 44) / 5, Animations[cwalk].Animation(0))
                  end
            if rawframes == 0 then
              BodyGyro.Parent.CFrame = BodyGyro.cframe
            end
            if rawframes == 49 then
              TrackFunction:disconnect()
              TrackFunction = nil
              DesiredWalkspeed = 16 * playerstats.Movement.Value
              PlayerIsAttacking = false
              CanInterrupt(true)
              setlastnormal("")
              Stand()
            end
            rawframes = rawframes + 1
          end)
          coroutine.resume(coroutine.create(function(stat)
    repeat
      fwait()
    until stat.Value <= 20
    stat.Value = stat.Value + 40
  end), StunnedPlayer.Stats.Stun)
        end
      end
  end
InputNormals.X = function()
  local useRageVer = false
  if Mana.Value >= 30 and Cooldowns["2"] == 0 then
    Mana.Value = Mana.Value - 30
    Cooldowns["2"] = CooldownsB["2"]
    if Ragemode == true and Corruption >= 20 then
      coroutine.resume(coroutine.create(function()
    for lel = 1, 20 do
      fwait()
      if Corruption > 0 then
        Corruption = Corruption - 1
      else
        break
      end
    end
  end))
      useRageVer = true
    end
  else
    return 
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  local llastnormal = lastnormal
  if llastnormal == "MMMMMM" then
    llastnormal = "MMMMM"
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  ccctime = tick()
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  local cl = 0
  local clastframe = lastframe
  local cproj = nil
  local cprojtab = {}
  local cpm = Instance.new("Model")
  game:GetService("Debris"):AddItem(cpm, 10)
  cpm.Name = "BSHolder"
  DesiredWalkspeed = 0
  TrackFunction = FakeHeartbeat.Event:connect(function()
    if rawframes < 4 then
      CPlane = MousePlane()
    end
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes == 0 then
      BodyGyro.Parent.CFrame = BodyGyro.cframe
    end
      if rawframes < 25 then
        local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(1.6, 1.6, 1.6))
        pc.CanCollide = false
        pc.Anchored = true
        pc.Parent = workspace
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
      local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
      local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40)
      for i = 1, 20 do
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1, 1, 1) / 30
        p.Transparency = 0.5 + i / 40
        p.CFrame = p.CFrame * R - Vector3.new(0, 0.029757575757576 * i, 0) + C
        fwait()
      end
      p:Remove()
    end), pc)
      end
      if rawframes <= 5 then
        LerpWelds(clastframe, rawframes / 5, Animations.BlackSpace.Animation(0))
        if rawframes == 1 then
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 0.85
          p.Pitch = 0.9
          p.SoundId = "http://www.roblox.com/asset/?id=233091161"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
        end
      elseif rawframes > 5 and rawframes <= 8 then
          LerpWelds(clastframe, 1 + (rawframes - 6) * 0.02, Animations.BlackSpace.Animation(0))
          if rawframes == 6 then
            local pz = NewPart(Vector3.new(2, 2, 1), vPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.4, -4.7), "Really black", "BlockMesh", Vector3.new(1.5, 1.5, 0))
            pz.Transparency = 1
            pz.Anchored = true
            pz.CanCollide = false
            pz.Parent = workspace
            pz.Name = "Rune"
            local d1 = Instance.new("Decal", pz)
            d1.Texture = "http://www.roblox.com/asset/?id=233083637"
            d1.Face = "Front"
            d1.Name = "d1"
            d1.Transparency = 0.5
            local d1 = Instance.new("Decal", pz)
            d1.Texture = "http://www.roblox.com/asset/?id=233083637"
            d1.Face = "Back"
            d1.Name = "d2"
            d1.Transparency = 0.5
            coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 28 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(28 - i) / 2)
        if i <= 7 then
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i * 0.3, i * 0.3, 0)
          p.d1.Transparency = 1 - i / 14
          p.d2.Transparency = 1 - i / 14
        end
        if i > 20 then
          p.d1.Transparency = 0.5 + (i - 18) / 16
          p.d2.Transparency = 0.5 + (i - 18) / 16
          p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad((i - 20) * 5) / 2)
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.1, 0.1, 0)
        end
      end
      p:Remove()
    end), pz, CPlane)
            game:GetService("Debris"):AddItem(pz, 6)
          elseif rawframes == 8 then
                local pz = NewPart(Vector3.new(2, 2, 1), vPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.4, -4.7), "Really black", "BlockMesh", Vector3.new(1.5, 1.5, 0))
                pz.Transparency = 1
                pz.Anchored = true
                pz.CanCollide = false
                pz.Parent = workspace
                pz.Name = "Rune"
                local d1 = Instance.new("Decal", pz)
                d1.Texture = "http://www.roblox.com/asset/?id=233083618"
                d1.Face = "Front"
                d1.Name = "d1"
                d1.Transparency = 0.5
                local d1 = Instance.new("Decal", pz)
                d1.Texture = "http://www.roblox.com/asset/?id=233083618"
                d1.Face = "Back"
                d1.Name = "d2"
                d1.Transparency = 0.5
                coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 26 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, -math.rad(28 - i))
        if i <= 7 then
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i * 0.078, i * 0.078, 0)
          p.d1.Transparency = 1 - i / 14
          p.d2.Transparency = 1 - i / 14
        end
        if i > 18 then
          p.d1.Transparency = 0.5 + (i - 18) / 16
          p.d2.Transparency = 0.5 + (i - 18) / 16
          p.CFrame = p.CFrame * CFrame.Angles(0, 0, -math.rad((i - 20) * 5))
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.1, 0.1, 0)
        end
      end
      p:Remove()
    end), pz, CPlane)
                game:GetService("Debris"):AddItem(pz, 6)
end
                elseif rawframes > 8 and rawframes <= 12 then
                  LerpWelds(clastframe, 1.04 - (rawframes - 8) * 0.02, Animations.BlackSpace.Animation(0))
                elseif rawframes > 12 and rawframes <= 17 then
                    cl = cl + (rawframes - 12) * 0.066
                    if rawframes == 15 then
                      p = Instance.new("Sound", vPlayer.Character.Torso)
                      p.Volume = 0.4
                      p.Pitch = 0.7
                      p.SoundId = "http://www.roblox.com/asset/?id=233856140"
                      p:Play()
                      game:GetService("Debris"):AddItem(p, 3)
                    end
                    LerpWelds({Animations.BlackSpace.Animation(0)}, cl, Animations.BlackSpace.Animation(1))
                  elseif rawframes > 17 and rawframes <= 20 then
                      LerpWelds({Animations.BlackSpace.Animation(0)}, 1 + (rawframes - 17) * 0.02, Animations.BlackSpace.Animation(1))
                    elseif rawframes > 20 and rawframes <= 23 then
                        LerpWelds({Animations.BlackSpace.Animation(0)}, 1.04 - (rawframes - 20) * 0.02, Animations.BlackSpace.Animation(1))
                      elseif rawframes > 23 and rawframes <= 32 then
                          local cwalk = "Stand"
                          if Ragemode == true then
                            cwalk = "Stand2"
                          end
                          LerpWelds({Animations.BlackSpace.Animation(1)}, (rawframes - 23) / 12, Animations[cwalk].Animation(0))
end
                  if rawframes == 17 then
                    local eb = BillboardGui("http://www.roblox.com/asset/?id=234376736", vPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.4, -6).p, 0)
                    eb.Parent = workspace
                    eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
                    eb.BillboardGui.Size = UDim2.new(8, 0, 8, 0)
                    eb.BillboardGui.ImageLabel.ImageTransparency = 0.5
                    game:GetService("Debris"):AddItem(eb, 10)
                    if useRageVer == false then
                      p = Instance.new("Sound", eb)
                      p.Volume = 1
                      p.Pitch = 1.05
                      p.SoundId = "http://www.roblox.com/asset/?id=231917975"
                      p:Play()
                      game:GetService("Debris"):AddItem(p, 3)
                      coroutine.resume(coroutine.create(function(p, cdir)
      for i = 1, 55 do
        p.CFrame = p.CFrame + cdir * 0.45
        p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation - (i + 5)
        if i % 8 == 0 and i <= 50 then
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position - Vector3.new(0, 2.2, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Light stone grey", "SpecialMesh", Vector3.new(12, 2, 12))
          pc.Mesh.MeshType = "FileMesh"
          pc.Anchored = true
          pc.CanCollide = false
          pc.Parent = workspace
          pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
          pc.Name = "Shockwave"
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
        for ii = 1, 20 do
          p.Transparency = 0.75 + ii / 80
          p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3 + ii), 0) - Vector3.new(0, 0.05, 0)
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.4, -0.1, 0.4)
          fwait()
        end
        p:Remove()
      end), pc)
          if i <= 50 then
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(0 + math.rad(90), 0, 0), "Really black", "SpecialMesh", Vector3.new(5, 5, 2))
            pc.Mesh.MeshType = "FileMesh"
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
            pc.Parent = workspace
            pc.Anchored = true
            pc.CanCollide = false
            pc.Transparency = 0.5
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 12 do
          p.Transparency = ii / 12
          p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0) + cdir * 0.225
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, 0)
          fwait()
        end
        p:Remove()
      end), pc, cdir)
          end
        end
        do
          if i % 5 == 0 and i <= 50 then
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(math.random(-30, 30) / 50 + math.rad(90), math.random(-30, 30) / 50, math.random(-30, 30) / 50), "Really black", "SpecialMesh", Vector3.new(11, 11, 3))
            pc.Mesh.MeshType = "FileMesh"
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
            pc.Parent = workspace
            pc.Anchored = true
            pc.CanCollide = false
            pc.Transparency = 0.5
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 12 do
          p.Transparency = ii / 12
          p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0) + cdir * 0.225
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.6, 0.6, 0)
          fwait()
        end
        p:Remove()
      end), pc, cdir)
              for _,v in pairs(GetNubsInRadius(p.Position, 22.5)) do
                local sitoop = (p.Position - v.Torso.Position) * 8
                  if v:FindFirstChild("Stats") then
                    local manaobject = v.Stats:FindFirstChild("Mana")
                    if manaobject and manaobject.Value > 0 then
                      --script.Parent.DMG.RemoteEventM:FireServer(manaobject, 1)
					  manaobject.Value = manaobject.Value-1
                    end
                  end
                  if (p.Position - v.Torso.Position).magnitude <= 12 then
                    applyDamage(v, 1, Vector3.new(), false, false, nil, 0, 1, "233856106", math.random(170, 200) / 100, false, false, 0, true, "Pure", true, false)
                    do
                      if v:FindFirstChild("Stats") then
                        local manaobject = v.Stats:FindFirstChild("Mana")
                        if manaobject and manaobject.Value > 0 then
                          --script.Parent.DMG.RemoteEventM:FireServer(manaobject, 1)
manaobject.Value = manaobject.Value-1
                        end
                      end
                      local pz = Instance.new("BodyPosition", v.Torso)
                      pz.P = 3500
                      pz.D = 1100
                      pz.maxForce = Vector3.new(3800000, 3800000, 3800000)
                      pz.position = p.Position + cdir * 7.5
                      game:GetService("Debris"):AddItem(pz, 0.18)
                        local cpro = NewPart(Vector3.new(1, 1, 1), CFrame.new(v.Torso.Position + Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))), "Really black", "BlockMesh", Vector3.new(1, 1, 1))
                        cpro.Anchored = true
                        cpro.CanCollide = false
                        cpro.Reflectance = 0.1
                        cpro.Parent = workspace
                        cpro.Transparency = 0.5
                        game:GetService("Debris"):AddItem(cpro, 10)
                        coroutine.resume(coroutine.create(function(p, cdir, R)
        for ii = 1, 8 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.8, 0.8, 0.8)
          p.Transparency = 0.5 + ii / 16
          p.CFrame = p.CFrame * R
          fwait()
        end
        p:Remove()
      end), cpro, cdir, CFrame.Angles(math.random(-30, 30) / 100, math.random(-30, 30) / 100, math.random(-30, 30) / 100))
                        applyCameraShake(v, 50, 5)
                        do
                          local cpro = NewPart(Vector3.new(1, 1, 1), CFrame.new(v.Torso.Position + Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))), "Really black", "SpecialMesh", Vector3.new(1, 1, 1))
                          cpro.Anchored = true
                          cpro.Mesh.MeshType = "Sphere"
                          cpro.CanCollide = false
                          cpro.Reflectance = 0.1
                          cpro.Parent = workspace
                          cpro.Transparency = 0.5
                          game:GetService("Debris"):AddItem(cpro, 10)
                          coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 7 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
          p.Transparency = 0.5 + ii / 14
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
                          -- DECOMPILER ERROR at PC491: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC491: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC491: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC491: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC491: LeaveBlock: unexpected jumping out DO_STMT

                        end
                      end
                  end
                end
            local cpro = NewPart(Vector3.new(1, 1, 1), p.CFrame, "Really black", "SpecialMesh", Vector3.new(6, 6, 6))
            cpro.Anchored = true
            cpro.Mesh.MeshType = "Sphere"
            cpro.CanCollide = false
            cpro.Reflectance = 0.1
            cpro.Parent = workspace
            cpro.Transparency = 0.5
            game:GetService("Debris"):AddItem(cpro, 10)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 10 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.75, 0.75, 0.75)
          p.Transparency = 0.5 + ii / 20
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
            local cpro = NewPart(Vector3.new(1, 1, 1), p.CFrame, "Really black", "SpecialMesh", Vector3.new(12, 12, 12))
            cpro.Anchored = true
            cpro.Mesh.MeshType = "Sphere"
            cpro.CanCollide = false
            cpro.Reflectance = 0.1
            cpro.Parent = workspace
            cpro.Transparency = 0.5
            game:GetService("Debris"):AddItem(cpro, 10)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 10 do
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.95, 0.95, 0.95)
          p.Transparency = 0.5 + ii / 20
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
            local cpro = NewPart(Vector3.new(1, 1, 1), p.CFrame, "Really black", "SpecialMesh", Vector3.new(17, 17, 17))
            cpro.Anchored = true
            cpro.Mesh.MeshType = "Sphere"
            cpro.CanCollide = false
            cpro.Reflectance = 0.1
            cpro.Parent = workspace
            cpro.Transparency = 0.5
            game:GetService("Debris"):AddItem(cpro, 10)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 15 do
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.2, 1.2, 1.2)
          p.Transparency = 0.75 + ii / 60
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
          end
              fwait()
              -- DECOMPILER ERROR at PC621: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC621: LeaveBlock: unexpected jumping out DO_STMT

            end
      end
      for i = 55, 65 do
        p.CFrame = p.CFrame + cdir * 0.4
        if i >= 60 then
          p.BillboardGui.ImageLabel.ImageTransparency = p.BillboardGui.ImageLabel.ImageTransparency + 0.1
          if i == 60 then
            for _,v in pairs(GetNubsInRadius(p.Position, 30)) do
              applyCameraShake(v, 130, 10)
            end
            applyCameraShake(vPlayer.Character, 130, 10)
            for _,v in pairs(GetNubsInRadius(p.Position, 20)) do
              applyDamage(v, 10, v.Torso.Position - p.Position.unit * 30 + Vector3.new(0, 20, 0), false, false, addonCullMovers, 0.01, 1, "", math.random(190, 220) / 100, true, true, 25, true, "Normal", false, false)
            end
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "SpecialMesh", Vector3.new(6, 6, 2))
            pc.Mesh.MeshType = "FileMesh"
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
            pc.Parent = workspace
            pc.Anchored = true
            pc.CanCollide = false
            pc.Transparency = 0.5
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p)
        for ii = 1, 25 do
          p.Transparency = ii / 25
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(5 - ii * 0.2, 5 - ii * 0.2, 0)
          fwait()
        end
        p:Remove()
      end), pc)
            for loel = 1, 3 do
              local eff = NewPart(Vector3.new(1, 1, 1), p.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(5, 5, 5))
              eff.Parent = workspace
              eff.Name = "BloodEffect"
              eff.Anchored = true
              eff.CanCollide = false
              game:GetService("Debris"):AddItem(eff, 5)
              coroutine.resume(coroutine.create(function(p, V, x)
        for i = 1, 23 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(14 + loel * 8, 14 + loel * 8, 14 + loel * 8) / 23
          p.Transparency = 0.25 + i / 17.25
          p.CFrame = p.CFrame * V
          fwait()
        end
        p:Remove()
      end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
            end
            ps = Instance.new("Sound", p)
            ps.Volume = 1
            ps.Pitch = 0.66
            ps.SoundId = "http://www.roblox.com/asset/?id=231917888"
            ps:Play()
            game:GetService("Debris"):AddItem(ps, 3)
            ps = Instance.new("Sound", p)
            ps.Volume = 1
            ps.Pitch = 0.8
            ps.SoundId = "http://www.roblox.com/asset/?id=192410084"
            ps:Play()
            game:GetService("Debris"):AddItem(ps, 3)
          end
        end
            p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation - (i + 5)
            fwait()
            -- DECOMPILER ERROR at PC907: LeaveBlock: unexpected jumping out DO_STMT

          end
      p:Remove()
    end), eb, CPlane)
                    else
                      p = Instance.new("Sound", eb)
                      p.Volume = 1
                      p.Pitch = 1.2
                      p.SoundId = "http://www.roblox.com/asset/?id=188959258"
                      p:Play()
                      game:GetService("Debris"):AddItem(p, 3)
                      local partic1 = Instance.new("ParticleEmitter", eb)
                      partic1.Name = "AttackParticleEmitter3"
                      partic1.Texture = "http://www.roblox.com/asset/?id=233839085"
                      partic1.LightEmission = 0
                      partic1.ZOffset = 1.6
                      partic1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0.5), NumberSequenceKeypoint.new(1, 1)})
                      partic1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 9), NumberSequenceKeypoint.new(1, 0)})
                      partic1.Color = ColorSequence.new(Color3.new(0.8, 0.8, 0.8), Color3.new(0.8, 0.8, 0.8))
                      partic1.Rate = 20
                      partic1.VelocitySpread = 0
                      partic1.Speed = NumberRange.new(0, 0)
                      partic1.Lifetime = NumberRange.new(1, 1)
                      partic1.Rotation = NumberRange.new(-180, 180)
                      partic1.RotSpeed = NumberRange.new(800, 800)
                      partic1.Enabled = false
                      coroutine.resume(coroutine.create(function(p, cdir)
      for i = 1, 65 do
        p.AttackParticleEmitter3.Acceleration = cdir * 0.9
        p.CFrame = p.CFrame + cdir * 0.45
        p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation - (i + 5)
        if i % 8 == 0 and i <= 60 then
          local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position - Vector3.new(0, 2.2, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Light stone grey", "SpecialMesh", Vector3.new(12, 2, 12))
          pc.Mesh.MeshType = "FileMesh"
          pc.Anchored = true
          pc.CanCollide = false
          pc.Parent = workspace
          pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
          pc.Name = "Shockwave"
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
        for ii = 1, 20 do
          p.Transparency = 0.75 + ii / 80
          p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3 + ii), 0) - Vector3.new(0, 0.05, 0)
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.4, -0.1, 0.4)
          fwait()
        end
        p:Remove()
      end), pc)
          if i <= 60 then
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(0 + math.rad(90), 0, 0), "Really black", "SpecialMesh", Vector3.new(5, 5, 2))
            pc.Mesh.MeshType = "FileMesh"
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
            pc.Parent = workspace
            pc.Anchored = true
            pc.CanCollide = false
            pc.Transparency = 0.5
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 12 do
          p.Transparency = ii / 12
          p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0) + cdir * 0.225
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, 0)
          fwait()
        end
        p:Remove()
      end), pc, cdir)
          end
        end
          if i % 5 == 0 and i <= 50 then
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(math.random(-30, 30) / 50 + math.rad(90), math.random(-30, 30) / 50, math.random(-30, 30) / 50), "Really black", "SpecialMesh", Vector3.new(11, 11, 3))
            pc.Mesh.MeshType = "FileMesh"
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
            pc.Parent = workspace
            pc.Anchored = true
            pc.CanCollide = false
            pc.Transparency = 0.5
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 12 do
          p.Transparency = ii / 12
          p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0) + cdir * 0.225
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.6, 0.6, 0)
          fwait()
        end
        p:Remove()
      end), pc, cdir)
              for _,v in pairs(GetNubsInRadius(p.Position, 22.5)) do
                local sitoop = (p.Position - v.Torso.Position) * 8
                  if v:FindFirstChild("Stats") then
                    local manaobject = v.Stats:FindFirstChild("Mana")
                    if manaobject and manaobject.Value > 0 then
                      --script.Parent.DMG.RemoteEventM:FireServer(manaobject, 1)
manaobject.Value = manaobject.Value-1
                    end
                  end
                  if (p.Position - v.Torso.Position).magnitude <= 12 then
                    applyDamage(v, 1, Vector3.new(), false, false, nil, 0, 1, "233856106", math.random(170, 200) / 100, false, false, 0, true, "Pure", true, false)
                      if v:FindFirstChild("Stats") then
                        local manaobject = v.Stats:FindFirstChild("Mana")
                        if manaobject and manaobject.Value > 0 then
                          --script.Parent.DMG.RemoteEventM:FireServer(manaobject, 1)
manaobject.Value = manaobject.Value-1
                        end
                      end
                      local pz = Instance.new("BodyPosition", v.Torso)
                      pz.P = 3500
                      pz.D = 1100
                      pz.maxForce = Vector3.new(3800000, 3800000, 3800000)
                      pz.position = p.Position + cdir * 7.5
                      game:GetService("Debris"):AddItem(pz, 0.18)
                        local cpro = NewPart(Vector3.new(1, 1, 1), CFrame.new(v.Torso.Position + Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))), "Really black", "BlockMesh", Vector3.new(1, 1, 1))
                        cpro.Anchored = true
                        cpro.CanCollide = false
                        cpro.Reflectance = 0.1
                        cpro.Parent = workspace
                        cpro.Transparency = 0.5
                        game:GetService("Debris"):AddItem(cpro, 10)
                        coroutine.resume(coroutine.create(function(p, cdir, R)
        for ii = 1, 8 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.8, 0.8, 0.8)
          p.Transparency = 0.5 + ii / 16
          p.CFrame = p.CFrame * R
          fwait()
        end
        p:Remove()
      end), cpro, cdir, CFrame.Angles(math.random(-30, 30) / 100, math.random(-30, 30) / 100, math.random(-30, 30) / 100))
                        applyCameraShake(v, 50, 5)
                          local cpro = NewPart(Vector3.new(1, 1, 1), CFrame.new(v.Torso.Position + Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))), "Really black", "SpecialMesh", Vector3.new(1, 1, 1))
                          cpro.Anchored = true
                          cpro.Mesh.MeshType = "Sphere"
                          cpro.CanCollide = false
                          cpro.Reflectance = 0.1
                          cpro.Parent = workspace
                          cpro.Transparency = 0.5
                          game:GetService("Debris"):AddItem(cpro, 10)
                          coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 7 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
          p.Transparency = 0.5 + ii / 14
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
                          -- DECOMPILER ERROR at PC494: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC494: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC494: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC494: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC494: LeaveBlock: unexpected jumping out DO_STMT

                        end
                end
            local cpro = NewPart(Vector3.new(1, 1, 1), p.CFrame, "Really black", "SpecialMesh", Vector3.new(6, 6, 6))
            cpro.Anchored = true
            cpro.Mesh.MeshType = "Sphere"
            cpro.CanCollide = false
            cpro.Reflectance = 0.1
            cpro.Parent = workspace
            cpro.Transparency = 0.5
            game:GetService("Debris"):AddItem(cpro, 10)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 10 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.75, 0.75, 0.75)
          p.Transparency = 0.5 + ii / 20
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
            local cpro = NewPart(Vector3.new(1, 1, 1), p.CFrame, "Really black", "SpecialMesh", Vector3.new(12, 12, 12))
            cpro.Anchored = true
            cpro.Mesh.MeshType = "Sphere"
            cpro.CanCollide = false
            cpro.Reflectance = 0.1
            cpro.Parent = workspace
            cpro.Transparency = 0.5
            game:GetService("Debris"):AddItem(cpro, 10)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 10 do
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.95, 0.95, 0.95)
          p.Transparency = 0.5 + ii / 20
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
            local cpro = NewPart(Vector3.new(1, 1, 1), p.CFrame, "Really black", "SpecialMesh", Vector3.new(17, 17, 17))
            cpro.Anchored = true
            cpro.Mesh.MeshType = "Sphere"
            cpro.CanCollide = false
            cpro.Reflectance = 0.1
            cpro.Parent = workspace
            cpro.Transparency = 0.5
            game:GetService("Debris"):AddItem(cpro, 10)
            coroutine.resume(coroutine.create(function(p, cdir)
        for ii = 1, 15 do
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.2, 1.2, 1.2)
          p.Transparency = 0.75 + ii / 60
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), cpro, cdir)
          end
            if i == 20 or i == 40 or i == 60 then
              for _,v in pairs(GetNubsInRadius(p.Position, 20)) do
                applyCameraShake(v, 100, 5)
              end
              applyCameraShake(vPlayer.Character, 100, 5)
              for _,v in pairs(GetNubsInRadius(p.Position, 20)) do
                applyDamage(v, 4, -v.Torso.Position - p.Position.unit * 20, false, false, nil, 0.01, 1, "", math.random(190, 220) / 100, false, false, 10, true, "Normal", false, false)
              end
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "SpecialMesh", Vector3.new(40, 40, 1))
              pc.Mesh.MeshType = "FileMesh"
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
              pc.Parent = workspace
              pc.Anchored = true
              pc.CanCollide = false
              pc.Transparency = 0.5
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
        for ii = 1, 15 do
          p.Transparency = 0.5 + ii / 30
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 0)
          p.CFrame = p.CFrame + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), pc)
              local eff = NewPart(Vector3.new(1, 1, 1), p.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "SpecialMesh", Vector3.new(25, 25, 25))
              eff.Parent = workspace
              eff.Mesh.MeshType = "Sphere"
              eff.Name = "BloodEffect"
              eff.Anchored = true
              eff.CanCollide = false
              game:GetService("Debris"):AddItem(eff, 5)
              coroutine.resume(coroutine.create(function(p, V, x)
        for i = 1, 15 do
          p.Mesh.Scale = p.Mesh.Scale - Vector3.new(35, 35, 35) / 15
          p.Transparency = 0.5 + i / 30
          p.CFrame = p.CFrame * V + cdir * 0.225
          fwait()
        end
        p:Remove()
      end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
              ps = Instance.new("Sound", p)
              ps.Volume = 1
              ps.Pitch = 0.6
              ps.SoundId = "http://www.roblox.com/asset/?id=235097661"
              ps:Play()
              game:GetService("Debris"):AddItem(ps, 3)
            end
                fwait()
                -- DECOMPILER ERROR at PC854: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC854: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC854: LeaveBlock: unexpected jumping out DO_STMT

              end
      for i = 65, 75 do
        p.CFrame = p.CFrame + cdir * 0.4
        p.Sound.Volume = p.Sound.Volume - 0.1
        if i >= 70 then
          p.BillboardGui.ImageLabel.ImageTransparency = p.BillboardGui.ImageLabel.ImageTransparency + 0.1
          if i == 70 then
            for _,v in pairs(GetNubsInRadius(p.Position, 30)) do
              applyCameraShake(v, 130, 10)
            end
            applyCameraShake(vPlayer.Character, 130, 10)
            for _,v in pairs(GetNubsInRadius(p.Position, 20)) do
              applyDamage(v, 10, v.Torso.Position - p.Position.unit * 30 + Vector3.new(0, 20, 0), false, false, addonCullMovers, 0.01, 1, "", math.random(190, 220) / 100, true, true, 25, true, "Normal", false, false)
            end
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "SpecialMesh", Vector3.new(6, 6, 2))
            pc.Mesh.MeshType = "FileMesh"
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
            pc.Parent = workspace
            pc.Anchored = true
            pc.CanCollide = false
            pc.Transparency = 0.5
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p)
        for ii = 1, 25 do
          p.Transparency = ii / 25
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(5 - ii * 0.2, 5 - ii * 0.2, 0)
          fwait()
        end
        p:Remove()
      end), pc)
            for loel = 1, 3 do
              local eff = NewPart(Vector3.new(1, 1, 1), p.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(5, 5, 5))
              eff.Parent = workspace
              eff.Name = "BloodEffect"
              eff.Anchored = true
              eff.CanCollide = false
              game:GetService("Debris"):AddItem(eff, 5)
              coroutine.resume(coroutine.create(function(p, V, x)
        for i = 1, 23 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(14 + loel * 8, 14 + loel * 8, 14 + loel * 8) / 23
          p.Transparency = 0.25 + i / 17.25
          p.CFrame = p.CFrame * V
          fwait()
        end
        p:Remove()
      end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
            end
            ps = Instance.new("Sound", p)
            ps.Volume = 1
            ps.Pitch = 0.66
            ps.SoundId = "http://www.roblox.com/asset/?id=231917888"
            ps:Play()
            game:GetService("Debris"):AddItem(ps, 3)
            ps = Instance.new("Sound", p)
            ps.Volume = 1
            ps.Pitch = 0.8
            ps.SoundId = "http://www.roblox.com/asset/?id=192410084"
            ps:Play()
            game:GetService("Debris"):AddItem(ps, 3)
          end
        end
            p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation - (i + 5)
            fwait()
            -- DECOMPILER ERROR at PC1145: LeaveBlock: unexpected jumping out DO_STMT

          end
      p:Remove()
    end), eb, CPlane)
                    end
                  end
                    BodyVel.velocity = BodyVel.velocity / 1.1
                    if rawframes == 36 then
                      TrackFunction:disconnect()
                      TrackFunction = nil
                      DesiredWalkspeed = 16 * playerstats.Movement.Value
                      PlayerIsAttacking = false
                      CanInterrupt(true)
                      setlastnormal(llastnormal)
                      Stand()
                    end
                    rawframes = rawframes + 1
  end)
end
lastcin = tick()
CharacterPlane = function()
  local cl = vPlayer.Character.HumanoidRootPart.CFrame.lookVector
  return Vector3.new(cl.x, 0, cl.z).unit
end
SetLegs = function(v)
  if v == 0 then
    RightHip.Part0 = vPlayer.Character.Torso
    LeftHip.Part0 = vPlayer.Character.Torso
  else
    RightHip.Part0 = vPlayer.Character.HumanoidRootPart
    LeftHip.Part0 = vPlayer.Character.HumanoidRootPart
  end
end
InputNormals.R = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 16 * playerstats.Movement.Value
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    CPlane = CharacterPlane()
    BodyVel.Parent = nil
    BodyGyro.Parent = nil
    if rawframes <= 3 then
      LerpWelds(clastframe, rawframes / 3, Animations.ZZ.Animation(0))
      if rawframes == 1 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 0.7
        p.SoundId = "http://www.roblox.com/asset/?id=243711441"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    else
      if rawframes > 3 and rawframes <= 5 then
        LerpWelds({Animations.ZZ.Animation(0)}, (rawframes - 3) / 2, Animations.ZZ.Animation(1))
      else
        if rawframes > 5 and rawframes <= 7 then
          LerpWelds({Animations.ZZ.Animation(1)}, (rawframes - 5) / 2, Animations.ZZ.Animation(2))
        else
          if rawframes > 7 and rawframes <= 10 then
            LerpWelds({Animations.ZZ.Animation(1)}, 1 + (rawframes - 8) * 0.03, Animations.ZZ.Animation(2))
          else
            if rawframes > 10 and rawframes <= 14 then
              LerpWelds({Animations.ZZ.Animation(1)}, 1.08 - (rawframes - 11) * 0.03, Animations.ZZ.Animation(2))
            end
          end
        end
      end
    end
    if rawframes >= 3 and rawframes <= 7 and rawframes % 2 == 0 then
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.2)) do
        applyDamage(v, 9, CPlane * 35, false, false, nil, 0.2, 1, "201858024", 0.6, true, true, 8, false, "Normal", false, true)
        applyCameraShake(v, 90, 5)
        DidHit = true
      end
    end
    do
      if rawframes == 7 then
        CanInterrupt(true)
        setlastnormal("R")
      end
      if rawframes == 15 then
        TrackFunction:disconnect()
        TrackFunction = nil
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        Walk()
      end
      rawframes = rawframes + 1
    end
  end)
end
InputNormals.RR = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  local cl = 0
  local clastframe = lastframe
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 16 * playerstats.Movement.Value
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    CPlane = CharacterPlane()
    if rawframes <= 5 then
      LerpWelds(clastframe, rawframes / 5, Animations.ZZZ.Animation(0))
    else
      if rawframes > 5 and rawframes <= 11 then
        cl = cl + (rawframes - 5) * 0.0485
        LerpWelds({Animations.ZZZ.Animation(0)}, cl, Animations.ZZZ.Animation(1))
        if rawframes == 6 then
          p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
          p.Volume = 1
          p.Pitch = 0.7
          p.SoundId = "http://www.roblox.com/asset/?id=243711427"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
        end
      else
        if rawframes > 11 and rawframes <= 17 then
          LerpWelds({Animations.ZZZ.Animation(0)}, 1 + (rawframes - 11) * 0.01, Animations.ZZZ.Animation(1))
        else
          if rawframes > 17 and rawframes <= 21 then
            LerpWelds({Animations.ZZZ.Animation(0)}, 1.1 - (rawframes - 17) * 0.04, Animations.ZZZ.Animation(1))
          end
        end
      end
    end
    SetLegs(1)
    if rawframes >= 5 and rawframes <= 10 and rawframes % 2 == 0 then
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.2)) do
        applyDamage(v, 9, CPlane * 30, false, false, nil, 0.25, 1, "201858024", 0.5, true, true, 10, false, "Normal", false, true)
        applyCameraShake(v, 90, 5)
        DidHit = true
      end
    end
      if rawframes == 13 then
        CanInterrupt(true)
        setlastnormal("RR")
      end
      if rawframes == 21 then
        TrackFunction:disconnect()
        TrackFunction = nil
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        Walk()
      end
      rawframes = rawframes + 1
    end)
end
InputNormals.RRR = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 16 * playerstats.Movement.Value
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    CPlane = CharacterPlane()
    if rawframes <= 3 then
      LerpWelds(clastframe, rawframes / 3, Animations.ZZ3.Animation(0))
      if rawframes == 1 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 0.7
        p.SoundId = "http://www.roblox.com/asset/?id=243711414"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    elseif rawframes > 3 and rawframes <= 5 then
        LerpWelds({Animations.ZZ3.Animation(0)}, (rawframes - 3) / 2, Animations.ZZ3.Animation(1))
      elseif rawframes > 5 and rawframes <= 7 then
          LerpWelds({Animations.ZZ3.Animation(1)}, (rawframes - 5) / 2, Animations.ZZ3.Animation(2))
        elseif rawframes > 7 and rawframes <= 10 then
            LerpWelds({Animations.ZZ3.Animation(1)}, 1 + (rawframes - 8) * 0.03, Animations.ZZ3.Animation(2))
          elseif rawframes > 10 and rawframes <= 14 then
              LerpWelds({Animations.ZZ3.Animation(1)}, 1.08 - (rawframes - 11) * 0.03, Animations.ZZ3.Animation(2))
    end
    if rawframes >= 3 and rawframes <= 7 and rawframes % 2 == 0 then
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.2)) do
        applyDamage(v, 8, CPlane * 50, false, false, nil, 0.2, 1, "201858024", 0.6, true, true, 12, false, "Normal", false, true)
        applyCameraShake(v, 90, 5)
        DidHit = true
      end
    end
      if rawframes == 10 then
        CanInterrupt(true)
        setlastnormal("RRR")
      end
      if rawframes == 15 then
        TrackFunction:disconnect()
        TrackFunction = nil
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        Walk()
      end
      rawframes = rawframes + 1
    end)
end
InputNormals.RRRR = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = CharacterPlane()
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 16 * playerstats.Movement.Value
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  local cwalk = "Stand2"
  if (vPlayer.Character.HumanoidRootPart.Velocity).magnitude > 3 then
    cwalk = "Walk2"
  end
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    CPlane = CharacterPlane()
    if rawframes <= 5 then
      LerpWelds(clastframe, rawframes / 5 - 0.1, Animations.Z2.Animation(0))
      if rawframes == 4 then
        p = Instance.new("Sound", vPlayer.Character["Left Arm"])
        p.Volume = 0.4
        p.Pitch = 0.85
        p.SoundId = "http://www.roblox.com/asset/?id=233096543"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    elseif rawframes > 5 and rawframes <= 18 then
        LerpWelds(clastframe, 1, Animations.Z2.Animation(0))
      elseif rawframes > 18 then
          LerpWelds({Animations.Z2.Animation(0)}, (rawframes - 18) / 6, Animations[cwalk].Animation(0))
    end
    if rawframes > 7 and rawframes <= 16 and rawframes % 3 == 0 then
      for _,v in pairs(GetNubsInRadius(clpos, 10)) do
        local pz = Instance.new("BodyPosition", v.Torso)
        pz.P = 6000
        pz.D = 1000
        pz.maxForce = Vector3.new(740000, 0, 740000)
        pz.position = clpos
        game:GetService("Debris"):AddItem(pz, 0.6)
        applyDamage(v, 3, Vector3.new(), false, false, nil, 0.01, 1, "231917784", math.random(140, 160) / 100, false, true, 6, false, "IgnoreDefense", false, false)
        -- DECOMPILER ERROR at PC156: Overwrote pending register: R7 in 'AssignReg'

        if v:FindFirstChild("Stats") then
          local manaobject = v.Stats:FindFirstChild("Mana")
          -- DECOMPILER ERROR at PC161: Overwrote pending register: R7 in 'AssignReg'

          -- DECOMPILER ERROR at PC164: Overwrote pending register: R7 in 'AssignReg'

          -- DECOMPILER ERROR at PC165: Overwrote pending register: R7 in 'AssignReg'

          if manaobject.Value --[[and R7_PC149--]] > 0 then
            manaobject.Value = manaobject.Value - 5--R7_PC149
          end
        end
      end
    end
      if rawframes == 7 then
        local xx = game.Players.LocalPlayer:GetMouse().hit.p
        xx = Vector3.new(xx.x, 0, xx.z)
        local yy = vPlayer.Character.Torso.Position
        yy = Vector3.new(yy.x, 0, yy.z)
        local distout = (xx - yy).magnitude
        if distout > 50 then
          distout = 50
        else
          if distout < 8 then
            distout = 8
          end
        end
        -- DECOMPILER ERROR at PC219: Overwrote pending register: R7 in 'AssignReg'

        local eb = BillboardGui("http://www.roblox.com/asset/?id=233522714", vPlayer.Character.HumanoidRootPart.CFrame.p + MousePlane() * distout + Vector3.new(0--[[R7_PC149]], 1.5, 0), 0)
        eb.Parent = workspace
        eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
        eb.BillboardGui.Size = UDim2.new(0, --[[--]]1, 0, 0)
        eb.BillboardGui.ImageLabel.ImageTransparency = 1
        game:GetService("Debris"):AddItem(eb, 3)
        p = Instance.new("Sound", eb)
        p.Volume = 1
        p.Pitch = 0.85
        p.SoundId = "http://www.roblox.com/asset/?id=233091136"
        p:Play()
        -- DECOMPILER ERROR at PC277: Overwrote pending register: R7 in 'AssignReg'

        game:GetService("Debris"):AddItem(p, --[[]]3)
        p = Instance.new("Sound", eb)
        p.Volume = 1
        p.Pitch = 1.1
        p.SoundId = "http://www.roblox.com/asset/?id=231917833"
        p:Play()
        -- DECOMPILER ERROR at PC300: Overwrote pending register: R7 in 'AssignReg'

        game:GetService("Debris"):AddItem(p, --[[]]3)
        -- DECOMPILER ERROR at PC305: Overwrote pending register: R7 in 'AssignReg'

        -- DECOMPILER ERROR at PC306: Overwrote pending register: R7 in 'AssignReg'

        -- DECOMPILER ERROR at PC312: Overwrote pending register: R7 in 'AssignReg'

        --[[for _,v in pairs(GetNubsInRadius(eb.Position + R7_PC149, R7_PC149)) do
          applyCameraShake(v, 200, 3)
        end--]]
        applyCameraShake(vPlayer.Character, 200, 3)
        coroutine.resume(coroutine.create(function(p, cdir)
      for i = 1, 35 do
        p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + (50 - i) / 2
        p.BillboardGui.Size = p.BillboardGui.Size + UDim2.new(0.15 - i * 0.015, 0, 0.15 - i * 0.015, 0)
        if i <= 8 then
          p.BillboardGui.ImageLabel.ImageTransparency = 1 - i / 16
          p.BillboardGui.Size = p.BillboardGui.Size + UDim2.new(i * 0.25, 0, i * 0.25, 0)
        else
          if i > 13 then
            p.BillboardGui.ImageLabel.ImageTransparency = 0.5 + (i - 14) / 21
          end
        end
        fwait()
      end
      p:Remove()
    end), eb)
        clpos = eb.Position
        local p = Instance.new("Part", workspace)
        p.formFactor = "Custom"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.BrickColor = BrickColor.new("Really black")
        p.Size = Vector3.new(0.9, 0.9, 0.9)
        local m = Instance.new("SpecialMesh", p)
        m.MeshType = "Sphere"
        p.CFrame = CFrame.new(clpos - CharacterPlane() * 0.25)
        p.Anchored = true
        p.CanCollide = false
        game:GetService("Debris"):AddItem(p, 5)
        coroutine.resume(coroutine.create(function(p)
      for i = 1, 8 do
        p.Transparency = 1 - i / 16
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i * 0.425, i * 0.425, i * 0.425)
        fwait()
      end
      for i = 1, 20 do
        p.Transparency = 0.5 + i / 40
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.025, 0.025, 0.025) * i
        fwait()
      end
      p:Remove()
    end), p)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(clpos - Vector3.new(0, 3, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "White", "SpecialMesh", Vector3.new(5, 3, 5))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        pc.Transparency = 0.5
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
      for ii = 1, 10 do
        p.Transparency = 0.75 + ii / 40
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(10 + ii * 2), 0)
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2.5, 0, 2.5)
        fwait()
      end
      p:Remove()
    end), pc)
        local p = Instance.new("Part", workspace)
        p.formFactor = "Custom"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.BrickColor = BrickColor.new("Really black")
        p.Size = Vector3.new(1, 1, 1)
        local m = Instance.new("SpecialMesh", p)
        m.Scale = Vector3.new(25, 25, 25)
        m.MeshType = "Sphere"
        p.CFrame = CFrame.new(clpos - MousePlane() * 0.25)
        p.Anchored = true
        p.CanCollide = false
        game:GetService("Debris"):AddItem(p, 5)
        coroutine.resume(coroutine.create(function(p)
      for i = 1, 10 do
        p.Transparency = 0.5 + i / 20
        p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2.5, 2.5, 2.5)
        fwait()
      end
      p:Remove()
    end), p)
        for lel = 1, 3 do
          local p = Instance.new("Part", workspace)
          p.formFactor = "Custom"
          p.TopSurface = 0
          p.BottomSurface = 0
          p.BrickColor = BrickColor.new("Black")
          p.Size = Vector3.new(1, 1, 1)
          local m = Instance.new("SpecialMesh", p)
          m.MeshType = "Sphere"
          p.CFrame = CFrame.new(clpos) * CFrame.Angles(0, math.rad(45 * lel), 0)
          p.Anchored = true
          p.CanCollide = false
          game:GetService("Debris"):AddItem(p, 5)
          coroutine.resume(coroutine.create(function(p, d)
      local cpos = p.Position
      for i = 1, 24 do
        if i <= 10 then
          p.Transparency = 1 - i / 20
        else
          if i >= 20 then
            p.Transparency = p.Transparency + 0.1
          end
        end
        p.Mesh.Scale = Vector3.new(0.5, 0.5, 0.5) * (p.Position - cpos).magnitude
        p.CFrame = p.CFrame + Vector3.new(math.cos(math.rad(i * 15) + math.rad(120 * d)) * (0.5 + i * 0.075), 0, math.sin(math.rad(i * 15) + math.rad(120 * d)) * (0.5 + i * 0.075))
        fwait()
      end
      p:Remove()
    end), p, lel - 1)
        end
        coroutine.resume(coroutine.create(function(pos)
      for lel = 1, 3 do
        fwait()
        local p = Instance.new("Part", workspace)
        p.formFactor = "Custom"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.BrickColor = BrickColor.new("Royal purple")
        p.Size = Vector3.new(1.7, 1.7, 1.7)
        local m = Instance.new("SpecialMesh", p)
        m.MeshType = "Sphere"
        p.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
        p.Anchored = true
        p.CanCollide = false
        game:GetService("Debris"):AddItem(p, 5)
        coroutine.resume(coroutine.create(function(p)
        for i = 1, 25 do
          p.Transparency = i / 25
          p.CFrame = p.CFrame * CFrame.new(math.cos(math.rad(i ^ 1.9)) * 0.74, 0, math.sin(math.rad(i ^ 1.7)) * 0.74)
          fwait()
        end
        p:Remove()
      end), p)
      end
    end), clpos)
      end
        if rawframes == 18 then
          CanInterrupt(true)
          setlastnormal("RRRR")
        end
        if rawframes == 24 then
          TrackFunction:disconnect()
          TrackFunction = nil
          DesiredWalkspeed = 16 * playerstats.Movement.Value
          PlayerIsAttacking = false
          CanInterrupt(true)
          setlastnormal("")
          Walk()
        end
        rawframes = rawframes + 1
      end)
end
InputNormals.RRRRR = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  local cl = 0
  local clastframe = lastframe
  DesiredWalkspeed = 0
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes < 5 then
      CPlane = MousePlane()
    end
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes == 0 then
      BodyGyro.Parent.CFrame = BodyGyro.cframe
    end
    if rawframes <= 4 then
      LerpWelds(clastframe, rawframes / 4, Animations.ZZZZZ.Animation(0))
      if rawframes == 2 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 0.8
        p.SoundId = "http://www.roblox.com/asset/?id=234365549"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    else
      if rawframes > 4 and rawframes <= 7 then
        LerpWelds({Animations.ZZZZZ.Animation(0)}, (rawframes - 4) / 3, Animations.ZZZZZ.Animation(1))
      else
        if rawframes > 7 and rawframes <= 10 then
          LerpWelds({Animations.ZZZZZ.Animation(1)}, (rawframes - 7) / 3, Animations.ZZZZZ.Animation(2))
        else
          if rawframes > 11 and rawframes <= 13 then
            LerpWelds({Animations.ZZZZZ.Animation(1)}, 1 + (rawframes - 11) * 0.03, Animations.ZZZZZ.Animation(2))
          else
            if rawframes > 13 and rawframes <= 18 then
              LerpWelds({Animations.ZZZZZ.Animation(1)}, 1.06 - (rawframes - 13) * 0.03, Animations.ZZZZZ.Animation(2))
            else
              if rawframes > 18 then
                local cwalk = "Stand"
                if Ragemode == true then
                  cwalk = "Stand2"
                end
                LerpWelds({Animations.ZZZZZ.Animation(2)}, (rawframes - 18) / 8, Animations[cwalk].Animation(0))
              end
            end
          end
        end
      end
    end
    do
      if rawframes >= 1 and rawframes <= 5 then
        BodyVel.velocity = CPlane * (rawframes * 5 + 5)
      else
        BodyVel.velocity = BodyVel.velocity / 1.2
      end
      if rawframes >= 5 and rawframes <= 10 then
        for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position - CPlane * 0.5 - Vector3.new(0, 0.5, 0), 3.3)) do
          applyDamage(v, 8, CPlane * 40, false, false, nil, 0.1, 1, "201858024", 0.85, true, true, 12, false, "Normal", false, true)
          applyCameraShake(v, 120, 5)
          DidHit = true
        end
      end
      do
        if rawframes == 10 then
          p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
          p.Volume = 1
          p.Pitch = 1.1
          p.SoundId = "http://www.roblox.com/asset/?id=191395766"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          local par, loc = workspace:FindPartOnRay(Ray.new(vPlayer.Character.Weapon.Blade.Position, Vector3.new(0, -3, 0)), vPlayer.Character)
          local pz = NewPart(Vector3.new(2, 2, 1), CFrame.new(loc) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "BlockMesh", Vector3.new(0.5, 0.5, 0))
          pz.Transparency = 1
          pz.Anchored = true
          pz.CanCollide = false
          pz.Parent = workspace
          pz.Name = "Rune"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Front"
          d1.Name = "d1"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Back"
          d1.Name = "d2"
          coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 5 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(10 + i * 2))
        p.d1.Transparency = 0.5 + i / 10
        p.d2.Transparency = 0.5 + i / 10
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.5, 0.5, 0)
      end
      p:Remove()
    end), pz, CPlane)
          game:GetService("Debris"):AddItem(pz, 6)
        end
        do
          if rawframes == 17 then
            CanInterrupt(true)
            setlastnormal("RRRRR")
          end
          if rawframes == 26 then
            TrackFunction:disconnect()
            TrackFunction = nil
            DesiredWalkspeed = 16 * playerstats.Movement.Value
            PlayerIsAttacking = false
            CanInterrupt(true)
            setlastnormal("")
            Stand()
          end
          rawframes = rawframes + 1
        end
      end
    end
  end)
end
InputNormals.RRRRRR = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  local cl = 0
  local clastframe = lastframe
  DesiredWalkspeed = 0
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes < 5 then
      CPlane = MousePlane()
    end
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes == 0 then
      BodyGyro.Parent.CFrame = BodyGyro.cframe
    end
    if rawframes <= 6 then
      LerpWelds(clastframe, rawframes / 5.8, Animations.ZZ2.Animation(1))
      if rawframes == 2 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 0.8
        p.SoundId = "http://www.roblox.com/asset/?id=189505665"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    else
      if rawframes > 6 and rawframes <= 10 then
        cl = cl + (rawframes - 6) * 0.11
        LerpWelds({Animations.ZZ2.Animation(1)}, cl, Animations.ZZ2.Animation(2))
      else
        if rawframes > 10 and rawframes <= 17 then
          LerpWelds({Animations.ZZ2.Animation(1)}, 1 + (cl - 1) / (rawframes - 10) / 6, Animations.ZZ2.Animation(2))
        else
          if rawframes > 17 then
            local cwalk = "Stand"
            if Ragemode == true then
              cwalk = "Stand2"
            end
            LerpWelds({Animations.ZZ2.Animation(2)}, (rawframes - 18) / 8, Animations[cwalk].Animation(0))
          end
        end
      end
    end
    do
      if rawframes >= 7 and rawframes <= 10 then
        BodyVel.velocity = CPlane * (rawframes * 7 + 15)
      else
        BodyVel.velocity = BodyVel.velocity / 1.3
      end
      if rawframes >= 7 and rawframes <= 12 then
        for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + CPlane * 3, 3.3)) do
          applyDamage(v, 16, CPlane * 80, false, false, nil, 0.4, 1, "", 0.8, true, true, 25, false, "Normal", true, false)
          applyCameraShake(v, 250, 4)
          if DidHit == false then
            p = Instance.new("Sound", vPlayer.Character.Weapon.Handle)
            p.Volume = 1
            p.Pitch = 0.8
            p.SoundId = "http://www.roblox.com/asset/?id=189505617"
            p:Play()
            game:GetService("Debris"):AddItem(p, 3)
            p = Instance.new("Sound", vPlayer.Character.Weapon.Handle)
            p.Volume = 0.3
            p.Pitch = 1
            p.SoundId = "http://www.roblox.com/asset/?id=191395579"
            p:Play()
            game:GetService("Debris"):AddItem(p, 3)
          end
          DidHit = true
        end
      end
      do
        if rawframes == 18 then
          CanInterrupt(true)
          setlastnormal("R")
        end
        if rawframes == 26 then
          TrackFunction:disconnect()
          TrackFunction = nil
          DesiredWalkspeed = 16 * playerstats.Movement.Value
          PlayerIsAttacking = false
          CanInterrupt(true)
          setlastnormal("")
          Stand()
        end
        rawframes = rawframes + 1
      end
    end
  end)
end
InputNormals.M = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  fffuuuu = false
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 16 * playerstats.Movement.Value
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  local cl = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    CPlane = CharacterPlane()
    if rawframes <= 4 then
      LerpWelds(clastframe, rawframes / 4, Animations.ZZ.Animation(0))
      if rawframes == 1 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 0.5
        p.SoundId = "http://www.roblox.com/asset/?id=243711414"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    else
      if rawframes > 4 and rawframes <= 6 then
        LerpWelds({Animations.ZZ.Animation(0)}, (rawframes - 4) / 2, Animations.ZZ.Animation(1))
      else
        if rawframes > 6 and rawframes <= 8 then
          LerpWelds({Animations.ZZ.Animation(1)}, (rawframes - 6) / 2, Animations.ZZ.Animation(2))
        else
          if rawframes > 8 and rawframes <= 11 then
            LerpWelds({Animations.ZZ.Animation(1)}, 1 + (rawframes - 8) * 0.03, Animations.ZZ.Animation(2))
          else
            if rawframes > 11 and rawframes <= 15 then
              LerpWelds({Animations.ZZ.Animation(1)}, 1.08 - (rawframes - 11) * 0.03, Animations.ZZ.Animation(2))
            end
          end
        end
      end
    end
    if rawframes >= 4 and rawframes <= 8 and rawframes % 2 == 0 then
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.2)) do
        applyDamage(v, 6, CPlane * 30, false, false, nil, 0.3, 1, "201858024", 0.6, true, true, 6, false, "Normal", false, true)
        applyCameraShake(v, 90, 5)
        DidHit = true
      end
    end
    do
      if rawframes == 8 then
        CanInterrupt(true)
        setlastnormal("MM")
      end
      if rawframes == 16 then
	fffuuuu = false
        TrackFunction:disconnect()
        TrackFunction = nil
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        Walk()
      end
      rawframes = rawframes + 1
    end
  end)
end
InputNormals.MMM = function()
	fffuuuu = false
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  local cl = 0
  local clastframe = lastframe
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  DesiredWalkspeed = 16 * playerstats.Movement.Value
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    CPlane = CharacterPlane()
    if rawframes <= 8 then
      LerpWelds(clastframe, rawframes / 8, Animations.ZZZ.Animation(0))
    else
      if rawframes > 8 and rawframes <= 15 then
        cl = cl + (rawframes - 8) * 0.036
        LerpWelds({Animations.ZZZ.Animation(0)}, cl, Animations.ZZZ.Animation(1))
        if rawframes == 9 then
          p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
          p.Volume = 1
          p.Pitch = 0.5
          p.SoundId = "http://www.roblox.com/asset/?id=243711427"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
        end
      else
        if rawframes > 15 and rawframes <= 21 then
          LerpWelds({Animations.ZZZ.Animation(0)}, 1 + (rawframes - 15) * 0.01, Animations.ZZZ.Animation(1))
        else
          if rawframes > 21 and rawframes <= 25 then
            LerpWelds({Animations.ZZZ.Animation(0)}, 1.1 - (rawframes - 21) * 0.04, Animations.ZZZ.Animation(1))
          end
        end
      end
    end
    SetLegs(1)
    if rawframes >= 8 and rawframes <= 14 and rawframes % 2 == 0 then
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position, 4.2)) do
        applyDamage(v, 8, CPlane * 40, false, false, nil, 0.3, 1, "201858024", 0.5, true, true, 7, false, "Normal", false, true)
        applyCameraShake(v, 90, 5)
        DidHit = true
      end
    end
    do
      if rawframes == 14 then
        CanInterrupt(true)
        setlastnormal("MMM")
      end
      if rawframes == 24 then
	fffuuuu = false
        TrackFunction:disconnect()
        TrackFunction = nil
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        PlayerIsAttacking = false
        CanInterrupt(true)
        setlastnormal("")
        Walk()
      end
      rawframes = rawframes + 1
    end
  end)
end
InputNormals.MMMM = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
fffuuuu = false
  CanInterrupt(false)
  PlayerIsAttacking = true
  DesiredWalkspeed = 0
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  local cl = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes < 9 then
      CPlane = MousePlane()
    end
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes == 0 then
      BodyGyro.Parent.CFrame = BodyGyro.cframe
    end
    BodyVel.velocity = BodyVel.velocity / 1.25
    if rawframes <= 5 then
      LerpWelds(clastframe, rawframes / 5, Animations.ZZZZ.Animation(0))
    elseif rawframes > 5 and rawframes <= 10 then
        LerpWelds({Animations.ZZZZ.Animation(0)}, (rawframes - 5) / 5, Animations.ZZZZ.Animation(1))
        if rawframes == 6 then
          p = Instance.new("Sound", vPlayer.Character.Torso)
          p.Volume = 0.25
          p.Pitch = 0.9
          p.SoundId = "http://www.roblox.com/asset/?id=233856140"
		  wait()
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
        end
        local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(1.6, 1.6, 1.6))
        pc.CanCollide = false
        pc.Anchored = true
        pc.Parent = workspace
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
					local R = CFrame.Angles(math.random(-3,3),math.random(-4,4),math.random(-5,5))
					local C = Vector3.new(math.random(-5,5)/40,math.random(-5,5)/40,math.random(-5,5)/40)
					for i=1, 20 do
						p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1,1,1)/30
						p.Transparency = i/20
						p.CFrame = p.CFrame * R - Vector3.new(0,9.82/30/11*i,0) + C
						fwait()
					end
					p:Remove()
				end),pc)
		elseif rawframes > 13 and rawframes <= 19 then
            LerpWelds({Animations.ZZZZ.Animation(0)}, 1 - (rawframes - 13) * 0.02, Animations.ZZZZ.Animation(1))
          elseif rawframes > 19 and rawframes <= 26 then
              LerpWelds({Animations.ZZZZ.Animation(1)}, (rawframes - 19) / 7.05 - 0.1, Animations.ZZZZ.Animation(2))
            elseif rawframes > 33 then
                local cwalk = "Stand"
                if Ragemode == true then
                  cwalk = "Stand2"
                end
                LerpWelds({Animations.ZZZZ.Animation(2)}, (rawframes - 33) / 9, Animations[cwalk].Animation(0))
              end
            if rawframes == 23 then
              cpos = vPlayer.Character.Torso.Position + CPlane * 33.5
              coroutine.resume(coroutine.create(function(pos, dir)
      for i = 0, 2 do
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(pos - dir * (i * 11.5) - Vector3.new(0, 3, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(9, 1, 9))
        pc.Mesh.MeshType = "FileMesh"
        pc.Parent = workspace
        pc.Anchored = true
        pc.CanCollide = false
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
        for ii = 1, 15 do
          p.Transparency = ii / 15
          p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15 + ii), 0) + Vector3.new(0, 0.35, 0)
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(-0.4, 0.7, -0.4)
          fwait()
        end
        p:Remove()
      end), pc)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(pos - dir * (i * 8) + Vector3.new(0, 0, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Black", "SpecialMesh", Vector3.new(1, 7, 1))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
        for ii = 1, 10 do
          p.Transparency = ii / 10
          p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(15 + ii), 0) - Vector3.new(0, 0.25, 0)
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.3, -0.5, 1.3)
          fwait()
        end
        p:Remove()
      end), pc)
        local p = Instance.new("Sound", pc)
        p.Volume = 1
        p.Pitch = 0.85
        p.SoundId = "http://www.roblox.com/asset/?id=233856106"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
        for _,v in pairs(GetNubsInRadius(pc.CFrame.p + Vector3.new(0, 0, 0), 8.8)) do
          applyDamage(v, 2, -dir * (55 - i * 10), false, false, nil, 0.01, 1, "", 1.125, false, true, 5, false, "Normal", false, false)
          applyCameraShake(v, 70, 3)
          DidHit = true
        end
        fwait(0.15)
      end
    end), cpos, CPlane)
            end
            if rawframes == 8 then
              local pz = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character["Left Arm"].Position) + CPlane * 0.5, "Really black", "SpecialMesh", Vector3.new(2, 2, 0))
              pz.Anchored = true
              pz.CanCollide = false
              pz.Parent = workspace
              pz.Mesh.MeshType = "Sphere"
              game:GetService("Debris"):AddItem(pz, 5)
              local p = Instance.new("Sound", pz)
              p.Volume = 1
              p.Pitch = 0.65
              p.SoundId = "http://www.roblox.com/asset/?id=231917788"
              p:Play()
              game:GetService("Debris"):AddItem(p, 3)
              local p = Instance.new("Sound", pz)
              p.Volume = 1
              p.Pitch = 1
              p.SoundId = "http://www.roblox.com/asset/?id=233091183"
              p:Play()
              game:GetService("Debris"):AddItem(p, 3)
              local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(1.6, 1.6, 1.6))
              pc.CanCollide = false
              pc.Anchored = true
              pc.Parent = workspace
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
      local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
      for i = 1, 15 do
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, 2) / 15
        p.Transparency = i / 15
        p.CFrame = p.CFrame * R
        fwait()
      end
      p:Remove()
    end), pc)
              coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 10 do
        fwait(0.06)
        p.CFrame = p.CFrame + dir * 3
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(p.Position) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(1.5, 1.5, 1.5))
        pc.CanCollide = false
        pc.Anchored = true
        pc.Parent = workspace
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p, c)
        for ii = 1, 8 do
          p.Mesh.Scale = p.Mesh.Scale * 1.1 + Vector3.new(c, c, c)
          p.Transparency = ii / 8
          fwait()
        end
        p:Remove()
      end), pc, i / 20)
        if i % 2 == 0 then
          for _,v in pairs(GetNubsInRadius(p.CFrame.p - CPlane * 2.5, 5)) do
            applyDamage(v, 2, dir * 30, false, false, nil, 0.01, 1, "231917784", 0.95, false, false, 1, false, "Normal", false, false)
            applyCameraShake(v, 50, 3)
            DidHit = true
          end
        end
      end
      p:Remove()
    end), pz, CPlane)
              local pz = NewPart(Vector3.new(2, 2, 1), CFrame.new(vPlayer.Character["Left Arm"].Position + CPlane * 1.5, vPlayer.Character["Left Arm"].Position + CPlane * 2), "Really black", "BlockMesh", Vector3.new(1.5, 1.5, 0))
              pz.Transparency = 1
              pz.Anchored = true
              pz.CanCollide = false
              pz.Parent = workspace
              pz.Name = "Rune"
              local d1 = Instance.new("Decal", pz)
              d1.Texture = "http://www.roblox.com/asset/?id=233069844"
              d1.Face = "Front"
              d1.Name = "d1"
              local d1 = Instance.new("Decal", pz)
              d1.Texture = "http://www.roblox.com/asset/?id=233069844"
              d1.Face = "Back"
              d1.Name = "d2"
              coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 28 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(1 + i * 2))
        p.d1.Transparency = i / 28
        p.d2.Transparency = i / 28
        if i <= 14 then
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(i * 0.02, i * 0.02, 0)
        end
      end
      p:Remove()
    end), pz, CPlane)
              game:GetService("Debris"):AddItem(pz, 6)
            end
            do
              if rawframes == 30 then
                CanInterrupt(true)
                setlastnormal("MMMM")
              end
              if rawframes == 41 then
                TrackFunction:disconnect()
                TrackFunction = nil
                DesiredWalkspeed = 16 * playerstats.Movement.Value
                PlayerIsAttacking = false
                CanInterrupt(true)
                setlastnormal("")
                Stand()
              end
              rawframes = rawframes + 1
            end
  end)
end
InputNormals.MMMMM = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  local cl = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes < 6 then
      CPlane = MousePlane()
    end
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes == 0 then
      BodyGyro.Parent.CFrame = BodyGyro.cframe
    end
    if rawframes <= 5 then
      LerpWelds(clastframe, rawframes / 5, Animations.ZZZZZ.Animation(0))
      if rawframes == 1 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 0.75
        p.SoundId = "http://www.roblox.com/asset/?id=243711414"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    else
      if rawframes > 5 and rawframes <= 8 then
        LerpWelds({Animations.ZZZZZ.Animation(0)}, (rawframes - 5) / 4, Animations.ZZZZZ.Animation(1))
      else
        if rawframes > 8 and rawframes <= 11 then
          LerpWelds({Animations.ZZZZZ.Animation(1)}, (rawframes - 8) / 3, Animations.ZZZZZ.Animation(2))
        else
          if rawframes > 11 and rawframes <= 14 then
            LerpWelds({Animations.ZZZZZ.Animation(1)}, 1 + (rawframes - 11) * 0.03, Animations.ZZZZZ.Animation(2))
          else
            if rawframes > 14 and rawframes <= 19 then
              LerpWelds({Animations.ZZZZZ.Animation(1)}, 1.08 - (rawframes - 14) * 0.03, Animations.ZZZZZ.Animation(2))
            else
              if rawframes > 19 then
                local cwalk = "Stand"
                if Ragemode == true then
                  cwalk = "Stand2"
                end
                LerpWelds({Animations.ZZZZZ.Animation(2)}, (rawframes - 19) / 8, Animations[cwalk].Animation(0))
              end
            end
          end
        end
      end
    end
    do
      if rawframes >= 1 and rawframes <= 5 then
        BodyVel.velocity = CPlane * (rawframes * 4 + 5)
      else
        BodyVel.velocity = BodyVel.velocity / 1.2
      end
      if rawframes >= 6 and rawframes <= 10 then
        for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position - CPlane * 0.5 - Vector3.new(0, 0.5, 0), 3.3)) do
          applyDamage(v, 6, CPlane * 20, false, false, nil, 0.1, 1, "201858024", 0.85, true, true, 15, false, "Normal", false, true)
          applyCameraShake(v, 120, 5)
          DidHit = true
        end
      end
      do
        if rawframes == 11 then
          p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
          p.Volume = 1
          p.Pitch = 0.75
          p.SoundId = "http://www.roblox.com/asset/?id=243713366"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          local par, loc = workspace:FindPartOnRay(Ray.new(vPlayer.Character.Weapon.Blade.Position, Vector3.new(0, -3, 0)), vPlayer.Character)
          local pz = NewPart(Vector3.new(2, 2, 1), CFrame.new(loc) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "BlockMesh", Vector3.new(0.5, 0.5, 0))
          pz.Transparency = 1
          pz.Anchored = true
          pz.CanCollide = false
          pz.Parent = workspace
          pz.Name = "Rune"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Front"
          d1.Name = "d1"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Back"
          d1.Name = "d2"
          coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 5 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(10 + i * 2))
        p.d1.Transparency = 0.5 + i / 10
        p.d2.Transparency = 0.5 + i / 10
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.5, 0.5, 0)
      end
      p:Remove()
    end), pz, CPlane)
          game:GetService("Debris"):AddItem(pz, 6)
        end
        do
          if rawframes == 15 then
            CanInterrupt(true)
            setlastnormal("MMMMM")
          end
          if rawframes == 26 then
            TrackFunction:disconnect()
            TrackFunction = nil
            DesiredWalkspeed = 16 * playerstats.Movement.Value
            PlayerIsAttacking = false
            CanInterrupt(true)
            setlastnormal("")
            Stand()
          end
          rawframes = rawframes + 1
        end
      end
    end
  end)
end
InputNormals.MMMMMM = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  local cl = 0
  local clastframe = lastframe
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes < 8 then
      CPlane = MousePlane()
    end
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes == 0 then
      BodyGyro.Parent.CFrame = BodyGyro.cframe
    end
    if rawframes <= 5 then
      LerpWelds(clastframe, rawframes / 5, Animations.ZZZZZZ.Animation(0))
      if rawframes == 1 then
        p = Instance.new("Sound", vPlayer.Character.Torso)
        p.Volume = 1
        p.Pitch = 1
        p.SoundId = "http://www.roblox.com/asset/?id=233856140"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    else
      if rawframes > 5 and rawframes <= 9 then
        LerpWelds(clastframe, 1 + (rawframes - 5) * 0.01, Animations.ZZZZZZ.Animation(0))
      else
        if rawframes > 9 and rawframes <= 13 then
          LerpWelds(clastframe, 1.03 - (rawframes - 9) * 0.01, Animations.ZZZZZZ.Animation(0))
        else
          if rawframes > 16 then
            local cwalk = "Stand"
            if Ragemode == true then
              cwalk = "Stand2"
            end
            LerpWelds({Animations.ZZZZZZ.Animation(0)}, (rawframes - 16) / 11, Animations[cwalk].Animation(0))
          end
        end
      end
    end
    do
      if rawframes >= 1 and rawframes <= 5 then
        BodyVel.velocity = CPlane * (rawframes * 6 + 10)
      else
        BodyVel.velocity = BodyVel.velocity / 1.2
      end
      if rawframes >= 4 and rawframes <= 7 and rawframes % 2 == 0 then
        for _,v in pairs(GetNubsInRadius(vPlayer.Character.Torso.Position + CPlane * 2.5, 3.6)) do
          applyDamage(v, 7, CPlane * 25 + Vector3.new(0, 10, 0), false, false, nil, 0.33, 1, "153092238", 0.7, false, true, 8, false, "Normal", false, false)
          applyCameraShake(v, 140, 5)
          DidHit = true
        end
      end
      do
        if rawframes == 11 then
          CanInterrupt(true)
          setlastnormal("MMMMMM")
        end
        if rawframes == 27 then
          TrackFunction:disconnect()
          TrackFunction = nil
          DesiredWalkspeed = 16 * playerstats.Movement.Value
          PlayerIsAttacking = false
          CanInterrupt(true)
          setlastnormal("")
          Stand()
        end
        rawframes = rawframes + 1
      end
    end
  end)
end
InputNormals.MMMMMMM = function()
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  CanInterrupt(false)
  PlayerIsAttacking = true
fffuuuu = true
print("xd")
  local rawframes = 0
  Tool.Status.AnimFrame.Value = 0
  local DidHit = false
  local CPlane = MousePlane()
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  local lpos = vPlayer.Character.Weapon.Blade.CFrame
  local cpos = nil
  local cl = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if rawframes < 6 then
      CPlane = MousePlane()
    end
    BodyVel.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
    BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
    if rawframes == 0 then
      BodyGyro.Parent.CFrame = BodyGyro.cframe
    end
    if rawframes <= 6 then
      LerpWelds(clastframe, rawframes / 6, Animations.ZZZZZZZ.Animation(0))
      if rawframes == 0 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 0.6
        p.SoundId = "http://www.roblox.com/asset/?id=243711427"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
      if rawframes == 3 then
        p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
        p.Volume = 1
        p.Pitch = 1
        p.SoundId = "http://www.roblox.com/asset/?id=234365573"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
      end
    elseif rawframes > 6 and rawframes <= 10 then
        LerpWelds(clastframe, 0.98 + (rawframes - 6) * 0.005, Animations.ZZZZZZZ.Animation(0))
        if rawframes == 7 then
          p = Instance.new("Sound", vPlayer.Character.Weapon.Blade)
          p.Volume = 1
          p.Pitch = 1.55
          p.SoundId = "http://www.roblox.com/asset/?id=231917806"
          p:Play()
          game:GetService("Debris"):AddItem(p, 3)
          local par, loc = workspace:FindPartOnRay(Ray.new(vPlayer.Character.Weapon.Blade.Position, Vector3.new(0, -1, 0)), vPlayer.Character)
          local pz = NewPart(Vector3.new(2, 2, 1), CFrame.new(loc) * CFrame.Angles(math.pi / 2, 0, 0), "Really black", "BlockMesh", Vector3.new(2.5, 2.5, 0))
          pz.Transparency = 1
          pz.Anchored = true
          pz.CanCollide = false
          pz.Parent = workspace
          pz.Name = "Rune"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Front"
          d1.Name = "d1"
          local d1 = Instance.new("Decal", pz)
          d1.Texture = "http://www.roblox.com/asset/?id=234376725"
          d1.Face = "Back"
          d1.Name = "d2"
          coroutine.resume(coroutine.create(function(p, dir)
      for i = 1, 5 do
        fwait()
        p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.rad(20 + i * 2))
        p.d1.Transparency = 0.5 + i / 10
        p.d2.Transparency = 0.5 + i / 10
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.5, 1.5, 0)
      end
      p:Remove()
    end), pz, CPlane)
          game:GetService("Debris"):AddItem(pz, 6)
          for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position + CPlane * 1.5 + Vector3.new(0, 2, 0), 15)) do
            applyCameraShake(v, 50, 15)
          end
          applyCameraShake(vPlayer.Character, 100, 15)
        end
      elseif rawframes > 10 and rawframes <= 15 then
            LerpWelds(clastframe, 1.01 - (rawframes - 10) * 0.005, Animations.ZZZZZZZ.Animation(0))
          elseif rawframes > 17 then
              local cwalk = "Stand"
              if Ragemode == true then
                cwalk = "Stand2"
              end
              LerpWelds({Animations.ZZZZZZZ.Animation(0)}, (rawframes - 17) / 10, Animations[cwalk].Animation(0))
            end
            if rawframes >= 3 and rawframes <= 5 then
              BodyVel.velocity = CPlane * (rawframes * 4 + 30)
            else
              BodyVel.velocity = BodyVel.velocity / 1.7
            end
            if rawframes >= 3 and rawframes <= 9 and rawframes % 2 == 0 then
              for _,v in pairs(GetNubsInRadius(vPlayer.Character.Weapon.Blade.Position + CPlane * 1.5 + Vector3.new(0, 2, 0), 5)) do
                applyDamage(v, 10, CPlane * 60, false, false, nil, 1, 1, "201858024", 0.5, true, true, 15, false, "Normal", false, true)
                applyCameraShake(v, 250, 10)
                DidHit = true
              end
            end
              if rawframes == 20 then
                CanInterrupt(true)
                setlastnormal("")
              end
              if rawframes == 27 then
				fffuuuu = false
                TrackFunction:disconnect()
                TrackFunction = nil
                DesiredWalkspeed = 16 * playerstats.Movement.Value
                PlayerIsAttacking = false
                CanInterrupt(true)
                setlastnormal("")
                Stand()
              end
              rawframes = rawframes + 1
  end)
end
GetNubs = function()
  scrubs = {}
  for _,v in pairs(workspace:children()) do
    if v:FindFirstChild("Humanoid") ~= nil and v:FindFirstChild("Torso") ~= nil and v.Name ~= game.Players.LocalPlayer.Name and (v.Torso.Position - vPlayer.Character.HumanoidRootPart.Position).magnitude <= 100 and v.Humanoid.Health > 0 then
      local vp = game.Players:GetPlayerFromCharacter(v)
      if vp == nil then
        table.insert(scrubs, v)
      else
        if vp.Neutral == true and vPlayer.Neutral == true then
          table.insert(scrubs, v)
        else
          if GetTeamFromColor(vp.TeamColor) ~= GetTeamFromColor(vPlayer.TeamColor) then
            table.insert(scrubs, v)
          end
        end
      end
    end
  end
  Nubs = scrubs
end
Nubs = {}
GetNubsInRadius = function(pos, radius)
  local radius = radius + radiushelp
  local filtered = {}
  for _,v in pairs(Nubs) do
    if v:FindFirstChild("Torso") ~= nil and v:FindFirstChild("Humanoid") ~= nil then
      local cpos = pos
          if v.Humanoid:GetState() == Enum.HumanoidStateType.Jumping or v.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
            local ydiff = (v.Torso.Position.y - vPlayer.Character.Torso.Position.y) / 1
            if ydiff > 5 then
              ydiff = 5
            end
            cpos = pos + Vector3.new(0, ydiff, 0)
          end
          if v.Name == "Siegmund" then
            cpos = cpos - Vector3.new(0, 6, 0)
          end
          if (v.Torso.Position - (cpos)).magnitude <= radius then
            table.insert(filtered, v)
          end
    end
  end
  return filtered
end
noy = function(pos)
  return Vector3.new(pos.x, 0, pos.z)
end
applyCameraShake = function(Noob, Intens, Time)
  Intens = Intens / 10
  if game.Players:GetPlayerFromCharacter(Noob) ~= nil then
    local ss = script.CamShake:clone()
    ss.Disabled = false
    ss.intensity.Value = Intens
    ss.times.Value = Time
    ss.Parent = Noob
  end
end
LastHitTime = time()
LastDamage = 0
ComboHits = 0
asset = math.random(1, 100000000)
gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end
showDamage = function(Char, Dealt, Type, DamageType, HTD)
  m = Instance.new("Model")
  m.Name = "Effect"
  c = Instance.new("Part")
  c.Transparency = 1
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.formFactor = "Custom"
  c.Size = Vector3.new(0.2, 0.2, 0.2)
  b = Instance.new("BillboardGui", c)
  b.Size = UDim2.new(5, 0, 5, 0)
  b.AlwaysOnTop = true
  damgui = gui("TextLabel", b, tostring(Dealt), 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  damgui.ZIndex = 2
  if Type == "Damage" then
    damgui.Font = "SourceSans"
    if Dealt == "Block" then
      damgui.TextColor3 = BrickColor.new("Bright blue").Color
    else
      if Dealt < 3 then
        damgui.TextColor3 = BrickColor.new("White").Color
      else
        if Dealt >= 3 and Dealt < 20 then
          damgui.TextColor3 = BrickColor.new("Bright yellow").Color
        else
          damgui.TextColor3 = BrickColor.new("Really red").Color
          damgui.Font = "SourceSansBold"
        end
      end
    end
    if DamageType == "Pure" then
      damgui.TextColor3 = BrickColor.new("Royal purple").Color
      damgui.Size = UDim2.new(0.5, 0, 0.5, 0)
      damgui.Position = UDim2.new(0.5, 0, 0.5, 0)
    else
      if DamageType == "IgnoreDefense" then
        damgui.TextStrokeColor3 = BrickColor.new("Really red").Color
      else
        if DamageType == "DefenseOne" then
          damgui.TextStrokeColor3 = Color3.new(0.1, 0.1, 0.1)
        end
      end
    end
  else
    if Type == "Debuff" then
      damgui.TextColor3 = BrickColor.new("White").Color
    else
      if Type == "Interrupt" then
        damgui.TextColor3 = BrickColor.new("New Yeller").Color
      end
    end
  end
  if HTD ~= nil and DamageType ~= "Pure" then
    damgui.Font = "SourceSansBold"
    sus = Instance.new("ImageLabel", b)
    sus.Name = "8)"
    sus.Image = "http://www.roblox.com/asset/?id=240213504"
    sus.BackgroundTransparency = 1
    sus.ImageTransparency = 0.25
    sus.Size = UDim2.new(1.5, 0, 1.5, 0)
    sus.ImageColor3 = BrickColor.new("Bright red").Color
    sus.Position = UDim2.new(-0.25, 0, -0.15, 0)
    coroutine.resume(coroutine.create(function(s)
    wait()
    fwait(0.965)
    for i = 1, 15 do
      s.ImageTransparency = 0.25 + i / 22.5
      fwait()
    end
    p:Remove()
  end), sus)
  end
  damgui.TextScaled = true
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = cf(Char.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = cf(Char.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
    end
  end
  f = Instance.new("BodyPosition")
  f.P = 1000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  if Type == "Damage" then
    f.position = c.Position + Vector3.new(0, 4, 0)
  else
    if Type == "Debuff" or Type == "Interrupt" then
      f.position = c.Position + Vector3.new(0, 6, 0)
    end
  end
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 3.5)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
  dir = Vector3.new()
  if DamageType == "Pure" and Dealt <= 1 then
    coroutine.resume(coroutine.create(function(p, s, dir)
    wait()
    for i = 1, 8 do
      p.BodyPosition.position = p.BodyPosition.position + Vector3.new(0, -i * 0.045, 0) + dir / 15 * 6
      fwait()
    end
    fwait(0.24)
    for i = 1, 12 do
      p.BodyPosition.position = p.BodyPosition.position + Vector3.new(0, 0.25, 0)
      s.TextTransparency = i / 12
      s.TextStrokeTransparency = i / 12
      fwait()
    end
    p.Parent:Remove()
  end), c, damgui, Vector3.new(math.random(-1, 1), 0, math.random(-1, 1)))
  else
    coroutine.resume(coroutine.create(function(p, s)
    wait()
    for i = 1, 10 do
      p.BodyPosition.position = p.BodyPosition.position + Vector3.new(0, -i * 0.045, 0)
      fwait()
    end
    fwait(0.5)
    for i = 1, 15 do
      p.BodyPosition.position = p.BodyPosition.position + Vector3.new(0, 0.2, 0)
      s.TextTransparency = i / 15
      s.TextStrokeTransparency = i / 15
      fwait()
    end
    p.Parent:Remove()
  end), c, damgui)
  end
end
GetTeamFromColor = function(color)
  for _,v in pairs(game:GetService("Teams"):children()) do
    if color == v.TeamColor then
      return v.Name
    end
  end
end
applyDamage = function(Noob, Damage, KnockDir, Down, ForceDown, addFunc, DebounceTime, aYvel, hitsound, hitpitch, canburn, canproc, Stun, WasSpecial, DamageType, Unblockable, CanBounce)
  if KnockDir == nil then
    KnockDir = Vector3.new(0, 0, 0)
  end
  if Down == nil then
    Down = false
  end
  if addFunc == nil then
    addFunc = function()
  end
  end
  if aYvel == nil then
    aYvel = 0
  end
  if hitsound == nil then
    hitsound = ""
  end
  if hitpitch == nil then
    hitpitch = 1
  end
  local h = Noob:FindFirstChild("Humanoid")
  local t = Noob:FindFirstChild("HumanoidRootPart")
  if t == nil then
    t = Noob:FindFirstChild("Torso")
  end
  if h ~= nil and t ~= nil then
    local vp = game.Players:GetPlayerFromCharacter(h.Parent)
    if vp ~= nil and vp.Neutral ~= true and vPlayer.Neutral ~= true and GetTeamFromColor(vp.TeamColor) == GetTeamFromColor(vPlayer.TeamColor) then
      return 
    end
if DamageType == "Pure" then
	if h:FindFirstChild("SADebounce" .. asset) == nil then
        local b = Instance.new("BoolValue", h)
        b.Name = "SADebounce" .. asset
        game:GetService("Debris"):AddItem(b, DebounceTime)
	end
end
if DamageType ~= "Pure" then
	if h:FindFirstChild("SADebounce" .. asset) == nil then
        local b = Instance.new("BoolValue", h)
        b.Name = "SADebounce" .. asset
        game:GetService("Debris"):AddItem(b, DebounceTime)
	else
		return
      end
end
      --[[if DebounceTime > 0 then
        return 
      end--]]
      if GetTeamFromColor(vPlayer.TeamColor) == "Juggernaut" and DamageType == "Pure" then
        Damage = Damage * 2.5
      end
      if addFunc ~= nil then
        addFunc(Noob)
      end
      coroutine.resume(coroutine.create(function(t, KnockDir, aYvel, KnockForce, aHitstop)
    if t:FindFirstChild("AIDS" .. asset) then
      t["AIDS" .. asset]:Remove()
    end
    v = Instance.new("BodyVelocity")
    v.Name = "AIDS" .. asset
    v.P = 120
    if KnockDir.magnitude > 0 then
      v.Parent = t
    end
    aYvel = 0
    if KnockDir.y > 1 then
      aYvel = 1.2
    end
    v.maxForce = Vector3.new(558000, aYvel * 558000, 558000)
    v.velocity = Vector3.new(KnockDir.x, KnockDir.y, KnockDir.z) * 1.1
    if t.Parent.Humanoid:GetState() == Enum.HumanoidStateType.Jumping or t.Parent.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
      v.velocity = v.velocity / 1.6
    end
    game:GetService("Debris"):AddItem(v, 0.25)
  end), t, KnockDir, aYvel)
      if Down == true then
        local g = Instance.new("BodyAngularVelocity")
        g.P = 200
        g.maxTorque = Vector3.new(80000, 80000, 80000)
        g.angularvelocity = (KnockDir / 1.5 + Vector3.new(math.random(-20, 20), math.random(-20, 20), math.random(-20, 20))) / 3
        g.Parent = t
        game:GetService("Debris"):AddItem(g, 0.5)
            if game.Players:GetPlayerFromCharacter(t.Parent) then
              local s = script.ForceState:clone()
              s.Value.Value = "FallingDown"
              s.Parent = t.Parent
            end
            h:ChangeState(Enum.HumanoidStateType.FallingDown)
end
            if ForceDown == true then
              g:Remove()
              t.CFrame = t.CFrame * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0) + Vector3.new(0, 0.3, 0)
              g = Instance.new("BodyGyro")
              g.P = 400
              g.maxTorque = Vector3.new(80000, 80000, 80000)
              g.D = 20
              g.cframe = CFrame.new(vPlayer.Character.Torso.Position, vPlayer.Character.Torso.Position - Vector3.new(0, 50, 0))
              g.Parent = v.Parent
              game:GetService("Debris"):AddItem(g, 1)
            end
            local vp = game.Players:GetPlayerFromCharacter(h.Parent)
            local Juggernaut = false
            if vp then
              local team = vp.TeamColor
              if GetTeamFromColor(team) == "Juggernaut" then
                Juggernaut = true
                if DamageType == "IgnoreDefense" or DamageType == "Pure" then
                  DamageType = "Normal"
                end
              end
			end
            if h.Parent.Name == "Siegmund" or h.Parent.Name == "Juggerkactus" then
                  Juggernaut = true
                  if DamageType == "IgnoreDefense" or DamageType == "Pure" then
                    DamageType = "Normal"
                  end
end
                local stats = (h.Parent:FindFirstChild("Stats"))
                local enemymana = nil
                if stats then
                  enemymana = stats:FindFirstChild("Mana")
                end
                if enemymana then
                  if t.Parent:FindFirstChild("ManaMark") and canproc == true and Juggernaut == false then
	for i = 1, 3 do
                    applyDamage(h.Parent, 3, Vector3.new(), false, false, nil, 0, 0, "", 0, false, false, 0, true, "Pure", true, false)
end
                    local s = Instance.new("Sound", t)
                    s.Volume = 0.8
                    s.Pitch = 0.6
                    s.SoundId = "http://www.roblox.com/asset/?id=" .. "234365587"
                    s:Play()
                    game:GetService("Debris"):AddItem(s, 2)
                    local eff = NewPart(Vector3.new(1, 1, 1), CFrame.new(t.Position + Vector3.new(math.random(-15, 15) / 10, math.random(-15, 15) / 10, math.random(-15, 15) / 10)) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "SpecialMesh", Vector3.new(1, 1, 1))
                    eff.Parent = workspace
                    eff.Mesh.MeshType = "Sphere"
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, A, V, diff)
    for i = 1, 10 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.2, 0.2, 0.2)
      p.Transparency = 0.25 + i / 13.333333333333
      p.CFrame = t.CFrame * A + diff
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-4, 4) * 4), math.rad(math.random(-4, 4) * 3), math.rad(math.random(-4, 4) * 2)), KnockDir / 30, t.Position - eff.Position)
                    local pla = eff.Position
                    local diff = pla - t.Position
                    local eb = BillboardGui("http://www.roblox.com/asset/?id=235269395", pla, 0)
                    eb.Parent = workspace
                    eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
                    eb.BillboardGui.Size = UDim2.new(2, 0, 2, 0)
                    game:GetService("Debris"):AddItem(eb, 3)
                    coroutine.resume(coroutine.create(function(p, par, diff)
    local r = math.random(-3, 3) * 9
    if r > -6 and r < 1 then
      r = -6
    else
      if r < 6 and r > -1 then
        r = 6
      end
    end
    for i = 1, 12 do
      p.BillboardGui.ImageLabel.ImageTransparency = i / 12
      p.BillboardGui.Size = UDim2.new(2 + i / 2, 0, 2 + i / 2, 0)
      p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r
      p.CFrame = par.CFrame + diff
      fwait()
    end
    p:Remove()
  end), eb, t, diff)
                    local pla = eff.Position
                    coroutine.resume(coroutine.create(function(par, diff, h)
    if Corruption <= 99 then
      Corruption = Corruption + 1
    else
      Corruption = 100
    end
    for i = 1, 3 do
      fwait(0.15)
      local eff = NewPart(Vector3.new(1, 1, 1), par.CFrame * CFrame.new(math.random(-15, 15) / 10, math.random(-20, 15) / 10, math.random(-5, 5) / 10) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "SpecialMesh", Vector3.new(0.5, 0.5, 0.5))
      eff.Parent = workspace
      eff.Name = "BloodEffect"
      eff.Mesh.MeshType = "Sphere"
      eff.Anchored = true
      eff.CanCollide = false
      game:GetService("Debris"):AddItem(eff, 5)
      coroutine.resume(coroutine.create(function(p, A, V)
      local R = Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)) / 50
      for i = 1, 6 do
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.85, 0.85, 0.85)
        p.Transparency = 0.25 + i / 8
        p.CFrame = p.CFrame * A
        fwait()
      end
      p:Remove()
    end), eff, CFrame.Angles(math.rad(math.random(-4, 4) * 4), math.rad(math.random(-4, 4) * 3), math.rad(math.random(-4, 4) * 2)), KnockDir / 30)
      local eb = BillboardGui("http://www.roblox.com/asset/?id=233069772", eff.Position, 0)
      eb.Parent = workspace
      eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
      eb.BillboardGui.Size = UDim2.new(2, 0, 2, 0)
      game:GetService("Debris"):AddItem(eb, 3)
      coroutine.resume(coroutine.create(function(p)
      local r = math.random(-3, 3) * 9
      if r > -12 and r < 1 then
        r = -12
      else
        if r < 12 and r > -1 then
          r = 12
        end
      end
      for i = 1, 6 do
        p.BillboardGui.ImageLabel.ImageTransparency = 0.25 + i / 8
        p.BillboardGui.Size = UDim2.new(2 + i / 1.75, 0, 2 + i / 1.75, 0)
        p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r
        fwait()
      end
      p:Remove()
    end), eb)
    end
  end), t, t.Position - pla, h)
                  elseif enemymana.Value > -1 and canburn == true and t.Parent:FindFirstChild("ManaMark") == nil then
                        local eff = NewPart(Vector3.new(1, 1, 1), CFrame.new(t.Position + Vector3.new(math.random(-15, 15) / 10, math.random(-15, 15) / 10, math.random(-15, 15) / 10)) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Bright blue", "BlockMesh", Vector3.new(0.6, 0.6, 0.6))
                        eff.Parent = workspace
                        eff.Name = "BloodEffect"
                        eff.Anchored = true
                        eff.CanCollide = false
                        game:GetService("Debris"):AddItem(eff, 5)
                        coroutine.resume(coroutine.create(function(p, A, V, diff, par)
    for i = 1, 14 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
      p.Transparency = 0.25 + i / 18.666666666667
      p.CFrame = par.CFrame * A + diff
      fwait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-4, 4) * 4), math.rad(math.random(-4, 4) * 3), math.rad(math.random(-4, 4) * 2)), KnockDir / 30, eff.Position - t.Position, t)
                        local pla = eff.Position
                        local diff = pla - t.Position
                        local eb = BillboardGui("http://www.roblox.com/asset/?id=235269378", pla, 0)
                        eb.Parent = workspace
                        eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
                        eb.BillboardGui.Size = UDim2.new(2, 0, 2, 0)
                        game:GetService("Debris"):AddItem(eb, 3)
                        coroutine.resume(coroutine.create(function(p, par, diff)
    local r = math.random(-3, 3) * 9
    if r > -6 and r < 1 then
      r = -6
    else
      if r < 6 and r > -1 then
        r = 6
      end
    end
    for i = 1, 12 do
      p.BillboardGui.ImageLabel.ImageTransparency = i / 12
      p.BillboardGui.Size = UDim2.new(2 + i / 2, 0, 2 + i / 2, 0)
      p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r
      p.CFrame = par.CFrame + diff
      fwait()
    end
    p:Remove()
  end), eb, t, diff)
                        coroutine.resume(coroutine.create(function(par, diff, man, manaloss, scrub)
    for i = 1, manaloss + 2 do
      if man.Value > 0 then
        --script.Parent.DMG.RemoteEventM:FireServer(man, 1)
		--man:TakeDamage(1)
		man.Value = man.Value - 1
	if fffuuuu == true then
        if scrub:FindFirstChild("ManaMark") == nil then
          local eb = BillboardGui("http://www.roblox.com/asset/?id=233069736", scrub.Torso.Position, 0)
          eb.Parent = workspace
          eb.Anchored = false
          eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
          eb.BillboardGui.Size = UDim2.new(0, 0, 0, 0)
          eb.BillboardGui.ImageLabel.Transparency = 1
          game:GetService("Debris"):AddItem(eb, 10)
          eb.Name = "ManaMark2"
          local w = Instance.new("Weld", eb)
          w.Part0 = scrub.Torso
          w.Part1 = eb
          local s = Instance.new("Sound", eb)
          s.Volume = 1
          s.Pitch = 0.9
          s.SoundId = "http://www.roblox.com/asset/?id=" .. "235097661"
          s:Play()
          game:GetService("Debris"):AddItem(s, 5)
          local r = 0
          if math.random(0, 1) == 1 then
            r = 1
          else
            r = -1
          end
          coroutine.resume(coroutine.create(function(p, r)
      p.BillboardGui.ImageLabel.Transparency = 1
      local el = 0
      while p.Parent do
        if el <= 20 then
          p.BillboardGui.ImageLabel.ImageTransparency = 1 - el * 0.02
          p.BillboardGui.Size = p.BillboardGui.Size + UDim2.new(1.5 - el * 0.1, 0, 1.5 - el * 0.1, 0)
          p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + (10 - el / 2) * r + r * 4
        end
        el = el + 1
        p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r * 4
        fwait()
      end
    end), eb, r)
          local eb = BillboardGui("http://www.roblox.com/asset/?id=233069802", scrub.Torso.Position, 0)
          eb.Parent = scrub
          eb.Anchored = false
          eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
          eb.BillboardGui.Size = UDim2.new(0, 0, 0, 0)
          eb.BillboardGui.ImageLabel.Transparency = 1
          game:GetService("Debris"):AddItem(eb, 10)
          eb.Name = "ManaMark"
          local w = Instance.new("Weld", eb)
          w.Part0 = scrub.Torso
          w.Part1 = eb
          local s = Instance.new("Sound", eb)
          s.Volume = 1
          s.Pitch = 0.9
          s.SoundId = "http://www.roblox.com/asset/?id=" .. "235097661"
          s:Play()
          game:GetService("Debris"):AddItem(s, 5)
          local r = -r
          coroutine.resume(coroutine.create(function(p, r)
      p.BillboardGui.ImageLabel.Transparency = 1
      local el = 0
      while p.Parent do
        if el <= 20 then
          p.BillboardGui.ImageLabel.ImageTransparency = 1 - el * 0.0075
          p.BillboardGui.Size = p.BillboardGui.Size + UDim2.new(2 - el * 0.1, 0, 2 - el * 0.1, 0)
          p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + (10 - el / 2) * r + r * 2
        end
        el = el + 1
        p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r * 2
        fwait()
      end
    end), eb, r)
          break
        end
      end
          fwait(0.09)
          -- DECOMPILER ERROR at PC188: LeaveBlock: unexpected jumping out DO_STMT
    end
end
  end), t, t.Position - pla, enemymana, math.ceil(Damage * 0.4), t.Parent)
                      end
end
                        if WasSpecial == false then
                          Mana.Value = Mana.Value + math.ceil(Damage * 0.15)
                        end
                        if Mana.Value > 150 then
                          Mana.Value = 150
                        end
                        if stats == nil then
                          if DamageType == nil or DamageType == "Normal" then
                            h:TakeDamage(Damage)
                          else
                            if DamageType == "Pure" then
                              h:TakeDamage(Damage)
                            else
                              if DamageType == "IgnoreDefense" then
                                h:TakeDamage(Damage)
                              else
                                if DamageType == "DefenseOne" then
                                  h:TakeDamage(Damage)
                                end
                              end
                            end
                          end
                        elseif stats.Block.Value == true and Unblockable == false then
                            showDamage(h.Parent, "Block", "Damage")
                            if CanBounce then
                              hitsound = "http://www.roblox.com/asset/?id=233856154"
                              hitpitch = 0.6
                              WeaponBounce()
                            end
                          else
                            local borb = nil
                            if stats.Block.Value == true and Unblockable == true then
                              borb = "ded"
                            end
                              if Damage > 1 then
                                local joj = math.ceil(Damage * 0.2)
                                if Ragemode == true or Ult == true then
                                  joj = 0
                                end
                                if Corruption <= 100 - joj then
                                  Corruption = Corruption + joj
                                else
                                  Corruption = 100
                                end
                              end
                              if DamageType == "Normal" then
                                Damage = Damage * playerstats.Damage.Value / stats.Defense.Value
                              else
                              end
                                if DamageType ~= "Pure" or DamageType == "IgnoreDefense" then
                                  local borb = stats.Defense.Value
                                  if borb > 1 then
                                    borb = 1
                                  end
                                  Damage = Damage * playerstats.Damage.Value / borb
                                end
                                h.Parent.Humanoid:TakeDamage(Damage)
                                showDamage(h.Parent, math.ceil(Damage), "Damage", DamageType, borb)
                               local StunObject = stats:FindFirstChild("Stun")
                                  if StunObject then
                                    StunObject.Value = StunObject.Value + Stun
                                  end
                                  if hitsound ~= "" then
                                    local s = Instance.new("Sound", t)
                                    s.Volume = 1
                                    s.Pitch = hitpitch
                                    s.SoundId = "http://www.roblox.com/asset/?id=" .. hitsound
                                    s:Play()
                                    game:GetService("Debris"):AddItem(s, 2)
                                end
                              end
end
end
addonHoldDown = function(Noob)
  local t = Noob:FindFirstChild("HumanoidRootPart")
  if t == nil then
    t = Noob:FindFirstChild("Torso")
  end
  local add = Vector3.new(0, 0, 0)
  if t:FindFirstChild("AIDS") ~= nil then
    add = t.AIDS.velocity
    t.AIDS:Remove()
  end
  v = Instance.new("BodyPosition")
  v.P = 2000
  v.D = v.D / 2
  v.maxForce = Vector3.new(6000000000, 600000, 6000000000)
  v.position = t.Position - Vector3.new(0, 10, 0) + add
  v.Parent = t
  game:GetService("Debris"):AddItem(v, 1.2)
  Noob.Humanoid.PlatformStand = true
  coroutine.resume(coroutine.create(function(noob, t)
    fwait(0.5)
    while t:FindFirstChild("BodyPosition") ~= nil do
      fwait(0.01)
    end
    noob.PlatformStand = false
  end), Noob.Humanoid, t)
end
addonCullMovers = function(Noob)
  local t = Noob:FindFirstChild("HumanoidRootPart")
  if t == nil then
    t = Noob:FindFirstChild("Torso")
  else
    for _,v in pairs(t:children()) do
      if v:IsA("BodyMover") then
        v:Remove()
      end
    end
    t = Noob:FindFirstChild("Torso")
  end
  if t then
    for _,v in pairs(t:children()) do
      if v:IsA("BodyMover") then
        v:Remove()
      end
    end
  end
end
LerpWelds = function(orig, alpha, RJ0, N0, RS0, LS0, RH0, LH0, GR0, RJ1, N1, RS1, LS1, RH1, LH1)
  local e = tick()
  RootJoint.C0 = clerp(orig[1], RJ0, alpha)
  Neck.C0 = clerp(orig[2], N0, alpha)
  RightShoulder.C0 = clerp(orig[3], RS0, alpha)
  LeftShoulder.C0 = clerp(orig[4], LS0, alpha)
  RightHip.C0 = clerp(orig[5], RH0, alpha)
  LeftHip.C0 = clerp(orig[6], LH0, alpha)
  Grip.C0 = clerp(orig[7], GR0, alpha)
  RootJoint.C1 = clerp(orig[8], RJ1, alpha)
  Neck.C1 = clerp(orig[9], N1, alpha)
  RightShoulder.C1 = clerp(orig[10], RS1, alpha)
  LeftShoulder.C1 = clerp(orig[11], LS1, alpha)
  RightHip.C1 = clerp(orig[12], RH1, alpha)
  LeftHip.C1 = clerp(orig[13], LH1, alpha)
  lastframe = {RootJoint.C0, Neck.C0, RightShoulder.C0, LeftShoulder.C0, RightHip.C0, LeftHip.C0, Grip.C0, RootJoint.C1, Neck.C1, RightShoulder.C1, LeftShoulder.C1, RightHip.C1, LeftHip.C1}
  return tick() - e
end
sRootJoint,sNeck,sRightShoulder,sLeftShoulder,sRightHip,sLeftHip,sGrip = Instance.new("Motor6D"),Instance.new("Motor6D"),Instance.new("Motor6D"),Instance.new("Motor6D"),Instance.new("Motor6D"),Instance.new("Motor6D"),Instance.new("Motor6D"),Instance.new("Motor6D")
sresetWelds=function()
  sRootJoint.C0 = RootJointC0
  sNeck.C0 = NeckC0
  sRightShoulder.C0 = RightShoulderC0
  sLeftShoulder.C0 = LeftShoulderC0
  sRightHip.C0 = RightHipC0
  sLeftHip.C0 = LeftHipC0
  sRootJoint.C1 = RootJointC1
  sNeck.C1 = NeckC1
  sRightShoulder.C1 = RightShoulderC1
  sLeftShoulder.C1 = LeftShoulderC1
  sRightHip.C1 = RightHipC1
  sLeftHip.C1 = LeftHipC1
  sGrip.C0 = GripC0
end
--//XLegoX's spherical linear interpolation

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
PlayerKeys = {}
CurrentAnimation = nil
Hitstop = 0
DesiredWalkspeed = 16 * playerstats.Movement.Value
CanInterrupt = function(t)
  Tool.Status.AnimCanBeInterrupted.Value = t
end
PlayerCanJump = function()
  if CurrentAnimation ~= nil then
    local doescancel = false
    for _,v in pairs(CurrentAnimation.Cancels) do
      if v == "Jump" or v == "Everything" then
        doescancel = true
        break
      end
    end
      if Tool.Status.AnimCanBeInterrupted.Value == true then
        return doescancel
      else
        return false
      end
  end
end
PlaySound = function(SName, Vol, Pitch, Par)
  if Par == nil then
    Par = script
  end
  local s = Instance.new("Sound")
  s.Volume = Vol
  s.Pitch = Pitch
  s.SoundId = "http://www.roblox.com/asset/?id=" .. SName
  s.Parent = Par
  s:Play()
  game:GetService("Debris"):AddItem(s, 10)
end
Stand = function()
  local cwalk = "Stand"
  if Ragemode == true then
    cwalk = "Stand2"
  end
  if CurrentAnimation == Animations[cwalk] then
    return 
  else
    CurrentAnimation = Animations[cwalk]
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
  end
  local el = 40
  local elv = 1
  local cel = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if cel > 7 then
      LerpWelds(clastframe, 1, Animations[cwalk].Animation(0))
    else
      if cel <= 7 then
        LerpWelds(clastframe, cel / 7, Animations[cwalk].Animation(0))
      end
    end
    SetLegs(1)
    cel = cel + 1
  end)
end
Walk = function()
  local cwalk = "Walk"
  if Ragemode == true then
    cwalk = "Walk2"
  end
  if CurrentAnimation == Animations[cwalk] then
    return 
  else
    CurrentAnimation = Animations[cwalk]
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
  end
  local e = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    vPlayer.Character.Humanoid.WalkSpeed = DesiredWalkspeed
    if e <= 7 then
      LerpWelds(clastframe, e / 7, Animations[cwalk].Animation(0))
    else
      LerpWelds(clastframe, 1, Animations[cwalk].Animation(0))
    end
    e = e + 1
  end)
end
DesiredWalkspeedLast = 18
PlayerInAir = false
lastplayervel = 0
Jump = function()
  if Tool.Status.AnimCanBeInterrupted.Value == false then
    return 
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
  end
  Hitstop = 0
  local e = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if e <= 3 then
      LerpWelds(clastframe, e / 3, Animations.Jump.Animation(0))
    else
      LerpWelds(clastframe, 1, Animations.Jump.Animation(0))
    end
    SetLegs(0)
    e = e + 1
  end)
  enddir = Vector3.new(0, 0, 0)
  lastplayervel = enddir
  v_h = vPlayer.Character.Torso:FindFirstChild("JUMP_PROP")
	if v_h == nil then
		v_h=Instance.new("BodyVelocity")
		v_h.P=650
		v_h.maxForce=Vector3.new(0,2800000,0)
		v_h.velocity=Vector3.new(lastplayervel.x,55,lastplayervel.z)
		v_h.Parent=vPlayer.Character.Torso
		v_h.Name="JUMP_PROP"
	else
		v_h.P = 650
		v_h.maxForce=Vector3.new(0,2800000,0)
		v_h.velocity=Vector3.new(lastplayervel.x,75,lastplayervel.z)
	end
  local cpos = vPlayer.Character.Torso.CFrame*CFrame.new(0,-1,0)
  local par, loc = game.Workspace:FindPartOnRay(Ray.new(cpos.p,Vector3.new(0,-8,0)),vPlayer.Character)
  --vPlayer.Character.Humanoid.Jump = true
  timejump = time()
  bumped = false
  canland = false
  PlayerState = "Jumping"
  CanInterrupt(true)
  local ttimejump=time()
	local rr = TrackFunction
	DesiredMovespeed=19
  while v_h.Parent~=nil and timejump == ttimejump and Stunned == false do
      PlayerInAir=true
		if time()-timejump>.4 then
			canland=true
		end
		if (loc-cpos.p).magnitude<6 and canland==true or rawequal(rr,TrackFunction) == false then
			break
		end
		local ss = game:GetService("RunService").Heartbeat:wait()
		cpos=vPlayer.Character.Torso.CFrame*CFrame.new(0,.8,0)
		par,loc=game.Workspace:FindPartOnRay(Ray.new(cpos.p,Vector3.new(0,-15,0)),vPlayer.Character)
		if vPlayer.Character.HumanoidRootPart.Anchored==false then
			v_h.velocity=v_h.velocity-Vector3.new(0,186.2*ss,0)
		end
	end
  SetLegs(1)
  if timejump ~= ttimejump or rawequal(rr, TrackFunction) == false then
    return 
  end
  if Stunned == false then
    PlayerState = "Standing"
    PlayerInAir = false

    DesiredMovespeed = 19
    vPlayer.Character.Humanoid.WalkSpeed = DesiredMovespeed
    v_h:Remove()
    CanInterrupt(true)
    PlayerIsAttacking = false
    Stand()
  end
end
Jump_Cont = function()
  lastplayervel = vPlayer.Character.Torso.Velocity
  cpos = vPlayer.Character.Torso.CFrame * CFrame.new(0, 0.8, 0)
  par, loc = game.Workspace:FindPartOnRay(Ray.new(cpos.p, Vector3.new(0, -15, 0)), vPlayer.Character)
  if (loc - cpos.p).magnitude < 4 then
    PlayerState = "Standing"
    CanInterrupt(true)
    return Stand()
  end
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  Hitstop = 0
  local e = 0
  local clastframe = lastframe
  TrackFunction=FakeHeartbeat.Event:connect(function(Step)
    if e <= 4 then
      LerpWelds(clastframe, e / 4, Animations.Jump.Animation(0))
    else
      LerpWelds(clastframe, 1, Animations.Jump.Animation(0))
    end
    e = e + 1
  end)
  timejump = time()
  bumped = false
  canland = false
  PlayerState = "Jumping"
  CanInterrupt(true)
  local ttimejump = time()
  local rr = TrackFunction
  v_h = vPlayer.Character.Torso:FindFirstChild("JUMP_PROP")
  if v_h == nil then
    v_h = Instance.new("BodyVelocity")
    v_h.P = 650
    v_h.maxForce = Vector3.new(0, 2800000, 0)
    v_h.velocity = Vector3.new(lastplayervel.x, lastplayervel.y, lastplayervel.z)
    v_h.Parent = vPlayer.Character.Torso
    v_h.Name = "JUMP_PROP"
  else
    v_h.P = 650
    v_h.maxForce = Vector3.new(0, 2800000, 0)
    v_h.velocity = Vector3.new(lastplayervel.x, lastplayervel.y, lastplayervel.z)
  end
  local cpos = vPlayer.Character.Torso.CFrame * CFrame.new(0, -1, 0)
  local par, loc = game.Workspace:FindPartOnRay(Ray.new(cpos.p, Vector3.new(0, -8, 0)), vPlayer.Character)
  timejump = time()
  bumped = false
  canland = false
  PlayerState = "Jumping"
  CanInterrupt(true)
  local ttimejump = time()
  local rr = TrackFunction
  DesiredMovespeed = 18
  while v_h.Parent ~= nil and timejump == ttimejump do
      PlayerInAir = true
      if time() - timejump > 0.4 then
        canland = true
      end
    if (loc - cpos.p).magnitude >= 6 or canland ~= true then
      if rawequal(rr, TrackFunction) == false then
        break
      end
      do
        local ss = script.Heartbeat.Event:wait()
        cpos = vPlayer.Character.Torso.CFrame * CFrame.new(0, 0.8, 0)
        par = game.Workspace:FindPartOnRay(Ray.new(cpos.p, Vector3.new(0, -15, 0)), vPlayer.Character)
        if vPlayer.Character.HumanoidRootPart.Anchored == false then
          v_h.velocity = v_h.velocity - Vector3.new(0, 6.2066666666667, 0)
        end
        -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC279: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  if timejump ~= ttimejump or rawequal(rr, TrackFunction) == false then
    return 
  end
  PlayerState = "Standing"
  PlayerInAir = false
  vPlayer.Character.Humanoid.WalkSpeed = DesiredMovespeed
  v_h:Remove()
  CanInterrupt(true)
  PlayerIsAttacking = false
  CanDoubleJump = true
  TrackFunction:disconnect()
  TrackFunction = nil
  Walk()
end
Hitstop = 0
getWelds = function(c)
  local c = game.Players.LocalPlayer.Character
  repeat
    repeat
      wait()
    until c.HumanoidRootPart:FindFirstChild("RootJoint") ~= nil
  until c.Torso:FindFirstChild("Neck") ~= nil
  local t = c.Torso
  local hrp = c.HumanoidRootPart.RootJoint
  RightShoulder = t:FindFirstChild("Right Shoulder")
  LeftShoulder = t:FindFirstChild("Left Shoulder")
  RightHip = t:FindFirstChild("Right Hip")
  LeftHip = t:FindFirstChild("Left Hip")
  RootJoint = hrp
  Neck = t:FindFirstChild("Neck")
end
resetWelds = function(ext, occ)
  local r = {RightShoulder, LeftShoulder, RightHip, LeftHip, RootJoint, Neck}
  for _,v in pairs(r) do
    for i = 1, #occ do
      if occ[i] == v then
        table.remove(r, _)
      end
    end
  end
  for _,v in pairs(r) do
    if v.Name == "Right Shoulder" then
      if ext == 1 then
        v.DesiredAngle = 0
        v.CurrentAngle = 0
      else
        if ext == 2 then
          v.C0 = RightShoulderC0
          v.C1 = RightShoulderC1
        else
          if ext == 3 then
            v.DesiredAngle = 0
            v.CurrentAngle = 0
            v.C0 = RightShoulderC0
            v.C1 = RightShoulderC1
          end
        end
      end
    else
      if v.Name == "Left Shoulder" then
        if ext == 1 then
          v.DesiredAngle = 0
          v.CurrentAngle = 0
        else
          if ext == 2 then
            v.C0 = LeftShoulderC0
            v.C1 = LeftShoulderC1
          else
            if ext == 3 then
              v.DesiredAngle = 0
              v.CurrentAngle = 0
              v.C0 = LeftShoulderC0
              v.C1 = LeftShoulderC1
            end
          end
        end
      else
        if v.Name == "Right Hip" then
          if ext == 1 then
            v.DesiredAngle = 0
            v.CurrentAngle = 0
          else
            if ext == 2 then
              v.C0 = RightHipC0
              v.C1 = RightHipC1
            else
              if ext == 3 then
                v.DesiredAngle = 0
                v.CurrentAngle = 0
                v.C0 = RightHipC0
                v.C1 = RightHipC1
              end
            end
          end
        else
          if v.Name == "Left Hip" then
            if ext == 1 then
              v.DesiredAngle = 0
              v.CurrentAngle = 0
            else
              if ext == 2 then
                v.C0 = LeftHipC0
                v.C1 = LeftHipC1
              else
                if ext == 3 then
                  v.DesiredAngle = 0
                  v.CurrentAngle = 0
                  v.C0 = LeftHipC0
                  v.C1 = LeftHipC1
                end
              end
            end
          else
            if v.Name == "Neck" then
              if ext == 1 then
                v.DesiredAngle = 0
                v.CurrentAngle = 0
              else
                if ext == 2 then
                  v.C0 = NeckC0
                  v.C1 = NeckC1
                else
                  if ext == 3 then
                    v.DesiredAngle = 0
                    v.CurrentAngle = 0
                    v.C0 = NeckC0
                    v.C1 = NeckC1
                  end
                end
              end
            else
              if v.Name == "RootJoint" then
                if ext == 1 then
                  v.DesiredAngle = 0
                  v.CurrentAngle = 0
                else
                  if ext == 2 then
                    v.C0 = RootJointC0
                    v.C1 = RootJointC1
                  else
                    if ext == 3 then
                      v.DesiredAngle = 0
                      v.CurrentAngle = 0
                      v.C0 = RootJointC0
                      v.C1 = RootJointC1
                    end
                  end
                end
              else
              end
            end
          end
        end
      end
    end
    if v.Name == "RightGrip" then
      if ext ~= 1 or ext == 2 then
        Grip.C0 = nGrip.C0
        Grip.C1 = nGrip.C1
      else
        if ext == 3 then
          Grip.C0 = nGrip.C0
          Grip.C1 = nGrip.C1
        end
      end
    end
  end
end
setMotorParameters = function(Motor, DesiredAngle, CurrentAngle, MaxVelocity, C0, C1)
  if C0 == nil then
    C0 = Motor.C0
  end
  if C1 == nil then
    C1 = Motor.C1
  end
  if DesiredAngle == nil then
    DesiredAngle = Motor.DesiredAngle
  end
  if CurrentAngle == nil then
    CurrentAngle = Motor.CurrentAngle
  end
  if MaxVelocity == nil then
    MaxVelocity = Motor.MaxVelocity
  end
  Motor.C0 = C0
  Motor.C1 = C1
  Motor.DesiredAngle = DesiredAngle
  Motor.CurrentAngle = CurrentAngle
  Motor.MaxVelocity = MaxVelocity
end
PlayerIsAttacking = false
PlayerBeingAttacked = false
PlayerState = "Standing"
getCharacterState = function()
  if Tool.Status.AnimCanBeInterrupted.Value == false or PlayerIsAttacking == true then
    return 
  end
  local CPlayer = game.Players.LocalPlayer.Character
  local moveVelocity = CPlayer.HumanoidRootPart.Velocity.magnitude
  if PlayerIsAttacking == false and PlayerState ~= "Jumping" then
    if moveVelocity >= 5 then
      PlayerState = "Moving"
      if (StickPos > 3 or CurrentCameraState == "3D") and MovementPreference == "Walk" and CurrentAnimation ~= Animations.Walk and Tool.Status.AnimCanBeInterrupted.Value == true and PlayerState ~= "Jumping" then
        Walk()
      end
    else
      PlayerState = "Standing"
      if (StickPos > 3 or CurrentCameraState == "3D") and CurrentAnimation ~= Animations.Stand and Tool.Status.AnimCanBeInterrupted.Value == true then
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        Stand()
      end
    end
  end
end
lastinput = time()
MovementPreference = "Walk"
playerDash = function()
end
NewInput = function(Key, atTick, Edge)
  local new = {Input = Key, Tick = atTick, Edge = Edge, Age = 0}
  table.insert(PlayerInputs, new)
end
FindInputStrings = function()
  local curtime = tick()
  local strunginputs = {}
  for _,v in pairs(PlayerInputs) do
    if curtime - v.Tick <= PlayerInputStringFrame then
      table.insert(strunginputs, v)
    end
  end
  table.sort(strunginputs, function(x, y)
    if x.Tick < y.Tick then
      return true
    end
    return false
  end)
  return strunginputs
end
MorphInputs = function(i)
  i = string.upper(i)
  if CurrentCameraState == "3D" then
    i = string.gsub(i, "A", "")
    i = string.gsub(i, "S", "<")
    i = string.gsub(i, "D", "")
    i = string.gsub(i, "W", ">")
  else
    if PlayerFacing == "Left" then
      i = string.gsub(i, "A", "<")
      i = string.gsub(i, "S", "v")
      i = string.gsub(i, "D", ">")
      i = string.gsub(i, "W", "^")
    else
      i = string.gsub(i, "A", ">")
      i = string.gsub(i, "S", "v")
      i = string.gsub(i, "D", "<")
      i = string.gsub(i, "W", "^")
    end
  end
  return i
end
CullPlayerInput = function()
  local toremove = {}
  for _,v in pairs(PlayerInputs) do
    v.Age = v.Age + 1
    if PlayerInputStringFrame + 0.05 < tick() - v.Tick or PlayerInputCullThreshold < _ then
      table.remove(PlayerInputs, _)
    end
  end
  table.sort(PlayerInputs, function(x, y)
    if x.Tick < y.Tick then
      return true
    end
    return false
  end)
end
IgnoreEdge = function(st)
  local str = string.gsub(st, ".%-", "")
  str = string.gsub(str, "%+", "")
  return str
end
LastDashInput = time()
CheckDeb = true
LastKeyCheck = ""
LastCheckTime = time()
lastnormal = ""
CheckNormals = function()
  local KeyCheck = ""
  if PlayerKeys.mouse ~= nil then
    if Ragemode == false then
      KeyCheck = "M"
    else
      KeyCheck = "R"
    end
  else
    coroutine.resume(coroutine.create(function(p)
    fwait(1)
    if p == lastnormal then
      lastnormal = ""
    end
  end), lastnormal)
  end
  local ee = ""
  if PlayerKeys.z ~= nil then
    KeyCheck = "Z"
  end
  if PlayerKeys.x ~= nil then
    KeyCheck = "X"
  end
  if PlayerKeys.c ~= nil then
    KeyCheck = "C"
  end
  if PlayerKeys.v ~= nil then
    KeyCheck = "V"
  end
  if PlayerKeys.e ~= nil then
    KeyCheck = "E"
  end
  KeyCheck = string.upper(KeyCheck)
  if (KeyCheck == "M" or KeyCheck == "R") and InputNormals[lastnormal .. KeyCheck] ~= nil and CheckDeb == true and LastKeyCheck ~= lastnormal .. KeyCheck and Tool.Status.AnimCanBeInterrupted.Value == true and PlayerState ~= "Jumping" then
    LastKeyCheck = lastnormal .. KeyCheck
    LastCheckTime = time()
    CurrentAnimation = "ATTACKING"
    GetNubs()
    BodyVel.velocity = Vector3.new()
    InputNormals[lastnormal .. KeyCheck]()
  end
  if InputNormals[KeyCheck] ~= nil and CheckDeb == true and LastKeyCheck ~= KeyCheck and Tool.Status.AnimCanBeInterrupted.Value == true and PlayerState ~= "Jumping" then
    LastKeyCheck = KeyCheck
    LastCheckTime = time()
    CurrentAnimation = "ATTACKING"
    GetNubs()
    BodyVel.velocity = Vector3.new()
    InputNormals[KeyCheck]()
  end
  if time() - LastCheckTime > 0.23 then
    LastKeyCheck = ""
  end
end
timejump = time()
DetectInput = function()
  if vPlayer.Character:FindFirstChild("Humanoid") then
    if PlayerIsAttacking == false then
      BodyGyro:Remove()
      BodyVel:Remove()
      vPlayer.Character.Humanoid.WalkSpeed = DesiredWalkspeed
    else
      vPlayer.Character.Humanoid.WalkSpeed = DesiredWalkspeed
    end
  end
  CheckNormals()
end
rawKeyInput = function()
end
SetCombatKey = function(k)
  PlayerCombatKeys[k] = true
  coroutine.resume(coroutine.create(function(k)
    for i = 1, 1000 do
      fwait(0.01)
      if PlayerCombatKeys[k] == nil then
        break
      end
    end
    do
      PlayerCombatKeys[k] = nil
    end
  end), k)
end
getCharacterState = function()
  if Tool.Status.AnimCanBeInterrupted.Value == false or PlayerIsAttacking == true then
    return 
  end
  local CPlayer = game.Players.LocalPlayer.Character
  local moveVelocity = (Vector3.new(0, 0, 0) - CPlayer.HumanoidRootPart.Velocity).magnitude
  if PlayerIsAttacking == false and PlayerState ~= "Jumping" then
    if moveVelocity >= 5 then
      PlayerState = "Moving"
      if MovementPreference == "Walk" and CurrentAnimation ~= Animations.Walk and Tool.Status.AnimCanBeInterrupted.Value == true and PlayerState ~= "Jumping" then
        Walk()
      end
    else
      PlayerState = "Standing"
      if PlayerIsAttacking == false and Tool.Status.AnimCanBeInterrupted.Value == true and CurrentAnimation ~= Animations.Stand and Tool.Status.AnimCanBeInterrupted.Value == true then
        DesiredWalkspeed = 16 * playerstats.Movement.Value
        Stand()
      end
    end
  end
end
lastinput = time()
MovementPreference = "Walk"
AnimTable = {}
AnimIDDump = {}
LastHealth = 0
AnimOb = nil
Equipping = false
Unequipping = false
Equipped = false
onEquip = function(mouse)
  if Equipping or Equipped then
    print("NOPE")
    return 
  end
  print(Wep)
  repeat
    repeat
      wait()
    until Unequipping == false
  until Wep ~= nil
  PlayerAnimationScript = vPlayer.Character:FindFirstChild("Animate")
  if PlayerAnimationScript ~= nil then
    AnimTable = PlayerAnimationScript:children()
    AnimOb = vPlayer.Character.Humanoid:FindFirstChild("Animator")
    p = Instance.new("Animation")
    p.AnimationId = "http://www.roblox.com/asset/?id=240475704"
    if AnimOb then
      local x = AnimOb:LoadAnimation(p)
      x:Play()
      fwait(0.06)
      AnimOb.Parent = nil
    end
  end
PlayerAnimationScript.Parent = nil
  do
    getWelds(vPlayer.Character)
    resetWelds(3, {})
    lastframe = {Animations.Stand.Animation(0)}
    Equipping = true
    local cl = 0
    RightHip.Part0 = vPlayer.Character.HumanoidRootPart
    LeftHip.Part0 = vPlayer.Character.HumanoidRootPart
    for i = 1, 7 do
      wait()
      LerpWelds({Animations.Equip.Animation(0)}, i / 7, Animations.Equip.Animation(1))
    end
    local s = Instance.new("Sound", vPlayer.Character.Torso)
    s.Volume = 0.33
    s.Pitch = 1.35
    s.SoundId = "http://www.roblox.com/asset/?id=" .. "240428955"
    s:Play()
    game:GetService("Debris"):AddItem(s, 2)
    vPlayer.Character.Humanoid.WalkSpeed = 0
    for i = 1, 6 do
      wait()
      LerpWelds({Animations.Equip.Animation(1)}, i / 6, Animations.Equip.Animation(2))
    end
    for i = 1, 5 do
      wait()
      LerpWelds({Animations.Equip.Animation(2)}, i / 5, Animations.Equip.Animation(1))
    end
    for i = 1, 5 do
      wait()
      LerpWelds({Animations.Equip.Animation(1)}, i / 5, Animations.Equip.Animation(3))
    end
    for i = 1, 8 do
      wait()
      LerpWelds({Animations.Equip.Animation(3)}, i / 8, Animations.Equip.Animation(4))
    end
    for i = 1, 1 do
      LerpWelds({Animations.Equip.Animation(4)}, i / 10, Animations.Equip.Animation(5))
      Grip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0))
      Grip.Part0 = vPlayer.Character["Right Arm"]
      wait()
    end
    cl = 0
    for i = 1, 10 do
      cl = cl + i * 0.018
      LerpWelds({Animations.Equip.Animation(5)}, cl, Animations.Stand.Animation(0))
      wait()
    end
    Equipping = false
    Equipped = true
    DetectInput()
    if Tool.Active then
      CurrentAnimation = "Sus"
      Stand()
      LastHealth = vPlayer.Character.Humanoid.Health
      chs = script.Heartbeat.Event:connect(function()
    CullPlayerInput()
    rawKeyInput()
    if PlayerKeys[" "] ~= nil and PlayerCanJump() == true and PlayerState ~= "Jumping" then
      Jump()
    end
  end)
      chsCS = script.Heartbeat.Event:connect(function()
    getCharacterState()
    DetectInput()
  end)
      chsj = vPlayer.Character.Humanoid.Changed:connect(function(v)
    if PlayerIsAttacking == true then
      vPlayer.Character.Humanoid.Jump = false
    end
  end)
      mouse.Button1Down:connect(function()
    PlayerKeys.mouse = "8)"
  end)
      mouse.Button1Up:connect(function()
    PlayerKeys.mouse = nil
  end)
      mouse.KeyDown:connect(function(key)
    PlayerKeys[key] = true
    NewInput(key, tick(), "+")
    SetCombatKey(key)
  end)
      mouse.KeyUp:connect(function(key)
    PlayerKeys[key] = nil
  end)
    end
  end
end
Down = nil
onPutaway = function()
  if Unequipping then
    return 
  end
  repeat
    repeat
      wait()
    until Equipping == false
  until PlayerIsAttacking == false
  if TrackFunction then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
PlayerAnimationScript.Parent = vPlayer.Character
  if PlayerAnimationScript ~= nil and AnimOb then
    AnimOb.Parent = vPlayer.Character.Humanoid
  end
  if chs then
    chs:disconnect()
    chs = nil
    chsj:disconnect()
    chsj = nil
    chsCS:disconnect()
    chsCS = nil
  end
  BodyVel.Parent = nil
  BodyGyro.Parent = nil
  Unequipping = true
  local cl = 0
  RightHip.Part0 = vPlayer.Character.HumanoidRootPart
  LeftHip.Part0 = vPlayer.Character.HumanoidRootPart
  vPlayer.Character.Humanoid.WalkSpeed = 0
  for i = 1, 8 do
    cl = cl + i * 0.028
    LerpWelds(lastframe, cl, Animations.Equip.Animation(4))
    Grip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0))
    wait()
  end
  print(cl, "dix")
  for i = 1, 1 do
    LerpWelds({Animations.Equip.Animation(4)}, 0, Animations.Equip.Animation(5))
    Grip.C0 = GripUNC0
    Grip.Part0 = vPlayer.Character.Torso
  end
  cl = 0
  for i = 1, 6 do
    cl = cl + i * 0.05
    LerpWelds({Animations.Equip.Animation(5)}, cl, Animations.Equip.Animation(0))
    Grip.C0 = GripUNC0
    Grip.Part0 = vPlayer.Character.Torso
    wait()
  end
  print(cl)
  RightHip.Part0 = vPlayer.Character.Torso
  LeftHip.Part0 = vPlayer.Character.Torso
  if PlayerAnimationScript ~= nil then
    PlayerAnimationScript.Disabled = false
  end
  resetWelds(3, {})
  if vPlayer.Character:FindFirstChild("Armor") then
    RootJoint.C0 = RootJointC0 * CFrame.new(0, 0, 0.2)
  end
  wait(0.1)
  Unequipping = false
  Equipped = false
end
Tool.Selected:connect(onEquip)
Tool.Deselected:connect(onPutaway)
Animations = {}
Animations.Stand = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(66))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.fromEulerAnglesXYZ(math.sin(time() * 2.2) / 49 + math.rad(4), 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(18) + math.sin(time() * 2.2) / 40, math.rad(-6) - math.sin(time() * 2.2) / 63, math.rad(-43))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.1, -0.3, -0.1) * CFrame.fromEulerAnglesXYZ(math.sin(time() * 2.2) / 30 - math.rad(30), -math.rad(25) - math.sin(time() * 2.2) / 20, math.rad(-10))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.5, 0.1, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0) + math.abs(math.sin(time() * 2.2) / 10), math.rad(0))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-40), math.rad(-110), math.rad(-10))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.8, 0.2, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(-5), math.rad(38), -math.sin(time() * 2.2) / 49 / 2)
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.7, 0.2, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-5), math.rad(18), math.rad(2) - math.sin(time() * 2.2) / 49 / 2)
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-20), 0)
    sGrip.C0 = GripC0 * CFrame.new(0.15, 0, -0.05) * CFrame.fromEulerAnglesXYZ(-math.abs(math.sin(time() * 2.2) / 40) - math.rad(10), math.rad(10), math.rad(-20))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "Stand"}
Animations.Walk = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, math.abs(math.cos(time() * 9) * 0.08) - 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(55) + math.cos(time() * 9) / 80, 0, -math.rad(math.cos(time() * 9)))
    sNeck.C0 = sNeck.C0 * CFrame.fromEulerAnglesXYZ(-math.rad(25), 0, 0)
    sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
    sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.45, -0.3, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(0), -math.rad(80), math.rad(40) - math.cos(time() * 9) / 12)
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.fromEulerAnglesXYZ(math.rad(5), -math.rad(30), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, -0.4, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(40), math.cos(time() * 9) / 10, math.cos(time() * 9) * 1.2 - math.rad(20))
    sGrip.C0 = GripC0 * CFrame.fromEulerAnglesXYZ(-math.rad(10), 0, 0)
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "Walk"}
Animations.Jump = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    local vely = vPlayer.Character.Torso.Velocity.y * 1.25
    if vely > 60 then
      vely = 60
    else
      if vely < -60 then
        vely = -60
      end
    end
    local velx = Vector3.new(vPlayer.Character.Torso.Velocity.x, 0, vPlayer.Character.Torso.Velocity.z).magnitude
    if velx > 10 then
      velx = 10
    end
    local vely2 = 1
    local vely3 = 0
    if vely < 0 then
      vely2 = 0
      vely3 = 1
    end
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad((15 + vely * vely3 / 1.1) * (velx / 10)), 0, math.rad((10 + vely * vely3 / 1.3) * (velx / 10)))
    sNeck.C0 = sNeck.C0 * CFrame.fromEulerAnglesXYZ(-math.rad(12 + vely / 2), -math.rad((4 + vely * vely3 / 2) * (velx / 20)), -math.rad((4 + vely * vely3 / 2) * (velx / 20)))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.1, 0)
    CFrame.fromEulerAnglesXYZ(-math.rad(4 - vely * vely3 / 12) - math.rad(vely * vely3 / 12 * (velx / 10)), -math.rad(1 - vely * vely3 / 4) - math.rad(vely * vely3 / 10 * (velx / 10)), math.rad(-vely / 2.6 * vely2) - math.rad(8) + math.rad(vely * vely3 / 3 * (velx / 10)))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.1, 0) * CFrame.new(vely * vely3 * 0.005 * (velx / 10), 0, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(4 - vely * vely3 / 12) - math.rad(vely * vely3 / 10 * (velx / 10)), math.rad(1 - vely * vely3 / 4) + math.rad(vely * vely3 / 1.6 * (velx / 10)), math.rad(vely / 2.6 * vely2) + math.rad(12) + math.rad(vely * vely3 / 4.5 * (velx / 10)))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.fromEulerAnglesXYZ(math.rad(-10 + vely * vely3), -math.rad(vely * vely3 * 0.6), -math.rad(25) + math.rad(-vely * vely3))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, -vely * 0.0055 * vely3, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-10 + vely * vely3 / 1.9), 0, math.rad(15) - math.rad(-vely * vely3 * 2.55))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "Jump"}
Animations.ZZ = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  local ws = vPlayer.Character.Torso.Velocity.magnitude / DesiredWalkspeed
  if ws > 1 then
    ws = 1
  end
  if ws > 0.1 then
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.04) * CFrame.Angles(math.rad(23), 0, math.rad(-18))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(2), math.rad(9), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.4, 0.7) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.035, -0.18, -0.04) * CFrame.Angles(math.rad(-30), math.rad(25), math.rad(18))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.17, 0, -0.04) * CFrame.fromEulerAnglesXYZ(math.rad(8), math.rad(12), math.rad(-21))
  end
    keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.08) * CFrame.Angles(math.rad(40), 0, math.rad(5))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-4), math.rad(4), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1, -0.3, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(110))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.08, -0.4, -0.08) * CFrame.Angles(math.rad(-38), math.rad(27), math.rad(15))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(2), math.rad(0))
  end
    keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.08) * CFrame.Angles(math.rad(47), 0, math.rad(16))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(2), math.rad(-7))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.25, -0.35, -0.4) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-120), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.09, -0.5, -0.09) * CFrame.Angles(math.rad(-50), math.rad(0), -math.rad(25))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.01) * CFrame.fromEulerAnglesXYZ(math.rad(-45), math.rad(1), math.rad(0))
  end
    keyframe[3] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(50), 0, math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.4, -0.8) * CFrame.Angles(math.rad(-30), math.rad(70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.55, -0.1) * CFrame.Angles(math.rad(-50), math.rad(20), math.rad(10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), math.rad(0), math.rad(20))
  end
  else
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.04) * CFrame.Angles(math.rad(23), 0, math.rad(-18))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(2), math.rad(9), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.4, 0.7) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.035, -0.18, -0.04) * CFrame.Angles(math.rad(-30), math.rad(25), math.rad(18))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.17, 0, -0.04) * CFrame.fromEulerAnglesXYZ(math.rad(8), math.rad(12), math.rad(-21))
  end
    keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.08) * CFrame.Angles(math.rad(40), 0, math.rad(5))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-4), math.rad(4), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1, -0.3, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(110))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.08, -0.4, -0.08) * CFrame.Angles(math.rad(-38), math.rad(27), math.rad(15))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(2), math.rad(0))
  end
    keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.08) * CFrame.Angles(math.rad(47), 0, math.rad(16))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-8), math.rad(2), math.rad(-7))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.25, -0.35, -0.4) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-100), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.09, -0.5, -0.09) * CFrame.Angles(math.rad(-47), math.rad(22), math.rad(11.5))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.01) * CFrame.fromEulerAnglesXYZ(math.rad(-45), math.rad(1), math.rad(15))
  end
    keyframe[3] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(50), 0, math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.4, -0.8) * CFrame.Angles(math.rad(-30), math.rad(70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.55, -0.1) * CFrame.Angles(math.rad(-50), math.rad(20), math.rad(10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), math.rad(0), math.rad(20))
  end
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"ZZZ", "Stand", "SummonPuddle"}
, Reference = "ZZ"}
Animations.ZZZ = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  local ws = vPlayer.Character.Torso.Velocity.magnitude / DesiredWalkspeed
  if ws > 1 then
    ws = 1
  end
  if ws > 0.1 then
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(40), 0, math.rad(25))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.6, -0.8) * CFrame.Angles(math.rad(-10), math.rad(60), math.rad(150))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, 0.5, -0.1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-180))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(33), math.rad(0), math.rad(180))
  end
    keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.35) * CFrame.Angles(math.rad(50), 0, math.rad(-34))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-18), math.rad(-8), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(-0.3, -0.4, 0.4) * CFrame.Angles(math.rad(-10), math.rad(-110), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.25, -0.55, 0.4) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-130))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(0), math.rad(180))
  end
  else
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(40), 0, math.rad(25))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.6, -0.8) * CFrame.Angles(math.rad(-10), math.rad(60), math.rad(150))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, 0.5, -0.1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-180))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(33), math.rad(0), math.rad(180))
  end
    keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.35) * CFrame.Angles(math.rad(50), 0, math.rad(-34))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-18), math.rad(-8), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(-0.3, -0.4, 0.4) * CFrame.Angles(math.rad(-10), math.rad(-110), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.25, -0.55, 0.4) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-130))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-19), math.rad(-15), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(15), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(0), math.rad(180))
  end
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"ZZZZ", "Stand", "SummonPuddle", "Extinction1"}
, Reference = "ZZZ"}
Animations.ZZZZ = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(50), 0, math.rad(-14))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-18), math.rad(-8), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(-0.3, -0.4, 0.4) * CFrame.Angles(math.rad(-10), math.rad(-60), math.rad(80))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.25, -0.55, 0.4) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(-100))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.6, 0.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(40), math.rad(0), math.rad(180))
  end
  keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.15) * CFrame.Angles(math.rad(8), math.rad(-7), math.rad(-110))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(4), math.rad(10), math.rad(70))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(-20), math.rad(-20))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(-95))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(15), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-1.2, 0.2, -0.9) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(120), 0)
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.55, 0.25, -0.7) * CFrame.Angles(math.rad(-14), math.rad(0), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(10), 0)
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(25), math.rad(0), math.rad(160))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.3) * CFrame.Angles(math.rad(8), math.rad(-7), math.rad(-68))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(4), math.rad(10), math.rad(60))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(-5))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.55, 0, 0.3) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(-95))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(15), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-1.1, 0.25, -0.6) * CFrame.Angles(math.rad(5), math.rad(-8), math.rad(-15))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(50), 0)
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.4, 0.2, -0.42) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), 0)
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(35), math.rad(0), math.rad(160))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"ZZZZZ", "Stand", "SummonPuddle", "Extinction1"}
, Reference = "ZZZZ"}
Animations.ZZZZZ = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.3) * CFrame.Angles(math.rad(-18), math.rad(5), math.rad(-36))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(20), math.rad(4), math.rad(12))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(-20), math.rad(167))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-90))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.22, 0) * CFrame.Angles(math.rad(-10), math.rad(-8), math.rad(-30))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.2, 0.22, 0.05) * CFrame.Angles(math.rad(-6), math.rad(30), math.rad(14))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.Angles(math.rad(-26), math.rad(5), math.rad(-36))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(25), math.rad(4), math.rad(12))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(-20), math.rad(197))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-80))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.27, 0) * CFrame.Angles(math.rad(-18), math.rad(-8), math.rad(-40))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.2, 0.25, 0.05) * CFrame.Angles(math.rad(-6), math.rad(30), math.rad(30))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), math.rad(0), math.rad(0))
  end
  keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.16) * CFrame.Angles(math.rad(21), 0, math.rad(23))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(10), math.rad(4), math.rad(-12))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.5, 0, -0.2) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(119))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(40))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.4, 0.2, -0.1) * CFrame.Angles(math.rad(0), math.rad(8), math.rad(-12.5))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.6, -0.1, -0.1) * CFrame.Angles(math.rad(-2), math.rad(16), math.rad(45))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), math.rad(-8), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"ZZZZZZ", "Stand", "SummonPuddle", "Extinction1"}
, Reference = "ZZZZZ"}
Animations.ZZZZZZ = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-48), 0, math.rad(30))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(26), math.rad(6), math.rad(-20))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(174))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(-50), math.rad(-66))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.9, 0.175, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-22))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.9, 0.35, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-101))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0, -0.1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(-3), math.rad(180))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"ZZZZZZZ", "Stand", "SummonPuddle", "Extinction1"}
, Reference = "ZZZZZZ"}
Animations.ZZZZZZZ = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.9) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(0))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.5, -0.25, -0.2) * CFrame.Angles(math.rad(-15), math.rad(15), math.rad(79))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-36), math.rad(0), math.rad(50))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.4, 1.475, -0.4) * CFrame.Angles(math.rad(-17), math.rad(17), math.rad(48))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(17), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1, -0.35, 0.35) * CFrame.Angles(-math.rad(20), -math.rad(20), -math.rad(180))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(32), math.rad(0), math.rad(180))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "ZZZZZZZ"}
Animations.ZZZZZZZ = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.9) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(0))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.5, -0.25, -0.2) * CFrame.Angles(math.rad(-15), math.rad(15), math.rad(79))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-36), math.rad(0), math.rad(50))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.5, -1.45, -0.2) * CFrame.Angles(math.rad(-7), math.rad(7), math.rad(-89))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.45, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(32), math.rad(0), math.rad(180))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "ZZZZZZZ"}
Animations.PuddleTrigger = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(31))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2), 0, math.rad(-10))
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(18), math.rad(-6), math.rad(-43))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.1, -0.3, -0.1) * CFrame.fromEulerAnglesXYZ(-math.rad(18), -math.rad(20), math.rad(-20))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0.15, 0.2, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(10), 0, math.rad(-170))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-20), math.rad(-5))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(-7), -math.rad(18), math.rad(-1))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-18), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.15, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-7), math.rad(18), math.rad(1))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(10), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.15, 0, -0.05) * CFrame.fromEulerAnglesXYZ(-math.rad(20), math.rad(10), math.rad(-10))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(31))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2), 0, math.rad(-10))
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(19), math.rad(-8), math.rad(-40))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.1, -0.3, -0.1) * CFrame.fromEulerAnglesXYZ(-math.rad(18), -math.rad(20), math.rad(-18))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, 0.55, 0) * CFrame.fromEulerAnglesXYZ(math.rad(46), 0, math.rad(-180))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(20), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(-7), -math.rad(18), math.rad(-1))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-19), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.15, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-7), math.rad(18), math.rad(1))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(11), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.15, 0, -0.05) * CFrame.fromEulerAnglesXYZ(-math.rad(20), math.rad(10), math.rad(-10))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "PuddleTrigger"}
Animations.ShatterCannon = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(50), 0, math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.4, -0.8) * CFrame.Angles(math.rad(-30), math.rad(70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.55, -0.1) * CFrame.Angles(math.rad(-50), math.rad(20), math.rad(10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(180))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(-19), math.rad(0), math.rad(-95))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(2), math.rad(15), math.rad(90))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(-0.3, -0.4, 0.4) * CFrame.Angles(math.rad(-10), math.rad(-46), math.rad(85))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.7, 0.4) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(-70))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.5, 0.2, -0.8) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(12), math.rad(7), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1.3, 0.2, -1) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(7), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-43), math.rad(0), math.rad(180))
  end
  keyframe[2] = function()
    resetWelds(3, {})
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(48), math.rad(16), math.rad(30))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(7), math.rad(-10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.15, 0.2, 0.3) * CFrame.Angles(math.rad(-5), math.rad(-50), math.rad(125))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0.2, -0.5, 0) * CFrame.Angles(math.rad(-40), math.rad(20), math.rad(40))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-90), math.rad(90))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "ShatterCannon"}
Animations.BlackSpace = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.3) * CFrame.Angles(math.rad(20), 0, math.rad(80))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-45))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.7, -0.8) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(85))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, 0.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(-45), math.rad(-95))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.8, 0.2, -0.9) * CFrame.Angles(math.rad(0), math.rad(-200), math.rad(-10))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(1.1, 0.225, -1.2) * CFrame.Angles(math.rad(10), math.rad(140), math.rad(-5))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(33), math.rad(0), math.rad(180))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0.8, 0.3) * CFrame.Angles(math.rad(-24), 0, math.rad(-60))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(15), math.rad(0), math.rad(45))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.8, -0.7, -0.1) * CFrame.Angles(math.rad(0), math.rad(72), math.rad(72))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-88), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.45, -0.7, 0.2) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(-63))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.5, 0.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-15))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.2, -0.2) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(5))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(33), math.rad(0), math.rad(180))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "BlackSpace"}
Animations.Stand2 = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, math.sin(time() * 2) / 40 - 0.72, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(52.5), 0, math.rad(-35))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.fromEulerAnglesXYZ(math.sin(time() * 2) / 24, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, -0.02) * CFrame.fromEulerAnglesXYZ(-math.rad(10) + math.sin(time() * 2) / 40, -math.rad(4), math.rad(20))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.45, -0.4, 0.1) * CFrame.fromEulerAnglesXYZ(math.sin(time() * 2) / 30 - math.rad(40), math.rad(-70) - math.sin(time() * 2) / 20, math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.2, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(-15), math.rad(35), math.rad(-150) + math.sin(time() * 2) / 8)
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, -0.15, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-80), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.75 + math.sin(time() * 2) / 30, 0.225, -0.1 + math.sin(time() * 2) / 50) * CFrame.fromEulerAnglesXYZ(math.rad(-6), -math.rad(18) + math.sin(time() * 2) / 20, -math.rad(8))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.15, -0.3, -0.2 + math.sin(time() * 2) / 30) * CFrame.fromEulerAnglesXYZ(math.rad(-16), math.sin(time() * 2) / 60, math.rad(60) + math.sin(time() * 2) / 60)
    sGrip.C0 = GripC0 * CFrame.new(0.05, 0, -0.05) * CFrame.fromEulerAnglesXYZ(-math.abs(math.sin(time() * 2) / 40) + math.rad(-5), math.rad(0), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "Stand2"}
Animations.Walk2 = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, math.abs(math.cos(time() * 10) * 0.08) - 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(65) + math.cos(time() * 10) / 80, 0, -math.rad(math.cos(time() * 10)) - math.rad(10))
    sNeck.C0 = sNeck.C0 * CFrame.fromEulerAnglesXYZ(-math.rad(30), math.rad(1), math.rad(9))
    sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
    sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.6, -0.3, 0) * CFrame.fromEulerAnglesXYZ(math.cos(time() * 10) / 12, math.rad(-90), math.rad(50))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.fromEulerAnglesXYZ(math.rad(0), -math.rad(30), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-1.2 + math.cos(time() * 10) / 60, 0.4, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(70), -math.rad(180))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-10) + math.cos(time() * 10) / 30, math.rad(0), math.rad(-20) + math.cos(time() * 10) / 30)
    sGrip.C0 = GripC0 * CFrame.fromEulerAnglesXYZ(-math.rad(10), 0, 0)
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "Walk2"}
Animations.ZZ2 = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.14) * CFrame.Angles(math.rad(21), 0, math.rad(23))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(10), math.rad(4), math.rad(-12))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.5, 0, -0.2) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(119))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(40))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.15, 0) * CFrame.Angles(math.rad(-10), math.rad(-8), math.rad(-30))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.1, 0) * CFrame.Angles(math.rad(-2), math.rad(16), math.rad(6))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), math.rad(-8), math.rad(0))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.1) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-59))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(19), math.rad(7), math.rad(28))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.22, 1) * CFrame.Angles(math.rad(-40), math.rad(50), math.rad(110))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.35, -0.1, 0.2) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(-70))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.4, 0.2, -0.2) * CFrame.Angles(math.rad(-7), math.rad(-33), math.rad(-22))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1, 0.2, -0.2) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-4))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-6), math.rad(-2), math.rad(0))
  end
  keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(36), math.rad(0), math.rad(50))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(7), math.rad(7), math.rad(-20))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1, 0.1, 0.4) * CFrame.Angles(math.rad(16), math.rad(-25), math.rad(135))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-112), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0.2, -0.5, 0) * CFrame.Angles(math.rad(-40), math.rad(20), math.rad(40))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.45, 0.2, -0.2) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(-10))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.5, -0.2, 0) * CFrame.Angles(math.rad(0), math.rad(7), math.rad(50))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "ZZ2"}
Animations.Z2 = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  local ws = vPlayer.Character.Torso.Velocity.magnitude / DesiredWalkspeed
  if ws > 1 then
    ws = 1
  end
  if ws > 0.1 then
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, math.abs(math.cos(time() * 10) * 0.08) - 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(65) + math.cos(time() * 10) / 80, 0, -math.rad(math.cos(time() * 10)) - math.rad(10))
    sNeck.C0 = sNeck.C0 * CFrame.fromEulerAnglesXYZ(-math.rad(20), math.rad(1), math.rad(-4))
    sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
    sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.6, -0.3, 0) * CFrame.fromEulerAnglesXYZ(math.cos(time() * 10) / 12, math.rad(-90), math.rad(50))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.fromEulerAnglesXYZ(math.rad(0), -math.rad(30), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.6 + math.cos(time() * 10) / 60, 0.5, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), -math.rad(180))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-10) + math.cos(time() * 10) / 60, math.rad(90), math.rad(-20) + math.cos(time() * 10) / 60)
    sGrip.C0 = GripC0 * CFrame.fromEulerAnglesXYZ(-math.rad(10), 0, 0)
  end
  else
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, math.abs(math.cos(time() * 10) * 0.08) - 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(65) + math.cos(time() * 10) / 80, 0, -math.rad(math.cos(time() * 10)) - math.rad(10))
    sNeck.C0 = sNeck.C0 * CFrame.fromEulerAnglesXYZ(-math.rad(20), math.rad(1), math.rad(-4))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.6, -0.3, 0) * CFrame.fromEulerAnglesXYZ(math.cos(time() * 10) / 12, math.rad(-90), math.rad(50))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.fromEulerAnglesXYZ(math.rad(0), -math.rad(30), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.6 + math.cos(time() * 10) / 60, 0.5, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), -math.rad(180))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-10) + math.cos(time() * 10) / 60, math.rad(90), math.rad(-20) + math.cos(time() * 10) / 60)
    sGrip.C0 = GripC0 * CFrame.fromEulerAnglesXYZ(-math.rad(10), 0, 0)
  end
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "Z2"}
Animations.SoulExEnd = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, -0.72, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(55), 0, math.rad(-5))
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(10), -math.rad(4), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.4, -0.2, -0.2) * CFrame.fromEulerAnglesXYZ(-math.rad(20), math.rad(-20), math.rad(40))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.15, -0.1, -0.85) * CFrame.fromEulerAnglesXYZ(math.rad(-20), math.rad(35), math.rad(-145))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, -0.15, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-90), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.75, 0.2, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(0), -math.rad(6), math.rad(1))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.35, -0.15, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, math.rad(50))
    sGrip.C0 = GripC0 * CFrame.new(0.05, 0, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-10), math.rad(0), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "SoulExEnd"}
Animations.SoulExStart = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.15) * CFrame.Angles(math.rad(8), math.rad(-7), math.rad(-40))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(10), math.rad(10), math.rad(40))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(20), math.rad(20))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.5, -0.1, 0.2) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(-90))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(15), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.8, 0.2, -0.2) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(-5))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(60), 0)
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.4, 0.25, -0.2) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(20), 0)
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(25), math.rad(0), math.rad(0))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, -0.72, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(55), 0, math.rad(-5))
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, -0.02) * CFrame.fromEulerAnglesXYZ(-math.rad(20), -math.rad(4), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.2, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(70), math.rad(10), math.rad(20))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0.1, -0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), math.rad(0))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, -0.15, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-30), math.rad(-40))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.75, 0.2, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(0), -math.rad(6), math.rad(1))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.35, -0.15, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, math.rad(50))
    sGrip.C0 = GripC0 * CFrame.new(0.05, 0, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-10), math.rad(0), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Everything"}
, Reference = "SoulExStart"}
Animations.ZZ3 = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  local ws = vPlayer.Character.Torso.Velocity.magnitude / DesiredWalkspeed
  if ws > 1 then
    ws = 1
  end
  if ws > 0.1 then
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(43), 0, math.rad(-18))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(2), math.rad(9), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.4, 0.7) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.035, -0.18, -0.04) * CFrame.Angles(math.rad(-30), math.rad(25), math.rad(18))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.17, 0, -0.04) * CFrame.fromEulerAnglesXYZ(math.rad(8), math.rad(12), math.rad(-21))
  end
    keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50), 0, math.rad(5))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-4), math.rad(4), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1, -0.3, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(110))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.08, -0.4, -0.08) * CFrame.Angles(math.rad(-38), math.rad(27), math.rad(15))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(2), math.rad(0))
  end
    keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.02) * CFrame.Angles(math.rad(57), 0, math.rad(16))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(2), math.rad(-7))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.25, -0.35, -0.4) * CFrame.Angles(math.rad(30), math.rad(40), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-140), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.09, -0.5, -0.09) * CFrame.Angles(math.rad(-50), math.rad(0), -math.rad(25))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.01) * CFrame.fromEulerAnglesXYZ(math.rad(-60), math.rad(0), math.rad(0))
  end
    keyframe[3] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.04) * CFrame.Angles(math.rad(50), 0, math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.4, -0.8) * CFrame.Angles(math.rad(-10), math.rad(70), math.rad(140))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.55, -0.1) * CFrame.Angles(math.rad(-50), math.rad(20), math.rad(10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    if Ragemode == true then
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 - math.rad(28))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.75, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 10) / 50, -math.cos(time() * 10) * 1.1 + math.rad(28))
    else
      sRightHip.C0 = RightHipC0 * CFrame.new(-0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 - math.rad(18))
      sLeftHip.C0 = LeftHipC0 * CFrame.new(0.65, 0, 0) * CFrame.fromEulerAnglesXYZ(0 - math.rad(2), math.cos(time() * 9) / 50, -math.cos(time() * 9) * 1.1 + math.rad(18))
    end
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), math.rad(0), math.rad(20))
  end
  else
    keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.04) * CFrame.Angles(math.rad(23), 0, math.rad(-18))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(2), math.rad(9), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.4, 0.7) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.035, -0.18, -0.04) * CFrame.Angles(math.rad(-30), math.rad(25), math.rad(18))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.17, 0, -0.04) * CFrame.fromEulerAnglesXYZ(math.rad(8), math.rad(12), math.rad(-21))
  end
    keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.08) * CFrame.Angles(math.rad(40), 0, math.rad(5))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-4), math.rad(4), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1, -0.3, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(110))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.08, -0.4, -0.08) * CFrame.Angles(math.rad(-38), math.rad(27), math.rad(15))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.02) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(2), math.rad(0))
  end
    keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.08) * CFrame.Angles(math.rad(47), 0, math.rad(16))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-8), math.rad(2), math.rad(-7))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.25, -0.35, -0.4) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-100), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.09, -0.5, -0.09) * CFrame.Angles(math.rad(-47), math.rad(22), math.rad(11.5))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.19, 0, -0.01) * CFrame.fromEulerAnglesXYZ(math.rad(-45), math.rad(1), math.rad(15))
  end
    keyframe[3] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(50), 0, math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(1.2, -0.4, -0.8) * CFrame.Angles(math.rad(-30), math.rad(70), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.55, -0.1) * CFrame.Angles(math.rad(-50), math.rad(20), math.rad(10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.6, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), math.rad(-50))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.25, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), math.rad(0), math.rad(20))
  end
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"ZZZ", "Stand", "SummonPuddle"}
, Reference = "ZZ3"}
Animations.WeaponBounce = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15), 0, math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(14), math.rad(0), math.rad(-10))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(-0.2, -0.5, 0.2) * CFrame.Angles(math.rad(0), math.rad(-130), math.rad(90))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0.15, -0.55, 0.1) * CFrame.Angles(math.rad(-70), math.rad(-40), math.rad(-10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.5, 0.15, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.18, 0.25, -0.15) * CFrame.Angles(math.rad(-15), math.rad(5), math.rad(30))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), math.rad(0), math.rad(180))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"WeaponBounce"}
, Reference = "WeaponBounce"}
Animations.LHB = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.1) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-59))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(19), math.rad(7), math.rad(28))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.22, 1) * CFrame.Angles(math.rad(-40), math.rad(50), math.rad(110))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.35, -0.1, 0.2) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(-70))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.4, 0.2, -0.2) * CFrame.Angles(math.rad(-7), math.rad(-33), math.rad(-22))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1, 0.2, -0.2) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-4))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-6), math.rad(-2), math.rad(0))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, -0.6, -0.65) * CFrame.Angles(math.rad(60), 0, math.rad(40))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-28))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, -0.25, 0.75) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(68))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(-0.8, 0.1, 0.3) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.4, 0, 0.4) * CFrame.Angles(math.rad(-80), math.rad(30), math.rad(20))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.45, 0.15, -0.3) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(-2))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.35, -0.35, 0) * CFrame.Angles(math.rad(-5), math.rad(5), math.rad(54))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(80), math.rad(0))
  end
  keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15), 0, math.rad(70))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(15), math.rad(-15), math.rad(-45))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.3, -0.55, 0.25) * CFrame.Angles(math.rad(-75), math.rad(0), math.rad(50))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.1, -0.25, 0.1) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(-90))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.45, 0.175, -0.3) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-6))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.3, 0.1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(34))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  end
  keyframe[3] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, -0.4, -0.2) * CFrame.Angles(math.rad(45), 0, math.rad(-20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(15))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.1, -0.3, 0.1) * CFrame.Angles(math.rad(-55), math.rad(0), math.rad(-20))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.9, 0.2, 0.15) * CFrame.Angles(math.rad(-4), math.rad(17), math.rad(-135))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.45, 0.175, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-12))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.4, -0.05, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(54))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  end
  keyframe[4] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, -0.4, 0.15) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(35))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(20), 0, math.rad(-25))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, 0, 0.1) * CFrame.Angles(-math.rad(20), 0, math.rad(-41))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.Angles(-math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0.05, 0.05, -0.04) * CFrame.Angles(-math.rad(30), math.rad(18), math.rad(-95))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.Angles(math.rad(0), math.rad(-10), 0)
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.3, 0.2, -0.15) * CFrame.Angles(math.rad(-5), math.rad(-10), math.rad(2))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.4, 0.2, -0.1) * CFrame.Angles(math.rad(-6), math.rad(-8), math.rad(40))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0))
  end
  keyframe[5] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0.3, 0, 0.12) * CFrame.Angles(math.rad(-8), math.rad(10.5), math.rad(-97))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(0), 0, math.rad(70))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.05, -0.2, -0.1) * CFrame.Angles(math.rad(-20), 0, math.rad(-37))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.Angles(-math.rad(0), math.rad(60), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.5, 0.26, 0.3) * CFrame.Angles(math.rad(-120), math.rad(0), math.rad(-4))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.Angles(math.rad(-4), math.rad(-90), 0)
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.75, 0.2, -1.4) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.7, 0.16, -0.7) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-8))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(0), math.rad(0))
  end
  keyframe[6] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(18), math.rad(-8), math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(10), math.rad(-3), math.rad(-20))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, 0, 0.1) * CFrame.Angles(-math.rad(55), 0, math.rad(30))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.Angles(-math.rad(0), math.rad(65), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.3, 0.1, 0.2) * CFrame.Angles(math.rad(-105), math.rad(0), math.rad(-16))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.Angles(math.rad(-4), math.rad(-65), 0)
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.1, 0, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-35))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0.2, 0.16, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-15))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(0), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Stand"}
, Reference = "LHB"}
Animations.Antisleep = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(-40))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(35), math.rad(7), math.rad(28))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.22, 0.1) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.35, -0.15, -0.1) * CFrame.Angles(math.rad(-20), math.rad(30), math.rad(-60))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.1, 0.25, -0.2) * CFrame.Angles(math.rad(-7), math.rad(-33), math.rad(-10))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1.25, 2.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(-4), math.rad(-10))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-6), math.rad(-2), math.rad(0))
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(-0.1, -1, 0.3) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-70))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(25), math.rad(7), math.rad(40))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.22, 0.1) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(-10))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.2, -0.35, -0.1) * CFrame.Angles(math.rad(-50), math.rad(40), math.rad(20))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.1, 0.25, -0.2) * CFrame.Angles(math.rad(-7), math.rad(-50), math.rad(-10))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1.6, 0.15, -0.5) * CFrame.Angles(math.rad(0), math.rad(-4), math.rad(-5))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(6), math.rad(-2), math.rad(0))
  end
  keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(-0.1, -0.75, 0.2) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.22, 0.1) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(80))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.2, -0.35, -0.1) * CFrame.Angles(math.rad(-50), math.rad(40), math.rad(30))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.1, 0.25, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.5, 0.15, -0.3) * CFrame.Angles(math.rad(0), math.rad(-4), math.rad(-15))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-6), math.rad(-2), math.rad(0))
  end
  keyframe[3] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(-0.1, -1.5, 0.3) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-8))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.22, 0.1) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(-50))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.2, -0.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-60))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(2.225, 0.25, -0.2) * CFrame.Angles(math.rad(0), math.rad(12), math.rad(95))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1.75, 0.15, -0.3) * CFrame.Angles(math.rad(0), math.rad(-4), math.rad(22))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-6), math.rad(-2), math.rad(0))
  end
  keyframe[5] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(-0.1, -1.2, 0.3) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-70))
    sNeck.C0 = sNeck.C0 * CFrame.Angles(math.rad(20), math.rad(7), math.rad(40))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.2, -0.22, 0.1) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(5))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.05, -0.35, -0.1) * CFrame.Angles(math.rad(-40), math.rad(10), math.rad(10))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(-0.1, 0.25, -0.2) * CFrame.Angles(math.rad(-7), math.rad(-50), math.rad(-10))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-1.6, 0.15, -0.5) * CFrame.Angles(math.rad(0), math.rad(-4), math.rad(-5))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(6), math.rad(-2), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Stand"}
, Reference = "Antisleep"}
Animations.Stunned = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0.1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.45, -0.25, 0.15) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(7), math.rad(0), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(-0.4, 1, 0) * CFrame.Angles(math.rad(4), math.rad(0), math.rad(-90))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(4), math.rad(0), math.rad(10))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0.75, 0.33, 0.2) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(90))
    sGrip.C0 = GripC0 * CFrame.new(-0.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-30), math.rad(15), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Stand"}
, Reference = "Stunned"}
Animations.Staggered = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, -1.7) * CFrame.Angles(math.rad(-40), math.rad(10), math.rad(0))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.new(0, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0.05) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.25, -0.05, -0.25) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-40))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0.1, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0.15, -0.325, -0.25) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(35))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0.35, -1.5, 0) * CFrame.Angles(math.rad(7), math.rad(0), math.rad(-2))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(4), math.rad(0), math.rad(-90))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(-0.9, -0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-25))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(2.5), math.rad(5), math.rad(0))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Stand"}
, Reference = "Staggered"}
Animations.Equip = {Animation = function(fr)
  local keyframe = {}
  sresetWelds()
  keyframe[0] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, -0.1, 0.2) * CFrame.Angles(math.rad(6), math.rad(0), math.rad(0))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.new(0, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sGrip.C0 = GripUNC0
  end
  keyframe[1] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.new(0, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.55, -0.6, 0.1) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(87))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.55, -0.6, 0.1) * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(-93))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(-5), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(6), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sGrip.C0 = GripUNC0
  end
  keyframe[2] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0.025, 0.2) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.new(0, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(13), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.55, -0.65, 0.1) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(85))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-105), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.55, -0.65, 0.1) * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(-90))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(95), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(-6), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(7), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sGrip.C0 = GripUNC0
  end
  keyframe[3] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-2))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.new(0, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0.55, -0.6, 0.1) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(40))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-35), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(-0.25, -0.25, 0.1) * CFrame.Angles(math.rad(-10), math.rad(-30), math.rad(-40))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(-6), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(7), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sGrip.C0 = GripUNC0
  end
  keyframe[4] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-7))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.new(0, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(3), math.rad(-10))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(85), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-20), math.rad(10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-4), math.rad(-16), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(9), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sGrip.C0 = GripUNC0
  end
  keyframe[5] = function()
    sRootJoint.C0 = sRootJoint.C0 * CFrame.new(0, 0, 0.2) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-7))
    sRootJoint.C1 = sRootJoint.C1 * CFrame.new(0, 0, 0)
    sNeck.C0 = sNeck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0))
    sRightShoulder.C0 = sRightShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(3), math.rad(-10))
    sRightShoulder.C1 = sRightShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(85), math.rad(0))
    sLeftShoulder.C0 = sLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-20), math.rad(10))
    sLeftShoulder.C1 = sLeftShoulder.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sRightHip.C0 = sRightHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-4), math.rad(-16), math.rad(0))
    sRightHip.C1 = sRightHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sLeftHip.C0 = sLeftHip.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(-2), math.rad(9), math.rad(0))
    sLeftHip.C1 = sLeftHip.C1 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    sGrip.C0 = GripC0 * CFrame.new(0.15, 0, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-15), math.rad(-5), math.rad(5))
  end
  keyframe[fr]()
  return sRootJoint.C0, sNeck.C0, sRightShoulder.C0, sLeftShoulder.C0, sRightHip.C0, sLeftHip.C0, sGrip.C0, sRootJoint.C1, sNeck.C1, sRightShoulder.C1, sLeftShoulder.C1, sRightHip.C1, sLeftHip.C1
end, 
Cancels = {"Stand"}
, Reference = "Equip"}
coroutine.resume(coroutine.create(function()
  local sus = 0
  while true do
    fwait(0.15)
    if Ragemode --[[~=--]] == true and Corruption > 0 then
      Corruption = Corruption - 1
      sus = sus + 1
      if sus == 5 then
        sus = 0
        for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position, 17.5)) do
          applyDamage(v, 2, Vector3.new(), false, false, nil, 0, 0, "", 0, false, false, 0, true, "Pure", true, false)
        end
      end
    end
  end
end))
coroutine.resume(coroutine.create(function()
while true do
fwait()
if Ragemode == false then
if vPlayer.Character:FindFirstChild("Armor") then
	    vGui.MeterFrame.CorruptionBar.Fill.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeL.BrickColor = BrickColor.new("Royal purple")
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeR.BrickColor = BrickColor.new("Royal purple")
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeL.BillboardGui.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeR.BillboardGui.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
		local abcdd = vPlayer.Character.Head:FindFirstChild("SpotLight")
		if abcdd ~= nil then
		abcdd.Color = Color3.fromRGB(198, 26, 255)
		end
	for _, m in pairs (vPlayer.Character:FindFirstChild("Weapon"):GetChildren()) do
		if m:IsA("Part") and m.BrickColor == BrickColor.new("Really red") then
			m.BrickColor = BrickColor.new("Royal purple")
		end
	end
		for _, v in pairs (vPlayer.Character:FindFirstChild("Armor"):GetChildren()) do
			for _, b in pairs(v:GetChildren()) do
				if b:IsA("Part") and b.BrickColor == BrickColor.new("Really red") then
					b.BrickColor = BrickColor.new("Royal purple")
				end
			end
		end
end
elseif Ragemode == true then
	if vPlayer.Character:FindFirstChild("Armor") then
		vGui.MeterFrame.CorruptionBar.Fill.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeL.BrickColor = BrickColor.new("Really red")
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeR.BrickColor = BrickColor.new("Really red")
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeL.BillboardGui.ImageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0)
		vPlayer.Character:FindFirstChild("Armor").Cloak.EyeR.BillboardGui.ImageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0)
		local abcde = vPlayer.Character.Head:FindFirstChild("SpotLight")
		if abcde ~= nil then
		abcde.Color = Color3.fromRGB(255, 0, 0)
		end
		for _, t in pairs (vPlayer.Character:FindFirstChild("Weapon"):GetChildren()) do
		if t:IsA("Part") and t.BrickColor == BrickColor.new("Royal purple") then
			t.BrickColor = BrickColor.new("Really red")
		end
	end
		for _, v in pairs (vPlayer.Character:FindFirstChild("Armor"):GetChildren()) do
			for _, b in pairs(v:GetChildren()) do
				if b:IsA("Part") and b.BrickColor == BrickColor.new("Royal purple") then
					b.BrickColor = BrickColor.new("Really red")
				end
			end
		end
	end
end
end
end))
coroutine.resume(coroutine.create(function()
  getWelds(vPlayer.Character)
  lastframe = {Animations.Stand.Animation(0)}
end))
vGui = nil
sus = 0
while 1 do
  m.Text = sus
  if vGui == nil then
    vGui = script.WeaponGUI:clone()
    vGui.Parent = vPlayer.PlayerGui
  else
    if vGui.Parent ~= nil then
      vGui = script.WeaponGUI:clone()
      vGui.Parent = vPlayer.PlayerGui
    end
  end
  if vGui and vGui.Parent == vPlayer.PlayerGui then
    break
  end
  sus = sus + 1
  wait()
end
m.Text = "6"
wait(0.25)
m:Remove()
local el = 0
local reqel = 4
do
  local sors = 0
  while true do
if vPlayer.Character.Humanoid.Health <= 0 or vPlayer.Character == nil then
script:Destroy()
return
end
    local w_ = fwait(frame * 2)
    if PlayerIsAttacking == false and Equipping == false and Unequipping == false then
      vPlayer.Character.Humanoid.WalkSpeed = 16 * playerstats.Movement.Value
    end
    if Ragemode and MaxStun == 80 then
      RageDefBuff.Parent = playerstats.Decrease
      MaxStun = 125
    end
    if MaxStun == 125 then
      RageDmgBuff.Parent = nil
      RageDefBuff.Parent = nil
      RageMvmtBuff.Parent = nil
      MaxStun = 80
      if 80 <= playerstats.Stun.Value then
        playerstats.Stun.Value = 79
      end
    end
    if MaxStun <= playerstats.Stun.Value and Ult == false then
      GetStunnedIdiot()
    end
    if playerstats.Stagger.Value == true and Ult == false and Stunned == false then
      if Ragemode == false then
        GetStaggeredIdiot()
      else
        playerstats.Stagger.Value = false
      end
    end
    if el % 5 == 0 then
      local pos = vPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
      local foundstun = false
      local targ = false
      for _,v in pairs(GetNubsInRadius(pos, 6)) do
        if v:FindFirstChild("Stats") and v.Stats:FindFirstChild("Stunned") and v:FindFirstChild("Torso") and v.Stats.Stunned.Value == true then
          foundstun = true
          if (v.Torso.Position - (pos + MousePlane() * 3)).magnitude <= 4.5 then
            targ = true
          end
          break
        end
      end
          if foundstun == true then
            if targ == true then
              vGui.MoveFrame.TextButton5.BackgroundColor3 = BrickColor.new("Cyan").Color
              vGui.MoveFrame.TextButton5.TextColor3 = BrickColor.new("Institutional white").Color
            else
              vGui.MoveFrame.TextButton5.BackgroundColor3 = BrickColor.new("Bright red").Color
              vGui.MoveFrame.TextButton5.TextColor3 = BrickColor.new("Institutional white").Color
            end
          else
            vGui.MoveFrame.TextButton5.BackgroundColor3 = BrickColor.new("Dark stone grey").Color
            vGui.MoveFrame.TextButton5.TextColor3 = BrickColor.new("Dark stone grey").Color
          end
end
          local cng = playerstats.Decrease:children()
          local dmg = playerstats.Damage
          local val = 0
          for _,v in pairs(cng) do
            if v.className == "NumberValue" and v.Name == "DecreaseAtk" then
              if Ragemode == false then
                val = val - v.Value
              else
                if v.Value < 0 then
                  val = val - v.Value
                end
              end
            end
          end
          if val < -0.99 then
            val = -0.99
          end
          dmg.Value = 1 + val
          val = 0
          dmg = playerstats.Defense
          for _,v in pairs(cng) do
            if v.className == "NumberValue" and v.Name == "DecreaseDef" then
              if Ragemode == false then
                val = val - v.Value
              else
                if v.Value < 0 then
                  val = val - v.Value
                end
              end
            end
          end
          if val < -0.99 then
            val = -0.99
          end
          dmg.Value = 1 + val
          val = 0
          dmg = playerstats.Movement
          for _,v in pairs(cng) do
            if v.className == "NumberValue" and v.Name == "DecreaseMvmt" then
              if Ragemode == false then
                val = val - v.Value
              else
                if v.Value < 0 then
                  val = val - v.Value
                end
              end
            end
          end
          if val < -1 then
            val = -1
          end
          dmg.Value = 1 + val
          vGui.MeterFrame.ManaLabel.Text = "Mana (" .. Mana.Value .. ")"
          vGui.MeterFrame.CorruptionLabel.Text = "Corruption (" .. Corruption .. ")"
          vGui.MeterFrame.ManaBar.Fill.Size = UDim2.new(1, 0, Mana.Value / 150, 0)
          vGui.MeterFrame.ManaBar.Fill.Position = UDim2.new(0, 0, 1 - Mana.Value / 150, 0)
          vGui.MeterFrame.CorruptionBar.Fill.Size = UDim2.new(1, 0, Corruption / 100, 0)
          vGui.MeterFrame.CorruptionBar.Fill.Position = UDim2.new(0, 0, 1 - Corruption / 100, 0)
          vGui.StunFrame.Fill.Size = UDim2.new(0.4, 0, -playerstats.Stun.Value / MaxStun * 4, 0)
          vGui.StunFrame.Fill.Position = UDim2.new(0.2, 0, 0, 0)
          vGui.StunFrame.StunLabel.Text = "Stun (" .. math.floor(playerstats.Stun.Value / MaxStun * 100) .. "%)"
          if playerstats.Stun.Value / MaxStun <= 0.33 then
            vGui.StunFrame.Fill.BackgroundColor3 = BrickColor.new("Bright yellow").Color
          else
            if 0.33 < playerstats.Stun.Value / MaxStun and playerstats.Stun.Value / MaxStun <= 0.66 then
              vGui.StunFrame.Fill.BackgroundColor3 = BrickColor.new("Bright orange").Color
            else
              vGui.StunFrame.Fill.BackgroundColor3 = BrickColor.new("Bright red").Color
            end
          end
          if Ragemode == true and Corruption <= 15 then
            vGui.MeterFrame.CorruptionBar.BackgroundColor3 = Color3.new(0.5 - Corruption / 30, 0.1, 0.1)
            vGui.MeterFrame.CorruptionLabel.TextColor3 = Color3.new(1, Corruption / 15, Corruption / 15)
            vGui.Overlay.BackgroundTransparency = 0.75 + Corruption / 30
          else
            vGui.MeterFrame.CorruptionBar.BackgroundColor3 = Color3.new(0, 0, 0)
            vGui.MeterFrame.CorruptionLabel.TextColor3 = Color3.new(1, 1, 1)
            vGui.Overlay.BackgroundTransparency = 1
          end
          el = el + 1
          if el == reqel then
            el = 0
            GetNubs()
            sors = sors + 1
            if Mana.Value < 150 and Ult == false then
              Mana.Value = Mana.Value + 1
            end
            if sors == 3 then
              sors = 0
              if Corruption <= 99 and Ragemode == false and Ult == false then
                Corruption = Corruption + 1
              end
              if 0 < playerstats.Stun.Value then
                playerstats.Stun.Value = playerstats.Stun.Value - 1
              end
            end
          end
          vGui.StatsFrame.Damage.Text = "Damage\n(" .. tostring(playerstats.Damage.Value * 100) .. "%)"
          vGui.StatsFrame.Defense.Text = "Defence\n(" .. tostring(playerstats.Defense.Value * 100) .. "%)"
          vGui.StatsFrame.Walkspeed.Text = "Movement\n(" .. tostring(playerstats.Movement.Value * 100) .. "%)"
      vGui.StatsFrame.Health.Fill.BackgroundColor3 = Color3.new(vPlayer.Character.Humanoid.Health / vPlayer.Character.Humanoid.MaxHealth, 0, 0)
      vGui.StatsFrame.Health.Fill:TweenSize((UDim2.new(vPlayer.Character.Humanoid.Health / vPlayer.Character.Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
      vGui.StatsFrame.Health.TextBox.Text = "(" .. math.floor(vPlayer.Character.Humanoid.Health) .. ")"
          for _,v in pairs(Cooldowns) do
            local sus = vGui.MoveFrame["TextButton" .. _]
            if w_ < v then
              Cooldowns[_] = Cooldowns[_] - w_
              if tonumber(_) < 5 then
                sus.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
              end
            else
              if tonumber(_) < 5 then
                if 0 < Cooldowns[_] then
                  sus.BackgroundColor3 = Color3.new(0.6, 0.6, 1)
                else
                  sus.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
                end
              end
              Cooldowns[_] = 0
            end
            sus.TextLabel.Size = UDim2.new(v / CooldownsB[_], 0, 1, 0)
          end
          -- DECOMPILER ERROR at PC2309: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC2309: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC2309: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC2309: LeaveBlock: unexpected jumping out IF_STMT

        end
  if vGui.Parent == nil then
  end
end

