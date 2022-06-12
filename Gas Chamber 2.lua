--Made by OpTic Wisdom/LikeATrollFace

hitler = game.Players.LocalPlayer

hitler.Character.Name = "Adolf Hitler"

if hitler.Character:FindFirstChild("Shirt") then hitler.Character.Shirt:Destroy()
end
if hitler.Character:FindFirstChild("Pants") then hitler.Character.Pants:Destroy()
end
if hitler.Character:FindFirstChild("Shirt Graphic") then hitler.Character["Shirt Graphic"]:Destroy()
end

if not hitler.Character:FindFirstChild("Shirt") then
 NewShirt = Instance.new("Shirt", hitler.Character)
 NewShirt.Name = "Shirt"
end


if not hitler.Character:FindFirstChild("Pants") then
 NewPants = Instance.new("Pants", hitler.Character)
 NewPants.Name = "Pants"
end


for _, v in pairs(hitler.Character:GetChildren()) do
if v:IsA("Hat") then
v:Destroy()
end
end

for _, v in pairs(hitler.Character:GetChildren()) do
if v:IsA("CharacterMesh") then
v:Destroy()
end
end

game:GetObjects("rbxassetid://504338270")[1].Parent=game.Players.LocalPlayer.Character
wait(0.1)
hitler.Character.MilitaryOfficer.Par1.Transparency = 0
hitler.Character.MilitaryOfficer.Par2.Transparency = 0
hitler.Character.MilitaryOfficer.Par3.Transparency = 0
hitler.Character["Shirt"].ShirtTemplate = "http://www.roblox.com/asset/?id=148902702"
hitler.Character["Pants"].PantsTemplate = "http://www.roblox.com/asset/?id=148901946"
hitler.Character.Head.BrickColor = BrickColor.new(1)
hitler.Character.Torso.BrickColor = BrickColor.new(1)
hitler.Character["Left Arm"].BrickColor = BrickColor.new(1)
hitler.Character["Right Arm"].BrickColor = BrickColor.new(1)
hitler.Character["Left Leg"].BrickColor = BrickColor.new(1)
hitler.Character["Right Leg"].BrickColor = BrickColor.new(1)

