wait(1)
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
["Name"] = "Exo",
["Parent"] = mas,
})
o2 = Create("Model",{
["Name"] = "Arm2",
["Parent"] = o1,
})
o3 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.869705, -3773.43774, 120.610077),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.869705, -3773.43774, 120.610077, -5.96046448e-008, 0, -1, 0, 1, 0, 1, 0, -5.96046448e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o4 = Create("Part",{
["Name"] = "Arm2",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.412918, -3773.6438, 121.232147),
["Rotation"] = Vector3.new(-0.014556854, -89.7529221, -49.7251282),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412918, -3773.6438, 121.232147, 8.94069672e-007, 1.05518848e-006, -0.999990702, 1.04680657e-006, 1.00000596, 9.31322575e-010, 0.999994159, 2.34832987e-006, 3.66568565e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o5 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o32,
})
o6 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o34,
})
o7 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o22,
})
o8 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o20,
})
o9 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o24,
})
o10 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o18,
})
o11 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o26,
})
o12 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o30,
})
o13 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o28,
})
o14 = Create("Weld",{
["Name"] = "small brick",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o36,
})
o15 = Create("Weld",{
["Name"] = "ARMPART",
["Parent"] = o4,
["Part0"] = o4,
["Part1"] = o16,
})
o16 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.408524, -3773.68286, 122.010712),
["Rotation"] = Vector3.new(90.0000687, 4.29554857e-005, -1.36605058e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.408524, -3773.68286, 122.010712, 0.999990761, 2.38418579e-007, 7.49714673e-007, 1.85053796e-006, 2.27801502e-006, -1.0000062, -3.06963921e-006, 0.999994159, -1.15251169e-006),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.31507719, 0.526030719, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o17 = Create("CylinderMesh",{
["Parent"] = o16,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o18 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.413651, -3772.56372, 122.059296),
["Rotation"] = Vector3.new(4.55467176, -89.7529221, -42.672184),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.413651, -3772.56372, 122.059296, 8.94069672e-007, 8.24220479e-007, -0.999990702, 8.38190317e-007, 1.0000062, -2.89641321e-007, 0.999994218, 2.57510692e-006, 3.63588333e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.789046049),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o19 = Create("BlockMesh",{
["Parent"] = o18,
})
o20 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.413651, -3774.08325, 122.059052),
["Rotation"] = Vector3.new(-6.25392859e-005, 5.12264196e-005, -179.999908),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.413651, -3774.08325, 122.059052, -0.999990582, 1.60094351e-006, 8.94069672e-007, -2.6980415e-006, -1.00000608, 1.09151006e-006, 3.66568565e-006, -2.32178718e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o21 = Create("CylinderMesh",{
["Parent"] = o20,
})
o22 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.421951, -3772.32935, 121.468964),
["Rotation"] = Vector3.new(-179.548752, 89.7529221, 139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.421951, -3772.32935, 121.468964, -1.05146319e-006, -8.94069672e-007, 0.999990702, -1.00000608, -1.13621354e-006, 2.88709998e-008, -2.27848068e-006, -0.999994218, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o23 = Create("CylinderMesh",{
["Parent"] = o22,
})
o24 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.282059, -3772.95825, 122.059052),
["Rotation"] = Vector3.new(179.960724, -0.00528656645, 0.648007631),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.282059, -3772.95825, 122.059052, 0.999926925, -0.0113095222, -9.22679901e-005, -0.0113086412, -0.999941945, -0.000685535371, -8.74400139e-005, 0.000683145365, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o25 = Create("CylinderMesh",{
["Parent"] = o24,
})
o26 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.544998, -3772.95825, 122.059052),
["Rotation"] = Vector3.new(179.999985, -0.0198314544, -7.80676419e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.544998, -3772.95825, 122.059052, 0.999990821, 1.36252493e-006, -0.000346124172, 2.44192779e-006, -1.00000608, -3.59956175e-007, -0.000348895788, -3.02866101e-006, -0.999994397),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o27 = Create("CylinderMesh",{
["Parent"] = o26,
})
o28 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.413651, -3772.30103, 122.059052),
["Rotation"] = Vector3.new(117.89621, 89.7529221, 173.64888),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.413651, -3772.30103, 122.059052, -8.03265721e-006, -8.94069672e-007, 0.999990702, -1.0000062, 3.03415582e-005, -6.92438334e-006, -3.3762306e-005, -0.999994159, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o29 = Create("CylinderMesh",{
["Parent"] = o28,
})
o30 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.413651, -3773.35278, 122.059052),
["Rotation"] = Vector3.new(-179.548752, 89.7529221, 139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.413651, -3773.35278, 122.059052, -1.05146319e-006, -8.94069672e-007, 0.999990702, -1.00000608, -1.13621354e-006, 2.88709998e-008, -2.27848068e-006, -0.999994218, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o31 = Create("CylinderMesh",{
["Parent"] = o30,
})
o32 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.450272, -3772.30688, 121.405487),
["Rotation"] = Vector3.new(0.100267515, -89.7529221, -139.92305),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.450272, -3772.30688, 121.405487, -1.09802932e-006, 9.23871994e-007, -0.999990702, -1.00000608, 1.4482066e-006, -6.51925802e-009, -1.9967556e-006, 0.999994159, 3.7252903e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.920553803, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o33 = Create("CylinderMesh",{
["Parent"] = o32,
})
o34 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.421951, -3772.32935, 120.942841),
["Rotation"] = Vector3.new(-179.548752, 89.7529221, 139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.421951, -3772.32935, 120.942841, -1.05146319e-006, -8.94069672e-007, 0.999990702, -1.00000608, -1.13621354e-006, 2.88709998e-008, -2.27848068e-006, -0.999994218, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o35 = Create("CylinderMesh",{
["Parent"] = o34,
})
o36 = Create("Part",{
["Name"] = "small brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.408524, -3774.82642, 122.036835),
["Rotation"] = Vector3.new(179.999939, -4.6103778e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.408524, -3774.82642, 122.036835, -0.999990642, -1.35228038e-006, -8.04662704e-007, -2.45217234e-006, 1.00000608, -1.15204602e-006, 3.54647636e-006, 2.25566328e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.289316982, 0.341919988, 0.289316893),
})
o37 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.412933, -3773.68286, 120.886215),
["Rotation"] = Vector3.new(90.0001297, -0.000106029416, 179.999832),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412933, -3773.68286, 120.886215, -1, -3.06963489e-006, -1.8505624e-006, 1.85055535e-006, 2.27803412e-006, -1, 3.06963921e-006, -1, -2.27802843e-006),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.31507719, 0.526030719, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o38 = Create("CylinderMesh",{
["Parent"] = o37,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o39 = Create("Part",{
["Name"] = "Arm2",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.408524, -3773.6438, 121.664772),
["Rotation"] = Vector3.new(5.99779632e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.408524, -3773.6438, 121.664772, -9.23871994e-007, -1.05517904e-006, 1, 1.04681294e-006, 1, 1.05518006e-006, -1, 1.04681396e-006, -9.23870914e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o40 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.276443, -3772.95825, 120.837883),
["Rotation"] = Vector3.new(-0.000173501205, 0.0199902561, 179.999863),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.276443, -3772.95825, 120.837883, -0.99999994, -2.44089392e-006, 0.000348895788, 2.44195053e-006, -1, 3.02816693e-006, 0.000348895788, 3.02901867e-006, 0.99999994),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o41 = Create("CylinderMesh",{
["Parent"] = o40,
})
o42 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.407791, -3773.35278, 120.837898),
["Rotation"] = Vector3.new(89.9998703, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.407791, -3773.35278, 120.837898, 1.05145705e-006, 9.23871994e-007, -1, -1, 2.27846704e-006, -1.05145489e-006, 2.27846613e-006, 1, 9.23874381e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o43 = Create("CylinderMesh",{
["Parent"] = o42,
})
o44 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.539383, -3772.95825, 120.837883),
["Rotation"] = Vector3.new(0.0390818939, 0.00545738125, -179.352051),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.539383, -3772.95825, 120.837883, -0.999936044, 0.0113086831, 9.52492701e-005, -0.0113087445, -0.999935865, -0.000682107639, 8.75294209e-005, -0.000683141174, 0.999999762),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o45 = Create("CylinderMesh",{
["Parent"] = o44,
})
o46 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.407791, -3772.30103, 120.837898),
["Rotation"] = Vector3.new(89.9980621, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.407791, -3772.30103, 120.837898, 8.03260991e-006, 9.23871994e-007, -1, -1, 3.37621022e-005, -8.03257899e-006, 3.3762095e-005, 1, 9.24143194e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o47 = Create("CylinderMesh",{
["Parent"] = o46,
})
o48 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.407791, -3772.56372, 120.837631),
["Rotation"] = Vector3.new(4.80250565e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.407791, -3772.56372, 120.837631, -9.23871994e-007, -8.24211838e-007, 1, 8.38195319e-007, 1, 8.24212634e-007, -1, 8.38196058e-007, -9.23871312e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.789046049),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o49 = Create("BlockMesh",{
["Parent"] = o48,
})
o50 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.407791, -3774.08325, 120.837898),
["Rotation"] = Vector3.new(179.999878, -0.000208321144, 0.000154587397),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.407791, -3774.08325, 120.837898, 1, -2.69805901e-006, -3.6358897e-006, -2.69806742e-006, -1, -2.32176649e-006, -3.63588333e-006, 2.32177626e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o51 = Create("CylinderMesh",{
["Parent"] = o50,
})
o52 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.39949, -3772.32935, 121.427979),
["Rotation"] = Vector3.new(89.9998703, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.39949, -3772.32935, 121.427979, 1.05145705e-006, 9.23871994e-007, -1, -1, 2.27846704e-006, -1.05145489e-006, 2.27846613e-006, 1, 9.23874381e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o53 = Create("CylinderMesh",{
["Parent"] = o52,
})
o54 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.371155, -3772.30688, 121.491463),
["Rotation"] = Vector3.new(-90.0001144, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.371155, -3772.30688, 121.491463, 1.09802261e-006, -9.23871994e-007, 1, -1, -1.99674355e-006, 1.09802079e-006, 1.99674264e-006, -1, -9.23874211e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.920553803, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o55 = Create("CylinderMesh",{
["Parent"] = o54,
})
o56 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.399475, -3772.32935, 121.954094),
["Rotation"] = Vector3.new(89.9998703, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.399475, -3772.32935, 121.954094, 1.05145705e-006, 9.23871994e-007, -1, -1, 2.27846704e-006, -1.05145489e-006, 2.27846613e-006, 1, 9.23874381e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o57 = Create("CylinderMesh",{
["Parent"] = o56,
})
o58 = Create("Part",{
["Name"] = "small brick",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.412918, -3774.82642, 120.860085),
["Rotation"] = Vector3.new(-0.000129238906, 0.000204905984, -0.000140500008),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412918, -3774.82642, 120.860085, 1, 2.4521878e-006, 3.57628414e-006, -2.45219576e-006, 1, 2.2556444e-006, -3.57627869e-006, -2.25565327e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.289316982, 0.341919988, 0.289316893),
})
o59 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(181.412994, -3773.88208, 122.105087),
["Rotation"] = Vector3.new(90.0001297, -0.000106029416, 179.999832),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412994, -3773.88208, 122.105087, -1, -3.06963489e-006, -1.8505624e-006, 1.85055535e-006, 2.27803412e-006, -1, 3.06963921e-006, -1, -2.27802843e-006),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.91507518, 0.766029775, 1.91507423),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o60 = Create("CylinderMesh",{
["Parent"] = o59,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o61 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(181.412994, -3774.48267, 122.105087),
["Rotation"] = Vector3.new(90.0001297, -0.000106029416, 179.999832),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412994, -3774.48267, 122.105087, -1, -3.06963489e-006, -1.8505624e-006, 1.85055535e-006, 2.27803412e-006, -1, 3.06963921e-006, -1, -2.27802843e-006),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.91507518, 0.766029775, 1.91507423),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o62 = Create("CylinderMesh",{
["Parent"] = o61,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o63 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(181.412994, -3773.28247, 122.105087),
["Rotation"] = Vector3.new(90.0001297, -0.000106029416, 179.999832),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412994, -3773.28247, 122.105087, -1, -3.06963489e-006, -1.8505624e-006, 1.85055535e-006, 2.27803412e-006, -1, 3.06963921e-006, -1, -2.27802843e-006),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.91507518, 0.766029775, 1.91507423),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o64 = Create("CylinderMesh",{
["Parent"] = o63,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o65 = Create("Model",{
["Name"] = "Chest",
["Parent"] = o1,
})
o66 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o65,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.869705, -3773.43774, 119.110077),
["Rotation"] = Vector3.new(-0, -90, 0),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.869705, -3773.43774, 119.110077, -5.96046448e-008, 0, -1, 0, 1, 0, 1, 0, -5.96046448e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 2, 1),
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o67 = Create("Part",{
["Parent"] = o65,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.869705, -3771.93774, 119.110077),
["Rotation"] = Vector3.new(-0, -90, 0),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.869705, -3771.93774, 119.110077, -5.96046448e-008, 0, -1, 0, 1, 0, 1, 0, -5.96046448e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2, 1, 1),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o68 = Create("Weld",{
["Name"] = "HeadWeld",
["Parent"] = o67,
})
o69 = Create("SpecialMesh",{
["Parent"] = o67,
["Scale"] = Vector3.new(1.20000005, 1.20000005, 1.20000005),
})
o70 = Create("Part",{
["Name"] = "FTorso",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.660965, -3773.71313, 119.361053),
["Rotation"] = Vector3.new(86.3467712, 73.9579926, -86.4790649),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.660965, -3773.71313, 119.361053, 0.0169690549, 0.275787771, 0.961059332, -0.00470884051, 0.96122396, -0.275750786, -0.999839306, 0.000156238675, 0.0176059604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.57809281, 1.05206144, 0.526030719),
})
o71 = Create("SpecialMesh",{
["Parent"] = o70,
["MeshType"] = Enum.MeshType.Torso,
})
o72 = Create("Weld",{
["Name"] = "shoulder to chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o306,
})
o73 = Create("Weld",{
["Name"] = "leg to chest joint",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o303,
})
o74 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o294,
})
o75 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o240,
})
o76 = Create("Weld",{
["Name"] = "shoulder to chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o310,
})
o77 = Create("Weld",{
["Name"] = "exo shoulder rotater",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o286,
})
o78 = Create("Weld",{
["Name"] = "shoulder to chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o308,
})
o79 = Create("Weld",{
["Name"] = "shoulder to chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o312,
})
o80 = Create("Weld",{
["Name"] = "leg to chest joint",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o300,
})
o81 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o190,
})
o82 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o242,
})
o83 = Create("Weld",{
["Name"] = "exo lag to chest bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o264,
})
o84 = Create("Weld",{
["Name"] = "exo shoulder rotater",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o284,
})
o85 = Create("Weld",{
["Name"] = "exo leg end",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o270,
})
o86 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o298,
})
o87 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o182,
})
o88 = Create("Weld",{
["Name"] = "small brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o314,
})
o89 = Create("Weld",{
["Name"] = "small brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o315,
})
o90 = Create("Weld",{
["Name"] = "shoulder bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o304,
})
o91 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o296,
})
o92 = Create("Weld",{
["Name"] = "exo leg end",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o271,
})
o93 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o292,
})
o94 = Create("Weld",{
["Name"] = "exo leg bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o268,
})
o95 = Create("Weld",{
["Name"] = "exo shoulder rotater",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o288,
})
o96 = Create("Weld",{
["Name"] = "exo shoulder rotater",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o290,
})
o97 = Create("Weld",{
["Name"] = "leg to chest joint",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o302,
})
o98 = Create("Weld",{
["Name"] = "leg to chest joint",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o301,
})
o99 = Create("Weld",{
["Name"] = "exo leg to chest bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o276,
})
o100 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o244,
})
o101 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o221,
})
o102 = Create("Weld",{
["Name"] = "exo leg to chest bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o272,
})
o103 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o210,
})
o104 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o172,
})
o105 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o245,
})
o106 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o178,
})
o107 = Create("Weld",{
["Name"] = "exo leg to chest bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o274,
})
o108 = Create("Weld",{
["Name"] = "Middle",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o218,
})
o109 = Create("Weld",{
["Name"] = "exo shoulder chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o280,
})
o110 = Create("Weld",{
["Name"] = "exo shoulder chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o283,
})
o111 = Create("Weld",{
["Name"] = "exo arm part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o262,
})
o112 = Create("Weld",{
["Name"] = "exo leg bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o266,
})
o113 = Create("Weld",{
["Name"] = "exo arm part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o263,
})
o114 = Create("Weld",{
["Name"] = "exo shoulder bar",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o278,
})
o115 = Create("Weld",{
["Name"] = "exo shoulder chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o281,
})
o116 = Create("Weld",{
["Name"] = "exo shoulder chest part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o282,
})
o117 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o253,
})
o118 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o257,
})
o119 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o219,
})
o120 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o251,
})
o121 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o233,
})
o122 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o255,
})
o123 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o229,
})
o124 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o235,
})
o125 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o222,
})
o126 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o249,
})
o127 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o231,
})
o128 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o227,
})
o129 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o204,
})
o130 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o216,
})
o131 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o224,
})
o132 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o174,
})
o133 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o208,
})
o134 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o214,
})
o135 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o188,
})
o136 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o198,
})
o137 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o212,
})
o138 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o166,
})
o139 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o160,
})
o140 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o186,
})
o141 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o202,
})
o142 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o184,
})
o143 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o194,
})
o144 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o180,
})
o145 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o196,
})
o146 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o176,
})
o147 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o162,
})
o148 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o192,
})
o149 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o206,
})
o150 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o164,
})
o151 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o158,
})
o152 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o170,
})
o153 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o200,
})
o154 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o168,
})
o155 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o259,
})
o156 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o237,
})
o157 = Create("Weld",{
["Name"] = "Part",
["Parent"] = o70,
["Part0"] = o70,
["Part1"] = o246,
})
o158 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.545975, -3773.05005, 118.687469),
["Rotation"] = Vector3.new(178.179123, 60.99226, 107.099762),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.545975, -3773.05005, 118.687469, -0.142580792, -0.463472962, 0.874554157, -0.963489056, 0.267326564, -0.0154081527, -0.226652578, -0.844815671, -0.484668344),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.05206144, 0.263015389),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o159 = Create("CylinderMesh",{
["Parent"] = o158,
["Scale"] = Vector3.new(1, 1, 0.5),
})
o160 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(179.992279, -3774.67505, 120.298798),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.992279, -3774.67505, 120.298798, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o161 = Create("CylinderMesh",{
["Parent"] = o160,
})
o162 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.226639, -3774.80396, 118.526093),
["Rotation"] = Vector3.new(-91.127594, 5.57547283, -118.25676),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.226639, -3774.80396, 118.526093, -0.471179485, 0.876659751, 0.0971568525, 0.0633244514, -0.0762448236, 0.995082319, 0.879755735, 0.475010753, -0.0195858888),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.01260924, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o163 = Create("CylinderMesh",{
["Parent"] = o162,
})
o164 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.707352, -3773.09106, 119.349579),
["Rotation"] = Vector3.new(0.496999621, -0.878109753, -61.0059242),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.707352, -3773.09106, 119.349579, 0.484662294, 0.874567151, -0.015325306, -0.87470144, 0.484584689, -0.00867315289, -0.000158846058, 0.0176086146, 0.999845028),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.05206192, 0.263015419, 0.526030719),
})
o165 = Create("SpecialMesh",{
["Parent"] = o164,
["MeshType"] = Enum.MeshType.Torso,
})
o166 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.917084, -3774.74146, 118.225555),
["Rotation"] = Vector3.new(-179.504654, 2.96646571, 90.0003281),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.917084, -3774.74146, 118.225555, -5.76861203e-006, -0.998650849, 0.0517514646, -0.999968708, 0.000452091917, 0.00863364059, -0.00864876434, -0.0517468452, -0.998616993),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.93316293, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o167 = Create("CylinderMesh",{
["Parent"] = o166,
})
o168 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.423904, -3772.78735, 120.002411),
["Rotation"] = Vector3.new(3.5130558, 73.9586334, -92.637413),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.423904, -3772.78735, 120.002411, -0.0127139082, 0.276005149, 0.961062431, -0.999779522, 0.0129021686, -0.0169303045, -0.0170760043, -0.961063981, 0.275776744),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.05206144, 0.263015389),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o169 = Create("CylinderMesh",{
["Parent"] = o168,
["Scale"] = Vector3.new(1, 1, 0.5),
})
o170 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.402664, -3773.42896, 118.449188),
["Rotation"] = Vector3.new(164.395233, 36.5122032, -16.7898064),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.402664, -3773.42896, 118.449188, 0.76946789, 0.232166678, 0.594994009, 0.431444585, -0.875849128, -0.216203347, 0.470929831, 0.423068434, -0.774104774),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.07836318, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o171 = Create("CylinderMesh",{
["Parent"] = o170,
})
o172 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.624359, -3775.49438, 117.809296),
["Rotation"] = Vector3.new(90.0001297, 7.25707578e-005, -4.7811769e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.624359, -3775.49438, 117.809296, 0.999990761, 8.34465027e-007, 1.2665987e-006, 2.38325447e-006, 1.04727224e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.35438347e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o173 = Create("CylinderMesh",{
["Parent"] = o172,
})
o174 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.597015, -3772.6897, 118.470917),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.597015, -3772.6897, 118.470917, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o175 = Create("CylinderMesh",{
["Parent"] = o174,
})
o176 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.290848, -3774.78833, 120.098358),
["Rotation"] = Vector3.new(-91.1275253, 5.5753746, -76.5718231),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.290848, -3774.78833, 120.098358, 0.231125563, 0.968051553, 0.0971551463, -0.00341453543, -0.0990516767, 0.995082557, 0.972911239, -0.230323195, -0.0195847526),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.920553923, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o177 = Create("CylinderMesh",{
["Parent"] = o176,
})
o178 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.269379, -3775.49438, 120.702362),
["Rotation"] = Vector3.new(90.0001297, 7.25707578e-005, -4.7811769e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.269379, -3775.49438, 120.702362, 0.999990761, 8.34465027e-007, 1.2665987e-006, 2.38325447e-006, 1.04727224e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.35438347e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o179 = Create("CylinderMesh",{
["Parent"] = o178,
})
o180 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.517166, -3774.56372, 118.760223),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.517166, -3774.56372, 118.760223, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.881101489, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o181 = Create("CylinderMesh",{
["Parent"] = o180,
})
o182 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.269379, -3775.49438, 117.809296),
["Rotation"] = Vector3.new(90.0001297, 7.25707578e-005, -4.7811769e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.269379, -3775.49438, 117.809296, 0.999990761, 8.34465027e-007, 1.2665987e-006, 2.38325447e-006, 1.04727224e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.35438347e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o183 = Create("CylinderMesh",{
["Parent"] = o182,
})
o184 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.424637, -3772.72974, 118.373993),
["Rotation"] = Vector3.new(-179.504547, -9.10539055, 90.0003433),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.424637, -3772.72974, 118.373993, -5.93811274e-006, -0.987389386, -0.158250958, -0.999968767, -0.00136353076, 0.00853825267, -0.00864975713, 0.158248454, -0.98735553),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.65699685, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o185 = Create("CylinderMesh",{
["Parent"] = o184,
})
o186 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.508133, -3773.40259, 120.172089),
["Rotation"] = Vector3.new(-147.678589, 10.3196735, -26.5259075),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.508133, -3773.40259, 120.172089, 0.880250573, 0.439373821, 0.179140031, 0.291713089, -0.798887551, 0.526017487, 0.374228656, -0.410772443, -0.83138901),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.07836318, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o187 = Create("CylinderMesh",{
["Parent"] = o186,
})
o188 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.28035, -3772.82739, 118.2341),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.28035, -3772.82739, 118.2341, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.407673836, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o189 = Create("CylinderMesh",{
["Parent"] = o188,
})
o190 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.624359, -3775.49438, 120.702362),
["Rotation"] = Vector3.new(90.0001297, 7.25707578e-005, -4.7811769e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.624359, -3775.49438, 120.702362, 0.999990761, 8.34465027e-007, 1.2665987e-006, 2.38325447e-006, 1.04727224e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.35438347e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o191 = Create("CylinderMesh",{
["Parent"] = o190,
})
o192 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.576004, -3774.82446, 119.256073),
["Rotation"] = Vector3.new(-91.1273499, 5.57563829, 2.16575909),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.576004, -3774.82446, 119.256073, 0.994548738, -0.0376114845, 0.0971597284, -0.0978155509, -0.0159929879, 0.9950822, -0.0358756483, -0.999158621, -0.0195816681),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.36767995, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o193 = Create("CylinderMesh",{
["Parent"] = o192,
})
o194 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.424637, -3772.72974, 120.201874),
["Rotation"] = Vector3.new(-179.504761, 8.82966614, 90.000351),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.424637, -3772.72974, 120.201874, -6.09643757e-006, -0.988139749, 0.153497487, -0.999968767, 0.00133181829, 0.008540879, -0.00864739809, -0.153489441, -0.988106728),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.65699685, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o195 = Create("CylinderMesh",{
["Parent"] = o194,
})
o196 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.517166, -3774.56372, 119.957001),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.517166, -3774.56372, 119.957001, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.881101489, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o197 = Create("CylinderMesh",{
["Parent"] = o196,
})
o198 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.401199, -3772.79028, 118.672821),
["Rotation"] = Vector3.new(175.956055, 75.9712601, 94.1502151),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.401199, -3772.79028, 118.672821, -0.0175406821, -0.241734222, 0.970174253, -0.999852061, 0.00394741492, -0.0170925632, 0.000298830972, -0.970327556, -0.24176985),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.05206144, 0.263015389),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o199 = Create("CylinderMesh",{
["Parent"] = o198,
["Scale"] = Vector3.new(1, 1, 0.5),
})
o200 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.581619, -3773.06372, 119.963104),
["Rotation"] = Vector3.new(1.67859173, 58.9759445, -106.941055),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.581619, -3773.06372, 119.963104, -0.150175393, 0.49301517, 0.856950998, -0.96351552, -0.267249197, -0.015096887, 0.221573025, -0.827952743, 0.515158296),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.05206144, 0.263015389),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o201 = Create("CylinderMesh",{
["Parent"] = o200,
["Scale"] = Vector3.new(1, 1, 0.5),
})
o202 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.936859, -3774.75415, 120.214813),
["Rotation"] = Vector3.new(-179.504852, -1.5168463, 90.0003357),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.936859, -3774.75415, 120.214813, -5.92693686e-006, -0.999640405, -0.0264708698, -0.999968827, -0.000223919749, 0.00863870978, -0.00864493661, 0.0264728665, -0.999606371),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.97261524, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o203 = Create("CylinderMesh",{
["Parent"] = o202,
})
o204 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(179.952728, -3772.6897, 119.299286),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.952728, -3772.6897, 119.299286, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o205 = Create("CylinderMesh",{
["Parent"] = o204,
})
o206 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(182.752762, -3773.90649, 119.368134),
["Rotation"] = Vector3.new(86.3467712, 73.9580154, -86.4790421),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.752762, -3773.90649, 119.368134, 0.0169691443, 0.275787592, 0.961059451, -0.00470829057, 0.9612239, -0.275750637, -0.999839365, 0.000156790018, 0.0176059604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.05206192, 0.526030779, 0.26301536),
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o207 = Create("SpecialMesh",{
["Parent"] = o206,
["MeshType"] = Enum.MeshType.Torso,
})
o208 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.597015, -3772.6897, 120.035858),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.597015, -3772.6897, 120.035858, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o209 = Create("CylinderMesh",{
["Parent"] = o208,
})
o210 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(179.75058, -3773.76489, 119.250214),
["Rotation"] = Vector3.new(90.0001297, -4.64239429e-006, 89.9999542),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.75058, -3773.76489, 119.250214, 8.34465027e-007, -0.999990702, -8.1025064e-008, 1.04727224e-006, -1.01979822e-006, -1.0000062, 0.999994099, 3.66568565e-006, -2.366025e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53864062, 0.473427653, 2.05151963),
})
o211 = Create("SpecialMesh",{
["Parent"] = o210,
["MeshType"] = Enum.MeshType.Torso,
})
o212 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.005463, -3774.74146, 118.220917),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.005463, -3774.74146, 118.220917, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o213 = Create("CylinderMesh",{
["Parent"] = o212,
})
o214 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(182.28035, -3772.82739, 120.390839),
["Rotation"] = Vector3.new(-179.916077, 89.7529221, 46.3118896),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.28035, -3772.82739, 120.390839, 1.01327896e-006, -1.06077641e-006, 0.999990702, 8.51694494e-007, -1.00000596, 5.58793545e-009, 0.999994218, -2.50572339e-006, -3.81469727e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.407673836, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o215 = Create("CylinderMesh",{
["Parent"] = o214,
})
o216 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.189301, -3771.99341, 119.35202),
["Rotation"] = Vector3.new(90.000145, -0.0567572787, 90.000145),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.189301, -3771.99341, 119.35202, -2.56299973e-006, -0.999990344, -0.000990601256, 8.55885446e-007, 0.000989531167, -1.00000548, 0.999994338, 2.98023224e-007, -2.53040344e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o217 = Create("CylinderMesh",{
["Parent"] = o216,
})
o218 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Reddish brown"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.411697, -3774.05396, 119.246307),
["Rotation"] = Vector3.new(0.451253146, -89.7529221, -49.0934944),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.411697, -3774.05396, 119.246307, 8.94069672e-007, 1.03190541e-006, -0.999990702, 1.04680657e-006, 1.00000596, -2.88709998e-008, 0.999994159, 2.36090273e-006, 3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.63015437, 2.63015389, 1.31507683),
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.25098, 0.156863),
})
o219 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.781097, -3772.29224, 119.411346),
["Rotation"] = Vector3.new(47.9344406, -69.7047653, 46.9421463),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.781097, -3772.29224, 119.411346, 0.236812472, -0.253436744, -0.937917769, 0.0141483834, 0.966174841, -0.257499844, 0.971452415, 0.0477091521, 0.232387945),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o220 = Create("CylinderMesh",{
["Parent"] = o219,
["Scale"] = Vector3.new(1, 1, 0.100000001),
})
o221 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.123627, -3773.79321, 118.457245),
["Rotation"] = Vector3.new(179.999939, -4.6103778e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.123627, -3773.79321, 118.457245, -0.999990642, -1.35228038e-006, -8.04662704e-007, -2.45217234e-006, 1.00000608, -1.15204602e-006, 3.54647636e-006, 2.25566328e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 2.10412288, 0.26301536),
})
o222 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(180.000092, -3772.03442, 119.276093),
["Rotation"] = Vector3.new(-107.597572, -44.4831429, 66.7464294),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.000092, -3772.03442, 119.276093, 0.281673551, -0.655500114, -0.700699389, -0.0140788071, -0.733012617, 0.680069387, -0.959407032, -0.181692556, -0.215698913),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o223 = Create("CylinderMesh",{
["Parent"] = o222,
["Scale"] = Vector3.new(1, 1, 0.100000001),
})
o224 = Create("Part",{
["Parent"] = o65,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(180.397308, -3771.98755, 119.3591),
["Rotation"] = Vector3.new(90.3031158, -0.857357621, -89.9994812),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.397308, -3771.98755, 119.3591, 9.1791153e-006, 0.999878943, -0.0149631547, 0.0052869143, -0.0149621591, -0.999880195, -0.99998033, -7.28368759e-005, -0.00528977066),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.31507719, 0.670689166, 1.31507683),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o225 = Create("BlockMesh",{
["Parent"] = o224,
})
o226 = Create("CylinderMesh",{
["Parent"] = o224,
["Scale"] = Vector3.new(0.100000001, 1, 0.100000001),
})
o227 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.877777, -3772.54419, 119.317108),
["Rotation"] = Vector3.new(65.2888489, -49.3663712, 34.6937981),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.877777, -3772.54419, 119.317108, 0.535436571, -0.370668143, -0.758889198, -0.328878045, 0.736115396, -0.591585457, 0.777912021, 0.56633848, 0.272238433),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o228 = Create("CylinderMesh",{
["Parent"] = o227,
["Scale"] = Vector3.new(1, 1, 0.100000001),
})
o229 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.919769, -3772.54126, 119.372284),
["Rotation"] = Vector3.new(-133.278168, 28.5002308, 110.282799),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.919769, -3772.54126, 119.372284, -0.304644823, -0.824322641, 0.477162272, -0.52260834, 0.563495338, 0.639807522, -0.796286464, -0.0544549413, -0.602463841),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o230 = Create("CylinderMesh",{
["Parent"] = o229,
["Scale"] = Vector3.new(1, 0.800000012, 0.100000001),
})
o231 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.762543, -3772.11157, 119.413788),
["Rotation"] = Vector3.new(-67.819664, -58.0456886, -63.4134102),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.762543, -3772.11157, 119.413788, 0.236862525, 0.473280162, -0.84847039, 0.0140293268, 0.871565104, 0.490078986, 0.971441925, -0.127984807, 0.199801326),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o232 = Create("CylinderMesh",{
["Parent"] = o231,
["Scale"] = Vector3.new(1, 0.300000012, 0.100000001),
})
o233 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.909027, -3772.11157, 119.519501),
["Rotation"] = Vector3.new(-43.3156891, -44.4071236, -32.4935875),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.909027, -3772.11157, 119.519501, 0.602549732, 0.383771688, -0.699752152, 0.0140300812, 0.871563971, 0.490081131, 0.797958016, -0.305115849, 0.519776225),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o234 = Create("CylinderMesh",{
["Parent"] = o233,
["Scale"] = Vector3.new(1, 0.300000012, 0.100000001),
})
o235 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.790619, -3772.43481, 119.35495),
["Rotation"] = Vector3.new(54.4316139, -68.8326645, -108.756104),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.790619, -3772.43481, 119.35495, -0.116106011, 0.341917574, -0.932529807, -0.306883603, -0.905290306, -0.29372099, -0.944638491, 0.252075344, 0.210038528),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o236 = Create("CylinderMesh",{
["Parent"] = o235,
["Scale"] = Vector3.new(1, 0.300000012, 0.100000001),
})
o237 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(182.809891, -3773.89673, 119.649384),
["Rotation"] = Vector3.new(-179.315872, 89.7529221, 48.9652023),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.809891, -3773.89673, 119.649384, 8.94069672e-007, -1.0272488e-006, 0.999990702, 1.09151006e-006, -1.00000596, 4.3772161e-008, 0.999994218, -2.26823613e-006, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.57809281, 0.526030719, 0.26301536),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o238 = Create("BlockMesh",{
["Parent"] = o237,
["Scale"] = Vector3.new(0.100000001, 0.300000012, 1.20000005),
})
o239 = Create("PointLight",{
["Parent"] = o237,
["Color"] = Color3.new(1, 0, 0),
["Range"] = 3,
})
o240 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.255219, -3773.66138, 119.246552),
["Rotation"] = Vector3.new(179.999939, -4.26886836e-005, 90.000061),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.255219, -3773.66138, 119.246552, -1.04121864e-006, -0.999990702, -7.4505806e-007, -1.00000608, -3.7252903e-008, -1.19768083e-006, -2.20770016e-006, 3.57627869e-006, -0.999994218),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.84110796, 0.526030719, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o241 = Create("BlockMesh",{
["Parent"] = o240,
["Scale"] = Vector3.new(1, 0.600000024, 1),
})
o242 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.34726, -3774.08325, 119.259491),
["Rotation"] = Vector3.new(179.999939, -4.26886836e-005, 90.000061),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.34726, -3774.08325, 119.259491, -1.04121864e-006, -0.999990702, -7.4505806e-007, -1.00000608, -3.7252903e-008, -1.19768083e-006, -2.20770016e-006, 3.57627869e-006, -0.999994218),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(3.84002471, 1.28877532, 1.97261512),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o243 = Create("BlockMesh",{
["Parent"] = o242,
["Scale"] = Vector3.new(0.699999988, 0.600000024, 0.699999988),
})
o244 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.044281, -3774.05591, 119.246552),
["Rotation"] = Vector3.new(-0.014556854, -89.7529221, -49.7251282),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.044281, -3774.05591, 119.246552, 8.94069672e-007, 1.05518848e-006, -0.999990702, 1.04680657e-006, 1.00000596, 9.31322575e-010, 0.999994159, 2.34832987e-006, 3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.63015437, 2.63015389, 1.31507683),
["BackSurface"] = Enum.SurfaceType.Weld,
["BottomSurface"] = Enum.SurfaceType.Weld,
["FrontSurface"] = Enum.SurfaceType.Weld,
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o245 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.123383, -3773.79321, 120.035126),
["Rotation"] = Vector3.new(179.999939, -4.6103778e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.123383, -3773.79321, 120.035126, -0.999990642, -1.35228038e-006, -8.04662704e-007, -2.45217234e-006, 1.00000608, -1.15204602e-006, 3.54647636e-006, 2.25566328e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 2.10412288, 0.26301536),
})
o246 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(182.809891, -3773.89673, 119.097137),
["Rotation"] = Vector3.new(-179.315872, 89.7529221, 48.9652023),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.809891, -3773.89673, 119.097137, 8.94069672e-007, -1.0272488e-006, 0.999990702, 1.09151006e-006, -1.00000596, 4.3772161e-008, 0.999994218, -2.26823613e-006, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.57809281, 0.526030719, 0.26301536),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o247 = Create("BlockMesh",{
["Parent"] = o246,
["Scale"] = Vector3.new(0.100000001, 0.300000012, 1.20000005),
})
o248 = Create("PointLight",{
["Parent"] = o246,
["Color"] = Color3.new(1, 0, 0),
["Range"] = 3,
})
o249 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.9039, -3772.02661, 119.37912),
["Rotation"] = Vector3.new(75.118721, 26.7914314, 85.1947708),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.9039, -3772.02661, 119.37912, 0.0747764632, -0.889515877, 0.450744033, 0.292406201, -0.412581742, -0.862713754, 0.95336622, 0.196311042, 0.229248568),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o250 = Create("CylinderMesh",{
["Parent"] = o249,
["Scale"] = Vector3.new(1, 0.800000012, 0.100000001),
})
o251 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(180.025238, -3772.02661, 119.43161),
["Rotation"] = Vector3.new(87.8897781, 30.3110371, 58.8493767),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.025238, -3772.02661, 119.43161, 0.446575403, -0.738819778, 0.504693925, 0.292408586, -0.412581682, -0.862712979, 0.845616698, 0.532843232, 0.0317884199),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o252 = Create("CylinderMesh",{
["Parent"] = o251,
["Scale"] = Vector3.new(1, 0.800000012, 0.100000001),
})
o253 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.92514, -3772.29224, 119.509979),
["Rotation"] = Vector3.new(23.7527332, -50.2593231, 19.5341015),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.92514, -3772.29224, 119.509979, 0.602503181, -0.213761225, -0.768945873, 0.0141489971, 0.96617943, -0.257505715, 0.797980666, 0.144271627, 0.58515054),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o254 = Create("CylinderMesh",{
["Parent"] = o253,
["Scale"] = Vector3.new(1, 1, 0.100000001),
})
o255 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.976654, -3772.54419, 119.385223),
["Rotation"] = Vector3.new(47.0464783, -36.0714111, 8.23638916),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.976654, -3772.54419, 119.385223, 0.799946785, -0.115792744, -0.588793099, -0.32888025, 0.736112118, -0.591588378, 0.501919329, 0.666881621, 0.550768554),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o256 = Create("CylinderMesh",{
["Parent"] = o255,
["Scale"] = Vector3.new(1, 1, 0.100000001),
})
o257 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.SmoothPlastic,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.025000000372529,
["Position"] = Vector3.new(179.837738, -3772.2688, 119.295868),
["Rotation"] = Vector3.new(-93.467453, -65.0110474, 105.963341),
["Anchored"] = true,
["CFrame"] = CFrame.new(179.837738, -3772.2688, 119.295868, -0.116175264, -0.406131864, -0.906389236, -0.306984097, -0.853218257, 0.421653211, -0.944593072, 0.327230275, -0.0255489945),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.318248659, 0.31824863, 0.31824857),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o258 = Create("CylinderMesh",{
["Parent"] = o257,
["Scale"] = Vector3.new(1, 1, 0.100000001),
})
o259 = Create("Part",{
["Parent"] = o65,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(182.809891, -3773.89673, 119.37326),
["Rotation"] = Vector3.new(-179.315872, 89.7529221, 48.9652023),
["Anchored"] = true,
["CFrame"] = CFrame.new(182.809891, -3773.89673, 119.37326, 8.94069672e-007, -1.0272488e-006, 0.999990702, 1.09151006e-006, -1.00000596, 4.3772161e-008, 0.999994218, -2.26823613e-006, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.57809281, 0.526030719, 0.26301536),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o260 = Create("BlockMesh",{
["Parent"] = o259,
["Scale"] = Vector3.new(0.100000001, 0.300000012, 1.20000005),
})
o261 = Create("PointLight",{
["Parent"] = o259,
["Color"] = Color3.new(1, 0, 0),
["Range"] = 3,
})
o262 = Create("Part",{
["Name"] = "exo arm part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.249832, -3772.71313, 121.208221),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.249832, -3772.71313, 121.208221, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o263 = Create("Part",{
["Name"] = "exo arm part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.249832, -3772.71313, 117.30246),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.249832, -3772.71313, 117.30246, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o264 = Create("Part",{
["Name"] = "exo lag to chest bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.620453, -3775.44263, 120.315643),
["Rotation"] = Vector3.new(-0.00703642052, -89.295845, -98.5041275),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.620453, -3775.44263, 120.315643, -0.00170082599, 0.0113748908, -0.999924481, -0.989044011, -0.14766264, 1.41281635e-006, -0.147654489, 0.988966227, 0.0115042031),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.696990728, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o265 = Create("CylinderMesh",{
["Parent"] = o264,
})
o266 = Create("Part",{
["Name"] = "exo leg bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.615326, -3775.55493, 120.682343),
["Rotation"] = Vector3.new(179.999939, -5.12264196e-005, 90.0000763),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.615326, -3775.55493, 120.682343, -1.37463212e-006, -0.999990702, -8.94069672e-007, -1.00000608, 2.91503966e-007, -1.12131238e-006, -2.27009878e-006, 3.69548798e-006, -0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.973156869, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o267 = Create("CylinderMesh",{
["Parent"] = o266,
})
o268 = Create("Part",{
["Name"] = "exo leg bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.615326, -3775.55493, 117.815399),
["Rotation"] = Vector3.new(179.999939, -5.12264196e-005, 90.0000763),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.615326, -3775.55493, 117.815399, -1.37463212e-006, -0.999990702, -8.94069672e-007, -1.00000608, 2.91503966e-007, -1.12131238e-006, -2.27009878e-006, 3.69548798e-006, -0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.973156869, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o269 = Create("CylinderMesh",{
["Parent"] = o268,
})
o270 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.999847, -3775.55396, 120.682343),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.999847, -3775.55396, 120.682343, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o271 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.999847, -3775.55396, 117.815399),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.999847, -3775.55396, 117.815399, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o272 = Create("Part",{
["Name"] = "exo leg to chest bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.528412, -3775.4563, 118.185028),
["Rotation"] = Vector3.new(-0.00651898282, -89.2975082, -76.2323914),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.528412, -3775.4563, 118.185028, 0.00273629278, 0.0111674368, -0.999924839, -0.971226394, 0.238183469, 1.30850822e-006, 0.238161683, 0.971151769, 0.0115005672),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.696990728, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o273 = Create("CylinderMesh",{
["Parent"] = o272,
})
o274 = Create("Part",{
["Name"] = "exo leg to chest bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.291595, -3775.4563, 118.185028),
["Rotation"] = Vector3.new(-0.00651898282, -89.2975082, -76.2323914),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.291595, -3775.4563, 118.185028, 0.00273629278, 0.0111674368, -0.999924839, -0.971226394, 0.238183469, 1.30850822e-006, 0.238161683, 0.971151769, 0.0115005672),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.696990728, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o275 = Create("CylinderMesh",{
["Parent"] = o274,
})
o276 = Create("Part",{
["Name"] = "exo leg to chest bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.252289, -3775.44263, 120.315399),
["Rotation"] = Vector3.new(-0.00703642052, -89.295845, -98.5041275),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.252289, -3775.44263, 120.315399, -0.00170082599, 0.0113748908, -0.999924481, -0.989044011, -0.14766264, 1.41281635e-006, -0.147654489, 0.988966227, 0.0115042031),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.696990728, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o277 = Create("CylinderMesh",{
["Parent"] = o276,
})
o278 = Create("Part",{
["Name"] = "exo shoulder bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.772552, -3772.71313, 121.206757),
["Rotation"] = Vector3.new(90.0001373, 7.24640413e-005, 89.9999695),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.772552, -3772.71313, 121.206757, 5.96046448e-007, -0.999990702, 1.26473606e-006, 1.05053186e-006, -2.38511711e-006, -1.0000062, 0.999994218, 3.42726707e-006, -2.39117071e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.907402933, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o279 = Create("CylinderMesh",{
["Parent"] = o278,
})
o280 = Create("Part",{
["Name"] = "exo shoulder chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.579926, -3773.39282, 120.104218),
["Rotation"] = Vector3.new(150.000092, -0.000105726547, 179.999771),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.579926, -3773.39282, 120.104218, -1, -3.89691559e-006, -1.8452763e-006, -2.45219553e-006, 0.866026223, -0.499998659, 3.54650979e-006, -0.499998629, -0.866026282),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.44712621),
})
o281 = Create("Part",{
["Name"] = "exo shoulder chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.211761, -3773.39282, 120.104462),
["Rotation"] = Vector3.new(150.000092, -0.000105726547, 179.999771),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.211761, -3773.39282, 120.104462, -1, -3.89691559e-006, -1.8452763e-006, -2.45219553e-006, 0.866026223, -0.499998659, 3.54650979e-006, -0.499998629, -0.866026282),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.44712621),
})
o282 = Create("Part",{
["Name"] = "exo shoulder chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.579926, -3773.39282, 118.381561),
["Rotation"] = Vector3.new(-149.99942, -8.70849108e-005, 179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.579926, -3773.39282, 118.381561, -0.999990761, -3.87430191e-007, -1.51991844e-006, -2.14204192e-006, 0.866028607, 0.500006616, 3.93390656e-006, 0.500003695, -0.866016924),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.44712621),
})
o283 = Create("Part",{
["Name"] = "exo shoulder chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.211761, -3773.39282, 118.381561),
["Rotation"] = Vector3.new(-149.99942, -8.70849108e-005, 179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.211761, -3773.39282, 118.381561, -0.999990761, -3.87430191e-007, -1.51991844e-006, -2.14204192e-006, 0.866028607, 0.500006616, 3.93390656e-006, 0.500003695, -0.866016924),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.44712621),
})
o284 = Create("Part",{
["Name"] = "exo shoulder rotater",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.218842, -3772.72974, 117.300018),
["Rotation"] = Vector3.new(-179.548752, 89.7529221, 139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.218842, -3772.72974, 117.300018, -1.05146319e-006, -8.94069672e-007, 0.999990702, -1.00000608, -1.13621354e-006, 2.88709998e-008, -2.27848068e-006, -0.999994218, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o285 = Create("CylinderMesh",{
["Parent"] = o284,
})
o286 = Create("Part",{
["Name"] = "exo shoulder rotater",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.587006, -3772.72974, 121.20578),
["Rotation"] = Vector3.new(-179.548752, 89.7529221, 139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.587006, -3772.72974, 121.20578, -1.05146319e-006, -8.94069672e-007, 0.999990702, -1.00000608, -1.13621354e-006, 2.88709998e-008, -2.27848068e-006, -0.999994218, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o287 = Create("CylinderMesh",{
["Parent"] = o286,
})
o288 = Create("Part",{
["Name"] = "exo shoulder rotater",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.218842, -3772.72974, 121.20578),
["Rotation"] = Vector3.new(-179.548752, 89.7529221, 139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.218842, -3772.72974, 121.20578, -1.05146319e-006, -8.94069672e-007, 0.999990702, -1.00000608, -1.13621354e-006, 2.88709998e-008, -2.27848068e-006, -0.999994218, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o289 = Create("CylinderMesh",{
["Parent"] = o288,
})
o290 = Create("Part",{
["Name"] = "exo shoulder rotater",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.587006, -3772.72974, 117.300018),
["Rotation"] = Vector3.new(-179.548752, 89.7529221, 139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.587006, -3772.72974, 117.300018, -1.05146319e-006, -8.94069672e-007, 0.999990702, -1.00000608, -1.13621354e-006, 2.88709998e-008, -2.27848068e-006, -0.999994218, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.381372243),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o291 = Create("CylinderMesh",{
["Parent"] = o290,
})
o292 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.22493, -3775.5061, 117.816864),
["Rotation"] = Vector3.new(117.89621, 89.7529221, 173.64888),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.22493, -3775.5061, 117.816864, -8.03265721e-006, -8.94069672e-007, 0.999990702, -1.0000062, 3.03415582e-005, -6.92438334e-006, -3.3762306e-005, -0.999994159, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.72329253, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o293 = Create("CylinderMesh",{
["Parent"] = o292,
})
o294 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.22493, -3775.5188, 120.683807),
["Rotation"] = Vector3.new(117.89621, 89.7529221, 173.64888),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.22493, -3775.5188, 120.683807, -8.03265721e-006, -8.94069672e-007, 0.999990702, -1.0000062, 3.03415582e-005, -6.92438334e-006, -3.3762306e-005, -0.999994159, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.72329253, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o295 = Create("CylinderMesh",{
["Parent"] = o294,
})
o296 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.22493, -3775.79517, 117.816864),
["Rotation"] = Vector3.new(117.89621, 89.7529221, 173.64888),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.22493, -3775.79517, 117.816864, -8.03265721e-006, -8.94069672e-007, 0.999990702, -1.0000062, 3.03415582e-005, -6.92438334e-006, -3.3762306e-005, -0.999994159, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.72329253, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o297 = Create("CylinderMesh",{
["Parent"] = o296,
})
o298 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.22493, -3775.79517, 120.683807),
["Rotation"] = Vector3.new(117.89621, 89.7529221, 173.64888),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.22493, -3775.79517, 120.683807, -8.03265721e-006, -8.94069672e-007, 0.999990702, -1.0000062, 3.03415582e-005, -6.92438334e-006, -3.3762306e-005, -0.999994159, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.72329253, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o299 = Create("CylinderMesh",{
["Parent"] = o298,
})
o300 = Create("Part",{
["Name"] = "leg to chest joint",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.618744, -3775.34204, 118.591278),
["Rotation"] = Vector3.new(168.87677, -3.24434004e-005, 179.999908),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.618744, -3775.34204, 118.591278, -0.999990642, -1.50501728e-006, -5.66244125e-007, -2.44472176e-006, 0.981220841, -0.192918807, 3.60608101e-006, -0.192913234, -0.981209695),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o301 = Create("Part",{
["Name"] = "leg to chest joint",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.251312, -3775.34497, 119.89328),
["Rotation"] = Vector3.new(-164.999725, -6.83018952e-005, 179.999939),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.251312, -3775.34497, 119.89328, -0.999990642, -1.09523535e-006, -1.1920929e-006, -2.45217234e-006, 0.965931118, 0.258822173, 3.54647636e-006, 0.258822441, -0.965919077),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o302 = Create("Part",{
["Name"] = "leg to chest joint",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.6185, -3775.34204, 119.89328),
["Rotation"] = Vector3.new(-164.999725, -6.83018952e-005, 179.999939),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.6185, -3775.34204, 119.89328, -0.999990642, -1.08033419e-006, -1.1920929e-006, -2.44472176e-006, 0.965931237, 0.258822381, 3.60608101e-006, 0.25882262, -0.965919077),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o303 = Create("Part",{
["Name"] = "leg to chest joint",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.289886, -3775.34204, 118.591278),
["Rotation"] = Vector3.new(168.333847, -3.41509476e-005, 179.999908),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.289886, -3775.34204, 118.591278, -0.999990642, -1.50501728e-006, -5.96046448e-007, -2.44472176e-006, 0.979348838, -0.202207893, 3.60608101e-006, -0.202202246, -0.97933799),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.26301536),
})
o304 = Create("Part",{
["Name"] = "shoulder bar",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.759369, -3772.71313, 117.300995),
["Rotation"] = Vector3.new(90.0001373, 7.24640413e-005, 89.9999695),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.759369, -3772.71313, 117.300995, 5.96046448e-007, -0.999990702, 1.26473606e-006, 1.05053186e-006, -2.38511711e-006, -1.0000062, 0.999994218, 3.42726707e-006, -2.39117071e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.907402933, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o305 = Create("CylinderMesh",{
["Parent"] = o304,
})
o306 = Create("Part",{
["Name"] = "shoulder to chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.581146, -3773.00122, 117.738251),
["Rotation"] = Vector3.new(-57.9832306, -0.000362000021, 0.00062838319),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.581146, -3773.00122, 117.738251, 0.999990761, -1.09672546e-005, -6.31809235e-006, 1.22487545e-005, 0.530173004, 0.847896636, -8.70227814e-006, -0.847885013, 0.530169666),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.07836294, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o307 = Create("CylinderMesh",{
["Parent"] = o306,
})
o308 = Create("Part",{
["Name"] = "shoulder to chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.212738, -3772.98755, 120.771454),
["Rotation"] = Vector3.new(57.6386833, 0.00102080777, 0.000133390015),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.212738, -3772.98755, 120.771454, 1, -2.32809498e-006, 1.78164573e-005, 1.62955002e-005, 0.535256684, -0.844689548, -7.56985946e-006, 0.844689488, 0.535256684),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.17041826, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o309 = Create("CylinderMesh",{
["Parent"] = o308,
})
o310 = Create("Part",{
["Name"] = "shoulder to chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.212738, -3773.00122, 117.738251),
["Rotation"] = Vector3.new(-57.9832306, -0.000362000021, 0.00062838319),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.212738, -3773.00122, 117.738251, 0.999990761, -1.09672546e-005, -6.31809235e-006, 1.22487545e-005, 0.530173004, 0.847896636, -8.70227814e-006, -0.847885013, 0.530169666),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.07836294, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o311 = Create("CylinderMesh",{
["Parent"] = o310,
})
o312 = Create("Part",{
["Name"] = "shoulder to chest part",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.581146, -3772.98755, 120.771454),
["Rotation"] = Vector3.new(57.6386833, 0.00102080777, 0.000133390015),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.581146, -3772.98755, 120.771454, 1, -2.32809498e-006, 1.78164573e-005, 1.62955002e-005, 0.535256684, -0.844689548, -7.56985946e-006, 0.844689488, 0.535256684),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.17041826, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o313 = Create("CylinderMesh",{
["Parent"] = o312,
})
o314 = Create("Part",{
["Name"] = "small brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.491058, -3773.79028, 120.03537),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.491058, -3773.79028, 120.03537, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 2.10412288, 0.26301536),
})
o315 = Create("Part",{
["Name"] = "small brick",
["Parent"] = o65,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(180.491058, -3773.79028, 118.457489),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(180.491058, -3773.79028, 118.457489, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 2.10412288, 0.26301536),
})
o316 = Create("Model",{
["Name"] = "Arm1",
["Parent"] = o1,
})
o317 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o316,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.869705, -3773.43774, 117.610077),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.869705, -3773.43774, 117.610077, -5.96046448e-008, 0, -1, 0, 1, 0, 1, 0, -5.96046448e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o318 = Create("Part",{
["Name"] = "Arm1",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.412674, -3773.65649, 117.273895),
["Rotation"] = Vector3.new(-0.014556854, -89.7529221, -49.7251282),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412674, -3773.65649, 117.273895, 8.94069672e-007, 1.05518848e-006, -0.999990702, 1.04680657e-006, 1.00000596, 9.31322575e-010, 0.999994159, 2.34832987e-006, 3.66568565e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o319 = Create("Weld",{
["Name"] = "ARMPART",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o330,
})
o320 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o338,
})
o321 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o342,
})
o322 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o348,
})
o323 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o346,
})
o324 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o336,
})
o325 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o334,
})
o326 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o340,
})
o327 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o344,
})
o328 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o332,
})
o329 = Create("Weld",{
["Name"] = "small brick",
["Parent"] = o318,
["Part0"] = o318,
["Part1"] = o350,
})
o330 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.434891, -3773.68286, 116.49411),
["Rotation"] = Vector3.new(90.000206, 0.000106188098, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.434891, -3773.68286, 116.49411, -0.999990702, -1.78813934e-007, 1.85333192e-006, -2.93366611e-006, 1.6624108e-007, -1.00000608, 2.98023224e-006, -0.99999404, -3.57115641e-006),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.31507719, 0.526030719, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o331 = Create("CylinderMesh",{
["Parent"] = o330,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o332 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.561111, -3772.95825, 116.44577),
["Rotation"] = Vector3.new(0.0391503349, 0.00529339677, -179.351852),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.561111, -3772.95825, 116.44577, -0.999926865, 0.0113121495, 9.23871994e-005, -0.01131343, -0.999941707, -0.000683298334, 8.74698162e-005, -0.000687674619, 0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o333 = Create("CylinderMesh",{
["Parent"] = o332,
})
o334 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.298172, -3772.95825, 116.44577),
["Rotation"] = Vector3.new(-0.000107736159, 0.0198314544, -179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.298172, -3772.95825, 116.44577, -0.999990821, 1.26007944e-006, 0.000346124172, -2.35904008e-006, -1.0000062, 1.88034028e-006, 0.000348925591, -1.50734559e-006, 0.999994457),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o335 = Create("CylinderMesh",{
["Parent"] = o334,
})
o336 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.429764, -3772.30005, 116.44577),
["Rotation"] = Vector3.new(62.4419518, -89.7529221, -7.82493973),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.429764, -3772.30005, 116.44577, 5.85522503e-006, 8.04662704e-007, -0.999990702, -1.00000608, 3.2630749e-005, -6.96722418e-006, 2.91862525e-005, 0.999994159, 3.63588333e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o337 = Create("CylinderMesh",{
["Parent"] = o336,
})
o338 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.429764, -3772.56372, 116.445526),
["Rotation"] = Vector3.new(175.489792, 89.7529221, -120.884949),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.429764, -3772.56372, 116.445526, -8.34465027e-007, 1.39512122e-006, 0.999990702, -1.27032399e-006, 1.00000608, -2.91503966e-007, -0.999994159, 2.19792128e-006, -3.69548798e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.789046049),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o339 = Create("BlockMesh",{
["Parent"] = o338,
})
o340 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.421219, -3772.32935, 117.561737),
["Rotation"] = Vector3.new(0.451253146, -89.7529221, -139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.421219, -3772.32935, 117.561737, -1.05146319e-006, 8.94069672e-007, -0.999990702, -1.00000608, 1.13621354e-006, -2.88709998e-008, -2.27848068e-006, 0.999994218, 3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o341 = Create("CylinderMesh",{
["Parent"] = o340,
})
o342 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.42952, -3774.08325, 116.44577),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, -6.24861423e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.42952, -3774.08325, 116.44577, 0.999990702, 1.09057873e-006, -8.34465027e-007, 2.18208879e-006, -1.0000062, -1.21071935e-006, -3.66568565e-006, -2.23331153e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o343 = Create("CylinderMesh",{
["Parent"] = o342,
})
o344 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.393143, -3772.30688, 117.099091),
["Rotation"] = Vector3.new(-178.891739, 89.7529221, 136.11705),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.393143, -3772.30688, 117.099091, -1.02259219e-006, -9.83476639e-007, 0.999990702, -1.00000596, -8.37258995e-007, 7.26431608e-008, -2.56113708e-006, -0.999994218, -3.75509262e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.920553803, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o345 = Create("CylinderMesh",{
["Parent"] = o344,
})
o346 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.42952, -3773.35278, 116.44577),
["Rotation"] = Vector3.new(0.451253146, -89.7529221, -139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.42952, -3773.35278, 116.44577, -1.05146319e-006, 8.94069672e-007, -0.999990702, -1.00000608, 1.13621354e-006, -2.88709998e-008, -2.27848068e-006, 0.999994218, 3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o347 = Create("CylinderMesh",{
["Parent"] = o346,
})
o348 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.421219, -3772.32935, 117.035858),
["Rotation"] = Vector3.new(0.451253146, -89.7529221, -139.625153),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.421219, -3772.32935, 117.035858, -1.05146319e-006, 8.94069672e-007, -0.999990702, -1.00000608, 1.13621354e-006, -2.88709998e-008, -2.27848068e-006, 0.999994218, 3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o349 = Create("CylinderMesh",{
["Parent"] = o348,
})
o350 = Create("Part",{
["Name"] = "small brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.434891, -3774.82642, 116.467987),
["Rotation"] = Vector3.new(-6.60077567e-005, 4.6103778e-005, 7.74806831e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.434891, -3774.82642, 116.467987, 0.999990642, -1.35228038e-006, 8.04662704e-007, 2.45217234e-006, 1.00000608, 1.15204602e-006, -3.54647636e-006, 2.25566328e-006, 0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.289316982, 0.341919988, 0.289316893),
})
o351 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.412674, -3773.68286, 117.619843),
["Rotation"] = Vector3.new(89.9999924, -0.000168088285, -0.000175877401),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412674, -3773.68286, 117.619843, 1, 3.06963966e-006, -2.93369385e-006, -2.9336943e-006, 1.66233775e-007, -1, -3.06963921e-006, 1, 1.66242785e-007),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.31507719, 0.526030719, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o352 = Create("CylinderMesh",{
["Parent"] = o351,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o353 = Create("Part",{
["Name"] = "Arm1",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.434906, -3773.65649, 116.84005),
["Rotation"] = Vector3.new(5.9977956e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.434906, -3773.65649, 116.84005, -9.23871994e-007, -1.05517893e-006, 1, 1.04681283e-006, 1, 1.05517995e-006, -1, 1.04681385e-006, -9.23870914e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o354 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.417816, -3772.30005, 117.668198),
["Rotation"] = Vector3.new(-89.9983292, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.417816, -3772.30005, 117.668198, -5.85519047e-006, -8.64267349e-007, 1, -1, 2.91860761e-005, -5.85516545e-006, -2.91860706e-005, -1, -8.64438221e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o355 = Create("CylinderMesh",{
["Parent"] = o354,
})
o356 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.417816, -3772.56372, 117.668427),
["Rotation"] = Vector3.new(7.27846491e-005, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.417816, -3772.56372, 117.668427, 9.23871994e-007, -1.39510962e-006, -1, -1.27033172e-006, 1, -1.39511076e-006, 1, 1.27033297e-006, 9.23870232e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.789046049),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o357 = Create("BlockMesh",{
["Parent"] = o356,
})
o358 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.426361, -3772.32935, 116.552208),
["Rotation"] = Vector3.new(-90.0001297, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.426361, -3772.32935, 116.552208, 1.05145637e-006, -9.23871994e-007, 1, -1, -2.27846726e-006, 1.05145421e-006, 2.27846635e-006, -1, -9.23874381e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o359 = Create("CylinderMesh",{
["Parent"] = o358,
})
o360 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.549408, -3772.95825, 117.66819),
["Rotation"] = Vector3.new(179.999908, -0.0199936721, 0.000135134163),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.549408, -3772.95825, 117.66819, 1, -2.35853599e-006, -0.000348955393, -2.35906214e-006, -1, -1.50689675e-006, -0.000348955393, 1.50771973e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o361 = Create("CylinderMesh",{
["Parent"] = o360,
})
o362 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.41806, -3774.08325, 117.668198),
["Rotation"] = Vector3.new(-0.000127958279, 0.000208321042, 179.999878),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.41806, -3774.08325, 117.668198, -1, -2.1821013e-006, 3.63588811e-006, 2.18210948e-006, -1, 2.23329334e-006, 3.63588333e-006, 2.2333013e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o363 = Create("CylinderMesh",{
["Parent"] = o362,
})
o364 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.426361, -3772.32935, 117.078094),
["Rotation"] = Vector3.new(-90.0001297, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.426361, -3772.32935, 117.078094, 1.05145637e-006, -9.23871994e-007, 1, -1, -2.27846726e-006, 1.05145421e-006, 2.27846635e-006, -1, -9.23874381e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o365 = Create("CylinderMesh",{
["Parent"] = o364,
})
o366 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.454437, -3772.30688, 117.014854),
["Rotation"] = Vector3.new(89.999855, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.454437, -3772.30688, 117.014854, 1.02258628e-006, 1.04308117e-006, -1, -1, 2.56112253e-006, -1.02258366e-006, 2.56112139e-006, 1, 1.04308378e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.920553803, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o367 = Create("CylinderMesh",{
["Parent"] = o366,
})
o368 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.286484, -3772.95825, 117.668182),
["Rotation"] = Vector3.new(179.960663, -0.00546050491, 0.648228049),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.286484, -3772.95825, 117.668182, 0.999936044, -0.0113134729, -9.53037888e-005, -0.0113135353, -0.999935865, -0.000686636835, -8.75294209e-005, 0.000687671127, -0.999999762),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.526030719, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o369 = Create("CylinderMesh",{
["Parent"] = o368,
})
o370 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.41806, -3773.35278, 117.668198),
["Rotation"] = Vector3.new(-90.0001297, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.41806, -3773.35278, 117.668198, 1.05145637e-006, -9.23871994e-007, 1, -1, -2.27846726e-006, 1.05145421e-006, 2.27846635e-006, -1, -9.23874381e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o371 = Create("CylinderMesh",{
["Parent"] = o370,
})
o372 = Create("Part",{
["Name"] = "small brick",
["Parent"] = o316,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.412689, -3774.82642, 117.645973),
["Rotation"] = Vector3.new(179.999878, -0.000204905984, -179.999863),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412689, -3774.82642, 117.645973, -1, 2.4521878e-006, -3.57628414e-006, 2.45219576e-006, 1, -2.2556444e-006, 3.57627869e-006, -2.25565327e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.289316982, 0.341919988, 0.289316893),
})
o373 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o316,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(181.412613, -3773.88208, 116.40097),
["Rotation"] = Vector3.new(89.9999924, -0.000168088285, -0.000175877401),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412613, -3773.88208, 116.40097, 1, 3.06963966e-006, -2.93369385e-006, -2.9336943e-006, 1.66233775e-007, -1, -3.06963921e-006, 1, 1.66242785e-007),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.91507518, 0.766029775, 1.91507423),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o374 = Create("CylinderMesh",{
["Parent"] = o373,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o375 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o316,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(181.412613, -3774.48267, 116.40097),
["Rotation"] = Vector3.new(89.9999924, -0.000168088285, -0.000175877401),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412613, -3774.48267, 116.40097, 1, 3.06963966e-006, -2.93369385e-006, -2.9336943e-006, 1.66233775e-007, -1, -3.06963921e-006, 1, 1.66242785e-007),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.91507518, 0.766029775, 1.91507423),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o376 = Create("CylinderMesh",{
["Parent"] = o375,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o377 = Create("Part",{
["Name"] = "ARMPART",
["Parent"] = o316,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(181.412613, -3773.28247, 116.40097),
["Rotation"] = Vector3.new(89.9999924, -0.000168088285, -0.000175877401),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.412613, -3773.28247, 116.40097, 1, 3.06963966e-006, -2.93369385e-006, -2.9336943e-006, 1.66233775e-007, -1, -3.06963921e-006, 1, 1.66242785e-007),
["FormFactor"] = Enum.FormFactor.Plate,
["Size"] = Vector3.new(1.91507518, 0.766029775, 1.91507423),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o378 = Create("CylinderMesh",{
["Parent"] = o377,
["Scale"] = Vector3.new(0.300000012, 0.699999988, 0.300000012),
})
o379 = Create("Model",{
["Name"] = "Leg2",
["Parent"] = o1,
})
o380 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.591858, -3776.24146, 119.50927),
["Rotation"] = Vector3.new(179.999878, -0.000214124651, 3.52843928),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.591858, -3776.24146, 119.50927, 0.998104393, -0.0615439638, -3.73718012e-006, -0.0615439638, -0.998104393, -2.25718372e-006, -3.59117985e-006, 2.48290598e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o381 = Create("CylinderMesh",{
["Parent"] = o380,
})
o382 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.489059, -3775.4856, 119.509262),
["Rotation"] = Vector3.new(179.999878, -0.000212615443, 42.051918),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.489059, -3775.4856, 119.509262, 0.742538214, -0.669803739, -3.71083956e-006, -0.669803739, -0.742538214, -2.31179092e-006, -1.20699406e-006, 4.20212746e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o383 = Create("CylinderMesh",{
["Parent"] = o382,
})
o384 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.381668, -3777.39966, 119.509254),
["Rotation"] = Vector3.new(179.999878, -0.000203198491, 0.000154587382),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.381668, -3777.39966, 119.509254, 1, -2.69805878e-006, -3.54648273e-006, -2.69806696e-006, -1, -2.32176671e-006, -3.54647636e-006, 2.32177626e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o385 = Create("CylinderMesh",{
["Parent"] = o384,
})
o386 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.55452, -3777.56567, 119.515343),
["Rotation"] = Vector3.new(90.000061, -0.000136551913, 179.999802),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.55452, -3777.56567, 119.515343, -1, -3.59117689e-006, -2.38328039e-006, 2.38327652e-006, 1.04728531e-006, -1, 3.59117939e-006, -1, -1.04727678e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o387 = Create("CylinderMesh",{
["Parent"] = o386,
})
o388 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.48909, -3776.71118, 119.514847),
["Rotation"] = Vector3.new(90.0000687, -0.000136551913, 179.999802),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.48909, -3776.71118, 119.514847, -1, -3.59117666e-006, -2.38328039e-006, 2.38327652e-006, 1.10735596e-006, -1, 3.59117939e-006, -1, -1.10734743e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o389 = Create("CylinderMesh",{
["Parent"] = o388,
})
o390 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.631409, -3777.37231, 119.509247),
["Rotation"] = Vector3.new(179.999878, -0.000206335797, -6.42603302),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.631409, -3777.37231, 119.509247, 0.993717194, 0.111920446, -3.60123909e-006, 0.111920446, -0.993717253, -2.24253381e-006, -3.82959843e-006, 1.82539225e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o391 = Create("CylinderMesh",{
["Parent"] = o390,
})
o392 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.410233, -3775.61841, 119.509247),
["Rotation"] = Vector3.new(179.999878, -0.000214253902, 24.4042053),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.410233, -3775.61841, 119.509247, 0.910653353, -0.413171262, -3.7394359e-006, -0.413171232, -0.910653412, -2.25508711e-006, -2.47359276e-006, 3.59863043e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o393 = Create("CylinderMesh",{
["Parent"] = o392,
})
o394 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.381668, -3776.24146, 119.509254),
["Rotation"] = Vector3.new(179.999878, -0.000203198491, 0.000154587382),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.381668, -3776.24146, 119.509254, 1, -2.69805878e-006, -3.54648273e-006, -2.69806696e-006, -1, -2.32176671e-006, -3.54647636e-006, 2.32177626e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o395 = Create("CylinderMesh",{
["Parent"] = o394,
})
o396 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.211746, -3775.58521, 120.683807),
["Rotation"] = Vector3.new(117.89621, 89.7529221, 173.64888),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.211746, -3775.58521, 120.683807, -8.03265721e-006, -8.94069672e-007, 0.999990702, -1.0000062, 3.03415582e-005, -6.92438334e-006, -3.3762306e-005, -0.999994159, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o397 = Create("CylinderMesh",{
["Parent"] = o396,
})
o398 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.276199, -3777.86841, 120.682343),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.276199, -3777.86841, 120.682343, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o399 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.334305, -3776.71118, 120.676727),
["Rotation"] = Vector3.new(90.0001297, 7.21972319e-005, -4.61042036e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.334305, -3776.71118, 120.676727, 0.999990761, 8.04662704e-007, 1.26007944e-006, 2.38325447e-006, 1.10734254e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.32737511e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o400 = Create("CylinderMesh",{
["Parent"] = o399,
})
o401 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.334305, -3775.4856, 120.682343),
["Rotation"] = Vector3.new(0.000128205444, 0.000212230938, -137.94809),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.334305, -3775.4856, 120.682343, -0.742538333, 0.669803679, 3.70412863e-006, -0.669803619, -0.742538333, -2.23760708e-006, 1.25169981e-006, -4.14254737e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o402 = Create("CylinderMesh",{
["Parent"] = o401,
})
o403 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.441727, -3777.39966, 120.682343),
["Rotation"] = Vector3.new(-6.25392859e-005, 5.12264196e-005, -179.999908),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.441727, -3777.39966, 120.682343, -0.999990582, 1.60094351e-006, 8.94069672e-007, -2.6980415e-006, -1.00000608, 1.09151006e-006, 3.66568565e-006, -2.32178718e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o404 = Create("CylinderMesh",{
["Parent"] = o403,
})
o405 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.231522, -3776.24146, 120.682343),
["Rotation"] = Vector3.new(-6.42468367e-005, 5.12264196e-005, -176.47168),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.231522, -3776.24146, 120.682343, -0.998095274, 0.0615413338, 8.94069672e-007, -0.0615433976, -0.998110533, 1.12131238e-006, 3.57627869e-006, -2.48104334e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o406 = Create("CylinderMesh",{
["Parent"] = o405,
})
o407 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.413162, -3775.61841, 120.682343),
["Rotation"] = Vector3.new(0.000128818938, 0.000214078842, -155.595795),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.413162, -3775.61841, 120.682343, -0.910653412, 0.413171262, 3.73638068e-006, -0.413171232, -0.910653412, -2.24831456e-006, 2.47360845e-006, -3.59119963e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o408 = Create("CylinderMesh",{
["Parent"] = o407,
})
o409 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.191986, -3777.37231, 120.682343),
["Rotation"] = Vector3.new(-6.42468367e-005, 5.12264196e-005, 173.574005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.191986, -3777.37231, 120.682343, -0.993708074, -0.111918777, 8.94069672e-007, 0.111919418, -0.993723512, 1.12131238e-006, 3.96370888e-006, -1.8440187e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o410 = Create("CylinderMesh",{
["Parent"] = o409,
})
o411 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.441727, -3776.24146, 120.682343),
["Rotation"] = Vector3.new(-6.25392859e-005, 5.12264196e-005, -179.999908),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.441727, -3776.24146, 120.682343, -0.999990582, 1.60094351e-006, 8.94069672e-007, -2.6980415e-006, -1.00000608, 1.09151006e-006, 3.66568565e-006, -2.32178718e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o412 = Create("CylinderMesh",{
["Parent"] = o411,
})
o413 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.268875, -3777.56567, 120.676239),
["Rotation"] = Vector3.new(90.0001297, 7.25707578e-005, -4.7811769e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.268875, -3777.56567, 120.676239, 0.999990761, 8.34465027e-007, 1.2665987e-006, 2.38325447e-006, 1.04727224e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.35438347e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o414 = Create("CylinderMesh",{
["Parent"] = o413,
})
o415 = Create("Part",{
["Name"] = "Leg1",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.411697, -3776.68481, 119.903778),
["Rotation"] = Vector3.new(0.451253146, -89.7529221, -49.0934944),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.411697, -3776.68481, 119.903778, 8.94069672e-007, 1.03190541e-006, -0.999990702, 1.04680657e-006, 1.00000596, -2.88709998e-008, 0.999994159, 2.36090273e-006, 3.66568565e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o416 = Create("Weld",{
["Name"] = "exo leg end",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o398,
})
o417 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o399,
})
o418 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o413,
})
o419 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o409,
})
o420 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o411,
})
o421 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o401,
})
o422 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o403,
})
o423 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o405,
})
o424 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o396,
})
o425 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o415,
["Part0"] = o415,
["Part1"] = o407,
})
o426 = Create("Part",{
["Name"] = "Leg1",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.411697, -3776.68481, 120.287811),
["Rotation"] = Vector3.new(5.99779632e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.411697, -3776.68481, 120.287811, -8.34465027e-007, -1.03189609e-006, 1, 1.04681294e-006, 1, 1.031897e-006, -1, 1.04681385e-006, -8.34463947e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o427 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.547195, -3777.86841, 119.50927),
["Rotation"] = Vector3.new(-0.000129425651, 0.000202344643, -0.000140073098),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.547195, -3777.86841, 119.50927, 1, 2.44473677e-006, 3.53158021e-006, -2.44474472e-006, 1, 2.25890381e-006, -3.53157475e-006, -2.25891245e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o428 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.611633, -3775.58521, 119.50779),
["Rotation"] = Vector3.new(89.9980621, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.611633, -3775.58521, 119.50779, 8.03260264e-006, 8.34465027e-007, -1, -1, 3.3762095e-005, -8.03257444e-006, 3.37620877e-005, 1, 8.34736227e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o429 = Create("CylinderMesh",{
["Parent"] = o428,
})
o430 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o379,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.869705, -3775.43774, 119.610077),
["Rotation"] = Vector3.new(-0, -90, 0),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.869705, -3775.43774, 119.610077, -5.96046448e-008, 0, -1, 0, 1, 0, 1, 0, -5.96046448e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o431 = Create("Part",{
["Name"] = "Leg2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.712173, -3776.08521, 120.287811),
["Rotation"] = Vector3.new(-5.99779705e-005, -90, 0),
["CFrame"] = CFrame.new(181.712173, -3776.08521, 120.287811, 9.23871994e-007, 1.03189552e-006, -1, 1.04681305e-006, 1, 1.03189655e-006, 1, -1.04681396e-006, 9.23870914e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o432 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.713638, -3775.01782, 119.514389),
["Rotation"] = Vector3.new(0.000133231239, 0.000209516977, -155.595795),
["CFrame"] = CFrame.new(181.713638, -3775.01782, 119.514389, -0.910653412, 0.413171291, 3.65676101e-006, -0.413171351, -0.910653293, -2.32532375e-006, 2.36928486e-006, -3.62843252e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o433 = Create("CylinderMesh",{
["Parent"] = o432,
})
o434 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o379,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.254166, -3774.83716, 119.887421),
["Rotation"] = Vector3.new(0, 90, 0),
["Velocity"] = Vector3.new(0, -1, 0),
["CFrame"] = CFrame.new(181.254166, -3774.83716, 119.887421, 0, 0, 1, 0, 1, -0, -1, 0, 0),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o435 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.512222, -3774.98462, 119.515831),
["Rotation"] = Vector3.new(-89.9980621, 90, 0),
["CFrame"] = CFrame.new(181.512222, -3774.98462, 119.515831, -8.03261264e-006, -9.23871994e-007, 1, -1, 3.37621059e-005, -8.03258172e-006, -3.37620986e-005, -1, -9.24143194e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o436 = Create("CylinderMesh",{
["Parent"] = o435,
})
o437 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.57666, -3777.2688, 119.514374),
["Rotation"] = Vector3.new(-179.999878, -0.000208321086, 179.999863),
["CFrame"] = CFrame.new(181.57666, -3777.2688, 119.514374, -1, -2.44473699e-006, -3.63588879e-006, -2.44474518e-006, 1, 2.25890381e-006, 3.63588333e-006, 2.25891267e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o438 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.742203, -3775.64185, 119.514153),
["Rotation"] = Vector3.new(0.000133027424, 0.000208321144, -179.999847),
["CFrame"] = CFrame.new(181.742203, -3775.64185, 119.514153, -1, 2.69805923e-006, 3.6358897e-006, -2.69806765e-006, -1, -2.32176649e-006, 3.63588333e-006, -2.32177626e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o439 = Create("CylinderMesh",{
["Parent"] = o438,
})
o440 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.492447, -3776.77271, 119.514137),
["Rotation"] = Vector3.new(0.000129686872, 0.00021221496, 173.573975),
["CFrame"] = CFrame.new(181.492447, -3776.77271, 119.514137, -0.993717253, -0.111920461, 3.70384964e-006, 0.111920461, -0.993717253, -2.26346287e-006, 3.93390701e-006, -1.83470547e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o441 = Create("CylinderMesh",{
["Parent"] = o440,
})
o442 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.63475, -3776.1106, 119.508774),
["Rotation"] = Vector3.new(89.999939, 0.000136551942, -0.00020832062),
["CFrame"] = CFrame.new(181.63475, -3776.1106, 119.508774, 1, 3.6358806e-006, 2.38328107e-006, 2.38327698e-006, 1.10735641e-006, -1, -3.63588333e-006, 1, 1.10734777e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o443 = Create("CylinderMesh",{
["Parent"] = o442,
})
o444 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.531998, -3775.64185, 119.514145),
["Rotation"] = Vector3.new(0.000128952146, 0.000211535356, -176.471558),
["CFrame"] = CFrame.new(181.531998, -3775.64185, 119.514145, -0.998104453, 0.061543975, 3.69198847e-006, -0.0615439788, -0.998104393, -2.25063945e-006, 3.54647682e-006, -2.47359276e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o445 = Create("CylinderMesh",{
["Parent"] = o444,
})
o446 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.569351, -3776.96606, 119.508293),
["Rotation"] = Vector3.new(89.999939, 0.000136551942, -0.000208320635),
["CFrame"] = CFrame.new(181.569351, -3776.96606, 119.508293, 1, 3.63588083e-006, 2.38328084e-006, 2.38327698e-006, 1.04728554e-006, -1, -3.63588333e-006, 1, 1.0472769e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o447 = Create("CylinderMesh",{
["Parent"] = o446,
})
o448 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.742188, -3776.79907, 119.514427),
["Rotation"] = Vector3.new(0.000133027424, 0.000208321144, -179.999847),
["CFrame"] = CFrame.new(181.742188, -3776.79907, 119.514427, -1, 2.69805923e-006, 3.6358897e-006, -2.69806765e-006, -1, -2.32176649e-006, 3.63588333e-006, -2.32177626e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o449 = Create("CylinderMesh",{
["Parent"] = o448,
})
o450 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.634781, -3774.88599, 119.514389),
["Rotation"] = Vector3.new(0.000127681691, 0.00022555601, -137.948074),
["CFrame"] = CFrame.new(181.634781, -3774.88599, 119.514389, -0.742538154, 0.669803798, 3.93669507e-006, -0.669803739, -0.742538214, -2.22846597e-006, 1.43051147e-006, -4.29153442e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o451 = Create("CylinderMesh",{
["Parent"] = o450,
})
o452 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.912125, -3774.9856, 120.680672),
["Rotation"] = Vector3.new(89.9980621, -90, 0),
["CFrame"] = CFrame.new(181.912125, -3774.9856, 120.680672, 9.09315986e-006, -1.84785495e-006, -1, -1, 3.37616693e-005, -9.09322262e-006, 3.37616875e-005, 1, -1.84754822e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o453 = Create("CylinderMesh",{
["Parent"] = o452,
})
o454 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.847687, -3777.2688, 120.682137),
["Rotation"] = Vector3.new(-0.000129423628, 0.000208323254, -0.00014007563),
["CFrame"] = CFrame.new(181.847687, -3777.2688, 120.682137, 1, 2.44478088e-006, 3.63592653e-006, -2.44478906e-006, 1, 2.25886834e-006, -3.63592108e-006, -2.25887698e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o455 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.681992, -3775.64233, 120.682281),
["Rotation"] = Vector3.new(179.999878, -0.000211738443, 0.000154590089),
["CFrame"] = CFrame.new(181.681992, -3775.64233, 120.682281, 1, -2.69810607e-006, -3.695533e-006, -2.69811449e-006, -1, -2.32173102e-006, -3.69552663e-006, 2.32174011e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o456 = Create("CylinderMesh",{
["Parent"] = o455,
})
o457 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.931839, -3776.77344, 120.682281),
["Rotation"] = Vector3.new(179.999878, -0.000215562133, -6.42613077),
["CFrame"] = CFrame.new(181.931839, -3776.77344, 120.682281, 0.993717074, 0.111922152, -3.76226899e-006, 0.11192216, -0.993717015, -2.27600162e-006, -3.99336386e-006, 1.84061923e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o458 = Create("CylinderMesh",{
["Parent"] = o457,
})
o459 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.710693, -3775.01831, 120.682259),
["Rotation"] = Vector3.new(179.999878, -0.000215786626, 24.40452),
["CFrame"] = CFrame.new(181.710693, -3775.01831, 120.682259, 0.910651147, -0.413176298, -3.76618709e-006, -0.413176328, -0.910651088, -2.24827841e-006, -2.50074709e-006, 3.60349622e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o460 = Create("CylinderMesh",{
["Parent"] = o459,
})
o461 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.789444, -3776.11182, 120.687836),
["Rotation"] = Vector3.new(90.0002594, -0.000136555085, 179.999786),
["CFrame"] = CFrame.new(181.789444, -3776.11182, 120.687836, -1, -3.69551572e-006, -2.38333587e-006, 2.38331927e-006, 4.51510914e-006, -1, 3.6955264e-006, -1, -4.51510004e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o462 = Create("CylinderMesh",{
["Parent"] = o461,
})
o463 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.892365, -3775.64233, 120.682281),
["Rotation"] = Vector3.new(179.999878, -0.000214975618, 3.52849245),
["CFrame"] = CFrame.new(181.892365, -3775.64233, 120.682281, 0.998104334, -0.0615448914, -3.7520324e-006, -0.0615448914, -0.998104334, -2.25619965e-006, -3.60606145e-006, 2.48284073e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o464 = Create("CylinderMesh",{
["Parent"] = o463,
})
o465 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.854889, -3776.96631, 120.688278),
["Rotation"] = Vector3.new(90.0002594, -0.000136555085, 179.999786),
["CFrame"] = CFrame.new(181.854889, -3776.96631, 120.688278, -1, -3.69551617e-006, -2.38333587e-006, 2.38331927e-006, 4.45503747e-006, -1, 3.6955264e-006, -1, -4.45502837e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o466 = Create("CylinderMesh",{
["Parent"] = o465,
})
o467 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.682022, -3776.79956, 120.682266),
["Rotation"] = Vector3.new(179.999878, -0.000211738443, 0.000154590089),
["CFrame"] = CFrame.new(181.682022, -3776.79956, 120.682266, 1, -2.69810607e-006, -3.695533e-006, -2.69811449e-006, -1, -2.32173102e-006, -3.69552663e-006, 2.32174011e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o468 = Create("CylinderMesh",{
["Parent"] = o467,
})
o469 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.789627, -3774.88672, 120.682259),
["Rotation"] = Vector3.new(179.999878, -0.000213938663, 42.0523148),
["CFrame"] = CFrame.new(181.789627, -3774.88672, 120.682259, 0.742533565, -0.669808865, -3.73393414e-006, -0.669808865, -0.742533565, -2.23757047e-006, -1.27382691e-006, 4.16249395e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o470 = Create("CylinderMesh",{
["Parent"] = o469,
})
o471 = Create("Part",{
["Name"] = "Leg2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.712173, -3776.08521, 119.908676),
["Rotation"] = Vector3.new(5.9977956e-005, 90, 0),
["CFrame"] = CFrame.new(181.712173, -3776.08521, 119.908676, -9.23871994e-007, -1.03189598e-006, 1, 1.04681283e-006, 1, 1.031897e-006, -1, 1.04681374e-006, -9.23870914e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o472 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o467,
})
o473 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o455,
})
o474 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o469,
})
o475 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o459,
})
o476 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o463,
})
o477 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o461,
})
o478 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o457,
})
o479 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o465,
})
o480 = Create("Weld",{
["Name"] = "exo leg end",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o454,
})
o481 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o471,
["Part0"] = o471,
["Part1"] = o452,
})
o482 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.892349, -3775.64185, 117.815155),
["Rotation"] = Vector3.new(179.999878, -0.000215815846, 3.52843976),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.892349, -3775.64185, 117.815155, 0.998104453, -0.061543975, -3.76669709e-006, -0.0615439788, -0.998104393, -2.25163149e-006, -3.62098262e-006, 2.47918069e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o483 = Create("CylinderMesh",{
["Parent"] = o482,
})
o484 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.682144, -3775.64185, 117.815178),
["Rotation"] = Vector3.new(179.999878, -0.000211736202, 0.000154587382),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.682144, -3775.64185, 117.815178, 1, -2.69805878e-006, -3.69549389e-006, -2.69806742e-006, -1, -2.32176671e-006, -3.69548752e-006, 2.32177672e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o485 = Create("CylinderMesh",{
["Parent"] = o484,
})
o486 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.85498, -3776.96606, 117.821274),
["Rotation"] = Vector3.new(90.000061, -0.000136551927, 179.999786),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.85498, -3776.96606, 117.821274, -1, -3.63588083e-006, -2.38328062e-006, 2.38327675e-006, 1.04728531e-006, -1, 3.63588333e-006, -1, -1.04727667e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o487 = Create("CylinderMesh",{
["Parent"] = o486,
})
o488 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.682144, -3776.79907, 117.815178),
["Rotation"] = Vector3.new(179.999878, -0.000211736202, 0.000154587382),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.682144, -3776.79907, 117.815178, 1, -2.69805878e-006, -3.69549389e-006, -2.69806742e-006, -1, -2.32176671e-006, -3.69548752e-006, 2.32177672e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o489 = Create("CylinderMesh",{
["Parent"] = o488,
})
o490 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.789566, -3774.88599, 117.815163),
["Rotation"] = Vector3.new(179.999878, -0.000218321089, 42.0519104),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.789566, -3774.88599, 117.815163, 0.742538273, -0.669803619, -3.81042173e-006, -0.669803679, -0.742538273, -2.22196377e-006, -1.34110451e-006, 4.20212746e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o491 = Create("CylinderMesh",{
["Parent"] = o490,
})
o492 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.789551, -3776.1106, 117.820778),
["Rotation"] = Vector3.new(90.0000687, -0.000136551942, 179.999786),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.789551, -3776.1106, 117.820778, -1, -3.6358806e-006, -2.38328084e-006, 2.38327675e-006, 1.10735607e-006, -1, 3.63588333e-006, -1, -1.10734743e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o493 = Create("CylinderMesh",{
["Parent"] = o492,
})
o494 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.742218, -3775.64185, 118.988251),
["Rotation"] = Vector3.new(0.000133027439, 0.000204906042, -179.999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.742218, -3775.64185, 118.988251, -1, 2.69805878e-006, 3.57628505e-006, -2.69806719e-006, -1, -2.32176671e-006, 3.57627869e-006, -2.32177626e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o495 = Create("CylinderMesh",{
["Parent"] = o494,
})
o496 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.93187, -3776.77271, 117.815163),
["Rotation"] = Vector3.new(179.999878, -0.000214628788, -6.42603302),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.93187, -3776.77271, 117.815163, 0.993717194, 0.111920446, -3.74597903e-006, 0.111920446, -0.993717253, -2.28882641e-006, -3.97861004e-006, 1.85519457e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o497 = Create("CylinderMesh",{
["Parent"] = o496,
})
o498 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.710678, -3775.01782, 117.815178),
["Rotation"] = Vector3.new(179.999878, -0.000214959407, 24.4042053),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.710678, -3775.01782, 117.815178, 0.910653412, -0.413171291, -3.75174932e-006, -0.413171291, -0.910653412, -2.28222711e-006, -2.47359276e-006, 3.62843275e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o499 = Create("CylinderMesh",{
["Parent"] = o498,
})
o500 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.742218, -3776.79907, 118.988251),
["Rotation"] = Vector3.new(0.000133027439, 0.000204906042, -179.999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.742218, -3776.79907, 118.988251, -1, 2.69805878e-006, 3.57628505e-006, -2.69806719e-006, -1, -2.32176671e-006, 3.57627869e-006, -2.32177626e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o501 = Create("CylinderMesh",{
["Parent"] = o500,
})
o502 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.713623, -3775.01782, 118.988266),
["Rotation"] = Vector3.new(0.000130761982, 0.000214959407, -155.595795),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.713623, -3775.01782, 118.988266, -0.910653412, 0.413171291, 3.75174932e-006, -0.413171291, -0.910653412, -2.28222711e-006, 2.47359276e-006, -3.62843275e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o503 = Create("CylinderMesh",{
["Parent"] = o502,
})
o504 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.634766, -3776.1106, 118.982666),
["Rotation"] = Vector3.new(89.999939, 0.000136551927, -0.000204905518),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.634766, -3776.1106, 118.982666, 1, 3.57627596e-006, 2.38328062e-006, 2.38327675e-006, 1.10735607e-006, -1, -3.57627869e-006, 1, 1.10734754e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o505 = Create("CylinderMesh",{
["Parent"] = o504,
})
o506 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.634811, -3774.88599, 118.988251),
["Rotation"] = Vector3.new(0.000132580055, 0.000215027118, -137.948074),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.634811, -3774.88599, 118.988251, -0.742538154, 0.669803739, 3.75293121e-006, -0.669803798, -0.742538154, -2.31395848e-006, 1.23679638e-006, -4.23192978e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o507 = Create("CylinderMesh",{
["Parent"] = o506,
})
o508 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.569351, -3776.96606, 118.982162),
["Rotation"] = Vector3.new(89.999939, 0.000136551913, -0.000204905533),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.569351, -3776.96606, 118.982162, 1, 3.57627619e-006, 2.38328039e-006, 2.38327675e-006, 1.04728542e-006, -1, -3.57627869e-006, 1, 1.0472769e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o509 = Create("CylinderMesh",{
["Parent"] = o508,
})
o510 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.531982, -3775.64185, 118.988243),
["Rotation"] = Vector3.new(0.000129008986, 0.000215815831, -176.471558),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.531982, -3775.64185, 118.988243, -0.998104453, 0.061543975, 3.76669686e-006, -0.0615439788, -0.998104393, -2.25163149e-006, 3.62098262e-006, -2.47918069e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o511 = Create("CylinderMesh",{
["Parent"] = o510,
})
o512 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.492462, -3776.77271, 118.988251),
["Rotation"] = Vector3.new(0.000129113527, 0.000207124496, 173.573975),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.492462, -3776.77271, 118.988251, -0.993717253, -0.111920461, 3.61500429e-006, 0.111920461, -0.993717253, -2.25345616e-006, 3.84450004e-006, -1.83470547e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o513 = Create("CylinderMesh",{
["Parent"] = o512,
})
o514 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.512207, -3774.98462, 118.989738),
["Rotation"] = Vector3.new(-89.9980621, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.512207, -3774.98462, 118.989738, -8.03260264e-006, -8.64267349e-007, 1, -1, 3.37620877e-005, -8.03257353e-006, -3.37620804e-005, -1, -8.64538549e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o515 = Create("CylinderMesh",{
["Parent"] = o514,
})
o516 = Create("Part",{
["Name"] = "Leg1",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.712158, -3776.08521, 118.593735),
["Rotation"] = Vector3.new(5.9977956e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.712158, -3776.08521, 118.593735, -9.23871994e-007, -1.03189598e-006, 1, 1.04681283e-006, 1, 1.031897e-006, -1, 1.04681374e-006, -9.23870914e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o517 = Create("Weld",{
["Name"] = "exo leg end",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o529,
})
o518 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o531,
})
o519 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o492,
})
o520 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o490,
})
o521 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o488,
})
o522 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o482,
})
o523 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o498,
})
o524 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o496,
})
o525 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o486,
})
o526 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o516,
["Part0"] = o516,
["Part1"] = o484,
})
o527 = Create("Part",{
["Name"] = "Leg1",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.712158, -3776.08521, 118.209694),
["Rotation"] = Vector3.new(-5.99779705e-005, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.712158, -3776.08521, 118.209694, 8.64267349e-007, 1.03189598e-006, -1, 1.04681305e-006, 1, 1.03189689e-006, 1, -1.04681396e-006, 8.64266269e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o528 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o379,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.254166, -3774.83716, 118.887421),
["Rotation"] = Vector3.new(0, 90, 0),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.254166, -3774.83716, 118.887421, 0, 0, 1, 0, 1, -0, -1, 0, 0),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o529 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.847656, -3777.2688, 117.815178),
["Rotation"] = Vector3.new(-0.000129425709, 0.000204905984, -0.000140073083),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.847656, -3777.2688, 117.815178, 1, 2.44473654e-006, 3.57628414e-006, -2.44474472e-006, 1, 2.25890471e-006, -3.57627869e-006, -2.25891336e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o530 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.57666, -3777.2688, 118.988235),
["Rotation"] = Vector3.new(-179.999878, -0.000204905984, 179.999863),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.57666, -3777.2688, 118.988235, -1, -2.44473677e-006, -3.57628414e-006, -2.44474495e-006, 1, 2.25890381e-006, 3.57627869e-006, 2.25891245e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o531 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o379,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.912109, -3774.98462, 117.813705),
["Rotation"] = Vector3.new(89.9980621, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.912109, -3774.98462, 117.813705, 8.032609e-006, 9.23871994e-007, -1, -1, 3.37621059e-005, -8.03257808e-006, 3.37620986e-005, 1, 9.24143194e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o532 = Create("CylinderMesh",{
["Parent"] = o531,
})
o533 = Create("Model",{
["Name"] = "Leg1",
["Parent"] = o1,
})
o534 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o533,
["BrickColor"] = BrickColor.new("Institutional white"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.869705, -3775.43774, 118.610077),
["Rotation"] = Vector3.new(-0, -90, 0),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.869705, -3775.43774, 118.610077, -5.96046448e-008, 0, -1, 0, 1, 0, 1, 0, -5.96046448e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 2, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.972549, 0.972549, 0.972549),
})
o535 = Create("Part",{
["Name"] = "Leg2",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.411697, -3776.68481, 118.588837),
["Rotation"] = Vector3.new(0.451253146, -89.7529221, -49.0934944),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.411697, -3776.68481, 118.588837, 8.94069672e-007, 1.03190541e-006, -0.999990702, 1.04680657e-006, 1.00000596, -2.88709998e-008, 0.999994159, 2.36090273e-006, 3.66568565e-006),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o536 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o548,
})
o537 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o560,
})
o538 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o546,
})
o539 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o556,
})
o540 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o552,
})
o541 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o554,
})
o542 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o558,
})
o543 = Create("Weld",{
["Name"] = "Brick",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o550,
})
o544 = Create("Weld",{
["Name"] = "exo leg end",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o562,
})
o545 = Create("Weld",{
["Name"] = "extra 2",
["Parent"] = o535,
["Part0"] = o535,
["Part1"] = o563,
})
o546 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.334305, -3775.4856, 117.815399),
["Rotation"] = Vector3.new(0.000128205444, 0.000212230938, -137.94809),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.334305, -3775.4856, 117.815399, -0.742538333, 0.669803679, 3.70412863e-006, -0.669803619, -0.742538333, -2.23760708e-006, 1.25169981e-006, -4.14254737e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o547 = Create("CylinderMesh",{
["Parent"] = o546,
})
o548 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.441727, -3777.39966, 117.815399),
["Rotation"] = Vector3.new(-6.25392859e-005, 5.12264196e-005, -179.999908),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.441727, -3777.39966, 117.815399, -0.999990582, 1.60094351e-006, 8.94069672e-007, -2.6980415e-006, -1.00000608, 1.09151006e-006, 3.66568565e-006, -2.32178718e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o549 = Create("CylinderMesh",{
["Parent"] = o548,
})
o550 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.268875, -3777.56567, 117.809296),
["Rotation"] = Vector3.new(90.0001297, 7.25707578e-005, -4.7811769e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.268875, -3777.56567, 117.809296, 0.999990761, 8.34465027e-007, 1.2665987e-006, 2.38325447e-006, 1.04727224e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.35438347e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o551 = Create("CylinderMesh",{
["Parent"] = o550,
})
o552 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.231522, -3776.24146, 117.815155),
["Rotation"] = Vector3.new(-6.42468367e-005, 5.12264196e-005, -176.47168),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.231522, -3776.24146, 117.815155, -0.998095274, 0.0615413338, 8.94069672e-007, -0.0615433976, -0.998110533, 1.12131238e-006, 3.57627869e-006, -2.48104334e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o553 = Create("CylinderMesh",{
["Parent"] = o552,
})
o554 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.334305, -3776.71118, 117.809784),
["Rotation"] = Vector3.new(90.0001297, 7.21972319e-005, -4.61042036e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.334305, -3776.71118, 117.809784, 0.999990761, 8.04662704e-007, 1.26007944e-006, 2.38325447e-006, 1.10734254e-006, -1.0000062, -3.66568565e-006, 0.999994099, -2.32737511e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o555 = Create("CylinderMesh",{
["Parent"] = o554,
})
o556 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.413162, -3775.61841, 117.815399),
["Rotation"] = Vector3.new(0.000128818938, 0.000214078842, -155.595795),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.413162, -3775.61841, 117.815399, -0.910653412, 0.413171262, 3.73638068e-006, -0.413171232, -0.910653412, -2.24831456e-006, 2.47360845e-006, -3.59119963e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o557 = Create("CylinderMesh",{
["Parent"] = o556,
})
o558 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.191986, -3777.37231, 117.815155),
["Rotation"] = Vector3.new(-6.42468367e-005, 5.12264196e-005, 173.574005),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.191986, -3777.37231, 117.815155, -0.993708074, -0.111918777, 8.94069672e-007, 0.111919418, -0.993723512, 1.12131238e-006, 3.96370888e-006, -1.8440187e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o559 = Create("CylinderMesh",{
["Parent"] = o558,
})
o560 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.441727, -3776.24146, 117.815155),
["Rotation"] = Vector3.new(-6.25392859e-005, 5.12264196e-005, -179.999908),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.441727, -3776.24146, 117.815155, -0.999990582, 1.60094351e-006, 8.94069672e-007, -2.6980415e-006, -1.00000608, 1.09151006e-006, 3.66568565e-006, -2.32178718e-006, 0.999994218),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o561 = Create("CylinderMesh",{
["Parent"] = o560,
})
o562 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.276199, -3777.86841, 117.815399),
["Rotation"] = Vector3.new(179.999939, -4.78113252e-005, 179.999924),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.276199, -3777.86841, 117.815399, -0.999990642, -1.35786831e-006, -8.34465027e-007, -2.44472176e-006, 1.00000608, -1.15158036e-006, 3.60608101e-006, 2.2589229e-006, -0.999994159),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o563 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.211746, -3775.58521, 117.816864),
["Rotation"] = Vector3.new(117.89621, 89.7529221, 173.64888),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.211746, -3775.58521, 117.816864, -8.03265721e-006, -8.94069672e-007, 0.999990702, -1.0000062, 3.03415582e-005, -6.92438334e-006, -3.3762306e-005, -0.999994159, -3.66568565e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o564 = Create("CylinderMesh",{
["Parent"] = o563,
})
o565 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.489075, -3775.4856, 118.983116),
["Rotation"] = Vector3.new(179.999878, -0.000219589012, 42.0519104),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.489075, -3775.4856, 118.983116, 0.742538273, -0.669803619, -3.8325511e-006, -0.669803679, -0.742538273, -2.20200218e-006, -1.37090683e-006, 4.20212746e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o566 = Create("CylinderMesh",{
["Parent"] = o565,
})
o567 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.381668, -3777.39966, 118.983101),
["Rotation"] = Vector3.new(179.999878, -0.000208321144, 0.000154587397),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.381668, -3777.39966, 118.983101, 1, -2.69805901e-006, -3.6358897e-006, -2.69806742e-006, -1, -2.32176649e-006, -3.63588333e-006, 2.32177626e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o568 = Create("CylinderMesh",{
["Parent"] = o567,
})
o569 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.55452, -3777.56567, 118.989235),
["Rotation"] = Vector3.new(90.000061, -0.000136551927, 179.999786),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.55452, -3777.56567, 118.989235, -1, -3.63588083e-006, -2.38328062e-006, 2.38327675e-006, 1.04728531e-006, -1, 3.63588333e-006, -1, -1.04727667e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o570 = Create("CylinderMesh",{
["Parent"] = o569,
})
o571 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.591873, -3776.24146, 118.983368),
["Rotation"] = Vector3.new(179.999878, -0.000211545208, 3.52843928),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.591873, -3776.24146, 118.983368, 0.998104453, -0.0615439676, -3.69216036e-006, -0.0615439713, -0.998104393, -2.25342819e-006, -3.54647682e-006, 2.47638673e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o572 = Create("CylinderMesh",{
["Parent"] = o571,
})
o573 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.489105, -3776.71118, 118.988739),
["Rotation"] = Vector3.new(90.0000687, -0.000136551942, 179.999786),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.489105, -3776.71118, 118.988739, -1, -3.6358806e-006, -2.38328084e-006, 2.38327675e-006, 1.10735618e-006, -1, 3.63588333e-006, -1, -1.10734754e-006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030898, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o574 = Create("CylinderMesh",{
["Parent"] = o573,
})
o575 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.631409, -3777.37231, 118.983368),
["Rotation"] = Vector3.new(179.999878, -0.000211342631, -6.42603302),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.631409, -3777.37231, 118.983368, 0.993717194, 0.111920446, -3.6886247e-006, 0.111920446, -0.993717253, -2.26549673e-006, -3.91900539e-006, 1.83843076e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o576 = Create("CylinderMesh",{
["Parent"] = o575,
})
o577 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.381653, -3776.24146, 118.98336),
["Rotation"] = Vector3.new(179.999878, -0.000208321144, 0.000154587397),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.381653, -3776.24146, 118.98336, 1, -2.69805901e-006, -3.6358897e-006, -2.69806742e-006, -1, -2.32176649e-006, -3.63588333e-006, 2.32177626e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 1.19671988, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o578 = Create("CylinderMesh",{
["Parent"] = o577,
})
o579 = Create("Part",{
["Name"] = "Brick",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.410217, -3775.61841, 118.983131),
["Rotation"] = Vector3.new(179.999878, -0.000209164209, 24.4042053),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.410217, -3775.61841, 118.983131, 0.910653412, -0.413171291, -3.65060419e-006, -0.413171291, -0.910653412, -2.31175409e-006, -2.36928463e-006, 3.61353159e-006, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.263015449, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o580 = Create("CylinderMesh",{
["Parent"] = o579,
})
o581 = Create("Part",{
["Name"] = "Leg2",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Transparency"] = 1,
["Position"] = Vector3.new(181.411697, -3776.68481, 118.209686),
["Rotation"] = Vector3.new(5.99779632e-005, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.411697, -3776.68481, 118.209686, -9.23871994e-007, -1.03189586e-006, 1, 1.04681294e-006, 1, 1.03189689e-006, -1, 1.04681385e-006, -9.23870914e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.31507719, 2.63015389, 1.31507683),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o582 = Create("Part",{
["Name"] = "exo leg end",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.547195, -3777.86841, 118.983139),
["Rotation"] = Vector3.new(-0.000129425665, 0.000208321086, -0.000140073098),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.547195, -3777.86841, 118.983139, 1, 2.44473677e-006, 3.63588879e-006, -2.44474495e-006, 1, 2.25890403e-006, -3.63588333e-006, -2.2589129e-006, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.526030838, 0.26301536, 0.26301536),
})
o583 = Create("Part",{
["Name"] = "extra 2",
["Parent"] = o533,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(181.611633, -3775.58521, 118.981667),
["Rotation"] = Vector3.new(89.9980621, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(181.611633, -3775.58521, 118.981667, 8.03260991e-006, 9.23871994e-007, -1, -1, 3.37621022e-005, -8.03257899e-006, 3.3762095e-005, 1, 9.24143194e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.355070889, 0.26301536, 0.526030719),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o584 = Create("CylinderMesh",{
["Parent"] = o583,
})
o585 = Create("Part",{
["Name"] = "Head",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(189.269867, -3776.33716, 117.210175),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(189.269867, -3776.33716, 117.210175, 5.96046448e-008, 0, 1, 0, 1, 0, -1, 0, 5.96046448e-008),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o586 = Create("Script",{
["Name"] = "Arm1",
["Parent"] = o585,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Arm1") == nil then
		local g = script.Parent.Parent.Arm1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Left Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o586)
end))
o587 = Create("Script",{
["Name"] = "Leg1",
["Parent"] = o585,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Leg1") == nil then
		local g = script.Parent.Parent.Leg1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Left Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o587)
end))
o588 = Create("Script",{
["Name"] = "Leg2",
["Parent"] = o585,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Leg2") == nil then
		local g = script.Parent.Parent.Leg2:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Right Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o588)
end))
o589 = Create("Script",{
["Name"] = "Arm2",
["Parent"] = o585,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Arm2") == nil then
		local g = script.Parent.Parent.Arm2:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Right Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o589)
end))
o590 = Create("Script",{
["Name"] = "Torso",
["Parent"] = o585,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Chest") == nil then
		local g = script.Parent.Parent.Chest:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent.Torso
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end
end

script.Parent.Touched:connect(onTouched)

end,o590)
end))
o591 = Create("Script",{
["Name"] = "HatRemover",
["Parent"] = o585,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit) 
	local d = hit.Parent:GetChildren() 
	for i=1, #d do 
		if (d[i].className == "Hat") then 
			d[i].Handle.Transparency = 1
		end 
	end
end 

script.Parent.Touched:connect(onTouched) 
end,o591)
end))
o592 = Create("Script",{
["Name"] = "Cframe",
["Parent"] = o585,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()

wait(2.9)

local p = script.Parent
local me = game.Players.LocalPlayer.Character


p.Shape = "Ball"

game:GetService('RunService').Stepped:connect(function()
	p.CFrame = me.Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
end)

wait(0.5)


p:Remove()
end,o592)
end))
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
--------------------------------------------
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
char=Character
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
torso=Torso
Head=Character.Head 
hed=Head
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
larm=LeftArm
LeftLeg=Character["Left Leg"] 
lleg=LeftLeg
RightArm=Character["Right Arm"] 
rarm=RightArm
RightLeg=Character["Right Leg"] 
rleg=RightLeg
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
sphere=true
aura=false
blinking=true
rest=false
-----------------------------
Partical = Instance.new("ParticleEmitter")
Partical.Parent = hed
Partical.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
Partical.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
Partical.Speed = NumberRange.new(0,0)
Partical.Rate = 1500
Partical.Lifetime = NumberRange.new(0.5)


