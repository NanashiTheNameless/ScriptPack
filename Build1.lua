--[[
		Thanks for using Build-To-Lua by jarredbcv.
]]--

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
doll = New("Model",Workspace,"doll",{})
Girl = New("Model",doll,"Girl",{})
Sum = New("Model",Girl,"Sum",{})
Head = New("Part",Sum,"Head",{BrickColor = BrickColor.new("Pastel brown"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 1, 1),CFrame = CFrame.new(-5.14997911, 6.49999619, -5.66996098, 3.39611689e-039, -4.81598366e-021, -0.999995708, 3.45684392e-021, 1, -4.8159982e-021, 0.999995708, -3.45682938e-021, 2.21415107e-039),Anchored = true,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
Mesh = New("SpecialMesh",Head,"Mesh",{Scale = Vector3.new(1.25, 1.25, 1.25),})
face = New("Decal",Head,"face",{Texture = "http://www.roblox.com/asset/?id=12657253",})
HeadWeld = New("Weld",Head,"HeadWeld",{Part0 = Head,Part1 = Handle,C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.800000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Torso = New("Part",Sum,"Torso",{BrickColor = BrickColor.new("Pastel brown"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 2, 1),CFrame = CFrame.new(-5.14997911, 5.00000191, -5.66996098, 3.39611689e-039, -4.81598366e-021, -0.999995708, 3.45684392e-021, 1, -4.8159982e-021, 0.999995708, -3.45682938e-021, 2.21415107e-039),Anchored = true,Color = Color3.new(1, 0.8, 0.6),})
LeftLeg = New("Part",Sum,"LeftLeg",{BrickColor = BrickColor.new("Pastel brown"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-5.14997911, 2.99999809, -6.16995907, 3.39611689e-039, -4.81598366e-021, -0.999995708, 3.45684392e-021, 1, -4.8159982e-021, 0.999995708, -3.45682938e-021, 2.21415107e-039),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
LeftLegTerrainJoint = New("ManualWeld",LeftLeg,"LeftLegTerrainJoint",{Part1 = LeftLeg,})
RightLeg = New("Part",Sum,"RightLeg",{BrickColor = BrickColor.new("Pastel brown"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-5.14998341, 2.99999809, -5.16996288, 3.39611689e-039, -4.81598366e-021, -0.999995708, 3.45684392e-021, 1, -4.8159982e-021, 0.999995708, -3.45682938e-021, 2.21415107e-039),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
RightLegTerrainJoint = New("ManualWeld",RightLeg,"RightLegTerrainJoint",{Part1 = RightLeg,})
RightArm = New("Part",Sum,"RightArm",{BrickColor = BrickColor.new("Pastel brown"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-5.14998341, 5.00000191, -4.16996717, 3.39611689e-039, -4.81598366e-021, -0.999995708, 3.45684392e-021, 1, -4.8159982e-021, 0.999995708, -3.45682938e-021, 2.21415107e-039),Anchored = true,Color = Color3.new(1, 0.8, 0.6),})
LeftArm = New("Part",Sum,"LeftArm",{BrickColor = BrickColor.new("Pastel brown"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-5.14997911, 5.00000191, -7.16995478, 3.39611689e-039, -4.81598366e-021, -0.999995708, 3.45684392e-021, 1, -4.8159982e-021, 0.999995708, -3.45682938e-021, 2.21415107e-039),Anchored = true,Color = Color3.new(1, 0.8, 0.6),})
Roblox20torso = New("CharacterMesh",Sum,"Roblox 2.0 torso",{MeshId = "27111894",})
Roblox20RightLeg = New("CharacterMesh",Sum,"Roblox2.0RightLeg",{MeshId = "27111882",})
Roblox20RightArm = New("CharacterMesh",Sum,"Roblox2.0RightArm",{MeshId = "27111864",})
Roblox20LeftLeg = New("CharacterMesh",Sum,"Roblox2.0LeftLeg",{MeshId = "27111857",})
Roblox20LeftArm = New("CharacterMesh",Sum,"Roblox2.0LeftArm",{MeshId = "27111419",})
GoldenHair = New("Hat",Sum,"GoldenHair",{})
Handle = New("Part",GoldenHair,"Handle",{FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 1, 1),CFrame = CFrame.new(-5.14997911, 6.19999743, -5.66996098, 3.39611689e-039, -4.81598366e-021, -0.999995708, 3.45684392e-021, 1, -4.8159982e-021, 0.999995708, -3.45682938e-021, 2.21415107e-039),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Handle,"Mesh",{MeshId = "http://www.roblox.com/asset/?id=13070796",TextureId = "http://www.roblox.com/asset/?id=13597243",MeshType = Enum.MeshType.FileMesh,})
Humanoid = New("Humanoid",Sum,"Humanoid",{})
LocalCharacter = New("Model",doll,"LocalCharacter",{})
Part = New("Part",LocalCharacter,"Part",{BrickColor = BrickColor.new("Pastel brown"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-4.54998255, 5.50091362, -5.16996288, 3.39611689e-039, 6.17962079e-026, -0.999995708, 6.98741435e-026, 1, 6.78546596e-026, 0.999995708, -7.02780403e-026, 2.21414966e-039),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
Part = New("Part",LocalCharacter,"Part",{BrickColor = BrickColor.new("Salmon"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.200000003, 2),CFrame = CFrame.new(-4.1499877, 5.60090828, -5.16996288, 0.999995649, 6.17962079e-026, 3.39611689e-039, -6.82585564e-026, 1, 6.94702468e-026, -2.21414966e-039, -7.02780403e-026, 0.999995649),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.580392, 0.580392),})
Part = New("Part",LocalCharacter,"Part",{BrickColor = BrickColor.new("Pastel brown"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-5.44997597, 4.19094276, -6.06996822, 3.39611689e-039, 6.17962079e-026, -0.999995708, 6.98741435e-026, 1, 6.78546596e-026, 0.999995708, -7.02780403e-026, 2.21414966e-039),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
Part = New("Part",LocalCharacter,"Part",{BrickColor = BrickColor.new("Pastel brown"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-5.44997978, 4.21089745, -5.29996729, 3.39611689e-039, 6.17962079e-026, -0.999995708, 6.98741435e-026, 1, 6.78546596e-026, 0.999995708, -7.02780403e-026, 2.21414966e-039),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
Part = New("Part",LocalCharacter,"Part",{BrickColor = BrickColor.new("Pastel brown"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-4.54998255, 5.50091362, -6.16995907, 3.39611689e-039, 6.17962079e-026, -0.999995708, 6.98741435e-026, 1, 6.78546596e-026, 0.999995708, -7.02780403e-026, 2.21414966e-039),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
Part = New("Part",LocalCharacter,"Part",{BrickColor = BrickColor.new("Salmon"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-4.74998283, 4.00092316, -5.66996098, -9.0474316e-008, 0.999995649, 5.96043925e-008, -0.99999994, -9.04746997e-008, -7.98195288e-009, -7.98191557e-009, -5.96043925e-008, 0.999995649),Anchored = true,Color = Color3.new(1, 0.580392, 0.580392),})
Mesh = New("SpecialMesh",Part,"Mesh",{})
Part = New("Part",LocalCharacter,"Part",{BrickColor = BrickColor.new("Salmon"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.200000003, 2),CFrame = CFrame.new(-4.1499877, 5.60090828, -6.16995907, 0.999995649, 6.17962079e-026, 3.39611689e-039, -6.82585564e-026, 1, 6.94702468e-026, -2.21414966e-039, -7.02780403e-026, 0.999995649),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.580392, 0.580392),})
