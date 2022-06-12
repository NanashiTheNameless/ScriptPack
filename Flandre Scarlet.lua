-----------
--Flandre--
-----------
--By	 --
--CKbackup-
-----------

--Player Stuff--

player = game.Players.LocalPlayer
chara = player.Character
mouse = nil
bladeactive = false
spellactive = false
debby = game:GetService("Debris")
combo = 1

local tool = Instance.new("Tool",player.Backpack)
tool.Name = "Scarlet Drive"
tool.CanBeDropped = false
tool.RequiresHandle = false

chara.Humanoid.MaxHealth = 666666666
chara.Humanoid.Health = 666666666

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

Hat = New("Model",chara,"Hat",{})
AAPlaceHolder3 = New("Part",Hat,"AAPlaceHolder3",{BrickColor = BrickColor.new("Brick yellow"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 1, 1),CFrame = CFrame.new(-12.4959135, 4.50012112, -5.79261875, 2.5535282e-014, 2.08617266e-007, 1, -4.06509848e-014, 1, -2.08617266e-007, -1, -4.06509814e-014, 2.55352922e-014),CanCollide = false,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.843137, 0.772549, 0.603922),})
Mesh = New("SpecialMesh",AAPlaceHolder3,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Decal = New("Decal",AAPlaceHolder3,"Decal",{Texture = "http://www.roblox.com/asset/?id=120491259",})
Weld = New("ManualWeld",AAPlaceHolder3,"Weld",{Part0 = AAPlaceHolder3,Part1 = chara.Head,C0 = CFrame.new(0, 0, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(-0.0074095726, 0.000156879425, 0.00408172607, 9.32036973e-014, -3.25225361e-013, -0.999991417, 8.94066375e-007, 0.999990225, -2.75733646e-013, 0.999998808, -7.74864873e-007, 8.14361328e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(2, 0.800000012, 1.39999986),CFrame = CFrame.new(-12.4959135, 5.20011616, -5.99257183, 2.84772917e-014, 2.38418494e-007, 0.999999404, -5.30236933e-014, 0.999995112, -1.78814886e-007, -0.999995708, -2.82779019e-014, 2.25931521e-014),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Scale = Vector3.new(1, 1.14999998, 1),VertexColor = Vector3.new(2, 0.899999976, 0.899999976),MeshId = "http://www.roblox.com/asset/?id=17223263",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(0.199953079, 0.699995041, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.600000024, 0.200000003),CFrame = CFrame.new(-12.4959135, 5.10010862, -5.09261179, 0.999999404, 2.38418494e-007, -2.84772917e-014, -1.78814886e-007, 0.999995112, 5.30236933e-014, 2.25931521e-014, -2.82779019e-014, 0.999995708),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Scale = Vector3.new(0.899999976, 0.899999976, 4),MeshId = "http://www.roblox.com/asset/?id=56855681",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 0.999999702, -1.19209844e-007, 1.67088565e-014, 1.49011839e-007, 0.999997556, -3.53218541e-015, -1.96509475e-014, 1.59051002e-014, 0.999997854),C1 = CFrame.new(-0.700006962, 0.599987507, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 1.20000005),CFrame = CFrame.new(-12.4959135, 5.10010862, -5.79261875, 0.999999404, 2.38418494e-007, -2.84772917e-014, -1.78814886e-007, 0.999995112, 5.30236933e-014, 2.25931521e-014, -2.82779019e-014, 0.999995708),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("CylinderMesh",Handle,"Mesh",{Scale = Vector3.new(1.29999995, 1, 1.29999995),})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 0.999999702, -1.19209844e-007, 1.67088565e-014, 1.49011839e-007, 0.999997556, -3.53218541e-015, -1.96509475e-014, 1.59051002e-014, 0.999997854),C1 = CFrame.new(0, 0.599987507, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 1.20000005),CFrame = CFrame.new(-12.3953495, 5.10010862, -5.79261875, 0.999999404, 2.38418494e-007, -2.84772917e-014, -1.78814886e-007, 0.999995112, 5.30236933e-014, 2.25931521e-014, -2.82779019e-014, 0.999995708),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("CylinderMesh",Handle,"Mesh",{Scale = Vector3.new(1.29999995, 1, 1.29999995),})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 0.999999702, -1.19209844e-007, 1.67088565e-014, 1.49011839e-007, 0.999997556, -3.53218541e-015, -1.96509475e-014, 1.59051002e-014, 0.999997854),C1 = CFrame.new(0, 0.599987507, 0.100564003, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Bright yellow"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.20000005, 2.40000033, 1),CFrame = CFrame.new(-12.2957315, 4.800107, -5.79261875, 2.84772917e-014, 2.38418494e-007, 0.999999404, -5.30236933e-014, 0.999995112, -1.78814886e-007, -0.999995708, -2.82779019e-014, 2.25931521e-014),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Scale = Vector3.new(1, 0.300000012, 1),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(0, 0.299985886, 0.200181961, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Bright yellow"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 2.20000029, 1),CFrame = CFrame.new(-12.0955343, 4.10011625, -5.69258547, 2.84772917e-014, 2.38418494e-007, 0.999999404, -5.30236933e-014, 0.999995112, -1.78814886e-007, -0.999995708, -2.82779019e-014, 2.25931521e-014),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Scale = Vector3.new(1, 1.29999995, 0.699999988),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(-0.100033283, -0.400004864, 0.400379181, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Bright yellow"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000033),CFrame = CFrame.new(-12.4959135, 4.81969833, -4.99263573, 0.999997079, 8.29022753e-008, -2.00805985e-007, -1.55751508e-007, 0.499995232, -0.866017103, 7.23185636e-008, 0.866019487, 0.499996632),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Scale = Vector3.new(0.200000003, 0.400000006, 0.200000003),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 0.999997377, -9.61465219e-008, 7.23187128e-008, 3.81991576e-008, 0.499996454, 0.866021335, -1.2337793e-007, -0.866019249, 0.499997705),C1 = CFrame.new(-0.799983025, 0.319577217, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Handle = New("Part",Hat,"Handle",{BrickColor = BrickColor.new("Bright yellow"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000033),CFrame = CFrame.new(-12.4959135, 4.61970377, -4.79262447, 0.965922832, 0.258818537, 2.52412946e-007, -0.249997854, 0.933003724, 0.258816749, 0.066986762, -0.249998495, 0.965919256),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Scale = Vector3.new(0.300000012, 0.800000012, 0.300000012),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = AAPlaceHolder3,C0 = CFrame.new(0, 0, 0, 0.96592319, -0.249998406, 0.0669869035, 0.258818537, 0.933005989, -0.249999031, 2.29272956e-007, 0.258817375, 0.965921342),C1 = CFrame.new(-0.999994278, 0.119582653, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
LeftLeg = New("Model",chara,"LeftLeg",{})
AAPlaceHolder6 = New("Part",LeftLeg,"AAPlaceHolder6",{BrickColor = BrickColor.new("Brick yellow"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-12.4959135, 1.000054, -5.29262209, 2.19269047e-014, 1.49011839e-007, 0.999999702, 1.49011097e-008, 0.999997497, -1.19209844e-007, -0.999997795, 1.49011292e-008, 1.67088565e-014),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.843137, 0.772549, 0.603922),})
Weld = New("ManualWeld",AAPlaceHolder6,"Weld",{Part0 = AAPlaceHolder6,Part1 = chara["Left Leg"],C0 = CFrame.new(0, 0, 0, 2.19269047e-014, 1.49011097e-008, -0.999997795, 1.49011839e-007, 0.999997497, 1.49011292e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(-0.0074005127, 5.13195992e-005, 0.0040845871, 7.99365795e-014, -1.49013442e-008, -0.999991357, 8.94066318e-007, 0.999990165, -1.49013104e-008, 0.999998808, -7.74864873e-007, 8.14361328e-014),})
OutfitPart = New("Part",LeftLeg,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-12.4959135, 0.900063872, -5.29262209, 6.88827106e-010, 2.38419176e-007, 0.999999702, -1.8850967e-008, 0.999997497, -2.08616996e-007, -0.999997795, -1.88509581e-008, 6.8882744e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder6,C0 = CFrame.new(0, 0, 0, 6.88819168e-010, -1.88508817e-008, -0.999993563, 2.08615333e-007, 0.999991775, -1.88508444e-008, 0.999998212, -2.98032248e-008, 6.88802126e-010),C1 = CFrame.new(0, -0.0999903679, 0, 2.19269047e-014, 1.49011097e-008, -0.999997795, 1.49011839e-007, 0.999997497, 1.49011292e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",LeftLeg,"OutfitPart",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.00000012, 1, 1),CFrame = CFrame.new(-12.4959135, 1.50013804, -5.292624, 6.88824997e-010, 5.96053766e-008, 0.999999702, -1.88509635e-008, 0.999997556, -2.98035872e-008, -0.999997854, -1.88509581e-008, 6.88821999e-010),CanCollide = false,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder6,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0, 0.500082731, 0, 2.19269047e-014, 1.49011097e-008, -0.999997795, 1.49011839e-007, 0.999997497, 1.49011292e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",LeftLeg,"OutfitPart",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-12.4959135, 0.100042, -5.29262209, 6.88817114e-010, 1.78813281e-007, 0.999998808, -1.885088e-008, 0.999992251, -5.96054619e-008, -0.999993443, -1.88508515e-008, 6.88805013e-010),CanCollide = false,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder6,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0, -0.900014699, 0, 2.19269047e-014, 1.49011097e-008, -0.999997795, 1.49011839e-007, 0.999997497, 1.49011292e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",LeftLeg,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(-12.4959135, 0.400039852, -5.29262209, 6.88827106e-010, 2.38419176e-007, 0.999999702, -1.8850967e-008, 0.999997497, -2.08616996e-007, -0.999997795, -1.88509581e-008, 6.8882744e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder6,C0 = CFrame.new(0, 0, 0, 6.88819168e-010, -1.88508817e-008, -0.999993563, 2.08615333e-007, 0.999991775, -1.88508444e-008, 0.999998212, -2.98032248e-008, 6.88802126e-010),C1 = CFrame.new(0, -0.60001564, 0, 2.19269047e-014, 1.49011097e-008, -0.999997795, 1.49011839e-007, 0.999997497, 1.49011292e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
RightArm = New("Model",chara,"RightArm",{})
AAPlaceHolder5 = New("Part",RightArm,"AAPlaceHolder5",{BrickColor = BrickColor.new("Brick yellow"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-12.4959135, 3.00057197, -7.29235411, 6.88815172e-010, 1.49011797e-007, 0.999999404, -1.88509617e-008, 0.999997258, -8.9407564e-008, -0.999997854, -1.88509492e-008, 6.88811008e-010),CanCollide = false,Color = Color3.new(0.843137, 0.772549, 0.603922),})
Weld = New("ManualWeld",AAPlaceHolder5,"Weld",{Part0 = AAPlaceHolder5,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(-0.00766372681, 0.000580072403, 0.00408267975, 6.88880009e-010, -1.88512939e-008, -1, 8.94075129e-007, 1, -1.88512956e-008, 1, -8.94075185e-007, 6.88896939e-010),})
OutfitPart = New("Part",RightArm,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.600000024, 1),CFrame = CFrame.new(-12.4959135, 3.70057392, -7.2923522, 6.88801294e-010, 2.98031964e-008, 0.999999702, -1.88509599e-008, 0.999997556, -1.45661261e-012, -0.999997854, -1.88509528e-008, 6.88797686e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0, 0.700009108, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.637536, 2.76374221, -7.26729441, 0.00910931826, 0.999920189, -0.00851878803, 0.0669089854, -0.00910920184, -0.997709394, -0.997710705, 0.00851855241, -0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, 0.999921381, -0.00910931174, 0.00851858966, -0.00851873774, -0.997714877, -0.0669870675),C1 = CFrame.new(-0.0250597, -0.236830711, -2.1416235, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.0388832, 2.56786203, -7.28413916, -0.00910931826, 0.999920189, 0.00851878803, -0.0669089854, -0.00910920184, 0.997709394, 0.997710705, 0.00851855241, 0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, 0.999921381, -0.00910931174, 0.00851858966, 0.00851873774, 0.997714877, 0.0669870675),C1 = CFrame.new(-0.00821495056, -0.432711363, -2.54297161, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(-15.4451408, 1.87315285, -7.33443213, -0.00910931826, -0.00851878803, 0.999920189, -0.0669089854, -0.997709394, -0.00910920184, 0.997710705, -0.0669867843, 0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, -0.00851873774, -0.997714877, -0.0669870675, 0.999921381, -0.00910931174, 0.00851858966),C1 = CFrame.new(0.0420780182, -1.12742245, -2.94922924, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(-15.4402561, 2.47172093, -7.29420996, 0.00910931826, 0.00851878803, 0.999920189, 0.0669089854, 0.997709394, -0.00910920184, -0.997710705, 0.0669867843, 0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, 0.00851873774, 0.997714877, 0.0669870675, 0.999921381, -0.00910931174, 0.00851858966),C1 = CFrame.new(0.00185585022, -0.528852701, -2.94434452, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.647294, 1.5665766, -7.34773588, -0.00910931826, 0.999920189, 0.00851878803, -0.0669089854, -0.00910920184, 0.997709394, 0.997710705, 0.00851855241, 0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, 0.999921381, -0.00910931174, 0.00851858966, 0.00851873774, 0.997714877, 0.0669870675),C1 = CFrame.new(0.0553817749, -1.43399954, -2.15138149, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-9.64240837, 2.21939516, -7.25826025, -0.00910931826, 0.00851878803, -0.999920189, -0.0669089854, 0.997709394, 0.00910920184, 0.997710705, 0.0669867843, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, 0.00851873774, 0.997714877, 0.0669870675, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(-0.0340938568, -0.781178713, 2.85350704, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-9.64339638, 2.01987743, -7.27162504, 0.00910931826, -0.00851878803, -0.999920189, 0.0669089854, -0.997709394, 0.00910920184, -0.997710705, -0.0669867843, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, -0.00851873774, -0.997714877, -0.0669870675, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(-0.0207290649, -0.980696917, 2.85251904, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-15.8387585, 2.57515478, -7.29091406, -0.00910931826, -0.999920189, -0.00851878803, -0.0669089854, 0.00910920184, -0.997709394, 0.997710705, -0.00851855241, -0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, -0.999921381, 0.00910931174, -0.00851858966, -0.00851873774, -0.997714877, -0.0669870675),C1 = CFrame.new(-0.00144004822, -0.425418615, -3.34284687, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.8387108, 2.56603003, -7.28243017, 0.00910931826, -0.999920189, 0.00851878803, 0.0669089854, 0.00910920184, 0.997709394, -0.997710705, -0.00851855241, 0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966, 0.00851873774, 0.997714877, 0.0669870675),C1 = CFrame.new(-0.00992393494, -0.434543371, -2.34279919, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.2371368, 2.76920509, -7.27242041, -0.00910931826, -0.999920189, -0.00851878803, -0.0669089854, 0.00910920184, -0.997709394, 0.997710705, -0.00851855241, -0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, -0.999921381, 0.00910931174, -0.00851858966, -0.00851873774, -0.997714877, -0.0669870675),C1 = CFrame.new(-0.0199337006, -0.231367826, -2.74122524, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000036, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.2449341, 1.87133789, -7.33272314, -0.00851878803, -0.00910931826, -0.999920189, -0.997709394, -0.0669089854, 0.00910920184, -0.0669867843, 0.997710705, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00851873774, -0.997714877, -0.0669870675, -0.00910932571, -0.0669093579, 0.997714996, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(0.0403690338, -1.12923741, -2.74902248, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.240057, 2.46992183, -7.29249907, 0.00851878803, 0.00910931826, -0.999920189, 0.997709394, 0.0669089854, 0.00910920184, 0.0669867843, -0.997710705, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00851873774, 0.997714877, 0.0669870675, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(0.000144958496, -0.530651808, -2.74414539, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.8445597, 1.96749949, -7.32259035, 0.00910931826, -0.999920189, 0.00851878803, 0.0669089854, 0.00910920184, 0.997709394, -0.997710705, -0.00851855241, 0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966, 0.00851873774, 0.997714877, 0.0669870675),C1 = CFrame.new(0.0302362442, -1.03307557, -2.34864712, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000036, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.6394739, 2.4644587, -7.28743505, 0.00851878803, 0.00910931826, -0.999920189, 0.997709394, 0.0669089854, 0.00910920184, 0.0669867843, -0.997710705, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00851873774, 0.997714877, 0.0669870675, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(-0.00491905212, -0.536114931, -2.14356136, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000036, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.6453466, 1.86587393, -7.32759619, -0.00851878803, -0.00910931826, -0.999920189, -0.997709394, -0.0669089854, 0.00910920184, -0.0669867843, 0.997710705, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00851873774, -0.997714877, -0.0669870675, -0.00910932571, -0.0669093579, 0.997714996, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(0.0352420807, -1.13470137, -2.14943409, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.0437822, 1.96929646, -7.32430029, -0.00910931826, 0.999920189, 0.00851878803, -0.0669089854, -0.00910920184, 0.997709394, 0.997710705, 0.00851855241, 0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, 0.999921381, -0.00910931174, 0.00851858966, 0.00851873774, 0.997714877, 0.0669870675),C1 = CFrame.new(0.0319461823, -1.03127861, -2.54786968, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-14.9373417, 2.76647305, -7.26985502, 0.00851878803, 0.00910931826, -0.999920189, 0.997709394, 0.0669089854, 0.00910920184, 0.0669867843, -0.997710705, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00851873774, 0.997714877, 0.0669870675, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(-0.0224990845, -0.234099865, -2.44143009, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.8455477, 1.76793444, -7.33601904, -0.00910931826, -0.999920189, -0.00851878803, -0.0669089854, 0.00910920184, -0.997709394, 0.997710705, -0.00851855241, -0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, -0.999921381, 0.00910931174, -0.00851858966, -0.00851873774, -0.997714877, -0.0669870675),C1 = CFrame.new(0.0436649323, -1.2326411, -2.34963512, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.0457182, 1.7697494, -7.33772802, 0.00910931826, 0.999920189, -0.00851878803, 0.0669089854, -0.00910920184, -0.997709394, -0.997710705, 0.00851855241, -0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, 0.999921381, -0.00910931174, 0.00851858966, -0.00851873774, -0.997714877, -0.0669870675),C1 = CFrame.new(0.0453739166, -1.23082614, -2.54980564, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-14.9471216, 1.56930757, -7.35024023, -0.00851878803, -0.00910931826, -0.999920189, -0.997709394, -0.0669089854, 0.00910920184, -0.0669867843, 0.997710705, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00851873774, -0.997714877, -0.0669870675, -0.00910932571, -0.0669093579, 0.997714996, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(0.0578861237, -1.43126857, -2.45120907, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.0408592, 2.36834621, -7.29750395, 0.00910931826, 0.999920189, -0.00851878803, 0.0669089854, -0.00910920184, -0.997709394, -0.997710705, 0.00851855241, -0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, 0.999921381, -0.00910931174, 0.00851858966, -0.00851873774, -0.997714877, -0.0669870675),C1 = CFrame.new(0.00514984131, -0.632227659, -2.54494762, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.2478828, 1.57204056, -7.35280275, 0.00910931826, -0.999920189, 0.00851878803, 0.0669089854, 0.00910920184, 0.997709394, -0.997710705, -0.00851855241, 0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966, 0.00851873774, 0.997714877, 0.0669870675),C1 = CFrame.new(0.0604486465, -1.42853558, -2.75197124, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.840662, 2.36651731, -7.29579496, -0.00910931826, -0.999920189, -0.00851878803, -0.0669089854, 0.00910920184, -0.997709394, 0.997710705, -0.00851855241, -0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, -0.00910932571, -0.0669093579, 0.997714996, -0.999921381, 0.00910931174, -0.00851858966, -0.00851873774, -0.997714877, -0.0669870675),C1 = CFrame.new(0.00344085693, -0.634056568, -2.3447504, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LavateinPart = New("Part",RightArm,"LavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-15.8455944, 1.7770884, -7.34456396, 0.00910931826, -0.999920189, 0.00851878803, 0.0669089854, 0.00910920184, 0.997709394, -0.997710705, -0.00851855241, 0.0669867843),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",LavateinPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",LavateinPart,"Weld",{Part0 = LavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966, 0.00851873774, 0.997714877, 0.0669870675),C1 = CFrame.new(0.0522098541, -1.22348726, -3.34968281, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
MainLavateinPart = New("Part",RightArm,"MainLavateinPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 6.20000076),CFrame = CFrame.new(-13.0427895, 2.15063047, -7.29390478, 0.00851878803, 0.00910931826, -0.999920189, 0.997709394, 0.0669089854, 0.00910920184, 0.0669867843, -0.997710705, -0.00851855241),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Weld = New("ManualWeld",MainLavateinPart,"Weld",{Part0 = MainLavateinPart,Part1 = AAPlaceHolder5,C0 = CFrame.new(0, 0, 0, 0.00851873774, 0.997714877, 0.0669870675, 0.00910932571, 0.0669093579, -0.997714996, -0.999921381, 0.00910931174, -0.00851858966),C1 = CFrame.new(0.00155067444, -0.849943876, -0.546875954, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),})
LeftArm = New("Model",chara,"LeftArm",{})
AAPlaceHolder2 = New("Part",LeftArm,"AAPlaceHolder2",{BrickColor = BrickColor.new("Brick yellow"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-12.4959135, 3.00011396, -4.29262304, 1.97064587e-014, 1.49011825e-007, 0.999999702, -1.41287433e-014, 0.999997437, -1.19209844e-007, -0.999997735, -1.75582857e-015, 1.67088565e-014),CanCollide = false,Color = Color3.new(0.843137, 0.772549, 0.603922),})
Weld = New("ManualWeld",AAPlaceHolder2,"Weld",{Part0 = AAPlaceHolder2,Part1 = chara["Left Arm"],C0 = CFrame.new(0, 0, 0, 1.97064587e-014, -1.41287433e-014, -0.999997735, 1.49011825e-007, 0.999997437, -1.75582857e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(-0.00741672516, 0.000129699707, 0.00408172607, 9.32592016e-014, -3.23449004e-013, -0.999991298, 8.94066261e-007, 0.999990106, -2.73957289e-013, 0.999998808, -7.74864873e-007, 8.14361328e-014),})
OutfitPart = New("Part",LeftArm,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.600000024, 1),CFrame = CFrame.new(-12.4959135, 3.70009995, -4.29262495, 6.8880307e-010, 5.96054122e-008, 0.999999702, -1.88509599e-008, 0.999997556, -2.98036085e-008, -0.999997854, -1.88509528e-008, 6.88800017e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder2,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0, 0.699993134, 0, 1.97064587e-014, -1.41287433e-014, -0.999997735, 1.49011825e-007, 0.999997437, -1.75582857e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
Torso = New("Model",chara,"Torso",{})
AAPlaceHolder1 = New("Part",Torso,"AAPlaceHolder1",{BrickColor = BrickColor.new("Brick yellow"),Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 2, 1),CFrame = CFrame.new(-12.4959135, 3.00009799, -5.79261875, 1.96509475e-014, 1.49011839e-007, 0.999999702, -1.59051002e-014, 0.999997556, -1.19209844e-007, -0.999997854, -3.53218541e-015, 1.67088565e-014),CanCollide = false,BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,Color = Color3.new(0.843137, 0.772549, 0.603922),})
Weld = New("ManualWeld",AAPlaceHolder1,"Weld",{Part0 = AAPlaceHolder1,Part1 = chara.Torso,C0 = CFrame.new(0, 0, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(-0.00740814209, 0.000116825104, 0.00408267975, 9.32036973e-014, -3.25225361e-013, -0.999991417, 8.94066375e-007, 0.999990225, -2.75733646e-013, 0.999998808, -7.74864873e-007, 8.14361328e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.600000024, 1),CFrame = CFrame.new(-12.4959135, 3.70011997, -6.69257879, 6.88817059e-010, 1.78813295e-007, 0.999998808, -1.88508817e-008, 0.999992371, -5.9605469e-008, -0.999993563, -1.88508551e-008, 6.88805069e-010),CanCollide = false,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1, 1.04999995, 1.04999995),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0.899963379, 0.700024366, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.60000014, 0.600000024, 1),CFrame = CFrame.new(-12.4959135, 3.70010495, -5.79261875, 6.88817059e-010, 1.78813295e-007, 0.999998808, -1.88508817e-008, 0.999992371, -5.9605469e-008, -0.999993563, -1.88508551e-008, 6.88805069e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1, 1.04999995, 1.04999995),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0, 0.700008392, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(2.00000024, 1.20000005, 1),CFrame = CFrame.new(-12.4959135, 2.80011511, -5.79256105, 6.88826995e-010, 2.38419176e-007, 0.999999702, -1.88509635e-008, 0.999997556, -2.08616996e-007, -0.999997854, -1.88509581e-008, 6.88827384e-010),CanCollide = false,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1, 1.04999995, 1.04999995),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 6.88819168e-010, -1.88508817e-008, -0.999993563, 2.08615333e-007, 0.999991775, -1.88508444e-008, 0.999998212, -2.98032248e-008, 6.88802126e-010),C1 = CFrame.new(-5.76972961e-005, -0.199983358, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.600000024, 1),CFrame = CFrame.new(-12.4959135, 3.70011997, -4.89260292, 6.88817059e-010, 1.78813295e-007, 0.999998808, -1.88508817e-008, 0.999992371, -5.9605469e-008, -0.999993563, -1.88508551e-008, 6.88805069e-010),CanCollide = false,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1, 1.04999995, 1.04999995),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(-0.900017738, 0.700024366, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(2.00000024, 0.200000003, 1),CFrame = CFrame.new(-12.4959135, 2.100137, -5.79261875, 6.88817059e-010, 1.78813295e-007, 0.999998808, -1.88508817e-008, 0.999992371, -5.9605469e-008, -0.999993563, -1.88508551e-008, 6.88805069e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1, 1.04999995, 1.04999995),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0, -0.899963856, 0, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Bright yellow"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 0.400000036),CFrame = CFrame.new(-12.9959135, 3.90011597, -5.79256105, 6.88817059e-010, 1.78813295e-007, 0.999998808, -1.88508817e-008, 0.999992371, -5.9605469e-008, -0.999993563, -1.88508551e-008, 6.88805069e-010),CanCollide = false,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.699999988, 1.20000005, 0.300000012),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(-5.76972961e-005, 0.900019646, -0.5, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Bright yellow"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-12.9959135, 3.7001214, -5.69258642, -0.999999702, 2.98031964e-008, 6.88801294e-010, 1.45661261e-012, 0.999997556, -1.88509599e-008, -6.88797686e-010, -1.88509528e-008, -0.999997854),CanCollide = false,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.200000003, 3, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -0.999998212, 2.98032248e-008, -6.88802126e-010, 2.08615333e-007, 0.999991775, -1.88508444e-008, 6.88819168e-010, -1.88508817e-008, -0.999993563),C1 = CFrame.new(-0.10003233, 0.700025082, -0.5, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Bright yellow"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-12.9959135, 3.7001214, -5.89259577, 0.999999702, 2.98031964e-008, -6.88801294e-010, -1.45661261e-012, 0.999997556, 1.88509599e-008, 6.88797686e-010, -1.88509528e-008, 0.999997854),CanCollide = false,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.200000003, 3, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 0.999998212, -2.98032248e-008, 6.88802126e-010, 2.08615333e-007, 0.999991775, -1.88508444e-008, -6.88819168e-010, 1.88508817e-008, 0.999993563),C1 = CFrame.new(0.0999770164, 0.700025082, -0.5, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Really blue"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953495, 3.79868555, -8.63738346, 7.03099374e-008, 2.35202478e-007, 0.999999702, 0.258817524, 0.965923727, -2.15583484e-007, -0.965924084, 0.258817554, 7.03952807e-009),CanCollide = false,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 6.25961718e-008, 0.258816421, -0.965919495, 2.06413972e-007, 0.965917587, 0.258816957, 0.999998212, -3.67695776e-008, 7.03942504e-009),C1 = CFrame.new(2.84477091, 0.798589468, 0.600564003, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Lime green"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953514, 4.57463217, -0.049762249, -1.16137841e-007, 4.0305838e-007, 0.999999702, -0.258817315, 0.965923786, -3.89580634e-007, -0.965924144, -0.258817345, -7.86182763e-009),CanCollide = false,Color = Color3.new(0, 1, 0),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -1.08423734e-007, -0.258816272, -0.965919793, 3.7426824e-007, 0.965918064, -0.258816689, 0.99999851, -2.40568028e-007, -7.86165266e-009),C1 = CFrame.new(-5.7428689, 1.57453823, 0.600562096, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("New Yeller"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953514, 4.41935825, -0.629346371, -1.16137841e-007, 4.0305838e-007, 0.999999702, -0.258817315, 0.965923786, -3.89580634e-007, -0.965924144, -0.258817345, -7.86182763e-009),CanCollide = false,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -1.08423734e-007, -0.258816272, -0.965919793, 3.7426824e-007, 0.965918064, -0.258816689, 0.99999851, -2.40568028e-007, -7.86165266e-009),C1 = CFrame.new(-5.16328335, 1.41926384, 0.600562096, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Royal purple"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953505, 3.9534874, -2.36804008, -1.16137841e-007, 4.0305838e-007, 0.999999702, -0.258817315, 0.965923786, -3.89580634e-007, -0.965924144, -0.258817345, -7.86182763e-009),CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -1.08423734e-007, -0.258816272, -0.965919793, 3.7426824e-007, 0.965918064, -0.258816689, 0.99999851, -2.40568028e-007, -7.86165266e-009),C1 = CFrame.new(-3.42458606, 0.95339179, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Pink"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953514, 4.10877419, -1.78845406, -1.16137841e-007, 4.0305838e-007, 0.999999702, -0.258817315, 0.965923786, -3.89580634e-007, -0.965924144, -0.258817345, -7.86182763e-009),CanCollide = false,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -1.08423734e-007, -0.258816272, -0.965919793, 3.7426824e-007, 0.965918064, -0.258816689, 0.99999851, -2.40568028e-007, -7.86165266e-009),C1 = CFrame.new(-4.00417328, 1.10867882, 0.600562096, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Deep orange"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953514, 4.26405716, -1.20886898, -1.16137841e-007, 4.0305838e-007, 0.999999702, -0.258817315, 0.965923786, -3.89580634e-007, -0.965924144, -0.258817345, -7.86182763e-009),CanCollide = false,Color = Color3.new(1, 0.686275, 0),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -1.08423734e-007, -0.258816272, -0.965919793, 3.7426824e-007, 0.965918064, -0.258816689, 0.99999851, -2.40568028e-007, -7.86165266e-009),C1 = CFrame.new(-4.58375978, 1.26396227, 0.600562096, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000036, 0.200000003),CFrame = CFrame.new(-11.8953505, 5.31642437, 0.786748409, -5.30386295e-008, 1.73988013e-007, 0.999998808, -0.258816987, 0.965918303, -6.25790904e-008, -0.965919554, -0.258817285, -6.19996365e-009),CanCollide = false,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -4.5325443e-008, -0.258818239, -0.965923727, 1.4520198e-007, 0.965923071, -0.258818418, 0.999999404, -9.23812067e-008, -6.19998763e-009),C1 = CFrame.new(-6.57938147, 2.31633234, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(6.19999886, 0.200000003, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.58525896, -9.25480843, 7.80234188e-008, 3.1746788e-007, 0.999999702, 0.258817434, 0.965923786, -2.97041993e-007, -0.965924084, 0.258817494, -6.80154155e-009),CanCollide = false,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 7.03096106e-008, 0.258816391, -0.965919733, 2.88678649e-007, 0.965918064, 0.258816779, 0.99999851, -1.48029926e-007, -6.80152068e-009),C1 = CFrame.new(3.46219683, 1.58516502, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(6.19999886, 0.200000003, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.5848031, -2.33011961, -8.38925587e-008, 3.16696742e-007, 0.999999702, -0.258817434, 0.965923786, -2.97816143e-007, -0.965924084, -0.258817494, 9.32815603e-010),CanCollide = false,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -7.61786936e-008, -0.258816391, -0.965919733, 2.87907511e-007, 0.965918064, -0.258816808, 0.99999851, -1.48804162e-007, 9.32856459e-010),C1 = CFrame.new(-3.46250653, 1.58470917, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Toothpaste"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.72993946, 0.529752254, -1.08423322e-007, 3.74266051e-007, 0.999999404, -0.258817613, 0.965921164, -3.29970447e-007, -0.96592176, -0.258817703, -7.86176013e-009),CanCollide = false,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -1.00710153e-007, -0.258818865, -0.965925932, 3.45480061e-007, 0.965925932, -0.258818835, 1, -3.59773878e-007, -7.86179122e-009),C1 = CFrame.new(-6.32238436, 1.72984552, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Really blue"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953495, 3.79821682, -2.94753981, -1.08423322e-007, 3.74266051e-007, 0.999999404, -0.258817613, 0.965921164, -3.29970447e-007, -0.96592176, -0.258817703, -7.86176013e-009),CanCollide = false,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -1.00710153e-007, -0.258818865, -0.965925932, 3.45480061e-007, 0.965925932, -0.258818835, 1, -3.59773878e-007, -7.86179122e-009),C1 = CFrame.new(-2.84508514, 0.798120975, 0.600564003, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Lime green"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.57511139, -11.5351543, 1.08875994e-007, 3.79133155e-007, 0.999999404, 0.258816928, 0.965921402, -3.34788865e-007, -0.965921998, 0.258817047, 7.03956848e-009),CanCollide = false,Color = Color3.new(0, 1, 0),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 1.01162833e-007, 0.258818179, -0.96592617, 3.50347193e-007, 0.96592617, 0.258818179, 1, -3.64592296e-007, 7.03960135e-009),C1 = CFrame.new(5.74254751, 1.57501745, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000036, 0.200000003),CFrame = CFrame.new(-11.8953505, 5.31689644, -12.3716755, 5.48828574e-008, 1.7762747e-007, 0.999998808, 0.258816659, 0.965918362, -6.65718147e-008, -0.965919614, 0.258816957, 7.03943082e-009),CanCollide = false,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 4.71696779e-008, 0.258817911, -0.965923786, 1.48841423e-007, 0.965923131, 0.25881809, 0.999999404, -9.63739453e-008, 7.03946368e-009),C1 = CFrame.new(6.57907152, 2.31680441, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Toothpaste"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.73039246, -12.1146736, 1.08875994e-007, 3.79133155e-007, 0.999999404, 0.258816928, 0.965921402, -3.34788865e-007, -0.965921998, 0.258817047, 7.03956848e-009),CanCollide = false,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 1.01162833e-007, 0.258818179, -0.96592617, 3.50347193e-007, 0.96592617, 0.258818179, 1, -3.64592296e-007, 7.03960135e-009),C1 = CFrame.new(6.32206774, 1.73029852, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("New Yeller"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.41982555, -10.9555464, 1.08875994e-007, 3.79133155e-007, 0.999999404, 0.258816928, 0.965921402, -3.34788865e-007, -0.965921998, 0.258817047, 7.03956848e-009),CanCollide = false,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 1.01162833e-007, 0.258818179, -0.96592617, 3.50347193e-007, 0.96592617, 0.258818179, 1, -3.64592296e-007, 7.03960135e-009),C1 = CFrame.new(5.16293859, 1.41973114, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Deep orange"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.26454258, -10.3759689, 1.08875994e-007, 3.79133155e-007, 0.999999404, 0.258816928, 0.965921402, -3.34788865e-007, -0.965921998, 0.258817047, 7.03956848e-009),CanCollide = false,Color = Color3.new(1, 0.686275, 0),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 1.01162833e-007, 0.258818179, -0.96592617, 3.50347193e-007, 0.96592617, 0.258818179, 1, -3.64592296e-007, 7.03960135e-009),C1 = CFrame.new(4.5833602, 1.26444769, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Toothpaste"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953495, 3.64292669, -3.52712107, -6.98572009e-008, 2.30335417e-007, 0.999999702, -0.258818239, 0.965923607, -2.10765137e-007, -0.965923846, -0.258818299, -7.86172194e-009),CanCollide = false,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, -6.21434282e-008, -0.258817166, -0.965919375, 2.01546953e-007, 0.965917349, -0.258817703, 0.999998212, -3.19512843e-008, -7.86165444e-009),C1 = CFrame.new(-2.26550245, 0.642830372, 0.600564003, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Royal purple"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-11.8953495, 3.95397377, -9.21696472, 1.08875994e-007, 3.79133155e-007, 0.999999404, 0.258816928, 0.965921402, -3.34788865e-007, -0.965921998, 0.258817047, 7.03956848e-009),CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 1.01162833e-007, 0.258818179, -0.96592617, 3.50347193e-007, 0.96592617, 0.258818179, 1, -3.64592296e-007, 7.03960135e-009),C1 = CFrame.new(3.42435312, 0.953878164, 0.600564003, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Pink"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-11.8953505, 4.10925865, -9.79645348, 1.08875994e-007, 3.79133155e-007, 0.999999404, 0.258816928, 0.965921402, -3.34788865e-007, -0.965921998, 0.258817047, 7.03956848e-009),CanCollide = false,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 1.01162833e-007, 0.258818179, -0.96592617, 3.50347193e-007, 0.96592617, 0.258818179, 1, -3.64592296e-007, 7.03960135e-009),C1 = CFrame.new(4.00384378, 1.10916376, 0.600563049, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",Torso,"OutfitPart",{BrickColor = BrickColor.new("Toothpaste"),Reflectance = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.00000024, 0.200000003),CFrame = CFrame.new(-11.8953495, 3.64338994, -8.0578537, 1.08875994e-007, 3.79133155e-007, 0.999999404, 0.258816928, 0.965921402, -3.34788865e-007, -0.965921998, 0.258817047, 7.03956848e-009),CanCollide = false,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",OutfitPart,"Mesh",{Scale = Vector3.new(0.400000006, 0.800000012, 0.400000006),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder1,C0 = CFrame.new(0, 0, 0, 1.01162833e-007, 0.258818179, -0.96592617, 3.50347193e-007, 0.96592617, 0.258818179, 1, -3.64592296e-007, 7.03960135e-009),C1 = CFrame.new(2.26523924, 0.643293619, 0.600564003, 1.96509475e-014, -1.59051002e-014, -0.999997854, 1.49011839e-007, 0.999997556, -3.53218541e-015, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
RightLeg = New("Model",chara,"RightLeg",{})
AAPlaceHolder4 = New("Part",RightLeg,"AAPlaceHolder4",{BrickColor = BrickColor.new("Brick yellow"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-12.4959135, 1.00000894, -6.2926178, 1.74860126e-014, 1.49011839e-007, 0.999999702, -1.49011434e-008, 0.999997497, -1.19209844e-007, -0.999997795, -1.49011337e-008, 1.67088565e-014),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.843137, 0.772549, 0.603922),})
Weld = New("ManualWeld",AAPlaceHolder4,"Weld",{Part0 = AAPlaceHolder4,Part1 = chara["Right Leg"],C0 = CFrame.new(0, 0, 0, 1.74860126e-014, -1.49011434e-008, -0.999997795, 1.49011839e-007, 0.999997497, -1.49011337e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),C1 = CFrame.new(-0.00740480423, 5.42402267e-006, 0.0040845871, 1.0658183e-013, 1.49006913e-008, -0.999991357, 8.94066318e-007, 0.999990165, 1.49007615e-008, 0.999998808, -7.74864873e-007, 8.14361328e-014),})
OutfitPart = New("Part",RightLeg,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-12.4959135, 0.900064766, -6.2926178, 6.88827106e-010, 2.38419176e-007, 0.999999702, -1.88509635e-008, 0.999997497, -2.08616996e-007, -0.999997795, -1.88509546e-008, 6.8882744e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder4,C0 = CFrame.new(0, 0, 0, 6.88819168e-010, -1.88508817e-008, -0.999993563, 2.08615333e-007, 0.999991775, -1.88508444e-008, 0.999998212, -2.98032248e-008, 6.88802126e-010),C1 = CFrame.new(0, -0.0999444127, 0, 1.74860126e-014, -1.49011434e-008, -0.999997795, 1.49011839e-007, 0.999997497, -1.49011337e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",RightLeg,"OutfitPart",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.00000012, 1, 1),CFrame = CFrame.new(-12.4959135, 1.50024605, -6.29255581, 6.88805402e-010, 2.08616214e-007, 0.999999702, -1.88509297e-008, 0.999997556, -1.78814105e-007, -0.999997854, -1.88509208e-008, 6.88805069e-010),CanCollide = false,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder4,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(-5.7220459e-005, 0.500234663, 0, 1.74860126e-014, -1.49011434e-008, -0.999997795, 1.49011839e-007, 0.999997497, -1.49011337e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",RightLeg,"OutfitPart",{BrickColor = BrickColor.new("Pastel orange"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(-12.4959135, 0.400041282, -6.2926178, 6.88827106e-010, 2.38419176e-007, 0.999999702, -1.88509635e-008, 0.999997497, -2.08616996e-007, -0.999997795, -1.88509546e-008, 6.8882744e-010),CanCollide = false,Color = Color3.new(1, 0.788235, 0.788235),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder4,C0 = CFrame.new(0, 0, 0, 6.88819168e-010, -1.88508817e-008, -0.999993563, 2.08615333e-007, 0.999991775, -1.88508444e-008, 0.999998212, -2.98032248e-008, 6.88802126e-010),C1 = CFrame.new(0, -0.599969149, 0, 1.74860126e-014, -1.49011434e-008, -0.999997795, 1.49011839e-007, 0.999997497, -1.49011337e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})
OutfitPart = New("Part",RightLeg,"OutfitPart",{BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-12.4959135, 0.100042, -6.2926178, 6.88817114e-010, 1.78813281e-007, 0.999998808, -1.885088e-008, 0.999992251, -5.96054619e-008, -0.999993443, -1.88508515e-008, 6.88805013e-010),CanCollide = false,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("BlockMesh",OutfitPart,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1.10000002),})
Weld = New("ManualWeld",OutfitPart,"Weld",{Part0 = OutfitPart,Part1 = AAPlaceHolder4,C0 = CFrame.new(0, 0, 0, 6.88815172e-010, -1.88509617e-008, -0.999997854, 1.49011797e-007, 0.999997258, -1.88509492e-008, 0.999999404, -8.9407564e-008, 6.88811008e-010),C1 = CFrame.new(0, -0.899968743, 0, 1.74860126e-014, -1.49011434e-008, -0.999997795, 1.49011839e-007, 0.999997497, -1.49011337e-008, 0.999999702, -1.19209844e-007, 1.67088565e-014),})

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

--Sounds--
SlashSnd = New("Sound",tool,"SlashSnd",{SoundId = "http://www.roblox.com/asset/?id=536642316", Volume = 1})
HitSnd = New("Sound",tool,"HitSnd",{SoundId = "http://www.roblox.com/asset/?id=356659053", Volume = 1})
LaserSnd = New("Sound",tool,"LaserSnd",{SoundId = "http://www.roblox.com/asset/?id=415700134", Volume = 1})
ShootSnd = New("Sound",tool,"ShootSnd",{SoundId = "http://www.roblox.com/asset/?id=200633327", Volume = 1})
TeleSnd = New("Sound",tool,"TeleSnd",{SoundId = "http://www.roblox.com/asset/?id=153613030", Volume = 1})
SJumpSnd = New("Sound",tool,"SJumpSnd",{SoundId = "http://www.roblox.com/asset/?id=169445602", Volume = 1})
ExplSnd = New("Sound",tool,"ExplSnd",{SoundId = "http://www.roblox.com/asset/?id=142070127", Volume = 1})
ShieldSnd = New("Sound",tool,"ShieldSnd",{SoundId = "http://www.roblox.com/asset/?id=187933025", Volume = 1})
GongSnd = New("Sound",tool,"GongSnd",{SoundId = "http://www.roblox.com/asset/?id=96098241", Volume = 1})
Snd = New("Sound",tool,"Snd",{SoundId = "http://www.roblox.com/asset/?id=", Volume = 1})

Music = New("Sound",tool,"Music",{SoundId = "http://www.roblox.com/asset/?id=143610978", Volume = 1, Looped = true})
Music:play()
music = 1
--Animations--
IdleA = New("Animation",tool,"Idle",{AnimationId = "http://www.roblox.com/Asset?ID=94108418",})
SlashLeftA = New("Animation",tool,"SlashL",{AnimationId = "http://www.roblox.com/Asset?ID=218504594",})
SlashRightA = New("Animation",tool,"SlashR",{AnimationId = "http://www.roblox.com/asset/?id=186934910",})
SlashDownA = New("Animation",tool,"SlashD",{AnimationId = "http://www.roblox.com/asset/?id=74909528",})
ChargeSwordA = New("Animation",tool,"ChargeS",{AnimationId = "http://www.roblox.com/asset/?id=74909500",})
ChargeUpA = New("Animation",tool,"ChargeU",{AnimationId = "http://www.roblox.com/asset/?id=69803963",})
SpinA = New("Animation",tool,"Spin",{AnimationId = "http://www.roblox.com/asset/?id=235542946",})
JumpUpA = New("Animation",tool,"JumpU",{AnimationId = "http://www.roblox.com/asset/?id=66703957",})
JumpDownA = New("Animation",tool,"JumpD",{AnimationId = "http://www.roblox.com/asset/?id=66703954",})
IdleAnim = chara.Humanoid:LoadAnimation(IdleA)
SLAnim = chara.Humanoid:LoadAnimation(SlashLeftA)
SRAnim = chara.Humanoid:LoadAnimation(SlashRightA)
SDAnim = chara.Humanoid:LoadAnimation(SlashDownA)
ChargeSAnim = chara.Humanoid:LoadAnimation(ChargeSwordA)
ChargeUAnim = chara.Humanoid:LoadAnimation(ChargeUpA)
SpinAnim = chara.Humanoid:LoadAnimation(SpinA)
JumpUAnim = chara.Humanoid:LoadAnimation(JumpUpA)
JumpDAnim = chara.Humanoid:LoadAnimation(JumpDownA)

--Name Tag--
local naeeym = Instance.new("BillboardGui",chara)
naeeym.Size = UDim2.new(0,100,0,40)
naeeym.StudsOffset = Vector3.new(0,2,0)
naeeym.Adornee = chara.Head
local tecks = Instance.new("TextLabel",naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = "Flandre Scarlet"
tecks.Font = "Fantasy"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextStrokeColor3 = Color3.new(0,0,0)
tecks.TextColor3 = BrickColor.new("Bright red").Color
tecks.Size = UDim2.new(1,0,0.5,0)
local htecks = Instance.new("TextLabel",naeeym)
htecks.BackgroundTransparency = 1
htecks.BorderSizePixel = 0
htecks.Text = chara.Humanoid.Health.."/"..chara.Humanoid.MaxHealth
htecks.Font = "Fantasy"
htecks.FontSize = "Size24"
htecks.TextStrokeTransparency = 0
htecks.TextStrokeColor3 = Color3.new(0,0,0)
htecks.TextColor3 = BrickColor.new("Bright red").Color
htecks.Size = UDim2.new(1,0,0.5,0)
htecks.Position = UDim2.new(0,0,.5,0)

--Spell Circle (Oh boy, it's the same circle code I keep using!--
Void = nil
VoidParts = {}
Equipped = false

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

	Player = player
	Character = chara

	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("Torso")
	if not Player or not Humanoid or Humanoid.Health == 0 or not Torso then
		return
	end
	Equipped = true
	Void = Instance.new("Model")
	Void.Name = "Void"
	Angle = 0
	for i = 1, 1 do
		local VoidPart = Instance.new("Part")
		VoidPart.Name = "VoidPart"
		VoidPart.Transparency = 1
		VoidPart.BrickColor = BrickColor.new("Really black")
		VoidPart.Material = Enum.Material.Plastic
		VoidPart.Shape = Enum.PartType.Block
		VoidPart.FormFactor = Enum.FormFactor.Custom
		VoidPart.TopSurface = Enum.SurfaceType.Smooth
		VoidPart.BottomSurface = Enum.SurfaceType.Smooth
		VoidPart.Anchored = true
		VoidPart.CanCollide = false
		VoidPart.Locked = true
		VoidPart.Size = Vector3.new(10, 0.2, 10)
		local BlockMesh = Instance.new("BlockMesh")
		BlockMesh.Scale = Vector3.new(1, (1 + (0.005 * i)), 1)
		BlockMesh.Parent = VoidPart
		VoidPart.Parent = Void
		local Star = Instance.new("Decal", VoidPart)
		Star.Texture = "http://www.roblox.com/asset/?id=273474310"
		Star.Face = "Top"
		local Light = Instance.new("PointLight", VoidPart)
		Light.Color = Color3.new(1,0,0)
		Light.Brightness = 100
		Light.Range = 10
		table.insert(VoidParts, VoidPart)
	end
	Spawn(function()
		while Equipped and Humanoid.Parent and Humanoid.Health > 0 and Torso.Parent do
			if Angle == 360 then
				Angle = 0
			end
			Angle = Angle + 0.05
			chara.Humanoid.MaxHealth = 666666666
			if chara.Humanoid.Health < 666666666 then
			chara.Humanoid.Health = chara.Humanoid.Health + 66666666
			htecks.Text = chara.Humanoid.Health.."/"..chara.Humanoid.MaxHealth
			end
			local Hit, EndPosition = RayCast(Torso.Position, Vector3.new(0, -1, 0), (Torso.Size.Y * 6.5), {Character})
			if Hit then
				if not Void.Parent then
					Void.Parent = Character
				end
				for i, v in pairs(VoidParts) do
					v.CFrame = CFrame.new(Torso.Position.X, EndPosition.Y, Torso.Position.Z) * CFrame.Angles(0, (Angle + i), 0)
				end
			else
				Void.Parent = nil
			end
			wait()
		end
	end)
	
--Chat Function--
function chatfunc(text)
chat = coroutine.wrap(function(ttt)
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
tecks2.Text = text
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,1,1)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
wait(1)
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat(text)
end

--Damage Function--
function dealdmg(dude,damage,env,toim)
hurt = coroutine.wrap(function(dude2,damage2,env2,toim2)
if dude ~= chara and dude:FindFirstChild("IsHit") == nil then
finaldmg = damage + math.random(-env,env)
dude.Humanoid.Health = dude.Humanoid.Health - finaldmg
local vall = Instance.new("ObjectValue",dude)
vall.Name = "IsHit"
debby:AddItem(vall,toim)
local naeeym2 = Instance.new("BillboardGui",dude)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = dude.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = "-"..finaldmg
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,0.6,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
for i = 1, 5 do
wait(.1)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end
end)
hurt(dude,damage,env,toim)
end

--Lavaetein Touch--
function bladehit(hit)
if bladeactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
dealdmg(hit.Parent,12,2,.1)
HitSnd:Play()
end
end
end
MainLavateinPart.Touched:connect(bladehit)

--Spellcard Start Effect--
local spelleff = Instance.new("ParticleEmitter",chara.Torso)
spelleff.Enabled = false
spelleff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.1,10),NumberSequenceKeypoint.new(.9,10),NumberSequenceKeypoint.new(1,20)})
spelleff.Lifetime = NumberRange.new(2)
spelleff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.9,0),NumberSequenceKeypoint.new(1,1)})
spelleff.LightEmission = .3
spelleff.Speed = NumberRange.new(2)
spelleff.LockedToPart = true
spelleff.Texture = "http://www.roblox.com/asset/?id=75004930"
function SpellActivate()
spellactive = true
tool.Enabled = false
ChargeUAnim:Play()
chara.Humanoid.WalkSpeed = 0
wait(.2)
GongSnd:Play()
spelleff:Emit(1)
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.Torso.Position
jtrace.CFrame = chara.Torso.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.BrickColor = BrickColor.new("Really red")
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=1125478"
tmesh.Scale = Vector3.new(0,0,0)
for i = 1, 40 do
wait(.01)
jtrace.Transparency = jtrace.Transparency + .025
tmesh.Scale = tmesh.Scale + Vector3.new(.5,.05,.5)
end
jtrace:Destroy()
wait(.2)
ChargeUAnim:Stop()
chara.Humanoid.WalkSpeed = 16
end

--Danmaku Creation--
function fire(v,posi,size,colour,vel,dmg,bounce,collide)
	local vCharacter = chara
	local vPlayer = game.Players:playerFromCharacter(vCharacter)
	local missile = Instance.new("Part",game.Workspace)
	local snd = ShootSnd:clone()
	snd.PlayOnRemove = true
	snd.Parent = missile
	snd:Destroy()
	missile.Position = posi
	missile.Material = "Neon"
	missile.Size = Vector3.new(size,size,size)
	missile.BrickColor = BrickColor.new(colour)
	missile.Shape = 1
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Blast"	
	missile.CanCollide = collide
	missile.Velocity = v * vel
	missile.CFrame = CFrame.new(posi.X,posi.Y,posi.Z)
	local mesh1 = Instance.new("SpecialMesh",missile)
	mesh1.MeshType = "Sphere"
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:GetMass()*196.2,0)
	force.Parent = missile
	--bounce values--
	if bounce == false then
	missile.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and missile.Anchored == false) then
	missile.Anchored = true
	local E = Instance.new("Explosion") 
	E.Position = missile.Position
	E.Parent = game.Workspace 
	E.BlastPressure = 0
	E.BlastRadius = missile.Size.X	
	E.Visible = false
	E.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
	dealdmg(hit.Parent,dmg,3,.2)
	end
	end)
	wait(0.001)
	missile.Transparency = .25
	missile.Mesh.Scale = Vector3.new(1.5,1.5,1.5)
	wait(0.001)
	missile.Transparency = .5
	missile.Mesh.Scale = Vector3.new(2,2,2)
	wait(0.001)
	missile.Transparency = .75
	missile.Mesh.Scale = Vector3.new(2.5,2.5,2.5)
	wait(0.001)
	missile:Destroy()
	end
	end)
	elseif bounce == true then
	missile.Touched:connect(function(hit)
	if (hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent~=chara) then
	missile.Anchored = true
	local E = Instance.new("Explosion") 
	E.Position = missile.Position
	E.Parent = game.Workspace 
	E.BlastPressure = 0
	E.BlastRadius = missile.Size.X	
	E.Visible = false
	E.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
	dealdmg(hit.Parent,dmg,3,.2)
	end
	end)
	wait(0.001)
	missile.Transparency = .25
	missile.Mesh.Scale = Vector3.new(1.5,1.5,1.5)
	wait(0.001)
	missile.Transparency = .5
	missile.Mesh.Scale = Vector3.new(2,2,2)
	wait(0.001)
	missile.Transparency = .75
	missile.Mesh.Scale = Vector3.new(2.5,2.5,2.5)
	wait(0.001)
	missile:Destroy()
	end
	end)
	end
	debby:AddItem(missile,10)
	spawnanim = coroutine.wrap(function()
	missile.Transparency = .75
	missile.Mesh.Scale = Vector3.new(2.5,2.5,2.5)
	wait(0.001)
	missile.Transparency = .5
	missile.Mesh.Scale = Vector3.new(2,2,2)
	wait(0.001)
	missile.Transparency = .25
	missile.Mesh.Scale = Vector3.new(1.5,1.5,1.5)
	wait(0.001)
	missile.Transparency = 0
	missile.Mesh.Scale = Vector3.new(1,1,1)
	end)
	spawnanim()
	return missile
end

--local targetPos = chara.Humanoid.TargetPoint
--local lookAt = (targetPos - (chara.Torso.Position + chara.Torso.CFrame.lookVector*5)).unit
--fire(lookAt,chara.Torso.Position + chara.Torso.CFrame.lookVector*5,5,"Bright red",100,20,false,false)

--Taboo "Cranberry Trap"--
function CranberryTrap()
chatfunc("Taboo -Cranberry Trap-")
SpellActivate()
local initialpos = chara.Humanoid.TargetPoint + Vector3.new(0,3,0)
pt1 = initialpos + Vector3.new(30,0,30)
pt2 = initialpos + Vector3.new(30,0,-30)
pt3 = initialpos + Vector3.new(-30,0,30)
pt4 = initialpos + Vector3.new(-30,0,-30)
local crantrap = Instance.new("Part")
crantrap.Name = "Blast"
crantrap.Size = Vector3.new(0,0,0)
crantrap.CanCollide = false
crantrap.Transparency = 1
crantrap.BottomSurface = 0
crantrap.TopSurface = 0
local bodpos = Instance.new("BodyPosition",crantrap)
bodpos.Name = "bodpos"
local eff = Instance.new("ParticleEmitter",crantrap)
eff.Lifetime = NumberRange.new(5)
eff.LockedToPart = true
eff.Texture = "http://www.roblox.com/asset/?id=273474310"
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,5)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff.Rotation = NumberRange.new(0,359)
eff.RotSpeed = NumberRange.new(100)
eff.Speed = NumberRange.new(0)
eff.LightEmission = 1
local ct1 = crantrap:clone()
ct1.Parent = chara
ct1.Position = pt1
ct1.bodpos.Position = pt1
local ct2 = crantrap:clone()
ct2.Parent = chara
ct2.Position = pt2
ct2.bodpos.Position = pt2
local ct3 = crantrap:clone()
ct3.Parent = chara
ct3.Position = pt3
ct3.bodpos.Position = pt3
local ct4 = crantrap:clone()
ct4.Parent = chara
ct4.Position = pt4
ct4.bodpos.Position = pt4
wait(3)
ct1.bodpos.Position = pt2
ct2.bodpos.Position = pt1
ct3.bodpos.Position = pt4
ct4.bodpos.Position = pt3
for i = 1, 10 do
wait(.1)
local lookAt1 = (initialpos - ct1.Position).unit
local lookAt2 = (initialpos - ct2.Position).unit
local lookAt3 = (initialpos - ct3.Position).unit
local lookAt4 = (initialpos - ct4.Position).unit
fire(lookAt1,ct1.Position,1,"Magenta",100,15,false,false)
fire(lookAt2,ct2.Position,1,"Magenta",100,15,false,false)
fire(lookAt3,ct3.Position,1,"Magenta",100,15,false,false)
fire(lookAt4,ct4.Position,1,"Magenta",100,15,false,false)
end
wait(1)
ct1.bodpos.Position = pt4
ct2.bodpos.Position = pt3
ct3.bodpos.Position = pt2
ct4.bodpos.Position = pt1
for i = 1, 10 do
wait(.1)
local lookAt1 = (initialpos - ct1.Position).unit
local lookAt2 = (initialpos - ct2.Position).unit
local lookAt3 = (initialpos - ct3.Position).unit
local lookAt4 = (initialpos - ct4.Position).unit
fire(lookAt1,ct1.Position,1,"Really blue",100,15,false,false)
fire(lookAt2,ct2.Position,1,"Really blue",100,15,false,false)
fire(lookAt3,ct3.Position,1,"Really blue",100,15,false,false)
fire(lookAt4,ct4.Position,1,"Really blue",100,15,false,false)
end
wait(1)
ct1.bodpos.Position = pt2
ct2.bodpos.Position = pt1
ct3.bodpos.Position = pt4
ct4.bodpos.Position = pt3
for i = 1, 10 do
wait(.1)
local lookAt1 = (initialpos - ct1.Position).unit
local lookAt2 = (initialpos - ct2.Position).unit
local lookAt3 = (initialpos - ct3.Position).unit
local lookAt4 = (initialpos - ct4.Position).unit
fire(lookAt1,ct1.Position,1,"Magenta",100,15,false,false)
fire(lookAt2,ct2.Position,1,"Magenta",100,15,false,false)
fire(lookAt3,ct3.Position,1,"Magenta",100,15,false,false)
fire(lookAt4,ct4.Position,1,"Magenta",100,15,false,false)
end
wait(1)
ct1.bodpos.Position = pt1
ct2.bodpos.Position = pt2
ct3.bodpos.Position = pt3
ct4.bodpos.Position = pt4
for i = 1, 10 do
wait(.1)
local lookAt1 = (initialpos - ct1.Position).unit
local lookAt2 = (initialpos - ct2.Position).unit
local lookAt3 = (initialpos - ct3.Position).unit
local lookAt4 = (initialpos - ct4.Position).unit
fire(lookAt1,ct1.Position,1,"Really blue",100,15,false,false)
fire(lookAt2,ct2.Position,1,"Really blue",100,15,false,false)
fire(lookAt3,ct3.Position,1,"Really blue",100,15,false,false)
fire(lookAt4,ct4.Position,1,"Really blue",100,15,false,false)
end
wait(1)
ct1:destroy()
ct2:destroy()
ct3:destroy()
ct4:destroy()
spellactive = false
end

--Taboo "Lavaetein"--
function Lavaetein()
tool.Enabled = false
local lasactive = true
chatfunc("Taboo -Lavaetein-")
SpellActivate()
HitboxPart = New("Part",chara,"HitboxPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 19.2000008),CFrame = CFrame.new(-32.1417999, 2.26629114, -18.2020645, 0.00910700578, 0.0085160071, 0.999922335, 0.0669090375, 0.997717619, -0.00910661742, -0.997717619, 0.0669867694, 0.00851642154),CanCollide = false,})
Weld = New("ManualWeld",HitboxPart,"Weld",{Part0 = HitboxPart,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700578, 0.0669090375, -0.997717619, 0.0085160071, 0.997717619, 0.0669867694, 0.999922335, -0.00910661742, 0.00851642154),C1 = CFrame.new(-0.00173330307, -0.00183868408, 12.8999844, 0.0085190041, 0.9977175, 0.0669880286, 0.00910899788, 0.066910252, -0.9977175, -0.999922335, 0.00910975225, -0.00851819664),})
BPart4 = New("Part",chara,"BPart4",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 3.20000005),CFrame = CFrame.new(-33.7416763, 2.28086114, -18.2156925, 0.00910700951, 0.00851601362, 0.999922931, 0.0669090673, 0.997718096, -0.00910662021, -0.997718096, 0.0669867992, 0.00851642527),CanCollide = false,})
Weld = New("ManualWeld",BPart4,"Weld",{Part0 = BPart4,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700765, 0.066909045, -0.997717857, 0.00851600897, 0.997717857, 0.0669867918, 0.999922454, -0.00910661835, 0.00851642247),C1 = CFrame.new(-0.0017387867, -0.00184059143, 14.4999828, 0.0085190041, 0.9977175, 0.0669880286, 0.00910899788, 0.066910252, -0.9977175, -0.999922335, 0.00910975225, -0.00851819664),})
BPart3 = New("Part",chara,"BPart3",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 3.20000005),CFrame = CFrame.new(-30.5419235, 2.25171971, -18.1884403, 0.0091070123, 0.00851601455, 0.99992305, 0.0669090748, 0.997718334, -0.00910662208, -0.997718334, 0.0669868216, 0.0085164262),CanCollide = false,})
Weld = New("ManualWeld",BPart3,"Weld",{Part0 = BPart3,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700951, 0.0669090524, -0.997718096, 0.00851601083, 0.997718096, 0.0669868141, 0.999922574, -0.00910661928, 0.0085164234),C1 = CFrame.new(-0.00172924995, -0.00183486938, 11.2999821, 0.0085190041, 0.9977175, 0.0669880286, 0.00910899788, 0.066910252, -0.9977175, -0.999922335, 0.00910975225, -0.00851819664),})
BPart2 = New("Part",chara,"BPart2",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 3.20000005),CFrame = CFrame.new(-27.3421707, 2.22257924, -18.1611881, 0.00910700765, 0.00851601083, 0.999922812, 0.0669090599, 0.997717857, -0.00910661928, -0.997717857, 0.0669867769, 0.00851642527),CanCollide = false,})
Weld = New("ManualWeld",BPart2,"Weld",{Part0 = BPart2,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700578, 0.0669090375, -0.997717619, 0.0085160071, 0.997717619, 0.0669867694, 0.999922335, -0.00910661742, 0.00851642154),C1 = CFrame.new(-0.00171911716, -0.00182723999, 8.09998131, 0.0085190041, 0.9977175, 0.0669880286, 0.00910899788, 0.066910252, -0.9977175, -0.999922335, 0.00910975225, -0.00851819664),})
BPart5 = New("Part",chara,"BPart5",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 3.20000005),CFrame = CFrame.new(-36.9414291, 2.31000209, -18.2429447, 0.00910700951, 0.00851601362, 0.999922931, 0.0669090673, 0.997718096, -0.00910662021, -0.997718096, 0.0669867992, 0.00851642527),CanCollide = false,})
Weld = New("ManualWeld",BPart5,"Weld",{Part0 = BPart5,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700765, 0.066909045, -0.997717857, 0.00851600897, 0.997717857, 0.0669867918, 0.999922454, -0.00910661835, 0.00851642247),C1 = CFrame.new(-0.00174844265, -0.00184822083, 17.6999798, 0.0085190041, 0.9977175, 0.0669880286, 0.00910899788, 0.066910252, -0.9977175, -0.999922335, 0.00910975225, -0.00851819664),})
BPart6 = New("Part",chara,"BPart6",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 3.20000005),CFrame = CFrame.new(-40.1411819, 2.33914328, -18.270195, 0.00910700765, 0.00851601083, 0.999922812, 0.0669090599, 0.997717857, -0.00910661928, -0.997717857, 0.0669867769, 0.00851642527),CanCollide = false,})
Weld = New("ManualWeld",BPart6,"Weld",{Part0 = BPart6,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700578, 0.0669090375, -0.997717619, 0.0085160071, 0.997717619, 0.0669867694, 0.999922335, -0.00910661742, 0.00851642154),C1 = CFrame.new(-0.00175797939, -0.00185585022, 20.8999805, 0.0085190041, 0.9977175, 0.0669880286, 0.00910899788, 0.066910252, -0.9977175, -0.999922335, 0.00910975225, -0.00851819664),})
EmittingPart = New("Part",chara,"EmittingPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-22.4425335, 2.17977905, -18.1211605, 0.00910700765, 0.00851601083, 0.999922812, 0.0669090599, 0.997717857, -0.00910661928, -0.997717857, 0.0669867769, 0.00851642527),CanCollide = false,})
Weld = New("ManualWeld",EmittingPart,"Weld",{Part0 = EmittingPart,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700578, 0.0669090375, -0.997717619, 0.0085160071, 0.997717619, 0.0669867694, 0.999922335, -0.00910661742, 0.00851642154),C1 = CFrame.new(-2.38418579e-007, 3.81469727e-006, 3.19999504, 0.0085190041, 0.9977175, 0.0669880286, 0.00910899788, 0.066910252, -0.9977175, -0.999922335, 0.00910975225, -0.00851819664),})
BPart1 = New("Part",chara,"BPart1",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 3.20000005),CFrame = CFrame.new(-24.1424198, 2.19343805, -18.133934, 0.00910700858, 0.00851601269, 0.999922931, 0.0669090822, 0.997718096, -0.00910661928, -0.997718096, 0.0669867843, 0.00851642713),})
Weld = New("ManualWeld",BPart1,"Weld",{Part0 = BPart1,Part1 = MainLavateinPart,C0 = CFrame.new(0, 0, 0, 0.00910700578, 0.0669090375, -0.997717619, 0.0085160071, 0.997717619, 0.0669867694, 0.999922335, -0.00910661742, 0.00851642154),C1 = CFrame.new(-0.001709342, -0.00182151794, 4.89998245, 0.00851900689, 0.997717679, 0.066988036, 0.00910899788, 0.0669102743, -0.997717679, -0.999922514, 0.00910975318, -0.00851819851),})
local heetsnd = Instance.new("Sound",HitboxPart)
heetsnd.SoundId = "http://www.roblox.com/asset/?id=154965973"
heetsnd.Volume = 1
local eff = Instance.new("ParticleEmitter",EmittingPart)
eff.Color = ColorSequence.new(Color3.new(1,1/98,1/98))
eff.LightEmission = 1
eff.Texture = "rbxasset://textures/particles/fire_main.dds"
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(2)
eff.Rate = 10000
eff.Rotation = NumberRange.new(0,359)
eff.Speed = NumberRange.new(10)
eff.LockedToPart = true
HitboxPart.Touched:connect(function(hit)
if lasactive == true then
if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,30,5,1)
heetsnd:Play()
end
end
end)
SpinAnim:play()
LaserSnd:play()
for i = 1, 10 do
wait(.1)
fire(((BPart1.Position+BPart1.CFrame.upVector*5) - BPart1.Position).unit,BPart1.Position,1,"Really red",20,15,false,false)
fire(((BPart2.Position+BPart2.CFrame.upVector*5) - BPart2.Position).unit,BPart2.Position,1,"Really red",20,15,false,false)
fire(((BPart3.Position+BPart3.CFrame.upVector*5) - BPart3.Position).unit,BPart3.Position,1,"Really red",20,15,false,false)
fire(((BPart4.Position+BPart4.CFrame.upVector*5) - BPart4.Position).unit,BPart4.Position,1,"Really red",20,15,false,false)
fire(((BPart5.Position+BPart5.CFrame.upVector*5) - BPart5.Position).unit,BPart5.Position,1,"Really red",20,15,false,false)
fire(((BPart6.Position+BPart6.CFrame.upVector*5) - BPart6.Position).unit,BPart6.Position,1,"Really red",20,15,false,false)
end
eff.Enabled = false
lasactive = false
wait(2)
eff.Enabled = true
lasactive = true
LaserSnd:play()
for i = 1, 10 do
wait(.1)
fire(((BPart1.Position+BPart1.CFrame.upVector*5) - BPart1.Position).unit,BPart1.Position,1,"Really red",20,15,false,false)
fire(((BPart2.Position+BPart2.CFrame.upVector*5) - BPart2.Position).unit,BPart2.Position,1,"Really red",20,15,false,false)
fire(((BPart3.Position+BPart3.CFrame.upVector*5) - BPart3.Position).unit,BPart3.Position,1,"Really red",20,15,false,false)
fire(((BPart4.Position+BPart4.CFrame.upVector*5) - BPart4.Position).unit,BPart4.Position,1,"Really red",20,15,false,false)
fire(((BPart5.Position+BPart5.CFrame.upVector*5) - BPart5.Position).unit,BPart5.Position,1,"Really red",20,15,false,false)
fire(((BPart6.Position+BPart6.CFrame.upVector*5) - BPart6.Position).unit,BPart6.Position,1,"Really red",20,15,false,false)
end
eff.Enabled = false
lasactive = false
wait(2)
eff.Enabled = true
lasactive = true
LaserSnd:play()
for i = 1, 10 do
wait(.1)
fire(((BPart1.Position+BPart1.CFrame.upVector*5) - BPart1.Position).unit,BPart1.Position,1,"Really red",20,15,false,false)
fire(((BPart2.Position+BPart2.CFrame.upVector*5) - BPart2.Position).unit,BPart2.Position,1,"Really red",20,15,false,false)
fire(((BPart3.Position+BPart3.CFrame.upVector*5) - BPart3.Position).unit,BPart3.Position,1,"Really red",20,15,false,false)
fire(((BPart4.Position+BPart4.CFrame.upVector*5) - BPart4.Position).unit,BPart4.Position,1,"Really red",20,15,false,false)
fire(((BPart5.Position+BPart5.CFrame.upVector*5) - BPart5.Position).unit,BPart5.Position,1,"Really red",20,15,false,false)
fire(((BPart6.Position+BPart6.CFrame.upVector*5) - BPart6.Position).unit,BPart6.Position,1,"Really red",20,15,false,false)
end
eff.Enabled = false
lasactive = false
wait(1)
tool.Enabled = true
spellactive = false
SpinAnim:Stop()
BPart1:Destroy()
BPart2:Destroy()
BPart3:Destroy()
BPart4:Destroy()
BPart5:Destroy()
BPart6:Destroy()
HitboxPart:Destroy()
EmittingPart:Destroy()
end