Partical = Instance.new("ParticleEmitter")
Partical.Parent = larm
Partical.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
Partical.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
Partical.Speed = NumberRange.new(0,0)
Partical.Rate = 1500
Partical.Lifetime = NumberRange.new(0.5)


Partical = Instance.new("ParticleEmitter")
Partical.Parent = rarm
Partical.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
Partical.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
Partical.Speed = NumberRange.new(0,0)
Partical.Rate = 1500
Partical.Lifetime = NumberRange.new(0.5)


Partical = Instance.new("ParticleEmitter")
Partical.Parent = torso
Partical.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
Partical.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
Partical.Speed = NumberRange.new(0,0)
Partical.Rate = 1500
Partical.Lifetime = NumberRange.new(0.5)


Partical = Instance.new("ParticleEmitter")
Partical.Parent = lleg
Partical.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
Partical.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
Partical.Speed = NumberRange.new(0,0)
Partical.Rate = 1500
Partical.Lifetime = NumberRange.new(0.5)


Partical = Instance.new("ParticleEmitter")
Partical.Parent = rleg
Partical.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
Partical.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
Partical.Speed = NumberRange.new(0,0)
Partical.Rate = 1500
Partical.Lifetime = NumberRange.new(0.5)
-----------------------------

Head.face:Destroy()

