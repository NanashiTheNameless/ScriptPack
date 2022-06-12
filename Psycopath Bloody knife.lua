--------------
--Psychopath--
--------------
--By	 --
--CKbackup-
-----------

player = game.Players.LocalPlayer
chara = player.Character
debby = game.Debris
Mouse = player:GetMouse()
chara.Humanoid.WalkSpeed = 8
atkd = false
targetted = nil

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

ShadowHead = New("Part",chara,"ShadowHead",{BrickColor = BrickColor.new("Really black"),Size = Vector3.new(1.20000005, 0.600000024, 1),CFrame = CFrame.new(68.5999985, 0.700013041, 9.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",ShadowHead,"Mesh",{Scale = Vector3.new(1.25999999, 1.5, 1.25999999),})
Weld = New("ManualWeld",ShadowHead,"Weld",{Part0 = ShadowHead,Part1 = chara.Head,C1 = CFrame.new(0, 0.200000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

Knifu = New("Model",chara,"Knifu",{})
Handle = New("Part",Knifu,"Handle",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000024, 0.400000006),CFrame = CFrame.new(54.1000023, 0.6000067, 26.4000034, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Handle,"Mesh",{})
KWeld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),C1 = CFrame.new(0, -1.00000644, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Hitbox = New("Part",Knifu,"Hitbox",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 1.4000001, 0.400000006),CFrame = CFrame.new(54.1000023, 0.6000067, 27.6000042, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",Hitbox,"Weld",{Part0 = Hitbox,Part1 = Handle,C1 = CFrame.new(0, 1.20000052, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(54.1000023, 0.6000067, 26.2000046, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 0.949999988, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0, -0.199999809, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(54.1000023, 0.6000067, 26.8000031, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.5, 1.20000005, 1.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0, 0.400000334, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(54.1000023, 0.800005555, 26.8000031, -1, 0, 0, 0, 0, -1, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 1.20000005),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.400000095, 0.199998856, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000036),CFrame = CFrame.new(54.1000023, 0.400004029, 26.8000031, 1, 0, 0, 0, 0, 1, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 1.20000005),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.400000095, -0.20000267, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(54.1000023, 0.500006318, 27.2000046, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.400000006, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0, 0.800000429, -0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
BloodPart = New("Part",Knifu,"BloodPart",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.399999946, 0.400000036),CFrame = CFrame.new(54.1000023, 0.600008607, 28.1000042, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",BloodPart,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",BloodPart,"Weld",{Part0 = BloodPart,Part1 = Handle,C1 = CFrame.new(0, 1.70000005, 1.90734863e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700007081, 27.8000031, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.400000006, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0, 1.40000057, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.0000038, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.599999905, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.0000038, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.599999905, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.2000027, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.799999952, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.2000027, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.799999952, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.4000034, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.4000034, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.6000042, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.20000005, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700008988, 27.6000042, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.20000005, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(54.1000023, 0.700007081, 27.4000034, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, 0, -0.0500000007),Scale = Vector3.new(0.400000006, 1, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0, 1.00000048, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(54.1000023, 0.6000067, 26.4000034, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 0.949999988, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0, 2.38418579e-07, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(54.1000023, 0.6000067, 26.6000042, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 0.949999988, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0, 0.200000286, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Blood2Part = New("Part",Knifu,"Blood2Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.400000036, 0.200000003),CFrame = CFrame.new(54.1000023, 0.500006318, 27.7000046, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Blood2Part,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Blood2Part,"Weld",{Part0 = Blood2Part,Part1 = Handle,C1 = CFrame.new(0, 1.30000043, -0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000033),CFrame = CFrame.new(54.1000023, 0.700008988, 27.8000031, -1, 0, 0, 0, 0, -1, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.4000001, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Knifu,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000033),CFrame = CFrame.new(54.1000023, 0.500008225, 27.4000034, -1, 0, 0, 0, 0, -1, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 1, -0.0999984741, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

local p1mit = Instance.new("ParticleEmitter",Hitbox)
p1mit.Texture = "rbxasset://textures/particles/fire_main.dds"
p1mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(.6,0,0)),ColorSequenceKeypoint.new(1,Color3.new(.6,0,0))})
p1mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
p1mit.Lifetime = NumberRange.new(2)
p1mit.Rate = 100
p1mit.Enabled = false
p1mit.Acceleration = Vector3.new(0,-5,0)
p1mit.Rotation = NumberRange.new(0,359)
p1mit.Speed = NumberRange.new(0)
local p2mit = Instance.new("ParticleEmitter",BloodPart)
p2mit.Texture = "http://www.roblox.com/asset/?id=243132757"
p2mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(.6,0,0)),ColorSequenceKeypoint.new(1,Color3.new(.6,0,0))})
p2mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,.1),NumberSequenceKeypoint.new(1,.1)})
p2mit.Lifetime = NumberRange.new(1)
p2mit.Rate = 10
p2mit.Acceleration = Vector3.new(0,-10,0)
p2mit.Speed = NumberRange.new(0)
local p3mit = p2mit:Clone()
p3mit.Parent = Blood2Part

crosshair = Instance.new("BillboardGui",chara)
crosshair.Size = UDim2.new(10,0,10,0)
crosshair.Enabled = false
imgl = Instance.new("ImageLabel",crosshair)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://233522684"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(.6,0,0)

--Sounds--
function LoadSnd(id,loop,vol,pit)
local snd = New("Sound",chara,"Sound",{SoundId = "rbxassetid://"..id,Looped = loop,Volume = vol,Pitch = pit})
return snd
end
Music = LoadSnd(150674644,true,1,1)
SwingSnd = LoadSnd(12222208,false,1,.5)
HitSnd = LoadSnd(429400881,false,1,1)
ChatSnd = LoadSnd(565939471,false,1,.4)
ThrowSnd = LoadSnd(743521497,false,1,1)
TargetSnd = LoadSnd(743521450,false,1,1)
Music:Play()

--Play Sound in Part--
function PlaySnd(snd,part)
local sound = snd:Clone()
sound.PlayOnRemove = true
sound.Parent = part
sound:Destroy()
end

--Target Select--
function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
for i = 0,30,10 do
wait(.05)
crosshair.Size = UDim2.new(40-i,0,40-i,0)
end
end
end)
dd()
end

--Damage Function--
function dealdmg(dude)
dude.Humanoid.PlatformStand = true
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"
for i = 1, 6 do
local blo = Instance.new("Part",game.Workspace)
blo.Size = Vector3.new(.6,.2,.6)
blo.Material = "SmoothPlastic"
blo.BrickColor = BrickColor.new("Crimson")
blo.Position = dude.Head.Position
blo.CFrame = dude.Head.CFrame
debby:AddItem(blo,30)
end
local ds = coroutine.wrap(function()
wait(1)
dude.Humanoid.Health = 0
end)
ds()
end

--Explode Hitbox--
function ExHitbox(rad,pos,damage,env,toim)
local E = Instance.new("Explosion") 
E.Position = pos
E.Parent = game.Workspace
E.BlastRadius = rad
E.BlastPressure = 0
E.Visible = false
E.Hit:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil then
dealdmg(hit.Parent,damage,env,toim)
end
end)
end

--Chat Function--
function chatfunc(text)
local chat = coroutine.wrap(function()
if chara:FindFirstChild("TalkingBillBoard")~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
PlaySnd(ChatSnd,chara)
tecks2.Text = string.sub(text,1,i)
wait(0.01)
end
wait(1)
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat()
end

function onChatted(msg)
chatfunc(msg)
end
player.Chatted:connect(onChatted)

--Blade Hit Effect--
function SlashEff(pos)
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(0,0,0)
p.BrickColor = BrickColor.new("White")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = pos * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
pm.Scale = Vector3.new(2.5,0,2.5)
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(0,30,0)
end
wait(.01)
p:Destroy()
end)
disp()
end

--Super Pause--
function SuperPause()
SuperSnd:Play()
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(0,0,0)
p.BrickColor = BrickColor.new("White")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = chara.Torso.CFrame
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(20,20,20)
end
wait(.01)
p:Destroy()
end)
disp()
end

--Blade Touch--
dela = .5
bladeactive = false
stormvipactive = false
executeactive = false
function bladehit(hit)
if bladeactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
p1mit.Enabled = true
PlaySnd(HitSnd,hit.Parent.Head)
dealdmg(hit.Parent)
if stormvipactive == true then
local bf = Instance.new("BodyVelocity",hit.Parent.Head)
bf.P = 10000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,100,0)
debby:AddItem(bf,.2)
end
if executeactive == true then
local we = Instance.new("Weld",Hitbox)
we.Name = "HitWeld"
we.Part0 = hit.Parent.Head
we.Part1 = Hitbox
we.C0 = we.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
end
wait(.5)
p1mit.Enabled = false
end
end
end
Hitbox.Touched:connect(bladehit)

--Material Return--
gprop = {}
function materialhit(hit)
if hit.Parent ~= chara and hit.Parent.Parent ~= chara and hit.Name ~= "Trace" and hit.Parent:FindFirstChild("Humanoid") == nil then
gprop = {hit.BrickColor,hit.Material}
end
end
chara["Left Leg"].Touched:connect(materialhit)
chara["Right Leg"].Touched:connect(materialhit)

--Clerp Animations--
TC = chara.HumanoidRootPart.RootJoint
HC = chara.Torso.Neck
RAC = chara.Torso["Right Shoulder"]
LAC = chara.Torso["Left Shoulder"]
RLC = chara.Torso["Right Hip"]
LLC = chara.Torso["Left Hip"]
TCF = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
HCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
RACF = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LACF = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RLCF = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LLCF = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RWF = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LWF = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RLWF = CFrame.new(-.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LLWF = CFrame.new(.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW = Instance.new("Weld",HC.Parent)
RW.Part1 = HC.Parent
RW.Part0 = chara["Right Arm"]
RW.C0 = RWF
LW = Instance.new("Weld",HC.Parent)
LW.Part1 = HC.Parent
LW.Part0 = chara["Left Arm"]
LW.C0 = LWF
RLW = nil
LLW = nil

function Sheath(stype)
KWeld:Destroy()
if stype == 1 then --Sheathed
KWeld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),C1 = CFrame.new(0, -1.00000644, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
elseif stype == 2 then --Unsheathed
KWeld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1.00000525, 4.17232513e-07, 0, 4.17232513e-07, 1.00000525),C1 = CFrame.new(0, -0.600002885, -0.0999984741, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
end
end

function AddLegWelds()
RLW = Instance.new("Weld",chara["Right Leg"])
RLW.Part1 = HC.Parent
RLW.Part0 = chara["Right Leg"]
RLW.C0 = RLWF
LLW = Instance.new("Weld",chara["Left Leg"])
LLW.Part1 = HC.Parent
LLW.Part0 = chara["Left Leg"]
LLW.C0 = LLWF
end

function DestroyLegWelds()
RLC = New("Motor6D",chara.Torso,"Right Hip",{Part0 = chara.Torso,Part1 = chara["Right Leg"],C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),})
LLC = New("Motor6D",chara.Torso,"Left Hip",{Part0 = chara.Torso,Part1 = chara["Left Leg"],C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
RLW:Destroy()
LLW:Destroy()
end

function clerp(a,b,c)
return a:lerp(b,c)
end

--TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
--HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
--RW.C0 = (RWF + Vector3.new(1,2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
--LW.C0 = LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(2))

TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF

--Idle Clerp--
ITCF = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(10))
IHCF = HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,math.rad(-10))
IRWF = RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-2))
ILWF = LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(2))

TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF

--Claw Dash--
function ClawDash()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
chatfunc("Without a trace...")
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,RWF,.4+i)
end
local hittpart = Instance.new("Part",chara)
hittpart.Anchored = true
hittpart.Size = Vector3.new(5,5,1)
hittpart.Transparency = 1
hittpart.CFrame = chara.HumanoidRootPart.CFrame + (chara.HumanoidRootPart.CFrame.lookVector * 3)
local sawlookv = hittpart.CFrame.lookVector
local hitm = Instance.new("BlockMesh",hittpart)
hitm.Scale = Vector3.new(0,0,0)
local trpart = Instance.new("Part",chara)
trpart.Anchored = true
trpart.Size = Vector3.new(0,0,0)
trpart.CFrame = hittpart.CFrame
trpart.BrickColor = BrickColor.new("Really black")
local trmesh = Instance.new("FileMesh",trpart)
trmesh.Scale = Vector3.new(0,0,0)
trmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
local hdec1 = Instance.new("Decal",hittpart)
hdec1.Texture = "http://www.roblox.com/asset/?id=362691215"
hdec1.Face = "Front"
local hdec2 = hdec1:Clone()
hdec2.Parent = hittpart
hdec2.Face = "Back"
OrbSnd:Play()
ElectricSnd:Play()
for i = 1, 5 do
hitm.Scale = hitm.Scale + Vector3.new(.2,.2,0)
trmesh.Scale = trmesh.Scale + Vector3.new(1,1,.1)
wait(.01)
end
hittpart.Touched:connect(function(hit)
if hit.Parent ~= chara then
ClawDashSnd:Play()
hittpart:Destroy()
trpart:Destroy()
AddLegWelds()
freezeatk = true
chatfunc("Winter's Riposte!")
Sheath(4)
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
LW.C0 = (LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50))
LLW.C0 = LLWF
RLW.C0 = RLWF + Vector3.new(0,-1,1)
for i = 1, 10 do
local trace = Instance.new("Part",game.Workspace)
trace.CanCollide = false
trace.Size = Vector3.new(1,1,1)
trace.Transparency = 1
trace.BottomSurface = 0
trace.TopSurface = 0
trace.Anchored = true
trace.CFrame = (chara.HumanoidRootPart.CFrame + chara.HumanoidRootPart.CFrame.lookVector * (5*i))
debby:AddItem(trace,1)
ExHitbox(10,trace.Position,40,2,.1)
end
local trace = Instance.new("Part",game.Workspace)
trace.BrickColor = BrickColor.new("Toothpaste")
trace.CanCollide = false
trace.Size = Vector3.new(1,1,1)
trace.BottomSurface = 0
trace.TopSurface = 0
trace.Anchored = true
trace.CFrame = chara.HumanoidRootPart.CFrame + chara.HumanoidRootPart.CFrame.lookVector * 25
trace.Material = "Neon"
local tracem = Instance.new("SpecialMesh",trace)
tracem.MeshType = "Sphere"
tracem.Scale = Vector3.new(1,1,50)
local disp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
end
wait(.01)
trace:Destroy()
end)
disp()
chara.HumanoidRootPart.CFrame = chara.HumanoidRootPart.CFrame + chara.HumanoidRootPart.CFrame.lookVector * 60
wait(1)
Sheath(3)
for i = 0,.6,.2 do
wait(.05)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.6-i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.6-i)
LLW.C0 = LLWF
RLW.C0 = clerp(RLWF,RLWF + Vector3.new(0,-1,1),.6-i)
end
Sheath(1)
freezeatk = false
del = false
DestroyLegWelds()
chara.Humanoid.WalkSpeed = 32
end
end)
for i = 1, 60 do
wait(.01)
hittpart.CFrame=hittpart.CFrame*CFrame.fromEulerAnglesXYZ(0,0,math.pi/64)
end
if hittpart ~= nil then
for i = 1, 5 do
hitm.Scale = hitm.Scale - Vector3.new(.2,.2,0)
trmesh.Scale = trmesh.Scale - Vector3.new(1,1,.1)
wait(.01)
end
hittpart:Destroy()
trpart:Destroy()
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,RWF,.6-i)
end
del = false
chara.Humanoid.WalkSpeed = 32
end
end

