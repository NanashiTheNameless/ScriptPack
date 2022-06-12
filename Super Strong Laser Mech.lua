--Created with ttyyuu12345's compiler
--Errors: 
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
["Name"] = "Mecha",
["Parent"] = mas,
})
o2 = Create("Model",{
["Name"] = "TurretHead",
["Parent"] = o1,
})
o3 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(9.00000191, 24.7729664, 13.2999973),
["Rotation"] = Vector3.new(180, -1.90614423e-006, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.00000191, 24.7729664, 13.2999973, -1, 2.55917936e-008, -3.3268492e-008, -5.32907052e-015, 1, -2.55917989e-008, 3.32684884e-008, -7.70314923e-009, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.20000005, 0.799999952, 1.80000043),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o4 = Create("SpecialMesh",{
["Parent"] = o3,
["Offset"] = Vector3.new(-1.10000002, 0, 0),
["Scale"] = Vector3.new(1, 1.07000005, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o5 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(11.0000019, 24.8729668, 10.4999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(11.0000019, 24.8729668, 10.4999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4.79999971, 0.999999821, 3.80000162),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o6 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.7999992, 21.0729694, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.7999992, 21.0729694, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.19999981, 1.79999995, 7.80000019),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o7 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.70000076, 20.9729691, 16.2999954),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70000076, 20.9729691, 16.2999954, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.39999962, 1.99999988, 1.00000167),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o8 = Create("BlockMesh",{
["Parent"] = o7,
["Offset"] = Vector3.new(1.20000005, 0, 0),
["Scale"] = Vector3.new(1, 0.899999976, 0.949999988),
})
o9 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.70000076, 20.9729691, 17.4999943),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70000076, 20.9729691, 17.4999943, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.39999962, 1.99999988, 1.00000167),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o10 = Create("BlockMesh",{
["Parent"] = o9,
["Offset"] = Vector3.new(1.20000005, 0, 0),
["Scale"] = Vector3.new(1, 0.899999976, 0.949999988),
})
o11 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.29999948, 19.4729691, 10.4999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.29999948, 19.4729691, 10.4999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999285, 1, 5.00000191),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o12 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.70000029, 19.4729691, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70000029, 19.4729691, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.39999938, 1, 5.00000191),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o13 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.80000114, 22.7729702, 16.2999954),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.80000114, 22.7729702, 16.2999954, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.99999952, 1.5999999, 3.80000162),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o14 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.80000019, 22.7729664, 4.69999456),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.80000019, 22.7729664, 4.69999456, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.99999952, 1.59999979, 3.80000162),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o15 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.0999999, 19.4729691, 14.3999977),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.0999999, 19.4729691, 14.3999977, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4.59999943, 1, 2.8000021),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o16 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(11.9000015, 23.1729641, 10.4999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(11.9000015, 23.1729641, 10.4999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(10.999999, 2.39999986, 7.80000162),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o17 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Cyan"),
["Position"] = Vector3.new(5.5, 20.4729691, 10.4999952),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 20.4729691, 10.4999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.79999983, 1.00000012, 2.20000172),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0156863, 0.686275, 0.92549),
})
o18 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 22.6729641, 10.4999943),
["Rotation"] = Vector3.new(-1.02494414e-006, 2.03555502e-013, -1.46630191e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 22.6729641, 10.4999943, 1, 2.55917953e-008, 3.55271368e-015, 2.55917953e-008, 1, 1.78886488e-008, 3.55271368e-015, 1.78886488e-008, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.79999983, 3.4000001, 3.8000021),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o19 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.70000076, 20.9729691, 15.0999937),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70000076, 20.9729691, 15.0999937, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.39999962, 1.99999988, 1.00000167),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o20 = Create("BlockMesh",{
["Parent"] = o19,
["Offset"] = Vector3.new(1.20000005, 0, 0),
["Scale"] = Vector3.new(1, 0.899999976, 0.949999988),
})
o21 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.70000076, 20.9729691, 5.89999485),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70000076, 20.9729691, 5.89999485, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.39999962, 1.99999988, 1.00000167),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o22 = Create("BlockMesh",{
["Parent"] = o21,
["Offset"] = Vector3.new(1.20000005, 0, 0),
["Scale"] = Vector3.new(1, 0.899999976, 0.949999988),
})
o23 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.70000076, 20.9729691, 3.49999523),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70000076, 20.9729691, 3.49999523, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.39999962, 1.99999988, 1.00000167),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o24 = Create("BlockMesh",{
["Parent"] = o23,
["Offset"] = Vector3.new(1.20000005, 0, 0),
["Scale"] = Vector3.new(1, 0.899999976, 0.949999988),
})
o25 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.70000076, 20.9729691, 4.69999504),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70000076, 20.9729691, 4.69999504, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.39999962, 1.99999988, 1.00000167),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o26 = Create("BlockMesh",{
["Parent"] = o25,
["Offset"] = Vector3.new(1.20000005, 0, 0),
["Scale"] = Vector3.new(1, 0.899999976, 0.949999988),
})
o27 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(13.5, 20.4729652, 1.90000057),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.5, 20.4729652, 1.90000057, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.39999962, 3, 1.80000114),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o28 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(13.5, 20.4729652, 19.1000004),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.5, 20.4729652, 19.1000004, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.39999962, 3, 1.80000114),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o29 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.10000086, 19.4729805, 6.59999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.10000086, 19.4729805, 6.59999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4.59999943, 1, 2.8000021),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o30 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(13.5, 20.4729691, 10.4999981),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.5, 20.4729691, 10.4999981, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.39999962, 3, 15.4000025),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o31 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.10000038, 20.9729691, 10.4999971),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.10000038, 20.9729691, 10.4999971, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.39999962, 1.99999988, 5.80000162),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o32 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.79999924, 20.4729614, 1.89999866),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.79999924, 20.4729614, 1.89999866, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.99999952, 0.99999994, 1.80000114),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o33 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.79999924, 20.4729633, 19.1000004),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.79999924, 20.4729633, 19.1000004, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.99999952, 0.99999994, 1.80000114),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o34 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.60000038, 20.9729691, 16.2999954),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.60000038, 20.9729691, 16.2999954, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.39999962, 1.99999988, 3.80000162),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o35 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.60000038, 20.9729691, 4.69999695),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.60000038, 20.9729691, 4.69999695, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.39999962, 1.99999988, 3.80000162),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o36 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.8000002, 19.5729675, 10.499999),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.8000002, 19.5729675, 10.499999, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.19999933, 1.19999993, 19.0000019),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o37 = Create("Part",{
["Name"] = "RotBase",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.59999943, 19.4729652, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.59999943, 19.4729652, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.39999962, 1, 19.0000019),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o38 = Create("Script",{
["Parent"] = o37,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o38)
end))
o39 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.4000092, 24.8729706, 13.3999882),
["Rotation"] = Vector3.new(-2.16416493e-006, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.4000092, 24.8729706, 13.3999882, 1.17377851e-006, -1.82769577e-009, 1.00000393, -3.77720433e-008, 1.00000644, 2.67309446e-008, -1.00000346, -1.40801831e-007, 1.20358038e-006),
["Size"] = Vector3.new(2, 0.99999994, 4),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o40 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.4000006, 24.8729706, 7.59999752),
["Rotation"] = Vector3.new(-180, 6.72525566e-005, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.4000006, 24.8729706, 7.59999752, -1.00000393, 2.49045229e-008, 1.17377851e-006, 1.39710465e-012, 1.00000644, 4.89933116e-009, -1.20358038e-006, -9.8130549e-008, -1.00000346),
["Size"] = Vector3.new(4, 0.99999994, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o41 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.7999973, 21.0729637, 3.79999447),
["Rotation"] = Vector3.new(61.7603416, -89.8356781, 52.5105972),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.7999973, 21.0729637, 3.79999447, 9.66431823e-009, -1.25996094e-008, -0.999995887, -4.4366459e-008, 0.999993563, -8.94081609e-008, 0.999996543, 1.03970919e-007, 4.80199418e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.60000038, 1.79999983, 1.19999981),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o42 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.10000038, 19.4729805, 3.0999999),
["Rotation"] = Vector3.new(-90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.10000038, 19.4729805, 3.0999999, -8.44520827e-008, 2.13162821e-014, 1, -1, -7.13215294e-015, -5.88602802e-008, -1.78886452e-008, -1, 2.13162821e-014),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999762, 4.19999981, 4.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o43 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.7999964, 21.0729446, 17.2000065),
["Rotation"] = Vector3.new(61.7603416, -89.8356781, 52.5105972),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.7999964, 21.0729446, 17.2000065, 9.66431823e-009, -1.25996094e-008, -0.999995887, -4.4366459e-008, 0.999993563, -8.94081609e-008, 0.999996543, 1.03970919e-007, 4.80199418e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.60000038, 1.79999983, 1.19999981),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o44 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.60001373, 20.7729626, 7.10003757),
["Rotation"] = Vector3.new(118.239357, 89.8356781, -93.3275681),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.60001373, 20.7729626, 7.10003757, -9.66432889e-009, 1.66218271e-007, 0.999995887, -4.43658905e-008, 0.999993563, -8.94092977e-008, -0.999996543, 1.52383137e-008, -4.8019956e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999046, 1.5999999, 6.4000001),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o45 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.60002232, 20.4729652, 1.90001464),
["Rotation"] = Vector3.new(118.239357, 89.8356781, -93.3275681),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.60002232, 20.4729652, 1.90001464, -9.66432889e-009, 1.66218271e-007, 0.999995887, -4.43658905e-008, 0.999993563, -8.94092977e-008, -0.999996543, 1.52383137e-008, -4.8019956e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.79999876, 0.999999881, 2.4000001),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o46 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.60000038, 20.4729633, 19.0999966),
["Rotation"] = Vector3.new(118.239357, 89.8356781, -93.3275681),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.60000038, 20.4729633, 19.0999966, -9.66432889e-009, 1.66218271e-007, 0.999995887, -4.43658905e-008, 0.999993563, -8.94092977e-008, -0.999996543, 1.52383137e-008, -4.8019956e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.79999876, 0.999999881, 2.4000001),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o47 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.60001373, 20.7729645, 13.8999968),
["Rotation"] = Vector3.new(118.239357, 89.8356781, -93.3275681),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.60001373, 20.7729645, 13.8999968, -9.66432889e-009, 1.66218271e-007, 0.999995887, -4.43658905e-008, 0.999993563, -8.94092977e-008, -0.999996543, 1.52383137e-008, -4.8019956e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999046, 1.5999999, 6.4000001),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o48 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Cyan"),
["Position"] = Vector3.new(5.49999905, 20.4729691, 8.49999714),
["Rotation"] = Vector3.new(-90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.49999905, 20.4729691, 8.49999714, -8.44520827e-008, 7.28178724e-015, 1, -1, -7.10542736e-015, -5.88602873e-008, -1.78886381e-008, -1, 7.28178639e-015),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999881, 1.79999995, 1.79999995),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0156863, 0.686275, 0.92549),
})
o49 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Cyan"),
["Position"] = Vector3.new(5.49999952, 20.4729691, 12.4999962),
["Rotation"] = Vector3.new(180, 1.32405615e-013, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.49999952, 20.4729691, 12.4999962, -2.55917882e-008, -1, 2.31091383e-015, -1, -7.10542736e-015, -5.88602873e-008, 4.09716421e-008, -8.33471696e-015, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999881, 1.79999995, 1.79999995),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0156863, 0.686275, 0.92549),
})
o50 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.49999905, 22.6729679, 7.59999657),
["Rotation"] = Vector3.new(-90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.49999905, 22.6729679, 7.59999657, -8.44520827e-008, 7.28178724e-015, 1, -1, -7.10542736e-015, -5.88602873e-008, -1.78886381e-008, -1, 7.28178639e-015),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.4000001, 2, 1.79999995),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o51 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.49999809, 22.672966, 13.3999958),
["Rotation"] = Vector3.new(-115.12175, 89.960434, -145.134079),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.49999809, 22.672966, 13.3999958, -1.71099259e-007, 1.1920929e-007, 0.999999762, 0.999999821, -7.06808123e-009, 1.90675053e-007, 3.01962295e-008, 0.999999762, -8.94069672e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.4000001, 2, 1.79999995),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o52 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7.90001488, 21.4729671, 13.8999949),
["Rotation"] = Vector3.new(-179.999985, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.90001488, 21.4729671, 13.8999949, -3.53157475e-006, 2.16926378e-006, -1, 3.73831881e-007, -1, -2.16926514e-006, -1, -3.73839555e-007, 3.53157384e-006),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999046, 0.99999994, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o53 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7.90001488, 21.4729671, 7.09999514),
["Rotation"] = Vector3.new(-179.999985, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.90001488, 21.4729671, 7.09999514, -3.53157475e-006, 2.16926378e-006, -1, 3.73831881e-007, -1, -2.16926514e-006, -1, -3.73839555e-007, 3.53157384e-006),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999046, 0.99999994, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o54 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.80000114, 21.4729652, 19.0999966),
["Rotation"] = Vector3.new(118.239357, 89.8356781, -93.3275681),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.80000114, 21.4729652, 19.0999966, -9.66432889e-009, 1.66218271e-007, 0.999995887, -4.43658905e-008, 0.999993563, -8.94092977e-008, -0.999996543, 1.52383137e-008, -4.8019956e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.80000007, 0.999999821, 4),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o55 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.80000877, 21.472971, 1.89999914),
["Rotation"] = Vector3.new(118.239357, 89.8356781, -93.3275681),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.80000877, 21.472971, 1.89999914, -9.66432889e-009, 1.66218271e-007, 0.999995887, -4.43658905e-008, 0.999993563, -8.94092977e-008, -0.999996543, 1.52383137e-008, -4.8019956e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.80000007, 0.999999821, 4),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o56 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.59999609, 22.7729702, 4.69999599),
["Rotation"] = Vector3.new(4.05415303e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.59999609, 22.7729702, 4.69999599, -4.04392964e-008, -4.38364486e-006, 1.00000226, 7.07586196e-007, 1.00000429, 4.31639e-006, -1.00000226, 7.67397069e-007, -7.02383645e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999971, 1.60000002, 2.4000001),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o57 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.59999418, 22.7729664, 16.3000011),
["Rotation"] = Vector3.new(4.05415303e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.59999418, 22.7729664, 16.3000011, -4.04392964e-008, -4.38364486e-006, 1.00000226, 7.07586196e-007, 1.00000429, 4.31639e-006, -1.00000226, 7.67397069e-007, -7.02383645e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999971, 1.60000002, 2.4000001),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o58 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.09999967, 19.4729691, 17.8999996),
["Rotation"] = Vector3.new(90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.09999967, 19.4729691, 17.8999996, 1.79151272e-008, 1.78225016e-014, 1, 1, 6.21724894e-015, 7.6766753e-009, 1.78886452e-008, 1, -1.39951358e-014),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999762, 4.19999981, 4.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o59 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.50000262, 19.4729748, 12.0999956),
["Rotation"] = Vector3.new(-89.9999161, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.50000262, 19.4729748, 12.0999956, -7.58492035e-007, 6.60409228e-007, -1, 1, 1.47521541e-006, -7.58491069e-007, 1.47521496e-006, -1, -6.60410365e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.99999994, 1.79999995, 1.39999998),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o60 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(-0.100000262, 19.9729671, 9.09999561),
["Rotation"] = Vector3.new(-90, 3.41509462e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.100000262, 19.9729671, 9.09999561, -7.31676124e-008, -1, 5.96046448e-008, -1.0413462e-014, 1.49011612e-007, 1, -1, 7.31676195e-008, -3.55271368e-014),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1.79999995, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o61 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(-0.100000262, 19.9729691, 11.8999958),
["Rotation"] = Vector3.new(-90, 3.41509462e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.100000262, 19.9729691, 11.8999958, -7.31676124e-008, -1, 5.96046448e-008, -1.0413462e-014, 1.49011612e-007, 1, -1, 7.31676195e-008, -3.55271368e-014),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1.79999995, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o62 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.29999554, 20.4729652, 11.9000072),
["Rotation"] = Vector3.new(90.0000076, -4.00884164e-005, -90.0000076),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.29999554, 20.4729652, 11.9000072, -1.26986635e-007, 0.999991775, -6.99674843e-007, 7.68220048e-008, -8.26661335e-007, -0.999990225, -0.99999398, -1.26984801e-007, -1.10142366e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.99999994, 0.999999881, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o63 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.29999554, 20.4729652, 9.10000992),
["Rotation"] = Vector3.new(90.0000076, -4.00884164e-005, -90.0000076),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.29999554, 20.4729652, 9.10000992, -1.26986635e-007, 0.999991775, -6.99674843e-007, 7.68220048e-008, -8.26661335e-007, -0.999990225, -0.99999398, -1.26984801e-007, -1.10142366e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.99999994, 0.999999881, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o64 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(13.6999998, 22.7729626, 4.69999599),
["Rotation"] = Vector3.new(-180, -89.980217, -80.7577362),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6999998, 22.7729626, 4.69999599, 4.84948259e-009, 2.98023224e-008, -0.99999994, -2.05794759e-008, -0.99999994, 0, -0.99999994, 7.97080446e-009, -4.84948259e-009),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999971, 1.60000002, 3.79999995),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o65 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(13.5, 22.7729645, 16.2999954),
["Rotation"] = Vector3.new(-180, -89.980217, -80.7577362),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.5, 22.7729645, 16.2999954, 4.84948259e-009, 2.98023224e-008, -0.99999994, -2.05794759e-008, -0.99999994, 0, -0.99999994, 7.97080446e-009, -4.84948259e-009),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999971, 1.60000002, 3.4000001),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o66 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(16.9000015, 21.0729694, 10.499999),
["Rotation"] = Vector3.new(-180, -89.980217, -80.7577362),
["Anchored"] = true,
["CFrame"] = CFrame.new(16.9000015, 21.0729694, 10.499999, 4.84948259e-009, 2.98023224e-008, -0.99999994, -2.05794759e-008, -0.99999994, 0, -0.99999994, 7.97080446e-009, -4.84948259e-009),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7.80000019, 1.79999995, 0.99999994),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o67 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.60000134, 24.8729649, 10.4999962),
["Rotation"] = Vector3.new(-3.0533326e-013, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.60000134, 24.8729649, 10.4999962, -3.3268492e-008, 5.11835943e-008, 1, -5.32907052e-015, 1, -2.55917989e-008, -1, 1.78886435e-008, -3.32684884e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999995, 0.99999994, 4.00000048),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o68 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.4000015, 24.8729668, 10.4999962),
["Rotation"] = Vector3.new(3.0533326e-013, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.4000015, 24.8729668, 10.4999962, 3.3268492e-008, -2.70131301e-015, -1, -5.32907052e-015, 1, -2.55917989e-008, 1, 1.78886559e-008, 3.32684884e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999995, 0.99999994, 4.00000048),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o69 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(11.5000019, 24.8729668, 13.3999968),
["Rotation"] = Vector3.new(180, -1.90614423e-006, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(11.5000019, 24.8729668, 13.3999968, -1, 2.55917936e-008, -3.3268492e-008, -5.32907052e-015, 1, -2.55917989e-008, 3.32684884e-008, -7.70314923e-009, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999995, 0.99999994, 2.00000048),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o70 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(11.5000019, 24.8729668, 7.59999609),
["Rotation"] = Vector3.new(1.46630214e-006, 1.90614423e-006, -1.46630248e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(11.5000019, 24.8729668, 7.59999609, 1, 2.5591806e-008, 3.3268492e-008, -5.32907052e-015, 1, -2.55917989e-008, -3.32684884e-008, 4.34804477e-008, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999995, 0.99999994, 2.00000048),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o71 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(8.99999905, 24.7729702, 7.69999647),
["Rotation"] = Vector3.new(1.46630214e-006, 1.90614423e-006, -1.46630248e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.99999905, 24.7729702, 7.69999647, 1, 2.5591806e-008, 3.3268492e-008, -5.32907052e-015, 1, -2.55917989e-008, -3.32684884e-008, 4.34804477e-008, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.20000005, 0.799999952, 1.80000043),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o72 = Create("SpecialMesh",{
["Parent"] = o71,
["Offset"] = Vector3.new(1.10000002, 0, 0),
["Scale"] = Vector3.new(1, 1.07000005, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o73 = Create("Part",{
["Name"] = "LJoint",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Transparency"] = 1,
["Position"] = Vector3.new(9.49999809, 20.2729568, 21.5),
["Rotation"] = Vector3.new(180, -9.2207365e-006, 7.48569892e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.49999809, 20.2729568, 21.5, 1, -1.30650093e-007, -1.60932217e-007, -1.30650108e-007, -1, -5.96046164e-008, -1.60932203e-007, 5.96046377e-008, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.99999952, 2.5999999, 2.20000124),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o74 = Create("Part",{
["Name"] = "RJoint",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Transparency"] = 1,
["Position"] = Vector3.new(9.49999809, 20.2729568, -0.50000149),
["Rotation"] = Vector3.new(180, -9.2207365e-006, 7.48569892e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.49999809, 20.2729568, -0.50000149, 1, -1.47549628e-007, 2.72161913e-007, 1.47549613e-007, 1, 5.96046803e-008, -2.72161913e-007, -5.96046377e-008, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.99999952, 2.5999999, 2.20000124),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o75 = Create("Model",{
["Name"] = "LCannon",
["Parent"] = o2,
})
o76 = Create("Part",{
["Parent"] = o75,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.1999998, 20.2729511, 20.6999989),
["Rotation"] = Vector3.new(180, -9.2207365e-006, 7.48569892e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.1999998, 20.2729511, 20.6999989, 1, -1.30650093e-007, -1.60932217e-007, -1.30650108e-007, -1, -5.96046164e-008, -1.60932203e-007, 5.96046377e-008, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(8, 2.5999999, 1.00000119),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o77 = Create("Part",{
["Name"] = "Barrel1",
["Parent"] = o75,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.3999989, 19.6729603, 21.5),
["Rotation"] = Vector3.new(180, -9.2207365e-006, 7.48569892e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.3999989, 19.6729603, 21.5, 1, -1.30650093e-007, -1.60932217e-007, -1.30650108e-007, -1, -5.96046164e-008, -1.60932203e-007, 5.96046377e-008, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(10.7999992, 0.999999881, 2.6000011),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o78 = Create("Part",{
["Name"] = "Barrel2",
["Parent"] = o75,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.29999876, 20.8729591, 21.4999981),
["Rotation"] = Vector3.new(180, -9.2207365e-006, 7.48569892e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.29999876, 20.8729591, 21.4999981, 1, -1.30650093e-007, -1.60932217e-007, -1.30650108e-007, -1, -5.96046164e-008, -1.60932203e-007, 5.96046377e-008, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7, 0.999999881, 2.60000134),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o79 = Create("Part",{
["Name"] = "Base",
["Parent"] = o75,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.49999809, 20.2729549, 21.6000004),
["Rotation"] = Vector3.new(180, -9.2207365e-006, 7.48569892e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.49999809, 20.2729549, 21.6000004, 1, -1.30650093e-007, -1.60932217e-007, -1.30650108e-007, -1, -5.96046164e-008, -1.60932203e-007, 5.96046377e-008, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.39999962, 2.5999999, 2.80000114),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o80 = Create("Script",{
["Parent"] = o79,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o80)
end))
o81 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o75,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(-0.800001144, 20.872961, 21.5),
["Rotation"] = Vector3.new(180, -9.22071104e-006, 89.9999695),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.800001144, 20.872961, 21.5, 5.7332295e-007, -1, -1.60931762e-007, -1, -5.7332295e-007, -5.960473e-008, 5.96046377e-008, 1.60931791e-007, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.19999981, 2.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o82 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o75,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(-4.80000019, 19.6729546, 21.5000057),
["Rotation"] = Vector3.new(180, -6.10148072e-006, 90.0000153),
["Anchored"] = true,
["CFrame"] = CFrame.new(-4.80000019, 19.6729546, 21.5000057, -2.95794706e-007, -1, -1.06490923e-007, -1, 2.95794706e-007, -5.96046092e-008, 5.96046377e-008, 1.06490909e-007, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.5999999, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o83 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o75,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.1999979, 20.2729568, 22.0999966),
["Rotation"] = Vector3.new(90, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.1999979, 20.2729568, 22.0999966, -1.37835116e-007, 7.99750168e-008, -1, -1, 5.96046235e-008, 1.37835116e-007, 5.96046377e-008, 1, 7.99750097e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.5999999, 1.79999971, 8),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o84 = Create("Model",{
["Name"] = "RCannon",
["Parent"] = o2,
})
o85 = Create("Part",{
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Transparency"] = 1,
["Position"] = Vector3.new(9.49999905, 20.2729683, -0.300001562),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.49999905, 20.2729683, -0.300001562, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.99999952, 2.5999999, 2.20000124),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o86 = Create("Part",{
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.2000008, 20.2729721, 0.299998999),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.2000008, 20.2729721, 0.299998999, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(8, 2.5999999, 1.00000119),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o87 = Create("Part",{
["Name"] = "Barrel1",
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.39999962, 19.6729622, -0.50000149),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.39999962, 19.6729622, -0.50000149, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(10.7999992, 0.999999881, 2.6000011),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o88 = Create("Part",{
["Name"] = "Barrel2",
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.29999924, 20.8729668, -0.500001609),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.29999924, 20.8729668, -0.500001609, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7, 0.999999881, 2.60000134),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o89 = Create("Part",{
["Name"] = "Base",
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9.49999905, 20.2729683, -0.600001514),
["Anchored"] = true,
["CFrame"] = CFrame.new(9.49999905, 20.2729683, -0.600001514, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.39999962, 2.5999999, 2.80000114),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o90 = Create("Script",{
["Parent"] = o89,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o90)
end))
o91 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(-0.800001025, 20.8729687, -0.500002265),
["Rotation"] = Vector3.new(-6.40330256e-007, 2.73961808e-011, 89.9999619),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.800001025, 20.8729687, -0.500002265, 7.03972944e-007, -1, 4.78153541e-013, 1, 6.91189484e-007, 1.11758709e-008, -1.98500061e-008, 4.65876903e-013, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.19999981, 2.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o92 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(-4.80000019, 19.6729622, -0.500001967),
["Rotation"] = Vector3.new(-5.93437971e-006, 4.63850392e-006, 90.0000076),
["Anchored"] = true,
["CFrame"] = CFrame.new(-4.80000019, 19.6729622, -0.500001967, -1.6514457e-007, -1, 8.09571645e-008, 1, -5.43850973e-008, 1.03574465e-007, -4.39698127e-008, 5.44412906e-008, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.5999999, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o93 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o84,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(15.1999989, 20.2729683, -1.1000011),
["Rotation"] = Vector3.new(-90, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.1999989, 20.2729683, -1.1000011, -7.18500681e-009, -8.09571929e-008, -1, 1, -5.43850973e-008, 1.03574465e-007, 5.21954746e-009, -1, 5.4441319e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.5999999, 1.79999971, 8),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o94 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.50000262, 19.4729748, 8.89999866),
["Rotation"] = Vector3.new(143.417313, -89.7676163, 44.233551),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.50000262, 19.4729748, 8.89999866, 4.57792879e-007, -4.45706036e-007, -0.999991775, -0.999990225, -5.07958191e-007, -3.3080434e-007, -5.41280144e-007, 0.99999398, -4.4570956e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.99999994, 1.79999995, 1.39999998),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o95 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.79999876, 22.6729641, 10.4999933),
["Rotation"] = Vector3.new(-1.02056141e-007, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.79999876, 22.6729641, 10.4999933, -5.96046448e-008, 1.78925568e-008, 1, -1.78121562e-009, 1, -1.78925568e-008, -1, -1.78121673e-009, -5.96046448e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999924, 3.4000001, 5.60000229),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o96 = Create("SpecialMesh",{
["Parent"] = o95,
["MeshType"] = Enum.MeshType.Wedge,
})
o97 = Create("Model",{
["Name"] = "TurretBase",
["Parent"] = o1,
})
o98 = Create("Part",{
["Name"] = "RHip",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 17.4729729, 4.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 17.4729729, 4.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o99 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 18.4729691, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 18.4729691, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(9, 1, 15),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o100 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.1000004, 16.4729805, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.1000004, 16.4729805, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(12.1999998, 0.99999994, 3.80000019),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o101 = Create("Part",{
["Name"] = "LHip",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 17.4729729, 16.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 17.4729729, 16.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o102 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.1000004, 16.4729691, 13),
["Rotation"] = Vector3.new(-90, -5.5740469e-007, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.1000004, 16.4729691, 13, -1, -2.36306015e-008, -9.72854686e-009, -4.29504183e-008, 0, 1, 4.48022242e-009, 1, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(12.1999998, 1.20000005, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o103 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.1000004, 16.4729691, 8),
["Rotation"] = Vector3.new(-90, -0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.1000004, 16.4729691, 8, 1, 0, -0, 0, 0, 1, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(12.1999998, 1.20000005, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o104 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 17.4729691, 7),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 17.4729691, 7, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(9, 1, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o105 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.00000572, 16.4729748, 8.00000763),
["Rotation"] = Vector3.new(179.999985, -6.48816297e-007, -8.53766051e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.00000572, 16.4729748, 8.00000763, 0.999994814, 1.49009523e-007, -1.13239809e-008, 1.23080454e-007, -0.999990344, -3.51443191e-007, -1.13240217e-008, 3.10377544e-007, -0.999995112),
["Size"] = Vector3.new(2, 0.999999881, 1.20000005),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o106 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.99999523, 16.4729748, 13),
["Rotation"] = Vector3.new(88.1544724, -89.8154831, -91.7188034),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.99999523, 16.4729748, 13, -1.13240519e-008, 3.77369929e-007, -0.999994814, 1.23081648e-007, -0.999990344, -3.51439837e-007, -0.999995112, -1.64149554e-007, 1.13239844e-008),
["Size"] = Vector3.new(1.20000005, 0.999999881, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o107 = Create("Part",{
["Name"] = "RotBase",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.59999943, 19.4729652, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.59999943, 19.4729652, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.39999962, 1, 6.20000029),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o108 = Create("Script",{
["Parent"] = o107,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o108)
end))
o109 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.00000095, 16.4729824, 10.5),
["Rotation"] = Vector3.new(-90, 5.12264196e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.00000095, 16.4729824, 10.5, 2.56391743e-008, -0.999999106, 8.94069672e-007, 5.39099716e-008, 8.94069672e-007, 0.999998093, -0.999999046, -4.2288562e-008, 1.58340896e-009),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.79999971, 2, 0.99999994),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o110 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(11.6999998, 17.4729691, 4.5),
["Rotation"] = Vector3.new(-180, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(11.6999998, 17.4729691, 4.5, 9.56532844e-008, 1.78813934e-007, 1, -3.67896291e-008, -1.00000024, 2.08616257e-007, 1.00000012, 7.99034794e-009, -1.09597288e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 0.99999994, 2.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o111 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(11.699996, 17.4729614, 16.4999943),
["Rotation"] = Vector3.new(-180, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(11.699996, 17.4729614, 16.4999943, 9.59009157e-008, 2.65240669e-006, 1.0000037, -4.95392616e-009, -1.00000799, 2.68220901e-006, 1.00000393, 1.53721906e-008, -1.34950113e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 0.99999994, 2.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o112 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 17.9729729, 2.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 17.9729729, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(9, 2, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o113 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.80000162, 17.4729671, 16.4999981),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.80000162, 17.4729671, 16.4999981, -1.17238784e-007, -1.28149986e-006, -1.00000107, 1.87693825e-008, -1.00000262, 1.1920929e-006, -1.00000119, -7.91746402e-009, 1.41310124e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 0.99999994, 1.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o114 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.80000162, 17.4729671, 4.50000191),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.80000162, 17.4729671, 4.50000191, -1.17238784e-007, -1.28149986e-006, -1.00000107, 1.87693825e-008, -1.00000262, 1.1920929e-006, -1.00000119, -7.91746402e-009, 1.41310124e-007),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 0.99999994, 1.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o115 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 17.9729691, 18.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 17.9729691, 18.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(9, 2, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o116 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 17.4729691, 14),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 17.4729691, 14, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(9, 1, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o117 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(14.6000004, 17.9729805, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(14.6000004, 17.9729805, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.20000005, 2, 6.19999981),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o118 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.70000052, 17.9729805, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.70000052, 17.9729805, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.60000014, 2, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o119 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.69999552, 17.9729633, 4.99998999),
["Rotation"] = Vector3.new(-90.0000076, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.69999552, 17.9729633, 4.99998999, -3.07949719e-008, -5.96048721e-008, 1.00000346, -1.00000644, -1.29921318e-007, 6.95391122e-009, 1.17245548e-007, -1.00000322, -8.94072585e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.99999976, 6, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o120 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.69999981, 17.9729691, 15.999999),
["Rotation"] = Vector3.new(90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.69999981, 17.9729691, 15.999999, -8.44520827e-008, 2.42193113e-014, 1, 1, 0, 1.10043885e-007, 1.78886523e-008, 1, -2.42193147e-014),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.99999976, 6, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o121 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(14.6999998, 17.9729691, 4.69999981),
["Rotation"] = Vector3.new(-90, 0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(14.6999998, 17.9729691, 4.69999981, 1.31480844e-008, 1, 0, 2.19134719e-008, 0, 1, 1, -2.59257238e-008, -4.49132251e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.4000001, 3.4000001, 2.00000024),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o122 = Create("Part",{
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 17.4729805, 10.5),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 17.4729805, 10.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(9, 1, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o123 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o97,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(14.6999998, 17.9729691, 16.2999992),
["Rotation"] = Vector3.new(-90, 0, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(14.6999998, 17.9729691, 16.2999992, 1.31480844e-008, 1, 0, 2.19134719e-008, 0, 1, 1, -2.59257238e-008, -4.49132251e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.4000001, 3.4000001, 2.00000024),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o124 = Create("Model",{
["Name"] = "LLeg",
["Parent"] = o97,
})
o125 = Create("Model",{
["Name"] = "Upper",
["Parent"] = o124,
})
o126 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 9.5, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 9.5, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(4, 4, 4),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o127 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999897, 10.6729889, 18.2999992),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999897, 10.6729889, 18.2999992, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.99999994, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o128 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999859, 14.0729828, 14.2999983),
["Rotation"] = Vector3.new(91.4831009, -89.795372, 91.9953461),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999859, 14.0729828, 14.2999983, -6.96264451e-008, -1.99849478e-006, -0.999993622, -4.76582045e-008, 0.99999249, -2.05637571e-006, 0.99999547, -1.19403012e-008, -5.32411804e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 5.80000019, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o129 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999907, 10.6730032, 14.3000021),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999907, 10.6730032, 14.3000021, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.99999994, 2.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o130 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 10.0729837, 14.3000002),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 10.0729837, 14.3000002, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.200000003, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o131 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.49998379, 10.0729828, 18.2999992),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.49998379, 10.0729828, 18.2999992, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.200000003, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o132 = Create("Part",{
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 10.9729919, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 10.9729919, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 2, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o133 = Create("Part",{
["Name"] = "Hip",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 17.4729805, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 17.4729805, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o134 = Create("Script",{
["Parent"] = o133,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o134)
end))
o135 = Create("Part",{
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 14.4729881, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 14.4729881, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 5, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o136 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 13.4729805, 18.2999992),
["Rotation"] = Vector3.new(180, -0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 13.4729805, 18.2999992, 0, -1, -0, -1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o137 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 13.4729881, 14.3000002),
["Rotation"] = Vector3.new(-5.12264569e-006, 1.15153643e-005, 90.0000153),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 13.4729881, 14.3000002, -3.07173877e-007, -1, 2.0098102e-007, 1, -3.07173849e-007, 8.94070311e-008, -8.94069672e-008, 2.00981049e-007, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o138 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999878, 14.0729742, 18.2999973),
["Rotation"] = Vector3.new(91.4831009, -89.795372, 91.9953461),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999878, 14.0729742, 18.2999973, -6.96264451e-008, -1.99849478e-006, -0.999993622, -4.76582045e-008, 0.99999249, -2.05637571e-006, 0.99999547, -1.19403012e-008, -5.32411804e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 5.80000019, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o139 = Create("Part",{
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 13.4729881, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 13.4729881, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 7, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o140 = Create("Part",{
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 13.5730009, 14.3000002),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 13.5730009, 14.3000002, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 6.79999971, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o141 = Create("Part",{
["Parent"] = o125,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 13.5729885, 18.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 13.5729885, 18.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 6.80000019, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o142 = Create("Model",{
["Name"] = "Lower",
["Parent"] = o124,
})
o143 = Create("Part",{
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 6, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 6, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 6, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o144 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 3.5, 14.3000011),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 3.5, 14.3000011, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o145 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 6, 14.3000011),
["Rotation"] = Vector3.new(-5.12264569e-006, 1.15153643e-005, 90.0000153),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 6, 14.3000011, -3.07173877e-007, -1, 2.0098102e-007, 1, -3.07173849e-007, 8.94070311e-008, -8.94069672e-008, 2.00981049e-007, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o146 = Create("Part",{
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 6.50000811, 14.3000011),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 6.50000811, 14.3000011, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 5, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o147 = Create("Part",{
["Name"] = "Ankle",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 3.00000572, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 3.00000572, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(4, 4, 4),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o148 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 5.80000782, 14.3000011),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 5.80000782, 14.3000011, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.59999967, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o149 = Create("Part",{
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 6.49999475, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 6.49999475, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 5, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o150 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 8.30000782, 14.3000011),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 8.30000782, 14.3000011, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999881, 1.39999986, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o151 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.49998379, 3.49999547, 18.2999973),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.49998379, 3.49999547, 18.2999973, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o152 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 5.99999475, 18.2999992),
["Rotation"] = Vector3.new(180, -0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 5.99999475, 18.2999992, 0, -1, -0, -1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o153 = Create("Part",{
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 6.49999475, 18.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 6.49999475, 18.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 5, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o154 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 9.4999876, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 9.4999876, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o155 = Create("Script",{
["Parent"] = o154,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o155)
end))
o156 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 8.29999447, 18.2999992),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 8.29999447, 18.2999992, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999881, 1.39999986, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o157 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o142,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 5.79999495, 18.2999992),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 5.79999495, 18.2999992, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.59999967, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o158 = Create("Model",{
["Name"] = "Foot",
["Parent"] = o124,
})
o159 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.99997425, 1.49997163, 12.9999981),
["Rotation"] = Vector3.new(-4.09813292e-005, 1.41741848e-005, 4.72486136e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.99997425, 1.49997163, 12.9999981, 0.999993563, -8.24638562e-008, 2.47386197e-007, 8.48195612e-008, 0.999996662, 7.1525676e-007, -2.54453937e-007, -6.85454324e-007, 0.999996781),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o160 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 0.5, 14.3000002),
["Rotation"] = Vector3.new(-90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 0.5, 14.3000002, 0, 0, 1, -1, 0, 0, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o161 = Create("Part",{
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 0.500008047, 16.2999992),
["Rotation"] = Vector3.new(-9.78702587e-007, -1.70754777e-006, -2.65248491e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 0.500008047, 16.2999992, 1, 4.62945948e-008, -2.98023295e-008, -4.62945948e-008, 1, 1.70815824e-008, 2.98023295e-008, -1.70815806e-008, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o162 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9, 0.5, 19.5999985),
["Rotation"] = Vector3.new(-180, -1.70754731e-006, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(9, 0.5, 19.5999985, 0, 1, -2.98023224e-008, 1, 0, 0, 0, -2.98023224e-008, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o163 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.50000811, 1.49998784, 16.2999916),
["Rotation"] = Vector3.new(9.78696562e-007, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.50000811, 1.49998784, 16.2999916, -6.76336711e-008, -7.9280035e-008, 1, 1.70814776e-008, 1, 7.92800421e-008, -1, 1.70814847e-008, -6.76336711e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o164 = Create("Part",{
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.5, 0.500005007, 16.2999992),
["Rotation"] = Vector3.new(180, 1.43299491e-032, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.5, 0.500005007, 16.2999992, -1, -1.18121391e-020, 2.5010479e-034, 9.70282859e-021, 1, -3.83026943e-014, 2.5010479e-034, 4.6629367e-014, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o165 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 1.5, 18.2999992),
["Rotation"] = Vector3.new(-90, -1.70754731e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 1.5, 18.2999992, -8.8817842e-016, -1, -2.98023224e-008, 0, -2.98023224e-008, 1, -1, 8.8817842e-016, 0),
["Size"] = Vector3.new(1, 3, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o166 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7, 1.5, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(7, 1.5, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o167 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.49999857, 1.50000024, 14.3000002),
["Rotation"] = Vector3.new(-180, -0.000145142534, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.49999857, 1.50000024, 14.3000002, 1.05365871e-007, -1, -2.53321514e-006, -1, -1.05366524e-007, 2.5350414e-007, -2.53504425e-007, 2.53321514e-006, -1),
["Size"] = Vector3.new(1, 3, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o168 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 0.5, 18.2999992),
["Rotation"] = Vector3.new(90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 0.5, 18.2999992, 0, -2.98023224e-008, 1, 1, -9.43689571e-016, 0, 8.32667268e-016, 1, 2.98023224e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o169 = Create("Part",{
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.99998045, 0.500014901, 13.0000067),
["Rotation"] = Vector3.new(-5.12266233e-005, 1.17442678e-005, 3.91489357e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.99998045, 0.500014901, 13.0000067, 0.999993563, -6.83273385e-008, 2.04976146e-007, 7.06829937e-008, 0.999996662, 8.94070354e-007, -2.12043744e-007, -8.64267975e-007, 0.999996781),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o170 = Create("Part",{
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.5, 1, 16.2999992),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.5, 1, 16.2999992, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o171 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.5, 1.50000501, 16.2999992),
["Rotation"] = Vector3.new(-3.721249e-012, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.5, 1.50000501, 16.2999992, -6.39312807e-034, -1.64526224e-020, -1, 6.49480469e-014, 1, 1.64526224e-020, 1, 6.49480469e-014, 6.39312807e-034),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o172 = Create("Part",{
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7, 0.5, 19.5999985),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(7, 0.5, 19.5999985, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o173 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.5, 1, 14.3000002),
["Rotation"] = Vector3.new(-90, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.5, 1, 14.3000002, 0, 0, -1, 1, 0, 0, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o174 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9, 1.49999785, 19.600008),
["Rotation"] = Vector3.new(-90.0000076, 2.91890871e-007, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(9, 1.49999785, 19.600008, -0.999993563, -1.52536597e-008, 5.09445686e-009, 7.45053486e-009, 1.49011612e-007, 0.999996662, -8.1855136e-009, 0.999996781, -1.78813934e-007),
["Size"] = Vector3.new(2, 1.5999999, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o175 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.5, 1.00000107, 18.2999992),
["Rotation"] = Vector3.new(-180, 1.61238745e-006, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.5, 1.00000107, 18.2999992, -2.98022815e-008, 0.999999464, 2.81414696e-008, 0.999998927, -2.68378069e-015, 1.42108403e-014, 7.10542736e-015, 2.81414856e-008, -0.999999464),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o176 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.99996662, 1.50001371, 13.0000057),
["Rotation"] = Vector3.new(-158.801041, 89.7944183, 68.6915283),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.99996662, 1.50001371, 13.0000057, 6.83273385e-008, -1.75174023e-007, 0.999993563, -0.999996662, -8.94070354e-007, 7.06830221e-008, 8.64267975e-007, -0.999996781, -1.82241521e-007),
["Size"] = Vector3.new(1, 1.5999999, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o177 = Create("Part",{
["Name"] = "Ankle",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 2.99999905, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 2.99999905, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 2, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o178 = Create("Script",{
["Parent"] = o177,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o178)
end))
o179 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.99996662, 0.500016987, 13.0000067),
["Rotation"] = Vector3.new(-5.12266233e-005, 1.17442678e-005, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.99996662, 0.500016987, 13.0000067, 6.83273385e-008, 0.999993563, 2.04976146e-007, -0.999996662, 7.06829937e-008, 8.94070354e-007, 8.64267975e-007, -2.12043744e-007, 0.999996781),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o180 = Create("Part",{
["Parent"] = o158,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7.5, 1, 16.2999992),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.5, 1, 16.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 2, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o181 = Create("Script",{
["Parent"] = o97,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
------------------------------------------------------------------------ > Script Start

	wait()

	pls = game:GetService'Players'
	lp = pls.LocalPlayer
	c = lp.Character
	mouse = lp:GetMouse()
	TurretBase = script.Parent
	Mech = TurretBase.Parent
	Mech.Parent = c
	TurretHead = Mech.TurretHead
	rs = game:GetService'RunService'
	LCannon = TurretHead.LCannon
	RCannon = TurretHead.RCannon
	B1 = TurretHead.LCannon.Barrel1
	B2 = TurretHead.RCannon.Barrel2
	B3 = TurretHead.LCannon.Barrel2
	B4 = TurretHead.RCannon.Barrel1
	LLeg = TurretBase.LLeg
	RLeg = TurretBase.RLeg
	isAttacking = false
	canFire = true
	MissileModel = Instance.new("Model",Mech)
	OldMissiles = Instance.new("Model",Mech)
	BulletModel = Instance.new("Model",Mech)
	FPS = 0
	Cannon = 0
	missileSpeed = 15
	missileDrop = .2
	bulletSpeed = 22

	Main = Instance.new("VehicleSeat",TurretBase)
	Main.MaxSpeed = 50
	Main.Transparency = 1

	local w = Instance.new("Weld",Main)
	w.Part0 = Main
	w.Part1 = TurretBase.RotBase
	w.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-90),0)

-------------------------------------

	RLegParts = {
		Foot = RLeg.Foot;
		Lower = RLeg.Lower;
		Upper = RLeg.Upper;
	}

	LLegParts = {
		Foot = LLeg.Foot;
		Lower = LLeg.Lower;
		Upper = LLeg.Upper;
	}

	Joints = {

	}

	Lights = {

	}

	Missiles = {

	}

	Cannons = {
		B1;
		B2;
		B3;
		B4;
	}

-------------------------------------

	for i,v in pairs (TurretHead:children()) do
		if v.ClassName ~= "Model" and v.Material == Enum.Material.Neon then
			Lights[#Lights + 1] = v
		end
	end

	for i,v in pairs (TurretHead:children()) do
		if v.ClassName == "Part" and v.BrickColor == BrickColor.new("Black") then
			Missiles[#Missiles + 1] = v
		end
	end

	e = Instance.new("Motor",TurretBase.RotBase)
	e.Part0 = TurretBase.RotBase
	e.Part1 = TurretHead.RotBase
	e.C0 = CFrame.new(0,0,0)
	Joints.Neck = e
	
	e = Instance.new("Motor",LCannon.Base)
	e.Part0 = LCannon.Base
	e.Part1 = TurretHead.LJoint
	e.C0 = CFrame.new(0,0,0)
	Joints.LeftArm = e

	e = Instance.new("Motor",RCannon.Base)
	e.Part0 = RCannon.Base
	e.Part1 = TurretHead.RJoint
	e.C0 = CFrame.new(0,0,0)
	Joints.RightArm = e

	e = Instance.new("Motor",TurretBase.LHip)
	e.Part0 = TurretBase.LHip
	e.Part1 = LLegParts.Upper.Hip
	e.C0 = CFrame.new(0,0,0)
	Joints.LHip = e

	e = Instance.new("Motor",TurretBase.RHip)
	e.Part0 = TurretBase.RHip
	e.Part1 = RLegParts.Upper.Hip
	e.C0 = CFrame.new(0,0,0)
	Joints.RHip = e

	e = Instance.new("Motor",LLegParts.Upper.Knee)
	e.Part0 = LLegParts.Upper.Knee
	e.Part1 = LLegParts.Lower.Knee
	e.C0 = CFrame.new(0,0,0)
	Joints.LKnee = e

	e = Instance.new("Motor",RLegParts.Upper.Knee)
	e.Part0 = RLegParts.Upper.Knee
	e.Part1 = RLegParts.Lower.Knee
	e.C0 = CFrame.new(0,0,0)
	Joints.RKnee = e

	e = Instance.new("Motor",LLegParts.Lower.Ankle)
	e.Part0 = LLegParts.Lower.Ankle
	e.Part1 = LLegParts.Foot.Ankle
	e.C0 = CFrame.new(0,0,0)
	Joints.LAnkle = e

	e = Instance.new("Motor",RLegParts.Lower.Ankle)
	e.Part0 = RLegParts.Lower.Ankle
	e.Part1 = RLegParts.Foot.Ankle
	e.C0 = CFrame.new(0,0,0)
	Joints.RAnkle = e

	wait()

	Mech.PrimaryPart = Main
	Mech:MoveTo(lp.Character.Head.CFrame.p + Vector3.new(0,25,0))

	Gyro = Instance.new("BodyGyro",TurretBase.RotBase)
	Gyro.MaxTorque = Vector3.new(1e5,1e5,1e5)

	Vel = Instance.new("BodyVelocity",TurretBase.RotBase)
	Vel.MaxForce = Vector3.new(1e9,0,1e9)
	Vel.P = 1e6

	Joints.LHip.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30))
	Joints.RHip.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30))
	Joints.LKnee.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(-60))
	Joints.RKnee.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(-60))
	Joints.LAnkle.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30))
	Joints.RAnkle.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30))

	createBullet = function(part)
		local FireSizes = {
			NumberSequenceKeypoint.new(0,3.12/1.2,0);
			NumberSequenceKeypoint.new(.2,3.32/1.2,0);
			NumberSequenceKeypoint.new(1,2.62/1.2,0);
		}
		local FireTransparencies = {
			NumberSequenceKeypoint.new(0,.869,0);
			NumberSequenceKeypoint.new(1,1,0);
		}
		local FireSize = NumberSequence.new(FireSizes)
		local FireTransparency = NumberSequence.new(FireTransparencies)
		local p = Instance.new("Part",BulletModel)
		p.Transparency = 1
		p.CanCollide = false
		p.Anchored = true
		p.FormFactor = "Custom"
		p.Name = "ActiveFlak"
		p.Size = Vector3.new(.2,.2,.2)
		p.CFrame = part.CFrame * CFrame.Angles(0,math.rad(-90),0)
		local Fire = Instance.new("ParticleEmitter",p)
		Fire.Color = ColorSequence.new(Color3.new(140/255,231/255,239/255),Color3.new(1,1,1))
		Fire.LightEmission = .86
		Fire.Size = FireSize
		Fire.EmissionDirection = "Front"
		Fire.Texture = "rbxassetid://344034524"
		Fire.Transparency = FireTransparency
		Fire.Acceleration = Vector3.new(0,0,100)
		Fire.LockedToPart = true
		Fire.Lifetime = NumberRange.new(.35,.35)
		Fire.Rate = 1000
		Fire.RotSpeed = NumberRange.new(100,100)
		Fire.Speed = NumberRange.new(125,125)
		local time = Instance.new("NumberValue",p)
		time.Value = 0
		time.Name = "Time"
		local Photon = Instance.new("PointLight",p)
		Photon.Color = Color3.new(.5,.5,1)
		Photon.Range = 11
		Photon.Brightness = .7
		local Value = Instance.new("NumberValue",p)
		Value.Name = "time"
	end

	getClosePlayers = function(pos,range)
		local returnMe = {}
		for i,v in pairs (pls:children()) do
			if v.ClassName == "Player" and workspace:FindFirstChild(v.Name) and v.Character ~= nil and (v.Character.Torso.Position - pos).magnitude < range then
				returnMe[#returnMe + 1] = v.Character
			end
		end
		return returnMe
	end

	mouse.Button1Down:connect(function()
		if canFire == true then
			canFire = false
			local isFiring = true
			local sounds = {278596476,278596452}
			mouse.Button1Up:connect(function()
				isFiring = false
			end)
			while isFiring == true do
				Cannon = Cannon + 1
				if Cannon%2 == 1 then
					local s = Instance.new("Sound",Main)
					s.Pitch = math.random(95,130)/100
					s.Volume = 1.5
					s.SoundId = "rbxassetid://"..sounds[math.random(1,2)]
					s:Play()
					createBullet(B1)
					wait(.1)
					createBullet(B2)
					spawn(function()
						wait(5)
						s:Destroy()
					end)
				else
					local s = Instance.new("Sound",Main)
					s.Pitch = math.random(95,130)/100
					s.Volume = 1.5
					s.SoundId = "rbxassetid://"..sounds[math.random(1,2)]
					s:Play()
					createBullet(B3)
					wait(.1)
					createBullet(B4)
					spawn(function()
						wait(5)
						s:Destroy()
					end)
				end
				wait(.095)
			end
			canFire = true
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "e" and isAttacking == false then
			isAttacking = true
			local Parts = {}
			for i = 1,3 do
				for x = 1,#Lights do
					Lights[x].BrickColor = BrickColor.new("Toothpaste")
				end
				local Ray = Ray.new(Main.CFrame.p,(mouse.Hit.p - Main.CFrame.p).unit * 785)
				local Hit,pos = workspace:FindPartOnRay(Ray,c)
				Parts[i] = Hit
				wait(.07)
				local e = Instance.new("Sound",Main)
				e.Volume = .4
				e.SoundId = "rbxassetid://131238032"
				e:Play()
				spawn(function()
					wait(1)
					e:Destroy()
				end)
				for i = 1,#Lights do
					Lights[i].BrickColor = BrickColor.new("Cyan")
				end
				wait()
			end
			local CharacterTorso = nil
			for i = 1,3 do
				hitPart = Parts[i]
				if CharacterTorso == nil and hitPart and hitPart.Parent and hitPart.Parent:FindFirstChild("Humanoid") and hitPart.Parent.Humanoid.Health ~= 0 and hitPart.Parent:FindFirstChild("Torso") then
					CharacterTorso = hitPart.Parent.Torso
					print(hitPart.Parent.Name)
					break
				end
			end
			wait(.2)
			if CharacterTorso then
				for i = 1,2 do
					local e = Instance.new("Sound",Main)
					e.Volume = .7
					e.Pitch = 1.01
					e.SoundId = "rbxassetid://161164363"
					e:Play()
					spawn(function()
						wait(1)
						e:Destroy()
					end)
					wait()
					for i = 1,#Lights do
						Lights[i].BrickColor = BrickColor.new("Really red")
					end
					wait(.15)
					for i = 1,#Lights do
						Lights[i].BrickColor = BrickColor.new("Cyan")
					end
				end
				for i = 1,#Lights do
					Lights[i].BrickColor = BrickColor.new("Cyan")
				end
				wait(.5)
				for i = 1,#Missiles do
					wait(.2)
					local x = Instance.new("Part",MissileModel)
					x.CanCollide = false
					x.Anchored = true
					x.FormFactor = "Custom"
					x.Material = "Neon"
					x.BrickColor = BrickColor.new("Hurricane grey")
					x.Size = Vector3.new(.9,.9,2)
					x.CFrame = Missiles[i].CFrame * CFrame.Angles(0,math.rad(-90),0)
					local z = Instance.new("PointLight",x)
					z.Color = Color3.new(1,1,0)
					z.Range = 20
					local e = Instance.new("Smoke",x)
					e.Color = Color3.new(.4,.4,.4)
					local s = Instance.new("Sound",x)
					s.Volume = math.random(90,100)/100
					s.Pitch = math.random(90,150)/100
					s.SoundId = "rbxassetid://160248505"
					s:Play()
					local t = Instance.new("ObjectValue",x)
					t.Value = CharacterTorso
					local e = Instance.new("NumberValue",x)
					e.Value = 0
					e.Name = "time"
					spawn(function()
						wait(10)
						s:Destroy()
					end)
				end
				wait(5)
				isAttacking = false
				local e = Instance.new("Sound",Main)
				e.Volume = .4
				e.Pitch = 1.2
				e.SoundId = "rbxassetid://138081500"
				e:Play()
				wait(3.9)
				e:Destroy()
			else
				isAttacking = false
			end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "r" and isAttacking == false then
			isAttacking = true
			wait(.5)
			for i = 1,#Missiles do
				wait(.2)
				local x = Instance.new("Part",MissileModel)
				x.CanCollide = false
				x.Anchored = true
				x.FormFactor = "Custom"
				x.Material = "Neon"
				x.BrickColor = BrickColor.new("Hurricane grey")
				x.Size = Vector3.new(.9,.9,2)
				x.CFrame = CFrame.new(Missiles[i].CFrame.p,(Main.CFrame.p-mouse.Hit.p).unit * 9999)
				local z = Instance.new("PointLight",x)
				z.Color = Color3.new(1,1,0)
				z.Range = 13
				local e = Instance.new("Smoke",x)
				e.Color = Color3.new(.4,.4,.4)
				local s = Instance.new("Sound",x)
				s.Volume = math.random(90,100)/100
				s.Pitch = math.random(90,150)/100
				s.SoundId = "rbxassetid://160248505"
				s:Play()
				local e = Instance.new("NumberValue",x)
				e.Value = 0
				e.Name = "time"
				spawn(function()
					wait(10)
					s:Destroy()
				end)
			end
			wait(3.7)
			isAttacking = false
			local e = Instance.new("Sound",Main)
			e.Volume = .4
			e.Pitch = 1.2
			e.SoundId = "rbxassetid://138081500"
			e:Play()
			wait(1)
			e:Destroy()
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "p" then
			Main.Anchored = true
			c.HumanoidRootPart.Anchored = true
			wait()
			c.HumanoidRootPart.CFrame = Main.CFrame
			wait()
			c.HumanoidRootPart.Anchored = false
			Main.Anchored = false
		end
	end)

	walkVal = 0
	footSet = 18
	devValue = 0
	lerp = 0
	Steer = 0
		
	explodeMissile = function(missile,pos)
		local r = Instance.new("Explosion",workspace)
		r.BlastPressure = 75
		r.BlastRadius = math.random(13,15)
		r.DestroyJointRadiusPercent = 0
		r.Position = pos
		r.Hit:connect(function(p)
			if p and p.Parent then
				local human = p.Parent:FindFirstChild("Humanoid")
				if human and human.Sit == false then
					human:TakeDamage(math.random(3,5))
				end
			end
		end)
		missile.Transparency = 1
		missile.PointLight:Destroy()
		missile.Smoke.Enabled = false
		missile.Parent = OldMissiles
		local x = Instance.new("Sound",missile)
		x.SoundId = "rbxassetid://172384107"
		x.Volume = .7
		x.Pitch = math.random(105,125)/100
		x:Play()
		spawn(function()
			wait(15)
			missile:Destroy()
		end)
	end

	spawn(function()
		while wait() do
			Steer = Steer + (Main.Steer * Main.Velocity.magnitude/-45)/2
			Gyro.CFrame = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(Steer),0)
			local leg2 = walkVal + math.pi
			if Main.Throttle ~= 0 then
				walkVal = walkVal + math.rad(10)
				Vel.Velocity = Vel.Velocity:lerp(Main.CFrame.lookVector * (33 + math.sin(math.sin(walkVal + leg2 + math.rad(20))) * 33) * Main.Throttle,.05/2)
				if math.abs(math.sin(walkVal + math.rad(12)) - 1) < .02 then
					local e = Instance.new("Sound",LLegParts.Foot.Ankle)
					e.Volume = .9
					e.Pitch = math.random(140,170)/100
					e.SoundId = "rbxassetid://180199793"
					e:Play()
					spawn(function()
						wait(2)
						e:Destroy()
					end)
				end
				if math.abs(math.sin(leg2 + math.rad(12)) - 1) < .05 then
					local e = Instance.new("Sound",RLegParts.Foot.Ankle)
					e.Volume = .9
					e.Pitch = math.random(140,170)/100
					e.SoundId = "rbxassetid://180199793"
					e:Play()
					spawn(function()
						wait(2)
						e:Destroy()
					end)
				end
			end
			if #BulletModel:children() ~= 0 then
				for i,v in pairs (BulletModel:children()) do
					local addVal = v.CFrame.lookVector.unit * bulletSpeed
					local ray = Ray.new(v.CFrame.p,addVal.unit * -bulletSpeed)
					local hit, pos = workspace:FindPartOnRay(ray,c)
					v.time.Value = v.time.Value + 1/30
					if ((pos - v.Position).magnitude < bulletSpeed and hit ~= nil) or v.time.Value > 3 then
						v:Destroy()
						local efx = Instance.new("Part",OldMissiles)
						efx.Anchored = true
						efx.Material = "Neon"
						efx.Transparency = .1
						efx.Size = Vector3.new(4,4,4)
						efx.BrickColor = BrickColor.new(1,1,1)
						efx.Anchored = true
						efx.CanCollide = false
						efx.Shape = "Ball"
						efx.Locked = true
						efx.CFrame = v.CFrame
						spawn(function()
							spawn(function()
								while rs.RenderStepped:wait() do
									efx.Size = efx.Size:lerp(Vector3.new(19,19,19),.07/(FPS/60))
									efx.CFrame = v.CFrame
									efx.Transparency = (efx.Size.x)/12
									if efx.Transparency >= .97 then
										break
									end
								end
								efx:Destroy()
							end)
							wait(.07/(FPS/60))
							local Explosion = Instance.new("Explosion",workspace)
							Explosion.BlastRadius = 17
							Explosion.BlastPressure = 0
							Explosion.Position = v.Position
							Explosion.Hit:connect(function(part)
								if part.Parent:FindFirstChild'Humanoid' and part.Parent.ClassName ~= "Hat" and part.Parent ~= c and part.Parent.Humanoid.Sit == false then
									part.Parent.Humanoid:TakeDamage(1,2)
								elseif part.Name ~= "Main" and part.ClassName ~= "BasePart" and part.Anchored == false and part.Locked == false and part.Parent ~= FlakModel and part.Parent ~= RTurret and part.Parent ~= RCannon and part.Parent ~= RBody and part.Parent ~= Tank then
									if not part:FindFirstChild("HP") then
										local e = Instance.new("NumberValue",part)
										e.Name = "HP"
										e.Value = part:GetMass()
										e.Value = e.Value - math.random(math.ceil(part:GetMass()/25),math.abs(math.ceil(part:GetMass()/20 * 1.5)))
									else
										part.HP.Value = part.HP.Value - math.random(1,2)
										if part.HP.Value < 0 and part:GetMass() > 8 then
											part:BreakJoints()
											local conn = part:GetConnectedParts()
											for i = 1,#conn do
												if not conn[i]:FindFirstChild("HP") then
													local e = Instance.new("NumberValue",part)
													e.Name = "HP"
													e.Value = part:GetMass()
													e.Value = e.Value - 1
												else
													conn[i].HP.Value = conn[i].HP.Value - 1
												end
											end
										end
									end
								end
							end)
							wait()
							Explosion:Destroy()
							wait(5)
						end)
					else
						v.CFrame = CFrame.new(v.CFrame.p - addVal,v.CFrame.p + addVal)
					end
				end
			end
			if #MissileModel:children() ~= 0 then
				for i,v in pairs (MissileModel:children()) do
					if v:FindFirstChild("Value") then
						v.time.Value = v.time.Value + 1/30
						local addVal = (v.CFrame.lookVector.unit * 13 + (v.CFrame.p - v.Value.Value.CFrame.p).unit * 2)/15 * missileSpeed
						addVal = addVal + Vector3.new(0,missileDrop,0)
						local ray = Ray.new(v.CFrame.p,addVal.unit * missileSpeed)
						local hit, pos = workspace:FindPartOnRay(ray,c)
						if v.time.Value > 5 then
							v.Value:Destroy()
							v.time.Value = 0
						end
						if (pos - v.Position).magnitude < missileSpeed and hit ~= nil then
							explodeMissile(v,pos)
						else
							v.CFrame = CFrame.new(v.CFrame.p - addVal,v.CFrame.p + addVal)
						end
					else
						v.time.Value = v.time.Value + 1/30
						local addVal = v.CFrame.lookVector.unit * missileSpeed
						addVal = addVal + Vector3.new(0,missileDrop,0)
						local ray = Ray.new(v.CFrame.p,addVal.unit * missileSpeed)
						local hit, pos = workspace:FindPartOnRay(ray,c)
						if ((pos - v.Position).magnitude < missileSpeed and hit ~= nil) or v.time.Value > 4 then
							explodeMissile(v,pos)
						else
							v.CFrame = CFrame.new(v.CFrame.p - addVal,v.CFrame.p + addVal)
						end
					end
				end
			end
		end
	end)
	
	rs.RenderStepped:connect(function()
		FPS = 1/rs.RenderStepped:wait()
		devValue = FPS/60
		Steer = Steer + (Main.Steer * Main.Velocity.magnitude/-45)/devValue
		Gyro.CFrame = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(Steer),0)
		if Main.Throttle ~= 0 then
			lerp = .85/devValue
			local leg2 = walkVal + math.pi
			Vel.Velocity = Vel.Velocity:lerp(Main.CFrame.lookVector * (29 + math.sin(math.sin(walkVal + leg2 + math.rad(20))) * 28) * Main.Throttle,.05/devValue)
			Joints.LHip.C0 = Joints.LHip.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.sin(walkVal)/1.3/1.2 + math.rad(20) + Main.Steer * -.25/3),lerp)
			Joints.RHip.C0 = Joints.RHip.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.sin(leg2)/1.3/1.2 + math.rad(20) + Main.Steer * .25/3),lerp)
			Joints.LKnee.C0 = Joints.LKnee.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.sin(-walkVal + math.rad(50)) * .5/1.2 - math.rad(50) + Main.Steer * .5/3),lerp)
			Joints.RKnee.C0 = Joints.RKnee.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.sin(-leg2 + math.rad(50)) * .5/1.2 - math.rad(50) + Main.Steer * -.5/3),lerp)
			Joints.LAnkle.C0 = Joints.LAnkle.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.sin(-walkVal - math.rad(27)) * .8/2 + math.rad(28) + Main.Steer * -.25/3),lerp)
			Joints.RAnkle.C0 = Joints.RAnkle.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.sin(-leg2 - math.rad(27)) * .8/2 + math.rad(28) + Main.Steer * .25/3),lerp)
		else
			Vel.Velocity = Vel.Velocity:lerp(Vector3.new(),.5/devValue)
			lerp = .15/devValue
			Joints.LHip.C0 = Joints.LHip.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30)),lerp)
			Joints.RHip.C0 = Joints.RHip.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30)),lerp)
			Joints.LKnee.C0 = Joints.LKnee.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(-60)),lerp)
			Joints.RKnee.C0 = Joints.RKnee.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(-60)),lerp)
			Joints.LAnkle.C0 = Joints.LAnkle.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30)),lerp)
			Joints.RAnkle.C0 = Joints.RAnkle.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(30)),lerp)
		end
		Joints.Neck.C0 = CFrame.new(Vector3.new(),TurretBase.RotBase.CFrame:toObjectSpace(CFrame.new(mouse.Hit.p.x,TurretBase.RotBase.Position.y,mouse.Hit.p.z)).p) * CFrame.Angles(0,math.rad(-90),0)
		Joints.RightArm.C0 = CFrame.new(Vector3.new()) * CFrame.Angles(0,0,(mouse.Hit.p.y - Joints.RightArm.Parent.CFrame.p.y)/(mouse.Hit.p - Joints.RightArm.Parent.Position).magnitude)
		Joints.LeftArm.C0 = CFrame.new(Vector3.new()) * CFrame.Angles(0,0,(mouse.Hit.p.y - Joints.RightArm.Parent.CFrame.p.y)/(mouse.Hit.p - Joints.LeftArm.Parent.Position).magnitude * -1)
	end)
	