game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function(jump)
        if jump == "Jump" then
                Humanoid.Jump = false
        end
end)

Humanoid.MaxHealth = 50000
wait(0.1)
Humanoid.Health = 50000

print("ur a brainiac")

RootPart.Transparency = 1

Humanoid.CameraOffset = Vector3.new(0, 12.5, 0)

Humanoid:findFirstChild("Animator"):Destroy()

Torso.Transparency = 1
Head.Transparency = 1
LeftLeg.Transparency = 1
RightLeg.Transparency = 1
LeftArm.Transparency = 1
RightArm.Transparency = 1

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)

music = Instance.new("Sound", Character)
music.SoundId = "http://www.roblox.com/asset/?id=340106355"
music.Volume = 0
music.Looped = true
wait(0.1)
music:Play()

music2 = Instance.new("Sound", Character)
music2.SoundId = "http://www.roblox.com/asset/?id=340106807"
music2.Volume = 0.5
music2.Looped = true

rawr = Instance.new("Sound", Character)
rawr.SoundId = "http://www.roblox.com/asset/?id=297472596"
rawr.Volume = 0.5
rawr.Looped = false

Beast = Instance.new("Model",Character)
Beast.Name = "The Beast from The Depths"

torsop=Instance.new("Part",Character)
torsop.FormFactor="Custom"
torsop.Size=Vector3.new(.2,.2,.2)
torsop.Transparency=1
torsop.CanCollide=false
torsop.BrickColor = BrickColor.new("Light reddish violet")
torsop.Material="Sand"
torsop.TopSurface="Smooth"
torsop.BottomSurface="Smooth"
torsop.RightSurface="Smooth"
torsop.LeftSurface="Smooth"
torsopw=Instance.new("Weld",Character)
torsopw.Part0=Character.Torso
torsopw.Part1=torsop
torsopw.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-90),math.rad(0))

