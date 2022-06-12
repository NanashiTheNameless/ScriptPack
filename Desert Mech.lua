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
["Name"] = "Blockheed Scout",
["Parent"] = mas,
})
o2 = Create("Model",{
["Name"] = "TurretHead",
["Parent"] = o1,
})
o3 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.96103048, 21.1850872, 65.9971161),
["Rotation"] = Vector3.new(89.9999771, 89.7497711, 8.38253709e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.96103048, 21.1850872, 65.9971161, 6.55647398e-007, -9.59230931e-014, 0.999990463, 0.999994278, 1.06582003e-014, -6.55644897e-007, 6.92776525e-014, 0.999996185, 2.48688548e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.784965754, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o4 = Create("BlockMesh",{
["Parent"] = o3,
["Offset"] = Vector3.new(0, 0, -0.150000006),
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o5 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.96103048, 21.1850872, 65.5971222),
["Rotation"] = Vector3.new(89.9999771, 89.7497711, 8.38253709e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.96103048, 21.1850872, 65.5971222, 6.55647398e-007, -9.59230931e-014, 0.999990463, 0.999994278, 1.06582003e-014, -6.55644897e-007, 6.92776525e-014, 0.999996185, 2.48688548e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.784965754, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o6 = Create("BlockMesh",{
["Parent"] = o5,
["Offset"] = Vector3.new(0, 0, -0.150000006),
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o7 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.63824534, 18.9846172, 64.9476929),
["Rotation"] = Vector3.new(90, -69.9997253, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.63824534, 18.9846172, 64.9476929, -1.86458493e-009, 0.342019111, -0.939691007, -6.78644696e-010, -0.939691007, -0.342019111, -1, -4.26325641e-014, 1.9840769e-009),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 1.89521515, 0.801821828),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o8 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.636724, 15.8252935, 67.134491),
["Rotation"] = Vector3.new(-90, 2.04905864e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.636724, 15.8252935, 67.134491, 9.08808602e-008, -1, 3.57628181e-007, -1.49501709e-008, 3.5762821e-007, 1, -1, -9.08808673e-008, -1.49501389e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.33257246, 1.09339356),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o9 = Create("SpecialMesh",{
["Parent"] = o8,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o10 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.636724, 15.8252935, 65.6766357),
["Rotation"] = Vector3.new(-90, 2.04905864e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.636724, 15.8252935, 65.6766357, 9.08808602e-008, -1, 3.57628181e-007, -1.49501709e-008, 3.5762821e-007, 1, -1, -9.08808673e-008, -1.49501389e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.33257246, 1.09339356),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o11 = Create("SpecialMesh",{
["Parent"] = o10,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o12 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(7.24667406, 17.8982983, 67.9727478),
["Rotation"] = Vector3.new(-90, 1.00115922e-011, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.24667406, 17.8982983, 67.9727478, 6.03961325e-014, 0.999998212, 1.74735253e-013, -8.74226131e-008, -1.69916178e-013, 0.999998212, 1, 9.23705556e-014, 8.74228476e-008),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(4.44646835, 1.96810794, 2.18678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o13 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-0.562907219, 18.7550583, 69.6857376),
["Rotation"] = Vector3.new(-90, 69.9997406, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.562907219, 18.7550583, 69.6857376, -0.342019141, -2.99001996e-008, 0.939691067, 0.939691067, 8.21504145e-008, 0.342019141, -8.74227482e-008, 1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 1.31207204, 1.47972572),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o14 = Create("SpecialMesh",{
["Parent"] = o13,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o15 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-0.562907219, 18.7550583, 66.3326569),
["Rotation"] = Vector3.new(-90, 69.9997253, -1.00179022e-005),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.562907219, 18.7550583, 66.3326569, 0.342019111, 5.98004632e-008, 0.939691007, -0.939691007, -1.64300815e-007, 0.342019111, 1.74845511e-007, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 1.31207204, 1.47972572),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o16 = Create("SpecialMesh",{
["Parent"] = o15,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o17 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.38791227, 19.9393005, 70.8884659),
["Rotation"] = Vector3.new(-118.529572, -89.8916473, -160.932617),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.38791227, 19.9393005, 70.8884659, -1.74735253e-013, 6.03961325e-014, -0.999998212, -0.999998212, -8.74226131e-008, 1.69916178e-013, -8.74228476e-008, 1, -9.23705556e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 1.38496494, 1.7494297),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o18 = Create("SpecialMesh",{
["Parent"] = o17,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o19 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-2.41528034, 18.270071, 68.519455),
["Rotation"] = Vector3.new(90, 19.9999352, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.41528034, 18.270071, 68.519455, 5.38267386e-008, -0.939690948, 0.342019081, 2.63844111e-008, -0.342019141, -0.939691067, 0.99999994, 3.13041113e-008, -5.86948889e-009),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.291571558, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o20 = Create("SpecialMesh",{
["Parent"] = o19,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o21 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-2.17554426, 18.3573208, 68.519455),
["Rotation"] = Vector3.new(90, 19.999939, -90.0000076),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.17554426, 18.3573208, 68.519455, -1.66761481e-007, 0.939690709, 0.342019141, -5.44499841e-008, 0.342018962, -0.939690888, -0.999999821, -9.04264397e-008, 6.38341469e-009),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.218678698, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o22 = Create("SpecialMesh",{
["Parent"] = o21,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o23 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-2.17554426, 18.3573208, 67.4989471),
["Rotation"] = Vector3.new(90, 19.999939, -90.0000076),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.17554426, 18.3573208, 67.4989471, -1.66761481e-007, 0.939690709, 0.342019141, -5.44499841e-008, 0.342018962, -0.939690888, -0.999999821, -9.04264397e-008, 6.38341469e-009),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.218678698, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o24 = Create("SpecialMesh",{
["Parent"] = o23,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o25 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-2.41528034, 18.270071, 67.4989471),
["Rotation"] = Vector3.new(90, 19.9999352, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.41528034, 18.270071, 67.4989471, 5.38267386e-008, -0.939690948, 0.342019081, 2.63844111e-008, -0.342019141, -0.939691067, 0.99999994, 3.13041113e-008, -5.86948889e-009),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.291571558, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o26 = Create("SpecialMesh",{
["Parent"] = o25,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o27 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.38791227, 19.9393005, 65.0570374),
["Rotation"] = Vector3.new(-118.529572, -89.8916473, 18.373251),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.38791227, 19.9393005, 65.0570374, 1.71144335e-013, -5.68434189e-014, -0.999998212, 0.999998212, -1.0658141e-014, 1.69916178e-013, 6.92779167e-014, -1, -9.23705556e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 1.38496494, 1.7494297),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o28 = Create("SpecialMesh",{
["Parent"] = o27,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o29 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-1.97244835, 15.9877605, 69.1025925),
["Rotation"] = Vector3.new(-90, -19.9999466, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.97244835, 15.9877605, 69.1025925, 4.01654177e-008, -0.939691067, -0.34201926, -6.36125037e-008, -0.3420192, 0.939691126, -1, -6.78041729e-008, -6.88558472e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 1.31207204, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o30 = Create("SpecialMesh",{
["Parent"] = o29,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o31 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.41804314, 15.7159538, 66.4055634),
["Rotation"] = Vector3.new(-90, 2.04905864e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.41804314, 15.7159538, 66.4055634, 9.08808602e-008, -1, 3.57628181e-007, -1.49501709e-008, 3.5762821e-007, 1, -1, -9.08808673e-008, -1.49501389e-008),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 3.35307264, 1.60364366),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o32 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.41804314, 15.7159538, 69.6128311),
["Rotation"] = Vector3.new(-90, 2.04905864e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.41804314, 15.7159538, 69.6128311, 9.08808602e-008, -1, 3.57628181e-007, -1.49501709e-008, 3.5762821e-007, 1, -1, -9.08808673e-008, -1.49501389e-008),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 3.35307264, 1.60364366),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o33 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.63672352, 15.8252935, 68.8839111),
["Rotation"] = Vector3.new(-90, 2.04905864e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.63672352, 15.8252935, 68.8839111, 9.08808602e-008, -1, 3.57628181e-007, -1.49501709e-008, 3.5762821e-007, 1, -1, -9.08808673e-008, -1.49501389e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.33257246, 1.09339356),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o34 = Create("SpecialMesh",{
["Parent"] = o33,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o35 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(5.2927537, 18.7774487, 70.9249115),
["Rotation"] = Vector3.new(-179.999878, -89.8916473, 90.0001221),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.2927537, 18.7774487, 70.9249115, -1.6632526e-013, -8.21503434e-008, -0.999998212, -0.999998212, 1.17322898e-007, 1.68688007e-013, 1.17323026e-007, 1, -8.21506347e-008),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 1.31207204, 1.60364366),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o36 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.63824534, 18.9846191, 71.034256),
["Rotation"] = Vector3.new(90, -69.9997253, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.63824534, 18.9846191, 71.034256, -1.86458493e-009, 0.342019111, -0.939691007, -6.78644696e-010, -0.939691007, -0.342019111, -1, -4.26325641e-014, 1.9840769e-009),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 1.89521515, 0.801821828),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o37 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-1.97244835, 15.9877605, 66.915802),
["Rotation"] = Vector3.new(-90, -19.9999466, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.97244835, 15.9877605, 66.915802, 4.01654177e-008, -0.939691067, -0.34201926, -6.36125037e-008, -0.3420192, 0.939691126, -1, -6.78041729e-008, -6.88558472e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 1.31207204, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o38 = Create("SpecialMesh",{
["Parent"] = o37,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o39 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-0.346889973, 17.9804001, 66.4055557),
["Rotation"] = Vector3.new(-90, 69.9997406, 9.5225312e-012),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.346889973, 17.9804001, 66.4055557, 0.342019141, -5.68434189e-014, 0.939691067, -0.939691067, -1.0658141e-014, 0.342019141, -3.28626015e-014, -1, 1.13686838e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.31207204, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o40 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.63672352, 15.8252935, 70.3417587),
["Rotation"] = Vector3.new(-90, 2.04905864e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.63672352, 15.8252935, 70.3417587, 9.08808602e-008, -1, 3.57628181e-007, -1.49501709e-008, 3.5762821e-007, 1, -1, -9.08808673e-008, -1.49501389e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.33257246, 1.09339356),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o41 = Create("SpecialMesh",{
["Parent"] = o40,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o42 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-0.34689045, 17.9804001, 69.6128387),
["Rotation"] = Vector3.new(-90, 69.9997406, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.34689045, 17.9804001, 69.6128387, -0.342019141, -2.99001996e-008, 0.939691067, 0.939691067, 8.21504145e-008, 0.342019141, -8.74227482e-008, 1, 1.13686838e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.31207204, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o43 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-0.383658409, 15.950181, 68.009201),
["Rotation"] = Vector3.new(-90, 69.9997406, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.383658409, 15.950181, 68.009201, 5.68434189e-014, 0.342019141, 0.939691067, 1.0658141e-014, -0.939691067, 0.342019141, 1, -3.28626015e-014, 1.13686838e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 1.16628623, 2.91571569),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o44 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(5.2927537, 18.7774487, 65.0934753),
["Rotation"] = Vector3.new(-0.0001193645, -89.8916473, 89.9998779),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.2927537, 18.7774487, 65.0934753, 1.69916178e-013, -8.21504642e-008, -0.999998212, 0.999998212, -2.99002778e-008, 1.71144335e-013, -2.99002494e-008, -1, 8.21504571e-008),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 1.31207204, 1.60364366),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o45 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(7.24667406, 19.7206192, 67.9727478),
["Rotation"] = Vector3.new(90, -9.80584797e-012, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.24667406, 19.7206192, 67.9727478, -5.68434189e-014, 0.999998212, -1.71144335e-013, -1.0658141e-014, -1.69916178e-013, -0.999998212, -1, 9.23705556e-014, -6.92779167e-014),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(4.44646835, 1.96810794, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o46 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.34526825, 18.8503399, 65.0422668),
["Rotation"] = Vector3.new(-7.47417573e-007, 50.7104721, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.34526825, 18.8503399, 65.0422668, -8.26082669e-009, 0.633236527, 0.773955941, -0.999998212, -2.31416486e-008, 8.26052027e-009, 2.31415047e-008, -0.773957372, 0.63323766),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.33257341, 0.200000003, 2.05557942),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o47 = Create("BlockMesh",{
["Parent"] = o46,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o48 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(5.10629559, 20.3215313, 69.6483765),
["Rotation"] = Vector3.new(61.4704247, 89.8916473, -108.373253),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.10629559, 20.3215313, 69.6483765, -5.68434189e-014, 1.71144335e-013, 0.999998212, -1.0658141e-014, 0.999998212, -1.69916178e-013, -1, 6.92779167e-014, 9.23705556e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.728929162, 0.600000024, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o49 = Create("CylinderMesh",{
["Parent"] = o48,
})
o50 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.41803932, 17.3195953, 70.3053284),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.41803932, 17.3195953, 70.3053284, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.91571665, 0.728928983, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o51 = Create("BlockMesh",{
["Parent"] = o50,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o52 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.6367178, 16.5177708, 65.6766205),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.6367178, 16.5177708, 65.6766205, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.33257341, 0.291571558, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o53 = Create("BlockMesh",{
["Parent"] = o52,
["Scale"] = Vector3.new(1, 1, 0.728928983),
})
o54 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(5.10629559, 20.0486412, 69.6483765),
["Rotation"] = Vector3.new(61.4704247, 89.8916473, -108.373253),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.10629559, 20.0486412, 69.6483765, -5.68434189e-014, 1.71144335e-013, 0.999998212, -1.0658141e-014, 0.999998212, -1.69916178e-013, -1, 6.92779167e-014, 9.23705556e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.200000003, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o55 = Create("CylinderMesh",{
["Parent"] = o54,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o56 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.33091474, 18.431221, 70.4146576),
["Rotation"] = Vector3.new(-90, 69.9997482, 9.5225312e-012),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.33091474, 18.431221, 70.4146576, 0.342019141, -5.68434189e-014, 0.939691126, -0.939691126, -1.0658141e-014, 0.342019141, -3.28626015e-014, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.0410018, 0.200000003, 2.03371191),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o57 = Create("BlockMesh",{
["Parent"] = o56,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o58 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.61621952, 18.7774487, 64.401001),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621952, 18.7774487, 64.401001, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 1.45785797, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o59 = Create("BlockMesh",{
["Parent"] = o58,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o60 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.6367178, 16.5177708, 70.341774),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.6367178, 16.5177708, 70.341774, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.33257341, 0.291571558, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o61 = Create("BlockMesh",{
["Parent"] = o60,
["Scale"] = Vector3.new(1, 1, 0.728928983),
})
o62 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.6367178, 16.5177708, 68.8839111),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.6367178, 16.5177708, 68.8839111, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.33257341, 0.291571558, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o63 = Create("BlockMesh",{
["Parent"] = o62,
["Scale"] = Vector3.new(1, 1, 0.728928983),
})
o64 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.10629559, 21.6522827, 69.6483765),
["Rotation"] = Vector3.new(61.4704247, 89.8916473, -108.373253),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.10629559, 21.6522827, 69.6483765, -5.68434189e-014, 1.71144335e-013, 0.999998212, -1.0658141e-014, 0.999998212, -1.69916178e-013, -1, 6.92779167e-014, 9.23705556e-014),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 2.98860884, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o65 = Create("CylinderMesh",{
["Parent"] = o64,
})
o66 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(3.61621952, 18.7774487, 65.0934753),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621952, 18.7774487, 65.0934753, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.74942994, 1.89521515, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o67 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-2.37963533, 15.9994144, 67.2073746),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.37963533, 15.9994144, 67.2073746, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.291571558, 0.801821828),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o68 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.18973207, 18.4085522, 67.9727478),
["Rotation"] = Vector3.new(90, -4.00704484e-005, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.18973207, 18.4085522, 67.9727478, -5.68434189e-014, 0.999997854, -6.99361237e-007, -1.0658141e-014, -6.99361237e-007, -0.999997854, -1, 9.59232693e-014, -6.92779167e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(4.44646835, 0.200000003, 3.20728731),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o69 = Create("BlockMesh",{
["Parent"] = o68,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o70 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-0.944993973, 16.361721, 69.1025925),
["Rotation"] = Vector3.new(-90, 69.9997406, -2.50446806e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.944993973, 16.361721, 69.1025925, 0.342019141, 1.49500714e-008, 0.939691067, -0.939691067, -4.10752108e-008, 0.342019141, 4.37113563e-008, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o71 = Create("BlockMesh",{
["Parent"] = o70,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o72 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.6367178, 16.5177708, 67.134491),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.6367178, 16.5177708, 67.134491, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.33257341, 0.291571558, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o73 = Create("BlockMesh",{
["Parent"] = o72,
["Scale"] = Vector3.new(1, 1, 0.728928983),
})
o74 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.41436887, 19.4700146, 68.009201),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.41436887, 19.4700146, 68.009201, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(4.66514683, 0.200000003, 2.76992989),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o75 = Create("BlockMesh",{
["Parent"] = o74,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o76 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-1.98528862, 17.3017921, 66.915802),
["Rotation"] = Vector3.new(-90, 69.9997406, -2.50446806e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.98528862, 17.3017921, 66.915802, 0.342019141, 1.49500714e-008, 0.939691067, -0.939691067, -4.10752108e-008, 0.342019141, 4.37113563e-008, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 0.200000003, 2.18678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o77 = Create("BlockMesh",{
["Parent"] = o76,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o78 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.61621952, 18.7774487, 71.6173935),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621952, 18.7774487, 71.6173935, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 1.45785797, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o79 = Create("BlockMesh",{
["Parent"] = o78,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o80 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Cyan"),
["Position"] = Vector3.new(5.10629559, 23.3288174, 69.6483765),
["Rotation"] = Vector3.new(61.4704247, 89.8916473, -108.373253),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.10629559, 23.3288174, 69.6483765, -5.68434189e-014, 1.71144335e-013, 0.999998212, -1.0658141e-014, 0.999998212, -1.69916178e-013, -1, 6.92779167e-014, 9.23705556e-014),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.437357485, 0.364464492, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0156863, 0.686275, 0.92549),
})
o81 = Create("CylinderMesh",{
["Parent"] = o80,
})
o82 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-2.37963533, 15.9994144, 68.8110199),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.37963533, 15.9994144, 68.8110199, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.291571558, 0.801821828),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o83 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.31501579, 19.9393005, 67.9727478),
["Rotation"] = Vector3.new(89.9999924, 89.8880997, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.31501579, 19.9393005, 67.9727478, -5.68434189e-014, 6.55650069e-007, 0.999998093, -1.0658141e-014, 0.999998093, -6.55650069e-007, -1, 6.92779167e-014, 9.59232693e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(4.44646835, 0.200000003, 1.60364366),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o84 = Create("BlockMesh",{
["Parent"] = o83,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o85 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.41803932, 17.3195953, 65.7130737),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.41803932, 17.3195953, 65.7130737, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.91571665, 0.728928983, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o86 = Create("BlockMesh",{
["Parent"] = o85,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o87 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.61621761, 18.7774487, 64.145874),
["Rotation"] = Vector3.new(-135.000046, -89.8717957, -45),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621761, 18.7774487, 64.145874, 3.46353886e-007, 3.46353914e-007, -0.999997497, 0.999996901, -2.99005123e-008, 3.46354312e-007, -2.99003915e-008, -0.999999166, -3.46354796e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.437357396, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o88 = Create("CylinderMesh",{
["Parent"] = o87,
})
o89 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.61621761, 18.7774487, 63.8543053),
["Rotation"] = Vector3.new(-135.000046, -89.8717957, -45),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621761, 18.7774487, 63.8543053, 3.46353886e-007, 3.46353914e-007, -0.999997497, 0.999996901, -2.99005123e-008, 3.46354312e-007, -2.99003915e-008, -0.999999166, -3.46354796e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o90 = Create("CylinderMesh",{
["Parent"] = o89,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o91 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.65621758, 18.7774487, 72.9294739),
["Rotation"] = Vector3.new(-6.1066652e-013, 3.25688803e-012, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.65621758, 18.7774487, 72.9294739, -0.999998212, -1.71144335e-013, 5.68434189e-014, 1.69916178e-013, -0.999998212, 1.0658141e-014, -9.23705556e-014, -6.92779167e-014, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 1.45785797, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o92 = Create("SpecialMesh",{
["Parent"] = o91,
["MeshType"] = Enum.MeshType.Sphere,
})
o93 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.60203886, 19.9393005, 67.9727478),
["Rotation"] = Vector3.new(89.9999924, 89.8880997, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.60203886, 19.9393005, 67.9727478, -5.68434189e-014, 6.55650069e-007, 0.999998093, -1.0658141e-014, 0.999998093, -6.55650069e-007, -1, 6.92779167e-014, 9.59232693e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(7.21639872, 0.200000003, 1.82232225),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o94 = Create("BlockMesh",{
["Parent"] = o93,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o95 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Flint"),
["Position"] = Vector3.new(1.0780561, 19.5415325, 68.9568024),
["Rotation"] = Vector3.new(-90, 69.9997482, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.0780561, 19.5415325, 68.9568024, -5.68434189e-014, -0.342019051, 0.939691126, -1.0658141e-014, 0.939691126, 0.342019051, -1, 3.19744231e-014, 1.10134124e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.411765, 0.4, 0.360784),
})
o96 = Create("CylinderMesh",{
["Parent"] = o95,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o97 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.41804314, 18.2671967, 68.009201),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.41804314, 18.2671967, 68.009201, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.35307407, 2.91571593, 4.51935959),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o98 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.61621761, 18.7774487, 63.6720695),
["Rotation"] = Vector3.new(-135.000046, -89.8717957, -45),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621761, 18.7774487, 63.6720695, 3.46353886e-007, 3.46353914e-007, -0.999997497, 0.999996901, -2.99005123e-008, 3.46354312e-007, -2.99003915e-008, -0.999999166, -3.46354796e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o99 = Create("CylinderMesh",{
["Parent"] = o98,
})
o100 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-2.28368902, 17.9736042, 68.009201),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.28368902, 17.9736042, 68.009201, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 0.200000003, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o101 = Create("BlockMesh",{
["Parent"] = o100,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o102 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.41803932, 16.6635609, 68.009201),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.41803932, 16.6635609, 68.009201, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.35307407, 0.291571558, 4.51935959),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o103 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.13101578, 15.861742, 66.4019165),
["Rotation"] = Vector3.new(-180, 2.56978001e-005, 90.0000229),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.13101578, 15.861742, 66.4019165, -4.32182674e-007, -1, 4.4851123e-007, -1, 4.3218273e-007, 1.35536894e-007, -1.35537093e-007, -4.48511173e-007, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.200000003, 1.01321125),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o104 = Create("BlockMesh",{
["Parent"] = o103,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o105 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(3.61621952, 18.7774487, 70.9249115),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -179.999985),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621952, 18.7774487, 70.9249115, -0.999998093, 3.87429651e-007, -4.10752605e-008, 3.87429651e-007, 0.999998093, -1.49501425e-008, 4.10751682e-008, -1.49501016e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.74942994, 1.89521515, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o106 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(-0.222239971, 17.6379147, 68.009201),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.222239971, 17.6379147, 68.009201, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 1.89521515, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o107 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-2.00945139, 17.2201424, 67.0251465),
["Rotation"] = Vector3.new(-90, 69.9997406, -2.50446806e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.00945139, 17.2201424, 67.0251465, 0.342019141, 1.49500714e-008, 0.939691067, -0.939691067, -4.10752108e-008, 0.342019141, 4.37113563e-008, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.74942994, 0.200000003, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o108 = Create("BlockMesh",{
["Parent"] = o107,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o109 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(1.10298514, 19.4730358, 68.9568024),
["Rotation"] = Vector3.new(-90, 69.9997482, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.10298514, 19.4730358, 68.9568024, -5.68434189e-014, -0.342019051, 0.939691126, -1.0658141e-014, 0.939691126, 0.342019051, -1, 3.19744231e-014, 1.10134124e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.200000003, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o110 = Create("CylinderMesh",{
["Parent"] = o109,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o111 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(1.98879886, 16.8912525, 68.009201),
["Rotation"] = Vector3.new(180, -2.35343919e-006, 160.000031),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.98879886, 16.8912525, 68.009201, -0.939691067, -0.342019141, -4.10752605e-008, -0.342019141, 0.939691067, -1.49501425e-008, 4.37112746e-008, 3.28626015e-014, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.18678737, 1.31207204, 1.89521527),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o112 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.33091497, 18.431221, 65.6037292),
["Rotation"] = Vector3.new(-90, 69.9997482, 9.5225312e-012),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.33091497, 18.431221, 65.6037292, 0.342019141, -5.68434189e-014, 0.939691126, -0.939691126, -1.0658141e-014, 0.342019141, -3.28626015e-014, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.0410018, 0.200000003, 2.03371191),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o113 = Create("BlockMesh",{
["Parent"] = o112,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o114 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.61621761, 18.7774487, 63.1618156),
["Rotation"] = Vector3.new(-6.1066652e-013, 3.25688803e-012, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.61621761, 18.7774487, 63.1618156, -0.999998212, -1.71144335e-013, 5.68434189e-014, 1.69916178e-013, -0.999998212, 1.0658141e-014, -9.23705556e-014, -6.92779167e-014, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 1.45785797, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o115 = Create("SpecialMesh",{
["Parent"] = o114,
["MeshType"] = Enum.MeshType.Sphere,
})
o116 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-1.59949017, 18.3730583, 68.009201),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.59949017, 18.3730583, 68.009201, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.0410018, 0.200000003, 3.6446445),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o117 = Create("BlockMesh",{
["Parent"] = o116,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o118 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-2.00945139, 17.2201424, 68.9932556),
["Rotation"] = Vector3.new(-90, 69.9997406, -2.50446806e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.00945139, 17.2201424, 68.9932556, 0.342019141, 1.49500714e-008, 0.939691067, -0.939691067, -4.10752108e-008, 0.342019141, 4.37113563e-008, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.74942994, 0.200000003, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o119 = Create("BlockMesh",{
["Parent"] = o118,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o120 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.37347746, 18.8503399, 70.9530487),
["Rotation"] = Vector3.new(180, 50.7104721, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.37347746, 18.8503399, 70.9530487, 3.24131442e-008, -0.633236527, 0.773955941, -0.999998212, -9.08027928e-008, -3.24134284e-008, 9.0803006e-008, -0.773957372, -0.63323766),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.33257341, 0.200000003, 2.12847257),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o121 = Create("BlockMesh",{
["Parent"] = o120,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o122 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.65621758, 18.7774487, 71.8725281),
["Rotation"] = Vector3.new(-38.6059608, 89.8717957, 128.606003),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.65621758, 18.7774487, 71.8725281, -3.46353517e-007, -4.33776449e-007, 0.999997497, 0.999996901, -2.99004874e-008, 3.46353914e-007, 2.99004981e-008, 0.999999166, 4.33777473e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.437357396, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o123 = Create("CylinderMesh",{
["Parent"] = o122,
})
o124 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.65621758, 18.7774487, 72.3463287),
["Rotation"] = Vector3.new(-38.6059608, 89.8717957, 128.606003),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.65621758, 18.7774487, 72.3463287, -3.46353517e-007, -4.33776449e-007, 0.999997497, 0.999996901, -2.99004874e-008, 3.46353914e-007, 2.99004981e-008, 0.999999166, 4.33777473e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o125 = Create("CylinderMesh",{
["Parent"] = o124,
})
o126 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-1.98528862, 17.3017921, 69.1025925),
["Rotation"] = Vector3.new(-90, 69.9997406, -2.50446806e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.98528862, 17.3017921, 69.1025925, 0.342019141, 1.49500714e-008, 0.939691067, -0.939691067, -4.10752108e-008, 0.342019141, 4.37113563e-008, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 0.200000003, 2.18678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o127 = Create("BlockMesh",{
["Parent"] = o126,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o128 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-0.261576653, 17.8563137, 69.744873),
["Rotation"] = Vector3.new(-20.8078632, 44.3041229, -61.4503098),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.261576653, 17.8563137, 69.744873, 0.342019141, 0.628620148, 0.698466778, -0.939691067, 0.228798658, 0.254220903, 1.34110422e-007, -0.74329412, 0.668964684),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.0410018, 0.200000003, 2.03371191),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o129 = Create("BlockMesh",{
["Parent"] = o128,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o130 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-0.264121532, 17.8553944, 66.2759705),
["Rotation"] = Vector3.new(-159.192169, 44.3041306, 61.4503174),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.264121532, 17.8553944, 66.2759705, 0.342019022, -0.628620207, 0.698466897, -0.939691067, -0.228798702, 0.254220694, 4.47034481e-008, -0.74329406, -0.668964803),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.0410018, 0.200000003, 2.04100108),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o131 = Create("BlockMesh",{
["Parent"] = o130,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o132 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.65621758, 18.7774487, 72.1641006),
["Rotation"] = Vector3.new(-38.6059608, 89.8717957, 128.606003),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.65621758, 18.7774487, 72.1641006, -3.46353517e-007, -4.33776449e-007, 0.999997497, 0.999996901, -2.99004874e-008, 3.46353914e-007, 2.99004981e-008, 0.999999166, 4.33777473e-007),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o133 = Create("CylinderMesh",{
["Parent"] = o132,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o134 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-0.944993973, 16.361721, 66.915802),
["Rotation"] = Vector3.new(-90, 69.9997406, -2.50446806e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.944993973, 16.361721, 66.915802, 0.342019141, 1.49500714e-008, 0.939691067, -0.939691067, -4.10752108e-008, 0.342019141, 4.37113563e-008, -1, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o135 = Create("BlockMesh",{
["Parent"] = o134,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o136 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-2.40456676, 16.0679073, 68.4465561),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.40456676, 16.0679073, 68.4465561, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.801821828),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o137 = Create("BlockMesh",{
["Parent"] = o136,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o138 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.13101625, 15.861742, 69.6091919),
["Rotation"] = Vector3.new(-180, 2.56978001e-005, 90.0000229),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.13101625, 15.861742, 69.6091919, -4.32182674e-007, -1, 4.4851123e-007, -1, 4.3218273e-007, 1.35536894e-007, -1.35537093e-007, -4.48511173e-007, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.200000003, 1.01321125),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o139 = Create("BlockMesh",{
["Parent"] = o138,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o140 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(1.73923993, 18.429409, 68.009201),
["Rotation"] = Vector3.new(180, -2.35343919e-006, 160.000031),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.73923993, 18.429409, 68.009201, -0.939691067, -0.342019141, -4.10752605e-008, -0.342019141, 0.939691067, -1.49501425e-008, 4.37112746e-008, 3.28626015e-014, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.76993155, 1.74942958, 4.51935959),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o141 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-2.01876783, 17.1391754, 68.009201),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.01876783, 17.1391754, 68.009201, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.89521575, 1.6036433, 2.25967979),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o142 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(2.71274614, 20.9128704, 65.6547546),
["Rotation"] = Vector3.new(90, -7.51318585e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71274614, 20.9128704, 65.6547546, 0, -0.99999702, -1.31129832e-006, 4.65405492e-013, 1.31129821e-006, -0.999996543, 0.999999046, -1.49213975e-013, 4.42312853e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o143 = Create("CylinderMesh",{
["Parent"] = o142,
["Scale"] = Vector3.new(1, 0.145785764, 1),
})
o144 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.9020381, 20.0850906, 66.0046387),
["Rotation"] = Vector3.new(89.9999924, 89.8880997, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.9020381, 20.0850906, 66.0046387, -5.68434189e-014, 6.55650069e-007, 0.999998093, -1.0658141e-014, 0.999998093, -6.55650069e-007, -1, 6.92779167e-014, 9.59232693e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 0.200000003, 1.83917928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o145 = Create("BlockMesh",{
["Parent"] = o144,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o146 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(5.10629559, 23.1101322, 69.6483765),
["Rotation"] = Vector3.new(61.4704247, 89.8916473, -108.373253),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.10629559, 23.1101322, 69.6483765, -5.68434189e-014, 1.71144335e-013, 0.999998212, -1.0658141e-014, 0.999998212, -1.69916178e-013, -1, 6.92779167e-014, 9.23705556e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o147 = Create("CylinderMesh",{
["Parent"] = o146,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o148 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(2.71274614, 20.9128704, 66.3836823),
["Rotation"] = Vector3.new(90, -7.51318585e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71274614, 20.9128704, 66.3836823, 0, -0.99999702, -1.31129832e-006, 4.65405492e-013, 1.31129821e-006, -0.999996543, 0.999999046, -1.49213975e-013, 4.42312853e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o149 = Create("CylinderMesh",{
["Parent"] = o148,
["Scale"] = Vector3.new(1, 0.145785764, 1),
})
o150 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(2.71274614, 21.4231205, 65.6547546),
["Rotation"] = Vector3.new(90, -7.51318585e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71274614, 21.4231205, 65.6547546, 0, -0.99999702, -1.31129832e-006, 4.65405492e-013, 1.31129821e-006, -0.999996543, 0.999999046, -1.49213975e-013, 4.42312853e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o151 = Create("CylinderMesh",{
["Parent"] = o150,
["Scale"] = Vector3.new(1, 0.145785764, 1),
})
o152 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-2.40456676, 16.0679073, 67.5718384),
["Rotation"] = Vector3.new(-90, 69.9997406, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.40456676, 16.0679073, 67.5718384, -5.68434189e-014, -0.342019141, 0.939691067, -1.0658141e-014, 0.939691067, 0.342019141, -1, 3.28626015e-014, 1.13686838e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.801821828),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o153 = Create("BlockMesh",{
["Parent"] = o152,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o154 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.74053431, 21.1607113, 66.0046387),
["Rotation"] = Vector3.new(89.9999924, 89.8880997, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.74053431, 21.1607113, 66.0046387, -5.68434189e-014, 6.55650069e-007, 0.999998093, -1.0658141e-014, 0.999998093, -6.55650069e-007, -1, 6.92779167e-014, 9.59232693e-014),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 1.16628623, 1.9681083),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o155 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(5.10629559, 23.5474911, 69.6483765),
["Rotation"] = Vector3.new(61.4704247, 89.8916473, -108.373253),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.10629559, 23.5474911, 69.6483765, -5.68434189e-014, 1.71144335e-013, 0.999998212, -1.0658141e-014, 0.999998212, -1.69916178e-013, -1, 6.92779167e-014, 9.23705556e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o156 = Create("CylinderMesh",{
["Parent"] = o155,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o157 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.77697849, 20.5411263, 66.0046387),
["Rotation"] = Vector3.new(-90, 3.8249229e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.77697849, 20.5411263, 66.0046387, -5.68434189e-014, -0.999998093, 6.67574966e-007, -1.0658141e-014, 6.67574966e-007, 0.999998093, -1, -9.59232693e-014, 6.92779167e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 2.04100108, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o158 = Create("BlockMesh",{
["Parent"] = o157,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o159 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(2.71274614, 21.4231205, 66.3836823),
["Rotation"] = Vector3.new(90, -7.51318585e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71274614, 21.4231205, 66.3836823, 0, -0.99999702, -1.31129832e-006, 4.65405492e-013, 1.31129821e-006, -0.999996543, 0.999999046, -1.49213975e-013, 4.42312853e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o160 = Create("CylinderMesh",{
["Parent"] = o159,
["Scale"] = Vector3.new(1, 0.145785764, 1),
})
o161 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.77697825, 21.1607113, 66.7335663),
["Rotation"] = Vector3.new(180, 3.82492108e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.77697825, 21.1607113, 66.7335663, -1.69348883e-013, -0.999998093, 6.67574682e-007, -0.999998212, 1.59935826e-013, -4.37113172e-008, 4.37113172e-008, -6.67576046e-007, -0.999999881),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 2.04100108, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o162 = Create("BlockMesh",{
["Parent"] = o161,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o163 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.74190021, 21.1607037, 66.0046387),
["Rotation"] = Vector3.new(89.9999924, 89.8880997, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.74190021, 21.1607037, 66.0046387, -5.68434189e-014, 6.55650069e-007, 0.999998093, -1.0658141e-014, 0.999998093, -6.55650069e-007, -1, 6.92779167e-014, 9.59232693e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 1.02050054, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o164 = Create("BlockMesh",{
["Parent"] = o163,
["Scale"] = Vector3.new(1, 1, 0.145785809),
})
o165 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.77697825, 21.1607113, 65.2757111),
["Rotation"] = Vector3.new(180, 3.82492108e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.77697825, 21.1607113, 65.2757111, -1.69348883e-013, -0.999998093, 6.67574682e-007, -0.999998212, 1.59935826e-013, -4.37113172e-008, 4.37113172e-008, -6.67576046e-007, -0.999999881),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 2.04100108, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o166 = Create("BlockMesh",{
["Parent"] = o165,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o167 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(7.24667454, 19.2103691, 67.9727478),
["Rotation"] = Vector3.new(90, -4.00704484e-005, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.24667454, 19.2103691, 67.9727478, -5.68434189e-014, 0.999997854, -6.99361237e-007, -1.0658141e-014, -6.99361237e-007, -0.999997854, -1, 9.59232693e-014, -6.92779167e-014),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(4.44646835, 1.96810794, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o168 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(2.71274614, 21.4231205, 66.0192261),
["Rotation"] = Vector3.new(90, -7.51318585e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71274614, 21.4231205, 66.0192261, 0, -0.99999702, -1.31129832e-006, 4.65405492e-013, 1.31129821e-006, -0.999996543, 0.999999046, -1.49213975e-013, 4.42312853e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o169 = Create("CylinderMesh",{
["Parent"] = o168,
["Scale"] = Vector3.new(1, 0.145785764, 1),
})
o170 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.77615666, 20.6106071, 66.0046387),
["Rotation"] = Vector3.new(-90, 75.0000381, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.77615666, 20.6106071, 66.0046387, -1.08939835e-013, -0.258818418, 0.965925992, -3.59978906e-014, 0.965925992, 0.258818418, -1, -6.575665e-015, -1.14544726e-013),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.09339368, 1.42050064, 1.6018219),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o171 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.76103163, 21.1607113, 66.0046387),
["Rotation"] = Vector3.new(89.9999924, 89.8880997, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.76103163, 21.1607113, 66.0046387, -5.68434189e-014, 6.55650069e-007, 0.999998093, -1.0658141e-014, 0.999998093, -6.55650069e-007, -1, 6.92779167e-014, 9.59232693e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 1.16628623, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o172 = Create("BlockMesh",{
["Parent"] = o171,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o173 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.77697849, 21.7803001, 66.0046387),
["Rotation"] = Vector3.new(-90, 3.8249229e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.77697849, 21.7803001, 66.0046387, -5.68434189e-014, -0.999998093, 6.67574966e-007, -1.0658141e-014, 6.67574966e-007, 0.999998093, -1, -9.59232693e-014, 6.92779167e-014),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 2.04100108, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o174 = Create("BlockMesh",{
["Parent"] = o173,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o175 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(2.71274614, 20.9128704, 66.0192261),
["Rotation"] = Vector3.new(90, -7.51318585e-005, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71274614, 20.9128704, 66.0192261, 0, -0.99999702, -1.31129832e-006, 4.65405492e-013, 1.31129821e-006, -0.999996543, 0.999999046, -1.49213975e-013, 4.42312853e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.291571677, 0.200000003, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o176 = Create("CylinderMesh",{
["Parent"] = o175,
["Scale"] = Vector3.new(1, 0.145785764, 1),
})
o177 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.96103048, 21.1850872, 66.3971176),
["Rotation"] = Vector3.new(89.9999771, 89.7497711, 8.38253709e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.96103048, 21.1850872, 66.3971176, 6.55647398e-007, -9.59230931e-014, 0.999990463, 0.999994278, 1.06582003e-014, -6.55644897e-007, 6.92776525e-014, 0.999996185, 2.48688548e-013),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.784965754, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o178 = Create("BlockMesh",{
["Parent"] = o177,
["Offset"] = Vector3.new(0, 0, -0.150000006),
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o179 = Create("Part",{
["Name"] = "Missile",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(2.51274633, 21.3773365, 65.6089706),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.51274633, 21.3773365, 65.6089706, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["FrontSurface"] = Enum.SurfaceType.Motor,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o180 = Create("Part",{
["Name"] = "Missile",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(2.51274633, 20.8670864, 65.6089706),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.51274633, 20.8670864, 65.6089706, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["FrontSurface"] = Enum.SurfaceType.Motor,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o181 = Create("Part",{
["Name"] = "Missile",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(2.51274633, 20.8670864, 65.9734421),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.51274633, 20.8670864, 65.9734421, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["FrontSurface"] = Enum.SurfaceType.Motor,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o182 = Create("Part",{
["Name"] = "Missile",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(2.51274633, 20.8670864, 66.3378983),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.51274633, 20.8670864, 66.3378983, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["FrontSurface"] = Enum.SurfaceType.Motor,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o183 = Create("Part",{
["Name"] = "Missile",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(2.51274633, 21.3773365, 66.3378983),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.51274633, 21.3773365, 66.3378983, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["FrontSurface"] = Enum.SurfaceType.Motor,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o184 = Create("Part",{
["Name"] = "Missile",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(2.51274633, 21.3773365, 65.9734421),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.51274633, 21.3773365, 65.9734421, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["FrontSurface"] = Enum.SurfaceType.Motor,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o185 = Create("Model",{
["Name"] = "RArm",
["Parent"] = o2,
})
o186 = Create("Model",{
["Name"] = "Base",
["Parent"] = o185,
})
o187 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.27409291, 13.9345455, 61.6338577),
["Rotation"] = Vector3.new(-31.1710167, -89.7992325, 141.839035),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27409291, 13.9345455, 61.6338577, -0.00276837032, -0.00217544124, -0.999993861, 0.121698, -0.992565513, 0.0018223743, -0.992563307, -0.121692203, 0.00301253586),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.583143115, 3.06150198),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o188 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(1.09290457, 15.1672897, 61.7914505),
["Rotation"] = Vector3.new(96.9897995, -0.12474139, 89.8413773),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.09290457, 15.1672897, 61.7914505, 0.00276841596, -0.999993861, -0.00217714626, -0.121698141, 0.0018240608, -0.992565453, 0.992563367, 0.00301278871, -0.12169233),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 1.31207204, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o189 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.09889412, 16.1719704, 61.9034538),
["Rotation"] = Vector3.new(96.9897995, -0.124433331, -90.1586075),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09889412, 16.1719704, 61.9034538, -0.00276823249, 0.999993801, -0.00217176974, 0.121698193, -0.00181874563, -0.992565572, -0.992563307, -0.00301195239, -0.121692419),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.583143115, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o190 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.09509659, 14.4372158, 61.6905212),
["Rotation"] = Vector3.new(-83.0102081, 0.124433413, -89.8413925),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09509659, 14.4372158, 61.6905212, 0.00276824506, 0.999993801, 0.00217177114, -0.121698014, -0.00181874621, 0.992565572, 0.992563367, -0.00301196449, 0.121692225),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.583143115, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o191 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.33392048, 19.2091579, 62.278553),
["Rotation"] = Vector3.new(96.9898148, -0.12474037, -90.1586075),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.33392048, 19.2091579, 62.278553, -0.00276824459, 0.999993861, -0.00217712857, 0.121698447, -0.00182406313, -0.992565453, -0.992563307, -0.00301261712, -0.121692635),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.962186277, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o192 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.00563955, 16.7863426, 61.1007118),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00563955, 16.7863426, 61.1007118, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o193 = Create("SpecialMesh",{
["Parent"] = o192,
["MeshType"] = Enum.MeshType.Sphere,
})
o194 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00635767, 16.755312, 61.3540115),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00635767, 16.755312, 61.3540115, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o195 = Create("CylinderMesh",{
["Parent"] = o194,
})
o196 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.01943326, 14.0077877, 62.2738228),
["Rotation"] = Vector3.new(-31.241993, -89.7992325, -128.244431),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01943326, 14.0077877, 62.2738228, -0.0021815924, 0.00276789046, -0.999993861, -0.992539048, -0.121914044, 0.00182788202, -0.121908225, 0.992536902, 0.00301320595),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o197 = Create("CylinderMesh",{
["Parent"] = o196,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o198 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.63016009, 14.488472, 62.6981697),
["Rotation"] = Vector3.new(7.00263071, 0.164455324, 129.864517),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.63016009, 14.488472, 62.6981697, -0.64097178, -0.767559052, 0.00287028286, 0.761612356, -0.636461675, -0.121914417, 0.095403336, -0.075957641, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.53075063, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o199 = Create("CylinderMesh",{
["Parent"] = o198,
})
o200 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(1.01923728, 14.016674, 62.2012596),
["Rotation"] = Vector3.new(-31.241993, -89.7992325, -128.244431),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01923728, 14.016674, 62.2012596, -0.0021815924, 0.00276789046, -0.999993861, -0.992539048, -0.121914044, 0.00182788202, -0.121908225, 0.992536902, 0.00301320595),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o201 = Create("CylinderMesh",{
["Parent"] = o200,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o202 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(0.577926815, 12.7106762, 61.4913597),
["Rotation"] = Vector3.new(7.00262022, 0.164450452, 89.8750076),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.577926815, 12.7106762, 61.4913597, 0.0021814655, -0.999993503, 0.00287019787, 0.992539048, 0.00181528321, -0.121914238, 0.12190824, 0.00311473478, 0.992536545),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o203 = Create("CylinderMesh",{
["Parent"] = o202,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o204 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.00398874, 15.274189, 61.4660454),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00398874, 15.274189, 61.4660454, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o205 = Create("CylinderMesh",{
["Parent"] = o204,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o206 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(2.25593424, 15.240592, 61.1729698),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25593424, 15.240592, 61.1729698, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o207 = Create("CylinderMesh",{
["Parent"] = o206,
})
o208 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00319052, 15.3097, 61.1763039),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00319052, 15.3097, 61.1763039, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o209 = Create("CylinderMesh",{
["Parent"] = o208,
})
o210 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.00378513, 15.2831192, 61.3931351),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00378513, 15.2831192, 61.3931351, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o211 = Create("CylinderMesh",{
["Parent"] = o210,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o212 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.65035152, 18.7823963, 62.7794075),
["Rotation"] = Vector3.new(-31.2518311, -89.7992325, 51.7457085),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.65035152, 18.7823963, 62.7794075, 0.00218178192, -0.00276715076, -0.999993861, 0.992538989, 0.121914513, 0.00182815886, 0.121908702, -0.992536783, 0.00301249558),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o213 = Create("CylinderMesh",{
["Parent"] = o212,
})
o214 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(1.08749819, 12.709816, 61.4894142),
["Rotation"] = Vector3.new(7.00262022, 0.164450452, 89.8750076),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.08749819, 12.709816, 61.4894142, 0.0021814655, -0.999993503, 0.00287019787, 0.992539048, 0.00181528321, -0.121914238, 0.12190824, 0.00311473478, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.874714792, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o215 = Create("CylinderMesh",{
["Parent"] = o214,
})
o216 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.25510097, 15.2760658, 60.8834229),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25510097, 15.2760658, 60.8834229, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.656036139),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o217 = Create("SpecialMesh",{
["Parent"] = o216,
["MeshType"] = Enum.MeshType.Sphere,
})
o218 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.00246906, 15.340765, 60.9230499),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00246906, 15.340765, 60.9230499, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o219 = Create("SpecialMesh",{
["Parent"] = o218,
["MeshType"] = Enum.MeshType.Sphere,
})
o220 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(2.25852561, 15.125268, 62.1134911),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25852561, 15.125268, 62.1134911, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o221 = Create("CylinderMesh",{
["Parent"] = o220,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o222 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.26015615, 15.054244, 62.6926918),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.26015615, 15.054244, 62.6926918, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.656036139),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o223 = Create("SpecialMesh",{
["Parent"] = o222,
["MeshType"] = Enum.MeshType.Sphere,
})
o224 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.25874257, 15.116416, 62.1857338),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25874257, 15.116416, 62.1857338, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o225 = Create("CylinderMesh",{
["Parent"] = o224,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o226 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.62470603, 14.7280235, 60.7446289),
["Rotation"] = Vector3.new(7.00263071, 0.164455324, 129.864517),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.62470603, 14.7280235, 60.7446289, -0.64097178, -0.767559052, 0.00287028286, 0.761612356, -0.636461675, -0.121914417, 0.095403336, -0.075957641, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.53075063, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o227 = Create("CylinderMesh",{
["Parent"] = o226,
})
o228 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(1.01620936, 14.1497335, 61.116024),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01620936, 14.1497335, 61.116024, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o229 = Create("CylinderMesh",{
["Parent"] = o228,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o230 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(2.25934744, 15.089776, 62.402916),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25934744, 15.089776, 62.402916, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o231 = Create("CylinderMesh",{
["Parent"] = o230,
})
o232 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.016011, 14.1586819, 61.0431938),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.016011, 14.1586819, 61.0431938, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o233 = Create("CylinderMesh",{
["Parent"] = o232,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o234 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.02002311, 13.9812002, 62.4905548),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.02002311, 13.9812002, 62.4905548, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o235 = Create("CylinderMesh",{
["Parent"] = o234,
})
o236 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(0.39911145, 14.1566496, 61.6693268),
["Rotation"] = Vector3.new(7.00262022, 0.164450452, 89.8750076),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.39911145, 14.1566496, 61.6693268, 0.0021814655, -0.999993503, 0.00287019787, 0.992539048, 0.00181528321, -0.121914238, 0.12190824, 0.00311473478, 0.992536545),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o237 = Create("CylinderMesh",{
["Parent"] = o236,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o238 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00388288, 16.0318604, 60.9712448),
["Rotation"] = Vector3.new(-31.2414799, -89.7992325, 141.768539),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00388288, 16.0318604, 60.9712448, -0.00276841572, -0.00218099053, -0.999993861, 0.121698178, -0.992565572, 0.00182787585, -0.992563367, -0.121692374, 0.00301325647),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.31207204, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o239 = Create("CylinderMesh",{
["Parent"] = o238,
})
o240 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.64691925, 18.9332352, 61.5491295),
["Rotation"] = Vector3.new(-31.2518311, -89.7992325, 51.7457085),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64691925, 18.9332352, 61.5491295, 0.00218178192, -0.00276715076, -0.999993861, 0.992538989, 0.121914513, 0.00182815886, 0.121908702, -0.992536783, 0.00301249558),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o241 = Create("CylinderMesh",{
["Parent"] = o240,
})
o242 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.08917069, 13.468688, 61.5831947),
["Rotation"] = Vector3.new(-172.997375, -0.16444549, -179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.08917069, 13.468688, 61.5831947, -0.999993503, 0.00217776722, -0.00287011126, 0.00181162253, 0.992538929, 0.121914417, 0.00311419833, 0.121908411, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.874714971, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o243 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.253524482, 14.1568737, 61.6700211),
["Rotation"] = Vector3.new(7.00262022, 0.164450452, 89.8750076),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.253524482, 14.1568737, 61.6700211, 0.0021814655, -0.999993503, 0.00287019787, 0.992539048, 0.00181528321, -0.121914238, 0.12190824, 0.00311473478, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.218678698, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o244 = Create("CylinderMesh",{
["Parent"] = o243,
})
o245 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Pastel brown"),
["Position"] = Vector3.new(3.64893818, 18.8445263, 62.2726784),
["Rotation"] = Vector3.new(-31.2518311, -89.7992325, 51.7457085),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64893818, 18.8445263, 62.2726784, 0.00218178192, -0.00276715076, -0.999993861, 0.992538989, 0.121914513, 0.00182815886, 0.121908702, -0.992536783, 0.00301249558),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.801821649, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0.8, 0.6),
})
o246 = Create("CylinderMesh",{
["Parent"] = o245,
})
o247 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.0073204, 15.1278725, 62.6592751),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.0073204, 15.1278725, 62.6592751, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o248 = Create("SpecialMesh",{
["Parent"] = o247,
["MeshType"] = Enum.MeshType.Sphere,
})
o249 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.64753175, 18.9066639, 61.7660141),
["Rotation"] = Vector3.new(-31.2518311, -89.7992325, 51.7457085),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64753175, 18.9066639, 61.7660141, 0.00218178192, -0.00276715076, -0.999993861, 0.992538989, 0.121914513, 0.00182815886, 0.121908702, -0.992536783, 0.00301249558),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o250 = Create("CylinderMesh",{
["Parent"] = o249,
})
o251 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(3.27678108, 15.1633148, 61.7848969),
["Rotation"] = Vector3.new(-172.997375, -0.16444549, -179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27678108, 15.1633148, 61.7848969, -0.999993503, 0.00217776722, -0.00287011126, 0.00181162253, 0.992538929, 0.121914417, 0.00311419833, 0.121908411, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.06150246, 1.02050054, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o252 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.09067798, 14.1553602, 61.6673126),
["Rotation"] = Vector3.new(-172.997375, -0.16444549, -179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.09067798, 14.1553602, 61.6673126, -0.999993503, 0.00217776722, -0.00287011126, 0.00181162253, 0.992538929, 0.121914417, 0.00311419833, 0.121908411, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 1.02050054, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o253 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.0098176, 16.6044903, 62.5840836),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.0098176, 16.6044903, 62.5840836, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o254 = Create("CylinderMesh",{
["Parent"] = o253,
})
o255 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.00600386, 15.185524, 62.1890831),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00600386, 15.185524, 62.1890831, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o256 = Create("CylinderMesh",{
["Parent"] = o255,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o257 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.00917482, 16.6310768, 62.3671455),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00917482, 16.6310768, 62.3671455, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o258 = Create("CylinderMesh",{
["Parent"] = o257,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o259 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.0089922, 16.6399841, 62.2946281),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.0089922, 16.6399841, 62.2946281, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o260 = Create("CylinderMesh",{
["Parent"] = o259,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o261 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00892973, 15.810071, 62.7801628),
["Rotation"] = Vector3.new(-31.2414799, -89.7992325, 141.768539),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00892973, 15.810071, 62.7801628, -0.00276841572, -0.00218099053, -0.999993861, 0.121698178, -0.992565572, 0.00182787585, -0.992563367, -0.121692374, 0.00301325647),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.31207204, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o262 = Create("CylinderMesh",{
["Parent"] = o261,
})
o263 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00660372, 15.1589165, 62.4062042),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00660372, 15.1589165, 62.4062042, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o264 = Create("CylinderMesh",{
["Parent"] = o263,
})
o265 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.00580025, 15.1943855, 62.116909),
["Rotation"] = Vector3.new(148.756348, 89.7992325, -51.7539063),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00580025, 15.1943855, 62.116909, 0.00218159659, 0.00276773027, 0.999993861, 0.992539048, -0.121914044, -0.00182790577, 0.121908225, 0.992536902, -0.00301304739),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o266 = Create("CylinderMesh",{
["Parent"] = o265,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o267 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.01049089, 16.5734196, 62.8374443),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.01049089, 16.5734196, 62.8374443, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o268 = Create("SpecialMesh",{
["Parent"] = o267,
["MeshType"] = Enum.MeshType.Sphere,
})
o269 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.59706688, 12.708848, 61.4880104),
["Rotation"] = Vector3.new(7.00262022, 0.164450452, 89.8750076),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.59706688, 12.708848, 61.4880104, 0.0021814655, -0.999993503, 0.00287019787, 0.992539048, 0.00181528321, -0.121914238, 0.12190824, 0.00311473478, 0.992536545),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o270 = Create("CylinderMesh",{
["Parent"] = o269,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o271 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.08852339, 13.179594, 61.5472679),
["Rotation"] = Vector3.new(-172.997375, -0.16444549, -179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.08852339, 13.179594, 61.5472679, -0.999993503, 0.00217776722, -0.00287011126, 0.00181162253, 0.992538929, 0.121914417, 0.00311419833, 0.121908411, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.218678698, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o272 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.27517557, 14.4405518, 61.6958466),
["Rotation"] = Vector3.new(-172.997375, -0.16444549, -179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27517557, 14.4405518, 61.6958466, -0.999993503, 0.00217776722, -0.00287011126, 0.00181162253, 0.992538929, 0.121914417, 0.00311419833, 0.121908411, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.06150246, 0.437357396, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o273 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.00695562, 16.7287388, 61.5707436),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00695562, 16.7287388, 61.5707436, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o274 = Create("CylinderMesh",{
["Parent"] = o273,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o275 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(2.25673532, 15.2050896, 61.4623451),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25673532, 15.2050896, 61.4623451, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o276 = Create("CylinderMesh",{
["Parent"] = o275,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o277 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.01539254, 14.1852655, 60.8263702),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01539254, 14.1852655, 60.8263702, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o278 = Create("CylinderMesh",{
["Parent"] = o277,
})
o279 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.02035284, 13.9678802, 62.5993042),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.02035284, 13.9678802, 62.5993042, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o280 = Create("SpecialMesh",{
["Parent"] = o279,
["MeshType"] = Enum.MeshType.Sphere,
})
o281 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.01510096, 14.198554, 60.7180099),
["Rotation"] = Vector3.new(7.00260544, 0.164444581, 179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01510096, 14.198554, 60.7180099, -0.999993503, -0.00217793393, 0.00287009543, 0.00181179133, -0.992538989, -0.121913984, 0.00311420206, -0.121907979, 0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o282 = Create("SpecialMesh",{
["Parent"] = o281,
["MeshType"] = Enum.MeshType.Sphere,
})
o283 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.00950289, 17.3304558, 62.0487251),
["Rotation"] = Vector3.new(-172.997375, -0.16444549, -179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00950289, 17.3304558, 62.0487251, -0.999993503, 0.00217776722, -0.00287011126, 0.00181162253, 0.992538929, 0.121914417, 0.00311419833, 0.121908411, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.60364413, 3.35307264, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o284 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.25652313, 15.214036, 61.3894806),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25652313, 15.214036, 61.3894806, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o285 = Create("CylinderMesh",{
["Parent"] = o284,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o286 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.09667587, 15.1600285, 61.779129),
["Rotation"] = Vector3.new(-172.997375, -0.16444549, -179.875214),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09667587, 15.1600285, 61.779129, -0.999993503, 0.00217776722, -0.00287011126, 0.00181162253, 0.992538929, 0.121914417, 0.00311419833, 0.121908411, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 1.02050054, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o287 = Create("Part",{
["Parent"] = o186,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.00716448, 16.7198601, 61.6430588),
["Rotation"] = Vector3.new(-31.2420578, -89.7992325, 51.7555084),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00716448, 16.7198601, 61.6430588, 0.00218159752, -0.00276789046, -0.999993861, 0.992539048, 0.121914044, 0.00182788714, 0.121908225, -0.992536902, 0.00301320641),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o288 = Create("CylinderMesh",{
["Parent"] = o287,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o289 = Create("Part",{
["Name"] = "Joint",
["Parent"] = o186,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(-0.4379327, 14.1579857, 61.6726151),
["Rotation"] = Vector3.new(179.999786, 88.8358459, -179.999786),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.4379327, 14.1579857, 61.6726151, -0.0203163102, 7.4707593e-008, 0.999793589, 5.02629227e-009, 1, -7.46208784e-008, -0.999793589, 3.50923379e-009, -0.0203163102),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o290 = Create("Part",{
["Name"] = "Base",
["Parent"] = o186,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.64899993, 18.8449993, 62.2730141),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64899993, 18.8449993, 62.2730141, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o291 = Create("Script",{
["Parent"] = o290,
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
end,o291)
end))
o292 = Create("Model",{
["Name"] = "Spindle",
["Parent"] = o185,
})
o293 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-5.20159817, 14.1667547, 61.6869507),
["Rotation"] = Vector3.new(-127.973839, -0.0279658269, -179.795486),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.20159817, 14.1667547, 61.6869507, -0.999993503, 0.00356959878, -0.000488095713, 0.00181162031, 0.615299106, 0.788291752, 0.00311420951, 0.788285792, -0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o294 = Create("BlockMesh",{
["Parent"] = o293,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o295 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-2.33072376, 14.1615505, 61.6781235),
["Rotation"] = Vector3.new(-127.973839, -0.0279658269, -179.795486),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.33072376, 14.1615505, 61.6781235, -0.999993503, 0.00356959878, -0.000488095713, 0.00181162031, 0.615299106, 0.788291752, 0.00311420951, 0.788285792, -0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o296 = Create("BlockMesh",{
["Parent"] = o295,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o297 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-3.20424724, 14.163188, 61.6802826),
["Rotation"] = Vector3.new(-127.973839, -0.0279658269, -179.795486),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.20424724, 14.163188, 61.6802826, -0.999993503, 0.00356959878, -0.000488095713, 0.00181162031, 0.615299106, 0.788291752, 0.00311420951, 0.788285792, -0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o298 = Create("BlockMesh",{
["Parent"] = o297,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o299 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-1.19800007, 14.158, 61.6730003),
["Rotation"] = Vector3.new(-127.973839, -0.0279658269, -179.795486),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.19800007, 14.158, 61.6730003, -0.999993503, 0.00356959878, -0.000488095713, 0.00181162031, 0.615299106, 0.788291752, 0.00311420951, 0.788285792, -0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o300 = Create("BlockMesh",{
["Parent"] = o299,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o301 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.24585199, 14.4417028, 61.727047),
["Rotation"] = Vector3.new(-37.9739265, 0.204523355, 90.0277557),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.24585199, 14.4417028, 61.727047, -0.000484426273, -0.999993443, 0.00356959831, 0.788291812, 0.00181451219, 0.615298867, -0.615301371, 0.00311195198, 0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o302 = Create("CylinderMesh",{
["Parent"] = o301,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o303 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-1.03799999, 14.158, 61.6730003),
["Rotation"] = Vector3.new(-127.973839, -0.0279658269, -179.795486),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.03799999, 14.158, 61.6730003, -0.999993503, 0.00356959878, -0.000488095713, 0.00181162031, 0.615299106, 0.788291752, 0.00311420951, 0.788285792, -0.615301549),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.437357396, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o304 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-0.438013166, 14.1581116, 61.6722946),
["Rotation"] = Vector3.new(7.00262022, 0.164450452, 89.8750076),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.438013166, 14.1581116, 61.6722946, 0.0021814655, -0.999993503, 0.00287019787, 0.992539048, 0.00181528321, -0.121914238, 0.12190824, 0.00311473478, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 1.16628623, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o305 = Create("CylinderMesh",{
["Parent"] = o304,
})
o306 = Create("Part",{
["Name"] = "Joint",
["Parent"] = o292,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(-0.4379327, 14.1579857, 61.6726151),
["Rotation"] = Vector3.new(179.999786, 88.8358459, -179.999786),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.4379327, 14.1579857, 61.6726151, -0.0203163102, 7.4707593e-008, 0.999793589, 5.02629227e-009, 1, -7.46208784e-008, -0.999793589, 3.50923379e-009, -0.0203163102),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o307 = Create("Script",{
["Parent"] = o306,
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
end,o307)
end))
o308 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.24727988, 14.1955833, 61.4117317),
["Rotation"] = Vector3.new(-37.9739265, 0.204523355, 90.0277557),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.24727988, 14.1955833, 61.4117317, -0.000484426273, -0.999993443, 0.00356959831, 0.788291812, 0.00181451219, 0.615298867, -0.615301371, 0.00311195198, 0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o309 = Create("CylinderMesh",{
["Parent"] = o308,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o310 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.24708462, 13.8802662, 61.6578522),
["Rotation"] = Vector3.new(-37.9739265, 0.204523355, 90.0277557),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.24708462, 13.8802662, 61.6578522, -0.000484426273, -0.999993443, 0.00356959831, 0.788291812, 0.00181451219, 0.615298867, -0.615301371, 0.00311195198, 0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o311 = Create("CylinderMesh",{
["Parent"] = o310,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o312 = Create("Part",{
["Parent"] = o292,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.24565697, 14.1263857, 61.9731674),
["Rotation"] = Vector3.new(-37.9739265, 0.204523355, 90.0277557),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.24565697, 14.1263857, 61.9731674, -0.000484426273, -0.999993443, 0.00356959831, 0.788291812, 0.00181451219, 0.615298867, -0.615301371, 0.00311195198, 0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o313 = Create("CylinderMesh",{
["Parent"] = o312,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o314 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(3.83739018, 12.3890629, 68.009201),
["Rotation"] = Vector3.new(180, -2.35345897e-006, -44.9999809),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.83739018, 12.3890629, 68.009201, 0.707105756, 0.707105279, -4.10756087e-008, 0.707105279, -0.707105756, -1.49499222e-008, -3.96159443e-008, -1.84736209e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.49430478, 1.7858758, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o315 = Create("Part",{
["Name"] = "LJoint",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.64899993, 18.8449993, 73.673027),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64899993, 18.8449993, 73.673027, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o316 = Create("Part",{
["Name"] = "RJoint",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.64899993, 18.8449993, 62.2730141),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64899993, 18.8449993, 62.2730141, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o317 = Create("Part",{
["Name"] = "RotBase",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.83699989, 12.3889999, 68.0090027),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.83699989, 12.3889999, 68.0090027, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o318 = Create("Script",{
["Parent"] = o317,
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
end,o318)
end))
o319 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(5.23808289, 15.7706213, 68.009201),
["Rotation"] = Vector3.new(180, -2.35343919e-006, -89.9999771),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.23808289, 15.7706213, 68.009201, 3.75504726e-007, 0.999997854, -4.10752605e-008, 0.999997854, -3.75504726e-007, -1.49501425e-008, -1.4950098e-008, -4.10751575e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.49430478, 1.7858758, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o320 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(5.07513285, 14.5328875, 68.009201),
["Rotation"] = Vector3.new(180, -2.35343828e-006, -74.9999771),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.07513285, 14.5328875, 68.009201, 0.258819014, 0.965924203, -4.10752463e-008, 0.965924203, -0.258819014, -1.49501123e-008, -2.50717029e-008, -3.58062131e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.49430478, 1.7858758, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o321 = Create("Part",{
["Parent"] = o2,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.59738493, 13.3795013, 68.009201),
["Rotation"] = Vector3.new(180, -2.353436e-006, -59.9999809),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.59738493, 13.3795013, 68.009201, 0.500000477, 0.866025507, -4.10752072e-008, 0.866025507, -0.500000477, -1.49501247e-008, -3.34848025e-008, -2.80971992e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.49430478, 1.7858758, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o322 = Create("Model",{
["Name"] = "LArm",
["Parent"] = o2,
})
o323 = Create("Model",{
["Name"] = "Base",
["Parent"] = o322,
})
o324 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.27409339, 13.9345455, 74.3121414),
["Rotation"] = Vector3.new(-148.828247, -89.7992325, 38.1617126),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27409339, 13.9345455, 74.3121414, 0.00276828371, -0.00217543053, -0.999993861, -0.121698, -0.992565513, 0.0018223743, -0.992563307, 0.121692203, -0.00301244832),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.583143115, 3.06150198),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o325 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(1.09290504, 15.1672897, 74.1545486),
["Rotation"] = Vector3.new(83.0102005, -0.124740772, 90.1586151),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.09290504, 15.1672897, 74.1545486, -0.00276832934, -0.999993861, -0.00217713555, 0.121698141, 0.0018240608, -0.992565453, 0.992563367, -0.00301270117, 0.12169233),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 1.31207204, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o326 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.09889412, 16.1719704, 74.0425415),
["Rotation"] = Vector3.new(83.0102005, -0.12443272, -89.8414001),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09889412, 16.1719704, 74.0425415, 0.00276814587, 0.999993801, -0.00217175903, -0.121698193, -0.00181874563, -0.992565572, -0.992563307, 0.00301186484, 0.121692419),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.583143115, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o327 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.09509659, 14.4372158, 74.2554779),
["Rotation"] = Vector3.new(-96.9897919, 0.124432802, -90.1586075),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09509659, 14.4372158, 74.2554779, -0.00276815845, 0.999993801, 0.00217176042, 0.121698014, -0.00181874621, 0.992565572, 0.992563367, 0.00301187695, -0.121692225),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.583143115, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o328 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.33392048, 19.2091579, 73.66745),
["Rotation"] = Vector3.new(83.0101852, -0.124739759, -89.8414001),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.33392048, 19.2091579, 73.66745, 0.00276815798, 0.999993861, -0.00217711786, -0.121698447, -0.00182406313, -0.992565453, -0.992563307, 0.00301252957, 0.121692635),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.962186277, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o329 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.00564003, 16.7863426, 74.8452911),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00564003, 16.7863426, 74.8452911, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o330 = Create("SpecialMesh",{
["Parent"] = o329,
["MeshType"] = Enum.MeshType.Sphere,
})
o331 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00635815, 16.755312, 74.5919876),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00635815, 16.755312, 74.5919876, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o332 = Create("CylinderMesh",{
["Parent"] = o331,
})
o333 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.0194335, 14.0077877, 73.6721802),
["Rotation"] = Vector3.new(-148.757278, -89.7992325, -51.754837),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.0194335, 14.0077877, 73.6721802, 0.00218158169, 0.00276780385, -0.999993861, 0.992539048, -0.121914044, 0.00182788202, -0.121908225, -0.992536902, -0.0030131184),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o334 = Create("CylinderMesh",{
["Parent"] = o333,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o335 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.63016045, 14.488472, 73.2478333),
["Rotation"] = Vector3.new(172.997375, 0.164450362, 50.1354828),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.63016045, 14.488472, 73.2478333, 0.64097178, -0.767559052, 0.00287019624, -0.761612356, -0.636461675, -0.121914417, 0.0954032764, 0.0759577155, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.53075063, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o336 = Create("CylinderMesh",{
["Parent"] = o335,
})
o337 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(1.01923752, 14.016674, 73.7447357),
["Rotation"] = Vector3.new(-148.757278, -89.7992325, -51.754837),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01923752, 14.016674, 73.7447357, 0.00218158169, 0.00276780385, -0.999993861, 0.992539048, -0.121914044, 0.00182788202, -0.121908225, -0.992536902, -0.0030131184),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o338 = Create("CylinderMesh",{
["Parent"] = o337,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o339 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(0.577927113, 12.7106762, 74.4546356),
["Rotation"] = Vector3.new(172.997375, 0.16444549, 90.1249924),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.577927113, 12.7106762, 74.4546356, -0.00218145479, -0.999993503, 0.00287011126, -0.992539048, 0.00181528321, -0.121914238, 0.12190824, -0.00311464723, -0.992536545),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o340 = Create("CylinderMesh",{
["Parent"] = o339,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o341 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.00398922, 15.274189, 74.47995),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00398922, 15.274189, 74.47995, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o342 = Create("CylinderMesh",{
["Parent"] = o341,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o343 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(2.25593472, 15.240592, 74.7730255),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25593472, 15.240592, 74.7730255, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o344 = Create("CylinderMesh",{
["Parent"] = o343,
})
o345 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00319099, 15.3097, 74.7696991),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00319099, 15.3097, 74.7696991, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o346 = Create("CylinderMesh",{
["Parent"] = o345,
})
o347 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.00378561, 15.2831192, 74.5528641),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00378561, 15.2831192, 74.5528641, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o348 = Create("CylinderMesh",{
["Parent"] = o347,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o349 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.65035176, 18.7823963, 73.1665955),
["Rotation"] = Vector3.new(-148.747437, -89.7992325, 128.25502),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.65035176, 18.7823963, 73.1665955, -0.00218177121, -0.00276706414, -0.999993861, -0.992538989, 0.121914513, 0.00182815886, 0.121908702, 0.992536783, -0.00301240804),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o350 = Create("CylinderMesh",{
["Parent"] = o349,
})
o351 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(1.08749866, 12.709816, 74.4565887),
["Rotation"] = Vector3.new(172.997375, 0.16444549, 90.1249924),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.08749866, 12.709816, 74.4565887, -0.00218145479, -0.999993503, 0.00287011126, -0.992539048, 0.00181528321, -0.121914238, 0.12190824, -0.00311464723, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.874714792, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o352 = Create("CylinderMesh",{
["Parent"] = o351,
})
o353 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.25510168, 15.2760658, 75.0625763),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25510168, 15.2760658, 75.0625763, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.656036139),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o354 = Create("SpecialMesh",{
["Parent"] = o353,
["MeshType"] = Enum.MeshType.Sphere,
})
o355 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.00246954, 15.340765, 75.0229492),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00246954, 15.340765, 75.0229492, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o356 = Create("SpecialMesh",{
["Parent"] = o355,
["MeshType"] = Enum.MeshType.Sphere,
})
o357 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(2.25852609, 15.125268, 73.8325043),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25852609, 15.125268, 73.8325043, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o358 = Create("CylinderMesh",{
["Parent"] = o357,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o359 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(2.26015663, 15.054244, 73.2533112),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.26015663, 15.054244, 73.2533112, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.656036139),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o360 = Create("SpecialMesh",{
["Parent"] = o359,
["MeshType"] = Enum.MeshType.Sphere,
})
o361 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.25874305, 15.116416, 73.7602692),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25874305, 15.116416, 73.7602692, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o362 = Create("CylinderMesh",{
["Parent"] = o361,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o363 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.62470663, 14.7280235, 75.2013702),
["Rotation"] = Vector3.new(172.997375, 0.164450362, 50.1354828),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.62470663, 14.7280235, 75.2013702, 0.64097178, -0.767559052, 0.00287019624, -0.761612356, -0.636461675, -0.121914417, 0.0954032764, 0.0759577155, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.53075063, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o364 = Create("CylinderMesh",{
["Parent"] = o363,
})
o365 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(1.01620984, 14.1497335, 74.8299713),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01620984, 14.1497335, 74.8299713, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o366 = Create("CylinderMesh",{
["Parent"] = o365,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o367 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(2.25934792, 15.089776, 73.5430832),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25934792, 15.089776, 73.5430832, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o368 = Create("CylinderMesh",{
["Parent"] = o367,
})
o369 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.01601148, 14.1586819, 74.9028015),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01601148, 14.1586819, 74.9028015, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o370 = Create("CylinderMesh",{
["Parent"] = o369,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o371 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.02002335, 13.9812002, 73.4554443),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.02002335, 13.9812002, 73.4554443, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o372 = Create("CylinderMesh",{
["Parent"] = o371,
})
o373 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(0.399111748, 14.1566496, 74.2766724),
["Rotation"] = Vector3.new(172.997375, 0.16444549, 90.1249924),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.399111748, 14.1566496, 74.2766724, -0.00218145479, -0.999993503, 0.00287011126, -0.992539048, 0.00181528321, -0.121914238, 0.12190824, -0.00311464723, -0.992536545),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o374 = Create("CylinderMesh",{
["Parent"] = o373,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o375 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00388336, 16.0318604, 74.9747543),
["Rotation"] = Vector3.new(-148.757782, -89.7992325, 38.232193),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00388336, 16.0318604, 74.9747543, 0.00276832911, -0.00218097982, -0.999993861, -0.121698178, -0.992565572, 0.00182787585, -0.992563367, 0.121692374, -0.00301316893),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.31207204, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o376 = Create("CylinderMesh",{
["Parent"] = o375,
})
o377 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.64691973, 18.9332352, 74.3968658),
["Rotation"] = Vector3.new(-148.747437, -89.7992325, 128.25502),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64691973, 18.9332352, 74.3968658, -0.00218177121, -0.00276706414, -0.999993861, -0.992538989, 0.121914513, 0.00182815886, 0.121908702, 0.992536783, -0.00301240804),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o378 = Create("CylinderMesh",{
["Parent"] = o377,
})
o379 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.08917093, 13.468688, 74.3628082),
["Rotation"] = Vector3.new(-7.00263071, -0.164440528, -0.12477687),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.08917093, 13.468688, 74.3628082, 0.999993503, 0.00217775651, -0.00287002465, -0.00181162253, 0.992538929, 0.121914417, 0.00311411079, -0.121908411, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.874714971, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o380 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.25352478, 14.1568737, 74.2759781),
["Rotation"] = Vector3.new(172.997375, 0.16444549, 90.1249924),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.25352478, 14.1568737, 74.2759781, -0.00218145479, -0.999993503, 0.00287011126, -0.992539048, 0.00181528321, -0.121914238, 0.12190824, -0.00311464723, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.218678698, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o381 = Create("CylinderMesh",{
["Parent"] = o380,
})
o382 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Pastel brown"),
["Position"] = Vector3.new(3.64893866, 18.8445263, 73.6733246),
["Rotation"] = Vector3.new(-148.747437, -89.7992325, 128.25502),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64893866, 18.8445263, 73.6733246, -0.00218177121, -0.00276706414, -0.999993861, -0.992538989, 0.121914513, 0.00182815886, 0.121908702, 0.992536783, -0.00301240804),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.801821649, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0.8, 0.6),
})
o383 = Create("CylinderMesh",{
["Parent"] = o382,
})
o384 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.0073204, 15.1278725, 73.2867279),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.0073204, 15.1278725, 73.2867279, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o385 = Create("SpecialMesh",{
["Parent"] = o384,
["MeshType"] = Enum.MeshType.Sphere,
})
o386 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Linen"),
["Position"] = Vector3.new(3.64753222, 18.9066639, 74.179985),
["Rotation"] = Vector3.new(-148.747437, -89.7992325, 128.25502),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64753222, 18.9066639, 74.179985, -0.00218177121, -0.00276706414, -0.999993861, -0.992538989, 0.121914513, 0.00182815886, 0.121908702, 0.992536783, -0.00301240804),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.45785832, 0.218678698, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.686275, 0.580392, 0.513726),
})
o387 = Create("CylinderMesh",{
["Parent"] = o386,
})
o388 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(3.27678156, 15.1633148, 74.1611023),
["Rotation"] = Vector3.new(-7.00263071, -0.164440528, -0.12477687),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27678156, 15.1633148, 74.1611023, 0.999993503, 0.00217775651, -0.00287002465, -0.00181162253, 0.992538929, 0.121914417, 0.00311411079, -0.121908411, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.06150246, 1.02050054, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o389 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.09067822, 14.1553602, 74.2786865),
["Rotation"] = Vector3.new(-7.00263071, -0.164440528, -0.12477687),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.09067822, 14.1553602, 74.2786865, 0.999993503, 0.00217775651, -0.00287002465, -0.00181162253, 0.992538929, 0.121914417, 0.00311411079, -0.121908411, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 1.02050054, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o390 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00981808, 16.6044903, 73.3619156),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00981808, 16.6044903, 73.3619156, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o391 = Create("CylinderMesh",{
["Parent"] = o390,
})
o392 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.00600433, 15.185524, 73.7569122),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00600433, 15.185524, 73.7569122, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o393 = Create("CylinderMesh",{
["Parent"] = o392,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o394 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.0091753, 16.6310768, 73.5788574),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.0091753, 16.6310768, 73.5788574, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o395 = Create("CylinderMesh",{
["Parent"] = o394,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o396 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.0089922, 16.6399841, 73.6513672),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.0089922, 16.6399841, 73.6513672, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o397 = Create("CylinderMesh",{
["Parent"] = o396,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o398 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00893021, 15.810071, 73.1658325),
["Rotation"] = Vector3.new(-148.757782, -89.7992325, 38.232193),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00893021, 15.810071, 73.1658325, 0.00276832911, -0.00218097982, -0.999993861, -0.121698178, -0.992565572, 0.00182787585, -0.992563367, 0.121692374, -0.00301316893),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 1.31207204, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o399 = Create("CylinderMesh",{
["Parent"] = o398,
})
o400 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.00660419, 15.1589165, 73.5397949),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00660419, 15.1589165, 73.5397949, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o401 = Create("CylinderMesh",{
["Parent"] = o400,
})
o402 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.00580072, 15.1943855, 73.8290863),
["Rotation"] = Vector3.new(31.2443962, 89.7992325, -128.246826),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00580072, 15.1943855, 73.8290863, -0.00218158588, 0.00276764366, 0.999993861, -0.992539048, -0.121914044, -0.00182790577, 0.121908225, -0.992536902, 0.00301295985),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o403 = Create("CylinderMesh",{
["Parent"] = o402,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o404 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(4.01049137, 16.5734196, 73.108551),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.01049137, 16.5734196, 73.108551, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o405 = Create("SpecialMesh",{
["Parent"] = o404,
["MeshType"] = Enum.MeshType.Sphere,
})
o406 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.59706736, 12.708848, 74.4579926),
["Rotation"] = Vector3.new(172.997375, 0.16444549, 90.1249924),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.59706736, 12.708848, 74.4579926, -0.00218145479, -0.999993503, 0.00287011126, -0.992539048, 0.00181528321, -0.121914238, 0.12190824, -0.00311464723, -0.992536545),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o407 = Create("CylinderMesh",{
["Parent"] = o406,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o408 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.08852386, 13.179594, 74.3987274),
["Rotation"] = Vector3.new(-7.00263071, -0.164440528, -0.12477687),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.08852386, 13.179594, 74.3987274, 0.999993503, 0.00217775651, -0.00287002465, -0.00181162253, 0.992538929, 0.121914417, 0.00311411079, -0.121908411, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.0205009, 0.218678698, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o409 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.27517605, 14.4405518, 74.2501526),
["Rotation"] = Vector3.new(-7.00263071, -0.164440528, -0.12477687),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27517605, 14.4405518, 74.2501526, 0.999993503, 0.00217775651, -0.00287002465, -0.00181162253, 0.992538929, 0.121914417, 0.00311411079, -0.121908411, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.06150246, 0.437357396, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o410 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(4.0069561, 16.7287388, 74.3752594),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.0069561, 16.7287388, 74.3752594, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o411 = Create("CylinderMesh",{
["Parent"] = o410,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o412 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(2.2567358, 15.2050896, 74.4836578),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.2567358, 15.2050896, 74.4836578, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o413 = Create("CylinderMesh",{
["Parent"] = o412,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o414 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.01539302, 14.1852655, 75.1196289),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01539302, 14.1852655, 75.1196289, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.364464492, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o415 = Create("CylinderMesh",{
["Parent"] = o414,
})
o416 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.02035332, 13.9678802, 73.3466949),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.02035332, 13.9678802, 73.3466949, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o417 = Create("SpecialMesh",{
["Parent"] = o416,
["MeshType"] = Enum.MeshType.Sphere,
})
o418 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(1.01510143, 14.198554, 75.2279892),
["Rotation"] = Vector3.new(172.997391, 0.164439619, 0.124786422),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.01510143, 14.198554, 75.2279892, 0.999993503, -0.00217792322, 0.00287000882, -0.00181179133, -0.992538989, -0.121913984, 0.00311411452, 0.121907979, -0.992536604),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o419 = Create("SpecialMesh",{
["Parent"] = o418,
["MeshType"] = Enum.MeshType.Sphere,
})
o420 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(4.00950336, 17.3304558, 73.8972778),
["Rotation"] = Vector3.new(-7.00263071, -0.164440528, -0.12477687),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00950336, 17.3304558, 73.8972778, 0.999993503, 0.00217775651, -0.00287002465, -0.00181162253, 0.992538929, 0.121914417, 0.00311411079, -0.121908411, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.60364413, 3.35307264, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o421 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.25652361, 15.214036, 74.5565186),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.25652361, 15.214036, 74.5565186, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o422 = Create("CylinderMesh",{
["Parent"] = o421,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o423 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.09667587, 15.1600285, 74.1668701),
["Rotation"] = Vector3.new(-7.00263071, -0.164440528, -0.12477687),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09667587, 15.1600285, 74.1668701, 0.999993503, 0.00217775651, -0.00287002465, -0.00181162253, 0.992538929, 0.121914417, 0.00311411079, -0.121908411, 0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 1.02050054, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o424 = Create("Part",{
["Parent"] = o323,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Nougat"),
["Position"] = Vector3.new(4.00716496, 16.7198601, 74.3029404),
["Rotation"] = Vector3.new(-148.757202, -89.7992325, 128.245224),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.00716496, 16.7198601, 74.3029404, -0.00218158681, -0.00276780385, -0.999993861, -0.992539048, 0.121914044, 0.00182788714, 0.121908225, 0.992536902, -0.00301311887),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.200000003, 0.728928924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.8, 0.556863, 0.411765),
})
o425 = Create("CylinderMesh",{
["Parent"] = o424,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o426 = Create("Part",{
["Name"] = "Joint",
["Parent"] = o323,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(-0.437932253, 14.1579857, 74.2733841),
["Rotation"] = Vector3.new(0.000210445665, 88.8358459, -0.000210690225),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.437932253, 14.1579857, 74.2733841, 0.0203162245, 7.4707593e-008, 0.999793589, -5.02629227e-009, 1, -7.46208784e-008, -0.999793589, -3.50924045e-009, 0.0203162245),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o427 = Create("Part",{
["Name"] = "Base",
["Parent"] = o323,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.64900041, 18.8449993, 73.6729889),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.64900041, 18.8449993, 73.6729889, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o428 = Create("Script",{
["Parent"] = o427,
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
end,o428)
end))
o429 = Create("Model",{
["Name"] = "Spindle",
["Parent"] = o322,
})
o430 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-5.20159817, 14.1667547, 74.2590485),
["Rotation"] = Vector3.new(-52.0261612, -0.0279627442, -0.204519451),
["Anchored"] = true,
["CFrame"] = CFrame.new(-5.20159817, 14.1667547, 74.2590485, 0.999993503, 0.00356952986, -0.000488041929, -0.00181162031, 0.615299106, 0.788291752, 0.00311412197, -0.788285792, 0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o431 = Create("BlockMesh",{
["Parent"] = o430,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o432 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-2.33072305, 14.1615505, 74.2678757),
["Rotation"] = Vector3.new(-52.0261612, -0.0279627442, -0.204519451),
["Anchored"] = true,
["CFrame"] = CFrame.new(-2.33072305, 14.1615505, 74.2678757, 0.999993503, 0.00356952986, -0.000488041929, -0.00181162031, 0.615299106, 0.788291752, 0.00311412197, -0.788285792, 0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o433 = Create("BlockMesh",{
["Parent"] = o432,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o434 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-3.20424628, 14.163188, 74.2657166),
["Rotation"] = Vector3.new(-52.0261612, -0.0279627442, -0.204519451),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.20424628, 14.163188, 74.2657166, 0.999993503, 0.00356952986, -0.000488041929, -0.00181162031, 0.615299106, 0.788291752, 0.00311412197, -0.788285792, 0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o435 = Create("BlockMesh",{
["Parent"] = o434,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o436 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-1.19799972, 14.158, 74.272995),
["Rotation"] = Vector3.new(-52.0261612, -0.0279627442, -0.204519451),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.19799972, 14.158, 74.272995, 0.999993503, 0.00356952986, -0.000488041929, -0.00181162031, 0.615299106, 0.788291752, 0.00311412197, -0.788285792, 0.615301549),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o437 = Create("BlockMesh",{
["Parent"] = o436,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o438 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.24585128, 14.4417028, 74.218956),
["Rotation"] = Vector3.new(-142.026077, 0.204519406, 89.9722443),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.24585128, 14.4417028, 74.218956, 0.000484372489, -0.999993443, 0.00356952939, -0.788291812, 0.00181451219, 0.615298867, -0.615301371, -0.00311186444, -0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o439 = Create("CylinderMesh",{
["Parent"] = o438,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o440 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(-1.03799939, 14.158, 74.272995),
["Rotation"] = Vector3.new(-52.0261612, -0.0279627442, -0.204519451),
["Anchored"] = true,
["CFrame"] = CFrame.new(-1.03799939, 14.158, 74.272995, 0.999993503, 0.00356952986, -0.000488041929, -0.00181162031, 0.615299106, 0.788291752, 0.00311412197, -0.788285792, 0.615301549),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.437357396, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o441 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-0.438012362, 14.1581116, 74.2737045),
["Rotation"] = Vector3.new(172.997375, 0.16444549, 90.1249924),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.438012362, 14.1581116, 74.2737045, -0.00218145479, -0.999993503, 0.00287011126, -0.992539048, 0.00181528321, -0.121914238, 0.12190824, -0.00311464723, -0.992536545),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 1.16628623, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o442 = Create("CylinderMesh",{
["Parent"] = o441,
})
o443 = Create("Part",{
["Name"] = "Joint",
["Parent"] = o429,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(-0.437932253, 14.1579857, 74.2733841),
["Rotation"] = Vector3.new(0.000210445665, 88.8358459, -0.000210690225),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.437932253, 14.1579857, 74.2733841, 0.0203162245, 7.4707593e-008, 0.999793589, -5.02629227e-009, 1, -7.46208784e-008, -0.999793589, -3.50924045e-009, 0.0203162245),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o444 = Create("Script",{
["Parent"] = o443,
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
end,o444)
end))
o445 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.24727893, 14.1955833, 74.5342712),
["Rotation"] = Vector3.new(-142.026077, 0.204519406, 89.9722443),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.24727893, 14.1955833, 74.5342712, 0.000484372489, -0.999993443, 0.00356952939, -0.788291812, 0.00181451219, 0.615298867, -0.615301371, -0.00311186444, -0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o446 = Create("CylinderMesh",{
["Parent"] = o445,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o447 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.2470839, 13.8802662, 74.288147),
["Rotation"] = Vector3.new(-142.026077, 0.204519406, 89.9722443),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.2470839, 13.8802662, 74.288147, 0.000484372489, -0.999993443, 0.00356952939, -0.788291812, 0.00181451219, 0.615298867, -0.615301371, -0.00311186444, -0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o448 = Create("CylinderMesh",{
["Parent"] = o447,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o449 = Create("Part",{
["Parent"] = o429,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-3.24565625, 14.1263857, 73.9728317),
["Rotation"] = Vector3.new(-142.026077, 0.204519406, 89.9722443),
["Anchored"] = true,
["CFrame"] = CFrame.new(-3.24565625, 14.1263857, 73.9728317, 0.000484372489, -0.999993443, 0.00356952939, -0.788291812, 0.00181451219, 0.615298867, -0.615301371, -0.00311186444, -0.788285792),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 4.69703674, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o450 = Create("CylinderMesh",{
["Parent"] = o449,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o451 = Create("Model",{
["Name"] = "TurretBase",
["Parent"] = o1,
})
o452 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.76905155, 12.0428257, 68.0456543),
["Rotation"] = Vector3.new(-90, 9.60010457e-012, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.76905155, 12.0428257, 68.0456543, 5.68434189e-014, 0.999998212, 1.6755343e-013, 8.74226345e-008, -1.69916178e-013, 0.999998212, 1, 9.23705556e-014, -8.74227055e-008),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.84282374, 0.699771762, 1.96081865),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o453 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.97964692, 12.0298481, 68.0820923),
["Rotation"] = Vector3.new(180, -3.25688803e-012, -90),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.97964692, 12.0298481, 68.0820923, 1.71144335e-013, 0.999998212, -5.68434189e-014, 0.999998212, -1.69916178e-013, -1.0658141e-014, 6.92779167e-014, 9.23705556e-014, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9316622, 2.87926936, 2.91571569),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o454 = Create("Part",{
["Name"] = "RotBase",
["Parent"] = o451,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.83699989, 12.3889999, 68.0090027),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.83699989, 12.3889999, 68.0090027, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o455 = Create("Script",{
["Parent"] = o454,
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
end,o455)
end))
o456 = Create("Script",{
["Parent"] = o451,
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
	LCannon = TurretHead.LArm
	RCannon = TurretHead.RArm
	BL = TurretHead.LArm.Spindle.Joint
	BR = TurretHead.RArm.Spindle.Joint
	LLeg = TurretBase.LLeg
	RLeg = TurretBase.RLeg
	canStartFiring = true
	isAttacking = false
	isFiring = false
	MissileModel = Instance.new("Model",Mech)
	OldMissiles = Instance.new("Model",Mech)
	BulletModel = Instance.new("Model",Mech)
	LLegUp = false
	pcall(function()
		c.Head.face:Destroy()
	end)
	RLepUp = false
	FPS = 0
	GatRpm = 0
	GatRevs = 0
	fireLoop = false
	rapFire = false
	movingShield = false
	missileSpeed = 21
	mouse.TargetFilter = workspace
	missileDrop = .1
	bulletSpeed = 41
	Shield = nil
	c.Humanoid.MaxHealth = 7500
	c.Humanoid.Health = 7500
	bulletDrop = .4
	for i,v in pairs (c:children()) do
		if v.ClassName == "Part" then
			v.Transparency = 1
		elseif v.ClassName == "Hat" then
			v:Destroy()
		end
	end
	isScanning = false
	TorsoModel = Instance.new("Model",workspace.CurrentCamera)

	Main = Instance.new("VehicleSeat",TurretBase)
	Main.MaxSpeed = 50
	Main.Transparency = 1

	local w = Instance.new("Weld",Main)
	w.Part0 = Main
	w.Part1 = TurretBase.RotBase
	w.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-90),0)

-------------------------------------

	Legs = {
		LLeg;
		RLeg;
	}

	RLegParts = {
		Lower = RLeg.Lower;
		Upper = RLeg.Upper;
	}

	LLegParts = {
		Lower = LLeg.Lower;
		Upper = LLeg.Upper;
	}

	Faces = {
		"Top";
		"Bottom";
		"Left";
		"Right";
		"Front";
		"Back";
	}

	Joints = {

	}

	Lights = {

	}

	Missiles = {

	}

	Cannons = {
		BL;
		BR;
	}

-------------------------------------

	for i,v in pairs (TurretHead:children()) do
		if v.ClassName ~= "Model" and v.Material == Enum.Material.Neon then
			Lights[#Lights + 1] = v
		end
	end

	for i,v in pairs (TurretHead:children()) do
		if v.Name == "Missile" then
			Missiles[#Missiles + 1] = v
		end
	end

	e = Instance.new("Motor",TurretBase.RotBase)
	e.Part0 = TurretBase.RotBase
	e.Part1 = TurretHead.RotBase
	e.C0 = CFrame.new(0,0,0)
	Joints.Neck = e
	
	e = Instance.new("Motor",LCannon.Base.Base)
	e.Part0 = TurretHead.LJoint
	e.Part1 = LCannon.Base.Base
	e.C0 = CFrame.new(0,0,0)
	Joints.LeftArm = e

	e = Instance.new("Motor",RCannon.Base.Base)
	e.Part0 = TurretHead.RJoint
	e.Part1 = RCannon.Base.Base
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

	e = Instance.new("Motor",LCannon.Base.Joint)
	e.Part0 = LCannon.Base.Joint
	e.Part1 = LCannon.Spindle.Joint
	e.C0 = CFrame.new(0,0,0)
	Joints.SpindleL = e

	e = Instance.new("Motor",RCannon.Base.Joint)
	e.Part0 = RCannon.Base.Joint
	e.Part1 = RCannon.Spindle.Joint
	e.C0 = CFrame.new(0,0,0)
	Joints.SpindleR = e

	windUp = Instance.new("Sound",Main)
	windUp.Volume = .9
	windUp.SoundId = "rbxassetid://173692381"

	windLoop = Instance.new("Sound",Main)
	windLoop.Volume = 0
	windLoop.Looped = true
	windLoop.SoundId = "rbxassetid://260454465"

	windDown = Instance.new("Sound",Main)
	windDown.Volume = .9
	windDown.SoundId = "rbxassetid://173692409"

	wait(.2)

	print("\nMashend2468's and Golden_God's Mech Script\n\n<--Controls-->\n\nP - Teleports user to mech;\nV - Toggles shield;\nF - Toggles vulcan spin;\nQ - Highlights players;\nE - Lock-on missiles;\nR - Dummy missiles;")

	windLoop:Play()
	Joints.LHip.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(45))
	Joints.RHip.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(45))

	Mech.PrimaryPart = Main
	Mech:MoveTo(lp.Character.Head.CFrame.p + Vector3.new(0,25,0))

	Gyro = Instance.new("BodyGyro",TurretBase.RotBase)
	Gyro.MaxTorque = Vector3.new(1e5,1e5,1e5)

	Vel = Instance.new("BodyVelocity",TurretBase.RotBase)
	Vel.MaxForce = Vector3.new(1e9,0,1e9)
	Vel.P = 1e6

	damageToPart = function(part)
		if part.Parent:FindFirstChild'Humanoid' and part.Parent.ClassName ~= "Hat" and part.Parent ~= c and part.Parent.Humanoid.Sit == false then
			part.Parent.Humanoid:TakeDamage(10,11)
		end
	end

	mouse.KeyDown:connect(function(key)
		if key == "p" then
			rapFire = not rapFire
		end
	end)

	createBullet = function(part)
		local p = Instance.new("Part",BulletModel)
		p.CanCollide = false
		p.Anchored = true
		p.BrickColor = BrickColor.new("Bright yellow")
		p.FormFactor = "Custom"
		p.Name = "ActiveFlak"
		p.Material = "Neon"
		p.Size = Vector3.new(.3,.3,7)
		local rad = math.rad
		p.CFrame = part.CFrame * CFrame.Angles(rad(math.random(-10,10)/7),math.pi,rad(math.random(-10,10)/7))
		local time = Instance.new("NumberValue",p)
		time.Value = 0
		time.Name = "Time"
		local Photon = Instance.new("PointLight",p)
		Photon.Color = Color3.new(.98,.8,.16)
		Photon.Range = 7
		Photon.Brightness = .7
		local Value = Instance.new("NumberValue",p)
		Value.Name = "time"
		local lerpTo = Instance.new("CFrameValue",p)
		lerpTo.Value = p.CFrame
		lerpTo.Name = "VValue"
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
		if isFiring == true and canStartFiring == true and GatRpm > 1650 then
			local mouseUp = nil
			fireLoop = true
			mouseUp = mouse.Button1Up:connect(function()
				mouseUp:disconnect()
				fireLoop = false
			end)
			while true do
				if rapFire == true then
					wait()
				else
					wait(.075)
				end
				if fireLoop == false or isFiring == false then
					break
				end
				for i = 1,#Cannons do
					createBullet(Cannons[i])
					local x = Instance.new("Sound",Cannons[i])
					x.Volume = math.random(80,100)/100
					x.Pitch = math.random(85,115)/100
					x.SoundId = "rbxassetid://168143115"
					spawn(function()
						wait()
						x:Play()
						wait(.3)
						x:Destroy()
					end)
				end
			end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "f" and canStartFiring == true then
			canStartFiring = false
			if isFiring == false then
				isFiring = true
				windUp:Play()
				wait(1)
				windLoop.Volume = .9
			else
				isFiring = false
				windDown:Play()
				wait(1)
			end
			wait(.3)
			canStartFiring = true
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "q" and isScanning == false then
			isScanning = true
			for i,v in pairs (pls:children()) do
				local char = workspace:FindFirstChild(v.Name)
				if v ~= lp and char then
					local e = Instance.new("Sound",Main)
					e.Volume = .4
					e.SoundId = "rbxassetid://161164363"
					for x = 1,#Lights do
						Lights[x].BrickColor = BrickColor.new("Toothpaste")
					end
					spawn(function()
						wait()
						e:Play()
					end)
					spawn(function()
						wait(1)
						e:Destroy()
					end)
					wait(.07)
					local t2 = Instance.new("Part",TorsoModel)
					t2.Anchored = true
					t2.Archivable = true
					t2.CanCollide = false
					t2.BrickColor = BrickColor.new("Cyan")
					t2.Material = "Neon"
					t2.Transparency = .1
					t2.Size = Vector3.new(2,2,1)
					t2.CFrame = char.Torso.CFrame
					local e = Instance.new("PointLight",t2)
					e.Range = 10
					e.Brightness = .8
					e.Color = Color3.new(0,.8,1)
					e.Name = "Light"
					for i = 1,#Lights do
						Lights[i].BrickColor = BrickColor.new("Cyan")
					end
					wait(.04)
				end
			end
			wait(1)
			isScanning = false
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
				spawn(function()
					wait()
					e:Play()
				end)
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
					spawn(function()
						wait()
						e:Play()
					end)
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
				CapsOn = true
				wait(.5)
				for i = 1,#Missiles do
					wait(.15)
					local x = Instance.new("Part",MissileModel)
					x.CanCollide = false
					x.Anchored = true
					x.FormFactor = "Custom"
					x.Material = "Neon"
					x.BrickColor = BrickColor.new("Hurricane grey")
					x.Size = Vector3.new(.5,.5,2.5)
					x.CFrame = Missiles[i].CFrame * CFrame.Angles(0,math.pi,0)
					local z = Instance.new("PointLight",x)
					z.Color = Color3.new(1,1,0)
					z.Range = 20
					local e = Instance.new("Smoke",x)
					e.Color = Color3.new(.4,.4,.4)
					local s = Instance.new("Sound",x)
					s.Volume = math.random(90,100)/100
					s.Pitch = math.random(90,150)/100
					s.SoundId = "rbxassetid://160248505"
					spawn(function()
						wait()
						s:Play()
					end)
					local t = Instance.new("ObjectValue",x)
					t.Value = CharacterTorso
					local e = Instance.new("NumberValue",x)
					e.Value = 0
					e.Name = "time"
					local lerpTo = Instance.new("CFrameValue",x)
					lerpTo.Value = x.CFrame
					lerpTo.Name = "VValue"
					spawn(function()
						wait(10)
						s:Destroy()
					end)
				end
				wait(.5)
				CapsOn = false
				wait(4)
				isAttacking = false
				local e = Instance.new("Sound",Main)
				e.Volume = .4
				e.Pitch = 1.2
				e.SoundId = "rbxassetid://138081500"
				spawn(function()
					wait()
					e:Play()
				end)
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
			CapsOn = true
			wait(.5)
			for i = 1,#Missiles do
				wait(.14)
				local x = Instance.new("Part",MissileModel)
				x.CanCollide = false
				x.Anchored = true
				x.FormFactor = "Custom"
				x.Material = "Neon"
				x.BrickColor = BrickColor.new("Hurricane grey")
				x.Size = Vector3.new(.5,.5,2.5)
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
				spawn(function()
					wait()
					s:Play()
				end)
				local e = Instance.new("NumberValue",x)
				e.Value = 0
				e.Name = "time"
				local lerpTo = Instance.new("CFrameValue",x)
				lerpTo.Value = x.CFrame
				lerpTo.Name = "VValue"
				spawn(function()
					wait(10)
					s:Destroy()
				end)
			end
			wait(.5)
			CapsOn = false
			wait(3.2)
			isAttacking = false
			local e = Instance.new("Sound",Main)
			e.Volume = .4
			e.Pitch = 1.2
			e.SoundId = "rbxassetid://138081500"
			spawn(function()
				wait()
				e:Play()
			end)
			wait(1)
			e:Destroy()
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "v" and movingShield == false then
			movingShield = true
			if Shield == nil then
				local x = Instance.new("Sound",Main)
				x.SoundId = "rbxassetid://260433655"
				x.Pitch = math.random(90,100)/100
				x.Volume = .6
				spawn(function()
					wait()
					x:Play()
					wait(5)
					x:Destroy()
				end)
				local e = Instance.new("Part",TurretHead)
				e.Shape = "Cylinder"
				e.FormFactor = "Custom"
				e.Transparency = .75
				e.Reflectance = 0
				e.Size = Vector3.new(3,1,1)
				e.Material = "Neon"
				e.BrickColor = BrickColor.new("Cyan")
				for i = 1,6 do
					local x = Instance.new("Texture",e)
					x.StudsPerTileU = 30
					x.StudsPerTileV = 30
					x.Texture = "rbxassetid://245799428"
					x.Face = Faces[i]
				end
				for i = 1,20 do
					wait()
					sval = (50 - e.Size.z) * .4 + e.Size.z
					e.Size = Vector3.new(3,sval,sval)
					local CPos = mouse.Hit.p
					e.CFrame = CFrame.new(Main.CFrame.p + (CPos - Main.CFrame.p).unit * 65,Main.CFrame.p + (CPos - Main.CFrame.p).unit * 30) * CFrame.Angles(0,math.pi/2,0)
					e.Anchored = true
				end
				Shield = e
			else
				local x = Instance.new("Sound",Main)
				x.SoundId = "rbxassetid://260433624"
				x.Pitch = math.random(70,80)/100
				x.Volume = .6
				spawn(function()
					wait()
					x:Play()
					wait(5)
					x:Destroy()
				end)
				for i = 1,math.ceil(10/(FPS/60)) do
					rs.RenderStepped:wait()
					sval = (0 - Shield.Size.z) * .165/(FPS/60) + Shield.Size.z
					Shield.Size = Vector3.new(3,sval,sval)
				end
				Shield:Destroy()
				Shield = nil
			end
			movingShield = false
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
		spawn(function()
			wait()
			x:Play()
		end)
		spawn(function()
			wait(15)
			missile:Destroy()
		end)
	end

	spawn(function()
		while wait() do
			Steer = Steer + (Main.Steer * Main.Velocity.magnitude/-7)/2
			Gyro.CFrame = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(Steer),0)
			local leg2 = walkVal + math.pi
			if Main.Throttle ~= 0 then
				Vel.Velocity = Vel.Velocity:lerp(Main.CFrame.lookVector * (33 + math.sin(math.sin(walkVal + leg2 + math.rad(20))) * 33) * Main.Throttle,.05/2)
			end
			if math.abs(math.sin(walkVal + math.pi/3)) > .985 and Main.Throttle ~= 0 then
				local x = Instance.new("Sound",Main)
				x.SoundId = "rbxassetid://180199793"
				x.Volume = .5
				x.Pitch = 2.1
				spawn(function()
					wait()
					x:Play()
					wait(2)
					x:Destroy()
				end)
			end
			if #BulletModel:children() ~= 0 then
				for i,v in pairs (BulletModel:children()) do
					local vCFrame = v.VValue.Value
					local vValue = vCFrame.p
					local addVal = v.CFrame.lookVector.unit * bulletSpeed
					addVal = addVal + Vector3.new(0,bulletDrop,0)
					local ray = Ray.new(vValue,addVal.unit * -bulletSpeed)
					local hit, pos = workspace:FindPartOnRay(ray,c)
					v.time.Value = v.time.Value + 1/30
					if ((pos - vValue).magnitude < bulletSpeed and hit ~= nil) or v.time.Value > 1.7 then
						v:Destroy()
						spawn(function()
							if hit ~= nil then
								damageToPart(hit)
							end
						end)
					else
						v.VValue.Value = CFrame.new(vValue - addVal,vValue + addVal)
					end
				end
			end
			if #MissileModel:children() ~= 0 then
				for i,v in pairs (MissileModel:children()) do
					if v:FindFirstChild("Value") then
						v.time.Value = v.time.Value + 1/30
						local vCFrame = v.VValue.Value
						local vValue = vCFrame.p
						local addVal = (vCFrame.lookVector.unit * 13 + (vValue - v.Value.Value.CFrame.p).unit * 2)/15 * missileSpeed
						addVal = addVal + Vector3.new(0,missileDrop,0)
						local ray = Ray.new(vValue,addVal.unit * -missileSpeed)
						local hit, pos = workspace:FindPartOnRay(ray,c)
						if v.time.Value > 5 then
							v.Value:Destroy()
							v.time.Value = 0
						end
						if (pos - vValue).magnitude < missileSpeed and hit ~= nil then
							explodeMissile(v,pos)
						else
							v.VValue.Value = CFrame.new(vValue - addVal,vValue + addVal)
						end
					else
						local vCFrame = v.VValue.Value
						local vValue = vCFrame.p
						v.time.Value = v.time.Value + 1/30
						local addVal = vCFrame.lookVector.unit * missileSpeed
						addVal = addVal + Vector3.new(0,missileDrop,0)
						local ray = Ray.new(vValue,addVal.unit * -missileSpeed)
						local hit, pos = workspace:FindPartOnRay(ray,c)
						if ((pos -vValue).magnitude < missileSpeed and hit ~= nil) or v.time.Value > 4 then
							explodeMissile(v,pos)
						else
							v.VValue.Value = CFrame.new(vValue - addVal,vValue + addVal)
						end
					end
				end
			end
			if isFiring == true and GatRpm < 1675 then
				GatRpm = GatRpm + 25
			elseif isFiring == false then
				windLoop.Volume = (GatRpm/1650) - .18
				if GatRpm > 0 then
					GatRpm = (-GatRpm * .07) + GatRpm
				end
			end
		end
	end)
	
	rs.RenderStepped:connect(function()
		walkVal = tick() * 5.5
		FPS = 1/rs.RenderStepped:wait()
		workspace.CurrentCamera.CameraType = Enum.CameraType.Track
		devValue = FPS/60
		if #BulletModel:children() ~= 0 then
			for i,v in pairs (BulletModel:children()) do
				local vValue = v.VValue
				v.CFrame = v.CFrame:lerp(vValue.Value,.4/devValue)
			end
		end
		if #MissileModel:children() ~= 0 then
			for i,v in pairs (MissileModel:children()) do
				local vValue = v.VValue
				v.CFrame = v.CFrame:lerp(vValue.Value,.4/devValue)
			end
		end
		if #TorsoModel:children() ~= 0 then
			for i,v in pairs (TorsoModel:children()) do
				v.Transparency = v.Transparency + .06/devValue
				v.Light.Range = 1 - v.Transparency
				if v.Transparency > 1 then v:Destroy() end
			end
		end
		if Main.Throttle ~= 0 then
			lerp = .35/devValue
			local leg2 = walkVal + math.pi
			Vel.Velocity = Main.CFrame.lookVector * (30 + math.sin(math.sin(walkVal + leg2 + math.rad(12))) * 15) * Main.Throttle
			Joints.LHip.C0 = Joints.LHip.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(math.sin(walkVal) * 30 + 7)),lerp)
			Joints.RHip.C0 = Joints.RHip.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(math.sin(leg2) * 30 + 7)),lerp)
			Joints.LKnee.C0 = Joints.LKnee.C0:lerp(CFrame.new() * CFrame.Angles(0,0,math.rad(math.sin(-walkVal + .6) * 20)),lerp)
			Joints.RKnee.C0 = Joints.RKnee.C0:lerp(CFrame.new() * CFrame.Angles(0,0,math.rad(math.sin(-leg2 + .6) * 20)),lerp)
		else
			Vel.Velocity = Vel.Velocity:lerp(Vector3.new(),.5/devValue)
			lerp = .15/devValue
			Joints.LHip.C0 = Joints.LHip.C0:lerp(CFrame.new(0,0,0),lerp)
			Joints.RHip.C0 = Joints.RHip.C0:lerp(CFrame.new(0,0,0),lerp)
			Joints.LKnee.C0 = Joints.LKnee.C0:lerp(CFrame.new() * CFrame.Angles(0,0,0),.3/devValue)
			Joints.RKnee.C0 =Joints.LKnee.C0:lerp( CFrame.new() * CFrame.Angles(0,0,0),.3/devValue)
		end
		if Shield ~= nil then
			CPos = mouse.Hit.p
			Shield.CFrame = CFrame.new(Main.CFrame.p + (CPos - Main.CFrame.p).unit * 65,Main.CFrame.p + (CPos - Main.CFrame.p).unit * 30) * CFrame.Angles(0,math.pi/2,0)
			Shield.Anchored = true
		end
		GatRevs = GatRevs + GatRpm/devValue
		Joints.SpindleL.C0 = CFrame.new() * CFrame.Angles(0,0,math.rad(-GatRevs))
		Joints.SpindleR.C0 = CFrame.new() * CFrame.Angles(0,0,math.rad(GatRevs))
		Joints.Neck.C0 = CFrame.new(Vector3.new(),TurretBase.RotBase.CFrame:toObjectSpace(CFrame.new(mouse.Hit.p.x,TurretBase.RotBase.Position.y,mouse.Hit.p.z)).p) * CFrame.Angles(0,math.rad(-90),0)
		Joints.RightArm.C0 = CFrame.new(Vector3.new()) * CFrame.Angles(0,0,-(mouse.Hit.p.y - Joints.RightArm.Parent.CFrame.p.y)/(mouse.Hit.p - Joints.RightArm.Parent.Position).magnitude)
		Joints.LeftArm.C0 = CFrame.new(Vector3.new()) * CFrame.Angles(0,0,-(mouse.Hit.p.y - Joints.RightArm.Parent.CFrame.p.y)/(mouse.Hit.p - Joints.LeftArm.Parent.Position).magnitude)
		if fireLoop == true then
			workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,math.sin(tick() * 100)/5,0),workspace.CurrentCamera.Focus.p)
		end
	end)
	
------------------------------------------------------------------------ > Script End
end,o456)
end))
o457 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.32486701, 12.0246, 68.009201),
["Rotation"] = Vector3.new(180, -2.35345897e-006, -89.9999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.32486701, 12.0246, 68.009201, 3.57627414e-007, 0.999998152, -4.10756087e-008, 0.999998152, -3.57627414e-007, -1.4949924e-008, -1.49498778e-008, -4.10755199e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.49430478, 0.801821649, 1.02050054),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o458 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.9806869, 11.9984226, 66.0775375),
["Rotation"] = Vector3.new(-6.1066652e-013, 3.25688803e-012, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.9806869, 11.9984226, 66.0775375, -0.999998212, -1.71144335e-013, 5.68434189e-014, 1.69916178e-013, -0.999998212, 1.0658141e-014, -9.23705556e-014, -6.92779167e-014, 1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.60364413, 1.45785797, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o459 = Create("SpecialMesh",{
["Parent"] = o458,
["MeshType"] = Enum.MeshType.Sphere,
})
o460 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.91028714, 12.0245991, 69.5764008),
["Rotation"] = Vector3.new(180, -2.35345897e-006, -89.9999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.91028714, 12.0245991, 69.5764008, 3.57627414e-007, 0.999998152, -4.10756087e-008, 0.999998152, -3.57627414e-007, -1.4949924e-008, -1.49498778e-008, -4.10755199e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.07744837, 3.0979476, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o461 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.964957, 11.8441677, 65.4994049),
["Rotation"] = Vector3.new(31.5520039, 89.8880997, 38.4479446),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.964957, 11.8441677, 65.4994049, 3.98702838e-007, -3.16551535e-007, 0.999998093, 0.939690828, 0.342019498, -2.6639114e-007, -0.342020094, 0.939692497, 4.338265e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.728928983, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o462 = Create("CylinderMesh",{
["Parent"] = o461,
})
o463 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.01962471, 12.0245991, 66.3691101),
["Rotation"] = Vector3.new(180, -2.35345897e-006, -89.9999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.01962471, 12.0245991, 66.3691101, 3.57627414e-007, 0.999998152, -4.10756087e-008, 0.999998152, -3.57627414e-007, -1.4949924e-008, -1.49498778e-008, -4.10755199e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.49430478, 1.8587687, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o464 = Create("BlockMesh",{
["Parent"] = o463,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o465 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.85561419, 11.7858562, 70.5918884),
["Rotation"] = Vector3.new(152.93013, -89.8880997, -137.069901),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.85561419, 11.7858562, 70.5918884, -4.28602789e-007, 3.98702014e-007, -0.999998093, 0.939690828, 0.342019498, -2.66390799e-007, 0.342020094, -0.939692497, -5.21249262e-007),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.16628671, 0.728928983, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o466 = Create("CylinderMesh",{
["Parent"] = o465,
})
o467 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.80094814, 11.9662838, 69.7950745),
["Rotation"] = Vector3.new(8.56566146e-007, -2.65548829e-006, 90.0000229),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.80094814, 11.9662838, 69.7950745, -3.57627016e-007, -0.999998152, -4.63470116e-008, 0.999998152, -3.57627016e-007, -1.49498991e-008, 1.49499844e-008, -4.63472531e-008, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.34851873, 1.71298337, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o468 = Create("BlockMesh",{
["Parent"] = o467,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o469 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.80094814, 11.9662838, 69.7221832),
["Rotation"] = Vector3.new(8.56566146e-007, -2.65548829e-006, 90.0000229),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.80094814, 11.9662838, 69.7221832, -3.57627016e-007, -0.999998152, -4.63470116e-008, 0.999998152, -3.57627016e-007, -1.49498991e-008, 1.49499844e-008, -4.63472531e-008, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.49430478, 1.8587687, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o470 = Create("BlockMesh",{
["Parent"] = o469,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o471 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.01962471, 12.0245991, 66.2962189),
["Rotation"] = Vector3.new(180, -2.35345897e-006, -89.9999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.01962471, 12.0245991, 66.2962189, 3.57627414e-007, 0.999998152, -4.10756087e-008, 0.999998152, -3.57627414e-007, -1.4949924e-008, -1.49498778e-008, -4.10755199e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.34851873, 1.71298337, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o472 = Create("BlockMesh",{
["Parent"] = o471,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o473 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.91028714, 12.0245991, 66.5148926),
["Rotation"] = Vector3.new(180, -2.35345897e-006, -89.9999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.91028714, 12.0245991, 66.5148926, 3.57627414e-007, 0.999998152, -4.10756087e-008, 0.999998152, -3.57627414e-007, -1.4949924e-008, -1.49498778e-008, -4.10755199e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.07744837, 3.0979476, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o474 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.70528126, 11.8059235, 68.009201),
["Rotation"] = Vector3.new(180, -2.35345897e-006, -89.9999847),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.70528126, 11.8059235, 68.009201, 3.57627414e-007, 0.999998152, -4.10756087e-008, 0.999998152, -3.57627414e-007, -1.4949924e-008, -1.49498778e-008, -4.10755199e-008, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.51480579, 0.437357396, 2.3325727),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o475 = Create("Part",{
["Parent"] = o451,
["Material"] = Enum.Material.Metal,
["Position"] = Vector3.new(3.8398881, 11.9401073, 70.0137482),
["Rotation"] = Vector3.new(180, 5.00894339e-006, 9.80586619e-012),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.8398881, 11.9401073, 70.0137482, 0.999998212, -1.71144335e-013, 8.74225563e-008, -1.68609199e-013, -0.999998212, -1.0658141e-014, 8.74228618e-008, -6.92779167e-014, -1),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.60364413, 1.45785797, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o476 = Create("SpecialMesh",{
["Parent"] = o475,
["MeshType"] = Enum.MeshType.Sphere,
})
o477 = Create("Part",{
["Name"] = "LHip",
["Parent"] = o451,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.85599995, 11.6490002, 70.9680252),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.85599995, 11.6490002, 70.9680252, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o478 = Create("Part",{
["Name"] = "RHip",
["Parent"] = o451,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.96499991, 11.7069998, 65.1240311),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.96499991, 11.7069998, 65.1240311, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o479 = Create("Model",{
["Name"] = "RLeg",
["Parent"] = o451,
})
o480 = Create("Model",{
["Name"] = "Upper",
["Parent"] = o479,
})
o481 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.67892146, 9.81065178, 65.2080307),
["Rotation"] = Vector3.new(-87.9824066, 44.7378311, -91.6207809),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.67892146, 9.81065178, 65.2080307, -0.0200912151, 0.710050702, 0.703863859, -0.0152964573, -0.704141855, 0.709894538, 0.999681115, 0.00349601917, 0.0250083227),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.546696782),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o482 = Create("SpecialMesh",{
["Parent"] = o481,
["Scale"] = Vector3.new(0.911161423, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o483 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.94172645, 8.18326569, 64.3844833),
["Rotation"] = Vector3.new(-87.9824066, 44.7378311, -91.6207809),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.94172645, 8.18326569, 64.3844833, -0.0200912151, 0.710050702, 0.703863859, -0.0152964573, -0.704141855, 0.709894538, 0.999681115, 0.00349601917, 0.0250083227),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025027, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o484 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.28852415, 9.54160023, 64.4323196),
["Rotation"] = Vector3.new(92.0175858, -44.7378387, -88.3792267),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.28852415, 9.54160023, 64.4323196, 0.0200911388, 0.710050642, -0.703863978, 0.0152963549, -0.704142034, -0.709894419, -0.999681115, 0.00349603361, -0.025008196),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025033, 1.42141151),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o485 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.59636259, 9.85208225, 64.4432678),
["Rotation"] = Vector3.new(-87.9824066, 44.7378311, -91.6207809),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.59636259, 9.85208225, 64.4432678, -0.0200912151, 0.710050702, 0.703863859, -0.0152964573, -0.704141855, 0.709894538, 0.999681115, 0.00349601917, 0.0250083227),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025033, 1.1298399),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o486 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.524143219, 8.28057098, 64.3574829),
["Rotation"] = Vector3.new(-87.9824066, 44.7378311, -91.6207809),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.524143219, 8.28057098, 64.3574829, -0.0200912151, 0.710050702, 0.703863859, -0.0152964573, -0.704141855, 0.709894538, 0.999681115, 0.00349601917, 0.0250083227),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 1.64009011, 1.27562571),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o487 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.71187305, 9.83574677, 63.56847),
["Rotation"] = Vector3.new(-87.9824066, 44.7378311, -91.6207809),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71187305, 9.83574677, 63.56847, -0.0200912151, 0.710050702, 0.703863859, -0.0152964573, -0.704141855, 0.709894538, 0.999681115, 0.00349601917, 0.0250083227),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.546696782),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o488 = Create("SpecialMesh",{
["Parent"] = o487,
["Scale"] = Vector3.new(0.911161423, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o489 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.52815056, 10.3275871, 64.7973785),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.52815056, 10.3275871, 64.7973785, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o490 = Create("CylinderMesh",{
["Parent"] = o489,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o491 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-0.170730591, 8.22664833, 64.3135223),
["Rotation"] = Vector3.new(-90.284462, -45.2388687, 178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.170730591, 8.22664833, 64.3135223, -0.703866065, -0.0200915858, -0.710048556, -0.709892333, -0.0152968764, 0.70414412, -0.0250088926, 0.999681175, -0.00349590974),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.437357485, 1.96810794, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o492 = Create("CylinderMesh",{
["Parent"] = o491,
})
o493 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.88463211, 11.0266819, 65.250885),
["Rotation"] = Vector3.new(89.7155304, 45.2388535, -88.3649826),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.88463211, 11.0266819, 65.250885, 0.0200913716, 0.703866184, 0.710048378, 0.0152965086, 0.709892213, -0.70414418, -0.999681115, 0.0250084791, 0.00349601195),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.87926936, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o494 = Create("BlockMesh",{
["Parent"] = o493,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o495 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(2.57640958, 10.3504086, 64.4303894),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.57640958, 10.3504086, 64.4303894, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.6400907, 4.55580568, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o496 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.57035136, 10.7849464, 64.3803635),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.57035136, 10.7849464, 64.3803635, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.52391338, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o497 = Create("BlockMesh",{
["Parent"] = o496,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o498 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.91758609, 11.0517673, 63.6113091),
["Rotation"] = Vector3.new(89.7155304, 45.2388535, -88.3649826),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.91758609, 11.0517673, 63.6113091, 0.0200913716, 0.703866184, 0.710048378, 0.0152965086, 0.709892213, -0.70414418, -0.999681115, 0.0250084791, 0.00349601195),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.87926936, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o499 = Create("BlockMesh",{
["Parent"] = o498,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o500 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.54133415, 10.3376188, 64.1415482),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.54133415, 10.3376188, 64.1415482, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o501 = Create("CylinderMesh",{
["Parent"] = o500,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o502 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.73128748, 10.0307426, 64.1430969),
["Rotation"] = Vector3.new(-179.451263, 1.33893871, 149.751892),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.73128748, 10.0307426, 64.1430969, -0.863616168, -0.503608048, 0.0233667623, -0.503529131, 0.863925219, 0.00957438722, -0.0250088703, -0.00349725038, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.728928983, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o503 = Create("CylinderMesh",{
["Parent"] = o502,
["Offset"] = Vector3.new(0, -0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o504 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.09338236, 11.3410902, 64.459671),
["Rotation"] = Vector3.new(-179.12323, 1.15130913, -60.2504807),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09338236, 11.3410902, 64.459671, 0.496109128, 0.868027747, 0.0200927835, 0.867948771, -0.496418178, 0.0152987782, 0.0232541822, 0.00984964147, -0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o505 = Create("BlockMesh",{
["Parent"] = o504,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o506 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.26703882, 11.6500807, 64.4678879),
["Rotation"] = Vector3.new(-179.12323, 1.15130925, -75.2504807),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.26703882, 11.6500807, 64.4678879, 0.254542381, 0.966852903, 0.0200927854, 0.966856599, -0.254861325, 0.015298767, 0.0199125297, 0.0155326556, -0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o507 = Create("BlockMesh",{
["Parent"] = o506,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o508 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.81814337, 11.0901051, 64.4503098),
["Rotation"] = Vector3.new(-179.12323, 1.15130973, -25.2504749),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.81814337, 11.0901051, 64.4503098, 0.904269099, 0.426490158, 0.0200927928, 0.426248252, -0.904476941, 0.0152987689, 0.0246982407, -0.00526968669, -0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o509 = Create("BlockMesh",{
["Parent"] = o508,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o510 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.01382661, 10.3740368, 63.5626793),
["Rotation"] = Vector3.new(89.7155304, 45.2388535, -88.3649826),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.01382661, 10.3740368, 63.5626793, 0.0200913716, 0.703866184, 0.710048378, 0.0152965086, 0.709892213, -0.70414418, -0.999681115, 0.0250084791, 0.00349601195),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.52391338, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o511 = Create("BlockMesh",{
["Parent"] = o510,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o512 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.7159586, 10.0244598, 64.7989197),
["Rotation"] = Vector3.new(-179.451263, 1.33893871, 149.751892),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.7159586, 10.0244598, 64.7989197, -0.863616168, -0.503608048, 0.0233667623, -0.503529131, 0.863925219, 0.00957438722, -0.0250088703, -0.00349725038, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.728928983, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o513 = Create("CylinderMesh",{
["Parent"] = o512,
["Offset"] = Vector3.new(0, -0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o514 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.99897051, 12.5869188, 64.4768524),
["Rotation"] = Vector3.new(-179.123337, 1.15123534, -140.250534),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.99897051, 12.5869188, 64.4768524, -0.768692613, 0.63930279, 0.0200914945, 0.639593363, 0.768561304, 0.0152970171, -0.00566211715, 0.0246090908, -0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o515 = Create("BlockMesh",{
["Parent"] = o514,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o516 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.70261478, 12.7661819, 64.4736099),
["Rotation"] = Vector3.new(-179.123337, 1.15123355, -160.250534),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70261478, 12.7661819, 64.4736099, -0.940989256, 0.337839782, 0.0200914629, 0.338157773, 0.940965176, 0.0152969277, -0.013737455, 0.0211883262, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o517 = Create("BlockMesh",{
["Parent"] = o516,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o518 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.31162405, 11.9728003, 64.4737244),
["Rotation"] = Vector3.new(-179.12323, 1.15130997, -100.250488),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.31162405, 11.9728003, 64.4737244, -0.17791602, 0.983840525, 0.0200927965, 0.983978748, 0.177628562, 0.0152987735, 0.0114824995, 0.0224927776, -0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o519 = Create("BlockMesh",{
["Parent"] = o518,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o520 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(2.46761847, 8.71365547, 64.4031601),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.46761847, 8.71365547, 64.4031601, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o521 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.98087382, 10.3489542, 65.20224),
["Rotation"] = Vector3.new(89.7155304, 45.2388535, -88.3649826),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.98087382, 10.3489542, 65.20224, 0.0200913716, 0.703866184, 0.710048378, 0.0152965086, 0.709892213, -0.70414418, -0.999681115, 0.0250084791, 0.00349601195),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.52391338, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o522 = Create("BlockMesh",{
["Parent"] = o521,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o523 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.12791443, 12.8406639, 64.4632187),
["Rotation"] = Vector3.new(-179.123291, 1.15122104, 179.749252),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.12791443, 12.8406639, 64.4632187, -0.999788642, -0.00437553041, 0.020091245, -0.00406849384, 0.999874711, 0.0152976299, -0.0201556627, 0.0152126532, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.692482889, 0.255125135, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o524 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-0.1502285, 8.24225903, 63.2933311),
["Rotation"] = Vector3.new(-90.284462, -45.2388687, 178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.1502285, 8.24225903, 63.2933311, -0.703866065, -0.0200915858, -0.710048556, -0.709892333, -0.0152968764, 0.70414412, -0.0250088926, 0.999681175, -0.00349590974),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o525 = Create("CylinderMesh",{
["Parent"] = o524,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o526 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-0.191235065, 8.21104145, 65.3336868),
["Rotation"] = Vector3.new(-90.284462, -45.2388687, 178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.191235065, 8.21104145, 65.3336868, -0.703866065, -0.0200915858, -0.710048556, -0.709892333, -0.0152968764, 0.70414412, -0.0250088926, 0.999681175, -0.00349590974),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o527 = Create("CylinderMesh",{
["Parent"] = o526,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o528 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.20212507, 12.2956028, 64.4764709),
["Rotation"] = Vector3.new(-179.123291, 1.15124714, -125.250603),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.20212507, 12.2956028, 64.4764709, -0.577037334, 0.816470683, 0.0200917013, 0.816717267, 0.576835275, 0.0152976448, 0.000900477287, 0.0252365507, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o529 = Create("BlockMesh",{
["Parent"] = o528,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o530 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.38163376, 11.8994551, 64.4867325),
["Rotation"] = Vector3.new(99.6991119, -82.5354919, -171.103348),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.38163376, 11.8994551, 64.4867325, -0.128349662, 0.0200913381, -0.991525531, 0.991649032, 0.0152968969, -0.128055692, 0.0125944521, -0.999681115, -0.0218869075),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.82232273, 1.39225423, 1.7494297),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o531 = Create("CylinderMesh",{
["Parent"] = o530,
})
o532 = Create("Part",{
["Parent"] = o480,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.31466198, 10.5765123, 64.4687958),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.31466198, 10.5765123, 64.4687958, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o533 = Create("Part",{
["Name"] = "Hip",
["Parent"] = o480,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.96499991, 11.7069998, 65.1240311),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.96499991, 11.7069998, 65.1240311, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o534 = Create("Script",{
["Parent"] = o533,
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
end,o534)
end))
o535 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o480,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(4.11499977, 9.35999966, 63.7830009),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11499977, 9.35999966, 63.7830009, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o536 = Create("Model",{
["Name"] = "Lower",
["Parent"] = o479,
})
o537 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.38710809, 2.39841223, 64.9527206),
["Rotation"] = Vector3.new(88.5536957, 10.2985916, -175.986343),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.38710809, 2.39841223, 64.9527206, -0.981476307, 0.0688665658, 0.178778037, -0.180049405, -0.0126687577, -0.98357594, -0.0654705986, -0.997545421, 0.0248334706),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o538 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.96607208, 5.30590248, 65.3126755),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.96607208, 5.30590248, 65.3126755, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o539 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.6463213, 4.97367096, 63.3397026),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.6463213, 4.97367096, 63.3397026, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o540 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.61112213, 6.11068058, 65.1192169),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.61112213, 6.11068058, 65.1192169, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o541 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.25197554, 5.74846029, 65.1064606),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.25197554, 5.74846029, 65.1064606, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o542 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.40596604, 2.99942875, 65.2234268),
["Rotation"] = Vector3.new(-91.0393066, -30.2695503, 177.142548),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.40596604, 2.99942875, 65.2234268, -0.862589717, -0.043054875, -0.504068732, -0.504263401, -0.00700867921, 0.863521516, -0.0407116674, 0.999048173, -0.015665384),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o543 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.81919837, 4.53440762, 64.2933655),
["Rotation"] = Vector3.new(-87.9823761, 44.7380257, -91.6208038),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.81919837, 4.53440762, 64.2933655, -0.020091407, 0.710048378, 0.703866303, -0.0152965561, -0.704144299, 0.709892213, 0.999681115, 0.00349600194, 0.0250085425),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.2464689, 1.20273292, 0.400910914),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o544 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.36461878, 5.69811726, 63.3652382),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.36461878, 5.69811726, 63.3652382, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o545 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.49038863, 3.01316452, 63.2644768),
["Rotation"] = Vector3.new(-91.0394058, -30.2695351, -2.85751557),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.49038863, 3.01316452, 63.2644768, 0.862589836, 0.0430556946, -0.504068434, 0.504263163, 0.00700736418, 0.863521636, 0.0407117195, -0.999048114, -0.0156669207),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o546 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.0054698, 5.33589363, 63.3524742),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.0054698, 5.33589363, 63.3524742, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o547 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.68436861, 6.03034639, 65.3381958),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.68436861, 6.03034639, 65.3381958, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o548 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.64099836, 6.13342571, 63.6326714),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.64099836, 6.13342571, 63.6326714, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o549 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.5336833, 5.0240159, 65.080925),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.5336833, 5.0240159, 65.080925, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o550 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.5635581, 5.04675865, 63.5943947),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.5635581, 5.04675865, 63.5943947, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o551 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.32522154, 5.66812229, 65.3254318),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.32522154, 5.66812229, 65.3254318, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o552 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.28185225, 5.7712059, 63.6199074),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.28185225, 5.7712059, 63.6199074, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o553 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.92270517, 5.40898275, 63.607151),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.92270517, 5.40898275, 63.607151, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o554 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.89283228, 5.38623762, 65.0936813),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.89283228, 5.38623762, 65.0936813, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o555 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.42428803, 3.105793, 63.517643),
["Rotation"] = Vector3.new(-179.598114, 2.46768212, 149.699432),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.42428803, 3.105793, 63.517643, -0.862589836, -0.504068434, 0.0430558622, -0.504263163, 0.863521636, 0.00700758956, -0.0407119766, -0.0156668089, -0.999048114),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o556 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.60692453, 4.94367981, 65.2999191),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.60692453, 4.94367981, 65.2999191, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o557 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.36026549, 3.09537888, 65.0032349),
["Rotation"] = Vector3.new(88.9606934, 30.269558, -177.142532),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.36026549, 3.09537888, 65.0032349, -0.862589717, 0.0430549532, 0.504068792, -0.504263401, 0.00700873137, -0.863521576, -0.0407117605, -0.999048173, 0.0156653784),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o558 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.78211951, 3.29945469, 65.2380447),
["Rotation"] = Vector3.new(-90.6008072, -40.2505608, 177.899246),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.78211951, 3.29945469, 65.2380447, -0.762713253, -0.0279775821, -0.646131456, -0.646046102, -0.0132051809, 0.763184249, -0.0298843309, 0.999521315, -0.00800304022),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o559 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.44206238, 6.78478432, 63.4035225),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.44206238, 6.78478432, 63.4035225, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o560 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.72376299, 6.06033802, 63.3780174),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.72376299, 6.06033802, 63.3780174, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o561 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.35929871, 6.85786819, 63.6581917),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.35929871, 6.85786819, 63.6581917, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o562 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.40266371, 6.75479269, 65.3637314),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.40266371, 6.75479269, 65.3637314, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o563 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.75919795, 3.40542316, 63.5323067),
["Rotation"] = Vector3.new(-179.243134, 1.60327351, 139.730469),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.75919795, 3.40542316, 63.5323067, -0.762713432, -0.646131217, 0.0279787499, -0.646045864, 0.763184488, 0.0132042663, -0.0298846308, -0.00800448284, -0.999521375),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o564 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.32942152, 6.83512831, 65.1447372),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.32942152, 6.83512831, 65.1447372, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o565 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.71759105, 3.38578653, 65.0186081),
["Rotation"] = Vector3.new(89.3992004, 40.2505608, -177.899231),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71759105, 3.38578653, 65.0186081, -0.762713253, 0.0279776454, 0.646131456, -0.646046102, 0.0132052442, -0.763184249, -0.0298844203, -0.999521315, 0.00800303277),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o566 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.52662897, 2.26879787, 63.2175407),
["Rotation"] = Vector3.new(-91.4463882, -10.2985668, -4.01366663),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.52662897, 2.26879787, 63.2175407, 0.981476426, 0.0688667744, -0.178777605, 0.180049092, -0.0126702925, 0.983576059, 0.0654705465, -0.997545481, -0.0248349924),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o567 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.48951244, 2.37957096, 63.4693489),
["Rotation"] = Vector3.new(179.272308, 3.94891667, 169.676651),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.48951244, 2.37957096, 63.4693489, -0.981476426, -0.178777665, 0.0688670427, -0.180049151, 0.983576, -0.0126701491, -0.0654708296, -0.0248349011, -0.997545481),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o568 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.07758999, 7.58231354, 63.683712),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.07758999, 7.58231354, 63.683712, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o569 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.83698463, 3.32534313, 63.2781639),
["Rotation"] = Vector3.new(-90.6009216, -40.2505417, -2.1008389),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.83698463, 3.32534313, 63.2781639, 0.762713373, 0.0279786121, -0.646131158, 0.646045864, 0.0132040158, 0.763184428, 0.0298843626, -0.999521375, -0.00800458528),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o570 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(7.11132336, 8.32010365, 63.6519356),
["Rotation"] = Vector3.new(92.0174789, -44.738018, -88.379303),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.11132336, 8.32010365, 63.6519356, 0.0200901702, 0.710048497, -0.703866184, 0.0152953081, -0.70414418, -0.709892333, -0.999681234, 0.00349600613, -0.0250067841),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o571 = Create("SpecialMesh",{
["Parent"] = o570,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o572 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.10858345, 7.82642365, 63.6242256),
["Rotation"] = Vector3.new(-87.9825134, 44.738018, -91.6207047),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.10858345, 7.82642365, 63.6242256, -0.0200902689, 0.710048497, 0.703866184, -0.0152954217, -0.70414418, 0.709892333, 0.999681175, 0.00349599705, 0.025006935),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o573 = Create("SpecialMesh",{
["Parent"] = o572,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o574 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.3915956, 2.29364395, 65.1735687),
["Rotation"] = Vector3.new(-91.4463043, -10.2985849, 175.986359),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.3915956, 2.29364395, 65.1735687, -0.981476426, -0.0688664615, -0.178777918, -0.1800493, 0.0126687801, 0.983576059, -0.0654705018, 0.99754554, -0.0248334687),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o575 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.12572074, 2.84762812, 63.5066719),
["Rotation"] = Vector3.new(-179.401779, 2.04319692, 144.713593),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.12572074, 2.84762812, 63.5066719, -0.815755665, -0.577296793, 0.0356529541, -0.577328742, 0.816445231, 0.0104341237, -0.0351322666, -0.0120717781, -0.999309838),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o576 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.07270455, 2.83211517, 64.9926453),
["Rotation"] = Vector3.new(89.1529999, 35.2606583, -177.497528),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.07270455, 2.83211517, 64.9926453, -0.815755486, 0.0356519371, 0.577297091, -0.57732892, 0.0104351779, -0.816444993, -0.0351320393, -0.999309838, 0.0120703429),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o577 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.19794059, 2.76102114, 63.2530251),
["Rotation"] = Vector3.new(-90.8471146, -35.2606392, -2.50253224),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.19794059, 2.76102114, 63.2530251, 0.815755725, 0.0356527865, -0.577296853, 0.577328861, 0.0104338862, 0.816445112, 0.0351319946, -0.999309838, -0.0120718777),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o578 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.12803173, 2.74056101, 65.2124863),
["Rotation"] = Vector3.new(-90.8470001, -35.2606583, 177.497528),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.12803173, 2.74056101, 65.2124863, -0.815755546, -0.0356518775, -0.577297091, -0.57732898, -0.0104351249, 0.816444993, -0.0351319611, 0.999309838, -0.0120703503),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o579 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.26103854, 3.57652664, 63.2905006),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.26103854, 3.57652664, 63.2905006, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o580 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.225842, 4.71354055, 65.0699921),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.225842, 4.71354055, 65.0699921, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o581 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.4311986, 7.76440334, 63.6096687),
["Rotation"] = Vector3.new(-87.9825134, 44.738018, -91.6207047),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.4311986, 7.76440334, 63.6096687, -0.0200902689, 0.710048497, 0.703866184, -0.0152954217, -0.70414418, 0.709892333, 0.999681175, 0.00349599705, 0.025006935),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.51025033, 0.459225237),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o582 = Create("SpecialMesh",{
["Parent"] = o581,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o583 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.58079052, 3.90876055, 65.2634583),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.58079052, 3.90876055, 65.2634583, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o584 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.33848143, 4.66319847, 63.3287849),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.33848143, 4.66319847, 63.3287849, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o585 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.29908514, 4.63320351, 65.2889938),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.29908514, 4.63320351, 65.2889938, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o586 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.14839935, 3.62687206, 65.0317154),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.14839935, 3.62687206, 65.0317154, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o587 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.62018633, 3.9387517, 63.3032494),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.62018633, 3.9387517, 63.3032494, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o588 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.17827821, 3.64961815, 63.5451698),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.17827821, 3.64961815, 63.5451698, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o589 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.50754881, 3.98909616, 65.0444641),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.50754881, 3.98909616, 65.0444641, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o590 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.97933364, 4.30097389, 63.3160133),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.97933364, 4.30097389, 63.3160133, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o591 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.04351616, 6.39256668, 65.3509674),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.04351616, 6.39256668, 65.3509674, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o592 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.00015116, 6.49564838, 63.6454353),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.00015116, 6.49564838, 63.6454353, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o593 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.53742528, 4.01183891, 63.5579338),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.53742528, 4.01183891, 63.5579338, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o594 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.25571871, 4.73628426, 63.5834541),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.25571871, 4.73628426, 63.5834541, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o595 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.86669397, 4.35131598, 65.0572128),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.86669397, 4.35131598, 65.0572128, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o596 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.00206279755, 2.14015913, 63.1043816),
["Rotation"] = Vector3.new(-91.4934464, -0.311293542, -4.52061367),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.00206279755, 2.14015913, 63.1043816, 0.996874392, 0.0788166001, -0.00543307047, 0.0074685216, -0.0255533997, 0.999645591, 0.0786498263, -0.996561646, -0.0260621719),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o597 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.76181459, 7.11701393, 65.3764954),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.76181459, 7.11701393, 65.3764954, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o598 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.39897966, 7.73987293, 65.2127991),
["Rotation"] = Vector3.new(-87.9825134, 44.738018, -91.6207047),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.39897966, 7.73987293, 65.2127991, -0.0200902689, 0.710048497, 0.703866184, -0.0152954217, -0.70414418, 0.709892333, 0.999681175, 0.00349599705, 0.025006935),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.51025033, 0.459225237),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o599 = Create("SpecialMesh",{
["Parent"] = o598,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o600 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.8012085, 7.1470089, 63.4163017),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.8012085, 7.1470089, 63.4163017, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o601 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.1209569, 7.47923279, 65.3892441),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.1209569, 7.47923279, 65.3892441, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o602 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.75507903, 2.5850749, 64.9725266),
["Rotation"] = Vector3.new(88.8111801, 25.2776165, -176.821976),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.75507903, 2.5850749, 64.9725266, -0.902858734, 0.0501302443, 0.427004635, -0.427406341, 0.0029519985, -0.904054821, -0.0465809964, -0.998738408, 0.0187607482),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o603 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.82962513, 2.58946323, 63.4873695),
["Rotation"] = Vector3.new(-179.830734, 2.87350249, 154.688339),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.82962513, 2.58946323, 63.4873695, -0.902858853, -0.427004337, 0.0501310565, -0.427406162, 0.90405488, 0.00295078196, -0.0465812199, -0.0187621806, -0.998738348),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o604 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.7908051, 2.48557949, 65.1929703),
["Rotation"] = Vector3.new(-91.1888199, -25.2776127, 176.821991),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.7908051, 2.48557949, 65.1929703, -0.902858853, -0.0501301587, -0.427004576, -0.427406311, -0.00295194611, 0.90405488, -0.046580907, 0.998738348, -0.0187607575),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o605 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.04771233, 7.55957127, 65.1702499),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.04771233, 7.55957127, 65.1702499, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o606 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.0227627754, 2.25597858, 63.3557701),
["Rotation"] = Vector3.new(178.531174, 4.52056217, 179.687729),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.0227627754, 2.25597858, 63.3557701, -0.996874332, -0.00543313194, 0.0788168609, -0.0074685812, 0.999645591, -0.0255532935, -0.0786500871, -0.0260620695, -0.996561646),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o607 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-0.791347027, 2.28111076, 64.1991272),
["Rotation"] = Vector3.new(-11.3919163, 88.8223114, -167.734177),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.791347027, 2.28111076, 64.1991272, -0.0200869292, 0.00436711218, 0.999788761, -0.0152928671, -0.99987483, 0.00406023627, 0.999681294, -0.0152080776, 0.0201512016),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o608 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.0829134, 6.42255878, 63.3907661),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.0829134, 6.42255878, 63.3907661, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o609 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.22164154, 3.54653835, 65.2507019),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.22164154, 3.54653835, 65.2507019, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o610 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.87594032, 2.48513412, 63.2339439),
["Rotation"] = Vector3.new(-91.1889191, -25.2775974, -3.17806053),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.87594032, 2.48513412, 63.2339439, 0.902858913, 0.050130859, -0.427004337, 0.427406132, 0.00295056216, 0.904054999, 0.0465809517, -0.998738348, -0.0187622961),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o611 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.139964581, 2.29397869, 64.837677),
["Rotation"] = Vector3.new(88.5066452, 0.311317503, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.139964581, 2.29397869, 64.837677, -0.996874332, 0.0788166225, 0.0054334891, -0.00746881962, -0.0255518612, -0.99964571, -0.0786498562, -0.996561706, 0.0260606613),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o612 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.97027159, 6.47290325, 65.131958),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.97027159, 6.47290325, 65.131958, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o613 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.71844482, 7.22009468, 63.6709633),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.71844482, 7.22009468, 63.6709633, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o614 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.0763669, 7.80189323, 65.2273483),
["Rotation"] = Vector3.new(-87.9825134, 44.738018, -91.6207047),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.0763669, 7.80189323, 65.2273483, -0.0200902689, 0.710048497, 0.703866184, -0.0152954217, -0.70414418, 0.709892333, 0.999681175, 0.00349599705, 0.025006935),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o615 = Create("SpecialMesh",{
["Parent"] = o614,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o616 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.942581177, 2.14723396, 63.1788979),
["Rotation"] = Vector3.new(-91.4934464, -0.311293542, -4.52061367),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.942581177, 2.14723396, 63.1788979, 0.996874392, 0.0788166001, -0.00543307047, 0.0074685216, -0.0255533997, 0.999645591, 0.0786498263, -0.996561646, -0.0260621719),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o617 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.8965714, 4.37406349, 63.5706978),
["Rotation"] = Vector3.new(-179.123337, 1.15124094, 134.749496),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.8965714, 4.37406349, 63.5706978, -0.703866363, -0.710048258, 0.0200915933, -0.709892035, 0.704144418, 0.0152969845, -0.0250089746, -0.00349582825, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o618 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.60540915, 8.90274048, 64.4490051),
["Rotation"] = Vector3.new(-87.982399, 44.7378387, 88.3792114),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.60540915, 8.90274048, 64.4490051, 0.0200912897, -0.710050642, 0.703863978, 0.0152964508, 0.704142034, 0.709894419, -0.999681115, -0.00349607272, 0.0250083711),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025033, 1.05694711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o619 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.93993616, 4.27098036, 65.2762146),
["Rotation"] = Vector3.new(-90.2843399, -45.2388573, 178.365067),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.93993616, 4.27098036, 65.2762146, -0.703866303, -0.0200903676, -0.710048437, -0.709892213, -0.0152977807, 0.704144239, -0.0250086803, 0.999681115, -0.00349440146),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o620 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.156606674, 2.19026279, 65.0584488),
["Rotation"] = Vector3.new(-91.4933548, -0.311315954, 175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.156606674, 2.19026279, 65.0584488, -0.996874332, -0.078816548, -0.00543346163, -0.00746878982, 0.0255518593, 0.99964571, -0.0786497742, 0.996561706, -0.0260606576),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o621 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.68856859, 7.19734859, 65.1575012),
["Rotation"] = Vector3.new(89.7156677, 45.2388611, -178.365051),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.68856859, 7.19734859, 65.1575012, -0.703866184, 0.0200904217, 0.710048497, -0.709892213, 0.0152978562, -0.70414418, -0.0250087697, -0.999681115, 0.00349438959),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o622 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.470261097, 2.14369678, 63.1416359),
["Rotation"] = Vector3.new(-91.4934464, -0.311293542, -4.52061367),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.470261097, 2.14369678, 63.1416359, 0.996874392, 0.0788166001, -0.00543307047, 0.0074685216, -0.0255533997, 0.999645591, 0.0786498263, -0.996561646, -0.0260621719),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o623 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.921880722, 2.26305199, 63.4303093),
["Rotation"] = Vector3.new(178.531174, 4.52056217, 179.687729),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.921880722, 2.26305199, 63.4303093, -0.996874332, -0.00543313194, 0.0788168609, -0.0074685812, 0.999645591, -0.0255532935, -0.0786500871, -0.0260620695, -0.996561646),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o624 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(7.07909966, 8.29557705, 65.2550583),
["Rotation"] = Vector3.new(92.0174789, -44.738018, -88.379303),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.07909966, 8.29557705, 65.2550583, 0.0200901702, 0.710048497, -0.703866184, 0.0152953081, -0.70414418, -0.709892333, -0.999681234, 0.00349600613, -0.0250067841),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o625 = Create("SpecialMesh",{
["Parent"] = o624,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o626 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.788034916, 2.19733953, 65.132988),
["Rotation"] = Vector3.new(-91.4933548, -0.311315954, 175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.788034916, 2.19733953, 65.132988, -0.996874332, -0.078816548, -0.00543346163, -0.00746878982, 0.0255518593, 0.99964571, -0.0786497742, 0.996561706, -0.0260606576),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o627 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.804679871, 2.30105448, 64.9122162),
["Rotation"] = Vector3.new(88.5066452, 0.311317503, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.804679871, 2.30105448, 64.9122162, -0.996874332, 0.0788166225, 0.0054334891, -0.00746881962, -0.0255518612, -0.99964571, -0.0786498562, -0.996561706, 0.0260606613),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o628 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.315714359, 2.19380474, 65.095726),
["Rotation"] = Vector3.new(-91.4933548, -0.311315954, 175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.315714359, 2.19380474, 65.095726, -0.996874332, -0.078816548, -0.00543346163, -0.00746878982, 0.0255518593, 0.99964571, -0.0786497742, 0.996561706, -0.0260606576),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o629 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.332357883, 2.29751778, 64.8749466),
["Rotation"] = Vector3.new(88.5066452, 0.311317503, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.332357883, 2.29751778, 64.8749466, -0.996874332, 0.0788166225, 0.0054334891, -0.00746881962, -0.0255518612, -0.99964571, -0.0786498562, -0.996561706, 0.0260606613),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o630 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.449557781, 2.25951958, 63.3930397),
["Rotation"] = Vector3.new(178.531174, 4.52056217, 179.687729),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.449557781, 2.25951958, 63.3930397, -0.996874332, -0.00543313194, 0.0788168609, -0.0074685812, 0.999645591, -0.0255532935, -0.0786500871, -0.0260620695, -0.996561646),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o631 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.16035271, 7.50922966, 63.4290581),
["Rotation"] = Vector3.new(-90.284462, -45.2388382, -1.63503408),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.16035271, 7.50922966, 63.4290581, 0.703866482, 0.0200915001, -0.710048199, 0.709892035, 0.015296706, 0.704144478, 0.0250087138, -0.999681175, -0.00349595561),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o632 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(0.144172192, 3.22197437, 64.2323303),
["Rotation"] = Vector3.new(-11.3993626, 88.8219757, 12.273345),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.144172192, 3.22197437, 64.2323303, 0.0200883597, -0.00437018182, 0.999788642, 0.0152940461, 0.99987483, 0.00406326028, -0.999681234, 0.0152091896, 0.0201526824),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.408200204, 0.663325369),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o633 = Create("BlockMesh",{
["Parent"] = o632,
["Scale"] = Vector3.new(0.437357485, 1, 1),
})
o634 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.18795037, 2.92978334, 64.2488327),
["Rotation"] = Vector3.new(-87.1503067, 59.7296562, 87.7157516),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.18795037, 2.92978334, 64.2488327, 0.0200912282, -0.50368017, 0.86365658, 0.0152961835, 0.863884747, 0.503457367, -0.999681115, 0.00309557421, 0.0250608865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.933029354, 0.481093138, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o635 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.54002857, 2.84893656, 64.2468109),
["Rotation"] = Vector3.new(88.9606018, 30.2695484, -177.142471),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.54002857, 2.84893656, 64.2468109, -0.862589717, 0.0430557989, 0.504068673, -0.504263401, 0.00700753182, -0.863521576, -0.0407118872, -0.999048114, 0.0156668387),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o636 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.84258032, 9.18965912, 64.0207596),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.84258032, 9.18965912, 64.0207596, 0.0200915281, -0.710048497, 0.703866184, 0.0152966436, 0.70414418, 0.709892333, -0.999681175, -0.00349602965, 0.0250086896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o637 = Create("BlockMesh",{
["Parent"] = o636,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o638 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.83345699, 5.91702175, 64.3587418),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.83345699, 5.91702175, 64.3587418, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o639 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.57795286, 7.17769241, 64.4385147),
["Rotation"] = Vector3.new(91.9359589, -42.6136208, -178.435623),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.57795286, 7.17769241, 64.4385147, -0.735661864, 0.0200912952, -0.677050948, 0.677334547, 0.0152966995, -0.735516071, -0.00442082481, -0.999681115, -0.0248617269),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.24646866, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o640 = Create("CylinderMesh",{
["Parent"] = o639,
})
o641 = Create("Part",{
["Name"] = "RayPoint",
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.147101402, 3.60053015, 64.2673035),
["Rotation"] = Vector3.new(-101.399628, 88.8221436, 12.2736216),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.147101402, 3.60053015, 64.2673035, 0.0200884342, -0.00437029963, 0.999788702, -0.999681234, 0.0152094765, 0.0201527588, -0.0152943358, -0.99987483, -0.00406337203),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.204100192, 1.42870092, 1.97539711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o642 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(2.11523986, 3.64756155, 64.27845),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.11523986, 3.64756155, 64.27845, 0.0200914443, -0.710048497, 0.703866184, 0.0152965328, 0.70414418, 0.709892333, -0.999681115, -0.00349604944, 0.0250085536),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.933029354, 0.481093138, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o643 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.11515808, 5.19258165, 64.3332138),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.11515808, 5.19258165, 64.3332138, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o644 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.145384312, 2.94501638, 64.2281036),
["Rotation"] = Vector3.new(-11.3993626, 88.8219757, 12.273345),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.145384312, 2.94501638, 64.2281036, 0.0200883597, -0.00437018182, 0.999788642, 0.0152940461, 0.99987483, 0.00406326028, -0.999681234, 0.0152091896, 0.0201526824),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.641457558, 0.200000003, 0.954897046),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o645 = Create("BlockMesh",{
["Parent"] = o644,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o646 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.47430897, 5.55480289, 64.3459702),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.47430897, 5.55480289, 64.3459702, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o647 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.75601673, 4.83035851, 64.3204575),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.75601673, 4.83035851, 64.3204575, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o648 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.72328329, 6.27277517, 64.3746872),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.72328329, 6.27277517, 64.3746872, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.473803937, 6.15945101, 0.947607636),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o649 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.37983513, 7.77181625, 64.735199),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.37983513, 7.77181625, 64.735199, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o650 = Create("CylinderMesh",{
["Parent"] = o649,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o651 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.55175161, 6.64147091, 64.3842621),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.55175161, 6.64147091, 64.3842621, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o652 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.146940231, 3.26064634, 64.0871353),
["Rotation"] = Vector3.new(-11.3993626, 88.8219757, 12.273345),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.146940231, 3.26064634, 64.0871353, 0.0200883597, -0.00437018182, 0.999788642, 0.0152940461, 0.99987483, 0.00406326028, -0.999681234, 0.0152091896, 0.0201526824),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.204100192, 0.481093138, 0.809111178),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o653 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.147984505, 3.39074755, 63.4439583),
["Rotation"] = Vector3.new(-101.399605, 88.8221436, -77.7264404),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.147984505, 3.39074755, 63.4439583, 0.00437027635, 0.0200884342, 0.999788702, -0.0152087789, -0.999681234, 0.0201527551, 0.99987483, -0.0152936364, -0.00406336272),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.211389452, 0.648746729, 1.97539711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o654 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.27004623, 7.36591339, 64.4097824),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.27004623, 7.36591339, 64.4097824, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o655 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.68961525, 6.21264267, 64.4059067),
["Rotation"] = Vector3.new(91.9359589, -42.6136208, -178.435623),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.68961525, 6.21264267, 64.4059067, -0.735661864, 0.0200912952, -0.677050948, 0.677334547, 0.0152966995, -0.735516071, -0.00442082481, -0.999681115, -0.0248617269),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o656 = Create("CylinderMesh",{
["Parent"] = o655,
})
o657 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.73118258, 9.07947636, 64.4543304),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.73118258, 9.07947636, 64.4543304, 0.0200915281, -0.710048497, 0.703866184, 0.0152966436, 0.70414418, 0.709892333, -0.999681175, -0.00349602965, 0.0250086896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o658 = Create("BlockMesh",{
["Parent"] = o657,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o659 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.68961525, 6.21264267, 64.4059067),
["Rotation"] = Vector3.new(91.9359589, -42.6136208, -178.435623),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.68961525, 6.21264267, 64.4059067, -0.735661864, 0.0200912952, -0.677050948, 0.677334547, 0.0152966995, -0.735516071, -0.00442082481, -0.999681115, -0.0248617269),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.24646866, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o660 = Create("CylinderMesh",{
["Parent"] = o659,
})
o661 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.76374149, 5.2821517, 64.3730469),
["Rotation"] = Vector3.new(91.9359589, -42.6136208, -178.435623),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.76374149, 5.2821517, 64.3730469, -0.735661864, 0.0200912952, -0.677050948, 0.677334547, 0.0152966995, -0.735516071, -0.00442082481, -0.999681115, -0.0248617269),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.24646866, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o662 = Create("CylinderMesh",{
["Parent"] = o661,
})
o663 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.11497164, 9.3599596, 63.7826271),
["Rotation"] = Vector3.new(99.6991119, -82.5354919, -171.103348),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11497164, 9.3599596, 63.7826271, -0.128349662, 0.0200913381, -0.991525531, 0.991649032, 0.0152968969, -0.128055692, 0.0125944521, -0.999681115, -0.0218869075),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.801822066, 0.200000003, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o664 = Create("CylinderMesh",{
["Parent"] = o663,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o665 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.10171604, 9.34986591, 64.4420776),
["Rotation"] = Vector3.new(99.6991119, -82.5354919, -171.103348),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.10171604, 9.34986591, 64.4420776, -0.128349662, 0.0200913381, -0.991525531, 0.991649032, 0.0152968969, -0.128055692, 0.0125944521, -0.999681115, -0.0218869075),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 1.89521527),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o666 = Create("CylinderMesh",{
["Parent"] = o665,
})
o667 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.80127573, 5.24759388, 64.3732758),
["Rotation"] = Vector3.new(91.9359589, -42.6136208, -178.435623),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.80127573, 5.24759388, 64.3732758, -0.735661864, 0.0200912952, -0.677050948, 0.677334547, 0.0152966995, -0.735516071, -0.00442082481, -0.999681115, -0.0248617269),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o668 = Create("CylinderMesh",{
["Parent"] = o667,
})
o669 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.57423496, 8.91559029, 63.3221169),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.57423496, 8.91559029, 63.3221169, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o670 = Create("BlockMesh",{
["Parent"] = o669,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o671 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.87544298, 8.29512119, 64.0768204),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.87544298, 8.29512119, 64.0768204, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o672 = Create("CylinderMesh",{
["Parent"] = o671,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o673 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(5.13734245, 5.86215878, 64.3767166),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.13734245, 5.86215878, 64.3767166, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.692482889, 6.15945101, 1.23917937),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o674 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.92729592, 3.17332172, 64.2595596),
["Rotation"] = Vector3.new(89.3990936, 40.2505646, -177.899155),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.92729592, 3.17332172, 64.2595596, -0.762713134, 0.0279786866, 0.646131516, -0.646046102, 0.013204203, -0.763184249, -0.0298845358, -0.999521375, 0.00800450053),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o675 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(2.49307132, 3.27287292, 64.2803116),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.49307132, 3.27287292, 64.2803116, 0.0200914443, -0.710048497, 0.703866184, 0.0152965328, 0.70414418, 0.709892333, -0.999681115, -0.00349604944, 0.0250085536),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o676 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.86226177, 8.28508949, 64.732666),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.86226177, 8.28508949, 64.732666, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o677 = Create("CylinderMesh",{
["Parent"] = o676,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o678 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.39301586, 7.78185368, 64.0793839),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.39301586, 7.78185368, 64.0793839, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o679 = Create("CylinderMesh",{
["Parent"] = o678,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o680 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.73996973, 9.08616543, 64.0171127),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.73996973, 9.08616543, 64.0171127, 0.0200915281, -0.710048497, 0.703866184, 0.0152966436, 0.70414418, 0.709892333, -0.999681175, -0.00349602965, 0.0250086896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o681 = Create("BlockMesh",{
["Parent"] = o680,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o682 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.27632189, 7.87447166, 64.7346878),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27632189, 7.87447166, 64.7346878, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o683 = Create("CylinderMesh",{
["Parent"] = o682,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o684 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.28950071, 7.88450813, 64.0788651),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.28950071, 7.88450813, 64.0788651, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o685 = Create("CylinderMesh",{
["Parent"] = o684,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o686 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.49169087, 2.10198402, 64.2000885),
["Rotation"] = Vector3.new(88.5536118, 10.2985821, -175.986328),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.49169087, 2.10198402, 64.2000885, -0.981476367, 0.0688669533, 0.178777874, -0.18004936, -0.0126701742, -0.983576, -0.0654707327, -0.997545481, 0.0248349253),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o687 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.53016996, 8.87988663, 65.5758514),
["Rotation"] = Vector3.new(0.876661539, -1.15124309, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.53016996, 8.87988663, 65.5758514, 0.710048497, 0.703866184, -0.0200916305, -0.70414418, 0.709892333, -0.0152969453, 0.00349589088, 0.0250089765, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o688 = Create("BlockMesh",{
["Parent"] = o687,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o689 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.80347538, 8.0096283, 63.640995),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.80347538, 8.0096283, 63.640995, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.656036019, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o690 = Create("BlockMesh",{
["Parent"] = o689,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o691 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.72239351, 9.07278919, 64.8915634),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.72239351, 9.07278919, 64.8915634, 0.0200915281, -0.710048497, 0.703866184, 0.0152966436, 0.70414418, 0.709892333, -0.999681175, -0.00349602965, 0.0250086896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o692 = Create("BlockMesh",{
["Parent"] = o691,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o693 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.26818585, 2.60200977, 64.2349625),
["Rotation"] = Vector3.new(89.1528931, 35.2606544, -177.497467),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.26818585, 2.60200977, 64.2349625, -0.815755486, 0.0356528945, 0.577297032, -0.57732892, 0.0104340715, -0.816445053, -0.0351321809, -0.999309838, 0.0120717967),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o694 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.30322027, 8.64824009, 65.4225845),
["Rotation"] = Vector3.new(0.876668632, -1.15123641, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.30322027, 8.64824009, 65.4225845, 0.710048497, 0.703866184, -0.0200915132, -0.70414418, 0.709892333, -0.0152970692, 0.00349571952, 0.0250089802, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.51025027, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o695 = Create("BlockMesh",{
["Parent"] = o694,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o696 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.37770891, 8.72576046, 65.4975128),
["Rotation"] = Vector3.new(0.876661539, -1.15124309, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.37770891, 8.72576046, 65.4975128, 0.710048497, 0.703866184, -0.0200916305, -0.70414418, 0.709892333, -0.0152969453, 0.00349589088, 0.0250089765, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o697 = Create("BlockMesh",{
["Parent"] = o696,
["Scale"] = Vector3.new(1, 0.728928864, 0.364464492),
})
o698 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.663095, 6.97263622, 65.166153),
["Rotation"] = Vector3.new(89.715538, 45.2388535, -88.3649826),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.663095, 6.97263622, 65.166153, 0.020091366, 0.703866303, 0.710048378, 0.0152965607, 0.709892213, -0.704144299, -0.999681175, 0.0250085164, 0.00349596865),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.91024637, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o699 = Create("BlockMesh",{
["Parent"] = o698,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o700 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.31330585, 8.65351868, 63.5316353),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.31330585, 8.65351868, 63.5316353, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o701 = Create("BlockMesh",{
["Parent"] = o700,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o702 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.27903318, 8.6234808, 65.3488007),
["Rotation"] = Vector3.new(0.876668632, -1.15123641, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.27903318, 8.6234808, 65.3488007, 0.710048497, 0.703866184, -0.0200915132, -0.70414418, 0.709892333, -0.0152970692, 0.00349571952, 0.0250089802, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o703 = Create("BlockMesh",{
["Parent"] = o702,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o704 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.06929064, 8.07978058, 64.7336884),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.06929064, 8.07978058, 64.7336884, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o705 = Create("CylinderMesh",{
["Parent"] = o704,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o706 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.69531298, 6.99716854, 63.5630379),
["Rotation"] = Vector3.new(89.715538, 45.2388535, -88.3649826),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.69531298, 6.99716854, 63.5630379, 0.020091366, 0.703866303, 0.710048378, 0.0152965607, 0.709892213, -0.704144299, -0.999681175, 0.0250085164, 0.00349596865),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.91024637, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o707 = Create("BlockMesh",{
["Parent"] = o706,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o708 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.0824728, 8.08981609, 64.077858),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.0824728, 8.08981609, 64.077858, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o709 = Create("CylinderMesh",{
["Parent"] = o708,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o710 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.12807369, 6.86303568, 64.3717422),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.12807369, 6.86303568, 64.3717422, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.20273328, 6.15945101, 1.23917937),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o711 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.6216526, 8.34388161, 63.6424522),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.6216526, 8.34388161, 63.6424522, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.874714792, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o712 = Create("BlockMesh",{
["Parent"] = o711,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o713 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.91776681, 2.32372379, 64.2172089),
["Rotation"] = Vector3.new(88.8110886, 25.2776089, -176.82193),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.91776681, 2.32372379, 64.2172089, -0.902858794, 0.0501309857, 0.427004516, -0.427406311, 0.00295072608, -0.904054821, -0.0465811305, -0.998738348, 0.0187622104),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o714 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.37073278, 3.43321609, 64.2712402),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.37073278, 3.43321609, 64.2712402, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o715 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.43335724, 7.22870731, 64.3633804),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.43335724, 7.22870731, 64.3633804, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.91024637, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o716 = Create("BlockMesh",{
["Parent"] = o715,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o717 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.54311085, 7.63300133, 64.0801086),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.54311085, 7.63300133, 64.0801086, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o718 = Create("CylinderMesh",{
["Parent"] = o717,
["Scale"] = Vector3.new(1, 0.291571617, 1),
})
o719 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.5273428, 7.62553883, 64.735939),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.5273428, 7.62553883, 64.735939, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o720 = Create("CylinderMesh",{
["Parent"] = o719,
["Scale"] = Vector3.new(1, 0.255125135, 1),
})
o721 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.72987986, 3.79543734, 64.2840042),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.72987986, 3.79543734, 64.2840042, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o722 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.07366228, 8.42033195, 65.236763),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.07366228, 8.42033195, 65.236763, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 1.45785797, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o723 = Create("BlockMesh",{
["Parent"] = o722,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o724 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.77126265, 7.98509979, 65.2441177),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.77126265, 7.98509979, 65.2441177, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.656036019, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o725 = Create("BlockMesh",{
["Parent"] = o724,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o726 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(0.146691799, 2.64618969, 64.2235565),
["Rotation"] = Vector3.new(-11.3993626, 88.8219757, 12.273345),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.146691799, 2.64618969, 64.2235565, 0.0200883597, -0.00437018182, 0.999788642, 0.0152940461, 0.99987483, 0.00406326028, -0.999681234, 0.0152091896, 0.0201526824),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.933029354, 0.481093138, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o727 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.393976212, 1.98658371, 64.1234283),
["Rotation"] = Vector3.new(88.5065613, 0.311310709, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.393976212, 1.98658371, 64.1234283, -0.996874332, 0.0788167715, 0.00543337036, -0.00746881962, -0.0255533177, -0.999645591, -0.0786499903, -0.996561646, 0.0260621123),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o728 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.41884995, 8.75923824, 63.3895378),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.41884995, 8.75923824, 63.3895378, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o729 = Create("BlockMesh",{
["Parent"] = o728,
["Scale"] = Vector3.new(1, 0.728928864, 0.364464492),
})
o730 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.08902979, 4.15766144, 64.2967529),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.08902979, 4.15766144, 64.2967529, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o731 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.97895837, 8.19246769, 64.0773315),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.97895837, 8.19246769, 64.0773315, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o732 = Create("CylinderMesh",{
["Parent"] = o731,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o733 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.57795286, 7.17769241, 64.4385147),
["Rotation"] = Vector3.new(91.9359589, -42.6136208, -178.435623),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.57795286, 7.17769241, 64.4385147, -0.735661864, 0.0200912952, -0.677050948, 0.677334547, 0.0152966995, -0.735516071, -0.00442082481, -0.999681115, -0.0248617269),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o734 = Create("CylinderMesh",{
["Parent"] = o733,
})
o735 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.17280483, 7.97712612, 64.7341766),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.17280483, 7.97712612, 64.7341766, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o736 = Create("CylinderMesh",{
["Parent"] = o735,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o737 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(4.11343145, 9.35878658, 63.859127),
["Rotation"] = Vector3.new(99.6991119, -82.5354919, -171.103348),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11343145, 9.35878658, 63.859127, -0.128349662, 0.0200913381, -0.991525531, 0.991649032, 0.0152968969, -0.128055692, 0.0125944521, -0.999681115, -0.0218869075),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.09339368, 0.200000003, 1.89521527),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o738 = Create("CylinderMesh",{
["Parent"] = o737,
["Scale"] = Vector3.new(1, 0.400911003, 1),
})
o739 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.10587788, 8.44486046, 63.6336403),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.10587788, 8.44486046, 63.6336403, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 1.45785797, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o740 = Create("BlockMesh",{
["Parent"] = o739,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o741 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.155152321, 3.36580276, 65.0838318),
["Rotation"] = Vector3.new(-101.399605, 88.8221436, -77.7264404),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.155152321, 3.36580276, 65.0838318, 0.00437027635, 0.0200884342, 0.999788702, -0.0152087789, -0.999681234, 0.0201527551, 0.99987483, -0.0152936364, -0.00406336272),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.211389452, 0.648746729, 1.97539711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o742 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.44817305, 4.5198822, 64.3095169),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.44817305, 4.5198822, 64.3095169, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o743 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.82500935, 9.17628002, 64.8952026),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.82500935, 9.17628002, 64.8952026, 0.0200915281, -0.710048497, 0.703866184, 0.0152966436, 0.70414418, 0.709892333, -0.999681175, -0.00349602965, 0.0250086896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o744 = Create("BlockMesh",{
["Parent"] = o743,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o745 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.57630849, 2.56324911, 64.2510223),
["Rotation"] = Vector3.new(-87.1503067, 59.7296562, 87.7157516),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.57630849, 2.56324911, 64.2510223, 0.0200912282, -0.50368017, 0.86365658, 0.0152961835, 0.863884747, 0.503457367, -0.999681115, 0.00309557421, 0.0250608865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o746 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.34042549, 8.68050385, 63.4596672),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.34042549, 8.68050385, 63.4596672, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.51025027, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o747 = Create("BlockMesh",{
["Parent"] = o746,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o748 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.1926074, 6.27924919, 64.3715057),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.1926074, 6.27924919, 64.3715057, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o749 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.866300106, 1.99012566, 64.1606903),
["Rotation"] = Vector3.new(88.5065613, 0.311310709, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.866300106, 1.99012566, 64.1606903, -0.996874332, 0.0788167715, 0.00543337036, -0.00746881962, -0.0255533177, -0.999645591, -0.0786499903, -0.996561646, 0.0260621123),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o750 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.0783443451, 1.98304605, 64.0861588),
["Rotation"] = Vector3.new(88.5065613, 0.311310709, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.0783443451, 1.98304605, 64.0861588, -0.996874332, 0.0788167715, 0.00543337036, -0.00746881962, -0.0255533177, -0.999645591, -0.0786499903, -0.996561646, 0.0260621123),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o751 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.91090345, 7.00369263, 64.3970337),
["Rotation"] = Vector3.new(89.7155457, 45.2388535, -178.364975),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.91090345, 7.00369263, 64.3970337, -0.703866303, 0.020091556, 0.710048378, -0.709892213, 0.0152969174, -0.704144299, -0.0250089038, -0.999681175, 0.00349585223),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o752 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.341900349, 2.28571224, 64.2219772),
["Rotation"] = Vector3.new(-11.3901443, 88.8221436, 12.2641096),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.341900349, 2.28571224, 64.2219772, 0.0200898387, -0.00436711218, 0.999788702, 0.0152937369, 0.99987483, 0.00406017434, -0.999681234, 0.0152089363, 0.0201541129),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 1.68382585),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o753 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.2419858, 5.50182152, 64.3733139),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.2419858, 5.50182152, 64.3733139, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.37812805, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o754 = Create("BlockMesh",{
["Parent"] = o753,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o755 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.9657743, 8.18243313, 64.7331543),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.9657743, 8.18243313, 64.7331543, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o756 = Create("CylinderMesh",{
["Parent"] = o755,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o757 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.18598557, 7.98716259, 64.0783691),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.18598557, 7.98716259, 64.0783691, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o758 = Create("CylinderMesh",{
["Parent"] = o757,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o759 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.83379412, 9.18296623, 64.4579773),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.83379412, 9.18296623, 64.4579773, 0.0200915281, -0.710048497, 0.703866184, 0.0152966436, 0.70414418, 0.709892333, -0.999681175, -0.00349602965, 0.0250086896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o760 = Create("BlockMesh",{
["Parent"] = o759,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o761 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.141085625, 3.25618362, 64.3786163),
["Rotation"] = Vector3.new(-11.3993626, 88.8219757, 12.273345),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.141085625, 3.25618362, 64.3786163, 0.0200883597, -0.00437018182, 0.999788642, 0.0152940461, 0.99987483, 0.00406326028, -0.999681234, 0.0152091896, 0.0201526824),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.204100192, 0.481093138, 0.809111178),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o762 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.78248644, 9.13122559, 64.4561768),
["Rotation"] = Vector3.new(-87.9823761, 44.738018, 178.379196),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.78248644, 9.13122559, 64.4561768, -0.710048497, -0.0200913604, 0.703866184, 0.70414418, -0.0152968001, 0.709892333, -0.00349580147, 0.999681175, 0.025008684),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 2.32528329, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o763 = Create("BlockMesh",{
["Parent"] = o762,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o764 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(5.29805088, 9.60130024, 64.4736328),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.29805088, 9.60130024, 64.4736328, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o765 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.60110426, 7.58959579, 64.4087524),
["Rotation"] = Vector3.new(-179.123337, 1.15123439, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.60110426, 7.58959579, 64.4087524, -0.710048497, 0.703866184, 0.0200914778, 0.70414418, 0.709892333, 0.0152969155, -0.00349580334, 0.0250088461, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o766 = Create("BlockMesh",{
["Parent"] = o765,
["Scale"] = Vector3.new(0.437357396, 1, 1),
})
o767 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.58943701, 8.3193512, 65.2455902),
["Rotation"] = Vector3.new(-179.123337, 1.15123963, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.58943701, 8.3193512, 65.2455902, -0.710048497, 0.703866184, 0.0200915691, 0.70414418, 0.709892333, 0.0152970077, -0.00349580147, 0.0250089765, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.874714792, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o768 = Create("BlockMesh",{
["Parent"] = o767,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o769 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.16010714, 8.01282501, 64.0782394),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.16010714, 8.01282501, 64.0782394, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.437357485, 1.16628623, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o770 = Create("CylinderMesh",{
["Parent"] = o769,
["Offset"] = Vector3.new(0, 0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o771 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.14692688, 8.00279045, 64.7340546),
["Rotation"] = Vector3.new(-179.123398, 1.15129459, 134.749481),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.14692688, 8.00279045, 64.7340546, -0.703866303, -0.710048318, 0.0200925283, -0.709892213, 0.704144359, 0.0152959106, -0.025008874, -0.00349725084, -0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.437357485, 1.16628623, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o772 = Create("CylinderMesh",{
["Parent"] = o771,
["Offset"] = Vector3.new(0, 0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o773 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.08644152, 9.33916855, 65.1285324),
["Rotation"] = Vector3.new(-80.3009262, 82.5354691, 171.103378),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.08644152, 9.33916855, 65.1285324, -0.128349677, -0.020091258, 0.991525471, 0.991649032, -0.0152968867, 0.128055707, 0.0125944521, 0.999681115, 0.0218868274),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.801822066, 0.200000003, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o774 = Create("CylinderMesh",{
["Parent"] = o773,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o775 = Create("Part",{
["Parent"] = o536,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(4.08797884, 9.34034157, 65.0520248),
["Rotation"] = Vector3.new(-80.3009262, 82.5354691, 171.103378),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.08797884, 9.34034157, 65.0520248, -0.128349677, -0.020091258, 0.991525471, 0.991649032, -0.0152968867, 0.128055707, 0.0125944521, 0.999681115, 0.0218868274),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.09339368, 0.200000003, 1.89521527),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o776 = Create("CylinderMesh",{
["Parent"] = o775,
["Scale"] = Vector3.new(1, 0.400911003, 1),
})
o777 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o536,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(4.11499977, 9.35999966, 63.7830009),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11499977, 9.35999966, 63.7830009, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o778 = Create("Script",{
["Parent"] = o777,
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
end,o778)
end))
o779 = Create("Model",{
["Name"] = "LLeg",
["Parent"] = o451,
})
o780 = Create("Model",{
["Name"] = "Upper",
["Parent"] = o779,
})
o781 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.67892218, 9.81065178, 70.8100204),
["Rotation"] = Vector3.new(-92.017601, 44.7378311, -88.3792114),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.67892218, 9.81065178, 70.8100204, 0.0200913008, 0.710050702, 0.703863859, 0.0152964573, -0.704141855, 0.709894538, 0.999681115, -0.0034960811, -0.025008386),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.546696782),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o782 = Create("SpecialMesh",{
["Parent"] = o781,
["Scale"] = Vector3.new(0.911161423, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o783 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.94172716, 8.18326569, 71.6335678),
["Rotation"] = Vector3.new(-92.017601, 44.7378311, -88.3792114),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.94172716, 8.18326569, 71.6335678, 0.0200913008, 0.710050702, 0.703863859, 0.0152964573, -0.704141855, 0.709894538, 0.999681115, -0.0034960811, -0.025008386),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025027, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o784 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.28852463, 9.54160023, 71.5857315),
["Rotation"] = Vector3.new(87.9824142, -44.7378387, -91.6207809),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.28852463, 9.54160023, 71.5857315, -0.0200912245, 0.710050642, -0.703863978, -0.0152963549, -0.704142034, -0.709894419, -0.999681115, -0.00349609554, 0.0250082593),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025033, 1.42141151),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o785 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.59636307, 9.85208225, 71.5747833),
["Rotation"] = Vector3.new(-92.017601, 44.7378311, -88.3792114),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.59636307, 9.85208225, 71.5747833, 0.0200913008, 0.710050702, 0.703863859, 0.0152964573, -0.704141855, 0.709894538, 0.999681115, -0.0034960811, -0.025008386),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025033, 1.1298399),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o786 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.524143696, 8.28057098, 71.6605682),
["Rotation"] = Vector3.new(-92.017601, 44.7378311, -88.3792114),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.524143696, 8.28057098, 71.6605682, 0.0200913008, 0.710050702, 0.703863859, 0.0152964573, -0.704141855, 0.709894538, 0.999681115, -0.0034960811, -0.025008386),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 1.64009011, 1.27562571),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o787 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.71187377, 9.83574677, 72.4495773),
["Rotation"] = Vector3.new(-92.017601, 44.7378311, -88.3792114),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71187377, 9.83574677, 72.4495773, 0.0200913008, 0.710050702, 0.703863859, 0.0152964573, -0.704141855, 0.709894538, 0.999681115, -0.0034960811, -0.025008386),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.546696782),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o788 = Create("SpecialMesh",{
["Parent"] = o787,
["Scale"] = Vector3.new(0.911161423, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o789 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.52815104, 10.3275871, 71.2206726),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.52815104, 10.3275871, 71.2206726, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o790 = Create("CylinderMesh",{
["Parent"] = o789,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o791 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(-0.170730352, 8.22664833, 71.7045288),
["Rotation"] = Vector3.new(-89.715538, -45.2388687, 1.63504899),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.170730352, 8.22664833, 71.7045288, 0.703866065, -0.0200916715, -0.710048556, 0.709892333, -0.0152968764, 0.70414412, -0.025008956, -0.999681175, 0.00349597167),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.437357485, 1.96810794, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o792 = Create("CylinderMesh",{
["Parent"] = o791,
})
o793 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.88463259, 11.0266819, 70.7671661),
["Rotation"] = Vector3.new(90.2844772, 45.2388535, -91.6350327),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.88463259, 11.0266819, 70.7671661, -0.0200914573, 0.703866184, 0.710048378, -0.0152965086, 0.709892213, -0.70414418, -0.999681115, -0.0250085425, -0.00349607388),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.87926936, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o794 = Create("BlockMesh",{
["Parent"] = o793,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o795 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(2.57641029, 10.3504086, 71.5876617),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.57641029, 10.3504086, 71.5876617, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.6400907, 4.55580568, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o796 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.57035184, 10.7849464, 71.6376877),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.57035184, 10.7849464, 71.6376877, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.52391338, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o797 = Create("BlockMesh",{
["Parent"] = o796,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o798 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.9175868, 11.0517673, 72.4067383),
["Rotation"] = Vector3.new(90.2844772, 45.2388535, -91.6350327),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.9175868, 11.0517673, 72.4067383, -0.0200914573, 0.703866184, 0.710048378, -0.0152965086, 0.709892213, -0.70414418, -0.999681115, -0.0250085425, -0.00349607388),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 2.87926936, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o799 = Create("BlockMesh",{
["Parent"] = o798,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o800 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.54133463, 10.3376188, 71.876503),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.54133463, 10.3376188, 71.876503, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o801 = Create("CylinderMesh",{
["Parent"] = o800,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o802 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.73128796, 10.0307426, 71.8749542),
["Rotation"] = Vector3.new(-0.548728943, 1.33894372, 30.2481174),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.73128796, 10.0307426, 71.8749542, 0.863616168, -0.503608048, 0.023366848, 0.503529131, 0.863925219, 0.0095743658, -0.0250089336, 0.00349731208, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.728928983, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o803 = Create("CylinderMesh",{
["Parent"] = o802,
["Offset"] = Vector3.new(0, -0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o804 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.09338284, 11.3410902, 71.5583801),
["Rotation"] = Vector3.new(-0.876766562, 1.15131414, -119.749527),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.09338284, 11.3410902, 71.5583801, -0.496109128, 0.868027747, 0.0200928692, -0.867948771, -0.496418178, 0.0152987782, 0.0232542269, -0.00984971784, 0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o805 = Create("BlockMesh",{
["Parent"] = o804,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o806 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.2670393, 11.6500807, 71.5501633),
["Rotation"] = Vector3.new(-0.876765966, 1.15131426, -104.749519),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.2670393, 11.6500807, 71.5501633, -0.254542381, 0.966852903, 0.020092871, -0.966856599, -0.254861325, 0.015298767, 0.0199125521, -0.0155327395, 0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o807 = Create("BlockMesh",{
["Parent"] = o806,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o808 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.81814384, 11.0901051, 71.5677414),
["Rotation"] = Vector3.new(-0.876766026, 1.15131462, -154.749527),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.81814384, 11.0901051, 71.5677414, -0.904269099, 0.426490158, 0.0200928785, -0.426248252, -0.904476941, 0.0152987689, 0.0246983189, 0.00526964944, 0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o809 = Create("BlockMesh",{
["Parent"] = o808,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o810 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(2.01382732, 10.3740368, 72.455368),
["Rotation"] = Vector3.new(90.2844772, 45.2388535, -91.6350327),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.01382732, 10.3740368, 72.455368, -0.0200914573, 0.703866184, 0.710048378, -0.0152965086, 0.709892213, -0.70414418, -0.999681115, -0.0250085425, -0.00349607388),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.52391338, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o811 = Create("BlockMesh",{
["Parent"] = o810,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o812 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.71595907, 10.0244589, 71.2191315),
["Rotation"] = Vector3.new(-0.548728943, 1.33894372, 30.2481174),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.71595907, 10.0244589, 71.2191315, 0.863616168, -0.503608048, 0.023366848, 0.503529131, 0.863925219, 0.0095743658, -0.0250089336, 0.00349731208, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.728928983, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o813 = Create("CylinderMesh",{
["Parent"] = o812,
["Offset"] = Vector3.new(0, -0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o814 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.99897099, 12.5869188, 71.5411987),
["Rotation"] = Vector3.new(-0.876665652, 1.15124023, -39.7494698),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.99897099, 12.5869188, 71.5411987, 0.768692613, 0.63930279, 0.0200915802, -0.639593363, 0.768561304, 0.0152970171, -0.00566218421, -0.0246091466, 0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o815 = Create("BlockMesh",{
["Parent"] = o814,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o816 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.70261526, 12.7661819, 71.5444412),
["Rotation"] = Vector3.new(-0.876660526, 1.15123844, -19.7494659),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.70261526, 12.7661819, 71.5444412, 0.940989256, 0.337839782, 0.0200915486, -0.338157773, 0.940965176, 0.0152969277, -0.013737537, -0.021188356, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o817 = Create("BlockMesh",{
["Parent"] = o816,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o818 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.31162453, 11.9728003, 71.5443268),
["Rotation"] = Vector3.new(-0.876766324, 1.15131485, -79.7495117),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.31162453, 11.9728003, 71.5443268, 0.17791602, 0.983840525, 0.0200928822, -0.983978748, 0.177628562, 0.0152987735, 0.0114824846, -0.0224928632, 0.999681115),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o819 = Create("BlockMesh",{
["Parent"] = o818,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o820 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(2.46761918, 8.71365547, 71.6148911),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.46761918, 8.71365547, 71.6148911, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o821 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(1.98087442, 10.3489542, 70.8158112),
["Rotation"] = Vector3.new(90.2844772, 45.2388535, -91.6350327),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.98087442, 10.3489542, 70.8158112, -0.0200914573, 0.703866184, 0.710048378, -0.0152965086, 0.709892213, -0.70414418, -0.999681115, -0.0250085425, -0.00349607388),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.52391338, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o822 = Create("BlockMesh",{
["Parent"] = o821,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o823 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.12791491, 12.8406639, 71.5548325),
["Rotation"] = Vector3.new(-0.876700759, 1.15122592, 0.25075087),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.12791491, 12.8406639, 71.5548325, 0.999788642, -0.00437553134, 0.0200913306, 0.00406849384, 0.999874711, 0.0152976299, -0.0201557484, -0.0152126532, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.692482889, 0.255125135, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o824 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-0.150228262, 8.24225903, 72.7247162),
["Rotation"] = Vector3.new(-89.715538, -45.2388687, 1.63504899),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.150228262, 8.24225903, 72.7247162, 0.703866065, -0.0200916715, -0.710048556, 0.709892333, -0.0152968764, 0.70414412, -0.025008956, -0.999681175, 0.00349597167),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o825 = Create("CylinderMesh",{
["Parent"] = o824,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o826 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-0.191234827, 8.21104145, 70.6843643),
["Rotation"] = Vector3.new(-89.715538, -45.2388687, 1.63504899),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.191234827, 8.21104145, 70.6843643, 0.703866065, -0.0200916715, -0.710048556, 0.709892333, -0.0152968764, 0.70414412, -0.025008956, -0.999681175, 0.00349597167),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.583143353, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o827 = Create("CylinderMesh",{
["Parent"] = o826,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o828 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.20212555, 12.2956028, 71.5415802),
["Rotation"] = Vector3.new(-0.876701593, 1.15125203, -54.7493973),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.20212555, 12.2956028, 71.5415802, 0.577037334, 0.816470683, 0.020091787, -0.816717267, 0.576835275, 0.0152976448, 0.00090042688, -0.0252366215, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.255125135, 1.31207228),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o829 = Create("BlockMesh",{
["Parent"] = o828,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o830 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.38163424, 11.8994551, 71.5313187),
["Rotation"] = Vector3.new(80.3008575, -82.5354919, -8.89669037),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.38163424, 11.8994551, 71.5313187, 0.128349662, 0.0200914238, -0.991525531, -0.991649032, 0.0152968969, -0.128055692, 0.012594441, 0.999681115, 0.0218869932),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.82232273, 1.39225423, 1.7494297),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o831 = Create("CylinderMesh",{
["Parent"] = o830,
})
o832 = Create("Part",{
["Parent"] = o780,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.31466246, 10.5765123, 71.5492554),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.31466246, 10.5765123, 71.5492554, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o833 = Create("Part",{
["Name"] = "Hip",
["Parent"] = o780,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(3.85599995, 11.6490002, 70.9680252),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.85599995, 11.6490002, 70.9680252, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o834 = Create("Script",{
["Parent"] = o833,
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
end,o834)
end))
o835 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o780,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(4.11499977, 9.35999966, 72.2350006),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11499977, 9.35999966, 72.2350006, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o836 = Create("Model",{
["Name"] = "Lower",
["Parent"] = o779,
})
o837 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.38710856, 2.39841223, 71.0653305),
["Rotation"] = Vector3.new(91.446312, 10.2985916, -4.01365995),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.38710856, 2.39841223, 71.0653305, 0.981476307, 0.0688666552, 0.178778037, 0.180049405, -0.0126687577, -0.98357594, -0.065470688, 0.997545421, -0.0248334855),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o838 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.96607256, 5.30590248, 70.7053757),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.96607256, 5.30590248, 70.7053757, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o839 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.64632177, 4.97367096, 72.6783447),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.64632177, 4.97367096, 72.6783447, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o840 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.61112261, 6.11068058, 70.8988342),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.61112261, 6.11068058, 70.8988342, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o841 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.25197601, 5.74846029, 70.9115906),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.25197601, 5.74846029, 70.9115906, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o842 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.40596676, 2.99942875, 70.7946243),
["Rotation"] = Vector3.new(-88.9606934, -30.2695503, 2.85746765),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.40596676, 2.99942875, 70.7946243, 0.862589717, -0.0430549644, -0.504068732, 0.504263401, -0.00700867921, 0.863521516, -0.0407117419, -0.999048173, 0.0156654287),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o843 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.81919909, 4.53440762, 71.7246857),
["Rotation"] = Vector3.new(-92.0176315, 44.7380257, -88.3791962),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.81919909, 4.53440762, 71.7246857, 0.0200914927, 0.710048378, 0.703866303, 0.0152965561, -0.704144299, 0.709892213, 0.999681115, -0.00349606387, -0.0250086058),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.2464689, 1.20273292, 0.400910914),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o844 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.36461926, 5.69811726, 72.6528091),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.36461926, 5.69811726, 72.6528091, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o845 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.49038935, 3.01316452, 72.7535706),
["Rotation"] = Vector3.new(-88.9605942, -30.2695351, -177.142471),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.49038935, 3.01316452, 72.7535706, -0.862589836, 0.043055784, -0.504068434, -0.504263163, 0.00700736418, 0.863521636, 0.040711794, 0.999048114, 0.0156669654),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o846 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.00547028, 5.33589363, 72.6655731),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.00547028, 5.33589363, 72.6655731, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o847 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.68436909, 6.03034639, 70.6798553),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.68436909, 6.03034639, 70.6798553, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o848 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.64099884, 6.13342571, 72.385376),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.64099884, 6.13342571, 72.385376, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o849 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.53368378, 5.0240159, 70.9371262),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.53368378, 5.0240159, 70.9371262, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o850 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.56355858, 5.04675865, 72.4236526),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.56355858, 5.04675865, 72.4236526, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o851 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.32522202, 5.66812229, 70.6926193),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.32522202, 5.66812229, 70.6926193, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o852 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.28185272, 5.7712059, 72.39814),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.28185272, 5.7712059, 72.39814, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o853 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.92270565, 5.40898275, 72.4108963),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.92270565, 5.40898275, 72.4108963, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o854 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.89283276, 5.38623762, 70.9243698),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.89283276, 5.38623762, 70.9243698, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o855 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.42428875, 3.105793, 72.5004044),
["Rotation"] = Vector3.new(-0.401881278, 2.46768713, 30.3005772),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.42428875, 3.105793, 72.5004044, 0.862589836, -0.504068434, 0.0430559516, 0.504263163, 0.863521636, 0.00700758956, -0.0407120511, 0.0156668536, 0.999048114),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o856 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.60692501, 4.94367981, 70.718132),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.60692501, 4.94367981, 70.718132, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o857 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.36026621, 3.09537888, 71.0148163),
["Rotation"] = Vector3.new(91.0393066, 30.269558, -2.8574729),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.36026621, 3.09537888, 71.0148163, 0.862589717, 0.0430550426, 0.504068792, 0.504263401, 0.00700873137, -0.863521576, -0.040711835, 0.999048173, -0.0156654231),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o858 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.78212023, 3.29945469, 70.7800064),
["Rotation"] = Vector3.new(-89.3991928, -40.2505608, 2.10076833),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.78212023, 3.29945469, 70.7800064, 0.762713253, -0.0279776677, -0.646131456, 0.646046102, -0.0132051809, 0.763184249, -0.029884398, -0.999521315, 0.0080030961),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o859 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.44206333, 6.78478432, 72.6145248),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.44206333, 6.78478432, 72.6145248, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o860 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.72376347, 6.06033802, 72.6400299),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.72376347, 6.06033802, 72.6400299, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o861 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.35929966, 6.85786819, 72.3598557),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.35929966, 6.85786819, 72.3598557, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o862 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.40266418, 6.75479269, 70.6543198),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.40266418, 6.75479269, 70.6543198, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o863 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.75919867, 3.40542316, 72.4857407),
["Rotation"] = Vector3.new(-0.756866992, 1.6032784, 40.2695389),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.75919867, 3.40542316, 72.4857407, 0.762713432, -0.646131217, 0.0279788356, 0.646045864, 0.763184488, 0.0132042663, -0.0298846979, 0.00800453871, 0.999521375),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o864 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.329422, 6.83512831, 70.8733139),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.329422, 6.83512831, 70.8733139, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o865 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.71759176, 3.38578653, 70.9994431),
["Rotation"] = Vector3.new(90.6008072, 40.2505608, -2.10077333),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.71759176, 3.38578653, 70.9994431, 0.762713253, 0.0279777311, 0.646131456, 0.646046102, 0.0132052442, -0.763184249, -0.0298844874, 0.999521315, -0.00800308865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o866 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.52662969, 2.26879787, 72.8005066),
["Rotation"] = Vector3.new(-88.5536118, -10.2985668, -175.986328),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.52662969, 2.26879787, 72.8005066, -0.981476426, 0.0688668638, -0.178777605, -0.180049092, -0.0126702925, 0.983576059, 0.0654706359, 0.997545481, 0.0248350073),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o867 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.48951316, 2.37957096, 72.5486984),
["Rotation"] = Vector3.new(0.727693141, 3.94892168, 10.3233471),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.48951316, 2.37957096, 72.5486984, 0.981476426, -0.178777665, 0.0688671321, 0.180049151, 0.983576, -0.0126701491, -0.065470919, 0.024834916, 0.997545481),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o868 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.07759094, 7.58231354, 72.3343353),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.07759094, 7.58231354, 72.3343353, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o869 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.83698535, 3.32534313, 72.7398834),
["Rotation"] = Vector3.new(-89.3990784, -40.2505417, -177.899155),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.83698535, 3.32534313, 72.7398834, -0.762713373, 0.0279786978, -0.646131158, -0.646045864, 0.0132040158, 0.763184428, 0.0298844296, 0.999521375, 0.00800464116),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o870 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(7.11132431, 8.32010365, 72.3661118),
["Rotation"] = Vector3.new(87.9825211, -44.738018, -91.6207047),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.11132431, 8.32010365, 72.3661118, -0.0200902559, 0.710048497, -0.703866184, -0.0152953081, -0.70414418, -0.709892333, -0.999681234, -0.00349606806, 0.0250068475),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o871 = Create("SpecialMesh",{
["Parent"] = o870,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o872 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.1085844, 7.82642365, 72.3938217),
["Rotation"] = Vector3.new(-92.0175018, 44.738018, -88.3792877),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.1085844, 7.82642365, 72.3938217, 0.0200903546, 0.710048497, 0.703866184, 0.0152954217, -0.70414418, 0.709892333, 0.999681175, -0.00349605898, -0.0250069983),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o873 = Create("SpecialMesh",{
["Parent"] = o872,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o874 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.3915962, 2.29364395, 70.8444824),
["Rotation"] = Vector3.new(-88.5536957, -10.2985849, 4.01365376),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.3915962, 2.29364395, 70.8444824, 0.981476426, -0.0688665509, -0.178777918, 0.1800493, 0.0126687801, 0.983576059, -0.0654705912, -0.99754554, 0.0248334836),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o875 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.12572145, 2.84762812, 72.5113754),
["Rotation"] = Vector3.new(-0.598222375, 2.04320192, 35.2864113),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.12572145, 2.84762812, 72.5113754, 0.815755665, -0.577296793, 0.0356530435, 0.577328742, 0.816445231, 0.0104341237, -0.0351323411, 0.0120718284, 0.999309838),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o876 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.07270527, 2.83211517, 71.0254059),
["Rotation"] = Vector3.new(90.8470078, 35.2606583, -2.50247979),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.07270527, 2.83211517, 71.0254059, 0.815755486, 0.0356520265, 0.577297091, 0.57732892, 0.0104351779, -0.816444993, -0.0351321138, 0.999309838, -0.0120703932),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o877 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.1979413, 2.76102114, 72.7650223),
["Rotation"] = Vector3.new(-89.1528931, -35.2606392, -177.497467),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.1979413, 2.76102114, 72.7650223, -0.815755725, 0.0356528759, -0.577296853, -0.577328861, 0.0104338862, 0.816445112, 0.0351320691, 0.999309838, 0.012071928),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o878 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.12803245, 2.74056101, 70.8055649),
["Rotation"] = Vector3.new(-89.1529999, -35.2606583, 2.5024755),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.12803245, 2.74056101, 70.8055649, 0.815755546, -0.0356519669, -0.577297091, 0.57732898, -0.0104351249, 0.816444993, -0.0351320356, -0.999309838, 0.0120704006),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o879 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.26103926, 3.57652664, 72.7275467),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.26103926, 3.57652664, 72.7275467, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o880 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.22584248, 4.71354055, 70.9480591),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.22584248, 4.71354055, 70.9480591, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o881 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.43119907, 7.76440334, 72.4083786),
["Rotation"] = Vector3.new(-92.0175018, 44.738018, -88.3792877),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.43119907, 7.76440334, 72.4083786, 0.0200903546, 0.710048497, 0.703866184, 0.0152954217, -0.70414418, 0.709892333, 0.999681175, -0.00349605898, -0.0250069983),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.51025033, 0.459225237),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o882 = Create("SpecialMesh",{
["Parent"] = o881,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o883 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.580791, 3.90876055, 70.7545929),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.580791, 3.90876055, 70.7545929, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o884 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.3384819, 4.66319847, 72.6892624),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.3384819, 4.66319847, 72.6892624, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o885 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.29908562, 4.63320351, 70.7290573),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.29908562, 4.63320351, 70.7290573, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o886 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.14839983, 3.62687206, 70.9863358),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.14839983, 3.62687206, 70.9863358, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o887 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.62018704, 3.9387517, 72.714798),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.62018704, 3.9387517, 72.714798, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o888 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.17827892, 3.64961815, 72.4728775),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.17827892, 3.64961815, 72.4728775, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o889 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.50754929, 3.98909616, 70.973587),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.50754929, 3.98909616, 70.973587, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o890 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.97933435, 4.30097389, 72.702034),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.97933435, 4.30097389, 72.702034, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o891 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.04351664, 6.39256668, 70.6670837),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.04351664, 6.39256668, 70.6670837, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o892 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.00015163, 6.49564838, 72.372612),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.00015163, 6.49564838, 72.372612, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o893 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.53742599, 4.01183891, 72.4601135),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.53742599, 4.01183891, 72.4601135, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o894 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.25571918, 4.73628426, 72.4345932),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.25571918, 4.73628426, 72.4345932, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o895 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.86669445, 4.35131598, 70.9608383),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.86669445, 4.35131598, 70.9608383, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o896 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.00206255913, 2.14015913, 72.9136658),
["Rotation"] = Vector3.new(-88.5065536, -0.311293423, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.00206255913, 2.14015913, 72.9136658, -0.996874392, 0.0788166896, -0.00543306861, -0.0074685216, -0.0255533997, 0.999645591, 0.0786499158, 0.996561646, 0.0260621719),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o897 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.76181507, 7.11701393, 70.6415558),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.76181507, 7.11701393, 70.6415558, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o898 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(5.39898014, 7.73987293, 70.8052521),
["Rotation"] = Vector3.new(-92.0175018, 44.738018, -88.3792877),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.39898014, 7.73987293, 70.8052521, 0.0200903546, 0.710048497, 0.703866184, 0.0152954217, -0.70414418, 0.709892333, 0.999681175, -0.00349605898, -0.0250069983),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.51025033, 0.459225237),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o899 = Create("SpecialMesh",{
["Parent"] = o898,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o900 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.80120945, 7.1470089, 72.6017456),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.80120945, 7.1470089, 72.6017456, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o901 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.12095737, 7.47923279, 70.6288071),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.12095737, 7.47923279, 70.6288071, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o902 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.75507951, 2.5850749, 71.0455246),
["Rotation"] = Vector3.new(91.1888275, 25.2776165, -3.17802811),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.75507951, 2.5850749, 71.0455246, 0.902858734, 0.0501303338, 0.427004635, 0.427406341, 0.0029519985, -0.904054821, -0.0465810783, 0.998738408, -0.0187607855),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o903 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.82962584, 2.58946323, 72.5306778),
["Rotation"] = Vector3.new(-0.16928044, 2.8735075, 25.3116646),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.82962584, 2.58946323, 72.5306778, 0.902858853, -0.427004337, 0.0501311459, 0.427406162, 0.90405488, 0.00295078196, -0.0465813018, 0.0187622178, 0.998738348),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o904 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.79080582, 2.48557949, 70.8250809),
["Rotation"] = Vector3.new(-88.8111801, -25.2776127, 3.17802215),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.79080582, 2.48557949, 70.8250809, 0.902858853, -0.0501302481, -0.427004576, 0.427406311, -0.00295194611, 0.90405488, -0.0465809889, -0.998738348, 0.0187607948),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o905 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.0477128, 7.55957127, 70.8478012),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.0477128, 7.55957127, 70.8478012, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o906 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.022762537, 2.25597858, 72.6622772),
["Rotation"] = Vector3.new(1.46882546, 4.52056694, 0.312268376),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.022762537, 2.25597858, 72.6622772, 0.996874332, -0.00543313008, 0.0788169503, 0.0074685812, 0.999645591, -0.0255532935, -0.0786501765, 0.0260620695, 0.996561646),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o907 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(-0.791346788, 2.28111076, 71.818924),
["Rotation"] = Vector3.new(-168.608139, 88.8223114, -12.2657833),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.791346788, 2.28111076, 71.818924, 0.0200870149, 0.00436711311, 0.999788761, 0.0152928671, -0.99987483, 0.00406023627, 0.999681294, 0.0152080776, -0.0201512873),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o908 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.08291435, 6.42255878, 72.6272812),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.08291435, 6.42255878, 72.6272812, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o909 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.22164202, 3.54653835, 70.7673492),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.22164202, 3.54653835, 70.7673492, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o910 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.87594104, 2.48513412, 72.7841034),
["Rotation"] = Vector3.new(-88.8110809, -25.2775974, -176.82193),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.87594104, 2.48513412, 72.7841034, -0.902858913, 0.0501309484, -0.427004337, -0.427406132, 0.00295056216, 0.904054999, 0.0465810336, 0.998738348, 0.0187623333),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o911 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.139964104, 2.29397869, 71.1803741),
["Rotation"] = Vector3.new(91.4933548, 0.311317414, -4.52062035),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.139964104, 2.29397869, 71.1803741, 0.996874332, 0.0788167119, 0.00543348724, 0.00746881962, -0.0255518612, -0.99964571, -0.0786499456, 0.996561706, -0.0260606613),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o912 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.97027206, 6.47290325, 70.8860931),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.97027206, 6.47290325, 70.8860931, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o913 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.71844578, 7.22009468, 72.347084),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.71844578, 7.22009468, 72.347084, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o914 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.07636738, 7.80189323, 70.7907028),
["Rotation"] = Vector3.new(-92.0175018, 44.738018, -88.3792877),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.07636738, 7.80189323, 70.7907028, 0.0200903546, 0.710048497, 0.703866184, 0.0152954217, -0.70414418, 0.709892333, 0.999681175, -0.00349605898, -0.0250069983),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o915 = Create("SpecialMesh",{
["Parent"] = o914,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o916 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.942581892, 2.14723396, 72.8391495),
["Rotation"] = Vector3.new(-88.5065536, -0.311293423, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.942581892, 2.14723396, 72.8391495, -0.996874392, 0.0788166896, -0.00543306861, -0.0074685216, -0.0255533997, 0.999645591, 0.0786499158, 0.996561646, 0.0260621719),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o917 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.89657211, 4.37406349, 72.4473495),
["Rotation"] = Vector3.new(-0.876663744, 1.15124595, 45.2505074),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.89657211, 4.37406349, 72.4473495, 0.703866363, -0.710048258, 0.0200916789, 0.709892035, 0.704144418, 0.0152969845, -0.0250090379, 0.00349589018, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o918 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.60540962, 8.90274048, 71.569046),
["Rotation"] = Vector3.new(-92.0176086, 44.7378387, 91.6207962),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.60540962, 8.90274048, 71.569046, -0.0200913753, -0.710050642, 0.703863978, -0.0152964508, 0.704142034, 0.709894419, -0.999681115, 0.00349613465, -0.0250084344),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.38496578, 0.51025033, 1.05694711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o919 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.93993664, 4.27098036, 70.7418365),
["Rotation"] = Vector3.new(-89.7156601, -45.2388573, 1.63494933),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.93993664, 4.27098036, 70.7418365, 0.703866303, -0.0200904533, -0.710048437, 0.709892213, -0.0152977807, 0.704144239, -0.0250087436, -0.999681115, 0.0034944634),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o920 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.156606197, 2.19026279, 70.9596024),
["Rotation"] = Vector3.new(-88.5066452, -0.311315835, 4.52061605),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.156606197, 2.19026279, 70.9596024, 0.996874332, -0.0788166374, -0.00543345977, 0.00746878982, 0.0255518593, 0.99964571, -0.0786498636, -0.996561706, 0.0260606576),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o921 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.68856907, 7.19734859, 70.8605499),
["Rotation"] = Vector3.new(90.2843399, 45.2388611, -1.63495398),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.68856907, 7.19734859, 70.8605499, 0.703866184, 0.0200905073, 0.710048497, 0.709892213, 0.0152978562, -0.70414418, -0.025008833, 0.999681115, -0.00349445152),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o922 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.470261335, 2.14369678, 72.8764114),
["Rotation"] = Vector3.new(-88.5065536, -0.311293423, -175.479385),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.470261335, 2.14369678, 72.8764114, -0.996874392, 0.0788166896, -0.00543306861, -0.0074685216, -0.0255533997, 0.999645591, 0.0786499158, 0.996561646, 0.0260621719),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o923 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.92188096, 2.26305199, 72.587738),
["Rotation"] = Vector3.new(1.46882546, 4.52056694, 0.312268376),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.92188096, 2.26305199, 72.587738, 0.996874332, -0.00543313008, 0.0788169503, 0.0074685812, 0.999645591, -0.0255532935, -0.0786501765, 0.0260620695, 0.996561646),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o924 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(7.07910061, 8.29557705, 70.7629929),
["Rotation"] = Vector3.new(87.9825211, -44.738018, -91.6207047),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.07910061, 8.29557705, 70.7629929, -0.0200902559, 0.710048497, -0.703866184, -0.0152953081, -0.70414418, -0.709892333, -0.999681234, -0.00349606806, 0.0250068475),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.364464581, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o925 = Create("SpecialMesh",{
["Parent"] = o924,
["Scale"] = Vector3.new(0.728929162, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o926 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.788035154, 2.19733953, 70.8850632),
["Rotation"] = Vector3.new(-88.5066452, -0.311315835, 4.52061605),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.788035154, 2.19733953, 70.8850632, 0.996874332, -0.0788166374, -0.00543345977, 0.00746878982, 0.0255518593, 0.99964571, -0.0786498636, -0.996561706, 0.0260606576),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o927 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.804680109, 2.30105448, 71.105835),
["Rotation"] = Vector3.new(91.4933548, 0.311317414, -4.52062035),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.804680109, 2.30105448, 71.105835, 0.996874332, 0.0788167119, 0.00543348724, 0.00746881962, -0.0255518612, -0.99964571, -0.0786499456, 0.996561706, -0.0260606613),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o928 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.315714836, 2.19380474, 70.9223251),
["Rotation"] = Vector3.new(-88.5066452, -0.311315835, 4.52061605),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.315714836, 2.19380474, 70.9223251, 0.996874332, -0.0788166374, -0.00543345977, 0.00746878982, 0.0255518593, 0.99964571, -0.0786498636, -0.996561706, 0.0260606576),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o929 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.33235836, 2.29751778, 71.1431046),
["Rotation"] = Vector3.new(91.4933548, 0.311317414, -4.52062035),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.33235836, 2.29751778, 71.1431046, 0.996874332, 0.0788167119, 0.00543348724, 0.00746881962, -0.0255518612, -0.99964571, -0.0786499456, 0.996561706, -0.0260606613),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.364464462),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o930 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.44955802, 2.25951958, 72.6250076),
["Rotation"] = Vector3.new(1.46882546, 4.52056694, 0.312268376),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.44955802, 2.25951958, 72.6250076, 0.996874332, -0.00543313008, 0.0788169503, 0.0074685812, 0.999645591, -0.0255532935, -0.0786501765, 0.0260620695, 0.996561646),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.364464581, 0.291571587),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o931 = Create("WedgePart",{
["Name"] = "Part",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.16035366, 7.50922966, 72.5889893),
["Rotation"] = Vector3.new(-89.7155304, -45.2388382, -178.36496),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.16035366, 7.50922966, 72.5889893, -0.703866482, 0.0200915858, -0.710048199, -0.709892035, 0.015296706, 0.704144478, 0.0250087772, 0.999681175, 0.00349601754),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.218678743, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o932 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(0.14417243, 3.22197437, 71.7857208),
["Rotation"] = Vector3.new(-168.600677, 88.8219757, 167.7267),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.14417243, 3.22197437, 71.7857208, -0.0200884454, -0.00437018275, 0.999788642, -0.0152940461, 0.99987483, 0.00406326028, -0.999681234, -0.0152091896, -0.0201527681),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.408200204, 0.663325369),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o933 = Create("BlockMesh",{
["Parent"] = o932,
["Scale"] = Vector3.new(0.437357485, 1, 1),
})
o934 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(1.18795085, 2.92978334, 71.7692184),
["Rotation"] = Vector3.new(-92.8497009, 59.7296562, 92.2842636),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.18795085, 2.92978334, 71.7692184, -0.0200913139, -0.50368017, 0.86365658, -0.0152961835, 0.863884747, 0.503457367, -0.999681115, -0.00309552997, -0.025060961),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.933029354, 0.481093138, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o935 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.54002929, 2.84893656, 71.7712402),
["Rotation"] = Vector3.new(91.0394058, 30.2695484, -2.85752869),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.54002929, 2.84893656, 71.7712402, 0.862589717, 0.0430558883, 0.504068673, 0.504263401, 0.00700753182, -0.863521576, -0.0407119617, 0.999048114, -0.0156668834),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o936 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.8425808, 9.18965912, 71.9972916),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208115),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.8425808, 9.18965912, 71.9972916, -0.0200916138, -0.710048497, 0.703866184, -0.0152966436, 0.70414418, 0.709892333, -0.999681175, 0.00349609158, -0.0250087529),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o937 = Create("BlockMesh",{
["Parent"] = o936,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o938 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.83345747, 5.91702175, 71.6593094),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.83345747, 5.91702175, 71.6593094, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o939 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(5.57795334, 7.17769241, 71.5795364),
["Rotation"] = Vector3.new(88.0640335, -42.6136208, -1.56439435),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.57795334, 7.17769241, 71.5795364, 0.735661864, 0.0200913809, -0.677050948, -0.677334547, 0.0152966995, -0.735516071, -0.00442088908, 0.999681115, 0.0248617865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.24646866, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o940 = Create("CylinderMesh",{
["Parent"] = o939,
})
o941 = Create("Part",{
["Name"] = "RayPoint",
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.147101641, 3.60053015, 71.7507477),
["Rotation"] = Vector3.new(-78.6006165, 88.8221436, 167.726624),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.147101641, 3.60053015, 71.7507477, -0.0200884342, -0.00437021209, 0.999788702, 0.999681234, 0.0152094765, 0.0201527588, -0.0152943339, 0.99987483, 0.00406328449),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.204100192, 1.42870092, 1.97539711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o942 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(2.11524057, 3.64756155, 71.7396011),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208038),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.11524057, 3.64756155, 71.7396011, -0.0200915299, -0.710048497, 0.703866184, -0.0152965328, 0.70414418, 0.709892333, -0.999681115, 0.00349611137, -0.025008617),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.933029354, 0.481093138, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o943 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.11515856, 5.19258165, 71.6848373),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.11515856, 5.19258165, 71.6848373, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o944 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.14538455, 2.94501638, 71.7899475),
["Rotation"] = Vector3.new(-168.600677, 88.8219757, 167.7267),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.14538455, 2.94501638, 71.7899475, -0.0200884454, -0.00437018275, 0.999788642, -0.0152940461, 0.99987483, 0.00406326028, -0.999681234, -0.0152091896, -0.0201527681),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.641457558, 0.200000003, 0.954897046),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o945 = Create("BlockMesh",{
["Parent"] = o944,
["Scale"] = Vector3.new(1, 0.728928864, 1),
})
o946 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.47430944, 5.55480289, 71.672081),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.47430944, 5.55480289, 71.672081, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o947 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.75601721, 4.83035851, 71.6975937),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.75601721, 4.83035851, 71.6975937, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o948 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.72328377, 6.27277517, 71.643364),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.72328377, 6.27277517, 71.643364, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.473803937, 6.15945101, 0.947607636),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o949 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.37983584, 7.77181625, 71.2828522),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.37983584, 7.77181625, 71.2828522, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o950 = Create("CylinderMesh",{
["Parent"] = o949,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o951 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.55175209, 6.64147091, 71.6337891),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.55175209, 6.64147091, 71.6337891, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o952 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.14694047, 3.26064634, 71.9309158),
["Rotation"] = Vector3.new(-168.600677, 88.8219757, 167.7267),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.14694047, 3.26064634, 71.9309158, -0.0200884454, -0.00437018275, 0.999788642, -0.0152940461, 0.99987483, 0.00406326028, -0.999681234, -0.0152091896, -0.0201527681),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.204100192, 0.481093138, 0.809111178),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o953 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.147984743, 3.39074755, 72.5740891),
["Rotation"] = Vector3.new(-78.6006393, 88.8221436, -102.273323),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.147984743, 3.39074755, 72.5740891, -0.00437018881, 0.0200884342, 0.999788702, 0.0152087789, -0.999681234, 0.0201527551, 0.99987483, 0.0152936345, 0.00406327518),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.211389452, 0.648746729, 1.97539711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o954 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(7.27004719, 7.36591339, 71.6082687),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(7.27004719, 7.36591339, 71.6082687, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o955 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.68961573, 6.21264267, 71.6121445),
["Rotation"] = Vector3.new(88.0640335, -42.6136208, -1.56439435),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.68961573, 6.21264267, 71.6121445, 0.735661864, 0.0200913809, -0.677050948, -0.677334547, 0.0152966995, -0.735516071, -0.00442088908, 0.999681115, 0.0248617865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o956 = Create("CylinderMesh",{
["Parent"] = o955,
})
o957 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.73118305, 9.07947636, 71.5637207),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208115),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.73118305, 9.07947636, 71.5637207, -0.0200916138, -0.710048497, 0.703866184, -0.0152966436, 0.70414418, 0.709892333, -0.999681175, 0.00349609158, -0.0250087529),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o958 = Create("BlockMesh",{
["Parent"] = o957,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o959 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.68961573, 6.21264267, 71.6121445),
["Rotation"] = Vector3.new(88.0640335, -42.6136208, -1.56439435),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.68961573, 6.21264267, 71.6121445, 0.735661864, 0.0200913809, -0.677050948, -0.677334547, 0.0152966995, -0.735516071, -0.00442088908, 0.999681115, 0.0248617865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.24646866, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o960 = Create("CylinderMesh",{
["Parent"] = o959,
})
o961 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.76374197, 5.2821517, 71.6450043),
["Rotation"] = Vector3.new(88.0640335, -42.6136208, -1.56439435),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.76374197, 5.2821517, 71.6450043, 0.735661864, 0.0200913809, -0.677050948, -0.677334547, 0.0152966995, -0.735516071, -0.00442088908, 0.999681115, 0.0248617865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.24646866, 0.437357426),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o962 = Create("CylinderMesh",{
["Parent"] = o961,
})
o963 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.11497211, 9.3599596, 72.2354202),
["Rotation"] = Vector3.new(80.3008575, -82.5354919, -8.89669037),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11497211, 9.3599596, 72.2354202, 0.128349662, 0.0200914238, -0.991525531, -0.991649032, 0.0152968969, -0.128055692, 0.012594441, 0.999681115, 0.0218869932),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.801822066, 0.200000003, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o964 = Create("CylinderMesh",{
["Parent"] = o963,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o965 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.10171652, 9.34986591, 71.5759735),
["Rotation"] = Vector3.new(80.3008575, -82.5354919, -8.89669037),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.10171652, 9.34986591, 71.5759735, 0.128349662, 0.0200914238, -0.991525531, -0.991649032, 0.0152968969, -0.128055692, 0.012594441, 0.999681115, 0.0218869932),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 1.89521527),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o966 = Create("CylinderMesh",{
["Parent"] = o965,
})
o967 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.80127645, 5.24759388, 71.6447754),
["Rotation"] = Vector3.new(88.0640335, -42.6136208, -1.56439435),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.80127645, 5.24759388, 71.6447754, 0.735661864, 0.0200913809, -0.677050948, -0.677334547, 0.0152966995, -0.735516071, -0.00442088908, 0.999681115, 0.0248617865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o968 = Create("CylinderMesh",{
["Parent"] = o967,
})
o969 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.57423592, 8.91559029, 72.6959305),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.57423592, 8.91559029, 72.6959305, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o970 = Create("BlockMesh",{
["Parent"] = o969,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o971 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.8754437, 8.29512119, 71.9412308),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.8754437, 8.29512119, 71.9412308, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o972 = Create("CylinderMesh",{
["Parent"] = o971,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o973 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(5.13734293, 5.86215878, 71.6413345),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.13734293, 5.86215878, 71.6413345, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.692482889, 6.15945101, 1.23917937),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o974 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.92729664, 3.17332172, 71.7584915),
["Rotation"] = Vector3.new(90.600914, 40.2505646, -2.10085154),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.92729664, 3.17332172, 71.7584915, 0.762713134, 0.0279787723, 0.646131516, 0.646046102, 0.013204203, -0.763184249, -0.0298846029, 0.999521375, -0.00800455641),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o975 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(2.49307203, 3.27287292, 71.7377396),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208038),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.49307203, 3.27287292, 71.7377396, -0.0200915299, -0.710048497, 0.703866184, -0.0152965328, 0.70414418, 0.709892333, -0.999681115, 0.00349611137, -0.025008617),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o976 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.86226249, 8.28508949, 71.2853851),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.86226249, 8.28508949, 71.2853851, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o977 = Create("CylinderMesh",{
["Parent"] = o976,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o978 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.39301658, 7.78185368, 71.9386673),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.39301658, 7.78185368, 71.9386673, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o979 = Create("CylinderMesh",{
["Parent"] = o978,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o980 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.73997021, 9.08616543, 72.0009384),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208115),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.73997021, 9.08616543, 72.0009384, -0.0200916138, -0.710048497, 0.703866184, -0.0152966436, 0.70414418, 0.709892333, -0.999681175, 0.00349609158, -0.0250087529),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o981 = Create("BlockMesh",{
["Parent"] = o980,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o982 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.27632236, 7.87447166, 71.2833633),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.27632236, 7.87447166, 71.2833633, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o983 = Create("CylinderMesh",{
["Parent"] = o982,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o984 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.28950143, 7.88450813, 71.9391861),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.28950143, 7.88450813, 71.9391861, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o985 = Create("CylinderMesh",{
["Parent"] = o984,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o986 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.49169147, 2.10198402, 71.8179626),
["Rotation"] = Vector3.new(91.4463882, 10.2985821, -4.01368237),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.49169147, 2.10198402, 71.8179626, 0.981476367, 0.0688670427, 0.178777874, 0.18004936, -0.0126701742, -0.983576, -0.0654708222, 0.997545481, -0.0248349402),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o987 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.53017044, 8.87988663, 70.4421997),
["Rotation"] = Vector3.new(179.123337, -1.15124798, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.53017044, 8.87988663, 70.4421997, -0.710048497, 0.703866184, -0.0200917162, 0.70414418, 0.709892333, -0.0152969453, 0.00349595281, -0.0250090398, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o988 = Create("BlockMesh",{
["Parent"] = o987,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o989 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.80347633, 8.0096283, 72.3770523),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.80347633, 8.0096283, 72.3770523, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.656036019, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o990 = Create("BlockMesh",{
["Parent"] = o989,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o991 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.72239399, 9.07278919, 71.1264877),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208115),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.72239399, 9.07278919, 71.1264877, -0.0200916138, -0.710048497, 0.703866184, -0.0152966436, 0.70414418, 0.709892333, -0.999681175, 0.00349609158, -0.0250087529),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o992 = Create("BlockMesh",{
["Parent"] = o991,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o993 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(2.26818657, 2.60200977, 71.7830887),
["Rotation"] = Vector3.new(90.8471069, 35.2606544, -2.50254703),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.26818657, 2.60200977, 71.7830887, 0.815755486, 0.0356529839, 0.577297032, 0.57732892, 0.0104340715, -0.816445053, -0.0351322554, 0.999309838, -0.012071847),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o994 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.30322075, 8.64824009, 70.5954666),
["Rotation"] = Vector3.new(179.123337, -1.1512413, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.30322075, 8.64824009, 70.5954666, -0.710048497, 0.703866184, -0.0200915989, 0.70414418, 0.709892333, -0.0152970692, 0.00349578145, -0.0250090435, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.51025027, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o995 = Create("BlockMesh",{
["Parent"] = o994,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o996 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.37770939, 8.72576046, 70.5205383),
["Rotation"] = Vector3.new(179.123337, -1.15124798, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.37770939, 8.72576046, 70.5205383, -0.710048497, 0.703866184, -0.0200917162, 0.70414418, 0.709892333, -0.0152969453, 0.00349595281, -0.0250090398, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o997 = Create("BlockMesh",{
["Parent"] = o996,
["Scale"] = Vector3.new(1, 0.728928864, 0.364464492),
})
o998 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.66309547, 6.97263622, 70.8518982),
["Rotation"] = Vector3.new(90.2844696, 45.2388535, -91.6350327),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.66309547, 6.97263622, 70.8518982, -0.0200914517, 0.703866303, 0.710048378, -0.0152965607, 0.709892213, -0.704144299, -0.999681175, -0.0250085797, -0.00349603058),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.91024637, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o999 = Create("BlockMesh",{
["Parent"] = o998,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o1000 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.31330681, 8.65351868, 72.486412),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.31330681, 8.65351868, 72.486412, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1001 = Create("BlockMesh",{
["Parent"] = o1000,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o1002 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.27903366, 8.6234808, 70.6692505),
["Rotation"] = Vector3.new(179.123337, -1.1512413, -135.250519),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.27903366, 8.6234808, 70.6692505, -0.710048497, 0.703866184, -0.0200915989, 0.70414418, 0.709892333, -0.0152970692, 0.00349578145, -0.0250090435, -0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.583143115, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1003 = Create("BlockMesh",{
["Parent"] = o1002,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o1004 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.06929135, 8.07978058, 71.2843628),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.06929135, 8.07978058, 71.2843628, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1005 = Create("CylinderMesh",{
["Parent"] = o1004,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o1006 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.69531369, 6.99716854, 72.4550095),
["Rotation"] = Vector3.new(90.2844696, 45.2388535, -91.6350327),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.69531369, 6.99716854, 72.4550095, -0.0200914517, 0.703866303, 0.710048378, -0.0152965607, 0.709892213, -0.704144299, -0.999681175, -0.0250085797, -0.00349603058),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.91024637, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1007 = Create("BlockMesh",{
["Parent"] = o1006,
["Scale"] = Vector3.new(0.728929162, 1, 1),
})
o1008 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.08247352, 8.08981609, 71.9401932),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.08247352, 8.08981609, 71.9401932, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1009 = Create("CylinderMesh",{
["Parent"] = o1008,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o1010 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(4.12807417, 6.86303568, 71.6463089),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.12807417, 6.86303568, 71.6463089, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.20273328, 6.15945101, 1.23917937),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o1011 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.62165356, 8.34388161, 72.3755951),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.62165356, 8.34388161, 72.3755951, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.874714792, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1012 = Create("BlockMesh",{
["Parent"] = o1011,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o1013 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(1.91776741, 2.32372379, 71.8008423),
["Rotation"] = Vector3.new(91.1889114, 25.2776089, -3.1780746),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.91776741, 2.32372379, 71.8008423, 0.902858794, 0.0501310751, 0.427004516, 0.427406311, 0.00295072608, -0.904054821, -0.0465812124, 0.998738348, -0.0187622476),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1014 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.37073326, 3.43321609, 71.7468109),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.37073326, 3.43321609, 71.7468109, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1015 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(3.43335795, 7.22870731, 71.6546707),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.43335795, 7.22870731, 71.6546707, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.91024637, 1.45785785),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1016 = Create("BlockMesh",{
["Parent"] = o1015,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o1017 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.54311132, 7.63300133, 71.9379425),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.54311132, 7.63300133, 71.9379425, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1018 = Create("CylinderMesh",{
["Parent"] = o1017,
["Scale"] = Vector3.new(1, 0.291571617, 1),
})
o1019 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.52734327, 7.62553883, 71.2821121),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.52734327, 7.62553883, 71.2821121, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1020 = Create("CylinderMesh",{
["Parent"] = o1019,
["Scale"] = Vector3.new(1, 0.255125135, 1),
})
o1021 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(3.72988033, 3.79543734, 71.7340469),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.72988033, 3.79543734, 71.7340469, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1022 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.07366276, 8.42033195, 70.7812881),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.07366276, 8.42033195, 70.7812881, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 1.45785797, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1023 = Create("BlockMesh",{
["Parent"] = o1022,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o1024 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.77126312, 7.98509979, 70.7739334),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.77126312, 7.98509979, 70.7739334, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.656036019, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1025 = Create("BlockMesh",{
["Parent"] = o1024,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o1026 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(0.146692276, 2.64618969, 71.7944946),
["Rotation"] = Vector3.new(-168.600677, 88.8219757, 167.7267),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.146692276, 2.64618969, 71.7944946, -0.0200884454, -0.00437018275, 0.999788642, -0.0152940461, 0.99987483, 0.00406326028, -0.999681234, -0.0152091896, -0.0201527681),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.933029354, 0.481093138, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1027 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.393976688, 1.98658371, 71.8946228),
["Rotation"] = Vector3.new(91.4934387, 0.311310619, -4.52062893),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.393976688, 1.98658371, 71.8946228, 0.996874332, 0.0788168609, 0.0054333685, 0.00746881962, -0.0255533177, -0.999645591, -0.0786500797, 0.996561646, -0.0260621123),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1028 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.4188509, 8.75923824, 72.6285095),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.4188509, 8.75923824, 72.6285095, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.200000003, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1029 = Create("BlockMesh",{
["Parent"] = o1028,
["Scale"] = Vector3.new(1, 0.728928864, 0.364464492),
})
o1030 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.08903027, 4.15766144, 71.7212982),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.08903027, 4.15766144, 71.7212982, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1031 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.97895908, 8.19246769, 71.9407196),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.97895908, 8.19246769, 71.9407196, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1032 = Create("CylinderMesh",{
["Parent"] = o1031,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o1033 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.57795334, 7.17769241, 71.5795364),
["Rotation"] = Vector3.new(88.0640335, -42.6136208, -1.56439435),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.57795334, 7.17769241, 71.5795364, 0.735661864, 0.0200913809, -0.677050948, -0.677334547, 0.0152966995, -0.735516071, -0.00442088908, 0.999681115, 0.0248617865),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53075123, 1.10068274, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1034 = Create("CylinderMesh",{
["Parent"] = o1033,
})
o1035 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.17280555, 7.97712612, 71.2838745),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.17280555, 7.97712612, 71.2838745, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1036 = Create("CylinderMesh",{
["Parent"] = o1035,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o1037 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(4.11343193, 9.35878658, 72.1589203),
["Rotation"] = Vector3.new(80.3008575, -82.5354919, -8.89669037),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11343193, 9.35878658, 72.1589203, 0.128349662, 0.0200914238, -0.991525531, -0.991649032, 0.0152968969, -0.128055692, 0.012594441, 0.999681115, 0.0218869932),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.09339368, 0.200000003, 1.89521527),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1038 = Create("CylinderMesh",{
["Parent"] = o1037,
["Scale"] = Vector3.new(1, 0.400911003, 1),
})
o1039 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.10587883, 8.44486046, 72.384407),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.10587883, 8.44486046, 72.384407, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 1.45785797, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1040 = Create("BlockMesh",{
["Parent"] = o1039,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o1041 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.155152559, 3.36580276, 70.9342194),
["Rotation"] = Vector3.new(-78.6006393, 88.8221436, -102.273323),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.155152559, 3.36580276, 70.9342194, -0.00437018881, 0.0200884342, 0.999788702, 0.0152087789, -0.999681234, 0.0201527551, 0.99987483, 0.0152936345, 0.00406327518),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.211389452, 0.648746729, 1.97539711),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1042 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(4.44817352, 4.5198822, 71.7085342),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.44817352, 4.5198822, 71.7085342, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1043 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.82500982, 9.17628002, 71.1228485),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208115),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.82500982, 9.17628002, 71.1228485, -0.0200916138, -0.710048497, 0.703866184, -0.0152966436, 0.70414418, 0.709892333, -0.999681175, 0.00349609158, -0.0250087529),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1044 = Create("BlockMesh",{
["Parent"] = o1043,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o1045 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(1.57630897, 2.56324911, 71.7670288),
["Rotation"] = Vector3.new(-92.8497009, 59.7296562, 92.2842636),
["Anchored"] = true,
["CFrame"] = CFrame.new(1.57630897, 2.56324911, 71.7670288, -0.0200913139, -0.50368017, 0.86365658, -0.0152961835, 0.863884747, 0.503457367, -0.999681115, -0.00309552997, -0.025060961),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 1.24646842),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o1046 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(6.34042645, 8.68050385, 72.5583801),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.34042645, 8.68050385, 72.5583801, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 0.51025027, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o1047 = Create("BlockMesh",{
["Parent"] = o1046,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o1048 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.19260788, 6.27924919, 71.6465454),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.19260788, 6.27924919, 71.6465454, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1049 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(0.866300344, 1.99012566, 71.8573608),
["Rotation"] = Vector3.new(91.4934387, 0.311310619, -4.52062893),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.866300344, 1.99012566, 71.8573608, 0.996874332, 0.0788168609, 0.0054333685, 0.00746881962, -0.0255533177, -0.999645591, -0.0786500797, 0.996561646, -0.0260621123),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1050 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(-0.0783441067, 1.98304605, 71.9318924),
["Rotation"] = Vector3.new(91.4934387, 0.311310619, -4.52062893),
["Anchored"] = true,
["CFrame"] = CFrame.new(-0.0783441067, 1.98304605, 71.9318924, 0.996874332, 0.0788168609, 0.0054333685, 0.00746881962, -0.0255533177, -0.999645591, -0.0786500797, 0.996561646, -0.0260621123),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1051 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(6.91090393, 7.00369263, 71.6210175),
["Rotation"] = Vector3.new(90.284462, 45.2388535, -1.63504601),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.91090393, 7.00369263, 71.6210175, 0.703866303, 0.0200916417, 0.710048378, 0.709892213, 0.0152969174, -0.704144299, -0.0250089671, 0.999681175, -0.00349591416),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.74214029, 0.218678713),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1052 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(0.341900587, 2.28571224, 71.7960739),
["Rotation"] = Vector3.new(-168.609909, 88.8221436, 167.735931),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.341900587, 2.28571224, 71.7960739, -0.0200899243, -0.00436711311, 0.999788702, -0.0152937369, 0.99987483, 0.00406017434, -0.999681234, -0.0152089363, -0.0201541986),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.23917973, 0.583143115, 1.68382585),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o1053 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(5.24198627, 5.50182152, 71.6447372),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.24198627, 5.50182152, 71.6447372, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 6.37812805, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1054 = Create("BlockMesh",{
["Parent"] = o1053,
["Scale"] = Vector3.new(0.911161423, 1, 1),
})
o1055 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(2.96577501, 8.18243313, 71.2848969),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(2.96577501, 8.18243313, 71.2848969, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1056 = Create("CylinderMesh",{
["Parent"] = o1055,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o1057 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(3.18598604, 7.98716259, 71.939682),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.18598604, 7.98716259, 71.939682, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.31207228, 0.200000003, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1058 = Create("CylinderMesh",{
["Parent"] = o1057,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o1059 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.83379459, 9.18296623, 71.5600739),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 91.6208115),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.83379459, 9.18296623, 71.5600739, -0.0200916138, -0.710048497, 0.703866184, -0.0152966436, 0.70414418, 0.709892333, -0.999681175, 0.00349609158, -0.0250087529),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 1.01321113, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1060 = Create("BlockMesh",{
["Parent"] = o1059,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o1061 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(0.141086102, 3.25618362, 71.6394348),
["Rotation"] = Vector3.new(-168.600677, 88.8219757, 167.7267),
["Anchored"] = true,
["CFrame"] = CFrame.new(0.141086102, 3.25618362, 71.6394348, -0.0200884454, -0.00437018275, 0.999788642, -0.0152940461, 0.99987483, 0.00406326028, -0.999681234, -0.0152091896, -0.0201527681),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.204100192, 0.481093138, 0.809111178),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1062 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(6.78248692, 9.13122559, 71.5618744),
["Rotation"] = Vector3.new(-92.0176315, 44.738018, 1.62080204),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.78248692, 9.13122559, 71.5618744, 0.710048497, -0.0200914461, 0.703866184, -0.70414418, -0.0152968001, 0.709892333, -0.00349586341, -0.999681175, -0.0250087474),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.218678743, 2.32528329, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1063 = Create("BlockMesh",{
["Parent"] = o1062,
["Scale"] = Vector3.new(1, 1, 0.364464492),
})
o1064 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(5.29805136, 9.60130024, 71.5444183),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(5.29805136, 9.60130024, 71.5444183, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.510250449, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o1065 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Fossil"),
["Position"] = Vector3.new(3.60110474, 7.58959579, 71.6092987),
["Rotation"] = Vector3.new(-0.876659811, 1.15123928, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.60110474, 7.58959579, 71.6092987, 0.710048497, 0.703866184, 0.0200915635, -0.70414418, 0.709892333, 0.0152969155, -0.00349586527, -0.0250089094, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 0.911161304, 1.38496494),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.623529, 0.631373, 0.67451),
})
o1066 = Create("BlockMesh",{
["Parent"] = o1065,
["Scale"] = Vector3.new(0.437357396, 1, 1),
})
o1067 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Brick yellow"),
["Position"] = Vector3.new(6.58943748, 8.3193512, 70.7724609),
["Rotation"] = Vector3.new(-0.876665115, 1.15124452, -44.7494774),
["Anchored"] = true,
["CFrame"] = CFrame.new(6.58943748, 8.3193512, 70.7724609, 0.710048497, 0.703866184, 0.0200916547, -0.70414418, 0.709892333, 0.0152970077, -0.00349586341, -0.0250090398, 0.999681175),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.364464581, 0.874714792, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.843137, 0.772549, 0.603922),
})
o1068 = Create("BlockMesh",{
["Parent"] = o1067,
["Scale"] = Vector3.new(1, 1, 0.728928685),
})
o1069 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.16010785, 8.01282501, 71.9398117),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.16010785, 8.01282501, 71.9398117, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.437357485, 1.16628623, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1070 = Create("CylinderMesh",{
["Parent"] = o1069,
["Offset"] = Vector3.new(0, 0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o1071 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(3.1469276, 8.00279045, 71.2839966),
["Rotation"] = Vector3.new(-0.876602232, 1.15129948, 45.2505112),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.1469276, 8.00279045, 71.2839966, 0.703866303, -0.710048318, 0.020092614, 0.709892213, 0.704144359, 0.0152959106, -0.0250089373, 0.00349731278, 0.999681175),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.437357485, 1.16628623, 0.583143175),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1072 = Create("CylinderMesh",{
["Parent"] = o1071,
["Offset"] = Vector3.new(0, 0.5, 0),
["Scale"] = Vector3.new(1, 2.5, 1),
})
o1073 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Smoky grey"),
["Position"] = Vector3.new(4.08644199, 9.33916855, 70.8895187),
["Rotation"] = Vector3.new(-99.6991119, 82.5354691, 8.89665413),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.08644199, 9.33916855, 70.8895187, 0.128349677, -0.0200913437, 0.991525471, -0.991649032, -0.0152968867, 0.128055707, 0.012594441, -0.999681115, -0.0218869131),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.801822066, 0.200000003, 0.874714851),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.356863, 0.364706, 0.411765),
})
o1074 = Create("CylinderMesh",{
["Parent"] = o1073,
["Scale"] = Vector3.new(1, 0.364464492, 1),
})
o1075 = Create("Part",{
["Parent"] = o836,
["Material"] = Enum.Material.Metal,
["BrickColor"] = BrickColor.new("Ghost grey"),
["Position"] = Vector3.new(4.08797932, 9.34034157, 70.9660263),
["Rotation"] = Vector3.new(-99.6991119, 82.5354691, 8.89665413),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.08797932, 9.34034157, 70.9660263, 0.128349677, -0.0200913437, 0.991525471, -0.991649032, -0.0152968867, 0.128055707, 0.012594441, -0.999681115, -0.0218869131),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.09339368, 0.200000003, 1.89521527),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.792157, 0.796079, 0.819608),
})
o1076 = Create("CylinderMesh",{
["Parent"] = o1075,
["Scale"] = Vector3.new(1, 0.400911003, 1),
})
o1077 = Create("Part",{
["Name"] = "Knee",
["Parent"] = o836,
["BrickColor"] = BrickColor.new("Black"),
["Transparency"] = 1,
["Position"] = Vector3.new(4.11499977, 9.35999966, 72.2350006),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.11499977, 9.35999966, 72.2350006, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["FrontSurface"] = Enum.SurfaceType.Motor,
["TopSurface"] = Enum.SurfaceType.Hinge,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o1078 = Create("Script",{
["Parent"] = o1077,
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
end,o1078)
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