--Taboo "Kagome, Kagome"--
function Kagome()
tool.Enabled = false
chatfunc("Taboo -Kagome, Kagome-")
SpellActivate()
local initialpos = chara.Humanoid.TargetPoint + Vector3.new(0,3,0)
local ipos1 = initialpos + Vector3.new(10,0,15)
local ipos2 = initialpos + Vector3.new(-10,0,-15)
local ipos3 = initialpos + Vector3.new(15,0,10)
local ipos4 = initialpos + Vector3.new(-15,0,-10)
for i = 1, 15 do
wait(0.05)
fire(Vector3.new(0,0,0),ipos1,1,"Lime green",0,20,false,true)
ipos1 = ipos1 - Vector3.new(0,0,3)
fire(Vector3.new(0,0,0),ipos2,1,"Lime green",0,20,false,true)
ipos2 = ipos2 + Vector3.new(0,0,3)
fire(Vector3.new(0,0,0),ipos3,1,"Lime green",0,20,false,true)
ipos3 = ipos3 - Vector3.new(3,0,0)
fire(Vector3.new(0,0,0),ipos4,1,"Lime green",0,20,false,true)
ipos4 = ipos4 + Vector3.new(3,0,0)
end
for i = 1, 8 do
wait(1)
fire((chara.Humanoid.TargetPoint - (chara.Torso.Position + chara.Torso.CFrame.lookVector*5)).unit,chara.Torso.Position + chara.Torso.CFrame.lookVector*5,5,"Bright yellow",50,20,true,true)
end
wait(1)
tool.Enabled = true
spellactive = false
end