torso = Instance.new("SpecialMesh",torsop)
torso.MeshType = "Sphere"
torso.Scale = Vector3.new(45,45,45)

ghostp=Instance.new("Part",Character)
ghostp.FormFactor="Custom"
ghostp.Size=Vector3.new(0.2,0.2,0.2)
ghostp.Transparency=1
ghostp.CanCollide=false
ghostp.BrickColor = BrickColor.new("Institutional white")
ghostp.Material="Neon"
ghostp.TopSurface="Smooth"
ghostp.BottomSurface="Smooth"
ghostp.RightSurface="Smooth"
ghostp.LeftSurface="Smooth"
ghostw=Instance.new("Weld",Character)
ghostw.Part0=Character.Torso
ghostw.Part1=ghostp
ghostw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(5,5,5)

ghostp2=Instance.new("Part",Character)
ghostp2.FormFactor="Custom"
ghostp2.Size=Vector3.new(0.2,0.2,0.2)
ghostp2.Transparency=1
ghostp2.CanCollide=false
ghostp2.BrickColor = BrickColor.new("Institutional white")
ghostp2.Material="Neon"
ghostp2.TopSurface="Smooth"
ghostp2.BottomSurface="Smooth"
ghostp2.RightSurface="Smooth"
ghostp2.LeftSurface="Smooth"
ghostw2=Instance.new("Weld",Character)
ghostw2.Part0=Character.Torso
ghostw2.Part1=ghostp2
ghostw2.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh2 = Instance.new("FileMesh",ghostp2)
ghostmesh2.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh2.Scale = Vector3.new(10,10,10)

