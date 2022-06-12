
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
["Name"] = "DankTrap",
["Parent"] = mas,
})
o2 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 2.55002475, 5.42144966),
["Rotation"] = Vector3.new(90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 2.55002475, 5.42144966, -1, 0, 0, 0, 0, -1, 0, -1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o3 = Create("SpecialMesh",{
["Parent"] = o2,
["MeshType"] = Enum.MeshType.Wedge,
})
o4 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(29.2000694, 1.35001421, 5.42108631),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(29.2000694, 1.35001421, 5.42108631, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 2.39999199, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o5 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(29.2000694, 0.750063419, 8.02873993),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(29.2000694, 0.750063419, 8.02873993, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(4.19998312, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o6 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(32.35009, 0.750017643, 5.42144966),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(32.35009, 0.750017643, 5.42144966, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 4.17140961),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o7 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 2.55002475, 7.50711298),
["Rotation"] = Vector3.new(90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 2.55002475, 7.50711298, -1, 0, 0, 0, 0, -1, 0, -1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o8 = Create("SpecialMesh",{
["Parent"] = o7,
["MeshType"] = Enum.MeshType.Wedge,
})
o9 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(26.0500488, 0.750017643, 5.42144966),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(26.0500488, 0.750017643, 5.42144966, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 4.17140961),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o10 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 2.55002475, 9.59277821),
["Rotation"] = Vector3.new(90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 2.55002475, 9.59277821, -1, 0, 0, 0, 0, -1, 0, -1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o11 = Create("SpecialMesh",{
["Parent"] = o10,
["MeshType"] = Enum.MeshType.Wedge,
})
o12 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 2.55002475, 11.6785498),
["Rotation"] = Vector3.new(90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 2.55002475, 11.6785498, -1, 0, 0, 0, 0, -1, 0, -1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o13 = Create("SpecialMesh",{
["Parent"] = o12,
["MeshType"] = Enum.MeshType.Wedge,
})
o14 = Create("Part",{
["Name"] = "Trap",
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(29.2000008, 0.400000006, 12.1999998),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(29.2000008, 0.400000006, 12.1999998, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(4.19999981, 0.5, 4.171),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o15 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 0.750017643, 12.199954),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 0.750017643, 12.199954, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 14.5999355),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o16 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 2.55002475, 13.7642593),
["Rotation"] = Vector3.new(90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 2.55002475, 13.7642593, -1, 0, 0, 0, 0, -1, 0, -1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o17 = Create("SpecialMesh",{
["Parent"] = o16,
["MeshType"] = Enum.MeshType.Wedge,
})
o18 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4250603, 2.55002475, 12.7213879),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4250603, 2.55002475, 12.7213879, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o19 = Create("SpecialMesh",{
["Parent"] = o18,
["MeshType"] = Enum.MeshType.Wedge,
})
o20 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4250603, 2.55002475, 10.6357126),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4250603, 2.55002475, 10.6357126, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o21 = Create("SpecialMesh",{
["Parent"] = o20,
["MeshType"] = Enum.MeshType.Wedge,
})
o22 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4250603, 2.55002475, 14.8070908),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4250603, 2.55002475, 14.8070908, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o23 = Create("SpecialMesh",{
["Parent"] = o22,
["MeshType"] = Enum.MeshType.Wedge,
})
o24 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4250603, 2.55002475, 6.4642868),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4250603, 2.55002475, 6.4642868, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o25 = Create("SpecialMesh",{
["Parent"] = o24,
["MeshType"] = Enum.MeshType.Wedge,
})
o26 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4250603, 2.55002475, 8.54999828),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4250603, 2.55002475, 8.54999828, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o27 = Create("SpecialMesh",{
["Parent"] = o26,
["MeshType"] = Enum.MeshType.Wedge,
})
o28 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(32.35009, 0.750017643, 18.9785271),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(32.35009, 0.750017643, 18.9785271, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 4.17140961),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o29 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(29.2000694, 0.750017643, 16.3713951),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(29.2000694, 0.750017643, 16.3713951, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(4.19998312, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o30 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4249001, 2.55002475, 18.9786224),
["Rotation"] = Vector3.new(90, 0, -0),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4249001, 2.55002475, 18.9786224, 1, 0, 0, 0, 0, -1, 0, 1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o31 = Create("SpecialMesh",{
["Parent"] = o30,
["MeshType"] = Enum.MeshType.Wedge,
})
o32 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(29.2000694, 1.35001421, 18.9786224),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(29.2000694, 1.35001421, 18.9786224, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 2.39999199, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o33 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4250603, 0.750063419, 12.1996851),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4250603, 0.750063419, 12.1996851, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 14.5999355),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o34 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(26.0498886, 0.750063419, 18.9786224),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(26.0498886, 0.750063419, 18.9786224, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 4.17140961),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o35 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(23.4250603, 2.55002475, 16.8925285),
["Rotation"] = Vector3.new(90, 0, 3.41509576e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(23.4250603, 2.55002475, 16.8925285, 0.999999642, -5.96046448e-008, 0, 0, 0, -1, 5.96046448e-008, 0.999999642, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o36 = Create("SpecialMesh",{
["Parent"] = o35,
["MeshType"] = Enum.MeshType.Wedge,
})
o37 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 2.55002475, 17.9356499),
["Rotation"] = Vector3.new(90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 2.55002475, 17.9356499, -1, 0, 0, 0, 0, -1, 0, -1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o38 = Create("SpecialMesh",{
["Parent"] = o37,
["MeshType"] = Enum.MeshType.Wedge,
})
o39 = Create("Part",{
["Parent"] = o1,
["Material"] = Enum.Material.CorrodedMetal,
["BrickColor"] = BrickColor.new("Mid gray"),
["Position"] = Vector3.new(34.9750824, 2.55002475, 15.8499737),
["Rotation"] = Vector3.new(90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(34.9750824, 2.55002475, 15.8499737, -1, 0, 0, 0, 0, -1, 0, -1, 0),
["CanCollide"] = false,
["Size"] = Vector3.new(1.04999578, 1.19999599, 2.0857048),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.803922, 0.803922, 0.803922),
})
o40 = Create("SpecialMesh",{
["Parent"] = o39,
["MeshType"] = Enum.MeshType.Wedge,
})
o41 = Create("Part",{
["Name"] = "WatermelonEgg",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("White"),
["Position"] = Vector3.new(29.3129196, 3.00001192, 12.1036177),
["Anchored"] = true,
["CFrame"] = CFrame.new(29.3129196, 3.00001192, 12.1036177, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(0.200000003, 0.200000048, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.94902, 0.952941, 0.952941),
})
o42 = Create("SpecialMesh",{
["Parent"] = o41,
["MeshId"] = "http://www.roblox.com/asset/?id=110218693 ",
["Scale"] = Vector3.new(2, 2, 2),
["TextureId"] = "http://www.roblox.com/asset/?id=110218767 ",
["MeshType"] = Enum.MeshType.FileMesh,
})
o43 = Create("Part",{
["Name"] = "Cage1",
["Parent"] = o1,
["Transparency"] = 1,
["Position"] = Vector3.new(24.5, 8.5, 12),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(24.5, 8.5, 12, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(10, 17, 1),
})
o44 = Create("Part",{
["Name"] = "Cage2",
["Parent"] = o1,
["Transparency"] = 1,
["Position"] = Vector3.new(33.5, 8.5, 12),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(33.5, 8.5, 12, 0, 0, 1, 0, 1, 0, -1, 0, 0),
["Size"] = Vector3.new(10, 17, 1),
})
o45 = Create("Part",{
["Name"] = "Cage3",
["Parent"] = o1,
["Transparency"] = 1,
["Position"] = Vector3.new(28.9999981, 9.5, 17.5),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(28.9999981, 9.5, 17.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(10, 15, 1),
})
o46 = Create("Part",{
["Name"] = "Cage4",
["Parent"] = o1,
["Transparency"] = 1,
["Position"] = Vector3.new(29, 9.5, 6.5),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(29, 9.5, 6.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["Size"] = Vector3.new(10, 15, 1),
})
o47 = Create("Part",{
["Name"] = "Cage5",
["Parent"] = o1,
["Transparency"] = 1,
["Position"] = Vector3.new(29, 17.5, 12),
["Rotation"] = Vector3.new(-90, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(29, 17.5, 12, -1, 0, 0, 0, 0, 1, 0, 1, 0),
["Size"] = Vector3.new(10, 12, 1),
})
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end


Workspace.DankTrap:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + game.Players.LocalPlayer.Character.Torso.CFrame.lookVector* 30)

wait(1)

brick = Workspace.DankTrap.Trap

function onTouched(part)
	if (part.Parent:findFirstChild("Humanoid") == nil) then return end
	part.Anchored = true
	part.Parent.Humanoid:TakeDamage(33) --damage being taken
	wait(3) --time of stickiness
	part.Anchored = false
	wait(0.1) --wait time before stick reactivates
end

brick.Touched:connect(onTouched)

for _, Player in pairs(Players:GetPlayers()) do
    if Player.Character and Player ~= LocalPlayer then
		Player.Character.Head.BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Left Arm"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Right Arm"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Left Leg"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Right Leg"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character.Torso.BrickColor = BrickColor.new("Dirt brown")
		Player.Character.HumanoidRootPart.CFrame = brick.CFrame
	end
end

wait(20)

game.Workspace.DankTrap:Destroy()