--Forbidden Barrage "Starbow Break"--
function StarbowBreak()
tool.Enabled = false
chatfunc("Forbidden Barrage -Starbow Break-")
SpellActivate()
local initialpos = chara.Torso.Position + Vector3.new(0,10,0)
local ipos1 = initialpos + Vector3.new(2,0,10)
local ipos2 = initialpos + Vector3.new(0,0,10)
local ipos3 = initialpos + Vector3.new(-2,0,10)
for i = 1, 3 do
wait(.01)
fire((chara.Humanoid.TargetPoint-ipos1).unit,ipos1,1,"Magenta",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos1).unit,ipos1+Vector3.new(0,2,0),1,"Really blue",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos1).unit,ipos1+Vector3.new(0,4,0),1,"Toothpaste",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos1).unit,ipos1+Vector3.new(0,6,0),1,"Lime green",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos1).unit,ipos1+Vector3.new(0,8,0),1,"New Yeller",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos1).unit,ipos1+Vector3.new(0,10,0),1,"Neon orange",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos1).unit,ipos1+Vector3.new(0,12,0),1,"Really red",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos2).unit,ipos2,1,"Magenta",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos2).unit,ipos2+Vector3.new(0,2,0),1,"Really blue",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos2).unit,ipos2+Vector3.new(0,4,0),1,"Toothpaste",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos2).unit,ipos2+Vector3.new(0,6,0),1,"Lime green",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos2).unit,ipos2+Vector3.new(0,8,0),1,"New Yeller",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos2).unit,ipos2+Vector3.new(0,10,0),1,"Neon orange",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos2).unit,ipos2+Vector3.new(0,12,0),1,"Really red",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos3).unit,ipos3,1,"Magenta",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos3).unit,ipos3+Vector3.new(0,2,0),1,"Really blue",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos3).unit,ipos3+Vector3.new(0,4,0),1,"Toothpaste",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos3).unit,ipos3+Vector3.new(0,6,0),1,"Lime green",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos3).unit,ipos3+Vector3.new(0,8,0),1,"New Yeller",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos3).unit,ipos3+Vector3.new(0,10,0),1,"Neon orange",100,20,false,false)
fire((chara.Humanoid.TargetPoint-ipos3).unit,ipos3+Vector3.new(0,12,0),1,"Really red",100,20,false,false)
end
spellactive = false
tool.Enabled = true
end

