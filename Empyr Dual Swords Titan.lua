---------
--Empyr--
-------------
--By	   --
--CKbackup --
-------------

wait(2)

local player = game.Players.LocalPlayer
local chara = player.Character
local debby = game.Debris
local Mouse = player:GetMouse()

--Outfit--

local foundObjectList = {}
local foundObjectIndex = 1
local function findObjectHelper(model, objectName, className, listOfFoundObjects)
	if not model then return end
	local findStart, findEnd = string.find(model.Name, objectName)
	if findStart == 1 and findEnd == #(model.Name) then  -- must match entire name
		if not className or model.className == className or (pcall(model.IsA, model, className) and model:IsA(className)) then
			table.insert(listOfFoundObjects, model)
		end
	end
	if pcall(model.GetChildren, model) then
		local modelChildren = model:GetChildren()
		for i = 1, #modelChildren do
			-- make sure not to resize tools, things tend to get complicated if we do
			if not (pcall(modelChildren[i].IsA, modelChildren[i], 'Tool') and modelChildren[i]:IsA('Tool')) then
				findObjectHelper(modelChildren[i], objectName, className, listOfFoundObjects)
			end
		end
	end
end

local function resizeModelInternal(model, resizeFactor)
	local modelCFrame = model:GetModelCFrame()
	local modelSize = model:GetModelSize()
	local baseParts = {}
	local basePartCFrames = {}
	local joints = {}
	local jointParents = {}
	local meshes = {}

	findObjectHelper(model, ".*", "BasePart", baseParts)
	findObjectHelper(model, ".*", "JointInstance", joints)

	-- meshes don't inherit from anything accessible?
	findObjectHelper(model, ".*", "FileMesh", meshes)                    -- base class for SpecialMesh and FileMesh
	findObjectHelper(model, ".*", "CylinderMesh", meshes)
	findObjectHelper(model, ".*", "BlockMesh", meshes)

	-- store the CFrames, so our other changes don't rearrange stuff
	for _, basePart in pairs(baseParts) do
		basePartCFrames[basePart] = basePart.CFrame
	end

	-- scale meshes
	for _,mesh in pairs(meshes) do
		-- This is a nasty hack because head meshes scale relative to the part's size
		-- thus scaling the mesh and the head gives u 2x the size
		if mesh.Parent.Name ~= "Head" then
			mesh.Scale = mesh.Scale * resizeFactor
		end
	end

	-- scale joints
	for _, joint in pairs(joints) do
		joint.C0 = joint.C0 + (joint.C0.p) * (resizeFactor - 1)
		joint.C1 = joint.C1 + (joint.C1.p) * (resizeFactor - 1)
		jointParents[joint] = joint.Parent
	end

	-- scale parts and reposition them within the model
	for _, basePart in pairs(baseParts) do
		if pcall(function() basePart.FormFactor = "Custom" end) then basePart.FormFactor = "Custom" end
		basePart.Size = basePart.Size * resizeFactor
		local oldCFrame = basePartCFrames[basePart]
		local oldPositionInModel = modelCFrame:pointToObjectSpace(oldCFrame.p)
		local distanceFromCorner = oldPositionInModel + modelSize/2
		distanceFromCorner = distanceFromCorner * resizeFactor

		local newPositionInSpace = modelCFrame:pointToWorldSpace(distanceFromCorner - modelSize/2)
		basePart.CFrame = oldCFrame - oldCFrame.p + newPositionInSpace
	end

	-- pop the joints back, because they prolly got borked
	for _, joint in pairs(joints) do
		joint.Parent = jointParents[joint]
	end

	return model
end

local function resizeImplementation(modelList, resizeFactor)
	if type(modelList) ~= "table" then modelList = {modelList} end

	for _, model in pairs(modelList) do
		--if model.Name ~= "BackPack" then
			resizeModelInternal(model, resizeFactor)
		--end
	end
	return modelList
end