--Kill--
function KillThem()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
bladeactive = true
SwingSnd:Play()
Sheath(2)
wait(.01)
for i = 0,.75,.22 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
wait(1)
Sheath(1)
bladeactive = false
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
chara.Humanoid.WalkSpeed = 8
del = false
end

--End--
function EndThem()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
bladeactive = true
SwingSnd:Play()
wait(.01)
for i = 0,.75,.25 do
wait(.01)
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,0),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,0,-.4)) * CFrame.fromEulerAnglesXYZ(math.rad(-150),0,math.rad(-90)),.4+i)
end
wait(.5)
bladeactive = false
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF,.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,0),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,0,-.4)) * CFrame.fromEulerAnglesXYZ(math.rad(-150),0,math.rad(-90)),.6-i)
end
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
chara.Humanoid.WalkSpeed = 8
del = false
end

--Murder--
function MurderThem()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-25),0,math.rad(100)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(100)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.7,1.4,-1.1)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-180)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(30)),.4+i)
end
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 10000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,100,0) + chara.HumanoidRootPart.CFrame.lookVector*5
SwingSnd:Play()
stormvipactive = true
bladeactive = true
wait(.2)
stormvipactive = false
bladeactive = false
bf:Destroy()
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-25),0,math.rad(100)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(100)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.7,1.4,-1.1)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-180)),.6-i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(30)),.6-i)
end
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
chara.Humanoid.WalkSpeed = 8
del = false
end

