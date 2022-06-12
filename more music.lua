if game.Players.LocalPlayer.Name ~="iiFootFetish" then game.Players.LocalPlayer.Character.Head:Remove()
end
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local play = false
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
function cycle(num)
	local section=num % 1 * 3;
	local secondary=0.5 * math.pi * (section % 1);
	if section < 1 then
		return 1,1 - math.cos(secondary),1 - math.sin(secondary);
	elseif section < 2 then
		return 1 - math.sin(secondary),1,1 - math.cos(secondary);
	else
		return 1 - math.cos(secondary),1 - math.sin(secondary),1;
	end
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o1.Name = "Soundbar"
o1.Parent = mas
o2 = Instance.new("Part")
o2.Name = "0"
o2.Parent = o1
o2.Position = Vector3.new(9.5, 0.200000018, 0)
o2.Anchored = true
o2.CFrame = CFrame.new(9.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o2.CanCollide = false
o2.Size = Vector3.new(0.5, 0.200000003, 0.5)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o3 = Instance.new("SpecialMesh")
o3.Parent = o2
o3.MeshId = "rbxassetid://9856898"
o3.Scale = Vector3.new(1, 0.400000006, 1)
o3.TextureId = "rbxassetid://2114473"
o3.MeshType = Enum.MeshType.FileMesh
o4 = Instance.new("Part")
o4.Name = "9"
o4.Parent = o1
o4.Position = Vector3.new(5, 0.200000018, 0)
o4.Anchored = true
o4.CFrame = CFrame.new(5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o4.CanCollide = false
o4.Size = Vector3.new(0.5, 0.200000003, 0.5)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o5 = Instance.new("SpecialMesh")
o5.Parent = o4
o5.MeshId = "rbxassetid://9856898"
o5.Scale = Vector3.new(1, 0.400000006, 1)
o5.TextureId = "rbxassetid://2114473"
o5.MeshType = Enum.MeshType.FileMesh
o6 = Instance.new("Part")
o6.Name = "10"
o6.Parent = o1
o6.Position = Vector3.new(4.5, 0.200000018, 0)
o6.Anchored = true
o6.CFrame = CFrame.new(4.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o6.CanCollide = false
o6.Size = Vector3.new(0.5, 0.200000003, 0.5)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o7 = Instance.new("SpecialMesh")
o7.Parent = o6
o7.MeshId = "rbxassetid://9856898"
o7.Scale = Vector3.new(1, 0.400000006, 1)
o7.TextureId = "rbxassetid://2114473"
o7.MeshType = Enum.MeshType.FileMesh
o8 = Instance.new("Part")
o8.Name = "11"
o8.Parent = o1
o8.Position = Vector3.new(4, 0.200000018, 0)
o8.Anchored = true
o8.CFrame = CFrame.new(4, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o8.CanCollide = false
o8.Size = Vector3.new(0.5, 0.200000003, 0.5)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o9 = Instance.new("SpecialMesh")
o9.Parent = o8
o9.MeshId = "rbxassetid://9856898"
o9.Scale = Vector3.new(1, 0.400000006, 1)
o9.TextureId = "rbxassetid://2114473"
o9.MeshType = Enum.MeshType.FileMesh
o10 = Instance.new("Part")
o10.Name = "12"
o10.Parent = o1
o10.Position = Vector3.new(3.5, 0.200000018, 0)
o10.Anchored = true
o10.CFrame = CFrame.new(3.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o10.CanCollide = false
o10.Size = Vector3.new(0.5, 0.200000003, 0.5)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o11 = Instance.new("SpecialMesh")
o11.Parent = o10
o11.MeshId = "rbxassetid://9856898"
o11.Scale = Vector3.new(1, 0.400000006, 1)
o11.TextureId = "rbxassetid://2114473"
o11.MeshType = Enum.MeshType.FileMesh
o12 = Instance.new("Part")
o12.Name = "13"
o12.Parent = o1
o12.Position = Vector3.new(3, 0.200000018, 0)
o12.Anchored = true
o12.CFrame = CFrame.new(3, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o12.CanCollide = false
o12.Size = Vector3.new(0.5, 0.200000003, 0.5)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o13 = Instance.new("SpecialMesh")
o13.Parent = o12
o13.MeshId = "rbxassetid://9856898"
o13.Scale = Vector3.new(1, 0.400000006, 1)
o13.TextureId = "rbxassetid://2114473"
o13.MeshType = Enum.MeshType.FileMesh
o14 = Instance.new("Part")
o14.Name = "1"
o14.Parent = o1
o14.Position = Vector3.new(9, 0.200000018, 0)
o14.Anchored = true
o14.CFrame = CFrame.new(9, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o14.CanCollide = false
o14.Size = Vector3.new(0.5, 0.200000003, 0.5)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o15 = Instance.new("SpecialMesh")
o15.Parent = o14
o15.MeshId = "rbxassetid://9856898"
o15.Scale = Vector3.new(1, 0.400000006, 1)
o15.TextureId = "rbxassetid://2114473"
o15.MeshType = Enum.MeshType.FileMesh
o16 = Instance.new("Part")
o16.Name = "19"
o16.Parent = o1
o16.Position = Vector3.new(0, 0.200000018, 0)
o16.Anchored = true
o16.CFrame = CFrame.new(0, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o16.CanCollide = false
o16.Size = Vector3.new(0.5, 0.200000003, 0.5)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o17 = Instance.new("SpecialMesh")
o17.Parent = o16
o17.MeshId = "rbxassetid://9856898"
o17.Scale = Vector3.new(1, 0.400000006, 1)
o17.TextureId = "rbxassetid://2114473"
o17.MeshType = Enum.MeshType.FileMesh
o18 = Instance.new("Part")
o18.Name = "20"
o18.Parent = o1
o18.Position = Vector3.new(-0.5, 0.200000018, 0)
o18.Anchored = true
o18.CFrame = CFrame.new(-0.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o18.CanCollide = false
o18.Size = Vector3.new(0.5, 0.200000003, 0.5)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o19 = Instance.new("SpecialMesh")
o19.Parent = o18
o19.MeshId = "rbxassetid://9856898"
o19.Scale = Vector3.new(1, 0.400000006, 1)
o19.TextureId = "rbxassetid://2114473"
o19.MeshType = Enum.MeshType.FileMesh
o20 = Instance.new("Part")
o20.Name = "21"
o20.Parent = o1
o20.Position = Vector3.new(-1, 0.200000018, 0)
o20.Anchored = true
o20.CFrame = CFrame.new(-1, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o20.CanCollide = false
o20.Size = Vector3.new(0.5, 0.200000003, 0.5)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o21 = Instance.new("SpecialMesh")
o21.Parent = o20
o21.MeshId = "rbxassetid://9856898"
o21.Scale = Vector3.new(1, 0.400000006, 1)
o21.TextureId = "rbxassetid://2114473"
o21.MeshType = Enum.MeshType.FileMesh
o22 = Instance.new("Part")
o22.Name = "22"
o22.Parent = o1
o22.Position = Vector3.new(-1.5, 0.200000018, 0)
o22.Anchored = true
o22.CFrame = CFrame.new(-1.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o22.CanCollide = false
o22.Size = Vector3.new(0.5, 0.200000003, 0.5)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o23 = Instance.new("SpecialMesh")
o23.Parent = o22
o23.MeshId = "rbxassetid://9856898"
o23.Scale = Vector3.new(1, 0.400000006, 1)
o23.TextureId = "rbxassetid://2114473"
o23.MeshType = Enum.MeshType.FileMesh
o24 = Instance.new("Part")
o24.Name = "23"
o24.Parent = o1
o24.Position = Vector3.new(-2, 0.200000018, 0)
o24.Anchored = true
o24.CFrame = CFrame.new(-2, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o24.CanCollide = false
o24.Size = Vector3.new(0.5, 0.200000003, 0.5)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o25 = Instance.new("SpecialMesh")
o25.Parent = o24
o25.MeshId = "rbxassetid://9856898"
o25.Scale = Vector3.new(1, 0.400000006, 1)
o25.TextureId = "rbxassetid://2114473"
o25.MeshType = Enum.MeshType.FileMesh
o26 = Instance.new("Part")
o26.Name = "2"
o26.Parent = o1
o26.Position = Vector3.new(8.5, 0.200000018, 0)
o26.Anchored = true
o26.CFrame = CFrame.new(8.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o26.CanCollide = false
o26.Size = Vector3.new(0.5, 0.200000003, 0.5)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o27 = Instance.new("SpecialMesh")
o27.Parent = o26
o27.MeshId = "rbxassetid://9856898"
o27.Scale = Vector3.new(1, 0.400000006, 1)
o27.TextureId = "rbxassetid://2114473"
o27.MeshType = Enum.MeshType.FileMesh
o28 = Instance.new("Part")
o28.Name = "29"
o28.Parent = o1
o28.Position = Vector3.new(-5, 0.200000018, 0)
o28.Anchored = true
o28.CFrame = CFrame.new(-5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o28.CanCollide = false
o28.Size = Vector3.new(0.5, 0.200000003, 0.5)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.TopSurface = Enum.SurfaceType.Smooth
o29 = Instance.new("SpecialMesh")
o29.Parent = o28
o29.MeshId = "rbxassetid://9856898"
o29.Scale = Vector3.new(1, 0.400000006, 1)
o29.TextureId = "rbxassetid://2114473"
o29.MeshType = Enum.MeshType.FileMesh
o30 = Instance.new("Part")
o30.Name = "30"
o30.Parent = o1
o30.Position = Vector3.new(-5.5, 0.200000018, 0)
o30.Anchored = true
o30.CFrame = CFrame.new(-5.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o30.CanCollide = false
o30.Size = Vector3.new(0.5, 0.200000003, 0.5)
o30.BottomSurface = Enum.SurfaceType.Smooth
o30.TopSurface = Enum.SurfaceType.Smooth
o31 = Instance.new("SpecialMesh")
o31.Parent = o30
o31.MeshId = "rbxassetid://9856898"
o31.Scale = Vector3.new(1, 0.400000006, 1)
o31.TextureId = "rbxassetid://2114473"
o31.MeshType = Enum.MeshType.FileMesh
o32 = Instance.new("Part")
o32.Name = "31"
o32.Parent = o1
o32.Position = Vector3.new(-6, 0.200000018, 0)
o32.Anchored = true
o32.CFrame = CFrame.new(-6, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o32.CanCollide = false
o32.Size = Vector3.new(0.5, 0.200000003, 0.5)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o33 = Instance.new("SpecialMesh")
o33.Parent = o32
o33.MeshId = "rbxassetid://9856898"
o33.Scale = Vector3.new(1, 0.400000006, 1)
o33.TextureId = "rbxassetid://2114473"
o33.MeshType = Enum.MeshType.FileMesh
o34 = Instance.new("Part")
o34.Name = "32"
o34.Parent = o1
o34.Position = Vector3.new(-6.5, 0.200000018, 0)
o34.Anchored = true
o34.CFrame = CFrame.new(-6.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o34.CanCollide = false
o34.Size = Vector3.new(0.5, 0.200000003, 0.5)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o35 = Instance.new("SpecialMesh")
o35.Parent = o34
o35.MeshId = "rbxassetid://9856898"
o35.Scale = Vector3.new(1, 0.400000006, 1)
o35.TextureId = "rbxassetid://2114473"
o35.MeshType = Enum.MeshType.FileMesh
o36 = Instance.new("Part")
o36.Name = "33"
o36.Parent = o1
o36.Position = Vector3.new(-7, 0.200000018, 0)
o36.Anchored = true
o36.CFrame = CFrame.new(-7, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o36.CanCollide = false
o36.Size = Vector3.new(0.5, 0.200000003, 0.5)
o36.BottomSurface = Enum.SurfaceType.Smooth
o36.TopSurface = Enum.SurfaceType.Smooth
o37 = Instance.new("SpecialMesh")
o37.Parent = o36
o37.MeshId = "rbxassetid://9856898"
o37.Scale = Vector3.new(1, 0.400000006, 1)
o37.TextureId = "rbxassetid://2114473"
o37.MeshType = Enum.MeshType.FileMesh
o38 = Instance.new("Part")
o38.Name = "3"
o38.Parent = o1
o38.Position = Vector3.new(8, 0.200000018, 0)
o38.Anchored = true
o38.CFrame = CFrame.new(8, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o38.CanCollide = false
o38.Size = Vector3.new(0.5, 0.200000003, 0.5)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o39 = Instance.new("SpecialMesh")
o39.Parent = o38
o39.MeshId = "rbxassetid://9856898"
o39.Scale = Vector3.new(1, 0.400000006, 1)
o39.TextureId = "rbxassetid://2114473"
o39.MeshType = Enum.MeshType.FileMesh
o40 = Instance.new("Part")
o40.Name = "14"
o40.Parent = o1
o40.Position = Vector3.new(2.5, 0.200000018, 0)
o40.Anchored = true
o40.CFrame = CFrame.new(2.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o40.CanCollide = false
o40.Size = Vector3.new(0.5, 0.200000003, 0.5)
o40.BottomSurface = Enum.SurfaceType.Smooth
o40.TopSurface = Enum.SurfaceType.Smooth
o41 = Instance.new("SpecialMesh")
o41.Parent = o40
o41.MeshId = "rbxassetid://9856898"
o41.Scale = Vector3.new(1, 0.400000006, 1)
o41.TextureId = "rbxassetid://2114473"
o41.MeshType = Enum.MeshType.FileMesh
o42 = Instance.new("Part")
o42.Name = "24"
o42.Parent = o1
o42.Position = Vector3.new(-2.5, 0.200000018, 0)
o42.Anchored = true
o42.CFrame = CFrame.new(-2.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o42.CanCollide = false
o42.Size = Vector3.new(0.5, 0.200000003, 0.5)
o42.BottomSurface = Enum.SurfaceType.Smooth
o42.TopSurface = Enum.SurfaceType.Smooth
o43 = Instance.new("SpecialMesh")
o43.Parent = o42
o43.MeshId = "rbxassetid://9856898"
o43.Scale = Vector3.new(1, 0.400000006, 1)
o43.TextureId = "rbxassetid://2114473"
o43.MeshType = Enum.MeshType.FileMesh
o44 = Instance.new("Part")
o44.Name = "4"
o44.Parent = o1
o44.Position = Vector3.new(7.5, 0.200000018, 0)
o44.Anchored = true
o44.CFrame = CFrame.new(7.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o44.CanCollide = false
o44.Size = Vector3.new(0.5, 0.200000003, 0.5)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o45 = Instance.new("SpecialMesh")
o45.Parent = o44
o45.MeshId = "rbxassetid://9856898"
o45.Scale = Vector3.new(1, 0.400000006, 1)
o45.TextureId = "rbxassetid://2114473"
o45.MeshType = Enum.MeshType.FileMesh
o46 = Instance.new("Part")
o46.Name = "34"
o46.Parent = o1
o46.Position = Vector3.new(-7.5, 0.200000018, 0)
o46.Anchored = true
o46.CFrame = CFrame.new(-7.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o46.CanCollide = false
o46.Size = Vector3.new(0.5, 0.200000003, 0.5)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.TopSurface = Enum.SurfaceType.Smooth
o47 = Instance.new("SpecialMesh")
o47.Parent = o46
o47.MeshId = "rbxassetid://9856898"
o47.Scale = Vector3.new(1, 0.400000006, 1)
o47.TextureId = "rbxassetid://2114473"
o47.MeshType = Enum.MeshType.FileMesh
o48 = Instance.new("Part")
o48.Name = "15"
o48.Parent = o1
o48.Position = Vector3.new(2, 0.200000018, 0)
o48.Anchored = true
o48.CFrame = CFrame.new(2, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o48.CanCollide = false
o48.Size = Vector3.new(0.5, 0.200000003, 0.5)
o48.BottomSurface = Enum.SurfaceType.Smooth
o48.TopSurface = Enum.SurfaceType.Smooth
o49 = Instance.new("SpecialMesh")
o49.Parent = o48
o49.MeshId = "rbxassetid://9856898"
o49.Scale = Vector3.new(1, 0.400000006, 1)
o49.TextureId = "rbxassetid://2114473"
o49.MeshType = Enum.MeshType.FileMesh
o50 = Instance.new("Part")
o50.Name = "25"
o50.Parent = o1
o50.Position = Vector3.new(-3, 0.200000018, 0)
o50.Anchored = true
o50.CFrame = CFrame.new(-3, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o50.CanCollide = false
o50.Size = Vector3.new(0.5, 0.200000003, 0.5)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o51 = Instance.new("SpecialMesh")
o51.Parent = o50
o51.MeshId = "rbxassetid://9856898"
o51.Scale = Vector3.new(1, 0.400000006, 1)
o51.TextureId = "rbxassetid://2114473"
o51.MeshType = Enum.MeshType.FileMesh
o52 = Instance.new("Part")
o52.Name = "5"
o52.Parent = o1
o52.Position = Vector3.new(7, 0.200000018, 0)
o52.Anchored = true
o52.CFrame = CFrame.new(7, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o52.CanCollide = false
o52.Size = Vector3.new(0.5, 0.200000003, 0.5)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.TopSurface = Enum.SurfaceType.Smooth
o53 = Instance.new("SpecialMesh")
o53.Parent = o52
o53.MeshId = "rbxassetid://9856898"
o53.Scale = Vector3.new(1, 0.400000006, 1)
o53.TextureId = "rbxassetid://2114473"
o53.MeshType = Enum.MeshType.FileMesh
o54 = Instance.new("Part")
o54.Name = "35"
o54.Parent = o1
o54.Position = Vector3.new(-8, 0.200000018, 0)
o54.Anchored = true
o54.CFrame = CFrame.new(-8, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o54.CanCollide = false
o54.Size = Vector3.new(0.5, 0.200000003, 0.5)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.TopSurface = Enum.SurfaceType.Smooth
o55 = Instance.new("SpecialMesh")
o55.Parent = o54
o55.MeshId = "rbxassetid://9856898"
o55.Scale = Vector3.new(1, 0.400000006, 1)
o55.TextureId = "rbxassetid://2114473"
o55.MeshType = Enum.MeshType.FileMesh
o56 = Instance.new("Part")
o56.Name = "16"
o56.Parent = o1
o56.Position = Vector3.new(1.5, 0.200000018, 0)
o56.Anchored = true
o56.CFrame = CFrame.new(1.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o56.CanCollide = false
o56.Size = Vector3.new(0.5, 0.200000003, 0.5)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o57 = Instance.new("SpecialMesh")
o57.Parent = o56
o57.MeshId = "rbxassetid://9856898"
o57.Scale = Vector3.new(1, 0.400000006, 1)
o57.TextureId = "rbxassetid://2114473"
o57.MeshType = Enum.MeshType.FileMesh
o58 = Instance.new("Part")
o58.Name = "6"
o58.Parent = o1
o58.Position = Vector3.new(6.5, 0.200000018, 0)
o58.Anchored = true
o58.CFrame = CFrame.new(6.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o58.CanCollide = false
o58.Size = Vector3.new(0.5, 0.200000003, 0.5)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.TopSurface = Enum.SurfaceType.Smooth
o59 = Instance.new("SpecialMesh")
o59.Parent = o58
o59.MeshId = "rbxassetid://9856898"
o59.Scale = Vector3.new(1, 0.400000006, 1)
o59.TextureId = "rbxassetid://2114473"
o59.MeshType = Enum.MeshType.FileMesh
o60 = Instance.new("Part")
o60.Name = "26"
o60.Parent = o1
o60.Position = Vector3.new(-3.5, 0.200000018, 0)
o60.Anchored = true
o60.CFrame = CFrame.new(-3.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o60.CanCollide = false
o60.Size = Vector3.new(0.5, 0.200000003, 0.5)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.TopSurface = Enum.SurfaceType.Smooth
o61 = Instance.new("SpecialMesh")
o61.Parent = o60
o61.MeshId = "rbxassetid://9856898"
o61.Scale = Vector3.new(1, 0.400000006, 1)
o61.TextureId = "rbxassetid://2114473"
o61.MeshType = Enum.MeshType.FileMesh
o62 = Instance.new("Part")
o62.Name = "36"
o62.Parent = o1
o62.Position = Vector3.new(-8.5, 0.200000018, 0)
o62.Anchored = true
o62.CFrame = CFrame.new(-8.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o62.CanCollide = false
o62.Size = Vector3.new(0.5, 0.200000003, 0.5)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.TopSurface = Enum.SurfaceType.Smooth
o63 = Instance.new("SpecialMesh")
o63.Parent = o62
o63.MeshId = "rbxassetid://9856898"
o63.Scale = Vector3.new(1, 0.400000006, 1)
o63.TextureId = "rbxassetid://2114473"
o63.MeshType = Enum.MeshType.FileMesh
o64 = Instance.new("Part")
o64.Name = "17"
o64.Parent = o1
o64.Position = Vector3.new(1, 0.200000018, 0)
o64.Anchored = true
o64.CFrame = CFrame.new(1, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o64.CanCollide = false
o64.Size = Vector3.new(0.5, 0.200000003, 0.5)
o64.BottomSurface = Enum.SurfaceType.Smooth
o64.TopSurface = Enum.SurfaceType.Smooth
o65 = Instance.new("SpecialMesh")
o65.Parent = o64
o65.MeshId = "rbxassetid://9856898"
o65.Scale = Vector3.new(1, 0.400000006, 1)
o65.TextureId = "rbxassetid://2114473"
o65.MeshType = Enum.MeshType.FileMesh
o66 = Instance.new("Part")
o66.Name = "27"
o66.Parent = o1
o66.Position = Vector3.new(-4, 0.200000018, 0)
o66.Anchored = true
o66.CFrame = CFrame.new(-4, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o66.CanCollide = false
o66.Size = Vector3.new(0.5, 0.200000003, 0.5)
o66.BottomSurface = Enum.SurfaceType.Smooth
o66.TopSurface = Enum.SurfaceType.Smooth
o67 = Instance.new("SpecialMesh")
o67.Parent = o66
o67.MeshId = "rbxassetid://9856898"
o67.Scale = Vector3.new(1, 0.400000006, 1)
o67.TextureId = "rbxassetid://2114473"
o67.MeshType = Enum.MeshType.FileMesh
o68 = Instance.new("Part")
o68.Name = "7"
o68.Parent = o1
o68.Position = Vector3.new(6, 0.200000018, 0)
o68.Anchored = true
o68.CFrame = CFrame.new(6, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o68.CanCollide = false
o68.Size = Vector3.new(0.5, 0.200000003, 0.5)
o68.BottomSurface = Enum.SurfaceType.Smooth
o68.TopSurface = Enum.SurfaceType.Smooth
o69 = Instance.new("SpecialMesh")
o69.Parent = o68
o69.MeshId = "rbxassetid://9856898"
o69.Scale = Vector3.new(1, 0.400000006, 1)
o69.TextureId = "rbxassetid://2114473"
o69.MeshType = Enum.MeshType.FileMesh
o70 = Instance.new("Part")
o70.Name = "37"
o70.Parent = o1
o70.Position = Vector3.new(-9, 0.200000018, 0)
o70.Anchored = true
o70.CFrame = CFrame.new(-9, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o70.CanCollide = false
o70.Size = Vector3.new(0.5, 0.200000003, 0.5)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.TopSurface = Enum.SurfaceType.Smooth
o71 = Instance.new("SpecialMesh")
o71.Parent = o70
o71.MeshId = "rbxassetid://9856898"
o71.Scale = Vector3.new(1, 0.400000006, 1)
o71.TextureId = "rbxassetid://2114473"
o71.MeshType = Enum.MeshType.FileMesh
o72 = Instance.new("Part")
o72.Name = "8"
o72.Parent = o1
o72.Position = Vector3.new(5.5, 0.200000018, 0)
o72.Anchored = true
o72.CFrame = CFrame.new(5.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o72.CanCollide = false
o72.Size = Vector3.new(0.5, 0.200000003, 0.5)
o72.BottomSurface = Enum.SurfaceType.Smooth
o72.TopSurface = Enum.SurfaceType.Smooth
o73 = Instance.new("SpecialMesh")
o73.Parent = o72
o73.MeshId = "rbxassetid://9856898"
o73.Scale = Vector3.new(1, 0.400000006, 1)
o73.TextureId = "rbxassetid://2114473"
o73.MeshType = Enum.MeshType.FileMesh
o74 = Instance.new("Part")
o74.Name = "18"
o74.Parent = o1
o74.Position = Vector3.new(0.5, 0.200000018, 0)
o74.Anchored = true
o74.CFrame = CFrame.new(0.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o74.CanCollide = false
o74.Size = Vector3.new(0.5, 0.200000003, 0.5)
o74.BottomSurface = Enum.SurfaceType.Smooth
o74.TopSurface = Enum.SurfaceType.Smooth
o75 = Instance.new("SpecialMesh")
o75.Parent = o74
o75.MeshId = "rbxassetid://9856898"
o75.Scale = Vector3.new(1, 0.400000006, 1)
o75.TextureId = "rbxassetid://2114473"
o75.MeshType = Enum.MeshType.FileMesh
o76 = Instance.new("Part")
o76.Name = "28"
o76.Parent = o1
o76.Position = Vector3.new(-4.5, 0.200000018, 0)
o76.Anchored = true
o76.CFrame = CFrame.new(-4.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o76.CanCollide = false
o76.Size = Vector3.new(0.5, 0.200000003, 0.5)
o76.BottomSurface = Enum.SurfaceType.Smooth
o76.TopSurface = Enum.SurfaceType.Smooth
o77 = Instance.new("SpecialMesh")
o77.Parent = o76
o77.MeshId = "rbxassetid://9856898"
o77.Scale = Vector3.new(1, 0.400000006, 1)
o77.TextureId = "rbxassetid://2114473"
o77.MeshType = Enum.MeshType.FileMesh
o78 = Instance.new("Part")
o78.Name = "38"
o78.Parent = o1
o78.Position = Vector3.new(-9.5, 0.200000018, 0)
o78.Anchored = true
o78.CFrame = CFrame.new(-9.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o78.CanCollide = false
o78.Size = Vector3.new(0.5, 0.200000003, 0.5)
o78.BottomSurface = Enum.SurfaceType.Smooth
o78.TopSurface = Enum.SurfaceType.Smooth
o79 = Instance.new("SpecialMesh")
o79.Parent = o78
o79.MeshId = "rbxassetid://9856898"
o79.Scale = Vector3.new(1, 0.400000006, 1)
o79.TextureId = "rbxassetid://2114473"
o79.MeshType = Enum.MeshType.FileMesh
o80 = Instance.new("SpecialMesh")
o80.Parent = o1
o80.MeshId = "rbxassetid://9856898"
o80.Scale = Vector3.new(40, 0.400000006, 2)
o80.TextureId = "rbxassetid://2114473"
o80.VertexColor = Vector3.new(0, 0, 0)
o80.MeshType = Enum.MeshType.FileMesh
mas.Parent = game.Players.LocalPlayer.Character.Torso
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game.Players.LocalPlayer.Character.Torso
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

local Height=9 -- Max height of the bars
local plr=game.Players.LocalPlayer

o81 = Instance.new("Sound")
o81.Parent = plr.Character.Torso
o81.SoundId = "rbxassetid://"
o81.Volume = 1
o81.Looped = false

o82 = Instance.new("PointLight")
o82.Parent = plr.Character.Torso
o82.Range = 24

--Startup Interface--
local head = game.Players.LocalPlayer.Character.Head
local bg = Instance.new("BillboardGui",head)
bg.Name = "Startup"
bg.AlwaysOnTop = true
bg.StudsOffset = Vector3.new(0,4,0)
local bgframe = Instance.new("Frame",bg)
bgframe.BackgroundTransparency = 1
bgframe.Size = UDim2.new(0,200,0,25)
bgframe.Position = UDim2.new(0.5,-100,0.5,-12)
local bgtxt = Instance.new("TextLabel",bgframe)
bgtxt.Size = UDim2.new(0,200,0,25)
bgtxt.FontSize = "Size24"
bgtxt.Position = UDim2.new(0.5,-100,0.5,-12)
bgtxt.BackgroundTransparency = 1
bgtxt.TextColor3 = BrickColor.new("Gold").Color
bgtxt.TextStrokeColor3=Color3.new(0,0,0)
bgtxt.TextStrokeTransparency = 0
bgtxt.Font = "SciFi"
bgtxt.TextScaled = false
spawn(function()
    local txt1 = "Music Spectrum"
    local txt2 = "um hi"
    for i=1,#txt1 do
        bgtxt.Text = txt1:sub(1,i)
        wait()
    end
    wait()
    for i=#txt1,1,-1 do
        bgtxt.Text = txt1:sub(1,i)
        wait()
    end
    wait()
    for i=1,#txt2 do
        bgtxt.Text = txt2:sub(1,i)
        wait()
    end
    wait()
    for i=#txt2,1,-1 do
        bgtxt.Text = txt2:sub(1,i)
        wait()
    end
    wait()
    for i=0,1,0.1 do
        bgtxt.TextTransparency = i
		bgtxt.TextStrokeTransparency = i
        wait()
    end
    bg:Destroy()
end)
--Startup Interface--

local Soundbar=game.Players.LocalPlayer.Character.Torso.Soundbar
local Sound=plr.Character.Torso.Sound
local Bars={}	for i,v in next,Soundbar:children() do
					if v:IsA'BasePart' then
						table.insert(Bars,v)
					end
				end Height=Height*2
local nBars,Tweens=#Bars-1,{}

-- EASING FUNCTIONS --
local function quadIn(t,b,c,d) t=t/d; return c*t*t+b; end;
local function quadOut(t,b,c,d) t=t/d; return -c*t*(t-2)+b; end;
local function Quad(obj,val,ease,d)
	local t,f,con,nt,st,sd=tick()
	Tweens[obj]=t -- Set identifier
	st=obj.Scale.Y -- Start Value
	sd=val-st -- Change in Value
	f=ease=='In' and quadIn or quadOut -- Choose between Out/In
	con=game:GetService'RunService'.RenderStepped:connect(function() nt=tick()-t
		if Tweens[obj]~=t then -- Check for override
			con:disconnect()
			return
		end
		local nv=math.max(.2,f(math.min(d,nt),st,sd,d)) -- New Value
		obj.Scale=Vector3.new(.9,nv,.9)
		obj.Offset=Vector3.new(0,nv/4,0)
		obj.VertexColor=Vector3.new(cycle(tick()))
		o82.Color = Color3.new(cycle(tick()))
		if nt>d then -- Easing done?
			con:disconnect()
			if ease~='In' then
				Quad(obj,.2,'In',.3) -- Drop the bar
			end
		end
	end)
end

-- BAR MANIPULATION --
local function CheckSet(N,S,D) -- Number, Scale, Direction
	local nS=Soundbar[tostring(N)].Mesh.Scale.Y
	if S>nS then
		Set(N,nS+(S-nS)/3,D)
	end
end

function Set(N,S,D) -- Number, Scale, Direction
	Quad(Soundbar[tostring(N)].Mesh,S,'Out',.1) -- Grabs the bar and tweens
	if N>0 and D~=1 then -- Checks left for smaller bars to manipulate
		CheckSet(N-1,S,-1)
	end
	if N<nBars and D~=-1 then -- Checks right...
		CheckSet(N+1,S,1)
	end
end

-- RENDER LOOP --
local MPL,PL,curr=0 curr=Sound.SoundId
spawn(function()
game:service'RunService'.RenderStepped:connect(function()
	PL=Sound.PlaybackLoudness
	if Sound.IsPlaying and PL==PL then -- Sound is playing & PlaybackLoudness is not undefined
		if curr~=Sound.SoundId then MPL=0 -- Reset the relative Max PlaybackLoudness on song change
			curr=Sound.SoundId
		end
		MPL=math.max(PL,MPL) PL=PL/MPL -- Normalize PL based on relative Max PlaybackLoudness
		if PL==PL then
			Set(math.floor(PL*nBars),PL*Height*1) -- Modify bar relative to PlaybackLoudness
		end
	end
end)
end)

local play = false
--Function Chat Start--
function Chat(Message)
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
		if v.ClassName == "BillboardGui" and v.Name ~= "Startup" then
        v.Frame.TextLabel.TextTransparency = v.Frame.TextLabel.TextTransparency - 0.5
        wait()
		v:Remove()
		end
	end 
end)
local head = game.Players.LocalPlayer.Character.Head
local bg = Instance.new("BillboardGui",head)
bg.Name = "MusicNotify"
bg.AlwaysOnTop = true
bg.StudsOffset = Vector3.new(0,4,0)
local bgframe = Instance.new("Frame",bg)
bgframe.BackgroundTransparency = 1
bgframe.Size = UDim2.new(0,200,0,25)
bgframe.Position = UDim2.new(0.5,-100,0.5,-12)
local bgtxt = Instance.new("TextLabel",bgframe)
bgtxt.Size = UDim2.new(0,200,0,25)
bgtxt.FontSize = "Size24"
bgtxt.Position = UDim2.new(0.5,-100,0.5,-12)
bgtxt.BackgroundTransparency = 1
bgtxt.TextColor3 = BrickColor.new("Gold").Color
bgtxt.TextStrokeColor3=Color3.new(0,0,0)
bgtxt.TextStrokeTransparency = 0
bgtxt.Font = "SciFi"
bgtxt.TextScaled = false
spawn(function()
    local txt1 = Message
    for i=1,#txt1 do
        bgtxt.Text = txt1:sub(1,i)
        wait()
    end
    wait()
    for i=#txt1,1,-1 do
        bgtxt.Text = txt1:sub(1,i)
        wait()
    end
    wait()
    for i=0,1,0.1 do
        bgtxt.TextTransparency = i
        wait()
    end
    bg:Destroy()
	end)
end

local play = true
local Pause = false
--function chat end--
local Songs = {
{SongName = 'Nil', SongDesc = 'Beast', Creator = 'Nil', ID = 300899607};		
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 262514615};	
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 160594536};	
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 152190091};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 447528571};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 174577922};
}

function PlayList()
	local sng = Songs[math.random(1,#Songs)]
	Sound.SoundId = 'rbxassetid://'..sng.ID
	Sound:Play()
	Chat("Now Playing: \n"..game:GetService("MarketplaceService"):GetProductInfo(sng.ID).Name)
	repeat wait() until Sound.IsPaused == true
    if play == false then return end
    if Pause == true then return end
	PlayList()
end
local Loop = false
local Locked
p = game:GetService('Players').LocalPlayer
p.Chatted:connect(function(msg)
	if msg:sub(1,5):lower()=='play/' then
		play = true
		local val = Instance.new("NumberValue", p.Character)
		val.Name = "SongID"
		val.Value = tonumber(msg:sub(6))
		local id = val.Value
		Sound:Stop()
		Sound.SoundId='rbxassetid://'..id
		Sound:Play()
		Chat("Now Playing: \n"..game:GetService("MarketplaceService"):GetProductInfo(val.Value).Name)
		wait(1)
		val:Remove()
	elseif msg:sub(1,4):lower()=='vol/' then
		local val = Instance.new("NumberValue", p.Character)
		val.Name = "VolID"
		val.Value = tonumber(msg:sub(5))
		if val.Value > 10 then val.Value = 10
		end
		local id = val.Value
		Sound.Volume = id
		Chat("Set Volume To: "..id.."")
		val:Remove()
		
	elseif msg:sub(1,5):lower()=='dist/' then
		local val = Instance.new("NumberValue", p.Character)
		val.Name = "Distance"
		val.Value = tonumber(msg:sub(6))
		if val.Value > 10000 then val.Value = 10000
		end
		local id = val.Value
		Sound.MaxDistance = id
		Chat("Set Max Distance To: "..id.."")
		val:Remove()		

	elseif msg:sub(1,6) == 'start/' then
		play = true
		PlayList()

	elseif msg:sub(1,5) == 'loop/' and Loop == false then
		Loop = true
		Chat("Music Loop Enabled")
		game.Players.LocalPlayer.Character.Torso.Sound.Looped = true

	elseif msg:sub(1,5) == 'loop/' and Loop == true then
		Loop = false
		Chat("Music Loop Disabled")
		game.Players.LocalPlayer.Character.Torso.Sound.Looped = false

	elseif msg:sub(1,6) == 'pause/' and Pause == false then
		Pause = true
		Chat("Music Paused")
		game.Players.LocalPlayer.Character.Torso.Sound:Pause()

	elseif msg:sub(1,6) == 'pause/' and Pause == true then
		Pause = false
		Chat("Music Unpaused")
		game.Players.LocalPlayer.Character.Torso.Sound:Resume()

	elseif msg:sub(1,5) == 'skip/' then
		play = false
	    	Sound:Stop()
		play = true
	   	 PlayList()

	elseif msg:sub(1,5) == 'stop/' then
		Chat("Stopped Music Spectrum")
		play = false
	    	Sound:Stop()
	end

end)

local CRot = 1
local rad,sin,ceil=math.rad,math.sin,math.ceil
	
Sound:Play()

local Parts = {}
for Index,v in pairs(o1:children'') do
	if v:IsA'Part' then
		table.insert(Parts,v)
	end
end

	spawn(function()
game:service'RunService'.RenderStepped:connect(function()
	for Index,v in pairs(o1:children'') do
		if v:IsA'Part' then
v.CFrame = CFrame.new(plr.Character.Torso.Position)
								*CFrame.Angles(0,rad((360/#Parts*Index+(tick())*60/(#Parts ~= 0 and #Parts or 1))%360),0)
								*CFrame.new(0, -3, (5+#Parts)*.35+v.Size.X)
								*CFrame.Angles(0,90+CRot,0)
							end
				end

		end)
end)