ghostp3=Instance.new("Part",Character)
ghostp3.FormFactor="Custom"
ghostp3.Size=Vector3.new(0.2,0.2,0.2)
ghostp3.Transparency=1
ghostp3.CanCollide=false
ghostp3.BrickColor = BrickColor.new("Institutional white")
ghostp3.Material="Neon"
ghostp3.TopSurface="Smooth"
ghostp3.BottomSurface="Smooth"
ghostp3.RightSurface="Smooth"
ghostp2.LeftSurface="Smooth"
ghostw3=Instance.new("Weld",Character)
ghostw3.Part0=Character.Torso
ghostw3.Part1=ghostp3
ghostw3.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh3 = Instance.new("FileMesh",ghostp3)
ghostmesh3.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh3.Scale = Vector3.new(15,15,15)

ghostp4=Instance.new("Part",Character)
ghostp4.FormFactor="Custom"
ghostp4.Size=Vector3.new(0.2,0.2,0.2)
ghostp4.Transparency=1
ghostp4.CanCollide=false
ghostp4.BrickColor = BrickColor.new("Institutional white")
ghostp4.Material="Neon"
ghostp4.TopSurface="Smooth"
ghostp4.BottomSurface="Smooth"
ghostp4.RightSurface="Smooth"
ghostp4.LeftSurface="Smooth"
ghostw4=Instance.new("Weld",Character)
ghostw4.Part0=Character.Torso
ghostw4.Part1=ghostp4
ghostw4.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh4 = Instance.new("FileMesh",ghostp4)
ghostmesh4.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh4.Scale = Vector3.new(20,20,20)