--Execute--
function ExecuteThem()
del = true
atkd = true
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 10000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,100,0) + chara.HumanoidRootPart.CFrame.lookVector*5
Sheath(2)
SwingSnd:Play()
executeactive = true
bladeactive = true
wait(.2)
bf:Destroy()
wait(.5)
if Hitbox:FindFirstChild("HitWeld")~=nil then
Hitbox:FindFirstChild("HitWeld"):Destroy()	
end
Sheath(1)
executeactive = false
bladeactive = false
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.6-i)
end
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
del = false
end

--Expunge--
function ExpungeThem()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
for i = 0,1,.5 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
ThrowSnd:Play()
local knc = Knifu:GetChildren()
for i = 1, #knc do
knc[i].Transparency = 1
end
wait(.2)
KnifuHit = New("Model",game.Workspace,"KnifuHit",{})
debby:AddItem(KnifuHit,5)
HWeldPart = New("Part",KnifuHit,"HWeldPart",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000024, 0.400000006),CFrame = CFrame.new(68.6099854, 1.50001717, 8.10717869, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",HWeldPart,"Mesh",{})
Weld = New("ManualWeld",HWeldPart,"Weld",{Part0 = HWeldPart,Part1 = targetted.Head,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),C1 = CFrame.new(0.00998687744, 1.00000417, -1.79282093, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000033),CFrame = CFrame.new(68.6099854, 0.913415372, 8.92320538, -1, 0, 0, 0, 0.500000536, -0.866025746, 0, -0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 1, -0.0999984741, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(68.6099854, 1.60001719, 7.93397379, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(1.20000005, 0.949999988, 1.20000005),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, -0.199999809, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(68.6099854, 1.30001676, 8.45358944, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(1.5, 1.20000005, 1.5),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 0.400000334, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(68.6099854, 1.47322106, 8.55358887, -1, 0, 0, 0, 0.500000536, -0.866025746, 0, -0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(1, 1, 1.20000005),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.400000095, 0.199998856, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000036),CFrame = CFrame.new(68.6099854, 1.12680948, 8.3535881, 1, 0, 0, 0, 0.500000536, 0.866025746, 0, -0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(1, 1, 1.20000005),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.400000095, -0.20000267, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(68.6099854, 1.01341367, 8.74999905, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",HPart,"Mesh",{Scale = Vector3.new(0.400000006, 1, 1),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 0.800000429, -0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.399999946, 0.400000036),CFrame = CFrame.new(68.6099854, 0.650017917, 9.5794239, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 1.70000005, 1.90734863e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 0.886619031, 9.36961555, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",HPart,"Mesh",{Scale = Vector3.new(0.400000006, 1, 1),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 1.40000057, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 1.28662145, 8.67679501, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.599999905, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 1.28662145, 8.67679501, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.599999905, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 1.18662131, 8.85000038, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.799999952, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 1.18662131, 8.85000038, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.799999952, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 1.08662117, 9.02320576, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 1.08662117, 9.02320576, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 0.986621022, 9.19641113, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, -0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.20000005, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.6099854, 0.986621022, 9.19641113, 1, 0, 0, 0, -0.500000536, -0.866025746, 0, 0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",HPart,"Mesh",{Offset = Vector3.new(0, 0.0500000007, -0.0500000007),Scale = Vector3.new(0.400000006, 0.5, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.20000005, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(68.6099854, 1.08661926, 9.0232048, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",HPart,"Mesh",{Offset = Vector3.new(0, 0, -0.0500000007),Scale = Vector3.new(0.400000006, 1, 0.5),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 1.00000048, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(68.6099854, 1.50001705, 8.10717869, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(1.20000005, 0.949999988, 1.20000005),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 2.38418579e-07, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(68.6099854, 1.4000169, 8.28038406, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(1.20000005, 0.949999988, 1.20000005),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 0.200000286, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.400000036, 0.200000003),CFrame = CFrame.new(68.6099854, 0.76341331, 9.18301201, -1, 0, 0, 0, -0.500000536, 0.866025746, 0, 0.866025746, 0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",HPart,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C1 = CFrame.new(0, 1.30000043, -0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HPart = New("Part",KnifuHit,"HPart",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000033),CFrame = CFrame.new(68.6099854, 0.886620879, 9.36961555, -1, 0, 0, 0, 0.500000536, -0.866025746, 0, -0.866025746, -0.500000536),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",HPart,"Mesh",{Scale = Vector3.new(0.409999996, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",HPart,"Weld",{Part0 = HPart,Part1 = HWeldPart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.4000001, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
dealdmg(targetted)
PlaySnd(HitSnd,targetted.Head)
wait(1)
for i = 0,1,.1 do
wait(.01)
for i = 1, #knc do
if knc[i] ~= Hitbox then
knc[i].Transparency = 1-i
end
end
end
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
chara.Humanoid.WalkSpeed = 8
del = false
end

--Lock On--
function LockOn()
if Mouse.Target.Parent ~= chara and Mouse.Target.Parent.Parent ~= chara and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
TargetSnd:Play()
else end
end

--Mouse Functions--
orbpushactive = false
del = false
input = ""
letterd = 0
ltoim = 0
function onKeyDown(key)
if del == false then
if key == "q" then 
if input == "as" and targetted ~= nil then
ExpungeThem()
else LockOn() end
input = ""
letterd = 0
ltoim = 0
elseif key == "z" then
input = ""
letterd = 0
ltoim = 0
elseif key == "x" then
input = ""
letterd = 0
ltoim = 0
elseif key == "c" then
if input == "aw" then
KillThem()
elseif input == "as" then
EndThem()
elseif input == "ds" then
MurderThem()
elseif input == "ww" then
ExecuteThem()
else end
input = ""
letterd = 0
ltoim = 0
elseif (key == "w" or key == "a" or key == "s" or key == "d") then
input=input..key
print(input)
letterd = letterd + 1
ltoim = ltoim + 10
if letterd > 5 then
input = ""
letterd = 0
ltoim = 0
end
elseif key == "m" then
if Music.IsPlaying == true then
Music:Stop()
elseif Music.IsPlaying == false then
Music:Play()
end
end
end
end
combo = 0

--Mouse Activation--
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
end

--Loop Function--
walking = false
toim = 0
while true do
wait()
toim = toim + .1
ltoim = ltoim - 1
if ltoim < 1 then
input = ""
end
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
if atkd == true then
TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF
atkd = false
end
torvel = (chara.HumanoidRootPart.Velocity*Vector3.new(1,0,1)).magnitude
if torvel < 1 and walking == true and del == false and atkd == false then
for i = 0,1,.5 do
wait(.001)
if del == false then
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(5),0,0),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(5),0,0),IHCF,i)
RW.C0 = IRWF
LW.C0 = ILWF
end
end
walking = false
elseif torvel > 1 and walking == false and del == false and atkd == false then
for i = 0,1,.5 do
wait(.001)
if del == false then
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(5),0,0),i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(5),0,0),i)
RW.C0 = IRWF
LW.C0 = ILWF
end
end
walking = true
else
end
imgl.Rotation = imgl.Rotation + 3
if targetted ~= nil then
crosshair.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
crosshair.Enabled = true
elseif targetted == nil then
crosshair.Adornee = nil
crosshair.Enabled = false
end
end