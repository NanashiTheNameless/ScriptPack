--Made by trevorandshaesn1

local s = Instance.new("Sound")

s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=290015580" -- Type your music ID here
s.Volume = 100000000 -- this is the Volume
s.Pitch = 1 -- tis is the pich
s.Looped = true
s.archivable = false

s.Parent = game.Workspace

wait(0)

s:play()

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
["Parent"] = mas,
})
o2 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.6000366, 1.6000309, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.6000366, 1.6000309, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(50, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o3 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light blue"),
["Position"] = Vector3.new(-44.1000366, 8.80002022, -90.2000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 8.80002022, -90.2000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(18, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.823529, 0.894118),
})
o4 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 8.80002022, -80.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 8.80002022, -80.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o5 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel light blue"),
["Reflectance"] = 0.30000001192093,
["Transparency"] = 0.5,
["Position"] = Vector3.new(-44.1000366, 8.80002022, -64.7000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 8.80002022, -64.7000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(31, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.866667, 1),
})
o6 = Create("Part",{
["Name"] = "YellowDoor",
["Parent"] = o1,
["Position"] = Vector3.new(-11.600028, 3.40002441, -98.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-11.600028, 3.40002441, -98.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(4, 6, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o7 = Create("Decal",{
["Parent"] = o6,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
["Face"] = Enum.NormalId.Back,
})
o8 = Create("Decal",{
["Parent"] = o6,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
})
o9 = Create("Model",{
["Name"] = "Toilet",
["Parent"] = o1,
})
o10 = Create("Part",{
["Parent"] = o9,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(21.899971, 3.40002441, -89.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(21.899971, 3.40002441, -89.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 3.60000014, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o11 = Create("Part",{
["Parent"] = o9,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(20.399971, 2.00003052, -90.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.399971, 2.00003052, -90.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o12 = Create("Part",{
["Parent"] = o9,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(18.899971, 2.00003052, -89.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(18.899971, 2.00003052, -89.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o13 = Create("Part",{
["Parent"] = o9,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(20.399971, 1.00003052, -89.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.399971, 1.00003052, -89.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o14 = Create("Part",{
["Parent"] = o9,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(20.399971, 2.00003052, -87.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.399971, 2.00003052, -87.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o15 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-11.600028, 7.00002098, -98.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-11.600028, 7.00002098, -98.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o16 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light blue"),
["Position"] = Vector3.new(8.89997196, 8.80002022, -99.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.89997196, 8.80002022, -99.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(29, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.823529, 0.894118),
})
o17 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-23.100029, 7.60001373, -98.2000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-23.100029, 7.60001373, -98.2000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o18 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light blue"),
["Position"] = Vector3.new(-9.10002804, 7.00002098, -99.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-9.10002804, 7.00002098, -99.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.823529, 0.894118),
})
o19 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light blue"),
["Position"] = Vector3.new(-27.100029, 8.80002022, -99.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-27.100029, 8.80002022, -99.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(35, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.823529, 0.894118),
})
o20 = Create("Part",{
["Name"] = "RedDoor",
["Parent"] = o1,
["Position"] = Vector3.new(-23.100029, 3.40002441, -95.2000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-23.100029, 3.40002441, -95.2000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(4, 6, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o21 = Create("Decal",{
["Parent"] = o20,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
["Face"] = Enum.NormalId.Back,
})
o22 = Create("Decal",{
["Parent"] = o20,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
})
o23 = Create("StringValue",{
["Name"] = "Description",
["Parent"] = o20,
["Value"] = "Manager's Office. Red Key Needed.",
})
o24 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light blue"),
["Position"] = Vector3.new(-7.60002804, 11.2000217, -99.7000122),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7.60002804, 11.2000217, -99.7000122, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(4, 7.20000029, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.823529, 0.894118),
})
o25 = Create("Part",{
["Name"] = "RedDoor",
["Parent"] = o1,
["Position"] = Vector3.new(-27.600029, 3.40002441, -80.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-27.600029, 3.40002441, -80.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(4, 6, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o26 = Create("Decal",{
["Parent"] = o25,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
})
o27 = Create("StringValue",{
["Name"] = "Description",
["Parent"] = o25,
["Value"] = "Manager's Office!",
})
o28 = Create("Decal",{
["Parent"] = o25,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
["Face"] = Enum.NormalId.Back,
})
o29 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-10.600028, 2.20003128, -79.2000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 2.20003128, -79.2000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 0.400000006, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o30 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-10.600028, 2.20003128, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 2.20003128, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(6, 3.60000014, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o31 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-10.600028, 0.600030899, -77.2000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 0.600030899, -77.2000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(6, 0.400000006, 6),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o32 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-10.600028, 4.60002136, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 4.60002136, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(6, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o33 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-10.600028, 1.00003052, -77.2000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 1.00003052, -77.2000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 0.400000006, 6),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o34 = Create("Model",{
["Name"] = "KKRoof",
["Parent"] = o1,
})
o35 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 33.0000305, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 33.0000305, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(22, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o36 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 35.4000473, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 35.4000473, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(16, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o37 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 37.8000488, -74.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 37.8000488, -74.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 18),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o38 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 30.6000385, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 30.6000385, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(28, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o39 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 35.4000473, -84.2000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 35.4000473, -84.2000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o40 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 35.4000473, -64.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 35.4000473, -64.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o41 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 28.2000313, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 28.2000313, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(34, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o42 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 33.0000305, -61.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 33.0000305, -61.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o43 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 33.0000305, -87.2000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 33.0000305, -87.2000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o44 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 30.6000385, -58.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 30.6000385, -58.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o45 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 25.8000317, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 25.8000317, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(38, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o46 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 30.6000385, -90.2000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 30.6000385, -90.2000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o47 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 35.4000473, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 35.4000473, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(16, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o48 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 33.0000305, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 33.0000305, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(22, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o49 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 28.2000313, -55.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 28.2000313, -55.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o50 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 28.2000313, -92.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 28.2000313, -92.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o51 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 23.4000282, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 23.4000282, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(42, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o52 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 30.6000385, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 30.6000385, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(28, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o53 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 25.8000317, -53.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 25.8000317, -53.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o54 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 25.8000317, -94.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 25.8000317, -94.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o55 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 28.2000313, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 28.2000313, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(34, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o56 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 21.0000286, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 21.0000286, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(46, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o57 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 23.4000282, -51.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 23.4000282, -51.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o58 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 23.4000282, -96.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 23.4000282, -96.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o59 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 25.8000317, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 25.8000317, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(38, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o60 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 21.0000286, -50.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 21.0000286, -50.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o61 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 21.0000286, -98.2000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 21.0000286, -98.2000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o62 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 23.4000282, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 23.4000282, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(42, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o63 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 18.6000271, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 18.6000271, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(48, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o64 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 21.0000286, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 21.0000286, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(46, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o65 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 18.6000271, -49.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 18.6000271, -49.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o66 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 18.6000271, -99.2000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 18.6000271, -99.2000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o67 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 18.6000271, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 18.6000271, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(48, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o68 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 16.2000256, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 16.2000256, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(50, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o69 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 16.2000256, -48.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 16.2000256, -48.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o70 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 16.2000256, -100.200012),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 16.2000256, -100.200012, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(70, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o71 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 16.2000256, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 16.2000256, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(50, 2.4000001, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o72 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 15.6000156, -89.7000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 15.6000156, -89.7000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(19, 1.20000005, 66),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o73 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-34.600029, 26.4000282, -67.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-34.600029, 26.4000282, -67.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 20.4000015, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o74 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-14.100028, 9.60001373, -77.9999924),
["Rotation"] = Vector3.new(-90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.100028, 9.60001373, -77.9999924, -1, 0, 0, -0, 0, 1, -0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o75 = Create("Decal",{
["Parent"] = o74,
["Texture"] = "http://www.roblox.com/asset/?id=15147955",
["Face"] = Enum.NormalId.Top,
})
o76 = Create("Part",{
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Transparency"] = 1,
["Position"] = Vector3.new(-14.100028, 23.6000271, -77.9999924),
["Rotation"] = Vector3.new(-90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.100028, 23.6000271, -77.9999924, -1, 0, 0, -0, 0, 1, -0, 1, 0),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 26),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o77 = Create("Decal",{
["Parent"] = o76,
["Texture"] = "http://www.roblox.com/asset/?id=15148007",
["Face"] = Enum.NormalId.Top,
})
o78 = Create("Decal",{
["Parent"] = o76,
["Texture"] = "http://www.roblox.com/asset/?id=15148007",
["Face"] = Enum.NormalId.Bottom,
})
o79 = Create("Part",{
["Name"] = "Barrel",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-6.60002804, 19.8000259, -90.2000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-6.60002804, 19.8000259, -90.2000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o80 = Create("Weld",{
["Parent"] = o79,
})
o81 = Create("Weld",{
["Parent"] = o79,
})
o82 = Create("CylinderMesh",{
["Parent"] = o79,
["Offset"] = Vector3.new(0, 0.100000001, 0),
})
o83 = Create("Decal",{
["Parent"] = o79,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Right,
})
o84 = Create("Decal",{
["Parent"] = o79,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
})
o85 = Create("Decal",{
["Parent"] = o79,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Left,
})
o86 = Create("Decal",{
["Parent"] = o79,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Back,
})
o87 = Create("Decal",{
["Parent"] = o79,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Top,
})
o88 = Create("Decal",{
["Parent"] = o79,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Bottom,
})
o89 = Create("Part",{
["Name"] = "Barrel",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(7.39997196, 17.4000244, -91.2000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.39997196, 17.4000244, -91.2000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o90 = Create("Weld",{
["Parent"] = o89,
})
o91 = Create("Weld",{
["Parent"] = o89,
})
o92 = Create("CylinderMesh",{
["Parent"] = o89,
["Offset"] = Vector3.new(0, 0.100000001, 0),
})
o93 = Create("Decal",{
["Parent"] = o89,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Right,
})
o94 = Create("Decal",{
["Parent"] = o89,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
})
o95 = Create("Decal",{
["Parent"] = o89,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Left,
})
o96 = Create("Decal",{
["Parent"] = o89,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Back,
})
o97 = Create("Decal",{
["Parent"] = o89,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Top,
})
o98 = Create("Decal",{
["Parent"] = o89,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Bottom,
})
o99 = Create("Part",{
["Name"] = "Barrel",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-5.60002804, 17.4000244, -90.2000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.60002804, 17.4000244, -90.2000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o100 = Create("Weld",{
["Parent"] = o99,
})
o101 = Create("Weld",{
["Parent"] = o99,
})
o102 = Create("CylinderMesh",{
["Parent"] = o99,
["Offset"] = Vector3.new(0, 0.100000001, 0),
})
o103 = Create("Decal",{
["Parent"] = o99,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Right,
})
o104 = Create("Decal",{
["Parent"] = o99,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
})
o105 = Create("Decal",{
["Parent"] = o99,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Left,
})
o106 = Create("Decal",{
["Parent"] = o99,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Back,
})
o107 = Create("Decal",{
["Parent"] = o99,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Top,
})
o108 = Create("Decal",{
["Parent"] = o99,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Bottom,
})
o109 = Create("Part",{
["Name"] = "Barrel",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-7.60002804, 17.4000244, -91.2000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7.60002804, 17.4000244, -91.2000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o110 = Create("Weld",{
["Parent"] = o109,
})
o111 = Create("Weld",{
["Parent"] = o109,
})
o112 = Create("CylinderMesh",{
["Parent"] = o109,
["Offset"] = Vector3.new(0, 0.100000001, 0),
})
o113 = Create("Decal",{
["Parent"] = o109,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Right,
})
o114 = Create("Decal",{
["Parent"] = o109,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
})
o115 = Create("Decal",{
["Parent"] = o109,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Left,
})
o116 = Create("Decal",{
["Parent"] = o109,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Back,
})
o117 = Create("Decal",{
["Parent"] = o109,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Top,
})
o118 = Create("Decal",{
["Parent"] = o109,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Bottom,
})
o119 = Create("Part",{
["Name"] = "Barrel",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-7.60002804, 17.4000244, -89.2000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7.60002804, 17.4000244, -89.2000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o120 = Create("Weld",{
["Parent"] = o119,
})
o121 = Create("Weld",{
["Parent"] = o119,
})
o122 = Create("CylinderMesh",{
["Parent"] = o119,
["Offset"] = Vector3.new(0, 0.100000001, 0),
})
o123 = Create("Decal",{
["Parent"] = o119,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Right,
})
o124 = Create("Decal",{
["Parent"] = o119,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
})
o125 = Create("Decal",{
["Parent"] = o119,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Left,
})
o126 = Create("Decal",{
["Parent"] = o119,
["Texture"] = "http://www.roblox.com/asset/?id=6930008",
["Face"] = Enum.NormalId.Back,
})
o127 = Create("Decal",{
["Parent"] = o119,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Top,
})
o128 = Create("Decal",{
["Parent"] = o119,
["Texture"] = "http://www.roblox.com/asset/?id=2929289",
["Face"] = Enum.NormalId.Bottom,
})
o129 = Create("Part",{
["Name"] = "Crate",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(-26.600029, 19.2000237, -90.7000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["CFrame"] = CFrame.new(-26.600029, 19.2000237, -90.7000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(7, 6, 6),
["BackSurface"] = Enum.SurfaceType.Weld,
["BottomSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o130 = Create("Decal",{
["Parent"] = o129,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Right,
})
o131 = Create("Decal",{
["Parent"] = o129,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Top,
})
o132 = Create("Decal",{
["Parent"] = o129,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
})
o133 = Create("Decal",{
["Parent"] = o129,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Left,
})
o134 = Create("Decal",{
["Parent"] = o129,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Back,
})
o135 = Create("Model",{
["Name"] = "Bags",
["Parent"] = o34,
})
o136 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-37.4000244, 17.1950264, -94.2000122),
["Rotation"] = Vector3.new(90, 0, 90),
["CFrame"] = CFrame.new(-37.4000244, 17.1950264, -94.2000122, 0, -1, 0, 0, 0, -1, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 2.4000001, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o137 = Create("SpecialMesh",{
["Parent"] = o136,
})
o138 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-39.9000244, 17.194025, -94.2000122),
["Rotation"] = Vector3.new(90, 0, 90),
["CFrame"] = CFrame.new(-39.9000244, 17.194025, -94.2000122, 0, -1, 0, 0, 0, -1, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 2.4000001, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o139 = Create("SpecialMesh",{
["Parent"] = o138,
})
o140 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-42.4000397, 17.194025, -94.2000122),
["Rotation"] = Vector3.new(90, 0, 90),
["CFrame"] = CFrame.new(-42.4000397, 17.194025, -94.2000122, 0, -1, 0, 0, 0, -1, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 2.4000001, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o141 = Create("SpecialMesh",{
["Parent"] = o140,
})
o142 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-40.5000305, 19.194025, -94.2000122),
["Rotation"] = Vector3.new(90, 0, 90),
["CFrame"] = CFrame.new(-40.5000305, 19.194025, -94.2000122, 0, -1, 0, 0, 0, -1, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 3.60000014, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o143 = Create("SpecialMesh",{
["Parent"] = o142,
})
o144 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-36.600029, 19.1950264, -94.2000122),
["Rotation"] = Vector3.new(90, 0, 90),
["CFrame"] = CFrame.new(-36.600029, 19.1950264, -94.2000122, 0, -1, 0, 0, 0, -1, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 4, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o145 = Create("SpecialMesh",{
["Parent"] = o144,
})
o146 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-35.0000229, 17.1950264, -94.2000122),
["Rotation"] = Vector3.new(90, 0, 90),
["CFrame"] = CFrame.new(-35.0000229, 17.1950264, -94.2000122, 0, -1, 0, 0, 0, -1, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 2.4000001, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o147 = Create("SpecialMesh",{
["Parent"] = o146,
})
o148 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-33.400032, 17.1950264, -96.3999939),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(-33.400032, 17.1950264, -96.3999939, 0, 0, 1, 1, 0, 0, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 2.4000001, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o149 = Create("SpecialMesh",{
["Parent"] = o148,
})
o150 = Create("Part",{
["Parent"] = o135,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-33.400032, 19.1950264, -95.3999939),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(-33.400032, 19.1950264, -95.3999939, 0, 0, 1, 1, 0, 0, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 2.4000001, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o151 = Create("SpecialMesh",{
["Parent"] = o150,
})
o152 = Create("Part",{
["Name"] = "Crate",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(-21.100029, 18.0000229, -87.7000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["CFrame"] = CFrame.new(-21.100029, 18.0000229, -87.7000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(5, 3.60000014, 5),
["BackSurface"] = Enum.SurfaceType.Weld,
["BottomSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o153 = Create("Decal",{
["Parent"] = o152,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Right,
})
o154 = Create("Decal",{
["Parent"] = o152,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Top,
})
o155 = Create("Decal",{
["Parent"] = o152,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
})
o156 = Create("Decal",{
["Parent"] = o152,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Left,
})
o157 = Create("Decal",{
["Parent"] = o152,
["Texture"] = "http://www.roblox.com/asset/?id=12662505",
["Face"] = Enum.NormalId.Back,
})
o158 = Create("Part",{
["Name"] = "Flag",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-34.600029, 21.8490257, -48.5799789),
["Rotation"] = Vector3.new(-105, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-34.600029, 21.8490257, -48.5799789, -1, 0, 0, 0, 0.258819044, 0.965925813, 0, 0.965925813, -0.258819044),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o159 = Create("Decal",{
["Parent"] = o158,
["Texture"] = "http://www.roblox.com/asset/?id=15169017",
["Face"] = Enum.NormalId.Top,
})
o160 = Create("Part",{
["Name"] = "Flag",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(-22.600029, 21.8490257, -48.5799789),
["Rotation"] = Vector3.new(-105, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22.600029, 21.8490257, -48.5799789, -1, 0, 0, 0, 0.258819044, 0.965925813, 0, 0.965925813, -0.258819044),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o161 = Create("Decal",{
["Parent"] = o160,
["Texture"] = "http://www.roblox.com/asset/?id=15169055",
["Face"] = Enum.NormalId.Top,
})
o162 = Create("Part",{
["Name"] = "Flag",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(-10.600028, 21.8490257, -48.5799789),
["Rotation"] = Vector3.new(-105, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 21.8490257, -48.5799789, -1, 0, 0, 0, 0.258819044, 0.965925813, 0, 0.965925813, -0.258819044),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o163 = Create("Decal",{
["Parent"] = o162,
["Texture"] = "http://www.roblox.com/asset/?id=15169084",
["Face"] = Enum.NormalId.Top,
})
o164 = Create("Part",{
["Name"] = "Flag",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(1.39997196, 21.8490257, -48.5799789),
["Rotation"] = Vector3.new(-105, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.39997196, 21.8490257, -48.5799789, -1, 0, 0, 0, 0.258819044, 0.965925813, 0, 0.965925813, -0.258819044),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o165 = Create("Decal",{
["Parent"] = o164,
["Texture"] = "http://www.roblox.com/asset/?id=15169106",
["Face"] = Enum.NormalId.Top,
})
o166 = Create("Part",{
["Name"] = "Flag",
["Parent"] = o34,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(13.399972, 21.8490257, -48.5799789),
["Rotation"] = Vector3.new(-105, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.399972, 21.8490257, -48.5799789, -1, 0, 0, 0, 0.258819044, 0.965925813, 0, 0.965925813, -0.258819044),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o167 = Create("Decal",{
["Parent"] = o166,
["Texture"] = "http://www.roblox.com/asset/?id=15169113",
["Face"] = Enum.NormalId.Top,
})
o168 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 8.80002022, -48.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 8.80002022, -48.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o169 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o170 = Create("Part",{
["Parent"] = o169,
["Position"] = Vector3.new(-24.100029, 1.6000309, -71.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.100029, 1.6000309, -71.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o171 = Create("Part",{
["Parent"] = o169,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-24.100029, 3.40002441, -71.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.100029, 3.40002441, -71.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o172 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-27.600029, 10.6000137, -80.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(-27.600029, 10.6000137, -80.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(4, 8.40000057, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o173 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-13.100028, 2.00003052, -77.2000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.100028, 2.00003052, -77.2000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 6),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o174 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-8.10002804, 2.00003052, -77.2000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.10002804, 2.00003052, -77.2000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 6),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o175 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-13.100028, 7.00002098, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.100028, 7.00002098, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 3.60000014, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o176 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-8.10002804, 7.00002098, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.10002804, 7.00002098, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 3.60000014, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o177 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-10.600028, 0.600030899, -73.7000046),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 0.600030899, -73.7000046, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 4),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o178 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o179 = Create("Part",{
["Parent"] = o178,
["Position"] = Vector3.new(-21.100029, 1.6000309, -59.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-21.100029, 1.6000309, -59.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o180 = Create("Part",{
["Parent"] = o178,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-21.100029, 3.40002441, -59.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-21.100029, 3.40002441, -59.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o181 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Transparency"] = 1,
["Position"] = Vector3.new(-10.600028, 7.00002098, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 7.00002098, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(4, 3.60000014, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o182 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(23.3999786, 1.6000309, -74.2000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.3999786, 1.6000309, -74.2000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(50, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o183 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(19.399971, 7.60001373, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(19.399971, 7.60001373, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(6, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o184 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(10.5999765, 3.3960247, -82.6269836),
["Rotation"] = Vector3.new(-180, 15.000001, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.5999765, 3.3960247, -82.6269836, -0.965925813, 0, 0.258819044, 0, 1, 0, -0.258819044, 0, -0.965925813),
["Size"] = Vector3.new(4, 6, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o185 = Create("Decal",{
["Parent"] = o184,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
["Face"] = Enum.NormalId.Back,
})
o186 = Create("Decal",{
["Parent"] = o184,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
})
o187 = Create("Model",{
["Name"] = "Grill",
["Parent"] = o1,
})
o188 = Create("Model",{
["Name"] = "Buttons",
["Parent"] = o187,
})
o189 = Create("Part",{
["Name"] = "Button",
["Parent"] = o188,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-12.600028, 3.90002441, -86.3999939),
["Rotation"] = Vector3.new(-90, 0, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-12.600028, 3.90002441, -86.3999939, 1, -0, 0, 0, -0, 1, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o190 = Create("SpecialMesh",{
["Parent"] = o189,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o191 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o189,
})
o192 = Create("ClickDetector",{
["Parent"] = o189,
})
o193 = Create("Part",{
["Name"] = "Button",
["Parent"] = o188,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-11.100028, 3.90002441, -86.3999939),
["Rotation"] = Vector3.new(-90, 0, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-11.100028, 3.90002441, -86.3999939, 1, -0, 0, 0, -0, 1, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o194 = Create("SpecialMesh",{
["Parent"] = o193,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o195 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o193,
})
o196 = Create("ClickDetector",{
["Parent"] = o193,
})
o197 = Create("Part",{
["Name"] = "Button",
["Parent"] = o188,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-10.100028, 3.90002441, -86.3999939),
["Rotation"] = Vector3.new(-90, 0, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.100028, 3.90002441, -86.3999939, 1, -0, 0, 0, -0, 1, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o198 = Create("SpecialMesh",{
["Parent"] = o197,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o199 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o197,
})
o200 = Create("ClickDetector",{
["Parent"] = o197,
})
o201 = Create("Part",{
["Name"] = "Button",
["Parent"] = o188,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-8.60002804, 3.90002441, -86.3999939),
["Rotation"] = Vector3.new(-90, 0, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.60002804, 3.90002441, -86.3999939, 1, -0, 0, 0, -0, 1, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o202 = Create("SpecialMesh",{
["Parent"] = o201,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o203 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o201,
})
o204 = Create("ClickDetector",{
["Parent"] = o201,
})
o205 = Create("Model",{
["Name"] = "Body",
["Parent"] = o187,
})
o206 = Create("Part",{
["Name"] = "Steel",
["Parent"] = o205,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Reflectance"] = 0.10000000149012,
["Position"] = Vector3.new(-10.600028, 2.00003052, -83.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 2.00003052, -83.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 3.20000005, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o207 = Create("BlockMesh",{
["Parent"] = o206,
["Scale"] = Vector3.new(1.10000002, 1.45000005, 1),
})
o208 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o206,
})
o209 = Create("Part",{
["Name"] = "Steel",
["Parent"] = o205,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Reflectance"] = 0.10000000149012,
["Position"] = Vector3.new(-10.600028, 4.0000248, -83.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 4.0000248, -83.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.800000012, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o210 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o209,
})
o211 = Create("SpecialMesh",{
["Parent"] = o209,
["Scale"] = Vector3.new(1.10000002, 1, 1),
["MeshType"] = Enum.MeshType.Brick,
})
o212 = Create("Part",{
["Name"] = "Steel",
["Parent"] = o205,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-10.600028, 4.60002136, -81.7000122),
["Rotation"] = Vector3.new(180, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 4.60002136, -81.7000122, 0, -0, 1, 0, -1, 0, 1, -0, 0),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o213 = Create("BlockMesh",{
["Parent"] = o212,
["Scale"] = Vector3.new(0.600000024, 2.5999999, 0.99000001),
})
o214 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o212,
})
o215 = Create("Part",{
["Name"] = "Patty",
["Parent"] = o187,
["BrickColor"] = BrickColor.new("Sand red"),
["Position"] = Vector3.new(-8.60002804, 4.60002136, -83.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.60002804, 4.60002136, -83.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 1),
["Color"] = Color3.new(0.584314, 0.47451, 0.466667),
})
o216 = Create("SpecialMesh",{
["Parent"] = o215,
["Scale"] = Vector3.new(1.5, 1.5, 1.5),
})
o217 = Create("Part",{
["Name"] = "Patty",
["Parent"] = o187,
["BrickColor"] = BrickColor.new("Sand red"),
["Position"] = Vector3.new(-11.100028, 4.60002136, -84.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-11.100028, 4.60002136, -84.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["Color"] = Color3.new(0.584314, 0.47451, 0.466667),
})
o218 = Create("SpecialMesh",{
["Parent"] = o217,
["Scale"] = Vector3.new(1.5, 1.5, 1.5),
})
o219 = Create("Part",{
["Name"] = "Patty",
["Parent"] = o187,
["BrickColor"] = BrickColor.new("Sand red"),
["Position"] = Vector3.new(-12.100028, 4.60002136, -83.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-12.100028, 4.60002136, -83.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 2),
["Color"] = Color3.new(0.584314, 0.47451, 0.466667),
})
o220 = Create("SpecialMesh",{
["Parent"] = o219,
["Scale"] = Vector3.new(1.5, 1.5, 1.5),
})
o221 = Create("Part",{
["Name"] = "YellowDoor",
["Parent"] = o1,
["Position"] = Vector3.new(4.89997196, 3.40002441, -83.2000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.89997196, 3.40002441, -83.2000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(4, 6, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o222 = Create("Decal",{
["Parent"] = o221,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
["Face"] = Enum.NormalId.Back,
})
o223 = Create("Decal",{
["Parent"] = o221,
["Texture"] = "http://www.roblox.com/asset/?id=15025279",
})
o224 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-23.100029, 7.60001373, -87.2000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-23.100029, 7.60001373, -87.2000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(12, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o225 = Create("Model",{
["Name"] = "Toilet",
["Parent"] = o1,
})
o226 = Create("Part",{
["Parent"] = o225,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(21.899971, 3.40002441, -96.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(21.899971, 3.40002441, -96.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 3.60000014, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o227 = Create("Part",{
["Parent"] = o225,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(20.399971, 2.00003052, -97.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.399971, 2.00003052, -97.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o228 = Create("Part",{
["Parent"] = o225,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(18.899971, 2.00003052, -96.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(18.899971, 2.00003052, -96.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o229 = Create("Part",{
["Parent"] = o225,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(20.399971, 1.00003052, -96.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.399971, 1.00003052, -96.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o230 = Create("Part",{
["Parent"] = o225,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(20.399971, 2.00003052, -94.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.399971, 2.00003052, -94.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o231 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light blue"),
["Position"] = Vector3.new(-6.10002804, 7.00002098, -99.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-6.10002804, 7.00002098, -99.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.823529, 0.894118),
})
o232 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(8.39997196, 7.60001373, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.39997196, 7.60001373, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(8, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o233 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-19.600029, 7.60001373, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-19.600029, 7.60001373, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(12, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o234 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-10.600028, 2.00003052, -73.7000046),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 2.00003052, -73.7000046, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(1, 2.4000001, 4),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o235 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(22.8999786, 8.80002022, -80.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 8.80002022, -80.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o236 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-3.60002804, 7.60001373, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.60002804, 7.60001373, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(8, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o237 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(-9.60002804, 4.90002441, -49.3999863),
["Rotation"] = Vector3.new(-90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-9.60002804, 4.90002441, -49.3999863, -0, -0, 1, -1, -0, 0, -0, -1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o238 = Create("SpecialMesh",{
["Parent"] = o237,
["Scale"] = Vector3.new(0.649999976, 1, 0.5),
["MeshType"] = Enum.MeshType.Brick,
})
o239 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel light blue"),
["Reflectance"] = 0.30000001192093,
["Transparency"] = 0.5,
["Position"] = Vector3.new(-8.60002804, 5.20002747, -48.7000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.60002804, 5.20002747, -48.7000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(1, 9.60000038, 4),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.866667, 1),
})
o240 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-10.600028, 12.4000187, -48.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 12.4000187, -48.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(10, 4.80000019, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o241 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o242 = Create("Part",{
["Parent"] = o241,
["Position"] = Vector3.new(16.899971, 1.6000309, -58.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(16.899971, 1.6000309, -58.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o243 = Create("Part",{
["Parent"] = o241,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(16.899971, 3.40002441, -58.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(16.899971, 3.40002441, -58.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o244 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o245 = Create("Part",{
["Parent"] = o244,
["Position"] = Vector3.new(1.89997196, 1.6000309, -55.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.89997196, 1.6000309, -55.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o246 = Create("Part",{
["Parent"] = o244,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(1.89997196, 3.40002441, -55.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.89997196, 3.40002441, -55.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o247 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(13.399972, 18.4000282, -67.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.399972, 18.4000282, -67.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 36, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o248 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-6.10002804, 5.20002747, -48.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-6.10002804, 5.20002747, -48.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 9.60000038, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o249 = Create("Part",{
["Name"] = "Double Cheezburger",
["Parent"] = o1,
["Position"] = Vector3.new(1.89997196, 4.5000248, -56.7000046),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.89997196, 4.5000248, -56.7000046, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o250 = Create("SpecialMesh",{
["Parent"] = o249,
["MeshId"] = "http://www.roblox.com/asset/?id=23260999",
["TextureId"] = "http://www.roblox.com/asset/?id=23260982",
["MeshType"] = Enum.MeshType.FileMesh,
})
o251 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel light blue"),
["Reflectance"] = 0.30000001192093,
["Transparency"] = 0.5,
["Position"] = Vector3.new(22.8999786, 8.80002022, -64.7000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 8.80002022, -64.7000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(31, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.866667, 1),
})
o252 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(9.39997196, 1.6000309, -48.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.39997196, 1.6000309, -48.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(30, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o253 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel light blue"),
["Reflectance"] = 0.30000001192093,
["Transparency"] = 0.5,
["Position"] = Vector3.new(8.39997196, 8.80002022, -48.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.39997196, 8.80002022, -48.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(28, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.866667, 1),
})
o254 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(-9.60002804, 4.90002441, -47.9999924),
["Rotation"] = Vector3.new(90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-9.60002804, 4.90002441, -47.9999924, 0, 0, 1, 1, 0, 0, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o255 = Create("SpecialMesh",{
["Parent"] = o254,
["Scale"] = Vector3.new(0.649999976, 1, 0.5),
["MeshType"] = Enum.MeshType.Brick,
})
o256 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-10.600028, 2.6000309, -72.7000046),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 2.6000309, -72.7000046, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(1, 1.20000005, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o257 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(14.399972, 10.6000137, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(14.399972, 10.6000137, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(4, 8.40000057, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o258 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-15.100028, 5.20002747, -48.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-15.100028, 5.20002747, -48.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 9.60000038, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o259 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o260 = Create("Part",{
["Parent"] = o259,
["Position"] = Vector3.new(7.89997196, 1.6000309, -71.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.89997196, 1.6000309, -71.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o261 = Create("Part",{
["Parent"] = o259,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(7.89997196, 3.40002441, -71.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.89997196, 3.40002441, -71.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o262 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-10.600028, 9.40001869, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 9.40001869, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(6, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o263 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(-14.4000311, 4.90002441, -52.2000046),
["Rotation"] = Vector3.new(-0, 0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.4000311, 4.90002441, -52.2000046, -0, 1, 0, -1, 0, 0, -0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o264 = Create("SpecialMesh",{
["Parent"] = o263,
["Scale"] = Vector3.new(0.649999976, 1, 0.5),
["MeshType"] = Enum.MeshType.Brick,
})
o265 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(2.39997196, 10.6000137, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 10.6000137, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(4, 8.40000057, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o266 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-20.600029, 9.90001869, -80),
["Rotation"] = Vector3.new(-90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-20.600029, 9.90001869, -80, -1, 0, 0, -0, 0, 1, -0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(6, 0.400000006, 7),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o267 = Create("Decal",{
["Parent"] = o266,
["Texture"] = "http://www.roblox.com/asset/?id=15147951",
["Face"] = Enum.NormalId.Top,
})
o268 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(-15.800025, 4.90002441, -52.2000046),
["Rotation"] = Vector3.new(-0, 0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-15.800025, 4.90002441, -52.2000046, 0, -1, 0, 1, -0, 0, 0, -0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o269 = Create("SpecialMesh",{
["Parent"] = o268,
["Scale"] = Vector3.new(0.649999976, 1, 0.5),
["MeshType"] = Enum.MeshType.Brick,
})
o270 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel light blue"),
["Reflectance"] = 0.30000001192093,
["Transparency"] = 0.5,
["Position"] = Vector3.new(-15.100028, 5.20002747, -51.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-15.100028, 5.20002747, -51.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 9.60000038, 4),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.866667, 1),
})
o271 = Create("Model",{
["Name"] = "Register",
["Parent"] = o1,
})
o272 = Create("Part",{
["Parent"] = o271,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-12.4000311, 3.69602776, -73.626976),
["Rotation"] = Vector3.new(-0, 75, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-12.4000311, 3.69602776, -73.626976, 0.258819044, 0, 0.965925813, 0, 1, 0, -0.965925813, 0, 0.258819044),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o273 = Create("Part",{
["Parent"] = o271,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-12.1410284, 3.69602776, -74.5929794),
["Rotation"] = Vector3.new(-0, -15.000001, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-12.1410284, 3.69602776, -74.5929794, 0.965925813, 0, -0.258819044, 0, 1, 0, 0.258819044, 0, 0.965925813),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o274 = Create("SpecialMesh",{
["Parent"] = o273,
["MeshType"] = Enum.MeshType.Wedge,
})
o275 = Create("Part",{
["Parent"] = o271,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-12.8830252, 4.59602737, -73.7569809),
["Rotation"] = Vector3.new(-0, -15.000001, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-12.8830252, 4.59602737, -73.7569809, 0.965925813, 0, -0.258819044, 0, 1, 0, 0.258819044, 0, 0.965925813),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o276 = Create("SpecialMesh",{
["Parent"] = o275,
["MeshId"] = "http://www.roblox.com/asset/?id=1037158",
["Scale"] = Vector3.new(0.5, 0.5, 0.5),
["TextureId"] = "http://www.rollblox.com/asset/?id=13829126",
["MeshType"] = Enum.MeshType.FileMesh,
})
o277 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o278 = Create("Part",{
["Parent"] = o277,
["Position"] = Vector3.new(-32.100029, 1.6000309, -53.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-32.100029, 1.6000309, -53.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o279 = Create("Part",{
["Parent"] = o277,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-32.100029, 3.40002441, -53.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-32.100029, 3.40002441, -53.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o280 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel Blue"),
["Transparency"] = 0.5,
["Position"] = Vector3.new(20.399971, 1.80002785, -89.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.399971, 1.80002785, -89.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.501961, 0.733333, 0.858824),
})
o281 = Create("Model",{
["Name"] = "Crows Nest",
["Parent"] = o1,
})
o282 = Create("Part",{
["Parent"] = o281,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-34.600029, 7.60001373, -67.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-34.600029, 7.60001373, -67.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 14.4000006, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o283 = Create("Part",{
["Parent"] = o281,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-32.100029, 17.2000237, -67.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-32.100029, 17.2000237, -67.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 2.4000001, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o284 = Create("Part",{
["Parent"] = o281,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-34.600029, 15.4000149, -67.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-34.600029, 15.4000149, -67.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(6, 1.20000005, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o285 = Create("Part",{
["Parent"] = o281,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-34.600029, 17.2000237, -64.7000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-34.600029, 17.2000237, -64.7000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(1, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o286 = Create("Part",{
["Parent"] = o281,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-34.600029, 17.2000237, -69.7000046),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-34.600029, 17.2000237, -69.7000046, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(1, 2.4000001, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o287 = Create("Part",{
["Parent"] = o281,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-37.1000366, 17.2000237, -67.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-37.1000366, 17.2000237, -67.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 2.4000001, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o288 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-10.600028, 12.4000187, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.600028, 12.4000187, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(6, 4.80000019, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o289 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(18.899971, 5.20002747, -85.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(18.899971, 5.20002747, -85.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(7, 9.60000038, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o290 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light blue"),
["Position"] = Vector3.new(22.8999786, 8.80002022, -90.2000122),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(22.8999786, 8.80002022, -90.2000122, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(18, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.823529, 0.894118),
})
o291 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel light blue"),
["Reflectance"] = 0.30000001192093,
["Transparency"] = 0.5,
["Position"] = Vector3.new(-29.600029, 8.80002022, -48.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-29.600029, 8.80002022, -48.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(28, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.866667, 1),
})
o292 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(7.89997196, 7.60001373, -90.2000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.89997196, 7.60001373, -90.2000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(18, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o293 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o294 = Create("Part",{
["Parent"] = o293,
["Position"] = Vector3.new(-39.1000366, 1.6000309, -74.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-39.1000366, 1.6000309, -74.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o295 = Create("Part",{
["Parent"] = o293,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-39.1000366, 3.40002441, -74.7000046),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-39.1000366, 3.40002441, -74.7000046, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o296 = Create("Model",{
["Name"] = "Fryer",
["Parent"] = o1,
})
o297 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(2.39997196, 5.19402313, -98.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 5.19402313, -98.7000122, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(1, 2.4000001, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o298 = Create("BlockMesh",{
["Parent"] = o297,
["Scale"] = Vector3.new(1, 1.20000005, 1),
})
o299 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(2.39997196, 6.09402847, -98),
["Rotation"] = Vector3.new(90, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 6.09402847, -98, 0, 0, -1, -1, 0, 0, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o300 = Create("SpecialMesh",{
["Parent"] = o299,
})
o301 = Create("ClickDetector",{
["Parent"] = o299,
})
o302 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(2.39997196, 3.40002441, -98.2000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 3.40002441, -98.2000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o303 = Create("BlockMesh",{
["Parent"] = o302,
["Scale"] = Vector3.new(1, 1, 1.5),
})
o304 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(2.39997196, 5.09402275, -98),
["Rotation"] = Vector3.new(90, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 5.09402275, -98, 0, 0, -1, -1, 0, 0, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o305 = Create("SpecialMesh",{
["Parent"] = o304,
})
o306 = Create("ClickDetector",{
["Parent"] = o304,
})
o307 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(4.89997196, 3.40002441, -96.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.89997196, 3.40002441, -96.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 6),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o308 = Create("BlockMesh",{
["Parent"] = o307,
})
o309 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(2.39997196, 1.6000309, -96.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 1.6000309, -96.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(6, 2.4000001, 6),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o310 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-0.100028038, 3.40002441, -96.2000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.100028038, 3.40002441, -96.2000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 6),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o311 = Create("BlockMesh",{
["Parent"] = o310,
})
o312 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Transparency"] = 0.10000000149012,
["Position"] = Vector3.new(2.39997196, 3.0000267, -95.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 3.0000267, -95.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 4),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o313 = Create("BlockMesh",{
["Parent"] = o312,
["Scale"] = Vector3.new(1, 3, 1),
})
o314 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o296,
["Transparency"] = 1,
["Position"] = Vector3.new(2.39997196, 3.70002747, -95.2000122),
["Rotation"] = Vector3.new(180, -0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 3.70002747, -95.2000122, -0, -1, -0, -1, -0, -0, -0, -0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o315 = Create("Decal",{
["Parent"] = o314,
["Texture"] = "http://www.roblox.com/asset/?id=5112393",
["Face"] = Enum.NormalId.Top,
})
o316 = Create("Decal",{
["Parent"] = o314,
["Texture"] = "http://www.roblox.com/asset/?id=5112393",
["Face"] = Enum.NormalId.Back,
})
o317 = Create("Decal",{
["Parent"] = o314,
["Texture"] = "http://www.roblox.com/asset/?id=5112393",
})
o318 = Create("Decal",{
["Parent"] = o314,
["Texture"] = "http://www.roblox.com/asset/?id=5112393",
["Face"] = Enum.NormalId.Bottom,
})
o319 = Create("Decal",{
["Parent"] = o314,
["Texture"] = "http://www.roblox.com/asset/?id=5112393",
["Face"] = Enum.NormalId.Right,
})
o320 = Create("Decal",{
["Parent"] = o314,
["Texture"] = "http://www.roblox.com/asset/?id=4770596",
["Face"] = Enum.NormalId.Left,
})
o321 = Create("Part",{
["Parent"] = o296,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(2.39997196, 3.40002441, -93.7000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 3.40002441, -93.7000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(1, 1.20000005, 4),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o322 = Create("BlockMesh",{
["Parent"] = o321,
["Scale"] = Vector3.new(1, 1, 1.5),
})
o323 = Create("Part",{
["Parent"] = o296,
["Position"] = Vector3.new(2.39997196, 4.19402313, -93.7000122),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39997196, 4.19402313, -93.7000122, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o324 = Create("BlockMesh",{
["Parent"] = o323,
["Scale"] = Vector3.new(0.600000024, 0.600000024, 1.5),
})
o325 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brown"),
["Position"] = Vector3.new(18.899971, 5.20002747, -92.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(18.899971, 5.20002747, -92.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(7, 9.60000038, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.486275, 0.360784, 0.27451),
})
o326 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-36.6000366, 7.60001373, -80.7000122),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-36.6000366, 7.60001373, -80.7000122, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(14, 14.4000006, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o327 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-30.600029, 1.6000309, -48.2000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-30.600029, 1.6000309, -48.2000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(30, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o328 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-27.600029, 1.6000309, -100.200012),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-27.600029, 1.6000309, -100.200012, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(36, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o329 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(9.39997196, 1.6000309, -100.200012),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.39997196, 1.6000309, -100.200012, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(30, 2.4000001, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o330 = Create("Model",{
["Name"] = "Sign BADGE",
["Parent"] = o1,
})
o331 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-45.1000366, 27.1000366, -42.5999985),
["Rotation"] = Vector3.new(-90, 0, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 27.1000366, -42.5999985, 1, -0, 0, 0, -0, 1, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(9, 0.800000012, 7),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o332 = Create("Decal",{
["Parent"] = o331,
["Texture"] = "http://www.roblox.com/asset/?id=15025046",
["Face"] = Enum.NormalId.Bottom,
})
o333 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-45.1000366, 31.6000443, -42.3999863),
["Rotation"] = Vector3.new(90, -0, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 31.6000443, -42.3999863, -1, -0, -0, -0, -0, -1, -0, -1, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o334 = Create("Part",{
["Name"] = "Platform",
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-45.1000366, 23.2000275, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 23.2000275, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(9, 0.800000012, 7),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o335 = Create("Script",{
["Name"] = "BadgeAwarderScript",
["Parent"] = o334,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
print("Badge Awarder Loaded. BadgeID: " .. script.Parent.BadgeID.Value)



-- ROBLOX scripter hackers, see what you can do with this:
-- game:GetService("BadgeService"):UserHasBadge(userid, badgeid)


function OnTouch(part)
	if (part.Parent:FindFirstChild("Humanoid") ~= nil) then
		local p = game.Players:GetPlayerFromCharacter(part.Parent)
		if (p ~= nil) then
			print("Awarding BadgeID: " ..script.Parent.BadgeID.Value .. " to UserID: " .. p.userId)
			local b = game:GetService("BadgeService")
			b:AwardBadge(p.userId, script.Parent.BadgeID.Value)
		end
	end
end

script.Parent.Touched:connect(OnTouch)

end,o335)
end))
o336 = Create("IntValue",{
["Name"] = "BadgeID",
["Parent"] = o334,
["Value"] = 17751847,
})
o337 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-45.1000366, 23.4000282, -34.1999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 23.4000282, -34.1999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
})
o338 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 0.600030899, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 0.600030899, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o339 = Create("SpecialMesh",{
["Parent"] = o338,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o340 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 16.2000256, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 16.2000256, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o341 = Create("SpecialMesh",{
["Parent"] = o340,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o342 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 17.4000244, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 17.4000244, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o343 = Create("SpecialMesh",{
["Parent"] = o342,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o344 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 18.6000271, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 18.6000271, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o345 = Create("SpecialMesh",{
["Parent"] = o344,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o346 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 15.0000162, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 15.0000162, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o347 = Create("SpecialMesh",{
["Parent"] = o346,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o348 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 13.8000088, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 13.8000088, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o349 = Create("SpecialMesh",{
["Parent"] = o348,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o350 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 12.6000137, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 12.6000137, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o351 = Create("SpecialMesh",{
["Parent"] = o350,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o352 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 11.4000187, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 11.4000187, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o353 = Create("SpecialMesh",{
["Parent"] = o352,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o354 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 10.2000217, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 10.2000217, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o355 = Create("SpecialMesh",{
["Parent"] = o354,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o356 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 9.00002098, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 9.00002098, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o357 = Create("SpecialMesh",{
["Parent"] = o356,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o358 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 7.80002022, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 7.80002022, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o359 = Create("SpecialMesh",{
["Parent"] = o358,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o360 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 6.60002136, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 6.60002136, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o361 = Create("SpecialMesh",{
["Parent"] = o360,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o362 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 5.40002632, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 5.40002632, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o363 = Create("SpecialMesh",{
["Parent"] = o362,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o364 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 4.20002747, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 4.20002747, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o365 = Create("SpecialMesh",{
["Parent"] = o364,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o366 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 3.0000267, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 3.0000267, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o367 = Create("SpecialMesh",{
["Parent"] = o366,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o368 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 1.80002785, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 1.80002785, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o369 = Create("SpecialMesh",{
["Parent"] = o368,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o370 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 21.0000286, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 21.0000286, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o371 = Create("SpecialMesh",{
["Parent"] = o370,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o372 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 22.2000275, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 22.2000275, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o373 = Create("SpecialMesh",{
["Parent"] = o372,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o374 = Create("Part",{
["Parent"] = o330,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-45.1000366, 19.8000259, -38.6999741),
["Anchored"] = true,
["CFrame"] = CFrame.new(-45.1000366, 19.8000259, -38.6999741, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(3, 1.20000005, 3),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o375 = Create("SpecialMesh",{
["Parent"] = o374,
["Scale"] = Vector3.new(0.5, 1.5, 0.5),
})
o376 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-44.1000366, 8.80002022, -48.7000046),
["Anchored"] = true,
["CFrame"] = CFrame.new(-44.1000366, 8.80002022, -48.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 12, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o377 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-34.600029, 15.6950092, -75.2000046),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-34.600029, 15.6950092, -75.2000046, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 10, 1),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o378 = Create("SpecialMesh",{
["Parent"] = o377,
["Scale"] = Vector3.new(0.400000006, 1.03999996, 0.400000006),
})
o379 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Light stone grey"),
["Position"] = Vector3.new(-23.100029, 10.6000137, -95.2000122),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-23.100029, 10.6000137, -95.2000122, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(4, 8.40000057, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.898039, 0.894118, 0.87451),
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
["Parent"] = mas,
})
o2 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(54.400013, 0.200008392, 24.1000156),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(54.400013, 0.200008392, 24.1000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 7),
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o3 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(60.400013, 0.200008392, 24.1000156),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(60.400013, 0.200008392, 24.1000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 7),
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o4 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(66.4000092, 0.200008392, 24.1000156),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(66.4000092, 0.200008392, 24.1000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 7),
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o5 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(73.4000168, 0.200008392, 24.1000156),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(73.4000168, 0.200008392, 24.1000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 7),
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o6 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Earth orange"),
["Position"] = Vector3.new(80.4000168, 6.0000267, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 6.0000267, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(2, 12, 12),
["Color"] = Color3.new(0.384314, 0.278431, 0.196078),
})
o7 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 13.8000278, 29.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 13.8000278, 29.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o8 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Earth orange"),
["Position"] = Vector3.new(80.4000168, 12.6000328, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 12.6000328, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(2, 1.20000005, 10),
["Color"] = Color3.new(0.384314, 0.278431, 0.196078),
})
o9 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 12.6000328, 30.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 12.6000328, 30.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o10 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 12.6000328, 19.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 12.6000328, 19.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o11 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Earth orange"),
["Position"] = Vector3.new(80.4000168, 13.8000278, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 13.8000278, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(2, 1.20000005, 8),
["Color"] = Color3.new(0.384314, 0.278431, 0.196078),
})
o12 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 13.8000278, 19.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 13.8000278, 19.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o13 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(78.4000168, 23.8000145, 24.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(78.4000168, 23.8000145, 24.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 2.4000001, 8),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o14 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(77.9000168, 19.0000114, 24.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(77.9000168, 19.0000114, 24.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(3, 2.4000001, 12),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o15 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(77.4000168, 16.6000175, 24.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(77.4000168, 16.6000175, 24.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(4, 2.4000001, 14),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o16 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(78.4000168, 26.2000084, 24.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(78.4000168, 26.2000084, 24.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 2.4000001, 6),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o17 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 19.2000237, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 19.2000237, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 9.60000038, 12),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o18 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(78.4000168, 21.4000053, 24.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(78.4000168, 21.4000053, 24.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 2.4000001, 10),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o19 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(78.4000168, 28.6000175, 24.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(78.4000168, 28.6000175, 24.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 2.4000001, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o20 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 25.8000145, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 25.8000145, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 6),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o21 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 24.6000175, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 24.6000175, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 8),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o22 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.9000168, 12.0000114, 31.6000156),
["Rotation"] = Vector3.new(0, 90, 0),
["CFrame"] = CFrame.new(80.9000168, 12.0000114, 31.6000156, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 24, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o23 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(82.9000168, 12.0000267, 33.6000137),
["Rotation"] = Vector3.new(0, 90, 0),
["CFrame"] = CFrame.new(82.9000168, 12.0000267, 33.6000137, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 24, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o24 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(84.9000168, 12.0000114, 35.6000137),
["Rotation"] = Vector3.new(0, 90, 0),
["CFrame"] = CFrame.new(84.9000168, 12.0000114, 35.6000137, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 24, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o25 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(82.4000168, 12.0000267, 15.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(82.4000168, 12.0000267, 15.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 24, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o26 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(84.4000168, 12.0000267, 13.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(84.4000168, 12.0000267, 13.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 24, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o27 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 12.0000114, 17.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 12.0000114, 17.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 24, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o28 = Create("Model",{
["Parent"] = o1,
["PrimaryPart"] = o30,
})
o29 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 27.0000114, 33.6000137),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 27.0000114, 33.6000137, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o30 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("White"),
["Transparency"] = 0.10000000149012,
["Position"] = Vector3.new(80.4000168, 27.0000114, 30.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 27.0000114, 30.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o31 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 28.2000084, 32.6000137),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 28.2000084, 32.6000137, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o32 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 28.2000084, 28.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 28.2000084, 28.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o33 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 29.4000053, 30.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 29.4000053, 30.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o34 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("White"),
["Transparency"] = 0.10000000149012,
["Position"] = Vector3.new(80.4000168, 28.2000084, 30.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 28.2000084, 30.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o35 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 25.8000145, 32.6000137),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 25.8000145, 32.6000137, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o36 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 27.0000114, 27.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 27.0000114, 27.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o37 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("White"),
["Transparency"] = 0.10000000149012,
["Position"] = Vector3.new(80.4000168, 25.8000145, 30.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 25.8000145, 30.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o38 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 25.8000145, 28.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 25.8000145, 28.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o39 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o28,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 24.6000175, 30.6000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 24.6000175, 30.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o40 = Create("Model",{
["Parent"] = o1,
["PrimaryPart"] = o42,
})
o41 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 27.0000114, 15.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 27.0000114, 15.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o42 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("White"),
["Transparency"] = 0.10000000149012,
["Position"] = Vector3.new(80.4000168, 27.0000114, 18.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 27.0000114, 18.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o43 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 28.2000084, 16.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 28.2000084, 16.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o44 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 28.2000084, 20.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 28.2000084, 20.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o45 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 29.4000053, 18.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 29.4000053, 18.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o46 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("White"),
["Transparency"] = 0.10000000149012,
["Position"] = Vector3.new(80.4000168, 28.2000084, 18.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 28.2000084, 18.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o47 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 25.8000145, 16.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 25.8000145, 16.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o48 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 27.0000114, 21.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 27.0000114, 21.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o49 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("White"),
["Transparency"] = 0.10000000149012,
["Position"] = Vector3.new(80.4000168, 25.8000145, 18.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 25.8000145, 18.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o50 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 25.8000145, 20.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 25.8000145, 20.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o51 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o40,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(80.4000168, 24.6000175, 18.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(80.4000168, 24.6000175, 18.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o52 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 27.0000172, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 27.0000172, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o53 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 28.2000084, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 28.2000084, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 6),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o54 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 29.4000053, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 29.4000053, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 8),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o55 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(78.4000168, 32.8000145, 25.1000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(78.4000168, 32.8000145, 25.1000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 3.60000014, 17),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o56 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(87.9000168, 27.2000084, 41.6000137),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(87.9000168, 27.2000084, 41.6000137, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(7, 19.2000008, 6),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o57 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(91.9000168, 20.6000175, 23.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(91.9000168, 20.6000175, 23.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(21, 1.20000005, 14),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o58 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.4000168, 20.6000175, 33.6000137),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(92.4000168, 20.6000175, 33.6000137, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(16, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o59 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.4000168, 20.6000175, 31.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(92.4000168, 20.6000175, 31.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(20, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o60 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.9000168, 20.6000175, 35.6000137),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(92.9000168, 20.6000175, 35.6000137, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(13, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o61 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(82.9000168, 38.4000206, 33.6000137),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(82.9000168, 38.4000206, 33.6000137, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(3, 28.8000011, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o62 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(82.4000168, 38.4000206, 15.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(82.4000168, 38.4000206, 15.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o63 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.4000168, 26.4000053, 37.6000137),
["Rotation"] = Vector3.new(-0, 90, 0),
["CFrame"] = CFrame.new(92.4000168, 26.4000053, 37.6000137, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 52.8000031, 14),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o64 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(80.4000168, 41.4000053, 24.6000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(80.4000168, 41.4000053, 24.6000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 22.8000011, 16),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o65 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(88.9000168, 26.8000145, 6.60001564),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(88.9000168, 26.8000145, 6.60001564, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(7, 20.4000015, 6),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o66 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(84.9000168, 38.4000206, 35.6000137),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(84.9000168, 38.4000206, 35.6000137, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(3, 28.8000011, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o67 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.9000168, 26.4000053, 11.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(92.9000168, 26.4000053, 11.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(15, 52.8000031, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o68 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(84.4000168, 38.4000206, 13.1000156),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(84.4000168, 38.4000206, 13.1000156, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 3),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o69 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(101.900017, 26.4000053, 13.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(101.900017, 26.4000053, 13.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(3, 52.8000031, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o70 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(101.900017, 26.4000053, 33.6000137),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(101.900017, 26.4000053, 33.6000137, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(3, 52.8000031, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o71 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(100.900017, 26.4000053, 35.6000137),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(100.900017, 26.4000053, 35.6000137, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(3, 52.8000031, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o72 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(103.900017, 26.4000053, 23.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["CFrame"] = CFrame.new(103.900017, 26.4000053, 23.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(3, 52.8000031, 18),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o73 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.9000168, 49.0000114, 13.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(92.9000168, 49.0000114, 13.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(15, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o74 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.9000168, 49.0000114, 35.6000137),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(92.9000168, 49.0000114, 35.6000137, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(13, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o75 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.4000168, 49.0000114, 33.6000137),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(92.4000168, 49.0000114, 33.6000137, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(16, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o76 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(91.9000168, 49.0000114, 24.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(91.9000168, 49.0000114, 24.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(21, 1.20000005, 16),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o77 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(92.9000168, 49.0000114, 15.6000156),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(92.9000168, 49.0000114, 15.6000156, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(19, 1.20000005, 2),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o78 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel green"),
["Position"] = Vector3.new(96.4000168, 49.8000145, 20.6000156),
["Rotation"] = Vector3.new(0, 90, 0),
["CFrame"] = CFrame.new(96.4000168, 49.8000145, 20.6000156, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 0.400000006, 2),
["Color"] = Color3.new(0.8, 1, 0.8),
})
o79 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel Blue"),
["Position"] = Vector3.new(96.4000168, 50.2000084, 20.6000156),
["Rotation"] = Vector3.new(0, 90, 0),
["CFrame"] = CFrame.new(96.4000168, 50.2000084, 20.6000156, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 0.400000006, 2),
["Color"] = Color3.new(0.501961, 0.733333, 0.858824),
})
o80 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel Blue"),
["Position"] = Vector3.new(96.9000168, 51.0000114, 19.1000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(96.9000168, 51.0000114, 19.1000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.501961, 0.733333, 0.858824),
})
o81 = Create("SpecialMesh",{
["Parent"] = o80,
})
o82 = Create("Model",{
["Name"] = "BadgeAwarder",
["Parent"] = o1,
})
o83 = Create("Part",{
["Name"] = "Platform",
["Parent"] = o82,
["BrickColor"] = BrickColor.new("Medium red"),
["Position"] = Vector3.new(96.4000168, 51.0000153, 21.6000156),
["CFrame"] = CFrame.new(96.4000168, 51.0000153, 21.6000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["BottomSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.854902, 0.52549, 0.478431),
})
o84 = Create("Decal",{
["Parent"] = o83,
["Texture"] = "http://www.roblox.com/asset/?id=15843680",
["Face"] = Enum.NormalId.Top,
})
o85 = Create("Script",{
["Name"] = "BadgeAwarderScript",
["Parent"] = o83,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
print("Badge Awarder Loaded. BadgeID: " .. script.Parent.BadgeID.Value)



-- ROBLOX scripter hackers, see what you can do with this:
-- game:GetService("BadgeService"):UserHasBadge(userid, badgeid)


function OnTouch(part)
	if (part.Parent:FindFirstChild("Humanoid") ~= nil) then
		local p = game.Players:GetPlayerFromCharacter(part.Parent)
		if (p ~= nil) then
			print("Awarding BadgeID: " ..script.Parent.BadgeID.Value .. " to UserID: " .. p.userId)
			local b = game:GetService("BadgeService")
			b:AwardBadge(p.userId, script.Parent.BadgeID.Value)
		end
	end
end

script.Parent.Touched:connect(OnTouch)

end,o85)
end))
o86 = Create("IntValue",{
["Name"] = "BadgeID",
["Parent"] = o83,
["Value"] = 15843687,
})
o87 = Create("SpecialMesh",{
["Parent"] = o83,
["MeshId"] = "http://www.roblox.com/asset/?id=1527559",
["Scale"] = Vector3.new(1.39999998, 1.39999998, 1.60000002),
["MeshType"] = Enum.MeshType.FileMesh,
})
o88 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Pastel Blue"),
["Position"] = Vector3.new(95.9000168, 51.0000114, 19.1000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(95.9000168, 51.0000114, 19.1000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.501961, 0.733333, 0.858824),
})
o89 = Create("SpecialMesh",{
["Parent"] = o88,
})
o90 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(95.9000168, 52.1000175, 19.1000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(95.9000168, 52.1000175, 19.1000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(1, 1, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o91 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(96.9000168, 52.1000175, 19.1000156),
["Anchored"] = true,
["CFrame"] = CFrame.new(96.9000168, 52.1000175, 19.1000156, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(1, 1, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
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
["Parent"] = mas,
})
o2 = Create("Part",{
["Name"] = "Jbh423's Roblox News Paper",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(-106.900009, 15.0101843, 11.5999985),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-106.900009, 15.0101843, 11.5999985, 0, 0, -1, 0, -1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o3 = Create("Script",{
["Name"] = "Daily Weather Forecast",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Its gonna be Sunny so put on some of those good Sun Close!
--With a high of 73
--Clothes Suggestions:Some of those shirts with holes in them ,No hat,pants,SunTan loshen
end,o3)
end))
o4 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o3,
})
o5 = Create("Script",{
["Name"] = "No Links Rule!",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Just a quick notice! Have you ever seen the forums? Sure you are able to write and talk about stuff other than Roblox, but don't post new links! Just talk about them.
--Roblox is not responsible nor liable for any of these links posted on the forums. So please do not post new links. 
--If you do happen to see a link to another website other than Roblox, please PM the forum link to one of the many administrators on Roblox. In doing so, you may be banned from Roblox and your account permanently frozen.

end,o5)
end))
o6 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o5,
})
o7 = Create("Script",{
["Name"] = "Joke",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Joke: A noob had two horses, but he couldn't tell them apart.He cut off one horse's mane,but it grew back;he cut off the tail, but that grew back,too.
-- Conversation:
-- noob Boys's Freind:I had the same problem try measuring them!
-- noob Boy:Ok!
--So the noobboy went home and measured them.
--The next day the noob boy went and talked to his friend again.
--noobboy:That was a great idea the black one was two inches taller than the white one!
end,o7)
end))
o8 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o7,
})
o9 = Create("Script",{
["Name"] = "Best Clans To Join",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--------------Name-------------------Owner--------
--A.N.O.T.W.-------Jbh423
--Tex's Army------------Tex1067
--ROBOSOFT INC. ?-------Meszzy2
--SN --------------------------LittleBobby11
end,o9)
end))
o10 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o9,
})
o11 = Create("Script",{
["Name"] = "Fashion Sense",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Best clothes to wear this week:

--Tex's Tex1067 Jacket Co.   Links:     Shirt http://www.roblox.com/Item.aspx?ID=7450359        Pants http://www.roblox.com/Item.aspx?ID=14494199

--Then have a nice and awsome look so buy them and you'll look perfect!
end,o11)
end))
o12 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o11,
})
o13 = Create("Script",{
["Name"] = "Travelogue",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Popular Places Rating---------
--ROBLOX Deal or No Deal *New Badge----7.8
---2 BADGES ADDED!¦¦Grow & Raise EPIK DUCK
---Tunnel Cruiser ----9.9
end,o13)
end))
o14 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o13,
})
o15 = Create("Decal",{
["Parent"] = o2,
["Texture"] = "http://www.roblox.com/asset/?id=5275937",
["Face"] = Enum.NormalId.Bottom,
})
o16 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o15,
})
o17 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o2,
})
o18 = Create("Decal",{
["Parent"] = o2,
["Texture"] = "http://www.roblox.com/asset/?id=16157418",
["Face"] = Enum.NormalId.Top,
})
o19 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o18,
})
o20 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o2,
})
o21 = Create("Part",{
["Name"] = "Jbh423's Roblox News Paper",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(-106.900009, 15.0101843, 13.5999985),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-106.900009, 15.0101843, 13.5999985, 0, 0, -1, 0, -1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o22 = Create("Script",{
["Name"] = "Daily Weather Forecast",
["Parent"] = o21,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Its gonna be Sunny so put on some of those good Sun Close!
--With a high of 73
--Clothes Suggestions:Some of those shirts with holes in them ,No hat,pants,SunTan loshen
end,o22)
end))
o23 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o22,
})
o24 = Create("Script",{
["Name"] = "No Links Rule!",
["Parent"] = o21,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Just a quick notice! Have you ever seen the forums? Sure you are able to write and talk about stuff other than Roblox, but don't post new links! Just talk about them.
--Roblox is not responsible nor liable for any of these links posted on the forums. So please do not post new links. 
--If you do happen to see a link to another website other than Roblox, please PM the forum link to one of the many administrators on Roblox. In doing so, you may be banned from Roblox and your account permanently frozen.

end,o24)
end))
o25 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o24,
})
o26 = Create("Script",{
["Name"] = "Joke",
["Parent"] = o21,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Joke: A noob had two horses, but he couldn't tell them apart.He cut off one horse's mane,but it grew back;he cut off the tail, but that grew back,too.
-- Conversation:
-- noob Boys's Freind:I had the same problem try measuring them!
-- noob Boy:Ok!
--So the noobboy went home and measured them.
--The next day the noob boy went and talked to his friend again.
--noobboy:That was a great idea the black one was two inches taller than the white one!
end,o26)
end))
o27 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o26,
})
o28 = Create("Script",{
["Name"] = "Best Clans To Join",
["Parent"] = o21,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--------------Name-------------------Owner--------
--A.N.O.T.W.-------Jbh423
--Tex's Army------------Tex1067
--ROBOSOFT INC. ?-------Meszzy2
--SN --------------------------LittleBobby11
end,o28)
end))
o29 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o28,
})
o30 = Create("Script",{
["Name"] = "Fashion Sense",
["Parent"] = o21,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Best clothes to wear this week:

--Tex's Tex1067 Jacket Co.   Links:     Shirt http://www.roblox.com/Item.aspx?ID=7450359        Pants http://www.roblox.com/Item.aspx?ID=14494199

--Then have a nice and awsome look so buy them and you'll look perfect!
end,o30)
end))
o31 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o30,
})
o32 = Create("Script",{
["Name"] = "Travelogue",
["Parent"] = o21,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Popular Places Rating---------
--ROBLOX Deal or No Deal *New Badge----7.8
---2 BADGES ADDED!¦¦Grow & Raise EPIK DUCK
---Tunnel Cruiser ----9.9
end,o32)
end))
o33 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o32,
})
o34 = Create("Decal",{
["Parent"] = o21,
["Texture"] = "http://www.roblox.com/asset/?id=5275937",
["Face"] = Enum.NormalId.Bottom,
})
o35 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o34,
})
o36 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o21,
})
o37 = Create("Decal",{
["Parent"] = o21,
["Texture"] = "http://www.roblox.com/asset/?id=16157418",
["Face"] = Enum.NormalId.Top,
})
o38 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o37,
})
o39 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o21,
})
o40 = Create("Part",{
["Name"] = "Jbh423's Roblox News Paper",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(-106.900009, 15.0101843, 15.5999985),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-106.900009, 15.0101843, 15.5999985, 0, 0, -1, 0, -1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o41 = Create("Script",{
["Name"] = "Daily Weather Forecast",
["Parent"] = o40,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Its gonna be Sunny so put on some of those good Sun Close!
--With a high of 73
--Clothes Suggestions:Some of those shirts with holes in them ,No hat,pants,SunTan loshen
end,o41)
end))
o42 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o41,
})
o43 = Create("Script",{
["Name"] = "No Links Rule!",
["Parent"] = o40,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Just a quick notice! Have you ever seen the forums? Sure you are able to write and talk about stuff other than Roblox, but don't post new links! Just talk about them.
--Roblox is not responsible nor liable for any of these links posted on the forums. So please do not post new links. 
--If you do happen to see a link to another website other than Roblox, please PM the forum link to one of the many administrators on Roblox. In doing so, you may be banned from Roblox and your account permanently frozen.

end,o43)
end))
o44 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o43,
})
o45 = Create("Script",{
["Name"] = "Joke",
["Parent"] = o40,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Joke: A noob had two horses, but he couldn't tell them apart.He cut off one horse's mane,but it grew back;he cut off the tail, but that grew back,too.
-- Conversation:
-- noob Boys's Freind:I had the same problem try measuring them!
-- noob Boy:Ok!
--So the noobboy went home and measured them.
--The next day the noob boy went and talked to his friend again.
--noobboy:That was a great idea the black one was two inches taller than the white one!
end,o45)
end))
o46 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o45,
})
o47 = Create("Script",{
["Name"] = "Best Clans To Join",
["Parent"] = o40,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--------------Name-------------------Owner--------
--A.N.O.T.W.-------Jbh423
--Tex's Army------------Tex1067
--ROBOSOFT INC. ?-------Meszzy2
--SN --------------------------LittleBobby11
end,o47)
end))
o48 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o47,
})
o49 = Create("Script",{
["Name"] = "Fashion Sense",
["Parent"] = o40,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Best clothes to wear this week:

--Tex's Tex1067 Jacket Co.   Links:     Shirt http://www.roblox.com/Item.aspx?ID=7450359        Pants http://www.roblox.com/Item.aspx?ID=14494199

--Then have a nice and awsome look so buy them and you'll look perfect!
end,o49)
end))
o50 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o49,
})
o51 = Create("Script",{
["Name"] = "Travelogue",
["Parent"] = o40,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Popular Places Rating---------
--ROBLOX Deal or No Deal *New Badge----7.8
---2 BADGES ADDED!¦¦Grow & Raise EPIK DUCK
---Tunnel Cruiser ----9.9
end,o51)
end))
o52 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o51,
})
o53 = Create("Decal",{
["Parent"] = o40,
["Texture"] = "http://www.roblox.com/asset/?id=5275937",
["Face"] = Enum.NormalId.Bottom,
})
o54 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o53,
})
o55 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o40,
})
o56 = Create("Decal",{
["Parent"] = o40,
["Texture"] = "http://www.roblox.com/asset/?id=16157418",
["Face"] = Enum.NormalId.Top,
})
o57 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o56,
})
o58 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o40,
})
o59 = Create("Part",{
["Name"] = "Jbh423's Roblox News Paper",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(-109.900009, 15.0101843, 11.5999985),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-109.900009, 15.0101843, 11.5999985, 0, 0, -1, 0, -1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o60 = Create("Script",{
["Name"] = "Daily Weather Forecast",
["Parent"] = o59,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Its gonna be Sunny so put on some of those good Sun Close!
--With a high of 73
--Clothes Suggestions:Some of those shirts with holes in them ,No hat,pants,SunTan loshen
end,o60)
end))
o61 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o60,
})
o62 = Create("Script",{
["Name"] = "No Links Rule!",
["Parent"] = o59,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Just a quick notice! Have you ever seen the forums? Sure you are able to write and talk about stuff other than Roblox, but don't post new links! Just talk about them.
--Roblox is not responsible nor liable for any of these links posted on the forums. So please do not post new links. 
--If you do happen to see a link to another website other than Roblox, please PM the forum link to one of the many administrators on Roblox. In doing so, you may be banned from Roblox and your account permanently frozen.

end,o62)
end))
o63 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o62,
})
o64 = Create("Script",{
["Name"] = "Joke",
["Parent"] = o59,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Joke: A noob had two horses, but he couldn't tell them apart.He cut off one horse's mane,but it grew back;he cut off the tail, but that grew back,too.
-- Conversation:
-- noob Boys's Freind:I had the same problem try measuring them!
-- noob Boy:Ok!
--So the noobboy went home and measured them.
--The next day the noob boy went and talked to his friend again.
--noobboy:That was a great idea the black one was two inches taller than the white one!
end,o64)
end))
o65 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o64,
})
o66 = Create("Script",{
["Name"] = "Best Clans To Join",
["Parent"] = o59,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--------------Name-------------------Owner--------
--A.N.O.T.W.-------Jbh423
--Tex's Army------------Tex1067
--ROBOSOFT INC. ?-------Meszzy2
--SN --------------------------LittleBobby11
end,o66)
end))
o67 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o66,
})
o68 = Create("Script",{
["Name"] = "Fashion Sense",
["Parent"] = o59,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Best clothes to wear this week:

--Tex's Tex1067 Jacket Co.   Links:     Shirt http://www.roblox.com/Item.aspx?ID=7450359        Pants http://www.roblox.com/Item.aspx?ID=14494199

--Then have a nice and awsome look so buy them and you'll look perfect!
end,o68)
end))
o69 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o68,
})
o70 = Create("Script",{
["Name"] = "Travelogue",
["Parent"] = o59,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Popular Places Rating---------
--ROBLOX Deal or No Deal *New Badge----7.8
---2 BADGES ADDED!¦¦Grow & Raise EPIK DUCK
---Tunnel Cruiser ----9.9
end,o70)
end))
o71 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o70,
})
o72 = Create("Decal",{
["Parent"] = o59,
["Texture"] = "http://www.roblox.com/asset/?id=5275937",
["Face"] = Enum.NormalId.Bottom,
})
o73 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o72,
})
o74 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o59,
})
o75 = Create("Decal",{
["Parent"] = o59,
["Texture"] = "http://www.roblox.com/asset/?id=16157418",
["Face"] = Enum.NormalId.Top,
})
o76 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o75,
})
o77 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o59,
})
o78 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Olive"),
["Position"] = Vector3.new(-90.9000092, 23.0101929, 19.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 23.0101929, 19.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
["Color"] = Color3.new(0.756863, 0.745098, 0.258824),
})
o79 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Olive"),
["Position"] = Vector3.new(-90.9000092, 21.2101936, 20.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 21.2101936, 20.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 2),
["Color"] = Color3.new(0.756863, 0.745098, 0.258824),
})
o80 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Magenta"),
["Position"] = Vector3.new(-90.9000092, 24.8101883, 19.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 24.8101883, 19.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.666667, 0, 0.666667),
})
o81 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Magenta"),
["Position"] = Vector3.new(-90.9000092, 21.2101936, 19.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 21.2101936, 19.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.666667, 0, 0.666667),
})
o82 = Create("Part",{
["Name"] = "Jbh423's Roblox News Paper",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(-109.900009, 15.0101843, 13.5999985),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-109.900009, 15.0101843, 13.5999985, 0, 0, -1, 0, -1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o83 = Create("Script",{
["Name"] = "Daily Weather Forecast",
["Parent"] = o82,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Its gonna be Sunny so put on some of those good Sun Close!
--With a high of 73
--Clothes Suggestions:Some of those shirts with holes in them ,No hat,pants,SunTan loshen
end,o83)
end))
o84 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o83,
})
o85 = Create("Script",{
["Name"] = "No Links Rule!",
["Parent"] = o82,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Just a quick notice! Have you ever seen the forums? Sure you are able to write and talk about stuff other than Roblox, but don't post new links! Just talk about them.
--Roblox is not responsible nor liable for any of these links posted on the forums. So please do not post new links. 
--If you do happen to see a link to another website other than Roblox, please PM the forum link to one of the many administrators on Roblox. In doing so, you may be banned from Roblox and your account permanently frozen.

end,o85)
end))
o86 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o85,
})
o87 = Create("Script",{
["Name"] = "Joke",
["Parent"] = o82,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Joke: A noob had two horses, but he couldn't tell them apart.He cut off one horse's mane,but it grew back;he cut off the tail, but that grew back,too.
-- Conversation:
-- noob Boys's Freind:I had the same problem try measuring them!
-- noob Boy:Ok!
--So the noobboy went home and measured them.
--The next day the noob boy went and talked to his friend again.
--noobboy:That was a great idea the black one was two inches taller than the white one!
end,o87)
end))
o88 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o87,
})
o89 = Create("Script",{
["Name"] = "Best Clans To Join",
["Parent"] = o82,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--------------Name-------------------Owner--------
--A.N.O.T.W.-------Jbh423
--Tex's Army------------Tex1067
--ROBOSOFT INC. ?-------Meszzy2
--SN --------------------------LittleBobby11
end,o89)
end))
o90 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o89,
})
o91 = Create("Script",{
["Name"] = "Fashion Sense",
["Parent"] = o82,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Best clothes to wear this week:

--Tex's Tex1067 Jacket Co.   Links:     Shirt http://www.roblox.com/Item.aspx?ID=7450359        Pants http://www.roblox.com/Item.aspx?ID=14494199

--Then have a nice and awsome look so buy them and you'll look perfect!
end,o91)
end))
o92 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o91,
})
o93 = Create("Script",{
["Name"] = "Travelogue",
["Parent"] = o82,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Popular Places Rating---------
--ROBLOX Deal or No Deal *New Badge----7.8
---2 BADGES ADDED!¦¦Grow & Raise EPIK DUCK
---Tunnel Cruiser ----9.9
end,o93)
end))
o94 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o93,
})
o95 = Create("Decal",{
["Parent"] = o82,
["Texture"] = "http://www.roblox.com/asset/?id=5275937",
["Face"] = Enum.NormalId.Bottom,
})
o96 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o95,
})
o97 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o82,
})
o98 = Create("Decal",{
["Parent"] = o82,
["Texture"] = "http://www.roblox.com/asset/?id=16157418",
["Face"] = Enum.NormalId.Top,
})
o99 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o98,
})
o100 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o82,
})
o101 = Create("Part",{
["Name"] = "Jbh423's Roblox News Paper",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(-109.900009, 15.0101843, 15.5999985),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-109.900009, 15.0101843, 15.5999985, 0, 0, -1, 0, -1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o102 = Create("Script",{
["Name"] = "Daily Weather Forecast",
["Parent"] = o101,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Its gonna be Sunny so put on some of those good Sun Close!
--With a high of 73
--Clothes Suggestions:Some of those shirts with holes in them ,No hat,pants,SunTan loshen
end,o102)
end))
o103 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o102,
})
o104 = Create("Script",{
["Name"] = "No Links Rule!",
["Parent"] = o101,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Just a quick notice! Have you ever seen the forums? Sure you are able to write and talk about stuff other than Roblox, but don't post new links! Just talk about them.
--Roblox is not responsible nor liable for any of these links posted on the forums. So please do not post new links. 
--If you do happen to see a link to another website other than Roblox, please PM the forum link to one of the many administrators on Roblox. In doing so, you may be banned from Roblox and your account permanently frozen.

end,o104)
end))
o105 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o104,
})
o106 = Create("Script",{
["Name"] = "Joke",
["Parent"] = o101,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Joke: A noob had two horses, but he couldn't tell them apart.He cut off one horse's mane,but it grew back;he cut off the tail, but that grew back,too.
-- Conversation:
-- noob Boys's Freind:I had the same problem try measuring them!
-- noob Boy:Ok!
--So the noobboy went home and measured them.
--The next day the noob boy went and talked to his friend again.
--noobboy:That was a great idea the black one was two inches taller than the white one!
end,o106)
end))
o107 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o106,
})
o108 = Create("Script",{
["Name"] = "Best Clans To Join",
["Parent"] = o101,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--------------Name-------------------Owner--------
--A.N.O.T.W.-------Jbh423
--Tex's Army------------Tex1067
--ROBOSOFT INC. ?-------Meszzy2
--SN --------------------------LittleBobby11
end,o108)
end))
o109 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o108,
})
o110 = Create("Script",{
["Name"] = "Fashion Sense",
["Parent"] = o101,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Best clothes to wear this week:

--Tex's Tex1067 Jacket Co.   Links:     Shirt http://www.roblox.com/Item.aspx?ID=7450359        Pants http://www.roblox.com/Item.aspx?ID=14494199

--Then have a nice and awsome look so buy them and you'll look perfect!
end,o110)
end))
o111 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o110,
})
o112 = Create("Script",{
["Name"] = "Travelogue",
["Parent"] = o101,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Popular Places Rating---------
--ROBLOX Deal or No Deal *New Badge----7.8
---2 BADGES ADDED!¦¦Grow & Raise EPIK DUCK
---Tunnel Cruiser ----9.9
end,o112)
end))
o113 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o112,
})
o114 = Create("Decal",{
["Parent"] = o101,
["Texture"] = "http://www.roblox.com/asset/?id=5275937",
["Face"] = Enum.NormalId.Bottom,
})
o115 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o114,
})
o116 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o101,
})
o117 = Create("Decal",{
["Parent"] = o101,
["Texture"] = "http://www.roblox.com/asset/?id=16157418",
["Face"] = Enum.NormalId.Top,
})
o118 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o117,
})
o119 = Create("Weld",{
["Name"] = "Virus",
["Parent"] = o101,
})
o120 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-90.9000092, 22.6101952, 17.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 22.6101952, 17.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o121 = Create("Model",{
["Parent"] = o1,
})
o122 = Create("Model",{
["Parent"] = o121,
})
o123 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o122,
["BrickColor"] = BrickColor.new("Pastel orange"),
["Position"] = Vector3.new(-108.900009, 17.4101944, 14.2000046),
["Rotation"] = Vector3.new(-90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-108.900009, 17.4101944, 14.2000046, -1, 0, 0, 0, 0, 1, 0, 1, 0),
["Size"] = Vector3.new(3, 1.20000005, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0.788235, 0.788235),
})
o124 = Create("SpecialMesh",{
["Parent"] = o123,
["Scale"] = Vector3.new(1.25, 1.25, 1.25),
})
o125 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o123,
})
o126 = Create("Decal",{
["Parent"] = o123,
["Texture"] = "http://www.roblox.com/asset/?id=17743640",
["Face"] = Enum.NormalId.Bottom,
})
o127 = Create("Decal",{
["Parent"] = o123,
["Texture"] = "http://www.roblox.com/asset/?id=17743640",
["Face"] = Enum.NormalId.Top,
})
o128 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o122,
["BrickColor"] = BrickColor.new("Medium green"),
["Position"] = Vector3.new(-108.400017, 15.3999548, 14.1000414),
["Rotation"] = Vector3.new(-0.00334117864, 90, 0),
["RotVelocity"] = Vector3.new(0.000152344001, 0.00167610915, -0.000549386488),
["Velocity"] = Vector3.new(-0.00052911276, 0.00655099843, -0.00223835115),
["CFrame"] = CFrame.new(-108.400017, 15.3999548, 14.1000414, 1.47782857e-005, 3.01009422e-005, 1, -5.83145666e-005, 1, -3.010008e-005, -1, -5.83141227e-005, 1.47800411e-005),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 4),
["Color"] = Color3.new(0.631373, 0.768628, 0.54902),
})
o129 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o128,
})
o130 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o122,
["BrickColor"] = BrickColor.new("Pastel Blue"),
["Position"] = Vector3.new(-108.400009, 15.9999561, 14.1000137),
["Rotation"] = Vector3.new(-0.00334117864, 90, 0),
["RotVelocity"] = Vector3.new(0.000152344001, 0.00167610915, -0.000549386488),
["Velocity"] = Vector3.new(-0.00019952649, 0.00655099843, -0.00214695744),
["CFrame"] = CFrame.new(-108.400009, 15.9999561, 14.1000137, 1.47782857e-005, 3.01009422e-005, 1, -5.83145666e-005, 1, -3.010008e-005, -1, -5.83141227e-005, 1.47800411e-005),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.800000012, 4),
["Color"] = Color3.new(0.501961, 0.733333, 0.858824),
})
o131 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o130,
})
o132 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o122,
["BrickColor"] = BrickColor.new("Pastel Blue"),
["Position"] = Vector3.new(-106.899963, 17.1998482, 13.099966),
["Rotation"] = Vector3.new(-0.00334117864, 90, 0),
["RotVelocity"] = Vector3.new(0.000152344001, 0.00167610915, -0.000549386488),
["Velocity"] = Vector3.new(-0.00121651124, 0.00587924477, -0.0044784015),
["CFrame"] = CFrame.new(-106.899963, 17.1998482, 13.099966, 1.47782857e-005, 3.01009422e-005, 1, -5.83145666e-005, 1, -3.010008e-005, -1, -5.83141227e-005, 1.47800411e-005),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 1.60000002, 1),
["Color"] = Color3.new(0.501961, 0.733333, 0.858824),
})
o133 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o132,
})
o134 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o122,
["BrickColor"] = BrickColor.new("Pastel Blue"),
["Position"] = Vector3.new(-106.900002, 17.1999722, 15.099966),
["Rotation"] = Vector3.new(-0.00334117864, 90, 0),
["RotVelocity"] = Vector3.new(0.000152344001, 0.00167610915, -0.000549386488),
["Velocity"] = Vector3.new(0.00213577528, 0.00557457795, -0.00447831862),
["CFrame"] = CFrame.new(-106.900002, 17.1999722, 15.099966, 1.47782857e-005, 3.01009422e-005, 1, -5.83145666e-005, 1, -3.010008e-005, -1, -5.83141227e-005, 1.47800411e-005),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 1.60000002, 1),
["Color"] = Color3.new(0.501961, 0.733333, 0.858824),
})
o135 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o134,
})
o136 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o122,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-106.899918, 18.3998566, 13.0998888),
["Rotation"] = Vector3.new(-0.00334117864, 90, 0),
["RotVelocity"] = Vector3.new(0.000152344001, 0.00167610915, -0.000549386488),
["Velocity"] = Vector3.new(-0.000557372288, 0.00587923126, -0.00429566437),
["CFrame"] = CFrame.new(-106.899918, 18.3998566, 13.0998888, 1.47782857e-005, 3.01009422e-005, 1, -5.83145666e-005, 1, -3.010008e-005, -1, -5.83141227e-005, 1.47800411e-005),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 1),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o137 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o136,
})
o138 = Create("Decal",{
["Parent"] = o136,
["Texture"] = "http://www.roblox.com/asset/?id=15944597",
["Face"] = Enum.NormalId.Back,
})
o139 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o122,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-106.899956, 18.3999691, 15.0998888),
["Rotation"] = Vector3.new(-0.00334117864, 90, 0),
["RotVelocity"] = Vector3.new(0.000152344001, 0.00167610915, -0.000549386488),
["Velocity"] = Vector3.new(0.00279490789, 0.00557456445, -0.00429558288),
["CFrame"] = CFrame.new(-106.899956, 18.3999691, 15.0998888, 1.47782857e-005, 3.01009422e-005, 1, -5.83145666e-005, 1, -3.010008e-005, -1, -5.83141227e-005, 1.47800411e-005),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.800000012, 1),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o140 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o139,
})
o141 = Create("Decal",{
["Parent"] = o139,
["Texture"] = "http://www.roblox.com/asset/?id=15944597",
["Face"] = Enum.NormalId.Back,
})
o142 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o122,
})
o143 = Create("VelocityMotor",{
["Name"] = "4D Being",
["Parent"] = o122,
})
o144 = Create("Model",{
["Name"] = "bite DAVIDS2!!",
["Parent"] = o121,
})
o145 = Create("Humanoid",{
["Parent"] = o144,
["Health"] = 0,
["MaxHealth"] = 0,
})
o146 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o145,
})
o147 = Create("VelocityMotor",{
["Name"] = "4D Being",
["Parent"] = o144,
})
o148 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o144,
})
o149 = Create("VelocityMotor",{
["Name"] = "4D Being",
["Parent"] = o121,
})
o150 = Create("Weld",{
["Name"] = "SoundJack",
["Parent"] = o121,
})
o151 = Create("Part",{
["Name"] = "poo...",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-95.9000092, 24.1101952, 12.399971),
["Rotation"] = Vector3.new(90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-95.9000092, 24.1101952, 12.399971, 0, 0, 1, 1, 0, 0, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o152 = Create("Part",{
["Name"] = "poo...",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-95.9000092, 24.1101952, 10.399971),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-95.9000092, 24.1101952, 10.399971, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 3.60000014, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o153 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Olive"),
["Position"] = Vector3.new(-90.9000092, 23.0101967, 22.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 23.0101967, 22.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
["Color"] = Color3.new(0.756863, 0.745098, 0.258824),
})
o154 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Olive"),
["Position"] = Vector3.new(-90.9000092, 24.8101883, 20.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 24.8101883, 20.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 2),
["Color"] = Color3.new(0.756863, 0.745098, 0.258824),
})
o155 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Magenta"),
["Position"] = Vector3.new(-90.9000092, 24.8101883, 22.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 24.8101883, 22.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.666667, 0, 0.666667),
})
o156 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Magenta"),
["Position"] = Vector3.new(-90.9000092, 21.2101936, 22.0999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.9000092, 21.2101936, 22.0999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.666667, 0, 0.666667),
})
o157 = Create("Part",{
["Name"] = "poo...",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Magenta"),
["Position"] = Vector3.new(-96.4000092, 17.4101944, 21.0999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-96.4000092, 17.4101944, 21.0999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(8, 0.400000006, 7),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.666667, 0, 0.666667),
})
o158 = Create("Part",{
["Name"] = "poo...",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-93.9000092, 17.8101959, 21.0999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-93.9000092, 17.8101959, 21.0999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 7),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o159 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["Position"] = Vector3.new(-97.4000244, 10.4016905, 24.0000076),
["Rotation"] = Vector3.new(-90, 2.12945321e-011, 3.41509508e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-97.4000244, 10.4016905, 24.0000076, 1, -5.96046519e-008, 3.7165968e-013, -3.6662966e-013, 8.43899102e-008, 1, -5.96046519e-008, -1, 8.43899102e-008),
["Size"] = Vector3.new(2, 1.20000005, 4),
})
o160 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o1,
["Position"] = Vector3.new(-97.4000092, 10.4016905, 28.2000046),
["Rotation"] = Vector3.new(90, -3.13797534e-012, -3.41509462e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-97.4000092, 10.4016905, 28.2000046, 1, 5.96046448e-008, -5.47680018e-014, -4.97379983e-014, -8.43894554e-008, -1, -5.96046448e-008, 1, -8.43894554e-008),
["Size"] = Vector3.new(2, 1.20000005, 4),
})
o161 = Create("Model",{
["Name"] = "ROFL",
["Parent"] = o1,
["PrimaryPart"] = o174,
})
o162 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(-95.9000092, 23.8101902, 8.09999847),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-95.9000092, 23.8101902, 8.09999847, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o163 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-95.9000092, 19.0101871, 8.09999847),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-95.9000092, 19.0101871, 8.09999847, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 1.20000005, 1),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o164 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-90.9000092, 18.4101944, 17.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-90.9000092, 18.4101944, 17.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 7.20000029, 1),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o165 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-99.9000092, 18.4101944, 17.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-99.9000092, 18.4101944, 17.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 7.20000029, 1),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o166 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Position"] = Vector3.new(-95.9000092, 16.6101875, 8.59999847),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-95.9000092, 16.6101875, 8.59999847, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(3, 3.60000014, 2),
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o167 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-95.9000092, 21.4101868, 8.09999847),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-95.9000092, 21.4101868, 8.09999847, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 3.60000014, 1),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o168 = Create("VelocityMotor",{
["Name"] = "4D Being",
["Parent"] = o161,
})
o169 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-95.4000092, 16.0101852, 21.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-95.4000092, 16.0101852, 21.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(10, 2.4000001, 7),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o170 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-91.4000092, 17.8101845, 21.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-91.4000092, 17.8101845, 21.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 5),
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o171 = Create("Model",{
["Name"] = "Spongebobs house",
["Parent"] = o161,
["PrimaryPart"] = o174,
})
o172 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-103.400009, 38.2101936, 11.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 38.2101936, 11.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 3.60000014, 8),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o173 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-103.400009, 35.2101974, 14.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 35.2101974, 14.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 2.4000001, 6),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o174 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 29.8101883, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 29.8101883, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(24, 1.20000005, 26),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o175 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-95.4000092, 38.2101936, 19.5999985),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-95.4000092, 38.2101936, 19.5999985, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 3.60000014, 8),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o176 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-103.400009, 33.4101944, 20.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 33.4101944, 20.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 15),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o177 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-102.900009, 32.2101974, 20.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-102.900009, 32.2101974, 20.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(15, 1.20000005, 17),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o178 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-107.400009, 33.4101944, 19.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-107.400009, 33.4101944, 19.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 6),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o179 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-112.400009, 38.2101936, 19.5999985),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-112.400009, 38.2101936, 19.5999985, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 3.60000014, 8),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o180 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-99.4000092, 33.4101944, 19.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-99.4000092, 33.4101944, 19.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 6),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o181 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 31.0101929, 20.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 31.0101929, 20.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(20, 1.20000005, 21),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o182 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-97.4000092, 35.2101974, 19.5999985),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-97.4000092, 35.2101974, 19.5999985, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 2.4000001, 6),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o183 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-117.400009, 21.4101944, 19.5999985),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-117.400009, 21.4101944, 19.5999985, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(20, 13.2000008, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o184 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 28.6101952, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 28.6101952, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(24, 1.20000005, 26),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o185 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-116.400009, 28.6101952, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-116.400009, 28.6101952, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 22),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o186 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-90.4000092, 28.6101952, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.4000092, 28.6101952, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 22),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o187 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-109.400009, 35.2101974, 19.5999985),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-109.400009, 35.2101974, 19.5999985, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 2.4000001, 6),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o188 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 21.4101944, 6.59999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 21.4101944, 6.59999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(20, 13.2000008, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o189 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 25.6101952, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 25.6101952, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 4.80000019, 20),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o190 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-117.400009, 14.2101822, 21.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-117.400009, 14.2101822, 21.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 8),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o191 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-116.400009, 14.2101822, 8.59999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(-116.400009, 14.2101822, 8.59999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o192 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 13.0101805, 24.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 13.0101805, 24.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o193 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-114.400009, 14.2101822, 8.09999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 14.2101822, 8.09999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 3),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o194 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 21.4101944, 16.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 21.4101944, 16.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 3.60000014, 14),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o195 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 14.2101822, 13.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 14.2101822, 13.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(30, 1.20000005, 8),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o196 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-100.400009, 14.2101822, 21.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-100.400009, 14.2101822, 21.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(24, 1.20000005, 8),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o197 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-103.400009, 35.2101974, 24.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 35.2101974, 24.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 2.4000001, 6),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o198 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 10.6101885, 22.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 10.6101885, 22.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o199 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright blue"),
["Transparency"] = 0.60000002384186,
["Position"] = Vector3.new(-89.4000092, 21.4101944, 25.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 21.4101944, 25.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 3.60000014, 3),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o200 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 14.2101822, 7.59999847),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 14.2101822, 7.59999847, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(20, 1.20000005, 4),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o201 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 9.41018581, 21.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 9.41018581, 21.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o202 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 11.8101845, 23.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 11.8101845, 23.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o203 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 8.2101841, 20.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 8.2101841, 20.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o204 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 4.61018753, 17.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 4.61018753, 17.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o205 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 7.01018715, 19.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 7.01018715, 19.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o206 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-92.4000092, 14.2101822, 8.09999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(-92.4000092, 14.2101822, 8.09999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 3),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o207 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 5.81018925, 18.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 5.81018925, 18.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o208 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 17.2101936, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 17.2101936, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 4.80000019, 20),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o209 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 14.2101822, 27.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 14.2101822, 27.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(30, 1.20000005, 4),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o210 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-117.400009, 7.01018715, 19.5999985),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-117.400009, 7.01018715, 19.5999985, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(20, 13.2000008, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o211 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-90.4000092, 14.2101822, 8.59999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.4000092, 14.2101822, 8.59999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o212 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-114.400009, 14.2101822, 31.0999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 14.2101822, 31.0999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 3),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o213 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Dark green"),
["Position"] = Vector3.new(-103.400009, 38.2101936, 27.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 38.2101936, 27.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 3.60000014, 8),
["Color"] = Color3.new(0.156863, 0.498039, 0.278431),
})
o214 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-116.400009, 14.2101822, 30.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-116.400009, 14.2101822, 30.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o215 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 14.2101822, 31.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 14.2101822, 31.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(20, 1.20000005, 4),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o216 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 11.2101822, 11.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 11.2101822, 11.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 4.80000019, 3),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o217 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 1.01019096, 14.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 1.01019096, 14.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o218 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 3.41018867, 16.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 3.41018867, 16.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o219 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-90.4000092, 14.2101822, 30.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-90.4000092, 14.2101822, 30.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o220 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-114.400009, 2.21019173, 15.5999985),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-114.400009, 2.21019173, 15.5999985, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o221 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 7.01018715, 6.59999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 7.01018715, 6.59999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(20, 13.2000008, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o222 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 21.4101944, 28.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 21.4101944, 28.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 3.60000014, 3),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o223 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 13.0101805, 14.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 13.0101805, 14.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 3),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o224 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 7.01018715, 32.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 7.01018715, 32.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(20, 13.2000008, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o225 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-92.4000092, 14.2101822, 31.0999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-92.4000092, 14.2101822, 31.0999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 27.6000004, 3),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o226 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 11.2101822, 22.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 11.2101822, 22.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 4.80000019, 14),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o227 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 8.2101841, 13.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 8.2101841, 13.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 1.20000005, 8),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o228 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(-89.4000092, 8.2101841, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 8.2101841, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 4),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o229 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright blue"),
["Transparency"] = 0.60000002384186,
["Position"] = Vector3.new(-89.4000092, 10.6101885, 14.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 10.6101885, 14.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 3.60000014, 3),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o230 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-103.400009, 21.4101944, 32.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-103.400009, 21.4101944, 32.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(20, 13.2000008, 2),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o231 = Create("Model",{
["Parent"] = o171,
["PrimaryPart"] = o232,
})
o232 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o231,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 8.2101841, 25.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 8.2101841, 25.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 1.20000005, 8),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o233 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o231,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 4.01018906, 26.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 4.01018906, 26.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(2, 7.20000029, 7),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o234 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright orange"),
["Position"] = Vector3.new(-89.4000092, 4.01018906, 13.0999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 4.01018906, 13.0999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 7.20000029, 7),
["Color"] = Color3.new(0.854902, 0.521569, 0.254902),
})
o235 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o171,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(-89.4000092, 4.01018906, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-89.4000092, 4.01018906, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(2, 7.20000029, 6),
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o236 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-90.9000092, 18.4101944, 25.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-90.9000092, 18.4101944, 25.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 7.20000029, 1),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o237 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-99.9000092, 18.4101944, 25.0999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["CFrame"] = CFrame.new(-99.9000092, 18.4101944, 25.0999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(1, 7.20000029, 1),
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o238 = Create("Model",{
["Name"] = "Inflatable Chair",
["Parent"] = o161,
["PrimaryPart"] = o243,
})
o239 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o238,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-109.200012, 2.21019173, 28.5999985),
["Rotation"] = Vector3.new(-0, 0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-109.200012, 2.21019173, 28.5999985, 0, 1, 0, -1, 0, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 4.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o240 = Create("SpecialMesh",{
["Parent"] = o239,
["Scale"] = Vector3.new(1.25, 1.25, 1.25),
})
o241 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o238,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-111.400009, 4.21018982, 25.5999985),
["Rotation"] = Vector3.new(90, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-111.400009, 4.21018982, 25.5999985, 0, 0, -1, -1, 0, 0, 0, 1, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 6, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o242 = Create("SpecialMesh",{
["Parent"] = o241,
["Scale"] = Vector3.new(1.25, 1.25, 1.25),
})
o243 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o238,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-109.385925, 0.399991989, 25.5999985),
["Rotation"] = Vector3.new(180, -90, 0),
["RotVelocity"] = Vector3.new(-0.00508541893, -1.59203466e-007, -4.57209808e-006),
["Velocity"] = Vector3.new(-1.52250641e-006, -0.00163426716, -0.000372749782),
["CFrame"] = CFrame.new(-109.385925, 0.399991989, 25.5999985, -5.84871214e-006, -9.89286036e-007, -1, -9.02664876e-009, -1, 9.89286036e-007, -1, 9.03243524e-009, 5.84871214e-006),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(6, 0.800000012, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o244 = Create("SpecialMesh",{
["Parent"] = o243,
["Scale"] = Vector3.new(1, 4, 1),
["MeshType"] = Enum.MeshType.Sphere,
})
o245 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o238,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-111.400009, 2.21019173, 25.5999985),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-111.400009, 2.21019173, 25.5999985, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 2, 2),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o246 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o238,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(-108.385925, 0.999991655, 25.6000004),
["Rotation"] = Vector3.new(180, -0.000335106452, 5.66819035e-005),
["RotVelocity"] = Vector3.new(-0.00508541893, -1.59203466e-007, -4.57209808e-006),
["Velocity"] = Vector3.new(1.22075062e-006, -0.00163882959, -0.00342384027),
["CFrame"] = CFrame.new(-108.385925, 0.999991655, 25.6000004, 1, -9.89285809e-007, -5.84871077e-006, -9.89285809e-007, -0.999999523, -9.02664521e-009, -5.84871077e-006, 9.03242992e-009, -0.999999523),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3, 0.400000006, 3),
["BackSurface"] = Enum.SurfaceType.Weld,
["BottomSurface"] = Enum.SurfaceType.Smooth,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o247 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o238,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-109.200012, 2.21019173, 22.5999985),
["Rotation"] = Vector3.new(-0, 0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-109.200012, 2.21019173, 22.5999985, 0, 1, 0, -1, 0, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 4.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o248 = Create("SpecialMesh",{
["Parent"] = o247,
["Scale"] = Vector3.new(1.25, 1.25, 1.25),
})
o249 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-97.4000092, 7.80170441, 26.0999985),
["Rotation"] = Vector3.new(-180, -3.41508735e-006, -180),
["RotVelocity"] = Vector3.new(-4.67072995e-013, -4.61561353e-019, 1.14785835e-005),
["Velocity"] = Vector3.new(-4.95033128e-005, -0.00582765974, -2.18427468e-012),
["CFrame"] = CFrame.new(-97.4000092, 7.80170441, 26.0999985, -0.999997735, 4.47081642e-014, -5.96045169e-008, 2.30817915e-013, 1, 8.43892707e-008, 5.96045169e-008, 8.43891925e-008, -0.999997735),
["Size"] = Vector3.new(2, 1.20000005, 7),
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o250 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-96.9000092, 5.40170145, 26.0999985),
["Rotation"] = Vector3.new(-180, -3.41508985e-006, -180),
["RotVelocity"] = Vector3.new(-4.67072995e-013, -4.61561353e-019, 1.14785835e-005),
["Velocity"] = Vector3.new(-2.19546782e-005, -0.00582192047, -1.06329789e-012),
["CFrame"] = CFrame.new(-96.9000092, 5.40170145, 26.0999985, -0.99999845, 7.48881548e-014, -5.96045595e-008, 2.00638036e-013, 1, 8.43892849e-008, 5.96045595e-008, 8.43892352e-008, -0.99999845),
["Size"] = Vector3.new(1, 3.60000014, 5),
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o251 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.75,
["Position"] = Vector3.new(-97.9000092, 5.40169764, 26.0999985),
["Rotation"] = Vector3.new(-180, -3.41508803e-006, -180),
["RotVelocity"] = Vector3.new(-4.67072995e-013, -4.61561353e-019, 1.14785835e-005),
["Velocity"] = Vector3.new(-2.19546346e-005, -0.00583339902, -1.06329659e-012),
["CFrame"] = CFrame.new(-97.9000092, 5.40169764, 26.0999985, -0.999997973, 5.47681576e-014, -5.96045311e-008, 2.20757955e-013, 1, 8.43892778e-008, 5.96045311e-008, 8.43892067e-008, -0.999997973),
["Size"] = Vector3.new(1, 3.60000014, 5),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o252 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-97.3999939, 5.4016943, 23.1000137),
["Rotation"] = Vector3.new(-180, -3.41508576e-006, -180),
["RotVelocity"] = Vector3.new(-4.67072995e-013, -4.61561353e-019, 1.14785835e-005),
["Velocity"] = Vector3.new(-2.19545964e-005, -0.00582765974, -1.06329474e-012),
["CFrame"] = CFrame.new(-97.3999939, 5.4016943, 23.1000137, -0.999997258, 2.45881959e-014, -5.96044885e-008, 2.50937834e-013, 1, 8.43892565e-008, 5.96044885e-008, 8.43891641e-008, -0.999997258),
["Size"] = Vector3.new(2, 3.60000014, 1),
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o253 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-97.4000092, 3.00169706, 26.0999985),
["Rotation"] = Vector3.new(-180, -3.41509144e-006, -180),
["RotVelocity"] = Vector3.new(-4.67072995e-013, -4.61561353e-019, 1.14785835e-005),
["Velocity"] = Vector3.new(5.59397267e-006, -0.00582765974, 5.76791219e-014),
["CFrame"] = CFrame.new(-97.4000092, 3.00169706, 26.0999985, -0.999998927, 9.50081553e-014, -5.96045879e-008, 1.8051809e-013, 1, 8.43892991e-008, 5.96045879e-008, 8.43892636e-008, -0.999998927),
["Size"] = Vector3.new(2, 1.20000005, 7),
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o254 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-97.4000092, 5.40170002, 29.0999908),
["Rotation"] = Vector3.new(-180, -3.41508644e-006, -180),
["RotVelocity"] = Vector3.new(-4.67072995e-013, -4.61561353e-019, 1.14785835e-005),
["Velocity"] = Vector3.new(-2.19546619e-005, -0.00582765974, -1.06329745e-012),
["CFrame"] = CFrame.new(-97.4000092, 5.40170002, 29.0999908, -0.999997497, 3.46481775e-014, -5.96045027e-008, 2.40877874e-013, 1, 8.43892636e-008, 5.96045027e-008, 8.43891783e-008, -0.999997497),
["Size"] = Vector3.new(2, 3.60000014, 1),
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
})
o255 = Create("Model",{
["Parent"] = o161,
})
o256 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o161,
["BrickColor"] = BrickColor.new("Dark orange"),
["Position"] = Vector3.new(-97.4000092, 1.2016964, 26.0999985),
["Rotation"] = Vector3.new(-180, -3.41509508e-006, -180),
["RotVelocity"] = Vector3.new(-4.67072995e-013, -4.61561353e-019, 1.14785835e-005),
["Velocity"] = Vector3.new(2.62554313e-005, -0.00582765974, 8.98410849e-013),
["CFrame"] = CFrame.new(-97.4000092, 1.2016964, 26.0999985, -1, 1.40278197e-013, -5.96046519e-008, 1.35248204e-013, 1, 8.43893275e-008, 5.96046519e-008, 8.43893275e-008, -1),
["Size"] = Vector3.new(2, 2.4000001, 7),
["Color"] = Color3.new(0.627451, 0.372549, 0.207843),
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
["Parent"] = mas,
})
o2 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-25.2999859, 14.7999907, 113.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-25.2999859, 14.7999907, 113.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(1, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o3 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-27.2999859, 14.7999907, 93.600029),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-27.2999859, 14.7999907, 93.600029, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o4 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o5 = Create("Part",{
["Parent"] = o4,
["Position"] = Vector3.new(-24.2999859, 1.6000042, 102.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.2999859, 1.6000042, 102.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o6 = Create("Part",{
["Parent"] = o4,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-24.2999859, 3.40000343, 102.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.2999859, 3.40000343, 102.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o7 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-23.7999859, 14.7999907, 115.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-23.7999859, 14.7999907, 115.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o8 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-24.7999859, 7.00000191, 110.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.7999859, 7.00000191, 110.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(6, 13.2000008, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o9 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-24.7999859, 14.7999907, 114.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.7999859, 14.7999907, 114.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o10 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-28.2999859, 14.7999907, 94.600029),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.2999859, 14.7999907, 94.600029, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o11 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-29.2999859, 14.7999907, 102.600029),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-29.2999859, 14.7999907, 102.600029, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(16, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o12 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-28.2999859, 14.7999907, 110.600029),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.2999859, 14.7999907, 110.600029, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o13 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 112.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 112.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(26, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o14 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 112.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 112.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(22, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o15 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 111.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 111.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(24, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o16 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 111.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 111.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(28, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o17 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 115.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 115.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(20, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o18 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 110.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 110.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(26, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o19 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 116.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 116.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(18, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o20 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 114.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 114.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(22, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o21 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 102.600029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 102.600029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(30, 0.400000006, 16),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o22 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 117.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 117.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(16, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o23 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 113.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 113.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(24, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o24 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-14.7999859, 14.7999907, 117.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 14.7999907, 117.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(16, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o25 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Transparency"] = 1,
["Position"] = Vector3.new(-14.6309795, 4.79500389, 89.0690231),
["Rotation"] = Vector3.new(90, -0, 75),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.6309795, 4.79500389, 89.0690231, 0.258819044, -0.965925813, -0, 0, 0, -1, 0.965925813, 0.258819044, -0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 8),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o26 = Create("BlockMesh",{
["Parent"] = o25,
["Scale"] = Vector3.new(2, 1, 1.29999995),
})
o27 = Create("Decal",{
["Parent"] = o25,
["Texture"] = "http://www.roblox.com/asset/?id=15034057",
["Face"] = Enum.NormalId.Bottom,
})
o28 = Create("Decal",{
["Parent"] = o25,
["Texture"] = "http://www.roblox.com/asset/?id=15034057",
["Face"] = Enum.NormalId.Left,
})
o29 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 88.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 88.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(16, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o30 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 91.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 91.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(18, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o31 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 91.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 91.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(22, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o32 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 94.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 94.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(28, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o33 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 94.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 94.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(24, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o34 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 92.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 92.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(24, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o35 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 93.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 93.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(26, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o36 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 93.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 93.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(22, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o37 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 89.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 89.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(18, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o38 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 95.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 95.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(26, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o39 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-14.7999859, 0.200004578, 90.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 0.200004578, 90.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(20, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o40 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-16.7999859, 5.19999886, 88.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.7999859, 5.19999886, 88.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(4, 9.60000038, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o41 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 102.600029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 102.600029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(28, 0.400000006, 14),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o42 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 90.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 90.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(16, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o43 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-9.79998589, 13.7999907, 115.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-9.79998589, 13.7999907, 115.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(6, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o44 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-6.79998589, 14.7999907, 116.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-6.79998589, 14.7999907, 116.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o45 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 92.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 92.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(20, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o46 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-8.79998589, 13.7999907, 113.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.79998589, 13.7999907, 113.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(8, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o47 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-10.2999859, 13.7999907, 116.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-10.2999859, 13.7999907, 116.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o48 = Create("Model",{
["Name"] = "Chum Roof",
["Parent"] = o1,
})
o49 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 91.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 91.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(18, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o50 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 92.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 92.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(20, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o51 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 90.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 90.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(16, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o52 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 89.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 89.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(14, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o53 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 95.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 95.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(26, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o54 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 94.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 94.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(24, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o55 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 93.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 93.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(22, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o56 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(28, 1.20000005, 14),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o57 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 110.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 110.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(26, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o58 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 112.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 112.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(22, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o59 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 111.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 111.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(24, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o60 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 113.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 113.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(20, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o61 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 115.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 115.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(16, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o62 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 114.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 114.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(18, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o63 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-14.7999859, 28.8000069, 116.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 28.8000069, 116.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(14, 1.20000005, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o64 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-24.7999859, 42.6000214, 102.600029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.7999859, 42.6000214, 102.600029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(8, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o65 = Create("Part",{
["Parent"] = o48,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(-14.7999859, 43.8000183, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 43.8000183, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(12, 9.60000038, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o66 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-28.7999859, 40.2000198, 102.600029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-28.7999859, 40.2000198, 102.600029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o67 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-4.79998589, 42.6000214, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-4.79998589, 42.6000214, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(8, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o68 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-0.799985886, 40.2000198, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.799985886, 40.2000198, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o69 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(0.200014114, 37.8000183, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.200014114, 37.8000183, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o70 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-29.7999859, 37.8000183, 102.600029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-29.7999859, 37.8000183, 102.600029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 2.4000001, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o71 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(-30.7999859, 32.4000168, 102.600029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-30.7999859, 32.4000168, 102.600029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 8.40000057, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o72 = Create("Part",{
["Parent"] = o48,
["Position"] = Vector3.new(1.20001411, 32.4000168, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.20001411, 32.4000168, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 8.40000057, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o73 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-20.7999859, 5.19999886, 88.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-20.7999859, 5.19999886, 88.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(4, 9.60000038, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o74 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-23.7999859, 14.7999907, 90.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-23.7999859, 14.7999907, 90.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o75 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-18.7999859, 11.1999922, 110.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-18.7999859, 11.1999922, 110.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(6, 4.80000019, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o76 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o77 = Create("Part",{
["Parent"] = o76,
["Position"] = Vector3.new(-21.2999859, 1.6000042, 94.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-21.2999859, 1.6000042, 94.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o78 = Create("Part",{
["Parent"] = o76,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-21.2999859, 3.40000343, 94.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-21.2999859, 3.40000343, 94.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o79 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-19.2999859, 13.7999907, 116.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-19.2999859, 13.7999907, 116.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o80 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-22.7999859, 14.7999907, 89.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22.7999859, 14.7999907, 89.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o81 = Create("Model",{
["Name"] = "Ladder",
["Parent"] = o1,
})
o82 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-13.2999859, 0.900007248, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.2999859, 0.900007248, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o83 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-13.2999859, 2.90000343, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.2999859, 2.90000343, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o84 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-13.2999859, 4.8999958, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.2999859, 4.8999958, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o85 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-13.2999859, 6.8999958, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.2999859, 6.8999958, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o86 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-13.2999859, 8.89998817, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.2999859, 8.89998817, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o87 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-13.2999859, 10.8999882, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.2999859, 10.8999882, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o88 = Create("Part",{
["Parent"] = o81,
["Position"] = Vector3.new(-14.7999859, 1.90000534, 116.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 1.90000534, 116.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o89 = Create("Part",{
["Parent"] = o81,
["Position"] = Vector3.new(-14.7999859, 3.90000343, 116.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 3.90000343, 116.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o90 = Create("Part",{
["Parent"] = o81,
["Position"] = Vector3.new(-14.7999859, 5.8999958, 116.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 5.8999958, 116.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o91 = Create("Part",{
["Parent"] = o81,
["Position"] = Vector3.new(-14.7999859, 7.8999958, 116.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 7.8999958, 116.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o92 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-16.2999859, 0.900007248, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.2999859, 0.900007248, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o93 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-16.2999859, 2.90000343, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.2999859, 2.90000343, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o94 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-16.2999859, 4.8999958, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.2999859, 4.8999958, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o95 = Create("Part",{
["Parent"] = o81,
["Position"] = Vector3.new(-14.7999859, 9.89998817, 116.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 9.89998817, 116.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o96 = Create("Part",{
["Parent"] = o81,
["Position"] = Vector3.new(-14.7999859, 11.8999882, 116.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 11.8999882, 116.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o97 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-16.2999859, 6.8999958, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.2999859, 6.8999958, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o98 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-16.2999859, 8.89998817, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.2999859, 8.89998817, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o99 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-16.2999859, 10.8999882, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.2999859, 10.8999882, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o100 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-13.2999859, 12.8999882, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-13.2999859, 12.8999882, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o101 = Create("Part",{
["Parent"] = o81,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-16.2999859, 12.8999882, 116.100029),
["Rotation"] = Vector3.new(180, -0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.2999859, 12.8999882, 116.100029, 0, 1, -0, 1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o102 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-14.7999859, 13.7999907, 89.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 13.7999907, 89.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(14, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o103 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-3.29998589, 14.7999907, 112.600029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.29998589, 14.7999907, 112.600029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o104 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-8.79998589, 7.00000191, 110.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.79998589, 7.00000191, 110.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(14, 13.2000008, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o105 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-12.6339855, 5.19499779, 89.5690231),
["Rotation"] = Vector3.new(-180, -15.000001, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-12.6339855, 5.19499779, 89.5690231, 0.965925813, -0, -0.258819044, 0, -1, 0, -0.258819044, -0, -0.965925813),
["Size"] = Vector3.new(4, 9.60000038, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o106 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-4.79998589, 14.7999907, 114.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-4.79998589, 14.7999907, 114.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o107 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o108 = Create("Part",{
["Parent"] = o107,
["Position"] = Vector3.new(-7.29998589, 1.6000042, 96.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7.29998589, 1.6000042, 96.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o109 = Create("Part",{
["Parent"] = o107,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-7.29998589, 3.40000343, 96.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-7.29998589, 3.40000343, 96.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o110 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-8.79998589, 5.19999886, 88.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-8.79998589, 5.19999886, 88.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(4, 9.60000038, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o111 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-14.7999859, 19.5999966, 88.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-14.7999859, 19.5999966, 88.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(16, 19.2000008, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o112 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-4.29998589, 14.7999907, 113.100029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-4.29998589, 14.7999907, 113.100029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(1, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o113 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-9.29998589, 13.7999907, 114.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-9.29998589, 13.7999907, 114.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(7, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o114 = Create("Model",{
["Name"] = "Teleport",
["Parent"] = o1,
})
o115 = Create("Part",{
["Name"] = "tele1",
["Parent"] = o114,
["BrickColor"] = BrickColor.new("Really black"),
["Transparency"] = 0.89999997615814,
["Position"] = Vector3.new(-12.7999859, 0.600006104, 86.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-12.7999859, 0.600006104, 86.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 0.400000006, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o116 = Create("IntValue",{
["Name"] = "Enabled",
["Parent"] = o115,
["Value"] = 1,
})
o117 = Create("Script",{
["Name"] = "Teleport pad Script",
["Parent"] = o115,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--[[
INSTRUCTIONS: Place both teleporter1a and teleporter1b in the same directory
(e.g. both in workspace directly, or both directly in the same group or model)
Otherwise it wont work. Once youve done that, jump on the teleporter to teleport to the other.
If you want more than one set of teleporters I will be adding more types in the future.

Send me requests and ideas - miked.
--]]


--Enter the name of the model you want to go to here.
------------------------------------
modelname="tele2"
------------------------------------

function onTouched(part)
	if part.Parent ~= nil then
	local h = part.Parent:findFirstChild("Humanoid")
		if h~=nil then
			local teleportfrom=script.Parent.Enabled.Value
			if teleportfrom~=0 then
				if h==humanoid then
				return
				end
				local teleportto=script.Parent.Parent:findFirstChild(modelname)
				if teleportto~=nil then
					local torso = h.Parent.Torso
					local location = {teleportto.Position}
					local i = 1

					local x = location[i].x
					local y = location[i].y
					local z = location[i].z
				
					x = x + math.random(-1, 1)
					z = z + math.random(-1, 1)
					y = y + math.random(2, 3)

					local cf = torso.CFrame
					local lx = 0
					local ly = y
					local lz = 0
					
					script.Parent.Enabled.Value=0
					teleportto.Enabled.Value=0
					torso.CFrame = CFrame.new(Vector3.new(x,y,z), Vector3.new(lx,ly,lz))
					wait(3)
					script.Parent.Enabled.Value=1
					teleportto.Enabled.Value=1
				else
					print("Could not find teleporter!")
				end
			end
		end
	end
end

script.Parent.Touched:connect(onTouched)
end,o117)
end))
o118 = Create("Part",{
["Name"] = "tele2",
["Parent"] = o114,
["BrickColor"] = BrickColor.new("Really black"),
["Transparency"] = 0.89999997615814,
["Position"] = Vector3.new(-16.7999859, 0.600006104, 89.5999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(-16.7999859, 0.600006104, 89.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 0.400000006, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o119 = Create("IntValue",{
["Name"] = "Enabled",
["Parent"] = o118,
["Value"] = 1,
})
o120 = Create("Script",{
["Name"] = "Teleport pad Script",
["Parent"] = o118,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--[[
INSTRUCTIONS: Place both teleporter1a and teleporter1b in the same directory
(e.g. both in workspace directly, or both directly in the same group or model)
Otherwise it wont work. Once youve done that, jump on the teleporter to teleport to the other.
If you want more than one set of teleporters I will be adding more types in the future.

Send me requests and ideas - miked.
--]]


--Enter the name of the model you want to go to here.
------------------------------------
modelname="tele1"
------------------------------------

function onTouched(part)
	if part.Parent ~= nil then
	local h = part.Parent:findFirstChild("Humanoid")
		if h~=nil then
			local teleportfrom=script.Parent.Enabled.Value
			if teleportfrom~=0 then
				if h==humanoid then
				return
				end
				local teleportto=script.Parent.Parent:findFirstChild(modelname)
				if teleportto~=nil then
					local torso = h.Parent.Torso
					local location = {teleportto.Position}
					local i = 1

					local x = location[i].x
					local y = location[i].y
					local z = location[i].z
				
					x = x + math.random(-1, 1)
					z = z + math.random(-1, 1)
					y = y + math.random(2, 3)

					local cf = torso.CFrame
					local lx = 0
					local ly = y
					local lz = 0
					
					script.Parent.Enabled.Value=0
					teleportto.Enabled.Value=0
					torso.CFrame = CFrame.new(Vector3.new(x,y,z), Vector3.new(lx,ly,lz))
					wait(3)
					script.Parent.Enabled.Value=1
					teleportto.Enabled.Value=1
				else
					print("Could not find teleporter!")
				end
			end
		end
	end
end

script.Parent.Touched:connect(onTouched)
end,o120)
end))
o121 = Create("Humanoid",{
["Parent"] = o114,
["NameOcclusion"] = Enum.NameOcclusion.NoOcclusion,
["Health"] = 0,
["MaxHealth"] = 0,
})
o122 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-2.29998589, 14.7999907, 93.600029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.29998589, 14.7999907, 93.600029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o123 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-1.29998589, 14.7999907, 94.600029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.29998589, 14.7999907, 94.600029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o124 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-0.299985886, 14.7999907, 102.600029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.299985886, 14.7999907, 102.600029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(16, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o125 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-4.79998589, 14.7999907, 91.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-4.79998589, 14.7999907, 91.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o126 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-5.79998589, 14.7999907, 115.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.79998589, 14.7999907, 115.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o127 = Create("Model",{
["Name"] = "Table",
["Parent"] = o1,
})
o128 = Create("Part",{
["Parent"] = o127,
["Position"] = Vector3.new(-5.29998589, 1.6000042, 105.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.29998589, 1.6000042, 105.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 2.4000001, 1),
})
o129 = Create("Part",{
["Parent"] = o127,
["BrickColor"] = BrickColor.new("Bright red"),
["Position"] = Vector3.new(-5.29998589, 3.40000343, 105.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.29998589, 3.40000343, 105.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(5, 1.20000005, 5),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.768628, 0.156863, 0.109804),
})
o130 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-6.79998589, 14.7999907, 89.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-6.79998589, 14.7999907, 89.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o131 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-4.29998589, 14.7999907, 92.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-4.29998589, 14.7999907, 92.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o132 = Create("Model",{
["Name"] = "Grill",
["Parent"] = o1,
})
o133 = Create("Model",{
["Name"] = "Buttons",
["Parent"] = o132,
})
o134 = Create("Part",{
["Name"] = "Button",
["Parent"] = o133,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-5.99998283, 17.8999977, 104.600029),
["Rotation"] = Vector3.new(-90, 0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.99998283, 17.8999977, 104.600029, -0, -1, 0, -0, -0, 1, -1, -0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o135 = Create("SpecialMesh",{
["Parent"] = o134,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o136 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o134,
})
o137 = Create("Part",{
["Name"] = "Button",
["Parent"] = o133,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-5.99998283, 17.8999977, 103.100029),
["Rotation"] = Vector3.new(-90, 0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.99998283, 17.8999977, 103.100029, -0, -1, 0, -0, -0, 1, -1, -0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o138 = Create("SpecialMesh",{
["Parent"] = o137,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o139 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o137,
})
o140 = Create("Part",{
["Name"] = "Button",
["Parent"] = o133,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-5.99998283, 17.8999977, 102.100029),
["Rotation"] = Vector3.new(-90, 0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.99998283, 17.8999977, 102.100029, -0, -1, 0, -0, -0, 1, -1, -0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o141 = Create("SpecialMesh",{
["Parent"] = o140,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o142 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o140,
})
o143 = Create("Part",{
["Name"] = "Button",
["Parent"] = o133,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-5.99998283, 17.8999977, 100.600029),
["Rotation"] = Vector3.new(-90, 0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.99998283, 17.8999977, 100.600029, -0, -1, 0, -0, -0, 1, -1, -0, 0),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o144 = Create("SpecialMesh",{
["Parent"] = o143,
["Scale"] = Vector3.new(0.899999976, 1, 0.899999976),
})
o145 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o143,
})
o146 = Create("Model",{
["Name"] = "Body",
["Parent"] = o132,
})
o147 = Create("Part",{
["Name"] = "Steel",
["Parent"] = o146,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Reflectance"] = 0.10000000149012,
["Position"] = Vector3.new(-3.29998589, 15.9999828, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.29998589, 15.9999828, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 3.20000005, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o148 = Create("BlockMesh",{
["Parent"] = o147,
["Scale"] = Vector3.new(1.10000002, 1.45000005, 1),
})
o149 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o147,
})
o150 = Create("Part",{
["Name"] = "Steel",
["Parent"] = o146,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Reflectance"] = 0.10000000149012,
["Position"] = Vector3.new(-3.29998589, 17.9999981, 102.600029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.29998589, 17.9999981, 102.600029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(5, 0.800000012, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o151 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o150,
})
o152 = Create("SpecialMesh",{
["Parent"] = o150,
["Scale"] = Vector3.new(1.10000002, 1, 1),
["MeshType"] = Enum.MeshType.Brick,
})
o153 = Create("Part",{
["Name"] = "Steel",
["Parent"] = o146,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(-1.29998589, 18.5999966, 102.600029),
["Rotation"] = Vector3.new(180, -0, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.29998589, 18.5999966, 102.600029, 1, -0, -0, 0, -1, -0, 0, -0, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1, 0.400000006, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o154 = Create("BlockMesh",{
["Parent"] = o153,
["Scale"] = Vector3.new(0.600000024, 2.5999999, 0.99000001),
})
o155 = Create("Weld",{
["Name"] = "OH SNAP YOU GOT INFECTED XD XD XD",
["Parent"] = o153,
})
o156 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-5.79998589, 14.7999907, 90.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.79998589, 14.7999907, 90.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o157 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-2.29998589, 14.7999907, 111.600029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.29998589, 14.7999907, 111.600029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o158 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-1.29998589, 14.7999907, 110.600029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.29998589, 14.7999907, 110.600029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o159 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-3.29998589, 14.7999907, 92.600029),
["Rotation"] = Vector3.new(-0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.29998589, 14.7999907, 92.600029, -0, 0, 1, -0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o160 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-25.2999859, 14.7999907, 92.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-25.2999859, 14.7999907, 92.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(1, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o161 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-26.2999859, 14.7999907, 92.600029),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-26.2999859, 14.7999907, 92.600029, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o162 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-20.2999859, 13.7999907, 114.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-20.2999859, 13.7999907, 114.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(7, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o163 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-20.7999859, 13.7999907, 113.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-20.7999859, 13.7999907, 113.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(8, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o164 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-24.7999859, 14.7999907, 91.100029),
["Rotation"] = Vector3.new(180, -0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-24.7999859, 14.7999907, 91.100029, -1, 0, -0, -0, 1, -0, -0, 0, -1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o165 = Create("Part",{
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-19.7999859, 13.7999907, 115.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-19.7999859, 13.7999907, 115.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(6, 0.400000006, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o166 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-27.2999859, 14.7999907, 111.600029),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-27.2999859, 14.7999907, 111.600029, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o167 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-26.2999859, 14.7999907, 112.600029),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(-26.2999859, 14.7999907, 112.600029, 0, 0, -1, 0, 1, -0, 1, 0, -0),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o168 = Create("Part",{
["Parent"] = o1,
["Position"] = Vector3.new(-22.7999859, 14.7999907, 116.100029),
["Anchored"] = true,
["CFrame"] = CFrame.new(-22.7999859, 14.7999907, 116.100029, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Size"] = Vector3.new(2, 28.8000011, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
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