--Forbidden Barrage "Catadioptric"--
function Catadioptric()
tool.Enabled = false
chatfunc("Forbidden Barrage -Catadioptric-")
SpellActivate()
for i = 1, 3 do
wait(1)
pos = chara.Torso.Position + Vector3.new(0,10,0)
aim = (chara.Humanoid.TargetPoint-pos).unit
fire(aim,pos,5,"Royal purple",100,20,true,true)
wait(.01)
for a = 1, 3 do
wait(.01)
fire(aim,pos,3,"Royal purple",50,20,true,true)
end
for b = 1, 5 do
wait(.01)
fire(aim,pos,1,"Royal purple",20,20,true,true)
end
end
spellactive = false
tool.Enabled = true
end

--Forbidden Barrage "Counter Clock"
function CounterClock()
tool.Enabled = false
chatfunc("Forbidden Barrage -Counter Clock-")
SpellActivate()
for i = 1, 3 do
local ipos = chara.Humanoid.TargetPoint + Vector3.new(0,3,0)
local centrept = Instance.new("Part",chara)
centrept.BrickColor = BrickColor.new("Really blue")
centrept.Anchored = true
centrept.Size = Vector3.new(1,1,1)
centrept.CanCollide = false
centrept.Material = "Neon"
centrept.Position = ipos
local mehs = Instance.new("SpecialMesh",centrept)
mehs.MeshType = "Sphere"
local bpos = Instance.new("BodyPosition",centrept)
bpos.Position = ipos
bpos.P = 100000
bpos.maxForce = Vector3.new(10000,10000,10000)
local ang = Instance.new("BodyAngularVelocity",centrept)
ang.AngularVelocity = Vector3.new(0,100,0)
ang.MaxTorque = Vector3.new(10000,10000,10000)
local saund = LaserSnd:clone()
saund.Parent = centrept
local heetsnd = Instance.new("Sound",centrept)
heetsnd.SoundId = "http://www.roblox.com/asset/?id=154965973"
heetsnd.Volume = 1
wait(1)
saund:Play()
Blade1 = New("Part",chara,"Blade1",{BrickColor = BrickColor.new("Really blue"),Material = Enum.Material.Neon,Size = Vector3.new(10, 1, 1),CFrame = CFrame.new(-16, 3.5, 31.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,Color = Color3.new(0, 0, 1),})
Blade1.Position = centrept.Position
Mesh = New("SpecialMesh",Blade1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Blade1,"Weld",{Part0 = Blade1,Part1 = centrept,C1 = CFrame.new(5.5, 0, -1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Blade2 = New("Part",chara,"Blade2",{BrickColor = BrickColor.new("Really blue"),Material = Enum.Material.Neon,Size = Vector3.new(1, 1, 10),CFrame = CFrame.new(-21.5, 3.5, 37, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,Color = Color3.new(0, 0, 1),})
Blade2.Position = centrept.Position
Mesh = New("SpecialMesh",Blade2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Blade2,"Weld",{Part0 = Blade2,Part1 = centrept,C1 = CFrame.new(0, 0, 5.49999809, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Blade3 = New("Part",chara,"Blade3",{BrickColor = BrickColor.new("Really blue"),Material = Enum.Material.Neon,Size = Vector3.new(10, 1, 1),CFrame = CFrame.new(-27, 3.5, 31.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,Color = Color3.new(0, 0, 1),})
Blade3.Position = centrept.Position
Mesh = New("SpecialMesh",Blade3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Blade3,"Weld",{Part0 = Blade3,Part1 = centrept,C1 = CFrame.new(-5.5, 0, -1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Blade4 = New("Part",chara,"Blade4",{BrickColor = BrickColor.new("Really blue"),Material = Enum.Material.Neon,Size = Vector3.new(1, 1, 10),CFrame = CFrame.new(-21.5, 3.5, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,Color = Color3.new(0, 0, 1),})
Blade4.Position = centrept.Position
Mesh = New("SpecialMesh",Blade4,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Blade4,"Weld",{Part0 = Blade4,Part1 = centrept,C1 = CFrame.new(0, 0, -5.50000191, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
wait(.1)
centrept.Anchored = false
Blade1.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,20,5,.1)
heetsnd:Play()
end
end)
Blade2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,20,5,.1)
heetsnd:Play()
end
end)
Blade3.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,20,5,.1)
heetsnd:Play()
end
end)
Blade4.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,20,5,.1)
heetsnd:Play()
end
end)
debby:AddItem(centrept,10)
end
spellactive = false
tool.Enabled = true
end

--Melee Attack--
function Click()
if tool.Enabled == true then
if combo == 1 then
print("fuck you")
tool.Enabled = false
bladeactive = true
SlashSnd:Play()
SLAnim:Play()
wait(.5)
bladeactive = false
SLAnim:Stop()
combo = 2
elseif combo == 2 then
print("fuck you too")
bladeactive = true
SlashSnd:Play()
SRAnim:Play()
wait(.5)
bladeactive = false
SRAnim:Stop()
combo = 3
elseif combo == 3 then
print("fuck everyone")
SDAnim:Play()
ExplSnd:Play()
tool.Enabled = false
local E = Instance.new("Explosion") 
E.Position = chara.Torso.Position + chara.Torso.CFrame.lookVector*10
E.Parent = game.Workspace
E.BlastRadius = 10
E.BlastPressure = 0
E.Visible = false
E.Hit:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil then
dealdmg(hit.Parent,20,5,.5)
end
end)
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Size = Vector3.new(1,1,1)
jtrace.Position = chara.Torso.Position + chara.Torso.CFrame.lookVector*10
jtrace.CFrame = chara.Torso.CFrame + chara.Torso.CFrame.lookVector*10
jtrace.Anchored = true
jtrace.CanCollide = false
jtrace.Material = "Neon"
jtrace.BrickColor = BrickColor.new("Bright red")
jtrace.Transparency = .3
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshType = "Sphere"
tmesh.Scale = Vector3.new(3,3,3)
local jtrace2 = Instance.new("Part",game.Workspace)
jtrace2.Size = Vector3.new(0,0,0)
jtrace2.BrickColor = BrickColor.new("Black")
jtrace2.Position = chara.Torso.Position + chara.Torso.CFrame.lookVector*10
jtrace2.CFrame = chara.Torso.CFrame + chara.Torso.CFrame.lookVector*10
jtrace2.Anchored = true
jtrace2.Transparency = .3
local tmesh2 = Instance.new("SpecialMesh",jtrace2)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=1125478"
tmesh2.Scale = Vector3.new(5,0,5)
tracegrow = coroutine.wrap(function()
for i = 1, 7 do
wait(.01)
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(2,2,2)
jtrace2.Transparency = jtrace2.Transparency + .1
tmesh2.Scale = tmesh2.Scale + Vector3.new(1,.05,1)
end
jtrace:Destroy()
jtrace2:Destroy()
end)
tracegrow()
wait(.5)
SDAnim:Stop()
combo = 1
end
end
wait(.1)
tool.Enabled = true
end

--Keys, Equip and Unequip--
function onKeyDown(key)
if spellactive == false then
if key == "z" then
CranberryTrap()
elseif key == "x" then
Lavaetein()
elseif key == "c" then
Kagome()
elseif key == "v" then
StarbowBreak()
elseif key == "b" then
Catadioptric()
elseif key == "n" then
CounterClock()
end
end
if key == "m" then
if music == 0 then
Music:Play()
music = 1
elseif music == 1 then
Music:Stop()
music = 0
end
end
end

function onEquipped(mouse)
local mouse = player:GetMouse()
if mouse then mouse.KeyDown:connect(onKeyDown)
mouse.Button1Down:connect(Click)
elseif not mouse then
end
end

function onUnequipped()
mouse = nil
end

tool.Equipped:connect(onEquipped)
tool.Unequipped:connect(onUnequipped)