Create = function(itemClass,tabl)
local item = Instance.new(itemClass)
for i,v in pairs(tabl) do
local a,b = ypcall(function() return item[i] end)
if a then
item[i] = tabl[i]
end
end
return item
end
function runDummyScript(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Create("Model",{
["Name"] = "Chamber",
["Parent"] = mas,
})
o2 = Create("Part",{
["Name"] = "Head",
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(0, 10.5, -46),
["Rotation"] = Vector3.new(3.80734537e-019, 1.42910524e-020, 3.5934405e-018),
["RotVelocity"] = Vector3.new(-7.85145039e-020, 2.39446169e-023, 1.13729476e-019),
["Velocity"] = Vector3.new(8.18726775e-019, -0.0135432296, 1.15292031e-018),
["CFrame"] = CFrame.new(0, 10.5, -46, 1, -6.27173704e-020, 2.49425903e-022, 6.27173704e-020, 1, -6.64507104e-021, -2.49425903e-022, 6.64507104e-021, 1),
["Size"] = Vector3.new(8, 19, 8),
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o3 = Create("SpecialMesh",{
["Parent"] = o2,
["Scale"] = Vector3.new(1.25, 1.25, 1.25),
})
o4 = Create("Part",{
["Name"] = "GasPoint",
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-21.5, 2.90841889, -52.5),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-21.5, 2.90841889, -52.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o5 = Create("SpecialMesh",{
["Parent"] = o4,
})
o6 = Create("Smoke",{
["Parent"] = o4,
["Size"] = 10,
["Opacity"] = 1,
["RiseVelocity"] = 2,
})
o7 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-6, 13.1084118, -38),
["Anchored"] = true,
["CFrame"] = CFrame.new(-6, 13.1084118, -38, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 24, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o8 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-7, 13.1084118, -67),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7, 13.1084118, -67, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 24, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o9 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-7, 13.1084118, -65),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7, 13.1084118, -65, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(4, 19.2000008, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o10 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-9.5, 1.60841703, -27.5999985),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-9.5, 1.60841703, -27.5999985, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["Size"] = Vector3.new(1, 16.8000011, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o11 = Create("SpecialMesh",{
["Parent"] = o10,
})
o12 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-18.9000111, 1.70842004, -18.5),
["Rotation"] = Vector3.new(-8.53773656e-007, -1.02835693e-005, 7.66185618e-014),
["Anchored"] = true,
["CFrame"] = CFrame.new(-18.9000111, 1.70842004, -18.5, 1, -1.33724617e-015, -1.79482143e-007, -1.33724617e-015, 1, 1.49011612e-008, -1.79482143e-007, 1.49011612e-008, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o13 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-23.5999489, 11.2084379, -27.900032),
["Rotation"] = Vector3.new(-90.0000305, 0.000382487662, 89.9996796),
["Anchored"] = true,
["CFrame"] = CFrame.new(-23.5999489, 11.2084379, -27.900032, 5.56394662e-006, -1, 6.67566883e-006, -4.61935997e-007, 6.67566565e-006, 1, -1, -5.5639498e-006, -4.6189885e-007),
["Size"] = Vector3.new(1, 8.40000057, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o14 = Create("SpecialMesh",{
["Parent"] = o13,
})
o15 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-28.299757, 28.1084671, -43.3000679),
["Rotation"] = Vector3.new(-2.64669852e-005, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.299757, 28.1084671, -43.3000679, -5.56394662e-006, 6.66124015e-006, -1, 4.61936025e-007, 1, 6.69009432e-006, 1, -4.61898907e-007, -5.5639498e-006),
["Size"] = Vector3.new(1, 1.20000005, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o16 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-2.5999949, 1.60841703, -58.9000015),
["Rotation"] = Vector3.new(-180, 0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.5999949, 1.60841703, -58.9000015, 0, 1, 0, 1, 0, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 4.80000019, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o17 = Create("SpecialMesh",{
["Parent"] = o16,
})
o18 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-28.2999496, 11.3084698, -27.9000587),
["Rotation"] = Vector3.new(-2.64669834e-005, -0.00031879067, -0.000382487633),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.2999496, 11.3084698, -27.9000587, 1, 6.67566837e-006, -5.56394662e-006, -6.6756661e-006, 1, 4.61935997e-007, 5.5639498e-006, -4.6189885e-007, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o19 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.1999998, 1.60841703, -18.5),
["Rotation"] = Vector3.new(-0, 0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.1999998, 1.60841703, -18.5, 0, -1, 0, 1, 0, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 8.40000057, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o20 = Create("SpecialMesh",{
["Parent"] = o19,
})
o21 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-18.8999825, 11.2084122, -23.2000046),
["Rotation"] = Vector3.new(89.9999771, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-18.8999825, 11.2084122, -23.2000046, -6.35744541e-008, -5.56394662e-006, 1, 1, 4.61935997e-007, -6.35795985e-008, -4.61936338e-007, 1, 5.56394662e-006),
["Size"] = Vector3.new(1, 8.40000057, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o22 = Create("SpecialMesh",{
["Parent"] = o21,
})
o23 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-18.9000092, 6.50840998, -18.5000038),
["Rotation"] = Vector3.new(179.999985, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-18.9000092, 6.50840998, -18.5000038, 5.56394662e-006, -3.85527894e-012, -1, -4.61935997e-007, -1, 1.28509193e-012, -1, 4.61935997e-007, -5.56394662e-006),
["Size"] = Vector3.new(1, 8.40000057, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o24 = Create("SpecialMesh",{
["Parent"] = o23,
})
o25 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-37, 14.3084078, -67),
["Anchored"] = true,
["CFrame"] = CFrame.new(-37, 14.3084078, -67, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(4, 21.6000004, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o26 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-28.2998428, 28.1084671, -27.9000664),
["Rotation"] = Vector3.new(-2.64669852e-005, -0.00031879067, -0.000381660939),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.2998428, 28.1084671, -27.9000664, 1, 6.66124015e-006, -5.56394662e-006, -6.69009432e-006, 1, 4.61936025e-007, 5.5639498e-006, -4.61898907e-007, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o27 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-37, 2.30842209, -54),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-37, 2.30842209, -54, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(28, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o28 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-7, 2.30842209, -53),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7, 2.30842209, -53, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(26, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o29 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-22, 2.30842209, -66),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 2.30842209, -66, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(26, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o30 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-22, 2.30842209, -38),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 2.30842209, -38, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(30, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o31 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 0.40000000596046,
["Position"] = Vector3.new(-37, 13.1084118, -52),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-37, 13.1084118, -52, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(24, 19.2000008, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o32 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 0.40000000596046,
["Position"] = Vector3.new(-22, 13.1084118, -66),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 13.1084118, -66, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(26, 19.2000008, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o33 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-22, 23.9084167, -38),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 23.9084167, -38, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(30, 2.4000001, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o34 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-37, 13.1084118, -65),
["Anchored"] = true,
["CFrame"] = CFrame.new(-37, 13.1084118, -65, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(4, 19.2000008, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o35 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-36, 13.1084118, -38),
["Anchored"] = true,
["CFrame"] = CFrame.new(-36, 13.1084118, -38, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 19.2000008, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o36 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-8, 13.1084118, -38),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8, 13.1084118, -38, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 19.2000008, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o37 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-22, 23.9084167, -66),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 23.9084167, -66, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(26, 2.4000001, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o38 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-37, 23.9084167, -53),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-37, 23.9084167, -53, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(26, 2.4000001, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o39 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-7, 23.9084167, -53),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7, 23.9084167, -53, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(26, 2.4000001, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o40 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 0.40000000596046,
["Position"] = Vector3.new(-22, 13.1084118, -38),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 13.1084118, -38, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(26, 19.2000008, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o41 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 0.40000000596046,
["Position"] = Vector3.new(-7, 13.1084118, -52),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7, 13.1084118, -52, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(24, 19.2000008, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o42 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-22, 26.3084221, -52),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 26.3084221, -52, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(34, 2.4000001, 32),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o43 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-18.9000111, 11.3084183, -18.5),
["Rotation"] = Vector3.new(-8.53773656e-007, -1.02835693e-005, 7.66185618e-014),
["Anchored"] = true,
["CFrame"] = CFrame.new(-18.9000111, 11.3084183, -18.5, 1, -1.33724617e-015, -1.79482143e-007, -1.33724617e-015, 1, 1.49011612e-008, -1.79482143e-007, 1.49011612e-008, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o44 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(0.5, 1.60841703, -54.2000008),
["Rotation"] = Vector3.new(-90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.5, 1.60841703, -54.2000008, 1, 0, 0, 0, 0, 1, 0, -1, 0),
["Size"] = Vector3.new(1, 8.40000057, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o45 = Create("SpecialMesh",{
["Parent"] = o44,
})
o46 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Foil,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-28.2998962, 19.7084656, -27.9000626),
["Rotation"] = Vector3.new(-2.64669834e-005, -0.00031879067, -0.000382487226),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.2998962, 19.7084656, -27.9000626, 1, 6.67566155e-006, -5.56394662e-006, -6.67567292e-006, 1, 4.61935997e-007, 5.5639498e-006, -4.6189885e-007, 1),
["Size"] = Vector3.new(1, 15.6000004, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o47 = Create("SpecialMesh",{
["Parent"] = o46,
})
o48 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-28.2998047, 28.0084724, -35.6000671),
["Rotation"] = Vector3.new(89.9999771, -0.000381660939, -179.99968),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.2998047, 28.0084724, -35.6000671, -1, 5.56394662e-006, -6.66124015e-006, 6.69009432e-006, -4.61936025e-007, -1, -5.5639498e-006, -1, 4.61898907e-007),
["Size"] = Vector3.new(1, 14.4000006, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o49 = Create("SpecialMesh",{
["Parent"] = o48,
})
o50 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(0.5, 1.70842004, -58.9000015),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.5, 1.70842004, -58.9000015, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(1, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o51 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-18.8999557, 11.3084078, -27.9000053),
["Rotation"] = Vector3.new(-2.64669834e-005, -0.00031879067, 2.54989536e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(-18.8999557, 11.3084078, -27.9000053, 1, -4.45040683e-007, -5.56394662e-006, -4.45045828e-007, 1, 4.61935997e-007, 5.56394662e-006, -4.6193847e-007, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o52 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-9.5, 1.70842099, -18.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(-9.5, 1.70842099, -18.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o53 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-38, 13.1084118, -38),
["Anchored"] = true,
["CFrame"] = CFrame.new(-38, 13.1084118, -38, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 24, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o54 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-21.5, 1.70842099, -52.5),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-21.5, 1.70842099, -52.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o55 = Create("Part",{
["Name"] = "Botoom",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-22, 0.608416975, -52),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22, 0.608416975, -52, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(34, 1, 32),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end


wait(0.2)

game.Workspace.Chamber.Head.Anchored = true
game.Workspace.Chamber.Head.CanCollide = false
game.Workspace.Chamber:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + game.Players.LocalPlayer.Character.Torso.CFrame.lookVector* 30)

Gas = Instance.new("Sound")
Gas.Parent = game.Workspace
Gas.Volume = 0.8
Gas.SoundId = "http://www.roblox.com/asset/?id=137065982"
Gas.Pitch = 1
Gas.Name = "Sound"

local ChatService = game:GetService("Chat")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local To = game.Workspace.Chamber.GasPoint

local ShirtID = 234346150
local PantsID = 234346173

local function GetShirt(Character)
	for _, Obj in pairs(Character:GetChildren()) do
		if Obj:IsA("Shirt") then
			return Obj
		end
	end
end

local function GetPants(Character)
	for _, Obj in pairs(Character:GetChildren()) do
		if Obj:IsA("Pants") then
			return Obj
		end
	end
end

Humanoids={}

for _, Player in pairs(Players:GetPlayers()) do
	if Player.Character and Player ~= LocalPlayer then
		-- local Shirt = GetShirt(Player)
		-- local Pants = GetPants(Player)
		
		-- if Shirt then Shirt:Destroy() end
		-- if Pants then Pants:Destroy() end
		
		for _, v in pairs(Player.Character:GetChildren()) do --removes clothing
			if v:IsA("Clothing") then v:Destroy() end
		end
		
		local NShirt = Instance.new("Shirt", Player.Character)
		local NPants = Instance.new("Pants", Player.Character)
		
		NShirt.ShirtTemplate = "rbxassetid://"..ShirtID
		NPants.PantsTemplate = "rbxassetid://"..PantsID
		if Player.Character:FindFirstChild("HumanoidRootPart") then
			Player.Character.HumanoidRootPart.CFrame = To.CFrame
			Gas:Play()
 
			ChatService:Chat(Player.Character.Head, "SIEG HEIL", "Red")
			table.insert(Humanoids,Player.Character.Humanoid)
			-- wait(9)
			-- Player.Character.Humanoid:Destroy()
		end
	end
end
wait(9)
for _, Humanoid in pairs(Humanoids) do
	Humanoid:Destroy()
end

local animation = Instance.new("Animation")
animation.AnimationId = "http://www.roblox.com/Asset?ID=466780804"
local animTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
animTrack:Play()

wait(4)

Gas:Pause()
Gas:Destroy()
wait(2)
game.Workspace.Chamber:Destroy()