ghostp5=Instance.new("Part",Character)
ghostp5.FormFactor="Custom"
ghostp5.Size=Vector3.new(0.2,0.2,0.2)
ghostp5.Transparency=1
ghostp5.CanCollide=false
ghostp5.BrickColor = BrickColor.new("Institutional white")
ghostp5.Material="Neon"
ghostp5.TopSurface="Smooth"
ghostp5.BottomSurface="Smooth"
ghostp5.RightSurface="Smooth"
ghostp5.LeftSurface="Smooth"
ghost5w=Instance.new("Weld",Character)
ghost5w.Part0=Character.Torso
ghost5w.Part1=ghostp5
ghost5w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp5)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(2.5,2.5,2.5)

ghostp6=Instance.new("Part",Character)
ghostp6.FormFactor="Custom"
ghostp6.Size=Vector3.new(0.2,0.2,0.2)
ghostp6.Transparency=1
ghostp6.CanCollide=false
ghostp6.BrickColor = BrickColor.new("Institutional white")
ghostp6.Material="Neon"
ghostp6.TopSurface="Smooth"
ghostp6.BottomSurface="Smooth"
ghostp6.RightSurface="Smooth"
ghostp6.LeftSurface="Smooth"
ghost6w=Instance.new("Weld",Character)
ghost6w.Part0=Character.Torso
ghost6w.Part1=ghostp6
ghost6w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp6)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(7.5,7.5,7.5)

ghostp7=Instance.new("Part",Character)
ghostp7.FormFactor="Custom"
ghostp7.Size=Vector3.new(0.2,0.2,0.2)
ghostp7.Transparency=1
ghostp7.CanCollide=false
ghostp7.BrickColor = BrickColor.new("Institutional white")
ghostp7.Material="Neon"
ghostp7.TopSurface="Smooth"
ghostp7.BottomSurface="Smooth"
ghostp7.RightSurface="Smooth"
ghostp7.LeftSurface="Smooth"
ghost7w=Instance.new("Weld",Character)
ghost7w.Part0=Character.Torso
ghost7w.Part1=ghostp7
ghost7w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp7)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(12.5,12.5,12.5)

ghostp8=Instance.new("Part",Character)
ghostp8.FormFactor="Custom"
ghostp8.Size=Vector3.new(0.2,0.2,0.2)
ghostp8.Transparency=1
ghostp8.CanCollide=false
ghostp8.BrickColor = BrickColor.new("Institutional white")
ghostp8.Material="Neon"
ghostp8.TopSurface="Smooth"
ghostp8.BottomSurface="Smooth"
ghostp8.RightSurface="Smooth"
ghostp8.LeftSurface="Smooth"
ghost8w=Instance.new("Weld",Character)
ghost8w.Part0=Character.Torso
ghost8w.Part1=ghostp8
ghost8w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

ghostmesh = Instance.new("FileMesh",ghostp8)
ghostmesh.MeshId = "http://www.roblox.com/asset/?id=168892432"
ghostmesh.Scale = Vector3.new(17.5,17.5,17.5)

eyeoutline=Instance.new("Part",Character)
eyeoutline.FormFactor="Custom"
eyeoutline.Size=Vector3.new(.2,.2,.2)
eyeoutline.Transparency=0
eyeoutline.CanCollide=false
eyeoutline.BrickColor = BrickColor.new("Really black")
eyeoutline.Material="SmoothPlastic"
eyeoutline.TopSurface="Smooth"
eyeoutline.BottomSurface="Smooth"
eyeoutline.RightSurface="Smooth"
eyeoutline.LeftSurface="Smooth"
eyeoutlinew=Instance.new("Weld",Character)
eyeoutlinew.Part0=Character.Torso
eyeoutlinew.Part1=eyeoutline
eyeoutlinew.C0=CFrame.new(-1.5,0,-4.1)*CFrame.Angles(0,math.rad(20),math.rad(0))

