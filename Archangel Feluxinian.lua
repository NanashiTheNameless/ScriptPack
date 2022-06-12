-------------
--Archangel--
-------------
--By	   --
--CKBackup --
-------------

player = game.Players.LocalPlayer
chara = player.Character
debby = game:GetService("Debris")

--Outfit--

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
Chest = New("Model",chara,"Chest",{})
MainPart = New("Part",Chest,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 2.00000024, 1),CFrame = CFrame.new(-2, 24.0000038, -9.49999332, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara.Torso,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),C1 = CFrame.new(0, 1.90734863e-006, 6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("WedgePart",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 4.4000001, 0.800000012),CFrame = CFrame.new(-0.600000024, 23.3807621, -7.38075256, 0, 0, -0.99999994, 0.707106948, 0.707107484, 0, 0.707107484, -0.707106948, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0.707106471, 0.707107008, 0, 0.707107008, -0.707106471, -0.99999994, 0, 0),C1 = CFrame.new(1.39999998, -0.619241714, 2.11924028, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 1.79999995),CFrame = CFrame.new(-0.299993277, 21.6071854, -9.09998989, 0.866024911, -0.500000834, 0, 0.500001192, 0.866025507, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866024911, 0.500000834, 0, -0.500000834, 0.866024911, 0, 0, 0, 1),C1 = CFrame.new(1.70000672, -2.39281845, 0.400003433, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 1.79999995),CFrame = CFrame.new(-3.6999929, 21.6071854, -9.09998989, 0.499998927, -0.866026044, 0, 0.86602664, 0.499999285, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.499998927, 0.866026044, 0, -0.866026044, 0.499998927, 0, 0, 0, 1),C1 = CFrame.new(-1.6999929, -2.39281845, 0.400003433, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 2),CFrame = CFrame.new(-2, 24.9000034, -8.89999294, 0, 0, -1, 0, 1.00000072, -0, 1.00000072, 0, -0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0),C1 = CFrame.new(0, 0.899999619, 0.600000381, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 3.5999999),CFrame = CFrame.new(-1.99999106, 21.6071815, -8.29999733, 4.27941371e-009, -1.59710094e-008, 1, 0.866026163, 0.500000119, 4.27942259e-009, -0.500000119, 0.866026163, 1.59710236e-008),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 4.27941371e-009, 0.866025567, -0.499999762, -1.59710094e-008, 0.499999762, 0.866025567, 1, 4.27941993e-009, 1.5971013e-008),C1 = CFrame.new(8.94069672e-006, -2.39282227, 1.19999504, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.49999988, 24.9000092, -9.8999939, 0, 0, -1, 0, -1.00000072, -0, -1.00000072, 0, -0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -0, -0),C1 = CFrame.new(0.500000119, 0.900005341, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1.20000005, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.99999988, 24.9000092, -9.09999371, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(1.1920929e-007, 0.900005341, 0.399999619, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.69999993, 24.9000034, -9.8999939, 0, 0, 1, 0, 1.00000072, 0, -1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.300000072, 0.899999619, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.09999895, 24.7000008, -9.8999939, 0, 0, -1, 0, 1.00000072, 0, 1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),C1 = CFrame.new(-0.099998951, 0.699996948, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.70000005, 24.7000027, -9.8999939, 0, 0, -1, 0, -1.00000072, 0, -1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0),C1 = CFrame.new(0.299999952, 0.699998856, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-2.5, 24.9000092, -9.49999619, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(-0.5, 0.900005341, -2.86102295e-006, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000033, 1.60000002, 0.200000003),CFrame = CFrame.new(-3.24999404, 22.3866081, -9.89999008, -0.866026044, -0.499998868, 0, 0.499999225, -0.86602664, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.866026044, 0.499998868, 0, -0.499998868, -0.866026044, 0, 0, 0, 1),C1 = CFrame.new(-1.24999404, -1.61339569, -0.399996758, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.89999998, 24.6999969, -9.8999939, 0, 0, 1, 0, 1.00000072, 0, -1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.100000024, 0.699993134, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000033, 1.60000002, 0.200000003),CFrame = CFrame.new(-0.74999404, 22.3866081, -9.89999008, 0.866024911, -0.500000834, 0, 0.500001192, 0.866025507, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866024911, 0.500000834, 0, -0.500000834, 0.866024911, 0, 0, 0, 1),C1 = CFrame.new(1.25000596, -1.61339569, -0.399996758, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 1.60000002, 0.200000003),CFrame = CFrame.new(-0.477270842, 22.5081749, -6.50816822, -6.16093132e-008, -0.178884313, 0.983862221, -0.707101703, 0.695696652, 0.126490459, -0.707103908, -0.695697606, -0.126490712),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -6.16093132e-008, -0.707101226, -0.707103431, -0.178884313, 0.695696175, -0.695697129, 0.983862221, 0.126490369, -0.126490623),C1 = CFrame.new(1.52272916, -1.49182892, 2.99182415, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 3, 0.400000006),CFrame = CFrame.new(-2.79999995, 23.0272083, -7.02719975, 0, 0, 1, -0.707107842, 0.707106829, 0, -0.707106829, -0.707107842, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, -0.707107365, -0.707106352, 0, 0.707106352, -0.707107365, 1, 0, 0),C1 = CFrame.new(-0.799999952, -0.972795486, 2.47279263, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 3, 0.400000006),CFrame = CFrame.new(-1.19999993, 23.0272083, -7.02719975, 1.98725871e-008, 2.98023224e-008, -0.99999994, 0.707106948, 0.707107544, 0, 0.707107544, -0.707106948, 2.23517578e-008),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1.98725871e-008, 0.707106471, 0.707107067, 2.98023224e-008, 0.707107067, -0.707106471, -0.99999994, 0, 2.23517418e-008),C1 = CFrame.new(0.800000072, -0.972795486, 2.47279263, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 1.60000002, 0.200000003),CFrame = CFrame.new(-3.52272773, 22.5081806, -6.50817204, 9.39882394e-009, 0.178885445, -0.983869851, 0.707106948, 0.695701838, 0.126491234, 0.707107544, -0.695701241, -0.126491114),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 9.39882394e-009, 0.707106471, 0.707107067, 0.178885445, 0.695701361, -0.695700765, -0.983869851, 0.126491144, -0.126491025),C1 = CFrame.new(-1.52272773, -1.4918232, 2.99182034, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.799999952, 0.400000006),CFrame = CFrame.new(-1.60000002, 22.2493916, -6.24938107, 0, 0, 1, -0.707107842, 0.707106829, 0, -0.707106829, -0.707107842, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, -0.707107365, -0.707106352, 0, 0.707106352, -0.707107365, 1, 0, 0),C1 = CFrame.new(0.399999976, -1.75061226, 3.25061083, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 3.60000014, 0.200000003),CFrame = CFrame.new(-2, 21.8958378, -5.89583111, 5.96046412e-008, -0.99999994, 0, 0.707107663, 4.21469011e-008, 0.707106769, -0.707106769, -4.21468478e-008, 0.707107663),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 5.96046412e-008, 0.707107186, -0.707106292, -0.99999994, 4.21468727e-008, -4.21468194e-008, 0, 0.707106292, 0.707107186),C1 = CFrame.new(0, -2.10416603, 3.60416079, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.4000001, 0.200000003),CFrame = CFrame.new(-2, 23.9000015, -9.8999939, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0, -0.100002289, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 4.4000001, 2),CFrame = CFrame.new(-2, 23.380764, -7.38075399, 0, 0, -1, 0.707106769, 0.707107067, 0, 0.707107067, -0.707106769, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0.707106769, 0.707107067, 0, 0.707107067, -0.707106769, -1, 0, 0),C1 = CFrame.new(0, -0.619239807, 2.11923838, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 8.60000038),CFrame = CFrame.new(2.34100294, 20.6883812, -6.12814236, -0.707106769, -0.353553057, 0.612372756, -0.183013052, -0.745010674, -0.641456723, 0.68301326, -0.565650463, 0.462097287),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, -0.183012933, 0.683012784, -0.353553057, -0.745010197, -0.565650105, 0.612372756, -0.641456246, 0.46209693),C1 = CFrame.new(4.34100294, -3.31162071, 3.37184954, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(-9.58220959, 19.8679085, -3.07410526, -0.707106769, -0.183013007, 0.683012724, 0.183013052, 0.885645866, 0.426777512, -0.68301326, 0.426777482, -0.592752457),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, 0.183012933, -0.683012784, -0.183013007, 0.88564527, 0.426777184, 0.683012724, 0.426777214, -0.59275198),C1 = CFrame.new(-7.58220959, -4.13209343, 6.42588568, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 5.80000019),CFrame = CFrame.new(1.554389, 22.8945351, -6.3513689, -0.707106769, 1.79124072e-007, 0.707106888, -0.183013052, -0.965926528, -0.183012769, 0.68301326, -0.258819342, 0.683013201),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, -0.183012933, 0.683012784, 1.79124072e-007, -0.965925813, -0.258819163, 0.707106888, -0.183012649, 0.683012724),C1 = CFrame.new(3.554389, -1.10546875, 3.14862299, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.799999893, 1.80000019, 0.200000003),CFrame = CFrame.new(-3.29999399, 22.3000069, -9.59999084, 0, 0.499999017, -0.866026223, 0, 0.866026819, 0.499999374, 1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0.499999017, 0.866026223, 0, -0.866026223, 0.499999017, 0),C1 = CFrame.new(-1.29999399, -1.69999695, -0.0999975204, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.799999893, 1.80000019, 0.200000003),CFrame = CFrame.new(-0.699993968, 22.3000069, -9.59999084, 0, -0.500000894, -0.866024911, 0, 0.866025507, -0.500001252, 1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, -0.500000894, 0.866024911, 0, -0.866024911, -0.500000894, 0),C1 = CFrame.new(1.30000603, -1.69999695, -0.0999975204, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("WedgePart",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 4.4000001, 0.800000012),CFrame = CFrame.new(-3.4000001, 23.3807621, -7.38075256, 0, 0, 1, -0.707106948, 0.707107663, 0, -0.707107663, -0.707106948, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, -0.707106471, -0.707107186, 0, 0.707107186, -0.707106471, 1, 0, 0),C1 = CFrame.new(-1.4000001, -0.619241714, 2.11924028, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.80000007, 2),CFrame = CFrame.new(-1.99999094, 22.3000011, -8.69999981, -1.59710094e-008, -7.10542736e-015, -1, 0.500000119, 0.866026103, -7.98551447e-009, 0.866026103, -0.500000119, -1.38313112e-008),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1.59710094e-008, 0.499999791, 0.866025507, -7.10542736e-015, 0.866025507, -0.499999791, -1, -7.98550914e-009, -1.38313005e-008),C1 = CFrame.new(9.05990601e-006, -1.70000267, 0.799993515, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("WedgePart",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.79999995, 0.800000012),CFrame = CFrame.new(-0.599990845, 22.3000011, -8.69999981, 0, 0, -1.00000024, 0.500000358, 0.866026521, 0, 0.866026282, -0.500000477, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0.5, 0.866025686, 0, 0.866025925, -0.500000119, -1.00000024, 0, 0),C1 = CFrame.new(1.40000916, -1.70000267, 0.799993515, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 8.60000038),CFrame = CFrame.new(-6.47564888, 20.6739483, -6.07427692, -0.707106769, 0.353553057, -0.612372756, 0.183013052, -0.745010674, -0.641456723, -0.68301326, -0.565650463, 0.462097287),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, 0.183012933, -0.683012784, 0.353553057, -0.745010197, -0.565650105, -0.612372756, -0.641456246, 0.46209693),C1 = CFrame.new(-4.47564888, -3.32605362, 3.42571497, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(5.44756413, 19.8823414, -3.12796831, -0.707106769, 0.183013007, -0.683012724, -0.183012992, 0.885645568, 0.426777363, 0.683013022, 0.426777333, -0.592752218),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, -0.183012933, 0.683012784, 0.183013007, 0.88564527, 0.426777184, -0.683012724, 0.426777214, -0.59275198),C1 = CFrame.new(7.44756413, -4.11766052, 6.37202263, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 7.20000029),CFrame = CFrame.new(-6.16714716, 22.0017948, -6.03786945, 0.707106769, -0.183013007, -0.683012724, -0.183013052, 0.885645866, -0.426777512, 0.68301326, 0.426777482, 0.592752457),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106769, -0.183012933, 0.683012784, -0.183013007, 0.88564527, 0.426777184, -0.683012724, -0.426777214, 0.59275198),C1 = CFrame.new(-4.16714716, -1.998209, 3.46212244, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 7.20000029),CFrame = CFrame.new(2.03250122, 22.0162277, -6.09173298, 0.707106769, 0.183013007, 0.683012724, 0.183013052, 0.885645866, -0.426777512, -0.68301326, 0.426777482, 0.592752457),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106769, 0.183012933, -0.683012784, 0.183013007, 0.88564527, 0.426777184, 0.683012724, -0.426777214, 0.59275198),C1 = CFrame.new(4.03250122, -1.98377609, 3.40825891, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("WedgePart",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.79999995, 1),CFrame = CFrame.new(-0.699994087, 22.300005, -8.69998837, -0.866026938, -0.500001907, 0, -0.500002265, 0.866027534, 0, 0, 0, -1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.866026938, -0.500001907, 0, -0.500001907, 0.866026938, 0, 0, 0, -1),C1 = CFrame.new(1.30000591, -1.69999886, 0.800004959, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("WedgePart",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.79999995, 1),CFrame = CFrame.new(-3.29999399, 22.300005, -8.69998837, -0.866025984, 0.499998987, 0, 0.499999344, 0.86602658, 0, 0, 0, -1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.866025984, 0.499998987, 0, 0.499998987, 0.866025984, 0, 0, 0, -1),C1 = CFrame.new(-1.29999399, -1.69999886, 0.800004959, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(-9.96617031, 17.0176449, -3.44032335, -0.707106769, -0.353553057, 0.612372756, 0.183013052, 0.745010674, 0.641456723, -0.68301326, 0.565650463, -0.462097287),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, 0.183012933, -0.683012784, -0.353553057, 0.745010197, 0.565650105, 0.612372756, 0.641456246, -0.46209693),C1 = CFrame.new(-7.96617031, -6.98235703, 6.05966759, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 5.80000019),CFrame = CFrame.new(-5.6890378, 22.8801022, -6.29750156, -0.707106769, -1.79124072e-007, -0.707106888, 0.183013052, -0.965926528, -0.183012769, -0.68301326, -0.258819342, 0.683013201),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, 0.183012933, -0.683012784, -1.79124072e-007, -0.965925813, -0.258819163, -0.707106888, -0.183012649, 0.683012724),C1 = CFrame.new(-3.6890378, -1.11990166, 3.20249033, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.799999952, 0.400000006),CFrame = CFrame.new(-2.4000001, 22.2493916, -6.24938679, 0, 0, -1, 0.707106829, 0.707107842, 0, 0.707107842, -0.707106829, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0.707106352, 0.707107365, 0, 0.707107365, -0.707106352, -1, 0, 0),C1 = CFrame.new(-0.400000095, -1.75061226, 3.25060511, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(4.59495115, 22.1075802, -3.4144063, -0.707106769, -1.79124072e-007, -0.707106888, -0.183013052, 0.965926528, 0.183012769, 0.68301326, 0.258819342, -0.683013201),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, -0.183012933, 0.683012784, -1.79124072e-007, 0.965925813, 0.258819163, -0.707106888, 0.183012649, -0.683012724),C1 = CFrame.new(6.59495115, -1.89242363, 6.08558464, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(5.83152485, 17.0320778, -3.49418688, -0.707106769, 0.353553057, -0.612372756, -0.183013052, 0.745010674, 0.641456723, 0.68301326, 0.565650463, -0.462097287),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, -0.183012933, 0.683012784, 0.353553057, 0.745010197, 0.565650105, -0.612372756, 0.641456246, -0.46209693),C1 = CFrame.new(7.83152485, -6.96792412, 6.00580406, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(-8.72959423, 22.0931454, -3.36054277, -0.707106769, 1.79124072e-007, 0.707106888, 0.183013052, 0.965926528, 0.183012769, -0.68301326, 0.258819342, -0.683013201),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106769, 0.183012933, -0.683012784, 1.79124072e-007, 0.965925813, 0.258819163, 0.707106888, 0.183012649, -0.683012724),C1 = CFrame.new(-6.72959423, -1.90685844, 6.13944817, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 8.60000038),CFrame = CFrame.new(-6.47564602, 27.0732079, -5.44610357, 0.707106829, 0.353553236, -0.612372577, 0, 0.866026163, 0.500000119, 0.707107306, -0.353553474, 0.612373054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, 0.707106829, 0.353553236, 0.866025567, -0.353553236, -0.612372577, 0.499999791, 0.612372577),C1 = CFrame.new(-4.47564602, 3.07320213, 4.05388832, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(-9.96616936, 29.9232082, -1.95558119, 0.707106829, -0.353553236, 0.612372577, 0, -0.866026163, -0.500000119, 0.707107306, 0.353553474, -0.612373054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, 0.707106829, -0.353553236, -0.866025567, 0.353553236, 0.612372577, -0.499999791, -0.612372577),C1 = CFrame.new(-7.96616936, 5.92320251, 7.54440928, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(-8.72959423, 25.0000019, -3.19215298, 0.707106829, 0, 0.707106829, 0, -1.00000072, 0, 0.707107306, 0, -0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, 0.707106829, 0, -1, 0, 0.707106829, 0, -0.707106829),C1 = CFrame.new(-6.72959423, 0.999998093, 6.30783796, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(-9.58220863, 27.0752773, -2.33954096, 0.707106829, -0.183012947, 0.683012664, 0, -0.965926468, -0.25881958, 0.707107306, 0.183013067, -0.683013141),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, 0.707106829, -0.183012947, -0.965925753, 0.183012947, 0.683012664, -0.258819401, -0.683012664),C1 = CFrame.new(-7.58220863, 3.07527161, 7.16044998, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 7.20000029),CFrame = CFrame.new(-6.1671443, 25.7811813, -5.75460577, -0.707106829, -0.183012947, -0.683012664, 0, -0.965926468, 0.25881958, -0.707107306, 0.183013067, 0.683013141),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0, -0.707106829, -0.183012947, -0.965925753, 0.183012947, -0.683012664, 0.258819401, 0.683012664),C1 = CFrame.new(-4.1671443, 1.78117752, 3.74538612, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 7.20000029),CFrame = CFrame.new(2.03250408, 25.7811813, -5.69884253, -0.707106829, 0.183012947, 0.683012664, 0, -0.965926468, 0.25881958, 0.707107306, 0.183013067, 0.683013141),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0, 0.707106829, 0.183012947, -0.965925753, 0.183012947, 0.683012664, 0.258819401, 0.683012664),C1 = CFrame.new(4.03250408, 1.78117752, 3.80114937, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("WedgePart",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.79999995, 0.800000012),CFrame = CFrame.new(-3.39999104, 22.3000011, -8.69999981, 0, 0, 1, -0.500000238, 0.866026103, 0, -0.866026103, -0.500000238, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, -0.499999911, -0.866025507, 0, 0.866025507, -0.499999911, 1, 0, 0),C1 = CFrame.new(-1.39999104, -1.70000267, 0.799993515, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(5.83152771, 29.9232082, -1.89981794, 0.707106829, 0.353553236, -0.612372577, 0, -0.866026163, -0.500000119, -0.707107306, 0.353553474, -0.612373054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, -0.707106829, 0.353553236, -0.866025567, 0.353553236, -0.612372577, -0.499999791, -0.612372577),C1 = CFrame.new(7.83152771, 5.92320251, 7.60017252, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 5.80000019),CFrame = CFrame.new(1.5543952, 25.0000019, -6.17695141, 0.707106829, 0, 0.707106829, 0, 1.00000072, 0, -0.707107306, 0, 0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, 0.707106829),C1 = CFrame.new(3.5543952, 0.999998093, 3.32304049, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(4.59495401, 25.0000019, -3.13638973, 0.707106829, 0, -0.707106829, 0, -1.00000072, 0, -0.707107306, 0, -0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, -0.707106829, 0, -1, 0, -0.707106829, 0, -0.707106829),C1 = CFrame.new(6.59495401, 0.999998093, 6.36360121, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 8.60000038),CFrame = CFrame.new(2.34100628, 27.0732079, -5.39034224, 0.707106829, -0.353553236, 0.612372577, 0, 0.866026163, 0.500000119, -0.707107306, -0.353553474, 0.612373054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, -0.707106829, -0.353553236, 0.866025567, -0.353553236, 0.612372577, 0.499999791, 0.612372577),C1 = CFrame.new(4.34100628, 3.07320213, 4.10964966, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 2.80000019),CFrame = CFrame.new(5.44756699, 27.0752773, -2.28377771, 0.707106829, 0.183012947, -0.683012664, 0, -0.965926468, -0.25881958, -0.707107306, 0.183013067, -0.683013141),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, -0.707106829, 0.183012947, -0.965925753, 0.183012947, -0.683012664, -0.258819401, -0.683012664),C1 = CFrame.new(7.44756699, 3.07527161, 7.21621323, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.800000012, 5.80000019),CFrame = CFrame.new(-5.68903446, 25.0000019, -6.23271656, 0.707106829, 0, -0.707106829, 0, 1.00000072, 0, 0.707107306, 0, 0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, 0.707106829),C1 = CFrame.new(-3.68903446, 0.999998093, 3.26727533, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.49999905, 24.9000072, -9.8999939, 0, 0, 1, 0, -1.00000072, 0, 1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, 0),C1 = CFrame.new(-0.499999046, 0.900003433, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.30000019, 24.9000015, -9.8999939, 0, 0, -1, 0, 1.00000072, 0, 1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),C1 = CFrame.new(-0.300000191, 0.899997711, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-1.49999988, 24.9000092, -9.49999619, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.500000119, 0.900005341, -2.86102295e-006, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.30000019, 24.7000008, -9.8999939, 0, 0, 1, 0, -1.00000072, 0, 1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, 0),C1 = CFrame.new(-0.300000191, 0.699996948, -0.400000572, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 1),CFrame = CFrame.new(-1.99999988, 23.1000004, -9.49999619, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(1.1920929e-007, -0.900003433, -2.86102295e-006, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),})
FakeHead = New("Model",chara,"FakeHead",{})
MainPart = New("Part",FakeHead,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 1.00000024, 1),CFrame = CFrame.new(-2, 25.5000057, -9.49999237, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",MainPart,"Mesh",{Scale = Vector3.new(1.25, 1.25, 1.25),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara.Head,C1 = CFrame.new(0, 1.90734863e-006, 7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.22218204, 26.900013, -10.2778091, -0.707106829, 0, 0.707106829, 0, 1.00000072, 0, -0.707107306, 0, -0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829),C1 = CFrame.new(0.777817965, 1.40000534, -0.777815819, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-2.10000014, 25.7000046, -9.99999237, -1, 0, 0, 0, 1.00000072, 0, 0, 0, -1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0.0799999982, 0.0299999993, 0.0399999991),Scale = Vector3.new(0.400000006, 1.5, 0.200000003),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.100000143, 0.199998856, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-1.9000001, 25.7000046, -9.99999237, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0.0799999982, 0.0299999993, -0.0399999991),Scale = Vector3.new(0.400000006, 1.5, 0.200000003),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.0999999046, 0.199998856, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-2, 25.5000267, -9.99999237, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 0.699999988),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0, 2.0980835e-005, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.800000012, 0.600000024, 1),CFrame = CFrame.new(-2.0000093, 26.3000069, -9.49998474, 1, 1.14938619e-008, 1.83980446e-005, -6.50001564e-009, 1.00000072, 5.2449689e-008, -1.83980574e-005, -5.14992635e-008, 1.00000072),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024),MeshId = "http://www.roblox.com/asset/?id=361948302",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, -6.5000112e-009, -1.83980446e-005, 1.14938619e-008, 1, -5.1499228e-008, 1.83980446e-005, 5.244965e-008, 1),C1 = CFrame.new(-9.29832458e-006, 0.800001144, 7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-2, 26.900013, -10.5999908, -1, 0, 0, 0, 1.00000072, 0, 0, 0, -1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.40000534, -1.09999752, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.77781606, 26.900013, -10.2778091, -0.707106829, 0, -0.707106829, 0, 1.00000072, 0, 0.707107306, 0, -0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829),C1 = CFrame.new(-0.777816057, 1.40000534, -0.777815819, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-3.0999999, 26.9000092, -9.49999237, 0, 0, 1, 0, 1.00000072, 0, -1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.0999999, 1.40000153, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.77781701, 26.9000092, -8.72217464, -0.707106829, 0, 0.707106829, 0, 1.00000072, 0, -0.707107306, 0, -0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829),C1 = CFrame.new(-0.777817011, 1.40000153, 0.777816772, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-2, 26.9000092, -8.39999294, -1, 0, 0, 0, 1.00000072, 0, 0, 0, -1.00000072),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.40000153, 1.09999847, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.22218394, 26.9000092, -8.72217464, -0.707106829, 0, -0.707106829, 0, 1.00000072, 0, 0.707107306, 0, -0.707107306),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829),C1 = CFrame.new(0.777816057, 1.40000153, 0.777816772, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.899999976, 26.900013, -9.49999237, 0, 0, 1, 0, 1.00000072, 0, -1.00000072, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(1.10000002, 1.40000534, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
LeftArm = New("Model",chara,"LeftArm",{})
MainPart = New("Part",LeftArm,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 2.00000024, 1),CFrame = CFrame.new(-3.50000024, 24.0000095, -9.49999237, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Arm"],C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-2.38418579e-007, 7.62939453e-006, 7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 1),CFrame = CFrame.new(-3.10000014, 24.9000015, -9.49999237, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.400000095, 0.899991989, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-3.89999938, 23.7000122, -9.49999237, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),C1 = CFrame.new(0.399999142, -0.29999733, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-3.50000024, 23.5000076, -9.49999237, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.500001907, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(-3.69999933, 25, -9.49999237, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0.199999094, 0.999990463, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-3.10000014, 25.0999985, -9.49999237, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),C1 = CFrame.new(-0.400000095, 1.09998894, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.400000006, 0.400000006),CFrame = CFrame.new(-4.4000001, 25, -9.49999237, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.899999857, 0.999990463, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
EnamatePart2 = New("Part",LeftArm,"EnamatePart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 0.400000036, 1),CFrame = CFrame.new(-3.5, 23, -9.50000095, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",EnamatePart2,"Weld",{Part0 = EnamatePart2,Part1 = MainPart,C1 = CFrame.new(-2.38418579e-007, -1.00000954, 8.58306885e-006, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
LeftLeg = New("Model",chara,"LeftLeg",{})
MainPart = New("Part",LeftLeg,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 2.00000024, 1),CFrame = CFrame.new(-2.50000024, 21.9999981, -9.49999237, -1, 0, 0, 0, 1.00000143, 0, 0, 0, -1.00000143),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Leg"],C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-2.38418579e-007, -1.90734863e-006, 7.62939453e-006, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-2.50000024, 21.4999981, -9.49999237, -1, 0, 0, 0, 1.00000143, 0, 0, 0, -1.00000143),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.89999819, 21.6999989, -9.49999237, 0, 0, -1, 0, 1.00000143, 0, 1.00000143, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),C1 = CFrame.new(0.39999795, -0.299999237, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
RightArm = New("Model",chara,"RightArm",{})
MainPart = New("Part",RightArm,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 2.00000024, 1),CFrame = CFrame.new(-0.49999994, 24.0000038, -9.49999237, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Arm"],C1 = CFrame.new(5.96046448e-008, 3.81469727e-006, 7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.099999994, 23.7000027, -9.49999237, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.399999946, -0.300001144, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-0.5, 23.5000038, -9.49999237, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(-5.96046448e-008, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(-0.299999952, 25.0000038, -9.49999237, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.199999988, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.400000006, 0.400000006),CFrame = CFrame.new(0.400000036, 25.0000038, -9.49999237, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0),C1 = CFrame.new(0.899999976, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.900000036, 25.1000042, -9.49999237, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.400000095, 1.10000038, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 1),CFrame = CFrame.new(-0.899999976, 24.9000034, -9.49999237, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(-0.400000036, 0.899999619, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
EnamatePart = New("Part",RightArm,"EnamatePart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 0.400000036, 1),CFrame = CFrame.new(-0.5, 23.0000019, -9.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",EnamatePart,"Weld",{Part0 = EnamatePart,Part1 = MainPart,C1 = CFrame.new(-5.96046448e-008, -1.00000191, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
RightLeg = New("Model",chara,"RightLeg",{})
MainPart = New("Part",RightLeg,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 2.00000024, 1),CFrame = CFrame.new(-1.50000012, 21.9999981, -9.49999237, 1, 0, 0, 0, 1.00000143, 0, 0, 0, 1.00000143),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Leg"],C1 = CFrame.new(-1.1920929e-007, -1.90734863e-006, 7.62939453e-006, 1, 0, 0, 0, 1.00000072, 0, 0, 0, 1.00000072),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.10000002, 21.6999989, -9.49999237, 0, 0, 1, 0, 1.00000143, 0, -1.00000143, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.400000095, -0.299999237, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-1.50000012, 21.4999981, -9.49999237, 1, 0, 0, 0, 1.00000143, 0, 0, 0, 1.00000143),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
lap = LeftArm:GetChildren()
rap = RightArm:GetChildren()
llp = LeftLeg:GetChildren()
rlp = RightLeg:GetChildren()
chp = Chest:GetChildren()
hdp = FakeHead:GetChildren()

ch = chara:GetChildren()
for i = 1, #ch do
if ch[i].ClassName == "Part" then
ch[i].Transparency = 1
if ch[i].Name == "Torso" then
ch[i].roblox.Transparency = 1
end
if ch[i].Name == "Head" then
ch[i].face.Transparency = 1
end
elseif ch[i].ClassName == "Accessory" then
ch[i]:Destroy()
end
end

--Animations--
function loada(anim)
local loaded = chara.Humanoid:LoadAnimation(anim)
return loaded
end

IdleA = New("Animation",chara,"Idle",{AnimationId = "rbxassetid://169638954"})
IdleAnim = loada(IdleA)
IdleAnim:Play()

--Sounds--
Music = New("Sound",chara,"Music",{SoundId = "rbxassetid://242463565",Volume = 1,Looped = true})
SpellCastSnd = New("Sound",chara,"SpellCast",{SoundId = "rbxassetid://161006131",Volume = 1})
ExplodeSnd = New("Sound",chara,"Explode",{SoundId = "rbxassetid://221920694",Volume = 1})
MeteorSnd = New("Sound",chara,"Meteor",{SoundId = "rbxassetid://231917888",Volume = 1})
LasChgSnd = New("Sound",chara,"LasChg",{SoundId = "rbxassetid://137463716",Volume = 1})
LaserSnd = New("Sound",chara,"Laser",{SoundId = "rbxassetid://162246701",Volume = 1})
LasLoopSnd = New("Sound",chara,"LasLoop",{SoundId = "rbxassetid://162246683",Volume = 1,Looped = true})
deathmus = New("Sound",chara.Torso,"DeathMus",{SoundId = "rbxassetid://19094700",PlaybackSpeed = .5,Volume = 5,Looped = true})
deathex = New("Sound",chara.Torso,"DeathEx",{SoundId = "rbxassetid://11984351",PlaybackSpeed = 1,Volume = 5})
Snd = New("Sound",chara,"",{SoundId = "",Volume = 1})
Music:Play()

--Fly--
local truflyposy = chara.Torso.Position.Y+10
local flyposy = truflyposy
local bodfly = Instance.new("BodyPosition", chara.Torso)
bodfly.Name = "Fly"
bodfly.maxForce = Vector3.new(0,10000,0)
bodfly.Position = Vector3.new(0,flyposy,0)

--Enamate--
function Enamate(part)
local trace = Instance.new("Part",chara)
trace.Size = Vector3.new(1,1,1)
trace.TopSurface = 0
trace.BottomSurface = 0
trace.BrickColor = BrickColor.new("New Yeller")
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
local tracedisp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
end
wait(.01)
trace:Destroy()
end)
tracedisp()
end
function Enamate2(part,name)
if chara:FindFirstChild(name)== nil then
local angl = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
local trace = Instance.new("Part",chara)
trace.Size = Vector3.new(1,1,1)
trace.Name = name
trace.TopSurface = 0
trace.BottomSurface = 0
trace.BrickColor = BrickColor.new("New Yeller")
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = part.CFrame * angl
local tracem = Instance.new("SpecialMesh",trace)
tracem.MeshId = "rbxassetid://3270017"
local tracedisp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
trace.CFrame = part.CFrame * angl
tracem.Scale = tracem.Scale + Vector3.new(.5,.5,0)
end
wait(.01)
trace:Destroy()
end)
tracedisp()
end
end
function Enamate3()
if chara:FindFirstChild("Ring")== nil then
local trace = Instance.new("Part",chara)
trace.Size = Vector3.new(1,1,1)
trace.Name = "Ring"
trace.TopSurface = 0
trace.BottomSurface = 0
trace.BrickColor = BrickColor.new("New Yeller")
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = chara.Torso.CFrame
local tracem = Instance.new("SpecialMesh",trace)
tracem.MeshId = "rbxassetid://3270017"
local tracedisp = coroutine.wrap(function()
for i = 1, 99 do
wait(.01)
trace.Transparency = trace.Transparency + .01
trace.CFrame = chara.Torso.CFrame
tracem.Scale = tracem.Scale + Vector3.new(.2,.2,0)
end
wait(.01)
trace:Destroy()
end)
tracedisp()
end
end

--Play Sound in Part--
function PlaySnd(snd,part)
local sound = snd:Clone()
sound.PlayOnRemove = true
sound.Parent = Part
sound:Destroy()
end

--Explosion--
function Expld(rad,pos)
local ex = Instance.new("Explosion",game.Workspace)
ex.BlastRadius = rad
ex.BlastPressure = 0
ex.Position = pos
ex.Visible = false
ex.Hit:connect(function(hit)
if hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid")~= nil then
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - rad
end
end)
end

--Cross Explosion--
function CrossExplosion()
local cirpos = Mouse.Hit.p
local spellcircle = Instance.new("Part",chara)
spellcircle.Anchored = true
spellcircle.Size = Vector3.new(1,1,1)
spellcircle.CFrame = CFrame.new(cirpos.x,cirpos.y,cirpos.z)
spellcircle.Transparency = 1
spellcircle.CanCollide = false
local blkm = Instance.new("BlockMesh",spellcircle)
blkm.Scale = Vector3.new(0,1,0)
local dec = Instance.new("Decal",spellcircle)
dec.Texture = "rbxassetid://685910499"
dec.Transparency = 1
dec.Face = "Top"
local ptl = Instance.new("PointLight",spellcircle)
ptl.Range = 0
ptl.Color = Color3.new(1,1,1)
spellc = coroutine.wrap(function()
while spellc ~= nil do
wait(.01)
spellcircle.CFrame = spellcircle.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
end
end)
spellc()
PlaySnd(SpellCastSnd,spellcircle)
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range + 1
dec.Transparency = dec.Transparency - .1
blkm.Scale = blkm.Scale + Vector3.new(1,0,1)
end
wait(.5)
PlaySnd(ExplodeSnd,spellcircle)
local pemit = Instance.new("ParticleEmitter",spellcircle)
pemit.Color = ColorSequence.new(Color3.new(1,1,0))
pemit.LightEmission = 1
pemit.Size = NumberSequence.new(5)
pemit.Texture = "rbxasset://textures/particles/smoke_main.dds"
pemit.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.9,0),NumberSequenceKeypoint.new(1,1)})
pemit.Lifetime = NumberRange.new(1)
pemit.Rate = 10000
pemit.Speed = NumberRange.new(100)
Expld(12,spellcircle.Position)
wait(.5)
local pt1 = Instance.new("Part",chara)
pt1.Size = Vector3.new(0,0,0)
pt1.Anchored = true
pt1.CFrame = spellcircle.CFrame + Vector3.new(0,60,0)
pt1.Transparency = 1
local pemit2 = pemit:clone()
pemit2.Lifetime = NumberRange.new(.25)
pemit2.EmissionDirection = "Left"
pemit2.Parent = pt1
local pemit3 = pemit2:clone()
pemit3.EmissionDirection = "Right"
pemit3.Parent = pt1
for i = 1, 10 do
Expld(12,spellcircle.Position)
wait(.5)
end
pemit.Enabled = false
pemit2.Enabled = false
pemit3.Enabled = false
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range - 1
dec.Transparency = dec.Transparency + .1
blkm.Scale = blkm.Scale - Vector3.new(1,0,1)
end
wait(.01)
spellcircle:Destroy()
pt1:Destroy()
end

--Meteor--
function Meteor()
local meteor = Instance.new("Part",game.Workspace)
meteor.Size = Vector3.new(5,5,5)
meteor.BrickColor = BrickColor.new("Institutional white")
meteor.Material = "Neon"
meteor.TopSurface = 0
meteor.BottomSurface = 0
meteor.Shape = 0
meteor.CFrame = chara.Torso.CFrame + Vector3.new(0,100,0)
meteor.Velocity = (Mouse.Hit.p - (chara.Torso.CFrame.p + Vector3.new(0,100,0))).unit*100
debby:AddItem(meteor,15)
local bfo = Instance.new("BodyForce",meteor)
bfo.Force = Vector3.new(0,game.Workspace.Gravity*meteor:GetMass(),0)
local eff = Instance.new("ParticleEmitter",meteor)
eff.Color = ColorSequence.new(Color3.new(1,1,0))
eff.LightEmission = 1
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff.Texture = "rbxasset://textures/particles/smoke_main.dds"
eff.Rate = 100000
eff.Speed = NumberRange.new(0)
eff.Lifetime = NumberRange.new(1)
local mehs = Instance.new("SpecialMesh",meteor)
mehs.MeshType = "Sphere"
mehs.Scale = Vector3.new(2,2,2)
--
meteor.Touched:connect(function(hit)
if meteor.Anchored == false then
meteor.Anchored = true
meteor.CanCollide = false
eff.Speed = NumberRange.new(50)
eff.VelocitySpread = 10000
PlaySnd(MeteorSnd,meteor)
Expld(15,meteor.Position)
for i = 1, 10 do
wait(.01)
mehs.Scale = mehs.Scale + Vector3.new(.5,.5,.5)
meteor.Transparency = meteor.Transparency + .1
end
eff.Enabled = false
end
end)
end

--Beam--
lasactive = false
function Beam()
lasactive = true
LasChgSnd:Play()
local StartPart = Instance.new("Part",chara)
StartPart.Size = Vector3.new(0,0,0)
StartPart.Anchored = true
StartPart.BrickColor = BrickColor.new("Institutional white")
StartPart.Material = "Neon"
StartPart.Transparency = 1
local mehs = Instance.new("SpecialMesh",StartPart)
mehs.MeshType = "Sphere"
mehs.Scale = Vector3.new(0,0,0)
for i = 1, 20 do
wait(.01)
StartPart.CFrame = chara.Torso.CFrame + Vector3.new(0,10,0)
mehs.Scale = mehs.Scale + Vector3.new(2.5,2.5,2.5)
StartPart.Transparency = StartPart.Transparency - .05
end
local EffectPart = Instance.new("Part",chara)
EffectPart.Size = Vector3.new(0,0,0)
EffectPart.Anchored = true
EffectPart.Transparency = 1
LaserSnd:Play()
LasLoopSnd:Play()
local P = Instance.new("Part",chara)
P.BrickColor = BrickColor.new("New Yeller")
P.Material = "Neon"
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
for i = 1, 20 do
wait(.1)
StartPart.CFrame = chara.Torso.CFrame + Vector3.new(0,10,0)
local Place0 = StartPart.CFrame
local Place1 = Mouse.Hit
EffectPart.Position = Mouse.Hit.p
local meshla = Instance.new("BlockMesh", P)
meshla.Scale = Vector3.new(1,1,1)
local trace = Instance.new("Part",game.Workspace)
trace.Size = Vector3.new(0,0,0)
trace.BrickColor = BrickColor.new("Institutional white")
trace.Material = "Neon"
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = EffectPart.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
tracem = Instance.new("BlockMesh",trace)
tracem.Scale = Vector3.new(10,10,10)
local tracedisp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
tracem.Scale = tracem.Scale + Vector3.new(10,10,10)
trace.Transparency = trace.Transparency + .1
end
wait(.01)
trace:Destroy()
end)
tracedisp()
P.Size = Vector3.new(1,1,(Place0.p - Place1.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) 
Expld(15,EffectPart.Position)
P:Destroy()
end
----
LasLoopSnd:Stop()
for i = 1, 20 do
wait(.01)
StartPart.CFrame = chara.Torso.CFrame + Vector3.new(0,10,0)
mehs.Scale = mehs.Scale - Vector3.new(2.5,2.5,2.5)
StartPart.Transparency = StartPart.Transparency + .05
end
StartPart:Destroy()
EffectPart:Destroy()
lasactive = false
end

--Sword Stab--
function SwordStab()
local cirpos = Mouse.Hit.p
local spellcircle = Instance.new("Part",chara)
spellcircle.Anchored = true
spellcircle.Size = Vector3.new(1,1,1)
spellcircle.CFrame = CFrame.new(cirpos.x,cirpos.y,cirpos.z)
spellcircle.Transparency = 1
spellcircle.CanCollide = false
local blkm = Instance.new("BlockMesh",spellcircle)
blkm.Scale = Vector3.new(0,1,0)
local dec = Instance.new("Decal",spellcircle)
dec.Texture = "rbxassetid://685910499"
dec.Transparency = 1
dec.Face = "Top"
local ptl = Instance.new("PointLight",spellcircle)
ptl.Range = 0
ptl.Color = Color3.new(1,1,1)
spellc = coroutine.wrap(function()
while spellc ~= nil do
wait(.01)
spellcircle.CFrame = spellcircle.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
end
end)
spellc()
PlaySnd(SpellCastSnd,spellcircle)
for i = 1, 40 do
wait(.01)
ptl.Range = ptl.Range + 1
dec.Transparency = dec.Transparency - .1
blkm.Scale = blkm.Scale + Vector3.new(1,0,1)
end
wait(.5)
local sword = Instance.new("Part",game.Workspace)
sword.Size = Vector3.new(2,50,2)
sword.BottomSurface = 0
sword.TopSurface = 0
sword.Position = spellcircle.Position + Vector3.new(0,250,0)
sword.CFrame = sword.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0)
local mehs = Instance.new("SpecialMesh",sword)
mehs.MeshId = "http://www.roblox.com/asset/?id=79109302"
mehs.Scale = Vector3.new(40,40,40)
mehs.TextureId = "http://www.roblox.com/asset/?id=79109351"
mehs.VertexColor = Vector3.new(1,1,0)
local bodf = Instance.new("BodyPosition",sword)
bodf.Position = spellcircle.Position
sword.Touched:connect(function(hit)
if sword.Anchored == false then
sword.Anchored = true
PlaySnd(ExplodeSnd,spellcircle)
local pt = Instance.new("Part",game.Workspace)
pt.Shape = 0
pt.Size = Vector3.new(1,1,1)
pt.Material = "Neon"
pt.CFrame = spellcircle.CFrame
pt.BrickColor = BrickColor.new("New yeller")
local mh = Instance.new("SpecialMesh",pt)
mh.MeshType = "Sphere"
mh.Scale = Vector3.new(0,0,0)
for i = 1, 10 do
wait(.01)
mh.Scale = mh.Scale + Vector3.new(10,10,10)
pt.Transparency = pt.Transparency + .1
Expld(mh.Scale.x,spellcircle.Position)
end
wait(1)
for i = 1, 9 do
wait(.01)
sword.Transparency = sword.Transparency +.1
end
sword:Destroy()
wait(.5)
for i = 1, 40 do
wait(.01)
ptl.Range = ptl.Range - 1
dec.Transparency = dec.Transparency + .1
blkm.Scale = blkm.Scale - Vector3.new(1,0,1)
end
spellcircle:Destroy()
end
end)
end

--KeyDown--
mus = true
function onKeyDown(key)
if key == "e" then
flyposy = flyposy - 10
elseif key == "q" then
flyposy = flyposy + 10
elseif key == "z" and lasactive == false then
CrossExplosion()
elseif key == "x" and lasactive == false then
Meteor()
elseif key == "c" and lasactive == false then
Beam()
elseif key == "v" and lasactive == false then
SwordStab()
elseif key == "m" then
if mus == true then
Music:Stop()
mus = false
elseif mus == false then
Music:Play()
mus = true
end
end
end

--Mouse Function--
Mouse = player:GetMouse()
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
end

--Loop Function--
cter = 0
while chara.Humanoid.Health > 0 do
wait(.1)
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
bodfly.Position = Vector3.new(0,flyposy,0)
Enamate(EnamatePart)
Enamate2(EnamatePart,"EnamateRing")
Enamate(EnamatePart2)
Enamate2(EnamatePart2,"EnamateRing2")
Enamate3()
for i = 1, #lap do
lap[i].Anchored = false
end
for i = 1, #rap do
rap[i].Anchored = false
end
for i = 1, #llp do
llp[i].Anchored = false
end
for i = 1, #rlp do
rlp[i].Anchored = false
end
for i = 1, #chp do
chp[i].Anchored = false
end
for i = 1, #hdp do
hdp[i].Anchored = false
end
for i = 1, #ch do
if ch[i].ClassName == "Part" then
ch[i].Anchored = false
end
end
end