------------------------------------------------------------------------ > Script End
end,o181)
end))
o182 = Create("Model",{
["Name"] = "RLeg",
["Parent"] = o97,
})
o183 = Create("Model",{
["Name"] = "Upper",
["Parent"] = o182,
})
o184 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 9.5, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 9.5, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(4, 4, 4),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o185 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999897, 10.6729889, 6.90000057),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999897, 10.6729889, 6.90000057, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.99999994, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o186 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999859, 14.0729828, 2.89999795),
["Rotation"] = Vector3.new(91.4831009, -89.795372, 91.9953461),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999859, 14.0729828, 2.89999795, -6.96264451e-008, -1.99849478e-006, -0.999993622, -4.76582045e-008, 0.99999249, -2.05637571e-006, 0.99999547, -1.19403012e-008, -5.32411804e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 5.80000019, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o187 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999907, 10.6730032, 2.900002),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999907, 10.6730032, 2.900002, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.99999994, 2.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o188 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 10.0729837, 2.9000001),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 10.0729837, 2.9000001, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.200000003, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o189 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.49998379, 10.0729828, 6.89999866),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.49998379, 10.0729828, 6.89999866, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 0.200000003, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o190 = Create("Part",{
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 10.9729919, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 10.9729919, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 2, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o191 = Create("Part",{
["Name"] = "Hip",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 17.4729805, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 17.4729805, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o192 = Create("Script",{
["Parent"] = o191,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o192)
end))
o193 = Create("Part",{
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 14.4729881, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 14.4729881, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 5, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o194 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 13.4729805, 6.89999962),
["Rotation"] = Vector3.new(180, -0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 13.4729805, 6.89999962, 0, -1, -0, -1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o195 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 13.4729881, 2.9000001),
["Rotation"] = Vector3.new(-5.12264569e-006, 1.15153643e-005, 90.0000153),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 13.4729881, 2.9000001, -3.07173877e-007, -1, 2.0098102e-007, 1, -3.07173849e-007, 8.94070311e-008, -8.94069672e-008, 2.00981049e-007, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o196 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.2999878, 14.0729742, 6.89999723),
["Rotation"] = Vector3.new(91.4831009, -89.795372, 91.9953461),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.2999878, 14.0729742, 6.89999723, -6.96264451e-008, -1.99849478e-006, -0.999993622, -4.76582045e-008, 0.99999249, -2.05637571e-006, 0.99999547, -1.19403012e-008, -5.32411804e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 5.80000019, 2.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o197 = Create("Part",{
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 13.4729881, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 13.4729881, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 7, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o198 = Create("Part",{
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 13.5730009, 2.9000001),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 13.5730009, 2.9000001, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 6.79999971, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o199 = Create("Part",{
["Parent"] = o183,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 13.5729885, 6.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 13.5729885, 6.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 6.80000019, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o200 = Create("Model",{
["Name"] = "Foot",
["Parent"] = o182,
})
o201 = Create("Part",{
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.99998045, 0.500014901, 1.60000706),
["Rotation"] = Vector3.new(-5.12266233e-005, 1.17442678e-005, 3.91489357e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.99998045, 0.500014901, 1.60000706, 0.999993563, -6.83273385e-008, 2.04976146e-007, 7.06829937e-008, 0.999996662, 8.94070354e-007, -2.12043744e-007, -8.64267975e-007, 0.999996781),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o202 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 0.5, 2.9000001),
["Rotation"] = Vector3.new(-90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 0.5, 2.9000001, 0, 0, 1, -1, 0, 0, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o203 = Create("Part",{
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 0.500008047, 4.89999962),
["Rotation"] = Vector3.new(-9.78702587e-007, -1.70754777e-006, -2.65248491e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 0.500008047, 4.89999962, 1, 4.62945948e-008, -2.98023295e-008, -4.62945948e-008, 1, 1.70815824e-008, 2.98023295e-008, -1.70815806e-008, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o204 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9, 0.5, 8.19999981),
["Rotation"] = Vector3.new(-180, -1.70754731e-006, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(9, 0.5, 8.19999981, 0, 1, -2.98023224e-008, 1, 0, 0, 0, -2.98023224e-008, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o205 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.50000811, 1.49999595, 4.89999247),
["Rotation"] = Vector3.new(121.100662, 89.8123322, 138.915115),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.50000811, 1.49999595, 4.89999247, -3.7831267e-008, -3.29847474e-008, 0.999994636, 9.76996262e-015, 0.999991953, -1.33096894e-008, -0.99999541, -1.70814367e-008, -8.02912581e-009),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o206 = Create("Part",{
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.5, 0.500005007, 4.89999962),
["Rotation"] = Vector3.new(180, 1.77514252e-032, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.5, 0.500005007, 4.89999962, -1, -1.30777255e-020, 3.09820822e-034, 1.09684149e-020, 1, -4.3298698e-014, 3.09820822e-034, 5.16253706e-014, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o207 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 1.5, 6.89999962),
["Rotation"] = Vector3.new(-90, -1.70754731e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 1.5, 6.89999962, -8.8817842e-016, -1, -2.98023224e-008, 0, -2.98023224e-008, 1, -1, 8.8817842e-016, 0),
["Size"] = Vector3.new(1, 3, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o208 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7, 1.5, 8.19999981),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(7, 1.5, 8.19999981, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o209 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.49999857, 1.50000024, 2.89999938),
["Rotation"] = Vector3.new(-180, -0.000145142534, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.49999857, 1.50000024, 2.89999938, 1.05365871e-007, -1, -2.53321514e-006, -1, -1.05366524e-007, 2.5350414e-007, -2.53504425e-007, 2.53321514e-006, -1),
["Size"] = Vector3.new(1, 3, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o210 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.5, 0.5, 6.89999962),
["Rotation"] = Vector3.new(90, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5, 0.5, 6.89999962, 0, -2.98023224e-008, 1, 1, -9.43689571e-016, 0, 8.32667268e-016, 1, 2.98023224e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o211 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(6.9999752, 1.49996471, 1.60001564),
["Rotation"] = Vector3.new(-3.92737747e-005, 1.4579181e-005, 4.85985856e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.9999752, 1.49996471, 1.60001564, 0.999993563, -8.48199875e-008, 2.54454704e-007, 8.71757067e-008, 0.999996662, 6.85454438e-007, -2.61522445e-007, -6.55652002e-007, 0.999996781),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o212 = Create("Part",{
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.5, 1, 4.89999962),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.5, 1, 4.89999962, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o213 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12.5, 1.50000501, 4.89999962),
["Rotation"] = Vector3.new(-1.43124965e-012, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.5, 1.50000501, 4.89999962, -1.19432063e-034, -6.32793169e-021, -1, 2.49800181e-014, 1, 6.32793169e-021, 1, 2.49800181e-014, 1.19432063e-034),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o214 = Create("Part",{
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7, 0.5, 8.19999981),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(7, 0.5, 8.19999981, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1.60000014),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o215 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.5, 1, 2.9000001),
["Rotation"] = Vector3.new(-90, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.5, 1, 2.9000001, 0, 0, -1, 1, 0, 0, 0, -1, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o216 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(9, 1.49999785, 8.20000648),
["Rotation"] = Vector3.new(-90.0000076, 2.91890871e-007, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(9, 1.49999785, 8.20000648, -0.999993563, -1.52536597e-008, 5.09445686e-009, 7.45053486e-009, 1.49011612e-007, 0.999996662, -8.1855136e-009, 0.999996781, -1.78813934e-007),
["Size"] = Vector3.new(2, 1.5999999, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o217 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(10.5, 1.00000107, 6.89999914),
["Rotation"] = Vector3.new(-180, 1.61238745e-006, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(10.5, 1.00000107, 6.89999914, -2.98022815e-008, 0.999999464, 2.81414696e-008, 0.999998927, -2.68378069e-015, 1.42108403e-014, 7.10542736e-015, 2.81414856e-008, -0.999999464),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o218 = Create("CornerWedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.99996662, 1.50001371, 1.60000563),
["Rotation"] = Vector3.new(-158.801041, 89.7944183, 68.6915283),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.99996662, 1.50001371, 1.60000563, 6.83273385e-008, -1.75174023e-007, 0.999993563, -0.999996662, -8.94070354e-007, 7.06830221e-008, 8.64267975e-007, -0.999996781, -1.82241521e-007),
["Size"] = Vector3.new(1, 1.5999999, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o219 = Create("Part",{
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(7.5, 1, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.5, 1, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 2, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o220 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.99996662, 0.500016987, 1.60000753),
["Rotation"] = Vector3.new(-5.12266233e-005, 1.17442678e-005, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.99996662, 0.500016987, 1.60000753, 6.83273385e-008, 0.999993563, 2.04976146e-007, -0.999996662, 7.06829937e-008, 8.94070354e-007, 8.64267975e-007, -2.12043744e-007, 0.999996781),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1.5999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o221 = Create("Part",{
["Name"] = "Ankle",
["Parent"] = o200,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 2.99999905, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 2.99999905, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 2, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o222 = Create("Script",{
["Parent"] = o221,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o222)
end))
o223 = Create("Model",{
["Name"] = "Lower",
["Parent"] = o182,
})
o224 = Create("Part",{
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 6, 4.89999962),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 6, 4.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 6, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o225 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 3.5, 2.90000057),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 3.5, 2.90000057, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o226 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 6, 2.90000057),
["Rotation"] = Vector3.new(-5.12264569e-006, 1.15153643e-005, 90.0000153),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 6, 2.90000057, -3.07173877e-007, -1, 2.0098102e-007, 1, -3.07173849e-007, 8.94070311e-008, -8.94069672e-008, 2.00981049e-007, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o227 = Create("Part",{
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 6.50000811, 2.90000057),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 6.50000811, 2.90000057, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 5, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o228 = Create("Part",{
["Name"] = "Ankle",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 3.00000572, 4.89999914),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 3.00000572, 4.89999914, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(4, 4, 4),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o229 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 5.80000782, 2.90000057),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 5.80000782, 2.90000057, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.59999967, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o230 = Create("Part",{
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 6.49999475, 4.89999914),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 6.49999475, 4.89999914, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 5, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o231 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 8.30000782, 2.90000057),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 8.30000782, 2.90000057, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999881, 1.39999986, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o232 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.49998379, 3.49999547, 6.89999723),
["Rotation"] = Vector3.new(-29.3821964, -89.7779465, 138.694763),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.49998379, 3.49999547, 6.89999723, -2.98019103e-008, -2.61864432e-008, -0.99999249, -5.81066715e-008, -0.999995768, 5.23729646e-008, -0.999996066, 5.81066857e-008, 9.30146058e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 5),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o233 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.5, 5.99999475, 6.89999914),
["Rotation"] = Vector3.new(180, -0, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.5, 5.99999475, 6.89999914, 0, -1, -0, -1, 0, -0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6, 1, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o234 = Create("Part",{
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8.5, 6.49999475, 6.89999914),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.5, 6.49999475, 6.89999914, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5, 5, 1),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o235 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(8, 9.4999876, 4.89999914),
["Anchored"] = true,
["CFrame"] = CFrame.new(8, 9.4999876, 4.89999914, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4, 1, 3),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o236 = Create("Script",{
["Parent"] = o235,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local weldTo = script.Parent
local weldModel = Instance.new("Model",weldTo)
weldModel.Name = "Welds"

makeWeld = function(part1,part0)
	local w = Instance.new("Weld",weldModel)
	w.Part0 = part0
	w.Part1 = part1
	local CFrameOrigin = CFrame.new(part0.Position)
	local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
	local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
	w.C0 = CFrame0
	w.C1 = CFrame1
end

for i,v in pairs (weldTo.Parent:children()) do
	if v.ClassName == "Part" or v.Name == "Part" and v ~= weldTo then
		makeWeld(v,weldTo)
		v.Anchored = false
	end
end

weldTo.Anchored = false
end,o236)
end))
o237 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 8.29999447, 6.89999914),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 8.29999447, 6.89999914, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.999999881, 1.39999986, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
})
o238 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o223,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(12, 5.79999495, 6.89999914),
["Rotation"] = Vector3.new(-180, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12, 5.79999495, 6.89999914, 0, 0, -1, 0, -1, -0, -1, 0, -0),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 3.59999967, 2),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
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