eyemesh = Instance.new("SpecialMesh",eyeoutline)
eyemesh.MeshType = "Sphere"
eyemesh.Scale = Vector3.new(8.5,8.5,2)

eyep=Instance.new("Part",Character)
eyep.FormFactor="Custom"
eyep.Size=Vector3.new(.2,.2,.2)
eyep.Transparency=0
eyep.CanCollide=false
eyep.BrickColor = BrickColor.new("White") --Cyan
eyep.Material="Neon"
eyep.TopSurface="Smooth"
eyep.BottomSurface="Smooth"
eyep.RightSurface="Smooth"
eyep.LeftSurface="Smooth"
eyepw=Instance.new("Weld",Character)
eyepw.Part0=eyeoutline
eyepw.Part1=eyep
eyepw.C0=CFrame.new(0,0,-0.1)*CFrame.Angles(0,math.rad(0),math.rad(0))

eyepmesh = Instance.new("SpecialMesh",eyep)
eyepmesh.MeshType = "Sphere"
eyepmesh.Scale = Vector3.new(7.5,7.5,2)

eyeoutline2=Instance.new("Part",Character)
eyeoutline2.FormFactor="Custom"
eyeoutline2.Size=Vector3.new(.2,.2,.2)
eyeoutline2.Transparency=0
eyeoutline2.CanCollide=false
eyeoutline2.BrickColor = BrickColor.new("Really black")
eyeoutline2.Material="SmoothPlastic"
eyeoutline2.TopSurface="Smooth"
eyeoutline2.BottomSurface="Smooth"
eyeoutline2.RightSurface="Smooth"
eyeoutline2.LeftSurface="Smooth"
eyeoutline2w=Instance.new("Weld",Character)
eyeoutline2w.Part0=Character.Torso
eyeoutline2w.Part1=eyeoutline2
eyeoutline2w.C0=CFrame.new(1.5,0,-4.1)*CFrame.Angles(0,math.rad(-20),math.rad(0))

eyemesh = Instance.new("SpecialMesh",eyeoutline2)
eyemesh.MeshType = "Sphere"
eyemesh.Scale = Vector3.new(8.5,8.5,2)

eyep2=Instance.new("Part",Character)
eyep2.FormFactor="Custom"
eyep2.Size=Vector3.new(.2,.2,.2)
eyep2.Transparency=0
eyep2.CanCollide=false
eyep2.BrickColor = BrickColor.new("White") --Cyan
eyep2.Material="Neon"
eyep2.TopSurface="Smooth"
eyep2.BottomSurface="Smooth"
eyep2.RightSurface="Smooth"
eyep2.LeftSurface="Smooth"
eyep2w=Instance.new("Weld",Character)
eyep2w.Part0=eyeoutline2
eyep2w.Part1=eyep2
eyep2w.C0=CFrame.new(0,0,-0.1)*CFrame.Angles(0,math.rad(0),math.rad(0))

eyep2mesh = Instance.new("SpecialMesh",eyep2)
eyep2mesh.MeshType = "Sphere"
eyep2mesh.Scale = Vector3.new(7.5,7.5,2)

local spotlight = Instance.new("SpotLight", eyep)
spotlight.Shadows = true
spotlight.Color = Color3.new(0, 0.666667, 1)
spotlight.Range = 24
spotlight.Angle = 60
spotlight.Brightness = 100

local spotlight2 = Instance.new("SpotLight", eyep2)
spotlight2.Shadows = true
spotlight2.Color = Color3.new(0, 0.666667, 1)
spotlight2.Range = 24
spotlight2.Angle = 60
spotlight2.Brightness = 100

local particleemitter = Instance.new("ParticleEmitter", Torso)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(1)
particleemitter.Speed = NumberRange.new(10)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter.RotSpeed = NumberRange.new(-180, 180)
particleemitter.Rotation = NumberRange.new(-360, 360)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 1
particleemitter.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))

emitterp=Instance.new("Part",Character)
emitterp.FormFactor="Custom"
emitterp.Size=Vector3.new(5,.2,5)
emitterp.Transparency=1
emitterp.CanCollide=false
emitterp.BrickColor = BrickColor.new("Cyan")
emitterp.Material="Neon"
emitterp.TopSurface="Smooth"
emitterp.BottomSurface="Smooth"
emitterp.RightSurface="Smooth"
emitterp.LeftSurface="Smooth"
emitterpw=Instance.new("Weld",Character)
emitterpw.Part0=Character.Torso
emitterpw.Part1=emitterp
emitterpw.C0=CFrame.new(0,-4,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

local emitter = Instance.new("ParticleEmitter", emitterp)
emitter.EmissionDirection = "Bottom"
emitter.VelocitySpread = 30
emitter.Lifetime = NumberRange.new(1)
emitter.Speed = NumberRange.new(10)
emitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2, 0), NumberSequenceKeypoint.new(1, 2, 0)})
emitter.RotSpeed = NumberRange.new(-180, 180)
emitter.Rate = 1000
emitter.Rotation = NumberRange.new(-360, 360)
emitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
emitter.LightEmission = 1
emitter.Texture = "http://www.roblox.com/asset/?id=0" --31727915"
emitter.Color = ColorSequence.new(Color3.new(0.596078, 0.847059, 1), Color3.new(0.596078, 0.847059, 1))

local eyeeffect = Instance.new("ParticleEmitter", eyep)
eyeeffect.Lifetime = NumberRange.new(1)
eyeeffect.Speed = NumberRange.new(0)
eyeeffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 4), NumberSequenceKeypoint.new(1, 4)})
eyeeffect.RotSpeed = NumberRange.new(1080)
eyeeffect.Rate = 25
eyeeffect.Rotation = NumberRange.new(-360, 360)
eyeeffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.11, 0), NumberSequenceKeypoint.new(0.99, 1), NumberSequenceKeypoint.new(1, 1)})
eyeeffect.LightEmission = 0.5
eyeeffect.Texture = "http://www.roblox.com/asset/?id=242292288"
eyeeffect.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
eyeeffect.LockedToPart = true
eyeeffect.Enabled = false

local eyeeffect2 = Instance.new("ParticleEmitter", eyep2)
eyeeffect2.Lifetime = NumberRange.new(1)
eyeeffect2.Speed = NumberRange.new(0)
eyeeffect2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 4), NumberSequenceKeypoint.new(1, 4)})
eyeeffect2.RotSpeed = NumberRange.new(1080)
eyeeffect2.Rate = 25
eyeeffect2.Rotation = NumberRange.new(-360, 360)
eyeeffect2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.11, 0), NumberSequenceKeypoint.new(0.99, 1), NumberSequenceKeypoint.new(1, 1)})
eyeeffect2.LightEmission = 0.5
eyeeffect2.Texture = "http://www.roblox.com/asset/?id=242292288"
eyeeffect2.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
eyeeffect2.LockedToPart = true
eyeeffect2.Enabled = false

coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait(5)
for i=0,1,0.2 do
wait()
spotlight.Angle = 60-60*i
eyepmesh.Scale = Vector3.new(7.5,7.5-7.4*i,2)
end
for i=0,1,0.2 do
wait()
spotlight.Angle = 0+60*i
eyepmesh.Scale = Vector3.new(7.5,0.1+7.4*i,2)
end
spotlight.Angle = 60
end
end),eyep,eyepw)

coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait(5)
for i=0,1,0.2 do
wait()
spotlight2.Angle = 60-60*i
eyep2mesh.Scale = Vector3.new(7.5,7.5-7.4*i,2)
end
for i=0,1,0.2 do
wait()
spotlight2.Angle = 0+60*i
eyep2mesh.Scale = Vector3.new(7.5,0.1+7.4*i,2)
end
spotlight2.Angle = 60
end
end),eyep2,eyep2w)
--------------------------------------------------------------
Arm = Instance.new("Model",Character)
Arm.Name = "Arm 1"

arm1p=Instance.new("Part",Character)
arm1p.FormFactor="Custom"
arm1p.Size=Vector3.new(.2,.2,.2)
arm1p.Transparency=0
arm1p.CanCollide=false
arm1p.BrickColor = BrickColor.new("Light reddish violet")
arm1p.Material="Sand"
arm1p.TopSurface="Smooth"
arm1p.BottomSurface="Smooth"
arm1p.RightSurface="Smooth"
arm1p.LeftSurface="Smooth"
arm1pw=Instance.new("Weld",Character)
arm1pw.Part0=Character["Right Arm"]
arm1pw.Part1=arm1p
arm1pw.C0=CFrame.new(0,-5,0)*CFrame.Angles(0,math.rad(0),math.rad(90))

arm1pmesh = Instance.new("SpecialMesh",arm1p)
arm1pmesh.MeshType = "Sphere"
arm1pmesh.Scale = Vector3.new(40,20,40)

local particleemitter2 = Instance.new("ParticleEmitter", arm1p)
particleemitter2.VelocitySpread = 180
particleemitter2.Lifetime = NumberRange.new(1)
particleemitter2.Speed = NumberRange.new(10)
particleemitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter2.RotSpeed = NumberRange.new(-180, 180)
particleemitter2.Rotation = NumberRange.new(-360, 360)
particleemitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter2.LightEmission = 1
particleemitter2.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter2.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter2.Enabled = false

arm1p2=Instance.new("Part",Character)
arm1p2.FormFactor="Custom"
arm1p2.Size=Vector3.new(.2,.2,.2)
arm1p2.Transparency=0
arm1p2.CanCollide=false
arm1p2.BrickColor = BrickColor.new("Light reddish violet")
arm1p2.Material="Sand"
arm1p2.TopSurface="Smooth"
arm1p2.BottomSurface="Smooth"
arm1p2.RightSurface="Smooth"
arm1p2.LeftSurface="Smooth"
arm1p2w=Instance.new("Weld",Character)
arm1p2w.Part0=arm1p
arm1p2w.Part1=arm1p2
arm1p2w.C0=CFrame.new(0,3,0)*CFrame.Angles(0,math.rad(90),math.rad(-90))

arm1p2mesh = Instance.new("SpecialMesh",arm1p2)
arm1p2mesh.MeshType = "Cylinder"
arm1p2mesh.Scale = Vector3.new(30,20,30)

local particleemitter3 = Instance.new("ParticleEmitter", arm1p2)
particleemitter3.VelocitySpread = 180
particleemitter3.Lifetime = NumberRange.new(1)
particleemitter3.Speed = NumberRange.new(10)
particleemitter3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter3.RotSpeed = NumberRange.new(-180, 180)
particleemitter3.Rotation = NumberRange.new(-360, 360)
particleemitter3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter3.LightEmission = 1
particleemitter3.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter3.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter3.Enabled = false

arm1p3=Instance.new("Part",Character)
arm1p3.FormFactor="Custom"
arm1p3.Size=Vector3.new(.2,.2,.2)
arm1p3.Transparency=0
arm1p3.CanCollide=false
arm1p3.BrickColor = BrickColor.new("Light reddish violet")
arm1p3.Material="Sand"
arm1p3.TopSurface="Smooth"
arm1p3.BottomSurface="Smooth"
arm1p3.RightSurface="Smooth"
arm1p3.LeftSurface="Smooth"
arm1p3w=Instance.new("Weld",Character)
arm1p3w.Part0=arm1p2
arm1p3w.Part1=arm1p3
arm1p3w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm1p3mesh = Instance.new("SpecialMesh",arm1p3)
arm1p3mesh.MeshType = "Sphere"
arm1p3mesh.Scale = Vector3.new(22.5,22.5,22.5)

local particleemitter4 = Instance.new("ParticleEmitter", arm1p3)
particleemitter4.VelocitySpread = 180
particleemitter4.Lifetime = NumberRange.new(1)
particleemitter4.Speed = NumberRange.new(10)
particleemitter4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter4.RotSpeed = NumberRange.new(-180, 180)
particleemitter4.Rotation = NumberRange.new(-360, 360)
particleemitter4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter4.LightEmission = 1
particleemitter4.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter4.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter4.Enabled = false

arm1p4=Instance.new("Part",Character)
arm1p4.FormFactor="Custom"
arm1p4.Size=Vector3.new(.2,.2,.2)
arm1p4.Transparency=0
arm1p4.CanCollide=false
arm1p4.BrickColor = BrickColor.new("Light reddish violet")
arm1p4.Material="Sand"
arm1p4.TopSurface="Smooth"
arm1p4.BottomSurface="Smooth"
arm1p4.RightSurface="Smooth"
arm1p4.LeftSurface="Smooth"
arm1p4w=Instance.new("Weld",Character)
arm1p4w.Part0=arm1p3
arm1p4w.Part1=arm1p4
arm1p4w.C0=CFrame.new(-3,3,0)*CFrame.Angles(0,math.rad(0),math.rad(-45))

arm1p4mesh = Instance.new("SpecialMesh",arm1p4)
arm1p4mesh.MeshType = "Cylinder"
arm1p4mesh.Scale = Vector3.new(30,20,30)

local particleemitter5 = Instance.new("ParticleEmitter", arm1p4)
particleemitter5.VelocitySpread = 180
particleemitter5.Lifetime = NumberRange.new(1)
particleemitter5.Speed = NumberRange.new(10)
particleemitter5.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter5.RotSpeed = NumberRange.new(-180, 180)
particleemitter5.Rotation = NumberRange.new(-360, 360)
particleemitter5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter5.LightEmission = 1
particleemitter5.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter5.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter5.Enabled = false

arm1p5=Instance.new("Part",Character)
arm1p5.FormFactor="Custom"
arm1p5.Size=Vector3.new(.2,.2,.2)
arm1p5.Transparency=0
arm1p5.CanCollide=false
arm1p5.BrickColor = BrickColor.new("Light reddish violet")
arm1p5.Material="Sand"
arm1p5.TopSurface="Smooth"
arm1p5.BottomSurface="Smooth"
arm1p5.RightSurface="Smooth"
arm1p5.LeftSurface="Smooth"
arm1p5w=Instance.new("Weld",Character)
arm1p5w.Part0=arm1p4
arm1p5w.Part1=arm1p5
arm1p5w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm1p5mesh = Instance.new("SpecialMesh",arm1p5)
arm1p5mesh.MeshType = "Sphere"
arm1p5mesh.Scale = Vector3.new(30,30,30)

local particleemitter6 = Instance.new("ParticleEmitter", arm1p5)
particleemitter6.VelocitySpread = 180
particleemitter6.Lifetime = NumberRange.new(1)
particleemitter6.Speed = NumberRange.new(10)
particleemitter6.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter6.RotSpeed = NumberRange.new(-180, 180)
particleemitter6.Rotation = NumberRange.new(-360, 360)
particleemitter6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter6.LightEmission = 1
particleemitter6.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter6.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter6.Enabled = false

arm1p6=Instance.new("Part",Character)
arm1p6.FormFactor="Custom"
arm1p6.Size=Vector3.new(.2,.2,.2)
arm1p6.Transparency=0
arm1p6.CanCollide=false
arm1p6.BrickColor = BrickColor.new("Light reddish violet")
arm1p6.Material="Sand"
arm1p6.TopSurface="Smooth"
arm1p6.BottomSurface="Smooth"
arm1p6.RightSurface="Smooth"
arm1p6.LeftSurface="Smooth"
arm1p6w=Instance.new("Weld",Character)
arm1p6w.Part0=arm1p5
arm1p6w.Part1=arm1p6
arm1p6w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm1p6mesh = Instance.new("FileMesh",arm1p6)
arm1p6mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
arm1p6mesh.Scale = Vector3.new(3.15,3.15,3.15)

arm1p7=Instance.new("Part",Character)
arm1p7.FormFactor="Custom"
arm1p7.Size=Vector3.new(.2,.2,.2)
arm1p7.Transparency=0
arm1p7.CanCollide=false
arm1p7.BrickColor = BrickColor.new("Light reddish violet")
arm1p7.Material="Sand"
arm1p7.TopSurface="Smooth"
arm1p7.BottomSurface="Smooth"
arm1p7.RightSurface="Smooth"
arm1p7.LeftSurface="Smooth"
arm1p7w=Instance.new("Weld",Character)
arm1p7w.Part0=arm1p
arm1p7w.Part1=arm1p7
arm1p7w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))
arm1p7.Transparency=1

arm1p7mesh = Instance.new("FileMesh",arm1p7)
arm1p7mesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
arm1p7mesh.Scale = Vector3.new(5,10,5)

arm1hitbox=Instance.new("Part",Character)
arm1hitbox.FormFactor="Custom"
arm1hitbox.Size=Vector3.new(5,5,5)
arm1hitbox.Transparency=1
arm1hitbox.CanCollide=false
arm1hitbox.BrickColor = BrickColor.new("Light reddish violet")
arm1hitbox.Material="Sand"
arm1hitbox.TopSurface="Smooth"
arm1hitbox.BottomSurface="Smooth"
arm1hitbox.RightSurface="Smooth"
arm1hitbox.LeftSurface="Smooth"
arm1hitboxw=Instance.new("Weld",Character)
arm1hitboxw.Part0=arm1p6
arm1hitboxw.Part1=arm1hitbox
arm1hitboxw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
--------------------------------------------------------------
Arm2 = Instance.new("Model",Character)
Arm2.Name = "Arm 2"

arm2p=Instance.new("Part",Character)
arm2p.FormFactor="Custom"
arm2p.Size=Vector3.new(.2,.2,.2)
arm2p.Transparency=0
arm2p.CanCollide=false
arm2p.BrickColor = BrickColor.new("Light reddish violet")
arm2p.Material="Sand"
arm2p.TopSurface="Smooth"
arm2p.BottomSurface="Smooth"
arm2p.RightSurface="Smooth"
arm2p.LeftSurface="Smooth"
arm2pw=Instance.new("Weld",Character)
arm2pw.Part0=Character["Left Arm"]
arm2pw.Part1=arm2p
arm2pw.C0=CFrame.new(0,-5,0)*CFrame.Angles(0,math.rad(0),math.rad(-90))

arm2pmesh = Instance.new("SpecialMesh",arm2p)
arm2pmesh.MeshType = "Sphere"
arm2pmesh.Scale = Vector3.new(40,20,40)

local particleemitter7 = Instance.new("ParticleEmitter", arm2p)
particleemitter7.VelocitySpread = 180
particleemitter7.Lifetime = NumberRange.new(1)
particleemitter7.Speed = NumberRange.new(10)
particleemitter7.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter7.RotSpeed = NumberRange.new(-180, 180)
particleemitter7.Rotation = NumberRange.new(-360, 360)
particleemitter7.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter7.LightEmission = 1
particleemitter7.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter7.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter7.Enabled = false

arm2p2=Instance.new("Part",Character)
arm2p2.FormFactor="Custom"
arm2p2.Size=Vector3.new(.2,.2,.2)
arm2p2.Transparency=0
arm2p2.CanCollide=false
arm2p2.BrickColor = BrickColor.new("Light reddish violet")
arm2p2.Material="Sand"
arm2p2.TopSurface="Smooth"
arm2p2.BottomSurface="Smooth"
arm2p2.RightSurface="Smooth"
arm2p2.LeftSurface="Smooth"
arm2p2w=Instance.new("Weld",Character)
arm2p2w.Part0=arm2p
arm2p2w.Part1=arm2p2
arm2p2w.C0=CFrame.new(0,3,0)*CFrame.Angles(0,math.rad(90),math.rad(-90))

arm2p2mesh = Instance.new("SpecialMesh",arm2p2)
arm2p2mesh.MeshType = "Cylinder"
arm2p2mesh.Scale = Vector3.new(30,20,30)

local particleemitter8 = Instance.new("ParticleEmitter", arm2p2)
particleemitter8.VelocitySpread = 180
particleemitter8.Lifetime = NumberRange.new(1)
particleemitter8.Speed = NumberRange.new(10)
particleemitter8.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter8.RotSpeed = NumberRange.new(-180, 180)
particleemitter8.Rotation = NumberRange.new(-360, 360)
particleemitter8.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter8.LightEmission = 1
particleemitter8.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter8.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter8.Enabled = false

