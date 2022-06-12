-- Created with Z_Vs M2S Plugin TouchTransmitter
--CFrame is calling a model not in the script
--Clipping isssues when firing bricks.
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
o1 = Create("Tool",{
["Name"] = "Noobie McNoobington",
["Parent"] = mas,
["GripPos"] = Vector3.new(0, -1.60000002, -0.150000006),
["ToolTip"] = "A cuddly little noob.",
})
o2 = Create("Part",{
["Name"] = "Handle",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright blue"),
["Position"] = Vector3.new(330.49054, 87.0765381, -126.744385),
["Rotation"] = Vector3.new(-178.779846, 36.0838814, 179.281296),
["RotVelocity"] = Vector3.new(1, 1, 1),
["Velocity"] = Vector3.new(-9.18760204, 0, 13.3689327),
["CFrame"] = CFrame.new(330.49054, 87.0765381, -126.744385, -0.808091879, -0.0101370653, 0.588969052, -1.52181243e-014, 0.999851942, 0.0172089934, -0.589056253, 0.0139064481, -0.807972252),
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0509804, 0.411765, 0.67451),
})
o3 = Create("BlockMesh",{
["Parent"] = o2,
["Scale"] = Vector3.new(0.75, 0.75, 0.75),
})
o4 = Create("Sound",{
["Name"] = "FRESHMEAT",
["Parent"] = o2,
["Pitch"] = 1.0249999761581,
["SoundId"] = "http://www.roblox.com/asset/?id=2767085",
["Volume"] = 1,
})
o5 = Create("Sound",{
["Name"] = "KABOOOOM2",
["Parent"] = o2,
["Pitch"] = 0.80000001192093,
["SoundId"] = "http://www.roblox.com/asset/?id=2101159",
["Volume"] = 1,
})
o6 = Create("Sound",{
["Name"] = "RAWR",
["Parent"] = o2,
["Pitch"] = 0,
["SoundId"] = "http://roblox.com/asset/?id=2767096",
["Volume"] = 0,
})
o7 = Create("Sound",{
["Name"] = "NOM",
["Parent"] = o2,
["SoundId"] = "http://www.roblox.com/asset/?id=189652112",
["Volume"] = 1,
})
o8 = Create("Sound",{
["Name"] = "wee",
["Parent"] = o2,
["Pitch"] = 1.0499999523163,
["SoundId"] = "http://www.roblox.com/asset/?id=4700455",
["Volume"] = 1,
})
o9 = Create("Sound",{
["Name"] = "GETOVERHERE",
["Parent"] = o2,
["Pitch"] = 0.89999997615814,
["SoundId"] = "http://www.roblox.com/asset/?id=58435367",
["Volume"] = 1,
})
o10 = Create("Sound",{
["Name"] = "KABOOOOM1",
["Parent"] = o2,
["SoundId"] = "http://www.roblox.com/asset/?id=1994345",
["Volume"] = 1,
})
o11 = Create("Sound",{
["Name"] = "SWING",
["Parent"] = o2,
["Pitch"] = 1.1000000238419,
["SoundId"] = "http://www.roblox.com/asset/?id=189505649",
["Volume"] = 1,
})
o12 = Create("Sound",{
["Name"] = "OWNED",
["Parent"] = o2,
["Pitch"] = 0.30000001192093,
["SoundId"] = "http://roblox.com/asset/?id=2801263",
["Volume"] = 0.125,
})
o13 = Create("Sound",{
["Name"] = "FULL",
["Parent"] = o2,
["Pitch"] = 0.89999997615814,
["SoundId"] = "http://www.roblox.com/asset/?id=13075805",
["Volume"] = 1,
})
o14 = Create("Sound",{
["Name"] = "OPEN1",
["Parent"] = o2,
["SoundId"] = "http://www.roblox.com/asset/?id=90869127",
["Volume"] = 1,
})
o15 = Create("Sound",{
["Name"] = "OPEN3",
["Parent"] = o2,
["Pitch"] = 1.25,
["SoundId"] = "http://www.roblox.com/asset/?id=90110171",
["Volume"] = 0,
})
o16 = Create("Sound",{
["Name"] = "OPEN2",
["Parent"] = o2,
["Pitch"] = 0,
["SoundId"] = "http://www.roblox.com/asset/?id=11450310",
["Volume"] = 0,
})
o17 = Create("Sound",{
["Name"] = "SAUCE1",
["Parent"] = o2,
["Pitch"] = 0.69999998807907,
["SoundId"] = "http://www.roblox.com/asset/?id=2697295",
["Volume"] = 1,
})
o18 = Create("Sound",{
["Name"] = "SAUCE2",
["Parent"] = o2,
["Pitch"] = 0.77499997615814,
["SoundId"] = "http://www.roblox.com/asset/?id=2697295",
["Volume"] = 1,
})
o19 = Create("Sound",{
["Name"] = "Fire",
["Parent"] = o2,
["Pitch"] = 0.85000002384186,
["SoundId"] = "http://roblox.com/asset/?id=10209776",
["Volume"] = 1,
})
o20 = Create("Sound",{
["Name"] = "Startup",
["Parent"] = o2,
["Pitch"] = 0.85000002384186,
["SoundId"] = "http://roblox.com/asset/?id=10209788",
["Volume"] = 1,
})
o21 = Create("Sound",{
["Name"] = "Winddown",
["Parent"] = o2,
["Pitch"] = 0.85000002384186,
["SoundId"] = "http://roblox.com/asset/?id=10209786",
["Volume"] = 1,
})
o22 = Create("Sound",{
["Name"] = "InitialThrust",
["Parent"] = o2,
["Pitch"] = 0.60000002384186,
["SoundId"] = "http://www.roblox.com/asset/?id=30624262",
["Volume"] = 1,
})
o23 = Create("Sound",{
["Name"] = "Thrusting",
["Parent"] = o2,
["SoundId"] = "http://www.roblox.com/asset/?id=30624426",
["Volume"] = 1,
})
o24 = Create("Sound",{
["Name"] = "Equip",
["Parent"] = o2,
["SoundId"] = "http://www.roblox.com/asset/?id=189652125",
["Volume"] = 1,
})
o25 = Create("Sound",{
["Name"] = "NOM2",
["Parent"] = o2,
["Pitch"] = 0.97079998254776,
["SoundId"] = "http://www.roblox.com/asset/?id=1390349 ",
})
o26 = Create("Sound",{
["Name"] = "NOM1",
["Parent"] = o2,
["Pitch"] = 0.76563334465027,
["SoundId"] = "http://www.roblox.com/asset/?id=41410287",
})
o28 = Create("Part",{
["Name"] = "Handle2",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.481354, 87.9005737, -126.731689),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.18036747, 0, 13.4155693),
["CFrame"] = CFrame.new(330.481354, 87.9005737, -126.731689, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o29 = Create("SpecialMesh",{
["Parent"] = o28,
["Scale"] = Vector3.new(1, 0.150000006, 0.75),
["MeshType"] = Enum.MeshType.Brick,
})
o30 = Create("Script",{
["Name"] = "Welds",
["Parent"] = o1,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait()
Tool=script.Parent

Weld=function()
	for _,v in pairs(Tool.Handle:children()) do
		if v.className=="Weld" then
			v:Remove()
		end
	end
	
	w=Instance.new("Weld")
	w.Part0=Tool.Handle
	w.Part1=Tool.Handle2
	w.C0=CFrame.new(0,.825,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.Handle
	w.Part1=Tool.Handle3
	w.C0=CFrame.new(1.125,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.Handle
	w.Part1=Tool.Handle4
	w.C0=CFrame.new(-1.125,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.Handle
	w.Part1=Tool.Handle5
	w.C0=CFrame.new(.375,-1.5,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.Handle
	w.Part1=Tool.Handle6
	w.C0=CFrame.new(-.375,-1.5,0)
	w.Parent=w.Part0

	--

	w=Instance.new("Weld")
	w.Name="CheekWeld1"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek1
	w.C0=CFrame.new(-.425,1.325,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld2"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek2
	w.C0=CFrame.new(.425,1.325,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld3"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek3
	w.C0=CFrame.new(0,1.325,.3)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeldTop"
	w.Part0=Tool.Handle
	w.Part1=Tool.Top
	w.C0=CFrame.new(0,1.675,-.0375)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld4"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek4
	w.C0=CFrame.new(0,1.4,-.3)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld5"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek5
	w.C0=CFrame.new(0,1.05,-.3)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="FaceWeld"
	w.Part0=Tool.Handle
	w.Part1=Tool.Face
	w.C0=CFrame.new(0,1.3,-.39)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld6"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek6
	w.C0=CFrame.new(0,.85,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld7"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek7
	w.C0=CFrame.new(.4,1.25,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld8"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek8
	w.C0=CFrame.new(0,1.325,.275)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld9"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek9
	w.C0=CFrame.new(-.4,1.25,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeldTop2"
	w.Part0=Tool.Handle
	w.Part1=Tool.Top2
	w.C0=CFrame.new(0,1.65,-.0375)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="ChewWeld1"
	w.Part0=Tool.Handle
	w.Part1=Tool.Chew1
	w.C0=CFrame.new(-.65,1.25,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="ChewWeld2"
	w.Part0=Tool.Handle
	w.Part1=Tool.Chew2
	w.C0=CFrame.new(.65,1.25,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Name="CheekWeld10"
	w.Part0=Tool.Handle
	w.Part1=Tool.Cheek10
	w.C0=CFrame.new(0,1.25,.8)
	w.Parent=w.Part0

end

Weld()
Tool.AncestryChanged:connect(Weld)
end,o30)
end))
o31 = Create("Part",{
["Name"] = "Handle3",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(329.581451, 87.0765381, -127.407104),
["Rotation"] = Vector3.new(-178.779846, 36.0838814, 179.281296),
["RotVelocity"] = Vector3.new(0, 0.144870773, 0),
["Velocity"] = Vector3.new(-9.28361034, 0, 13.5006351),
["CFrame"] = CFrame.new(329.581451, 87.0765381, -127.407104, -0.808091879, -0.0101370653, 0.588969052, -1.52181243e-014, 0.999851942, 0.0172089934, -0.589056253, 0.0139064481, -0.807972252),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o32 = Create("SpecialMesh",{
["Parent"] = o31,
["Scale"] = Vector3.new(0.75, 0.75, 0.75),
["MeshType"] = Enum.MeshType.Brick,
})
o33 = Create("Part",{
["Name"] = "Handle4",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(331.399658, 87.0765381, -126.081665),
["Rotation"] = Vector3.new(-178.779846, 36.0838814, 179.281296),
["RotVelocity"] = Vector3.new(0, 0.144870773, 0),
["Velocity"] = Vector3.new(-9.09159374, 0, 13.2372303),
["CFrame"] = CFrame.new(331.399658, 87.0765381, -126.081665, -0.808091879, -0.0101370653, 0.588969052, -1.52181243e-014, 0.999851942, 0.0172089934, -0.589056253, 0.0139064481, -0.807972252),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o34 = Create("SpecialMesh",{
["Parent"] = o33,
["Scale"] = Vector3.new(0.75, 0.75, 0.75),
["MeshType"] = Enum.MeshType.Brick,
})
o35 = Create("Part",{
["Name"] = "Handle5",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Br. yellowish green"),
["Position"] = Vector3.new(330.202728, 85.5767822, -126.986076),
["Rotation"] = Vector3.new(-178.779846, 36.0838814, 179.281296),
["RotVelocity"] = Vector3.new(0, 0.144870773, 0),
["Velocity"] = Vector3.new(-9.22261715, 0, 13.4106302),
["CFrame"] = CFrame.new(330.202728, 85.5767822, -126.986076, -0.808091879, -0.0101370653, 0.588969052, -1.52181243e-014, 0.999851942, 0.0172089934, -0.589056253, 0.0139064481, -0.807972252),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.643137, 0.741176, 0.278431),
})
o36 = Create("SpecialMesh",{
["Parent"] = o35,
["Scale"] = Vector3.new(0.75, 0.75, 0.75),
["MeshType"] = Enum.MeshType.Brick,
})
o37 = Create("Part",{
["Name"] = "Handle6",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Br. yellowish green"),
["Position"] = Vector3.new(330.808777, 85.5767822, -126.544312),
["Rotation"] = Vector3.new(-178.779846, 36.0838814, 179.281296),
["RotVelocity"] = Vector3.new(0, 0.144870773, 0),
["Velocity"] = Vector3.new(-9.15861702, 0, 13.3228292),
["CFrame"] = CFrame.new(330.808777, 85.5767822, -126.544312, -0.808091879, -0.0101370653, 0.588969052, -1.52181243e-014, 0.999851942, 0.0172089934, -0.589056253, 0.0139064481, -0.807972252),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.643137, 0.741176, 0.278431),
})
o38 = Create("SpecialMesh",{
["Parent"] = o37,
["Scale"] = Vector3.new(0.75, 0.75, 0.75),
["MeshType"] = Enum.MeshType.Brick,
})
o39 = Create("Part",{
["Name"] = "Cheek1",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.81955, 88.400444, -126.474121),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.13731194, 0, 13.3590374),
["CFrame"] = CFrame.new(330.81955, 88.400444, -126.474121, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o40 = Create("SpecialMesh",{
["Parent"] = o39,
["Scale"] = Vector3.new(0.150000006, 0.850000024, 0.75),
["MeshType"] = Enum.MeshType.Brick,
})
o41 = Create("Part",{
["Name"] = "Cheek2",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.13266, 88.400444, -126.974854),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.22101402, 0, 13.4738541),
["CFrame"] = CFrame.new(330.13266, 88.400444, -126.974854, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o42 = Create("SpecialMesh",{
["Parent"] = o41,
["Scale"] = Vector3.new(0.150000006, 0.850000024, 0.75),
["MeshType"] = Enum.MeshType.Brick,
})
o43 = Create("Part",{
["Name"] = "Cheek3",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.652802, 88.4058228, -126.966919),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.21968746, 0, 13.3869104),
["CFrame"] = CFrame.new(330.652802, 88.4058228, -126.966919, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o44 = Create("SpecialMesh",{
["Parent"] = o43,
["Scale"] = Vector3.new(0.75, 0.850000024, 0.150000006),
["MeshType"] = Enum.MeshType.Brick,
})
o45 = Create("Part",{
["Name"] = "Top",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.450348, 88.7497482, -126.689087),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.17324543, 0, 13.4207516),
["CFrame"] = CFrame.new(330.450348, 88.7497482, -126.689087, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o46 = Create("SpecialMesh",{
["Parent"] = o45,
["Scale"] = Vector3.new(0.925000012, 0.150000006, 0.675000012),
["MeshType"] = Enum.MeshType.Brick,
})
o47 = Create("Part",{
["Name"] = "Cheek4",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.298645, 88.4700928, -126.480957),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.13845539, 0, 13.4461126),
["CFrame"] = CFrame.new(330.298645, 88.4700928, -126.480957, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o48 = Create("SpecialMesh",{
["Parent"] = o47,
["Scale"] = Vector3.new(0.75, 0.425000012, 0.150000006),
["MeshType"] = Enum.MeshType.Brick,
})
o49 = Create("Part",{
["Name"] = "Cheek5",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.302307, 88.1201782, -126.486076),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.13931179, 0, 13.4454994),
["CFrame"] = CFrame.new(330.302307, 88.1201782, -126.486076, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o50 = Create("SpecialMesh",{
["Parent"] = o49,
["Scale"] = Vector3.new(0.725000024, 0.310000002, 0.150000006),
["MeshType"] = Enum.MeshType.Brick,
})
o51 = Create("Part",{
["Name"] = "Face",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(330.246674, 88.3685303, -126.40966),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.12653828, 0, 13.4547977),
["CFrame"] = CFrame.new(330.246674, 88.3685303, -126.40966, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o52 = Create("SpecialMesh",{
["Parent"] = o51,
["Scale"] = Vector3.new(1, 1, 0.00200000009),
["MeshType"] = Enum.MeshType.Brick,
})
o53 = Create("Decal",{
["Parent"] = o51,
["Texture"] = "http://www.roblox.com/asset/?id=8056256",
})
o54 = Create("IntValue",{
["Name"] = "Nom",
["Parent"] = o1,
["Value"] = 204,
})
o55 = Create("LocalScript",{
["Parent"] = o1,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Saz
--Based off of Mario's Castle Collab 1/2

--My finest creation

wait(2)

Tool=script.Parent
Scaling=0

Chewing=false
canScale=true

OnlyEyes="http://www.roblox.com/asset/?id=98704326"
MouthToo="http://www.roblox.com/asset/?id=8056256"

BESTSIZE=0

permobjects={}

updateScaling=function() --updates the mouth.

	if canScale==false then return end

	Lol=Scaling/6

	Tool.Handle2.Mesh.Scale=Vector3.new(1, 0.15, 0.75) + Vector3.new(Lol/10*2.5, 0, 0)
	Tool.Cheek6.Mesh.Scale=Vector3.new(0.85, 0.15, 0.6) + Vector3.new(Lol/10*2.5, 0, 0)

	Tool.Cheek1.Mesh.Scale=Vector3.new(0.15, 0.85, 0.75) + Vector3.new(0, Lol, 0)
	Tool.Handle.CheekWeld1.C0=CFrame.new(-.425,1.325,0) * CFrame.new(-Lol/20*2.5, Lol/2, 0)
	Tool.Cheek9.Mesh.Scale=Vector3.new(0.15, 0.7, 0.6) + Vector3.new(0, Lol, 0)
	Tool.Handle.CheekWeld9.C0=CFrame.new(-.4,1.25,0) * CFrame.new(-Lol/20*2.5, Lol/2, 0)

	Tool.Cheek2.Mesh.Scale=Vector3.new(0.15, 0.85, 0.75) + Vector3.new(0, Lol, 0)
	Tool.Handle.CheekWeld2.C0=CFrame.new(.425,1.325,0) * CFrame.new(Lol/20*2.5, Lol/2, 0)
	Tool.Cheek7.Mesh.Scale=Vector3.new(0.15, 0.7, 0.6) + Vector3.new(0, Lol, 0)
	Tool.Handle.CheekWeld7.C0=CFrame.new(.4,1.25,0) * CFrame.new(Lol/20*2.5, Lol/2, 0)


	Tool.Top.Mesh.Scale=Vector3.new(0.925, 0.15, 0.675) + Vector3.new(Lol/10*2.5, 0, 0)
	Tool.Handle.CheekWeldTop.C0=CFrame.new(0,1.675,-.0375) * CFrame.new(0, Lol, 0)
	Tool.Top2.Mesh.Scale=Vector3.new(0.9, 0.15, 0.65) + Vector3.new(Lol/10*2.5, 0, 0)
	Tool.Handle.CheekWeldTop2.C0=CFrame.new(0,1.65,-.0375) * CFrame.new(0, Lol, 0)

	Tool.Cheek3.Mesh.Scale=Vector3.new(0.75, 0.85, 0.15) + Vector3.new(Lol/10*2.5, Lol, 0)
	Tool.Handle.CheekWeld3.C0=CFrame.new(0,1.325,.3) * CFrame.new(0, Lol/2, 0)

	Tool.Cheek8.Mesh.Scale=Vector3.new(0.75, 0.84, 0.15) + Vector3.new(Lol/10*2.5, Lol, 0)
	Tool.Handle.CheekWeld8.C0=CFrame.new(0,1.325,.275) * CFrame.new(0, Lol/2, 0)


	Tool.Handle.FaceWeld.C0=CFrame.new(0,1.3,-.39) * CFrame.new(0, Lol/1.01, 0)

	Tool.Cheek4.Mesh.Scale=Vector3.new(0.75, 0.425, 0.15) + Vector3.new(Lol/10*2.5, Lol/40, 0)
	Tool.Handle.CheekWeld4.C0=CFrame.new(0,1.4,-.3) * CFrame.new(0, Lol, 0)

	Tool.Cheek10.Mesh.Scale=Vector3.new(1,1,1) + Vector3.new(Lol/10*2.5, Lol, BESTSIZE/10)
	Tool.Handle.CheekWeld10.C0=CFrame.new(0,1.25,.8) * CFrame.new(0, Lol/2, BESTSIZE/20)

	if Scaling>0 then
		Tool.Face.Decal.Texture=OnlyEyes
		Tool.Cheek5.Transparency=1
	else
		Tool.Face.Decal.Texture=MouthToo
		Tool.Cheek5.Transparency=0
	end

	if BESTSIZE>0 then
		Tool.Cheek10.Transparency=0
	else
		Tool.Cheek10.Transparency=1
	end

end

Chew=function() --nomnom

	Chewing=true

	start=0
	Tool.Chew1.Transparency=0
	Tool.Chew2.Transparency=0


	for lol=1, 3 do
		
		Tool.Handle.NOM1:Play()
		Tool.Handle.NOM2:Play()

			if math.random(1,3)~=1 then

				Tool.Handle.NOM1.Pitch=.7625 + math.random(-700,150)/15000
				Tool.Handle.NOM2.Pitch=1 + math.random(-700,150)/15000

			else

				Tool.Handle.NOM1.Pitch=.8
				Tool.Handle.NOM2.Pitch=.95

			end

		for i=1, 6 do

			Scaling=0-i/3

			Tool.Chew2.Mesh.Scale=Vector3.new(0.5, 0.65, 0.5) - Vector3.new(Scaling,Scaling/5,Scaling)/4
			Tool.Handle.ChewWeld2.C0=CFrame.new(.5,1.15,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0, 0, -Scaling/150)

			Tool.Chew1.Mesh.Scale=Vector3.new(0.5, 0.65, 0.5) - Vector3.new(Scaling,Scaling/5,Scaling)/4
			Tool.Handle.ChewWeld1.C0=CFrame.new(-.5,1.15,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0, 0, -Scaling/150)

			wait()
		end
		for i=1, 5 do
			Scaling=-(5/3)+i/3

			Tool.Chew2.Mesh.Scale=Vector3.new(0.5, 0.65, 0.5) - Vector3.new(Scaling,Scaling/5,Scaling)/4
			Tool.Handle.ChewWeld2.C0=CFrame.new(.5,1.15,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0, 0, -Scaling/150)

			Tool.Chew1.Mesh.Scale=Vector3.new(0.5, 0.65, 0.5) - Vector3.new(Scaling,Scaling/5,Scaling)/4
			Tool.Handle.ChewWeld1.C0=CFrame.new(-.5,1.15,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0, 0, -Scaling/150)

			wait()
		end
	end
	Tool.Chew1.Transparency=1
	Tool.Chew2.Transparency=1

	if Tool.Nom.Value>300 then Tool.Nom.Value=300 Tool.Handle.FULL:Play() end

	Chewing=false

end

EatObject=function(Object) --Attempts to eat the object, annihilate it and gain charges.

end
Attackdeb=true

GetNearParts=function(Model)
	local pen={}
	for __,vv in pairs(Model:children()) do
		if vv.className=="Model" then
			for ___,vvv in pairs(GetNearParts(vv)) do
				table.insert(pen,vvv)
			end
		elseif vv:IsA("BasePart") then
			table.insert(pen,vv)
		end
	end
	return pen
end

Attack=function() --Click and hold readies the noob; releasing swings it.

	if Tool.Nom.Value<300 then

	if Attackdeb==false then return end
	if Chewing==true then return end

	arm=Tool.Parent.Torso:FindFirstChild([[Right Shoulder]])

	if arm==nil then print("FUUUUUUUUUU") return end

	holdi=1
	Waiting=true
	Attackdeb=false

	co=arm.C0
	c1=arm.Part1["RightGrip"].C0

	Tool.Handle.SAUCE2:Play()
	Tool.Handle.SAUCE1:Play()

	for i=1, 5 do

		Scaling=-i/2

		wait()

	end

	Tool.Handle.OPEN1:Play()
	Tool.Handle.OPEN2:Play()
	Tool.Handle.OPEN3:Play()

	for i=1, 10 do --must be held for the full 20, or moot.
		if Waiting==false then break end

		Scaling=10*i

		arm.C0=arm.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/1.75/10)

		arm.Part1["RightGrip"].C0=arm.Part1["RightGrip"].C0*CFrame.fromEulerAnglesXYZ(-math.pi/45*2,0,0)

		wait()

		holdi=i*2

	end

	while Waiting==true do
		wait()
	end

	if holdi==20 then --fully charged

		Tool.Parent.Torso.Anchored=true
		gg=Instance.new("BodyGyro") --no re
		gg.P=7000
		gg.D=500
		gg.maxTorque=Vector3.new(500000,500000,500000)*500000000000000000000000000000
		gg.cframe=Tool.Parent.Torso.CFrame

		gp=Instance.new("BodyPosition")
		gp.P=5000
		gp.maxForce=Vector3.new(50000,50000,50000)*500000000000
		gp.position=Tool.Parent.Torso.CFrame.p
		gp.Parent=Tool.Parent.Torso
		gg.Parent=Tool.Parent.Torso

		Tool.Handle.SWING:Play()

		didGrab=false

		objects={}
		players={}

		for i=1, 6 do
			arm.C0=arm.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/2.25/5)
			arm.Part1["RightGrip"].C0=arm.Part1["RightGrip"].C0*CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)

			dir=(Tool.Handle.Position-Tool.Handle2.Position).unit
			for peni=-2, 2 do
			hit,loc=workspace:FindPartOnRay(Ray.new(Tool.Handle2.Position+(Tool.Parent["Right Arm"].Position-Tool.Parent.Torso.Position).unit*peni+Tool.Handle.CFrame.lookVector*2.4,-dir*30),Tool.Parent)
			if hit~=nil and #objects<=12 then
				if hit.Parent~=nil then
					h=hit.Parent:FindFirstChild("Humanoid")
					if h~=nil and hit.Parent~=Tool.Parent then

						h.Parent.Head.Transparency=1

						table.insert(permobjects,hit:clone())
						table.insert(permobjects,h.Parent.Head:clone())

						h.PlatformStand=true
						table.insert(players,h.Parent)
						ww=Instance.new("Weld")
						ww.Part0=Tool.Cheek3
						ww.C0=CFrame.new(0,1.5,1)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
						ww.Part1=h.Parent.Head
						ww.Parent=ww.Part1

						ww.Name="lolowned"

						Tool.Handle.GETOVERHERE:Play()

								if BESTSIZE < 8 then
									BESTSIZE = 8
								end

					else

						for _,v in pairs(GetNearParts(hit.Parent)) do
							if v:GetMass()<=180 and v.Parent~=Tool.Parent and v.Parent~=Tool and (v.Position-hit.Position).magnitude<=7 then
								table.insert(objects,v)

								if BESTSIZE < v:GetMass() then
									BESTSIZE = v:GetMass()
								end

								table.insert(permobjects,v:clone())
								x=Instance.new("BodyForce") x.force=Vector3.new(0,v:GetMass(),0) x.Parent=v

								for __,vv in pairs(v:children()) do
									hasmesh=false
									if vv:IsA("DataModelMesh") then
										vv.Scale=vv.Scale
										hasmesh=true
										print("LOL")
									end
									if hasmesh==false then --give it one
										m=Instance.new("SpecialMesh") m.MeshType="Brick" m.Scale=Vector3.new(v.Size.x,v.Size.y,v.Size.z) m.Parent=v
									end
								end

								v.Size=Vector3.new(1,1,1)

								v:BreakJoints()
								v.CanCollide=false
								v.Anchored=false

								v:BreakJoints()
								v.CanCollide=false
								v.Anchored=false

								v.CFrame=Tool.Cheek3.CFrame

								ww=Instance.new("Weld")
								ww.Part0=Tool.Cheek3
								ww.C0=CFrame.new(math.random(-10,10)/100,math.random(-50,50)/10,math.random(-10,10)/10)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),0)
								ww.Part1=v
								ww.Parent=ww.Part1

								ww.Name="lolowned"

								x=Instance.new("BodyForce") x.force=Vector3.new(0,v:GetMass()*186,0) x.Parent=v

								ss=Tool.Handle.OWNED:clone() ss.Pitch=.7 - v:GetMass()/70 ss.Parent=v ss:Play()

							end
						end

					end
				else --single part
					if hit:GetMass()<=220 then

						table.insert(permobjects,hit)
						table.insert(objects,hit)
		
						hit:BreakJoints()
						hit.CanCollide=false
						hit.Anchored=false

						x=Instance.new("BodyForce") x.force=Vector3.new(0,hit:GetMass()*186,0) x.Parent=hit

						hit.CFrame=Tool.Cheek3.CFrame

						ww=Instance.new("Weld")
						ww.Part0=Tool.Cheek3
						ww.C0=CFrame.new(math.random(-10,10)/100,math.random(-10,10)/10,math.random(-10,10)/10)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),0)
						ww.Part1=hit
						ww.Parent=ww.Part1

						ww.Name="lolowned"
					end
				end
			end
			end
			wait()
		end
		if #objects>0 or #players>0 then
		Tool.Handle.NOM:Play()
		end
		wait(.2)

		for _,v in pairs(objects) do
			ss=Tool.Handle.OWNED:clone() ss.Pitch=.6 - v:GetMass()/60 ss.Parent=v ss:Play() ss.Volume=ss.Volume+.2
		end

		for i=1, 3 do

			Tool.Parent.Torso.CFrame=gg.cframe

			BESTSIZE=BESTSIZE/3

			for _,v in pairs(objects) do
				hasmesh=false
				for __,vv in pairs(v:children()) do
					if vv:IsA("DataModelMesh") then
						vv.Scale=vv.Scale/2
						hasmesh=true
					end
				end
				if hasmesh==false then --give it one
					print("AAAAA")
					m=Instance.new("SpecialMesh") m.MeshType="Brick" m.Scale=Vector3.new(.9,.9,.9) m.Parent=v
				end
			end

			for _,v in pairs(players) do
				if v:FindFirstChild("Humanoid")~=nil then
					v.Humanoid.PlatformStand=true
				end
			end
				
			Scaling=Scaling-33.33

			arm.Part1["RightGrip"].C0=arm.Part1["RightGrip"].C0*CFrame.fromEulerAnglesXYZ(math.pi/16,0,0)

			wait()
		end

		Tool.Parent.Torso.Anchored=false

		num=0
		if #objects>0 or #players>0 then
			for _,v in pairs(objects) do

				

				num=num+(v:GetMass()*2)
				v:Remove() --lolgone
			end
			for _,v in pairs(players) do
				num=num+40
				v.Torso:BreakJoints()
				for __,vv in pairs(v:children()) do
					if vv.className=="Part" then
						coroutine.resume(coroutine.create(function(p) p.Transparency=1 wait(.1) p:Remove() end),vv)
					end
				end
			end
			Tool.Nom.Value=Tool.Nom.Value+math.floor(num)
			BESTSIZE=0
			Scaling=0

			Chew()

			for i=1, holdi/2 do
				arm.C0=arm.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/2.25/100/2)
				arm.Part1["RightGrip"].C0=arm.Part1["RightGrip"].C0*CFrame.fromEulerAnglesXYZ(math.pi/40,0,0)

				wait()
			end

			arm.Part1["RightGrip"].C0=c1
			arm.C0=co

		end
		BestSize=0
		print(num)

		Tool.Parent.Torso.Anchored=false
		gp.Parent=nil
		gg.Parent=nil

	else --nope

		for i=1, holdi do
			arm.C0=arm.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/1.75/20)
			Scaling=Scaling-5
			arm.Part1["RightGrip"].C0=arm.Part1["RightGrip"].C0*CFrame.fromEulerAnglesXYZ(math.pi/45,0,0)
			wait()
		end

	end
	arm.Part1["RightGrip"].C0=c1
	Attackdeb=true
	arm.C0=co
	Scaling=0

	else

		Attackdeb=true
		secondary()

	end
	
end

Tool.Activated:connect(Attack)
Tool.Deactivated:connect(function() Waiting=false end)

secondary=function()

	if Chewing==true or Attackdeb==false or Tool.Nom.Value<50 or #permobjects<0 then return end
	Attackdeb=false


		gg=Instance.new("BodyGyro") --no re
		gg.P=7000
		gg.D=500
		gg.maxTorque=Vector3.new(500000,500000,500000)*500000000000000000000000000000
		gg.cframe=Tool.Parent.Torso.CFrame

		gp=Instance.new("BodyPosition")
		gp.P=5000
		gp.maxForce=Vector3.new(50000,50000,50000)*500000000000
		gp.position=Tool.Parent.Torso.CFrame.p
		gp.Parent=Tool.Parent.Torso
		gg.Parent=Tool.Parent.Torso


	tofire={}
	x=Tool.Nom.Value/4
	if #permobjects<Tool.Nom.Value/3 then x=#permobjects end
	while (#tofire<x)do
		for _,v in pairs(permobjects) do
			if math.random(1,6)==1 and v:FindFirstChild("AAAA")==nil then
				table.insert(tofire,v)
				p=Instance.new("ObjectValue") p.Name="AAAA" p.Value=game.Players:GetPlayerFromCharacter(Tool.Parent) p.Parent=v
			end
		end
	end

	Tool.Handle.Startup:Play()

	lolpos=Tool.Parent.Humanoid.TargetPoint

	for i=1, 8 do
		Scaling=Scaling+10
		wait()
	end

	wait(.5)

	Tool.Handle.Startup:Stop()
	Tool.Handle.Fire:Play()

	firing={}
	for _,v in pairs(tofire) do

		LOL=v:clone()
		LOL.CFrame=Tool.Cheek3.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-5,5),0,math.random(-5,5))
		LOL.CanCollide=true
		LOL.Anchored=false
		LOL.Parent=workspace
		vv=Instance.new("BodyVelocity")
		vv.Parent=LOL
		vv.P=6000
		vv.maxForce=Vector3.new(50000000000,50000000000,50000000000)*5000
		vv.velocity=Tool.Handle.CFrame.lookVector*200+Vector3.new(math.random(-10,10),math.random(-5,5),math.random(-10,10))
		game:GetService("Debris"):AddItem(vv,.33)
		game:GetService("Debris"):AddItem(LOL,15)

		wait(.075)

	end

	Tool.Handle.Fire:Stop()

	wait(.25)

	Tool.Handle.Winddown:Play()

	for i=1, 8 do
		Scaling=Scaling-10
		wait()
	end
		
	gp.Parent=nil
	gg.Parent=nil
	permobjects={}

	Scaling=0

	if Tool.Nom.Value==300 then --Yay
		canScale=false
		Noob=Instance.new("Model")
		Noob.Name="Tactical FUUUUUU"
		for _,v in pairs(Tool:children()) do
			lol=v:clone() if lol.className=="Part" then lol.CanCollide=false end lol.Parent=Noob
			if v.className=="Part" then v.Transparency=1 end
		end

		Noob.Parent=workspace
		
		wait(.1)

		smoke=Instance.new("Smoke")
		smoke.Color=Color3.new(.8,.8,.8)
		smoke.RiseVelocity=-5
		smoke.Parent=Noob.Handle
		smoke.Opacity=.4
		smoke.Size=2

		smoke2=Instance.new("Fire")
		smoke2.Heat=-8
		smoke2.Parent=Noob.Handle
		smoke2.Enabled=false
		
		Noob.Handle.InitialThrust:Play()
		move=Instance.new("BodyVelocity")
		move.P=6000
		move.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		move.velocity=Vector3.new(0,-5,0)
		move.Parent=smoke.Parent

		firecols={BrickColor:Red(),BrickColor.new("Bright orange"),BrickColor.new("Pastel yellow"),BrickColor.new("Bright yellow")}

		for i=1, 130 do
			wait(.03)
			move.velocity=move.velocity+Vector3.new(0,.52*(i/5),0)
			Noob.Handle.Thrusting.Pitch=1+i/50
			if i>10 then
				smoke2.Enabled=true

				if i/2==math.floor(i/2) then

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=firecols[math.random(1,4)]
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=Noob.Handle.CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(5,5,5)
				p.Parent=Noob
				coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/1000,math.random(-100,100)/1000,math.random(-100,100)/1000) p.Mesh.Scale=p.Mesh.Scale-Vector3.new(1/15,1/15,1/15) wait() end p.BrickColor=BrickColor.new("Medium stone grey") for i=1, 40 do p.Transparency=i/40 p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)-Vector3.new(0,.1,0) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(8/30,8/30,8/30) wait() end p:Remove() end),p)
				end

			end
			if i/10==math.floor(i/10) then
				Noob.Handle.Thrusting:Play()
			end

		end

		Noob.Handle.CFrame=CFrame.new(lolpos+Vector3.new(math.random(-9,9)*160,1100,math.random(-9,9)*160),lolpos)
		Noob.Handle.Anchored=true

		move.velocity=(Noob.Handle.Position-lolpos).unit*-320

		wait(6)

		Tool.Script.DoGui.Value=true

		Tool.Ohgodno:Play()

		elap=0
		Noob.Handle.Anchored=false

		yeeh=false

		while (elap<300 and (Noob.Handle.Position-lolpos).magnitude>=30) do
			wait(.03)

			if (Noob.Handle.Position-lolpos).magnitude<=300 and yeeh==false then yeeh=true Noob.Handle.wee:Play() Noob.Handle.KABOOOOM2:Play() end

			if elap/2==math.floor(elap/2) then

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=firecols[math.random(1,4)]
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=Noob.Handle.CFrame*CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(8,8,8)
				p.Parent=Noob
				coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/1000,math.random(-100,100)/1000,math.random(-100,100)/1000) p.Mesh.Scale=p.Mesh.Scale-Vector3.new(1/15,1/15,1/15) wait() end p.BrickColor=BrickColor.new("Medium stone grey") for i=1, 10 do p.Transparency=i/10 p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(3/40,3/40,3/40) wait() end p:Remove() end),p)

			end

			if elap/5==math.floor(elap/5) then
				Noob.Handle.Thrusting:Play()
			end

			elap=elap+1

		end

		wait(.25)

		Tool.Script.DoGui.Value=false

		Tool.Ohgodno:Stop()

		Noob.Handle.CFrame=CFrame.new(lolpos)
		Noob.Handle.Anchored=true
		Noob.Handle.Transparency=1
		s=script.NuclearBomb:clone()
		s.Disabled=false
		s.Parent=Noob.Handle

		for _,v in pairs(Tool:children()) do
			if v.className=="Part" and v.Name~="Face" and v.Name~="Cheek10" and string.sub(v.Name,1,4)~="Chew" then v.Transparency=0 end
		end

		Tool.Ohgodno:Stop()

		wait(10)

		Noob:Remove()

	end

	canScale=true

	Tool.Nom.Value=0

	Attackdeb=true

end

eql=function(mouse)
	Tool.Handle.Equip:Play()
	mouse.KeyDown:connect(function(key) if key=="z" then secondary() end end)
end
Tool.Equipped:connect(eql)

c=-1
while true do
	if Tool.Handle:FindFirstChild("CheekWeld1")~=nil then
		updateScaling()
	end
	wait()
end
end,o55)
end))
o56 = Create("ScreenGui",{
["Name"] = "DEATHGUI",
["Parent"] = o55,
})
o57 = Create("ImageLabel",{
["Parent"] = o56,
["Transparency"] = 1,
["Position"] = UDim2.new(0.3125,0,0.20000000298023,0),
["Size"] = UDim2.new(0.050000000745058,0,0.050000000745058,0),
["BackgroundTransparency"] = 1,
["SizeConstraint"] = Enum.SizeConstraint.RelativeXX,
["Image"] = "http://www.roblox.com/asset/?id=26533945",
})
o58 = Create("Frame",{
["Parent"] = o56,
["Transparency"] = 0.73750001192093,
["Position"] = UDim2.new(-0.5,0,-0.5,0),
["Size"] = UDim2.new(2,0,2,0),
["BackgroundColor3"] = Color3.new(1, 0, 0),
["BackgroundTransparency"] = 0.73750001192093,
["ZIndex"] = 10,
})
o59 = Create("TextLabel",{
["Parent"] = o56,
["Position"] = UDim2.new(0.5,0,0.25,0),
["Text"] = "WARNING: TACTICAL NOOB INBOUND",
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size14,
["TextColor3"] = Color3.new(1, 0, 0),
["TextStrokeColor3"] = Color3.new(0.8, 0, 0),
["TextStrokeTransparency"] = 0.94999998807907,
["TextTransparency"] = 0.73750001192093,
})
o60 = Create("ImageLabel",{
["Parent"] = o56,
["Transparency"] = 1,
["Position"] = UDim2.new(0.63749998807907,0,0.20000001788139,0),
["Size"] = UDim2.new(0.050000000745058,0,0.050000000745058,0),
["BackgroundTransparency"] = 1,
["SizeConstraint"] = Enum.SizeConstraint.RelativeXX,
["Image"] = "http://www.roblox.com/asset/?id=26533945",
})
o61 = Create("Script",{
["Parent"] = o56,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait()
while true do
	for i=1, 20 do
		script.Parent.TextLabel.TextTransparency=.75-i/80
		script.Parent.TextLabel.TextStrokeTransparency=1-i/40
		script.Parent.Frame.BackgroundTransparency=.75-i/80
		wait()
	end
	for i=1, 20 do
		script.Parent.TextLabel.TextTransparency=.5+i/80
		script.Parent.TextLabel.TextStrokeTransparency=i/20
		script.Parent.Frame.BackgroundTransparency=.5+i/80
		wait()
	end
end
end,o61)
end))
o62 = Create("Script",{
["Name"] = "NuclearBomb",
["Parent"] = o55,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(.2)
d=true
Asplode=function()
	if d==false then return end
	d=false
	for _,v in pairs(game.Players:children()) do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Torso")~=nil then
				if (v.Character.Torso.Position-script.Parent.Position).magnitude<=800 then
					s=script.ScreenGui:clone()
					s.Frame.Script.Disabled=false
					s.Parent=v.PlayerGui
					s=script.ScreenGui2:clone()
					s.Frame.Script.Disabled=false
					s.Parent=v.PlayerGui
				end
			end
		end
	end
	ex=Instance.new("Explosion")
	ex.BlastRadius=40
	ex.BlastPressure=ex.BlastPressure*1.5
	ex.Position=script.Parent.Position
	ex.Parent=workspace
	p=Instance.new("Part")
	p.TopSurface=0
	p.BottomSurface=0
	p.formFactor="Symmetric"
	p.BrickColor=BrickColor.new("Cool yellow")
	p.Size=Vector3.new(1,1,1)
	p.Anchored=true
	p.CanCollide=false
	p.Name="Blast"
	p.CFrame=CFrame.new(script.Parent.Position-Vector3.new(0,3,0))
	p.Parent=workspace
	s=script.Asplosion:clone()
	s.Disabled=false
	s.Parent=p
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Scale=Vector3.new(5,5,5)
	m.Parent=p
	p.CanCollide=false
	script.Parent.Transparency=1
	script.Parent.Anchored=true
end
Asplode()

end,o62)
end))
o63 = Create("Script",{
["Name"] = "Asplosion",
["Parent"] = o62,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(.05)

s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=2101159"
s.Pitch=.37555
s.Name="Kaboom"
s.Volume=1
s.Parent=workspace

wait(.05)

s:Play()

c=script.Parent.CFrame

GetHumans=function()
	Chars={}
	Things=workspace:GetChildren()
	for ii,v in pairs(Things) do
		if v.className=="Model" then
			Human=v:FindFirstChild("Humanoid")
			PTorso=v:FindFirstChild("Torso")
			vv=game.Players:GetPlayerFromCharacter(v)
			if Human~=nil and PTorso~=nil then
				table.insert(Chars,PTorso)
			end
		end
	end
	return Chars
end

for i=1, 70 do

				local p=Instance.new("Part")
				p2=Instance.new("Smoke")
				p2.Color=Color3.new(.75,.7554,.7895)
				p2.Size=20
				p2.Opacity=.8
				p2.RiseVelocity=10
				p2.Parent=p
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.Transparency=1
				p.CFrame=CFrame.new(script.Parent.Position,script.Parent.Position+Vector3.new(math.cos(90/70*i),0,math.sin(90/70*i)))*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
				p.Parent=workspace
				coroutine.resume(coroutine.create(function(p) for i=1, 140 do p.CFrame=p.CFrame*CFrame.new(0,6,0) wait() end p.Smoke.Enabled=false wait(5) p:Remove() end),p)
				game:GetService("Debris"):AddItem(p,25)

end

cc=game.Lighting.Brightness
game.Lighting.Brightness=game.Lighting.Brightness+3

for i=1, 100 do
	game.Lighting.Brightness=game.Lighting.Brightness-.01825
	script.Parent.Transparency=script.Parent.Transparency+1/100
	script.Parent.Size=script.Parent.Size+Vector3.new(4,4,4)
	script.Parent.CFrame=c

	for _,v in pairs(game.Players:children()) do
		s=script.LocalScript:clone() s.Disabled=false s.Parent=v.PlayerGui
	end

	noobs=GetHumans()

	for _,v in pairs(noobs) do

		Dist=(v.Position-script.Parent.Position).magnitude
		if Dist<script.Parent.Size.x*5 / 1.65 then
			v:BreakJoints()
		end

		Base=120
		Size=script.Parent.Size.x / 50
		Calc=(Base/Size - Dist/10) + 10
		if Calc<0 then Calc=1 end

		if i>=25 then

		for lolol,poo in pairs(v:children()) do

			vv=Instance.new("BodyVelocity")
			vv.P=4000
			vv.maxForce=Vector3.new(50000000000,0,50000000000)
			vv.velocity=(v.Position-script.Parent.Position).unit*(Calc+6)
			vv.Parent=poo
			game:GetService("Debris"):AddItem(vv,.25)

		end

		end

	end

	wait()
end

game.Lighting.Brightness=cc

wait(2)

script.Parent.Parent=nil

end,o63)
end))
o64 = Create("LocalScript",{
["Parent"] = o63,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(.05)
cam=workspace.CurrentCamera
cam.CoordinateFrame=cam.CoordinateFrame*CFrame.new(math.random(-50,50)/1000,math.random(-50,50)/100,math.random(-50,50)/100)*CFrame.fromEulerAnglesXYZ(math.random(-5,5)/10,math.random(-5,5)/10,math.random(-5,5)/10)
script:Remove()
end,o64)
end))
o65 = Create("ScreenGui",{
["Parent"] = o62,
})
o66 = Create("Frame",{
["Parent"] = o65,
["Transparency"] = 1,
["Position"] = UDim2.new(-0.5,0,-0.5,0),
["Size"] = UDim2.new(3,0,3,0),
["BackgroundColor3"] = Color3.new(1, 1, 0.941177),
["BackgroundTransparency"] = 1,
["BorderColor3"] = Color3.new(1, 1, 1),
})
o67 = Create("Script",{
["Parent"] = o66,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(.2)

frame=script.Parent
for i=1, 10 do
	frame.BackgroundTransparency=1-i*.1
	wait()
end
wait(.25)
for i=1, 200 do
	frame.BackgroundTransparency=i/200
	wait()
end
script.Parent.Parent:Remove()

end,o67)
end))
o68 = Create("ScreenGui",{
["Name"] = "ScreenGui2",
["Parent"] = o62,
})
o69 = Create("Frame",{
["Parent"] = o68,
["Transparency"] = 0.625,
["Position"] = UDim2.new(-0.5,0,-0.5,0),
["Size"] = UDim2.new(3,0,3,0),
["BackgroundColor3"] = Color3.new(1, 1, 0.6),
["BackgroundTransparency"] = 0.625,
["BorderColor3"] = Color3.new(1, 1, 1),
})
o70 = Create("Script",{
["Parent"] = o69,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(.1)
for i=1, 100 do
	wait()
end
script.Parent.Parent:Remove()

end,o70)
end))
o71 = Create("Part",{
["Name"] = "Cheek6",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.125,
["Position"] = Vector3.new(330.481079, 87.9255371, -126.731323),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.18030548, 0, 13.4156132),
["CFrame"] = CFrame.new(330.481079, 87.9255371, -126.731323, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o72 = Create("SpecialMesh",{
["Parent"] = o71,
["Scale"] = Vector3.new(0.850000024, 0.150000006, 0.600000024),
["MeshType"] = Enum.MeshType.Brick,
})
o73 = Create("Part",{
["Name"] = "Cheek7",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.125,
["Position"] = Vector3.new(330.153656, 88.3255005, -126.961182),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.21872902, 0, 13.4703465),
["CFrame"] = CFrame.new(330.153656, 88.3255005, -126.961182, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o74 = Create("SpecialMesh",{
["Parent"] = o73,
["Scale"] = Vector3.new(0.150000006, 0.699999988, 0.600000024),
["MeshType"] = Enum.MeshType.Brick,
})
o75 = Create("Part",{
["Name"] = "Cheek8",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.125,
["Position"] = Vector3.new(330.638062, 88.4053955, -126.946655),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.21630001, 0, 13.3893719),
["CFrame"] = CFrame.new(330.638062, 88.4053955, -126.946655, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o76 = Create("SpecialMesh",{
["Parent"] = o75,
["Scale"] = Vector3.new(0.75, 0.839999974, 0.150000006),
["MeshType"] = Enum.MeshType.Brick,
})
o77 = Create("Part",{
["Name"] = "Cheek9",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.125,
["Position"] = Vector3.new(330.80011, 88.3255005, -126.489868),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.13994408, 0, 13.3622828),
["CFrame"] = CFrame.new(330.80011, 88.3255005, -126.489868, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o78 = Create("SpecialMesh",{
["Parent"] = o77,
["Scale"] = Vector3.new(0.150000006, 0.699999988, 0.600000024),
["MeshType"] = Enum.MeshType.Brick,
})
o79 = Create("Part",{
["Name"] = "Top2",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(330.450623, 88.7247314, -126.689453),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.17330647, 0, 13.4207077),
["CFrame"] = CFrame.new(330.450623, 88.7247314, -126.689453, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o80 = Create("SpecialMesh",{
["Parent"] = o79,
["Scale"] = Vector3.new(0.899999976, 0.150000006, 0.649999976),
["MeshType"] = Enum.MeshType.Brick,
})
o81 = Create("Part",{
["Name"] = "Chew1",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Transparency"] = 1,
["Position"] = Vector3.new(330.881989, 88.2255249, -126.432495),
["Rotation"] = Vector3.new(90.8242798, 0.600809634, -143.914261),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.13035393, 0, 13.3485985),
["CFrame"] = CFrame.new(330.881989, 88.2255249, -126.432495, -0.808091879, 0.588962913, 0.0104859145, -1.50948132e-014, 0.0178012121, -0.999841571, -0.589056253, -0.807963848, -0.0143850138),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o82 = Create("CylinderMesh",{
["Parent"] = o81,
["Scale"] = Vector3.new(0.5, 0.649999976, 0.5),
})
o83 = Create("Part",{
["Name"] = "Chew2",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Transparency"] = 1,
["Position"] = Vector3.new(330.073883, 88.2255249, -127.021484),
["Rotation"] = Vector3.new(90.8242798, 0.600809634, -143.914261),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.2288084, 0, 13.4836798),
["CFrame"] = CFrame.new(330.073883, 88.2255249, -127.021484, -0.808091879, 0.588962913, 0.0104859145, -1.50948132e-014, 0.0178012121, -0.999841571, -0.589056253, -0.807963848, -0.0143850138),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o84 = Create("CylinderMesh",{
["Parent"] = o83,
["Scale"] = Vector3.new(0.5, 0.649999976, 0.5),
})
o85 = Create("Model",{
["Name"] = "CannonLol",
["Parent"] = o1,
})
o86 = Create("Part",{
["Name"] = "Handle3",
["Parent"] = o85,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(357.59201, 441.334045, 1019.901),
["Rotation"] = Vector3.new(-89.9998016, 0.000384738727, -90.0294189),
["RotVelocity"] = Vector3.new(-0.00269895676, -0.000197061745, 0.000686151907),
["Velocity"] = Vector3.new(0.00399211096, 0.00265668612, -0.00679172343),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.59201, 441.334045, 1019.901, -0.000513518928, 0.999999762, 6.71495764e-006, -3.53025621e-006, -6.71677162e-006, 1, 0.999999762, 0.000513518869, 3.53370501e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 6, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o87 = Create("CylinderMesh",{
["Parent"] = o86,
["Scale"] = Vector3.new(1.04999995, 1.04999995, 1.04999995),
})
o88 = Create("Part",{
["Name"] = "Handle",
["Parent"] = o85,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(357.600006, 438.594055, 1022.90002),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.600006, 438.594055, 1022.90002, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 4, 2),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o89 = Create("Part",{
["Name"] = "Handle",
["Parent"] = o85,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(357.600006, 441.585022, 1022.90503),
["Rotation"] = Vector3.new(-179.90416, 0.00742864469, -179.999832),
["RotVelocity"] = Vector3.new(-0.0330850519, -0.00169609871, -0.00513586681),
["Velocity"] = Vector3.new(0.00120087306, -0.00596932694, 0.00861900207),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.600006, 441.585022, 1022.90503, -0.999999762, 3.03301886e-006, 0.000129654305, 3.24990719e-006, 0.999998629, 0.00167285791, -0.000129649023, 0.00167285791, -0.999998331),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 2, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o90 = Create("SpecialMesh",{
["Parent"] = o89,
["MeshType"] = Enum.MeshType.Torso,
})
o91 = Create("Part",{
["Name"] = "Handle",
["Parent"] = o85,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(357.600006, 438.594055, 1016.90002),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.600006, 438.594055, 1016.90002, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 4, 2),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o92 = Create("Part",{
["Name"] = "Handle2",
["Parent"] = o85,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(357.593994, 441.584045, 1016.901),
["Rotation"] = Vector3.new(-179.999802, 0.0294249728, -179.999619),
["RotVelocity"] = Vector3.new(-0.00269895676, -0.000197061745, 0.000686151907),
["Velocity"] = Vector3.new(0.00441175839, -0.00544018392, -0.00746646244),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.593994, 441.584045, 1016.901, -0.999999762, 6.71497992e-006, 0.000513562642, 6.71677162e-006, 1, 3.48654453e-006, -0.000513562583, 3.48999356e-006, -0.999999762),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 2, 2),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o93 = Create("SpecialMesh",{
["Parent"] = o92,
["MeshType"] = Enum.MeshType.Torso,
})
o94 = Create("Motor",{
["Parent"] = o92,
["Part0"] = o92,
["Part1"] = o86,
})
o95 = Create("Part",{
["Name"] = "Handle4",
["Parent"] = o85,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(360.59201, 441.334045, 1019.90302),
["Rotation"] = Vector3.new(-89.9998016, 0.000384738727, -90.0294189),
["RotVelocity"] = Vector3.new(-0.00269895676, -0.000197061745, 0.000686151907),
["Velocity"] = Vector3.new(0.00399211096, 0.00471514184, -0.00620053802),
["Anchored"] = true,
["CFrame"] = CFrame.new(360.59201, 441.334045, 1019.90302, -0.000513518928, 0.999999762, 6.71495764e-006, -3.53025621e-006, -6.71677162e-006, 1, 0.999999762, 0.000513518869, 3.53370501e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(4, 0.400000006, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o96 = Create("SpecialMesh",{
["Parent"] = o95,
["Scale"] = Vector3.new(1.05999994, 5.5, 1.05999994),
["MeshType"] = Enum.MeshType.Sphere,
})
o97 = Create("Part",{
["Name"] = "Handle6",
["Parent"] = o85,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(352.34201, 441.334045, 1019.89899),
["Rotation"] = Vector3.new(-89.9998016, 0.000384738727, -90.0294189),
["RotVelocity"] = Vector3.new(-0.00269895676, -0.000197061745, 0.000686151907),
["Velocity"] = Vector3.new(0.00399211096, -0.000945611391, -0.00782629754),
["Anchored"] = true,
["CFrame"] = CFrame.new(352.34201, 441.334045, 1019.89899, -0.000513518928, 0.999999762, 6.71495764e-006, -3.53025621e-006, -6.71677162e-006, 1, 0.999999762, 0.000513518869, 3.53370501e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6, 2, 6),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o98 = Create("CylinderMesh",{
["Parent"] = o97,
["Scale"] = Vector3.new(0.899999976, 1.14999998, 0.899999976),
})
o99 = Create("Part",{
["Name"] = "Handle5",
["Parent"] = o85,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(353.59201, 441.334045, 1019.89899),
["Rotation"] = Vector3.new(-89.9998016, 0.000384738727, -90.0294189),
["RotVelocity"] = Vector3.new(-0.00269895676, -0.000197061745, 0.000686151907),
["Velocity"] = Vector3.new(0.00399211096, -8.79215077e-005, -0.00757997017),
["Anchored"] = true,
["CFrame"] = CFrame.new(353.59201, 441.334045, 1019.89899, -0.000513518928, 0.999999762, 6.71495764e-006, -3.53025621e-006, -6.71677162e-006, 1, 0.999999762, 0.000513518869, 3.53370501e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 2, 4),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o100 = Create("CylinderMesh",{
["Parent"] = o99,
["Scale"] = Vector3.new(1.14999998, 1.14999998, 1.14999998),
})
o101 = Create("Part",{
["Name"] = "Handle8",
["Parent"] = o85,
["Material"] = Enum.Material.DiamondPlate,
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(357.593994, 440.584045, 1015.70099),
["Rotation"] = Vector3.new(90.0002594, -6.11382784e-005, 179.998169),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.593994, 440.584045, 1015.70099, -0.999999821, -3.20675244e-005, -1.0670642e-006, 1.06691914e-006, 4.48937271e-006, -1, 3.20675717e-005, -0.999999821, -4.48933861e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["BottomSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
})
o102 = Create("SpecialMesh",{
["Parent"] = o101,
["Scale"] = Vector3.new(1.05999994, 5.5, 1.05999994),
["MeshType"] = Enum.MeshType.Sphere,
})
o103 = Create("Part",{
["Name"] = "Handle8",
["Parent"] = o85,
["Material"] = Enum.Material.DiamondPlate,
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(357.600006, 440.583069, 1024.10303),
["Rotation"] = Vector3.new(90.0958481, -0.000173780791, -179.983185),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.600006, 440.583069, 1024.10303, -0.999999821, 0.000293433928, -3.03304705e-006, 3.52491816e-006, 0.00167288422, -0.999998629, -0.00029342834, -0.999998391, -0.00167283218),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(2, 0.400000006, 2),
["BackSurface"] = Enum.SurfaceType.Weld,
["BottomSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
})
o104 = Create("SpecialMesh",{
["Parent"] = o103,
["Scale"] = Vector3.new(1.05999994, 5.5, 1.05999994),
["MeshType"] = Enum.MeshType.Sphere,
})
o105 = Create("Script",{
["Parent"] = o85,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait()

script.Parent:BreakJoints()

lol=function()

w=Instance.new("Motor")
w.Part0=script.Parent.Handle2
w.Part1=script.Parent.Handle3
w.C0=CFrame.new(0,-.25,-3)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,math.pi/2)
w.Parent=w.Part0

w=Instance.new("Weld")
w.Part0=script.Parent.Handle3
w.Part1=script.Parent.Handle4
w.C0=CFrame.new(0,3,0)
w.Parent=w.Part0

w=Instance.new("Weld")
w.Part0=script.Parent.Handle3
w.Part1=script.Parent.Handle5
w.C0=CFrame.new(0,-4,0)
w.Parent=w.Part0

w=Instance.new("Weld")
w.Part0=script.Parent.Handle3
w.Part1=script.Parent.Handle6
w.C0=CFrame.new(0,-5.25,0)
w.Parent=w.Part0

end

script.Parent.AncestryChanged:connect(lol)
end,o105)
end))
o106 = Create("Part",{
["Name"] = "Base",
["Parent"] = o85,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(357.600006, 436.094055, 1019.90002),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(357.600006, 436.094055, 1019.90002, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6, 1, 8),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o107 = Create("Part",{
["Name"] = "Cheek10",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Transparency"] = 1,
["Position"] = Vector3.new(330.948059, 88.3397217, -127.371948),
["Rotation"] = Vector3.new(-178.737854, 36.0834503, 179.256561),
["RotVelocity"] = Vector3.new(0, 0.167158738, 0),
["Velocity"] = Vector3.new(-9.28739166, 0, 13.3375549),
["CFrame"] = CFrame.new(330.948059, 88.3397217, -127.371948, -0.808091879, -0.0104859406, 0.588962913, -1.50948132e-014, 0.999841571, 0.017801255, -0.589056253, 0.0143850492, -0.807963848),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o108 = Create("SpecialMesh",{
["Parent"] = o107,
["MeshType"] = Enum.MeshType.Brick,
})
o109 = Create("Sound",{
["Name"] = "Ohgodno",
["Parent"] = o1,
["Pitch"] = 0.52999997138977,
["SoundId"] = "http://www.roblox.com/asset/?id=28510547",
["Volume"] = 1,
["Looped"] = true,
})
o110 = Create("Script",{
["Parent"] = o1,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
while true do --blargh


		for _,v in pairs(game.Players:children()) do
			if v:FindFirstChild("PlayerGui")~=nil then
				if script.DoGui.Value==true then

					if v.PlayerGui:FindFirstChild("DEATHGUI")==nil then
						s=script.Parent.LocalScript.DEATHGUI:clone()
						s.Script.Disabled=false
						s.Parent=v.PlayerGui
					end

				else
	
					if v.PlayerGui:FindFirstChild("DEATHGUI")~=nil then
						v.PlayerGui.DEATHGUI:Remove()
					end

				end

			end
		end

		wait(.1)

end
end,o110)
end))
o111 = Create("BoolValue",{
["Name"] = "DoGui",
["Parent"] = o110,
})
 
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game.Players.LocalPlayer.Backpack
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end


-- yoo waddup