resizeImplementation(chara,2)

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
MainPart = New("Part",Chest,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(4, 4, 2),CFrame = CFrame.new(-13, 5.99998093, -8, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara.Torso,C1 = CFrame.new(0, -1.8119812e-005, 3.81469727e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1.79999995, 0.800000012, 1.20000005),CFrame = CFrame.new(-13.5999966, 7.59997559, -8.09999847, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-0.599996567, 1.59999466, -0.0999984741, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1.79999995, 0.800000012, 1.20000005),CFrame = CFrame.new(-12.3999968, 7.59997511, -8.09999752, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(0.600003242, 1.59999418, -0.0999975204, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(4, 0.400000006, 2),CFrame = CFrame.new(-12.999999, 4.19998074, -7.99999905, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(9.53674316e-007, -1.80000019, 9.53674316e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.00000024, 0.200000003),CFrame = CFrame.new(-12.999999, 5.89998102, -8.89999866, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(9.53674316e-007, -0.0999999046, -0.899998665, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.5999999, 0.600000024, 1),CFrame = CFrame.new(-12.4999971, 7.69997501, -8.1999979, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(0.500002861, 1.69999409, -0.199997902, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.5999999, 0.600000024, 1),CFrame = CFrame.new(-13.4999962, 7.69997549, -8.19999886, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-0.499996185, 1.69999456, -0.199998856, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-13, 4.30000114, -5.50000095, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0, -1.69997978, 2.49999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-13, 11.6999998, -5.50000095, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0, 5.70001888, 2.49999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-16.6999931, 8, -5.5, 0, -1, 0, 1, 0, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 1, -0, -1, 0, 0, 0, 0, 1),C1 = CFrame.new(-3.69999313, 2.00001907, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-9.29999638, 7.99999475, -5.5, 0, -1, 0, 1, 0, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 1, -0, -1, 0, 0, 0, 0, 1),C1 = CFrame.new(3.70000362, 2.00001383, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-10.3837023, 5.38370228, -5.5, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829, 0, 0, 0, 1),C1 = CFrame.new(2.61629772, -0.616278648, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-15.616292, 10.616291, -5.5, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829, 0, 0, 0, 1),C1 = CFrame.new(-2.616292, 4.61631012, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-15.6162882, 5.38370609, -5.5, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0.707106829, 0, -0.707106829, -0.707106829, 0, 0, 0, 1),C1 = CFrame.new(-2.61628819, -0.616274834, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-10.3836956, 10.6162891, -5.5, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707106829, 0.707106829, 0, -0.707106829, -0.707106829, 0, 0, 0, 1),C1 = CFrame.new(2.6163044, 4.61630821, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-12.0423679, 4.42607403, -5.5, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872, 0, 0, 0, 1),C1 = CFrame.new(0.957632065, -1.5739069, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-13.9576283, 11.5739212, -5.5, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872, 0, 0, 0, 1),C1 = CFrame.new(-0.95762825, 5.57394028, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-16.5739136, 7.04236984, -5.5, -0.258818984, -0.965925872, 0, 0.965925872, -0.258818984, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.258818984, 0.965925872, 0, -0.965925872, -0.258818984, 0, 0, 0, 1),C1 = CFrame.new(-3.57391357, 1.04238892, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-9.42606831, 8.95762348, -5.5, -0.258818984, -0.965925872, 0, 0.965925872, -0.258818984, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.258818984, 0.965925872, 0, -0.965925872, -0.258818984, 0, 0, 0, 1),C1 = CFrame.new(3.57393169, 2.95764256, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-9.79570007, 6.14999676, -5.5, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.500000238, 0.866025388, 0, -0.866025388, 0.500000238, 0, 0, 0, 1),C1 = CFrame.new(3.20429993, 0.150015831, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-16.2042866, 9.84999371, -5.5, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.500000238, 0.866025388, 0, -0.866025388, 0.500000238, 0, 0, 0, 1),C1 = CFrame.new(-3.20428658, 3.85001278, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-14.8499899, 4.79570675, -5.5, -0.866025388, -0.500000238, 0, 0.500000238, -0.866025388, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.866025388, 0.500000238, 0, -0.500000238, -0.866025388, 0, 0, 0, 1),C1 = CFrame.new(-1.84998989, -1.20427418, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-11.1499863, 11.2042866, -5.5, -0.866025388, -0.500000238, 0, 0.500000238, -0.866025388, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.866025388, 0.500000238, 0, -0.500000238, -0.866025388, 0, 0, 0, 1),C1 = CFrame.new(1.85001373, 5.20430565, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-11.1499977, 4.79570389, -5.5, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388, 0, 0, 0, 1),C1 = CFrame.new(1.85000229, -1.20427704, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-14.8499956, 11.2042866, -5.5, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388, 0, 0, 0, 1),C1 = CFrame.new(-1.84999561, 5.20430565, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-16.2042828, 6.15000105, -5.5, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.500000238, 0.866025388, 0, -0.866025388, -0.500000238, 0, 0, 0, 1),C1 = CFrame.new(-3.20428276, 0.150020123, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-9.79569817, 9.84999275, -5.5, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.500000238, 0.866025388, 0, -0.866025388, -0.500000238, 0, 0, 0, 1),C1 = CFrame.new(3.20430183, 3.85001183, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-9.4260664, 7.04236507, -5.5, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.258818984, 0.965925872, 0, -0.965925872, 0.258818984, 0, 0, 0, 1),C1 = CFrame.new(3.5739336, 1.04238415, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-16.5739155, 8.95762348, -5.5, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.258818984, 0.965925872, 0, -0.965925872, 0.258818984, 0, 0, 0, 1),C1 = CFrame.new(-3.57391548, 2.95764256, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-13.9576197, 4.42607594, -5.5, -0.965925872, -0.258818984, 0, 0.258818984, -0.965925872, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.965925872, 0.258818984, 0, -0.258818984, -0.965925872, 0, 0, 0, 1),C1 = CFrame.new(-0.957619667, -1.57390499, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.600000024, 0.600000024),CFrame = CFrame.new(-12.0423536, 11.5739193, -5.5, -0.965925872, -0.258818984, 0, 0.258818984, -0.965925872, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.965925872, 0.258818984, 0, -0.258818984, -0.965925872, 0, 0, 0, 1),C1 = CFrame.new(0.95764637, 5.57393837, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(3, 0.600000024, 0.600000024),CFrame = CFrame.new(-8.55940533, 4.55548334, -5.5, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872, 0, 0, 0, 1),C1 = CFrame.new(4.44059467, -1.44449759, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(3, 0.600000024, 0.600000024),CFrame = CFrame.new(-17.4405823, 4.55548525, -5.5, -0.965925872, -0.258818984, 0, 0.258818984, -0.965925872, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.965925872, 0.258818984, 0, -0.258818984, -0.965925872, 0, 0, 0, 1),C1 = CFrame.new(-4.44058228, -1.44449568, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(3, 0.600000024, 0.600000024),CFrame = CFrame.new(-18.84058, 6.55548525, -5.5, -0.866025507, -0.499999911, 0, 0.499999911, -0.866025507, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.866025507, 0.499999911, 0, -0.499999911, -0.866025507, 0, 0, 0, 1),C1 = CFrame.new(-5.84057999, 0.555504322, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(3, 0.600000024, 0.600000024),CFrame = CFrame.new(-7.15940475, 6.55548334, -5.5, 0.866025507, -0.499999911, 0, 0.499999911, 0.866025507, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866025507, 0.499999911, 0, -0.499999911, 0.866025507, 0, 0, 0, 1),C1 = CFrame.new(5.84059525, 0.555502415, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(3, 0.600000024, 0.600000024),CFrame = CFrame.new(-18.84058, 8.55548573, -5.5, -0.707107067, -0.707106769, 0, 0.707106769, -0.707107067, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.707107067, 0.707106769, 0, -0.707106769, -0.707107067, 0, 0, 0, 1),C1 = CFrame.new(-5.84057999, 2.5555048, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(3, 0.600000024, 0.600000024),CFrame = CFrame.new(-7.15940475, 8.55548382, -5.5, 0.707107067, -0.707106769, 0, 0.707106769, 0.707107067, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.707107067, 0.707106769, 0, -0.707106769, 0.707107067, 0, 0, 0, 1),C1 = CFrame.new(5.84059525, 2.55550289, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999964, 3.20000029, 0.600000024),CFrame = CFrame.new(-21.0326118, 10.7475166, -5.5, 0, -0.707107067, 0.707106709, 0, 0.707106769, 0.707107008, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1.00000012, -0.707107067, 0.707106769, 0, 0.707106709, 0.707107008, 0),C1 = CFrame.new(-8.03261185, 4.74753571, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999964, 3.20000029, 0.600000024),CFrame = CFrame.new(-21.525259, 8.10548496, -5.5, 0, -0.866025686, 0.499999791, 0, 0.499999881, 0.866025627, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1.00000012, -0.866025686, 0.499999881, 0, 0.499999791, 0.866025627, 0),C1 = CFrame.new(-8.52525902, 2.10550404, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999964, 3.20000029, 0.600000024),CFrame = CFrame.new(-20.4349518, 5.35782433, -5.5, 0, -0.965925992, 0.258818924, 0, 0.258819014, 0.965925932, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1.00000012, -0.965925992, 0.258819014, 0, 0.258818924, 0.965925932, 0),C1 = CFrame.new(-7.43495178, -0.642156601, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999964, 3.20000029, 0.600000024),CFrame = CFrame.new(-5.56535196, 5.35782385, -5.5, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872, 0),C1 = CFrame.new(7.43464804, -0.642157078, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999964, 3.20000029, 0.600000024),CFrame = CFrame.new(-4.47504997, 8.10548496, -5.5, 0, 0.866025567, -0.499999762, 0, 0.499999762, 0.866025567, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0.866025567, 0.499999762, 0, -0.499999762, 0.866025567, 0),C1 = CFrame.new(8.52495003, 2.10550404, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999964, 3.20000029, 0.600000024),CFrame = CFrame.new(-4.96769905, 10.7475166, -5.5, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829, 0),C1 = CFrame.new(8.03230095, 4.74753571, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Tail = New("Part",Chest,"Tail",{BrickColor = BrickColor.new("Institutional white"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 1, 1),CFrame = CFrame.new(-12.9999971, 4.26603603, -6.89999485, 1, 4.29369379e-007, 4.29373046e-007, 1.01021019e-013, 0.707109928, -0.707103968, -6.07222375e-007, 0.707103968, 0.707109928),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Tail,"Mesh",{Offset = Vector3.new(0, 0, 3),Scale = Vector3.new(1.5, 1.5, 1.5),MeshId = "http://www.roblox.com/asset/?id=471740614",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Tail,"Weld",{Part0 = Tail,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, 1.01021019e-013, -6.07222375e-007, 4.29369379e-007, 0.707109928, 0.707103968, 4.29373046e-007, -0.707103968, 0.707109928),C1 = CFrame.new(2.86102295e-006, -1.73394489, 1.10000515, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
FakeHead = New("Model",chara,"FakeHead",{})
AMainPart = New("Part",FakeHead,"AMainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(4, 2, 2),CFrame = CFrame.new(-13, 9.1999445, -8, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",AMainPart,"Mesh",{Scale = Vector3.new(1.25, 1.25, 1.25),})
Weld = New("ManualWeld",AMainPart,"Weld",{Part0 = AMainPart,Part1 = chara.Head,C1 = CFrame.new(0, 0.199954033, 3.81469727e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 1.60000002, 2.20000005),CFrame = CFrame.new(-13, 8.79999447, -8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C1 = CFrame.new(0, -0.399950027, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 2),CFrame = CFrame.new(-11.1999998, 10.2999945, -7.89999962, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(1.80000019, 1.10004997, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.799999952),CFrame = CFrame.new(-11.5999975, 10.0999908, -7.89999962, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.40000248, 0.900046349, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.0999975, 10.2999945, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(2.90000248, 1.10004997, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 2),CFrame = CFrame.new(-14.7999964, 10.2999945, -7.89999771, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-1.79999638, 1.10004997, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.799999952),CFrame = CFrame.new(-14.3999958, 10.0999908, -7.89999771, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.3999958, 0.900046349, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.899992, 10.2999945, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-2.89999199, 1.10004997, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000024, 0.600000024),CFrame = CFrame.new(-10.4999943, 9.89999485, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(2.50000572, 0.700050354, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 1.00000012),CFrame = CFrame.new(-14.4999981, 9.49999237, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.49999809, 0.300047874, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000024, 0.600000024),CFrame = CFrame.new(-15.0999975, 9.29999447, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.899999976, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-2.09999752, 0.100049973, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.599999964),CFrame = CFrame.new(-14.2999935, 9.29998493, -7.89999771, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.29999352, 0.100040436, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000083, 1.20000005),CFrame = CFrame.new(-14.5999975, 9.89999485, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.59999752, 0.700050354, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000024, 0.600000024),CFrame = CFrame.new(-15.4999981, 9.89999485, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-2.49999809, 0.700050354, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-14.1999941, 8.69997883, -7.89999771, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.19999409, -0.499965668, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.400000006, 0.800000131),CFrame = CFrame.new(-14.399992, 9.19999695, -7.89999771, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.39999199, 5.24520874e-005, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-14.8999958, 8.89997482, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.8999958, -0.299969673, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.400000006, 0.600000024),CFrame = CFrame.new(-14.2999964, 8.79999447, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-1.29999638, -0.399950027, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.399999946),CFrame = CFrame.new(-14.399992, 8.89997292, -7.89999771, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-1.39999199, -0.299971581, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 1.19999993),CFrame = CFrame.new(-14.399992, 9.49998093, -7.89999771, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-1.39999199, 0.30003643, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-15.2999935, 9.49998283, -7.89999962, 0, 0, 1, 0, -1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, -1, 0, 1, 0, -0),C1 = CFrame.new(-2.29999352, 0.300038338, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.399999946),CFrame = CFrame.new(-11.6000004, 8.89997292, -7.89999962, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(1.39999962, -0.299971581, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 1.19999993),CFrame = CFrame.new(-11.6000004, 9.49998283, -7.89999962, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(1.39999962, 0.300038338, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-11.0999956, 8.89997482, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.90000439, -0.299969673, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.400000006, 0.800000131),CFrame = CFrame.new(-11.6000004, 9.19999695, -7.89999962, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.39999962, 5.24520874e-005, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(-10.699996, 9.49998474, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(2.30000401, 0.300040245, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.400000006, 0.600000024),CFrame = CFrame.new(-11.6999941, 8.79999447, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.30000591, -0.399950027, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-11.7999983, 8.69997883, -7.89999962, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.20000172, -0.499965668, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.599999964),CFrame = CFrame.new(-11.6999979, 9.29998493, -7.89999962, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.3000021, 0.100040436, 0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000024, 0.600000024),CFrame = CFrame.new(-10.8999939, 9.29999447, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.899999976, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(2.1000061, 0.100049973, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 1.00000012),CFrame = CFrame.new(-11.4999943, 9.49999237, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.50000572, 0.300047874, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.600000083, 1.20000005),CFrame = CFrame.new(-11.3999939, 9.89999485, -7.89999771, 0, 0, -1, 0, -1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0),C1 = CFrame.new(1.6000061, 0.700050354, 0.100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Horns = New("Part",FakeHead,"Horns",{BrickColor = BrickColor.new("Smoky grey"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(2, 2, 2),CFrame = CFrame.new(-13, 9.99999237, -7.59999943, 1, 0, 0, 0, 0.866025388, -0.500000358, 0, 0.500000358, 0.866025388),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Horns,"Mesh",{Offset = Vector3.new(0, 2, 0),Scale = Vector3.new(2, 2, 2),MeshId = "rbxassetid://215680403",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Horns,"Weld",{Part0 = Horns,Part1 = AMainPart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.866025388, 0.500000358, 0, -0.500000358, 0.866025388),C1 = CFrame.new(0, 0.800047874, 0.400000572, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-12.8999996, 9.09999466, -9.40000057, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 0.5),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C1 = CFrame.new(0.100000381, -0.0999498367, -1.40000057, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-13.0999994, 9.09999466, -9.40000057, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 0.5),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C1 = CFrame.new(-0.0999994278, -0.0999498367, -1.40000057, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.600000024, 0.400000006),CFrame = CFrame.new(-12.6999998, 9.69999409, -9.20000076, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 0.25),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C1 = CFrame.new(0.300000191, 0.500049591, -1.20000076, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",FakeHead,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.600000024, 0.400000006),CFrame = CFrame.new(-13.2999992, 9.69999409, -9.20000076, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 0.25),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = AMainPart,C1 = CFrame.new(-0.299999237, 0.500049591, -1.20000076, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
LeftArm = New("Model",chara,"LeftArm",{})
MainPart = New("Part",LeftArm,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 4, 2),CFrame = CFrame.new(-16, 6.00000191, -7.99999905, 1, 0, 0, 0, 1.00001049, 0, 0, 0, 1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Arm"],C1 = CFrame.new(0, -1.8119812e-005, 3.81469727e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2.20000005, 0.599999845, 2.4000001),CFrame = CFrame.new(-16.0999966, 7.90002203, -7.99999714, -1, 0, 0, 0, 1.00001049, 0, 0, 0, -1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.0999965668, 1.9000001, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2.4000001, 0.599999845, 0.400000036),CFrame = CFrame.new(-17.3999977, 7.90002203, -7.99999714, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.39999771, 1.9000001, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2.4000001, 0.599999845, 0.400000036),CFrame = CFrame.new(-14.7999954, 7.90002203, -7.99999714, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(1.20000458, 1.9000001, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 2),CFrame = CFrame.new(-15.9999971, 4.60000706, -7.99999714, -1, 0, 0, 0, 1.00001049, 0, 0, 0, -1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(2.86102295e-006, -1.39998007, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.399999857, 2),CFrame = CFrame.new(-16.7999954, 5.00001049, -7.99999714, -1, 0, 0, 0, 1.00001049, 0, 0, 0, -1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.799995422, -0.999980927, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.999999881, 0.399999976),CFrame = CFrame.new(-16.7999954, 5.70001745, -7.99999714, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.799995422, -0.299981117, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 0.399999976),CFrame = CFrame.new(-16.3999977, 5.00001144, -7.99999714, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.399997711, -0.999979973, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.200000003, 2),CFrame = CFrame.new(-16.1999969, 4.90000963, -7.99999714, -1, 0, 0, 0, 1.00001049, 0, 0, 0, -1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.199996948, -1.09998083, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.599999905, 0.399999976),CFrame = CFrame.new(-16.1999969, 5.30001354, -7.99999714, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.199996948, -0.699981213, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-15.7999954, 4.90001059, -7.99999714, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.200004578, -1.09997988, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.699996, 5.1000123, -7.99999714, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.300004005, -0.899980068, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-15.3999958, 4.90001059, -7.99999714, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.600004196, -1.09997988, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000033, 0.200000003, 2),CFrame = CFrame.new(-15.699996, 4.90000963, -7.99999714, -1, 0, 0, 0, 1.00001049, 0, 0, 0, -1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0.300004005, -1.09998083, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
LeftLeg = New("Model",chara,"LeftLeg",{})
MainPart = New("Part",LeftLeg,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 4, 2),CFrame = CFrame.new(-14, 2, -8, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Leg"],C1 = CFrame.new(0, -9.53674316e-007, 3.81469727e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 2),CFrame = CFrame.new(-13.999999, 0.60000062, -7.99999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(9.53674316e-007, -1.39999938, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.399999857, 2),CFrame = CFrame.new(-14.7999945, 0.999999523, -7.99999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.799994469, -1.00000048, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.999999881, 0.399999976),CFrame = CFrame.new(-14.7999945, 1.69999933, -7.99999809, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.799994469, -0.300000668, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 0.399999976),CFrame = CFrame.new(-14.3999987, 1.00000048, -7.99999809, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.399998665, -0.999999464, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.200000003, 2),CFrame = CFrame.new(-14.1999989, 0.899999619, -7.99999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.199998856, -1.10000038, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.599999905, 0.399999976),CFrame = CFrame.new(-14.1999989, 1.29999924, -7.99999809, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.199998856, -0.700000763, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-13.7999973, 0.900000572, -7.99999809, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.20000267, -1.09999943, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.200000003),CFrame = CFrame.new(-13.6999979, 1.10000038, -7.99999809, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.300002098, -0.899999619, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-13.3999977, 0.900000572, -7.99999809, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.600002289, -1.09999943, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000033, 0.200000003, 2),CFrame = CFrame.new(-13.6999979, 0.899999619, -7.99999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0.300002098, -1.10000038, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999917, 1.80000007, 1),CFrame = CFrame.new(-13.4999943, 3.06603575, -8.79999924, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.500005722, 1.06603575, -0.799999237, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999905, 1.79999995, 1.20000005),CFrame = CFrame.new(-13.5999956, 3.26603413, -8.69999886, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.400004387, 1.26603413, -0.699998856, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999857, 1.80000007, 1),CFrame = CFrame.new(-13.4999971, 3.06603599, -7.19999504, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.500002861, 1.06603599, 0.800004959, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999905, 1.79999995, 1.20000005),CFrame = CFrame.new(-13.5999947, 3.26603389, -7.29999542, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.400005341, 1.26603389, 0.700004578, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",LeftLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 2),CFrame = CFrame.new(-14.499999, 2.49999952, -7.99999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.499999046, 0.499999523, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
RightArm = New("Model",chara,"RightArm",{})
MainPart = New("Part",RightArm,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 4, 2),CFrame = CFrame.new(-9.99999905, 6.00000191, -7.99999905, 1, 0, 0, 0, 1.00001049, 0, 0, 0, 1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Arm"],C1 = CFrame.new(0, -1.8119812e-005, 3.81469727e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2.20000005, 0.599999845, 2.4000001),CFrame = CFrame.new(-9.89999866, 7.90002203, -7.99999905, 1, 0, 0, 0, 1.00001049, 0, 0, 0, 1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.100000381, 1.9000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2.4000001, 0.599999845, 0.400000036),CFrame = CFrame.new(-8.59999657, 7.90002203, -7.99999905, 0, 0, -1, 0, 1.00001049, 0, 1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(1.40000248, 1.9000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2.4000001, 0.599999845, 0.400000036),CFrame = CFrame.new(-11.1999979, 7.90002203, -7.99999905, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.19999886, 1.9000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 2),CFrame = CFrame.new(-9.99999905, 4.60000753, -7.99999905, 1, 0, 0, 0, 1.00001049, 0, 0, 0, 1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0, -1.39997959, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.399999857, 2),CFrame = CFrame.new(-9.19999886, 5.00001097, -7.99999905, 1, 0, 0, 0, 1.00001049, 0, 0, 0, 1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.800000191, -0.99998045, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.999999881, 0.399999976),CFrame = CFrame.new(-9.19999886, 5.70001793, -7.99999905, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.800000191, -0.29998064, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 0.399999976),CFrame = CFrame.new(-9.59999847, 5.00001192, -7.99999905, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.400000572, -0.999979496, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.200000003, 2),CFrame = CFrame.new(-9.79999828, 4.90001011, -7.99999905, 1, 0, 0, 0, 1.00001049, 0, 0, 0, 1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.200000763, -1.09998035, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.599999905, 0.399999976),CFrame = CFrame.new(-9.79999828, 5.3000145, -7.99999905, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.200000763, -0.699980259, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-10.1999979, 4.90001106, -7.99999905, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.199998856, -1.0999794, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.2999973, 5.1000123, -7.99999905, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.299998283, -0.899980068, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-10.5999975, 4.90001106, -7.99999905, 0, 0, 1, 0, 1.00001049, 0, -1.00001049, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.599998474, -1.0999794, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightArm,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000033, 0.200000003, 2),CFrame = CFrame.new(-10.2999973, 4.90001011, -7.99999905, 1, 0, 0, 0, 1.00001049, 0, 0, 0, 1.00001049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(-0.299998283, -1.09998035, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
RightLeg = New("Model",chara,"RightLeg",{})
MainPart = New("Part",RightLeg,"MainPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 4, 2),CFrame = CFrame.new(-12, 2, -8, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Leg"],C1 = CFrame.new(0, -1.90734863e-006, 3.81469727e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 2),CFrame = CFrame.new(-11.999999, 0.600000978, -7.99999809, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(9.53674316e-007, -1.39999902, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.399999857, 2),CFrame = CFrame.new(-11.2000027, 1, -7.99999809, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.79999733, -1, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.999999881, 0.399999976),CFrame = CFrame.new(-11.2000027, 1.69999897, -7.99999809, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.79999733, -0.300001025, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.399999857, 0.399999976),CFrame = CFrame.new(-11.5999985, 1.00000095, -7.99999809, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.400001526, -0.999999046, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000036, 0.200000003, 2),CFrame = CFrame.new(-11.7999992, 0.899999976, -7.99999809, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(0.200000763, -1.10000002, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.599999905, 0.399999976),CFrame = CFrame.new(-11.7999992, 1.299999, -7.99999809, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.200000763, -0.700001001, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-12.2000008, 0.90000093, -7.99999809, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.200000763, -1.09999907, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.200000003),CFrame = CFrame.new(-12.2999992, 1.0999999, -7.99999809, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.299999237, -0.900000095, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(2, 0.200000003, 0.399999976),CFrame = CFrame.new(-12.5999985, 0.90000093, -7.99999809, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.599998474, -1.09999907, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000033, 0.200000003, 2),CFrame = CFrame.new(-12.2999992, 0.899999976, -7.99999809, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C1 = CFrame.new(-0.299999237, -1.10000002, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999905, 1.79999995, 1.20000005),CFrame = CFrame.new(-12.3999958, 3.26603413, -8.69999886, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.399995804, 1.26603413, -0.699998856, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999857, 1.80000007, 1),CFrame = CFrame.new(-12.4999943, 3.06603575, -8.79999924, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.499994278, 1.06603575, -0.799999237, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999917, 1.80000007, 1),CFrame = CFrame.new(-12.4999952, 3.06603599, -7.19999409, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.499995232, 1.06603599, 0.800005913, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.599999905, 1.79999995, 1.20000005),CFrame = CFrame.new(-12.3999949, 3.26603389, -7.29999447, 0, 0, -1, 0, 1, 0, 1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(-0.39999485, 1.26603389, 0.700005531, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",RightLeg,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(1, 0.200000003, 2),CFrame = CFrame.new(-11.500001, 2.50000095, -8, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0.499999046, 0.500000954, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Sword = New("Model",chara,"Sword",{})
HandlePart = New("Part",Sword,"HandlePart",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.400000006, 2.5999999, 0.800000072),CFrame = CFrame.new(-9.79998112, 4, -8.09992218, 1, 0, 0, 0, 0, 1.00001049, 0, -1.00001049, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",HandlePart,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",HandlePart,"Weld",{Part0 = HandlePart,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0),C1 = CFrame.new(0.600019455, -2.00004101, -0.0999221802, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-9.8000021, 3.60003233, -16.7001877, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.60017395, -0.399963379, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-9.8000021, 4.4000473, -16.7001877, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.60017395, 0.400043011, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 2.90001202, -11.000042, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90008926, -1.09997654, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.200000033),CFrame = CFrame.new(-9.8000021, 5.10007191, -17.2002029, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10018539, 1.10006046, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-9.8000021, 4.10004663, -15.8001614, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 7.70015907, 0.100045681, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-9.8000021, 5.70008373, -17.2002087, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10019112, 1.70006561, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-9.8000021, 3.90004396, -17.8002205, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.70019531, -0.0999550819, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 2.70000267, -11.0000458, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90009308, -1.29998374, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 2.20000005, 1.39999974),CFrame = CFrame.new(-9.8000021, 4.70006227, -18.7002487, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 10.6002159, 0.700055122, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000095, 0.599999726),CFrame = CFrame.new(-9.8000021, 5.5000782, -17.2002068, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10018921, 1.50006247, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.800000131),CFrame = CFrame.new(-9.79999733, 1.39996743, -9.59999847, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 1.50006008, -2.60000539, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999733, 0.799952745, -9.9000082, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 1.80006695, -3.20001364, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.39999998, 0.200000003),CFrame = CFrame.new(-9.8000021, 4.3000474, -11.1000471, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.00009346, 0.30004406, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999733, 1.19996619, -9.90000534, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 1.80006409, -2.80000448, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-9.79999733, 2.09998894, -10.6000156, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 2.50006771, -1.89999104, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 6.5999999, 2.4000001),CFrame = CFrame.new(-9.8000021, 4.0000391, -13.7001171, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.6001358, 3.9100647e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 3.50002646, -12.0000677, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.90010452, -0.49996829, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.39999998, 0.200000003),CFrame = CFrame.new(-9.8000021, 3.7000308, -11.1000452, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.00009155, -0.299966097, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 5.60000038, 0.200000003),CFrame = CFrame.new(-9.8000021, 3.9000411, -13.200098, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.10012245, -0.099957943, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 5.30007172, -16.4001846, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.30017662, 1.30005789, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 4.50005245, -12.0000677, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.90010452, 0.500047207, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-9.79999733, 3.60003233, -16.9001961, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 8.80018044, -0.399963379, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000029, 1.99999988),CFrame = CFrame.new(-9.8000021, 5.00006771, -19.0002556, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 10.900219, 1.00005722, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-9.8000021, 4.10004807, -17.8002167, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.70019341, 0.100047112, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1, 4.4000001),CFrame = CFrame.new(-9.8000021, 4.00004101, -9.90001583, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 1.80007458, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-9.79999733, 4.40005732, -16.9001923, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 8.80017662, 0.400053024, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.8000021, 5.60008335, -17.5002136, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.40019417, 1.60006666, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 2.60000014),CFrame = CFrame.new(-9.8000021, 4.10004663, -17.2001972, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10017967, 0.100045681, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 5.10006762, -16.4001846, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.30017662, 1.10005617, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 5.60000038, 0.200000003),CFrame = CFrame.new(-9.8000021, 4.10004568, -13.200098, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.10012245, 0.100044727, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-9.8000021, 3.9000361, -15.8001633, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 7.70016098, -0.0999629498, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999733, 0.199937344, -10.9000368, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 2.80008507, -3.80002284, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 5.10006762, -11.0000439, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90009117, 1.10005617, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Reflectance = 0.20000000298023,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 0.400000006),CFrame = CFrame.new(-9.8000021, 4.00004101, -9.90001583, 0, 0, 1, -1.00001574, 4.1723689e-007, 0, -4.1723689e-007, -1.00001574, 0),CanCollide = false,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.39999998, 1.39999998, 2.5),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 0, -1.00000525, -4.17232513e-007, 0, 4.17232513e-007, -1.00000525, 1, 0, 0),C1 = CFrame.new(-2.0980835e-005, 1.80007458, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.00003672, -7.99996376, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -0.0999574661, 3.67164612e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.200000033),CFrame = CFrame.new(-9.8000021, 2.90000677, -17.2002087, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10019112, -1.09998155, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.79999733, 2.90001202, -16.4001846, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 8.30017662, -1.09997654, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999638, 7.20012188, -9.90000343, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.80006218, 3.2000885, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.00003672, -6.79994297, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -1.29996586, 3.67164612e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 2.60000014),CFrame = CFrame.new(-9.8000021, 3.9000411, -17.2001972, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10017967, -0.099957943, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 2.80000019),CFrame = CFrame.new(-9.8000021, 4.00004387, -17.5002136, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.40019226, 4.38690186e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-9.79999638, 5.90009212, -10.6000118, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.5000639, 1.9000721, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.800000131),CFrame = CFrame.new(-9.79999638, 6.6001091, -9.59999084, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.50005341, 2.60008192, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000029, 1.99999988),CFrame = CFrame.new(-9.79999733, 3.00001597, -19.0002556, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 10.900219, -0.999973536, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 2.20000005, 1.39999974),CFrame = CFrame.new(-9.79999733, 3.30002522, -18.7002525, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 10.6002178, -0.699967384, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.00003576, -7.5999732, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -0.499943733, 3.57627869e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999638, 7.80013466, -10.9000292, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.80007744, 3.80009508, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999733, 0.999960899, -10.3000174, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 2.20007229, -3.00000763, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.00003576, -7.19994068, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -0.899971962, 3.57627869e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.0000391, -9.20001602, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 1.1000824, 3.9100647e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999638, 7.40012741, -10.9000292, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.80007744, 3.40009165, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.00003672, -8.39999104, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 0.300065994, 3.67164612e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999638, 7.00011492, -10.3000135, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.20006847, 3.00008345, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 5.3000679, -11.0000401, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90008736, 1.30005455, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.00003576, -6.3999157, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(2, 2, 2),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -1.69998837, 3.57627869e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-9.8000021, 2.70000982, -16.4001884, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.30017853, -1.29997659, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 7, 2),CFrame = CFrame.new(-9.8000021, 4.00004101, -13.9001236, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.80014038, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999638, 7.4001255, -10.3000078, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.20006275, 3.40008974, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999638, 6.80010986, -9.90000534, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.80006409, 2.8000803, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000095, 0.599999726),CFrame = CFrame.new(-9.79999733, 2.50000238, -17.2002106, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 9.10019302, -1.49998188, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999733, 2.39999962, -17.5002136, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 9.40019417, -1.59998369, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 1.00000012),CFrame = CFrame.new(-9.79999733, 1.29996228, -10.0000019, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 1.9000597, -2.70000935, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-9.79999733, 2.29999208, -17.2002068, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 9.10018921, -1.69999003, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 1.00000012),CFrame = CFrame.new(-9.79999638, 6.70010948, -10, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.90005779, 2.70008087, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999733, 0.599950552, -10.3000154, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 2.20007038, -3.40001369, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.600000024, 1.4000001),CFrame = CFrame.new(-9.79999638, 6.90011406, -10.5000134, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.40006542, 2.90008354, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-9.8000021, 4.0000391, -8.79999256, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 0.700062752, 3.9100647e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.600000024, 1.4000001),CFrame = CFrame.new(-9.79999733, 1.09996104, -10.5000172, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 2.40006924, -2.90000844, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-9.79999733, 0.599946499, -10.900033, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.62124634e-005, 2.80008125, -3.40001774, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword,"Part",{BrickColor = BrickColor.new("Bright yellow"),Reflectance = 0.20000000298023,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(2, 1, 0.400000036),CFrame = CFrame.new(-9.8000021, 4.00004101, -9.90001583, 0, 0, 1, -1.00001574, 4.1723689e-007, 0, -4.1723689e-007, -1.00001574, 0),CanCollide = false,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(2, 2, 10),MeshId = "http://www.roblox.com/asset?id=156292343",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 0, -1.00000525, -4.17232513e-007, 0, 4.17232513e-007, -1.00000525, 1, 0, 0),C1 = CFrame.new(-2.0980835e-005, 1.80007458, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Hitbox = New("Part",Sword,"Hitbox",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.400000006, 10.1999998, 4),CFrame = CFrame.new(-9.8000021, 4.00004101, -15.5000095, 1, 0, 0, 0, 4.17232513e-007, 1.00000525, 0, -1.00000525, 4.17232513e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Hitbox,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Hitbox,"Weld",{Part0 = Hitbox,Part1 = HandlePart,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 7.40001011, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Sword2 = New("Model",chara,"Sword2",{})
Handle2Part = New("Part",Sword2,"Handle2Part",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.400000006, 2.5999999, 0.800000072),CFrame = CFrame.new(-38.3999786, 4.00000095, -0.0999183655, 1, 0, 0, 0, 0, 1.00001049, 0, -1.00001049, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Handle2Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Handle2Part,"Weld",{Part0 = Handle2Part,Part1 = chara["Left Arm"],C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0),C1 = CFrame.new(-0.399980545, -1.99999905, -0.0999183655, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-38.4000015, 3.60003328, -8.70018291, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.60017395, -0.399963379, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-38.4000015, 4.40004826, -8.70018291, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.60017395, 0.400043011, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 2.90001297, -3.00003815, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90008926, -1.09997654, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.200000033),CFrame = CFrame.new(-38.4000015, 5.10007286, -9.20019913, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10018539, 1.10006046, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-38.4000015, 4.10004759, -7.80015802, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 7.70015907, 0.100045681, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-38.4000015, 5.70008469, -9.20020485, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10019112, 1.70006561, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-38.4000015, 3.90004492, -9.80021572, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.70019531, -0.0999550819, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 2.70000362, -3.00004196, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90009308, -1.29998374, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 2.20000005, 1.39999974),CFrame = CFrame.new(-38.4000015, 4.70006323, -10.7002459, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 10.6002159, 0.700055122, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000095, 0.599999726),CFrame = CFrame.new(-38.4000015, 5.50007915, -9.20020294, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10018921, 1.50006247, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.800000131),CFrame = CFrame.new(-38.3999939, 1.39996839, -1.59999418, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.50006008, -2.60000539, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 0.799953699, -1.90000415, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.80006695, -3.20001364, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.39999998, 0.200000003),CFrame = CFrame.new(-38.4000015, 4.30004835, -3.1000433, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.00009346, 0.30004406, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 1.19996715, -1.90000129, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.80006409, -2.80000448, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-38.3999939, 2.09998989, -2.6000123, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.50006771, -1.89999104, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 6.5999999, 2.4000001),CFrame = CFrame.new(-38.4000015, 4.00004005, -5.70011282, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.6001358, 3.9100647e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 3.50002742, -4.0000639, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.90010452, -0.49996829, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.39999998, 0.200000003),CFrame = CFrame.new(-38.4000015, 3.70003176, -3.10004139, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.00009155, -0.299966097, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 5.60000038, 0.200000003),CFrame = CFrame.new(-38.4000015, 3.90004206, -5.20009422, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.10012245, -0.099957943, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 5.30007267, -8.40018177, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.30017662, 1.30005789, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 4.50005341, -4.0000639, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 3.90010452, 0.500047207, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-38.3999939, 3.60003328, -8.90019131, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 8.80018044, -0.399963379, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000029, 1.99999988),CFrame = CFrame.new(-38.4000015, 5.00006866, -11.0002518, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 10.900219, 1.00005722, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-38.4000015, 4.10004902, -9.80021381, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.70019341, 0.100047112, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1, 4.4000001),CFrame = CFrame.new(-38.4000015, 4.00004196, -1.90001178, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 1.80007458, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-38.3999939, 4.40005827, -8.90018749, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 8.80017662, 0.400053024, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.4000015, 5.6000843, -9.50021076, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.40019417, 1.60006666, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 2.60000014),CFrame = CFrame.new(-38.4000015, 4.10004759, -9.20019341, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10017967, 0.100045681, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 5.10006857, -8.40018177, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.30017662, 1.10005617, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 5.60000038, 0.200000003),CFrame = CFrame.new(-38.4000015, 4.10004663, -5.20009422, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.10012245, 0.100044727, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 2.00000048, 0.200000003),CFrame = CFrame.new(-38.4000015, 3.90003705, -7.80015993, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 7.70016098, -0.0999629498, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 0.199938297, -2.90003276, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.80008507, -3.80002284, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 5.10006857, -3.00004005, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90009117, 1.10005617, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Reflectance = 0.20000000298023,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 0.400000006),CFrame = CFrame.new(-38.4000015, 4.00004196, -1.90001178, 0, 0, 1, -1.00001574, 4.1723689e-007, 0, -4.1723689e-007, -1.00001574, 0),CanCollide = false,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.39999998, 1.39999998, 2.5),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 0, -1.00000525, -4.17232513e-007, 0, 4.17232513e-007, -1.00000525, 1, 0, 0),C1 = CFrame.new(-2.0980835e-005, 1.80007458, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00003767, 4.01511788e-005, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -0.0999574661, 3.67164612e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.200000033),CFrame = CFrame.new(-38.4000015, 2.90000772, -9.20020485, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10019112, -1.09998155, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.3999939, 2.90001297, -8.40018177, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 8.30017662, -1.09997654, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 7.20012283, -1.89999938, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.80006218, 3.2000885, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00003767, 1.20006108, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -1.29996586, 3.67164612e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 2.60000014),CFrame = CFrame.new(-38.4000015, 3.90004206, -9.20019341, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.10017967, -0.099957943, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 2.80000019),CFrame = CFrame.new(-38.4000015, 4.00004482, -9.50020885, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 9.40019226, 4.38690186e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-38.3999939, 5.90009308, -2.60000849, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.5000639, 1.9000721, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 0.800000131),CFrame = CFrame.new(-38.3999939, 6.60011005, -1.59998751, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.50005341, 2.60008192, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 3.20000029, 1.99999988),CFrame = CFrame.new(-38.3999939, 3.00001693, -11.0002518, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 10.900219, -0.999973536, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 2.20000005, 1.39999974),CFrame = CFrame.new(-38.3999939, 3.30002618, -10.7002478, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 10.6002178, -0.699967384, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00003672, 0.400030613, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -0.499943733, 3.57627869e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 7.80013561, -2.90002513, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.80007744, 3.80009508, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 0.999961853, -2.30001378, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.20007229, -3.00000763, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00003672, 0.800063014, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -0.899971962, 3.57627869e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00004005, -1.20001233, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 1.1000824, 3.9100647e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 7.40012836, -2.90002513, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.80007744, 3.40009165, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00003767, -0.399987519, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 0.300065994, 3.67164612e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 7.00011587, -2.30000997, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.20006847, 3.00008345, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 5.30006886, -3.00003624, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 2.90008736, 1.30005455, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00003672, 1.60008788, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(2, 2, 2),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, -1.69998837, 3.57627869e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 1.20000005, 0.200000003),CFrame = CFrame.new(-38.4000015, 2.70001078, -8.40018368, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 8.30017853, -1.29997659, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 7, 2),CFrame = CFrame.new(-38.4000015, 4.00004196, -5.90011978, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 5.80014038, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 7.40012646, -2.30000424, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.20006275, 3.40008974, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 6.80011082, -1.90000129, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.80006409, 2.8000803, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000095, 0.599999726),CFrame = CFrame.new(-38.3999939, 2.50000334, -9.20020676, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 9.10019302, -1.49998188, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 2.40000057, -9.50021076, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 9.40019417, -1.59998369, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 1.00000012),CFrame = CFrame.new(-38.3999939, 1.29996324, -1.99999797, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.9000597, -2.70000935, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.400000006, 0.600000024),CFrame = CFrame.new(-38.3999939, 2.29999304, -9.20020294, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 9.10018921, -1.69999003, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.400000006, 1.00000012),CFrame = CFrame.new(-38.3999939, 6.70011044, -1.99999607, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 1.90005779, 2.70008087, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 0.599951506, -2.30001187, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.20007038, -3.40001369, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.600000024, 1.4000001),CFrame = CFrame.new(-38.3999939, 6.90011501, -2.50000906, 1, 0, 0, 0, -4.1723689e-007, -1.00001574, 0, 1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.40006542, 2.90008354, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2),CFrame = CFrame.new(-38.4000015, 4.00004005, -0.799988449, 1, 0, 0, 0, 4.1723689e-007, 1.00001574, 0, -1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 0.700062752, 3.9100647e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.600000024, 1.4000001),CFrame = CFrame.new(-38.3999939, 1.099962, -2.50001287, -1, 0, 0, 0, -4.1723689e-007, 1.00001574, 0, 1.00001574, 4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -4.17232513e-007, 1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.40006924, -2.90000844, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-38.3999939, 0.599947453, -2.90002894, -1, 0, 0, 0, 4.1723689e-007, -1.00001574, 0, -1.00001574, -4.1723689e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, -1.00000525, -4.17232513e-007),C1 = CFrame.new(-1.52587891e-005, 2.80008125, -3.40001774, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Part = New("Part",Sword2,"Part",{BrickColor = BrickColor.new("Bright yellow"),Reflectance = 0.20000000298023,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(2, 1, 0.400000036),CFrame = CFrame.new(-38.4000015, 4.00004196, -1.90001178, 0, 0, 1, -1.00001574, 4.1723689e-007, 0, -4.1723689e-007, -1.00001574, 0),CanCollide = false,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(2, 2, 10),MeshId = "http://www.roblox.com/asset?id=156292343",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 0, -1.00000525, -4.17232513e-007, 0, 4.17232513e-007, -1.00000525, 1, 0, 0),C1 = CFrame.new(-2.0980835e-005, 1.80007458, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})
Hitbox2 = New("Part",Sword2,"Hitbox2",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.400000006, 10.1999998, 4),CFrame = CFrame.new(-38.4000015, 4.00004196, -7.50000572, 1, 0, 0, 0, 4.17232513e-007, 1.00000525, 0, -1.00000525, 4.17232513e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Hitbox2,"Mesh",{Scale = Vector3.new(0.600000024, 1, 1),})
Weld = New("ManualWeld",Hitbox2,"Weld",{Part0 = Hitbox2,Part1 = Handle2Part,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 4.17232513e-007, -1.00000525, 0, 1.00000525, 4.17232513e-007),C1 = CFrame.new(-2.0980835e-005, 7.40001011, 4.10079956e-005, 1, 0, 0, 0, 0, -1, 0, 1, 0),})

lap = LeftArm:GetChildren()
rap = RightArm:GetChildren()
llp = LeftLeg:GetChildren()
rlp = RightLeg:GetChildren()
chp = Chest:GetChildren()
hdp = FakeHead:GetChildren()
s1p = Sword:GetChildren()
s2p = Sword2:GetChildren()

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
function LoadAnim(id)
local anim = New("Animation",chara,"Animation",{AnimationId = "rbxassetid://"..id})
local realanim = chara.Humanoid:LoadAnimation(anim)
return realanim
end
HoldA = LoadAnim(69427262)
SwingA = LoadAnim(74909569)
Swing2A = LoadAnim(74909528)
RaiseA = LoadAnim(83994319)
RiseA = LoadAnim(169638954)
StompA = LoadAnim(204328711)
SmashA = LoadAnim(184574340)
HoldA:Play()

--Sounds--
function LoadSnd(id,loop,vol,pit)
local snd = New("Sound",chara,"Sound",{SoundId = "rbxassetid://"..id,Looped = loop,Volume = vol,Pitch = pit})
return snd
end
Music = LoadSnd(144043274,true,1,1)
SwingSnd = LoadSnd(200633108,false,1,1)
HitSnd = LoadSnd(566593606,false,1,1)
HitPunchSnd = LoadSnd(137579113,false,1,1)
DodgeSnd = LoadSnd(232210079,false,1,1)
ExpSnd = LoadSnd(142070127,false,1,1)
FlySnd = LoadSnd(169445602,false,1,1)
BExpSnd = LoadSnd(168586621,false,1,.5)
deathex = LoadSnd(11984351,false,5,1)
ChargeSnd = LoadSnd(137463716,false,1,1)
LasSnd = LoadSnd(162246701,false,1,1)
LasLoopSnd = LoadSnd(162246683,true,1,1)
SkyBeamSnd = LoadSnd(183763487,false,1,1)

Music:Play()

--Name Tag--
--local naeeym = Instance.new("BillboardGui",chara)
--naeeym.Size = UDim2.new(0,100,0,40)
--naeeym.StudsOffset = Vector3.new(0,4,0)
--naeeym.Adornee = chara.Head
--local tecks = Instance.new("TextLabel",naeeym)
--tecks.BackgroundTransparency = 1
--tecks.BorderSizePixel = 0
--tecks.Text = "Empyr the Holy Dragon"
--tecks.Font = "Fantasy"
--tecks.FontSize = "Size24"
--tecks.TextStrokeTransparency = 0
--tecks.TextStrokeColor3 = Color3.new(1,1,0)
--tecks.TextColor3 = BrickColor.new("White").Color
--tecks.Size = UDim2.new(1,0,0.5,0)

--Play Sound in Part--
function PlaySnd(snd,part)
local sound = snd:Clone()
sound.PlayOnRemove = true
sound.Parent = Part
sound:Destroy()
end

--Damage Function--
function dealdmg(dude,damage,env,toim)
hurt = coroutine.wrap(function(dude2,damage2,env2,toim2)
if dude ~= chara and dude:FindFirstChild("IsHit") == nil then
dude.Humanoid.MaxHealth = 100
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

--Blade Touch--
bladeactive = false
function bladehit(hit)
if bladeactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("IsHit") == nil then
dealdmg(hit.Parent,40,5,.5)
PlaySnd(HitSnd,hit.Parent.Head)
end
end
end
Hitbox.Touched:connect(bladehit)
Hitbox2.Touched:connect(bladehit)

--Material Return--
gprop = {}
function materialhit(hit)
if hit.Parent ~= chara and hit.Parent.Parent ~= chara and hit.Name ~= "Trace" and hit.Parent:FindFirstChild("Humanoid") == nil then
gprop = {hit.BrickColor,hit.Material}
end
end
chara["Left Leg"].Touched:connect(materialhit)
chara["Right Leg"].Touched:connect(materialhit)

--Bash Dash--
function BashDash()
del = true
FlySnd:Play()
RiseA:Play()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Name = "Trace"
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,6,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
jtrace.Anchored = true
jtrace.CanCollide = false
ExHitbox(15,chara.Torso.Position,30,5,.2)
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,1,1)
tmesh.Offset = Vector3.new(0,0,-.125)
local bodf = Instance.new("BodyVelocity",chara.Torso)
bodf.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 100
bodf.MaxForce = chara.HumanoidRootPart.CFrame.lookVector * 100000
local bpos = Instance.new("BodyPosition",chara.Torso)
bpos.Position = chara.HumanoidRootPart.Position + Vector3.new(0,1,0)
bpos.MaxForce = Vector3.new(0,20000,0)
for i = 1, 9 do
wait(.02)
ExHitbox(15,chara.Torso.Position,30,5,.2)
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(1,.05,1)
bodf.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 1000
bodf.MaxForce = chara.HumanoidRootPart.CFrame.lookVector * 100000
end
wait(.02)
bodf:Destroy()
jtrace:Destroy()
bpos:Destroy()
RiseA:Stop()
del = false
end

--Super Jump--
function SuperJump()
del = true
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Name = "Trace"
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.Torso.Position
jtrace.CFrame = chara.Torso.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.BrickColor = BrickColor.new("New Yeller")
FlySnd:Play()
RiseA:Play()
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=1125478"
tmesh.Scale = Vector3.new(0,0,0)
local origpos = chara.Torso.Position
local bdf = Instance.new("BodyPosition",chara.Torso)
bdf.MaxForce = Vector3.new(100000,100000,100000)
bdf.Position = origpos + Vector3.new(0,400,0)
for i = 1, 10 do
wait(.01)
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(2,.05,2)
end
jtrace:Destroy()
wait(1)
bdf.Position = origpos
bdf.D = 100
wait(1.5)
bdf:Destroy()
for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(6,6,6)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (CFrame.new(origpos.x,origpos.y,origpos.z) + Vector3.new(math.random(-40,40),-6,math.random(-40,40))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(3)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end
local trace = Instance.new("Part",game.Workspace)
trace.Size = Vector3.new(0,0,0)
trace.CFrame = CFrame.new(origpos.x,origpos.y,origpos.z)
trace.CanCollide = false
trace.Anchored = true
trace.Material = "Neon"
trace.BrickColor = BrickColor.new("New Yeller")
local tmesh2 = Instance.new("SpecialMesh",trace)
tmesh2.MeshType = "Sphere"
BExpSnd:Play()
ExHitbox(40,origpos,50,3,.5)
tracegrow = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
tmesh2.Scale = tmesh2.Scale + Vector3.new(40,40,40)
end
trace:Destroy()
end)
tracegrow()
RiseA:Stop()
wait(1)
--Laugh2Snd:Play()
del = false
end


--Stomp--
function Stomp()
del = true
StompA:Play()
wait(.25)
for i = 1, 4 do
wait(.25)
ExpSnd:Play()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Name = "Trace"
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,6,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,6,0)
jtrace.Anchored = true
ExHitbox(10,jtrace.Position,30,5,.3)
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,1,1)
tmesh.Offset = Vector3.new(0,0,-.125)
for i = 1, 9 do
wait(.02)
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(1,.05,1)
end
wait(.02)
jtrace:Destroy()
end
wait(.1)
StompA:Stop()
SmashA:Play()
wait(1)
for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(6,6,6)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chara.HumanoidRootPart.CFrame + Vector3.new(math.random(-20,20),-6,math.random(-20,20))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(3)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end
BExpSnd:Play()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,6,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,6,0)
jtrace.Anchored = true
ExHitbox(20,jtrace.Position,40,5,.3)
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,1,1)
tmesh.Offset = Vector3.new(0,0,-.125)
for i = 1, 9 do
wait(.01)
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(4,.05,4)
end
jtrace:Destroy()
wait(2)
SmashA:Stop()
del = false
end

--Sky Beams--
function SkyBeams()
del = true
RaiseA:Play()
local hitpos = Mouse.Hit
wait(.1)
for i = 1, 50 do
wait(.01)
local hitpt = Instance.new("Part",game.Workspace)
hitpt.Size = Vector3.new(1,1,1)
hitpt.Anchored = true
hitpt.CanCollide = false
hitpt.BrickColor = BrickColor.new("New Yeller")
hitpt.CFrame = (hitpos + Vector3.new(math.random(-20,20),0,math.random(-20,20))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
ExHitbox(5,hitpt.Position,30,2,.2)
PlaySnd(SkyBeamSnd,hitpt)
local hitb = Instance.new("Part",game.Workspace)
hitb.Size = Vector3.new(1,1,1)
hitb.Anchored = true
hitb.CanCollide = false
hitb.BrickColor = BrickColor.new("New Yeller")
hitb.Material = "Neon"
hitb.CFrame = CFrame.new(hitpt.Position.x,hitpt.Position.y,hitpt.Position.z)* CFrame.fromEulerAnglesXYZ(math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)))
local hitbm = Instance.new("CylinderMesh",hitb)
hitbm.Scale = Vector3.new(1,1000,1)
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "http://www.roblox.com/asset/?id=3270017"
hpt = coroutine.wrap(function()
for i = 1, 9 do
wait(.05)
hitpt.Transparency = hitpt.Transparency + .1
hitm.Scale = hitm.Scale + Vector3.new(.5,.5,.5)
hitb.Transparency = hitb.Transparency + .1
end
hitpt:Destroy()
hitb:Destroy()
end)
hpt()
end
wait(1)
RaiseA:Stop()
del = false
end

--Huger Sky Beams--
function HugeSkyBeams()
del = true
RaiseA:Play()
ChargeSnd:Play()
local hitpos = Mouse.Hit
wait(2)
for i = 1, 30 do
wait(.1)
local hitpt = Instance.new("Part",game.Workspace)
hitpt.Size = Vector3.new(1,1,1)
hitpt.Anchored = true
hitpt.CanCollide = false
hitpt.BrickColor = BrickColor.new("New Yeller")
hitpt.CFrame = (hitpos + Vector3.new(math.random(-100,100),0,math.random(-100,100))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
ExHitbox(30,hitpt.Position,50,2,.2)
PlaySnd(ExpSnd,hitpt)
local hitb = Instance.new("Part",game.Workspace)
hitb.Size = Vector3.new(1,1,1)
hitb.Anchored = true
hitb.CanCollide = false
hitb.BrickColor = BrickColor.new("New Yeller")
hitb.Material = "Neon"
hitb.CFrame = CFrame.new(hitpt.Position.x,hitpt.Position.y,hitpt.Position.z)* CFrame.fromEulerAnglesXYZ(math.random(math.rad(-20),math.rad(20)),math.random(math.rad(-20),math.rad(20)),math.random(math.rad(-20),math.rad(20)))
local hitbm = Instance.new("CylinderMesh",hitb)
hitbm.Scale = Vector3.new(5,1000,5)
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "http://www.roblox.com/asset/?id=3270017"
hpt = coroutine.wrap(function()
for i = 1, 9 do
wait(.05)
hitpt.Transparency = hitpt.Transparency + .1
hitm.Scale = hitm.Scale + Vector3.new(3,3,3)
hitb.Transparency = hitb.Transparency + .1
end
hitpt:Destroy()
hitb:Destroy()
end)
hpt()
end
wait(1)
RaiseA:Stop()
del = false
end

--Solar Destruction--
function SolarDestruction()
del = true
ChargeSnd:Play()
local spellcircle = Instance.new("Part",chara)
spellcircle.Anchored = true
spellcircle.Size = Vector3.new(1,1,1)
spellcircle.CFrame = CFrame.new(Mouse.Hit.x,Mouse.Hit.y,Mouse.Hit.z)
spellcircle.Transparency = 1
spellcircle.CanCollide = false
local blkm = Instance.new("BlockMesh",spellcircle)
blkm.Scale = Vector3.new(0,1,0)
local dec = Instance.new("Decal",spellcircle)
dec.Color3 = Color3.new(1,1,0)
dec.Texture = "rbxassetid://78036587"
dec.Transparency = 1
dec.Face = "Top"
local ptl = Instance.new("PointLight",spellcircle)
ptl.Range = 0
ptl.Color = Color3.new(1,1,0)
RaiseA:Play()
spellc = coroutine.wrap(function()
while spellcircle ~= nil do
wait(.01)
spellcircle.CFrame = spellcircle.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(10),0)
end
end)
spellc()
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range + 1
dec.Transparency = dec.Transparency - .1
blkm.Scale = blkm.Scale + Vector3.new(10,0,10)
end
wait(2)
local dir = game.Lighting:GetSunDirection()
local pos = spellcircle.Position + (dir*1400)
local particle = Instance.new("Part",chara)
particle.Transparency = 1
particle.Size = Vector3.new(1,1,1)
particle.Position = pos
particle.BrickColor = BrickColor.new("Institutional white")
particle.Material = "Neon"
particle.CanCollide = false
particle.Anchored = true
particle.CFrame = CFrame.new(pos,spellcircle.Position)
local mehs = Instance.new("BlockMesh",particle)
mehs.Scale = Vector3.new(50,50,3000)
wait(1)
LasLoopSnd:Play()
LasSnd:Play()
particle.Transparency = 0
for i = 1, 100 do
ExHitbox(60,spellcircle.Position,50,5,.2)
wait(.01)
local trace = coroutine.wrap(function()
local tr = Instance.new("Part",game.Workspace)
tr.Name = "Trace"
tr.Size = Vector3.new(0,0,0)
tr.CanCollide = false
tr.Material = "Neon"
tr.Anchored = true
tr.BrickColor = BrickColor.new("Cool yellow")
tr.CFrame = spellcircle.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
local trm = Instance.new("BlockMesh",tr)
for i = 1, 4 do
wait(.01)
tr.Transparency = tr.Transparency + .2
trm.Scale = trm.Scale + Vector3.new(200,200,200)
end
tr:Destroy()
end)
trace()
end
for i = 1, 9 do
particle.Transparency = particle.Transparency + .1
wait(.01)
end
particle:Destroy()
LasLoopSnd:Stop()
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range - 1
dec.Transparency = dec.Transparency + .1
blkm.Scale = blkm.Scale - Vector3.new(10,0,10)
end
RaiseA:Stop()
spellcircle:Destroy()
del = false
end

--Mouse Functions--
del = false
combo = 0
function onKeyDown(key)
if del == false then
if key == "z" then
BashDash()
elseif key == "x" then
SuperJump()
elseif key == "c" then
Stomp()
elseif key == "v" then
SkyBeams()
elseif key == "b" then
HugeSkyBeams()
elseif key == "n" then
SolarDestruction()
elseif key == "m" then
if Music.IsPlaying == true then
Music:Stop()
elseif Music.IsPlaying == false then
Music:Play()
end
end
end
end
function onButton1Down()
if del == false then
if combo == 0 then
del = true
bladeactive = true
SwingA:Play()
SwingSnd:Play()
wait(.5)
SwingA:Stop()
bladeactive = false
combo = 1
del = false
elseif combo == 1 then
del = true
bladeactive = true
Swing2A:Play()
SwingSnd:Play()
wait(.5)
Swing2A:Stop()
bladeactive = false
combo = 0
del = false
combo = 0
end
end
end

--Mouse Activation--
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
Mouse.Button1Down:connect(onButton1Down)
end



--Loop--
while true do
wait(.1)
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
chara.Humanoid.WalkSpeed = 32
for i = 1, #lap do
lap[i].Anchored = false
end
for i = 1, #s1p do
s1p[i].Anchored = false
end
for i = 1, #s2p do
s2p[i].Anchored = false
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