arm2p3=Instance.new("Part",Character)
arm2p3.FormFactor="Custom"
arm2p3.Size=Vector3.new(.2,.2,.2)
arm2p3.Transparency=0
arm2p3.CanCollide=false
arm2p3.BrickColor = BrickColor.new("Light reddish violet")
arm2p3.Material="Sand"
arm2p3.TopSurface="Smooth"
arm2p3.BottomSurface="Smooth"
arm2p3.RightSurface="Smooth"
arm2p3.LeftSurface="Smooth"
arm2p3w=Instance.new("Weld",Character)
arm2p3w.Part0=arm2p2
arm2p3w.Part1=arm2p3
arm2p3w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm2p3mesh = Instance.new("SpecialMesh",arm2p3)
arm2p3mesh.MeshType = "Sphere"
arm2p3mesh.Scale = Vector3.new(22.5,22.5,22.5)

local particleemitter9 = Instance.new("ParticleEmitter", arm2p3)
particleemitter9.VelocitySpread = 180
particleemitter9.Lifetime = NumberRange.new(1)
particleemitter9.Speed = NumberRange.new(10)
particleemitter9.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter9.RotSpeed = NumberRange.new(-180, 180)
particleemitter9.Rotation = NumberRange.new(-360, 360)
particleemitter9.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter9.LightEmission = 1
particleemitter9.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter9.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter9.Enabled = false

arm2p4=Instance.new("Part",Character)
arm2p4.FormFactor="Custom"
arm2p4.Size=Vector3.new(.2,.2,.2)
arm2p4.Transparency=0
arm2p4.CanCollide=false
arm2p4.BrickColor = BrickColor.new("Light reddish violet")
arm2p4.Material="Sand"
arm2p4.TopSurface="Smooth"
arm2p4.BottomSurface="Smooth"
arm2p4.RightSurface="Smooth"
arm2p4.LeftSurface="Smooth"
arm2p4w=Instance.new("Weld",Character)
arm2p4w.Part0=arm2p3
arm2p4w.Part1=arm2p4
arm2p4w.C0=CFrame.new(-3,3,0)*CFrame.Angles(0,math.rad(0),math.rad(-45))

arm2p4mesh = Instance.new("SpecialMesh",arm2p4)
arm2p4mesh.MeshType = "Cylinder"
arm2p4mesh.Scale = Vector3.new(30,20,30)

local particleemitter10 = Instance.new("ParticleEmitter", arm2p4)
particleemitter10.VelocitySpread = 180
particleemitter10.Lifetime = NumberRange.new(1)
particleemitter10.Speed = NumberRange.new(10)
particleemitter10.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter10.RotSpeed = NumberRange.new(-180, 180)
particleemitter10.Rotation = NumberRange.new(-360, 360)
particleemitter10.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter10.LightEmission = 1
particleemitter10.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter10.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter10.Enabled = false

arm2p5=Instance.new("Part",Character)
arm2p5.FormFactor="Custom"
arm2p5.Size=Vector3.new(.2,.2,.2)
arm2p5.Transparency=0
arm2p5.CanCollide=false
arm2p5.BrickColor = BrickColor.new("Light reddish violet")
arm2p5.Material="Sand"
arm2p5.TopSurface="Smooth"
arm2p5.BottomSurface="Smooth"
arm2p5.RightSurface="Smooth"
arm2p5.LeftSurface="Smooth"
arm2p5w=Instance.new("Weld",Character)
arm2p5w.Part0=arm2p4
arm2p5w.Part1=arm2p5
arm2p5w.C0=CFrame.new(-4,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))

arm2p5mesh = Instance.new("SpecialMesh",arm2p5)
arm2p5mesh.MeshType = "Sphere"
arm2p5mesh.Scale = Vector3.new(30,30,30)

local particleemitter11 = Instance.new("ParticleEmitter", arm2p5)
particleemitter11.VelocitySpread = 180
particleemitter11.Lifetime = NumberRange.new(1)
particleemitter11.Speed = NumberRange.new(10)
particleemitter11.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0.5, 0.5)})
particleemitter11.RotSpeed = NumberRange.new(-180, 180)
particleemitter11.Rotation = NumberRange.new(-360, 360)
particleemitter11.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter11.LightEmission = 1
particleemitter11.Texture = "http://www.roblox.com/asset/?id=0" --320043786"
particleemitter11.Color = ColorSequence.new(Color3.new(0, 0.666667, 1), Color3.new(0, 0.666667, 1))
particleemitter11.Enabled = false

arm2p6=Instance.new("Part",Character)
arm2p6.FormFactor="Custom"
arm2p6.Size=Vector3.new(.2,.2,.2)
arm2p6.Transparency=0
arm2p6.CanCollide=false
arm2p6.BrickColor = BrickColor.new("Light reddish violet")
arm2p6.Material="Sand"
arm2p6.TopSurface="Smooth"
arm2p6.BottomSurface="Smooth"
arm2p6.RightSurface="Smooth"
arm2p6.LeftSurface="Smooth"
arm2p6w=Instance.new("Weld",Character)
arm2p6w.Part0=arm2p5
arm2p6w.Part1=arm2p6
arm2p6w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(90))

arm2p6mesh = Instance.new("FileMesh",arm2p6)
arm2p6mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
arm2p6mesh.Scale = Vector3.new(3.15,3.15,3.15)

arm2p7=Instance.new("Part",Character)
arm2p7.FormFactor="Custom"
arm2p7.Size=Vector3.new(.2,.2,.2)
arm2p7.Transparency=0
arm2p7.CanCollide=false
arm2p7.BrickColor = BrickColor.new("Light reddish violet")
arm2p7.Material="Sand"
arm2p7.TopSurface="Smooth"
arm2p7.BottomSurface="Smooth"
arm2p7.RightSurface="Smooth"
arm2p7.LeftSurface="Smooth"
arm2p7w=Instance.new("Weld",Character)
arm2p7w.Part0=arm2p
arm2p7w.Part1=arm2p7
arm2p7w.C0=CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(0),math.rad(0))
arm2p7.Transparency=1

arm2p7mesh = Instance.new("FileMesh",arm2p7)
arm2p7mesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
arm2p7mesh.Scale = Vector3.new(5,10,5)

arm2hitbox=Instance.new("Part",Character)
arm2hitbox.FormFactor="Custom"
arm2hitbox.Size=Vector3.new(5,5,5)
arm2hitbox.Transparency=1
arm2hitbox.CanCollide=false
arm2hitbox.BrickColor = BrickColor.new("Light reddish violet")
arm2hitbox.Material="Sand"
arm2hitbox.TopSurface="Smooth"
arm2hitbox.BottomSurface="Smooth"
arm2hitbox.RightSurface="Smooth"
arm2hitbox.LeftSurface="Smooth"
arm2hitboxw=Instance.new("Weld",Character)
arm2hitboxw.Part0=arm2p6
arm2hitboxw.Part1=arm2hitbox
arm2hitboxw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
--------------------------------------------------------------

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("New Yeller"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                so("http://www.roblox.com/asset/?id=220834019",hit,1,math.random(80,120)/100) 
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=BrickColor.new("Bright red")
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function Shockwave2(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1, delay do
			swait()
			prt.Transparency = i
			msh.Scale = msh.Scale + vt(x2, y2, z2)
		end
		prt.Parent = nil
	end))
end

function attackone()
attack=true
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,8)*angles(math.rad(5),math.rad(0),math.rad(-30)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,4)*angles(math.rad(60),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(1.5,3,0)*angles(math.rad(0),math.rad(0),math.rad(-120)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
so("http://www.roblox.com/asset/?id=203691467",arm1hitbox,1,1) 
con1=arm1hitbox.Touched:connect(function(hit) Damagefunc(hit,60,80,math.random(60,80),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
Shockwave(BrickColor.new("Institutional white"),cf(arm1hitbox.Position),1,1,1,1,1,1,0.075)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,8)*angles(math.rad(5),math.rad(0),math.rad(30)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-130)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(-2.5,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,-4)*angles(math.rad(-60),math.rad(90),math.rad(-90)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,8)*angles(math.rad(5),math.rad(0),math.rad(30)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-130)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(-2.5,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,-4)*angles(math.rad(-60),math.rad(90),math.rad(-90)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
con1:disconnect()
attack=false
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end

function attacktwo()
attack=true
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12)*angles(math.rad(-20),math.rad(0),math.rad(20)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-2.5,0)*angles(math.rad(0),math.rad(120),math.rad(-90)),0.2)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-1,3,0)*angles(math.rad(0),math.rad(0),math.rad(-75)),0.2)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
end
so("http://www.roblox.com/asset/?id=203691467",arm1hitbox,1,0.8) 
con1=arm2hitbox.Touched:connect(function(hit) Damagefunc(hit,60,80,math.random(60,80),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
Shockwave(BrickColor.new("Institutional white"),cf(arm2hitbox.Position),1,1,1,1,1,1,0.075)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,10)*angles(math.rad(20),math.rad(0),math.rad(-45)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(1.5,-3.5,-5)*angles(math.rad(-30),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
end
Humanoid.WalkSpeed = 0
local hit,pos=rayCast(arm2hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if hit~=nil then
swait()
print("touched")
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
so("http://www.roblox.com/asset/?id=199145477",arm2hitbox,1,math.random(60,140)/100)
Shockwave2(BrickColor.new("Light reddish violet"),cf(pos),0.1,0.1,0.1,1,1,1,0.05)
end
for i=0,1,0.04 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,10)*angles(math.rad(20),math.rad(0),math.rad(-45)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(100)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-100)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.2)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.2)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.2)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.2)
arm2pw.C0=clerp(arm2pw.C0,cf(1.5,-3.5,-5)*angles(math.rad(-20),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
end
Humanoid.WalkSpeed = 64
con1:disconnect()
attack=false
end

lasereye=1

mouse.Button1Down:connect(function()
if attack==false and attacktype==1 and sphere==false then
attackone()
attacktype=2
elseif attack==false and attacktype==2 and sphere==false then
attacktwo()
attacktype=1
end
if attack==false and used==false and sphere==true and rest==false and lasereye==1 then
lasereye=2
LaserBlaster()
elseif attack==false and used==false and sphere==true and rest==false and lasereye==2 then
lasereye=1
LaserBlaster2()
end
end)

function Shockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Laser(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

MMouse=mouse 
LaserTarget=RootPart
used=false

function LaserBlaster()
used=true
so("http://www.roblox.com/asset/?id=167122623",eyep,1,math.random(60,80)/100)
local MouseLook=cf((eyep.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,0.5,0,0.5,0.1)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),1,1,1,1,1,1,0.075)
Damagefunc(hit,20,40,0,"Normal",RootPart,0)
end
for i=0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,2,12)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(0.25)
used=false
end

function LaserBlaster2()
used=true
so("http://www.roblox.com/asset/?id=167122623",eyep2,1,math.random(60,80)/100)
local MouseLook=cf((eyep2.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep2.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep2.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep2.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,0.5,0,0.5,0.1)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),1,1,1,1,1,1,0.075)
Damagefunc(hit,20,40,0,"Normal",RootPart,0)
end
for i=0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,2,12)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(0.25)
used=false
end

used2=false

function GiantLaserBlaster()
used2=true
so("http://www.roblox.com/asset/?id=137463716",eyep,1,math.random(60,80)/100) 
eyeeffect.Enabled = true
wait(1.6)
eyeeffect.Enabled = false
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep,1,math.random(75,125)/100)
local MouseLook=cf((eyep.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,2.5,0,2.5,0.05)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),2.5,2.5,2.5,2.5,2.5,2.5,0.025)
Damagefunc(hit,40,80,0,"Normal",RootPart,0)
end
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,8,12)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(3)
used2=false
end

function GiantLaserBlaster2()
used2=true
so("http://www.roblox.com/asset/?id=137463716",eyep2,1,math.random(60,80)/100) 
eyeeffect2.Enabled = true
wait(1.6)
eyeeffect2.Enabled = false
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
so("http://www.roblox.com/asset/?id=253453677",eyep2,1,math.random(75,125)/100)
local MouseLook=cf((eyep2.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
local hit,pos = rayCast(eyep2.Position,MouseLook.lookVector,999,LaserTarget.Parent)
local mag=(eyep2.Position-pos).magnitude 
Laser(BrickColor.new("Cyan"),CFrame.new((eyep2.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*2,1,2.5,0,2.5,0.05)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
so("http://www.roblox.com/asset/?id=340722848",ref,1,math.random(80,120)/100)
Shockwave(BrickColor.new("Cyan"),cf(pos),2.5,2.5,2.5,2.5,2.5,2.5,0.025)
Damagefunc(hit,40,80,0,"Normal",RootPart,0)
end
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,8,12)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
wait(3)
used2=false
end

function Hibernation()
	if rest==false then
	print("You are now resting.")
	rest=true
	attack=true
	emitter.Enabled = false
	particleemitter.Enabled = false
	for i=0,1,0.15 do
	wait()
	Humanoid.CameraOffset = Vector3.new(0, 12.5-12.5*i, 0)
	music.Volume = 0.5-0.5*i
	--eyep2mesh.Scale = Vector3.new(8.5,8.5-8.4*i,2)
	--eyepmesh.Scale = Vector3.new(8.5,8.5-8.4*i,2)
	end
	music.Volume = 0
	Humanoid.CameraOffset = Vector3.new(0, 0, 0)
	attack=false
	Humanoid.WalkSpeed = 0
	elseif rest==true then
	print("You are now awake.")
	rest=false
	attack=true
	for i=0,1,0.15 do
	wait()
	Humanoid.CameraOffset = Vector3.new(0, 0+12.5*i, 0)
	music.Volume = 0+0.5*i
	--eyep2mesh.Scale = Vector3.new(8.5,0.1+8.4*i,2)
	--eyepmesh.Scale = Vector3.new(8.5,0.1+8.4*i,2)
	end
	emitter.Enabled = true
	particleemitter.Enabled = true
	Humanoid.WalkSpeed = 16
	music.Volume = 0.5
	Humanoid.CameraOffset = Vector3.new(0, 12.5, 0)
	attack=false
	end
end

ragemodedelay=false

function RageMode()
	if sphere==true then
--[[Torso.Transparency = 0
Head.Transparency = 0
LeftLeg.Transparency = 0
RightLeg.Transparency = 0
LeftArm.Transparency = 0
RightArm.Transparency = 0 ]]
eyep.Transparency=1
eyep2.Transparency=1
eyeoutline.Transparency=1
eyeoutline2.Transparency=1
	music:Stop()
	--music2:Play()
	--rawr:Play()
	particleemitter2.Enabled=true
	particleemitter3.Enabled=true
	particleemitter4.Enabled=true
	particleemitter5.Enabled=true
	particleemitter6.Enabled=true
	particleemitter7.Enabled=true
	particleemitter8.Enabled=true
	particleemitter9.Enabled=true
	particleemitter10.Enabled=true
	particleemitter11.Enabled=true
	Humanoid.WalkSpeed = 64
	--Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),4,4,4,6,6,6,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Character,0.5,1.2) 
	sphere=false
	elseif sphere==false then
Torso.Transparency = 1
Head.Transparency = 1
LeftLeg.Transparency = 1
RightLeg.Transparency = 1
LeftArm.Transparency = 1
RightArm.Transparency = 1
eyep.Transparency=0
eyep2.Transparency=0
eyeoutline.Transparency=0
eyeoutline2.Transparency=0
	--music2:Stop()
	--music:Play()
	particleemitter2.Enabled=false
	particleemitter3.Enabled=false
	particleemitter4.Enabled=false
	particleemitter5.Enabled=false
	particleemitter6.Enabled=false
	particleemitter7.Enabled=false
	particleemitter8.Enabled=false
	particleemitter9.Enabled=false
	particleemitter10.Enabled=false
	particleemitter11.Enabled=false
	Humanoid.WalkSpeed = 16
	--Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),4,4,4,6,6,6,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Character,0.5,0.8) 
	sphere=true
	end
end

--use3=false

function TheWind()
	if aura==false then
	Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),16,16,16,10,10,10,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Torso,1,1.1) 
	ghostp.Transparency = 0.8
	ghostp2.Transparency = 0.85
	ghostp3.Transparency = 0.9
	ghostp4.Transparency = 0.95
	ghostp5.Transparency = 0.75
	ghostp6.Transparency = 0.825
	ghostp7.Transparency = 0.875
	ghostp8.Transparency = 0.925
	aura=true
	elseif aura==true then
	Shockwave(BrickColor.new("Institutional white"),cf(Torso.Position),16,16,16,10,10,10,0.025)
	so("http://www.roblox.com/asset/?id=340722848",Torso,1,0.9) 
	ghostp.Transparency = 1
	ghostp2.Transparency = 1
	ghostp3.Transparency = 1
	ghostp4.Transparency = 1
	ghostp5.Transparency = 1
	ghostp6.Transparency = 1
	ghostp7.Transparency = 1
	ghostp8.Transparency = 1
	aura=false
	end
	while aura==true do
	for i=0,1,0.05 do
	wait()
	ghostw.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(45+360*i),math.rad(0))
	ghostw2.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(90+360*i),math.rad(0))
	ghostw3.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(135+360*i),math.rad(0))
	ghostw4.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(180+360*i),math.rad(0))
	ghost5w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(225+360*i),math.rad(0))
	ghost6w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(270+360*i),math.rad(0))
	ghost7w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(315+360*i),math.rad(0))
	ghost8w.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(360+360*i),math.rad(0))
	end
	end
end

giantlasereye=1

function ShootingTheEyes()
if giantlasereye==1 then
GiantLaserBlaster()
giantlasereye=2
elseif giantlasereye==2 then
GiantLaserBlaster2()
giantlasereye=1
end
end

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='r' and attack==false and sphere==true and aura==false then
	Hibernation()
	end
	if k=='f' and used2==false and sphere==true and rest==false then
	ShootingTheEyes()
	end
	if k=='q' and rest==false and ragemodedelay==false then
	RageMode()
	ragemodedelay=true
	wait(3)
	ragemodedelay=false
	end
	if k=='e' and rest==false then
	TheWind()
	end
end)

local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/60))*angles(math.rad(-30),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(80-10*math.cos(sine/60))), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-80+10*math.cos(sine/60))), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/40))*angles(math.rad(-20),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/60))*angles(math.rad(30),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(120-10*math.cos(sine/60))), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-120+10*math.cos(sine/60))), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/40))*angles(math.rad(20),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
Humanoid.WalkSpeed = 64
if attack==false and sphere==false and rest==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/30))*angles(math.rad(5+5*math.cos(sine/30)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15-10*math.cos(sine/30)), math.rad(0), math.rad(100-5*math.cos(sine/30))), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15-10*math.cos(sine/30)), math.rad(0), math.rad(-100+5*math.cos(sine/30))), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true and rest==false then
Humanoid.WalkSpeed = 16
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0+1*math.cos(sine/20),0,12-0.5*math.cos(sine/40))*angles(math.rad(5+5*math.cos(sine/30)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
else
if attack==false and sphere==true and rest==true then
Humanoid.WalkSpeed = 0
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(2.5+2.5*math.cos(sine/20)),math.rad(30),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-1*math.cos(sine/30))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
else
if attack==false and sphere==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-0.5*math.cos(sine/40))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p3w.C0=clerp(arm1p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p3w.C0=clerp(arm2p3w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false and sphere==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,12-1*math.cos(sine/30))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.1)
arm1pw.C0=clerp(arm1pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
arm1p2w.C0=clerp(arm1p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm1p3w.C0=clerp(arm1p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p4w.C0=clerp(arm1p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm1p5w.C0=clerp(arm1p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm1p6w.C0=clerp(arm1p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2pw.C0=clerp(arm2pw.C0,cf(0,-5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
arm2p2w.C0=clerp(arm2p2w.C0,cf(0,3,0)*angles(math.rad(0),math.rad(90),math.rad(-90)),0.5)
arm2p3w.C0=clerp(arm2p3w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p4w.C0=clerp(arm2p4w.C0,cf(-3,3,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
arm2p5w.C0=clerp(arm2p5w.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
arm2p6w.C0=clerp(arm2p6w.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end
end