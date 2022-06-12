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
wait()
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
o10000 = script
o2 = System.Create("LocalScript",{
["Name"] = "BleedController",
["Parent"] = o10000,
["Disabled"] = true,
})
	
o3 = System.Create("LocalScript",{
["Name"] = "CamShake",
["Parent"] = o10000,
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
["Parent"] = o10000,
["Disabled"] = true,
})
	
o7 = System.Create("StringValue",{
["Parent"] = o6,
["Value"] = "FallingDown",
})
o8 = System.Create("Model",{
["Name"] = "Armor",
["Parent"] = o10000,
})

--Thanks for using Build2Script Plugin by jarredbcv!
local o1 = Instance.new("Model")
o1.Name = "Weapon"
o1.Parent = script
p1 = Instance.new("Part", o1)
p1.BrickColor = BrickColor.new("Really black")
p1.CFrame = CFrame.new(-252.762253, 12640.8857, -673.721741, 0.0858350396, 0.924051285, -0.372507304, -0.809512377, 0.282639742, 0.514591575, 0.580794275, 0.257379293, 0.772291362)
p1.Size = Vector3.new(0.200000003, 0.399999976, 0.200000003)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.699999988, 1, 0.99999994)
p2 = Instance.new("Part", o1)
p2.BrickColor = BrickColor.new("Black")
p2.Name = "Wedge"
p2.CFrame = CFrame.new(-250.857269, 12641.582, -673.026672, -0.195676968, 0.137669057, -0.97095722, 0.979784906, -0.0145752169, -0.199522585, -0.0416199975, -0.990371108, -0.132034004)
p2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.0400000028, 0.341323882, 0.507933795)
p3 = Instance.new("Part", o1)
p3.BrickColor = BrickColor.new("Black")
p3.Name = "Wedge"
p3.CFrame = CFrame.new(-250.840225, 12641.6328, -672.909607, -0.0955799967, 0.877393067, -0.470155299, 0.825028002, -0.194441468, -0.530585825, -0.556949973, -0.438604683, -0.705289066)
p3.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.761848152)
p4 = Instance.new("Part", o1)
p4.BrickColor = BrickColor.new("Black")
p4.Name = "Wedge"
p4.CFrame = CFrame.new(-250.882248, 12641.5859, -673.020264, 0.929828405, -0.354631096, -0.0982646495, -0.122928061, -0.551019251, 0.82538873, -0.34685418, -0.755390406, -0.555947483)
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p5 = Instance.new("Part", o1)
p5.BrickColor = BrickColor.new("Black")
p5.Name = "Wedge"
p5.CFrame = CFrame.new(-250.881897, 12641.6172, -673.036438, -0.929828405, -0.354631096, 0.0982646495, 0.122928061, -0.551019251, -0.82538873, 0.34685418, -0.755390406, 0.555947483)
p5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p6 = Instance.new("Part", o1)
p6.BrickColor = BrickColor.new("Black")
p6.Name = "Wedge"
p6.CFrame = CFrame.new(-250.948349, 12641.5674, -673.038086, 0.354149967, 0.930316806, -0.0953340754, 0.555223942, -0.12713404, 0.821926594, 0.752531886, -0.344017059, -0.561558604)
p6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p7 = Instance.new("Part", o1)
p7.BrickColor = BrickColor.new("Black")
p7.Name = "Wedge"
p7.CFrame = CFrame.new(-250.851379, 12641.6084, -673.01709, -0.333157867, 0.411823213, -0.848178923, -0.597083747, -0.788361013, -0.148249581, -0.729723752, 0.45704335, 0.508541644)
p7.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p8 = Instance.new("Part", o1)
p8.BrickColor = BrickColor.new("Black")
p8.Name = "Wedge"
p8.CFrame = CFrame.new(-250.952499, 12641.5576, -673.006897, -0.0933649689, -0.14665404, -0.984771848, 0.824371696, -0.566015601, 0.0061344509, -0.558295846, -0.811245322, 0.173743486)
p8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.0400000028, 0.157024801, 0.403840691)
p9 = Instance.new("Part", o1)
p9.BrickColor = BrickColor.new("Black")
p9.Name = "Wedge"
p9.CFrame = CFrame.new(-250.934143, 12641.5879, -673.000854, 0.333157867, 0.411823213, 0.848178923, 0.597083747, -0.788361013, 0.148249581, 0.729723752, 0.45704335, -0.508541644)
p9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Wedge
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p10 = Instance.new("Part", o1)
p10.BrickColor = BrickColor.new("Black")
p10.Name = "Wedge"
p10.CFrame = CFrame.new(-251.088135, 12641.5381, -673.106384, -0.0992380157, 0.42512697, 0.899677157, -0.540628076, -0.782090127, 0.309929758, 0.835388124, -0.455633849, 0.307448626)
p10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.0400000028, 0.41813603, 0.35952127)
p11 = Instance.new("Part", o1)
p11.BrickColor = BrickColor.new("Black")
p11.Name = "Wedge"
p11.CFrame = CFrame.new(-250.887192, 12641.6143, -673.035889, 0.107164018, 0.42320019, -0.899676323, 0.525926054, -0.792051554, -0.309929252, -0.843752146, -0.43994996, -0.307451427)
p11.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Wedge
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.0400000028, 0.402456522, 0.376990765)
p12 = Instance.new("Part", o1)
p12.BrickColor = BrickColor.new("Black")
p12.Name = "Wedge"
p12.CFrame = CFrame.new(-250.892487, 12641.5801, -672.983826, 0.0955799967, 0.877393067, 0.470155299, -0.825028002, -0.194441468, 0.530585825, 0.556949973, -0.438604683, 0.705289066)
p12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.296343386)
p13 = Instance.new("Part", o1)
p13.BrickColor = BrickColor.new("Black")
p13.Name = "Wedge"
p13.CFrame = CFrame.new(-251.088806, 12641.543, -673.105286, -0.345267981, 0.232442155, 0.909263849, -0.513903916, 0.763859391, -0.390412182, -0.785297871, -0.602071166, -0.14428325)
p13.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Wedge
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.539807439)
p14 = Instance.new("Part", o1)
p14.BrickColor = BrickColor.new("Black")
p14.CFrame = CFrame.new(-252.32312, 12641.0781, -673.551636, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p14.Size = Vector3.new(0.200000003, 0.965600133, 0.200000003)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p15 = Instance.new("Part", o1)
p15.BrickColor = BrickColor.new("Black")
p15.CFrame = CFrame.new(-252.330399, 12641.1211, -673.517273, -0.413329005, -0.043807134, 0.909527421, 0.723160982, -0.622777879, 0.298640072, 0.553350985, 0.781171381, 0.289091766)
p15.Size = Vector3.new(0.200000003, 0.200000003, 0.925624967)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.55129993, 0.0400000028, 1)
p16 = Instance.new("Part", o1)
p16.BrickColor = BrickColor.new("Black")
p16.CFrame = CFrame.new(-252.342316, 12641.0869, -673.502258, 0.352270037, -0.220620871, 0.909523129, -0.184665009, 0.936327696, 0.298645914, -0.917499125, -0.273161113, 0.289099216)
p16.Size = Vector3.new(0.200000003, 0.200000003, 0.965624988)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.55129993, 0.0400000028, 1)
p17 = Instance.new("Part", o1)
p17.BrickColor = BrickColor.new("Really black")
p17.CFrame = CFrame.new(-252.564209, 12641.0625, -673.489868, 0.0858350396, 0.924051285, -0.372507304, -0.809512377, 0.282639742, 0.514591575, 0.580794275, 0.257379293, 0.772291362)
p17.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Wedge
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.699999988, 0.99999994, 0.99999994)
p18 = Instance.new("Part", o1)
p18.BrickColor = BrickColor.new("Dark stone grey")
p18.Reflectance = 0.25
p18.CFrame = CFrame.new(-253.083496, 12640.8184, -673.778564, 0.0858430266, -0.372507006, -0.924050629, -0.809510291, 0.514591277, -0.282646507, 0.580796182, 0.77229166, -0.257374167)
p18.Size = Vector3.new(0.200000003, 0.400000036, 0.200000003)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("CylinderMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.699999988, 0.649999976, 0.699999988)
p19 = Instance.new("Part", o1)
p19.BrickColor = BrickColor.new("Really black")
p19.CFrame = CFrame.new(-252.96434, 12641.0137, -673.514221, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p19.Size = Vector3.new(0.200000003, 0.200000003, 0.399999976)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(1.19999993, 0.99999994, 1)
p20 = Instance.new("Part", o1)
p20.BrickColor = BrickColor.new("Black")
p20.CFrame = CFrame.new(-252.858826, 12640.8604, -673.748169, 0.0858350396, 0.924051285, -0.372507304, -0.809512377, 0.282639742, 0.514591575, 0.580794275, 0.257379293, 0.772291362)
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
b20.Scale = Vector3.new(2.099967, 0.999984503, 0.999984384)
p21 = Instance.new("Part", o1)
p21.BrickColor = BrickColor.new("Black")
p21.Name = "Wedge"
p21.CFrame = CFrame.new(-250.992996, 12641.5254, -673.073547, -0.195676968, 0.137669057, -0.97095722, 0.979784906, -0.0145752169, -0.199522585, -0.0416199975, -0.990371108, -0.132034004)
p21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.0400000028, 0.341323882, 0.507933795)
p22 = Instance.new("Part", o1)
p22.BrickColor = BrickColor.new("Black")
p22.Name = "Wedge"
p22.CFrame = CFrame.new(-250.732559, 12641.6055, -673.035828, 0.35324198, 0.114359185, 0.92851609, 0.921012878, -0.216688752, -0.323699385, 0.164180979, 0.969519556, -0.18186985)
p22.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p22)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.0400000028, 0.0393027067, 0.0364322141)
p23 = Instance.new("Part", o1)
p23.BrickColor = BrickColor.new("Black")
p23.Name = "Wedge"
p23.CFrame = CFrame.new(-250.868454, 12641.582, -673.05304, 0.345267981, 0.232442155, -0.909263849, 0.513903916, 0.763859391, 0.390412182, 0.785297871, -0.602071166, 0.14428325)
p23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p23)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.0116391014)
p24 = Instance.new("Part", o1)
p24.BrickColor = BrickColor.new("Black")
p24.Name = "Wedge"
p24.CFrame = CFrame.new(-250.24617, 12641.8262, -672.795227, -0.404984146, -0.909528434, 0.0935195908, 0.480217189, -0.298627973, -0.824750245, 0.778061271, -0.289101034, 0.557710767)
p24.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p24)
b24.MeshType = Enum.MeshType.Wedge
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.0400000028, 0.244140625, 0.399999976)
p25 = Instance.new("Part", o1)
p25.BrickColor = BrickColor.new("Black")
p25.Name = "Wedge"
p25.CFrame = CFrame.new(-250.759918, 12641.6084, -672.999329, 0.219888106, 0.352722108, 0.909525394, -0.935945392, -0.186600566, 0.298640877, 0.27505511, -0.916933715, 0.289097399)
p25.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("SpecialMesh", p25)
b25.MeshType = Enum.MeshType.Wedge
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.0400000028, 0.55462414, 0.170117185)
p26 = Instance.new("Part", o1)
p26.BrickColor = BrickColor.new("Black")
p26.Name = "Wedge"
p26.CFrame = CFrame.new(-250.97908, 12641.5518, -673.101135, -0.93096143, -0.35443294, 0.0876820236, 0.131890059, -0.550378978, -0.824431896, 0.340464145, -0.755949974, 0.559127748)
p26.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("SpecialMesh", p26)
b26.MeshType = Enum.MeshType.Wedge
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p27 = Instance.new("Part", o1)
p27.BrickColor = BrickColor.new("Black")
p27.Name = "Wedge"
p27.CFrame = CFrame.new(-250.954086, 12641.5635, -672.994202, 0.0930720046, 0.349361897, 0.932354033, -0.824645102, -0.497695774, 0.268811315, 0.557941079, -0.793879867, 0.241778016)
p27.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("SpecialMesh", p27)
b27.MeshType = Enum.MeshType.Wedge
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.0400000028, 0.196231619, 0.352924824)
p28 = Instance.new("Part", o1)
p28.BrickColor = BrickColor.new("Black")
p28.Name = "Wedge"
p28.CFrame = CFrame.new(-250.953888, 12641.5879, -673.057312, -0.107164018, 0.42320019, 0.899676323, -0.525926054, -0.792051554, 0.309929252, 0.843752146, -0.43994996, 0.307451427)
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p28)
b28.MeshType = Enum.MeshType.Wedge
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.0400000028, 0.402456522, 0.348603457)
p29 = Instance.new("Part", o1)
p29.BrickColor = BrickColor.new("Black")
p29.Name = "Wedge"
p29.CFrame = CFrame.new(-250.83992, 12641.6006, -673.051147, -0.93096143, -0.35443294, 0.0876820236, 0.131890059, -0.550378978, -0.824431896, 0.340464145, -0.755949974, 0.559127748)
p29.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("SpecialMesh", p29)
b29.MeshType = Enum.MeshType.Wedge
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p30 = Instance.new("Part", o1)
p30.BrickColor = BrickColor.new("Black")
p30.Name = "Wedge"
p30.CFrame = CFrame.new(-250.225739, 12641.7637, -672.885681, 0.114539988, 0.609692991, 0.784318268, -0.837774873, -0.365004867, 0.406084687, 0.533866942, -0.703595042, 0.468977779)
p30.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p30)
b30.MeshType = Enum.MeshType.Wedge
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.0400000028, 0.00284294621, 0.00331672723)
p31 = Instance.new("Part", o1)
p31.BrickColor = BrickColor.new("Black")
p31.Name = "Wedge"
p31.CFrame = CFrame.new(-250.877487, 12641.5654, -673.077026, -0.0252090041, 0.683929086, 0.729112804, -0.959770143, -0.22058633, 0.173732474, 0.279653043, -0.695401013, 0.661975443)
p31.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p31)
b31.MeshType = Enum.MeshType.Wedge
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.0400000028, 0.235460535, 0.113313235)
p32 = Instance.new("Part", o1)
p32.BrickColor = BrickColor.new("Black")
p32.Name = "Wedge"
p32.CFrame = CFrame.new(-250.213104, 12641.7734, -672.879395, -0.12424697, 0.902025163, -0.413416833, -0.648561835, 0.241497844, 0.721835375, 0.75095284, 0.357812315, 0.555013597)
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
b32.Scale = Vector3.new(0.0400000028, 0.126289085, 0.0332860798)
p33 = Instance.new("Part", o1)
p33.BrickColor = BrickColor.new("Black")
p33.Name = "Wedge"
p33.CFrame = CFrame.new(-250.248383, 12641.8076, -672.855286, 0.906018138, -0.409448147, 0.107161231, 0.386781067, 0.698190212, -0.602437556, 0.171848014, 0.58726722, 0.790939748)
p33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Wedge
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.0400000028, 0.554577172, 0.0177723784)
p34 = Instance.new("Part", o1)
p34.BrickColor = BrickColor.new("Black")
p34.Name = "Wedge"
p34.CFrame = CFrame.new(-250.858459, 12641.5645, -673.084167, -0.929760396, 0.025506394, 0.367280573, 0.0727880374, -0.965171516, 0.251288742, 0.360898167, 0.260371983, 0.895521581)
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
b34.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p35 = Instance.new("Part", o1)
p35.BrickColor = BrickColor.new("Black")
p35.Name = "Wedge"
p35.CFrame = CFrame.new(-250.949768, 12641.5908, -673.055237, -0.345267981, 0.232442155, 0.909263849, -0.513903916, 0.763859391, -0.390412182, -0.785297871, -0.602071166, -0.14428325)
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
b35.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.539807439)
p36 = Instance.new("Part", o1)
p36.BrickColor = BrickColor.new("Black")
p36.Name = "Wedge"
p36.CFrame = CFrame.new(-251.095749, 12641.5361, -673.109436, -0.107164018, 0.42320019, 0.899676323, -0.525926054, -0.792051554, 0.309929252, 0.843752146, -0.43994996, 0.307451427)
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
b36.Scale = Vector3.new(0.0400000028, 0.402456522, 0.348603457)
p37 = Instance.new("Part", o1)
p37.BrickColor = BrickColor.new("Black")
p37.Name = "Wedge"
p37.CFrame = CFrame.new(-250.723984, 12641.5996, -673.038025, -0.35324198, 0.114359185, -0.92851609, -0.921012878, -0.216688752, 0.323699385, -0.164180979, 0.969519556, 0.18186985)
p37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("SpecialMesh", p37)
b37.MeshType = Enum.MeshType.Wedge
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.0400000028, 0.0393027067, 0.042506177)
p38 = Instance.new("Part", o1)
p38.BrickColor = BrickColor.new("Black")
p38.Name = "Wedge"
p38.CFrame = CFrame.new(-251.237122, 12641.4922, -673.152466, -0.107164018, 0.42320019, 0.899676323, -0.525926054, -0.792051554, 0.309929252, 0.843752146, -0.43994996, 0.307451427)
p38.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Wedge
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.0400000028, 0.402456522, 0.348603457)
p39 = Instance.new("Part", o1)
p39.BrickColor = BrickColor.new("Black")
p39.Name = "Wedge"
p39.CFrame = CFrame.new(-250.970276, 12641.5303, -673.080322, 0.93096143, -0.35443294, -0.0876820236, -0.131890059, -0.550378978, 0.824431896, -0.340464145, -0.755949974, -0.559127748)
p39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("SpecialMesh", p39)
b39.MeshType = Enum.MeshType.Wedge
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p40 = Instance.new("Part", o1)
p40.BrickColor = BrickColor.new("Black")
p40.Name = "Wedge"
p40.CFrame = CFrame.new(-250.8116, 12641.6328, -672.919312, -0.0934440196, 0.877625763, -0.470150352, 0.824550152, -0.196447805, -0.53058964, -0.558019102, -0.437242985, -0.705289543)
p40.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("SpecialMesh", p40)
b40.MeshType = Enum.MeshType.Wedge
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.0400000028, 0.383756131, 0.725586355)
p41 = Instance.new("Part", o1)
p41.BrickColor = BrickColor.new("Black")
p41.Name = "Wedge"
p41.CFrame = CFrame.new(-250.83223, 12641.5742, -673.030945, 0.93096143, -0.35443294, -0.0876820236, -0.131890059, -0.550378978, 0.824431896, -0.340464145, -0.755949974, -0.559127748)
p41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("SpecialMesh", p41)
b41.MeshType = Enum.MeshType.Wedge
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p42 = Instance.new("Part", o1)
p42.BrickColor = BrickColor.new("Black")
p42.Name = "Wedge"
p42.CFrame = CFrame.new(-250.724319, 12641.6025, -673.03772, -0.336477041, -0.937036455, -0.0935198069, -0.553392053, 0.116402648, 0.824747086, -0.761932135, 0.329261541, -0.557715297)
p42.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("SpecialMesh", p42)
b42.MeshType = Enum.MeshType.Wedge
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.0400000028, 0.0762529597, 0.020117186)
p43 = Instance.new("Part", o1)
p43.BrickColor = BrickColor.new("Black")
p43.Name = "Wedge"
p43.CFrame = CFrame.new(-250.831909, 12641.5742, -673.034546, 0.0252090041, 0.683929086, -0.729112804, 0.959770143, -0.22058633, -0.173732474, -0.279653043, -0.695401013, -0.661975443)
p43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("SpecialMesh", p43)
b43.MeshType = Enum.MeshType.Wedge
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.0400000028, 0.235460535, 0.498649806)
p44 = Instance.new("Part", o1)
p44.BrickColor = BrickColor.new("Black")
p44.Name = "Wedge"
p44.CFrame = CFrame.new(-250.863464, 12641.5801, -672.993896, 0.0934440196, 0.877625763, 0.470150352, -0.824550152, -0.196447805, 0.53058964, 0.558019102, -0.437242985, 0.705289543)
p44.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("SpecialMesh", p44)
b44.MeshType = Enum.MeshType.Wedge
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.0400000028, 0.383756131, 0.332605243)
p45 = Instance.new("Part", o1)
p45.BrickColor = BrickColor.new("Black")
p45.Name = "Wedge"
p45.CFrame = CFrame.new(-251.035568, 12641.5332, -673.029419, -0.0930720046, 0.349361897, -0.932354033, 0.824645102, -0.497695774, -0.268811315, -0.557941079, -0.793879867, -0.241778016)
p45.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("SpecialMesh", p45)
b45.MeshType = Enum.MeshType.Wedge
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.0400000028, 0.196231619, 0.22273533)
p46 = Instance.new("Part", o1)
p46.BrickColor = BrickColor.new("Black")
p46.Name = "Wedge"
p46.CFrame = CFrame.new(-250.193436, 12641.8066, -672.798523, 0.263503104, 0.339815944, -0.902824104, -0.952188492, 0.241621032, -0.186966568, 0.154607072, 0.908924878, 0.387236744)
p46.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("SpecialMesh", p46)
b46.MeshType = Enum.MeshType.Wedge
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.0400000028, 0.157225892, 0.364165574)
p47 = Instance.new("Part", o1)
p47.BrickColor = BrickColor.new("Black")
p47.Name = "Wedge"
p47.CFrame = CFrame.new(-251.014328, 12641.5166, -673.124573, -0.0252090041, 0.683929086, 0.729112804, -0.959770143, -0.22058633, 0.173732474, 0.279653043, -0.695401013, 0.661975443)
p47.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("SpecialMesh", p47)
b47.MeshType = Enum.MeshType.Wedge
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.0400000028, 0.235460535, 0.113313235)
p48 = Instance.new("Part", o1)
p48.BrickColor = BrickColor.new("Black")
p48.Name = "Wedge"
p48.CFrame = CFrame.new(-250.951828, 12641.5801, -672.967163, -0.0934440196, 0.877625763, -0.470150352, 0.824550152, -0.196447805, -0.53058964, -0.558019102, -0.437242985, -0.705289543)
p48.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("SpecialMesh", p48)
b48.MeshType = Enum.MeshType.Wedge
b48.Name = "Mesh"
b48.Scale = Vector3.new(0.0400000028, 0.383756131, 0.725586355)
p49 = Instance.new("Part", o1)
p49.BrickColor = BrickColor.new("Black")
p49.Name = "Wedge"
p49.CFrame = CFrame.new(-251.087891, 12641.5059, -673.05481, -0.0933649689, -0.14665404, -0.984771848, 0.824371696, -0.566015601, 0.0061344509, -0.558295846, -0.811245322, 0.173743486)
p49.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("SpecialMesh", p49)
b49.MeshType = Enum.MeshType.Wedge
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.0400000028, 0.157024801, 0.403840691)
p50 = Instance.new("Part", o1)
p50.BrickColor = BrickColor.new("Black")
p50.Name = "Wedge"
p50.CFrame = CFrame.new(-251.08313, 12641.5186, -673.085693, 0.354149967, 0.930316806, -0.0953340754, 0.555223942, -0.12713404, 0.821926594, 0.752531886, -0.344017059, -0.561558604)
p50.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("SpecialMesh", p50)
b50.MeshType = Enum.MeshType.Wedge
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p51 = Instance.new("Part", o1)
p51.BrickColor = BrickColor.new("Black")
p51.Name = "Wedge"
p51.CFrame = CFrame.new(-250.731949, 12641.6113, -673.039124, -0.472691, -0.0234049428, 0.88091743, 0.125493005, 0.987671256, 0.093579486, -0.872246981, 0.154783145, -0.463926107)
p51.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("SpecialMesh", p51)
b51.MeshType = Enum.MeshType.Wedge
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.0400000028, 0.0393410921, 0.0364924334)
p52 = Instance.new("Part", o1)
p52.BrickColor = BrickColor.new("Black")
p52.Name = "Wedge"
p52.CFrame = CFrame.new(-250.953445, 12641.5879, -673.058289, -0.0992380157, 0.42512697, 0.899677157, -0.540628076, -0.782090127, 0.309929758, 0.835388124, -0.455633849, 0.307448626)
p52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("SpecialMesh", p52)
b52.MeshType = Enum.MeshType.Wedge
b52.Name = "Mesh"
b52.Scale = Vector3.new(0.0400000028, 0.41813603, 0.35952127)
p53 = Instance.new("Part", o1)
p53.BrickColor = BrickColor.new("Black")
p53.Name = "Wedge"
p53.CFrame = CFrame.new(-249.80545, 12642.1934, -672.29126, 0.603986919, -0.485872895, -0.631765187, -0.781773865, -0.207001999, -0.58820039, 0.155013978, 0.849162877, -0.504869282)
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
b53.Scale = Vector3.new(0.0400000028, 0.215627789, 0.323601425)
p54 = Instance.new("Part", o1)
p54.BrickColor = BrickColor.new("Black")
p54.Name = "Wedge"
p54.CFrame = CFrame.new(-249.839752, 12642.1641, -672.317383, -0.603986919, -0.485872895, 0.631765187, 0.781773865, -0.207001999, 0.58820039, -0.155013978, 0.849162877, 0.504869282)
p54.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b54 = Instance.new("SpecialMesh", p54)
b54.MeshType = Enum.MeshType.Wedge
b54.Name = "Mesh"
b54.Scale = Vector3.new(0.0400000028, 0.215627789, 0.159763396)
p55 = Instance.new("Part", o1)
p55.BrickColor = BrickColor.new("Black")
p55.Name = "Wedge"
p55.CFrame = CFrame.new(-249.858353, 12642.1729, -672.377808, 0.480069816, -0.872786224, -0.0881881639, 0.508511841, 0.194959983, 0.838693261, -0.714806736, -0.447476029, 0.537416577)
p55.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b55 = Instance.new("SpecialMesh", p55)
b55.MeshType = Enum.MeshType.Wedge
b55.Name = "Mesh"
b55.Scale = Vector3.new(0.0400000028, 0.217812911, 0.177312493)
p56 = Instance.new("Part", o1)
p56.BrickColor = BrickColor.new("Black")
p56.Name = "Wedge"
p56.CFrame = CFrame.new(-249.853577, 12642.1514, -672.315491, 0.620257676, -0.784262717, 0.0145755634, -0.769405663, -0.611913204, -0.183240831, 0.15262793, 0.102442026, -0.982960045)
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
b56.Scale = Vector3.new(0.0400000028, 0.217275187, 0.268188626)
p57 = Instance.new("Part", o1)
p57.BrickColor = BrickColor.new("Black")
p57.CFrame = CFrame.new(-252.529007, 12641.3926, -673.049622, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p57.Size = Vector3.new(0.200000003, 0.60040009, 0.200000003)
p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b57 = Instance.new("BlockMesh", p57)
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.399999976, 1, 0.93599999)
p58 = Instance.new("Part", o1)
p58.BrickColor = BrickColor.new("Black")
p58.CFrame = CFrame.new(-253.029297, 12641.1006, -673.382996, -0.0858350396, 0.924051285, 0.372507304, 0.809512377, 0.282639742, -0.514591575, -0.580794275, 0.257379293, -0.772291362)
p58.Size = Vector3.new(0.200000003, 0.200000003, 0.74000001)
p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b58 = Instance.new("SpecialMesh", p58)
b58.MeshType = Enum.MeshType.Wedge
b58.Name = "Mesh"
b58.Scale = Vector3.new(2.0999999, 0.99999994, 1)
p59 = Instance.new("Part", o1)
p59.BrickColor = BrickColor.new("Really black")
p59.CFrame = CFrame.new(-252.78624, 12641.3857, -673.028931, -0.0858350396, 0.924051285, 0.372507304, 0.809512377, 0.282639742, -0.514591575, -0.580794275, 0.257379293, -0.772291362)
p59.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b59 = Instance.new("SpecialMesh", p59)
b59.MeshType = Enum.MeshType.Wedge
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.699999988, 0.99999994, 0.99999994)
p60 = Instance.new("Part", o1)
p60.BrickColor = BrickColor.new("Really black")
p60.CFrame = CFrame.new(-252.671829, 12641.2266, -673.258057, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p60.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b60 = Instance.new("BlockMesh", p60)
b60.Name = "Mesh"
b60.Scale = Vector3.new(0.699999988, 0.99999994, 1)
p61 = Instance.new("Part", o1)
p61.BrickColor = BrickColor.new("Really black")
p61.CFrame = CFrame.new(-252.952789, 12641.1416, -673.337402, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p61.Size = Vector3.new(0.200000003, 0.400000215, 0.799999952)
p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b61 = Instance.new("BlockMesh", p61)
b61.Name = "Mesh"
b61.Scale = Vector3.new(0.699999988, 1, 1)
p62 = Instance.new("Part", o1)
p62.BrickColor = BrickColor.new("Really black")
p62.CFrame = CFrame.new(-252.601105, 12641.4414, -672.976196, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p62.Size = Vector3.new(0.200000003, 0.600000203, 0.200000003)
p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b62 = Instance.new("BlockMesh", p62)
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.49999997, 1, 0.99999994)
p63 = Instance.new("Part", o1)
p63.BrickColor = BrickColor.new("Really black")
p63.CFrame = CFrame.new(-253.156036, 12641.2676, -673.130371, -0.0858350396, 0.924051285, 0.372507304, 0.809512377, 0.282639742, -0.514591575, -0.580794275, 0.257379293, -0.772291362)
p63.Size = Vector3.new(0.200000003, 0.200000033, 0.599999964)
p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b63 = Instance.new("SpecialMesh", p63)
b63.MeshType = Enum.MeshType.Wedge
b63.Name = "Mesh"
b63.Scale = Vector3.new(1.19999993, 1, 1)
p64 = Instance.new("Part", o1)
p64.BrickColor = BrickColor.new("Really black")
p64.CFrame = CFrame.new(-252.752502, 12641.1035, -673.216675, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p64.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b64 = Instance.new("SpecialMesh", p64)
b64.MeshType = Enum.MeshType.Sphere
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.100000009, 0.299999982, 0.149999976)
p65 = Instance.new("Part", o1)
p65.BrickColor = BrickColor.new("Really black")
p65.CFrame = CFrame.new(-252.774857, 12641.2842, -673.3479, -0.0858350396, -0.924051285, -0.372507304, 0.809512377, -0.282639742, 0.514591575, -0.580794275, -0.257379293, 0.772291362)
p65.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b65 = Instance.new("SpecialMesh", p65)
b65.MeshType = Enum.MeshType.Sphere
b65.Name = "Mesh"
b65.Scale = Vector3.new(0.100000009, 0.299999982, 0.149999976)
p66 = Instance.new("Part", o1)
p66.BrickColor = BrickColor.new("Black")
p66.CFrame = CFrame.new(-253.385071, 12641.0791, -673.634888, -0.372512877, -0.924048662, 0.0858389363, 0.514589846, -0.282646328, -0.809511185, 0.772289693, -0.257381529, 0.580795348)
p66.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b66 = Instance.new("SpecialMesh", p66)
b66.MeshType = Enum.MeshType.Wedge
b66.Name = "Mesh"
b66.Scale = Vector3.new(0.99999994, 0.99999994, 0.49999997)
p67 = Instance.new("Part", o1)
p67.BrickColor = BrickColor.new("Royal purple")
p67.CFrame = CFrame.new(-252.758072, 12641.124, -673.232666, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p67.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b67 = Instance.new("SpecialMesh", p67)
b67.MeshType = Enum.MeshType.Sphere
b67.Name = "Mesh"
b67.Scale = Vector3.new(0.299999982, 0.550000072, 0.299999952)
p68 = Instance.new("Part", o1)
p68.BrickColor = BrickColor.new("Really black")
p68.CFrame = CFrame.new(-252.766022, 12641.1992, -673.284851, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p68.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b68 = Instance.new("SpecialMesh", p68)
b68.MeshType = Enum.MeshType.Sphere
b68.Name = "Mesh"
b68.Scale = Vector3.new(0.99999994, 1.99999988, 1)
p69 = Instance.new("Part", o1)
p69.BrickColor = BrickColor.new("Dark stone grey")
p69.Reflectance = 0.25
p69.CFrame = CFrame.new(-253.409058, 12640.9814, -673.834106, 0.372512877, 0.0858378187, -0.924048722, -0.514589846, -0.809511602, -0.282645345, -0.772289693, 0.580795169, -0.257382244)
p69.Size = Vector3.new(0.200000003, 0.200000033, 0.200000003)
p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b69 = Instance.new("CylinderMesh", p69)
b69.Name = "Mesh"
b69.Scale = Vector3.new(0.699999988, 0.300000012, 0.699999988)
p70 = Instance.new("Part", o1)
p70.BrickColor = BrickColor.new("Black")
p70.CFrame = CFrame.new(-252.768448, 12641.2578, -673.327393, -0.0858350396, -0.924051285, -0.372507304, 0.809512377, -0.282639742, 0.514591575, -0.580794275, -0.257379293, 0.772291362)
p70.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b70 = Instance.new("SpecialMesh", p70)
b70.MeshType = Enum.MeshType.Sphere
b70.Name = "Mesh"
b70.Scale = Vector3.new(0.299999982, 0.649999976, 0.599999905)
p71 = Instance.new("Part", o1)
p71.BrickColor = BrickColor.new("Black")
p71.CFrame = CFrame.new(-252.757797, 12641.1377, -673.23938, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p71.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b71 = Instance.new("SpecialMesh", p71)
b71.MeshType = Enum.MeshType.Sphere
b71.Name = "Mesh"
b71.Scale = Vector3.new(0.299999982, 0.649999976, 0.599999905)
p72 = Instance.new("Part", o1)
p72.BrickColor = BrickColor.new("Really black")
p72.CFrame = CFrame.new(-252.54364, 12641.208, -673.310913, 0.0858350396, 0.924051285, -0.372507304, -0.809512377, 0.282639742, 0.514591575, 0.580794275, 0.257379293, 0.772291362)
p72.Size = Vector3.new(0.200000003, 0.399999976, 0.200000003)
p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b72 = Instance.new("SpecialMesh", p72)
b72.MeshType = Enum.MeshType.Wedge
b72.Name = "Mesh"
b72.Scale = Vector3.new(0.49999997, 1, 0.99999994)
p73 = Instance.new("Part", o1)
p73.BrickColor = BrickColor.new("Royal purple")
p73.CFrame = CFrame.new(-252.768692, 12641.2695, -673.333252, -0.0858350396, -0.924051285, -0.372507304, 0.809512377, -0.282639742, 0.514591575, -0.580794275, -0.257379293, 0.772291362)
p73.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b73 = Instance.new("SpecialMesh", p73)
b73.MeshType = Enum.MeshType.Sphere
b73.Name = "Mesh"
b73.Scale = Vector3.new(0.299999982, 0.550000072, 0.299999952)
p74 = Instance.new("Part", o1)
p74.BrickColor = BrickColor.new("Black")
p74.CFrame = CFrame.new(-253.365097, 12640.8242, -673.44165, 0.372512877, -0.924048662, -0.0858389363, -0.514589846, -0.282646328, 0.809511185, -0.772289693, -0.257381529, -0.580795348)
p74.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b74 = Instance.new("SpecialMesh", p74)
b74.MeshType = Enum.MeshType.Wedge
b74.Name = "Mesh"
b74.Scale = Vector3.new(0.99999994, 0.99999994, 0.49999997)
p75 = Instance.new("Part", o1)
p75.BrickColor = BrickColor.new("Dark stone grey")
p75.Reflectance = 0.25
p75.CFrame = CFrame.new(-253.503311, 12640.7734, -673.772949, 0.0858430266, -0.372507006, -0.924050629, -0.809510291, 0.514591277, -0.282646507, 0.580796182, 0.77229166, -0.257374167)
p75.Size = Vector3.new(0.200000003, 0.400000036, 0.200000003)
p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b75 = Instance.new("CylinderMesh", p75)
b75.Name = "Mesh"
b75.Scale = Vector3.new(0.699999988, 0.649999976, 0.699999988)
p76 = Instance.new("Part", o1)
p76.BrickColor = BrickColor.new("Dark stone grey")
p76.Reflectance = 0.25
p76.CFrame = CFrame.new(-253.379974, 12640.6621, -673.612061, -0.372512877, -0.0858378187, -0.924048722, 0.514589846, 0.809511602, -0.282645345, 0.772289693, -0.580795169, -0.257382244)
p76.Size = Vector3.new(0.200000003, 0.200000033, 0.200000003)
p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b76 = Instance.new("CylinderMesh", p76)
b76.Name = "Mesh"
b76.Scale = Vector3.new(0.699999988, 0.300000012, 0.699999988)
p77 = Instance.new("Part", o1)
p77.BrickColor = BrickColor.new("Black")
p77.CFrame = CFrame.new(-253.256302, 12641.0957, -673.361084, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p77.Size = Vector3.new(0.200000003, 0.200000033, 0.540000021)
p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b77 = Instance.new("BlockMesh", p77)
b77.Name = "Mesh"
b77.Scale = Vector3.new(2.0999999, 1, 1)
p78 = Instance.new("Part", o1)
p78.BrickColor = BrickColor.new("Really black")
p78.CFrame = CFrame.new(-252.62793, 12641.2402, -673.246216, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p78.Size = Vector3.new(0.200000003, 0.500000179, 0.200000003)
p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b78 = Instance.new("BlockMesh", p78)
b78.Name = "Mesh"
b78.Offset = Vector3.new(0, 0, -0.049999997)
b78.Scale = Vector3.new(0.49999997, 1, 0.49999997)
p79 = Instance.new("Part", o1)
p79.BrickColor = BrickColor.new("Black")
p79.CFrame = CFrame.new(-253.22612, 12640.748, -673.850708, -0.0858350396, -0.924051285, -0.372507304, 0.809512377, -0.282639742, 0.514591575, -0.580794275, -0.257379293, 0.772291362)
p79.Size = Vector3.new(0.200000003, 0.599990666, 0.200000003)
p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b79 = Instance.new("SpecialMesh", p79)
b79.MeshType = Enum.MeshType.Wedge
b79.Name = "Mesh"
b79.Scale = Vector3.new(2.099967, 1, 0.999984384)
p80 = Instance.new("Part", o1)
p80.BrickColor = BrickColor.new("Black")
p80.Name = "Wedge"
p80.CFrame = CFrame.new(-250.888107, 12641.6123, -673.034668, 0.0992380157, 0.42512697, -0.899677157, 0.540628076, -0.782090127, -0.309929758, -0.835388124, -0.455633849, -0.307448626)
p80.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b80 = Instance.new("SpecialMesh", p80)
b80.MeshType = Enum.MeshType.Wedge
b80.Name = "Mesh"
b80.Scale = Vector3.new(0.0400000028, 0.41813603, 0.366072923)
p81 = Instance.new("Part", o1)
p81.BrickColor = BrickColor.new("Black")
p81.Name = "Wedge"
p81.CFrame = CFrame.new(-249.834, 12642.1572, -672.360474, -0.604715049, -0.619352996, 0.500721037, 0.781463146, -0.340055078, 0.523142338, -0.153737009, 0.707647085, 0.689637959)
p81.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b81 = Instance.new("SpecialMesh", p81)
b81.MeshType = Enum.MeshType.Wedge
b81.Name = "Mesh"
b81.Scale = Vector3.new(0.0400000028, 0.113129504, 0.135008663)
p82 = Instance.new("Part", o1)
p82.BrickColor = BrickColor.new("Black")
p82.Name = "Wedge"
p82.CFrame = CFrame.new(-250.192749, 12641.8086, -672.800232, -0.310944855, -0.138640046, -0.940261841, -0.865239561, -0.368080139, 0.340407789, -0.393285811, 0.919399798, -0.00550422445)
p82.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b82 = Instance.new("SpecialMesh", p82)
b82.MeshType = Enum.MeshType.Wedge
b82.Name = "Mesh"
b82.Scale = Vector3.new(0.0400000028, 0.310295433, 0.247089654)
p83 = Instance.new("Part", o1)
p83.BrickColor = BrickColor.new("Black")
p83.Name = "Wedge"
p83.CFrame = CFrame.new(-249.829376, 12642.1719, -672.368164, 0.702599227, 0.706048131, -0.0886027887, -0.329787105, 0.433423132, 0.838680446, 0.630551219, -0.560036182, 0.537368298)
p83.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b83 = Instance.new("SpecialMesh", p83)
b83.MeshType = Enum.MeshType.Wedge
b83.Name = "Mesh"
b83.Scale = Vector3.new(0.0400000028, 0.000102456739, 0.176967546)
p84 = Instance.new("Part", o1)
p84.BrickColor = BrickColor.new("Black")
p84.Name = "Wedge"
p84.CFrame = CFrame.new(-250.898849, 12641.5859, -672.980835, -0.0930720046, 0.349361897, -0.932354033, 0.824645102, -0.497695774, -0.268811315, -0.557941079, -0.793879867, -0.241778016)
p84.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b84 = Instance.new("SpecialMesh", p84)
b84.MeshType = Enum.MeshType.Wedge
b84.Name = "Mesh"
b84.Scale = Vector3.new(0.0400000028, 0.196231619, 0.22273533)
p85 = Instance.new("Part", o1)
p85.BrickColor = BrickColor.new("Black")
p85.Name = "Wedge"
p85.CFrame = CFrame.new(-249.833801, 12642.2393, -672.316589, 0.440954, -0.254729986, 0.860623181, 0.620337009, 0.779481292, -0.087126188, -0.648645997, 0.57229501, 0.50173384)
p85.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b85 = Instance.new("SpecialMesh", p85)
b85.MeshType = Enum.MeshType.Wedge
b85.Name = "Mesh"
b85.Scale = Vector3.new(0.0400000028, 0.201077119, 0.16168797)
p86 = Instance.new("Part", o1)
p86.BrickColor = BrickColor.new("Black")
p86.Name = "Wedge"
p86.CFrame = CFrame.new(-250.193436, 12641.8066, -672.798523, -0.281259984, -0.947291076, 0.153403252, 0.943963885, -0.244341686, 0.221876726, -0.17269899, 0.207212165, 0.962932169)
p86.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b86 = Instance.new("SpecialMesh", p86)
b86.MeshType = Enum.MeshType.Wedge
b86.Name = "Mesh"
b86.Scale = Vector3.new(0.0400000028, 0.327022582, 0.224483401)
p87 = Instance.new("Part", o1)
p87.BrickColor = BrickColor.new("Black")
p87.Name = "Wedge"
p87.CFrame = CFrame.new(-250.241425, 12641.7793, -672.835022, -0.294970036, -0.553283751, 0.779018462, 0.907760143, 0.0922337398, 0.409224451, -0.298269033, 0.827870786, 0.475042701)
p87.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b87 = Instance.new("SpecialMesh", p87)
b87.MeshType = Enum.MeshType.Wedge
b87.Name = "Mesh"
b87.Scale = Vector3.new(0.0400000028, 0.539189398, 0.131635427)
p88 = Instance.new("Part", o1)
p88.BrickColor = BrickColor.new("Black")
p88.Name = "Wedge"
p88.CFrame = CFrame.new(-249.803482, 12642.1885, -672.31897, 0.604715049, -0.619352996, -0.500721037, -0.781463146, -0.340055078, -0.523142338, 0.153737009, 0.707647085, -0.689637959)
p88.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b88 = Instance.new("SpecialMesh", p88)
b88.MeshType = Enum.MeshType.Wedge
b88.Name = "Mesh"
b88.Scale = Vector3.new(0.0400000028, 0.113129504, 0.469939709)
p89 = Instance.new("Part", o1)
p89.BrickColor = BrickColor.new("Black")
p89.Name = "Wedge"
p89.CFrame = CFrame.new(-250.947067, 12641.5586, -673.038025, 0.195676968, 0.137669057, 0.97095722, -0.979784906, -0.0145752169, 0.199522585, 0.0416199975, -0.990371108, 0.132034004)
p89.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b89 = Instance.new("SpecialMesh", p89)
b89.MeshType = Enum.MeshType.Wedge
b89.Name = "Mesh"
b89.Scale = Vector3.new(0.0400000028, 0.341323882, 0.433118194)
p90 = Instance.new("Part", o1)
p90.BrickColor = BrickColor.new("Black")
p90.Name = "Wedge"
p90.CFrame = CFrame.new(-250.219803, 12641.793, -672.820923, 0.330601126, -0.274883837, 0.902851999, -0.87782228, -0.440889418, 0.187201947, 0.346599132, -0.854432821, -0.387057662)
p90.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b90 = Instance.new("SpecialMesh", p90)
b90.MeshType = Enum.MeshType.Wedge
b90.Name = "Mesh"
b90.Scale = Vector3.new(0.0400000028, 0.163767472, 0.55061996)
p91 = Instance.new("Part", o1)
p91.BrickColor = BrickColor.new("Black")
p91.Name = "Wedge"
p91.CFrame = CFrame.new(-250.934479, 12641.5879, -673.00061, 0.354909033, 0.930344105, -0.0921932459, 0.546142042, -0.126279831, 0.828119814, 0.758794129, -0.344257772, -0.552917838)
p91.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b91 = Instance.new("SpecialMesh", p91)
b91.MeshType = Enum.MeshType.Wedge
b91.Name = "Mesh"
b91.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p92 = Instance.new("Part", o1)
p92.BrickColor = BrickColor.new("Black")
p92.Name = "Wedge"
p92.CFrame = CFrame.new(-250.219803, 12641.793, -672.820923, 0.294970036, -0.553283751, -0.779018462, -0.907760143, 0.0922337398, -0.409224451, 0.298269033, 0.827870786, -0.475042701)
p92.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b92 = Instance.new("SpecialMesh", p92)
b92.MeshType = Enum.MeshType.Wedge
b92.Name = "Mesh"
b92.Scale = Vector3.new(0.0400000028, 0.539189398, 0.197220236)
p93 = Instance.new("Part", o1)
p93.BrickColor = BrickColor.new("Black")
p93.CFrame = CFrame.new(-253.412094, 12641.3154, -673.025635, -0.0858350396, 0.924051285, 0.372507304, 0.809512377, 0.282639742, -0.514591575, -0.580794275, 0.257379293, -0.772291362)
p93.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b93 = Instance.new("SpecialMesh", p93)
b93.MeshType = Enum.MeshType.Wedge
b93.Name = "Mesh"
b93.Scale = Vector3.new(2.0999999, 0.99999994, 1.60000014)
p94 = Instance.new("Part", o1)
p94.BrickColor = BrickColor.new("Really black")
p94.CFrame = CFrame.new(-253.378067, 12641.2607, -673.104675, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p94.Size = Vector3.new(0.200000003, 0.200000003, 0.399999976)
p94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b94 = Instance.new("BlockMesh", p94)
b94.Name = "Mesh"
b94.Scale = Vector3.new(1.19999993, 0.99999994, 1)
p95 = Instance.new("Part", o1)
p95.BrickColor = BrickColor.new("Really black")
p95.CFrame = CFrame.new(-253.230682, 12641.3721, -672.977234, -0.0858350396, 0.924051285, 0.372507304, 0.809512377, 0.282639742, -0.514591575, -0.580794275, 0.257379293, -0.772291362)
p95.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
p95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b95 = Instance.new("SpecialMesh", p95)
b95.MeshType = Enum.MeshType.Wedge
b95.Name = "Mesh"
b95.Scale = Vector3.new(0.699999988, 1, 0.99999994)
p96 = Instance.new("Part", o1)
p96.BrickColor = BrickColor.new("Black")
p96.CFrame = CFrame.new(-253.560913, 12641.0938, -673.035767, 0.372512907, -0.924048901, -0.085838981, -0.514589906, -0.282646358, 0.809511185, -0.772289753, -0.257381588, -0.580795348)
p96.Size = Vector3.new(0.449999988, 0.200000003, 0.200000003)
p96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b96 = Instance.new("SpecialMesh", p96)
b96.MeshType = Enum.MeshType.Wedge
b96.Name = "Mesh"
b96.Scale = Vector3.new(1, 0.99999994, 0.49999997)
p97 = Instance.new("Part", o1)
p97.BrickColor = BrickColor.new("Black")
p97.CFrame = CFrame.new(-253.588379, 12641.3564, -673.221313, -0.372512907, -0.924048901, 0.085838981, 0.514589906, -0.282646358, -0.809511185, 0.772289753, -0.257381588, 0.580795348)
p97.Size = Vector3.new(0.449999988, 0.200000003, 0.200000003)
p97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b97 = Instance.new("SpecialMesh", p97)
b97.MeshType = Enum.MeshType.Wedge
b97.Name = "Mesh"
b97.Scale = Vector3.new(1, 0.99999994, 0.49999997)
p98 = Instance.new("Part", o1)
p98.BrickColor = BrickColor.new("Dark stone grey")
p98.Reflectance = 0.25
p98.CFrame = CFrame.new(-253.74733, 12640.5488, -673.713379, -0.372512877, -0.0858378187, -0.924048722, 0.514589846, 0.809511602, -0.282645345, 0.772289693, -0.580795169, -0.257382244)
p98.Size = Vector3.new(0.200000003, 0.200000033, 0.200000003)
p98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b98 = Instance.new("CylinderMesh", p98)
b98.Name = "Mesh"
b98.Scale = Vector3.new(0.699999988, 0.300000012, 0.699999988)
p99 = Instance.new("Part", o1)
p99.BrickColor = BrickColor.new("Black")
p99.CFrame = CFrame.new(-253.90921, 12641.0703, -673.296753, -0.92405051, -0.0858404115, 0.37250796, -0.282645166, 0.809510052, -0.51459229, -0.257376134, -0.580796778, -0.772290587)
p99.Size = Vector3.new(0.210000202, 0.210000202, 0.210000202)
p99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b99 = Instance.new("BlockMesh", p99)
b99.Name = "Mesh"
b99.Scale = Vector3.new(1, 1, 1.5)
p100 = Instance.new("Part", o1)
p100.BrickColor = BrickColor.new("Black")
p100.CFrame = CFrame.new(-253.575363, 12641.2217, -673.127869, 0.924050748, 0.0858404264, 0.3725079, 0.282645226, -0.809510112, -0.51459229, 0.257376164, 0.580796838, -0.772290587)
p100.Size = Vector3.new(0.200000003, 0.200000003, 0.449999988)
p100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b100 = Instance.new("BlockMesh", p100)
b100.Name = "Mesh"
b100.Scale = Vector3.new(0.99999994, 1.10000014, 1)
p101 = Instance.new("Part", o1)
p101.BrickColor = BrickColor.new("Black")
p101.CFrame = CFrame.new(-253.822693, 12640.6797, -673.578369, -0.92405051, -0.372507811, -0.0858411342, -0.282645166, 0.51459074, 0.809511065, -0.257376134, 0.77229166, -0.580795288)
p101.Size = Vector3.new(1.20000005, 0.200000003, 0.200000003)
p101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b101 = Instance.new("SpecialMesh", p101)
b101.MeshType = Enum.MeshType.Wedge
b101.Name = "Mesh"
b101.Scale = Vector3.new(1, 0.99999994, 0.49999997)
p102 = Instance.new("Part", o1)
p102.BrickColor = BrickColor.new("Black")
p102.Name = "Wedge"
p102.CFrame = CFrame.new(-250.239899, 12641.8154, -672.850403, -0.117579982, -0.522459805, 0.844518065, -0.645082951, -0.60637635, -0.464947015, 0.755011857, -0.599452674, -0.265732199)
p102.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b102 = Instance.new("SpecialMesh", p102)
b102.MeshType = Enum.MeshType.Wedge
b102.Name = "Mesh"
b102.Scale = Vector3.new(0.0400000028, 0.184159204, 0.504228234)
p103 = Instance.new("Part", o1)
p103.BrickColor = BrickColor.new("Black")
p103.Name = "Wedge"
p103.CFrame = CFrame.new(-250.833359, 12641.5752, -673.031982, 0.929760396, 0.025506394, -0.367280573, -0.0727880374, -0.965171516, -0.251288742, -0.360898167, 0.260371983, -0.895521581)
p103.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b103 = Instance.new("SpecialMesh", p103)
b103.MeshType = Enum.MeshType.Wedge
b103.Name = "Mesh"
b103.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p104 = Instance.new("Part", o1)
p104.BrickColor = BrickColor.new("Black")
p104.Name = "Wedge"
p104.CFrame = CFrame.new(-250.222122, 12641.8154, -672.83728, -0.0717569813, -0.616188228, -0.784323394, -0.69152379, 0.59740901, -0.406075746, 0.718780816, 0.513239443, -0.468977034)
p104.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b104 = Instance.new("SpecialMesh", p104)
b104.MeshType = Enum.MeshType.Wedge
b104.Name = "Mesh"
b104.Scale = Vector3.new(0.0400000028, 0.538033664, 0.196545035)
p105 = Instance.new("Part", o1)
p105.BrickColor = BrickColor.new("Black")
p105.Name = "Wedge"
p105.CFrame = CFrame.new(-249.814346, 12642.1855, -672.318298, 0.618020713, 0.515034378, -0.593961358, -0.773795664, 0.531989694, -0.34384191, 0.138890937, 0.672106147, 0.727312028)
p105.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b105 = Instance.new("SpecialMesh", p105)
b105.MeshType = Enum.MeshType.Wedge
b105.Name = "Mesh"
b105.Scale = Vector3.new(0.0400000028, 0.120812096, 0.173449725)
p106 = Instance.new("Part", o1)
p106.BrickColor = BrickColor.new("Black")
p106.Name = "Wedge"
p106.CFrame = CFrame.new(-250.760971, 12641.6396, -673.019287, -0.0429589897, 0.413418919, 0.909527004, -0.624269903, -0.721874654, 0.298637241, 0.780026793, -0.554961145, 0.289095968)
p106.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b106 = Instance.new("SpecialMesh", p106)
b106.MeshType = Enum.MeshType.Wedge
b106.Name = "Mesh"
b106.Scale = Vector3.new(0.0400000028, 0.55462414, 0.170117185)
p107 = Instance.new("Part", o1)
p107.BrickColor = BrickColor.new("Black")
p107.Name = "Wedge"
p107.CFrame = CFrame.new(-250.239899, 12641.8154, -672.850403, 0.12424697, 0.902025163, 0.413416833, 0.648561835, 0.241497844, -0.721835375, -0.75095284, 0.357812315, -0.555013597)
p107.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b107 = Instance.new("SpecialMesh", p107)
b107.MeshType = Enum.MeshType.Wedge
b107.Name = "Mesh"
b107.Scale = Vector3.new(0.0400000028, 0.126289085, 0.521739244)
p108 = Instance.new("Part", o1)
p108.BrickColor = BrickColor.new("Black")
p108.Name = "Wedge"
p108.CFrame = CFrame.new(-250.215439, 12641.833, -672.833557, -0.268546015, 0.209259927, 0.940262496, -0.751517117, 0.565106809, -0.340406179, -0.602582037, -0.798038006, 0.00550524145)
p108.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b108 = Instance.new("SpecialMesh", p108)
b108.MeshType = Enum.MeshType.Wedge
b108.Name = "Mesh"
b108.Scale = Vector3.new(0.0400000028, 0.0516490266, 0.547313929)
p109 = Instance.new("Part", o1)
p109.BrickColor = BrickColor.new("Black")
p109.Name = "Wedge"
p109.CFrame = CFrame.new(-249.824402, 12642.1768, -672.294373, -0.618020713, 0.515034378, 0.593961358, 0.773795664, 0.531989694, 0.34384191, -0.138890937, 0.672106147, -0.727312028)
p109.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b109 = Instance.new("SpecialMesh", p109)
b109.MeshType = Enum.MeshType.Wedge
b109.Name = "Mesh"
b109.Scale = Vector3.new(0.0400000028, 0.120812096, 0.107344776)
p110 = Instance.new("Part", o1)
p110.BrickColor = BrickColor.new("Black")
p110.Name = "Wedge"
p110.CFrame = CFrame.new(-250.936188, 12641.6143, -673.01825, -0.354909033, 0.930344105, 0.0921932459, -0.546142042, -0.126279831, -0.828119814, -0.758794129, -0.344257772, 0.552917838)
p110.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b110 = Instance.new("SpecialMesh", p110)
b110.MeshType = Enum.MeshType.Wedge
b110.Name = "Mesh"
b110.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p111 = Instance.new("Part", o1)
p111.BrickColor = BrickColor.new("Black")
p111.Name = "Wedge"
p111.CFrame = CFrame.new(-250.248764, 12641.8037, -672.852905, 0.0717569813, -0.616188228, 0.784323394, 0.69152379, 0.59740901, 0.406075746, -0.718780816, 0.513239443, 0.468977034)
p111.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b111 = Instance.new("SpecialMesh", p111)
b111.MeshType = Enum.MeshType.Wedge
b111.Name = "Mesh"
b111.Scale = Vector3.new(0.0400000028, 0.538033664, 0.135615095)
p112 = Instance.new("Part", o1)
p112.BrickColor = BrickColor.new("Medium stone grey")
p112.Transparency = 1
p112.Name = "Blade"
p112.CFrame = CFrame.new(-251.231934, 12641.6641, -672.861328, 0.0988908559, 0.899339497, -0.42592141, -0.852361858, 0.297432661, 0.430131346, 0.513517022, 0.320503116, 0.795976102)
p112.Size = Vector3.new(0.239999995, 3.83999991, 1)
p112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b112 = Instance.new("BlockMesh", p112)
b112.Name = "Mesh"
p113 = Instance.new("Part", o1)
p113.BrickColor = BrickColor.new("Really black")
p113.Name = "Heart"
p113.CFrame = CFrame.new(-253.76532, 12640.7129, -673.803467, -0.92405051, -0.0858404115, 0.37250796, -0.282645166, 0.809510052, -0.51459229, -0.257376134, -0.580796778, -0.772290587)
p113.Size = Vector3.new(0.399999976, 0.399999976, 0.200000003)
p113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p113.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b113 = Instance.new("SpecialMesh", p113)
b113.MeshId = "http://www.roblox.com/asset/?id=105992239"
b113.TextureId = ""
b113.MeshType = Enum.MeshType.FileMesh
b113.Name = "Mesh"
b113.Scale = Vector3.new(0.75, 0.75, 0.75)
p114 = Instance.new("Part", o1)
p114.BrickColor = BrickColor.new("Black")
p114.Name = "HeartCol"
p114.CFrame = CFrame.new(-253.753647, 12640.6963, -673.825623, -0.92405051, -0.0858404115, 0.37250796, -0.282645166, 0.809510052, -0.51459229, -0.257376134, -0.580796778, -0.772290587)
p114.Size = Vector3.new(0.399999976, 0.399999976, 0.200000003)
p114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b114 = Instance.new("SpecialMesh", p114)
b114.MeshId = "http://www.roblox.com/asset/?id=105992239"
b114.TextureId = ""
b114.MeshType = Enum.MeshType.FileMesh
b114.Name = "Mesh"
b114.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
p115 = Instance.new("Part", o1)
p115.BrickColor = BrickColor.new("Black")
p115.Name = "Heart"
p115.CFrame = CFrame.new(-253.77536, 12640.7158, -673.786926, -0.924050689, -0.0858404487, 0.37250793, -0.282645226, 0.809510231, -0.514592111, -0.257376224, -0.580796897, -0.772290528)
p115.Size = Vector3.new(0.399999976, 0.399999976, 0.200000003)
p115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p115.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b115 = Instance.new("SpecialMesh", p115)
b115.MeshId = "http://www.roblox.com/asset/?id=105992239"
b115.TextureId = ""
b115.MeshType = Enum.MeshType.FileMesh
b115.Name = "Mesh"
b115.Scale = Vector3.new(0.824999988, 0.824999988, 0.824999988)
p116 = Instance.new("Part", o1)
p116.BrickColor = BrickColor.new("Really black")
p116.Name = "Heart"
p116.CFrame = CFrame.new(-253.78093, 12640.7266, -673.771912, -0.924050689, -0.0858404487, 0.37250793, -0.282645226, 0.809510231, -0.514592111, -0.257376224, -0.580796897, -0.772290528)
p116.Size = Vector3.new(0.399999976, 0.399999976, 0.200000003)
p116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b116 = Instance.new("SpecialMesh", p116)
b116.MeshId = "http://www.roblox.com/asset/?id=105992239"
b116.TextureId = ""
b116.MeshType = Enum.MeshType.FileMesh
b116.Name = "Mesh"
b116.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
p117 = Instance.new("Part", o1)
p117.BrickColor = BrickColor.new("Black")
p117.CFrame = CFrame.new(-253.847305, 12640.9404, -673.762329, 0.92405051, -0.372507811, 0.0858411342, 0.282645166, 0.51459074, -0.809511065, 0.257376134, 0.77229166, 0.580795288)
p117.Size = Vector3.new(1.20000005, 0.200000003, 0.200000003)
p117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b117 = Instance.new("SpecialMesh", p117)
b117.MeshType = Enum.MeshType.Wedge
b117.Name = "Mesh"
b117.Scale = Vector3.new(1, 0.99999994, 0.49999997)
p118 = Instance.new("Part", o1)
p118.BrickColor = BrickColor.new("Black")
p118.CFrame = CFrame.new(-253.758942, 12640.7168, -673.829468, -0.92405051, -0.372507811, -0.0858411342, -0.282645166, 0.51459074, 0.809511065, -0.257376134, 0.77229166, -0.580795288)
p118.Size = Vector3.new(0.399999976, 0.200000003, 0.400000036)
p118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b118 = Instance.new("CylinderMesh", p118)
b118.Name = "Mesh"
b118.Scale = Vector3.new(0.850000083, 0.99999994, 0.850000024)
p119 = Instance.new("Part", o1)
p119.BrickColor = BrickColor.new("Dark stone grey")
p119.Reflectance = 0.25
p119.CFrame = CFrame.new(-253.782227, 12640.8613, -673.938293, 0.372512877, 0.0858378187, -0.924048722, -0.514589846, -0.809511602, -0.282645345, -0.772289693, 0.580795169, -0.257382244)
p119.Size = Vector3.new(0.200000003, 0.200000033, 0.200000003)
p119.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p119.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p119.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p119.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p119.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p119.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b119 = Instance.new("CylinderMesh", p119)
b119.Name = "Mesh"
b119.Scale = Vector3.new(0.699999988, 0.300000012, 0.699999988)
p120 = Instance.new("Part", o1)
p120.BrickColor = BrickColor.new("Black")
p120.CFrame = CFrame.new(-253.926788, 12640.7813, -673.694946, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p120.Size = Vector3.new(0.200000003, 1.4000001, 0.200000003)
p120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b120 = Instance.new("BlockMesh", p120)
b120.Name = "Mesh"
b120.Scale = Vector3.new(1.10000014, 1, 0.99999994)
p121 = Instance.new("Part", o1)
p121.BrickColor = BrickColor.new("Black")
p121.CFrame = CFrame.new(-253.758499, 12640.709, -673.824097, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p121.Size = Vector3.new(0.200000003, 1.60000014, 0.200000003)
p121.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p121.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p121.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p121.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p121.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p121.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b121 = Instance.new("BlockMesh", p121)
b121.Name = "Mesh"
b121.Scale = Vector3.new(2.0999999, 1, 0.99999994)
p122 = Instance.new("Part", o1)
p122.BrickColor = BrickColor.new("Black")
p122.Name = "Wedge"
p122.CFrame = CFrame.new(-250.1987, 12641.7842, -672.871216, -0.114539988, 0.609692991, -0.784318268, 0.837774873, -0.365004867, -0.406084687, -0.533866942, -0.703595042, -0.468977779)
p122.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b122 = Instance.new("SpecialMesh", p122)
b122.MeshType = Enum.MeshType.Wedge
b122.Name = "Mesh"
b122.Scale = Vector3.new(0.0400000028, 0.00284294621, 0.328843415)
p123 = Instance.new("Part", o1)
p123.BrickColor = BrickColor.new("Black")
p123.Name = "Wedge"
p123.CFrame = CFrame.new(-250.159195, 12641.8154, -672.78717, 0.26591295, -0.963710666, 0.0234962367, -0.947789788, -0.265815258, -0.17617248, 0.176024958, 0.024577057, -0.984078825)
p123.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p123.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p123.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b123 = Instance.new("SpecialMesh", p123)
b123.MeshType = Enum.MeshType.Wedge
b123.Name = "Mesh"
b123.Scale = Vector3.new(0.0400000028, 0.0761746317, 0.40887025)
p124 = Instance.new("Part", o1)
p124.BrickColor = BrickColor.new("Black")
p124.Name = "Wedge"
p124.CFrame = CFrame.new(-250.248352, 12641.8037, -672.853027, -0.906018138, -0.409448147, -0.107161231, -0.386781067, 0.698190212, 0.602437556, -0.171848014, 0.58726722, -0.790939748)
p124.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b124 = Instance.new("SpecialMesh", p124)
b124.MeshType = Enum.MeshType.Wedge
b124.Name = "Mesh"
b124.Scale = Vector3.new(0.0400000028, 0.554577172, 0.0222996604)
p125 = Instance.new("Part", o1)
p125.BrickColor = BrickColor.new("Black")
p125.Name = "Wedge"
p125.CFrame = CFrame.new(-249.897385, 12642.1973, -672.368958, 0.0733570307, 0.571457982, 0.817346156, -0.819803298, -0.432152063, 0.375722259, 0.567927182, -0.697624922, 0.436781764)
p125.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p125.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b125 = Instance.new("SpecialMesh", p125)
b125.MeshType = Enum.MeshType.Wedge
b125.Name = "Mesh"
b125.Scale = Vector3.new(0.0400000028, 0.151584655, 0.0742567331)
p126 = Instance.new("Part", o1)
p126.BrickColor = BrickColor.new("Black")
p126.Name = "Wedge"
p126.CFrame = CFrame.new(-249.836121, 12642.21, -672.346313, -0.702599227, 0.706048131, 0.0886027887, 0.329787105, 0.433423132, -0.838680446, -0.630551219, -0.560036182, -0.537368298)
p126.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b126 = Instance.new("SpecialMesh", p126)
b126.MeshType = Enum.MeshType.Wedge
b126.Name = "Mesh"
b126.Scale = Vector3.new(0.0400000028, 0.000102456739, 0.268033415)
p127 = Instance.new("Part", o1)
p127.BrickColor = BrickColor.new("Black")
p127.Name = "Wedge"
p127.CFrame = CFrame.new(-251.422577, 12641.4326, -673.209717, -0.354149967, 0.930316806, 0.0953340754, -0.555223942, -0.12713404, -0.821926594, -0.752531886, -0.344017059, 0.561558604)
p127.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p127.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p127.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p127.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p127.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p127.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p127.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b127 = Instance.new("SpecialMesh", p127)
b127.MeshType = Enum.MeshType.Wedge
b127.Name = "Mesh"
b127.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p128 = Instance.new("Part", o1)
p128.BrickColor = BrickColor.new("Black")
p128.Name = "Wedge"
p128.CFrame = CFrame.new(-249.803192, 12642.2393, -672.297852, -0.440954, -0.254729986, -0.860623181, -0.620337009, 0.779481292, 0.087126188, 0.648645997, 0.57229501, -0.50173384)
p128.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b128 = Instance.new("SpecialMesh", p128)
b128.MeshType = Enum.MeshType.Wedge
b128.Name = "Mesh"
b128.Scale = Vector3.new(0.0400000028, 0.201077119, 0.250470132)
p129 = Instance.new("Part", o1)
p129.BrickColor = BrickColor.new("Black")
p129.Name = "Wedge"
p129.CFrame = CFrame.new(-251.422195, 12641.4326, -673.210388, -0.345267981, 0.232442155, 0.909263849, -0.513903916, 0.763859391, -0.390412182, -0.785297871, -0.602071166, -0.14428325)
p129.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b129 = Instance.new("SpecialMesh", p129)
b129.MeshType = Enum.MeshType.Wedge
b129.Name = "Mesh"
b129.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.539807439)
p130 = Instance.new("Part", o1)
p130.BrickColor = BrickColor.new("Black")
p130.Name = "Wedge"
p130.CFrame = CFrame.new(-249.812943, 12642.1934, -672.294128, 0.566305876, -0.654661953, -0.500714839, -0.800528824, -0.292363793, -0.523141503, 0.196089953, 0.697094738, -0.689643145)
p130.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b130 = Instance.new("SpecialMesh", p130)
b130.MeshType = Enum.MeshType.Wedge
b130.Name = "Mesh"
b130.Scale = Vector3.new(0.0400000028, 0.312881082, 0.308042496)
p131 = Instance.new("Part", o1)
p131.BrickColor = BrickColor.new("Black")
p131.Name = "Wedge"
p131.CFrame = CFrame.new(-249.842377, 12642.1641, -672.292908, 0.318767965, 0.685723424, 0.654347301, 0.729478955, -0.618280113, 0.292558193, 0.605183959, 0.38407436, -0.69730866)
p131.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p131.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p131.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p131.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p131.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p131.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p131.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b131 = Instance.new("SpecialMesh", p131)
b131.MeshType = Enum.MeshType.Wedge
b131.Name = "Mesh"
b131.Scale = Vector3.new(0.0400000028, 0.0237650424, 0.0329231694)
p132 = Instance.new("Part", o1)
p132.BrickColor = BrickColor.new("Black")
p132.Name = "Wedge"
p132.CFrame = CFrame.new(-251.30336, 12641.4219, -673.187561, 0.93096143, -0.35443294, -0.0876820236, -0.131890059, -0.550378978, 0.824431896, -0.340464145, -0.755949974, -0.559127748)
p132.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b132 = Instance.new("SpecialMesh", p132)
b132.MeshType = Enum.MeshType.Wedge
b132.Name = "Mesh"
b132.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p133 = Instance.new("Part", o1)
p133.BrickColor = BrickColor.new("Black")
p133.Name = "Wedge"
p133.CFrame = CFrame.new(-249.88353, 12642.2129, -672.348267, 0.0860480219, 0.885399461, 0.456796974, -0.823767185, -0.194651783, 0.532464445, 0.560360134, -0.422111839, 0.712613583)
p133.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p133.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p133.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p133.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p133.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p133.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p133.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b133 = Instance.new("SpecialMesh", p133)
b133.MeshType = Enum.MeshType.Wedge
b133.Name = "Mesh"
b133.Scale = Vector3.new(0.0400000028, 0.195769355, 0.299390018)
p134 = Instance.new("Part", o1)
p134.BrickColor = BrickColor.new("Black")
p134.Name = "Wedge"
p134.CFrame = CFrame.new(-251.330856, 12641.4229, -673.146667, 0.0934440196, 0.877625763, 0.470150352, -0.824550152, -0.196447805, 0.53058964, 0.558019102, -0.437242985, 0.705289543)
p134.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b134 = Instance.new("SpecialMesh", p134)
b134.MeshType = Enum.MeshType.Wedge
b134.Name = "Mesh"
b134.Scale = Vector3.new(0.0400000028, 0.383756131, 0.332605243)
p135 = Instance.new("Part", o1)
p135.BrickColor = BrickColor.new("Black")
p135.Name = "Wedge"
p135.CFrame = CFrame.new(-251.498703, 12641.3545, -673.248474, 0.93096143, -0.35443294, -0.0876820236, -0.131890059, -0.550378978, 0.824431896, -0.340464145, -0.755949974, -0.559127748)
p135.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p135.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p135.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p135.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p135.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p135.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p135.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b135 = Instance.new("SpecialMesh", p135)
b135.MeshType = Enum.MeshType.Wedge
b135.Name = "Mesh"
b135.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p136 = Instance.new("Part", o1)
p136.BrickColor = BrickColor.new("Black")
p136.Name = "Wedge"
p136.CFrame = CFrame.new(-251.512283, 12641.3838, -673.231567, -0.333157867, 0.411823213, -0.848178923, -0.597083747, -0.788361013, -0.148249581, -0.729723752, 0.45704335, 0.508541644)
p136.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b136 = Instance.new("SpecialMesh", p136)
b136.MeshType = Enum.MeshType.Wedge
b136.Name = "Mesh"
b136.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p137 = Instance.new("Part", o1)
p137.BrickColor = BrickColor.new("Black")
p137.Name = "Wedge"
p137.CFrame = CFrame.new(-251.333466, 12641.4268, -673.20636, 0.345267981, 0.232442155, -0.909263849, 0.513903916, 0.763859391, 0.390412182, 0.785297871, -0.602071166, 0.14428325)
p137.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p137.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p137.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p137.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p137.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p137.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p137.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b137 = Instance.new("SpecialMesh", p137)
b137.MeshType = Enum.MeshType.Wedge
b137.Name = "Mesh"
b137.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.0116391014)
p138 = Instance.new("Part", o1)
p138.BrickColor = BrickColor.new("Black")
p138.Name = "Wedge"
p138.CFrame = CFrame.new(-251.303055, 12641.4219, -673.189514, 0.0252090041, 0.683929086, -0.729112804, 0.959770143, -0.22058633, -0.173732474, -0.279653043, -0.695401013, -0.661975443)
p138.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b138 = Instance.new("SpecialMesh", p138)
b138.MeshType = Enum.MeshType.Wedge
b138.Name = "Mesh"
b138.Scale = Vector3.new(0.0400000028, 0.235460535, 0.498649806)
p139 = Instance.new("Part", o1)
p139.BrickColor = BrickColor.new("Black")
p139.Name = "Wedge"
p139.CFrame = CFrame.new(-251.499863, 12641.3799, -673.266541, -0.93096143, -0.35443294, 0.0876820236, 0.131890059, -0.550378978, -0.824431896, 0.340464145, -0.755949974, 0.559127748)
p139.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p139.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p139.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p139.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p139.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p139.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p139.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b139 = Instance.new("SpecialMesh", p139)
b139.MeshType = Enum.MeshType.Wedge
b139.Name = "Mesh"
b139.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p140 = Instance.new("Part", o1)
p140.BrickColor = BrickColor.new("Black")
p140.Name = "Wedge"
p140.CFrame = CFrame.new(-251.417465, 12641.4092, -673.191345, 0.354149967, 0.930316806, -0.0953340754, 0.555223942, -0.12713404, 0.821926594, 0.752531886, -0.344017059, -0.561558604)
p140.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b140 = Instance.new("SpecialMesh", p140)
b140.MeshType = Enum.MeshType.Wedge
b140.Name = "Mesh"
b140.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p141 = Instance.new("Part", o1)
p141.BrickColor = BrickColor.new("Black")
p141.Name = "Wedge"
p141.CFrame = CFrame.new(-249.803146, 12642.3096, -672.218628, -0.0860480219, 0.885399461, -0.456796974, 0.823767185, -0.194651783, -0.532464445, -0.560360134, -0.422111839, -0.712613583)
p141.Size = Vector3.new(0.200000003, 0.200000003, 0.305526108)
p141.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p141.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p141.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p141.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p141.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p141.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b141 = Instance.new("SpecialMesh", p141)
b141.MeshType = Enum.MeshType.Wedge
b141.Name = "Mesh"
b141.Scale = Vector3.new(0.0400000028, 0.195769355, 1)
p142 = Instance.new("Part", o1)
p142.BrickColor = BrickColor.new("Black")
p142.Name = "Wedge"
p142.CFrame = CFrame.new(-251.40033, 12641.4277, -673.152954, 0.354909033, 0.930344105, -0.0921932459, 0.546142042, -0.126279831, 0.828119814, 0.758794129, -0.344257772, -0.552917838)
p142.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b142 = Instance.new("SpecialMesh", p142)
b142.MeshType = Enum.MeshType.Wedge
b142.Name = "Mesh"
b142.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p143 = Instance.new("Part", o1)
p143.BrickColor = BrickColor.new("Black")
p143.Name = "Wedge"
p143.CFrame = CFrame.new(-251.325714, 12641.4209, -673.179443, -0.195676968, 0.137669057, -0.97095722, 0.979784906, -0.0145752169, -0.199522585, -0.0416199975, -0.990371108, -0.132034004)
p143.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p143.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p143.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p143.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p143.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p143.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p143.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b143 = Instance.new("SpecialMesh", p143)
b143.MeshType = Enum.MeshType.Wedge
b143.Name = "Mesh"
b143.Scale = Vector3.new(0.0400000028, 0.341323882, 0.507933795)
p144 = Instance.new("Part", o1)
p144.BrickColor = BrickColor.new("Black")
p144.Name = "Wedge"
p144.CFrame = CFrame.new(-251.524521, 12641.3555, -673.209229, 0.0934440196, 0.877625763, 0.470150352, -0.824550152, -0.196447805, 0.53058964, 0.558019102, -0.437242985, 0.705289543)
p144.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b144 = Instance.new("SpecialMesh", p144)
b144.MeshType = Enum.MeshType.Wedge
b144.Name = "Mesh"
b144.Scale = Vector3.new(0.0400000028, 0.383756131, 0.332605243)
p145 = Instance.new("Part", o1)
p145.BrickColor = BrickColor.new("Black")
p145.Name = "Wedge"
p145.CFrame = CFrame.new(-251.31749, 12641.4551, -673.170837, -0.333157867, 0.411823213, -0.848178923, -0.597083747, -0.788361013, -0.148249581, -0.729723752, 0.45704335, 0.508541644)
p145.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p145.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p145.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p145.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p145.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p145.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p145.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b145 = Instance.new("SpecialMesh", p145)
b145.MeshType = Enum.MeshType.Wedge
b145.Name = "Mesh"
b145.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p146 = Instance.new("Part", o1)
p146.BrickColor = BrickColor.new("Black")
p146.Name = "Wedge"
p146.CFrame = CFrame.new(-251.546143, 12641.3584, -673.235352, 0.929828405, -0.354631096, -0.0982646495, -0.122928061, -0.551019251, 0.82538873, -0.34685418, -0.755390406, -0.555947483)
p146.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b146 = Instance.new("SpecialMesh", p146)
b146.MeshType = Enum.MeshType.Wedge
b146.Name = "Mesh"
b146.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p147 = Instance.new("Part", o1)
p147.BrickColor = BrickColor.new("Black")
p147.Name = "Wedge"
p147.CFrame = CFrame.new(-251.305634, 12641.4473, -673.205017, -0.93096143, -0.35443294, 0.0876820236, 0.131890059, -0.550378978, -0.824431896, 0.340464145, -0.755949974, 0.559127748)
p147.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p147.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p147.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p147.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p147.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p147.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p147.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b147 = Instance.new("SpecialMesh", p147)
b147.MeshType = Enum.MeshType.Wedge
b147.Name = "Mesh"
b147.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p148 = Instance.new("Part", o1)
p148.BrickColor = BrickColor.new("Black")
p148.Name = "Wedge"
p148.CFrame = CFrame.new(-251.340805, 12641.4092, -673.228821, -0.0252090041, 0.683929086, 0.729112804, -0.959770143, -0.22058633, 0.173732474, 0.279653043, -0.695401013, 0.661975443)
p148.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b148 = Instance.new("SpecialMesh", p148)
b148.MeshType = Enum.MeshType.Wedge
b148.Name = "Mesh"
b148.Scale = Vector3.new(0.0400000028, 0.235460535, 0.113313235)
p149 = Instance.new("Part", o1)
p149.BrickColor = BrickColor.new("Black")
p149.Name = "Wedge"
p149.CFrame = CFrame.new(-251.420151, 12641.4033, -673.159546, -0.0933649689, -0.14665404, -0.984771848, 0.824371696, -0.566015601, 0.0061344509, -0.558295846, -0.811245322, 0.173743486)
p149.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p149.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p149.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p149.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p149.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p149.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p149.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b149 = Instance.new("SpecialMesh", p149)
b149.MeshType = Enum.MeshType.Wedge
b149.Name = "Mesh"
b149.Scale = Vector3.new(0.0400000028, 0.157024801, 0.403840691)
p150 = Instance.new("Part", o1)
p150.BrickColor = BrickColor.new("Black")
p150.Name = "Wedge"
p150.CFrame = CFrame.new(-251.500488, 12641.4131, -673.123535, -0.0955799967, 0.877393067, -0.470155299, 0.825028002, -0.194441468, -0.530585825, -0.556949973, -0.438604683, -0.705289066)
p150.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p150.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p150.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b150 = Instance.new("SpecialMesh", p150)
b150.MeshType = Enum.MeshType.Wedge
b150.Name = "Mesh"
b150.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.761848152)
p151 = Instance.new("Part", o1)
p151.BrickColor = BrickColor.new("Black")
p151.Name = "Wedge"
p151.CFrame = CFrame.new(-251.547546, 12641.3838, -673.252563, -0.929828405, -0.354631096, 0.0982646495, 0.122928061, -0.551019251, -0.82538873, 0.34685418, -0.755390406, 0.555947483)
p151.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p151.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p151.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p151.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p151.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p151.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p151.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b151 = Instance.new("SpecialMesh", p151)
b151.MeshType = Enum.MeshType.Wedge
b151.Name = "Mesh"
b151.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p152 = Instance.new("Part", o1)
p152.BrickColor = BrickColor.new("Black")
p152.Name = "Wedge"
p152.CFrame = CFrame.new(-251.34639, 12641.4326, -673.172058, 0.929828405, -0.354631096, -0.0982646495, -0.122928061, -0.551019251, 0.82538873, -0.34685418, -0.755390406, -0.555947483)
p152.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b152 = Instance.new("SpecialMesh", p152)
b152.MeshType = Enum.MeshType.Wedge
b152.Name = "Mesh"
b152.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p153 = Instance.new("Part", o1)
p153.BrickColor = BrickColor.new("Black")
p153.Name = "Wedge"
p153.CFrame = CFrame.new(-251.355286, 12641.4609, -673.189941, 0.107164018, 0.42320019, -0.899676323, 0.525926054, -0.792051554, -0.309929252, -0.843752146, -0.43994996, -0.307451427)
p153.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p153.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p153.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p153.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p153.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p153.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p153.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b153 = Instance.new("SpecialMesh", p153)
b153.MeshType = Enum.MeshType.Wedge
b153.Name = "Mesh"
b153.Scale = Vector3.new(0.0400000028, 0.402456522, 0.376990765)
p154 = Instance.new("Part", o1)
p154.BrickColor = BrickColor.new("Black")
p154.Name = "Wedge"
p154.CFrame = CFrame.new(-251.348221, 12641.458, -673.189636, -0.929828405, -0.354631096, 0.0982646495, 0.122928061, -0.551019251, -0.82538873, 0.34685418, -0.755390406, 0.555947483)
p154.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p154.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p154.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p154.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p154.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p154.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p154.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b154 = Instance.new("SpecialMesh", p154)
b154.MeshType = Enum.MeshType.Wedge
b154.Name = "Mesh"
b154.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p155 = Instance.new("Part", o1)
p155.BrickColor = BrickColor.new("Black")
p155.Name = "Wedge"
p155.CFrame = CFrame.new(-251.496582, 12641.3545, -673.251709, 0.0252090041, 0.683929086, -0.729112804, 0.959770143, -0.22058633, -0.173732474, -0.279653043, -0.695401013, -0.661975443)
p155.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p155.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p155.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p155.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p155.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p155.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p155.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b155 = Instance.new("SpecialMesh", p155)
b155.MeshType = Enum.MeshType.Wedge
b155.Name = "Mesh"
b155.Scale = Vector3.new(0.0400000028, 0.235460535, 0.498649806)
p156 = Instance.new("Part", o1)
p156.BrickColor = BrickColor.new("Black")
p156.Name = "Wedge"
p156.CFrame = CFrame.new(-251.319641, 12641.4072, -673.234741, -0.929760396, 0.025506394, 0.367280573, 0.0727880374, -0.965171516, 0.251288742, 0.360898167, 0.260371983, 0.895521581)
p156.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p156.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p156.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p156.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p156.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p156.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p156.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b156 = Instance.new("SpecialMesh", p156)
b156.MeshType = Enum.MeshType.Wedge
b156.Name = "Mesh"
b156.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p157 = Instance.new("Part", o1)
p157.BrickColor = BrickColor.new("Dark stone grey")
p157.Reflectance = 0.25
p157.CFrame = CFrame.new(-254.122009, 12640.4385, -673.818054, -0.372512877, -0.0858378187, -0.924048722, 0.514589846, 0.809511602, -0.282645345, 0.772289693, -0.580795169, -0.257382244)
p157.Size = Vector3.new(0.200000003, 0.200000033, 0.200000003)
p157.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p157.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p157.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p157.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p157.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p157.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b157 = Instance.new("CylinderMesh", p157)
b157.Name = "Mesh"
b157.Scale = Vector3.new(0.699999988, 0.300000012, 0.699999988)
p158 = Instance.new("Part", o1)
p158.BrickColor = BrickColor.new("Dark stone grey")
p158.Reflectance = 0.25
p158.CFrame = CFrame.new(-254.151016, 12640.752, -674.041077, 0.372512877, 0.0858378187, -0.924048722, -0.514589846, -0.809511602, -0.282645345, -0.772289693, 0.580795169, -0.257382244)
p158.Size = Vector3.new(0.200000003, 0.200000033, 0.200000003)
p158.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p158.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p158.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p158.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p158.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p158.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b158 = Instance.new("CylinderMesh", p158)
b158.Name = "Mesh"
b158.Scale = Vector3.new(0.699999988, 0.300000012, 0.699999988)
p159 = Instance.new("Part", o1)
p159.BrickColor = BrickColor.new("Black")
p159.CFrame = CFrame.new(-254.151245, 12640.4668, -674.10791, 0.0858350396, 0.924051285, -0.372507304, -0.809512377, 0.282639742, 0.514591575, 0.580794275, 0.257379293, 0.772291362)
p159.Size = Vector3.new(0.200000003, 0.599990666, 0.200000003)
p159.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p159.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p159.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p159.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p159.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p159.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b159 = Instance.new("SpecialMesh", p159)
b159.MeshType = Enum.MeshType.Wedge
b159.Name = "Mesh"
b159.Scale = Vector3.new(2.099967, 1, 0.999984384)
p160 = Instance.new("Part", o1)
p160.BrickColor = BrickColor.new("Dark stone grey")
p160.Reflectance = 0.25
p160.CFrame = CFrame.new(-254.008347, 12640.6182, -673.913818, 0.0858430266, -0.372507006, -0.924050629, -0.809510291, 0.514591277, -0.282646507, 0.580796182, 0.77229166, -0.257374167)
p160.Size = Vector3.new(0.200000003, 0.400000036, 0.200000003)
p160.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p160.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p160.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p160.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p160.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p160.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b160 = Instance.new("CylinderMesh", p160)
b160.Name = "Mesh"
b160.Scale = Vector3.new(0.699999988, 0.649999976, 0.699999988)
p161 = Instance.new("Part", o1)
p161.BrickColor = BrickColor.new("Black")
p161.CFrame = CFrame.new(-254.282059, 12640.959, -673.401306, -0.92405051, -0.0858404115, 0.37250796, -0.282645166, 0.809510052, -0.51459229, -0.257376134, -0.580796778, -0.772290587)
p161.Size = Vector3.new(0.210000202, 0.210000202, 0.210000202)
p161.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p161.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p161.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p161.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p161.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p161.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b161 = Instance.new("BlockMesh", p161)
b161.Name = "Mesh"
b161.Scale = Vector3.new(1, 1, 1.5)
p162 = Instance.new("Part", o1)
p162.BrickColor = BrickColor.new("Black")
p162.CFrame = CFrame.new(-254.378906, 12640.4775, -673.710754, -0.372512877, 0.924048662, -0.0858389363, 0.514589846, 0.282646328, 0.809511185, 0.772289693, 0.257381529, -0.580795348)
p162.Size = Vector3.new(0.200000003, 0.399999976, 0.200000003)
p162.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p162.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p162.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p162.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p162.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p162.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b162 = Instance.new("SpecialMesh", p162)
b162.MeshType = Enum.MeshType.Wedge
b162.Name = "Mesh"
b162.Scale = Vector3.new(0.99999994, 1, 0.99999994)
p163 = Instance.new("Part", o1)
p163.BrickColor = BrickColor.new("Black")
p163.Name = "Wedge"
p163.CFrame = CFrame.new(-251.547302, 12641.3867, -673.252197, 0.0992380157, 0.42512697, -0.899677157, 0.540628076, -0.782090127, -0.309929758, -0.835388124, -0.455633849, -0.307448626)
p163.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p163.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p163.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p163.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p163.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p163.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p163.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b163 = Instance.new("SpecialMesh", p163)
b163.MeshType = Enum.MeshType.Wedge
b163.Name = "Mesh"
b163.Scale = Vector3.new(0.0400000028, 0.41813603, 0.366072923)
p164 = Instance.new("Part", o1)
p164.BrickColor = BrickColor.new("Black")
p164.Name = "Wedge"
p164.CFrame = CFrame.new(-251.498795, 12641.3545, -673.248352, 0.929760396, 0.025506394, -0.367280573, -0.0727880374, -0.965171516, -0.251288742, -0.360898167, 0.260371983, -0.895521581)
p164.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p164.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p164.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p164.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p164.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p164.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p164.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b164 = Instance.new("SpecialMesh", p164)
b164.MeshType = Enum.MeshType.Wedge
b164.Name = "Mesh"
b164.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p165 = Instance.new("Part", o1)
p165.BrickColor = BrickColor.new("Black")
p165.Name = "Wedge"
p165.CFrame = CFrame.new(-251.559494, 12641.3594, -673.196289, -0.0930720046, 0.349361897, -0.932354033, 0.824645102, -0.497695774, -0.268811315, -0.557941079, -0.793879867, -0.241778016)
p165.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p165.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p165.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p165.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p165.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p165.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p165.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b165 = Instance.new("SpecialMesh", p165)
b165.MeshType = Enum.MeshType.Wedge
b165.Name = "Mesh"
b165.Scale = Vector3.new(0.0400000028, 0.196231619, 0.22273533)
p166 = Instance.new("Part", o1)
p166.BrickColor = BrickColor.new("Black")
p166.Name = "Wedge"
p166.CFrame = CFrame.new(-251.11821, 12641.5381, -673.00293, -0.0955799967, 0.877393067, -0.470155299, 0.825028002, -0.194441468, -0.530585825, -0.556949973, -0.438604683, -0.705289066)
p166.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p166.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p166.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p166.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p166.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p166.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p166.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b166 = Instance.new("SpecialMesh", p166)
b166.MeshType = Enum.MeshType.Wedge
b166.Name = "Mesh"
b166.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.761848152)
p167 = Instance.new("Part", o1)
p167.BrickColor = BrickColor.new("Black")
p167.Name = "Wedge"
p167.CFrame = CFrame.new(-251.0896, 12641.5342, -673.011169, -0.0934440196, 0.877625763, -0.470150352, 0.824550152, -0.196447805, -0.53058964, -0.558019102, -0.437242985, -0.705289543)
p167.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p167.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p167.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p167.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p167.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p167.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p167.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b167 = Instance.new("SpecialMesh", p167)
b167.MeshType = Enum.MeshType.Wedge
b167.Name = "Mesh"
b167.Scale = Vector3.new(0.0400000028, 0.383756131, 0.725586355)
p168 = Instance.new("Part", o1)
p168.BrickColor = BrickColor.new("Black")
p168.Name = "Wedge"
p168.CFrame = CFrame.new(-251.302032, 12641.4805, -673.061523, -0.0955799967, 0.877393067, -0.470155299, 0.825028002, -0.194441468, -0.530585825, -0.556949973, -0.438604683, -0.705289066)
p168.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p168.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p168.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p168.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p168.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p168.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p168.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b168 = Instance.new("SpecialMesh", p168)
b168.MeshType = Enum.MeshType.Wedge
b168.Name = "Mesh"
b168.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.761848152)
p169 = Instance.new("Part", o1)
p169.BrickColor = BrickColor.new("Black")
p169.Name = "Wedge"
p169.CFrame = CFrame.new(-251.400589, 12641.4277, -673.153381, 0.333157867, 0.411823213, 0.848178923, 0.597083747, -0.788361013, 0.148249581, 0.729723752, 0.45704335, -0.508541644)
p169.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p169.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p169.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p169.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p169.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p169.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p169.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b169 = Instance.new("SpecialMesh", p169)
b169.MeshType = Enum.MeshType.Wedge
b169.Name = "Mesh"
b169.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p170 = Instance.new("Part", o1)
p170.BrickColor = BrickColor.new("Black")
p170.Name = "Wedge"
p170.CFrame = CFrame.new(-251.547913, 12641.3906, -673.250183, 0.107164018, 0.42320019, -0.899676323, 0.525926054, -0.792051554, -0.309929252, -0.843752146, -0.43994996, -0.307451427)
p170.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p170.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p170.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p170.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p170.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p170.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p170.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b170 = Instance.new("SpecialMesh", p170)
b170.MeshType = Enum.MeshType.Wedge
b170.Name = "Mesh"
b170.Scale = Vector3.new(0.0400000028, 0.402456522, 0.376990765)
p171 = Instance.new("Part", o1)
p171.BrickColor = BrickColor.new("Black")
p171.Name = "Wedge"
p171.CFrame = CFrame.new(-251.41478, 12641.4141, -673.146301, 0.0930720046, 0.349361897, 0.932354033, -0.824645102, -0.497695774, 0.268811315, 0.557941079, -0.793879867, 0.241778016)
p171.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p171.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p171.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p171.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p171.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p171.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p171.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b171 = Instance.new("SpecialMesh", p171)
b171.MeshType = Enum.MeshType.Wedge
b171.Name = "Mesh"
b171.Scale = Vector3.new(0.0400000028, 0.196231619, 0.352924824)
p172 = Instance.new("Part", o1)
p172.BrickColor = BrickColor.new("Black")
p172.Name = "Wedge"
p172.CFrame = CFrame.new(-251.520126, 12641.3555, -673.240845, -0.195676968, 0.137669057, -0.97095722, 0.979784906, -0.0145752169, -0.199522585, -0.0416199975, -0.990371108, -0.132034004)
p172.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p172.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p172.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p172.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p172.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p172.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p172.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b172 = Instance.new("SpecialMesh", p172)
b172.MeshType = Enum.MeshType.Wedge
b172.Name = "Mesh"
b172.Scale = Vector3.new(0.0400000028, 0.341323882, 0.507933795)
p173 = Instance.new("Part", o1)
p173.BrickColor = BrickColor.new("Black")
p173.Name = "Wedge"
p173.CFrame = CFrame.new(-251.474167, 12641.4131, -673.13385, -0.0934440196, 0.877625763, -0.470150352, 0.824550152, -0.196447805, -0.53058964, -0.558019102, -0.437242985, -0.705289543)
p173.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p173.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p173.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p173.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p173.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p173.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p173.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b173 = Instance.new("SpecialMesh", p173)
b173.MeshType = Enum.MeshType.Wedge
b173.Name = "Mesh"
b173.Scale = Vector3.new(0.0400000028, 0.383756131, 0.725586355)
p174 = Instance.new("Part", o1)
p174.BrickColor = BrickColor.new("Black")
p174.Name = "Wedge"
p174.CFrame = CFrame.new(-251.552261, 12641.3584, -673.199341, 0.0955799967, 0.877393067, 0.470155299, -0.825028002, -0.194441468, 0.530585825, 0.556949973, -0.438604683, 0.705289066)
p174.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p174.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p174.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p174.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p174.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p174.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p174.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b174 = Instance.new("SpecialMesh", p174)
b174.MeshType = Enum.MeshType.Wedge
b174.Name = "Mesh"
b174.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.296343386)
p175 = Instance.new("Part", o1)
p175.BrickColor = BrickColor.new("Black")
p175.Name = "Wedge"
p175.CFrame = CFrame.new(-251.41539, 12641.4004, -673.190918, 0.195676968, 0.137669057, 0.97095722, -0.979784906, -0.0145752169, 0.199522585, 0.0416199975, -0.990371108, 0.132034004)
p175.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p175.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p175.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p175.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p175.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p175.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p175.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b175 = Instance.new("SpecialMesh", p175)
b175.MeshType = Enum.MeshType.Wedge
b175.Name = "Mesh"
b175.Scale = Vector3.new(0.0400000028, 0.341323882, 0.433118194)
p176 = Instance.new("Part", o1)
p176.BrickColor = BrickColor.new("Black")
p176.Name = "Wedge"
p176.CFrame = CFrame.new(-251.151566, 12641.4844, -673.148743, 0.345267981, 0.232442155, -0.909263849, 0.513903916, 0.763859391, 0.390412182, 0.785297871, -0.602071166, 0.14428325)
p176.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p176.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p176.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p176.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p176.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p176.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p176.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b176 = Instance.new("SpecialMesh", p176)
b176.MeshType = Enum.MeshType.Wedge
b176.Name = "Mesh"
b176.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.0116391014)
p177 = Instance.new("Part", o1)
p177.BrickColor = BrickColor.new("Dark stone grey")
p177.Reflectance = 0.25
p177.CFrame = CFrame.new(-254.328094, 12640.4287, -674.124817, 0.0858430266, -0.372507006, -0.924050629, -0.809510291, 0.514591277, -0.282646507, 0.580796182, 0.77229166, -0.257374167)
p177.Size = Vector3.new(0.200000003, 0.400000036, 0.200000003)
p177.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p177.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p177.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p177.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p177.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p177.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b177 = Instance.new("CylinderMesh", p177)
b177.Name = "Mesh"
b177.Scale = Vector3.new(0.699999988, 0.649999976, 0.699999988)
p178 = Instance.new("Part", o1)
p178.BrickColor = BrickColor.new("Black")
p178.CFrame = CFrame.new(-254.686432, 12640.8867, -673.438049, 0.924050748, 0.0858404264, 0.3725079, 0.282645226, -0.809510112, -0.51459229, 0.257376164, 0.580796838, -0.772290587)
p178.Size = Vector3.new(0.200000003, 0.200000003, 0.449999988)
p178.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p178.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p178.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p178.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p178.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p178.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b178 = Instance.new("BlockMesh", p178)
b178.Name = "Mesh"
b178.Scale = Vector3.new(0.99999994, 1.10000014, 1)
p179 = Instance.new("Part", o1)
p179.BrickColor = BrickColor.new("Black")
p179.CFrame = CFrame.new(-254.671021, 12640.7549, -673.345764, -0.372512907, 0.924048901, -0.085838981, 0.514589906, 0.282646358, 0.809511185, 0.772289753, 0.257381588, -0.580795348)
p179.Size = Vector3.new(0.449999988, 0.200000003, 0.200000003)
p179.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p179.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p179.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p179.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p179.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p179.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b179 = Instance.new("SpecialMesh", p179)
b179.MeshType = Enum.MeshType.Wedge
b179.Name = "Mesh"
b179.Scale = Vector3.new(1, 0.99999994, 0.49999997)
p180 = Instance.new("Part", o1)
p180.BrickColor = BrickColor.new("Black")
p180.CFrame = CFrame.new(-254.408035, 12640.8037, -673.941345, 0.372512877, 0.924048662, 0.0858389363, -0.514589846, 0.282646328, -0.809511185, -0.772289693, 0.257381529, 0.580795348)
p180.Size = Vector3.new(0.200000003, 0.399999976, 0.200000003)
p180.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p180.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p180.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p180.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p180.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p180.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b180 = Instance.new("SpecialMesh", p180)
b180.MeshType = Enum.MeshType.Wedge
b180.Name = "Mesh"
b180.Scale = Vector3.new(0.99999994, 1, 0.99999994)
p181 = Instance.new("Part", o1)
p181.BrickColor = BrickColor.new("Black")
p181.CFrame = CFrame.new(-254.694687, 12641.0186, -673.530273, 0.372512907, 0.924048901, 0.085838981, -0.514589906, 0.282646358, -0.809511185, -0.772289753, 0.257381588, 0.580795348)
p181.Size = Vector3.new(0.449999988, 0.200000003, 0.200000003)
p181.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p181.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p181.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p181.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p181.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p181.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b181 = Instance.new("SpecialMesh", p181)
b181.MeshType = Enum.MeshType.Wedge
b181.Name = "Mesh"
b181.Scale = Vector3.new(1, 0.99999994, 0.49999997)
p182 = Instance.new("Part", o1)
p182.BrickColor = BrickColor.new("Black")
p182.CFrame = CFrame.new(-254.891785, 12640.8652, -673.43988, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p182.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p182.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p182.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p182.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p182.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p182.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p182.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b182 = Instance.new("SpecialMesh", p182)
b182.MeshType = Enum.MeshType.Wedge
b182.Name = "Mesh"
b182.Scale = Vector3.new(2.0999999, 0.99999994, 1.60000014)
p183 = Instance.new("Part", o1)
p183.BrickColor = BrickColor.new("Black")
p183.CFrame = CFrame.new(-254.651215, 12640.3955, -673.78717, 0.372512877, -0.924048662, -0.0858389363, -0.514589846, -0.282646328, 0.809511185, -0.772289693, -0.257381529, -0.580795348)
p183.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p183.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p183.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p183.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p183.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p183.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p183.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b183 = Instance.new("SpecialMesh", p183)
b183.MeshType = Enum.MeshType.Wedge
b183.Name = "Mesh"
b183.Scale = Vector3.new(0.99999994, 0.99999994, 0.99999994)
p184 = Instance.new("Part", o1)
p184.BrickColor = BrickColor.new("Black")
p184.CFrame = CFrame.new(-254.684586, 12640.7188, -674.017944, -0.372512877, -0.924048662, 0.0858389363, 0.514589846, -0.282646328, -0.809511185, 0.772289693, -0.257381529, 0.580795348)
p184.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p184.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p184.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p184.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p184.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p184.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p184.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b184 = Instance.new("SpecialMesh", p184)
b184.MeshType = Enum.MeshType.Wedge
b184.Name = "Mesh"
b184.Scale = Vector3.new(0.99999994, 0.99999994, 0.99999994)
p185 = Instance.new("Part", o1)
p185.BrickColor = BrickColor.new("Black")
p185.CFrame = CFrame.new(-254.732025, 12640.6416, -673.770874, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p185.Size = Vector3.new(0.200000003, 0.200000003, 0.540000021)
p185.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p185.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p185.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p185.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p185.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p185.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b185 = Instance.new("BlockMesh", p185)
b185.Name = "Mesh"
b185.Scale = Vector3.new(2.0999999, 0.99999994, 1)
p186 = Instance.new("Part", o1)
p186.BrickColor = BrickColor.new("Black")
p186.CFrame = CFrame.new(-254.520065, 12640.3525, -674.210693, -0.0858350396, -0.924051285, -0.372507304, 0.809512377, -0.282639742, 0.514591575, -0.580794275, -0.257379293, 0.772291362)
p186.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p186.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p186.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p186.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p186.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p186.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p186.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b186 = Instance.new("SpecialMesh", p186)
b186.MeshType = Enum.MeshType.Wedge
b186.Name = "Mesh"
b186.Scale = Vector3.new(2.099967, 0.999984503, 0.999984384)
p187 = Instance.new("Part", o1)
p187.BrickColor = BrickColor.new("Black")
p187.CFrame = CFrame.new(-254.593643, 12640.4531, -674.056885, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p187.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p187.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p187.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p187.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p187.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p187.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p187.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b187 = Instance.new("BlockMesh", p187)
b187.Name = "Mesh"
b187.Scale = Vector3.new(2.0999999, 0.99999994, 0.99999994)
p188 = Instance.new("Part", o1)
p188.BrickColor = BrickColor.new("Black")
p188.Name = "Wedge"
p188.CFrame = CFrame.new(-250.160522, 12641.8008, -672.845154, 0.153646976, -0.250826955, -0.955760717, 0.686107814, -0.668982863, 0.285863757, -0.71108979, -0.699676991, 0.0693071336)
p188.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p188.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p188.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p188.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p188.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p188.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p188.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b188 = Instance.new("SpecialMesh", p188)
b188.MeshType = Enum.MeshType.Wedge
b188.Name = "Mesh"
b188.Scale = Vector3.new(0.0400000028, 0.163363621, 0.0787231848)
p189 = Instance.new("Part", o1)
p189.BrickColor = BrickColor.new("Black")
p189.CFrame = CFrame.new(-250.001389, 12642.0547, -672.558838, 0.0935280025, 0.482656956, -0.87080127, -0.824744999, 0.527505577, 0.203797966, 0.557717025, 0.699128151, 0.447405457)
p189.Size = Vector3.new(0.200000003, 0.656000197, 0.200000003)
p189.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p189.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p189.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p189.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p189.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p189.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b189 = Instance.new("BlockMesh", p189)
b189.Name = "Mesh"
b189.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p190 = Instance.new("Part", o1)
p190.BrickColor = BrickColor.new("Black")
p190.CFrame = CFrame.new(-249.788361, 12642.252, -672.178101, 0.0935280025, 0.34048605, -0.935586333, -0.824744999, 0.552892864, 0.118765682, 0.557717025, 0.760512233, 0.332525104)
p190.Size = Vector3.new(0.200000003, 0.308000147, 0.200000003)
p190.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p190.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p190.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p190.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p190.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p190.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b190 = Instance.new("BlockMesh", p190)
b190.Name = "Mesh"
b190.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p191 = Instance.new("Part", o1)
p191.BrickColor = BrickColor.new("Black")
p191.CFrame = CFrame.new(-249.80835, 12642.1855, -672.337341, -0.50087595, -0.860450923, -0.0935289934, -0.523100913, 0.214853823, 0.824744403, -0.689556956, 0.462019712, -0.557717681)
p191.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p191.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p191.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p191.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p191.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p191.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p191.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b191 = Instance.new("BlockMesh", p191)
b191.Name = "Mesh"
b191.Scale = Vector3.new(0.605106771, 0.0400000028, 0.0400390625)
p192 = Instance.new("Part", o1)
p192.BrickColor = BrickColor.new("Black")
p192.CFrame = CFrame.new(-250.042679, 12642.0449, -672.575867, 0.872717679, 0.0733646676, -0.482681572, -0.22283493, -0.819806814, -0.527504802, -0.434405863, 0.567921102, -0.6991117)
p192.Size = Vector3.new(0.200000003, 0.200000003, 0.587077022)
p192.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p192.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p192.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p192.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p192.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p192.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b192 = Instance.new("BlockMesh", p192)
b192.Name = "Mesh"
b192.Scale = Vector3.new(0.16879566, 0.0400000028, 1)
p193 = Instance.new("Part", o1)
p193.BrickColor = BrickColor.new("Black")
p193.CFrame = CFrame.new(-249.753052, 12642.2764, -672.177124, -0.727030993, -0.596206129, -0.340535343, -0.358047009, 0.752406836, -0.552889168, 0.585856974, -0.280039847, -0.760492861)
p193.Size = Vector3.new(0.200000003, 0.200000003, 0.256383687)
p193.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p193.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p193.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p193.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p193.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p193.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b193 = Instance.new("BlockMesh", p193)
b193.Name = "Mesh"
b193.Scale = Vector3.new(0.321088403, 0.0400000028, 1)
p194 = Instance.new("Part", o1)
p194.BrickColor = BrickColor.new("Black")
p194.Name = "Wedge"
p194.CFrame = CFrame.new(-249.69725, 12642.3711, -672.068237, 0.409706861, 0.580569804, -0.703618526, -0.48631683, -0.513564825, -0.706928015, -0.771774709, 0.631814718, 0.0719298422)
p194.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p194.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p194.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p194.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p194.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p194.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p194.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b194 = Instance.new("SpecialMesh", p194)
b194.MeshType = Enum.MeshType.Wedge
b194.Name = "Mesh"
b194.Scale = Vector3.new(0.0400000028, 0.0361642577, 0.024275722)
p195 = Instance.new("Part", o1)
p195.BrickColor = BrickColor.new("Black")
p195.Name = "Wedge"
p195.CFrame = CFrame.new(-249.741852, 12642.3506, -672.076538, -0.395481944, 0.161116108, -0.904232085, 0.544603944, 0.833892584, -0.0896091834, 0.739594936, -0.527887166, -0.417533875)
p195.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p195.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p195.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p195.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p195.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p195.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p195.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b195 = Instance.new("SpecialMesh", p195)
b195.MeshType = Enum.MeshType.Wedge
b195.Name = "Mesh"
b195.Scale = Vector3.new(0.0400000028, 0.17004101, 0.0293051079)
p196 = Instance.new("Part", o1)
p196.BrickColor = BrickColor.new("Black")
p196.Name = "Wedge"
p196.CFrame = CFrame.new(-249.863846, 12642.3369, -672.133728, 0.395481944, 0.161116108, 0.904232085, -0.544603944, 0.833892584, 0.0896091834, -0.739594936, -0.527887166, 0.417533875)
p196.Size = Vector3.new(0.200000003, 0.200000003, 0.27066803)
p196.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p196.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p196.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p196.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p196.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p196.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b196 = Instance.new("SpecialMesh", p196)
b196.MeshType = Enum.MeshType.Wedge
b196.Name = "Mesh"
b196.Scale = Vector3.new(0.0400000028, 0.17004101, 1)
p197 = Instance.new("Part", o1)
p197.BrickColor = BrickColor.new("Black")
p197.Name = "Wedge"
p197.CFrame = CFrame.new(-249.718735, 12642.3486, -672.066406, -0.403408915, 0.584970176, 0.703612983, 0.480737865, -0.518784106, 0.706932962, 0.778557837, 0.623436451, -0.0719351768)
p197.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p197.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p197.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p197.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p197.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p197.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p197.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b197 = Instance.new("SpecialMesh", p197)
b197.MeshType = Enum.MeshType.Wedge
b197.Name = "Mesh"
b197.Scale = Vector3.new(0.0400000028, 0.0361625254, 0.247659609)
p198 = Instance.new("Part", o1)
p198.BrickColor = BrickColor.new("Black")
p198.Name = "Wedge"
p198.CFrame = CFrame.new(-250.000809, 12642.2715, -672.163391, 0.406480044, -0.312078059, 0.858709157, -0.479734063, 0.726973176, 0.491289467, -0.777579129, -0.611651361, 0.1457856)
p198.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p198.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p198.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p198.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p198.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p198.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p198.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b198 = Instance.new("SpecialMesh", p198)
b198.MeshType = Enum.MeshType.Wedge
b198.Name = "Mesh"
b198.Scale = Vector3.new(0.0400000028, 0.34921512, 0.0876982659)
p199 = Instance.new("Part", o1)
p199.BrickColor = BrickColor.new("Black")
p199.Name = "Wedge"
p199.CFrame = CFrame.new(-250.000443, 12642.2832, -672.168518, -0.406480044, -0.130605981, 0.90427655, 0.479734063, -0.872829139, 0.0895805806, 0.777579129, 0.470225006, 0.417443693)
p199.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p199.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p199.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p199.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p199.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p199.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p199.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b199 = Instance.new("SpecialMesh", p199)
b199.MeshType = Enum.MeshType.Wedge
b199.Name = "Mesh"
b199.Scale = Vector3.new(0.0400000028, 0.349126041, 0.0876519904)
p200 = Instance.new("Part", o1)
p200.BrickColor = BrickColor.new("Black")
p200.Name = "Wedge"
p200.CFrame = CFrame.new(-249.861206, 12642.3076, -672.114502, -0.397902936, 0.315111876, 0.861613452, 0.482532948, -0.726881742, 0.488676667, 0.780278862, 0.610202789, 0.137176529)
p200.Size = Vector3.new(0.200000003, 0.200000003, 0.271925241)
p200.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p200.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p200.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p200.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p200.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p200.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b200 = Instance.new("SpecialMesh", p200)
b200.MeshType = Enum.MeshType.Wedge
b200.Name = "Mesh"
b200.Scale = Vector3.new(0.0400000028, 0.146717608, 1)
p201 = Instance.new("Part", o1)
p201.BrickColor = BrickColor.new("Black")
p201.Name = "Wedge"
p201.CFrame = CFrame.new(-249.875458, 12642.3467, -672.143372, -0.406480044, -0.312078059, -0.858709157, 0.479734063, 0.726973176, -0.491289467, 0.777579129, -0.611651361, -0.1457856)
p201.Size = Vector3.new(0.200000003, 0.200000003, 0.276511639)
p201.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p201.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p201.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p201.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p201.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p201.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b201 = Instance.new("SpecialMesh", p201)
b201.MeshType = Enum.MeshType.Wedge
b201.Name = "Mesh"
b201.Scale = Vector3.new(0.0400000028, 0.34921512, 1)
p202 = Instance.new("Part", o1)
p202.BrickColor = BrickColor.new("Black")
p202.Name = "Wedge"
p202.CFrame = CFrame.new(-249.863953, 12642.3398, -672.133728, 0.397902936, 0.13374798, 0.907625854, -0.482532948, 0.871931136, 0.0830543414, -0.780278862, -0.471006989, 0.411481827)
p202.Size = Vector3.new(0.200000003, 0.200000003, 0.270596951)
p202.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p202.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p202.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p202.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p202.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p202.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b202 = Instance.new("SpecialMesh", p202)
b202.MeshType = Enum.MeshType.Wedge
b202.Name = "Mesh"
b202.Scale = Vector3.new(0.0400000028, 0.172845796, 1)
p203 = Instance.new("Part", o1)
p203.BrickColor = BrickColor.new("Black")
p203.Name = "Wedge"
p203.CFrame = CFrame.new(-249.696884, 12642.3711, -672.068787, 0.403408915, 0.584970176, -0.703612983, -0.480737865, -0.518784106, -0.706932962, -0.778557837, 0.623436451, 0.0719351768)
p203.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p203.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p203.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p203.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p203.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p203.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p203.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b203 = Instance.new("SpecialMesh", p203)
b203.MeshType = Enum.MeshType.Wedge
b203.Name = "Mesh"
b203.Scale = Vector3.new(0.0400000028, 0.0361625254, 0.0242751632)
p204 = Instance.new("Part", o1)
p204.BrickColor = BrickColor.new("Black")
p204.Name = "Wedge"
p204.CFrame = CFrame.new(-249.718735, 12642.3486, -672.066406, -0.409706861, 0.580569804, 0.703618526, 0.48631683, -0.513564825, 0.706928015, 0.771774709, 0.631814718, -0.0719298422)
p204.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p204.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p204.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p204.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p204.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p204.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p204.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b204 = Instance.new("SpecialMesh", p204)
b204.MeshType = Enum.MeshType.Wedge
b204.Name = "Mesh"
b204.Scale = Vector3.new(0.0400000028, 0.0361642577, 0.247659042)
p205 = Instance.new("Part", o1)
p205.BrickColor = BrickColor.new("Black")
p205.CFrame = CFrame.new(-249.757813, 12642.3066, -672.199585, 0.830441117, -0.440909684, -0.340538293, -0.556159079, -0.620482504, -0.552891135, 0.0324770026, 0.64853698, -0.76049006)
p205.Size = Vector3.new(0.200000003, 0.200000003, 0.256383687)
p205.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p205.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p205.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p205.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p205.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p205.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b205 = Instance.new("BlockMesh", p205)
b205.Name = "Mesh"
b205.Scale = Vector3.new(0.321196645, 0.0400000028, 1)
p206 = Instance.new("Part", o1)
p206.BrickColor = BrickColor.new("Black")
p206.Name = "Wedge"
p206.CFrame = CFrame.new(-249.704437, 12642.373, -672.075867, -0.404984146, -0.831075847, 0.381183445, 0.480217189, -0.548108399, -0.684812963, 0.778061271, -0.0942875519, 0.621072114)
p206.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p206.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p206.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p206.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p206.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p206.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p206.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b206 = Instance.new("SpecialMesh", p206)
b206.MeshType = Enum.MeshType.Wedge
b206.Name = "Mesh"
b206.Scale = Vector3.new(0.0400000028, 0.0160384197, 0.00713317376)
p207 = Instance.new("Part", o1)
p207.BrickColor = BrickColor.new("Black")
p207.Name = "Wedge"
p207.CFrame = CFrame.new(-249.867493, 12642.29, -672.106018, 0.406480044, -0.130599946, -0.904277444, -0.479734063, -0.872828484, -0.0895863995, -0.777579129, 0.470227748, -0.417440593)
p207.Size = Vector3.new(0.200000003, 0.200000003, 0.27651614)
p207.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p207.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p207.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p207.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p207.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p207.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b207 = Instance.new("SpecialMesh", p207)
b207.MeshType = Enum.MeshType.Wedge
b207.Name = "Mesh"
b207.Scale = Vector3.new(0.0400000028, 0.349126041, 1)
p208 = Instance.new("Part", o1)
p208.BrickColor = BrickColor.new("Black")
p208.Name = "Wedge"
p208.CFrame = CFrame.new(-249.861557, 12642.3076, -672.114746, -0.376937151, 0.347260743, 0.858678281, 0.412524134, -0.767096579, 0.491311222, 0.829302311, 0.539418936, 0.145893767)
p208.Size = Vector3.new(0.200000003, 0.200000003, 0.271985561)
p208.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p208.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p208.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p208.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p208.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p208.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b208 = Instance.new("SpecialMesh", p208)
b208.MeshType = Enum.MeshType.Wedge
b208.Name = "Mesh"
b208.Scale = Vector3.new(0.0400000028, 0.143894181, 1)
p209 = Instance.new("Part", o1)
p209.BrickColor = BrickColor.new("Black")
p209.CFrame = CFrame.new(-249.998672, 12642.0166, -672.58429, -0.732479334, -0.480101436, 0.482676625, 0.680743277, -0.508266568, 0.527497709, -0.00792400353, 0.714959979, 0.699120462)
p209.Size = Vector3.new(0.200000003, 0.200000003, 0.587029457)
p209.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p209.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p209.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p209.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p209.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p209.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b209 = Instance.new("BlockMesh", p209)
b209.Name = "Mesh"
b209.Scale = Vector3.new(0.280859679, 0.0400000028, 1)
p210 = Instance.new("Part", o1)
p210.BrickColor = BrickColor.new("Black")
p210.CFrame = CFrame.new(-250.029572, 12641.9824, -672.532349, -0.870734274, -0.0940254405, -0.482681096, 0.203344077, 0.824857891, -0.527504146, 0.447742134, -0.557466269, -0.699112535)
p210.Size = Vector3.new(0.200000003, 0.200000003, 0.583014429)
p210.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p210.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p210.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p210.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p210.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p210.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b210 = Instance.new("BlockMesh", p210)
b210.Name = "Mesh"
b210.Scale = Vector3.new(0.168750465, 0.0400000028, 1)
p211 = Instance.new("Part", o1)
p211.BrickColor = BrickColor.new("Black")
p211.Name = "Wedge"
p211.CFrame = CFrame.new(-249.69841, 12642.373, -672.071106, -0.404984146, -0.580763459, -0.706188142, 0.480217189, 0.522149444, -0.70480603, 0.778061271, -0.624558985, 0.0674303621)
p211.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p211.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p211.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p211.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p211.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p211.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p211.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b211 = Instance.new("SpecialMesh", p211)
b211.MeshType = Enum.MeshType.Wedge
b211.Name = "Mesh"
b211.Scale = Vector3.new(0.0400000028, 0.0410850309, 0.0135254776)
p212 = Instance.new("Part", o1)
p212.BrickColor = BrickColor.new("Black")
p212.Name = "Wedge"
p212.CFrame = CFrame.new(-249.696442, 12642.373, -672.070923, 0.404984146, -0.831075847, -0.381183445, -0.480217189, -0.548108399, 0.684812963, -0.778061271, -0.0942875519, -0.621072114)
p212.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p212.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p212.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p212.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p212.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p212.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p212.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b212 = Instance.new("SpecialMesh", p212)
b212.MeshType = Enum.MeshType.Wedge
b212.Name = "Mesh"
b212.Scale = Vector3.new(0.0400000028, 0.0160384197, 0.0353606492)
p213 = Instance.new("Part", o1)
p213.BrickColor = BrickColor.new("Black")
p213.Name = "Wedge"
p213.CFrame = CFrame.new(-249.741852, 12642.3799, -672.095093, 0.397902936, 0.315111876, -0.861613452, -0.482532948, -0.726881742, -0.488676667, -0.780278862, 0.610202789, -0.137176529)
p213.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p213.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p213.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p213.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p213.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p213.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p213.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b213 = Instance.new("SpecialMesh", p213)
b213.MeshType = Enum.MeshType.Wedge
b213.Name = "Mesh"
b213.Scale = Vector3.new(0.0400000028, 0.146717608, 0.0372285657)
p214 = Instance.new("Part", o1)
p214.BrickColor = BrickColor.new("Black")
p214.Name = "Wedge"
p214.CFrame = CFrame.new(-249.698303, 12642.373, -672.070984, 0.404984146, -0.580763459, 0.706188142, -0.480217189, 0.522149444, 0.70480603, -0.778061271, -0.624558985, -0.0674303621)
p214.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p214.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p214.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p214.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p214.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p214.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p214.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b214 = Instance.new("SpecialMesh", p214)
b214.MeshType = Enum.MeshType.Wedge
b214.Name = "Mesh"
b214.Scale = Vector3.new(0.0400000028, 0.0410850309, 0.0108510545)
p215 = Instance.new("Part", o1)
p215.BrickColor = BrickColor.new("Black")
p215.Name = "Wedge"
p215.CFrame = CFrame.new(-249.740173, 12642.3506, -672.07782, -0.397902936, 0.13374798, -0.907625854, 0.482532948, 0.871931136, -0.0830543414, 0.780278862, -0.471006989, -0.411481827)
p215.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p215.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p215.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p215.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p215.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p215.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p215.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b215 = Instance.new("SpecialMesh", p215)
b215.MeshType = Enum.MeshType.Wedge
b215.Name = "Mesh"
b215.Scale = Vector3.new(0.0400000028, 0.172845796, 0.0438459441)
p216 = Instance.new("Part", o1)
p216.BrickColor = BrickColor.new("Black")
p216.CFrame = CFrame.new(-249.99884, 12641.9805, -672.606262, 0.0935280025, 0.482656956, -0.87080127, -0.824744999, 0.527505577, 0.203797966, 0.557717025, 0.699128151, 0.447405457)
p216.Size = Vector3.new(0.200000003, 0.650400162, 0.200000003)
p216.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p216.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p216.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p216.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p216.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p216.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b216 = Instance.new("BlockMesh", p216)
b216.Name = "Mesh"
b216.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p217 = Instance.new("Part", o1)
p217.BrickColor = BrickColor.new("Black")
p217.CFrame = CFrame.new(-250.493317, 12641.6943, -672.914429, -0.352719098, -0.219891205, -0.909525812, 0.186599046, 0.935945213, -0.298642635, 0.916935265, -0.275053561, -0.289094269)
p217.Size = Vector3.new(0.200000003, 0.200000003, 0.549598396)
p217.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p217.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p217.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p217.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p217.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p217.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b217 = Instance.new("BlockMesh", p217)
b217.Name = "Mesh"
b217.Scale = Vector3.new(0.55462414, 0.0400000028, 1)
p218 = Instance.new("Part", o1)
p218.BrickColor = BrickColor.new("Black")
p218.CFrame = CFrame.new(-251.141769, 12641.4775, -673.119629, -0.367744893, 0.0280728936, 0.929502964, -0.251307905, 0.959352672, -0.128400892, -0.89532572, -0.280810177, -0.345742136)
p218.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p218.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p218.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p218.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p218.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p218.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p218.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b218 = Instance.new("BlockMesh", p218)
b218.Name = "Mesh"
b218.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p219 = Instance.new("Part", o1)
p219.BrickColor = BrickColor.new("Black")
p219.CFrame = CFrame.new(-251.224121, 12641.5088, -673.13501, -0.909107506, -0.215052903, 0.356757551, 0.390614241, -0.73763907, 0.550735176, 0.144721091, 0.640031993, 0.754595876)
p219.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p219.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p219.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p219.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p219.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p219.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p219.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b219 = Instance.new("BlockMesh", p219)
b219.Name = "Mesh"
b219.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p220 = Instance.new("Part", o1)
p220.BrickColor = BrickColor.new("Black")
p220.CFrame = CFrame.new(-251.343246, 12641.5068, -673.079834, 0.0935280025, 0.356762022, -0.929501712, -0.824744999, 0.55073595, 0.128396645, 0.557717025, 0.754593194, 0.345746875)
p220.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p220.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p220.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p220.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p220.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p220.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p220.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b220 = Instance.new("BlockMesh", p220)
b220.Name = "Mesh"
b220.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p221 = Instance.new("Part", o1)
p221.BrickColor = BrickColor.new("Black")
p221.CFrame = CFrame.new(-251.05925, 12641.6064, -672.984192, 0.0935280025, 0.356762022, -0.929501712, -0.824744999, 0.55073595, 0.128396645, 0.557717025, 0.754593194, 0.345746875)
p221.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p221.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p221.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p221.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p221.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p221.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p221.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b221 = Instance.new("BlockMesh", p221)
b221.Name = "Mesh"
b221.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p222 = Instance.new("Part", o1)
p222.BrickColor = BrickColor.new("Black")
p222.CFrame = CFrame.new(-251.142746, 12641.5107, -673.139771, 0.306686133, 0.204860911, 0.929502904, 0.78980732, -0.599763334, -0.128407195, 0.53117615, 0.773508966, -0.345739692)
p222.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p222.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p222.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p222.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p222.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p222.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p222.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b222 = Instance.new("BlockMesh", p222)
b222.Name = "Mesh"
b222.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p223 = Instance.new("Part", o1)
p223.BrickColor = BrickColor.new("Black")
p223.CFrame = CFrame.new(-250.473358, 12641.6855, -672.963989, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p223.Size = Vector3.new(0.200000003, 0.549600124, 0.200000003)
p223.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p223.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p223.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p223.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p223.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p223.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b223 = Instance.new("BlockMesh", p223)
b223.Name = "Mesh"
b223.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p224 = Instance.new("Part", o1)
p224.BrickColor = BrickColor.new("Black")
p224.CFrame = CFrame.new(-249.795593, 12642.3096, -672.217957, 0.0935280025, 0.34048605, -0.935586333, -0.824744999, 0.552892864, 0.118765682, 0.557717025, 0.760512233, 0.332525104)
p224.Size = Vector3.new(0.200000003, 0.308000147, 0.200000003)
p224.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p224.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p224.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p224.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p224.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p224.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b224 = Instance.new("BlockMesh", p224)
b224.Name = "Mesh"
b224.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p225 = Instance.new("Part", o1)
p225.BrickColor = BrickColor.new("Black")
p225.CFrame = CFrame.new(-251.081436, 12641.5244, -673.067688, 0.848039985, -0.391851962, 0.356763661, 0.147882998, 0.821471155, 0.550741136, -0.508880019, -0.414291143, 0.754588604)
p225.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p225.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p225.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p225.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p225.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p225.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p225.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b225 = Instance.new("BlockMesh", p225)
b225.Name = "Mesh"
b225.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p226 = Instance.new("Part", o1)
p226.BrickColor = BrickColor.new("Black")
p226.CFrame = CFrame.new(-250.95253, 12641.6172, -672.988586, 0.0935280025, 0.929498851, 0.356769443, -0.824744999, -0.128401026, 0.550734937, 0.557717025, -0.345752925, 0.754590452)
p226.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p226.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p226.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p226.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p226.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p226.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p226.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b226 = Instance.new("BlockMesh", p226)
b226.Name = "Mesh"
b226.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p227 = Instance.new("Part", o1)
p227.BrickColor = BrickColor.new("Black")
p227.CFrame = CFrame.new(-249.994141, 12641.998, -672.517822, 0.0935280025, 0.482656956, -0.87080127, -0.824744999, 0.527505577, 0.203797966, 0.557717025, 0.699128151, 0.447405457)
p227.Size = Vector3.new(0.200000003, 0.652000189, 0.200000003)
p227.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p227.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p227.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p227.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p227.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p227.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b227 = Instance.new("BlockMesh", p227)
b227.Name = "Mesh"
b227.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p228 = Instance.new("Part", o1)
p228.BrickColor = BrickColor.new("Black")
p228.CFrame = CFrame.new(-250.992706, 12641.5283, -673.073914, -0.367744893, 0.0280728936, 0.929502964, -0.251307905, 0.959352672, -0.128400892, -0.89532572, -0.280810177, -0.345742136)
p228.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p228.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p228.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p228.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p228.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p228.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p228.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b228 = Instance.new("BlockMesh", p228)
b228.Name = "Mesh"
b228.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p229 = Instance.new("Part", o1)
p229.BrickColor = BrickColor.new("Black")
p229.CFrame = CFrame.new(-250.494019, 12641.7246, -672.934875, 0.41341421, -0.0429499671, -0.909529567, -0.721870363, -0.624275088, -0.298636615, -0.554970264, 0.780023038, -0.289088488)
p229.Size = Vector3.new(0.200000003, 0.200000003, 0.549998403)
p229.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p229.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p229.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p229.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p229.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p229.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b229 = Instance.new("BlockMesh", p229)
b229.Name = "Mesh"
b229.Scale = Vector3.new(0.55462414, 0.0400000028, 1)
p230 = Instance.new("Part", o1)
p230.BrickColor = BrickColor.new("Black")
p230.CFrame = CFrame.new(-251.199112, 12641.5547, -673.034363, 0.0935280025, 0.356762022, -0.929501712, -0.824744999, 0.55073595, 0.128396645, 0.557717025, 0.754593194, 0.345746875)
p230.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p230.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p230.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p230.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p230.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p230.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p230.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b230 = Instance.new("BlockMesh", p230)
b230.Name = "Mesh"
b230.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p231 = Instance.new("Part", o1)
p231.BrickColor = BrickColor.new("Black")
p231.CFrame = CFrame.new(-250.051712, 12642.1963, -672.281799, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p231.Size = Vector3.new(0.200000003, 0.200000003, 0.227999985)
p231.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p231.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p231.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p231.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p231.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p231.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b231 = Instance.new("BlockMesh", p231)
b231.Name = "Mesh"
b231.Scale = Vector3.new(0.399999976, 0.99999994, 1)
p232 = Instance.new("Part", o1)
p232.BrickColor = BrickColor.new("Black")
p232.CFrame = CFrame.new(-251.081879, 12641.5586, -673.087219, -0.909107506, -0.215052903, 0.356757551, 0.390614241, -0.73763907, 0.550735176, 0.144721091, 0.640031993, 0.754595876)
p232.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p232.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p232.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p232.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p232.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p232.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p232.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b232 = Instance.new("BlockMesh", p232)
b232.Name = "Mesh"
b232.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p233 = Instance.new("Part", o1)
p233.BrickColor = BrickColor.new("Black")
p233.CFrame = CFrame.new(-249.997757, 12641.9854, -672.562988, 0.618173897, -0.620382309, 0.482687116, 0.360257924, 0.769391716, 0.527494729, -0.698623836, -0.152191594, 0.699115455)
p233.Size = Vector3.new(0.200000003, 0.200000003, 0.582966805)
p233.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p233.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p233.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p233.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p233.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p233.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b233 = Instance.new("BlockMesh", p233)
b233.Name = "Mesh"
b233.Scale = Vector3.new(0.279774517, 0.0400000028, 1)
p234 = Instance.new("Part", o1)
p234.BrickColor = BrickColor.new("Black")
p234.CFrame = CFrame.new(-250.597885, 12641.8408, -672.710022, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p234.Size = Vector3.new(0.200000003, 0.632400036, 0.443599969)
p234.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p234.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p234.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p234.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p234.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p234.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b234 = Instance.new("BlockMesh", p234)
b234.Name = "Mesh"
b234.Scale = Vector3.new(0.399999976, 1, 1)
p235 = Instance.new("Part", o1)
p235.BrickColor = BrickColor.new("Black")
p235.CFrame = CFrame.new(-251.096527, 12641.5625, -673.033203, 0.0935280025, 0.929498851, 0.356769443, -0.824744999, -0.128401026, 0.550734937, 0.557717025, -0.345752925, 0.754590452)
p235.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p235.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p235.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p235.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p235.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p235.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p235.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b235 = Instance.new("BlockMesh", p235)
b235.Name = "Mesh"
b235.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p236 = Instance.new("Part", o1)
p236.BrickColor = BrickColor.new("Black")
p236.CFrame = CFrame.new(-249.722488, 12642.3008, -672.177002, 0.0935280025, 0.34048605, -0.935586333, -0.824744999, 0.552892864, 0.118765682, 0.557717025, 0.760512233, 0.332525104)
p236.Size = Vector3.new(0.200000003, 0.308000147, 0.200000003)
p236.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p236.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p236.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p236.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p236.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p236.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b236 = Instance.new("BlockMesh", p236)
b236.Name = "Mesh"
b236.Scale = Vector3.new(0.0400000066, 1, 0.0400000028)
p237 = Instance.new("Part", o1)
p237.BrickColor = BrickColor.new("Black")
p237.CFrame = CFrame.new(-250.159836, 12642.0244, -672.521606, 0.0935280025, 0.482656956, -0.87080127, -0.824744999, 0.527505577, 0.203797966, 0.557717025, 0.699128151, 0.447405457)
p237.Size = Vector3.new(0.200000003, 0.650400162, 0.216399983)
p237.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p237.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p237.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p237.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p237.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p237.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b237 = Instance.new("BlockMesh", p237)
b237.Name = "Mesh"
b237.Scale = Vector3.new(0.398000002, 1, 1)
p238 = Instance.new("Part", o1)
p238.BrickColor = BrickColor.new("Black")
p238.CFrame = CFrame.new(-250.859009, 12641.6084, -673.045166, 0.306686133, 0.204860911, 0.929502904, 0.78980732, -0.599763334, -0.128407195, 0.53117615, 0.773508966, -0.345739692)
p238.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p238.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p238.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p238.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p238.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p238.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p238.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b238 = Instance.new("BlockMesh", p238)
b238.Name = "Mesh"
b238.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p239 = Instance.new("Part", o1)
p239.BrickColor = BrickColor.new("Black")
p239.CFrame = CFrame.new(-250.940872, 12641.5723, -673.018982, 0.848039985, -0.391851962, 0.356763661, 0.147882998, 0.821471155, 0.550741136, -0.508880019, -0.414291143, 0.754588604)
p239.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p239.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p239.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p239.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p239.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p239.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p239.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b239 = Instance.new("BlockMesh", p239)
b239.Name = "Mesh"
b239.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p240 = Instance.new("Part", o1)
p240.BrickColor = BrickColor.new("Black")
p240.CFrame = CFrame.new(-250.162109, 12641.8008, -672.841919, 0.0935280025, 0.639952302, -0.762701571, -0.824744999, 0.47892487, 0.30071041, 0.557717025, 0.600909412, 0.572590351)
p240.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p240.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p240.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p240.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p240.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p240.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p240.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b240 = Instance.new("BlockMesh", p240)
b240.Name = "Mesh"
b240.Scale = Vector3.new(0.0400000066, 0.182000726, 0.0400000028)
p241 = Instance.new("Part", o1)
p241.BrickColor = BrickColor.new("Black")
p241.CFrame = CFrame.new(-250.768738, 12641.6377, -673.015869, 0.581758916, 0.473165274, 0.66156733, 0.787900865, -0.125922635, -0.602789998, -0.201912969, 0.871927857, -0.446063966)
p241.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p241.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p241.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p241.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p241.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p241.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p241.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b241 = Instance.new("BlockMesh", p241)
b241.Name = "Mesh"
b241.Scale = Vector3.new(0.0536602177, 0.0400000028, 0.522605598)
p242 = Instance.new("Part", o1)
p242.BrickColor = BrickColor.new("Black")
p242.CFrame = CFrame.new(-251.223373, 12641.4785, -673.114441, 0.848039985, -0.391851962, 0.356763661, 0.147882998, 0.821471155, 0.550741136, -0.508880019, -0.414291143, 0.754588604)
p242.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p242.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p242.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p242.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p242.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p242.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p242.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b242 = Instance.new("BlockMesh", p242)
b242.Name = "Mesh"
b242.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p243 = Instance.new("Part", o1)
p243.BrickColor = BrickColor.new("Black")
p243.CFrame = CFrame.new(-250.762772, 12641.6113, -672.994995, -0.714455009, 0.353803515, 0.603636682, 0.378877014, 0.920928359, -0.0913415477, -0.58822298, 0.163444594, -0.79200989)
p243.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p243.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p243.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p243.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p243.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p243.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p243.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b243 = Instance.new("BlockMesh", p243)
b243.Name = "Mesh"
b243.Scale = Vector3.new(0.0535911322, 0.0400000028, 0.522562563)
p244 = Instance.new("Part", o1)
p244.BrickColor = BrickColor.new("Black")
p244.CFrame = CFrame.new(-250.993683, 12641.5605, -673.093445, 0.306686133, 0.204860911, 0.929502904, 0.78980732, -0.599763334, -0.128407195, 0.53117615, 0.773508966, -0.345739692)
p244.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p244.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p244.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p244.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p244.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p244.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p244.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b244 = Instance.new("BlockMesh", p244)
b244.Name = "Mesh"
b244.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p245 = Instance.new("Part", o1)
p245.BrickColor = BrickColor.new("Black")
p245.CFrame = CFrame.new(-251.326813, 12641.4531, -673.199036, 0.306686133, 0.204860911, 0.929502904, 0.78980732, -0.599763334, -0.128407195, 0.53117615, 0.773508966, -0.345739692)
p245.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p245.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p245.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p245.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p245.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p245.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p245.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b245 = Instance.new("BlockMesh", p245)
b245.Name = "Mesh"
b245.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p246 = Instance.new("Part", o1)
p246.BrickColor = BrickColor.new("Black")
p246.CFrame = CFrame.new(-250.200073, 12641.7842, -672.868347, 0.0935280025, 0.784535766, -0.612989545, -0.824744999, 0.405942231, 0.393708855, 0.557717025, 0.468737274, 0.685008883)
p246.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p246.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p246.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p246.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p246.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p246.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p246.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b246 = Instance.new("BlockMesh", p246)
b246.Name = "Mesh"
b246.Scale = Vector3.new(0.0400000066, 0.332000732, 0.0400000028)
p247 = Instance.new("Part", o1)
p247.BrickColor = BrickColor.new("Black")
p247.CFrame = CFrame.new(-250.812744, 12641.667, -672.938721, 0.0935280025, 0.929498851, 0.356769443, -0.824744999, -0.128401026, 0.550734937, 0.557717025, -0.345752925, 0.754590452)
p247.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p247.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p247.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p247.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p247.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p247.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p247.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b247 = Instance.new("BlockMesh", p247)
b247.Name = "Mesh"
b247.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p248 = Instance.new("Part", o1)
p248.BrickColor = BrickColor.new("Black")
p248.CFrame = CFrame.new(-251.325897, 12641.4209, -673.179993, -0.367744893, 0.0280728936, 0.929502964, -0.251307905, 0.959352672, -0.128400892, -0.89532572, -0.280810177, -0.345742136)
p248.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p248.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p248.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p248.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p248.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p248.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p248.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b248 = Instance.new("BlockMesh", p248)
b248.Name = "Mesh"
b248.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p249 = Instance.new("Part", o1)
p249.BrickColor = BrickColor.new("Black")
p249.Name = "Wedge"
p249.CFrame = CFrame.new(-249.712418, 12642.3779, -672.101196, -0.440954, 0.254729986, 0.860623181, -0.620337009, -0.779481292, -0.087126188, 0.648645997, -0.57229501, 0.50173384)
p249.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p249.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p249.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p249.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p249.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p249.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p249.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b249 = Instance.new("SpecialMesh", p249)
b249.MeshType = Enum.MeshType.Wedge
b249.Name = "Mesh"
b249.Scale = Vector3.new(0.0400000028, 0.201077119, 0.250470132)
p250 = Instance.new("Part", o1)
p250.BrickColor = BrickColor.new("Black")
p250.Name = "Wedge"
p250.CFrame = CFrame.new(-250.164673, 12642.0498, -672.53833, 0.0918499902, 0.45465216, -0.885920465, -0.82435286, 0.533780932, 0.188468218, 0.558574915, 0.713000298, 0.423821539)
p250.Size = Vector3.new(0.200000003, 0.650076747, 0.200000003)
p250.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p250.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p250.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p250.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p250.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p250.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b250 = Instance.new("SpecialMesh", p250)
b250.MeshType = Enum.MeshType.Wedge
b250.Name = "Mesh"
b250.Scale = Vector3.new(0.0400000028, 1, 0.967260063)
p251 = Instance.new("Part", o1)
p251.BrickColor = BrickColor.new("Black")
p251.Name = "Wedge"
p251.CFrame = CFrame.new(-250.194244, 12641.835, -672.821289, -0.119102061, 0.266737014, -0.956381738, -0.594114304, 0.752617121, 0.283894002, 0.795514345, 0.602012455, 0.0688340217)
p251.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p251.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p251.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p251.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p251.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p251.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p251.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b251 = Instance.new("SpecialMesh", p251)
b251.MeshType = Enum.MeshType.Wedge
b251.Name = "Mesh"
b251.Scale = Vector3.new(0.0400000028, 0.141561672, 0.5091995)
p252 = Instance.new("Part", o1)
p252.BrickColor = BrickColor.new("Black")
p252.Name = "Wedge"
p252.CFrame = CFrame.new(-250.214096, 12642.0547, -672.52832, 0.0975229815, -0.164191023, 0.981595993, -0.824499905, -0.565719247, -0.0127122821, 0.557394922, -0.808086097, -0.190546125)
p252.Size = Vector3.new(0.200000003, 0.678124309, 0.200000003)
p252.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p252.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p252.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p252.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p252.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p252.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b252 = Instance.new("SpecialMesh", p252)
b252.MeshType = Enum.MeshType.Wedge
b252.Name = "Mesh"
b252.Scale = Vector3.new(0.0400000028, 1, 0.449903607)
p253 = Instance.new("Part", o1)
p253.BrickColor = BrickColor.new("Black")
p253.CFrame = CFrame.new(-251.525742, 12641.3906, -673.263245, 0.306686133, 0.204860911, 0.929502904, 0.78980732, -0.599763334, -0.128407195, 0.53117615, 0.773508966, -0.345739692)
p253.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p253.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p253.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p253.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p253.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p253.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p253.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b253 = Instance.new("BlockMesh", p253)
b253.Name = "Mesh"
b253.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p254 = Instance.new("Part", o1)
p254.BrickColor = BrickColor.new("Black")
p254.CFrame = CFrame.new(-251.479263, 12641.4434, -673.156067, 0.0935280025, 0.929498851, 0.356769443, -0.824744999, -0.128401026, 0.550734937, 0.557717025, -0.345752925, 0.754590452)
p254.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p254.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p254.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p254.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p254.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p254.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p254.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b254 = Instance.new("BlockMesh", p254)
b254.Name = "Mesh"
b254.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p255 = Instance.new("Part", o1)
p255.BrickColor = BrickColor.new("Black")
p255.CFrame = CFrame.new(-251.282089, 12641.499, -673.090332, 0.0935280025, 0.929498851, 0.356769443, -0.824744999, -0.128401026, 0.550734937, 0.557717025, -0.345752925, 0.754590452)
p255.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p255.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p255.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p255.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p255.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p255.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p255.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b255 = Instance.new("BlockMesh", p255)
b255.Name = "Mesh"
b255.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p256 = Instance.new("Part", o1)
p256.BrickColor = BrickColor.new("Black")
p256.Name = "Wedge"
p256.CFrame = CFrame.new(-249.831345, 12642.1787, -672.276672, -0.596241951, -0.190041795, 0.779987037, 0.752447903, 0.206395745, 0.625478268, -0.279852957, 0.959835947, 0.019934753)
p256.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p256.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p256.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p256.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p256.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p256.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p256.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b256 = Instance.new("SpecialMesh", p256)
b256.MeshType = Enum.MeshType.Wedge
b256.Name = "Mesh"
b256.Scale = Vector3.new(0.0400000028, 0.20105049, 0.161721051)
p257 = Instance.new("Part", o1)
p257.BrickColor = BrickColor.new("Black")
p257.Name = "Wedge"
p257.CFrame = CFrame.new(-249.681763, 12642.375, -672.083008, 0.440954, 0.254729986, -0.860623181, 0.620337009, -0.779481292, 0.087126188, -0.648645997, -0.57229501, -0.50173384)
p257.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p257.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p257.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p257.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p257.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p257.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p257.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b257 = Instance.new("SpecialMesh", p257)
b257.MeshType = Enum.MeshType.Wedge
b257.Name = "Mesh"
b257.Scale = Vector3.new(0.0400000028, 0.201077119, 0.16168797)
p258 = Instance.new("Part", o1)
p258.BrickColor = BrickColor.new("Black")
p258.CFrame = CFrame.new(-251.477539, 12641.5566, -672.986145, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p258.Size = Vector3.new(0.200000003, 2.63281989, 0.443599969)
p258.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p258.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p258.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p258.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p258.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p258.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b258 = Instance.new("BlockMesh", p258)
b258.Name = "Mesh"
b258.Scale = Vector3.new(0.399999976, 1, 1)
p259 = Instance.new("Part", o1)
p259.BrickColor = BrickColor.new("Black")
p259.Name = "Wedge"
p259.CFrame = CFrame.new(-250.195618, 12641.8232, -672.833984, -0.158884004, 0.312671989, -0.936478615, -0.699038982, 0.634203911, 0.330348104, 0.697209001, 0.707122087, 0.117805071)
p259.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p259.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p259.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p259.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p259.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p259.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p259.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b259 = Instance.new("SpecialMesh", p259)
b259.MeshType = Enum.MeshType.Wedge
b259.Name = "Mesh"
b259.Scale = Vector3.new(0.0400000028, 0.0192622915, 0.256932318)
p260 = Instance.new("Part", o1)
p260.BrickColor = BrickColor.new("Black")
p260.Name = "Wedge"
p260.CFrame = CFrame.new(-250.248505, 12641.8184, -672.80188, 0.288425922, -0.0576840155, 0.955763161, 0.864341676, -0.4137941, -0.285811245, 0.411975861, 0.908541262, -0.069490239)
p260.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p260.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p260.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p260.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p260.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p260.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p260.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b260 = Instance.new("SpecialMesh", p260)
b260.MeshType = Enum.MeshType.Wedge
b260.Name = "Mesh"
b260.Scale = Vector3.new(0.0400000028, 0.337201923, 0.278824151)
p261 = Instance.new("Part", o1)
p261.BrickColor = BrickColor.new("Black")
p261.CFrame = CFrame.new(-251.521118, 12641.3555, -673.241333, -0.367744893, 0.0280728936, 0.929502964, -0.251307905, 0.959352672, -0.128400892, -0.89532572, -0.280810177, -0.345742136)
p261.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p261.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p261.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p261.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p261.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p261.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p261.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b261 = Instance.new("BlockMesh", p261)
b261.Name = "Mesh"
b261.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p262 = Instance.new("Part", o1)
p262.BrickColor = BrickColor.new("Black")
p262.Name = "Wedge"
p262.CFrame = CFrame.new(-249.797455, 12642.2061, -672.275146, 0.596241951, -0.190041795, -0.779987037, -0.752447903, 0.206395745, -0.625478268, 0.279852957, 0.959835947, -0.019934753)
p262.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p262.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p262.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p262.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p262.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p262.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p262.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b262 = Instance.new("SpecialMesh", p262)
b262.MeshType = Enum.MeshType.Wedge
b262.Name = "Mesh"
b262.Scale = Vector3.new(0.0400000028, 0.20105049, 0.250352681)
p263 = Instance.new("Part", o1)
p263.BrickColor = BrickColor.new("Black")
p263.Name = "Wedge"
p263.CFrame = CFrame.new(-250.159897, 12641.9912, -672.499023, -0.101326987, -0.164135039, -0.981219947, 0.824258864, -0.566132069, 0.00958241429, -0.557072937, -0.80780822, 0.192654222)
p263.Size = Vector3.new(0.200000003, 0.678124547, 0.200000003)
p263.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p263.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p263.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p263.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p263.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p263.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b263 = Instance.new("SpecialMesh", p263)
b263.MeshType = Enum.MeshType.Wedge
b263.Name = "Mesh"
b263.Scale = Vector3.new(0.0400000028, 1, 0.0653893128)
p264 = Instance.new("Part", o1)
p264.BrickColor = BrickColor.new("Black")
p264.CFrame = CFrame.new(-251.408478, 12641.4463, -673.191345, -0.909107506, -0.215052903, 0.356757551, 0.390614241, -0.73763907, 0.550735176, 0.144721091, 0.640031993, 0.754595876)
p264.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p264.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p264.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p264.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p264.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p264.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p264.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b264 = Instance.new("BlockMesh", p264)
b264.Name = "Mesh"
b264.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p265 = Instance.new("Part", o1)
p265.BrickColor = BrickColor.new("Black")
p265.Name = "Wedge"
p265.CFrame = CFrame.new(-250.194855, 12641.793, -672.861145, -0.185709, 0.981060565, -0.0550673194, -0.614386022, -0.0721982569, 0.785695434, 0.766839027, 0.17974329, 0.616157711)
p265.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p265.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p265.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p265.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p265.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p265.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p265.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b265 = Instance.new("SpecialMesh", p265)
b265.MeshType = Enum.MeshType.Wedge
b265.Name = "Mesh"
b265.Scale = Vector3.new(0.0400000028, 0.294166565, 0.311960071)
p266 = Instance.new("Part", o1)
p266.BrickColor = BrickColor.new("Black")
p266.Name = "Wedge"
p266.CFrame = CFrame.new(-249.681808, 12642.375, -672.081726, -0.596241951, 0.190041795, -0.779987037, 0.752447903, -0.206395745, -0.625478268, -0.279852957, -0.959835947, -0.019934753)
p266.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p266.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p266.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p266.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p266.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p266.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p266.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b266 = Instance.new("SpecialMesh", p266)
b266.MeshType = Enum.MeshType.Wedge
b266.Name = "Mesh"
b266.Scale = Vector3.new(0.0400000028, 0.201050505, 0.161721095)
p267 = Instance.new("Part", o1)
p267.BrickColor = BrickColor.new("Black")
p267.CFrame = CFrame.new(-249.907349, 12642.1689, -672.34198, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p267.Size = Vector3.new(0.200000003, 0.597630084, 0.459910035)
p267.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p267.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p267.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p267.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p267.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p267.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b267 = Instance.new("SpecialMesh", p267)
b267.MeshType = Enum.MeshType.Wedge
b267.Name = "Mesh"
b267.Scale = Vector3.new(0.399999976, 1, 1)
p268 = Instance.new("Part", o1)
p268.BrickColor = BrickColor.new("Black")
p268.CFrame = CFrame.new(-250.857712, 12641.582, -673.026733, -0.367744893, 0.0280728936, 0.929502964, -0.251307905, 0.959352672, -0.128400892, -0.89532572, -0.280810177, -0.345742136)
p268.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p268.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p268.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p268.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p268.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p268.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p268.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b268 = Instance.new("BlockMesh", p268)
b268.Name = "Mesh"
b268.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p269 = Instance.new("Part", o1)
p269.BrickColor = BrickColor.new("Black")
p269.CFrame = CFrame.new(-251.524429, 12641.4492, -673.137634, 0.0935280025, 0.356762022, -0.929501712, -0.824744999, 0.55073595, 0.128396645, 0.557717025, 0.754593194, 0.345746875)
p269.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p269.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p269.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p269.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p269.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p269.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p269.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b269 = Instance.new("BlockMesh", p269)
b269.Name = "Mesh"
b269.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p270 = Instance.new("Part", o1)
p270.BrickColor = BrickColor.new("Black")
p270.Name = "Wedge"
p270.CFrame = CFrame.new(-250.164673, 12642.0498, -672.53833, -0.0975229815, -0.164191023, -0.981595993, 0.824499905, -0.565719247, 0.0127122821, -0.557394922, -0.808086097, 0.190546125)
p270.Size = Vector3.new(0.200000003, 0.678124309, 0.200000003)
p270.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p270.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p270.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p270.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p270.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p270.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b270 = Instance.new("SpecialMesh", p270)
b270.MeshType = Enum.MeshType.Wedge
b270.Name = "Mesh"
b270.Scale = Vector3.new(0.0400000028, 1, 0.0653678179)
p271 = Instance.new("Part", o1)
p271.BrickColor = BrickColor.new("Black")
p271.Name = "Wedge"
p271.CFrame = CFrame.new(-250.223297, 12641.8408, -672.819824, -0.027289005, -0.649595201, 0.759790421, -0.465760112, -0.664265394, -0.58465302, 0.884490252, -0.369834632, -0.284428328)
p271.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p271.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p271.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p271.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p271.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p271.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p271.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b271 = Instance.new("SpecialMesh", p271)
b271.MeshType = Enum.MeshType.Wedge
b271.Name = "Mesh"
b271.Scale = Vector3.new(0.0400000028, 0.0716584846, 0.151930973)
p272 = Instance.new("Part", o1)
p272.BrickColor = BrickColor.new("Black")
p272.Name = "Wedge"
p272.CFrame = CFrame.new(-250.256302, 12642.0752, -672.491882, -0.0918499902, 0.45465216, 0.885920465, 0.82435286, 0.533780932, -0.188468218, -0.558574915, 0.713000298, -0.423821539)
p272.Size = Vector3.new(0.200000003, 0.650076747, 0.200000003)
p272.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p272.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p272.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p272.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p272.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p272.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b272 = Instance.new("SpecialMesh", p272)
b272.MeshType = Enum.MeshType.Wedge
b272.Name = "Mesh"
b272.Scale = Vector3.new(0.0400000028, 1, 0.103756838)
p273 = Instance.new("Part", o1)
p273.BrickColor = BrickColor.new("Black")
p273.CFrame = CFrame.new(-250.944534, 12641.9219, -672.539612, 0.0935280025, -0.909525454, 0.404988915, -0.824744999, -0.298639387, -0.480218917, 0.557717025, -0.28909868, -0.778057635)
p273.Size = Vector3.new(0.200000003, 1.13160014, 0.200000003)
p273.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p273.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p273.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p273.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p273.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p273.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b273 = Instance.new("SpecialMesh", p273)
b273.MeshType = Enum.MeshType.Wedge
b273.Name = "Mesh"
b273.Scale = Vector3.new(0.399999976, 1, 0.853999972)
p274 = Instance.new("Part", o1)
p274.BrickColor = BrickColor.new("Black")
p274.CFrame = CFrame.new(-251.992233, 12641.5752, -672.872803, -0.0935280025, 0.909525454, 0.404988915, 0.824744999, 0.298639387, -0.480218917, -0.557717025, 0.28909868, -0.778057635)
p274.Size = Vector3.new(0.200000003, 0.571200073, 0.200000003)
p274.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p274.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p274.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p274.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p274.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p274.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b274 = Instance.new("SpecialMesh", p274)
b274.MeshType = Enum.MeshType.Wedge
b274.Name = "Mesh"
b274.Scale = Vector3.new(0.399999976, 1, 0.853999972)
p275 = Instance.new("Part", o1)
p275.BrickColor = BrickColor.new("Black")
p275.Name = "Wedge"
p275.CFrame = CFrame.new(-250.205841, 12641.9971, -672.48822, 0.101326987, -0.164135039, 0.981219947, -0.824258864, -0.566132069, -0.00958241429, 0.557072937, -0.80780822, -0.192654222)
p275.Size = Vector3.new(0.200000003, 0.678124547, 0.200000003)
p275.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p275.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p275.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p275.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p275.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p275.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b275 = Instance.new("SpecialMesh", p275)
b275.MeshType = Enum.MeshType.Wedge
b275.Name = "Mesh"
b275.Scale = Vector3.new(0.0400000028, 1, 0.449893653)
p276 = Instance.new("Part", o1)
p276.BrickColor = BrickColor.new("Black")
p276.CFrame = CFrame.new(-250.947388, 12641.6025, -673.0401, -0.909107506, -0.215052903, 0.356757551, 0.390614241, -0.73763907, 0.550735176, 0.144721091, 0.640031993, 0.754595876)
p276.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p276.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p276.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p276.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p276.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p276.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p276.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b276 = Instance.new("BlockMesh", p276)
b276.Name = "Mesh"
b276.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p277 = Instance.new("Part", o1)
p277.BrickColor = BrickColor.new("Black")
p277.CFrame = CFrame.new(-251.407013, 12641.4189, -673.172546, 0.848039985, -0.391851962, 0.356763661, 0.147882998, 0.821471155, 0.550741136, -0.508880019, -0.414291143, 0.754588604)
p277.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p277.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p277.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p277.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p277.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p277.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p277.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b277 = Instance.new("BlockMesh", p277)
b277.Name = "Mesh"
b277.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p278 = Instance.new("Part", o1)
p278.BrickColor = BrickColor.new("Black")
p278.Name = "Wedge"
p278.CFrame = CFrame.new(-249.711334, 12642.3467, -672.081238, 0.596241951, 0.190041795, 0.779987037, -0.752447903, -0.206395745, 0.625478268, 0.279852957, -0.959835947, 0.019934753)
p278.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p278.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p278.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p278.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p278.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p278.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p278.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b278 = Instance.new("SpecialMesh", p278)
b278.MeshType = Enum.MeshType.Wedge
b278.Name = "Mesh"
b278.Scale = Vector3.new(0.0400000028, 0.201050505, 0.250352621)
p279 = Instance.new("Part", o1)
p279.BrickColor = BrickColor.new("Black")
p279.CFrame = CFrame.new(-250.208084, 12642.0264, -672.507874, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p279.Size = Vector3.new(0.200000003, 0.299200088, 0.615200043)
p279.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p279.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p279.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p279.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p279.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p279.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b279 = Instance.new("SpecialMesh", p279)
b279.MeshType = Enum.MeshType.Wedge
b279.Name = "Mesh"
b279.Scale = Vector3.new(0.399999976, 1, 1)
p280 = Instance.new("Part", o1)
p280.BrickColor = BrickColor.new("Black")
p280.Name = "Wedge"
p280.CFrame = CFrame.new(-250.160522, 12641.8008, -672.845154, 0.151974931, -0.249470994, -0.956382751, 0.684783697, -0.671175838, 0.283891439, -0.712723613, -0.698059678, 0.0688317567)
p280.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p280.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p280.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p280.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p280.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p280.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p280.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b280 = Instance.new("SpecialMesh", p280)
b280.MeshType = Enum.MeshType.Wedge
b280.Name = "Mesh"
b280.Scale = Vector3.new(0.0400000028, 0.16464211, 0.0813359395)
p281 = Instance.new("Part", o1)
p281.BrickColor = BrickColor.new("Black")
p281.Name = "Wedge"
p281.CFrame = CFrame.new(-250.227737, 12641.8154, -672.85083, 0.0239649992, 0.358783126, -0.933113337, 0.617959023, -0.739020109, -0.268283188, -0.785844982, -0.570196331, -0.239423931)
p281.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p281.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p281.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p281.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p281.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p281.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p281.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b281 = Instance.new("SpecialMesh", p281)
b281.MeshType = Enum.MeshType.Wedge
b281.Name = "Mesh"
b281.Scale = Vector3.new(0.0400000028, 0.554050744, 0.178673446)
p282 = Instance.new("Part", o1)
p282.BrickColor = BrickColor.new("Black")
p282.Name = "Wedge"
p282.CFrame = CFrame.new(-250.222366, 12641.8477, -672.821167, -0.0831059888, 0.281627029, -0.955918252, -0.485898942, 0.826034069, 0.285604596, 0.870054901, 0.488215148, 0.0681939051)
p282.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p282.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p282.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p282.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p282.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p282.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p282.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b282 = Instance.new("SpecialMesh", p282)
b282.MeshType = Enum.MeshType.Wedge
b282.Name = "Mesh"
b282.Scale = Vector3.new(0.0400000028, 0.127240375, 0.109746195)
p283 = Instance.new("Part", o1)
p283.BrickColor = BrickColor.new("Black")
p283.Name = "Wedge"
p283.CFrame = CFrame.new(-250.166443, 12641.8008, -672.841064, -0.322679132, -0.68781513, 0.650222003, 0.879584312, 0.0358194709, 0.474392742, -0.349585116, 0.725001752, 0.593433082)
p283.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p283.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p283.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p283.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p283.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p283.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p283.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b283 = Instance.new("SpecialMesh", p283)
b283.MeshType = Enum.MeshType.Wedge
b283.Name = "Mesh"
b283.Scale = Vector3.new(0.0400000028, 0.0727194101, 0.146577463)
p284 = Instance.new("Part", o1)
p284.BrickColor = BrickColor.new("Black")
p284.Name = "Wedge"
p284.CFrame = CFrame.new(-250.186768, 12641.7891, -672.864197, 0.117579982, -0.522459805, -0.844518065, 0.645082951, -0.60637635, 0.464947015, -0.755011857, -0.599452674, 0.265732199)
p284.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p284.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p284.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p284.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p284.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p284.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p284.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b284 = Instance.new("SpecialMesh", p284)
b284.MeshType = Enum.MeshType.Wedge
b284.Name = "Mesh"
b284.Scale = Vector3.new(0.0400000028, 0.184159204, 0.0685157031)
p285 = Instance.new("Part", o1)
p285.BrickColor = BrickColor.new("Black")
p285.Name = "Wedge"
p285.CFrame = CFrame.new(-250.24382, 12641.8438, -672.826965, 0.158884004, 0.312671989, 0.936478615, 0.699038982, 0.634203911, -0.330348104, -0.697209001, 0.707122087, -0.117805071)
p285.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p285.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p285.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p285.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p285.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p285.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p285.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b285 = Instance.new("SpecialMesh", p285)
b285.MeshType = Enum.MeshType.Wedge
b285.Name = "Mesh"
b285.Scale = Vector3.new(0.0400000028, 0.0192622915, 0.277909189)
p286 = Instance.new("Part", o1)
p286.BrickColor = BrickColor.new("Black")
p286.Name = "Wedge"
p286.CFrame = CFrame.new(-250.222107, 12641.8154, -672.839355, -0.153646976, -0.250826955, 0.955760717, -0.686107814, -0.668982863, -0.285863757, 0.71108979, -0.699676991, -0.0693071336)
p286.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p286.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p286.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p286.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p286.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p286.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p286.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b286 = Instance.new("SpecialMesh", p286)
b286.MeshType = Enum.MeshType.Wedge
b286.Name = "Mesh"
b286.Scale = Vector3.new(0.0400000028, 0.163363621, 0.549491525)
p287 = Instance.new("Part", o1)
p287.BrickColor = BrickColor.new("Black")
p287.Name = "Wedge"
p287.CFrame = CFrame.new(-250.724472, 12641.6055, -673.04248, 0.472691, -0.0234049428, -0.88091743, -0.125493005, 0.987671256, -0.093579486, 0.872246981, 0.154783145, 0.463926107)
p287.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p287.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p287.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p287.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p287.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p287.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p287.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b287 = Instance.new("SpecialMesh", p287)
b287.MeshType = Enum.MeshType.Wedge
b287.Name = "Mesh"
b287.Scale = Vector3.new(0.0400000028, 0.0393410921, 0.0424706601)
p288 = Instance.new("Part", o1)
p288.BrickColor = BrickColor.new("Black")
p288.Name = "Wedge"
p288.CFrame = CFrame.new(-250.193604, 12641.8438, -672.824768, 0.610193014, -0.511376917, -0.605110109, 0.490117997, 0.843745172, -0.218811765, 0.622453988, -0.163057923, 0.765482306)
p288.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p288.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p288.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p288.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p288.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p288.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p288.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b288 = Instance.new("SpecialMesh", p288)
b288.MeshType = Enum.MeshType.Wedge
b288.Name = "Mesh"
b288.Scale = Vector3.new(0.0400000028, 0.333856553, 0.219920874)
p289 = Instance.new("Part", o1)
p289.BrickColor = BrickColor.new("Black")
p289.Name = "Wedge"
p289.CFrame = CFrame.new(-250.222107, 12641.8154, -672.839355, -0.151974931, -0.249470994, 0.956382751, -0.684783697, -0.671175838, -0.283891439, 0.712723613, -0.698059678, -0.0688317567)
p289.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p289.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p289.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p289.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p289.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p289.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p289.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b289 = Instance.new("SpecialMesh", p289)
b289.MeshType = Enum.MeshType.Wedge
b289.Name = "Mesh"
b289.Scale = Vector3.new(0.0400000028, 0.16464211, 0.5493927)
p290 = Instance.new("Part", o1)
p290.BrickColor = BrickColor.new("Black")
p290.Name = "Wedge"
p290.CFrame = CFrame.new(-250.160873, 12641.7998, -672.844666, -0.330601126, -0.274883837, -0.902851999, 0.87782228, -0.440889418, -0.187201947, -0.346599132, -0.854432821, 0.387057662)
p290.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p290.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p290.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p290.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p290.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p290.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p290.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b290 = Instance.new("SpecialMesh", p290)
b290.MeshType = Enum.MeshType.Wedge
b290.Name = "Mesh"
b290.Scale = Vector3.new(0.0400000028, 0.163767472, 0.0790879875)
p291 = Instance.new("Part", o1)
p291.BrickColor = BrickColor.new("Black")
p291.Name = "Wedge"
p291.CFrame = CFrame.new(-250.248108, 12641.8086, -672.856506, -0.0239649992, 0.358783126, 0.933113337, -0.617959023, -0.739020109, 0.268283188, 0.785844982, -0.570196331, 0.239423931)
p291.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p291.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p291.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p291.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p291.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p291.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p291.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b291 = Instance.new("SpecialMesh", p291)
b291.MeshType = Enum.MeshType.Wedge
b291.Name = "Mesh"
b291.Scale = Vector3.new(0.0400000028, 0.554050744, 0.0328766815)
p292 = Instance.new("Part", o1)
p292.BrickColor = BrickColor.new("Black")
p292.Name = "Wedge"
p292.CFrame = CFrame.new(-250.730286, 12641.6055, -673.041382, 0.336477041, -0.937036455, 0.0935198069, 0.553392053, 0.116402648, -0.824747086, 0.761932135, 0.329261541, 0.557715297)
p292.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p292.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p292.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p292.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p292.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p292.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p292.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b292 = Instance.new("SpecialMesh", p292)
b292.MeshType = Enum.MeshType.Wedge
b292.Name = "Mesh"
b292.Scale = Vector3.new(0.0400000028, 0.0762529597, 0.0199218746)
p293 = Instance.new("Part", o1)
p293.BrickColor = BrickColor.new("Black")
p293.Name = "Wedge"
p293.CFrame = CFrame.new(-250.254013, 12642.0117, -672.453552, -0.0902639925, 0.454641163, 0.886089087, 0.823973894, 0.533834577, -0.189967364, -0.559391916, 0.712967098, -0.422798544)
p293.Size = Vector3.new(0.200000003, 0.650076747, 0.200000003)
p293.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p293.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p293.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p293.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p293.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p293.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b293 = Instance.new("SpecialMesh", p293)
b293.MeshType = Enum.MeshType.Wedge
b293.Name = "Mesh"
b293.Scale = Vector3.new(0.0400000028, 1, 0.103756309)
p294 = Instance.new("Part", o1)
p294.BrickColor = BrickColor.new("Black")
p294.Name = "Wedge"
p294.CFrame = CFrame.new(-250.250427, 12641.8535, -672.820007, 0.0831059888, 0.281627029, 0.955918252, 0.485898942, 0.826034069, -0.285604596, -0.870054901, 0.488215148, -0.0681939051)
p294.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p294.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p294.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p294.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p294.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p294.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p294.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b294 = Instance.new("SpecialMesh", p294)
b294.MeshType = Enum.MeshType.Wedge
b294.Name = "Mesh"
b294.Scale = Vector3.new(0.0400000028, 0.127240375, 0.169007033)
p295 = Instance.new("Part", o1)
p295.BrickColor = BrickColor.new("Black")
p295.Name = "Wedge"
p295.CFrame = CFrame.new(-250.76738, 12641.6338, -673.015625, -0.740595937, 0.665410399, 0.0935244933, -0.432015926, -0.36491093, -0.824743807, -0.514664948, -0.651206017, 0.55771935)
p295.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p295.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p295.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p295.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p295.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p295.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p295.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b295 = Instance.new("SpecialMesh", p295)
b295.MeshType = Enum.MeshType.Wedge
b295.Name = "Mesh"
b295.Scale = Vector3.new(0.0400000028, 0.497212827, 0.162207022)
p296 = Instance.new("Part", o1)
p296.BrickColor = BrickColor.new("Black")
p296.Name = "Wedge"
p296.CFrame = CFrame.new(-250.766907, 12641.6084, -672.997803, 0.740595937, 0.665410399, -0.0935244933, 0.432015926, -0.36491093, 0.824743807, 0.514664948, -0.651206017, -0.55771935)
p296.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p296.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p296.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p296.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p296.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p296.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p296.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b296 = Instance.new("SpecialMesh", p296)
b296.MeshType = Enum.MeshType.Wedge
b296.Name = "Mesh"
b296.Scale = Vector3.new(0.0400000028, 0.497212827, 0.162109375)
p297 = Instance.new("Part", o1)
p297.BrickColor = BrickColor.new("Black")
p297.Name = "Wedge"
p297.CFrame = CFrame.new(-250.216232, 12641.791, -672.816467, -0.0376860164, -0.615500927, 0.787234664, -0.990152359, 0.129290715, 0.0536862314, -0.134826049, -0.777458966, -0.614312232)
p297.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p297.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p297.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p297.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p297.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p297.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p297.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b297 = Instance.new("SpecialMesh", p297)
b297.MeshType = Enum.MeshType.Wedge
b297.Name = "Mesh"
b297.Scale = Vector3.new(0.0400000028, 0.00020409486, 0.574458063)
p298 = Instance.new("Part", o1)
p298.BrickColor = BrickColor.new("Black")
p298.Name = "Wedge"
p298.CFrame = CFrame.new(-250.201416, 12641.8369, -672.827271, 0.185709, 0.981060565, 0.0550673194, 0.614386022, -0.0721982569, -0.785695434, -0.766839027, 0.17974329, -0.616157711)
p298.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p298.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p298.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p298.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p298.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p298.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p298.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b298 = Instance.new("SpecialMesh", p298)
b298.MeshType = Enum.MeshType.Wedge
b298.Name = "Mesh"
b298.Scale = Vector3.new(0.0400000028, 0.294166565, 0.270188034)
p299 = Instance.new("Part", o1)
p299.BrickColor = BrickColor.new("Black")
p299.Name = "Wedge"
p299.CFrame = CFrame.new(-250.196014, 12641.793, -672.814209, 0.221557945, 0.575467288, -0.787241817, -0.954304755, 0.293974072, -0.0536828078, 0.200535953, 0.763162374, 0.61430335)
p299.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p299.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p299.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p299.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p299.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p299.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p299.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b299 = Instance.new("SpecialMesh", p299)
b299.MeshType = Enum.MeshType.Wedge
b299.Name = "Mesh"
b299.Scale = Vector3.new(0.0400000028, 0.176492721, 0.428231835)
p300 = Instance.new("Part", o1)
p300.BrickColor = BrickColor.new("Black")
p300.Name = "Wedge"
p300.CFrame = CFrame.new(-250.243515, 12641.7949, -672.777771, -0.263503104, 0.339815944, 0.902824104, 0.952188492, 0.241621032, 0.186966568, -0.154607072, 0.908924878, -0.387236744)
p300.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p300.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p300.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p300.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p300.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p300.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p300.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b300 = Instance.new("SpecialMesh", p300)
b300.MeshType = Enum.MeshType.Wedge
b300.Name = "Mesh"
b300.Scale = Vector3.new(0.0400000028, 0.157225892, 0.186774373)
p301 = Instance.new("Part", o1)
p301.BrickColor = BrickColor.new("Black")
p301.Name = "Wedge"
p301.CFrame = CFrame.new(-250.193924, 12641.8047, -672.799988, 0.498284996, 0.580954969, 0.643586397, 0.666985989, -0.731109142, 0.143558681, 0.553933024, 0.357729971, -0.75178951)
p301.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p301.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p301.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p301.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p301.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p301.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p301.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b301 = Instance.new("SpecialMesh", p301)
b301.MeshType = Enum.MeshType.Wedge
b301.Name = "Mesh"
b301.Scale = Vector3.new(0.0400000028, 0.0363915674, 0.394983798)
p302 = Instance.new("Part", o1)
p302.BrickColor = BrickColor.new("Black")
p302.Name = "Wedge"
p302.CFrame = CFrame.new(-250.242661, 12641.7949, -672.780334, -0.221557945, 0.575467288, 0.787241817, 0.954304755, 0.293974072, 0.0536828078, -0.200535953, 0.763162374, -0.61430335)
p302.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p302.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p302.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p302.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p302.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p302.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p302.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b302 = Instance.new("SpecialMesh", p302)
b302.MeshType = Enum.MeshType.Wedge
b302.Name = "Mesh"
b302.Scale = Vector3.new(0.0400000028, 0.176492721, 0.146303952)
p303 = Instance.new("Part", o1)
p303.BrickColor = BrickColor.new("Black")
p303.Name = "Wedge"
p303.CFrame = CFrame.new(-250.181213, 12641.8086, -672.803955, 0.378870934, -0.658534765, -0.650222123, -0.879508853, -0.0375958867, -0.474395096, 0.287959963, 0.751610577, -0.593431175)
p303.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p303.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p303.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p303.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p303.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p303.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p303.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b303 = Instance.new("SpecialMesh", p303)
b303.MeshType = Enum.MeshType.Wedge
b303.Name = "Mesh"
b303.Scale = Vector3.new(0.0400000028, 0.452954829, 0.086539574)
p304 = Instance.new("Part", o1)
p304.BrickColor = BrickColor.new("Black")
p304.Name = "Wedge"
p304.CFrame = CFrame.new(-250.248505, 12641.8184, -672.80188, 0.310944855, -0.138640046, 0.940261841, 0.865239561, -0.368080139, -0.340407789, 0.393285811, 0.919399798, 0.00550422445)
p304.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p304.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p304.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p304.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p304.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p304.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p304.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b304 = Instance.new("SpecialMesh", p304)
b304.MeshType = Enum.MeshType.Wedge
b304.Name = "Mesh"
b304.Scale = Vector3.new(0.0400000028, 0.310295433, 0.308487922)
p305 = Instance.new("Part", o1)
p305.BrickColor = BrickColor.new("Black")
p305.Name = "Wedge"
p305.CFrame = CFrame.new(-250.159149, 12641.8076, -672.831421, 0.322679132, -0.68781513, -0.650222003, -0.879584312, 0.0358194709, -0.474392742, 0.349585116, 0.725001752, -0.593433082)
p305.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p305.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p305.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p305.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p305.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p305.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p305.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b305 = Instance.new("SpecialMesh", p305)
b305.MeshType = Enum.MeshType.Wedge
b305.Name = "Mesh"
b305.Scale = Vector3.new(0.0400000028, 0.0727194101, 0.0367252789)
p306 = Instance.new("Part", o1)
p306.BrickColor = BrickColor.new("Black")
p306.Name = "Wedge"
p306.CFrame = CFrame.new(-250.195618, 12641.793, -672.814331, -0.378870934, -0.658534765, 0.650222123, 0.879508853, -0.0375958867, 0.474395096, -0.287959963, 0.751610577, 0.593431175)
p306.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p306.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p306.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p306.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p306.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p306.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p306.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b306 = Instance.new("SpecialMesh", p306)
b306.MeshType = Enum.MeshType.Wedge
b306.Name = "Mesh"
b306.Scale = Vector3.new(0.0400000028, 0.452954829, 0.0967631862)
p307 = Instance.new("Part", o1)
p307.BrickColor = BrickColor.new("Black")
p307.Name = "Wedge"
p307.CFrame = CFrame.new(-250.194977, 12641.8232, -672.833496, 0.027289005, -0.649595201, -0.759790421, 0.465760112, -0.664265394, 0.58465302, -0.884490252, -0.369834632, 0.284428328)
p307.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p307.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p307.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p307.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p307.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p307.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p307.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b307 = Instance.new("SpecialMesh", p307)
b307.MeshType = Enum.MeshType.Wedge
b307.Name = "Mesh"
b307.Scale = Vector3.new(0.0400000028, 0.0716584846, 0.247488022)
p308 = Instance.new("Part", o1)
p308.BrickColor = BrickColor.new("Black")
p308.Name = "Wedge"
p308.CFrame = CFrame.new(-250.168411, 12641.8096, -672.833496, -0.498284996, 0.580954969, -0.643586397, -0.666985989, -0.731109142, -0.143558681, -0.553933024, 0.357729971, 0.75178951)
p308.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p308.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p308.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p308.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p308.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p308.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p308.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b308 = Instance.new("SpecialMesh", p308)
b308.MeshType = Enum.MeshType.Wedge
b308.Name = "Mesh"
b308.Scale = Vector3.new(0.0400000028, 0.0363915674, 0.037570782)
p309 = Instance.new("Part", o1)
p309.BrickColor = BrickColor.new("Black")
p309.Name = "Wedge"
p309.CFrame = CFrame.new(-250.167984, 12641.8096, -672.834045, 0.268546015, 0.209259927, -0.940262496, 0.751517117, 0.565106809, 0.340406179, 0.602582037, -0.798038006, -0.00550524145)
p309.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p309.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p309.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p309.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p309.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p309.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p309.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b309 = Instance.new("SpecialMesh", p309)
b309.MeshType = Enum.MeshType.Wedge
b309.Name = "Mesh"
b309.Scale = Vector3.new(0.0400000028, 0.0516490266, 0.00826367363)
p310 = Instance.new("Part", o1)
p310.BrickColor = BrickColor.new("Black")
p310.Name = "Wedge"
p310.CFrame = CFrame.new(-250.255554, 12641.8574, -672.818054, 0.119102061, 0.266737014, 0.956381738, 0.594114304, 0.752617121, -0.283894002, -0.795514345, 0.602012455, -0.0688340217)
p310.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p310.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p310.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p310.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p310.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p310.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p310.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b310 = Instance.new("SpecialMesh", p310)
b310.MeshType = Enum.MeshType.Wedge
b310.Name = "Mesh"
b310.Scale = Vector3.new(0.0400000028, 0.141561672, 0.121529147)
p311 = Instance.new("Part", o1)
p311.BrickColor = BrickColor.new("Black")
p311.Name = "Wedge"
p311.CFrame = CFrame.new(-250.159866, 12641.9951, -672.499573, 0.0902639925, 0.454641163, -0.886089087, -0.823973894, 0.533834577, 0.189967364, 0.559391916, 0.712967098, 0.422798544)
p311.Size = Vector3.new(0.200000003, 0.650076747, 0.200000003)
p311.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p311.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p311.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p311.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p311.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p311.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b311 = Instance.new("SpecialMesh", p311)
b311.MeshType = Enum.MeshType.Wedge
b311.Name = "Mesh"
b311.Scale = Vector3.new(0.0400000028, 1, 0.967266023)
p312 = Instance.new("Part", o1)
p312.BrickColor = BrickColor.new("Really black")
p312.Name = "Shard"
p312.CFrame = CFrame.new(-250.73819, 12641.793, -672.704041, -0.372512877, 0.924048662, -0.0858389363, 0.514589846, 0.282646328, 0.809511185, 0.772289693, 0.257381529, -0.580795348)
p312.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p312.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p312.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p312.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p312.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p312.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p312.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b312 = Instance.new("SpecialMesh", p312)
b312.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b312.TextureId = ""
b312.MeshType = Enum.MeshType.FileMesh
b312.Name = "Mesh"
b312.Scale = Vector3.new(0.300000012, 0.600000024, 0.099999994)
p313 = Instance.new("Part", o1)
p313.BrickColor = BrickColor.new("Royal purple")
p313.Name = "Shard"
p313.CFrame = CFrame.new(-250.73819, 12641.793, -672.704041, -0.372512877, 0.924048662, -0.0858389363, 0.514589846, 0.282646328, 0.809511185, 0.772289693, 0.257381529, -0.580795348)
p313.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p313.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p313.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p313.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p313.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p313.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p313.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b313 = Instance.new("SpecialMesh", p313)
b313.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b313.TextureId = ""
b313.MeshType = Enum.MeshType.FileMesh
b313.Name = "Mesh"
b313.Scale = Vector3.new(0.280000001, 0.560000002, 0.109999999)
p314 = Instance.new("Part", o1)
p314.BrickColor = BrickColor.new("Really black")
p314.Name = "Shard"
p314.CFrame = CFrame.new(-250.739212, 12641.8467, -672.737427, -0.372512877, 0.924048662, -0.0858389363, 0.514589846, 0.282646328, 0.809511185, 0.772289693, 0.257381529, -0.580795348)
p314.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p314.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p314.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p314.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p314.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p314.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p314.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b314 = Instance.new("SpecialMesh", p314)
b314.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b314.TextureId = ""
b314.MeshType = Enum.MeshType.FileMesh
b314.Name = "Mesh"
b314.Scale = Vector3.new(0.300000012, 0.600000024, 0.099999994)
p315 = Instance.new("Part", o1)
p315.BrickColor = BrickColor.new("Royal purple")
p315.Name = "Shard"
p315.CFrame = CFrame.new(-250.739212, 12641.8467, -672.737427, -0.372512877, 0.924048662, -0.0858389363, 0.514589846, 0.282646328, 0.809511185, 0.772289693, 0.257381529, -0.580795348)
p315.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p315.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p315.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p315.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p315.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p315.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p315.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b315 = Instance.new("SpecialMesh", p315)
b315.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b315.TextureId = ""
b315.MeshType = Enum.MeshType.FileMesh
b315.Name = "Mesh"
b315.Scale = Vector3.new(0.280000001, 0.560000002, 0.109999999)
p316 = Instance.new("Part", o1)
p316.BrickColor = BrickColor.new("Black")
p316.Name = "Wedge"
p316.CFrame = CFrame.new(-250.949417, 12641.5908, -673.055115, -0.354149967, 0.930316806, 0.0953340754, -0.555223942, -0.12713404, -0.821926594, -0.752531886, -0.344017059, 0.561558604)
p316.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p316.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p316.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p316.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p316.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p316.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p316.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b316 = Instance.new("SpecialMesh", p316)
b316.MeshType = Enum.MeshType.Wedge
b316.Name = "Mesh"
b316.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p317 = Instance.new("Part", o1)
p317.BrickColor = BrickColor.new("Black")
p317.Name = "Wedge"
p317.CFrame = CFrame.new(-249.896973, 12642.1436, -672.316406, -0.319118977, 0.384010166, -0.86642915, 0.92245388, -0.0838133097, -0.376900733, -0.217351973, -0.91951704, -0.327485263)
p317.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p317.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p317.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p317.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p317.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p317.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p317.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b317 = Instance.new("SpecialMesh", p317)
b317.MeshType = Enum.MeshType.Wedge
b317.Name = "Mesh"
b317.Scale = Vector3.new(0.0400000028, 0.00854740757, 0.0738954693)
p318 = Instance.new("Part", o1)
p318.BrickColor = BrickColor.new("Really black")
p318.CFrame = CFrame.new(-252.196213, 12641.4385, -673.03833, 0.0858350396, -0.924051285, 0.372507304, -0.809512377, -0.282639742, -0.514591575, 0.580794275, -0.257379293, -0.772291362)
p318.Size = Vector3.new(0.200000003, 1.10000026, 0.200000003)
p318.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p318.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p318.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p318.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p318.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p318.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b318 = Instance.new("BlockMesh", p318)
b318.Name = "Mesh"
b318.Offset = Vector3.new(0, 0, -0.049999997)
b318.Scale = Vector3.new(0.49999997, 1, 0.49999997)
p319 = Instance.new("Part", o1)
p319.BrickColor = BrickColor.new("Really black")
p319.CFrame = CFrame.new(-251.948822, 12641.4814, -673.01355, -0.0858350396, -0.924051285, -0.372507304, 0.809512377, -0.282639742, 0.514591575, -0.580794275, -0.257379293, 0.772291362)
p319.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
p319.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p319.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p319.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p319.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p319.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p319.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b319 = Instance.new("SpecialMesh", p319)
b319.MeshType = Enum.MeshType.Wedge
b319.Name = "Mesh"
b319.Scale = Vector3.new(0.49999997, 1, 0.49999997)
p320 = Instance.new("Part", o1)
p320.BrickColor = BrickColor.new("Really black")
p320.CFrame = CFrame.new(-252.044235, 12641.6104, -672.821106, -0.0858350396, 0.924051285, 0.372507304, 0.809512377, 0.282639742, -0.514591575, -0.580794275, 0.257379293, -0.772291362)
p320.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
p320.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p320.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p320.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p320.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p320.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p320.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b320 = Instance.new("SpecialMesh", p320)
b320.MeshType = Enum.MeshType.Wedge
b320.Name = "Mesh"
b320.Scale = Vector3.new(0.49999997, 1, 0.99999994)
p321 = Instance.new("Part", o1)
p321.BrickColor = BrickColor.new("Really black")
p321.CFrame = CFrame.new(-251.619766, 12641.6475, -672.83374, -0.0858350396, 0.924051285, 0.372507304, 0.809512377, 0.282639742, -0.514591575, -0.580794275, 0.257379293, -0.772291362)
p321.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p321.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p321.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p321.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p321.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p321.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p321.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b321 = Instance.new("SpecialMesh", p321)
b321.MeshType = Enum.MeshType.Wedge
b321.Name = "Mesh"
b321.Scale = Vector3.new(0.49999997, 0.99999994, 0.49999997)
p322 = Instance.new("Part", o1)
p322.BrickColor = BrickColor.new("Really black")
p322.CFrame = CFrame.new(-251.585648, 12641.5879, -672.912659, 0.0858350396, 0.924051285, -0.372507304, -0.809512377, 0.282639742, 0.514591575, 0.580794275, 0.257379293, 0.772291362)
p322.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p322.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p322.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p322.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p322.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p322.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p322.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b322 = Instance.new("SpecialMesh", p322)
b322.MeshType = Enum.MeshType.Wedge
b322.Name = "Mesh"
b322.Scale = Vector3.new(0.49999997, 0.99999994, 0.49999997)
p323 = Instance.new("Part", o1)
p323.BrickColor = BrickColor.new("Really black")
p323.CFrame = CFrame.new(-252.043121, 12641.4551, -673.039856, 0.0858350396, 0.924051285, -0.372507304, -0.809512377, 0.282639742, 0.514591575, 0.580794275, 0.257379293, 0.772291362)
p323.Size = Vector3.new(0.200000003, 0.799999952, 0.200000003)
p323.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p323.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p323.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p323.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p323.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p323.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b323 = Instance.new("SpecialMesh", p323)
b323.MeshType = Enum.MeshType.Wedge
b323.Name = "Mesh"
b323.Scale = Vector3.new(0.49999997, 1, 0.49999997)
p324 = Instance.new("Part", o1)
p324.BrickColor = BrickColor.new("Black")
p324.CFrame = CFrame.new(-252.257919, 12641.1611, -673.434753, 0.0935280025, 0.909525454, -0.404988915, -0.824744999, 0.298639387, 0.480218917, 0.557717025, 0.28909868, 0.778057635)
p324.Size = Vector3.new(0.200000003, 0.725600123, 0.200000003)
p324.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p324.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p324.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p324.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p324.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p324.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b324 = Instance.new("BlockMesh", p324)
b324.Name = "Mesh"
b324.Scale = Vector3.new(0.399999976, 1, 0.0400000028)
p325 = Instance.new("Part", o1)
p325.BrickColor = BrickColor.new("Black")
p325.CFrame = CFrame.new(-252.260864, 12641.1729, -673.42749, -0.909528136, -0.404984444, -0.0935216546, -0.298630029, 0.480217099, 0.824749529, -0.289100021, 0.778061152, -0.557711482)
p325.Size = Vector3.new(0.725624979, 0.200000003, 0.200000003)
p325.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p325.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p325.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p325.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p325.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p325.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b325 = Instance.new("BlockMesh", p325)
b325.Name = "Mesh"
b325.Scale = Vector3.new(1, 0.0400000028, 0.399999976)
p326 = Instance.new("Part", o1)
p326.BrickColor = BrickColor.new("Black")
p326.Name = "Wedge"
p326.CFrame = CFrame.new(-251.902924, 12641.2646, -673.380737, 0.047969006, -0.996343732, 0.0706971437, 0.624283075, 0.0851569548, 0.776542962, -0.779724121, 0.00688502984, 0.62608546)
p326.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p326.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p326.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p326.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p326.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p326.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p326.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b326 = Instance.new("SpecialMesh", p326)
b326.MeshType = Enum.MeshType.Wedge
b326.Name = "Mesh"
b326.Scale = Vector3.new(0.0400000028, 0.263073564, 0.484446883)
p327 = Instance.new("Part", o1)
p327.BrickColor = BrickColor.new("Black")
p327.Name = "Wedge"
p327.CFrame = CFrame.new(-251.881683, 12641.2715, -673.375732, 0.990398645, -0.0935266688, 0.101800807, 0.0197929926, 0.824748695, 0.565153062, -0.136816949, -0.557711899, 0.818681121)
p327.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p327.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p327.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p327.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p327.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p327.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p327.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b327 = Instance.new("SpecialMesh", p327)
b327.MeshType = Enum.MeshType.Wedge
b327.Name = "Mesh"
b327.Scale = Vector3.new(0.0400000028, 0.179980472, 0.605882049)
p328 = Instance.new("Part", o1)
p328.BrickColor = BrickColor.new("Black")
p328.Name = "Wedge"
p328.CFrame = CFrame.new(-251.699905, 12641.2891, -673.312866, 0.929760396, 0.025506394, -0.367280573, -0.0727880374, -0.965171516, -0.251288742, -0.360898167, 0.260371983, -0.895521581)
p328.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p328.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p328.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p328.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p328.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p328.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p328.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b328 = Instance.new("SpecialMesh", p328)
b328.MeshType = Enum.MeshType.Wedge
b328.Name = "Mesh"
b328.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p329 = Instance.new("Part", o1)
p329.BrickColor = BrickColor.new("Black")
p329.Name = "Wedge"
p329.CFrame = CFrame.new(-251.937607, 12641.2666, -673.26825, 0.0828320235, -0.347498953, 0.934014678, -0.840821147, -0.527461171, -0.121674009, 0.534938097, -0.775260687, -0.335875124)
p329.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p329.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p329.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p329.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p329.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p329.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p329.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b329 = Instance.new("SpecialMesh", p329)
b329.MeshType = Enum.MeshType.Wedge
b329.Name = "Mesh"
b329.Scale = Vector3.new(0.0400000028, 0.00980384089, 0.767811179)
p330 = Instance.new("Part", o1)
p330.BrickColor = BrickColor.new("Black")
p330.CFrame = CFrame.new(-251.878952, 12641.2529, -673.362976, 0.101802014, -0.990397871, 0.0935331881, 0.565163076, -0.019796079, -0.824741662, 0.818674088, 0.136821866, 0.557720959)
p330.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p330.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p330.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p330.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p330.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p330.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p330.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b330 = Instance.new("BlockMesh", p330)
b330.Name = "Mesh"
b330.Scale = Vector3.new(0.605882049, 0.0400000028, 0.0400390625)
p331 = Instance.new("Part", o1)
p331.BrickColor = BrickColor.new("Black")
p331.Name = "Wedge"
p331.CFrame = CFrame.new(-251.869278, 12641.2617, -673.294617, -0.0828320235, -0.347498953, -0.934014678, 0.840821147, -0.527461171, 0.121674009, -0.534938097, -0.775260687, 0.335875124)
p331.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p331.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p331.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p331.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p331.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p331.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p331.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b331 = Instance.new("SpecialMesh", p331)
b331.MeshType = Enum.MeshType.Wedge
b331.Name = "Mesh"
b331.Scale = Vector3.new(0.0400000028, 0.00980384089, 0.000539493456)
p332 = Instance.new("Part", o1)
p332.BrickColor = BrickColor.new("Black")
p332.Name = "Wedge"
p332.CFrame = CFrame.new(-251.934082, 12641.2686, -673.266113, 0.0933649689, -0.14665404, 0.984771848, -0.824371696, -0.566015601, -0.0061344509, 0.558295846, -0.811245322, -0.173743486)
p332.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p332.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p332.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p332.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p332.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p332.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p332.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b332 = Instance.new("SpecialMesh", p332)
b332.MeshType = Enum.MeshType.Wedge
b332.Name = "Mesh"
b332.Scale = Vector3.new(0.0400000028, 0.157024801, 0.752134323)
p333 = Instance.new("Part", o1)
p333.BrickColor = BrickColor.new("Black")
p333.Name = "Wedge"
p333.CFrame = CFrame.new(-251.900986, 12641.2305, -673.361816, -0.849174857, -0.524250031, 0.0637502745, 0.348974973, -0.466425806, 0.81281209, -0.396381944, 0.712466776, 0.579027176)
p333.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p333.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p333.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p333.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p333.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p333.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p333.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b333 = Instance.new("SpecialMesh", p333)
b333.MeshType = Enum.MeshType.Wedge
b333.Name = "Mesh"
b333.Scale = Vector3.new(0.0400000028, 0.414634407, 0.363283366)
p334 = Instance.new("Part", o1)
p334.BrickColor = BrickColor.new("Black")
p334.Name = "Wedge"
p334.CFrame = CFrame.new(-251.878906, 12641.2402, -673.353699, 0.990427613, -0.101520889, -0.0935235247, 0.0199489929, -0.565154076, 0.824744225, -0.136583954, -0.818715096, -0.557718992)
p334.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p334.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p334.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p334.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p334.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p334.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p334.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b334 = Instance.new("SpecialMesh", p334)
b334.MeshType = Enum.MeshType.Wedge
b334.Name = "Mesh"
b334.Scale = Vector3.new(0.0400000028, 0.605784833, 0.220117182)
p335 = Instance.new("Part", o1)
p335.BrickColor = BrickColor.new("Black")
p335.Name = "Wedge"
p335.CFrame = CFrame.new(-251.900345, 12641.2314, -673.362061, -0.224732071, -0.966549218, 0.123605363, 0.93488133, -0.178103149, 0.307044476, -0.274759084, 0.184559077, 0.943634152)
p335.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p335.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p335.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p335.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p335.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p335.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p335.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b335 = Instance.new("SpecialMesh", p335)
b335.MeshType = Enum.MeshType.Wedge
b335.Name = "Mesh"
b335.Scale = Vector3.new(0.0400000028, 0.263294399, 0.485239804)
p336 = Instance.new("Part", o1)
p336.BrickColor = BrickColor.new("Black")
p336.CFrame = CFrame.new(-251.605316, 12641.3545, -673.235352, 0.848039985, -0.391851962, 0.356763661, 0.147882998, 0.821471155, 0.550741136, -0.508880019, -0.414291143, 0.754588604)
p336.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p336.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p336.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p336.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p336.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p336.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p336.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b336 = Instance.new("BlockMesh", p336)
b336.Name = "Mesh"
b336.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p337 = Instance.new("Part", o1)
p337.BrickColor = BrickColor.new("Black")
p337.CFrame = CFrame.new(-251.929825, 12641.3135, -673.265686, 0.0935280025, 0.356762022, -0.929501712, -0.824744999, 0.55073595, 0.128396645, 0.557717025, 0.754593194, 0.345746875)
p337.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p337.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p337.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p337.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p337.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p337.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p337.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b337 = Instance.new("BlockMesh", p337)
b337.Name = "Mesh"
b337.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p338 = Instance.new("Part", o1)
p338.BrickColor = BrickColor.new("Black")
p338.CFrame = CFrame.new(-251.724167, 12641.377, -673.200012, 0.0935280025, 0.356762022, -0.929501712, -0.824744999, 0.55073595, 0.128396645, 0.557717025, 0.754593194, 0.345746875)
p338.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p338.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p338.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p338.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p338.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p338.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p338.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b338 = Instance.new("BlockMesh", p338)
b338.Name = "Mesh"
b338.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p339 = Instance.new("Part", o1)
p339.BrickColor = BrickColor.new("Black")
p339.Name = "Wedge"
p339.CFrame = CFrame.new(-251.900574, 12641.2754, -673.32196, -0.41789493, -0.903668404, 0.0935271457, 0.475921929, -0.305445313, -0.82474333, 0.773861885, -0.300144434, 0.557719648)
p339.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p339.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p339.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p339.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p339.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p339.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p339.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b339 = Instance.new("SpecialMesh", p339)
b339.MeshType = Enum.MeshType.Wedge
b339.Name = "Mesh"
b339.Scale = Vector3.new(0.0400000028, 0.30178839, 0.399999976)
p340 = Instance.new("Part", o1)
p340.BrickColor = BrickColor.new("Black")
p340.Name = "Wedge"
p340.CFrame = CFrame.new(-251.901123, 12641.3154, -673.343872, -0.047969006, -0.996343732, -0.0706971437, -0.624283075, 0.0851569548, -0.776542962, 0.779724121, 0.00688502984, -0.62608546)
p340.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p340.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p340.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p340.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p340.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p340.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p340.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b340 = Instance.new("SpecialMesh", p340)
b340.MeshType = Enum.MeshType.Wedge
b340.Name = "Mesh"
b340.Scale = Vector3.new(0.0400000028, 0.263073564, 0.147481143)
p341 = Instance.new("Part", o1)
p341.BrickColor = BrickColor.new("Black")
p341.Name = "Wedge"
p341.CFrame = CFrame.new(-251.87825, 12641.2344, -673.352112, 0.990398645, -0.10179992, -0.0935276225, 0.0197929926, -0.565160871, 0.82474333, -0.136816949, -0.818675816, -0.557719648)
p341.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p341.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p341.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p341.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p341.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p341.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p341.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b341 = Instance.new("SpecialMesh", p341)
b341.MeshType = Enum.MeshType.Wedge
b341.Name = "Mesh"
b341.Scale = Vector3.new(0.0400000028, 0.605882049, 0.179980472)
p342 = Instance.new("Part", o1)
p342.BrickColor = BrickColor.new("Black")
p342.Name = "Wedge"
p342.CFrame = CFrame.new(-251.708908, 12641.3135, -673.333984, -0.93096143, -0.35443294, 0.0876820236, 0.131890059, -0.550378978, -0.824431896, 0.340464145, -0.755949974, 0.559127748)
p342.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p342.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p342.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p342.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p342.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p342.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p342.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b342 = Instance.new("SpecialMesh", p342)
b342.MeshType = Enum.MeshType.Wedge
b342.Name = "Mesh"
b342.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p343 = Instance.new("Part", o1)
p343.BrickColor = BrickColor.new("Black")
p343.Name = "Wedge"
p343.CFrame = CFrame.new(-251.893005, 12641.251, -673.301453, 0.224732071, -0.966549218, -0.123605363, -0.93488133, -0.178103149, -0.307044476, 0.274759084, 0.184559077, -0.943634152)
p343.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p343.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p343.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p343.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p343.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p343.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p343.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b343 = Instance.new("SpecialMesh", p343)
b343.MeshType = Enum.MeshType.Wedge
b343.Name = "Mesh"
b343.Scale = Vector3.new(0.0400000028, 0.263294399, 0.147486597)
p344 = Instance.new("Part", o1)
p344.BrickColor = BrickColor.new("Black")
p344.Name = "Wedge"
p344.CFrame = CFrame.new(-251.724609, 12641.2715, -673.364258, -0.929760396, 0.025506394, 0.367280573, 0.0727880374, -0.965171516, 0.251288742, 0.360898167, 0.260371983, 0.895521581)
p344.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p344.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p344.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p344.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p344.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p344.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p344.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b344 = Instance.new("SpecialMesh", p344)
b344.MeshType = Enum.MeshType.Wedge
b344.Name = "Mesh"
b344.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p345 = Instance.new("Part", o1)
p345.BrickColor = BrickColor.new("Black")
p345.Name = "Wedge"
p345.CFrame = CFrame.new(-251.881683, 12641.2715, -673.375732, -0.990427613, -0.101520889, 0.0935235247, -0.0199489929, -0.565154076, -0.824744225, 0.136583954, -0.818715096, 0.557718992)
p345.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p345.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p345.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p345.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p345.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p345.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p345.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b345 = Instance.new("SpecialMesh", p345)
b345.MeshType = Enum.MeshType.Wedge
b345.Name = "Mesh"
b345.Scale = Vector3.new(0.0400000028, 0.605784833, 0.17988281)
p346 = Instance.new("Part", o1)
p346.BrickColor = BrickColor.new("Black")
p346.CFrame = CFrame.new(-251.607529, 12641.377, -673.253906, -0.909107506, -0.215052903, 0.356757551, 0.390614241, -0.73763907, 0.550735176, 0.144721091, 0.640031993, 0.754595876)
p346.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p346.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p346.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p346.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p346.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p346.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p346.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b346 = Instance.new("BlockMesh", p346)
b346.Name = "Mesh"
b346.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p347 = Instance.new("Part", o1)
p347.BrickColor = BrickColor.new("Black")
p347.Name = "Wedge"
p347.CFrame = CFrame.new(-251.754883, 12641.3174, -673.317322, -0.929828405, -0.354631096, 0.0982646495, 0.122928061, -0.551019251, -0.82538873, 0.34685418, -0.755390406, 0.555947483)
p347.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p347.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p347.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p347.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p347.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p347.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p347.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b347 = Instance.new("SpecialMesh", p347)
b347.MeshType = Enum.MeshType.Wedge
b347.Name = "Mesh"
b347.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p348 = Instance.new("Part", o1)
p348.BrickColor = BrickColor.new("Black")
p348.Name = "Wedge"
p348.CFrame = CFrame.new(-251.801407, 12641.2979, -673.281799, 0.333157867, 0.411823213, 0.848178923, 0.597083747, -0.788361013, 0.148249581, 0.729723752, 0.45704335, -0.508541644)
p348.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p348.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p348.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p348.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p348.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p348.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p348.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b348 = Instance.new("SpecialMesh", p348)
b348.MeshType = Enum.MeshType.Wedge
b348.Name = "Mesh"
b348.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p349 = Instance.new("Part", o1)
p349.BrickColor = BrickColor.new("Black")
p349.Name = "Wedge"
p349.CFrame = CFrame.new(-251.82312, 12641.2705, -673.287842, -0.0933649689, -0.14665404, -0.984771848, 0.824371696, -0.566015601, 0.0061344509, -0.558295846, -0.811245322, 0.173743486)
p349.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p349.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p349.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p349.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p349.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p349.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p349.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b349 = Instance.new("SpecialMesh", p349)
b349.MeshType = Enum.MeshType.Wedge
b349.Name = "Mesh"
b349.Scale = Vector3.new(0.0400000028, 0.157024801, 0.403840691)
p350 = Instance.new("Part", o1)
p350.BrickColor = BrickColor.new("Black")
p350.Name = "Wedge"
p350.CFrame = CFrame.new(-251.745682, 12641.2705, -673.3573, -0.0252090041, 0.683929086, 0.729112804, -0.959770143, -0.22058633, 0.173732474, 0.279653043, -0.695401013, 0.661975443)
p350.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p350.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p350.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p350.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p350.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p350.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p350.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b350 = Instance.new("SpecialMesh", p350)
b350.MeshType = Enum.MeshType.Wedge
b350.Name = "Mesh"
b350.Scale = Vector3.new(0.0400000028, 0.235460535, 0.113313235)
p351 = Instance.new("Part", o1)
p351.BrickColor = BrickColor.new("Black")
p351.Name = "Wedge"
p351.CFrame = CFrame.new(-251.759277, 12641.29, -673.264954, 0.0955799967, 0.877393067, 0.470155299, -0.825028002, -0.194441468, 0.530585825, 0.556949973, -0.438604683, 0.705289066)
p351.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p351.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p351.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p351.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p351.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p351.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p351.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b351 = Instance.new("SpecialMesh", p351)
b351.MeshType = Enum.MeshType.Wedge
b351.Name = "Mesh"
b351.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.296343386)
p352 = Instance.new("Part", o1)
p352.BrickColor = BrickColor.new("Black")
p352.Name = "Wedge"
p352.CFrame = CFrame.new(-251.615616, 12641.374, -673.272339, -0.345267981, 0.232442155, 0.909263849, -0.513903916, 0.763859391, -0.390412182, -0.785297871, -0.602071166, -0.14428325)
p352.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p352.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p352.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p352.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p352.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p352.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p352.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b352 = Instance.new("SpecialMesh", p352)
b352.MeshType = Enum.MeshType.Wedge
b352.Name = "Mesh"
b352.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.539807439)
p353 = Instance.new("Part", o1)
p353.BrickColor = BrickColor.new("Black")
p353.Name = "Wedge"
p353.CFrame = CFrame.new(-251.517731, 12641.3398, -673.297852, -0.929760396, 0.025506394, 0.367280573, 0.0727880374, -0.965171516, 0.251288742, 0.360898167, 0.260371983, 0.895521581)
p353.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p353.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p353.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p353.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p353.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p353.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p353.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b353 = Instance.new("SpecialMesh", p353)
b353.MeshType = Enum.MeshType.Wedge
b353.Name = "Mesh"
b353.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p354 = Instance.new("Part", o1)
p354.BrickColor = BrickColor.new("Black")
p354.Name = "Wedge"
p354.CFrame = CFrame.new(-251.819534, 12641.2715, -673.319458, 0.354149967, 0.930316806, -0.0953340754, 0.555223942, -0.12713404, 0.821926594, 0.752531886, -0.344017059, -0.561558604)
p354.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p354.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p354.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p354.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p354.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p354.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p354.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b354 = Instance.new("SpecialMesh", p354)
b354.MeshType = Enum.MeshType.Wedge
b354.Name = "Mesh"
b354.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p355 = Instance.new("Part", o1)
p355.BrickColor = BrickColor.new("Black")
p355.Name = "Wedge"
p355.CFrame = CFrame.new(-251.532364, 12641.3555, -673.26886, 0.345267981, 0.232442155, -0.909263849, 0.513903916, 0.763859391, 0.390412182, 0.785297871, -0.602071166, 0.14428325)
p355.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p355.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p355.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p355.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p355.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p355.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p355.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b355 = Instance.new("SpecialMesh", p355)
b355.MeshType = Enum.MeshType.Wedge
b355.Name = "Mesh"
b355.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.0116391014)
p356 = Instance.new("Part", o1)
p356.BrickColor = BrickColor.new("Black")
p356.Name = "Wedge"
p356.CFrame = CFrame.new(-251.677109, 12641.3398, -673.198486, -0.0934440196, 0.877625763, -0.470150352, 0.824550152, -0.196447805, -0.53058964, -0.558019102, -0.437242985, -0.705289543)
p356.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p356.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p356.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p356.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p356.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p356.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p356.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b356 = Instance.new("SpecialMesh", p356)
b356.MeshType = Enum.MeshType.Wedge
b356.Name = "Mesh"
b356.Scale = Vector3.new(0.0400000028, 0.383756131, 0.725586355)
p357 = Instance.new("Part", o1)
p357.BrickColor = BrickColor.new("Black")
p357.Name = "Wedge"
p357.CFrame = CFrame.new(-251.760345, 12641.3193, -673.318115, 0.107164018, 0.42320019, -0.899676323, 0.525926054, -0.792051554, -0.309929252, -0.843752146, -0.43994996, -0.307451427)
p357.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p357.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p357.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p357.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p357.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p357.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p357.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b357 = Instance.new("SpecialMesh", p357)
b357.MeshType = Enum.MeshType.Wedge
b357.Name = "Mesh"
b357.Scale = Vector3.new(0.0400000028, 0.402456522, 0.376990765)
p358 = Instance.new("Part", o1)
p358.BrickColor = BrickColor.new("Black")
p358.Name = "Wedge"
p358.CFrame = CFrame.new(-251.820435, 12641.2979, -673.337036, -0.345267981, 0.232442155, 0.909263849, -0.513903916, 0.763859391, -0.390412182, -0.785297871, -0.602071166, -0.14428325)
p358.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p358.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p358.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p358.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p358.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p358.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p358.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b358 = Instance.new("SpecialMesh", p358)
b358.MeshType = Enum.MeshType.Wedge
b358.Name = "Mesh"
b358.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.539807439)
p359 = Instance.new("Part", o1)
p359.BrickColor = BrickColor.new("Black")
p359.Name = "Wedge"
p359.CFrame = CFrame.new(-251.822815, 12641.2979, -673.342468, -0.0992380157, 0.42512697, 0.899677157, -0.540628076, -0.782090127, 0.309929758, 0.835388124, -0.455633849, 0.307448626)
p359.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p359.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p359.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p359.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p359.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p359.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p359.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b359 = Instance.new("SpecialMesh", p359)
b359.MeshType = Enum.MeshType.Wedge
b359.Name = "Mesh"
b359.Scale = Vector3.new(0.0400000028, 0.41813603, 0.35952127)
p360 = Instance.new("Part", o1)
p360.BrickColor = BrickColor.new("Black")
p360.Name = "Wedge"
p360.CFrame = CFrame.new(-251.804764, 12641.332, -673.299194, -0.354909033, 0.930344105, 0.0921932459, -0.546142042, -0.126279831, -0.828119814, -0.758794129, -0.344257772, 0.552917838)
p360.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p360.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p360.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p360.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p360.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p360.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p360.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b360 = Instance.new("SpecialMesh", p360)
b360.MeshType = Enum.MeshType.Wedge
b360.Name = "Mesh"
b360.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p361 = Instance.new("Part", o1)
p361.BrickColor = BrickColor.new("Black")
p361.Name = "Wedge"
p361.CFrame = CFrame.new(-251.739624, 12641.293, -673.335815, 0.345267981, 0.232442155, -0.909263849, 0.513903916, 0.763859391, 0.390412182, 0.785297871, -0.602071166, 0.14428325)
p361.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p361.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p361.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p361.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p361.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p361.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p361.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b361 = Instance.new("SpecialMesh", p361)
b361.MeshType = Enum.MeshType.Wedge
b361.Name = "Mesh"
b361.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.0116391014)
p362 = Instance.new("Part", o1)
p362.BrickColor = BrickColor.new("Black")
p362.Name = "Wedge"
p362.CFrame = CFrame.new(-251.817795, 12641.2695, -673.319153, 0.195676968, 0.137669057, 0.97095722, -0.979784906, -0.0145752169, 0.199522585, 0.0416199975, -0.990371108, 0.132034004)
p362.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p362.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p362.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p362.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p362.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p362.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p362.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b362 = Instance.new("SpecialMesh", p362)
b362.MeshType = Enum.MeshType.Wedge
b362.Name = "Mesh"
b362.Scale = Vector3.new(0.0400000028, 0.341323882, 0.433118194)
p363 = Instance.new("Part", o1)
p363.BrickColor = BrickColor.new("Black")
p363.Name = "Wedge"
p363.CFrame = CFrame.new(-251.729126, 12641.291, -673.274353, 0.0934440196, 0.877625763, 0.470150352, -0.824550152, -0.196447805, 0.53058964, 0.558019102, -0.437242985, 0.705289543)
p363.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p363.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p363.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p363.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p363.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p363.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p363.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b363 = Instance.new("SpecialMesh", p363)
b363.MeshType = Enum.MeshType.Wedge
b363.Name = "Mesh"
b363.Scale = Vector3.new(0.0400000028, 0.383756131, 0.332605243)
p364 = Instance.new("Part", o1)
p364.BrickColor = BrickColor.new("Black")
p364.Name = "Wedge"
p364.CFrame = CFrame.new(-251.594009, 12641.3691, -673.214294, 0.333157867, 0.411823213, 0.848178923, 0.597083747, -0.788361013, 0.148249581, 0.729723752, 0.45704335, -0.508541644)
p364.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p364.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p364.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p364.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p364.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p364.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p364.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b364 = Instance.new("SpecialMesh", p364)
b364.MeshType = Enum.MeshType.Wedge
b364.Name = "Mesh"
b364.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p365 = Instance.new("Part", o1)
p365.BrickColor = BrickColor.new("Black")
p365.Name = "Wedge"
p365.CFrame = CFrame.new(-251.767105, 12641.293, -673.261414, -0.0930720046, 0.349361897, -0.932354033, 0.824645102, -0.497695774, -0.268811315, -0.557941079, -0.793879867, -0.241778016)
p365.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p365.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p365.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p365.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p365.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p365.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p365.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b365 = Instance.new("SpecialMesh", p365)
b365.MeshType = Enum.MeshType.Wedge
b365.Name = "Mesh"
b365.Scale = Vector3.new(0.0400000028, 0.196231619, 0.22273533)
p366 = Instance.new("Part", o1)
p366.BrickColor = BrickColor.new("Black")
p366.Name = "Wedge"
p366.CFrame = CFrame.new(-251.707474, 12641.3398, -673.188538, -0.0955799967, 0.877393067, -0.470155299, 0.825028002, -0.194441468, -0.530585825, -0.556949973, -0.438604683, -0.705289066)
p366.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p366.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p366.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p366.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p366.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p366.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p366.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b366 = Instance.new("SpecialMesh", p366)
b366.MeshType = Enum.MeshType.Wedge
b366.Name = "Mesh"
b366.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.761848152)
p367 = Instance.new("Part", o1)
p367.BrickColor = BrickColor.new("Black")
p367.Name = "Wedge"
p367.CFrame = CFrame.new(-251.753983, 12641.292, -673.300232, 0.929828405, -0.354631096, -0.0982646495, -0.122928061, -0.551019251, 0.82538873, -0.34685418, -0.755390406, -0.555947483)
p367.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p367.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p367.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p367.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p367.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p367.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p367.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b367 = Instance.new("SpecialMesh", p367)
b367.MeshType = Enum.MeshType.Wedge
b367.Name = "Mesh"
b367.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p368 = Instance.new("Part", o1)
p368.BrickColor = BrickColor.new("Black")
p368.Name = "Wedge"
p368.CFrame = CFrame.new(-251.723343, 12641.3174, -673.298401, -0.333157867, 0.411823213, -0.848178923, -0.597083747, -0.788361013, -0.148249581, -0.729723752, 0.45704335, 0.508541644)
p368.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p368.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p368.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p368.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p368.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p368.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p368.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b368 = Instance.new("SpecialMesh", p368)
b368.MeshType = Enum.MeshType.Wedge
b368.Name = "Mesh"
b368.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p369 = Instance.new("Part", o1)
p369.BrickColor = BrickColor.new("Black")
p369.Name = "Wedge"
p369.CFrame = CFrame.new(-251.818222, 12641.2773, -673.274353, 0.0930720046, 0.349361897, 0.932354033, -0.824645102, -0.497695774, 0.268811315, 0.557941079, -0.793879867, 0.241778016)
p369.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p369.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p369.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p369.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p369.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p369.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p369.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b369 = Instance.new("SpecialMesh", p369)
b369.MeshType = Enum.MeshType.Wedge
b369.Name = "Mesh"
b369.Scale = Vector3.new(0.0400000028, 0.196231619, 0.352924824)
p370 = Instance.new("Part", o1)
p370.BrickColor = BrickColor.new("Black")
p370.Name = "Wedge"
p370.CFrame = CFrame.new(-251.820435, 12641.2979, -673.337036, -0.354149967, 0.930316806, 0.0953340754, -0.555223942, -0.12713404, -0.821926594, -0.752531886, -0.344017059, 0.561558604)
p370.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p370.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p370.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p370.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p370.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p370.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p370.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b370 = Instance.new("SpecialMesh", p370)
b370.MeshType = Enum.MeshType.Wedge
b370.Name = "Mesh"
b370.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p371 = Instance.new("Part", o1)
p371.BrickColor = BrickColor.new("Black")
p371.Name = "Wedge"
p371.CFrame = CFrame.new(-251.698746, 12641.2881, -673.315369, 0.0252090041, 0.683929086, -0.729112804, 0.959770143, -0.22058633, -0.173732474, -0.279653043, -0.695401013, -0.661975443)
p371.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p371.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p371.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p371.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p371.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p371.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p371.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b371 = Instance.new("SpecialMesh", p371)
b371.MeshType = Enum.MeshType.Wedge
b371.Name = "Mesh"
b371.Scale = Vector3.new(0.0400000028, 0.235460535, 0.498649806)
p372 = Instance.new("Part", o1)
p372.BrickColor = BrickColor.new("Black")
p372.Name = "Wedge"
p372.CFrame = CFrame.new(-251.759552, 12641.3193, -673.31897, 0.0992380157, 0.42512697, -0.899677157, 0.540628076, -0.782090127, -0.309929758, -0.835388124, -0.455633849, -0.307448626)
p372.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p372.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p372.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p372.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p372.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p372.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p372.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b372 = Instance.new("SpecialMesh", p372)
b372.MeshType = Enum.MeshType.Wedge
b372.Name = "Mesh"
b372.Scale = Vector3.new(0.0400000028, 0.41813603, 0.366072923)
p373 = Instance.new("Part", o1)
p373.BrickColor = BrickColor.new("Black")
p373.Name = "Wedge"
p373.CFrame = CFrame.new(-251.8237, 12641.2979, -673.340454, -0.107164018, 0.42320019, 0.899676323, -0.525926054, -0.792051554, 0.309929252, 0.843752146, -0.43994996, 0.307451427)
p373.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p373.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p373.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p373.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p373.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p373.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p373.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b373 = Instance.new("SpecialMesh", p373)
b373.MeshType = Enum.MeshType.Wedge
b373.Name = "Mesh"
b373.Scale = Vector3.new(0.0400000028, 0.402456522, 0.348603457)
p374 = Instance.new("Part", o1)
p374.BrickColor = BrickColor.new("Black")
p374.Name = "Wedge"
p374.CFrame = CFrame.new(-251.615616, 12641.374, -673.272339, -0.354149967, 0.930316806, 0.0953340754, -0.555223942, -0.12713404, -0.821926594, -0.752531886, -0.344017059, 0.561558604)
p374.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p374.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p374.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p374.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p374.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p374.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p374.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b374 = Instance.new("SpecialMesh", p374)
b374.MeshType = Enum.MeshType.Wedge
b374.Name = "Mesh"
b374.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p375 = Instance.new("Part", o1)
p375.BrickColor = BrickColor.new("Black")
p375.Name = "Wedge"
p375.CFrame = CFrame.new(-251.699799, 12641.2891, -673.312988, 0.93096143, -0.35443294, -0.0876820236, -0.131890059, -0.550378978, 0.824431896, -0.340464145, -0.755949974, -0.559127748)
p375.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p375.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p375.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p375.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p375.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p375.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p375.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b375 = Instance.new("SpecialMesh", p375)
b375.MeshType = Enum.MeshType.Wedge
b375.Name = "Mesh"
b375.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p376 = Instance.new("Part", o1)
p376.BrickColor = BrickColor.new("Black")
p376.Name = "Wedge"
p376.CFrame = CFrame.new(-251.802292, 12641.2979, -673.281189, 0.354909033, 0.930344105, -0.0921932459, 0.546142042, -0.126279831, 0.828119814, 0.758794129, -0.344257772, -0.552917838)
p376.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p376.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p376.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p376.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p376.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p376.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p376.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b376 = Instance.new("SpecialMesh", p376)
b376.MeshType = Enum.MeshType.Wedge
b376.Name = "Mesh"
b376.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p377 = Instance.new("Part", o1)
p377.BrickColor = BrickColor.new("Black")
p377.Name = "Wedge"
p377.CFrame = CFrame.new(-251.727585, 12641.29, -673.307861, -0.195676968, 0.137669057, -0.97095722, 0.979784906, -0.0145752169, -0.199522585, -0.0416199975, -0.990371108, -0.132034004)
p377.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p377.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p377.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p377.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p377.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p377.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p377.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b377 = Instance.new("SpecialMesh", p377)
b377.MeshType = Enum.MeshType.Wedge
b377.Name = "Mesh"
b377.Scale = Vector3.new(0.0400000028, 0.341323882, 0.507933795)
p378 = Instance.new("Part", o1)
p378.BrickColor = BrickColor.new("Black")
p378.Name = "Wedge"
p378.CFrame = CFrame.new(-251.599167, 12641.3945, -673.233704, -0.354909033, 0.930344105, 0.0921932459, -0.546142042, -0.126279831, -0.828119814, -0.758794129, -0.344257772, 0.552917838)
p378.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p378.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p378.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p378.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p378.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p378.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p378.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b378 = Instance.new("SpecialMesh", p378)
b378.MeshType = Enum.MeshType.Wedge
b378.Name = "Mesh"
b378.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p379 = Instance.new("Part", o1)
p379.BrickColor = BrickColor.new("Black")
p379.CFrame = CFrame.new(-251.727585, 12641.29, -673.307861, -0.367744893, 0.0280728936, 0.929502964, -0.251307905, 0.959352672, -0.128400892, -0.89532572, -0.280810177, -0.345742136)
p379.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p379.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p379.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p379.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p379.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p379.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p379.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b379 = Instance.new("BlockMesh", p379)
b379.Name = "Mesh"
b379.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p380 = Instance.new("Part", o1)
p380.BrickColor = BrickColor.new("Black")
p380.CFrame = CFrame.new(-251.729523, 12641.3174, -673.327271, 0.306686133, 0.204860911, 0.929502904, 0.78980732, -0.599763334, -0.128407195, 0.53117615, 0.773508966, -0.345739692)
p380.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p380.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p380.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p380.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p380.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p380.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p380.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b380 = Instance.new("BlockMesh", p380)
b380.Name = "Mesh"
b380.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p381 = Instance.new("Part", o1)
p381.BrickColor = BrickColor.new("Black")
p381.Name = "Wedge"
p381.CFrame = CFrame.new(-249.743668, 12642.3926, -672.103394, -0.117748015, 0.495441109, 0.860623956, -0.99260211, -0.0845576152, -0.0871270299, 0.0296060033, -0.864516139, 0.501732349)
p381.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p381.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p381.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p381.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p381.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p381.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p381.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b381 = Instance.new("SpecialMesh", p381)
b381.MeshType = Enum.MeshType.Wedge
b381.Name = "Mesh"
b381.Scale = Vector3.new(0.0400000028, 0.030774679, 0.0260673389)
p382 = Instance.new("Part", o1)
p382.BrickColor = BrickColor.new("Black")
p382.Name = "Wedge"
p382.CFrame = CFrame.new(-249.71785, 12642.3564, -672.070313, -0.404984146, 0.909528971, -0.0935142934, 0.480217189, 0.298623174, 0.824751854, 0.778061271, 0.289104253, -0.557709098)
p382.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p382.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p382.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p382.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p382.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p382.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p382.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b382 = Instance.new("SpecialMesh", p382)
b382.MeshType = Enum.MeshType.Wedge
b382.Name = "Mesh"
b382.Scale = Vector3.new(0.0400000028, 0.191796869, 0.178320318)
p383 = Instance.new("Part", o1)
p383.BrickColor = BrickColor.new("Black")
p383.Name = "Wedge"
p383.CFrame = CFrame.new(-249.739594, 12642.335, -672.064453, 0.271793038, 0.507668972, 0.817557752, -0.367288023, -0.73051101, 0.575719714, 0.889510095, -0.456755757, -0.0120870629)
p383.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p383.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p383.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p383.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p383.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p383.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p383.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b383 = Instance.new("SpecialMesh", p383)
b383.MeshType = Enum.MeshType.Wedge
b383.Name = "Mesh"
b383.Scale = Vector3.new(0.0400000028, 0.0288680196, 0.0281642396)
p384 = Instance.new("Part", o1)
p384.BrickColor = BrickColor.new("Black")
p384.CFrame = CFrame.new(-251.814026, 12641.3115, -673.319458, -0.909107506, -0.215052903, 0.356757551, 0.390614241, -0.73763907, 0.550735176, 0.144721091, 0.640031993, 0.754595876)
p384.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p384.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p384.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p384.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p384.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p384.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p384.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b384 = Instance.new("BlockMesh", p384)
b384.Name = "Mesh"
b384.Scale = Vector3.new(0.55129993, 0.0400000028, 0.28412503)
p385 = Instance.new("Part", o1)
p385.BrickColor = BrickColor.new("Black")
p385.CFrame = CFrame.new(-251.81044, 12641.2871, -673.300232, 0.848039985, -0.391851962, 0.356763661, 0.147882998, 0.821471155, 0.550741136, -0.508880019, -0.414291143, 0.754588604)
p385.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p385.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p385.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p385.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p385.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p385.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p385.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b385 = Instance.new("BlockMesh", p385)
b385.Name = "Mesh"
b385.Scale = Vector3.new(0.55129993, 0.0400000028, 0.280125052)
p386 = Instance.new("Part", o1)
p386.BrickColor = BrickColor.new("Black")
p386.Name = "Wedge"
p386.CFrame = CFrame.new(-249.683609, 12642.3857, -672.069641, 0.403802156, 0.910195053, 0.09213572, -0.483548164, 0.297841132, -0.823086798, -0.776611269, 0.287812173, 0.560391963)
p386.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p386.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p386.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p386.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p386.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p386.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p386.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b386 = Instance.new("SpecialMesh", p386)
b386.MeshType = Enum.MeshType.Wedge
b386.Name = "Mesh"
b386.Scale = Vector3.new(0.0400000028, 0.145703316, 0.0699214488)
p387 = Instance.new("Part", o1)
p387.BrickColor = BrickColor.new("Black")
p387.Name = "Wedge"
p387.CFrame = CFrame.new(-249.705322, 12642.3613, -672.060242, -0.271793038, -0.507668972, 0.817557752, 0.367288023, 0.73051101, 0.575719714, -0.889510095, 0.456755757, -0.0120870629)
p387.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p387.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p387.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p387.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p387.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p387.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p387.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b387 = Instance.new("SpecialMesh", p387)
b387.MeshType = Enum.MeshType.Wedge
b387.Name = "Mesh"
b387.Scale = Vector3.new(0.0400000028, 0.028868014, 0.411061317)
p388 = Instance.new("Part", o1)
p388.BrickColor = BrickColor.new("Black")
p388.Name = "Wedge"
p388.CFrame = CFrame.new(-249.684525, 12642.3789, -672.06488, -0.403802156, 0.910195053, -0.09213572, 0.483548164, 0.297841132, 0.823086798, 0.776611269, 0.287812173, -0.560391963)
p388.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p388.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p388.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p388.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p388.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p388.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p388.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b388 = Instance.new("SpecialMesh", p388)
b388.MeshType = Enum.MeshType.Wedge
b388.Name = "Mesh"
b388.Scale = Vector3.new(0.0400000028, 0.145703316, 0.0435557738)
p389 = Instance.new("Part", o1)
p389.BrickColor = BrickColor.new("Black")
p389.Name = "Wedge"
p389.CFrame = CFrame.new(-249.667007, 12642.3877, -672.063049, 0.397090048, 0.484414905, -0.779526591, -0.470063061, -0.622154951, -0.626070321, -0.788264096, 0.615032971, -0.0193459913)
p389.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p389.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p389.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p389.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p389.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p389.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p389.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b389 = Instance.new("SpecialMesh", p389)
b389.MeshType = Enum.MeshType.Wedge
b389.Name = "Mesh"
b389.Scale = Vector3.new(0.0400000028, 0.0237748343, 0.0114078261)
p390 = Instance.new("Part", o1)
p390.BrickColor = BrickColor.new("Black")
p390.Name = "Wedge"
p390.CFrame = CFrame.new(-249.684036, 12642.3789, -672.064148, -0.397090048, 0.484414905, 0.779526591, 0.470063061, -0.622154951, 0.626070321, 0.788264096, 0.615032971, 0.0193459913)
p390.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p390.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p390.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p390.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p390.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p390.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p390.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b390 = Instance.new("SpecialMesh", p390)
b390.MeshType = Enum.MeshType.Wedge
b390.Name = "Mesh"
b390.Scale = Vector3.new(0.0400000028, 0.0237748343, 0.150204256)
p391 = Instance.new("Part", o1)
p391.BrickColor = BrickColor.new("Black")
p391.Name = "Wedge"
p391.CFrame = CFrame.new(-249.705246, 12642.3926, -672.082031, 0.117748015, 0.495441109, -0.860623956, 0.99260211, -0.0845576152, 0.0871270299, -0.0296060033, -0.864516139, -0.501732349)
p391.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p391.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p391.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p391.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p391.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p391.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p391.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b391 = Instance.new("SpecialMesh", p391)
b391.MeshType = Enum.MeshType.Wedge
b391.Name = "Mesh"
b391.Scale = Vector3.new(0.0400000028, 0.030774679, 0.386090755)
p392 = Instance.new("Part", o1)
p392.BrickColor = BrickColor.new("Black")
p392.Name = "Wedge"
p392.CFrame = CFrame.new(-249.719269, 12642.3887, -672.090759, 0.404984146, 0.48991394, 0.771992385, -0.480217189, 0.832471371, -0.276374489, -0.778061271, -0.258796722, 0.572402775)
p392.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p392.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p392.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p392.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p392.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p392.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p392.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b392 = Instance.new("SpecialMesh", p392)
b392.MeshType = Enum.MeshType.Wedge
b392.Name = "Mesh"
b392.Scale = Vector3.new(0.0400000028, 0.0548950583, 0.244277745)
p393 = Instance.new("Part", o1)
p393.BrickColor = BrickColor.new("Black")
p393.Name = "Wedge"
p393.CFrame = CFrame.new(-251.619354, 12641.3701, -673.277161, -0.0992380157, 0.42512697, 0.899677157, -0.540628076, -0.782090127, 0.309929758, 0.835388124, -0.455633849, 0.307448626)
p393.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p393.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p393.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p393.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p393.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p393.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p393.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b393 = Instance.new("SpecialMesh", p393)
b393.MeshType = Enum.MeshType.Wedge
b393.Name = "Mesh"
b393.Scale = Vector3.new(0.0400000028, 0.41813603, 0.35952127)
p394 = Instance.new("Part", o1)
p394.BrickColor = BrickColor.new("Black")
p394.Name = "Wedge"
p394.CFrame = CFrame.new(-251.609787, 12641.3379, -673.253418, 0.195676968, 0.137669057, 0.97095722, -0.979784906, -0.0145752169, 0.199522585, 0.0416199975, -0.990371108, 0.132034004)
p394.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p394.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p394.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p394.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p394.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p394.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p394.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b394 = Instance.new("SpecialMesh", p394)
b394.MeshType = Enum.MeshType.Wedge
b394.Name = "Mesh"
b394.Scale = Vector3.new(0.0400000028, 0.341323882, 0.433118194)
p395 = Instance.new("Part", o1)
p395.BrickColor = BrickColor.new("Black")
p395.Name = "Wedge"
p395.CFrame = CFrame.new(-251.619492, 12641.335, -673.223511, -0.0933649689, -0.14665404, -0.984771848, 0.824371696, -0.566015601, 0.0061344509, -0.558295846, -0.811245322, 0.173743486)
p395.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p395.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p395.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p395.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p395.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p395.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p395.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b395 = Instance.new("SpecialMesh", p395)
b395.MeshType = Enum.MeshType.Wedge
b395.Name = "Mesh"
b395.Scale = Vector3.new(0.0400000028, 0.157024801, 0.403840691)
p396 = Instance.new("Part", o1)
p396.BrickColor = BrickColor.new("Black")
p396.CFrame = CFrame.new(-251.686066, 12641.375, -673.221069, 0.0935280025, 0.929498851, 0.356769443, -0.824744999, -0.128401026, 0.550734937, 0.557717025, -0.345752925, 0.754590452)
p396.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p396.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p396.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p396.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p396.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p396.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p396.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b396 = Instance.new("BlockMesh", p396)
b396.Name = "Mesh"
b396.Scale = Vector3.new(0.399999976, 0.292000681, 0.768000007)
p397 = Instance.new("Part", o1)
p397.BrickColor = BrickColor.new("Black")
p397.Name = "Wedge"
p397.CFrame = CFrame.new(-249.668961, 12642.3877, -672.059937, 0.271793038, -0.507668972, -0.817557752, -0.367288023, 0.73051101, -0.575719714, 0.889510095, 0.456755757, 0.0120870629)
p397.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p397.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p397.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p397.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p397.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p397.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p397.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b397 = Instance.new("SpecialMesh", p397)
b397.MeshType = Enum.MeshType.Wedge
b397.Name = "Mesh"
b397.Scale = Vector3.new(0.0400000028, 0.028868014, 0.0281642042)
p398 = Instance.new("Part", o1)
p398.BrickColor = BrickColor.new("Black")
p398.Name = "Wedge"
p398.CFrame = CFrame.new(-251.61235, 12641.3486, -673.209717, 0.0930720046, 0.349361897, 0.932354033, -0.824645102, -0.497695774, 0.268811315, 0.557941079, -0.793879867, 0.241778016)
p398.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p398.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p398.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p398.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p398.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p398.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p398.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b398 = Instance.new("SpecialMesh", p398)
b398.MeshType = Enum.MeshType.Wedge
b398.Name = "Mesh"
b398.Scale = Vector3.new(0.0400000028, 0.196231619, 0.352924824)
p399 = Instance.new("Part", o1)
p399.BrickColor = BrickColor.new("Black")
p399.Name = "Wedge"
p399.CFrame = CFrame.new(-249.705246, 12642.3926, -672.082031, 0.117748015, -0.495441109, 0.860623956, 0.99260211, 0.0845576152, -0.0871270299, -0.0296060033, 0.864516139, 0.501732349)
p399.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p399.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p399.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p399.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p399.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p399.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p399.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b399 = Instance.new("SpecialMesh", p399)
b399.MeshType = Enum.MeshType.Wedge
b399.Name = "Mesh"
b399.Scale = Vector3.new(0.0400000028, 0.0307746716, 0.386090755)
p400 = Instance.new("Part", o1)
p400.BrickColor = BrickColor.new("Black")
p400.Name = "Wedge"
p400.CFrame = CFrame.new(-249.674316, 12642.3896, -672.063232, -0.117748015, -0.495441109, -0.860623956, -0.99260211, 0.0845576152, 0.0871270299, 0.0296060033, 0.864516139, -0.501732349)
p400.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p400.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p400.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p400.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p400.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p400.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p400.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b400 = Instance.new("SpecialMesh", p400)
b400.MeshType = Enum.MeshType.Wedge
b400.Name = "Mesh"
b400.Scale = Vector3.new(0.0400000028, 0.0307746716, 0.0260673389)
p401 = Instance.new("Part", o1)
p401.BrickColor = BrickColor.new("Black")
p401.Name = "Wedge"
p401.CFrame = CFrame.new(-249.698303, 12642.373, -672.070984, 0.404984146, 0.687803924, -0.602423072, -0.480217189, -0.400672972, -0.780290127, -0.778061271, 0.605299056, 0.16802907)
p401.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p401.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p401.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p401.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p401.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p401.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p401.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b401 = Instance.new("SpecialMesh", p401)
b401.MeshType = Enum.MeshType.Wedge
b401.Name = "Mesh"
b401.Scale = Vector3.new(0.0400000028, 0.0387756787, 0.0173830837)
p402 = Instance.new("Part", o1)
p402.BrickColor = BrickColor.new("Black")
p402.Name = "Wedge"
p402.CFrame = CFrame.new(-249.697891, 12642.3779, -672.074219, -0.404984146, 0.48991394, -0.771992385, 0.480217189, 0.832471371, 0.276374489, 0.778061271, -0.258796722, -0.572402775)
p402.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p402.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p402.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p402.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p402.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p402.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p402.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b402 = Instance.new("SpecialMesh", p402)
b402.MeshType = Enum.MeshType.Wedge
b402.Name = "Mesh"
b402.Scale = Vector3.new(0.0400000028, 0.0548950583, 0.0433082096)
p403 = Instance.new("Part", o1)
p403.BrickColor = BrickColor.new("Black")
p403.Name = "Wedge"
p403.CFrame = CFrame.new(-249.742325, 12642.3799, -672.094177, 0.376937151, 0.347260743, -0.858678281, -0.412524134, -0.767096579, -0.491311222, -0.829302311, 0.539418936, -0.145893767)
p403.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p403.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p403.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p403.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p403.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p403.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p403.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b403 = Instance.new("SpecialMesh", p403)
b403.MeshType = Enum.MeshType.Wedge
b403.Name = "Mesh"
b403.Scale = Vector3.new(0.0400000028, 0.143894181, 0.0227173716)
p404 = Instance.new("Part", o1)
p404.BrickColor = BrickColor.new("Black")
p404.Name = "Wedge"
p404.CFrame = CFrame.new(-249.717224, 12642.3506, -672.068604, -0.404984146, 0.687803924, 0.602423072, 0.480217189, -0.400672972, 0.780290127, 0.778061271, 0.605299056, -0.16802907)
p404.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p404.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p404.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p404.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p404.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p404.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p404.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b404 = Instance.new("SpecialMesh", p404)
b404.MeshType = Enum.MeshType.Wedge
b404.Name = "Mesh"
b404.Scale = Vector3.new(0.0400000028, 0.0387756787, 0.244502708)
p405 = Instance.new("Part", o1)
p405.BrickColor = BrickColor.new("Black")
p405.Name = "Wedge"
p405.CFrame = CFrame.new(-249.696671, 12642.3594, -672.061768, -0.271793038, 0.507668972, -0.817557752, 0.367288023, -0.73051101, -0.575719714, -0.889510095, -0.456755757, 0.0120870629)
p405.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p405.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p405.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p405.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p405.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p405.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p405.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b405 = Instance.new("SpecialMesh", p405)
b405.MeshType = Enum.MeshType.Wedge
b405.Name = "Mesh"
b405.Scale = Vector3.new(0.0400000028, 0.0288680196, 0.411061257)
p406 = Instance.new("Part", o1)
p406.BrickColor = BrickColor.new("Black")
p406.Name = "Wedge"
p406.CFrame = CFrame.new(-251.539978, 12641.3398, -673.291443, -0.0252090041, 0.683929086, 0.729112804, -0.959770143, -0.22058633, 0.173732474, 0.279653043, -0.695401013, 0.661975443)
p406.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p406.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p406.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p406.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p406.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p406.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p406.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b406 = Instance.new("SpecialMesh", p406)
b406.MeshType = Enum.MeshType.Wedge
b406.Name = "Mesh"
b406.Scale = Vector3.new(0.0400000028, 0.235460535, 0.113313235)
p407 = Instance.new("Part", o1)
p407.BrickColor = BrickColor.new("Black")
p407.Name = "Wedge"
p407.CFrame = CFrame.new(-251.61969, 12641.3701, -673.275696, -0.107164018, 0.42320019, 0.899676323, -0.525926054, -0.792051554, 0.309929252, 0.843752146, -0.43994996, 0.307451427)
p407.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p407.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p407.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p407.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p407.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p407.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p407.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b407 = Instance.new("SpecialMesh", p407)
b407.MeshType = Enum.MeshType.Wedge
b407.Name = "Mesh"
b407.Scale = Vector3.new(0.0400000028, 0.402456522, 0.348603457)
p408 = Instance.new("Part", o1)
p408.BrickColor = BrickColor.new("Black")
p408.Name = "Wedge"
p408.CFrame = CFrame.new(-251.593887, 12641.3691, -673.215393, 0.354909033, 0.930344105, -0.0921932459, 0.546142042, -0.126279831, 0.828119814, 0.758794129, -0.344257772, -0.552917838)
p408.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p408.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p408.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p408.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p408.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p408.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p408.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b408 = Instance.new("SpecialMesh", p408)
b408.MeshType = Enum.MeshType.Wedge
b408.Name = "Mesh"
b408.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p409 = Instance.new("Part", o1)
p409.BrickColor = BrickColor.new("Black")
p409.Name = "Wedge"
p409.CFrame = CFrame.new(-249.719162, 12642.3848, -672.087585, 0.404984146, 0.909528971, 0.0935142934, -0.480217189, 0.298623174, -0.824751854, -0.778061271, 0.289104253, 0.557709098)
p409.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p409.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p409.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p409.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p409.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p409.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p409.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b409 = Instance.new("SpecialMesh", p409)
b409.MeshType = Enum.MeshType.Wedge
b409.Name = "Mesh"
b409.Scale = Vector3.new(0.0400000028, 0.191796869, 0.151367188)
p410 = Instance.new("Part", o1)
p410.BrickColor = BrickColor.new("Black")
p410.Name = "Wedge"
p410.CFrame = CFrame.new(-251.610352, 12641.3438, -673.252991, 0.354149967, 0.930316806, -0.0953340754, 0.555223942, -0.12713404, 0.821926594, 0.752531886, -0.344017059, -0.561558604)
p410.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p410.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p410.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p410.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p410.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p410.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p410.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b410 = Instance.new("SpecialMesh", p410)
b410.MeshType = Enum.MeshType.Wedge
b410.Name = "Mesh"
b410.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p411 = Instance.new("Part", o1)
p411.BrickColor = BrickColor.new("Black")
p411.Name = "Wedge"
p411.CFrame = CFrame.new(-250.152802, 12641.8154, -672.790161, 0.619996428, -0.483088225, 0.618247807, -0.769691527, -0.527383447, 0.359780133, 0.152248099, -0.698922455, -0.698804736)
p411.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p411.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p411.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p411.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p411.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p411.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p411.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b411 = Instance.new("SpecialMesh", p411)
b411.MeshType = Enum.MeshType.Wedge
b411.Name = "Mesh"
b411.Scale = Vector3.new(0.0400000028, 0.337109864, 0.279759526)
p412 = Instance.new("Part", o1)
p412.BrickColor = BrickColor.new("Black")
p412.Name = "Wedge"
p412.CFrame = CFrame.new(-249.817474, 12642.1768, -672.313782, -0.318767965, 0.685723424, -0.654347301, -0.729478955, -0.618280113, -0.292558193, -0.605183959, 0.38407436, 0.69730866)
p412.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p412.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p412.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p412.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p412.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p412.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p412.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b412 = Instance.new("SpecialMesh", p412)
b412.MeshType = Enum.MeshType.Wedge
b412.Name = "Mesh"
b412.Scale = Vector3.new(0.0400000028, 0.0237650424, 0.279787034)
p413 = Instance.new("Part", o1)
p413.BrickColor = BrickColor.new("Black")
p413.Name = "Wedge"
p413.CFrame = CFrame.new(-250.004318, 12642.2002, -672.343384, -0.0923410058, -0.884768784, 0.456790268, 0.825130105, 0.18878603, 0.532466114, -0.557345033, 0.426079839, 0.712616682)
p413.Size = Vector3.new(0.200000003, 0.200000003, 0.401899993)
p413.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p413.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p413.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p413.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p413.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p413.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b413 = Instance.new("SpecialMesh", p413)
b413.MeshType = Enum.MeshType.Wedge
b413.Name = "Mesh"
b413.Scale = Vector3.new(0.0400000028, 0.88964057, 0.712589264)
p414 = Instance.new("Part", o1)
p414.BrickColor = BrickColor.new("Black")
p414.Name = "Wedge"
p414.CFrame = CFrame.new(-250.141525, 12641.8652, -672.789185, 0.479874939, 0.868457198, 0.124507912, 0.508301914, -0.159540161, -0.846271932, -0.715086937, 0.469392329, -0.517997742)
p414.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p414.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p414.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p414.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p414.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p414.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p414.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b414 = Instance.new("SpecialMesh", p414)
b414.MeshType = Enum.MeshType.Wedge
b414.Name = "Mesh"
b414.Scale = Vector3.new(0.0400000028, 0.210197926, 0.186276689)
p415 = Instance.new("Part", o1)
p415.BrickColor = BrickColor.new("Black")
p415.Name = "Wedge"
p415.CFrame = CFrame.new(-249.863663, 12642.2129, -672.355469, -0.480069816, -0.872786224, 0.0881881639, -0.508511841, 0.194959983, -0.838693261, 0.714806736, -0.447476029, -0.537416577)
p415.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p415.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p415.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p415.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p415.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p415.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p415.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b415 = Instance.new("SpecialMesh", p415)
b415.MeshType = Enum.MeshType.Wedge
b415.Name = "Mesh"
b415.Scale = Vector3.new(0.0400000028, 0.217812911, 0.267752022)
p416 = Instance.new("Part", o1)
p416.BrickColor = BrickColor.new("Black")
p416.Name = "Wedge"
p416.CFrame = CFrame.new(-249.865356, 12642.2129, -672.352417, -0.0733570307, 0.571457982, -0.817346156, 0.819803298, -0.432152063, -0.375722259, -0.567927182, -0.697624922, -0.436781764)
p416.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p416.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p416.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p416.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p416.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p416.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p416.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b416 = Instance.new("SpecialMesh", p416)
b416.MeshType = Enum.MeshType.Wedge
b416.Name = "Mesh"
b416.Scale = Vector3.new(0.0400000028, 0.151584655, 0.309654504)
p417 = Instance.new("Part", o1)
p417.BrickColor = BrickColor.new("Black")
p417.Name = "Wedge"
p417.CFrame = CFrame.new(-249.867981, 12642.2939, -672.101196, 0.0948360115, -0.884608209, -0.456590146, -0.824318111, 0.187366158, -0.534222424, 0.558127046, 0.427038997, -0.711429536)
p417.Size = Vector3.new(0.200000003, 0.200000003, 0.222886384)
p417.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p417.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p417.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p417.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p417.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p417.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b417 = Instance.new("SpecialMesh", p417)
b417.MeshType = Enum.MeshType.Wedge
b417.Name = "Mesh"
b417.Scale = Vector3.new(0.0400000028, 0.88964057, 1)
p418 = Instance.new("Part", o1)
p418.BrickColor = BrickColor.new("Black")
p418.Name = "Wedge"
p418.CFrame = CFrame.new(-249.80719, 12642.2227, -672.312561, -0.461556196, -0.73228991, -0.500717044, -0.512641251, 0.680822909, -0.523143649, 0.723992348, 0.0152280172, -0.689639986)
p418.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p418.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p418.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p418.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p418.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p418.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p418.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b418 = Instance.new("SpecialMesh", p418)
b418.MeshType = Enum.MeshType.Wedge
b418.Name = "Mesh"
b418.Scale = Vector3.new(0.0400000028, 0.286607355, 0.264533818)
p419 = Instance.new("Part", o1)
p419.BrickColor = BrickColor.new("Black")
p419.Name = "Wedge"
p419.CFrame = CFrame.new(-249.855606, 12642.1426, -672.358765, -0.620257676, -0.784262717, -0.0145755634, 0.769405663, -0.611913204, 0.183240831, -0.15262793, 0.102442026, 0.982960045)
p419.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p419.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p419.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p419.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p419.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p419.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p419.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b419 = Instance.new("SpecialMesh", p419)
b419.MeshType = Enum.MeshType.Wedge
b419.Name = "Mesh"
b419.Scale = Vector3.new(0.0400000028, 0.217275187, 0.176253408)
p420 = Instance.new("Part", o1)
p420.BrickColor = BrickColor.new("Black")
p420.Name = "Wedge"
p420.CFrame = CFrame.new(-250.165695, 12641.8809, -672.789124, -0.390189856, 0.00980316568, -0.920682311, 0.476635814, 0.857683003, -0.192868367, 0.787762702, -0.514085472, -0.339331746)
p420.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p420.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p420.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p420.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p420.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p420.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p420.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b420 = Instance.new("SpecialMesh", p420)
b420.MeshType = Enum.MeshType.Wedge
b420.Name = "Mesh"
b420.Scale = Vector3.new(0.0400000028, 0.0397685729, 0.00466257427)
p421 = Instance.new("Part", o1)
p421.BrickColor = BrickColor.new("Black")
p421.Name = "Wedge"
p421.CFrame = CFrame.new(-250.16098, 12641.8037, -672.843872, -0.290551037, 0.955376625, 0.0532515347, -0.568266034, -0.217062026, 0.793698788, 0.769840121, 0.200348988, 0.605975568)
p421.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p421.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p421.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p421.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p421.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p421.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p421.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b421 = Instance.new("SpecialMesh", p421)
b421.MeshType = Enum.MeshType.Wedge
b421.Name = "Mesh"
b421.Scale = Vector3.new(0.0400000028, 0.11632067, 0.141870856)
p422 = Instance.new("Part", o1)
p422.BrickColor = BrickColor.new("Black")
p422.Name = "Wedge"
p422.CFrame = CFrame.new(-250.187561, 12641.8584, -672.807861, 0.0915459991, -0.987967849, -0.124655366, 0.529811978, -0.0576691367, 0.846152246, -0.843159974, -0.143505752, 0.51815778)
p422.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p422.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p422.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p422.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p422.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p422.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p422.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b422 = Instance.new("SpecialMesh", p422)
b422.MeshType = Enum.MeshType.Wedge
b422.Name = "Mesh"
b422.Scale = Vector3.new(0.0400000028, 0.345050752, 0.0879638642)
p423 = Instance.new("Part", o1)
p423.BrickColor = BrickColor.new("Black")
p423.Name = "Wedge"
p423.CFrame = CFrame.new(-250.163712, 12641.8311, -672.820557, -0.0914679766, 0.643706024, -0.759786904, -0.529237866, 0.614885867, 0.584656, 0.843528807, 0.455585361, 0.284431219)
p423.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p423.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p423.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p423.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p423.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p423.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p423.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b423 = Instance.new("SpecialMesh", p423)
b423.MeshType = Enum.MeshType.Wedge
b423.Name = "Mesh"
b423.Scale = Vector3.new(0.0400000028, 0.194568127, 0.100919805)
p424 = Instance.new("Part", o1)
p424.BrickColor = BrickColor.new("Black")
p424.Name = "Wedge"
p424.CFrame = CFrame.new(-250.187561, 12641.8584, -672.807861, 0.0914679766, 0.643706024, 0.759786904, 0.529237866, 0.614885867, -0.584656, -0.843528807, 0.455585361, -0.284431219)
p424.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p424.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p424.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p424.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p424.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p424.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p424.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b424 = Instance.new("SpecialMesh", p424)
b424.MeshType = Enum.MeshType.Wedge
b424.Name = "Mesh"
b424.Scale = Vector3.new(0.0400000028, 0.194568127, 0.298499227)
p425 = Instance.new("Part", o1)
p425.BrickColor = BrickColor.new("Black")
p425.Name = "Wedge"
p425.CFrame = CFrame.new(-250.135239, 12641.8311, -672.811279, -0.479874939, 0.868457198, -0.124507912, -0.508301914, -0.159540161, 0.846271932, 0.715086937, 0.469392329, 0.517997742)
p425.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p425.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p425.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p425.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p425.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p425.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p425.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b425 = Instance.new("SpecialMesh", p425)
b425.MeshType = Enum.MeshType.Wedge
b425.Name = "Mesh"
b425.Scale = Vector3.new(0.0400000028, 0.210197926, 0.237122267)
p426 = Instance.new("Part", o1)
p426.BrickColor = BrickColor.new("Black")
p426.Name = "Wedge"
p426.CFrame = CFrame.new(-250.155258, 12641.8076, -672.831421, 0.0905919895, -0.988153875, -0.123875156, 0.529456913, -0.0575630032, 0.846381664, -0.843485892, -0.142261967, 0.517970145)
p426.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p426.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p426.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p426.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p426.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p426.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p426.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b426 = Instance.new("SpecialMesh", p426)
b426.MeshType = Enum.MeshType.Wedge
b426.Name = "Mesh"
b426.Scale = Vector3.new(0.0400000028, 0.07496766, 0.0312384591)
p427 = Instance.new("Part", o1)
p427.BrickColor = BrickColor.new("Black")
p427.Name = "Wedge"
p427.CFrame = CFrame.new(-250.186111, 12641.8135, -672.758179, 0.281259984, -0.947291076, -0.153403252, -0.943963885, -0.244341686, -0.221876726, 0.17269899, 0.207212165, -0.962932169)
p427.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p427.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p427.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p427.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p427.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p427.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p427.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b427 = Instance.new("SpecialMesh", p427)
b427.MeshType = Enum.MeshType.Wedge
b427.Name = "Mesh"
b427.Scale = Vector3.new(0.0400000028, 0.327022582, 0.191422194)
p428 = Instance.new("Part", o1)
p428.BrickColor = BrickColor.new("Black")
p428.Name = "Wedge"
p428.CFrame = CFrame.new(-250.154449, 12641.8076, -672.829834, -0.26591295, -0.963710666, -0.0234962367, 0.947789788, -0.265815258, 0.17617248, -0.176024958, 0.024577057, 0.984078825)
p428.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p428.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p428.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p428.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p428.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p428.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p428.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b428 = Instance.new("SpecialMesh", p428)
b428.MeshType = Enum.MeshType.Wedge
b428.Name = "Mesh"
b428.Scale = Vector3.new(0.0400000028, 0.0761746317, 0.0291023981)
p429 = Instance.new("Part", o1)
p429.BrickColor = BrickColor.new("Black")
p429.Name = "Wedge"
p429.CFrame = CFrame.new(-249.886459, 12642.1563, -672.296387, 0.0769230053, -0.9952209, 0.0601524636, -0.832368135, -0.0973132923, -0.54561305, 0.54885906, -0.0080987988, -0.83587575)
p429.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p429.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p429.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p429.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p429.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p429.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p429.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b429 = Instance.new("SpecialMesh", p429)
b429.MeshType = Enum.MeshType.Wedge
b429.Name = "Mesh"
b429.Scale = Vector3.new(0.0400000028, 0.0786637142, 0.222051308)
p430 = Instance.new("Part", o1)
p430.BrickColor = BrickColor.new("Black")
p430.Name = "Wedge"
p430.CFrame = CFrame.new(-250.158676, 12641.8789, -672.783997, 0.481783122, 0.68178314, 0.550506055, 0.52297914, -0.727785528, 0.443645298, 0.703120172, 0.0741623789, -0.707193136)
p430.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p430.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p430.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p430.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p430.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p430.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p430.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b430 = Instance.new("SpecialMesh", p430)
b430.MeshType = Enum.MeshType.Wedge
b430.Name = "Mesh"
b430.Scale = Vector3.new(0.0400000028, 0.0284641236, 0.028325649)
p431 = Instance.new("Part", o1)
p431.BrickColor = BrickColor.new("Black")
p431.Name = "Wedge"
p431.CFrame = CFrame.new(-249.840012, 12642.1934, -672.355286, 0.461556196, -0.73228991, 0.500717044, 0.512641251, 0.680822909, 0.523143649, -0.723992348, 0.0152280172, 0.689639986)
p431.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p431.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p431.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p431.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p431.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p431.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p431.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b431 = Instance.new("SpecialMesh", p431)
b431.MeshType = Enum.MeshType.Wedge
b431.Name = "Mesh"
b431.Scale = Vector3.new(0.0400000028, 0.286607355, 0.340414524)
p432 = Instance.new("Part", o1)
p432.BrickColor = BrickColor.new("Black")
p432.Name = "Wedge"
p432.CFrame = CFrame.new(-250.193344, 12641.873, -672.801392, 0.0733549818, 0.872772396, 0.482584268, -0.819805801, -0.222784147, 0.527527928, 0.567923903, -0.434322178, 0.69916153)
p432.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p432.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p432.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p432.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p432.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p432.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p432.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b432 = Instance.new("SpecialMesh", p432)
b432.MeshType = Enum.MeshType.Wedge
b432.Name = "Mesh"
b432.Scale = Vector3.new(0.0400000028, 0.16879566, 0.316714793)
p433 = Instance.new("Part", o1)
p433.BrickColor = BrickColor.new("Black")
p433.Name = "Wedge"
p433.CFrame = CFrame.new(-249.86232, 12642.1514, -672.313354, -0.0940329581, 0.569760859, -0.816413105, 0.824863553, -0.414587706, -0.384339988, -0.557456732, -0.709569991, -0.43099007)
p433.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p433.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p433.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p433.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p433.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p433.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p433.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b433 = Instance.new("SpecialMesh", p433)
b433.MeshType = Enum.MeshType.Wedge
b433.Name = "Mesh"
b433.Scale = Vector3.new(0.0400000028, 0.151551947, 0.309670538)
p434 = Instance.new("Part", o1)
p434.BrickColor = BrickColor.new("Black")
p434.Name = "Wedge"
p434.CFrame = CFrame.new(-249.789886, 12642.252, -672.177612, -0.101787016, 0.883833945, -0.456592888, 0.825760126, -0.180886328, -0.534228921, -0.554761052, -0.43141371, -0.71142292)
p434.Size = Vector3.new(0.200000003, 0.200000003, 0.305526108)
p434.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p434.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p434.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p434.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p434.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p434.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b434 = Instance.new("SpecialMesh", p434)
b434.MeshType = Enum.MeshType.Wedge
b434.Name = "Mesh"
b434.Scale = Vector3.new(0.0400000028, 0.195770666, 1)
p435 = Instance.new("Part", o1)
p435.BrickColor = BrickColor.new("Black")
p435.Name = "Wedge"
p435.CFrame = CFrame.new(-250.202576, 12641.8154, -672.752319, -0.0940329581, -0.562328994, 0.821549654, 0.824863553, 0.418058217, 0.380562007, -0.557456732, 0.713451743, 0.424533397)
p435.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p435.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p435.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p435.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p435.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p435.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p435.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b435 = Instance.new("SpecialMesh", p435)
b435.MeshType = Enum.MeshType.Wedge
b435.Name = "Mesh"
b435.Scale = Vector3.new(0.0400000028, 0.150872201, 0.301289678)
p436 = Instance.new("Part", o1)
p436.BrickColor = BrickColor.new("Black")
p436.Name = "Wedge"
p436.CFrame = CFrame.new(-249.857468, 12642.1709, -672.284363, -0.0982630029, 0.99334085, 0.0601533949, 0.830087006, 0.115154229, -0.545614421, -0.548907995, -0.0036811633, -0.835874677)
p436.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p436.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p436.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p436.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p436.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p436.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p436.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b436 = Instance.new("SpecialMesh", p436)
b436.MeshType = Enum.MeshType.Wedge
b436.Name = "Mesh"
b436.Scale = Vector3.new(0.0400000028, 0.168117151, 0.100677051)
p437 = Instance.new("Part", o1)
p437.BrickColor = BrickColor.new("Black")
p437.Name = "Wedge"
p437.CFrame = CFrame.new(-250.196335, 12641.8311, -672.834778, 0.13444905, -0.989488721, 0.0532495156, 0.595611215, 0.12364313, 0.793700039, -0.791941285, -0.0749961957, 0.605974197)
p437.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p437.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p437.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p437.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p437.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p437.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p437.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b437 = Instance.new("SpecialMesh", p437)
b437.MeshType = Enum.MeshType.Wedge
b437.Name = "Mesh"
b437.Scale = Vector3.new(0.0400000028, 0.291779548, 0.362816006)
p438 = Instance.new("Part", o1)
p438.BrickColor = BrickColor.new("Black")
p438.Name = "Wedge"
p438.CFrame = CFrame.new(-250.188629, 12641.873, -672.797302, -0.0915459991, -0.987967849, 0.124655366, -0.529811978, -0.0576691367, -0.846152246, 0.843159974, -0.143505752, -0.51815778)
p438.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p438.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p438.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p438.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p438.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p438.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p438.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b438 = Instance.new("SpecialMesh", p438)
b438.MeshType = Enum.MeshType.Wedge
b438.Name = "Mesh"
b438.Scale = Vector3.new(0.0400000028, 0.345050752, 0.0978140458)
p439 = Instance.new("Part", o1)
p439.BrickColor = BrickColor.new("Black")
p439.Name = "Wedge"
p439.CFrame = CFrame.new(-249.90477, 12642.1436, -672.319336, 0.319118977, 0.384010166, 0.86642915, -0.92245388, -0.0838133097, 0.376900733, 0.217351973, -0.91951704, 0.327485263)
p439.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p439.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p439.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p439.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p439.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p439.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p439.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b439 = Instance.new("SpecialMesh", p439)
b439.MeshType = Enum.MeshType.Wedge
b439.Name = "Mesh"
b439.Scale = Vector3.new(0.0400000028, 0.00854740757, 0.0089179473)
p440 = Instance.new("Part", o1)
p440.BrickColor = BrickColor.new("Black")
p440.Name = "Wedge"
p440.CFrame = CFrame.new(-250.195313, 12641.8701, -672.798828, -0.13444905, -0.989488721, -0.0532495156, -0.595611215, 0.12364313, -0.793700039, 0.791941285, -0.0749961957, -0.605974197)
p440.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p440.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p440.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p440.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p440.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p440.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p440.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b440 = Instance.new("SpecialMesh", p440)
b440.MeshType = Enum.MeshType.Wedge
b440.Name = "Mesh"
b440.Scale = Vector3.new(0.0400000028, 0.291779548, 0.208734959)
p441 = Instance.new("Part", o1)
p441.BrickColor = BrickColor.new("Black")
p441.Name = "Wedge"
p441.CFrame = CFrame.new(-250.159668, 12641.8477, -672.809692, 0.290551037, 0.955376625, -0.0532515347, 0.568266034, -0.217062026, -0.793698788, -0.769840121, 0.200348988, -0.605975568)
p441.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p441.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p441.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p441.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p441.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p441.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p441.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b441 = Instance.new("SpecialMesh", p441)
b441.MeshType = Enum.MeshType.Wedge
b441.Name = "Mesh"
b441.Scale = Vector3.new(0.0400000028, 0.11632067, 0.429680169)
p442 = Instance.new("Part", o1)
p442.BrickColor = BrickColor.new("Black")
p442.Name = "Wedge"
p442.CFrame = CFrame.new(-249.956085, 12642.1992, -672.233582, -0.0948360115, -0.884608209, 0.456590146, 0.824318111, 0.187366158, 0.534222424, -0.558127046, 0.427038997, 0.711429536)
p442.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p442.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p442.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p442.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p442.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p442.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p442.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b442 = Instance.new("SpecialMesh", p442)
b442.MeshType = Enum.MeshType.Wedge
b442.Name = "Mesh"
b442.Scale = Vector3.new(0.0400000028, 0.88964057, 0.712589085)
p443 = Instance.new("Part", o1)
p443.BrickColor = BrickColor.new("Black")
p443.Name = "Wedge"
p443.CFrame = CFrame.new(-250.189316, 12641.877, -672.797424, 0.390189856, 0.00980316568, 0.920682311, -0.476635814, 0.857683003, 0.192868367, -0.787762702, -0.514085472, 0.339331746)
p443.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p443.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p443.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p443.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p443.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p443.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p443.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b443 = Instance.new("SpecialMesh", p443)
b443.MeshType = Enum.MeshType.Wedge
b443.Name = "Mesh"
b443.Scale = Vector3.new(0.0400000028, 0.0397685729, 0.35642904)
p444 = Instance.new("Part", o1)
p444.BrickColor = BrickColor.new("Black")
p444.Name = "Wedge"
p444.CFrame = CFrame.new(-250.159088, 12641.8789, -672.788269, -0.481783122, 0.68178314, -0.550506055, -0.52297914, -0.727785528, -0.443645298, -0.703120172, 0.0741623789, 0.707193136)
p444.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p444.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p444.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p444.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p444.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p444.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p444.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b444 = Instance.new("SpecialMesh", p444)
b444.MeshType = Enum.MeshType.Wedge
b444.Name = "Mesh"
b444.Scale = Vector3.new(0.0400000028, 0.0284641236, 0.0281615462)
p445 = Instance.new("Part", o1)
p445.BrickColor = BrickColor.new("Black")
p445.Name = "Wedge"
p445.CFrame = CFrame.new(-249.814423, 12642.2217, -672.317932, -0.473504931, -0.724747777, -0.500533462, -0.501403928, 0.689006865, -0.523319781, 0.724145949, 0.00317493198, -0.689639509)
p445.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p445.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p445.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p445.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p445.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p445.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p445.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b445 = Instance.new("SpecialMesh", p445)
b445.MeshType = Enum.MeshType.Wedge
b445.Name = "Mesh"
b445.Scale = Vector3.new(0.0400000028, 0.280914485, 0.301598251)
p446 = Instance.new("Part", o1)
p446.BrickColor = BrickColor.new("Black")
p446.Name = "Wedge"
p446.CFrame = CFrame.new(-249.88353, 12642.1426, -672.325806, -0.0769230053, -0.9952209, -0.0601524636, 0.832368135, -0.0973132923, 0.54561305, -0.54885906, -0.0080987988, 0.83587575)
p446.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p446.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p446.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p446.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p446.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p446.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p446.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b446 = Instance.new("SpecialMesh", p446)
b446.MeshType = Enum.MeshType.Wedge
b446.Name = "Mesh"
b446.Scale = Vector3.new(0.0400000028, 0.0786637142, 0.129069164)
p447 = Instance.new("Part", o1)
p447.BrickColor = BrickColor.new("Black")
p447.Name = "Wedge"
p447.CFrame = CFrame.new(-249.890808, 12642.21, -672.34491, -0.0883630291, -0.309662938, 0.946731627, 0.83292532, 0.498284936, 0.240723073, -0.546285152, 0.809827745, 0.213896126)
p447.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p447.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p447.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p447.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p447.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p447.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p447.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b447 = Instance.new("SpecialMesh", p447)
b447.MeshType = Enum.MeshType.Wedge
b447.Name = "Mesh"
b447.Scale = Vector3.new(0.0400000028, 0.0250509325, 0.388348162)
p448 = Instance.new("Part", o1)
p448.BrickColor = BrickColor.new("Black")
p448.Name = "Wedge"
p448.CFrame = CFrame.new(-249.877197, 12642.3525, -672.142212, 0.0923410058, -0.884768784, -0.456790268, -0.825130105, 0.18878603, -0.532466114, 0.557345033, 0.426079839, -0.712616682)
p448.Size = Vector3.new(0.200000003, 0.200000003, 0.222886264)
p448.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p448.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p448.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p448.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p448.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p448.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b448 = Instance.new("SpecialMesh", p448)
b448.MeshType = Enum.MeshType.Wedge
b448.Name = "Mesh"
b448.Scale = Vector3.new(0.0400000028, 0.88964057, 1)
p449 = Instance.new("Part", o1)
p449.BrickColor = BrickColor.new("Black")
p449.Name = "Wedge"
p449.CFrame = CFrame.new(-249.850403, 12642.2227, -672.336426, 0.0883630291, -0.309662938, -0.946731627, -0.83292532, 0.498284936, -0.240723073, 0.546285152, 0.809827745, -0.213896126)
p449.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p449.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p449.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p449.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p449.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p449.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p449.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b449 = Instance.new("SpecialMesh", p449)
b449.MeshType = Enum.MeshType.Wedge
b449.Name = "Mesh"
b449.Scale = Vector3.new(0.0400000028, 0.0250509325, 0.0316075496)
p450 = Instance.new("Part", o1)
p450.BrickColor = BrickColor.new("Black")
p450.Name = "Wedge"
p450.CFrame = CFrame.new(-250.163712, 12641.8311, -672.820557, -0.0905919895, -0.988153875, 0.123875156, -0.529456913, -0.0575630032, -0.846381664, 0.843485892, -0.142261967, -0.517970145)
p450.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p450.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p450.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p450.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p450.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p450.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p450.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b450 = Instance.new("SpecialMesh", p450)
b450.MeshType = Enum.MeshType.Wedge
b450.Name = "Mesh"
b450.Scale = Vector3.new(0.0400000028, 0.07496766, 0.20596461)
p451 = Instance.new("Part", o1)
p451.BrickColor = BrickColor.new("Black")
p451.Name = "Wedge"
p451.CFrame = CFrame.new(-250.174606, 12641.8311, -672.738464, 0.0940329581, -0.562328994, -0.821549654, -0.824863553, 0.418058217, -0.380562007, 0.557456732, 0.713451743, -0.424533397)
p451.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p451.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p451.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p451.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p451.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p451.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p451.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b451 = Instance.new("SpecialMesh", p451)
b451.MeshType = Enum.MeshType.Wedge
b451.Name = "Mesh"
b451.Scale = Vector3.new(0.0400000028, 0.150872201, 0.0755929947)
p452 = Instance.new("Part", o1)
p452.BrickColor = BrickColor.new("Black")
p452.Name = "Wedge"
p452.CFrame = CFrame.new(-249.90007, 12642.1436, -672.318176, 0.168999016, 0.873477757, 0.456591725, -0.837251127, -0.117204726, 0.534110188, 0.520048082, -0.472546041, 0.711512685)
p452.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p452.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p452.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p452.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p452.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p452.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p452.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b452 = Instance.new("SpecialMesh", p452)
b452.MeshType = Enum.MeshType.Wedge
b452.Name = "Mesh"
b452.Scale = Vector3.new(0.0400000028, 0.0462080799, 0.0687288046)
p453 = Instance.new("Part", o1)
p453.BrickColor = BrickColor.new("Black")
p453.Name = "Wedge"
p453.CFrame = CFrame.new(-249.891083, 12642.1377, -672.328979, 0.0940329581, 0.569760859, 0.816413105, -0.824863553, -0.414587706, 0.384339988, 0.557456732, -0.709569991, 0.43099007)
p453.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p453.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p453.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p453.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p453.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p453.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p453.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b453 = Instance.new("SpecialMesh", p453)
b453.MeshType = Enum.MeshType.Wedge
b453.Name = "Mesh"
b453.Scale = Vector3.new(0.0400000028, 0.151551947, 0.0742208511)
p454 = Instance.new("Part", o1)
p454.BrickColor = BrickColor.new("Black")
p454.Name = "Wedge"
p454.CFrame = CFrame.new(-249.860168, 12642.1514, -672.3172, 0.0982630029, 0.99334085, -0.0601533949, -0.830087006, 0.115154229, 0.545614421, 0.548907995, -0.0036811633, 0.835874677)
p454.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p454.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p454.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p454.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p454.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p454.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p454.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b454 = Instance.new("SpecialMesh", p454)
b454.MeshType = Enum.MeshType.Wedge
b454.Name = "Mesh"
b454.Scale = Vector3.new(0.0400000028, 0.168117151, 0.250443429)
p455 = Instance.new("Part", o1)
p455.BrickColor = BrickColor.new("Black")
p455.Name = "Wedge"
p455.CFrame = CFrame.new(-249.886734, 12642.1572, -672.296814, -0.168999016, 0.873477757, -0.456591725, 0.837251127, -0.117204726, -0.534110188, -0.520048082, -0.472546041, -0.711512685)
p455.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p455.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p455.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p455.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p455.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p455.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p455.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b455 = Instance.new("SpecialMesh", p455)
b455.MeshType = Enum.MeshType.Wedge
b455.Name = "Mesh"
b455.Scale = Vector3.new(0.0400000028, 0.0462080799, 0.230563745)
p456 = Instance.new("Part", o1)
p456.BrickColor = BrickColor.new("Black")
p456.Name = "Wedge"
p456.CFrame = CFrame.new(-251.166763, 12641.5166, -673.128662, 0.107164018, 0.42320019, -0.899676323, 0.525926054, -0.792051554, -0.309929252, -0.843752146, -0.43994996, -0.307451427)
p456.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p456.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p456.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p456.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p456.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p456.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p456.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b456 = Instance.new("SpecialMesh", p456)
b456.MeshType = Enum.MeshType.Wedge
b456.Name = "Mesh"
b456.Scale = Vector3.new(0.0400000028, 0.402456522, 0.376990765)
p457 = Instance.new("Part", o1)
p457.BrickColor = BrickColor.new("Black")
p457.Name = "Wedge"
p457.CFrame = CFrame.new(-250.994598, 12641.5098, -673.131042, -0.929760396, 0.025506394, 0.367280573, 0.0727880374, -0.965171516, 0.251288742, 0.360898167, 0.260371983, 0.895521581)
p457.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p457.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p457.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p457.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p457.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p457.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p457.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b457 = Instance.new("SpecialMesh", p457)
b457.MeshType = Enum.MeshType.Wedge
b457.Name = "Mesh"
b457.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p458 = Instance.new("Part", o1)
p458.BrickColor = BrickColor.new("Black")
p458.Name = "Wedge"
p458.CFrame = CFrame.new(-251.030334, 12641.5635, -673.084534, 0.107164018, 0.42320019, -0.899676323, 0.525926054, -0.792051554, -0.309929252, -0.843752146, -0.43994996, -0.307451427)
p458.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p458.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p458.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p458.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p458.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p458.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p458.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b458 = Instance.new("SpecialMesh", p458)
b458.MeshType = Enum.MeshType.Wedge
b458.Name = "Mesh"
b458.Scale = Vector3.new(0.0400000028, 0.402456522, 0.376990765)
p459 = Instance.new("Part", o1)
p459.BrickColor = BrickColor.new("Black")
p459.Name = "Wedge"
p459.CFrame = CFrame.new(-251.070313, 12641.5449, -673.049316, 0.333157867, 0.411823213, 0.848178923, 0.597083747, -0.788361013, 0.148249581, 0.729723752, 0.45704335, -0.508541644)
p459.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p459.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p459.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p459.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p459.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p459.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p459.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b459 = Instance.new("SpecialMesh", p459)
b459.MeshType = Enum.MeshType.Wedge
b459.Name = "Mesh"
b459.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p460 = Instance.new("Part", o1)
p460.BrickColor = BrickColor.new("Black")
p460.Name = "Wedge"
p460.CFrame = CFrame.new(-250.992584, 12641.5537, -673.066223, -0.333157867, 0.411823213, -0.848178923, -0.597083747, -0.788361013, -0.148249581, -0.729723752, 0.45704335, 0.508541644)
p460.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p460.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p460.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p460.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p460.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p460.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p460.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b460 = Instance.new("SpecialMesh", p460)
b460.MeshType = Enum.MeshType.Wedge
b460.Name = "Mesh"
b460.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p461 = Instance.new("Part", o1)
p461.BrickColor = BrickColor.new("Black")
p461.Name = "Wedge"
p461.CFrame = CFrame.new(-250.970642, 12641.5303, -673.080872, 0.929760396, 0.025506394, -0.367280573, -0.0727880374, -0.965171516, -0.251288742, -0.360898167, 0.260371983, -0.895521581)
p461.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p461.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p461.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p461.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p461.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p461.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p461.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b461 = Instance.new("SpecialMesh", p461)
b461.MeshType = Enum.MeshType.Wedge
b461.Name = "Mesh"
b461.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p462 = Instance.new("Part", o1)
p462.BrickColor = BrickColor.new("Black")
p462.Name = "Wedge"
p462.CFrame = CFrame.new(-251.082123, 12641.5137, -673.085571, 0.195676968, 0.137669057, 0.97095722, -0.979784906, -0.0145752169, 0.199522585, 0.0416199975, -0.990371108, 0.132034004)
p462.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p462.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p462.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p462.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p462.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p462.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p462.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b462 = Instance.new("SpecialMesh", p462)
b462.MeshType = Enum.MeshType.Wedge
b462.Name = "Mesh"
b462.Scale = Vector3.new(0.0400000028, 0.341323882, 0.433118194)
p463 = Instance.new("Part", o1)
p463.BrickColor = BrickColor.new("Black")
p463.Name = "Wedge"
p463.CFrame = CFrame.new(-250.969162, 12641.5264, -673.083984, 0.0252090041, 0.683929086, -0.729112804, 0.959770143, -0.22058633, -0.173732474, -0.279653043, -0.695401013, -0.661975443)
p463.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p463.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p463.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p463.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p463.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p463.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p463.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b463 = Instance.new("SpecialMesh", p463)
b463.MeshType = Enum.MeshType.Wedge
b463.Name = "Mesh"
b463.Scale = Vector3.new(0.0400000028, 0.235460535, 0.498649806)
p464 = Instance.new("Part", o1)
p464.BrickColor = BrickColor.new("Black")
p464.Name = "Wedge"
p464.CFrame = CFrame.new(-251.070374, 12641.5449, -673.049255, 0.354909033, 0.930344105, -0.0921932459, 0.546142042, -0.126279831, 0.828119814, 0.758794129, -0.344257772, -0.552917838)
p464.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p464.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p464.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p464.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p464.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p464.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p464.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b464 = Instance.new("SpecialMesh", p464)
b464.MeshType = Enum.MeshType.Wedge
b464.Name = "Mesh"
b464.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p465 = Instance.new("Part", o1)
p465.BrickColor = BrickColor.new("Black")
p465.Name = "Wedge"
p465.CFrame = CFrame.new(-251.023407, 12641.5605, -673.08667, -0.929828405, -0.354631096, 0.0982646495, 0.122928061, -0.551019251, -0.82538873, 0.34685418, -0.755390406, 0.555947483)
p465.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p465.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p465.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p465.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p465.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p465.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p465.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b465 = Instance.new("SpecialMesh", p465)
b465.MeshType = Enum.MeshType.Wedge
b465.Name = "Mesh"
b465.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p466 = Instance.new("Part", o1)
p466.BrickColor = BrickColor.new("Black")
p466.Name = "Wedge"
p466.CFrame = CFrame.new(-251.166977, 12641.5166, -673.128601, 0.0992380157, 0.42512697, -0.899677157, 0.540628076, -0.782090127, -0.309929758, -0.835388124, -0.455633849, -0.307448626)
p466.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p466.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p466.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p466.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p466.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p466.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p466.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b466 = Instance.new("SpecialMesh", p466)
b466.MeshType = Enum.MeshType.Wedge
b466.Name = "Mesh"
b466.Scale = Vector3.new(0.0400000028, 0.41813603, 0.366072923)
p467 = Instance.new("Part", o1)
p467.BrickColor = BrickColor.new("Black")
p467.Name = "Wedge"
p467.CFrame = CFrame.new(-251.024109, 12641.5645, -673.084534, 0.0992380157, 0.42512697, -0.899677157, 0.540628076, -0.782090127, -0.309929758, -0.835388124, -0.455633849, -0.307448626)
p467.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p467.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p467.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p467.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p467.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p467.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p467.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b467 = Instance.new("SpecialMesh", p467)
b467.MeshType = Enum.MeshType.Wedge
b467.Name = "Mesh"
b467.Scale = Vector3.new(0.0400000028, 0.41813603, 0.366072923)
p468 = Instance.new("Part", o1)
p468.BrickColor = BrickColor.new("Black")
p468.Name = "Wedge"
p468.CFrame = CFrame.new(-251.089142, 12641.543, -673.105164, -0.354149967, 0.930316806, 0.0953340754, -0.555223942, -0.12713404, -0.821926594, -0.752531886, -0.344017059, 0.561558604)
p468.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p468.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p468.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p468.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p468.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p468.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p468.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b468 = Instance.new("SpecialMesh", p468)
b468.MeshType = Enum.MeshType.Wedge
b468.Name = "Mesh"
b468.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p469 = Instance.new("Part", o1)
p469.BrickColor = BrickColor.new("Black")
p469.Name = "Wedge"
p469.CFrame = CFrame.new(-251.072281, 12641.5703, -673.067078, -0.354909033, 0.930344105, 0.0921932459, -0.546142042, -0.126279831, -0.828119814, -0.758794129, -0.344257772, 0.552917838)
p469.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p469.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p469.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p469.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p469.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p469.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p469.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b469 = Instance.new("SpecialMesh", p469)
b469.MeshType = Enum.MeshType.Wedge
b469.Name = "Mesh"
b469.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p470 = Instance.new("Part", o1)
p470.BrickColor = BrickColor.new("Black")
p470.Name = "Wedge"
p470.CFrame = CFrame.new(-251.178635, 12641.4824, -673.073853, -0.0930720046, 0.349361897, -0.932354033, 0.824645102, -0.497695774, -0.268811315, -0.557941079, -0.793879867, -0.241778016)
p470.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p470.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p470.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p470.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p470.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p470.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p470.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b470 = Instance.new("SpecialMesh", p470)
b470.MeshType = Enum.MeshType.Wedge
b470.Name = "Mesh"
b470.Scale = Vector3.new(0.0400000028, 0.196231619, 0.22273533)
p471 = Instance.new("Part", o1)
p471.BrickColor = BrickColor.new("Black")
p471.Name = "Wedge"
p471.CFrame = CFrame.new(-250.977493, 12641.5859, -672.957336, -0.0955799967, 0.877393067, -0.470155299, 0.825028002, -0.194441468, -0.530585825, -0.556949973, -0.438604683, -0.705289066)
p471.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p471.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p471.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p471.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p471.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p471.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p471.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b471 = Instance.new("SpecialMesh", p471)
b471.MeshType = Enum.MeshType.Wedge
b471.Name = "Mesh"
b471.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.761848152)
p472 = Instance.new("Part", o1)
p472.BrickColor = BrickColor.new("Black")
p472.Name = "Wedge"
p472.CFrame = CFrame.new(-250.997101, 12641.5313, -673.043091, 0.0934440196, 0.877625763, 0.470150352, -0.824550152, -0.196447805, 0.53058964, 0.558019102, -0.437242985, 0.705289543)
p472.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p472.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p472.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p472.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p472.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p472.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p472.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b472 = Instance.new("SpecialMesh", p472)
b472.MeshType = Enum.MeshType.Wedge
b472.Name = "Mesh"
b472.Scale = Vector3.new(0.0400000028, 0.383756131, 0.332605243)
p473 = Instance.new("Part", o1)
p473.BrickColor = BrickColor.new("Black")
p473.Name = "Wedge"
p473.CFrame = CFrame.new(-251.018204, 12641.5381, -673.06665, 0.929828405, -0.354631096, -0.0982646495, -0.122928061, -0.551019251, 0.82538873, -0.34685418, -0.755390406, -0.555947483)
p473.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p473.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p473.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p473.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p473.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p473.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p473.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b473 = Instance.new("SpecialMesh", p473)
b473.MeshType = Enum.MeshType.Wedge
b473.Name = "Mesh"
b473.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p474 = Instance.new("Part", o1)
p474.BrickColor = BrickColor.new("Black")
p474.Name = "Wedge"
p474.CFrame = CFrame.new(-251.008209, 12641.5332, -673.104126, 0.345267981, 0.232442155, -0.909263849, 0.513903916, 0.763859391, 0.390412182, 0.785297871, -0.602071166, 0.14428325)
p474.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p474.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p474.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p474.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p474.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p474.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p474.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b474 = Instance.new("SpecialMesh", p474)
b474.MeshType = Enum.MeshType.Wedge
b474.Name = "Mesh"
b474.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.0116391014)
p475 = Instance.new("Part", o1)
p475.BrickColor = BrickColor.new("Black")
p475.Name = "Wedge"
p475.CFrame = CFrame.new(-251.028198, 12641.5332, -673.033264, 0.0955799967, 0.877393067, 0.470155299, -0.825028002, -0.194441468, 0.530585825, 0.556949973, -0.438604683, 0.705289066)
p475.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p475.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p475.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p475.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p475.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p475.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p475.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b475 = Instance.new("SpecialMesh", p475)
b475.MeshType = Enum.MeshType.Wedge
b475.Name = "Mesh"
b475.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.296343386)
p476 = Instance.new("Part", o1)
p476.BrickColor = BrickColor.new("Black")
p476.Name = "Wedge"
p476.CFrame = CFrame.new(-251.235718, 12641.4629, -673.102051, -0.0933649689, -0.14665404, -0.984771848, 0.824371696, -0.566015601, 0.0061344509, -0.558295846, -0.811245322, 0.173743486)
p476.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p476.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p476.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p476.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p476.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p476.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p476.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b476 = Instance.new("SpecialMesh", p476)
b476.MeshType = Enum.MeshType.Wedge
b476.Name = "Mesh"
b476.Scale = Vector3.new(0.0400000028, 0.157024801, 0.403840691)
p477 = Instance.new("Part", o1)
p477.BrickColor = BrickColor.new("Black")
p477.Name = "Wedge"
p477.CFrame = CFrame.new(-251.087448, 12641.5186, -673.043396, 0.0930720046, 0.349361897, 0.932354033, -0.824645102, -0.497695774, 0.268811315, 0.557941079, -0.793879867, 0.241778016)
p477.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p477.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p477.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p477.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p477.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p477.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p477.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b477 = Instance.new("SpecialMesh", p477)
b477.MeshType = Enum.MeshType.Wedge
b477.Name = "Mesh"
b477.Scale = Vector3.new(0.0400000028, 0.196231619, 0.352924824)
p478 = Instance.new("Part", o1)
p478.BrickColor = BrickColor.new("Black")
p478.Name = "Wedge"
p478.CFrame = CFrame.new(-251.401001, 12641.459, -673.171143, -0.354909033, 0.930344105, 0.0921932459, -0.546142042, -0.126279831, -0.828119814, -0.758794129, -0.344257772, 0.552917838)
p478.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p478.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p478.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p478.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p478.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p478.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p478.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b478 = Instance.new("SpecialMesh", p478)
b478.MeshType = Enum.MeshType.Wedge
b478.Name = "Mesh"
b478.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p479 = Instance.new("Part", o1)
p479.BrickColor = BrickColor.new("Black")
p479.Name = "Wedge"
p479.CFrame = CFrame.new(-251.115417, 12641.4746, -673.130249, 0.0252090041, 0.683929086, -0.729112804, 0.959770143, -0.22058633, -0.173732474, -0.279653043, -0.695401013, -0.661975443)
p479.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p479.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p479.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p479.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p479.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p479.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p479.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b479 = Instance.new("SpecialMesh", p479)
b479.MeshType = Enum.MeshType.Wedge
b479.Name = "Mesh"
b479.Scale = Vector3.new(0.0400000028, 0.235460535, 0.498649806)
p480 = Instance.new("Part", o1)
p480.BrickColor = BrickColor.new("Black")
p480.Name = "Wedge"
p480.CFrame = CFrame.new(-251.212997, 12641.4902, -673.093323, 0.354909033, 0.930344105, -0.0921932459, 0.546142042, -0.126279831, 0.828119814, 0.758794129, -0.344257772, -0.552917838)
p480.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p480.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p480.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p480.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p480.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p480.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p480.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b480 = Instance.new("SpecialMesh", p480)
b480.MeshType = Enum.MeshType.Wedge
b480.Name = "Mesh"
b480.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p481 = Instance.new("Part", o1)
p481.BrickColor = BrickColor.new("Black")
p481.Name = "Wedge"
p481.CFrame = CFrame.new(-251.15535, 12641.4707, -673.170044, -0.0252090041, 0.683929086, 0.729112804, -0.959770143, -0.22058633, 0.173732474, 0.279653043, -0.695401013, 0.661975443)
p481.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p481.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p481.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p481.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p481.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p481.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p481.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b481 = Instance.new("SpecialMesh", p481)
b481.MeshType = Enum.MeshType.Wedge
b481.Name = "Mesh"
b481.Scale = Vector3.new(0.0400000028, 0.235460535, 0.113313235)
p482 = Instance.new("Part", o1)
p482.BrickColor = BrickColor.new("Black")
p482.Name = "Wedge"
p482.CFrame = CFrame.new(-251.140366, 12641.4844, -673.087463, 0.0934440196, 0.877625763, 0.470150352, -0.824550152, -0.196447805, 0.53058964, 0.558019102, -0.437242985, 0.705289543)
p482.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p482.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p482.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p482.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p482.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p482.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p482.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b482 = Instance.new("SpecialMesh", p482)
b482.MeshType = Enum.MeshType.Wedge
b482.Name = "Mesh"
b482.Scale = Vector3.new(0.0400000028, 0.383756131, 0.332605243)
p483 = Instance.new("Part", o1)
p483.BrickColor = BrickColor.new("Black")
p483.Name = "Wedge"
p483.CFrame = CFrame.new(-251.116806, 12641.4766, -673.126892, 0.93096143, -0.35443294, -0.0876820236, -0.131890059, -0.550378978, 0.824431896, -0.340464145, -0.755949974, -0.559127748)
p483.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p483.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p483.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p483.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p483.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p483.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p483.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b483 = Instance.new("SpecialMesh", p483)
b483.MeshType = Enum.MeshType.Wedge
b483.Name = "Mesh"
b483.Scale = Vector3.new(0.0400000028, 0.521063328, 0.144000739)
p484 = Instance.new("Part", o1)
p484.BrickColor = BrickColor.new("Black")
p484.Name = "Wedge"
p484.CFrame = CFrame.new(-251.357407, 12641.4287, -673.138367, 0.0955799967, 0.877393067, 0.470155299, -0.825028002, -0.194441468, 0.530585825, 0.556949973, -0.438604683, 0.705289066)
p484.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p484.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p484.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p484.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p484.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p484.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p484.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b484 = Instance.new("SpecialMesh", p484)
b484.MeshType = Enum.MeshType.Wedge
b484.Name = "Mesh"
b484.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.296343386)
p485 = Instance.new("Part", o1)
p485.BrickColor = BrickColor.new("Black")
p485.Name = "Wedge"
p485.CFrame = CFrame.new(-251.233444, 12641.4922, -673.148926, -0.345267981, 0.232442155, 0.909263849, -0.513903916, 0.763859391, -0.390412182, -0.785297871, -0.602071166, -0.14428325)
p485.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p485.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p485.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p485.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p485.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p485.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p485.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b485 = Instance.new("SpecialMesh", p485)
b485.MeshType = Enum.MeshType.Wedge
b485.Name = "Mesh"
b485.Scale = Vector3.new(0.0400000028, 0.0337314494, 0.539807439)
p486 = Instance.new("Part", o1)
p486.BrickColor = BrickColor.new("Black")
p486.Name = "Wedge"
p486.CFrame = CFrame.new(-251.117325, 12641.5059, -673.145935, -0.93096143, -0.35443294, 0.0876820236, 0.131890059, -0.550378978, -0.824431896, 0.340464145, -0.755949974, 0.559127748)
p486.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p486.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p486.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p486.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p486.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p486.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p486.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b486 = Instance.new("SpecialMesh", p486)
b486.MeshType = Enum.MeshType.Wedge
b486.Name = "Mesh"
b486.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p487 = Instance.new("Part", o1)
p487.BrickColor = BrickColor.new("Black")
p487.Name = "Wedge"
p487.CFrame = CFrame.new(-251.137619, 12641.4648, -673.176636, -0.929760396, 0.025506394, 0.367280573, 0.0727880374, -0.965171516, 0.251288742, 0.360898167, 0.260371983, 0.895521581)
p487.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p487.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p487.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p487.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p487.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p487.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p487.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b487 = Instance.new("SpecialMesh", p487)
b487.MeshType = Enum.MeshType.Wedge
b487.Name = "Mesh"
b487.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p488 = Instance.new("Part", o1)
p488.BrickColor = BrickColor.new("Black")
p488.Name = "Wedge"
p488.CFrame = CFrame.new(-251.303436, 12641.4219, -673.187683, 0.929760396, 0.025506394, -0.367280573, -0.0727880374, -0.965171516, -0.251288742, -0.360898167, 0.260371983, -0.895521581)
p488.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p488.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p488.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p488.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p488.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p488.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p488.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b488 = Instance.new("SpecialMesh", p488)
b488.MeshType = Enum.MeshType.Wedge
b488.Name = "Mesh"
b488.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p489 = Instance.new("Part", o1)
p489.BrickColor = BrickColor.new("Black")
p489.Name = "Wedge"
p489.CFrame = CFrame.new(-251.163864, 12641.4883, -673.114685, 0.929828405, -0.354631096, -0.0982646495, -0.122928061, -0.551019251, 0.82538873, -0.34685418, -0.755390406, -0.555947483)
p489.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p489.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p489.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p489.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p489.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p489.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p489.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b489 = Instance.new("SpecialMesh", p489)
b489.MeshType = Enum.MeshType.Wedge
b489.Name = "Mesh"
b489.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p490 = Instance.new("Part", o1)
p490.BrickColor = BrickColor.new("Black")
p490.Name = "Wedge"
p490.CFrame = CFrame.new(-251.233444, 12641.4922, -673.148926, -0.354149967, 0.930316806, 0.0953340754, -0.555223942, -0.12713404, -0.821926594, -0.752531886, -0.344017059, 0.561558604)
p490.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p490.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p490.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p490.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p490.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p490.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p490.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b490 = Instance.new("SpecialMesh", p490)
b490.MeshType = Enum.MeshType.Wedge
b490.Name = "Mesh"
b490.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p491 = Instance.new("Part", o1)
p491.BrickColor = BrickColor.new("Black")
p491.Name = "Wedge"
p491.CFrame = CFrame.new(-251.278732, 12641.4775, -673.07312, -0.0934440196, 0.877625763, -0.470150352, 0.824550152, -0.196447805, -0.53058964, -0.558019102, -0.437242985, -0.705289543)
p491.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p491.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p491.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p491.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p491.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p491.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p491.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b491 = Instance.new("SpecialMesh", p491)
b491.MeshType = Enum.MeshType.Wedge
b491.Name = "Mesh"
b491.Scale = Vector3.new(0.0400000028, 0.383756131, 0.725586355)
p492 = Instance.new("Part", o1)
p492.BrickColor = BrickColor.new("Black")
p492.Name = "Wedge"
p492.CFrame = CFrame.new(-251.129974, 12641.5127, -673.111267, -0.333157867, 0.411823213, -0.848178923, -0.597083747, -0.788361013, -0.148249581, -0.729723752, 0.45704335, 0.508541644)
p492.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p492.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p492.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p492.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p492.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p492.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p492.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b492 = Instance.new("SpecialMesh", p492)
b492.MeshType = Enum.MeshType.Wedge
b492.Name = "Mesh"
b492.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.0119000487)
p493 = Instance.new("Part", o1)
p493.BrickColor = BrickColor.new("Black")
p493.Name = "Wedge"
p493.CFrame = CFrame.new(-251.227997, 12641.4668, -673.130554, 0.354149967, 0.930316806, -0.0953340754, 0.555223942, -0.12713404, 0.821926594, 0.752531886, -0.344017059, -0.561558604)
p493.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p493.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p493.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p493.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p493.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p493.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p493.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b493 = Instance.new("SpecialMesh", p493)
b493.MeshType = Enum.MeshType.Wedge
b493.Name = "Mesh"
b493.Scale = Vector3.new(0.0400000028, 0.521216393, 0.180074364)
p494 = Instance.new("Part", o1)
p494.BrickColor = BrickColor.new("Black")
p494.Name = "Wedge"
p494.CFrame = CFrame.new(-251.17012, 12641.4854, -673.078064, 0.0955799967, 0.877393067, 0.470155299, -0.825028002, -0.194441468, 0.530585825, 0.556949973, -0.438604683, 0.705289066)
p494.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p494.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p494.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p494.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p494.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p494.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p494.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b494 = Instance.new("SpecialMesh", p494)
b494.MeshType = Enum.MeshType.Wedge
b494.Name = "Mesh"
b494.Scale = Vector3.new(0.0400000028, 0.0960079208, 0.296343386)
p495 = Instance.new("Part", o1)
p495.BrickColor = BrickColor.new("Black")
p495.Name = "Wedge"
p495.CFrame = CFrame.new(-251.359924, 12641.4326, -673.132385, -0.0930720046, 0.349361897, -0.932354033, 0.824645102, -0.497695774, -0.268811315, -0.557941079, -0.793879867, -0.241778016)
p495.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p495.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p495.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p495.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p495.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p495.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p495.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b495 = Instance.new("SpecialMesh", p495)
b495.MeshType = Enum.MeshType.Wedge
b495.Name = "Mesh"
b495.Scale = Vector3.new(0.0400000028, 0.196231619, 0.22273533)
p496 = Instance.new("Part", o1)
p496.BrickColor = BrickColor.new("Black")
p496.Name = "Wedge"
p496.CFrame = CFrame.new(-251.141327, 12641.4785, -673.120667, -0.195676968, 0.137669057, -0.97095722, 0.979784906, -0.0145752169, -0.199522585, -0.0416199975, -0.990371108, -0.132034004)
p496.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p496.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p496.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p496.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p496.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p496.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p496.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b496 = Instance.new("SpecialMesh", p496)
b496.MeshType = Enum.MeshType.Wedge
b496.Name = "Mesh"
b496.Scale = Vector3.new(0.0400000028, 0.341323882, 0.507933795)
p497 = Instance.new("Part", o1)
p497.BrickColor = BrickColor.new("Black")
p497.Name = "Wedge"
p497.CFrame = CFrame.new(-251.213409, 12641.4902, -673.093567, 0.333157867, 0.411823213, 0.848178923, 0.597083747, -0.788361013, 0.148249581, 0.729723752, 0.45704335, -0.508541644)
p497.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p497.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p497.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p497.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p497.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p497.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p497.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b497 = Instance.new("SpecialMesh", p497)
b497.MeshType = Enum.MeshType.Wedge
b497.Name = "Mesh"
b497.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p498 = Instance.new("Part", o1)
p498.BrickColor = BrickColor.new("Black")
p498.Name = "Wedge"
p498.CFrame = CFrame.new(-251.116913, 12641.4766, -673.126892, 0.929760396, 0.025506394, -0.367280573, -0.0727880374, -0.965171516, -0.251288742, -0.360898167, 0.260371983, -0.895521581)
p498.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p498.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p498.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p498.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p498.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p498.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p498.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b498 = Instance.new("SpecialMesh", p498)
b498.MeshType = Enum.MeshType.Wedge
b498.Name = "Mesh"
b498.Scale = Vector3.new(0.0400000028, 0.0336561389, 0.539546549)
p499 = Instance.new("Part", o1)
p499.BrickColor = BrickColor.new("Black")
p499.Name = "Wedge"
p499.CFrame = CFrame.new(-251.215088, 12641.5186, -673.111572, -0.354909033, 0.930344105, 0.0921932459, -0.546142042, -0.126279831, -0.828119814, -0.758794129, -0.344257772, 0.552917838)
p499.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p499.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p499.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p499.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p499.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p499.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p499.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b499 = Instance.new("SpecialMesh", p499)
b499.MeshType = Enum.MeshType.Wedge
b499.Name = "Mesh"
b499.Scale = Vector3.new(0.0400000028, 0.521063328, 0.180516854)
p500 = Instance.new("Part", o1)
p500.BrickColor = BrickColor.new("Black")
p500.Name = "Wedge"
p500.CFrame = CFrame.new(-251.165924, 12641.5146, -673.131714, -0.929828405, -0.354631096, 0.0982646495, 0.122928061, -0.551019251, -0.82538873, 0.34685418, -0.755390406, 0.555947483)
p500.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p500.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p500.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p500.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p500.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p500.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p500.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b500 = Instance.new("SpecialMesh", p500)
b500.MeshType = Enum.MeshType.Wedge
b500.Name = "Mesh"
b500.Scale = Vector3.new(0.0400000028, 0.521216393, 0.14444156)
p501 = Instance.new("Part", o1)
p501.BrickColor = BrickColor.new("Black")
p501.Name = "Wedge"
p501.CFrame = CFrame.new(-251.420929, 12641.4326, -673.213135, -0.0992380157, 0.42512697, 0.899677157, -0.540628076, -0.782090127, 0.309929758, 0.835388124, -0.455633849, 0.307448626)
p501.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p501.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p501.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p501.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p501.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p501.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p501.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b501 = Instance.new("SpecialMesh", p501)
b501.MeshType = Enum.MeshType.Wedge
b501.Name = "Mesh"
b501.Scale = Vector3.new(0.0400000028, 0.41813603, 0.35952127)
p502 = Instance.new("Part", o1)
p502.BrickColor = BrickColor.new("Black")
p502.Name = "Wedge"
p502.CFrame = CFrame.new(-251.354568, 12641.4609, -673.191406, 0.0992380157, 0.42512697, -0.899677157, 0.540628076, -0.782090127, -0.309929758, -0.835388124, -0.455633849, -0.307448626)
p502.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p502.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p502.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p502.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p502.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p502.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p502.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b502 = Instance.new("SpecialMesh", p502)
b502.MeshType = Enum.MeshType.Wedge
b502.Name = "Mesh"
b502.Scale = Vector3.new(0.0400000028, 0.41813603, 0.366072923)
p503 = Instance.new("Part", o1)
p503.BrickColor = BrickColor.new("Black")
p503.Name = "Wedge"
p503.CFrame = CFrame.new(-251.226257, 12641.4609, -673.130859, 0.195676968, 0.137669057, 0.97095722, -0.979784906, -0.0145752169, 0.199522585, 0.0416199975, -0.990371108, 0.132034004)
p503.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p503.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p503.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p503.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p503.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p503.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p503.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b503 = Instance.new("SpecialMesh", p503)
b503.MeshType = Enum.MeshType.Wedge
b503.Name = "Mesh"
b503.Scale = Vector3.new(0.0400000028, 0.341323882, 0.433118194)
p504 = Instance.new("Part", o1)
p504.BrickColor = BrickColor.new("Black")
p504.Name = "Wedge"
p504.CFrame = CFrame.new(-251.421967, 12641.4326, -673.211121, -0.107164018, 0.42320019, 0.899676323, -0.525926054, -0.792051554, 0.309929252, 0.843752146, -0.43994996, 0.307451427)
p504.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p504.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p504.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p504.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p504.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p504.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p504.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b504 = Instance.new("SpecialMesh", p504)
b504.MeshType = Enum.MeshType.Wedge
b504.Name = "Mesh"
b504.Scale = Vector3.new(0.0400000028, 0.402456522, 0.348603457)
p505 = Instance.new("Part", o1)
p505.BrickColor = BrickColor.new("Black")
p505.Name = "Wedge"
p505.CFrame = CFrame.new(-251.236267, 12641.4902, -673.153381, -0.0992380157, 0.42512697, 0.899677157, -0.540628076, -0.782090127, 0.309929758, 0.835388124, -0.455633849, 0.307448626)
p505.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p505.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p505.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p505.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p505.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p505.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p505.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b505 = Instance.new("SpecialMesh", p505)
b505.MeshType = Enum.MeshType.Wedge
b505.Name = "Mesh"
b505.Scale = Vector3.new(0.0400000028, 0.41813603, 0.35952127)
p506 = Instance.new("Part", o1)
p506.BrickColor = BrickColor.new("Black")
p506.Name = "Wedge"
p506.CFrame = CFrame.new(-251.231705, 12641.4727, -673.087891, 0.0930720046, 0.349361897, 0.932354033, -0.824645102, -0.497695774, 0.268811315, 0.557941079, -0.793879867, 0.241778016)
p506.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p506.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p506.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p506.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p506.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p506.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p506.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b506 = Instance.new("SpecialMesh", p506)
b506.MeshType = Enum.MeshType.Wedge
b506.Name = "Mesh"
b506.Scale = Vector3.new(0.0400000028, 0.196231619, 0.352924824)
p507 = Instance.new("Part", o1)
p507.BrickColor = BrickColor.new("Really black")
p507.Name = "Handle"
p507.CFrame = CFrame.new(-254.157837, 12640.998, -673.360046, 0.0914874524, 0.92111212, -0.378394842, -0.815101027, 0.287556082, 0.502913415, 0.572049379, 0.26241973, 0.77710712)
p507.Anchored = true
p507.Size = Vector3.new(0.200000361, 1.41999996, 0.200000107)
p507.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p507.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p507.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p507.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p507.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p507.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p507 = Instance.new("BlockMesh", p507)
p507.Name = "Mesh"
p507.Scale = Vector3.new(1, 0.899999976, 1.39999986)
o1:MakeJoints()

o26 = System.Create("BoolValue",{
["Name"] = "Stats",
["Parent"] = o10000,
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

print("Welding")
WeldObjects(script.Weapon, script.Weapon.Handle)
print("Done.")
wait()
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
  while true do
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

for i, v in pairs (script.Weapon:GetChildren()) do
	v.Anchored = true
	v.CanCollide = false
end

wait(0.25)

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

wait(0.25)

for i, v in pairs (vPlayer.Character.Weapon:GetChildren()) do
	v.Anchored = false
end

repeat
wait()
until
vPlayer.Character:FindFirstChild("Weapon")
Wep = vPlayer.Character.Weapon
repeat
  wait()
until vPlayer.Character:FindFirstChild("Weapon"):FindFirstChild("Handle") ~= nil
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
      do
        do
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
          -- DECOMPILER ERROR at PC75: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC75: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC75: LeaveBlock: unexpected jumping out IF_STMT

        end
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
  m  = Instance.new("Model")
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
            elseif h.Parent.Name == "Siegmund" or h.Parent.Name == "Juggerkactus" then
                  Juggernaut = true
                  if DamageType == "IgnoreDefense" or DamageType == "Pure" then
                    DamageType = "Normal"
                  end
end
                local stats = (h.Parent:FindFirstChild("Stats"))
if stats == nil then
	vPlayer.Character.Stats:Clone().Parent=h.Parent
end
                local enemymana = nil
                if stats then
                  enemymana = stats:FindFirstChild("Mana")
                end
                if enemymana --[[and Juggernaut == false--]] then
                  if t.Parent:FindFirstChild("ManaMark") and canproc == true then
	for i = 1, 2 do
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
                  else
                    do
                      if enemymana.Value > -1 and canburn == true and t.Parent:FindFirstChild("ManaMark") == nil then
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
      do
        do
          fwait(0.09)
          -- DECOMPILER ERROR at PC188: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
end
  end), t, t.Position - pla, enemymana, math.ceil(Damage * 0.4), t.Parent)
                      end
                        if WasSpecial == false then
                          Mana.Value = Mana.Value + math.ceil(Damage * 0.15)
                        end
                        if Mana.Value > 150 then
                          Mana.Value = 150
                        end
                        if stats == nil then
                          if DamageType == nil then
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
                        else
                          if stats.Block.Value == true and Unblockable == false then
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
                            do
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
                              do
                                if DamageType ~= "Pure" or DamageType == "IgnoreDefense" then
                                  local borb = stats.Defense.Value
                                  if borb > 1 then
                                    borb = 1
                                  end
                                  Damage = Damage * playerstats.Damage.Value / borb
                                end
                                h.Parent.Humanoid:TakeDamage(Damage)
                                showDamage(h.Parent, math.ceil(Damage), "Damage", DamageType, borb)
                                do
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
                          end
                        end
                      end
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
    do
      if Tool.Status.AnimCanBeInterrupted.Value == true then
        return doescancel
      else
        return false
      end
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
    local w_ = fwait(frame * 2)
if vPlayer.Character.Humanoid.Health <= 0 or vPlayer.Character == nil then
script:Destroy()
end
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